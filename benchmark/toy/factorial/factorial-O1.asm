
factorial.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <calc_factorial>:
{

    int i;
    short factorial_number = 1;

    for (i=1; i <= n; ++i){
   0:	1880000b 	blez	a0,30 <calc_factorial+0x30>
   4:	24030001 	addiu	v1,zero,1

int calc_factorial (int n)
{

    int i;
    short factorial_number = 1;
   8:	24020001 	addiu	v0,zero,1

    for (i=1; i <= n; ++i){
        factorial_number = factorial_number * i;
   c:	00620018 	mult	v1,v0
  10:	00001012 	mflo	v0
  14:	00021400 	sll	v0,v0,0x10
{

    int i;
    short factorial_number = 1;

    for (i=1; i <= n; ++i){
  18:	24630001 	addiu	v1,v1,1
  1c:	0083282a 	slt	a1,a0,v1
  20:	10a0fffa 	beqz	a1,c <calc_factorial+0xc>
  24:	00021403 	sra	v0,v0,0x10
  28:	03e00008 	jr	ra
  2c:	00000000 	sll	zero,zero,0x0
        factorial_number = factorial_number * i;
    }

    return(factorial_number);
}
  30:	03e00008 	jr	ra
  34:	24020001 	addiu	v0,zero,1

00000038 <main>:

int main()
{
  38:	27bdffe8 	addiu	sp,sp,-24
  3c:	afbf0014 	sw	ra,20(sp)
    int main_result = 0;
    int c;

    c = calc_factorial (number);
  40:	0c000000 	jal	0 <calc_factorial>
  44:	24040003 	addiu	a0,zero,3

    main_result += (output != c);
  48:	38420006 	xori	v0,v0,0x6
    
    //printf ("%d\n", main_result);

    return main_result;
}
  4c:	0002102b 	sltu	v0,zero,v0
  50:	8fbf0014 	lw	ra,20(sp)
  54:	00000000 	sll	zero,zero,0x0
  58:	03e00008 	jr	ra
  5c:	27bd0018 	addiu	sp,sp,24
