SRCS	= $(wildcard	*.c)
SRCS	+=$(wildcard	*.cpp)
SRCS	+=$(wildcard	sqlite/*.c)
#SRCS	-=$(wildcard	sqlite/shell.c)
INCS	= -I./ -I./sqlite -I /usr/local/include	#for dlopen...
OBJS	= $(SRCS:.c=.o)		#same as $(patsubst %.c,%.o,$(SRCS))
OBJS	= $(SRCS:.cpp=.o)
TARGET	= app

CC	= g++	#gcc
CFLAGS	= -Wall -std=c99 -lpthread -Wl,--no-as-needed -ldl #-static -lm

$(TARGET):$(OBJS)
	$(CC) $(CFLAGS) $(INC) -o $@ $^

#%.o:%.c  
#	$(CC) $(CFLAGS) $(INC) -o $@ -c $< 


clean:
	rm -rf $(TARGET) $(OBJS)
	rm -rf *.ko
	rm -rf *.mod.*
	rm -rf .*.cmd
	rm -rf modules.order
	rm -rf Module.symvers
	rm -rf *~
