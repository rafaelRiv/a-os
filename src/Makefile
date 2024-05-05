PCDIR = pc
PCSOURCES := $(shell find $(PCDIR) -name '*.dats')
PCOBJS:= $(PCSOURCES:%.dats=%_dats.o)

PCBOOTDIR= pcboot
PCBOOTSOURCES := $(shell find $(PCBOOTDIR) -name '*.s')
PCBOOTOBJS:= $(PCBOOTSOURCES:%.s=%.o)

all:
	$(MAKE) -C pc
	$(MAKE) -C pcboot
	riscv64-unknown-elf-ld -T pcboot/linker.ld -nostdlib $(PCOBJS) $(PCBOOTOBJS) -o kernel.elf

clean:	
	$(MAKE) clean -C pcboot
	$(MAKE) clean -C pc
	rm kernel.elf
