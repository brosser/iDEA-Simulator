
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
        main_result += (output[i] != sum[i]);
    }
        //printf ("%d\n", main_result);
    
  return main_result;
}
  10:	03c0e821 	move	sp,s8
  14:	00001021 	move	v0,zero
  18:	8fbe0014 	lw	s8,20(sp)
  1c:	03e00008 	jr	ra
  20:	27bd0018 	addiu	sp,sp,24
