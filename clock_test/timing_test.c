#include "stdio.h"
#include "time.h"
#include "stdlib.h"
#include "string.h"

#include "timing.h"

#define N 1000

clk_t g[N], ov;

void timing_graph(void)
{
    int i;
    struct myclock cl;

    memset(g, 0, sizeof(g));

    for (i=0; i<N; ++i)
    {
        START_TSC(cl);
        // test code start
        
        START_CLOCK(cl, CLOCK_MONOTONIC);
        END_CLOCK(cl);
        
        // test code end
        END_TSC(cl);
        g[i] = cl.ticks;
    }
}

int main(void)
{
    int i;
    ov = tsc_overhead();
    
 //   printf("clock_overhead = %ld ns\n", clock_overhead(CLOCK_MONOTONIC));
 //   printf("tsc_overhead = %ld ticks\n", ov);
 //   printf("CPU freq = %ld\n", tsc_measure_freq());

 //   printf("timing graph... \n");
    timing_graph();
    for (i=0; i<N; ++i) printf("%d %ld %ld\n", i, g[i], ov);

    return 0;
}
