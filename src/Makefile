PCDIR = pc
PCSOURCES := $(shell find $(PCDIR) -name '*.c')
PCOBJS:= $(PCSOURCES:%.c=%.o)

PCBOOTDIR= pcboot
PCBOOTSOURCES := $(shell find $(PCBOOTDIR) -name '*.s')
PCBOOTOBJS:= $(PCBOOTSOURCES:%.s=%.o)

all:
	$(MAKE) -C pcboot
	$(MAKE) -C pc
	riscv64-unknown-elf-ld -T pcboot/linker.ld -nostdlib $(PCBOOTOBJS) $(PCOBJS) -o kernel.elf

clean:	
	$(MAKE) clean -C pcboot
	$(MAKE) clean -C pc
