


all:
	make -C $(KDIR)  ARCH=arm modules
clean:
	make -C $(KDIR) M=$(PWD) ARCH=arm clean



SRCS	= $(wildcard	*.c)
SRCS	+=$(wildcard	sqlite/*.c)
#SRCS	-=$(wildcard	sqlite/shell.c)
INCS	= -I./ -I./sqlite -I /usr/local/include	#for dlopen...
OBJS	= $(SRCS:.c=.o)	#same as $(patsubst %.c,%.o,$(SRCS))
TARGET	= app

obj-m	+= testKernelMod.o
KDIR	= ~/tf_card/linux-Stable/usr/src/kernel
PWD	:= $(shell pwd)


CC	= gcc	#g++
CFLAGS	= -Wall -std=c99 -lpthread -Wl,--no-as-needed -ldl #-static -lm

$(TARGET):$(OBJS)
	#$(CC) $(CFLAGS) $(INC) -o $@ $^
	make -C $(KDIR) M=$(PWD) ARCH=arm modules

clean:
	rm -rf $(TARGET) $(OBJS)
	rm -rf *.ko
	rm -rf *.mod.*
	rm -rf .*.cmd
	rm -rf modules.order
	rm -rf Module.symvers
	rm -rf *~
