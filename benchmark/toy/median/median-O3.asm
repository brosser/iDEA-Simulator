
median.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
   0:	27bdfc58 	addiu	sp,sp,-936
   4:	afb10394 	sw	s1,916(sp)
   8:	3c110000 	lui	s1,0x0
   c:	afb20398 	sw	s2,920(sp)
  10:	afb503a4 	sw	s5,932(sp)
  14:	afb403a0 	sw	s4,928(sp)
  18:	afb3039c 	sw	s3,924(sp)
  1c:	afb00390 	sw	s0,912(sp)
  20:	00001021 	addu	v0,zero,zero
  24:	26310000 	addiu	s1,s1,0
  28:	27b2000c 	addiu	s2,sp,12
  2c:	240d0004 	addiu	t5,zero,4
  30:	24500001 	addiu	s0,v0,1
  34:	24430002 	addiu	v1,v0,2
  38:	00102080 	sll	a0,s0,0x2
  3c:	00107980 	sll	t7,s0,0x6
  40:	01e47823 	subu	t7,t7,a0
  44:	00022880 	sll	a1,v0,0x2
  48:	00025980 	sll	t3,v0,0x6
  4c:	00032080 	sll	a0,v1,0x2
  50:	00035180 	sll	t2,v1,0x6
  54:	25ef0004 	addiu	t7,t7,4
  58:	01655823 	subu	t3,t3,a1
  5c:	01445023 	subu	t2,t2,a0
  60:	022f6021 	addu	t4,s1,t7
  64:	022b5821 	addu	t3,s1,t3
  68:	022a5021 	addu	t2,s1,t2
  6c:	024f7821 	addu	t7,s2,t7
  70:	240e000c 	addiu	t6,zero,12
  74:	8d640000 	lw	a0,0(t3)
  78:	8d630004 	lw	v1,4(t3)
  7c:	8d620008 	lw	v0,8(t3)
  80:	8d930000 	lw	s3,0(t4)
  84:	8d940004 	lw	s4,4(t4)
  88:	8d590000 	lw	t9,0(t2)
  8c:	8d580004 	lw	t8,4(t2)
  90:	8d550008 	lw	s5,8(t2)
  94:	afa40000 	sw	a0,0(sp)
  98:	afa30004 	sw	v1,4(sp)
  9c:	afa20008 	sw	v0,8(sp)
  a0:	03a04821 	addu	t1,sp,zero
  a4:	00004021 	addu	t0,zero,zero
  a8:	25080001 	addiu	t0,t0,1
  ac:	00081080 	sll	v0,t0,0x2
  b0:	8d240000 	lw	a0,0(t1)
  b4:	03a21021 	addu	v0,sp,v0
  b8:	01001821 	addu	v1,t0,zero
  bc:	8c450000 	lw	a1,0(v0)
  c0:	24630001 	addiu	v1,v1,1
  c4:	00a4382a 	slt	a3,a1,a0
  c8:	10e00003 	beqz	a3,d8 <main+0xd8>
  cc:	28660009 	slti	a2,v1,9
  d0:	ac440000 	sw	a0,0(v0)
  d4:	00a02021 	addu	a0,a1,zero
  d8:	14c0fff8 	bnez	a2,bc <main+0xbc>
  dc:	24420004 	addiu	v0,v0,4
  e0:	ad240000 	sw	a0,0(t1)
  e4:	150dfff0 	bne	t0,t5,a8 <main+0xa8>
  e8:	25290004 	addiu	t1,t1,4
  ec:	0335182a 	slt	v1,t9,s5
  f0:	10600002 	beqz	v1,fc <main+0xfc>
  f4:	02a01021 	addu	v0,s5,zero
  f8:	03201021 	addu	v0,t9,zero
  fc:	0282182a 	slt	v1,s4,v0
 100:	10600003 	beqz	v1,110 <main+0x110>
 104:	0262182a 	slt	v1,s3,v0
 108:	02801021 	addu	v0,s4,zero
 10c:	0262182a 	slt	v1,s3,v0
 110:	10600003 	beqz	v1,120 <main+0x120>
 114:	0302182a 	slt	v1,t8,v0
 118:	02601021 	addu	v0,s3,zero
 11c:	0302182a 	slt	v1,t8,v0
 120:	10600002 	beqz	v1,12c <main+0x12c>
 124:	00000000 	sll	zero,zero,0x0
 128:	03001021 	addu	v0,t8,zero
 12c:	25ceffff 	addiu	t6,t6,-1
 130:	ade20000 	sw	v0,0(t7)
 134:	256b0004 	addiu	t3,t3,4
 138:	258c0004 	addiu	t4,t4,4
 13c:	254a0004 	addiu	t2,t2,4
 140:	15c0ffcc 	bnez	t6,74 <main+0x74>
 144:	25ef0004 	addiu	t7,t7,4
 148:	2402000c 	addiu	v0,zero,12
 14c:	1602ffb8 	bne	s0,v0,30 <main+0x30>
 150:	02001021 	addu	v0,s0,zero
 154:	3c030000 	lui	v1,0x0
 158:	24630000 	addiu	v1,v1,0
 15c:	2404000f 	addiu	a0,zero,15
 160:	00001021 	addu	v0,zero,zero
 164:	8e480004 	lw	t0,4(s2)
 168:	8e460000 	lw	a2,0(s2)
 16c:	8c6d0004 	lw	t5,4(v1)
 170:	8c690000 	lw	t1,0(v1)
 174:	8e450008 	lw	a1,8(s2)
 178:	8c6c0008 	lw	t4,8(v1)
 17c:	8e47000c 	lw	a3,12(s2)
 180:	8c6a000c 	lw	t2,12(v1)
 184:	01a86826 	xor	t5,t5,t0
 188:	01264826 	xor	t1,t1,a2
 18c:	8c680010 	lw	t0,16(v1)
 190:	8e460010 	lw	a2,16(s2)
 194:	0009482b 	sltu	t1,zero,t1
 198:	01856026 	xor	t4,t4,a1
 19c:	000d682b 	sltu	t5,zero,t5
 1a0:	8e450014 	lw	a1,20(s2)
 1a4:	8c6b0014 	lw	t3,20(v1)
 1a8:	01a96821 	addu	t5,t5,t1
 1ac:	000c602b 	sltu	t4,zero,t4
 1b0:	01475026 	xor	t2,t2,a3
 1b4:	8c690018 	lw	t1,24(v1)
 1b8:	8e470018 	lw	a3,24(s2)
 1bc:	01ac6821 	addu	t5,t5,t4
 1c0:	000a502b 	sltu	t2,zero,t2
 1c4:	01064026 	xor	t0,t0,a2
 1c8:	8c6c001c 	lw	t4,28(v1)
 1cc:	8e46001c 	lw	a2,28(s2)
 1d0:	01aa6821 	addu	t5,t5,t2
 1d4:	0008402b 	sltu	t0,zero,t0
 1d8:	01655826 	xor	t3,t3,a1
 1dc:	8c6a0020 	lw	t2,32(v1)
 1e0:	8e450020 	lw	a1,32(s2)
 1e4:	01a86821 	addu	t5,t5,t0
 1e8:	000b582b 	sltu	t3,zero,t3
 1ec:	01274826 	xor	t1,t1,a3
 1f0:	8c680024 	lw	t0,36(v1)
 1f4:	8e470024 	lw	a3,36(s2)
 1f8:	01ab6821 	addu	t5,t5,t3
 1fc:	0009482b 	sltu	t1,zero,t1
 200:	01866026 	xor	t4,t4,a2
 204:	8c6b0028 	lw	t3,40(v1)
 208:	8e460028 	lw	a2,40(s2)
 20c:	01a96821 	addu	t5,t5,t1
 210:	000c602b 	sltu	t4,zero,t4
 214:	01455026 	xor	t2,t2,a1
 218:	8c69002c 	lw	t1,44(v1)
 21c:	8e45002c 	lw	a1,44(s2)
 220:	01ac6821 	addu	t5,t5,t4
 224:	000a502b 	sltu	t2,zero,t2
 228:	01074026 	xor	t0,t0,a3
 22c:	8c6c0030 	lw	t4,48(v1)
 230:	8e470030 	lw	a3,48(s2)
 234:	01aa6821 	addu	t5,t5,t2
 238:	0008402b 	sltu	t0,zero,t0
 23c:	01665826 	xor	t3,t3,a2
 240:	8c6a0034 	lw	t2,52(v1)
 244:	8e460034 	lw	a2,52(s2)
 248:	01a86821 	addu	t5,t5,t0
 24c:	01254826 	xor	t1,t1,a1
 250:	000b582b 	sltu	t3,zero,t3
 254:	8c680038 	lw	t0,56(v1)
 258:	8e450038 	lw	a1,56(s2)
 25c:	01ab5821 	addu	t3,t5,t3
 260:	0009482b 	sltu	t1,zero,t1
 264:	01873826 	xor	a3,t4,a3
 268:	01694821 	addu	t1,t3,t1
 26c:	0007382b 	sltu	a3,zero,a3
 270:	01463026 	xor	a2,t2,a2
 274:	01273821 	addu	a3,t1,a3
 278:	0006302b 	sltu	a2,zero,a2
 27c:	01052826 	xor	a1,t0,a1
 280:	00e63021 	addu	a2,a3,a2
 284:	0005282b 	sltu	a1,zero,a1
 288:	00c52821 	addu	a1,a2,a1
 28c:	2484ffff 	addiu	a0,a0,-1
 290:	00451021 	addu	v0,v0,a1
 294:	2463003c 	addiu	v1,v1,60
 298:	1480ffb2 	bnez	a0,164 <main+0x164>
 29c:	2652003c 	addiu	s2,s2,60
 2a0:	8fb503a4 	lw	s5,932(sp)
 2a4:	8fb403a0 	lw	s4,928(sp)
 2a8:	8fb3039c 	lw	s3,924(sp)
 2ac:	8fb20398 	lw	s2,920(sp)
 2b0:	8fb10394 	lw	s1,916(sp)
 2b4:	8fb00390 	lw	s0,912(sp)
 2b8:	03e00008 	jr	ra
 2bc:	27bd03a8 	addiu	sp,sp,936

Disassembly of section .rodata:

00000000 <output>:
   0:	000000bd 	0xbd
   4:	000000d5 	0xd5
   8:	0000001d 	0x1d
   c:	00000061 	0x61
  10:	00000010 	mfhi	zero
  14:	00000002 	srl	zero,zero,0x0
  18:	00000001 	0x1
  1c:	00000020 	add	zero,zero,zero
  20:	00000010 	mfhi	zero
  24:	00000002 	srl	zero,zero,0x0
  28:	00000001 	0x1
  2c:	00000020 	add	zero,zero,zero
  30:	000000f8 	0xf8
	...
  3c:	00000020 	add	zero,zero,zero
  40:	00000001 	0x1
  44:	00000002 	srl	zero,zero,0x0
  48:	00000003 	sra	zero,zero,0x0
  4c:	00000004 	sllv	zero,zero,zero
  50:	00000005 	0x5
  54:	00000006 	srlv	zero,zero,zero
  58:	00000007 	srav	zero,zero,zero
  5c:	00000008 	jr	zero
  60:	00000009 	jalr	zero,zero
  64:	0000000a 	0xa
  68:	0000000b 	0xb
  6c:	0000000c 	syscall
  70:	00000035 	0x35
  74:	00000000 	sll	zero,zero,0x0
  78:	00000036 	0x36
  7c:	00000001 	0x1
  80:	00000002 	srl	zero,zero,0x0
  84:	00000003 	sra	zero,zero,0x0
  88:	00000004 	sllv	zero,zero,zero
  8c:	00000005 	0x5
  90:	00000006 	srlv	zero,zero,zero
  94:	00000007 	srav	zero,zero,zero
  98:	00000008 	jr	zero
  9c:	00000009 	jalr	zero,zero
  a0:	0000000a 	0xa
  a4:	0000000b 	0xb
  a8:	0000000c 	syscall
	...
  b8:	00000002 	srl	zero,zero,0x0
  bc:	00000003 	sra	zero,zero,0x0
  c0:	00000004 	sllv	zero,zero,zero
  c4:	00000005 	0x5
  c8:	00000006 	srlv	zero,zero,zero
  cc:	00000007 	srav	zero,zero,zero
  d0:	00000008 	jr	zero
  d4:	00000009 	jalr	zero,zero
  d8:	0000000a 	0xa
  dc:	0000000b 	0xb
  e0:	0000000c 	syscall
  e4:	0000000d 	break
	...
  f4:	00000015 	0x15
  f8:	00000016 	0x16
  fc:	00000017 	0x17
 100:	00000018 	mult	zero,zero
 104:	00000019 	multu	zero,zero
 108:	0000001a 	div	zero,zero,zero
 10c:	0000001b 	divu	zero,zero,zero
 110:	0000001c 	0x1c
 114:	0000001d 	0x1d
 118:	0000001e 	0x1e
 11c:	0000001f 	0x1f
 120:	00000020 	add	zero,zero,zero
 124:	000000ab 	0xab
 128:	00000028 	0x28
 12c:	00000000 	sll	zero,zero,0x0
 130:	00000016 	0x16
 134:	00000017 	0x17
 138:	00000018 	mult	zero,zero
 13c:	00000019 	multu	zero,zero
 140:	0000001a 	div	zero,zero,zero
 144:	0000001b 	divu	zero,zero,zero
 148:	0000001c 	0x1c
 14c:	0000001d 	0x1d
 150:	0000001e 	0x1e
 154:	0000001f 	0x1f
 158:	00000020 	add	zero,zero,zero
 15c:	00000021 	addu	zero,zero,zero
 160:	000000e0 	0xe0
 164:	000000dd 	0xdd
 168:	00000023 	negu	zero,zero
 16c:	00000016 	0x16
 170:	00000017 	0x17
 174:	00000018 	mult	zero,zero
 178:	00000019 	multu	zero,zero
 17c:	0000001a 	div	zero,zero,zero
 180:	0000001b 	divu	zero,zero,zero
 184:	0000001c 	0x1c
 188:	0000001d 	0x1d
 18c:	0000001e 	0x1e
 190:	0000001f 	0x1f
 194:	00000020 	add	zero,zero,zero
 198:	00000021 	addu	zero,zero,zero
 19c:	00000000 	sll	zero,zero,0x0
 1a0:	000000c8 	0xc8
 1a4:	000000ab 	0xab
 1a8:	00000017 	0x17
 1ac:	00000018 	mult	zero,zero
 1b0:	00000019 	multu	zero,zero
 1b4:	0000001a 	div	zero,zero,zero
 1b8:	0000001b 	divu	zero,zero,zero
 1bc:	0000001c 	0x1c
 1c0:	0000001d 	0x1d
 1c4:	0000001e 	0x1e
 1c8:	0000001f 	0x1f
 1cc:	00000020 	add	zero,zero,zero
 1d0:	00000021 	addu	zero,zero,zero
 1d4:	00000022 	neg	zero,zero
 1d8:	0000001f 	0x1f
 1dc:	00000061 	0x61
 1e0:	000000e0 	0xe0
 1e4:	0000001f 	0x1f
 1e8:	00000020 	add	zero,zero,zero
 1ec:	00000021 	addu	zero,zero,zero
 1f0:	00000022 	neg	zero,zero
 1f4:	00000023 	negu	zero,zero
 1f8:	00000024 	and	zero,zero,zero
 1fc:	00000025 	or	zero,zero,zero
 200:	00000026 	xor	zero,zero,zero
 204:	00000027 	nor	zero,zero,zero
 208:	00000028 	0x28
 20c:	00000029 	0x29
 210:	0000002b 	sltu	zero,zero,zero
 214:	000000ac 	0xac
 218:	00000028 	0x28
 21c:	00000000 	sll	zero,zero,0x0
 220:	00000020 	add	zero,zero,zero
 224:	00000021 	addu	zero,zero,zero
 228:	00000022 	neg	zero,zero
 22c:	00000023 	negu	zero,zero
 230:	00000024 	and	zero,zero,zero
 234:	00000025 	or	zero,zero,zero
 238:	00000026 	xor	zero,zero,zero
 23c:	00000027 	nor	zero,zero,zero
 240:	00000028 	0x28
 244:	00000029 	0x29
 248:	0000002b 	sltu	zero,zero,zero
 24c:	0000002b 	sltu	zero,zero,zero
	...
 25c:	00000020 	add	zero,zero,zero
 260:	00000021 	addu	zero,zero,zero
 264:	00000022 	neg	zero,zero
 268:	00000023 	negu	zero,zero
 26c:	00000024 	and	zero,zero,zero
 270:	00000025 	or	zero,zero,zero
 274:	00000026 	xor	zero,zero,zero
 278:	00000027 	nor	zero,zero,zero
 27c:	00000028 	0x28
 280:	00000029 	0x29
 284:	0000002b 	sltu	zero,zero,zero
 288:	0000002b 	sltu	zero,zero,zero
 28c:	00000061 	0x61
 290:	000000e0 	0xe0
 294:	000000d7 	0xd7
 298:	00000021 	addu	zero,zero,zero
 29c:	00000022 	neg	zero,zero
 2a0:	00000023 	negu	zero,zero
 2a4:	00000024 	and	zero,zero,zero
 2a8:	00000025 	or	zero,zero,zero
 2ac:	00000026 	xor	zero,zero,zero
 2b0:	00000027 	nor	zero,zero,zero
 2b4:	00000028 	0x28
 2b8:	00000029 	0x29
 2bc:	0000002b 	sltu	zero,zero,zero
 2c0:	0000002b 	sltu	zero,zero,zero
 2c4:	0000002c 	0x2c
 2c8:	00000028 	0x28
 2cc:	00000000 	sll	zero,zero,0x0
 2d0:	00000055 	0x55
 2d4:	00000029 	0x29
 2d8:	0000002a 	slt	zero,zero,zero
 2dc:	0000002b 	sltu	zero,zero,zero
 2e0:	0000002c 	0x2c
 2e4:	0000002d 	0x2d
 2e8:	0000002e 	0x2e
 2ec:	0000002f 	0x2f
 2f0:	00000030 	0x30
 2f4:	00000031 	0x31
 2f8:	00000032 	0x32
 2fc:	00000033 	0x33
 300:	00000034 	0x34
 304:	00000066 	0x66
 308:	00000013 	mtlo	zero
 30c:	00000061 	0x61
 310:	000000e0 	0xe0
 314:	000000d7 	0xd7
 318:	00000023 	negu	zero,zero
 31c:	00000061 	0x61
 320:	00000002 	srl	zero,zero,0x0
	...
 330:	00000001 	0x1
	...
 340:	000000e0 	0xe0
 344:	0000006e 	0x6e
 348:	00000013 	mtlo	zero
 34c:	00000061 	0x61
 350:	00000000 	sll	zero,zero,0x0
 354:	000000d0 	0xd0
 358:	00000028 	0x28
 35c:	00000000 	sll	zero,zero,0x0
 360:	000000e0 	0xe0
 364:	00000072 	0x72
 368:	00000018 	mult	zero,zero
 36c:	00000061 	0x61
	...
 380:	000000f0 	0xf0

00000384 <image_i>:
 384:	00000000 	sll	zero,zero,0x0
 388:	00000001 	0x1
 38c:	00000002 	srl	zero,zero,0x0
 390:	00000003 	sra	zero,zero,0x0
 394:	00000004 	sllv	zero,zero,zero
 398:	00000005 	0x5
 39c:	00000006 	srlv	zero,zero,zero
 3a0:	00000007 	srav	zero,zero,zero
 3a4:	00000008 	jr	zero
 3a8:	00000009 	jalr	zero,zero
 3ac:	0000000a 	0xa
 3b0:	0000000b 	0xb
 3b4:	0000000c 	syscall
 3b8:	0000000d 	break
 3bc:	0000000e 	0xe
 3c0:	00000000 	sll	zero,zero,0x0
 3c4:	00000001 	0x1
 3c8:	00000002 	srl	zero,zero,0x0
 3cc:	00000003 	sra	zero,zero,0x0
 3d0:	00000004 	sllv	zero,zero,zero
 3d4:	00000005 	0x5
 3d8:	00000006 	srlv	zero,zero,zero
 3dc:	00000007 	srav	zero,zero,zero
 3e0:	00000008 	jr	zero
 3e4:	00000009 	jalr	zero,zero
 3e8:	0000000a 	0xa
 3ec:	0000000b 	0xb
 3f0:	0000000c 	syscall
 3f4:	0000000d 	break
 3f8:	0000000e 	0xe
 3fc:	00000000 	sll	zero,zero,0x0
 400:	00000001 	0x1
 404:	00000002 	srl	zero,zero,0x0
 408:	00000003 	sra	zero,zero,0x0
 40c:	00000004 	sllv	zero,zero,zero
 410:	00000005 	0x5
 414:	00000006 	srlv	zero,zero,zero
 418:	00000007 	srav	zero,zero,zero
 41c:	00000008 	jr	zero
 420:	00000009 	jalr	zero,zero
 424:	0000000a 	0xa
 428:	0000000b 	0xb
 42c:	0000000c 	syscall
 430:	0000000d 	break
 434:	0000000e 	0xe
 438:	00000000 	sll	zero,zero,0x0
 43c:	00000001 	0x1
 440:	00000002 	srl	zero,zero,0x0
 444:	00000003 	sra	zero,zero,0x0
 448:	00000004 	sllv	zero,zero,zero
 44c:	00000005 	0x5
 450:	00000006 	srlv	zero,zero,zero
 454:	00000007 	srav	zero,zero,zero
 458:	00000008 	jr	zero
 45c:	00000009 	jalr	zero,zero
 460:	0000000a 	0xa
 464:	0000000b 	0xb
 468:	0000000c 	syscall
 46c:	0000000d 	break
 470:	0000000e 	0xe
 474:	00000015 	0x15
 478:	00000016 	0x16
 47c:	00000017 	0x17
 480:	00000018 	mult	zero,zero
 484:	00000019 	multu	zero,zero
 488:	0000001a 	div	zero,zero,zero
 48c:	0000001b 	divu	zero,zero,zero
 490:	0000001c 	0x1c
 494:	0000001d 	0x1d
 498:	0000001e 	0x1e
 49c:	0000001f 	0x1f
 4a0:	00000020 	add	zero,zero,zero
 4a4:	00000021 	addu	zero,zero,zero
 4a8:	00000022 	neg	zero,zero
 4ac:	00000023 	negu	zero,zero
 4b0:	00000015 	0x15
 4b4:	00000016 	0x16
 4b8:	00000017 	0x17
 4bc:	00000018 	mult	zero,zero
 4c0:	00000019 	multu	zero,zero
 4c4:	0000001a 	div	zero,zero,zero
 4c8:	0000001b 	divu	zero,zero,zero
 4cc:	0000001c 	0x1c
 4d0:	0000001d 	0x1d
 4d4:	0000001e 	0x1e
 4d8:	0000001f 	0x1f
 4dc:	00000020 	add	zero,zero,zero
 4e0:	00000021 	addu	zero,zero,zero
 4e4:	00000022 	neg	zero,zero
 4e8:	00000023 	negu	zero,zero
 4ec:	00000015 	0x15
 4f0:	00000016 	0x16
 4f4:	00000017 	0x17
 4f8:	00000018 	mult	zero,zero
 4fc:	00000019 	multu	zero,zero
 500:	0000001a 	div	zero,zero,zero
 504:	0000001b 	divu	zero,zero,zero
 508:	0000001c 	0x1c
 50c:	0000001d 	0x1d
 510:	0000001e 	0x1e
 514:	0000001f 	0x1f
 518:	00000020 	add	zero,zero,zero
 51c:	00000021 	addu	zero,zero,zero
 520:	00000022 	neg	zero,zero
 524:	00000023 	negu	zero,zero
 528:	00000015 	0x15
 52c:	00000016 	0x16
 530:	00000017 	0x17
 534:	00000018 	mult	zero,zero
 538:	00000019 	multu	zero,zero
 53c:	0000001a 	div	zero,zero,zero
 540:	0000001b 	divu	zero,zero,zero
 544:	0000001c 	0x1c
 548:	0000001d 	0x1d
 54c:	0000001e 	0x1e
 550:	0000001f 	0x1f
 554:	00000020 	add	zero,zero,zero
 558:	00000021 	addu	zero,zero,zero
 55c:	00000022 	neg	zero,zero
 560:	00000023 	negu	zero,zero
 564:	0000001f 	0x1f
 568:	00000020 	add	zero,zero,zero
 56c:	00000021 	addu	zero,zero,zero
 570:	00000022 	neg	zero,zero
 574:	00000023 	negu	zero,zero
 578:	00000024 	and	zero,zero,zero
 57c:	00000025 	or	zero,zero,zero
 580:	00000026 	xor	zero,zero,zero
 584:	00000027 	nor	zero,zero,zero
 588:	00000028 	0x28
 58c:	00000029 	0x29
 590:	0000002b 	sltu	zero,zero,zero
 594:	0000002b 	sltu	zero,zero,zero
 598:	0000002c 	0x2c
 59c:	0000002d 	0x2d
 5a0:	0000001f 	0x1f
 5a4:	00000020 	add	zero,zero,zero
 5a8:	00000021 	addu	zero,zero,zero
 5ac:	00000022 	neg	zero,zero
 5b0:	00000023 	negu	zero,zero
 5b4:	00000024 	and	zero,zero,zero
 5b8:	00000025 	or	zero,zero,zero
 5bc:	00000026 	xor	zero,zero,zero
 5c0:	00000027 	nor	zero,zero,zero
 5c4:	00000028 	0x28
 5c8:	00000029 	0x29
 5cc:	0000002b 	sltu	zero,zero,zero
 5d0:	0000002b 	sltu	zero,zero,zero
 5d4:	0000002c 	0x2c
 5d8:	0000002d 	0x2d
 5dc:	0000001f 	0x1f
 5e0:	00000020 	add	zero,zero,zero
 5e4:	00000021 	addu	zero,zero,zero
 5e8:	00000022 	neg	zero,zero
 5ec:	00000023 	negu	zero,zero
 5f0:	00000024 	and	zero,zero,zero
 5f4:	00000025 	or	zero,zero,zero
 5f8:	00000026 	xor	zero,zero,zero
 5fc:	00000027 	nor	zero,zero,zero
 600:	00000028 	0x28
 604:	00000029 	0x29
 608:	0000002b 	sltu	zero,zero,zero
 60c:	0000002b 	sltu	zero,zero,zero
 610:	0000002c 	0x2c
 614:	0000002d 	0x2d
 618:	0000001f 	0x1f
 61c:	00000020 	add	zero,zero,zero
 620:	00000021 	addu	zero,zero,zero
 624:	00000022 	neg	zero,zero
 628:	00000023 	negu	zero,zero
 62c:	00000024 	and	zero,zero,zero
 630:	00000025 	or	zero,zero,zero
 634:	00000026 	xor	zero,zero,zero
 638:	00000027 	nor	zero,zero,zero
 63c:	00000028 	0x28
 640:	00000029 	0x29
 644:	0000002b 	sltu	zero,zero,zero
 648:	0000002b 	sltu	zero,zero,zero
 64c:	0000002c 	0x2c
 650:	0000002d 	0x2d
 654:	00000029 	0x29
 658:	0000002a 	slt	zero,zero,zero
 65c:	0000002b 	sltu	zero,zero,zero
 660:	0000002c 	0x2c
 664:	0000002d 	0x2d
 668:	0000002e 	0x2e
 66c:	0000002f 	0x2f
 670:	00000030 	0x30
 674:	00000031 	0x31
 678:	00000032 	0x32
 67c:	00000033 	0x33
 680:	00000034 	0x34
 684:	00000035 	0x35
 688:	00000036 	0x36
 68c:	00000037 	0x37
 690:	00000029 	0x29
 694:	0000002a 	slt	zero,zero,zero
 698:	0000002b 	sltu	zero,zero,zero
 69c:	0000002c 	0x2c
 6a0:	0000002d 	0x2d
 6a4:	0000002e 	0x2e
 6a8:	0000002f 	0x2f
 6ac:	00000030 	0x30
 6b0:	00000031 	0x31
 6b4:	00000032 	0x32
 6b8:	00000033 	0x33
 6bc:	00000034 	0x34
 6c0:	00000035 	0x35
 6c4:	00000036 	0x36
 6c8:	00000037 	0x37
 6cc:	00000029 	0x29
 6d0:	0000002a 	slt	zero,zero,zero
 6d4:	0000002b 	sltu	zero,zero,zero
 6d8:	0000002c 	0x2c
 6dc:	0000002d 	0x2d
 6e0:	0000002e 	0x2e
 6e4:	0000002f 	0x2f
 6e8:	00000030 	0x30
 6ec:	00000031 	0x31
 6f0:	00000032 	0x32
 6f4:	00000033 	0x33
 6f8:	00000034 	0x34
 6fc:	00000035 	0x35
 700:	00000036 	0x36
 704:	00000037 	0x37
