CC := riscv64-unknown-elf-gcc 

CFLAGS=-fno-builtin -Wno-pointer-to-int-cast -Wall -Wextra -c -mcmodel=medany -I../../atslib
PCDIR = ./
PCSOURCES := $(shell find $(PCDIR) -name '*.dats')
PCOBJS:= $(PCSOURCES:%.dats=%_dats.o)

all:
	patscc -ccats $(PCSOURCES)
	$(MAKE) pc

pc: $(PCOBJS)

clean:
	rm *.o *.c
