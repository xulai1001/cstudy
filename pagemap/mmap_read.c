#include <sys/mman.h>
#include <stdio.h>
#include <memory.h>
#include <stdint.h>
#include <errno.h>
#include <unistd.h>
#include <fcntl.h>

#define READ_REG32(reg)  ( *((volatile int*) (reg)) )
#define ALLOC_SIZE 4096

int main()
{
    char* map_base;
    FILE *f;
    int type,fd,i;
    fd = open("/dev/mem", O_RDWR);
    if(!fd)
        printf("Fail to open /dev/mem\n");
    else
        printf("Success to open /dev/mem\n");
    extern errno;
    map_base = (char*)mmap(0,ALLOC_SIZE,PROT_READ | PROT_WRITE, MAP_PRIVATE,fd,0x1000000);
    if(map_base == MAP_FAILED)
    {
        printf("mmap failed.\n");
        printf("errno: %d\n",errno);
        return -1;
    }
    printf("mapbase: %lx\n", (uint64_t)map_base);
    
    for(i=0;i<4;i++)
        printf("mem[%d]: %c\n",i,*(map_base + i));
    close(fd);
    munmap(map_base, ALLOC_SIZE);
    return 0;
}