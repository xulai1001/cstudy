#include "stdio.h"
#include "time.h"
#include "timing.h"

int main(void)
{
    printf("clock_overhead = %ld ns\n", clock_overhead(CLOCK_MONOTONIC));
    printf("tsc_overhead = %ld ticks\n", tsc_overhead());
    printf("CPU freq = %ld\n", tsc_measure_freq());
    return 0;
}
