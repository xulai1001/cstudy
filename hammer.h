#ifndef _HAMMER_H
#define _HAMMER_H

#include "timing.h"

// primitive
#define HAMMER(a, b) __asm__ __volatile__( \
    "movq (%0), %%rax \n\t" \
    "movq (%1), %%rax \n\t" \
    "clflush (%0) \n\t" \
    "clflush (%1) \n\t" \
    "mfence" \
    :   \
    :"r"(a), "r"(b) \
    :"rax", "memory")

// row conflict (slow path) > 240 ticks
#define ACCESS_TIME_THRESHOLD 240

// hammer function. returns operation time (ticks)
uint64_t hammer_loop(void *va, void *vb, int n)
{
    struct myclock clk;
    int i = n;
    
    START_TSC(clk);
    while (i--) { HAMMER(va, vb); }
    END_TSC(clk);
    
    return clk.ticks;
}

// method from OBF (usenix 16)
// given 2 virt addrs, measure their average access time by hammering
int is_row_conflict(void *va, void *vb)
{
    int access_time;
    access_time = hammer_loop(va, vb, 100) / (100*2);
    while (access_time > 3*ACCESS_TIME_THRESHOLD)
    {
        printf("access time too long (%d), retry...\n", access_time);
        access_time = hammer_loop(va, vb, 100) / (100*2);
    } 
    return (access_time >= ACCESS_TIME_THRESHOLD);
}


#endif