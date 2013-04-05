
bubble.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
#include <stdio.h>

const int output[5] = {2, 4, 8, 9, 15};

int main()
{
   0:	27bdffe8 	addiu	sp,sp,-24
  int n = 5;
  int i, c, d, sum, swap;
  int main_result = 0;
  int array[5] = {9, 8, 15, 4, 2};
   4:	24020009 	addiu	v0,zero,9
   8:	afa20000 	sw	v0,0(sp)
   c:	24020008 	addiu	v0,zero,8
  10:	afa20004 	sw	v0,4(sp)
  14:	2402000f 	addiu	v0,zero,15
  18:	afa20008 	sw	v0,8(sp)
  1c:	24020004 	addiu	v0,zero,4
  20:	afa2000c 	sw	v0,12(sp)
  24:	24020002 	addiu	v0,zero,2
  28:	afa20010 	sw	v0,16(sp)
  2c:	24060004 	addiu	a2,zero,4
#include <stdio.h>

const int output[5] = {2, 4, 8, 9, 15};

int main()
{
  30:	00001821 	addu	v1,zero,zero
  int main_result = 0;
  int array[5] = {9, 8, 15, 4, 2};

    for (c = 0 ; c < ( n - 1 ); c++)
      {
        for (d = 0 ; d < n - c - 1; d++)
  34:	0066202a 	slt	a0,v1,a2
  38:	1080000c 	beqz	a0,6c <main+0x6c>
  3c:	03a01021 	addu	v0,sp,zero
        {
          if (array[d] > array[d+1]) /* For decreasing order use < */
  40:	8c440000 	lw	a0,0(v0)
  44:	8c450004 	lw	a1,4(v0)
  48:	00000000 	sll	zero,zero,0x0
  4c:	00a4382a 	slt	a3,a1,a0
  50:	10e00003 	beqz	a3,60 <main+0x60>
  54:	24630001 	addiu	v1,v1,1
          {
            swap       = array[d];
            array[d]   = array[d+1];
  58:	ac450000 	sw	a1,0(v0)
            array[d+1] = swap;
  5c:	ac440004 	sw	a0,4(v0)
  int main_result = 0;
  int array[5] = {9, 8, 15, 4, 2};

    for (c = 0 ; c < ( n - 1 ); c++)
      {
        for (d = 0 ; d < n - c - 1; d++)
  60:	0066202a 	slt	a0,v1,a2
  64:	1480fff6 	bnez	a0,40 <main+0x40>
  68:	24420004 	addiu	v0,v0,4
  6c:	24c6ffff 	addiu	a2,a2,-1
  int n = 5;
  int i, c, d, sum, swap;
  int main_result = 0;
  int array[5] = {9, 8, 15, 4, 2};

    for (c = 0 ; c < ( n - 1 ); c++)
  70:	14c0fff0 	bnez	a2,34 <main+0x34>
  74:	00001821 	addu	v1,zero,zero
  78:	3c070000 	lui	a3,0x0
  7c:	00001021 	addu	v0,zero,zero
  80:	24e70000 	addiu	a3,a3,0
            array[d+1] = swap;
          }
        }
      }

    for (i = 0; i < 5; i++){
  84:	24060014 	addiu	a2,zero,20
 
#include <stdio.h>

const int output[5] = {2, 4, 8, 9, 15};

int main()
  88:	00e32821 	addu	a1,a3,v1
  8c:	03a32021 	addu	a0,sp,v1
          }
        }
      }

    for (i = 0; i < 5; i++){
        main_result += (output[i] != array[i]);
  90:	8ca50000 	lw	a1,0(a1)
  94:	8c840000 	lw	a0,0(a0)
  98:	24630004 	addiu	v1,v1,4
  9c:	00a42026 	xor	a0,a1,a0
  a0:	0004202b 	sltu	a0,zero,a0
            array[d+1] = swap;
          }
        }
      }

    for (i = 0; i < 5; i++){
  a4:	1466fff8 	bne	v1,a2,88 <main+0x88>
  a8:	00441021 	addu	v0,v0,a0
        main_result += (output[i] != array[i]);
    }
        //printf ("%d\n", main_result);

  return main_result;
}
  ac:	03e00008 	jr	ra
  b0:	27bd0018 	addiu	sp,sp,24

Disassembly of section .rodata:

00000000 <output>:
   0:	00000002 	srl	zero,zero,0x0
   4:	00000004 	sllv	zero,zero,zero
   8:	00000008 	jr	zero
   c:	00000009 	jalr	zero,zero
  10:	0000000f 	0xf
