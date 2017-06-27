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
#define PAGE_SIZE 0x1000ul      
#define HUGE_SIZE 0x200000ul
#define pad 0x3377BBFF      //random dumb

#define ASSERT(line) if (!(line)) { fprintf(stderr, "ASSERT error at line %d: " #line "\n", __LINE__); return -1; }

static int fd=-1; 

uint64_t v2p(uint64_t v) {
    uint64_t vir_page_idx = v / PAGE_SIZE;      // 虚拟页号
    uint64_t page_offset = v % PAGE_SIZE;       // 页内偏移
    uint64_t pfn_item_offset = vir_page_idx*sizeof(uint64_t);   // pagemap文件中对应虚拟页号的偏移
    
    // 读取pfn
    uint64_t pfn_item, pfn;
    ASSERT( lseek(fd, pfn_item_offset, SEEK_SET) != -1 );
    ASSERT( read(fd, &pfn_item, sizeof(uint64_t)) == sizeof(uint64_t) );
    ASSERT( pfn_item & PFN_PRESENT_FLAG );  // 确保页面存在
    pfn = pfn_item & PFN_MASK;              // 取低55位为物理页号

 //   printf("here vir=0x%lx, item=0x%lx, pfn=0x%lx, offset=%ld\n", v, pfn_item, pfn, page_offset);

    return pfn * PAGE_SIZE + page_offset;
}

void test_malloc(void)
{
    int *a = malloc(sizeof(int) * HUGE_SIZE);
    int step = 0x20000, i;
    for (i=0; i<HUGE_SIZE; i+=step)
        a[i]=pad;
    for (i=0; i<HUGE_SIZE; i+=step)
        printf("a[%d], v = 0x%lx, p = 0x%lx\n", i, &a[i], v2p(&a[i]));
    free(a);
}

int main(void)
{
    printf("open %s...\n", page_map_file);
    ASSERT( (fd = open(page_map_file, O_RDONLY)) > 0 );
    test_malloc();
    return 0;
}
/*
int main(int argc, char *argv[]) {
  char *m;
  size_t s = (10UL * 1024 * 1024);
  m = mmap(NULL, s, PROT_READ | PROT_WRITE,
                    MAP_PRIVATE | MAP_ANONYMOUS | 0x40000, -1, 0);
  if (m == MAP_FAILED) {
    perror("map mem");
    m = NULL;
    return 1;
  }
  memset(m, 0, s);
  printf("map_hugetlb ok!\n");
  unsigned long virAddress = (uint64_t)&m[0];
  unsigned long phyAddress;
  printf("VirAddress: 0x%lx\n",virAddress);
  mem_addr_vir2phy(virAddress,&phyAddress);
  printf("PhyAddress: 0x%lx\n",phyAddress);

  virAddress = (uint64_t)&m[0x200000-2];
  printf("VirAddress: 0x%lx\n",virAddress);
  mem_addr_vir2phy(virAddress,&phyAddress);
  printf("PhyAddress: 0x%lx\n",phyAddress);

  virAddress = (uint64_t)&m[0x200000-1];
  printf("VirAddress: 0x%lx\n",virAddress);
  mem_addr_vir2phy(virAddress,&phyAddress);
  printf("PhyAddress: 0x%lx\n",phyAddress);


  virAddress = (uint64_t)&m[0x200000];
  printf("VirAddress: 0x%lx\n",virAddress);
  mem_addr_vir2phy(virAddress,&phyAddress);
  printf("PhyAddress: 0x%lx\n",phyAddress);

  virAddress = (uint64_t)&m[0x200000 + 1];
  printf("VirAddress: 0x%lx\n",virAddress);
  mem_addr_vir2phy(virAddress,&phyAddress);
  printf("PhyAddress: 0x%lx\n",phyAddress);
  getchar();
  munmap(m, s);
  return 0;
}


*/
