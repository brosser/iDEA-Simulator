
mips.o:     file format elf32-bigmips


Disassembly of section .rodata:

00000000 <imem-0x160>:
   0:	00000290 	0x290
   4:	00000600 	sll	zero,zero,0x18
   8:	000002b8 	0x2b8
   c:	00000600 	sll	zero,zero,0x18
  10:	000002e0 	0x2e0
  14:	00000600 	sll	zero,zero,0x18
  18:	00000314 	0x314
  1c:	00000600 	sll	zero,zero,0x18
  20:	000003b0 	0x3b0
  24:	00000600 	sll	zero,zero,0x18
  28:	00000600 	sll	zero,zero,0x18
  2c:	00000600 	sll	zero,zero,0x18
  30:	00000600 	sll	zero,zero,0x18
  34:	00000600 	sll	zero,zero,0x18
  38:	00000600 	sll	zero,zero,0x18
  3c:	00000600 	sll	zero,zero,0x18
  40:	000001cc 	syscall	0x7
  44:	00000600 	sll	zero,zero,0x18
  48:	000001e0 	0x1e0
  4c:	00000600 	sll	zero,zero,0x18
  50:	00000600 	sll	zero,zero,0x18
  54:	00000600 	sll	zero,zero,0x18
  58:	00000600 	sll	zero,zero,0x18
  5c:	00000600 	sll	zero,zero,0x18
  60:	0000016c 	0x16c
  64:	0000019c 	0x19c
  68:	00000600 	sll	zero,zero,0x18
  6c:	00000600 	sll	zero,zero,0x18
  70:	00000600 	sll	zero,zero,0x18
  74:	00000600 	sll	zero,zero,0x18
  78:	00000600 	sll	zero,zero,0x18
  7c:	00000600 	sll	zero,zero,0x18
  80:	00000600 	sll	zero,zero,0x18
  84:	00000104 	0x104
  88:	00000600 	sll	zero,zero,0x18
  8c:	00000138 	0x138
  90:	000001f4 	0x1f4
  94:	00000228 	0x228
  98:	0000025c 	0x25c
  9c:	00000600 	sll	zero,zero,0x18
  a0:	00000600 	sll	zero,zero,0x18
  a4:	00000600 	sll	zero,zero,0x18
  a8:	00000348 	0x348
  ac:	0000037c 	0x37c
  b0:	00000608 	0x608
  b4:	00000590 	0x590
  b8:	00000608 	0x608
  bc:	00000608 	0x608
  c0:	00000538 	0x538
  c4:	00000564 	0x564
  c8:	00000608 	0x608
  cc:	00000608 	0x608
  d0:	00000608 	0x608
  d4:	00000410 	0x410
  d8:	000005b0 	0x5b0
  dc:	000005d8 	0x5d8
  e0:	00000438 	0x438
  e4:	00000460 	0x460
  e8:	00000488 	0x488
  ec:	00000520 	0x520
  f0:	00000608 	0x608
  f4:	00000608 	0x608
  f8:	00000608 	0x608
  fc:	00000608 	0x608
 100:	00000608 	0x608
 104:	00000608 	0x608
 108:	00000608 	0x608
 10c:	00000608 	0x608
 110:	00000608 	0x608
 114:	00000608 	0x608
 118:	00000608 	0x608
 11c:	00000608 	0x608
 120:	00000608 	0x608
 124:	00000608 	0x608
 128:	00000608 	0x608
 12c:	00000608 	0x608
 130:	00000608 	0x608
 134:	00000608 	0x608
 138:	00000608 	0x608
 13c:	000004b0 	0x4b0
 140:	00000608 	0x608
 144:	00000608 	0x608
 148:	00000608 	0x608
 14c:	00000608 	0x608
 150:	00000608 	0x608
 154:	00000608 	0x608
 158:	00000608 	0x608
 15c:	000004e8 	0x4e8

00000160 <imem>:
 160:	8fa40000 	lw	a0,0(sp)
 164:	27a50004 	addiu	a1,sp,4
 168:	24a60004 	addiu	a2,a1,4
 16c:	00041080 	sll	v0,a0,0x2
 170:	00c23021 	addu	a2,a2,v0
 174:	0c100016 	jal	400058 <outData+0x3ffe28>
 178:	00000000 	nop
 17c:	3402000a 	li	v0,0xa
 180:	0000000c 	syscall
 184:	3c011001 	lui	at,0x1001
 188:	34280000 	ori	t0,at,0x0
 18c:	00044880 	sll	t1,a0,0x2
 190:	01094821 	addu	t1,t0,t1
 194:	8d2a0000 	lw	t2,0(t1)
 198:	00055880 	sll	t3,a1,0x2
 19c:	010b5821 	addu	t3,t0,t3
 1a0:	8d6c0000 	lw	t4,0(t3)
 1a4:	018a682a 	slt	t5,t4,t2
 1a8:	11a00003 	beqz	t5,1b8 <imem+0x58>
 1ac:	ad2c0000 	sw	t4,0(t1)
 1b0:	ad6a0000 	sw	t2,0(t3)
 1b4:	03e00008 	jr	ra
 1b8:	27bdfff4 	addiu	sp,sp,-12
 1bc:	afbf0008 	sw	ra,8(sp)
 1c0:	afb10004 	sw	s1,4(sp)
 1c4:	afb00000 	sw	s0,0(sp)
 1c8:	24100000 	li	s0,0
 1cc:	2a080008 	slti	t0,s0,8
 1d0:	1100000b 	beqz	t0,200 <imem+0xa0>
 1d4:	26110001 	addiu	s1,s0,1
 1d8:	2a280008 	slti	t0,s1,8
 1dc:	11000006 	beqz	t0,1f8 <imem+0x98>
 1e0:	26040000 	addiu	a0,s0,0
 1e4:	26250000 	addiu	a1,s1,0
 1e8:	0c100009 	jal	400024 <outData+0x3ffdf4>
 1ec:	26310001 	addiu	s1,s1,1
 1f0:	0810001e 	j	400078 <outData+0x3ffe48>
 1f4:	26100001 	addiu	s0,s0,1
 1f8:	0810001b 	j	40006c <outData+0x3ffe3c>
 1fc:	8fbf0008 	lw	ra,8(sp)
 200:	8fb10004 	lw	s1,4(sp)
 204:	8fb00000 	lw	s0,0(sp)
 208:	27bd000c 	addiu	sp,sp,12
 20c:	03e00008 	jr	ra

00000210 <A>:
 210:	00000016 	0x16
 214:	00000005 	0x5
 218:	fffffff7 	0xfffffff7
 21c:	00000003 	sra	zero,zero,0x0
 220:	ffffffef 	0xffffffef
 224:	00000026 	xor	zero,zero,zero
 228:	00000000 	nop
 22c:	0000000b 	0xb

00000230 <outData>:
 230:	ffffffef 	0xffffffef
 234:	fffffff7 	0xfffffff7
 238:	00000000 	nop
 23c:	00000003 	sra	zero,zero,0x0
 240:	00000005 	0x5
 244:	0000000b 	0xb
 248:	00000016 	0x16
 24c:	00000026 	xor	zero,zero,zero
