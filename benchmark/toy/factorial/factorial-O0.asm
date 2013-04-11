
factorial.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <calc_factorial>:

const int number = 8; // number of iterations
const int output = 40320;

int calc_factorial (int n)
{
   0:	27bdfff0 	addiu	sp,sp,-16
   4:	afbe000c 	sw	s8,12(sp)
   8:	03a0f021 	addu	s8,sp,zero
   c:	afc40010 	sw	a0,16(s8)

    int i;
    int factorial_number = 1;
  10:	24020001 	addiu	v0,zero,1
  14:	afc20004 	sw	v0,4(s8)

    for (i=1; i <= n; ++i){
  18:	24020001 	addiu	v0,zero,1
  1c:	afc20000 	sw	v0,0(s8)
  20:	08000014 	j	50 <calc_factorial+0x50>
  24:	00000000 	sll	zero,zero,0x0
        factorial_number = factorial_number * i;
  28:	8fc30004 	lw	v1,4(s8)
  2c:	8fc20000 	lw	v0,0(s8)
  30:	00000000 	sll	zero,zero,0x0
  34:	00620018 	mult	v1,v0
  38:	00001012 	mflo	v0
  3c:	afc20004 	sw	v0,4(s8)
{

    int i;
    int factorial_number = 1;

    for (i=1; i <= n; ++i){
  40:	8fc20000 	lw	v0,0(s8)
  44:	00000000 	sll	zero,zero,0x0
  48:	24420001 	addiu	v0,v0,1
  4c:	afc20000 	sw	v0,0(s8)
  50:	8fc30000 	lw	v1,0(s8)
  54:	8fc20010 	lw	v0,16(s8)
  58:	00000000 	sll	zero,zero,0x0
  5c:	0043102a 	slt	v0,v0,v1
  60:	1040fff1 	beqz	v0,28 <calc_factorial+0x28>
  64:	00000000 	sll	zero,zero,0x0
        factorial_number = factorial_number * i;
    }
    //printf("%d\n", factorial_number);

    return(factorial_number);
  68:	8fc20004 	lw	v0,4(s8)
}
  6c:	03c0e821 	addu	sp,s8,zero
  70:	8fbe000c 	lw	s8,12(sp)
  74:	27bd0010 	addiu	sp,sp,16
  78:	03e00008 	jr	ra
  7c:	00000000 	sll	zero,zero,0x0

00000080 <main>:

int main()
{
  80:	27bdffe0 	addiu	sp,sp,-32
  84:	afbf001c 	sw	ra,28(sp)
  88:	afbe0018 	sw	s8,24(sp)
  8c:	03a0f021 	addu	s8,sp,zero
    int main_result = 0;
  90:	afc00010 	sw	zero,16(s8)
    int c;

    c = calc_factorial (number);
  94:	8f820000 	lw	v0,0(gp)
  98:	00000000 	sll	zero,zero,0x0
  9c:	00402021 	addu	a0,v0,zero
  a0:	0c000000 	jal	0 <calc_factorial>
  a4:	00000000 	sll	zero,zero,0x0
  a8:	afc20014 	sw	v0,20(s8)

    main_result += (output != c);
  ac:	8f830000 	lw	v1,0(gp)
  b0:	8fc20014 	lw	v0,20(s8)
  b4:	00000000 	sll	zero,zero,0x0
  b8:	00621026 	xor	v0,v1,v0
  bc:	0002102b 	sltu	v0,zero,v0
  c0:	8fc30010 	lw	v1,16(s8)
  c4:	00000000 	sll	zero,zero,0x0
  c8:	00621021 	addu	v0,v1,v0
  cc:	afc20010 	sw	v0,16(s8)
    
    //printf ("%d\n", main_result);

    return main_result;
  d0:	8fc20010 	lw	v0,16(s8)
}
  d4:	03c0e821 	addu	sp,s8,zero
  d8:	8fbf001c 	lw	ra,28(sp)
  dc:	8fbe0018 	lw	s8,24(sp)
  e0:	27bd0020 	addiu	sp,sp,32
  e4:	03e00008 	jr	ra
  e8:	00000000 	sll	zero,zero,0x0
