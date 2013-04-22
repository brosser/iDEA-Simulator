
crc8.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
#include <stdio.h>

const unsigned char CRC7_POLY = 0x91;
 
int main ()
{
   0:	27bdffe0 	addiu	sp,sp,-32
    unsigned int length = 2;
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
   4:	2402ff83 	addiu	v0,zero,-125
   8:	a3a20010 	sb	v0,16(sp)
   c:	24020001 	addiu	v0,zero,1
  10:	a3a20011 	sb	v0,17(sp)
#include <stdio.h>

const unsigned char CRC7_POLY = 0x91;
 
int main ()
{
  14:	afbf001c 	sw	ra,28(sp)
    unsigned int length = 2;
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
  18:	a3a00012 	sb	zero,18(sp)
  1c:	27a40011 	addiu	a0,sp,17

#include <stdio.h>

const unsigned char CRC7_POLY = 0x91;
 
int main ()
  20:	27a50012 	addiu	a1,sp,18
  24:	24020083 	addiu	v0,zero,131
{
    unsigned int length = 2;
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
    unsigned char crc = 0x0;
  28:	00003021 	addu	a2,zero,zero
 
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
  2c:	00c23026 	xor	a2,a2,v0
  30:	24020008 	addiu	v0,zero,8
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
  34:	30c30001 	andi	v1,a2,0x1
  38:	10600002 	beqz	v1,44 <main+0x44>
  3c:	2442ffff 	addiu	v0,v0,-1
                    crc ^= CRC7_POLY;
  40:	38c60091 	xori	a2,a2,0x91
    unsigned char crc = 0x0;
 
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
  44:	1440fffb 	bnez	v0,34 <main+0x34>
  48:	00063042 	srl	a2,a2,0x1
    unsigned int length = 2;
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
    unsigned char crc = 0x0;
 
    for (i = 0; i < length; i++)
  4c:	10850004 	beq	a0,a1,60 <main+0x60>
  50:	00000000 	sll	zero,zero,0x0
  54:	90820000 	lbu	v0,0(a0)
  58:	0800000b 	j	2c <main+0x2c>
  5c:	24840001 	addiu	a0,a0,1
                if (crc & 1)
                    crc ^= CRC7_POLY;
                crc >>= 1;
            }
    }
    printf("%d %x h\n", i, crc);
  60:	3c040000 	lui	a0,0x0
  64:	24840000 	addiu	a0,a0,0
  68:	0c000000 	jal	0 <main>
  6c:	24050002 	addiu	a1,zero,2

return 0;
}
  70:	8fbf001c 	lw	ra,28(sp)
  74:	00001021 	addu	v0,zero,zero
  78:	03e00008 	jr	ra
  7c:	27bd0020 	addiu	sp,sp,32
