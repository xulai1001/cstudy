#include "time.h"
#include "stdio.h"
#include "linux/types.h"
#include "stdint.h"

typedef int64_t clock_t;

typedef struct {
    // clock_gettime vars
    clock_t ns;
    int type;
    struct timespec t0, t1;
    // rdtsc vars
    clock_t ticks, r0, r1;
} clock;

// http://stackoverflow.com/questions/27049491/can-c-c-preprocessor-macros-have-default-parameter-values
//#define VARGS_(_2, _1, N, ...) N
//#define VARGS(...)  VARGS_(__VA_ARGS__, 2, 1, 0)
//#define CONS_(a, b) a##b
//#define CONS(a, b) CONS_(a, b)
//#define START_2(cl, type) cl.type = type; clock_gettime(cl.type, &cl.t0)
//#define START_1(cl) START_CLOCK(cl, CLOCK_MONOTONIC)
//#define START(...) CONS(START_, VARGS(__VA_ARGS__))(__VA_ARGS__) 

#define START_CLOCK(cl, type) cl.type = type; clock_gettime(cl.type, &cl.t0)
#define END_CLOCK(cl) clock_gettime(cl.type, &cl.t1); \
    cl.ns = (cl.t1.tv_sec - cl.t0.tv_sec) * 1000000000 + (cl.t1.tv_nsec - cl.t0.tv_nsec)

// intel guide
#define START_TSC(cl) __asm__ __volatile__ ( \
    "cpuid;" \
    "rdtsc;" \
    "shl $32, %%rdx;" \
    "or %%rdx, %%rax" \
    : "=a"(cl.r0) \
    :: "%rax", "%rbx", "%rcx", "%rdx")

#define END_TSC(cl) __asm__ __volatile__ ( \
    "rdtscp;" \
    "shl $32, %%rdx;" \
    "or %%rdx, %%rax;" \
    "mov %%rax, %0"
    "cpuid;" \
    : "=r"(cl.r1) \
    :: "%rax", "%rbx", "%rcx", "%rdx"); \
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