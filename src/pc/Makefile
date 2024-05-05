CC := riscv64-unknown-elf-gcc 

CFLAGS=-fno-builtin -Wno-pointer-to-int-cast -Wall -Wextra -c -mcmodel=medany -I../../atslib
PCDIR = ./
PCSOURCES := $(shell find $(PCDIR) -name '*.c')
PCOBJS:= $(PCSOURCES:%.c=%.o)

all:
	patscc -ccats kernel.dats
	$(MAKE) pc

pc: $(PCOBJS)

clean:
	rm *.o *.c
