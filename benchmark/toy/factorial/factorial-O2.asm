
factorial.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <calc_factorial>:
{

    int i;
    short factorial_number = 1;

    for (i=1; i <= n; ++i){
   0:	1880000b 	blez	a0,30 <calc_factorial+0x30>
   4:	24030001 	addiu	v1,zero,1
   8:	24020001 	addiu	v0,zero,1
        factorial_number = factorial_number * i;
   c:	00430018 	mult	v0,v1
{

    int i;
    short factorial_number = 1;

    for (i=1; i <= n; ++i){
  10:	24630001 	addiu	v1,v1,1
  14:	0083282a 	slt	a1,a0,v1
        factorial_number = factorial_number * i;
  18:	00001012 	mflo	v0
  1c:	00021400 	sll	v0,v0,0x10
{

    int i;
    short factorial_number = 1;

    for (i=1; i <= n; ++i){
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
    main_result += (output != c);
    
    //printf ("%d\n", main_result);

    return main_result;
}
  38:	03e00008 	jr	ra
  3c:	00001021 	addu	v0,zero,zero
