
factorial.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:

const unsigned int number = 8; // number of iterations
const unsigned int output = 40320;

int main()
{
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbe0014 	sw	s8,20(sp)
   8:	03a0f021 	addu	s8,sp,zero
    unsigned int main_result = 0;
   c:	afc00008 	sw	zero,8(s8)
    unsigned int c = 1;
  10:	24020001 	addiu	v0,zero,1
  14:	afc20000 	sw	v0,0(s8)
	unsigned int i;

	for (i=1; i <= number; ++i){
  18:	24020001 	addiu	v0,zero,1
  1c:	afc20004 	sw	v0,4(s8)
  20:	08000014 	j	50 <main+0x50>
  24:	00000000 	sll	zero,zero,0x0
        c = c * i;
  28:	8fc30000 	lw	v1,0(s8)
  2c:	8fc20004 	lw	v0,4(s8)
  30:	00000000 	sll	zero,zero,0x0
  34:	00620018 	mult	v1,v0
  38:	00001012 	mflo	v0
  3c:	afc20000 	sw	v0,0(s8)
{
    unsigned int main_result = 0;
    unsigned int c = 1;
	unsigned int i;

	for (i=1; i <= number; ++i){
  40:	8fc20004 	lw	v0,4(s8)
  44:	00000000 	sll	zero,zero,0x0
  48:	24420001 	addiu	v0,v0,1
  4c:	afc20004 	sw	v0,4(s8)
  50:	8f820000 	lw	v0,0(gp)
  54:	8fc30004 	lw	v1,4(s8)
  58:	00000000 	sll	zero,zero,0x0
  5c:	0043102b 	sltu	v0,v0,v1
  60:	1040fff1 	beqz	v0,28 <main+0x28>
  64:	00000000 	sll	zero,zero,0x0
        c = c * i;
    }
	
    main_result += (output != c);
  68:	8f830000 	lw	v1,0(gp)
  6c:	8fc20000 	lw	v0,0(s8)
  70:	00000000 	sll	zero,zero,0x0
  74:	00621026 	xor	v0,v1,v0
  78:	0002102b 	sltu	v0,zero,v0
  7c:	8fc30008 	lw	v1,8(s8)
  80:	00000000 	sll	zero,zero,0x0
  84:	00621021 	addu	v0,v1,v0
  88:	afc20008 	sw	v0,8(s8)

    return main_result;
  8c:	8fc20008 	lw	v0,8(s8)
}
  90:	03c0e821 	addu	sp,s8,zero
  94:	8fbe0014 	lw	s8,20(sp)
  98:	27bd0018 	addiu	sp,sp,24
  9c:	03e00008 	jr	ra
  a0:	00000000 	sll	zero,zero,0x0
