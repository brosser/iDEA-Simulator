
crc8.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
#include <stdio.h>

const unsigned char CRC7_POLY = 0x91;
 
int main ()
{
   0:	27bdffd0 	addiu	sp,sp,-48
   4:	afbf002c 	sw	ra,44(sp)
   8:	afbe0028 	sw	s8,40(sp)
   c:	03a0f021 	addu	s8,sp,zero
    unsigned int length = 2;
  10:	24020002 	addiu	v0,zero,2
  14:	afc2001c 	sw	v0,28(s8)
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
  18:	2402ff83 	addiu	v0,zero,-125
  1c:	a3c20020 	sb	v0,32(s8)
  20:	24020001 	addiu	v0,zero,1
  24:	a3c20021 	sb	v0,33(s8)
  28:	a3c00022 	sb	zero,34(s8)
    unsigned char crc = 0x0;
  2c:	a3c00018 	sb	zero,24(s8)
 
    for (i = 0; i < length; i++)
  30:	afc00010 	sw	zero,16(s8)
  34:	08000036 	j	d8 <main+0xd8>
  38:	00000000 	sll	zero,zero,0x0
    {
        crc ^= message[i];
  3c:	8fc20010 	lw	v0,16(s8)
  40:	27c30010 	addiu	v1,s8,16
  44:	00621021 	addu	v0,v1,v0
  48:	90430010 	lbu	v1,16(v0)
  4c:	93c20018 	lbu	v0,24(s8)
  50:	00000000 	sll	zero,zero,0x0
  54:	00621026 	xor	v0,v1,v0
  58:	a3c20018 	sb	v0,24(s8)
            for (j = 0; j < 8; j++)
  5c:	afc00014 	sw	zero,20(s8)
  60:	0800002d 	j	b4 <main+0xb4>
  64:	00000000 	sll	zero,zero,0x0
            {
                if (crc & 1)
  68:	93c20018 	lbu	v0,24(s8)
  6c:	00000000 	sll	zero,zero,0x0
  70:	30420001 	andi	v0,v0,0x1
  74:	304200ff 	andi	v0,v0,0xff
  78:	10400006 	beqz	v0,94 <main+0x94>
  7c:	00000000 	sll	zero,zero,0x0
                    crc ^= CRC7_POLY;
  80:	93830000 	lbu	v1,0(gp)
  84:	93c20018 	lbu	v0,24(s8)
  88:	00000000 	sll	zero,zero,0x0
  8c:	00621026 	xor	v0,v1,v0
  90:	a3c20018 	sb	v0,24(s8)
                crc >>= 1;
  94:	93c20018 	lbu	v0,24(s8)
  98:	00000000 	sll	zero,zero,0x0
  9c:	00021042 	srl	v0,v0,0x1
  a0:	a3c20018 	sb	v0,24(s8)
    unsigned char crc = 0x0;
 
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
  a4:	8fc20014 	lw	v0,20(s8)
  a8:	00000000 	sll	zero,zero,0x0
  ac:	24420001 	addiu	v0,v0,1
  b0:	afc20014 	sw	v0,20(s8)
  b4:	8fc20014 	lw	v0,20(s8)
  b8:	00000000 	sll	zero,zero,0x0
  bc:	2c420008 	sltiu	v0,v0,8
  c0:	1440ffe9 	bnez	v0,68 <main+0x68>
  c4:	00000000 	sll	zero,zero,0x0
    unsigned int length = 2;
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
    unsigned char crc = 0x0;
 
    for (i = 0; i < length; i++)
  c8:	8fc20010 	lw	v0,16(s8)
  cc:	00000000 	sll	zero,zero,0x0
  d0:	24420001 	addiu	v0,v0,1
  d4:	afc20010 	sw	v0,16(s8)
  d8:	8fc30010 	lw	v1,16(s8)
  dc:	8fc2001c 	lw	v0,28(s8)
  e0:	00000000 	sll	zero,zero,0x0
  e4:	0062102b 	sltu	v0,v1,v0
  e8:	1440ffd4 	bnez	v0,3c <main+0x3c>
  ec:	00000000 	sll	zero,zero,0x0
                if (crc & 1)
                    crc ^= CRC7_POLY;
                crc >>= 1;
            }
    }
    printf("%d %x h\n", i, crc);
  f0:	93c20018 	lbu	v0,24(s8)
  f4:	3c030000 	lui	v1,0x0
  f8:	24640000 	addiu	a0,v1,0
  fc:	8fc50010 	lw	a1,16(s8)
 100:	00403021 	addu	a2,v0,zero
 104:	0c000000 	jal	0 <main>
 108:	00000000 	sll	zero,zero,0x0

return 0;
 10c:	00001021 	addu	v0,zero,zero
}
 110:	03c0e821 	addu	sp,s8,zero
 114:	8fbf002c 	lw	ra,44(sp)
 118:	8fbe0028 	lw	s8,40(sp)
 11c:	27bd0030 	addiu	sp,sp,48
 120:	03e00008 	jr	ra
 124:	00000000 	sll	zero,zero,0x0

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	25642025 	addiu	a0,t3,8229
   4:	7820680a 	0x7820680a
   8:	00000000 	sll	zero,zero,0x0
