name=dfsin
mips-elf-gcc -O0 -c -g $name.c
mips-elf-objdump -D -S -M no-aliases -j .text -j .rodata -j .bss -j .data $name.o > $name$opt.asm

mips-elf-gcc -O1 -c -g $name.c
mips-elf-objdump -D -S -M no-aliases -j .text -j .rodata -j .bss -j .data $name.o > $name$opt.asm

mips-elf-gcc -O2 -c -g $name.c
mips-elf-objdump -D -S -M no-aliases -j .text -j .rodata -j .bss -j .data $name.o > $name$opt.asm

mips-elf-gcc -O3 -c -g $name.c
mips-elf-objdump -D -S -M no-aliases -j .text -j .rodata -j .bss -j .data $name.o > $name$opt.asm

