
crc8int.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
// Conversion algorithms: http://archive.online-convert.com/

//#include <stdio.h>
 
int main ()
{
   0:	27bdfee0 	addiu	sp,sp,-288
   4:	afbf011c 	sw	ra,284(sp)
   8:	afbe0118 	sw	s8,280(sp)
   c:	03a0f021 	addu	s8,sp,zero
	long CRC7_POLY = 0x91;
  10:	24020091 	addiu	v0,zero,145
  14:	afc2001c 	sw	v0,28(s8)
    long length = 50;
  18:	24020032 	addiu	v0,zero,250
  1c:	afc20020 	sw	v0,32(s8)
    long i, j;
    long message[61] = {0x83, 0x01, 0x00, 0x25, 0x23, 0xff, 0x01, 0xa0, 0xca, 0x20,
  20:	3c020000 	lui	v0,0x0
  24:	27c40024 	addiu	a0,s8,36
  28:	24430000 	addiu	v1,v0,0
  2c:	240200f4 	addiu	v0,zero,244
  30:	00602821 	addu	a1,v1,zero
  34:	00403021 	addu	a2,v0,zero
  3c:	00000000 	sll	zero,zero,0x0
	0x15, 0x00, 0x17, 0x45, 0x2f, 0x65, 0x42, 0x12, 0x93, 0xa4,
	0x52, 0x23, 0x90, 0xa6, 0x1f, 0x66, 0xbc, 0x04, 0x33, 0xd6,
	0xa4, 0x42, 0x15, 0x05, 0x3f, 0xd0, 0x9c, 0x02, 0x43, 0x9c,
	0xa2, 0x00, 0x00, 0x30, 0x74, 0xa1, 0xbb, 0x15, 0x75, 0x1a, 0x01};
	
    long crc = 0x0;
  40:	afc00018 	sw	zero,24(s8)
 
START_CCORE

    for (i = 0; i < length; i++)
  44:	afc00010 	sw	zero,16(s8)
  48:	0800003d 	j	f4 <main+0xf4>
  4c:	00000000 	sll	zero,zero,0x0
    {
        crc ^= message[i];
  50:	8fc20010 	lw	v0,16(s8)
  54:	00000000 	sll	zero,zero,0x0
  58:	00021080 	sll	v0,v0,0x2
  5c:	27c30010 	addiu	v1,s8,16
  60:	00621021 	addu	v0,v1,v0
  64:	8c420014 	lw	v0,20(v0)
  68:	8fc30018 	lw	v1,24(s8)
  6c:	00000000 	sll	zero,zero,0x0
  70:	00621026 	xor	v0,v1,v0
  74:	afc20018 	sw	v0,24(s8)
            for (j = 0; j < 8; j++)
  78:	afc00014 	sw	zero,20(s8)
  7c:	08000034 	j	d0 <main+0xd0>
  80:	00000000 	sll	zero,zero,0x0
            {
                if (crc & 1)
  84:	8fc20018 	lw	v0,24(s8)
  88:	00000000 	sll	zero,zero,0x0
  8c:	30420001 	andi	v0,v0,0x1
  90:	304200ff 	andi	v0,v0,0xff
  94:	10400006 	beqz	v0,b0 <main+0xb0>
  98:	00000000 	sll	zero,zero,0x0
                    crc ^= CRC7_POLY;
  9c:	8fc30018 	lw	v1,24(s8)
  a0:	8fc2001c 	lw	v0,28(s8)
  a4:	00000000 	sll	zero,zero,0x0
  a8:	00621026 	xor	v0,v1,v0
  ac:	afc20018 	sw	v0,24(s8)
                crc >>= 1;
  b0:	8fc20018 	lw	v0,24(s8)
  b4:	00000000 	sll	zero,zero,0x0
  b8:	00021043 	sra	v0,v0,0x1
  bc:	afc20018 	sw	v0,24(s8)
    long crc = 0x0;
 
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
  c0:	8fc20014 	lw	v0,20(s8)
  c4:	00000000 	sll	zero,zero,0x0
  c8:	24420001 	addiu	v0,v0,1
  cc:	afc20014 	sw	v0,20(s8)
  d0:	8fc20014 	lw	v0,20(s8)
  d4:	00000000 	sll	zero,zero,0x0
  d8:	28420008 	slti	v0,v0,8
  dc:	1440ffe9 	bnez	v0,84 <main+0x84>
  e0:	00000000 	sll	zero,zero,0x0
	0xa4, 0x42, 0x15, 0x05, 0x3f, 0xd0, 0x9c, 0x02, 0x43, 0x9c,
	0xa2, 0x00, 0x00, 0x30, 0x74, 0xa1, 0xbb, 0x15, 0x75, 0x1a, 0x01};
	
    long crc = 0x0;
 
    for (i = 0; i < length; i++)
  e4:	8fc20010 	lw	v0,16(s8)
  e8:	00000000 	sll	zero,zero,0x0
  ec:	24420001 	addiu	v0,v0,1
  f0:	afc20010 	sw	v0,16(s8)
  f4:	8fc30010 	lw	v1,16(s8)
  f8:	8fc20020 	lw	v0,32(s8)
  fc:	00000000 	sll	zero,zero,0x0
 100:	0062102a 	slt	v0,v1,v0
 104:	1440ffd2 	bnez	v0,50 <main+0x50>
 108:	00000000 	sll	zero,zero,0x0
            }
    }
    
	//printf("%d %x h\n", i, crc);

	return 0;
 10c:	00001021 	addu	v0,zero,zero
}

END_CCORE

 110:	03c0e821 	addu	sp,s8,zero
 114:	8fbf011c 	lw	ra,284(sp)
 118:	8fbe0118 	lw	s8,280(sp)
 11c:	27bd0120 	addiu	sp,sp,288
 120:	03e00008 	jr	ra
 124:	00000000 	sll	zero,zero,0x0

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
