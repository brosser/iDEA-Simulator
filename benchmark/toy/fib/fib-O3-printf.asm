
fib.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
 * program.
 */
const int output[10] = { 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 };

int main ()
{
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbf0014 	sw	ra,20(sp)
   8:	afbe0010 	sw	s8,16(sp)
   c:	03a0f021 	move	s8,sp
  /* Notice that we need to declare our variables, and their type */

  int n = 10; // 50
  int a = 0;
  int b = 1;
  int sum[n];
  10:	27bdffd0 	addiu	sp,sp,-48
  14:	27a20010 	addiu	v0,sp,16
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
    {							 
        sum[i] = a + b;
  18:	24030001 	li	v1,1
  1c:	ac430000 	sw	v1,0(v0)
  20:	24030002 	li	v1,2
  24:	ac430004 	sw	v1,4(v0)
  28:	24030003 	li	v1,3
  2c:	ac430008 	sw	v1,8(v0)
  30:	24030005 	li	v1,5
  34:	ac43000c 	sw	v1,12(v0)
  38:	24030008 	li	v1,8
  3c:	ac430010 	sw	v1,16(v0)
  40:	2403000d 	li	v1,13
  44:	ac430014 	sw	v1,20(v0)
  48:	24030015 	li	v1,21
  4c:	ac430018 	sw	v1,24(v0)
  50:	24030022 	li	v1,34
  54:	ac43001c 	sw	v1,28(v0)
    }
    
    for (i = 0; i < 10; i++){
        main_result += (output[i] != sum[i]);
    }
        printf ("%d\n", main_result);
  58:	3c040000 	lui	a0,0x0
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
    {							 
        sum[i] = a + b;
  5c:	24030037 	li	v1,55
    }
    
    for (i = 0; i < 10; i++){
        main_result += (output[i] != sum[i]);
    }
        printf ("%d\n", main_result);
  60:	24840000 	addiu	a0,a0,0
  64:	00002821 	move	a1,zero
  68:	0c000000 	jal	0 <main>
  6c:	ac430020 	sw	v1,32(v0)
    
  return main_result;
}
  70:	03c0e821 	move	sp,s8
  74:	8fbf0014 	lw	ra,20(sp)
  78:	00001021 	move	v0,zero
  7c:	8fbe0010 	lw	s8,16(sp)
  80:	03e00008 	jr	ra
  84:	27bd0018 	addiu	sp,sp,24
