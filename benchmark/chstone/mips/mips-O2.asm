
mips.o:     file format elf32-bigmips


Disassembly of section .rodata:

00000000 <imem-0x160>:
   0:	000005f4 	0x5f4
   4:	000000f8 	0xf8
   8:	00000428 	0x428
   c:	000000f8 	0xf8
  10:	0000044c 	syscall	0x11
  14:	000000f8 	0xf8
  18:	0000047c 	0x47c
  1c:	000000f8 	0xf8
  20:	000003e4 	0x3e4
  24:	000000f8 	0xf8
  28:	000000f8 	0xf8
  2c:	000000f8 	0xf8
  30:	000000f8 	0xf8
  34:	000000f8 	0xf8
  38:	000000f8 	0xf8
  3c:	000000f8 	0xf8
  40:	000004dc 	0x4dc
  44:	000000f8 	0xf8
  48:	000004f0 	0x4f0
  4c:	000000f8 	0xf8
  50:	000000f8 	0xf8
  54:	000000f8 	0xf8
  58:	000000f8 	0xf8
  5c:	000000f8 	0xf8
  60:	000001ec 	0x1ec
  64:	000001ec 	0x1ec
  68:	000000f8 	0xf8
  6c:	000000f8 	0xf8
  70:	000000f8 	0xf8
  74:	000000f8 	0xf8
  78:	000000f8 	0xf8
  7c:	000000f8 	0xf8
  80:	000000f8 	0xf8
  84:	00000594 	0x594
  88:	000000f8 	0xf8
  8c:	00000534 	0x534
  90:	00000564 	0x564
  94:	000004ac 	0x4ac
  98:	000003f8 	0x3f8
  9c:	000000f8 	0xf8
  a0:	000000f8 	0xf8
  a4:	000000f8 	0xf8
  a8:	000005c4 	0x5c4
  ac:	00000504 	0x504
  b0:	000000f8 	0xf8
  b4:	0000024c 	syscall	0x9
  b8:	000000f8 	0xf8
  bc:	000000f8 	0xf8
  c0:	0000026c 	0x26c
  c4:	00000298 	0x298
  c8:	000000f8 	0xf8
  cc:	000000f8 	0xf8
  d0:	000000f8 	0xf8
  d4:	000002c4 	0x2c4
  d8:	000002e8 	0x2e8
  dc:	0000030c 	syscall	0xc
  e0:	00000330 	0x330
  e4:	00000354 	0x354
  e8:	00000378 	0x378
  ec:	0000039c 	0x39c
  f0:	000000f8 	0xf8
  f4:	000000f8 	0xf8
  f8:	000000f8 	0xf8
  fc:	000000f8 	0xf8
 100:	000000f8 	0xf8
 104:	000000f8 	0xf8
 108:	000000f8 	0xf8
 10c:	000000f8 	0xf8
 110:	000000f8 	0xf8
 114:	000000f8 	0xf8
 118:	000000f8 	0xf8
 11c:	000000f8 	0xf8
 120:	000000f8 	0xf8
 124:	000000f8 	0xf8
 128:	000000f8 	0xf8
 12c:	000000f8 	0xf8
 130:	000000f8 	0xf8
 134:	000000f8 	0xf8
 138:	000000f8 	0xf8
 13c:	000003b4 	0x3b4
 140:	000000f8 	0xf8
 144:	000000f8 	0xf8
 148:	000000f8 	0xf8
 14c:	000000f8 	0xf8
 150:	000000f8 	0xf8
 154:	000000f8 	0xf8
 158:	000000f8 	0xf8
 15c:	0000021c 	0x21c

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
