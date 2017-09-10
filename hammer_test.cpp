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

#define ALLOC_SIZE (2048ull << 20)
#define ROW_COUNT (1 << 15)
// 行地址在高位, 所以对33位物理地址(8GB)要右移18位, 取高15位
#define ROW_SHIFT 18
#define PAGES_PER_ROW 64

struct Page {
    uint8_t *v;
    uint64_t p;
    uint64_t r;

    Page() {}
    Page(uint8_t *v, uint64_t p, uint64_t r) : v(v), p(p), r(r) {}

};

map<uint64_t, vector<Page> > rows;
vector<uint64_t> test_rows;

uint8_t *allocate()
{
    uint8_t *m;
    
    ASSERT((m = (uint8_t *)mmap(0, ALLOC_SIZE, PROT_READ | PROT_WRITE,
        MAP_POPULATE | MAP_ANONYMOUS | MAP_PRIVATE, -1, 0)) != MAP_FAILED);
    // access every page
    for (uint64_t i=0; i<ALLOC_SIZE; i+=PAGE_SIZE)
    {
        *((int *)&m[i]) = i;
    }
    cout << "Alloc size: " << (ALLOC_SIZE >> 20) << " mb." << endl;
    // cleanup with munmap(m, ALLOC_SIZE);
    return m;
}

void analyze(uint8_t *m)
{
    cout << "Analyse..." << endl;
    for (uint64_t i = 0; i<ALLOC_SIZE; i+=PAGE_SIZE)
    {
        uint64_t p = v2p(&m[i]);
        uint64_t r = (p >> ROW_SHIFT);

        if (rows.count(r) == 0)
            rows[r] = vector<Page>();
        rows[r].push_back(Page(&m[i], p, r));
        if (i % 0x8000000ull == 0)
            cout << i/0x100000ull << " MB" << endl;
    }
}

void fill_row(uint64_t r, uint8_t value=0xff)
{
    for (auto p : rows[r]) memset(p.v, value, PAGE_SIZE);
}

void check_row(uint64_t r, uint8_t value=0xff)
{
    for (auto p : rows[r])
        for (int i=0; i<PAGE_SIZE; ++i)
            if (p.v[i] != value)
            {
                cout << endl << "--- Error in row #" << r <<" paddr 0x" << hex << p.p + i << ": 0x" << p.v[i] << endl;
            }
}

void hammer_rows(uint64_t r)
{
    cout << "Hammering Row " << r << "->[" << r+1 << "]<-" << r+2 << endl;
    // google routine
    for (Page r0 : rows[r])
    {
        for (Page r2 : rows[r+2])
        {
            fill_row(r+1);
            // hammer.h
            hammer_loop(r0.v, r2.v, 100000);
            check_row(r+1);
            cout << ".";
        }
        cout << endl;
    }
}

int main(void)
{
    // google rowhammer
    //1. allocate a lot of memory
    cout << "Physmem size: " << (physmem_size() >> 20) << " mb." << endl;
    uint8_t *m = allocate();

    //2. assume 15-bit row address (256kB = 64 pages per row), put each page into corrsponding rows
    analyze(m);

    //3. select 3 rows with 64/64/64 pages (will have full control on these rows), start hammering
    #define HAVE_ROW(r) ((rows.count(r) && rows[r].size() == PAGES_PER_ROW))
    for (auto p : rows)
    {
        if (HAVE_ROW(p.first) && HAVE_ROW(1+p.first) && HAVE_ROW(2+p.first))
            test_rows.push_back(p.first);
    } 

    //4. for each row held, hammer all 64/64 pages. exhaustive
    for (uint64_t r : test_rows)
        hammer_rows(r);
    // cleanup
    munmap(m, ALLOC_SIZE);
    return 0;
}


