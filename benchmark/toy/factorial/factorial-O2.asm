
factorial.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <calc_factorial>:
{

    unsigned int i;
    unsigned int factorial_number = 1;

    for (i=1; i <= n; ++i){
START_CCODE
   0:	1080000b 	beqz	a0,30 <calc_factorial+0x30>
   4:	24030001 	addiu	v1,zero,1
   8:	24020001 	addiu	v0,zero,1
        factorial_number = factorial_number * i;
   c:	00430018 	mult	v0,v1
{

    unsigned int i;
    unsigned int factorial_number = 1;

    for (i=1; i <= n; ++i){
  10:	24630001 	addiu	v1,v1,1
  14:	0083282b 	sltu	a1,a0,v1
        factorial_number = factorial_number * i;
  18:	00001012 	mflo	v0
  1c:	00000000 	sll	zero,zero,0x0
{

    unsigned int i;
    unsigned int factorial_number = 1;

    for (i=1; i <= n; ++i){
  20:	10a0fffb 	beqz	a1,10 <calc_factorial+0x10>
  24:	00430018 	mult	v0,v1
END_CCORE
  28:	03e00008 	jr	ra
  2c:	00000000 	sll	zero,zero,0x0
        factorial_number = factorial_number * i;
    }
    //printf("%d\n", factorial_number);

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
