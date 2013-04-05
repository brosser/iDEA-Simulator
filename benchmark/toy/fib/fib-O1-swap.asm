
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
   8:	03a0f021 	move	s8,sp
  /* Notice that we need to declare our variables, and their type */

  int n = 10; // 50
  int a = 0;
  int b = 1;
  int sum[n];
  c:	27bdffd0 	addiu	sp,sp,-48
  10:	03a02821 	move	a1,sp
  14:	00001021 	move	v0,zero
{
  /* Notice that we need to declare our variables, and their type */

  int n = 10; // 50
  int a = 0;
  int b = 1;
  18:	24030001 	li	v1,1
int main ()
{
  /* Notice that we need to declare our variables, and their type */

  int n = 10; // 50
  int a = 0;
  1c:	00003021 	move	a2,zero
  int sum[n];
  int i;
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
  24: 24070028  li  a3,40
  20:	0800000c 	j	30 <main+0x30>
  28:	00603021 	move	a2,v1
    {							 
        sum[i] = a + b;
        a = b;
        b = sum[i];
  2c:	00801821 	move	v1,a0
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
    {							 
        sum[i] = a + b;
  30:	00662021 	addu	a0,v1,a2
 * an integer, and we return 0 to indicate successful completion of the 
 * program.
 */
const int output[10] = { 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 };

int main ()
  34:	00a23021 	addu	a2,a1,v0
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
    {							 
        sum[i] = a + b;
  38:	24420004 	addiu	v0,v0,4
  int sum[n];
  int i;
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
  40: acc40000  sw  a0,0(a2)
  3c:	1447fffa 	bne	v0,a3,28 <main+0x28>
  44:	00001821 	move	v1,zero
  48:	00001021 	move	v0,zero
 * an integer, and we return 0 to indicate successful completion of the 
 * program.
 */
const int output[10] = { 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 };

int main ()
  4c:	3c080000 	lui	t0,0x0
  50:	25080000 	addiu	t0,t0,0
        sum[i] = a + b;
        a = b;
        b = sum[i];
    }
    
    for (i = 0; i < 10; i++){
  54:	24070028 	li	a3,40
 * an integer, and we return 0 to indicate successful completion of the 
 * program.
 */
const int output[10] = { 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 };

int main ()
  58:	01033021 	addu	a2,t0,v1
  68: 00000000  nop
  68: 00000000  nop
  5c:	00a32021 	addu	a0,a1,v1
  68: 00000000  nop
  68: 00000000  nop
        a = b;
        b = sum[i];
    }
    
    for (i = 0; i < 10; i++){
        main_result += (output[i] != sum[i]);
  60:	8cc60000 	lw	a2,0(a2)
  68: 00000000  nop
  68: 00000000  nop
  64:	8c840000 	lw	a0,0(a0)
  68: 00000000  nop
  68:	00000000 	nop
  6c:	00c42026 	xor	a0,a2,a0
  68: 00000000  nop
  68: 00000000  nop
  70:	0004202b 	sltu	a0,zero,a0
  74:	24630004 	addiu	v1,v1,4
  68: 00000000  nop
  68: 00000000  nop
        sum[i] = a + b;
        a = b;
        b = sum[i];
    }
    
    for (i = 0; i < 10; i++){
  7c: 00441021  addu  v0,v0,a0
  68: 00000000  nop
  68: 00000000  nop
  78:	1467fff7 	bne	v1,a3,58 <main+0x58>
        main_result += (output[i] != sum[i]);
    }
        //printf ("%d\n", main_result);
    
  return main_result;
}
  80:	03c0e821 	move	sp,s8
  84:	8fbe0014 	lw	s8,20(sp)
  8c: 27bd0018  addiu sp,sp,24
  88:	03e00008 	jr	ra
  
Disassembly of section .rodata:

00000000 <output>:
   0: 00000001  0x1
   4: 00000002  srl zero,zero,0x0
   8: 00000003  sra zero,zero,0x0
   c: 00000005  0x5
  10: 00000008  jr  zero
  14: 0000000d  break
  18: 00000015  0x15
  1c: 00000022  neg zero,zero
  20: 00000037  0x37
  24: 00000059  0x59
