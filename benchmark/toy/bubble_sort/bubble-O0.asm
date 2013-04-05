
bubble.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
#include <stdio.h>

const int output[5] = {2, 4, 8, 9, 15};

int main()
{
   0:	27bdffc8 	addiu	sp,sp,-56
   4:	afbe0034 	sw	s8,52(sp)
   8:	03a0f021 	addu	s8,sp,zero
  int n = 5;
   c:	24020005 	addiu	v0,zero,5
  10:	afc20010 	sw	v0,16(s8)
  int i, c, d, sum, swap;
  int main_result = 0;
  14:	afc0000c 	sw	zero,12(s8)
  int array[5] = {9, 8, 15, 4, 2};
  18:	24020009 	addiu	v0,zero,9
  1c:	afc20018 	sw	v0,24(s8)
  20:	24020008 	addiu	v0,zero,8
  24:	afc2001c 	sw	v0,28(s8)
  28:	2402000f 	addiu	v0,zero,15
  2c:	afc20020 	sw	v0,32(s8)
  30:	24020004 	addiu	v0,zero,4
  34:	afc20024 	sw	v0,36(s8)
  38:	24020002 	addiu	v0,zero,2
  3c:	afc20028 	sw	v0,40(s8)

    for (c = 0 ; c < ( n - 1 ); c++)
  40:	afc00004 	sw	zero,4(s8)
  44:	08000051 	j	144 <main+0x144>
  48:	00000000 	sll	zero,zero,0x0
      {
        for (d = 0 ; d < n - c - 1; d++)
  4c:	afc00008 	sw	zero,8(s8)
  50:	08000043 	j	10c <main+0x10c>
  54:	00000000 	sll	zero,zero,0x0
        {
          if (array[d] > array[d+1]) /* For decreasing order use < */
  58:	8fc20008 	lw	v0,8(s8)
  5c:	00000000 	sll	zero,zero,0x0
  60:	00021080 	sll	v0,v0,0x2
  64:	03c21021 	addu	v0,s8,v0
  68:	8c430018 	lw	v1,24(v0)
  6c:	8fc20008 	lw	v0,8(s8)
  70:	00000000 	sll	zero,zero,0x0
  74:	24420001 	addiu	v0,v0,1
  78:	00021080 	sll	v0,v0,0x2
  7c:	03c21021 	addu	v0,s8,v0
  80:	8c420018 	lw	v0,24(v0)
  84:	00000000 	sll	zero,zero,0x0
  88:	0043102a 	slt	v0,v0,v1
  8c:	1040001b 	beqz	v0,fc <main+0xfc>
  90:	00000000 	sll	zero,zero,0x0
          {
            swap       = array[d];
  94:	8fc20008 	lw	v0,8(s8)
  98:	00000000 	sll	zero,zero,0x0
  9c:	00021080 	sll	v0,v0,0x2
  a0:	03c21021 	addu	v0,s8,v0
  a4:	8c420018 	lw	v0,24(v0)
  a8:	00000000 	sll	zero,zero,0x0
  ac:	afc20014 	sw	v0,20(s8)
            array[d]   = array[d+1];
  b0:	8fc20008 	lw	v0,8(s8)
  b4:	00000000 	sll	zero,zero,0x0
  b8:	24420001 	addiu	v0,v0,1
  bc:	00021080 	sll	v0,v0,0x2
  c0:	03c21021 	addu	v0,s8,v0
  c4:	8c430018 	lw	v1,24(v0)
  c8:	8fc20008 	lw	v0,8(s8)
  cc:	00000000 	sll	zero,zero,0x0
  d0:	00021080 	sll	v0,v0,0x2
  d4:	03c21021 	addu	v0,s8,v0
  d8:	ac430018 	sw	v1,24(v0)
            array[d+1] = swap;
  dc:	8fc20008 	lw	v0,8(s8)
  e0:	00000000 	sll	zero,zero,0x0
  e4:	24420001 	addiu	v0,v0,1
  e8:	00021080 	sll	v0,v0,0x2
  ec:	03c21021 	addu	v0,s8,v0
  f0:	8fc30014 	lw	v1,20(s8)
  f4:	00000000 	sll	zero,zero,0x0
  f8:	ac430018 	sw	v1,24(v0)
  int main_result = 0;
  int array[5] = {9, 8, 15, 4, 2};

    for (c = 0 ; c < ( n - 1 ); c++)
      {
        for (d = 0 ; d < n - c - 1; d++)
  fc:	8fc20008 	lw	v0,8(s8)
 100:	00000000 	sll	zero,zero,0x0
 104:	24420001 	addiu	v0,v0,1
 108:	afc20008 	sw	v0,8(s8)
 10c:	8fc30010 	lw	v1,16(s8)
 110:	8fc20004 	lw	v0,4(s8)
 114:	00000000 	sll	zero,zero,0x0
 118:	00621023 	subu	v0,v1,v0
 11c:	2443ffff 	addiu	v1,v0,-1
 120:	8fc20008 	lw	v0,8(s8)
 124:	00000000 	sll	zero,zero,0x0
 128:	0043102a 	slt	v0,v0,v1
 12c:	1440ffca 	bnez	v0,58 <main+0x58>
 130:	00000000 	sll	zero,zero,0x0
  int n = 5;
  int i, c, d, sum, swap;
  int main_result = 0;
  int array[5] = {9, 8, 15, 4, 2};

    for (c = 0 ; c < ( n - 1 ); c++)
 134:	8fc20004 	lw	v0,4(s8)
 138:	00000000 	sll	zero,zero,0x0
 13c:	24420001 	addiu	v0,v0,1
 140:	afc20004 	sw	v0,4(s8)
 144:	8fc20010 	lw	v0,16(s8)
 148:	00000000 	sll	zero,zero,0x0
 14c:	2443ffff 	addiu	v1,v0,-1
 150:	8fc20004 	lw	v0,4(s8)
 154:	00000000 	sll	zero,zero,0x0
 158:	0043102a 	slt	v0,v0,v1
 15c:	1440ffbb 	bnez	v0,4c <main+0x4c>
 160:	00000000 	sll	zero,zero,0x0
            array[d+1] = swap;
          }
        }
      }

    for (i = 0; i < 5; i++){
 164:	afc00000 	sw	zero,0(s8)
 168:	08000073 	j	1cc <main+0x1cc>
 16c:	00000000 	sll	zero,zero,0x0
        main_result += (output[i] != array[i]);
 170:	3c020000 	lui	v0,0x0
 174:	8fc30000 	lw	v1,0(s8)
 178:	00000000 	sll	zero,zero,0x0
 17c:	00031880 	sll	v1,v1,0x2
 180:	24420000 	addiu	v0,v0,0
 184:	00621021 	addu	v0,v1,v0
 188:	8c430000 	lw	v1,0(v0)
 18c:	8fc20000 	lw	v0,0(s8)
 190:	00000000 	sll	zero,zero,0x0
 194:	00021080 	sll	v0,v0,0x2
 198:	03c21021 	addu	v0,s8,v0
 19c:	8c420018 	lw	v0,24(v0)
 1a0:	00000000 	sll	zero,zero,0x0
 1a4:	00621026 	xor	v0,v1,v0
 1a8:	0002102b 	sltu	v0,zero,v0
 1ac:	8fc3000c 	lw	v1,12(s8)
 1b0:	00000000 	sll	zero,zero,0x0
 1b4:	00621021 	addu	v0,v1,v0
 1b8:	afc2000c 	sw	v0,12(s8)
            array[d+1] = swap;
          }
        }
      }

    for (i = 0; i < 5; i++){
 1bc:	8fc20000 	lw	v0,0(s8)
 1c0:	00000000 	sll	zero,zero,0x0
 1c4:	24420001 	addiu	v0,v0,1
 1c8:	afc20000 	sw	v0,0(s8)
 1cc:	8fc20000 	lw	v0,0(s8)
 1d0:	00000000 	sll	zero,zero,0x0
 1d4:	28420005 	slti	v0,v0,5
 1d8:	1440ffe5 	bnez	v0,170 <main+0x170>
 1dc:	00000000 	sll	zero,zero,0x0
        main_result += (output[i] != array[i]);
    }
        //printf ("%d\n", main_result);

  return main_result;
 1e0:	8fc2000c 	lw	v0,12(s8)
}
 1e4:	03c0e821 	addu	sp,s8,zero
 1e8:	8fbe0034 	lw	s8,52(sp)
 1ec:	27bd0038 	addiu	sp,sp,56
 1f0:	03e00008 	jr	ra
 1f4:	00000000 	sll	zero,zero,0x0

Disassembly of section .rodata:

00000000 <output>:
   0:	00000002 	srl	zero,zero,0x0
   4:	00000004 	sllv	zero,zero,zero
   8:	00000008 	jr	zero
   c:	00000009 	jalr	zero,zero
  10:	0000000f 	0xf
