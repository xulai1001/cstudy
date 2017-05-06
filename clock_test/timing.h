#ifndef TIMING_H
#define TIMING_H

#include "time.h"
#include "stdio.h"
#include "linux/types.h"
#include "stdint.h"

typedef uint64_t clock_t;

typedef struct {
    // clock_gettime vars
    clock_t ns;
    int type;
    struct timespec t0, t1;
    // rdtsc vars
    clock_t ticks, r0, r1;
} clock;

#define START_CLOCK(cl, type) cl.type = type; clock_gettime(cl.type, &cl.t0)
#define END_CLOCK(cl) clock_gettime(cl.type, &cl.t1); \
    cl.ns = (cl.t1.tv_sec - cl.t0.tv_sec) * 1000000000 + (cl.t1.tv_nsec - cl.t0.tv_nsec)

// intel guide
// use cpuid as barrier before, cpuid will clobber(use) all registers
// =A joins eax/edx to 64-bit long
// no output vars
#define START_TSC(cl) __asm__ __volatile__ ( \
    "cpuid; \
     rdtsc" \
    : "=A"(cl.r0) \
    : \
    : "%rax", "%rbx", "%rcx", "%rdx")

// shl/or joins eax/edx, then mov to var
// use cpuid as barrier after, will clobber all registers
// no output vars
// =g lets gcc decide howto deal with var
#define END_TSC(cl) __asm__ __volatile__ ( \
    "rdtscp; \
     shl $32, %%rdx; \
     or %%rdx, %%rax; \
     mov %%rax, %0; \
     cpuid" \
    : "=g"(cl.r1) \
    : \
    : "%rax", "%rbx", "%rcx", "%rdx"); \
    cl.ticks = r1 - r0

// baseline test
int clock_overhead(int type)
{
    struct clock cl;
    int i, sum=0;
    // warmup
    for (i=0; i<10; ++i)
    {
        START_CLOCK(cl, type);
        END_CLOCK(cl);
        sum += cl.ns;
    }
    sum = 0;
    // test
    for (i=0; i<100; ++i)
    {
        START_CLOCK(cl, type);
        END_CLOCK(cl);
        sum += cl.ns;
    }
    return sum/100;
}

int tsc_overhead(void)
{
    struct clock cl;
    int i, sum=0;
    //warmup
    for (i=0; i<10; ++i)
    {
        START_TSC(cl);
        END_TSC(cl);
        sum += cl.ticks;
    }
    sum = 0;
    //test
    for (i=0; i<1000; ++i)
    {
        START_TSC(cl);
        END_TSC(cl);
        sum += cl.ticks;
    }
    return sum/1000;
}

clock_t tsc_measure_freq(void)
{
    struct clock cl;
    START_TSC(cl);
    usleep(1000000);
    END_TSC(cl);
    return cl.ticks;
}

#endif
