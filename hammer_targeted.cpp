#include "iostream"
#include "fstream"
#include "vector"
#include "list"
#include "map"
#include "algorithm"
#include "cstdio"
#include "cstdlib"
#include "cstring"
#include "bitset"

#include "memtable.hpp"

extern "C" {
    #include "hammer.h"
    #include "timing.h"
    #include "v2p.h"
}

using namespace std;

#define ALLOC_SIZE (2048ull << 20)
#define ROW_COUNT (1 << 15)
// 行地址在高位, 所以对32位物理地址(4GB)要右移17位, 取高15位
#define ROW_SHIFT 17
#define PAGES_PER_ROW 32

struct Page {
    uint8_t *v;
    uint64_t p;
    uint64_t r;

    Page() {}
    Page(uint8_t *v, uint64_t p, uint64_t r) : v(v), p(p), r(r) {}

};

map<uint64_t, vector<Page> > rows;
vector<uint64_t> test_rows;
RowFile result("result.txt");

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

int check_row(uint64_t r, uint8_t value=0xff)
{
    int errors = 0;
    for (auto p : rows[r])
        for (int i=0; i<PAGE_SIZE; ++i)
            if (p.v[i] != value)
            {
                cout << endl << "--- Error in row #" << dec << r <<" paddr 0x" << hex << p.p + i << ": 0x" << (int)p.v[i] << endl;
                errors++;
                // write row file
                if (find(result[r].begin(), result[r].end(), p.p+i) == result[r].end())
                {
                    result[r].push_back(p.p+i);
                    result.save();
                }
            }
    return errors;
}

// find an address in new_row which has the same bank/rank with p
uint64_t get_conflict_paddr(uint64_t p, uint64_t new_row)
{
    uint64_t q = (new_row << ROW_SHIFT) | (p % (1<<ROW_SHIFT));
    bitset<64> pb(p), qb(q);
    // pb should = qb, etc
    int pb0 = pb[13] ^ pb[17], qb0 = qb[13] ^ qb[17];
    int pb1 = pb[14] ^ pb[18], qb1 = qb[14] ^ qb[18];
    int pb2 = pb[15] ^ pb[19], qb2 = qb[15] ^ qb[19];
    int prank = pb[16] ^ pb[20], qrank = qb[16] ^ qb[20];
    qb.set(13, qb[13] ^ pb0 ^ qb0);
    qb.set(14, qb[14] ^ pb1 ^ qb1);
    qb.set(15, qb[15] ^ pb2 ^ qb2);
    qb.set(16, qb[16] ^ prank ^ qrank);
    /*
    cout << "p: " << hex << p << ", row " << (p>>ROW_SHIFT) << ", b/r "
         << pb2 << pb1 << pb0 << "/" << prank << endl;
    cout << "q: " << hex << qb.to_ullong() << ", row " << new_row << ", b/r "
         << (qb[15]^qb[19]) << (qb[14]^qb[18]) << (qb[13]^qb[17]) << "/"
         << (qb[16]^qb[20]) << endl;
    */
    return qb.to_ullong();    
}

void *p2v(uint64_t p, uint64_t r)
{
    uint64_t offset = (p & 0xfffull), base = p-offset;
    for (Page pg : rows[r])
        if (pg.p == base) return pg.v+offset;
    return 0;
}

void hammer_rows(uint64_t r)
{
    cout << "Hammering Row " << dec << r << "->[" << r+1 << "]<-" << r+2 << endl;
    // google routine
    for (Page r0 : rows[r])
    {
        // find an address in row r2, while keeping bank/rank address
        uint64_t q = get_conflict_paddr(r0.p, r+2);
        void *qv = p2v(q, r+2);
        if (qv)
        {
            cout << "hammering " << (uint64_t)r0.v << " / " << (uint64_t)qv << " conflict: " << (is_row_conflict(r0.v, qv) ? "yes" : "no") << endl;
            int ntime = 1024000, ne;
            do
            {
                fill_row(r+1);
                // hammer.h
                hammer_loop(r0.v, qv, ntime);
                ne = check_row(r+1);
                if (ne>0)
                {
                    cout << " n=" << dec << ntime << endl;
                    ntime >>=1;
                }
            } while (ne > 0);
        }
    }
}

int main(int argc, char** argv)
{
    uint64_t start_from = 0;
    if (argc>=2) start_from = atoi(argv[1]) - 1;

    // google rowhammer
    //1. allocate a lot of memory
    cout << "Physmem size: " << (physmem_size() >> 20) << " mb." << endl;
    uint8_t *m = allocate();

    //2. assume 15-bit row address (256kB = 64 pages per row), put each page into corrsponding rows
    analyze(m);
    cout << "Start from row #" << start_from << endl;

    //3. select 3 rows with 64/64/64 pages (will have full control on these rows), start hammering
    #define HAVE_ROW(r) ((rows.count(r) && rows[r].size() == PAGES_PER_ROW))
    for (auto p : rows)
    {
        if (HAVE_ROW(p.first) && HAVE_ROW(1+p.first) && HAVE_ROW(2+p.first))
            test_rows.push_back(p.first);
    }
    //4. for each row held, hammer all 64/64 pages. exhaustive
    for (uint64_t r : test_rows)
    {
        if (r < start_from) continue;
        hammer_rows(r);
        cout << endl;
    }
    // cleanup
    munmap(m, ALLOC_SIZE);
    return 0;
}


