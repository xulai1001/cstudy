#include "iostream"
#include "cstdlib"
#include "cstdio"
#include "cstring"
#include "vector"
#include "list"
#include "algorithm"

using namespace std;

extern "C" {
    #include "unistd.h"
    #include "errno.h"
    #include "stdint.h"
    #include "fcntl.h"
    #include "sys/mman.h"
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
    
  //  uint64_t page_flags;
  //  ASSERT( lseek(flag_fd, pfn*sizeof(uint64_t), SEEK_SET) != -1);
 //   ASSERT( read(flag_fd, &page_flags, sizeof(uint64_t)) == sizeof(uint64_t) );

   // printf("here vir=0x%lx, item=0x%lx, pfn=0x%lx, offset=%ld, flag=0x%lx\n", v, pfn_item, pfn, page_offset, page_flags);
    return pfn * PAGE_SIZE + page_offset;
}

class HugePage {
public:
    char *v;
    uint64_t p;
private:
    int n;
public:
    
    HugePage(int n=1) : v(0), p(0), n(n) {}
    
    void acquire()
    {
        ASSERT((v = (char *)mmap(0, ALLOC_SIZE * n, PROT_READ | PROT_WRITE, ALLOC_FLAG, -1, 0)) != MAP_FAILED);
        memset(v, 0, ALLOC_SIZE * n);
        p = v2p(v);
//        print();
    }

    void release()
    {
     //   cout << "release "; print();
        if (v) {
            cout << ".";
            munmap(v, ALLOC_SIZE * n);
            p=v=0;
        }
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
                    return ret;
                }
        }
    return ret;
}

void cleanup()
{
    cout << "cleanup";
    for (auto &p : pool) p.release();
    cout << endl;
}

int main(void)
{
    ASSERT((fd = open("/proc/self/pagemap", O_RDONLY)) > 0);
    pages = get_contiguous_aligned_pages(32, 32, 128);
    for (auto p : pages) p.print();
    for (auto p : pages) p.release();
    cout << "------------------" << endl;
    
    HugePage new_p = HugePage(32);
    new_p.acquire();
    new_p.print();
    new_p.release();
    cleanup();
    return 0;
}
