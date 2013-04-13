
factorial.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <calc_factorial>:
{

    unsigned int i;
    unsigned int factorial_number = 1;

    for (i=1; i <= n; ++i){
   0:	1080000a 	beqz	a0,2c <calc_factorial+0x2c>
   4:	24030001 	addiu	v1,zero,1

unsigned int calc_factorial (unsigned int n)
{

    unsigned int i;
    unsigned int factorial_number = 1;
START_CCODE
   8:	24020001 	addiu	v0,zero,1

    for (i=1; i <= n; ++i){
        factorial_number = factorial_number * i;
   c:	00430018 	mult	v0,v1
  10:	00001012 	mflo	v0
{

    unsigned int i;
    unsigned int factorial_number = 1;

    for (i=1; i <= n; ++i){
  14:	24630001 	addiu	v1,v1,1
  18:	0083282b 	sltu	a1,a0,v1
  1c:	10a0fffc 	beqz	a1,10 <calc_factorial+0x10>
  20:	00430018 	mult	v0,v1
END_CCORE
  24:	03e00008 	jr	ra
  28:	00000000 	sll	zero,zero,0x0
        factorial_number = factorial_number * i;
    }
    //printf("%d\n", factorial_number);

    return(factorial_number);
}
  2c:	03e00008 	jr	ra
  30:	24020001 	addiu	v0,zero,1

00000034 <main>:

int main()
{
  34:	27bdffe8 	addiu	sp,sp,-24
  38:	afbf0014 	sw	ra,20(sp)
    unsigned int main_result = 0;
    unsigned int c;

    c = calc_factorial (number);
  3c:	0c000000 	jal	0 <calc_factorial>
  40:	24040008 	addiu	a0,zero,8

    main_result += (output != c);
    
    //printf ("%d\n", main_result);

    return main_result;
  44:	38429d80 	xori	v0,v0,0x9d80
}
  48:	0002102b 	sltu	v0,zero,v0
  4c:	8fbf0014 	lw	ra,20(sp)
  50:	00000000 	sll	zero,zero,0x0
  54:	03e00008 	jr	ra
  58:	27bd0018 	addiu	sp,sp,24
