// original code from widebright's 163 blog

#include "time.h"
#include "stdio.h"
#include "linux/types.h"
#include "stdint.h"

#define N 20000000L

int main(void)
{
    struct timespec tm, st, ed;
   // long total = 0;
    clockid_t clk_id[] = { CLOCK_REALTIME, CLOCK_REALTIME_COARSE, 
                           CLOCK_MONOTONIC, CLOCK_MONOTONIC_COARSE, CLOCK_MONOTONIC_RAW,
                           CLOCK_THREAD_CPUTIME_ID};
    const char * clk_id_s[] = { "rt", "rt_coarse", "mono", "mono_coarse", "mono_raw", "thread" };

    int i=0, j=0;

    for (i=0; i<6; i++)
    {
        clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &st);

        for (j=0; j<N; j++)
        {
            clock_gettime(clk_id[i], &tm);
 //           total += tm.tv_nsec;
        }

        clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &ed);

        int64_t result = (ed.tv_sec - st.tv_sec) * 1000000000 + 
                       (ed.tv_nsec - st.tv_nsec);
        printf("%s -> %ld times, total %ld ns, avg %ld ns\n", 
               clk_id_s[i], N, result, result/N);
    }

 //   printf("total %ld ns.\n", total);

    return 0;
}
