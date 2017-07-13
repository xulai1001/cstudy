#ifndef _V2P_H
#define _V2P_H

#include "unistd.h"
#include "errno.h"
#include "stdint.h"
#include "fcntl.h"
#include "sys/mman.h"
#include "timing.h"

#ifndef ASSERT
#define ASSERT(line) if (!(line)) { fprintf(stderr, "ASSERT error at line %d: " #line, __LINE__); perror(" "); exit(-1); }
#endif

//page select
#define PAGE_SIZE 0x1000
#define PAGE_FLAG 0
#define HUGE_SIZE 0x200000
#define HUGE_FLAG 0x40000
#define PFN_MASK ((1ul << 55) - 1)

int fd_pagemap = -1;

uint64_t v2p(void *v) {

    if (fd_pagemap < 0) ASSERT((fd_pagemap = open("/proc/self/pagemap", O_RDONLY)) > 0);
    uint64_t vir_page_idx = (uint64_t)v / PAGE_SIZE;      // 虚拟页号
    uint64_t page_offset = (uint64_t)v % PAGE_SIZE;       // 页内偏移
    uint64_t pfn_item_offset = vir_page_idx*sizeof(uint64_t);   // pagemap文件中对应虚拟页号的偏移
    
    int dummy = *(int *)v;  // visit the addr, keep it in memory
    // 读取pfn
    uint64_t pfn_item, pfn;
    ASSERT( lseek(fd_pagemap, pfn_item_offset, SEEK_SET) != -1 );
    ASSERT( read(fd_pagemap, &pfn_item, sizeof(uint64_t)) == sizeof(uint64_t) );
   // ASSERT( pfn_item & PFN_PRESENT_FLAG );  // 确保页面存在
    pfn = pfn_item & PFN_MASK;              // 取低55位为物理页号

    return pfn * PAGE_SIZE + page_offset;
}

void 

#endif