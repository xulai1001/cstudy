#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>
#include <fcntl.h>
#include <sys/mman.h>
#define PM_ENTRY_BYTES sizeof(uint64_t)
#define GET_BIT(X,Y) (X & ((uint64_t)1<<Y)) >> Y
#define GET_PFN(X) X & 0x7FFFFFFFFFFFFF
#define PFN_MASK ((((uint64_t)1)<<55)-1)
#define PFN_PRESENT_FLAG (((uint64_t)1)<<63)
const int __endian_bit = 1;
// 小端模式 Little-Endian ：低位字节排放在内存的低地址端，高位字节排放在内存的高地址端。
// 大端模式 Big-Endian ： 高位字节排放在内存的低地址端，低位字节排放在内存的高地址端。
// 是否是大端模式 0 ：否 1 ：是
#define is_bigendian() ( (*(char*)&__endian_bit) == 0 )
#define page_map_file  "/proc/self/pagemap"



int mem_addr_vir2phy(unsigned long vir, unsigned long* phy) {
    int fd;
    //int page_size=0x200000;
    int page_size = 0x1000;
    unsigned long vir_page_idx = vir/page_size;
    unsigned long pfn_item_offset = vir_page_idx*sizeof(uint64_t);
    uint64_t pfn_item;
    fd = open(page_map_file, O_RDONLY);
    if (fd<0)
    {
        printf("open %s failed\n", page_map_file);
        return -1;
    }
    if ((off_t)-1 == lseek(fd, pfn_item_offset, SEEK_SET))
    {
        printf("lseek %s failed\n", page_map_file);
        return -1;
    }
    if (sizeof(uint64_t) != read(fd, &pfn_item, sizeof(uint64_t)))
    {
        printf("read %s failed\n", page_map_file);
        return -1;
    }
    if (0==(pfn_item & PFN_PRESENT_FLAG))
    {
        printf("page is not present\n");
        return -1;
    }
    //printf("%lx\n",(pfn_item & PFN_MASK)*page_size);
    //printf("%lx\n",vir % page_size);
    *phy = (pfn_item & PFN_MASK)*page_size + vir % page_size;
    return 0;
}




int main(int argc, char *argv[]) {
  char *m;
  size_t s = (10UL * 1024 * 1024);
  m = mmap(NULL, s, PROT_READ | PROT_WRITE,
                    MAP_PRIVATE | MAP_ANONYMOUS | 0x40000 /*MAP_HUGETLB*/, -1, 0);
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



