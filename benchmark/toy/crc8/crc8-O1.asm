
crc8.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
#include <stdio.h>

const unsigned char CRC7_POLY = 0x91;
 
int main ()
{
   0:	27bdffe0 	addiu	sp,sp,-32
   4:	afbf001c 	sw	ra,28(sp)
    unsigned int length = 2;
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
   8:	2402ff83 	addiu	v0,zero,-125
   c:	a3a20010 	sb	v0,16(sp)
  10:	24020001 	addiu	v0,zero,1
  14:	a3a20011 	sb	v0,17(sp)
  18:	a3a00012 	sb	zero,18(sp)
  1c:	27a40010 	addiu	a0,sp,16

#include <stdio.h>

const unsigned char CRC7_POLY = 0x91;
 
int main ()
  20:	27a50012 	addiu	a1,sp,18
{
    unsigned int length = 2;
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
    unsigned char crc = 0x0;
  24:	00003021 	addu	a2,zero,zero
 
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
  28:	90820000 	lbu	v0,0(a0)
  2c:	00000000 	sll	zero,zero,0x0
  30:	00c23026 	xor	a2,a2,v0
  34:	24020008 	addiu	v0,zero,8
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
  38:	30c30001 	andi	v1,a2,0x1
  3c:	10600002 	beqz	v1,48 <main+0x48>
  40:	00000000 	sll	zero,zero,0x0
                    crc ^= CRC7_POLY;
  44:	38c60091 	xori	a2,a2,0x91
                crc >>= 1;
  48:	2442ffff 	addiu	v0,v0,-1
    unsigned char crc = 0x0;
 
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
  4c:	1440fffa 	bnez	v0,38 <main+0x38>
  50:	00063042 	srl	a2,a2,0x1
  54:	24840001 	addiu	a0,a0,1
    unsigned int length = 2;
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
    unsigned char crc = 0x0;
 
    for (i = 0; i < length; i++)
  58:	1485fff3 	bne	a0,a1,28 <main+0x28>
  5c:	00000000 	sll	zero,zero,0x0
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
  70:	00001021 	addu	v0,zero,zero
  74:	8fbf001c 	lw	ra,28(sp)
  78:	00000000 	sll	zero,zero,0x0
  7c:	03e00008 	jr	ra
  80:	27bd0020 	addiu	sp,sp,32
