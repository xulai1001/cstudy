#include "iostream"
#include "vector"
#include "list"
#include "map"
#include "algorithm"
#include "cstdio"
#include "cstdlib"

#include "memtable.hpp"

extern "C" {
    #include "hammer.h"
    #include "timing.h"
    #include "v2p.h"
}

using namespace std;

#define ALLOC_SIZE (2048 << 20)
#define ROW_COUNT (1 << 15)
// 行地址在高位, 所以对33位物理地址(8GB)要右移18位, 取高15位
#define ROW_SHIFT 18

struct Page {
    char *v;
    uint64_t p;
    uint64_t r;

    Page() {}
    Page(char *v, uint64_t p, uint64_t r) : v(v), p(p), r(r) {}

};

map<uint64_t, vector<Page> > rows;

char *allocate()
{
    char *m;
    
    cout << "Alloc size: " << mb << " mb." << endl;
    ASSERT((m = (char *)mmap(0, ALLOC_SIZE, PROT_READ | PROT_WRITE,
        MAP_POPULATE | MAP_ANONYMOUS | MAP_PRIVATE, -1, 0)) != MAP_FAILED);
    // access every page
    for (int i=0; i<size; i+=PAGE_SIZE)
    {
        *((int *)&m[i]) = i;
    }
    // cleanup with munmap(m, ALLOC_SIZE);
    return m;
}

void analyze(char *m)
{
    for (uint64_t i = 0; i<ALLOC_SIZE; i+=PAGE_SIZE)
    {
        uint64_t p = v2p(&m[i]);
        uint64_t r = (p >> ROW_SHIFT);

        if (rows.count(r) == 0)
            rows[r] = vector<Page>();
        rows[r].push_back(Page(&m[i], p, r));
    }
}

int main(void)
{
    // google rowhammer
    //1. allocate a lot of memory
    cout << "Physmem size: " << (physmem_size() >> 20) << " mb." << endl;
    char *m = allocate();
    //2. assume 15-bit row address (256kB = 64 pages per row), put each page into corrsponding rows
    analyze(m);
    //3. select 3 rows with 64/64/64 pages (will have full control on these rows), start hammering
    for (auto p : rows)
    {
        cout << "Row #" << p.first() << " - " << p.second().length() << endl;
    }
    //4. for each page, hammer all 64/64 pages. exhaustive

    // cleanup
    munmap(m, ALLOC_SIZE);
    return 0;
}
