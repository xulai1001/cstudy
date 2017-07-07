#include "iostream"
#include "cstdlib"
#include "vector"
#include "list"
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
#define ALLOC_SIZE HUGE_SIZE
#define ALLOC_FLAG (MAP_PRIVATE | MAP_ANONYMOUS | HUGE_FLAG)

class HugePage {
public:
    char *v;
    uint64_t p;

public:
    HugePage()
    {
        ASSERT((v = (char *)mmap(0, ALLOC_SIZE, PROT_READ | PROT_WRITE, ALLOC_FLAG, -1, 0)) != MAP_FAILED);
        memset(v, 0, ALLOC_SIZE);
    }

    void release()
    {
        munmap(v, ALLOC_SIZE);
    }

    ~HugePage(){ release(); }

    bool operator <(HugePage &b) { return p<b.p; }
};

list<vector<HugePage>> chunks;
vector<HugePage> pages;

vector<HugePage> & get_contiguous_aligned_pages(int npages, int align, int nbuf)
{
    chunks.clear();
    int i;
    vector<HugePage> tmp, t;
    HugePage h;

    for (i=0; i<nbuf; ++i)
        tmp.push_back(HugePage());
    sort(tmp.first(), tmp.last());

    i=0;
    while (i<nbuf)
    {
        chunks.push_back(vector<HugePage>());
        t = chunks.back();
        t.push_back(tmp[i]); ++i;
        while (i<nbuf && tmp[i].p - tmp[i-1].p == ALLOC_SIZE)
        {
            t.push_back(tmp[i]); ++i;
        }
    }
    i=0;
    for (auto &ch : chunks)
        cout << "chunk " << ++i << ": " << ch.size() << "pages" << endl;
    for (auto &ch : chunks)
        if (ch.size() >= npages) return ch;
}

int main(void)
{
    pages = get_contiguous_aligned_pages(32, 32, 128);

    return 0;
}
