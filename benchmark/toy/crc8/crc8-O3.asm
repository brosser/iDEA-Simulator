
crc8.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
                    crc ^= CRC7_POLY;
   0:	24020068 	addiu	v0,zero,104
#include <stdio.h>

const unsigned char CRC7_POLY = 0x91;
 
int main ()
{
   4:	27bdffe0 	addiu	sp,sp,-32
    unsigned int length = 2;
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
   8:	24030001 	addiu	v1,zero,1
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
                    crc ^= CRC7_POLY;
                crc >>= 1;
   c:	00021042 	srl	v0,v0,0x1
 
int main ()
{
    unsigned int length = 2;
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
  10:	a3a30011 	sb	v1,17(sp)
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
                    crc ^= CRC7_POLY;
                crc >>= 1;
  14:	00021042 	srl	v0,v0,0x1
    unsigned char message[3] = {0x83, 0x01, 0x00};
    unsigned char crc = 0x0;
 
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
  18:	306300ff 	andi	v1,v1,0xff
  1c:	00431026 	xor	v0,v0,v1
 
int main ()
{
    unsigned int length = 2;
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
  20:	2404ff83 	addiu	a0,zero,-125
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
  24:	30430001 	andi	v1,v0,0x1
 
int main ()
{
    unsigned int length = 2;
    unsigned int i, j;
    unsigned char message[3] = {0x83, 0x01, 0x00};
  28:	a3a40010 	sb	a0,16(sp)
#include <stdio.h>

const unsigned char CRC7_POLY = 0x91;
 
int main ()
{
  2c:	afbf001c 	sw	ra,28(sp)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
                    crc ^= CRC7_POLY;
  30:	10600002 	beqz	v1,3c <main+0x3c>
  34:	38440091 	xori	a0,v0,0x91
  38:	00801021 	addu	v0,a0,zero
                crc >>= 1;
  3c:	00021042 	srl	v0,v0,0x1
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
  40:	30430001 	andi	v1,v0,0x1
                    crc ^= CRC7_POLY;
  44:	10600002 	beqz	v1,50 <main+0x50>
  48:	38440091 	xori	a0,v0,0x91
  4c:	00801021 	addu	v0,a0,zero
                crc >>= 1;
  50:	00021042 	srl	v0,v0,0x1
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
  54:	30430001 	andi	v1,v0,0x1
                    crc ^= CRC7_POLY;
  58:	10600002 	beqz	v1,64 <main+0x64>
  5c:	38440091 	xori	a0,v0,0x91
  60:	00801021 	addu	v0,a0,zero
                crc >>= 1;
  64:	00021042 	srl	v0,v0,0x1
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
  68:	30430001 	andi	v1,v0,0x1
                    crc ^= CRC7_POLY;
  6c:	10600002 	beqz	v1,78 <main+0x78>
  70:	38440091 	xori	a0,v0,0x91
  74:	00801021 	addu	v0,a0,zero
                crc >>= 1;
  78:	00021042 	srl	v0,v0,0x1
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
  7c:	30430001 	andi	v1,v0,0x1
                    crc ^= CRC7_POLY;
  80:	10600002 	beqz	v1,8c <main+0x8c>
  84:	38440091 	xori	a0,v0,0x91
  88:	00801021 	addu	v0,a0,zero
                crc >>= 1;
  8c:	00021042 	srl	v0,v0,0x1
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
  90:	30430001 	andi	v1,v0,0x1
                    crc ^= CRC7_POLY;
  94:	10600002 	beqz	v1,a0 <main+0xa0>
  98:	38460091 	xori	a2,v0,0x91
  9c:	00c01021 	addu	v0,a2,zero
                crc >>= 1;
  a0:	00021042 	srl	v0,v0,0x1
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
  a4:	30430001 	andi	v1,v0,0x1
                    crc ^= CRC7_POLY;
  a8:	10600002 	beqz	v1,b4 <main+0xb4>
  ac:	38460091 	xori	a2,v0,0x91
  b0:	00c01021 	addu	v0,a2,zero
                crc >>= 1;
  b4:	00023042 	srl	a2,v0,0x1
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
  b8:	30c20001 	andi	v0,a2,0x1
                    crc ^= CRC7_POLY;
  bc:	10400002 	beqz	v0,c8 <main+0xc8>
  c0:	38c30091 	xori	v1,a2,0x91
  c4:	00603021 	addu	a2,v1,zero
                crc >>= 1;
            }
    }
    printf("%d %x h\n", i, crc);
  c8:	3c040000 	lui	a0,0x0
  cc:	24840000 	addiu	a0,a0,0
  d0:	24050002 	addiu	a1,zero,2
  d4:	0c000000 	jal	0 <main>
  d8:	00063042 	srl	a2,a2,0x1

return 0;
}
  dc:	8fbf001c 	lw	ra,28(sp)
  e0:	00001021 	addu	v0,zero,zero
  e4:	03e00008 	jr	ra
  e8:	27bd0020 	addiu	sp,sp,32
