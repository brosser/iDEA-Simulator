
fib.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
 * program.
 */
const int output[10] = { 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 };

int main ()
{
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbe0014 	sw	s8,20(sp)
   8:	03a0f021 	addu	s8,sp,zero
  int n = 10; // 50
  int a = 0;
  int b = 1;
  int i;
  
  volatile int sum[n];
   c:	27bdffd0 	addiu	sp,sp,-48
  10:	03a02821 	addu	a1,sp,zero
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
  14:	00001021 	addu	v0,zero,zero
{
  /* Notice that we need to declare our variables, and their type */

  int n = 10; // 50
  int a = 0;
  int b = 1;
  18:	24040001 	addiu	a0,zero,1
int main ()
{
  /* Notice that we need to declare our variables, and their type */

  int n = 10; // 50
  int a = 0;
  1c:	00001821 	addu	v1,zero,zero
  
  volatile int sum[n];
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
  20:	0800000b 	j	2c <main+0x2c>
  24:	2407000a 	addiu	a3,zero,10
    {							 
        sum[i] = a + b;
        a = b;
        b = sum[i];
  28:	00c02021 	addu	a0,a2,zero
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
    {							 
        sum[i] = a + b;
  2c:	00833021 	addu	a2,a0,v1
  30:	00021880 	sll	v1,v0,0x2
  34:	00a31821 	addu	v1,a1,v1
  38:	ac660000 	sw	a2,0(v1)
        a = b;
        b = sum[i];
  3c:	8c660000 	lw	a2,0(v1)
  
  volatile int sum[n];
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
  40:	24420001 	addiu	v0,v0,1
  44:	1447fff8 	bne	v0,a3,28 <main+0x28>
  48:	00801821 	addu	v1,a0,zero
  4c:	3c040000 	lui	a0,0x0
  50:	24840000 	addiu	a0,a0,0
  54:	00001021 	addu	v0,zero,zero
  58:	00001821 	addu	v1,zero,zero
        sum[i] = a + b;
        a = b;
        b = sum[i];
    }
    
    for (i = 0; i < 10; i++){
  5c:	2408000a 	addiu	t0,zero,10
        main_result += (output[i] != sum[i]);
  60:	00033080 	sll	a2,v1,0x2
  64:	00a63021 	addu	a2,a1,a2
  68:	8cc60000 	lw	a2,0(a2)
  6c:	8c870000 	lw	a3,0(a0)
  70:	00000000 	sll	zero,zero,0x0
  74:	00e63026 	xor	a2,a3,a2
  78:	0006302b 	sltu	a2,zero,a2
  7c:	00461021 	addu	v0,v0,a2
        sum[i] = a + b;
        a = b;
        b = sum[i];
    }
    
    for (i = 0; i < 10; i++){
  80:	24630001 	addiu	v1,v1,1
  84:	1468fff6 	bne	v1,t0,60 <main+0x60>
  88:	24840004 	addiu	a0,a0,4
        main_result += (output[i] != sum[i]);
    }
        //printf ("%d\n", main_result);
    
  return main_result;
}
  8c:	03c0e821 	addu	sp,s8,zero
  90:	8fbe0014 	lw	s8,20(sp)
  94:	03e00008 	jr	ra
  98:	27bd0018 	addiu	sp,sp,24

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
