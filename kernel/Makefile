obj-m += testKernelMod.o
KDIR = /usr/src/kernel
PWD := $(shell pwd)
all:
	make -C $(KDIR) M=$(PWD) ARCH=arm modules
clean:
	make -C $(KDIR) M=$(PWD) ARCH=arm clean
