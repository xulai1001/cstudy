#define MEMDEV_C
#include "memdev.h"

MODULE_LICENSE("GPL");
MODULE_AUTHOR("viktorxu");

int md_major, md_minor;
struct class *md_class;
struct mem_dev md_dev;
struct device *md_device;

#define POOL_SIZE (128 << 20)
static char *map_base;
static char riddle[] = "A quick brown fox";

//fops defs
int md_open(struct inode *inode, struct file *fp)
{
    // get address of struct mem_dev from inode, and save into private_data
    fp->private_data = container_of(inode->i_cdev, struct mem_dev, cdev);
    return 0;
}

int md_mmap(struct file *fp, struct vm_area_struct *vma)
{
    uint64_t size = vma->vm_end - vma->vm_start;
    
    int ret = remap_vmalloc_range(vma, map_base, vma->vm_pgoff);
    printk("mem_dev: request mmap size = %d, ret=%d\n", size, ret);
    return ret;
}

struct file_operations md_fops = {
    .owner = THIS_MODULE,
    .open = md_open,
    .mmap = md_mmap
};

// chardev
int md_create(void)
{
    dev_t devno;
    printk("mem_dev: create device...\n");
    assert( 0 == alloc_chrdev_region(&devno, md_minor, 1, "md_dev") );
    md_major = MAJOR(devno);
    md_class = class_create(THIS_MODULE, "md_class");
    md_dev.ops = &md_fops;
    cdev_init(&md_dev.cdev, &md_fops);
    md_dev.cdev.owner = THIS_MODULE;
    assert( 0 == cdev_add(&md_dev.cdev, devno, 1) );
    md_device = device_create(md_class, 0, devno, 0, "md_device");
    printk("mem_dev: ok\n");
    return 0;
}

void md_destroy(void)
{
    dev_t devno = MKDEV(md_major, md_minor);
    cdev_del(&md_dev.cdev);
    unregister_chrdev_region(devno, 1);
    device_destroy(md_class, devno);
    class_destroy(md_class);
    printk("mem_dev: device unregistered.\n");
}

static int __init md_init(void)
{
    printk("mem_dev: init module\n");
    int zeros=26;
    unsigned long mask = ~((1ull<<zeros) - 1);
    //map_base = (char *)((((unsigned long)pool) & mask) + (1ull<<zeros));
    map_base = vmalloc_user(POOL_SIZE);
    printk("mem_dev: map_base at 0x%lx\n", map_base);
    strncpy(map_base, riddle, sizeof(riddle));

    md_create();
    return 0;
}

static void __exit md_exit(void)
{
    md_destroy();
    vfree(map_base);
    printk("mem_dev: module exit.\n");
}

module_init(md_init);
module_exit(md_exit);
