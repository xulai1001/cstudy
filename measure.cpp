#include "iostream"
#include "cstdlib"
#include "cstdio"
#include "cstring"
#include "vector"
#include "list"
#include "set"
#include "algorithm"

using namespace std;

extern "C" {
    #include "unistd.h"
    #include "errno.h"
    #include "stdint.h"
    #include "fcntl.h"
    #include "sys/mman.h"
    
    #include "timing.h"
}

#define ASSERT(line) if (!(line)) { fprintf(stderr, "ASSERT error at line %d: " #line, __LINE__); perror(" "); exit(-1); }
//page select
#define PAGE_SIZE 0x1000
#define PAGE_FLAG 0
#define HUGE_SIZE 0x200000
#define HUGE_FLAG 0x40000
#define PFN_MASK ((1ul << 55) - 1)
#define ALLOC_SIZE HUGE_SIZE
#define ALLOC_FLAG (MAP_PRIVATE | MAP_ANONYMOUS | HUGE_FLAG)

int fd;

uint64_t v2p(void *v) {
    uint64_t vir_page_idx = (uint64_t)v / PAGE_SIZE;      // 虚拟页号
    uint64_t page_offset = (uint64_t)v % PAGE_SIZE;       // 页内偏移
    uint64_t pfn_item_offset = vir_page_idx*sizeof(uint64_t);   // pagemap文件中对应虚拟页号的偏移
    
    int dummy = *(int *)v;  // visit the addr, keep it in memory
    // 读取pfn
    uint64_t pfn_item, pfn;
    ASSERT( lseek(fd, pfn_item_offset, SEEK_SET) != -1 );
    ASSERT( read(fd, &pfn_item, sizeof(uint64_t)) == sizeof(uint64_t) );
   // ASSERT( pfn_item & PFN_PRESENT_FLAG );  // 确保页面存在
    pfn = pfn_item & PFN_MASK;              // 取低55位为物理页号

    return pfn * PAGE_SIZE + page_offset;
}

class HugePage {
public:
    char *v;
    uint64_t p;
    bool locked;
private:
    int n;
public:
    
    HugePage(int n=1) : v(0), p(0), n(n), locked(false) {}
    
    // mmap & hold n pages. not mixing with ctor/dtor.
    void acquire()
    {
        ASSERT((v = (char *)mmap(0, ALLOC_SIZE * n, PROT_READ | PROT_WRITE, ALLOC_FLAG, -1, 0)) != MAP_FAILED);
        memset(v, 0, ALLOC_SIZE * n);
        p = v2p(v);
//        print();
    }
    void mark() { if (v) *v='!'; }    
    bool marked() { return (v && *v == '!'); }

    bool release(bool release_mark=false)
    {
     //   cout << "release "; print();
        if (v && (release_mark || !marked())) {
     //       cout << ".";
            munmap(v, ALLOC_SIZE * n);
            p=v=0;
            return true;
        }
        else return false;
    }
    
    void print()
    {
        if (n==1)
            cout << "HugePage v=0x" << hex << (uint64_t)v << " p=0x" << p << endl;
        else
        {
            cout << "HugePage " << n << "pages:" << endl;
            for (int i=0; i<n; ++i)
                cout << "\t v=0x" << hex << (((uint64_t)v)+i*ALLOC_SIZE) << " p=0x" << v2p(((uint64_t)v)+i*ALLOC_SIZE) << endl;
        }
    }

    bool operator <(HugePage &b) { return p<b.p; }
};

list<vector<HugePage> > chunks;
vector<HugePage> pages, pool;
set<uint64_t> seed;

vector<HugePage> get_contiguous_aligned_pages(int npages, int align, int nbuf)
{
    int i;
    uint64_t size_mask = align * ALLOC_SIZE - 1;
    vector<HugePage> ret;

    chunks.clear();
    pool.clear();
    pool.resize(nbuf);
    for (i=0; i<nbuf; ++i)
        pool[i].acquire();
        
    sort(pool.begin(), pool.end());
  //  cout << "-------------------------------------" << endl;
  //  for (HugePage p : pool) p.print();
  //  cout << "-------------------------------------" << endl;
    
    i=0;
    while (i<nbuf)
    {
        chunks.push_back(vector<HugePage>());
        chunks.back().push_back(pool[i]); ++i;
        while (i<nbuf && pool[i].p - pool[i-1].p == ALLOC_SIZE)
        {
            chunks.back().push_back(pool[i++]);
        }
    }
    i=0;
    for (auto &ch : chunks)
        cout << "chunk " << ++i << ": " << ch.size() << "pages" << endl;
    i=0;
    for (auto &ch : chunks)
        if (ch.size() >= npages)
        {
            ++i;
            for (int j=0; j<ch.size()-npages; ++j)
                if ((ch[j].p & size_mask) == 0)
                {
                    cout << "return from chunk " << i << " ("<< npages <<" / " << ch.size() << " pages)" << endl;
                    ret.assign(ch.begin()+j, ch.begin()+j+npages);
                    for (int k=j; k<j+npages; ++k)
                        ch[k].mark();
                    return ret;
                }
        }
    return ret;
}

char *p2v(uint64_t p)
{
    uint64_t offset = p % ALLOC_SIZE;
    for (auto pg : pages)
        if (pg.p==p-offset) return (char *)(offset+(uint64_t)pg.v);
    //vector<HugePage>::iterator it = find(pages.begin(), pages.end(), p-offset);
    //if (it==pages.end()) return 0;
    //else return (char *)(offset+(uint64_t)it->v);
}

void cleanup(bool mark)
{
    cout << "cleanup usused pages...";
    int nn = 0;
    for (auto &p : pool)
        if (p.release(mark)) ++nn;
    cout << dec << nn << " pages released." << endl;
}

void genseed(int n, int order)
{
    srand(time(0));
    seed.clear();
    for (int i=0; i<n; ++i) seed.insert(rand() % (1<<order));
    while (seed.size() < n) seed.insert(rand() % (1<<order));
    
    //for (auto s: seed) cout << s << endl;
}

// obf latency routine!
uint64_t latency(int x, int y=-1, int z=-1)
{
    int ntime = 200; 
    uint64_t *a, *b;        // a: all 0 in given bits, b: all 1 in given bits
    uint64_t mask = (1 << x);
    uint64_t pbase = pages[0].p;
    int i, sum, min=9999;
    myclock clk;
    
    if (y>=0) mask |= (1 << y);
    if (z>=0) mask |= (1 << z);
    
    for (auto s : seed)
    {
        a = (uint64_t *)p2v(pbase + (s & ~mask));
        b = (uint64_t *)p2v(pbase + (s | mask));
        sum = 0;
        
        START_TSC(clk);
        for (i=0; i<ntime; ++i)
        {
            __asm__ __volatile (
               // access both addresses
               "movq (%0), %%rax \n\t"
               "movq (%1), %%rax \n\t"
               // clflush + mfence
               "clflush (%0) \n\t"
               "clflush (%1) \n\t"
               "mfence"
                :
                :"r"(a), "r"(b)
                :"rax", "memory"
            );
        }        
        END_TSC(clk);
        sum += clk.ticks;
       // cout << "seed a=" << hex << (uint64_t)v2p(a) << ", b=" << (uint64_t)v2p(b) << " avg ticks=" << dec << sum/200 << endl;
        if (min>sum/ntime/2) min = sum/ntime/2;
    }
    return min;
}

int main(void)
{
    ASSERT((fd = open("/proc/self/pagemap", O_RDONLY)) > 0);
    pages = get_contiguous_aligned_pages(32, 32, 128);
    cleanup(false);
    
    for (auto p : pages) p.print();
    
    genseed(100, 25);
    for (int i=0; i<26; ++i)
        cout << dec <<  "Min Latency for bit #" << i << " = " << latency(i) << endl; 
    
    cleanup(true);
    return 0;
}
