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
    #include "v2p.h"
    #include "hammer.h"
}

//page select
#define ALLOC_SIZE PAGE_SIZE
#define ALLOC_FLAG (MAP_PRIVATE | MAP_ANONYMOUS) // | HUGE_FLAG)

class Page {
public:
    char *v;    // may contain multiple pages
    uint64_t p; // only stores paddr of first page
private:
    int n;
public:
    
    Page(int n=1) : v(0), p(0), n(n){}
    
    // mmap & hold n pages. not mixing with ctor/dtor.
    void acquire()
    {
        ASSERT((v = (char *)mmap(0, ALLOC_SIZE * n, PROT_READ | PROT_WRITE, ALLOC_FLAG, -1, 0)) != MAP_FAILED);
        memset(v, 0, ALLOC_SIZE * n);
        p = v2p(v);
//        print();
    }
    void pin() { if (v) *v='!'; }    
    bool pinned() { return (v && *v == '!'); }

    bool release(bool release_pinned=false)
    {
     //   cout << "release "; print();
        if (v && (release_pinned || !pinned())) {
     //       cout << ".";
            munmap(v, ALLOC_SIZE * n);
            p=0; v=NULL;
            return true;
        }
        else return false;
    }
    
    void print()
    {
        if (n==1)
            cout << "Page v=0x" << hex << (uint64_t)v << " p=0x" << p << endl;
        else
        {
            cout << "Page " << n << "pages:" << endl;
            for (int i=0; i<n; ++i)
                cout << "\t v=0x" << hex << (((uint64_t)v)+i*ALLOC_SIZE) << " p=0x" << v2p(((uint64_t)v)+i*ALLOC_SIZE) << endl;
        }
    }

    bool operator <(const Page b) { return p<b.p; }
};

list<vector<Page> > chunks;
vector<Page> pages, pool;
set<uint64_t> seed;

// allocate pool_mb MB memory, and then search for 
// largest 2^N MB physically contiguous memory chunks (aligned to size)
// return these pages, release all other
vector<Page> get_contiguous_aligned_pages(int pool_mb)
{
    int i;
    int pool_pages = ((uint64_t)pool_mb << 20) / ALLOC_SIZE;   // 256 pages / MB
    uint64_t max_pages=0;
    vector<Page> ret;
    chunks.clear();

    cout << "allocate pool: " << pool_mb << " MB " << pool_pages << " pages" << endl;

    // allocate pool & sort by paddr
    pool.clear();
    pool.resize(pool_pages);
    for (i=0; i<pool_pages; ++i)
    {
        pool[i].acquire();
        if (i % 25600 == 0) { cout << "."; cout.flush(); } // per 100MB
    }
    cout << endl;
    sort(pool.begin(), pool.end());
    
    // group contiguous pages
    i=0;
    while (i<pool_pages)
    {
        chunks.push_back(vector<Page>());
        chunks.back().push_back(pool[i]); ++i;
        while (i<pool_pages && pool[i].p - pool[i-1].p == ALLOC_SIZE)
        {
            chunks.back().push_back(pool[i++]);
        }
    }
//    for (auto &ch : chunks)
//        cout << "chunk " << hex << ch[0].p << dec << ": " << ch.size() << "pages" << endl;
    
    // return from largest chunk
    list<vector<Page> >::iterator page_itr;    
    for (auto it = chunks.begin(); it != chunks.end(); ++it)
        if (it->size() > max_pages)
        {
            max_pages = it->size();
            page_itr = it;
        }

    // calculate aligned addr range within chunk
    uint64_t chunk_base = (*page_itr)[0].p;
    uint64_t chunk_size = max_pages * PAGE_SIZE;
    cout << "return from chunk " << hex << chunk_base << dec << " (" << max_pages << " pages)" << endl;
    
    int align_shift = 63-__builtin_clz(chunk_size); // use CLZ for highest significant bit shift of chunk_size
    uint64_t align_size, align_base;
    int align_pages;
    
//    cout << align_shift << endl;
    while (align_shift > 0)
    {
        align_size = 1 << align_shift;
        align_base = (chunk_base % align_size==0) ? chunk_base : (chunk_base - chunk_base % align_size + align_size);
        if (align_base + align_size > chunk_base + chunk_size)
            --align_shift;
        else break;
    }
    align_pages = align_size >> PAGE_SHIFT;
    
    // retrieve pages, pin them and return
    int j=0;
    while ((*page_itr)[j].p < align_base) ++j;
    ret.assign(page_itr->begin()+j, page_itr->begin()+j+align_pages);
    for (Page p : ret)
    {
        p.pin();
  //      p.print();
    }
    cout << "pinned " << dec << align_pages << " pages "
         << (align_size>>20) << " MB, start from paddr=" << hex << align_base << dec << endl;

    return ret;
}

char *p2v(uint64_t p)
{
    uint64_t offset = p & PAGE_MASK;
    for (auto pg : pages)
        if (pg.p==p-offset) return (char *)(offset+(uint64_t)pg.v);
    return 0;
}

void cleanup(bool mark)
{
    cout << "cleanup (pinned = " << mark << ")...";
    int nn = 0;
    for (auto &p : pool)
        if (p.release(mark)) ++nn;
    cout << dec << nn << " pages released." << endl;
}

// generate random address offsets with [order] bits
void genseed(int n, int order)
{
    srand(time(0));
    seed.clear();
    while (seed.size() < n) seed.insert(rand() % (1<<order));
//    for (auto s: seed) cout << s << endl;
}

// obf latency routine!
int latency(int x, int y=-1, int z=-1)
{
    uint64_t *a, *b;        // a: all 0 in given bits, b: all 1 in given bits
    uint64_t pbase = pages[0].p, pa, pb;
    int count = 0, access_time=0;
    bool ret;
    uint64_t mask = (1 << x);
    if (y>=0) mask |= (1 << y);
    if (z>=0) mask |= (1 << z);
    
    cout << "seed, pa, pb, latency, conflict" << endl;
    for (auto s : seed)
    {
        pa = pbase + (s & ~mask);
        pb = pbase + (s | mask);
        a = (uint64_t *)p2v(pa);
        b = (uint64_t *)p2v(pb);
        ret = is_row_conflict(a, b, &access_time);
        if (ret)
        {
            ++count;
        }
        cout << hex << s << ", " << pa << ", " << pb << ", " << dec << access_time
             << ", " << (ret?"yes":"no") << endl;
    }
    return count;
}

int main(int argc, char **argv)
{
    int mb = atoi(argv[1]);
    int i, j, k, x=-1, y=-1, z=-1;
    
    if (argc>=3) x=atoi(argv[2]);
    if (argc>=4) y=atoi(argv[3]);
    if (argc>=5) z=atoi(argv[4]);
    pages = get_contiguous_aligned_pages(mb);
    
    // use CTZ to get lsb of size (=log2(size))
    int orders = __builtin_ctz(pages.size()) + PAGE_SHIFT;
    cout << "We can control the least [" << orders << "] bits of paddr" << endl;
    cleanup(false);

    genseed(100, orders);
    cout << "+ start testing with 100 random addresses..." << endl;
    int result = latency(x, y, z);
    cout << dec << "+ latency(" << x <<", " << y << ", "<< z << ") = " << result << endl;
    //result = latency(x, y, z);
    //cout << dec << "+ latency(" << x <<", " << y << ", "<< z << ") = " << result << endl;

    cleanup(true);
    return 0;
}

