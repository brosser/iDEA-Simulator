
fib.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:

   0:	27bdffe8 	addiu	sp,sp,-24
     00: 00000000 nop
       00: 00000000 nop
         00: 00000000 nop
           00: 00000000 nop
             00: 00000000 nop
   4:	afbe0014 	sw	s8,20(sp)
        00: 00000000 nop
       00: 00000000 nop
         00: 00000000 nop
           00: 00000000 nop
             00: 00000000 nop
   8:	03a0f021 	addu	s8,sp,zero
        00: 00000000 nop
       00: 00000000 nop
         00: 00000000 nop
           00: 00000000 nop
             00: 00000000 nop
  int n = 10; // 50
  int a = 0;
  int b = 1;
  int i;
  
  volatile int sum[n];
   c:	27bdffd0 	addiu	sp,sp,-48
        00: 00000000 nop
       00: 00000000 nop
         00: 00000000 nop
           00: 00000000 nop
             00: 00000000 nop
  10:	03a02821 	addu	a1,sp,zero
       00: 00000000 nop
       00: 00000000 nop
         00: 00000000 nop
           00: 00000000 nop
             00: 00000000 nop
  

  // MANUALLY
    94: 03e00008  jr  ra
         00: 00000000 nop
       00: 00000000 nop
         00: 00000000 nop
           00: 00000000 nop
             00: 00000000 nop
  98: 27bd0018  addiu sp,sp,24
     00: 00000000 nop
       00: 00000000 nop
         00: 00000000 nop
           00: 00000000 nop
             00: 00000000 nop  int main_result = 0;

Disassembly of section .rodata:

00000000 <output>:
   0:	00000001 	0x1
   4:	00000002 	srl	zero,zero,0x0
   8:	00000003 	sra	zero,zero,0x0
   c:	00000005 	0x5
  10:	00000008 	jr	zero
  14:	0000000d 	break
  18:	00000015 	0x15
  1c:	00000022 	neg	zero,zero
  20:	00000037 	0x37
  24:	00000059 	0x59
