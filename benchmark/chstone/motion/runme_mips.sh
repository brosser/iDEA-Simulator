#!/usr/bin/sh
#--------------------
# User parameter
#--------------------

name=mpeg2
mips-elf-gcc -O0 -c -g $name.c
mips-elf-objdump -D -S -j .rodata -j .text -j .bss -j .data $name.o > $name-O0.asm

mips-elf-gcc -O1 -c -g $name.c
mips-elf-objdump -D -S -j .rodata -j .text -j .bss -j .data $name.o > $name-O1.asm

mips-elf-gcc -O2 -c -g $name.c
mips-elf-objdump -D -S -j .rodata -j .text -j .bss -j .data $name.o > $name-O2.asm

mips-elf-gcc -O3 -c -g $name.c
mips-elf-objdump -D -S -j .rodata -j .text -j .bss -j .data $name.o > $name-O3.asm
