
crc8int.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
// Conversion algorithms: http://archive.online-convert.com/

//#include <stdio.h>
 
int main ()
{
   0:	27bdff08 	addiu	sp,sp,-248
	long CRC7_POLY = 0x91;
    long length = 50;
    long i, j;
    long message[61] = {0x83, 0x01, 0x00, 0x25, 0x23, 0xff, 0x01, 0xa0, 0xca, 0x20,
   4:	3c020000 	lui	v0,0x0
   8:	24420000 	addiu	v0,v0,0
   c:	03a01821 	addu	v1,sp,zero
  10:	244400f0 	addiu	a0,v0,240
  14:	8c480000 	lw	t0,0(v0)
  18:	8c470004 	lw	a3,4(v0)
  1c:	8c460008 	lw	a2,8(v0)
  20:	8c45000c 	lw	a1,12(v0)
  24:	ac680000 	sw	t0,0(v1)
  28:	ac670004 	sw	a3,4(v1)
  2c:	ac660008 	sw	a2,8(v1)
  30:	ac65000c 	sw	a1,12(v1)
  34:	24420010 	addiu	v0,v0,16
  38:	1444fff6 	bne	v0,a0,14 <main+0x14>
  3c:	24630010 	addiu	v1,v1,16
  40:	8c420000 	lw	v0,0(v0)
  44:	00000000 	sll	zero,zero,0x0
  48:	ac620000 	sw	v0,0(v1)
  4c:	03a02821 	addu	a1,sp,zero
// CRC calculator: http://ghsi.de/CRC/index.php?Polynom=10010001&Message=01+83
// Conversion algorithms: http://archive.online-convert.com/

//#include <stdio.h>
 
int main ()
  50:	27a600c8 	addiu	a2,sp,200
	0x15, 0x00, 0x17, 0x45, 0x2f, 0x65, 0x42, 0x12, 0x93, 0xa4,
	0x52, 0x23, 0x90, 0xa6, 0x1f, 0x66, 0xbc, 0x04, 0x33, 0xd6,
	0xa4, 0x42, 0x15, 0x05, 0x3f, 0xd0, 0x9c, 0x02, 0x43, 0x9c,
	0xa2, 0x00, 0x00, 0x30, 0x74, 0xa1, 0xbb, 0x15, 0x75, 0x1a, 0x01};
	
    long crc = 0x0;
  54:	00001021 	addu	v0,zero,zero
 
START_CCORE

    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
  58:	8ca30000 	lw	v1,0(a1)
  5c:	00000000 	sll	zero,zero,0x0
  60:	00431026 	xor	v0,v0,v1
  64:	24030008 	addiu	v1,zero,8
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
  68:	30440001 	andi	a0,v0,0x1
  6c:	10800002 	beqz	a0,78 <main+0x78>
  70:	00000000 	sll	zero,zero,0x0
                    crc ^= CRC7_POLY;
  74:	38420091 	xori	v0,v0,0x91
                crc >>= 1;
  78:	2463ffff 	addiu	v1,v1,-1
    long crc = 0x0;
 
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
  7c:	1460fffa 	bnez	v1,68 <main+0x68>
  80:	00021043 	sra	v0,v0,0x1
  84:	24a50004 	addiu	a1,a1,4
	0xa4, 0x42, 0x15, 0x05, 0x3f, 0xd0, 0x9c, 0x02, 0x43, 0x9c,
	0xa2, 0x00, 0x00, 0x30, 0x74, 0xa1, 0xbb, 0x15, 0x75, 0x1a, 0x01};
	
    long crc = 0x0;
 
    for (i = 0; i < length; i++)
  88:	14a6fff3 	bne	a1,a2,58 <main+0x58>
  8c:	00000000 	sll	zero,zero,0x0

END_CCORE

    }
    
	//printf("%d %x h\n", i, crc);

	return 0;
}
  90:	00001021 	addu	v0,zero,zero
  94:	03e00008 	jr	ra
  98:	27bd00f8 	addiu	sp,sp,248

Disassembly of section .rodata:

00000000 <C.0.1987>:
   0:	00000083 	sra	zero,zero,0x2
   4:	00000001 	0x1
   8:	00000000 	sll	zero,zero,0x0
   c:	00000025 	or	zero,zero,zero
  10:	00000023 	negu	zero,zero
  14:	000000ff 	0xff
  18:	00000001 	0x1
  1c:	000000a0 	0xa0
  20:	000000ca 	0xca
  24:	00000020 	add	zero,zero,zero
  28:	00000028 	0x28
  2c:	00000015 	0x15
  30:	00000097 	0x97
  34:	00000031 	0x31
  38:	000000af 	0xaf
  3c:	00000099 	0x99
  40:	0000001f 	0x1f
  44:	00000042 	srl	zero,zero,0x1
  48:	00000053 	0x53
  4c:	00000023 	negu	zero,zero
  50:	00000015 	0x15
  54:	00000000 	sll	zero,zero,0x0
  58:	00000017 	0x17
  5c:	00000045 	0x45
  60:	0000002f 	0x2f
  64:	00000065 	0x65
  68:	00000042 	srl	zero,zero,0x1
  6c:	00000012 	mflo	zero
  70:	00000093 	0x93
  74:	000000a4 	0xa4
  78:	00000052 	0x52
  7c:	00000023 	negu	zero,zero
  80:	00000090 	0x90
  84:	000000a6 	0xa6
  88:	0000001f 	0x1f
  8c:	00000066 	0x66
  90:	000000bc 	0xbc
  94:	00000004 	sllv	zero,zero,zero
  98:	00000033 	0x33
  9c:	000000d6 	0xd6
  a0:	000000a4 	0xa4
  a4:	00000042 	srl	zero,zero,0x1
  a8:	00000015 	0x15
  ac:	00000005 	0x5
  b0:	0000003f 	0x3f
  b4:	000000d0 	0xd0
  b8:	0000009c 	0x9c
  bc:	00000002 	srl	zero,zero,0x0
  c0:	00000043 	sra	zero,zero,0x1
  c4:	0000009c 	0x9c
  c8:	000000a2 	0xa2
	...
  d4:	00000030 	0x30
  d8:	00000074 	0x74
  dc:	000000a1 	0xa1
  e0:	000000bb 	0xbb
  e4:	00000015 	0x15
  e8:	00000075 	0x75
  ec:	0000001a 	div	zero,zero,zero
  f0:	00000001 	0x1
