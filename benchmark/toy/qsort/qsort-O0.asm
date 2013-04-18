
qsort.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
				2622, 2214, 62, 937, 1043, 5, 3, 170, 44, 3,
				722, 2222, 1242, 234, 1043, 256, 453, 352, 231, 3,
				457, 24, 124, 2412, 48, 235, 453, 952, 1245, 412,
				235, 666, 1290, 101, 523, 823, 111, 214, 62, 9}; 

int main() {
   0:	27bdfcc0 	addiu	sp,sp,-832
   4:	afbe033c 	sw	s8,828(sp)
   8:	03a0f021 	addu	s8,sp,zero

  int piv, L, R, swap ;
  int i = 0;
   c:	afc00008 	sw	zero,8(s8)
  int beg[100], end[100];

  beg[0]=0; end[0]=100;
  10:	afc00014 	sw	zero,20(s8)
  14:	24020064 	addiu	v0,zero,100
  18:	afc201a4 	sw	v0,420(s8)

  while (i>=0) {
  1c:	08000112 	j	448 <main+0x448>
  20:	00000000 	sll	zero,zero,0x0
    L=beg[i]; R=end[i]-1;
  24:	8fc20008 	lw	v0,8(s8)
  28:	00000000 	sll	zero,zero,0x0
  2c:	00021080 	sll	v0,v0,0x2
  30:	03c21021 	addu	v0,s8,v0
  34:	8c420014 	lw	v0,20(v0)
  38:	00000000 	sll	zero,zero,0x0
  3c:	afc20000 	sw	v0,0(s8)
  40:	8fc20008 	lw	v0,8(s8)
  44:	00000000 	sll	zero,zero,0x0
  48:	00021080 	sll	v0,v0,0x2
  4c:	03c21021 	addu	v0,s8,v0
  50:	8c4201a4 	lw	v0,420(v0)
  54:	00000000 	sll	zero,zero,0x0
  58:	2442ffff 	addiu	v0,v0,-1
  5c:	afc20004 	sw	v0,4(s8)
    if (L<R) {
  60:	8fc30000 	lw	v1,0(s8)
  64:	8fc20004 	lw	v0,4(s8)
  68:	00000000 	sll	zero,zero,0x0
  6c:	0062102a 	slt	v0,v1,v0
  70:	104000f1 	beqz	v0,438 <main+0x438>
  74:	00000000 	sll	zero,zero,0x0
      piv=arr[L];
  78:	3c020000 	lui	v0,0x0
  7c:	8fc30000 	lw	v1,0(s8)
  80:	00000000 	sll	zero,zero,0x0
  84:	00031880 	sll	v1,v1,0x2
  88:	24420000 	addiu	v0,v0,0
  8c:	00621021 	addu	v0,v1,v0
  90:	8c420000 	lw	v0,0(v0)
  94:	00000000 	sll	zero,zero,0x0
  98:	afc2000c 	sw	v0,12(s8)
      while (L<R) {
  9c:	0800008d 	j	234 <main+0x234>
  a0:	00000000 	sll	zero,zero,0x0
        while (arr[R]>=piv && L<R) 
			R--; 
  a4:	8fc20004 	lw	v0,4(s8)
  a8:	00000000 	sll	zero,zero,0x0
  ac:	2442ffff 	addiu	v0,v0,-1
  b0:	afc20004 	sw	v0,4(s8)
  b4:	08000030 	j	c0 <main+0xc0>
  b8:	00000000 	sll	zero,zero,0x0
  while (i>=0) {
    L=beg[i]; R=end[i]-1;
    if (L<R) {
      piv=arr[L];
      while (L<R) {
        while (arr[R]>=piv && L<R) 
  bc:	00000000 	sll	zero,zero,0x0
  c0:	3c020000 	lui	v0,0x0
  c4:	8fc30004 	lw	v1,4(s8)
  c8:	00000000 	sll	zero,zero,0x0
  cc:	00031880 	sll	v1,v1,0x2
  d0:	24420000 	addiu	v0,v0,0
  d4:	00621021 	addu	v0,v1,v0
  d8:	8c430000 	lw	v1,0(v0)
  dc:	8fc2000c 	lw	v0,12(s8)
  e0:	00000000 	sll	zero,zero,0x0
  e4:	0062102a 	slt	v0,v1,v0
  e8:	14400007 	bnez	v0,108 <main+0x108>
  ec:	00000000 	sll	zero,zero,0x0
  f0:	8fc30000 	lw	v1,0(s8)
  f4:	8fc20004 	lw	v0,4(s8)
  f8:	00000000 	sll	zero,zero,0x0
  fc:	0062102a 	slt	v0,v1,v0
 100:	1440ffe8 	bnez	v0,a4 <main+0xa4>
 104:	00000000 	sll	zero,zero,0x0
			R--; 
		if (L<R) 
 108:	8fc30000 	lw	v1,0(s8)
 10c:	8fc20004 	lw	v0,4(s8)
 110:	00000000 	sll	zero,zero,0x0
 114:	0062102a 	slt	v0,v1,v0
 118:	1040001b 	beqz	v0,188 <main+0x188>
 11c:	00000000 	sll	zero,zero,0x0
			arr[L++]=arr[R];
 120:	3c020000 	lui	v0,0x0
 124:	8fc30004 	lw	v1,4(s8)
 128:	00000000 	sll	zero,zero,0x0
 12c:	00031880 	sll	v1,v1,0x2
 130:	24420000 	addiu	v0,v0,0
 134:	00621021 	addu	v0,v1,v0
 138:	8c430000 	lw	v1,0(v0)
 13c:	3c020000 	lui	v0,0x0
 140:	8fc40000 	lw	a0,0(s8)
 144:	00000000 	sll	zero,zero,0x0
 148:	00042080 	sll	a0,a0,0x2
 14c:	24420000 	addiu	v0,v0,0
 150:	00821021 	addu	v0,a0,v0
 154:	ac430000 	sw	v1,0(v0)
 158:	8fc20000 	lw	v0,0(s8)
 15c:	00000000 	sll	zero,zero,0x0
 160:	24420001 	addiu	v0,v0,1
 164:	afc20000 	sw	v0,0(s8)
        while (arr[L]<=piv && L<R) 
 168:	08000063 	j	18c <main+0x18c>
 16c:	00000000 	sll	zero,zero,0x0
			L++; 
 170:	8fc20000 	lw	v0,0(s8)
 174:	00000000 	sll	zero,zero,0x0
 178:	24420001 	addiu	v0,v0,1
 17c:	afc20000 	sw	v0,0(s8)
 180:	08000063 	j	18c <main+0x18c>
 184:	00000000 	sll	zero,zero,0x0
      while (L<R) {
        while (arr[R]>=piv && L<R) 
			R--; 
		if (L<R) 
			arr[L++]=arr[R];
        while (arr[L]<=piv && L<R) 
 188:	00000000 	sll	zero,zero,0x0
 18c:	3c020000 	lui	v0,0x0
 190:	8fc30000 	lw	v1,0(s8)
 194:	00000000 	sll	zero,zero,0x0
 198:	00031880 	sll	v1,v1,0x2
 19c:	24420000 	addiu	v0,v0,0
 1a0:	00621021 	addu	v0,v1,v0
 1a4:	8c430000 	lw	v1,0(v0)
 1a8:	8fc2000c 	lw	v0,12(s8)
 1ac:	00000000 	sll	zero,zero,0x0
 1b0:	0043102a 	slt	v0,v0,v1
 1b4:	14400007 	bnez	v0,1d4 <main+0x1d4>
 1b8:	00000000 	sll	zero,zero,0x0
 1bc:	8fc30000 	lw	v1,0(s8)
 1c0:	8fc20004 	lw	v0,4(s8)
 1c4:	00000000 	sll	zero,zero,0x0
 1c8:	0062102a 	slt	v0,v1,v0
 1cc:	1440ffe8 	bnez	v0,170 <main+0x170>
 1d0:	00000000 	sll	zero,zero,0x0
			L++; 
		if (L<R) 
 1d4:	8fc30000 	lw	v1,0(s8)
 1d8:	8fc20004 	lw	v0,4(s8)
 1dc:	00000000 	sll	zero,zero,0x0
 1e0:	0062102a 	slt	v0,v1,v0
 1e4:	10400013 	beqz	v0,234 <main+0x234>
 1e8:	00000000 	sll	zero,zero,0x0
			arr[R--]=arr[L]; 
 1ec:	3c020000 	lui	v0,0x0
 1f0:	8fc30000 	lw	v1,0(s8)
 1f4:	00000000 	sll	zero,zero,0x0
 1f8:	00031880 	sll	v1,v1,0x2
 1fc:	24420000 	addiu	v0,v0,0
 200:	00621021 	addu	v0,v1,v0
 204:	8c430000 	lw	v1,0(v0)
 208:	3c020000 	lui	v0,0x0
 20c:	8fc40004 	lw	a0,4(s8)
 210:	00000000 	sll	zero,zero,0x0
 214:	00042080 	sll	a0,a0,0x2
 218:	24420000 	addiu	v0,v0,0
 21c:	00821021 	addu	v0,a0,v0
 220:	ac430000 	sw	v1,0(v0)
 224:	8fc20004 	lw	v0,4(s8)
 228:	00000000 	sll	zero,zero,0x0
 22c:	2442ffff 	addiu	v0,v0,-1
 230:	afc20004 	sw	v0,4(s8)

  while (i>=0) {
    L=beg[i]; R=end[i]-1;
    if (L<R) {
      piv=arr[L];
      while (L<R) {
 234:	8fc30000 	lw	v1,0(s8)
 238:	8fc20004 	lw	v0,4(s8)
 23c:	00000000 	sll	zero,zero,0x0
 240:	0062102a 	slt	v0,v1,v0
 244:	1440ff9d 	bnez	v0,bc <main+0xbc>
 248:	00000000 	sll	zero,zero,0x0
			L++; 
		if (L<R) 
			arr[R--]=arr[L]; 
	  }

      arr[L]=piv; 
 24c:	3c020000 	lui	v0,0x0
 250:	8fc30000 	lw	v1,0(s8)
 254:	00000000 	sll	zero,zero,0x0
 258:	00031880 	sll	v1,v1,0x2
 25c:	24420000 	addiu	v0,v0,0
 260:	00621021 	addu	v0,v1,v0
 264:	8fc3000c 	lw	v1,12(s8)
 268:	00000000 	sll	zero,zero,0x0
 26c:	ac430000 	sw	v1,0(v0)
	  beg[i+1]=L+1; 
 270:	8fc20008 	lw	v0,8(s8)
 274:	00000000 	sll	zero,zero,0x0
 278:	24420001 	addiu	v0,v0,1
 27c:	8fc30000 	lw	v1,0(s8)
 280:	00000000 	sll	zero,zero,0x0
 284:	24630001 	addiu	v1,v1,1
 288:	00021080 	sll	v0,v0,0x2
 28c:	03c21021 	addu	v0,s8,v0
 290:	ac430014 	sw	v1,20(v0)
	  end[i+1]=end[i]; 
 294:	8fc20008 	lw	v0,8(s8)
 298:	00000000 	sll	zero,zero,0x0
 29c:	24440001 	addiu	a0,v0,1
 2a0:	8fc20008 	lw	v0,8(s8)
 2a4:	00000000 	sll	zero,zero,0x0
 2a8:	00021080 	sll	v0,v0,0x2
 2ac:	03c21021 	addu	v0,s8,v0
 2b0:	8c4301a4 	lw	v1,420(v0)
 2b4:	00041080 	sll	v0,a0,0x2
 2b8:	03c21021 	addu	v0,s8,v0
 2bc:	ac4301a4 	sw	v1,420(v0)
	  end[i++]=L;
 2c0:	8fc20008 	lw	v0,8(s8)
 2c4:	00000000 	sll	zero,zero,0x0
 2c8:	00021080 	sll	v0,v0,0x2
 2cc:	03c21021 	addu	v0,s8,v0
 2d0:	8fc30000 	lw	v1,0(s8)
 2d4:	00000000 	sll	zero,zero,0x0
 2d8:	ac4301a4 	sw	v1,420(v0)
 2dc:	8fc20008 	lw	v0,8(s8)
 2e0:	00000000 	sll	zero,zero,0x0
 2e4:	24420001 	addiu	v0,v0,1
 2e8:	afc20008 	sw	v0,8(s8)

      if ((end[i]-beg[i]) > (end[i-1]-beg[i-1])) {
 2ec:	8fc20008 	lw	v0,8(s8)
 2f0:	00000000 	sll	zero,zero,0x0
 2f4:	00021080 	sll	v0,v0,0x2
 2f8:	03c21021 	addu	v0,s8,v0
 2fc:	8c4301a4 	lw	v1,420(v0)
 300:	8fc20008 	lw	v0,8(s8)
 304:	00000000 	sll	zero,zero,0x0
 308:	00021080 	sll	v0,v0,0x2
 30c:	03c21021 	addu	v0,s8,v0
 310:	8c420014 	lw	v0,20(v0)
 314:	00000000 	sll	zero,zero,0x0
 318:	00621823 	subu	v1,v1,v0
 31c:	8fc20008 	lw	v0,8(s8)
 320:	00000000 	sll	zero,zero,0x0
 324:	2442ffff 	addiu	v0,v0,-1
 328:	00021080 	sll	v0,v0,0x2
 32c:	03c21021 	addu	v0,s8,v0
 330:	8c4401a4 	lw	a0,420(v0)
 334:	8fc20008 	lw	v0,8(s8)
 338:	00000000 	sll	zero,zero,0x0
 33c:	2442ffff 	addiu	v0,v0,-1
 340:	00021080 	sll	v0,v0,0x2
 344:	03c21021 	addu	v0,s8,v0
 348:	8c420014 	lw	v0,20(v0)
 34c:	00000000 	sll	zero,zero,0x0
 350:	00821023 	subu	v0,a0,v0
 354:	0043102a 	slt	v0,v0,v1
 358:	1040003b 	beqz	v0,448 <main+0x448>
 35c:	00000000 	sll	zero,zero,0x0
        swap=beg[i]; 
 360:	8fc20008 	lw	v0,8(s8)
 364:	00000000 	sll	zero,zero,0x0
 368:	00021080 	sll	v0,v0,0x2
 36c:	03c21021 	addu	v0,s8,v0
 370:	8c420014 	lw	v0,20(v0)
 374:	00000000 	sll	zero,zero,0x0
 378:	afc20010 	sw	v0,16(s8)
		beg[i]=beg[i-1]; 
 37c:	8fc20008 	lw	v0,8(s8)
 380:	00000000 	sll	zero,zero,0x0
 384:	2442ffff 	addiu	v0,v0,-1
 388:	00021080 	sll	v0,v0,0x2
 38c:	03c21021 	addu	v0,s8,v0
 390:	8c430014 	lw	v1,20(v0)
 394:	8fc20008 	lw	v0,8(s8)
 398:	00000000 	sll	zero,zero,0x0
 39c:	00021080 	sll	v0,v0,0x2
 3a0:	03c21021 	addu	v0,s8,v0
 3a4:	ac430014 	sw	v1,20(v0)
		beg[i-1]=swap;
 3a8:	8fc20008 	lw	v0,8(s8)
 3ac:	00000000 	sll	zero,zero,0x0
 3b0:	2442ffff 	addiu	v0,v0,-1
 3b4:	00021080 	sll	v0,v0,0x2
 3b8:	03c21021 	addu	v0,s8,v0
 3bc:	8fc30010 	lw	v1,16(s8)
 3c0:	00000000 	sll	zero,zero,0x0
 3c4:	ac430014 	sw	v1,20(v0)
        swap=end[i]; 
 3c8:	8fc20008 	lw	v0,8(s8)
 3cc:	00000000 	sll	zero,zero,0x0
 3d0:	00021080 	sll	v0,v0,0x2
 3d4:	03c21021 	addu	v0,s8,v0
 3d8:	8c4201a4 	lw	v0,420(v0)
 3dc:	00000000 	sll	zero,zero,0x0
 3e0:	afc20010 	sw	v0,16(s8)
		end[i]=end[i-1]; 
 3e4:	8fc20008 	lw	v0,8(s8)
 3e8:	00000000 	sll	zero,zero,0x0
 3ec:	2442ffff 	addiu	v0,v0,-1
 3f0:	00021080 	sll	v0,v0,0x2
 3f4:	03c21021 	addu	v0,s8,v0
 3f8:	8c4301a4 	lw	v1,420(v0)
 3fc:	8fc20008 	lw	v0,8(s8)
 400:	00000000 	sll	zero,zero,0x0
 404:	00021080 	sll	v0,v0,0x2
 408:	03c21021 	addu	v0,s8,v0
 40c:	ac4301a4 	sw	v1,420(v0)
		end[i-1]=swap; 
 410:	8fc20008 	lw	v0,8(s8)
 414:	00000000 	sll	zero,zero,0x0
 418:	2442ffff 	addiu	v0,v0,-1
 41c:	00021080 	sll	v0,v0,0x2
 420:	03c21021 	addu	v0,s8,v0
 424:	8fc30010 	lw	v1,16(s8)
 428:	00000000 	sll	zero,zero,0x0
 42c:	ac4301a4 	sw	v1,420(v0)
 430:	08000112 	j	448 <main+0x448>
 434:	00000000 	sll	zero,zero,0x0
	  }
	}
    else {
      i--; 
 438:	8fc20008 	lw	v0,8(s8)
 43c:	00000000 	sll	zero,zero,0x0
 440:	2442ffff 	addiu	v0,v0,-1
 444:	afc20008 	sw	v0,8(s8)
  int i = 0;
  int beg[100], end[100];

  beg[0]=0; end[0]=100;

  while (i>=0) {
 //448:	8fc20008 	lw	v0,8(s8)
 44c:	00000000 	sll	zero,zero,0x0
 450:	0441fef4 	bgez	v0,24 <main+0x24>
 454:	00000000 	sll	zero,zero,0x0
	}
    else {
      i--; 
	}
  }
}
 458:	03c0e821 	addu	sp,s8,zero
 45c:	8fbe033c 	lw	s8,828(sp)
 460:	27bd0340 	addiu	sp,sp,832
 464:	03e00008 	jr	ra
 468:	00000000 	sll	zero,zero,0x0

Disassembly of section .data:

00000000 <arr>:
   0:	00000498 	0x498
   4:	00000458 	0x458
   8:	000002cc 	syscall	0xb
   c:	000002d0 	0x2d0
  10:	00000330 	0x330
  14:	000003ca 	0x3ca
  18:	0000038f 	0x38f
  1c:	0000034e 	0x34e
  20:	00000361 	0x361
  24:	00000320 	0x320
  28:	0000024c 	syscall	0x9
  2c:	0000024f 	0x24f
  30:	0000026d 	0x26d
  34:	000001b0 	0x1b0
  38:	00000228 	0x228
  3c:	000002c6 	0x2c6
  40:	00000417 	0x417
  44:	000003d9 	0x3d9
  48:	000004cf 	0x4cf
  4c:	00000496 	0x496
  50:	00000012 	mflo	zero
  54:	000003f2 	0x3f2
  58:	00000101 	0x101
  5c:	000004c5 	0x4c5
  60:	00000064 	0x64
  64:	00000377 	0x377
  68:	00000236 	0x236
  6c:	0000033e 	0x33e
  70:	0000013a 	0x13a
  74:	00000015 	0x15
  78:	0000047b 	0x47b
  7c:	00000011 	mthi	zero
  80:	0000044b 	0x44b
  84:	00000001 	0x1
  88:	00000461 	0x461
  8c:	0000005e 	0x5e
  90:	00000329 	0x329
  94:	00000001 	0x1
  98:	0000035d 	0x35d
  9c:	00000022 	neg	zero,zero
  a0:	00000407 	0x407
  a4:	000003e8 	0x3e8
  a8:	000003b5 	0x3b5
  ac:	00000391 	0x391
  b0:	000003f4 	0x3f4
  b4:	0000032d 	0x32d
  b8:	0000031d 	0x31d
  bc:	000002eb 	0x2eb
  c0:	000002fb 	0x2fb
  c4:	00000296 	0x296
  c8:	0000024e 	0x24e
  cc:	00000298 	0x298
  d0:	000002cf 	0x2cf
  d4:	000003a9 	0x3a9
  d8:	00000413 	0x413
  dc:	0000032f 	0x32f
  e0:	000001c5 	0x1c5
  e4:	000000aa 	0xaa
  e8:	0000002c 	0x2c
  ec:	00000003 	sra	zero,zero,0x0
  f0:	00000a3e 	0xa3e
  f4:	000008a6 	0x8a6
  f8:	0000003e 	0x3e
  fc:	000003a9 	0x3a9
 100:	00000413 	0x413
 104:	00000005 	0x5
 108:	00000003 	sra	zero,zero,0x0
 10c:	000000aa 	0xaa
 110:	0000002c 	0x2c
 114:	00000003 	sra	zero,zero,0x0
 118:	000002d2 	0x2d2
 11c:	000008ae 	0x8ae
 120:	000004da 	0x4da
 124:	000000ea 	0xea
 128:	00000413 	0x413
 12c:	00000100 	sll	zero,zero,0x4
 130:	000001c5 	0x1c5
 134:	00000160 	0x160
 138:	000000e7 	0xe7
 13c:	00000003 	sra	zero,zero,0x0
 140:	000001c9 	0x1c9
 144:	00000018 	mult	zero,zero
 148:	0000007c 	0x7c
 14c:	0000096c 	0x96c
 150:	00000030 	0x30
 154:	000000eb 	0xeb
 158:	000001c5 	0x1c5
 15c:	000003b8 	0x3b8
 160:	000004dd 	0x4dd
 164:	0000019c 	0x19c
 168:	000000eb 	0xeb
 16c:	0000029a 	0x29a
 170:	0000050a 	0x50a
 174:	00000065 	0x65
 178:	0000020b 	0x20b
 17c:	00000337 	0x337
 180:	0000006f 	0x6f
 184:	000000d6 	0xd6
 188:	0000003e 	0x3e
 18c:	00000009 	jalr	zero,zero
