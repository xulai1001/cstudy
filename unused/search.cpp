#include "iostream"
#include "string"
#include "algorithm"
#include "vector"
#include "list"
#include "map"
#include "memtable.hpp"

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

//#define Rcast reinterpret_cast

using namespace std;

struct Page {
    void *v;
    uint64_t p;
    
    Page(){}
    Page(void *v, uint64_t p) : v(v), p(p) {}
    
    bool operator <(Page &b) { return p<b.p; }
};

// p2v map
map<uint64_t, uint64_t> p2v_map;
// all pages
vector<Page> pages;
// contiguous chunks
list<vector<Page> > chunks;

// analyze each 4k page in memory range and put them in collections
void analyse_memory_range(void *base, size_t length)
{
    uint64_t i = (uint64_t)base & ~0xfff;
    uint64_t p;
    
    p2v_map.clear();
    pages.clear();
    chunks.clear();
    
    while (i<length+(uint64_t)base)
    {
        p = v2p((void *)i);
        // p->v mapping
        p2v_map[p] = i;
        pages.push_back(Page((void *)i, p));
        i+=PAGE_SIZE;
    }
    
    //pages and chunks
    sort(pages.begin(), pages.end());
    i=0; while (i<pages.size())
    {
        chunks.push_back(vector<Page>());
        chunks.back().push_back(pages[i++]);
        while (i<pages.size() && (pages[i].p - pages[i-1].p == PAGE_SIZE))
            chunks.back().push_back(pages[i++]);
    }
    
}

void *p2v(uint64_t p)
{
    uint64_t offset = p % PAGE_SIZE;
    uint64_t base = p & ~0xfff;
    if (p2v_map[base])
        return (void *)(p2v_map[base] + offset);
    else return 0;
}

// according to DRAMA, i5-3470 Ivy Bridge 4Gx2 is like Haswell
// BA0  = 14 ^ 18
// BA1  = 15 ^ 19
// Rank = 16 ^ 20 (not related)
// BA2  = 17 ^ 21 (not related)
// channel = 7-8-9-12-13-18-19
// column = 3..6, 8..13
// row = 18..32
int main(void)
{
    // google-like mapping approach
    double fraction = 0.3;
    uint64_t map_size = (uint64_t)(fraction * physmem_size());
    void *m;
    int i;
    
    ASSERT((m = mmap(0, map_size, PROT_READ | PROT_WRITE,
                     MAP_POPULATE | MAP_ANONYMOUS | MAP_PRIVATE, -1, 0)) != -1 );
    cout << "map size = " << (map_size>>20) << " MB" << endl;
    
    analyse_memory_range(m, map_size);
    
    i=0;
    for (auto ch : chunks)
        cout << "chunk #" << i++ << " - " << ch.size() << " pages (" << ch.size()*4 << " kB)" << endl;
    
    munmap(m, map_size);    
    return 0;    
}
