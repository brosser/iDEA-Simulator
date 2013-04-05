
factorial.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <calc_factorial>:

const int number = 3;
const int output = 6;

int calc_factorial (int n)
{
   0:	27bdfff0 	addiu	sp,sp,-16
   4:	afbe000c 	sw	s8,12(sp)
   8:	03a0f021 	addu	s8,sp,zero
   c:	afc40010 	sw	a0,16(s8)

    int i;
    short factorial_number = 1;
  10:	24020001 	addiu	v0,zero,1
  14:	a7c20004 	sh	v0,4(s8)

    for (i=1; i <= n; ++i){
  18:	24020001 	addiu	v0,zero,1
  1c:	afc20000 	sw	v0,0(s8)
  20:	08000017 	j	5c <calc_factorial+0x5c>
  24:	00000000 	sll	zero,zero,0x0
        factorial_number = factorial_number * i;
  28:	8fc20000 	lw	v0,0(s8)
  2c:	00000000 	sll	zero,zero,0x0
  30:	3043ffff 	andi	v1,v0,0xffff
  34:	97c20004 	lhu	v0,4(s8)
  38:	00000000 	sll	zero,zero,0x0
  3c:	00620018 	mult	v1,v0
  40:	00001012 	mflo	v0
  44:	3042ffff 	andi	v0,v0,0xffff
  48:	a7c20004 	sh	v0,4(s8)
{

    int i;
    short factorial_number = 1;

    for (i=1; i <= n; ++i){
  4c:	8fc20000 	lw	v0,0(s8)
  50:	00000000 	sll	zero,zero,0x0
  54:	24420001 	addiu	v0,v0,1
  58:	afc20000 	sw	v0,0(s8)
  5c:	8fc30000 	lw	v1,0(s8)
  60:	8fc20010 	lw	v0,16(s8)
  64:	00000000 	sll	zero,zero,0x0
  68:	0043102a 	slt	v0,v0,v1
  6c:	1040ffee 	beqz	v0,28 <calc_factorial+0x28>
  70:	00000000 	sll	zero,zero,0x0
        factorial_number = factorial_number * i;
    }

    return(factorial_number);
  74:	87c20004 	lh	v0,4(s8)
}
  78:	03c0e821 	addu	sp,s8,zero
  7c:	8fbe000c 	lw	s8,12(sp)
  80:	27bd0010 	addiu	sp,sp,16
  84:	03e00008 	jr	ra
  88:	00000000 	sll	zero,zero,0x0

0000008c <main>:

int main()
{
  8c:	27bdffe0 	addiu	sp,sp,-32
  90:	afbf001c 	sw	ra,28(sp)
  94:	afbe0018 	sw	s8,24(sp)
  98:	03a0f021 	addu	s8,sp,zero
    int main_result = 0;
  9c:	afc00010 	sw	zero,16(s8)
    int c;

    c = calc_factorial (number);
  a0:	8f820000 	lw	v0,0(s8)
  a4:	00000000 	sll	zero,zero,0x0
  a8:	00402021 	addu	a0,v0,zero
  ac:	0c000000 	jal	0 <calc_factorial>
  b0:	00000000 	sll	zero,zero,0x0
  b4:	afc20014 	sw	v0,20(s8)

    main_result += (output != c);
  b8:	8f830000 	lw	v1,0(s8)
  bc:	8fc20014 	lw	v0,20(s8)
  c0:	00000000 	sll	zero,zero,0x0
  c4:	00621026 	xor	v0,v1,v0
  c8:	0002102b 	sltu	v0,zero,v0
  cc:	8fc30010 	lw	v1,16(s8)
  d0:	00000000 	sll	zero,zero,0x0
  d4:	00621021 	addu	v0,v1,v0
  d8:	afc20010 	sw	v0,16(s8)
    
    //printf ("%d\n", main_result);

    return main_result;
  dc:	8fc20010 	lw	v0,16(s8)
}
  e0:	03c0e821 	addu	sp,s8,zero
  e4:	8fbf001c 	lw	ra,28(sp)
  e8:	8fbe0018 	lw	s8,24(sp)
  ec:	27bd0020 	addiu	sp,sp,32
  f0:	03e00008 	jr	ra
  f4:	00000000 	sll	zero,zero,0x0
