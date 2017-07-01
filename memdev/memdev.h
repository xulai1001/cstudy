#ifndef _MEMDEV_H
#define _MEMDEV_H

#include "linux/kernel.h"
#include "linux/init.h"
#include "linux/module.h"
#include "linux/types.h"
#include "linux/string.h"

#include "linux/cdev.h"
#include "linux/device.h"
#include "linux/gfp.h"
#include "linux/fs.h"
#include "linux/slab.h"
#include "asm/io.h"
#include "linux/mm.h"

#define assert(expr) if (!(expr)) { printk("mem_dev:%d: ASSERT FAIL " # expr " failed!\n", \
                        __LINE__); return 0;}
// char device struct
struct mem_dev
{
    struct file_operations *ops;
    struct cdev cdev;
};

// these globals are implemented in memdev.c
#ifndef MEMDEV_C
extern int md_major, md_minor;
extern struct class *md_class;
extern struct mem_dev md_dev;
extern struct device *md_device;
extern struct file_operations md_fops;
#endif

#endif
