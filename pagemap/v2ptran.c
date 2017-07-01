#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>
#include <fcntl.h>
#include <sys/mman.h>

#define GET_BIT(X,Y) (X & (1ul<<Y)) >> Y
#define PFN_MASK ((1ul << 55) - 1)
#define PFN_PRESENT_FLAG (1ul << 63)

#define page_map_file  "/proc/self/pagemap"
#define page_flag_file "/proc/kpageflags"
#define mem_file "/dev/md_device"
#define PAGE_SIZE 0x1000ul      
#define HUGE_SIZE 0x200000ul

#define ASSERT(line) if (!(line)) { fprintf(stderr, "ASSERT error at line %d: " #line, __LINE__); perror(" "); return -1; }

static int fd=-1, flag_fd=-1, mem_fd=-1; 

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
    
    uint64_t page_flags;
    ASSERT( lseek(flag_fd, pfn*sizeof(uint64_t), SEEK_SET) != -1);
    ASSERT( read(flag_fd, &page_flags, sizeof(uint64_t)) == sizeof(uint64_t) );

    printf("here vir=0x%lx, item=0x%lx, pfn=0x%lx, offset=%ld, flag=0x%lx\n", v, pfn_item, pfn, page_offset, page_flags);

    return pfn * PAGE_SIZE + page_offset;
}

void test_malloc(void)
{
    printf("test malloc...\n");
    int *a = malloc(sizeof(int) * HUGE_SIZE);
    int step = 0x20000, i;
    for (i=0; i<HUGE_SIZE; i+=step)
        printf("a[%d], v = 0x%lx, p = 0x%lx\n", i, &a[i], v2p(&a[i]));
    free(a);
}

int test_mmap(void)
{
    printf("test_mmap...\n");
    uint8_t *m;
    uint64_t size = 32 * HUGE_SIZE, step=HUGE_SIZE, i;
    ASSERT((m = mmap(0, size, PROT_READ | PROT_WRITE,
                         MAP_PRIVATE | MAP_ANONYMOUS | 0x40000, -1, 0)) != MAP_FAILED);
    memset(m, 0, size);
    for (i=0; i<size; i+=step)
        printf("offset = 0x%lx, v = 0x%lx, p = 0x%lx\n", i, (uint64_t)m+i, v2p((uint64_t)m+i));    
    munmap(m, size);
    return 0;
}

int test_devmem(void)
{
    printf("test /dev/md_device...\n");
    char *page;
    
    ASSERT( (page = mmap(0, HUGE_SIZE, PROT_READ,
                             MAP_SHARED, mem_fd, 0)) != MAP_FAILED);
                             
    printf("v = 0x%lx, p = 0x%lx, read = %s\n", page, v2p(page), page);
    return 0;
}

int main(void)
{
    printf("open %s...\n", page_map_file);
    ASSERT( (fd = open(page_map_file, O_RDONLY)) > 0 );
    ASSERT( (flag_fd = open(page_flag_file, O_RDONLY)) > 0 );
    ASSERT( (mem_fd = open(mem_file, O_RDONLY)) > 0 );
   // test_malloc();
  //  test_mmap();
    test_devmem();    // can't do without rebuild kernel
    
    return 0;
}

