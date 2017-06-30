obj-m := memdev.o
KERNELBUILD := /lib/modules/`uname -r`/build
all:
	$(MAKE) -C $(KERNELBUILD) M=$(shell pwd) modules
install:
	insmod memdev.ko
	dmesg | tail
uninstall:
	rmmod memdev.ko
	dmesg | tail
clean:
	rm -rf *.o
	rm -rf .depend .*.cmd *.ko *.mod.c .tmp_versions *.symvers .*.d
	rm -f tags
tags:
	ctags -R --extra=+f --c-kinds=+pf
