
sha_driver.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <sha_transform>:

/* do SHA transformation */

static void
sha_transform ()
{
   0:	27bdfec0 	addiu	sp,sp,-320
   4:	00001021 	addu	v0,zero,zero
}

/* do SHA transformation */

static void
sha_transform ()
   8:	3c060000 	lui	a2,0x0
   c:	24c60000 	addiu	a2,a2,0
{
  int i;
  LONG temp, A, B, C, D, E, W[80];

  for (i = 0; i < 16; ++i)
  10:	24050040 	addiu	a1,zero,64
}

/* do SHA transformation */

static void
sha_transform ()
  14:	03a21821 	addu	v1,sp,v0
  18:	00c22021 	addu	a0,a2,v0
  int i;
  LONG temp, A, B, C, D, E, W[80];

  for (i = 0; i < 16; ++i)
    {
      W[i] = sha_info_data[i];
  1c:	8c840000 	lw	a0,0(a0)
  20:	24420004 	addiu	v0,v0,4
sha_transform ()
{
  int i;
  LONG temp, A, B, C, D, E, W[80];

  for (i = 0; i < 16; ++i)
  24:	1445fffb 	bne	v0,a1,14 <sha_transform+0x14>
  28:	ac640000 	sw	a0,0(v1)
  2c:	27a20034 	addiu	v0,sp,52
}

/* do SHA transformation */

static void
sha_transform ()
  30:	03a04821 	addu	t1,sp,zero
  34:	27a50134 	addiu	a1,sp,308
    {
      W[i] = sha_info_data[i];
    }
  for (i = 16; i < 80; ++i)
    {
      W[i] = W[i - 3] ^ W[i - 8] ^ W[i - 14] ^ W[i - 16];
  38:	8c44ffec 	lw	a0,-20(v0)
  3c:	8c430000 	lw	v1,0(v0)
  40:	00000000 	sll	zero,zero,0x0
  44:	00831826 	xor	v1,a0,v1
  48:	8c44ffd4 	lw	a0,-44(v0)
  4c:	00000000 	sll	zero,zero,0x0
  50:	00641826 	xor	v1,v1,a0
  54:	8c44ffcc 	lw	a0,-52(v0)
  58:	00000000 	sll	zero,zero,0x0
  5c:	00641826 	xor	v1,v1,a0
  60:	ac43000c 	sw	v1,12(v0)
  64:	24420004 	addiu	v0,v0,4

  for (i = 0; i < 16; ++i)
    {
      W[i] = sha_info_data[i];
    }
  for (i = 16; i < 80; ++i)
  68:	1445fff3 	bne	v0,a1,38 <sha_transform+0x38>
  6c:	25390050 	addiu	t9,t1,80
    {
      W[i] = W[i - 3] ^ W[i - 8] ^ W[i - 14] ^ W[i - 16];
    }
  A = sha_info_digest[0];
  70:	3c020000 	lui	v0,0x0
  74:	8c4f0000 	lw	t7,0(v0)
  B = sha_info_digest[1];
  78:	24420000 	addiu	v0,v0,0
  7c:	8c4e0004 	lw	t6,4(v0)
  C = sha_info_digest[2];
  80:	8c4d0008 	lw	t5,8(v0)
  D = sha_info_digest[3];
  84:	8c4c000c 	lw	t4,12(v0)
  E = sha_info_digest[4];
  88:	8c4b0010 	lw	t3,16(v0)
  8c:	03a02821 	addu	a1,sp,zero
  90:	01603021 	addu	a2,t3,zero
      W[i] = W[i - 3] ^ W[i - 8] ^ W[i - 14] ^ W[i - 16];
    }
  A = sha_info_digest[0];
  B = sha_info_digest[1];
  C = sha_info_digest[2];
  D = sha_info_digest[3];
  94:	01805021 	addu	t2,t4,zero
    {
      W[i] = W[i - 3] ^ W[i - 8] ^ W[i - 14] ^ W[i - 16];
    }
  A = sha_info_digest[0];
  B = sha_info_digest[1];
  C = sha_info_digest[2];
  98:	01a04021 	addu	t0,t5,zero
  for (i = 16; i < 80; ++i)
    {
      W[i] = W[i - 3] ^ W[i - 8] ^ W[i - 14] ^ W[i - 16];
    }
  A = sha_info_digest[0];
  B = sha_info_digest[1];
  9c:	01c02021 	addu	a0,t6,zero
    }
  for (i = 16; i < 80; ++i)
    {
      W[i] = W[i - 3] ^ W[i - 8] ^ W[i - 14] ^ W[i - 16];
    }
  A = sha_info_digest[0];
  a0:	01e01021 	addu	v0,t7,zero
  D = sha_info_digest[3];
  E = sha_info_digest[4];

  for (i = 0; i < 20; ++i)
    {
      FUNC (1, i);
  a4:	3c185a82 	lui	t8,0x5a82
  a8:	08000031 	j	c4 <sha_transform+0xc4>
  ac:	27187999 	addiu	t8,t8,31129
  B = sha_info_digest[1];
  C = sha_info_digest[2];
  D = sha_info_digest[3];
  E = sha_info_digest[4];

  for (i = 0; i < 20; ++i)
  b0:	01403021 	addu	a2,t2,zero
  b4:	01005021 	addu	t2,t0,zero
    {
      FUNC (1, i);
  b8:	00804021 	addu	t0,a0,zero
  B = sha_info_digest[1];
  C = sha_info_digest[2];
  D = sha_info_digest[3];
  E = sha_info_digest[4];

  for (i = 0; i < 20; ++i)
  bc:	00402021 	addu	a0,v0,zero
    {
      FUNC (1, i);
  c0:	00601021 	addu	v0,v1,zero
  c4:	8ca30000 	lw	v1,0(a1)
  c8:	00000000 	sll	zero,zero,0x0
  cc:	00781821 	addu	v1,v1,t8
  d0:	00663021 	addu	a2,v1,a2
  d4:	00023940 	sll	a3,v0,0x5
  d8:	00021ec2 	srl	v1,v0,0x1b
  dc:	00e31825 	or	v1,a3,v1
  e0:	00c33021 	addu	a2,a2,v1
  e4:	00041827 	nor	v1,zero,a0
  e8:	006a1824 	and	v1,v1,t2
  ec:	01043824 	and	a3,t0,a0
  f0:	00671825 	or	v1,v1,a3
  f4:	00c31821 	addu	v1,a2,v1
  f8:	00043f80 	sll	a3,a0,0x1e
  fc:	00042082 	srl	a0,a0,0x2
 100:	24a50004 	addiu	a1,a1,4
  B = sha_info_digest[1];
  C = sha_info_digest[2];
  D = sha_info_digest[3];
  E = sha_info_digest[4];

  for (i = 0; i < 20; ++i)
 104:	14b9ffea 	bne	a1,t9,b0 <sha_transform+0xb0>
 108:	00872025 	or	a0,a0,a3
 10c:	27a50050 	addiu	a1,sp,80
}

/* do SHA transformation */

static void
sha_transform ()
 110:	253800a0 	addiu	t8,t1,160
    {
      FUNC (1, i);
    }
  for (i = 20; i < 40; ++i)
    {
      FUNC (2, i);
 114:	3c196ed9 	lui	t9,0x6ed9
 118:	0800004d 	j	134 <sha_transform+0x134>
 11c:	3739eba1 	ori	t9,t9,0xeba1

  for (i = 0; i < 20; ++i)
    {
      FUNC (1, i);
    }
  for (i = 20; i < 40; ++i)
 120:	01005021 	addu	t2,t0,zero
 124:	00804021 	addu	t0,a0,zero
    {
      FUNC (2, i);
 128:	00402021 	addu	a0,v0,zero

  for (i = 0; i < 20; ++i)
    {
      FUNC (1, i);
    }
  for (i = 20; i < 40; ++i)
 12c:	00601021 	addu	v0,v1,zero
    {
      FUNC (2, i);
 130:	00c01821 	addu	v1,a2,zero
 134:	8ca60000 	lw	a2,0(a1)
 138:	00000000 	sll	zero,zero,0x0
 13c:	00d93021 	addu	a2,a2,t9
 140:	00ca3021 	addu	a2,a2,t2
 144:	00035140 	sll	t2,v1,0x5
 148:	00033ec2 	srl	a3,v1,0x1b
 14c:	01473825 	or	a3,t2,a3
 150:	00c73021 	addu	a2,a2,a3
 154:	00823826 	xor	a3,a0,v0
 158:	00e83826 	xor	a3,a3,t0
 15c:	00c73021 	addu	a2,a2,a3
 160:	00023f80 	sll	a3,v0,0x1e
 164:	00021082 	srl	v0,v0,0x2
 168:	24a50004 	addiu	a1,a1,4

  for (i = 0; i < 20; ++i)
    {
      FUNC (1, i);
    }
  for (i = 20; i < 40; ++i)
 16c:	14b8ffec 	bne	a1,t8,120 <sha_transform+0x120>
 170:	00471025 	or	v0,v0,a3
 174:	27a500a0 	addiu	a1,sp,160
}

/* do SHA transformation */

static void
sha_transform ()
 178:	253800f0 	addiu	t8,t1,240
    {
      FUNC (2, i);
    }
  for (i = 40; i < 60; ++i)
    {
      FUNC (3, i);
 17c:	3c198f1b 	lui	t9,0x8f1b
 180:	08000067 	j	19c <sha_transform+0x19c>
 184:	3739bcdc 	ori	t9,t9,0xbcdc
    }
  for (i = 20; i < 40; ++i)
    {
      FUNC (2, i);
    }
  for (i = 40; i < 60; ++i)
 188:	00804021 	addu	t0,a0,zero
 18c:	00402021 	addu	a0,v0,zero
    {
      FUNC (3, i);
 190:	00601021 	addu	v0,v1,zero
    }
  for (i = 20; i < 40; ++i)
    {
      FUNC (2, i);
    }
  for (i = 40; i < 60; ++i)
 194:	00c01821 	addu	v1,a2,zero
    {
      FUNC (3, i);
 198:	00e03021 	addu	a2,a3,zero
 19c:	8ca70000 	lw	a3,0(a1)
 1a0:	00000000 	sll	zero,zero,0x0
 1a4:	00f93821 	addu	a3,a3,t9
 1a8:	00e84021 	addu	t0,a3,t0
 1ac:	00065140 	sll	t2,a2,0x5
 1b0:	00063ec2 	srl	a3,a2,0x1b
 1b4:	01473825 	or	a3,t2,a3
 1b8:	01074021 	addu	t0,t0,a3
 1bc:	00823825 	or	a3,a0,v0
 1c0:	00e33824 	and	a3,a3,v1
 1c4:	00825024 	and	t2,a0,v0
 1c8:	00ea3825 	or	a3,a3,t2
 1cc:	01073821 	addu	a3,t0,a3
 1d0:	00035780 	sll	t2,v1,0x1e
 1d4:	00031882 	srl	v1,v1,0x2
 1d8:	24a50004 	addiu	a1,a1,4
    }
  for (i = 20; i < 40; ++i)
    {
      FUNC (2, i);
    }
  for (i = 40; i < 60; ++i)
 1dc:	14b8ffea 	bne	a1,t8,188 <sha_transform+0x188>
 1e0:	006a1825 	or	v1,v1,t2
 1e4:	27a500f0 	addiu	a1,sp,240
}

/* do SHA transformation */

static void
sha_transform ()
 1e8:	25290140 	addiu	t1,t1,320
    {
      FUNC (3, i);
    }
  for (i = 60; i < 80; ++i)
    {
      FUNC (4, i);
 1ec:	3c18ca62 	lui	t8,0xca62
 1f0:	08000083 	j	20c <sha_transform+0x20c>
 1f4:	3718c1d6 	ori	t8,t8,0xc1d6
    }
  for (i = 40; i < 60; ++i)
    {
      FUNC (3, i);
    }
  for (i = 60; i < 80; ++i)
 1f8:	00402021 	addu	a0,v0,zero
 1fc:	00601021 	addu	v0,v1,zero
    {
      FUNC (4, i);
 200:	00c01821 	addu	v1,a2,zero
    }
  for (i = 40; i < 60; ++i)
    {
      FUNC (3, i);
    }
  for (i = 60; i < 80; ++i)
 204:	00e03021 	addu	a2,a3,zero
    {
      FUNC (4, i);
 208:	01403821 	addu	a3,t2,zero
 20c:	8ca80000 	lw	t0,0(a1)
 210:	00000000 	sll	zero,zero,0x0
 214:	01184021 	addu	t0,t0,t8
 218:	01042021 	addu	a0,t0,a0
 21c:	00075140 	sll	t2,a3,0x5
 220:	000746c2 	srl	t0,a3,0x1b
 224:	01484025 	or	t0,t2,t0
 228:	00882021 	addu	a0,a0,t0
 22c:	00664026 	xor	t0,v1,a2
 230:	01024026 	xor	t0,t0,v0
 234:	00885021 	addu	t2,a0,t0
 238:	00064780 	sll	t0,a2,0x1e
 23c:	00063082 	srl	a2,a2,0x2
 240:	24a50004 	addiu	a1,a1,4
    }
  for (i = 40; i < 60; ++i)
    {
      FUNC (3, i);
    }
  for (i = 60; i < 80; ++i)
 244:	14a9ffec 	bne	a1,t1,1f8 <sha_transform+0x1f8>
 248:	00c83025 	or	a2,a2,t0
    {
      FUNC (4, i);
    }

  sha_info_digest[0] += A;
 24c:	3c040000 	lui	a0,0x0
 250:	014f5021 	addu	t2,t2,t7
 254:	ac8a0000 	sw	t2,0(a0)
  sha_info_digest[1] += B;
 258:	24840000 	addiu	a0,a0,0
 25c:	00ee3821 	addu	a3,a3,t6
 260:	ac870004 	sw	a3,4(a0)
  sha_info_digest[2] += C;
 264:	00cd3021 	addu	a2,a2,t5
 268:	ac860008 	sw	a2,8(a0)
  sha_info_digest[3] += D;
 26c:	006c1821 	addu	v1,v1,t4
 270:	ac83000c 	sw	v1,12(a0)
  sha_info_digest[4] += E;
 274:	004b1021 	addu	v0,v0,t3
 278:	ac820010 	sw	v0,16(a0)
}
 27c:	03e00008 	jr	ra
 280:	27bd0140 	addiu	sp,sp,320

00000284 <memset>:
{
  unsigned long uc;
  unsigned long *p;
  int m;

  m = n / 4;
 284:	04c10002 	bgez	a2,290 <memset+0xc>
 288:	00c01021 	addu	v0,a2,zero
 28c:	24c20003 	addiu	v0,a2,3
  uc = c;
  p = (unsigned long *) s;
  while (e-- > 0)
 290:	18e00009 	blez	a3,2b8 <memset+0x34>
 294:	00021083 	sra	v0,v0,0x2
 298:	24e3ffff 	addiu	v1,a3,-1
 29c:	2406ffff 	addiu	a2,zero,-1
 2a0:	2463ffff 	addiu	v1,v1,-1
 2a4:	1466ffff 	bne	v1,a2,2a4 <memset+0x20>
 2a8:	2463ffff 	addiu	v1,v1,-1
 2ac:	24630001 	addiu	v1,v1,1
#define FUNC(n,i)						\
    temp = ROT32(A,5) + f##n(B,C,D) + E + W[i] + CONST##n;	\
    E = D; D = C; C = ROT32(B,30); B = A; A = temp

void
memset (LONG * s, int c, int n, int e)
 2b0:	00073880 	sll	a3,a3,0x2
  int m;

  m = n / 4;
  uc = c;
  p = (unsigned long *) s;
  while (e-- > 0)
 2b4:	00872021 	addu	a0,a0,a3
    {
      p++;
    }
  while (m-- > 0)
 2b8:	18400006 	blez	v0,2d4 <memset+0x50>
 2bc:	2442ffff 	addiu	v0,v0,-1
 2c0:	2403ffff 	addiu	v1,zero,-1
    {
      *p++ = uc;
 2c4:	ac850000 	sw	a1,0(a0)
  p = (unsigned long *) s;
  while (e-- > 0)
    {
      p++;
    }
  while (m-- > 0)
 2c8:	2442ffff 	addiu	v0,v0,-1
 2cc:	1443fffd 	bne	v0,v1,2c4 <memset+0x40>
 2d0:	24840004 	addiu	a0,a0,4
 2d4:	03e00008 	jr	ra
 2d8:	00000000 	sll	zero,zero,0x0

000002dc <memcpy>:
{
  unsigned long *p1;
  unsigned char *p2;
  unsigned long tmp;
  int m;
  m = n / 4;
 2dc:	04c10002 	bgez	a2,2e8 <memcpy+0xc>
 2e0:	00c01021 	addu	v0,a2,zero
 2e4:	24c20003 	addiu	v0,a2,3
 2e8:	00021083 	sra	v0,v0,0x2
  p1 = (unsigned long *) s1;
  p2 = (unsigned char *) s2;

  while (m-- > 0)
 2ec:	18400015 	blez	v0,344 <memcpy+0x68>
 2f0:	2442ffff 	addiu	v0,v0,-1
 2f4:	2407ffff 	addiu	a3,zero,-1
    {
      tmp = 0;
      tmp |= 0xFF & *p2++;
      tmp |= (0xFF & *p2++) << 8;
 2f8:	90a60001 	lbu	a2,1(a1)
 2fc:	00000000 	sll	zero,zero,0x0
 300:	00063200 	sll	a2,a2,0x8
      tmp |= (0xFF & *p2++) << 16;
 304:	90a30002 	lbu	v1,2(a1)
 308:	00000000 	sll	zero,zero,0x0
 30c:	00031c00 	sll	v1,v1,0x10

  while (m-- > 0)
    {
      tmp = 0;
      tmp |= 0xFF & *p2++;
      tmp |= (0xFF & *p2++) << 8;
 310:	00c31825 	or	v1,a2,v1
  p2 = (unsigned char *) s2;

  while (m-- > 0)
    {
      tmp = 0;
      tmp |= 0xFF & *p2++;
 314:	90a60000 	lbu	a2,0(a1)
 318:	00000000 	sll	zero,zero,0x0
      tmp |= (0xFF & *p2++) << 8;
      tmp |= (0xFF & *p2++) << 16;
 31c:	00661825 	or	v1,v1,a2
      tmp |= (0xFF & *p2++) << 24;
 320:	90a60003 	lbu	a2,3(a1)
 324:	00000000 	sll	zero,zero,0x0
 328:	00063600 	sll	a2,a2,0x18
 32c:	00661825 	or	v1,v1,a2
      *p++ = uc;
    }
}

void
memcpy (LONG * s1, const BYTE * s2, int n)
 330:	24a50004 	addiu	a1,a1,4
      tmp = 0;
      tmp |= 0xFF & *p2++;
      tmp |= (0xFF & *p2++) << 8;
      tmp |= (0xFF & *p2++) << 16;
      tmp |= (0xFF & *p2++) << 24;
      *p1 = tmp;
 334:	ac830000 	sw	v1,0(a0)
  int m;
  m = n / 4;
  p1 = (unsigned long *) s1;
  p2 = (unsigned char *) s2;

  while (m-- > 0)
 338:	2442ffff 	addiu	v0,v0,-1
 33c:	1447ffee 	bne	v0,a3,2f8 <memcpy+0x1c>
 340:	24840004 	addiu	a0,a0,4
 344:	03e00008 	jr	ra
 348:	00000000 	sll	zero,zero,0x0

0000034c <sha_init>:
/* initialize the SHA digest */

void
sha_init ()
{
  sha_info_digest[0] = 0x67452301L;
 34c:	3c020000 	lui	v0,0x0
 350:	3c036745 	lui	v1,0x6745
 354:	24632301 	addiu	v1,v1,8961
 358:	ac430000 	sw	v1,0(v0)
  sha_info_digest[1] = 0xefcdab89L;
 35c:	24420000 	addiu	v0,v0,0
 360:	3c03efcd 	lui	v1,0xefcd
 364:	3463ab89 	ori	v1,v1,0xab89
 368:	ac430004 	sw	v1,4(v0)
  sha_info_digest[2] = 0x98badcfeL;
 36c:	3c0398ba 	lui	v1,0x98ba
 370:	3463dcfe 	ori	v1,v1,0xdcfe
 374:	ac430008 	sw	v1,8(v0)
  sha_info_digest[3] = 0x10325476L;
 378:	3c031032 	lui	v1,0x1032
 37c:	24635476 	addiu	v1,v1,21622
 380:	ac43000c 	sw	v1,12(v0)
  sha_info_digest[4] = 0xc3d2e1f0L;
 384:	3c03c3d2 	lui	v1,0xc3d2
 388:	3463e1f0 	ori	v1,v1,0xe1f0
 38c:	ac430010 	sw	v1,16(v0)
  sha_info_count_lo = 0L;
 390:	af800000 	sw	zero,0(gp)
  sha_info_count_hi = 0L;
}
 394:	03e00008 	jr	ra
 398:	af800000 	sw	zero,0(gp)

0000039c <sha_update>:

/* update the SHA digest */

void
sha_update (const BYTE * buffer, int count)
{
 39c:	27bdffd8 	addiu	sp,sp,-40
 3a0:	afbf0024 	sw	ra,36(sp)
 3a4:	afb40020 	sw	s4,32(sp)
 3a8:	afb3001c 	sw	s3,28(sp)
 3ac:	afb20018 	sw	s2,24(sp)
 3b0:	afb10014 	sw	s1,20(sp)
 3b4:	afb00010 	sw	s0,16(sp)
 3b8:	00808821 	addu	s1,a0,zero
 3bc:	00a0a021 	addu	s4,a1,zero
  if ((sha_info_count_lo + ((LONG) count << 3)) < sha_info_count_lo)
 3c0:	8f830000 	lw	v1,0(gp)
 3c4:	000510c0 	sll	v0,a1,0x3
 3c8:	00431021 	addu	v0,v0,v1
 3cc:	0043182b 	sltu	v1,v0,v1
 3d0:	10600005 	beqz	v1,3e8 <sha_update+0x4c>
 3d4:	00a09021 	addu	s2,a1,zero
    {
      ++sha_info_count_hi;
 3d8:	8f830000 	lw	v1,0(gp)
 3dc:	00000000 	sll	zero,zero,0x0
 3e0:	24630001 	addiu	v1,v1,1
 3e4:	af830000 	sw	v1,0(gp)
    }
  sha_info_count_lo += (LONG) count << 3;
 3e8:	af820000 	sw	v0,0(gp)
  sha_info_count_hi += (LONG) count >> 29;
 3ec:	00121742 	srl	v0,s2,0x1d
 3f0:	8f830000 	lw	v1,0(gp)
 3f4:	00000000 	sll	zero,zero,0x0
 3f8:	00621021 	addu	v0,v1,v0
 3fc:	af820000 	sw	v0,0(gp)
  while (count >= SHA_BLOCKSIZE)
 400:	2a820040 	slti	v0,s4,64
 404:	14400015 	bnez	v0,45c <sha_update+0xc0>
 408:	00008021 	addu	s0,zero,zero
    {
      memcpy (sha_info_data, buffer, SHA_BLOCKSIZE);
 40c:	3c130000 	lui	s3,0x0
 410:	26730000 	addiu	s3,s3,0
 414:	02602021 	addu	a0,s3,zero
 418:	02302823 	subu	a1,s1,s0
 41c:	0c000000 	jal	0 <sha_transform>
 420:	24060040 	addiu	a2,zero,64
      sha_transform ();
 424:	0c000000 	jal	0 <sha_transform>
 428:	2610ffc0 	addiu	s0,s0,-64
}

/* update the SHA digest */

void
sha_update (const BYTE * buffer, int count)
 42c:	02501021 	addu	v0,s2,s0
    {
      ++sha_info_count_hi;
    }
  sha_info_count_lo += (LONG) count << 3;
  sha_info_count_hi += (LONG) count >> 29;
  while (count >= SHA_BLOCKSIZE)
 430:	28420040 	slti	v0,v0,64
 434:	1040fff8 	beqz	v0,418 <sha_update+0x7c>
 438:	02602021 	addu	a0,s3,zero
}

/* update the SHA digest */

void
sha_update (const BYTE * buffer, int count)
 43c:	2652ffc0 	addiu	s2,s2,-64
 440:	00129182 	srl	s2,s2,0x6
 444:	26420001 	addiu	v0,s2,1
 448:	00021180 	sll	v0,v0,0x6
 44c:	02228821 	addu	s1,s1,v0
 450:	2694ffc0 	addiu	s4,s4,-64
 454:	00129180 	sll	s2,s2,0x6
 458:	0292a023 	subu	s4,s4,s2
      memcpy (sha_info_data, buffer, SHA_BLOCKSIZE);
      sha_transform ();
      buffer += SHA_BLOCKSIZE;
      count -= SHA_BLOCKSIZE;
    }
  memcpy (sha_info_data, buffer, count);
 45c:	3c040000 	lui	a0,0x0
 460:	24840000 	addiu	a0,a0,0
 464:	02202821 	addu	a1,s1,zero
 468:	0c000000 	jal	0 <sha_transform>
 46c:	02803021 	addu	a2,s4,zero
}
 470:	8fbf0024 	lw	ra,36(sp)
 474:	8fb40020 	lw	s4,32(sp)
 478:	8fb3001c 	lw	s3,28(sp)
 47c:	8fb20018 	lw	s2,24(sp)
 480:	8fb10014 	lw	s1,20(sp)
 484:	8fb00010 	lw	s0,16(sp)
 488:	03e00008 	jr	ra
 48c:	27bd0028 	addiu	sp,sp,40

00000490 <sha_final>:

/* finish computing the SHA digest */

void
sha_final ()
{
 490:	27bdffe0 	addiu	sp,sp,-32
 494:	afbf001c 	sw	ra,28(sp)
 498:	afb20018 	sw	s2,24(sp)
 49c:	afb10014 	sw	s1,20(sp)
 4a0:	afb00010 	sw	s0,16(sp)
  int count;
  LONG lo_bit_count;
  LONG hi_bit_count;

  lo_bit_count = sha_info_count_lo;
 4a4:	8f900000 	lw	s0,0(gp)
  hi_bit_count = sha_info_count_hi;
 4a8:	8f910000 	lw	s1,0(gp)
  count = (int) ((lo_bit_count >> 3) & 0x3f);
 4ac:	001038c2 	srl	a3,s0,0x3
 4b0:	30e7003f 	andi	a3,a3,0x3f
  sha_info_data[count++] = 0x80;
 4b4:	00071880 	sll	v1,a3,0x2
 4b8:	3c020000 	lui	v0,0x0
 4bc:	24420000 	addiu	v0,v0,0
 4c0:	00621021 	addu	v0,v1,v0
 4c4:	24030080 	addiu	v1,zero,128
 4c8:	ac430000 	sw	v1,0(v0)
 4cc:	24e70001 	addiu	a3,a3,1
  if (count > 56)
 4d0:	28e20039 	slti	v0,a3,57
 4d4:	14400010 	bnez	v0,518 <sha_final+0x88>
 4d8:	3c040000 	lui	a0,0x0
    {
      memset (sha_info_data, 0, 64 - count, count);
 4dc:	3c120000 	lui	s2,0x0
 4e0:	26440000 	addiu	a0,s2,0
 4e4:	00002821 	addu	a1,zero,zero
 4e8:	24060040 	addiu	a2,zero,64
 4ec:	0c000000 	jal	0 <sha_transform>
 4f0:	00c73023 	subu	a2,a2,a3
      sha_transform ();
 4f4:	0c000000 	jal	0 <sha_transform>
 4f8:	00000000 	sll	zero,zero,0x0
      memset (sha_info_data, 0, 56, 0);
 4fc:	26440000 	addiu	a0,s2,0
 500:	00002821 	addu	a1,zero,zero
 504:	24060038 	addiu	a2,zero,56
 508:	0c000000 	jal	0 <sha_transform>
 50c:	00003821 	addu	a3,zero,zero
    }
  else
    {
      memset (sha_info_data, 0, 56 - count, count);
    }
  sha_info_data[14] = hi_bit_count;
 510:	0800014c 	j	530 <sha_final+0xa0>
 514:	3c020000 	lui	v0,0x0
      sha_transform ();
      memset (sha_info_data, 0, 56, 0);
    }
  else
    {
      memset (sha_info_data, 0, 56 - count, count);
 518:	24840000 	addiu	a0,a0,0
 51c:	00002821 	addu	a1,zero,zero
 520:	24060038 	addiu	a2,zero,56
 524:	0c000000 	jal	0 <sha_transform>
 528:	00c73023 	subu	a2,a2,a3
    }
  sha_info_data[14] = hi_bit_count;
 52c:	3c020000 	lui	v0,0x0
 530:	24420000 	addiu	v0,v0,0
 534:	ac510038 	sw	s1,56(v0)
  sha_info_data[15] = lo_bit_count;
  sha_transform ();
 538:	0c000000 	jal	0 <sha_transform>
 53c:	ac50003c 	sw	s0,60(v0)
}
 540:	8fbf001c 	lw	ra,28(sp)
 544:	8fb20018 	lw	s2,24(sp)
 548:	8fb10014 	lw	s1,20(sp)
 54c:	8fb00010 	lw	s0,16(sp)
 550:	03e00008 	jr	ra
 554:	27bd0020 	addiu	sp,sp,32

00000558 <sha_stream>:

/* compute the SHA digest of a FILE stream */
void
sha_stream ()
{
 558:	27bdffe8 	addiu	sp,sp,-24
 55c:	afbf0014 	sw	ra,20(sp)
  int i, j;
  const BYTE *p;

  sha_init ();
 560:	0c000000 	jal	0 <sha_transform>
 564:	afb00010 	sw	s0,16(sp)
  for (j = 0; j < VSIZE; j++)
    {
      i = in_i[j];
      p = &indata[j][0];
 568:	3c100000 	lui	s0,0x0
 56c:	26100000 	addiu	s0,s0,0
      sha_update (p, i);
 570:	02002021 	addu	a0,s0,zero
 574:	0c000000 	jal	0 <sha_transform>
 578:	24052000 	addiu	a1,zero,8192
 57c:	26042000 	addiu	a0,s0,8192
 580:	0c000000 	jal	0 <sha_transform>
 584:	24052000 	addiu	a1,zero,8192
    }
  sha_final ();
 588:	0c000000 	jal	0 <sha_transform>
 58c:	00000000 	sll	zero,zero,0x0
}
 590:	8fbf0014 	lw	ra,20(sp)
 594:	8fb00010 	lw	s0,16(sp)
 598:	03e00008 	jr	ra
 59c:	27bd0018 	addiu	sp,sp,24

000005a0 <main>:
const LONG outData[5] =
  { 0x006a5a37UL, 0x93dc9485UL, 0x2c412112UL, 0x63f7ba43UL, 0xad73f922UL };

int
main ()
{
 5a0:	27bdffe8 	addiu	sp,sp,-24
 5a4:	afbf0014 	sw	ra,20(sp)
  int i;
  int main_result;
      main_result = 0;
      sha_stream ();
 5a8:	0c000000 	jal	0 <sha_transform>
 5ac:	afb00010 	sw	s0,16(sp)
 5b0:	00001021 	addu	v0,zero,zero
int
main ()
{
  int i;
  int main_result;
      main_result = 0;
 5b4:	00008021 	addu	s0,zero,zero
*/
const LONG outData[5] =
  { 0x006a5a37UL, 0x93dc9485UL, 0x2c412112UL, 0x63f7ba43UL, 0xad73f922UL };

int
main ()
 5b8:	3c070000 	lui	a3,0x0
 5bc:	24e70000 	addiu	a3,a3,0
 5c0:	3c060000 	lui	a2,0x0
 5c4:	24c60000 	addiu	a2,a2,0
  int i;
  int main_result;
      main_result = 0;
      sha_stream ();

      for (i = 0; i < 5; i++)
 5c8:	24050014 	addiu	a1,zero,20
*/
const LONG outData[5] =
  { 0x006a5a37UL, 0x93dc9485UL, 0x2c412112UL, 0x63f7ba43UL, 0xad73f922UL };

int
main ()
 5cc:	00e22021 	addu	a0,a3,v0
 5d0:	00c21821 	addu	v1,a2,v0
      sha_stream ();

      for (i = 0; i < 5; i++)
	{

	  main_result += (sha_info_digest[i] != outData[i]);
 5d4:	8c840000 	lw	a0,0(a0)
 5d8:	8c630000 	lw	v1,0(v1)
 5dc:	00000000 	sll	zero,zero,0x0
 5e0:	00831826 	xor	v1,a0,v1
 5e4:	0003182b 	sltu	v1,zero,v1
 5e8:	24420004 	addiu	v0,v0,4
  int i;
  int main_result;
      main_result = 0;
      sha_stream ();

      for (i = 0; i < 5; i++)
 5ec:	1445fff7 	bne	v0,a1,5cc <main+0x2c>
 5f0:	02038021 	addu	s0,s0,v1
	{

	  main_result += (sha_info_digest[i] != outData[i]);
	}
      printf ("%d\n", main_result);
 5f4:	3c040000 	lui	a0,0x0
 5f8:	24840000 	addiu	a0,a0,0
 5fc:	0c000000 	jal	0 <sha_transform>
 600:	02002821 	addu	a1,s0,zero

      return main_result;
    }
 604:	02001021 	addu	v0,s0,zero
 608:	8fbf0014 	lw	ra,20(sp)
 60c:	8fb00010 	lw	s0,16(sp)
 610:	03e00008 	jr	ra
 614:	27bd0018 	addiu	sp,sp,24

Disassembly of section .rodata:

00000000 <indata>:
       0:	4b757274 	c2	0x1757274
       4:	566f6e6e 	0x566f6e6e
       8:	65677574 	0x65677574
       c:	73436f6d 	0x73436f6d
      10:	6d656e63 	0x6d656e63
      14:	656d656e 	0x656d656e
      18:	74416464 	jalx	1059190 <outData+0x1055190>
      1c:	72657373 	0x72657373
      20:	61744d49 	0x61744d49
      24:	544c6164 	0x544c6164
      28:	69657361 	0x69657361
      2c:	6e646765 	0x6e646765
      30:	6e746c65 	0x6e746c65
      34:	6d656e6f 	0x6d656e6f
      38:	66746865 	0x66746865
      3c:	636c6173 	0x636c6173
      40:	736f6639 	0x736f6639
      44:	37576561 	ori	s7,k0,0x6561
      48:	7273756e 	0x7273756e
      4c:	73637265 	0x73637265
      50:	656e4966 	0x656e4966
      54:	49636f75 	0x49636f75
      58:	6c646f66 	0x6c646f66
      5c:	66657279 	0x66657279
      60:	6f756f6e 	0x6f756f6e
      64:	6c796f6e 	0x6c796f6e
      68:	65746970 	0x65746970
      6c:	666f7274 	0x666f7274
      70:	68656675 	0x68656675
      74:	74757265 	jalx	1d5c994 <outData+0x1d58994>
      78:	73756e73 	0x73756e73
      7c:	63726565 	0x63726565
      80:	6e776f75 	0x6e776f75
      84:	6c646265 	0x6c646265
      88:	69745468 	0x69745468
      8c:	656c6f6e 	0x656c6f6e
      90:	67746572 	0x67746572
      94:	6d62656e 	0x6d62656e
      98:	65666974 	0x65666974
      9c:	736f6673 	0x736f6673
      a0:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
      a4:	7265656e 	0x7265656e
      a8:	68617665 	0x68617665
      ac:	6265656e 	0x6265656e
      b0:	70726f76 	0x70726f76
      b4:	65646279 	0x65646279
      b8:	73636965 	0x73636965
      bc:	6e746973 	0x6e746973
      c0:	74737768 	jalx	1cddda0 <outData+0x1cd9da0>
      c4:	65726561 	0x65726561
      c8:	73746865 	0x73746865
      cc:	72657374 	0x72657374
      d0:	6f666d79 	0x6f666d79
      d4:	61647669 	0x61647669
      d8:	63656861 	0x63656861
      dc:	736e6f62 	0x736e6f62
      e0:	61736973 	0x61736973
      e4:	6d6f7265 	0x6d6f7265
      e8:	72656c69 	0x72656c69
      ec:	61626c65 	0x61626c65
      f0:	7468616e 	jalx	1a185b8 <outData+0x1a145b8>
      f4:	6d796f77 	0x6d796f77
      f8:	6e6d6561 	0x6e6d6561
      fc:	6e646572 	0x6e646572
     100:	696e6765 	0x696e6765
     104:	78706572 	0x78706572
     108:	69656e63 	0x69656e63
     10c:	65497769 	0x65497769
     110:	6c6c6469 	0x6c6c6469
     114:	7370656e 	0x7370656e
     118:	73657468 	0x73657468
     11c:	69736164 	0x69736164
     120:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
     124:	6e6f7745 	0x6e6f7745
     128:	6e6a6f79 	0x6e6a6f79
     12c:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
     130:	6f776572 	0x6f776572
     134:	616e6462 	0x616e6462
     138:	65617574 	0x65617574
     13c:	796f6679 	0x796f6679
     140:	6f757279 	0x6f757279
     144:	6f757468 	0x6f757468
     148:	4f686e65 	c3	0x1686e65
     14c:	7665726d 	jalx	995c9b4 <outData+0x99589b4>
     150:	696e6459 	0x696e6459
     154:	6f757769 	0x6f757769
     158:	6c6c6e6f 	0x6c6c6e6f
     15c:	74756e64 	jalx	1d5b990 <outData+0x1d57990>
     160:	65727374 	0x65727374
     164:	616e6474 	0x616e6474
     168:	6865706f 	0x6865706f
     16c:	77657261 	jalx	d95c984 <outData+0xd958984>
     170:	6e646265 	0x6e646265
     174:	61757479 	0x61757479
     178:	6f66796f 	0x6f66796f
     17c:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
     180:	75746875 	jalx	5d1a1d4 <outData+0x5d161d4>
     184:	6e74696c 	0x6e74696c
     188:	74686579 	jalx	1a195e4 <outData+0x1a155e4>
     18c:	76656661 	jalx	9959984 <outData+0x9955984>
     190:	64656442 	0x64656442
     194:	75747472 	jalx	5d1d1c8 <outData+0x5d191c8>
     198:	7573746d 	jalx	5cdd1b4 <outData+0x5cd91b4>
     19c:	65696e32 	0x65696e32
     1a0:	30796561 	andi	t9,v1,0x6561
     1a4:	7273796f 	0x7273796f
     1a8:	756c6c6c 	jalx	5b1b1b0 <outData+0x5b171b0>
     1ac:	6f6f6b62 	0x6f6f6b62
     1b0:	61636b61 	0x61636b61
     1b4:	7470686f 	jalx	1c1a1bc <outData+0x1c161bc>
     1b8:	746f736f 	jalx	1bdcdbc <outData+0x1bd8dbc>
     1bc:	66796f75 	0x66796f75
     1c0:	7273656c 	0x7273656c
     1c4:	66616e64 	0x66616e64
     1c8:	72656361 	0x72656361
     1cc:	6c6c696e 	0x6c6c696e
     1d0:	61776179 	0x61776179
     1d4:	796f7563 	0x796f7563
     1d8:	616e7467 	0x616e7467
     1dc:	72617370 	0x72617370
     1e0:	6e6f7768 	0x6e6f7768
     1e4:	6f776d75 	0x6f776d75
     1e8:	6368706f 	0x6368706f
     1ec:	73736962 	0x73736962
     1f0:	696c6974 	0x696c6974
     1f4:	796c6179 	0x796c6179
     1f8:	6265666f 	0x6265666f
     1fc:	7265796f 	0x7265796f
     200:	75616e64 	jalx	585b990 <outData+0x5857990>
     204:	686f7766 	0x686f7766
     208:	6162756c 	0x6162756c
     20c:	6f757379 	0x6f757379
     210:	6f757265 	0x6f757265
     214:	616c6c79 	0x616c6c79
     218:	6c6f6f6b 	0x6c6f6f6b
     21c:	6564596f 	0x6564596f
     220:	75617265 	jalx	585c994 <outData+0x5858994>
     224:	6e6f7461 	0x6e6f7461
     228:	73666174 	0x73666174
     22c:	6173796f 	0x6173796f
     230:	75696d61 	jalx	5a5b584 <outData+0x5a57584>
     234:	67696e65 	0x67696e65
     238:	446f6e74 	0x446f6e74
     23c:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
     240:	7961626f 	0x7961626f
     244:	75747468 	jalx	5d1d1a0 <outData+0x5d191a0>
     248:	65667574 	0x65667574
     24c:	7572654f 	jalx	5c9953c <outData+0x5c9553c>
     250:	72776f72 	0x72776f72
     254:	72796275 	0x72796275
     258:	746b6e6f 	jalx	1adb9bc <outData+0x1ad79bc>
     25c:	77746861 	jalx	dd1a184 <outData+0xdd16184>
     260:	744b7572 	jalx	12dd5c8 <outData+0x12d95c8>
     264:	74566f6e 	jalx	159bdb8 <outData+0x1597db8>
     268:	6e656775 	0x6e656775
     26c:	4b757274 	c2	0x1757274
     270:	566f6e6e 	0x566f6e6e
     274:	65677574 	0x65677574
     278:	73436f6d 	0x73436f6d
     27c:	6d656e63 	0x6d656e63
     280:	656d656e 	0x656d656e
     284:	74416464 	jalx	1059190 <outData+0x1055190>
     288:	72657373 	0x72657373
     28c:	61744d49 	0x61744d49
     290:	544c6164 	0x544c6164
     294:	69657361 	0x69657361
     298:	6e646765 	0x6e646765
     29c:	6e746c65 	0x6e746c65
     2a0:	6d656e6f 	0x6d656e6f
     2a4:	66746865 	0x66746865
     2a8:	636c6173 	0x636c6173
     2ac:	736f6639 	0x736f6639
     2b0:	37576561 	ori	s7,k0,0x6561
     2b4:	7273756e 	0x7273756e
     2b8:	73637265 	0x73637265
     2bc:	656e4966 	0x656e4966
     2c0:	49636f75 	0x49636f75
     2c4:	6c646f66 	0x6c646f66
     2c8:	66657279 	0x66657279
     2cc:	6f756f6e 	0x6f756f6e
     2d0:	6c796f6e 	0x6c796f6e
     2d4:	65746970 	0x65746970
     2d8:	666f7274 	0x666f7274
     2dc:	68656675 	0x68656675
     2e0:	74757265 	jalx	1d5c994 <outData+0x1d58994>
     2e4:	73756e73 	0x73756e73
     2e8:	63726565 	0x63726565
     2ec:	6e776f75 	0x6e776f75
     2f0:	6c646265 	0x6c646265
     2f4:	69745468 	0x69745468
     2f8:	656c6f6e 	0x656c6f6e
     2fc:	67746572 	0x67746572
     300:	6d62656e 	0x6d62656e
     304:	65666974 	0x65666974
     308:	736f6673 	0x736f6673
     30c:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
     310:	7265656e 	0x7265656e
     314:	68617665 	0x68617665
     318:	6265656e 	0x6265656e
     31c:	70726f76 	0x70726f76
     320:	65646279 	0x65646279
     324:	73636965 	0x73636965
     328:	6e746973 	0x6e746973
     32c:	74737768 	jalx	1cddda0 <outData+0x1cd9da0>
     330:	65726561 	0x65726561
     334:	73746865 	0x73746865
     338:	72657374 	0x72657374
     33c:	6f666d79 	0x6f666d79
     340:	61647669 	0x61647669
     344:	63656861 	0x63656861
     348:	736e6f62 	0x736e6f62
     34c:	61736973 	0x61736973
     350:	6d6f7265 	0x6d6f7265
     354:	72656c69 	0x72656c69
     358:	61626c65 	0x61626c65
     35c:	7468616e 	jalx	1a185b8 <outData+0x1a145b8>
     360:	6d796f77 	0x6d796f77
     364:	6e6d6561 	0x6e6d6561
     368:	6e646572 	0x6e646572
     36c:	696e6765 	0x696e6765
     370:	78706572 	0x78706572
     374:	69656e63 	0x69656e63
     378:	65497769 	0x65497769
     37c:	6c6c6469 	0x6c6c6469
     380:	7370656e 	0x7370656e
     384:	73657468 	0x73657468
     388:	69736164 	0x69736164
     38c:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
     390:	6e6f7745 	0x6e6f7745
     394:	6e6a6f79 	0x6e6a6f79
     398:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
     39c:	6f776572 	0x6f776572
     3a0:	616e6462 	0x616e6462
     3a4:	65617574 	0x65617574
     3a8:	796f6679 	0x796f6679
     3ac:	6f757279 	0x6f757279
     3b0:	6f757468 	0x6f757468
     3b4:	4f686e65 	c3	0x1686e65
     3b8:	7665726d 	jalx	995c9b4 <outData+0x99589b4>
     3bc:	696e6459 	0x696e6459
     3c0:	6f757769 	0x6f757769
     3c4:	6c6c6e6f 	0x6c6c6e6f
     3c8:	74756e64 	jalx	1d5b990 <outData+0x1d57990>
     3cc:	65727374 	0x65727374
     3d0:	616e6474 	0x616e6474
     3d4:	6865706f 	0x6865706f
     3d8:	77657261 	jalx	d95c984 <outData+0xd958984>
     3dc:	6e646265 	0x6e646265
     3e0:	61757479 	0x61757479
     3e4:	6f66796f 	0x6f66796f
     3e8:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
     3ec:	75746875 	jalx	5d1a1d4 <outData+0x5d161d4>
     3f0:	6e74696c 	0x6e74696c
     3f4:	74686579 	jalx	1a195e4 <outData+0x1a155e4>
     3f8:	76656661 	jalx	9959984 <outData+0x9955984>
     3fc:	64656442 	0x64656442
     400:	75747472 	jalx	5d1d1c8 <outData+0x5d191c8>
     404:	7573746d 	jalx	5cdd1b4 <outData+0x5cd91b4>
     408:	65696e32 	0x65696e32
     40c:	30796561 	andi	t9,v1,0x6561
     410:	7273796f 	0x7273796f
     414:	756c6c6c 	jalx	5b1b1b0 <outData+0x5b171b0>
     418:	6f6f6b62 	0x6f6f6b62
     41c:	61636b61 	0x61636b61
     420:	7470686f 	jalx	1c1a1bc <outData+0x1c161bc>
     424:	746f736f 	jalx	1bdcdbc <outData+0x1bd8dbc>
     428:	66796f75 	0x66796f75
     42c:	7273656c 	0x7273656c
     430:	66616e64 	0x66616e64
     434:	72656361 	0x72656361
     438:	6c6c696e 	0x6c6c696e
     43c:	61776179 	0x61776179
     440:	796f7563 	0x796f7563
     444:	616e7467 	0x616e7467
     448:	72617370 	0x72617370
     44c:	6e6f7768 	0x6e6f7768
     450:	6f776d75 	0x6f776d75
     454:	6368706f 	0x6368706f
     458:	73736962 	0x73736962
     45c:	696c6974 	0x696c6974
     460:	796c6179 	0x796c6179
     464:	6265666f 	0x6265666f
     468:	7265796f 	0x7265796f
     46c:	75616e64 	jalx	585b990 <outData+0x5857990>
     470:	686f7766 	0x686f7766
     474:	6162756c 	0x6162756c
     478:	6f757379 	0x6f757379
     47c:	6f757265 	0x6f757265
     480:	616c6c79 	0x616c6c79
     484:	6c6f6f6b 	0x6c6f6f6b
     488:	6564596f 	0x6564596f
     48c:	75617265 	jalx	585c994 <outData+0x5858994>
     490:	6e6f7461 	0x6e6f7461
     494:	73666174 	0x73666174
     498:	6173796f 	0x6173796f
     49c:	75696d61 	jalx	5a5b584 <outData+0x5a57584>
     4a0:	67696e65 	0x67696e65
     4a4:	446f6e74 	0x446f6e74
     4a8:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
     4ac:	7961626f 	0x7961626f
     4b0:	75747468 	jalx	5d1d1a0 <outData+0x5d191a0>
     4b4:	65667574 	0x65667574
     4b8:	7572654f 	jalx	5c9953c <outData+0x5c9553c>
     4bc:	72776f72 	0x72776f72
     4c0:	72796275 	0x72796275
     4c4:	746b6e6f 	jalx	1adb9bc <outData+0x1ad79bc>
     4c8:	77746861 	jalx	dd1a184 <outData+0xdd16184>
     4cc:	744b7572 	jalx	12dd5c8 <outData+0x12d95c8>
     4d0:	74566f6e 	jalx	159bdb8 <outData+0x1597db8>
     4d4:	6e656775 	0x6e656775
     4d8:	7473436f 	jalx	1cd0dbc <outData+0x1cccdbc>
     4dc:	6d6d656e 	0x6d6d656e
     4e0:	63656d65 	0x63656d65
     4e4:	6e744164 	0x6e744164
     4e8:	64726573 	0x64726573
     4ec:	7361744d 	0x7361744d
     4f0:	49544c61 	0x49544c61
     4f4:	64696573 	0x64696573
     4f8:	616e6467 	0x616e6467
     4fc:	656e746c 	0x656e746c
     500:	656d656e 	0x656d656e
     504:	6f667468 	0x6f667468
     508:	65636c61 	0x65636c61
     50c:	73736f66 	0x73736f66
     510:	39375765 	xori	s7,t1,0x5765
     514:	61727375 	0x61727375
     518:	6e736372 	0x6e736372
     51c:	65656e49 	0x65656e49
     520:	6649636f 	0x6649636f
     524:	756c646f 	jalx	5b191bc <outData+0x5b151bc>
     528:	66666572 	0x66666572
     52c:	796f756f 	0x796f756f
     530:	6e6c796f 	0x6e6c796f
     534:	6e657469 	0x6e657469
     538:	70666f72 	0x70666f72
     53c:	74686566 	jalx	1a19598 <outData+0x1a15598>
     540:	75747572 	jalx	5d1d5c8 <outData+0x5d195c8>
     544:	6573756e 	0x6573756e
     548:	73637265 	0x73637265
     54c:	656e776f 	0x656e776f
     550:	756c6462 	jalx	5b19188 <outData+0x5b15188>
     554:	65697454 	0x65697454
     558:	68656c6f 	0x68656c6f
     55c:	6e677465 	0x6e677465
     560:	726d6265 	0x726d6265
     564:	6e656669 	0x6e656669
     568:	74736f66 	jalx	1cdbd98 <outData+0x1cd7d98>
     56c:	73756e73 	0x73756e73
     570:	63726565 	0x63726565
     574:	6e686176 	0x6e686176
     578:	65626565 	0x65626565
     57c:	6e70726f 	0x6e70726f
     580:	76656462 	jalx	9959188 <outData+0x9955188>
     584:	79736369 	0x79736369
     588:	656e7469 	0x656e7469
     58c:	73747377 	0x73747377
     590:	68657265 	0x68657265
     594:	61737468 	0x61737468
     598:	65726573 	0x65726573
     59c:	746f666d 	jalx	1bd99b4 <outData+0x1bd59b4>
     5a0:	79616476 	0x79616476
     5a4:	69636568 	0x69636568
     5a8:	61736e6f 	0x61736e6f
     5ac:	62617369 	0x62617369
     5b0:	736d6f72 	0x736d6f72
     5b4:	6572656c 	0x6572656c
     5b8:	6961626c 	0x6961626c
     5bc:	65746861 	0x65746861
     5c0:	6e6d796f 	0x6e6d796f
     5c4:	776e6d65 	jalx	db9b594 <outData+0xdb97594>
     5c8:	616e6465 	0x616e6465
     5cc:	72696e67 	0x72696e67
     5d0:	65787065 	0x65787065
     5d4:	7269656e 	0x7269656e
     5d8:	63654977 	0x63654977
     5dc:	696c6c64 	0x696c6c64
     5e0:	69737065 	0x69737065
     5e4:	6e736574 	0x6e736574
     5e8:	68697361 	0x68697361
     5ec:	64766963 	0x64766963
     5f0:	656e6f77 	0x656e6f77
     5f4:	456e6a6f 	0x456e6a6f
     5f8:	79746865 	0x79746865
     5fc:	706f7765 	0x706f7765
     600:	72616e64 	0x72616e64
     604:	62656175 	0x62656175
     608:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
     60c:	796f7572 	0x796f7572
     610:	796f7574 	0x796f7574
     614:	684f686e 	0x684f686e
     618:	65766572 	0x65766572
     61c:	6d696e64 	0x6d696e64
     620:	596f7577 	0x596f7577
     624:	696c6c6e 	0x696c6c6e
     628:	6f74756e 	0x6f74756e
     62c:	64657273 	0x64657273
     630:	74616e64 	jalx	185b990 <outData+0x1857990>
     634:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
     638:	6f776572 	0x6f776572
     63c:	616e6462 	0x616e6462
     640:	65617574 	0x65617574
     644:	796f6679 	0x796f6679
     648:	6f757279 	0x6f757279
     64c:	6f757468 	0x6f757468
     650:	756e7469 	jalx	5b9d1a4 <outData+0x5b991a4>
     654:	6c746865 	0x6c746865
     658:	79766566 	0x79766566
     65c:	61646564 	0x61646564
     660:	42757474 	c0	0x757474
     664:	72757374 	0x72757374
     668:	6d65696e 	0x6d65696e
     66c:	32307965 	andi	s0,s1,0x7965
     670:	61727379 	0x61727379
     674:	6f756c6c 	0x6f756c6c
     678:	6c6f6f6b 	0x6c6f6f6b
     67c:	6261636b 	0x6261636b
     680:	61747068 	0x61747068
     684:	6f746f73 	0x6f746f73
     688:	6f66796f 	0x6f66796f
     68c:	75727365 	jalx	5c9cd94 <outData+0x5c98d94>
     690:	6c66616e 	0x6c66616e
     694:	64726563 	0x64726563
     698:	616c6c69 	0x616c6c69
     69c:	6e617761 	0x6e617761
     6a0:	79796f75 	0x79796f75
     6a4:	63616e74 	0x63616e74
     6a8:	67726173 	0x67726173
     6ac:	706e6f77 	0x706e6f77
     6b0:	686f776d 	0x686f776d
     6b4:	75636870 	jalx	58da1c0 <outData+0x58d61c0>
     6b8:	6f737369 	0x6f737369
     6bc:	62696c69 	0x62696c69
     6c0:	74796c61 	jalx	1e5b184 <outData+0x1e57184>
     6c4:	79626566 	0x79626566
     6c8:	6f726579 	0x6f726579
     6cc:	6f75616e 	0x6f75616e
     6d0:	64686f77 	0x64686f77
     6d4:	66616275 	0x66616275
     6d8:	6c6f7573 	0x6c6f7573
     6dc:	796f7572 	0x796f7572
     6e0:	65616c6c 	0x65616c6c
     6e4:	796c6f6f 	0x796c6f6f
     6e8:	6b656459 	0x6b656459
     6ec:	6f756172 	0x6f756172
     6f0:	656e6f74 	0x656e6f74
     6f4:	61736661 	0x61736661
     6f8:	74617379 	jalx	185cde4 <outData+0x1858de4>
     6fc:	6f75696d 	0x6f75696d
     700:	6167696e 	0x6167696e
     704:	65446f6e 	0x65446f6e
     708:	74776f72 	jalx	1ddbdc8 <outData+0x1dd7dc8>
     70c:	72796162 	0x72796162
     710:	6f757474 	0x6f757474
     714:	68656675 	0x68656675
     718:	74757265 	jalx	1d5c994 <outData+0x1d58994>
     71c:	4f72776f 	c3	0x172776f
     720:	72727962 	0x72727962
     724:	75746b6e 	jalx	5d1adb8 <outData+0x5d16db8>
     728:	6f777468 	0x6f777468
     72c:	61744b75 	0x61744b75
     730:	7274566f 	0x7274566f
     734:	6e6e6567 	0x6e6e6567
     738:	75747343 	jalx	5d1cd0c <outData+0x5d18d0c>
     73c:	6f6d6d65 	0x6f6d6d65
     740:	6e63656d 	0x6e63656d
     744:	656e7441 	0x656e7441
     748:	64647265 	0x64647265
     74c:	73736174 	0x73736174
     750:	4d49544c 	0x4d49544c
     754:	61646965 	0x61646965
     758:	73616e64 	0x73616e64
     75c:	67656e74 	0x67656e74
     760:	6c656d65 	0x6c656d65
     764:	6e6f6674 	0x6e6f6674
     768:	6865636c 	0x6865636c
     76c:	6173736f 	0x6173736f
     770:	66393757 	0x66393757
     774:	65617273 	0x65617273
     778:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
     77c:	7265656e 	0x7265656e
     780:	49664963 	0x49664963
     784:	6f756c64 	0x6f756c64
     788:	6f666665 	0x6f666665
     78c:	72796f75 	0x72796f75
     790:	6f6e6c79 	0x6f6e6c79
     794:	6f6e6574 	0x6f6e6574
     798:	6970666f 	0x6970666f
     79c:	72746865 	0x72746865
     7a0:	66757475 	0x66757475
     7a4:	72657375 	0x72657375
     7a8:	6e736372 	0x6e736372
     7ac:	65656e77 	0x65656e77
     7b0:	6f756c64 	0x6f756c64
     7b4:	62656974 	0x62656974
     7b8:	5468656c 	0x5468656c
     7bc:	6f6e6774 	0x6f6e6774
     7c0:	65726d62 	0x65726d62
     7c4:	656e6566 	0x656e6566
     7c8:	6974736f 	0x6974736f
     7cc:	6673756e 	0x6673756e
     7d0:	73637265 	0x73637265
     7d4:	656e6861 	0x656e6861
     7d8:	76656265 	jalx	9958994 <outData+0x9954994>
     7dc:	656e7072 	0x656e7072
     7e0:	6f766564 	0x6f766564
     7e4:	62797363 	0x62797363
     7e8:	69656e74 	0x69656e74
     7ec:	69737473 	0x69737473
     7f0:	77686572 	jalx	da195c8 <outData+0xda155c8>
     7f4:	65617374 	0x65617374
     7f8:	68657265 	0x68657265
     7fc:	73746f66 	0x73746f66
     800:	6d796164 	0x6d796164
     804:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
     808:	6861736e 	0x6861736e
     80c:	6f626173 	0x6f626173
     810:	69736d6f 	0x69736d6f
     814:	72657265 	0x72657265
     818:	6c696162 	0x6c696162
     81c:	6c657468 	0x6c657468
     820:	616e6d79 	0x616e6d79
     824:	6f776e6d 	0x6f776e6d
     828:	65616e64 	0x65616e64
     82c:	6572696e 	0x6572696e
     830:	67657870 	0x67657870
     834:	65726965 	0x65726965
     838:	6e636549 	0x6e636549
     83c:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
     840:	64697370 	0x64697370
     844:	656e7365 	0x656e7365
     848:	74686973 	jalx	1a1a5cc <outData+0x1a165cc>
     84c:	61647669 	0x61647669
     850:	63656e6f 	0x63656e6f
     854:	77456e6a 	jalx	d15b9a8 <outData+0xd1579a8>
     858:	6f797468 	0x6f797468
     85c:	65706f77 	0x65706f77
     860:	6572616e 	0x6572616e
     864:	64626561 	0x64626561
     868:	7574796f 	jalx	5d1e5bc <outData+0x5d1a5bc>
     86c:	66796f75 	0x66796f75
     870:	72796f75 	0x72796f75
     874:	74684f68 	jalx	1a13da0 <outData+0x1a0fda0>
     878:	6e657665 	0x6e657665
     87c:	726d696e 	0x726d696e
     880:	64596f75 	0x64596f75
     884:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
     888:	6e6f7475 	0x6e6f7475
     88c:	6e646572 	0x6e646572
     890:	7374616e 	0x7374616e
     894:	64746865 	0x64746865
     898:	706f7765 	0x706f7765
     89c:	72616e64 	0x72616e64
     8a0:	62656175 	0x62656175
     8a4:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
     8a8:	796f7572 	0x796f7572
     8ac:	796f7574 	0x796f7574
     8b0:	68756e74 	0x68756e74
     8b4:	696c7468 	0x696c7468
     8b8:	65797665 	0x65797665
     8bc:	66616465 	0x66616465
     8c0:	64427574 	0x64427574
     8c4:	74727573 	jalx	1c9d5cc <outData+0x1c995cc>
     8c8:	746d6569 	jalx	1b595a4 <outData+0x1b555a4>
     8cc:	6e323079 	0x6e323079
     8d0:	65617273 	0x65617273
     8d4:	796f756c 	0x796f756c
     8d8:	6c6c6f6f 	0x6c6c6f6f
     8dc:	6b626163 	0x6b626163
     8e0:	6b617470 	0x6b617470
     8e4:	686f746f 	0x686f746f
     8e8:	736f6679 	0x736f6679
     8ec:	6f757273 	0x6f757273
     8f0:	656c6661 	0x656c6661
     8f4:	6e647265 	0x6e647265
     8f8:	63616c6c 	0x63616c6c
     8fc:	696e6177 	0x696e6177
     900:	6179796f 	0x6179796f
     904:	7563616e 	jalx	58d85b8 <outData+0x58d45b8>
     908:	74677261 	jalx	19dc984 <outData+0x19d8984>
     90c:	73706e6f 	0x73706e6f
     910:	77686f77 	jalx	da1bddc <outData+0xda17ddc>
     914:	6d756368 	0x6d756368
     918:	706f7373 	0x706f7373
     91c:	6962696c 	0x6962696c
     920:	6974796c 	0x6974796c
     924:	61796265 	0x61796265
     928:	666f7265 	0x666f7265
     92c:	796f7561 	0x796f7561
     930:	6e64686f 	0x6e64686f
     934:	77666162 	jalx	d998588 <outData+0xd994588>
     938:	756c6f75 	jalx	5b1bdd4 <outData+0x5b17dd4>
     93c:	73796f75 	0x73796f75
     940:	7265616c 	0x7265616c
     944:	6c796c6f 	0x6c796c6f
     948:	6f6b6564 	0x6f6b6564
     94c:	596f7561 	0x596f7561
     950:	72656e6f 	0x72656e6f
     954:	74617366 	jalx	185cd98 <outData+0x1858d98>
     958:	61746173 	0x61746173
     95c:	796f7569 	0x796f7569
     960:	6d616769 	0x6d616769
     964:	6e65446f 	0x6e65446f
     968:	6e74776f 	0x6e74776f
     96c:	72727961 	0x72727961
     970:	626f7574 	0x626f7574
     974:	74686566 	jalx	1a19598 <outData+0x1a15598>
     978:	75747572 	jalx	5d1d5c8 <outData+0x5d195c8>
     97c:	654f7277 	0x654f7277
     980:	6f727279 	0x6f727279
     984:	4b757274 	c2	0x1757274
     988:	566f6e6e 	0x566f6e6e
     98c:	65677574 	0x65677574
     990:	73436f6d 	0x73436f6d
     994:	6d656e63 	0x6d656e63
     998:	656d656e 	0x656d656e
     99c:	74416464 	jalx	1059190 <outData+0x1055190>
     9a0:	72657373 	0x72657373
     9a4:	61744d49 	0x61744d49
     9a8:	544c6164 	0x544c6164
     9ac:	69657361 	0x69657361
     9b0:	6e646765 	0x6e646765
     9b4:	6e746c65 	0x6e746c65
     9b8:	6d656e6f 	0x6d656e6f
     9bc:	66746865 	0x66746865
     9c0:	636c6173 	0x636c6173
     9c4:	736f6639 	0x736f6639
     9c8:	37576561 	ori	s7,k0,0x6561
     9cc:	7273756e 	0x7273756e
     9d0:	73637265 	0x73637265
     9d4:	656e4966 	0x656e4966
     9d8:	49636f75 	0x49636f75
     9dc:	6c646f66 	0x6c646f66
     9e0:	66657279 	0x66657279
     9e4:	6f756f6e 	0x6f756f6e
     9e8:	6c796f6e 	0x6c796f6e
     9ec:	65746970 	0x65746970
     9f0:	666f7274 	0x666f7274
     9f4:	68656675 	0x68656675
     9f8:	74757265 	jalx	1d5c994 <outData+0x1d58994>
     9fc:	73756e73 	0x73756e73
     a00:	63726565 	0x63726565
     a04:	6e776f75 	0x6e776f75
     a08:	6c646265 	0x6c646265
     a0c:	69745468 	0x69745468
     a10:	656c6f6e 	0x656c6f6e
     a14:	67746572 	0x67746572
     a18:	6d62656e 	0x6d62656e
     a1c:	65666974 	0x65666974
     a20:	736f6673 	0x736f6673
     a24:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
     a28:	7265656e 	0x7265656e
     a2c:	68617665 	0x68617665
     a30:	6265656e 	0x6265656e
     a34:	70726f76 	0x70726f76
     a38:	65646279 	0x65646279
     a3c:	73636965 	0x73636965
     a40:	6e746973 	0x6e746973
     a44:	74737768 	jalx	1cddda0 <outData+0x1cd9da0>
     a48:	65726561 	0x65726561
     a4c:	73746865 	0x73746865
     a50:	72657374 	0x72657374
     a54:	6f666d79 	0x6f666d79
     a58:	61647669 	0x61647669
     a5c:	63656861 	0x63656861
     a60:	736e6f62 	0x736e6f62
     a64:	61736973 	0x61736973
     a68:	6d6f7265 	0x6d6f7265
     a6c:	72656c69 	0x72656c69
     a70:	61626c65 	0x61626c65
     a74:	7468616e 	jalx	1a185b8 <outData+0x1a145b8>
     a78:	6d796f77 	0x6d796f77
     a7c:	6e6d6561 	0x6e6d6561
     a80:	6e646572 	0x6e646572
     a84:	696e6765 	0x696e6765
     a88:	78706572 	0x78706572
     a8c:	69656e63 	0x69656e63
     a90:	65497769 	0x65497769
     a94:	6c6c6469 	0x6c6c6469
     a98:	7370656e 	0x7370656e
     a9c:	73657468 	0x73657468
     aa0:	69736164 	0x69736164
     aa4:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
     aa8:	6e6f7745 	0x6e6f7745
     aac:	6e6a6f79 	0x6e6a6f79
     ab0:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
     ab4:	6f776572 	0x6f776572
     ab8:	616e6462 	0x616e6462
     abc:	65617574 	0x65617574
     ac0:	796f6679 	0x796f6679
     ac4:	6f757279 	0x6f757279
     ac8:	6f757468 	0x6f757468
     acc:	4f686e65 	c3	0x1686e65
     ad0:	7665726d 	jalx	995c9b4 <outData+0x99589b4>
     ad4:	696e6459 	0x696e6459
     ad8:	6f757769 	0x6f757769
     adc:	6c6c6e6f 	0x6c6c6e6f
     ae0:	74756e64 	jalx	1d5b990 <outData+0x1d57990>
     ae4:	65727374 	0x65727374
     ae8:	616e6474 	0x616e6474
     aec:	6865706f 	0x6865706f
     af0:	77657261 	jalx	d95c984 <outData+0xd958984>
     af4:	6e646265 	0x6e646265
     af8:	61757479 	0x61757479
     afc:	6f66796f 	0x6f66796f
     b00:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
     b04:	75746875 	jalx	5d1a1d4 <outData+0x5d161d4>
     b08:	6e74696c 	0x6e74696c
     b0c:	74686579 	jalx	1a195e4 <outData+0x1a155e4>
     b10:	76656661 	jalx	9959984 <outData+0x9955984>
     b14:	64656442 	0x64656442
     b18:	75747472 	jalx	5d1d1c8 <outData+0x5d191c8>
     b1c:	7573746d 	jalx	5cdd1b4 <outData+0x5cd91b4>
     b20:	65696e32 	0x65696e32
     b24:	30796561 	andi	t9,v1,0x6561
     b28:	7273796f 	0x7273796f
     b2c:	756c6c6c 	jalx	5b1b1b0 <outData+0x5b171b0>
     b30:	6f6f6b62 	0x6f6f6b62
     b34:	61636b61 	0x61636b61
     b38:	7470686f 	jalx	1c1a1bc <outData+0x1c161bc>
     b3c:	746f736f 	jalx	1bdcdbc <outData+0x1bd8dbc>
     b40:	66796f75 	0x66796f75
     b44:	7273656c 	0x7273656c
     b48:	66616e64 	0x66616e64
     b4c:	72656361 	0x72656361
     b50:	6c6c696e 	0x6c6c696e
     b54:	61776179 	0x61776179
     b58:	796f7563 	0x796f7563
     b5c:	616e7467 	0x616e7467
     b60:	72617370 	0x72617370
     b64:	6e6f7768 	0x6e6f7768
     b68:	6f776d75 	0x6f776d75
     b6c:	6368706f 	0x6368706f
     b70:	73736962 	0x73736962
     b74:	696c6974 	0x696c6974
     b78:	796c6179 	0x796c6179
     b7c:	6265666f 	0x6265666f
     b80:	7265796f 	0x7265796f
     b84:	75616e64 	jalx	585b990 <outData+0x5857990>
     b88:	686f7766 	0x686f7766
     b8c:	6162756c 	0x6162756c
     b90:	6f757379 	0x6f757379
     b94:	6f757265 	0x6f757265
     b98:	616c6c79 	0x616c6c79
     b9c:	6c6f6f6b 	0x6c6f6f6b
     ba0:	6564596f 	0x6564596f
     ba4:	75617265 	jalx	585c994 <outData+0x5858994>
     ba8:	6e6f7461 	0x6e6f7461
     bac:	73666174 	0x73666174
     bb0:	6173796f 	0x6173796f
     bb4:	75696d61 	jalx	5a5b584 <outData+0x5a57584>
     bb8:	67696e65 	0x67696e65
     bbc:	446f6e74 	0x446f6e74
     bc0:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
     bc4:	7961626f 	0x7961626f
     bc8:	75747468 	jalx	5d1d1a0 <outData+0x5d191a0>
     bcc:	65667574 	0x65667574
     bd0:	7572654f 	jalx	5c9953c <outData+0x5c9553c>
     bd4:	72776f72 	0x72776f72
     bd8:	72796275 	0x72796275
     bdc:	746b6e6f 	jalx	1adb9bc <outData+0x1ad79bc>
     be0:	77746861 	jalx	dd1a184 <outData+0xdd16184>
     be4:	744b7572 	jalx	12dd5c8 <outData+0x12d95c8>
     be8:	74566f6e 	jalx	159bdb8 <outData+0x1597db8>
     bec:	6e656775 	0x6e656775
     bf0:	4b757274 	c2	0x1757274
     bf4:	566f6e6e 	0x566f6e6e
     bf8:	65677574 	0x65677574
     bfc:	73436f6d 	0x73436f6d
     c00:	6d656e63 	0x6d656e63
     c04:	656d656e 	0x656d656e
     c08:	74416464 	jalx	1059190 <outData+0x1055190>
     c0c:	72657373 	0x72657373
     c10:	61744d49 	0x61744d49
     c14:	544c6164 	0x544c6164
     c18:	69657361 	0x69657361
     c1c:	6e646765 	0x6e646765
     c20:	6e746c65 	0x6e746c65
     c24:	6d656e6f 	0x6d656e6f
     c28:	66746865 	0x66746865
     c2c:	636c6173 	0x636c6173
     c30:	736f6639 	0x736f6639
     c34:	37576561 	ori	s7,k0,0x6561
     c38:	7273756e 	0x7273756e
     c3c:	73637265 	0x73637265
     c40:	656e4966 	0x656e4966
     c44:	49636f75 	0x49636f75
     c48:	6c646f66 	0x6c646f66
     c4c:	66657279 	0x66657279
     c50:	6f756f6e 	0x6f756f6e
     c54:	6c796f6e 	0x6c796f6e
     c58:	65746970 	0x65746970
     c5c:	666f7274 	0x666f7274
     c60:	68656675 	0x68656675
     c64:	74757265 	jalx	1d5c994 <outData+0x1d58994>
     c68:	73756e73 	0x73756e73
     c6c:	63726565 	0x63726565
     c70:	6e776f75 	0x6e776f75
     c74:	6c646265 	0x6c646265
     c78:	69745468 	0x69745468
     c7c:	656c6f6e 	0x656c6f6e
     c80:	67746572 	0x67746572
     c84:	6d62656e 	0x6d62656e
     c88:	65666974 	0x65666974
     c8c:	736f6673 	0x736f6673
     c90:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
     c94:	7265656e 	0x7265656e
     c98:	68617665 	0x68617665
     c9c:	6265656e 	0x6265656e
     ca0:	70726f76 	0x70726f76
     ca4:	65646279 	0x65646279
     ca8:	73636965 	0x73636965
     cac:	6e746973 	0x6e746973
     cb0:	74737768 	jalx	1cddda0 <outData+0x1cd9da0>
     cb4:	65726561 	0x65726561
     cb8:	73746865 	0x73746865
     cbc:	72657374 	0x72657374
     cc0:	6f666d79 	0x6f666d79
     cc4:	61647669 	0x61647669
     cc8:	63656861 	0x63656861
     ccc:	736e6f62 	0x736e6f62
     cd0:	61736973 	0x61736973
     cd4:	6d6f7265 	0x6d6f7265
     cd8:	72656c69 	0x72656c69
     cdc:	61626c65 	0x61626c65
     ce0:	7468616e 	jalx	1a185b8 <outData+0x1a145b8>
     ce4:	6d796f77 	0x6d796f77
     ce8:	6e6d6561 	0x6e6d6561
     cec:	6e646572 	0x6e646572
     cf0:	696e6765 	0x696e6765
     cf4:	78706572 	0x78706572
     cf8:	69656e63 	0x69656e63
     cfc:	65497769 	0x65497769
     d00:	6c6c6469 	0x6c6c6469
     d04:	7370656e 	0x7370656e
     d08:	73657468 	0x73657468
     d0c:	69736164 	0x69736164
     d10:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
     d14:	6e6f7745 	0x6e6f7745
     d18:	6e6a6f79 	0x6e6a6f79
     d1c:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
     d20:	6f776572 	0x6f776572
     d24:	616e6462 	0x616e6462
     d28:	65617574 	0x65617574
     d2c:	796f6679 	0x796f6679
     d30:	6f757279 	0x6f757279
     d34:	6f757468 	0x6f757468
     d38:	4f686e65 	c3	0x1686e65
     d3c:	7665726d 	jalx	995c9b4 <outData+0x99589b4>
     d40:	696e6459 	0x696e6459
     d44:	6f757769 	0x6f757769
     d48:	6c6c6e6f 	0x6c6c6e6f
     d4c:	74756e64 	jalx	1d5b990 <outData+0x1d57990>
     d50:	65727374 	0x65727374
     d54:	616e6474 	0x616e6474
     d58:	6865706f 	0x6865706f
     d5c:	77657261 	jalx	d95c984 <outData+0xd958984>
     d60:	6e646265 	0x6e646265
     d64:	61757479 	0x61757479
     d68:	6f66796f 	0x6f66796f
     d6c:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
     d70:	75746875 	jalx	5d1a1d4 <outData+0x5d161d4>
     d74:	6e74696c 	0x6e74696c
     d78:	74686579 	jalx	1a195e4 <outData+0x1a155e4>
     d7c:	76656661 	jalx	9959984 <outData+0x9955984>
     d80:	64656442 	0x64656442
     d84:	75747472 	jalx	5d1d1c8 <outData+0x5d191c8>
     d88:	7573746d 	jalx	5cdd1b4 <outData+0x5cd91b4>
     d8c:	65696e32 	0x65696e32
     d90:	30796561 	andi	t9,v1,0x6561
     d94:	7273796f 	0x7273796f
     d98:	756c6c6c 	jalx	5b1b1b0 <outData+0x5b171b0>
     d9c:	6f6f6b62 	0x6f6f6b62
     da0:	61636b61 	0x61636b61
     da4:	7470686f 	jalx	1c1a1bc <outData+0x1c161bc>
     da8:	746f736f 	jalx	1bdcdbc <outData+0x1bd8dbc>
     dac:	66796f75 	0x66796f75
     db0:	7273656c 	0x7273656c
     db4:	66616e64 	0x66616e64
     db8:	72656361 	0x72656361
     dbc:	6c6c696e 	0x6c6c696e
     dc0:	61776179 	0x61776179
     dc4:	796f7563 	0x796f7563
     dc8:	616e7467 	0x616e7467
     dcc:	72617370 	0x72617370
     dd0:	6e6f7768 	0x6e6f7768
     dd4:	6f776d75 	0x6f776d75
     dd8:	6368706f 	0x6368706f
     ddc:	73736962 	0x73736962
     de0:	696c6974 	0x696c6974
     de4:	796c6179 	0x796c6179
     de8:	6265666f 	0x6265666f
     dec:	7265796f 	0x7265796f
     df0:	75616e64 	jalx	585b990 <outData+0x5857990>
     df4:	686f7766 	0x686f7766
     df8:	6162756c 	0x6162756c
     dfc:	6f757379 	0x6f757379
     e00:	6f757265 	0x6f757265
     e04:	616c6c79 	0x616c6c79
     e08:	6c6f6f6b 	0x6c6f6f6b
     e0c:	6564596f 	0x6564596f
     e10:	75617265 	jalx	585c994 <outData+0x5858994>
     e14:	6e6f7461 	0x6e6f7461
     e18:	73666174 	0x73666174
     e1c:	6173796f 	0x6173796f
     e20:	75696d61 	jalx	5a5b584 <outData+0x5a57584>
     e24:	67696e65 	0x67696e65
     e28:	446f6e74 	0x446f6e74
     e2c:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
     e30:	7961626f 	0x7961626f
     e34:	75747468 	jalx	5d1d1a0 <outData+0x5d191a0>
     e38:	65667574 	0x65667574
     e3c:	7572654f 	jalx	5c9953c <outData+0x5c9553c>
     e40:	72776f72 	0x72776f72
     e44:	72796275 	0x72796275
     e48:	746b6e6f 	jalx	1adb9bc <outData+0x1ad79bc>
     e4c:	77746861 	jalx	dd1a184 <outData+0xdd16184>
     e50:	744b7572 	jalx	12dd5c8 <outData+0x12d95c8>
     e54:	74566f6e 	jalx	159bdb8 <outData+0x1597db8>
     e58:	6e656775 	0x6e656775
     e5c:	7473436f 	jalx	1cd0dbc <outData+0x1cccdbc>
     e60:	6d6d656e 	0x6d6d656e
     e64:	63656d65 	0x63656d65
     e68:	6e744164 	0x6e744164
     e6c:	64726573 	0x64726573
     e70:	7361744d 	0x7361744d
     e74:	49544c61 	0x49544c61
     e78:	64696573 	0x64696573
     e7c:	616e6467 	0x616e6467
     e80:	656e746c 	0x656e746c
     e84:	656d656e 	0x656d656e
     e88:	6f667468 	0x6f667468
     e8c:	65636c61 	0x65636c61
     e90:	73736f66 	0x73736f66
     e94:	39375765 	xori	s7,t1,0x5765
     e98:	61727375 	0x61727375
     e9c:	6e736372 	0x6e736372
     ea0:	65656e49 	0x65656e49
     ea4:	6649636f 	0x6649636f
     ea8:	756c646f 	jalx	5b191bc <outData+0x5b151bc>
     eac:	66666572 	0x66666572
     eb0:	796f756f 	0x796f756f
     eb4:	6e6c796f 	0x6e6c796f
     eb8:	6e657469 	0x6e657469
     ebc:	70666f72 	0x70666f72
     ec0:	74686566 	jalx	1a19598 <outData+0x1a15598>
     ec4:	75747572 	jalx	5d1d5c8 <outData+0x5d195c8>
     ec8:	6573756e 	0x6573756e
     ecc:	73637265 	0x73637265
     ed0:	656e776f 	0x656e776f
     ed4:	756c6462 	jalx	5b19188 <outData+0x5b15188>
     ed8:	65697454 	0x65697454
     edc:	68656c6f 	0x68656c6f
     ee0:	6e677465 	0x6e677465
     ee4:	726d6265 	0x726d6265
     ee8:	6e656669 	0x6e656669
     eec:	74736f66 	jalx	1cdbd98 <outData+0x1cd7d98>
     ef0:	73756e73 	0x73756e73
     ef4:	63726565 	0x63726565
     ef8:	6e686176 	0x6e686176
     efc:	65626565 	0x65626565
     f00:	6e70726f 	0x6e70726f
     f04:	76656462 	jalx	9959188 <outData+0x9955188>
     f08:	79736369 	0x79736369
     f0c:	656e7469 	0x656e7469
     f10:	73747377 	0x73747377
     f14:	68657265 	0x68657265
     f18:	61737468 	0x61737468
     f1c:	65726573 	0x65726573
     f20:	746f666d 	jalx	1bd99b4 <outData+0x1bd59b4>
     f24:	79616476 	0x79616476
     f28:	69636568 	0x69636568
     f2c:	61736e6f 	0x61736e6f
     f30:	62617369 	0x62617369
     f34:	736d6f72 	0x736d6f72
     f38:	6572656c 	0x6572656c
     f3c:	6961626c 	0x6961626c
     f40:	65746861 	0x65746861
     f44:	6e6d796f 	0x6e6d796f
     f48:	776e6d65 	jalx	db9b594 <outData+0xdb97594>
     f4c:	616e6465 	0x616e6465
     f50:	72696e67 	0x72696e67
     f54:	65787065 	0x65787065
     f58:	7269656e 	0x7269656e
     f5c:	63654977 	0x63654977
     f60:	696c6c64 	0x696c6c64
     f64:	69737065 	0x69737065
     f68:	6e736574 	0x6e736574
     f6c:	68697361 	0x68697361
     f70:	64766963 	0x64766963
     f74:	656e6f77 	0x656e6f77
     f78:	456e6a6f 	0x456e6a6f
     f7c:	79746865 	0x79746865
     f80:	706f7765 	0x706f7765
     f84:	72616e64 	0x72616e64
     f88:	62656175 	0x62656175
     f8c:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
     f90:	796f7572 	0x796f7572
     f94:	796f7574 	0x796f7574
     f98:	684f686e 	0x684f686e
     f9c:	65766572 	0x65766572
     fa0:	6d696e64 	0x6d696e64
     fa4:	596f7577 	0x596f7577
     fa8:	696c6c6e 	0x696c6c6e
     fac:	6f74756e 	0x6f74756e
     fb0:	64657273 	0x64657273
     fb4:	74616e64 	jalx	185b990 <outData+0x1857990>
     fb8:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
     fbc:	6f776572 	0x6f776572
     fc0:	616e6462 	0x616e6462
     fc4:	65617574 	0x65617574
     fc8:	796f6679 	0x796f6679
     fcc:	6f757279 	0x6f757279
     fd0:	6f757468 	0x6f757468
     fd4:	756e7469 	jalx	5b9d1a4 <outData+0x5b991a4>
     fd8:	6c746865 	0x6c746865
     fdc:	79766566 	0x79766566
     fe0:	61646564 	0x61646564
     fe4:	42757474 	c0	0x757474
     fe8:	72757374 	0x72757374
     fec:	6d65696e 	0x6d65696e
     ff0:	32307965 	andi	s0,s1,0x7965
     ff4:	61727379 	0x61727379
     ff8:	6f756c6c 	0x6f756c6c
     ffc:	6c6f6f6b 	0x6c6f6f6b
    1000:	6261636b 	0x6261636b
    1004:	61747068 	0x61747068
    1008:	6f746f73 	0x6f746f73
    100c:	6f66796f 	0x6f66796f
    1010:	75727365 	jalx	5c9cd94 <outData+0x5c98d94>
    1014:	6c66616e 	0x6c66616e
    1018:	64726563 	0x64726563
    101c:	616c6c69 	0x616c6c69
    1020:	6e617761 	0x6e617761
    1024:	79796f75 	0x79796f75
    1028:	63616e74 	0x63616e74
    102c:	67726173 	0x67726173
    1030:	706e6f77 	0x706e6f77
    1034:	686f776d 	0x686f776d
    1038:	75636870 	jalx	58da1c0 <outData+0x58d61c0>
    103c:	6f737369 	0x6f737369
    1040:	62696c69 	0x62696c69
    1044:	74796c61 	jalx	1e5b184 <outData+0x1e57184>
    1048:	79626566 	0x79626566
    104c:	6f726579 	0x6f726579
    1050:	6f75616e 	0x6f75616e
    1054:	64686f77 	0x64686f77
    1058:	66616275 	0x66616275
    105c:	6c6f7573 	0x6c6f7573
    1060:	796f7572 	0x796f7572
    1064:	65616c6c 	0x65616c6c
    1068:	796c6f6f 	0x796c6f6f
    106c:	6b656459 	0x6b656459
    1070:	6f756172 	0x6f756172
    1074:	656e6f74 	0x656e6f74
    1078:	61736661 	0x61736661
    107c:	74617379 	jalx	185cde4 <outData+0x1858de4>
    1080:	6f75696d 	0x6f75696d
    1084:	6167696e 	0x6167696e
    1088:	65446f6e 	0x65446f6e
    108c:	74776f72 	jalx	1ddbdc8 <outData+0x1dd7dc8>
    1090:	72796162 	0x72796162
    1094:	6f757474 	0x6f757474
    1098:	68656675 	0x68656675
    109c:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    10a0:	4f72776f 	c3	0x172776f
    10a4:	72727962 	0x72727962
    10a8:	75746b6e 	jalx	5d1adb8 <outData+0x5d16db8>
    10ac:	6f777468 	0x6f777468
    10b0:	61744b75 	0x61744b75
    10b4:	7274566f 	0x7274566f
    10b8:	6e6e6567 	0x6e6e6567
    10bc:	75747343 	jalx	5d1cd0c <outData+0x5d18d0c>
    10c0:	6f6d6d65 	0x6f6d6d65
    10c4:	6e63656d 	0x6e63656d
    10c8:	656e7441 	0x656e7441
    10cc:	64647265 	0x64647265
    10d0:	73736174 	0x73736174
    10d4:	4d49544c 	0x4d49544c
    10d8:	61646965 	0x61646965
    10dc:	73616e64 	0x73616e64
    10e0:	67656e74 	0x67656e74
    10e4:	6c656d65 	0x6c656d65
    10e8:	6e6f6674 	0x6e6f6674
    10ec:	6865636c 	0x6865636c
    10f0:	6173736f 	0x6173736f
    10f4:	66393757 	0x66393757
    10f8:	65617273 	0x65617273
    10fc:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    1100:	7265656e 	0x7265656e
    1104:	49664963 	0x49664963
    1108:	6f756c64 	0x6f756c64
    110c:	6f666665 	0x6f666665
    1110:	72796f75 	0x72796f75
    1114:	6f6e6c79 	0x6f6e6c79
    1118:	6f6e6574 	0x6f6e6574
    111c:	6970666f 	0x6970666f
    1120:	72746865 	0x72746865
    1124:	66757475 	0x66757475
    1128:	72657375 	0x72657375
    112c:	6e736372 	0x6e736372
    1130:	65656e77 	0x65656e77
    1134:	6f756c64 	0x6f756c64
    1138:	62656974 	0x62656974
    113c:	5468656c 	0x5468656c
    1140:	6f6e6774 	0x6f6e6774
    1144:	65726d62 	0x65726d62
    1148:	656e6566 	0x656e6566
    114c:	6974736f 	0x6974736f
    1150:	6673756e 	0x6673756e
    1154:	73637265 	0x73637265
    1158:	656e6861 	0x656e6861
    115c:	76656265 	jalx	9958994 <outData+0x9954994>
    1160:	656e7072 	0x656e7072
    1164:	6f766564 	0x6f766564
    1168:	62797363 	0x62797363
    116c:	69656e74 	0x69656e74
    1170:	69737473 	0x69737473
    1174:	77686572 	jalx	da195c8 <outData+0xda155c8>
    1178:	65617374 	0x65617374
    117c:	68657265 	0x68657265
    1180:	73746f66 	0x73746f66
    1184:	6d796164 	0x6d796164
    1188:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    118c:	6861736e 	0x6861736e
    1190:	6f626173 	0x6f626173
    1194:	69736d6f 	0x69736d6f
    1198:	72657265 	0x72657265
    119c:	6c696162 	0x6c696162
    11a0:	6c657468 	0x6c657468
    11a4:	616e6d79 	0x616e6d79
    11a8:	6f776e6d 	0x6f776e6d
    11ac:	65616e64 	0x65616e64
    11b0:	6572696e 	0x6572696e
    11b4:	67657870 	0x67657870
    11b8:	65726965 	0x65726965
    11bc:	6e636549 	0x6e636549
    11c0:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    11c4:	64697370 	0x64697370
    11c8:	656e7365 	0x656e7365
    11cc:	74686973 	jalx	1a1a5cc <outData+0x1a165cc>
    11d0:	61647669 	0x61647669
    11d4:	63656e6f 	0x63656e6f
    11d8:	77456e6a 	jalx	d15b9a8 <outData+0xd1579a8>
    11dc:	6f797468 	0x6f797468
    11e0:	65706f77 	0x65706f77
    11e4:	6572616e 	0x6572616e
    11e8:	64626561 	0x64626561
    11ec:	7574796f 	jalx	5d1e5bc <outData+0x5d1a5bc>
    11f0:	66796f75 	0x66796f75
    11f4:	72796f75 	0x72796f75
    11f8:	74684f68 	jalx	1a13da0 <outData+0x1a0fda0>
    11fc:	6e657665 	0x6e657665
    1200:	726d696e 	0x726d696e
    1204:	64596f75 	0x64596f75
    1208:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    120c:	6e6f7475 	0x6e6f7475
    1210:	6e646572 	0x6e646572
    1214:	7374616e 	0x7374616e
    1218:	64746865 	0x64746865
    121c:	706f7765 	0x706f7765
    1220:	72616e64 	0x72616e64
    1224:	62656175 	0x62656175
    1228:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
    122c:	796f7572 	0x796f7572
    1230:	796f7574 	0x796f7574
    1234:	68756e74 	0x68756e74
    1238:	696c7468 	0x696c7468
    123c:	65797665 	0x65797665
    1240:	66616465 	0x66616465
    1244:	64427574 	0x64427574
    1248:	74727573 	jalx	1c9d5cc <outData+0x1c995cc>
    124c:	746d6569 	jalx	1b595a4 <outData+0x1b555a4>
    1250:	6e323079 	0x6e323079
    1254:	65617273 	0x65617273
    1258:	796f756c 	0x796f756c
    125c:	6c6c6f6f 	0x6c6c6f6f
    1260:	6b626163 	0x6b626163
    1264:	6b617470 	0x6b617470
    1268:	686f746f 	0x686f746f
    126c:	736f6679 	0x736f6679
    1270:	6f757273 	0x6f757273
    1274:	656c6661 	0x656c6661
    1278:	6e647265 	0x6e647265
    127c:	63616c6c 	0x63616c6c
    1280:	696e6177 	0x696e6177
    1284:	6179796f 	0x6179796f
    1288:	7563616e 	jalx	58d85b8 <outData+0x58d45b8>
    128c:	74677261 	jalx	19dc984 <outData+0x19d8984>
    1290:	73706e6f 	0x73706e6f
    1294:	77686f77 	jalx	da1bddc <outData+0xda17ddc>
    1298:	6d756368 	0x6d756368
    129c:	706f7373 	0x706f7373
    12a0:	6962696c 	0x6962696c
    12a4:	6974796c 	0x6974796c
    12a8:	61796265 	0x61796265
    12ac:	666f7265 	0x666f7265
    12b0:	796f7561 	0x796f7561
    12b4:	6e64686f 	0x6e64686f
    12b8:	77666162 	jalx	d998588 <outData+0xd994588>
    12bc:	756c6f75 	jalx	5b1bdd4 <outData+0x5b17dd4>
    12c0:	73796f75 	0x73796f75
    12c4:	7265616c 	0x7265616c
    12c8:	6c796c6f 	0x6c796c6f
    12cc:	6f6b6564 	0x6f6b6564
    12d0:	596f7561 	0x596f7561
    12d4:	72656e6f 	0x72656e6f
    12d8:	74617366 	jalx	185cd98 <outData+0x1858d98>
    12dc:	61746173 	0x61746173
    12e0:	796f7569 	0x796f7569
    12e4:	6d616769 	0x6d616769
    12e8:	6e65446f 	0x6e65446f
    12ec:	6e74776f 	0x6e74776f
    12f0:	72727961 	0x72727961
    12f4:	626f7574 	0x626f7574
    12f8:	74686566 	jalx	1a19598 <outData+0x1a15598>
    12fc:	75747572 	jalx	5d1d5c8 <outData+0x5d195c8>
    1300:	654f7277 	0x654f7277
    1304:	6f727279 	0x6f727279
    1308:	6275746b 	0x6275746b
    130c:	6e6f7774 	0x6e6f7774
    1310:	68617474 	0x68617474
    1314:	73436f6d 	0x73436f6d
    1318:	6d656e63 	0x6d656e63
    131c:	656d656e 	0x656d656e
    1320:	74416464 	jalx	1059190 <outData+0x1055190>
    1324:	72657373 	0x72657373
    1328:	61744d49 	0x61744d49
    132c:	544c6164 	0x544c6164
    1330:	69657361 	0x69657361
    1334:	6e646765 	0x6e646765
    1338:	6e746c65 	0x6e746c65
    133c:	6d656e6f 	0x6d656e6f
    1340:	66746865 	0x66746865
    1344:	636c6173 	0x636c6173
    1348:	736f6639 	0x736f6639
    134c:	37576561 	ori	s7,k0,0x6561
    1350:	7273756e 	0x7273756e
    1354:	73637265 	0x73637265
    1358:	656e4966 	0x656e4966
    135c:	49636f75 	0x49636f75
    1360:	6c646f66 	0x6c646f66
    1364:	66657279 	0x66657279
    1368:	6f756f6e 	0x6f756f6e
    136c:	6c796f6e 	0x6c796f6e
    1370:	65746970 	0x65746970
    1374:	666f7274 	0x666f7274
    1378:	68656675 	0x68656675
    137c:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    1380:	4b757274 	c2	0x1757274
    1384:	566f6e6e 	0x566f6e6e
    1388:	65677574 	0x65677574
    138c:	73436f6d 	0x73436f6d
    1390:	6d656e63 	0x6d656e63
    1394:	656d656e 	0x656d656e
    1398:	74416464 	jalx	1059190 <outData+0x1055190>
    139c:	72657373 	0x72657373
    13a0:	61744d49 	0x61744d49
    13a4:	544c6164 	0x544c6164
    13a8:	69657361 	0x69657361
    13ac:	6e646765 	0x6e646765
    13b0:	6e746c65 	0x6e746c65
    13b4:	6d656e6f 	0x6d656e6f
    13b8:	66746865 	0x66746865
    13bc:	636c6173 	0x636c6173
    13c0:	736f6639 	0x736f6639
    13c4:	37576561 	ori	s7,k0,0x6561
    13c8:	7273756e 	0x7273756e
    13cc:	73637265 	0x73637265
    13d0:	656e4966 	0x656e4966
    13d4:	49636f75 	0x49636f75
    13d8:	6c646f66 	0x6c646f66
    13dc:	66657279 	0x66657279
    13e0:	6f756f6e 	0x6f756f6e
    13e4:	6c796f6e 	0x6c796f6e
    13e8:	65746970 	0x65746970
    13ec:	666f7274 	0x666f7274
    13f0:	68656675 	0x68656675
    13f4:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    13f8:	73756e73 	0x73756e73
    13fc:	63726565 	0x63726565
    1400:	6e776f75 	0x6e776f75
    1404:	6c646265 	0x6c646265
    1408:	69745468 	0x69745468
    140c:	656c6f6e 	0x656c6f6e
    1410:	67746572 	0x67746572
    1414:	6d62656e 	0x6d62656e
    1418:	65666974 	0x65666974
    141c:	736f6673 	0x736f6673
    1420:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    1424:	7265656e 	0x7265656e
    1428:	68617665 	0x68617665
    142c:	6265656e 	0x6265656e
    1430:	70726f76 	0x70726f76
    1434:	65646279 	0x65646279
    1438:	73636965 	0x73636965
    143c:	6e746973 	0x6e746973
    1440:	74737768 	jalx	1cddda0 <outData+0x1cd9da0>
    1444:	65726561 	0x65726561
    1448:	73746865 	0x73746865
    144c:	72657374 	0x72657374
    1450:	6f666d79 	0x6f666d79
    1454:	61647669 	0x61647669
    1458:	63656861 	0x63656861
    145c:	736e6f62 	0x736e6f62
    1460:	61736973 	0x61736973
    1464:	6d6f7265 	0x6d6f7265
    1468:	72656c69 	0x72656c69
    146c:	61626c65 	0x61626c65
    1470:	7468616e 	jalx	1a185b8 <outData+0x1a145b8>
    1474:	6d796f77 	0x6d796f77
    1478:	6e6d6561 	0x6e6d6561
    147c:	6e646572 	0x6e646572
    1480:	696e6765 	0x696e6765
    1484:	78706572 	0x78706572
    1488:	69656e63 	0x69656e63
    148c:	65497769 	0x65497769
    1490:	6c6c6469 	0x6c6c6469
    1494:	7370656e 	0x7370656e
    1498:	73657468 	0x73657468
    149c:	69736164 	0x69736164
    14a0:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    14a4:	6e6f7745 	0x6e6f7745
    14a8:	6e6a6f79 	0x6e6a6f79
    14ac:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
    14b0:	6f776572 	0x6f776572
    14b4:	616e6462 	0x616e6462
    14b8:	65617574 	0x65617574
    14bc:	796f6679 	0x796f6679
    14c0:	6f757279 	0x6f757279
    14c4:	6f757468 	0x6f757468
    14c8:	4f686e65 	c3	0x1686e65
    14cc:	7665726d 	jalx	995c9b4 <outData+0x99589b4>
    14d0:	696e6459 	0x696e6459
    14d4:	6f757769 	0x6f757769
    14d8:	6c6c6e6f 	0x6c6c6e6f
    14dc:	74756e64 	jalx	1d5b990 <outData+0x1d57990>
    14e0:	65727374 	0x65727374
    14e4:	616e6474 	0x616e6474
    14e8:	6865706f 	0x6865706f
    14ec:	77657261 	jalx	d95c984 <outData+0xd958984>
    14f0:	6e646265 	0x6e646265
    14f4:	61757479 	0x61757479
    14f8:	6f66796f 	0x6f66796f
    14fc:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
    1500:	75746875 	jalx	5d1a1d4 <outData+0x5d161d4>
    1504:	6e74696c 	0x6e74696c
    1508:	74686579 	jalx	1a195e4 <outData+0x1a155e4>
    150c:	76656661 	jalx	9959984 <outData+0x9955984>
    1510:	64656442 	0x64656442
    1514:	75747472 	jalx	5d1d1c8 <outData+0x5d191c8>
    1518:	7573746d 	jalx	5cdd1b4 <outData+0x5cd91b4>
    151c:	65696e32 	0x65696e32
    1520:	30796561 	andi	t9,v1,0x6561
    1524:	7273796f 	0x7273796f
    1528:	756c6c6c 	jalx	5b1b1b0 <outData+0x5b171b0>
    152c:	6f6f6b62 	0x6f6f6b62
    1530:	61636b61 	0x61636b61
    1534:	7470686f 	jalx	1c1a1bc <outData+0x1c161bc>
    1538:	746f736f 	jalx	1bdcdbc <outData+0x1bd8dbc>
    153c:	66796f75 	0x66796f75
    1540:	7273656c 	0x7273656c
    1544:	66616e64 	0x66616e64
    1548:	72656361 	0x72656361
    154c:	6c6c696e 	0x6c6c696e
    1550:	61776179 	0x61776179
    1554:	796f7563 	0x796f7563
    1558:	616e7467 	0x616e7467
    155c:	72617370 	0x72617370
    1560:	6e6f7768 	0x6e6f7768
    1564:	6f776d75 	0x6f776d75
    1568:	6368706f 	0x6368706f
    156c:	73736962 	0x73736962
    1570:	696c6974 	0x696c6974
    1574:	796c6179 	0x796c6179
    1578:	6265666f 	0x6265666f
    157c:	7265796f 	0x7265796f
    1580:	75616e64 	jalx	585b990 <outData+0x5857990>
    1584:	686f7766 	0x686f7766
    1588:	6162756c 	0x6162756c
    158c:	6f757379 	0x6f757379
    1590:	6f757265 	0x6f757265
    1594:	616c6c79 	0x616c6c79
    1598:	6c6f6f6b 	0x6c6f6f6b
    159c:	6564596f 	0x6564596f
    15a0:	75617265 	jalx	585c994 <outData+0x5858994>
    15a4:	6e6f7461 	0x6e6f7461
    15a8:	73666174 	0x73666174
    15ac:	6173796f 	0x6173796f
    15b0:	75696d61 	jalx	5a5b584 <outData+0x5a57584>
    15b4:	67696e65 	0x67696e65
    15b8:	446f6e74 	0x446f6e74
    15bc:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
    15c0:	7961626f 	0x7961626f
    15c4:	75747468 	jalx	5d1d1a0 <outData+0x5d191a0>
    15c8:	65667574 	0x65667574
    15cc:	7572654f 	jalx	5c9953c <outData+0x5c9553c>
    15d0:	72776f72 	0x72776f72
    15d4:	72796275 	0x72796275
    15d8:	746b6e6f 	jalx	1adb9bc <outData+0x1ad79bc>
    15dc:	77746861 	jalx	dd1a184 <outData+0xdd16184>
    15e0:	744b7572 	jalx	12dd5c8 <outData+0x12d95c8>
    15e4:	74566f6e 	jalx	159bdb8 <outData+0x1597db8>
    15e8:	6e656775 	0x6e656775
    15ec:	7473436f 	jalx	1cd0dbc <outData+0x1cccdbc>
    15f0:	6d6d656e 	0x6d6d656e
    15f4:	63656d65 	0x63656d65
    15f8:	6e744164 	0x6e744164
    15fc:	64726573 	0x64726573
    1600:	7361744d 	0x7361744d
    1604:	49544c61 	0x49544c61
    1608:	64696573 	0x64696573
    160c:	616e6467 	0x616e6467
    1610:	656e746c 	0x656e746c
    1614:	656d656e 	0x656d656e
    1618:	6f667468 	0x6f667468
    161c:	65636c61 	0x65636c61
    1620:	73736f66 	0x73736f66
    1624:	39375765 	xori	s7,t1,0x5765
    1628:	61727375 	0x61727375
    162c:	6e736372 	0x6e736372
    1630:	65656e49 	0x65656e49
    1634:	6649636f 	0x6649636f
    1638:	756c646f 	jalx	5b191bc <outData+0x5b151bc>
    163c:	66666572 	0x66666572
    1640:	796f756f 	0x796f756f
    1644:	6e6c796f 	0x6e6c796f
    1648:	6e657469 	0x6e657469
    164c:	70666f72 	0x70666f72
    1650:	74686566 	jalx	1a19598 <outData+0x1a15598>
    1654:	75747572 	jalx	5d1d5c8 <outData+0x5d195c8>
    1658:	6573756e 	0x6573756e
    165c:	73637265 	0x73637265
    1660:	656e776f 	0x656e776f
    1664:	756c6462 	jalx	5b19188 <outData+0x5b15188>
    1668:	65697454 	0x65697454
    166c:	68656c6f 	0x68656c6f
    1670:	6e677465 	0x6e677465
    1674:	726d6265 	0x726d6265
    1678:	6e656669 	0x6e656669
    167c:	74736f66 	jalx	1cdbd98 <outData+0x1cd7d98>
    1680:	73756e73 	0x73756e73
    1684:	63726565 	0x63726565
    1688:	6e686176 	0x6e686176
    168c:	65626565 	0x65626565
    1690:	6e70726f 	0x6e70726f
    1694:	76656462 	jalx	9959188 <outData+0x9955188>
    1698:	79736369 	0x79736369
    169c:	656e7469 	0x656e7469
    16a0:	73747377 	0x73747377
    16a4:	68657265 	0x68657265
    16a8:	61737468 	0x61737468
    16ac:	65726573 	0x65726573
    16b0:	746f666d 	jalx	1bd99b4 <outData+0x1bd59b4>
    16b4:	79616476 	0x79616476
    16b8:	69636568 	0x69636568
    16bc:	61736e6f 	0x61736e6f
    16c0:	62617369 	0x62617369
    16c4:	736d6f72 	0x736d6f72
    16c8:	6572656c 	0x6572656c
    16cc:	6961626c 	0x6961626c
    16d0:	65746861 	0x65746861
    16d4:	6e6d796f 	0x6e6d796f
    16d8:	776e6d65 	jalx	db9b594 <outData+0xdb97594>
    16dc:	616e6465 	0x616e6465
    16e0:	72696e67 	0x72696e67
    16e4:	65787065 	0x65787065
    16e8:	7269656e 	0x7269656e
    16ec:	63654977 	0x63654977
    16f0:	696c6c64 	0x696c6c64
    16f4:	69737065 	0x69737065
    16f8:	6e736574 	0x6e736574
    16fc:	68697361 	0x68697361
    1700:	64766963 	0x64766963
    1704:	656e6f77 	0x656e6f77
    1708:	456e6a6f 	0x456e6a6f
    170c:	79746865 	0x79746865
    1710:	706f7765 	0x706f7765
    1714:	72616e64 	0x72616e64
    1718:	62656175 	0x62656175
    171c:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
    1720:	796f7572 	0x796f7572
    1724:	796f7574 	0x796f7574
    1728:	684f686e 	0x684f686e
    172c:	65766572 	0x65766572
    1730:	6d696e64 	0x6d696e64
    1734:	596f7577 	0x596f7577
    1738:	696c6c6e 	0x696c6c6e
    173c:	6f74756e 	0x6f74756e
    1740:	64657273 	0x64657273
    1744:	74616e64 	jalx	185b990 <outData+0x1857990>
    1748:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
    174c:	6f776572 	0x6f776572
    1750:	616e6462 	0x616e6462
    1754:	65617574 	0x65617574
    1758:	796f6679 	0x796f6679
    175c:	6f757279 	0x6f757279
    1760:	6f757468 	0x6f757468
    1764:	756e7469 	jalx	5b9d1a4 <outData+0x5b991a4>
    1768:	6c746865 	0x6c746865
    176c:	79766566 	0x79766566
    1770:	61646564 	0x61646564
    1774:	42757474 	c0	0x757474
    1778:	72757374 	0x72757374
    177c:	6d65696e 	0x6d65696e
    1780:	32307965 	andi	s0,s1,0x7965
    1784:	61727379 	0x61727379
    1788:	6f756c6c 	0x6f756c6c
    178c:	6c6f6f6b 	0x6c6f6f6b
    1790:	6261636b 	0x6261636b
    1794:	61747068 	0x61747068
    1798:	6f746f73 	0x6f746f73
    179c:	6f66796f 	0x6f66796f
    17a0:	75727365 	jalx	5c9cd94 <outData+0x5c98d94>
    17a4:	6c66616e 	0x6c66616e
    17a8:	64726563 	0x64726563
    17ac:	616c6c69 	0x616c6c69
    17b0:	6e617761 	0x6e617761
    17b4:	79796f75 	0x79796f75
    17b8:	63616e74 	0x63616e74
    17bc:	67726173 	0x67726173
    17c0:	706e6f77 	0x706e6f77
    17c4:	686f776d 	0x686f776d
    17c8:	75636870 	jalx	58da1c0 <outData+0x58d61c0>
    17cc:	6f737369 	0x6f737369
    17d0:	62696c69 	0x62696c69
    17d4:	74796c61 	jalx	1e5b184 <outData+0x1e57184>
    17d8:	79626566 	0x79626566
    17dc:	6f726579 	0x6f726579
    17e0:	6f75616e 	0x6f75616e
    17e4:	64686f77 	0x64686f77
    17e8:	66616275 	0x66616275
    17ec:	6c6f7573 	0x6c6f7573
    17f0:	796f7572 	0x796f7572
    17f4:	65616c6c 	0x65616c6c
    17f8:	796c6f6f 	0x796c6f6f
    17fc:	6b656459 	0x6b656459
    1800:	6f756172 	0x6f756172
    1804:	656e6f74 	0x656e6f74
    1808:	61736661 	0x61736661
    180c:	74617379 	jalx	185cde4 <outData+0x1858de4>
    1810:	6f75696d 	0x6f75696d
    1814:	6167696e 	0x6167696e
    1818:	65446f6e 	0x65446f6e
    181c:	74776f72 	jalx	1ddbdc8 <outData+0x1dd7dc8>
    1820:	72796162 	0x72796162
    1824:	6f757474 	0x6f757474
    1828:	68656675 	0x68656675
    182c:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    1830:	4f72776f 	c3	0x172776f
    1834:	72727962 	0x72727962
    1838:	75746b6e 	jalx	5d1adb8 <outData+0x5d16db8>
    183c:	6f777468 	0x6f777468
    1840:	61744b75 	0x61744b75
    1844:	7274566f 	0x7274566f
    1848:	6e6e6567 	0x6e6e6567
    184c:	75747343 	jalx	5d1cd0c <outData+0x5d18d0c>
    1850:	6f6d6d65 	0x6f6d6d65
    1854:	6e63656d 	0x6e63656d
    1858:	656e7441 	0x656e7441
    185c:	64647265 	0x64647265
    1860:	73736174 	0x73736174
    1864:	4d49544c 	0x4d49544c
    1868:	61646965 	0x61646965
    186c:	73616e64 	0x73616e64
    1870:	67656e74 	0x67656e74
    1874:	6c656d65 	0x6c656d65
    1878:	6e6f6674 	0x6e6f6674
    187c:	6865636c 	0x6865636c
    1880:	6173736f 	0x6173736f
    1884:	66393757 	0x66393757
    1888:	65617273 	0x65617273
    188c:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    1890:	7265656e 	0x7265656e
    1894:	49664963 	0x49664963
    1898:	6f756c64 	0x6f756c64
    189c:	6f666665 	0x6f666665
    18a0:	72796f75 	0x72796f75
    18a4:	6f6e6c79 	0x6f6e6c79
    18a8:	6f6e6574 	0x6f6e6574
    18ac:	6970666f 	0x6970666f
    18b0:	72746865 	0x72746865
    18b4:	66757475 	0x66757475
    18b8:	72657375 	0x72657375
    18bc:	6e736372 	0x6e736372
    18c0:	65656e77 	0x65656e77
    18c4:	6f756c64 	0x6f756c64
    18c8:	62656974 	0x62656974
    18cc:	5468656c 	0x5468656c
    18d0:	6f6e6774 	0x6f6e6774
    18d4:	65726d62 	0x65726d62
    18d8:	656e6566 	0x656e6566
    18dc:	6974736f 	0x6974736f
    18e0:	6673756e 	0x6673756e
    18e4:	73637265 	0x73637265
    18e8:	656e6861 	0x656e6861
    18ec:	76656265 	jalx	9958994 <outData+0x9954994>
    18f0:	656e7072 	0x656e7072
    18f4:	6f766564 	0x6f766564
    18f8:	62797363 	0x62797363
    18fc:	69656e74 	0x69656e74
    1900:	69737473 	0x69737473
    1904:	77686572 	jalx	da195c8 <outData+0xda155c8>
    1908:	65617374 	0x65617374
    190c:	68657265 	0x68657265
    1910:	73746f66 	0x73746f66
    1914:	6d796164 	0x6d796164
    1918:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    191c:	6861736e 	0x6861736e
    1920:	6f626173 	0x6f626173
    1924:	69736d6f 	0x69736d6f
    1928:	72657265 	0x72657265
    192c:	6c696162 	0x6c696162
    1930:	6c657468 	0x6c657468
    1934:	616e6d79 	0x616e6d79
    1938:	6f776e6d 	0x6f776e6d
    193c:	65616e64 	0x65616e64
    1940:	6572696e 	0x6572696e
    1944:	67657870 	0x67657870
    1948:	65726965 	0x65726965
    194c:	6e636549 	0x6e636549
    1950:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    1954:	64697370 	0x64697370
    1958:	656e7365 	0x656e7365
    195c:	74686973 	jalx	1a1a5cc <outData+0x1a165cc>
    1960:	61647669 	0x61647669
    1964:	63656e6f 	0x63656e6f
    1968:	77456e6a 	jalx	d15b9a8 <outData+0xd1579a8>
    196c:	6f797468 	0x6f797468
    1970:	65706f77 	0x65706f77
    1974:	6572616e 	0x6572616e
    1978:	64626561 	0x64626561
    197c:	7574796f 	jalx	5d1e5bc <outData+0x5d1a5bc>
    1980:	66796f75 	0x66796f75
    1984:	72796f75 	0x72796f75
    1988:	74684f68 	jalx	1a13da0 <outData+0x1a0fda0>
    198c:	6e657665 	0x6e657665
    1990:	726d696e 	0x726d696e
    1994:	64596f75 	0x64596f75
    1998:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    199c:	6e6f7475 	0x6e6f7475
    19a0:	6e646572 	0x6e646572
    19a4:	7374616e 	0x7374616e
    19a8:	64746865 	0x64746865
    19ac:	706f7765 	0x706f7765
    19b0:	72614b75 	0x72614b75
    19b4:	7274566f 	0x7274566f
    19b8:	6e6e6567 	0x6e6e6567
    19bc:	75747343 	jalx	5d1cd0c <outData+0x5d18d0c>
    19c0:	6f6d6d65 	0x6f6d6d65
    19c4:	6e63656d 	0x6e63656d
    19c8:	656e7441 	0x656e7441
    19cc:	64647265 	0x64647265
    19d0:	73736174 	0x73736174
    19d4:	4d49544c 	0x4d49544c
    19d8:	61646965 	0x61646965
    19dc:	73616e64 	0x73616e64
    19e0:	67656e74 	0x67656e74
    19e4:	6c656d65 	0x6c656d65
    19e8:	6e6f6674 	0x6e6f6674
    19ec:	6865636c 	0x6865636c
    19f0:	6173736f 	0x6173736f
    19f4:	66393757 	0x66393757
    19f8:	65617273 	0x65617273
    19fc:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    1a00:	7265656e 	0x7265656e
    1a04:	49664963 	0x49664963
    1a08:	6f756c64 	0x6f756c64
    1a0c:	6f666665 	0x6f666665
    1a10:	72796f75 	0x72796f75
    1a14:	6f6e6c79 	0x6f6e6c79
    1a18:	6f6e6574 	0x6f6e6574
    1a1c:	6970666f 	0x6970666f
    1a20:	72746865 	0x72746865
    1a24:	66757475 	0x66757475
    1a28:	72657375 	0x72657375
    1a2c:	6e736372 	0x6e736372
    1a30:	65656e77 	0x65656e77
    1a34:	6f756c64 	0x6f756c64
    1a38:	62656974 	0x62656974
    1a3c:	5468656c 	0x5468656c
    1a40:	6f6e6774 	0x6f6e6774
    1a44:	65726d62 	0x65726d62
    1a48:	656e6566 	0x656e6566
    1a4c:	6974736f 	0x6974736f
    1a50:	6673756e 	0x6673756e
    1a54:	73637265 	0x73637265
    1a58:	656e6861 	0x656e6861
    1a5c:	76656265 	jalx	9958994 <outData+0x9954994>
    1a60:	656e7072 	0x656e7072
    1a64:	6f766564 	0x6f766564
    1a68:	62797363 	0x62797363
    1a6c:	69656e74 	0x69656e74
    1a70:	69737473 	0x69737473
    1a74:	77686572 	jalx	da195c8 <outData+0xda155c8>
    1a78:	65617374 	0x65617374
    1a7c:	68657265 	0x68657265
    1a80:	73746f66 	0x73746f66
    1a84:	6d796164 	0x6d796164
    1a88:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    1a8c:	6861736e 	0x6861736e
    1a90:	6f626173 	0x6f626173
    1a94:	69736d6f 	0x69736d6f
    1a98:	72657265 	0x72657265
    1a9c:	6c696162 	0x6c696162
    1aa0:	6c657468 	0x6c657468
    1aa4:	616e6d79 	0x616e6d79
    1aa8:	6f776e6d 	0x6f776e6d
    1aac:	65616e64 	0x65616e64
    1ab0:	6572696e 	0x6572696e
    1ab4:	67657870 	0x67657870
    1ab8:	65726965 	0x65726965
    1abc:	6e636549 	0x6e636549
    1ac0:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    1ac4:	64697370 	0x64697370
    1ac8:	656e7365 	0x656e7365
    1acc:	74686973 	jalx	1a1a5cc <outData+0x1a165cc>
    1ad0:	61647669 	0x61647669
    1ad4:	63656e6f 	0x63656e6f
    1ad8:	77456e6a 	jalx	d15b9a8 <outData+0xd1579a8>
    1adc:	6f797468 	0x6f797468
    1ae0:	65706f77 	0x65706f77
    1ae4:	6572616e 	0x6572616e
    1ae8:	64626561 	0x64626561
    1aec:	7574796f 	jalx	5d1e5bc <outData+0x5d1a5bc>
    1af0:	66796f75 	0x66796f75
    1af4:	72796f75 	0x72796f75
    1af8:	74684f68 	jalx	1a13da0 <outData+0x1a0fda0>
    1afc:	6e657665 	0x6e657665
    1b00:	726d696e 	0x726d696e
    1b04:	64596f75 	0x64596f75
    1b08:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    1b0c:	6e6f7475 	0x6e6f7475
    1b10:	6e646572 	0x6e646572
    1b14:	7374616e 	0x7374616e
    1b18:	64746865 	0x64746865
    1b1c:	706f7765 	0x706f7765
    1b20:	72616e64 	0x72616e64
    1b24:	62656175 	0x62656175
    1b28:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
    1b2c:	796f7572 	0x796f7572
    1b30:	796f7574 	0x796f7574
    1b34:	68756e74 	0x68756e74
    1b38:	696c7468 	0x696c7468
    1b3c:	65797665 	0x65797665
    1b40:	66616465 	0x66616465
    1b44:	64427574 	0x64427574
    1b48:	74727573 	jalx	1c9d5cc <outData+0x1c995cc>
    1b4c:	746d6569 	jalx	1b595a4 <outData+0x1b555a4>
    1b50:	6e323079 	0x6e323079
    1b54:	65617273 	0x65617273
    1b58:	796f756c 	0x796f756c
    1b5c:	6c6c6f6f 	0x6c6c6f6f
    1b60:	6b626163 	0x6b626163
    1b64:	6b617470 	0x6b617470
    1b68:	686f746f 	0x686f746f
    1b6c:	736f6679 	0x736f6679
    1b70:	6f757273 	0x6f757273
    1b74:	656c6661 	0x656c6661
    1b78:	6e647265 	0x6e647265
    1b7c:	63616c6c 	0x63616c6c
    1b80:	696e6177 	0x696e6177
    1b84:	6179796f 	0x6179796f
    1b88:	7563616e 	jalx	58d85b8 <outData+0x58d45b8>
    1b8c:	74677261 	jalx	19dc984 <outData+0x19d8984>
    1b90:	73706e6f 	0x73706e6f
    1b94:	77686f77 	jalx	da1bddc <outData+0xda17ddc>
    1b98:	6d756368 	0x6d756368
    1b9c:	706f7373 	0x706f7373
    1ba0:	6962696c 	0x6962696c
    1ba4:	6974796c 	0x6974796c
    1ba8:	61796265 	0x61796265
    1bac:	666f7265 	0x666f7265
    1bb0:	796f7561 	0x796f7561
    1bb4:	6e64686f 	0x6e64686f
    1bb8:	77666162 	jalx	d998588 <outData+0xd994588>
    1bbc:	756c6f75 	jalx	5b1bdd4 <outData+0x5b17dd4>
    1bc0:	73796f75 	0x73796f75
    1bc4:	7265616c 	0x7265616c
    1bc8:	6c796c6f 	0x6c796c6f
    1bcc:	6f6b6564 	0x6f6b6564
    1bd0:	596f7561 	0x596f7561
    1bd4:	72656e6f 	0x72656e6f
    1bd8:	74617366 	jalx	185cd98 <outData+0x1858d98>
    1bdc:	61746173 	0x61746173
    1be0:	796f7569 	0x796f7569
    1be4:	6d616769 	0x6d616769
    1be8:	6e65446f 	0x6e65446f
    1bec:	6e74776f 	0x6e74776f
    1bf0:	72727961 	0x72727961
    1bf4:	626f7574 	0x626f7574
    1bf8:	74686566 	jalx	1a19598 <outData+0x1a15598>
    1bfc:	75747572 	jalx	5d1d5c8 <outData+0x5d195c8>
    1c00:	654f7277 	0x654f7277
    1c04:	6f727279 	0x6f727279
    1c08:	6275746b 	0x6275746b
    1c0c:	6e6f7774 	0x6e6f7774
    1c10:	6861744b 	0x6861744b
    1c14:	75727456 	jalx	5c9d158 <outData+0x5c99158>
    1c18:	6f6e6e65 	0x6f6e6e65
    1c1c:	67754b75 	0x67754b75
    1c20:	7274566f 	0x7274566f
    1c24:	6e6e6567 	0x6e6e6567
    1c28:	75747343 	jalx	5d1cd0c <outData+0x5d18d0c>
    1c2c:	6f6d6d65 	0x6f6d6d65
    1c30:	6e63656d 	0x6e63656d
    1c34:	656e7441 	0x656e7441
    1c38:	64647265 	0x64647265
    1c3c:	73736174 	0x73736174
    1c40:	4d49544c 	0x4d49544c
    1c44:	61646965 	0x61646965
    1c48:	73616e64 	0x73616e64
    1c4c:	67656e74 	0x67656e74
    1c50:	6c656d65 	0x6c656d65
    1c54:	6e6f6674 	0x6e6f6674
    1c58:	6865636c 	0x6865636c
    1c5c:	6173736f 	0x6173736f
    1c60:	66393757 	0x66393757
    1c64:	65617273 	0x65617273
    1c68:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    1c6c:	7265656e 	0x7265656e
    1c70:	49664963 	0x49664963
    1c74:	6f756c64 	0x6f756c64
    1c78:	6f666665 	0x6f666665
    1c7c:	72796f75 	0x72796f75
    1c80:	6f6e6c79 	0x6f6e6c79
    1c84:	6f6e6574 	0x6f6e6574
    1c88:	6970666f 	0x6970666f
    1c8c:	72746865 	0x72746865
    1c90:	66757475 	0x66757475
    1c94:	72657375 	0x72657375
    1c98:	6e736372 	0x6e736372
    1c9c:	65656e77 	0x65656e77
    1ca0:	6f756c64 	0x6f756c64
    1ca4:	62656974 	0x62656974
    1ca8:	5468656c 	0x5468656c
    1cac:	6f6e6774 	0x6f6e6774
    1cb0:	65726d62 	0x65726d62
    1cb4:	656e6566 	0x656e6566
    1cb8:	6974736f 	0x6974736f
    1cbc:	6673756e 	0x6673756e
    1cc0:	73637265 	0x73637265
    1cc4:	656e6861 	0x656e6861
    1cc8:	76656265 	jalx	9958994 <outData+0x9954994>
    1ccc:	656e7072 	0x656e7072
    1cd0:	6f766564 	0x6f766564
    1cd4:	62797363 	0x62797363
    1cd8:	69656e74 	0x69656e74
    1cdc:	69737473 	0x69737473
    1ce0:	77686572 	jalx	da195c8 <outData+0xda155c8>
    1ce4:	65617374 	0x65617374
    1ce8:	68657265 	0x68657265
    1cec:	73746f66 	0x73746f66
    1cf0:	6d796164 	0x6d796164
    1cf4:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    1cf8:	6861736e 	0x6861736e
    1cfc:	6f626173 	0x6f626173
    1d00:	69736d6f 	0x69736d6f
    1d04:	72657265 	0x72657265
    1d08:	6c696162 	0x6c696162
    1d0c:	6c657468 	0x6c657468
    1d10:	616e6d79 	0x616e6d79
    1d14:	6f776e6d 	0x6f776e6d
    1d18:	65616e64 	0x65616e64
    1d1c:	6572696e 	0x6572696e
    1d20:	67657870 	0x67657870
    1d24:	65726965 	0x65726965
    1d28:	6e636549 	0x6e636549
    1d2c:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    1d30:	64697370 	0x64697370
    1d34:	656e7365 	0x656e7365
    1d38:	74686973 	jalx	1a1a5cc <outData+0x1a165cc>
    1d3c:	61647669 	0x61647669
    1d40:	63656e6f 	0x63656e6f
    1d44:	77456e6a 	jalx	d15b9a8 <outData+0xd1579a8>
    1d48:	6f797468 	0x6f797468
    1d4c:	65706f77 	0x65706f77
    1d50:	6572616e 	0x6572616e
    1d54:	64626561 	0x64626561
    1d58:	7574796f 	jalx	5d1e5bc <outData+0x5d1a5bc>
    1d5c:	66796f75 	0x66796f75
    1d60:	72796f75 	0x72796f75
    1d64:	74684f68 	jalx	1a13da0 <outData+0x1a0fda0>
    1d68:	6e657665 	0x6e657665
    1d6c:	726d696e 	0x726d696e
    1d70:	64596f75 	0x64596f75
    1d74:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    1d78:	6e6f7475 	0x6e6f7475
    1d7c:	6e646572 	0x6e646572
    1d80:	7374616e 	0x7374616e
    1d84:	64746865 	0x64746865
    1d88:	706f7765 	0x706f7765
    1d8c:	72616e64 	0x72616e64
    1d90:	62656175 	0x62656175
    1d94:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
    1d98:	796f7572 	0x796f7572
    1d9c:	796f7574 	0x796f7574
    1da0:	68756e74 	0x68756e74
    1da4:	696c7468 	0x696c7468
    1da8:	65797665 	0x65797665
    1dac:	66616465 	0x66616465
    1db0:	64427574 	0x64427574
    1db4:	74727573 	jalx	1c9d5cc <outData+0x1c995cc>
    1db8:	746d6569 	jalx	1b595a4 <outData+0x1b555a4>
    1dbc:	6e323079 	0x6e323079
    1dc0:	65617273 	0x65617273
    1dc4:	796f756c 	0x796f756c
    1dc8:	6c6c6f6f 	0x6c6c6f6f
    1dcc:	6b626163 	0x6b626163
    1dd0:	6b617470 	0x6b617470
    1dd4:	686f746f 	0x686f746f
    1dd8:	736f6679 	0x736f6679
    1ddc:	6f757273 	0x6f757273
    1de0:	656c6661 	0x656c6661
    1de4:	6e647265 	0x6e647265
    1de8:	63616c6c 	0x63616c6c
    1dec:	696e6177 	0x696e6177
    1df0:	6179796f 	0x6179796f
    1df4:	7563616e 	jalx	58d85b8 <outData+0x58d45b8>
    1df8:	74677261 	jalx	19dc984 <outData+0x19d8984>
    1dfc:	73706e6f 	0x73706e6f
    1e00:	77686f77 	jalx	da1bddc <outData+0xda17ddc>
    1e04:	6d756368 	0x6d756368
    1e08:	706f7373 	0x706f7373
    1e0c:	6962696c 	0x6962696c
    1e10:	6974796c 	0x6974796c
    1e14:	61796265 	0x61796265
    1e18:	666f7265 	0x666f7265
    1e1c:	796f7561 	0x796f7561
    1e20:	6e64686f 	0x6e64686f
    1e24:	77666162 	jalx	d998588 <outData+0xd994588>
    1e28:	756c6f75 	jalx	5b1bdd4 <outData+0x5b17dd4>
    1e2c:	73796f75 	0x73796f75
    1e30:	7265616c 	0x7265616c
    1e34:	6c796c6f 	0x6c796c6f
    1e38:	6f6b6564 	0x6f6b6564
    1e3c:	596f7561 	0x596f7561
    1e40:	72656e6f 	0x72656e6f
    1e44:	74617366 	jalx	185cd98 <outData+0x1858d98>
    1e48:	61746173 	0x61746173
    1e4c:	796f7569 	0x796f7569
    1e50:	6d616769 	0x6d616769
    1e54:	6e65446f 	0x6e65446f
    1e58:	6e74776f 	0x6e74776f
    1e5c:	72727961 	0x72727961
    1e60:	626f7574 	0x626f7574
    1e64:	74686566 	jalx	1a19598 <outData+0x1a15598>
    1e68:	75747572 	jalx	5d1d5c8 <outData+0x5d195c8>
    1e6c:	654f7277 	0x654f7277
    1e70:	6f727279 	0x6f727279
    1e74:	6275746b 	0x6275746b
    1e78:	6e6f7774 	0x6e6f7774
    1e7c:	6861744b 	0x6861744b
    1e80:	75727456 	jalx	5c9d158 <outData+0x5c99158>
    1e84:	6f6e6e65 	0x6f6e6e65
    1e88:	67757473 	0x67757473
    1e8c:	436f6d6d 	c0	0x16f6d6d
    1e90:	656e6365 	0x656e6365
    1e94:	6d656e74 	0x6d656e74
    1e98:	41646472 	0x41646472
    1e9c:	65737361 	0x65737361
    1ea0:	744d4954 	jalx	1352550 <outData+0x134e550>
    1ea4:	4c616469 	0x4c616469
    1ea8:	6573616e 	0x6573616e
    1eac:	6467656e 	0x6467656e
    1eb0:	746c656d 	jalx	1b195b4 <outData+0x1b155b4>
    1eb4:	656e6f66 	0x656e6f66
    1eb8:	74686563 	jalx	1a1958c <outData+0x1a1558c>
    1ebc:	6c617373 	0x6c617373
    1ec0:	6f663937 	0x6f663937
    1ec4:	57656172 	0x57656172
    1ec8:	73756e73 	0x73756e73
    1ecc:	63726565 	0x63726565
    1ed0:	6e496649 	0x6e496649
    1ed4:	636f756c 	0x636f756c
    1ed8:	646f6666 	0x646f6666
    1edc:	6572796f 	0x6572796f
    1ee0:	756f6e6c 	jalx	5bdb9b0 <outData+0x5bd79b0>
    1ee4:	796f6e65 	0x796f6e65
    1ee8:	74697066 	jalx	1a5c198 <outData+0x1a58198>
    1eec:	6f727468 	0x6f727468
    1ef0:	65667574 	0x65667574
    1ef4:	75726573 	jalx	5c995cc <outData+0x5c955cc>
    1ef8:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    1efc:	7265656e 	0x7265656e
    1f00:	776f756c 	jalx	dbdd5b0 <outData+0xdbd95b0>
    1f04:	64626569 	0x64626569
    1f08:	74546865 	jalx	151a194 <outData+0x1516194>
    1f0c:	6c6f6e67 	0x6c6f6e67
    1f10:	7465726d 	jalx	195c9b4 <outData+0x19589b4>
    1f14:	62656e65 	0x62656e65
    1f18:	66697473 	0x66697473
    1f1c:	6f667375 	0x6f667375
    1f20:	6e736372 	0x6e736372
    1f24:	65656e68 	0x65656e68
    1f28:	61766562 	0x61766562
    1f2c:	65656e70 	0x65656e70
    1f30:	726f7665 	0x726f7665
    1f34:	64627973 	0x64627973
    1f38:	6369656e 	0x6369656e
    1f3c:	74697374 	jalx	1a5cdd0 <outData+0x1a58dd0>
    1f40:	73776865 	0x73776865
    1f44:	72656173 	0x72656173
    1f48:	74686572 	jalx	1a195c8 <outData+0x1a155c8>
    1f4c:	6573746f 	0x6573746f
    1f50:	666d7961 	0x666d7961
    1f54:	64766963 	0x64766963
    1f58:	65686173 	0x65686173
    1f5c:	6e6f6261 	0x6e6f6261
    1f60:	7369736d 	0x7369736d
    1f64:	6f726572 	0x6f726572
    1f68:	656c6961 	0x656c6961
    1f6c:	626c6574 	0x626c6574
    1f70:	68616e6d 	0x68616e6d
    1f74:	796f776e 	0x796f776e
    1f78:	6d65616e 	0x6d65616e
    1f7c:	64657269 	0x64657269
    1f80:	6e676578 	0x6e676578
    1f84:	70657269 	0x70657269
    1f88:	656e6365 	0x656e6365
    1f8c:	4977696c 	0x4977696c
    1f90:	6c646973 	0x6c646973
    1f94:	70656e73 	0x70656e73
    1f98:	65746869 	0x65746869
    1f9c:	73616476 	0x73616476
    1fa0:	6963656e 	0x6963656e
    1fa4:	6f77456e 	0x6f77456e
    1fa8:	6a6f7974 	0x6a6f7974
    1fac:	6865706f 	0x6865706f
    1fb0:	77657261 	jalx	d95c984 <outData+0xd958984>
    1fb4:	6e646265 	0x6e646265
    1fb8:	61757479 	0x61757479
    1fbc:	6f66796f 	0x6f66796f
    1fc0:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
    1fc4:	7574684f 	jalx	5d1a13c <outData+0x5d1613c>
    1fc8:	686e6576 	0x686e6576
    1fcc:	65726d69 	0x65726d69
    1fd0:	6e64596f 	0x6e64596f
    1fd4:	7577696c 	jalx	5dda5b0 <outData+0x5dd65b0>
    1fd8:	6c6e6f74 	0x6c6e6f74
    1fdc:	756e6465 	jalx	5b99194 <outData+0x5b95194>
    1fe0:	72737461 	0x72737461
    1fe4:	6e647468 	0x6e647468
    1fe8:	65706f77 	0x65706f77
    1fec:	6572616e 	0x6572616e
    1ff0:	64626561 	0x64626561
    1ff4:	7574796f 	jalx	5d1e5bc <outData+0x5d1a5bc>
    1ff8:	66796f75 	0x66796f75
    1ffc:	72796f75 	0x72796f75
    2000:	7468756e 	jalx	1a1d5b8 <outData+0x1a195b8>
    2004:	74696c74 	jalx	1a5b1d0 <outData+0x1a571d0>
    2008:	68657976 	0x68657976
    200c:	65666164 	0x65666164
    2010:	65644275 	0x65644275
    2014:	74747275 	jalx	1d1c9d4 <outData+0x1d189d4>
    2018:	73746d65 	0x73746d65
    201c:	696e3230 	0x696e3230
    2020:	79656172 	0x79656172
    2024:	73796f75 	0x73796f75
    2028:	6c6c6c6f 	0x6c6c6c6f
    202c:	6f6b6261 	0x6f6b6261
    2030:	636b6174 	0x636b6174
    2034:	70686f74 	0x70686f74
    2038:	6f736f66 	0x6f736f66
    203c:	796f7572 	0x796f7572
    2040:	73656c66 	0x73656c66
    2044:	616e6472 	0x616e6472
    2048:	6563616c 	0x6563616c
    204c:	6c696e61 	0x6c696e61
    2050:	77617979 	jalx	d85e5e4 <outData+0xd85a5e4>
    2054:	6f756361 	0x6f756361
    2058:	6e746772 	0x6e746772
    205c:	6173706e 	0x6173706e
    2060:	6f77686f 	0x6f77686f
    2064:	776d7563 	jalx	db5d58c <outData+0xdb5958c>
    2068:	68706f73 	0x68706f73
    206c:	73696269 	0x73696269
    2070:	6c697479 	0x6c697479
    2074:	6c617962 	0x6c617962
    2078:	65666f72 	0x65666f72
    207c:	65796f75 	0x65796f75
    2080:	616e6468 	0x616e6468
    2084:	6f776661 	0x6f776661
    2088:	62756c6f 	0x62756c6f
    208c:	7573796f 	jalx	5cde5bc <outData+0x5cda5bc>
    2090:	75726561 	jalx	5c99584 <outData+0x5c95584>
    2094:	6c6c796c 	0x6c6c796c
    2098:	6f6f6b65 	0x6f6f6b65
    209c:	64596f75 	0x64596f75
    20a0:	6172656e 	0x6172656e
    20a4:	6f746173 	0x6f746173
    20a8:	66617461 	0x66617461
    20ac:	73796f75 	0x73796f75
    20b0:	696d6167 	0x696d6167
    20b4:	696e6544 	0x696e6544
    20b8:	6f6e7477 	0x6f6e7477
    20bc:	6f727279 	0x6f727279
    20c0:	61626f75 	0x61626f75
    20c4:	74746865 	jalx	1d1a194 <outData+0x1d16194>
    20c8:	66757475 	0x66757475
    20cc:	72654f72 	0x72654f72
    20d0:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
    20d4:	79627574 	0x79627574
    20d8:	6b6e6f77 	0x6b6e6f77
    20dc:	74686174 	jalx	1a185d0 <outData+0x1a145d0>
    20e0:	4b757274 	c2	0x1757274
    20e4:	566f6e6e 	0x566f6e6e
    20e8:	65677574 	0x65677574
    20ec:	73436f6d 	0x73436f6d
    20f0:	6d656e63 	0x6d656e63
    20f4:	656d656e 	0x656d656e
    20f8:	74416464 	jalx	1059190 <outData+0x1055190>
    20fc:	72657373 	0x72657373
    2100:	61744d49 	0x61744d49
    2104:	544c6164 	0x544c6164
    2108:	69657361 	0x69657361
    210c:	6e646765 	0x6e646765
    2110:	6e746c65 	0x6e746c65
    2114:	6d656e6f 	0x6d656e6f
    2118:	66746865 	0x66746865
    211c:	636c6173 	0x636c6173
    2120:	736f6639 	0x736f6639
    2124:	37576561 	ori	s7,k0,0x6561
    2128:	7273756e 	0x7273756e
    212c:	73637265 	0x73637265
    2130:	656e4966 	0x656e4966
    2134:	49636f75 	0x49636f75
    2138:	6c646f66 	0x6c646f66
    213c:	66657279 	0x66657279
    2140:	6f756f6e 	0x6f756f6e
    2144:	6c796f6e 	0x6c796f6e
    2148:	65746970 	0x65746970
    214c:	666f7274 	0x666f7274
    2150:	68656675 	0x68656675
    2154:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    2158:	73756e73 	0x73756e73
    215c:	63726565 	0x63726565
    2160:	6e776f75 	0x6e776f75
    2164:	6c646265 	0x6c646265
    2168:	69745468 	0x69745468
    216c:	656c6f6e 	0x656c6f6e
    2170:	67746572 	0x67746572
    2174:	6d62656e 	0x6d62656e
    2178:	65666974 	0x65666974
    217c:	736f6673 	0x736f6673
    2180:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    2184:	7265656e 	0x7265656e
    2188:	68617665 	0x68617665
    218c:	6265656e 	0x6265656e
    2190:	70726f76 	0x70726f76
    2194:	65646279 	0x65646279
    2198:	73636965 	0x73636965
    219c:	6e746973 	0x6e746973
    21a0:	74737768 	jalx	1cddda0 <outData+0x1cd9da0>
    21a4:	65726561 	0x65726561
    21a8:	73746865 	0x73746865
    21ac:	72657374 	0x72657374
    21b0:	6f666d79 	0x6f666d79
    21b4:	61647669 	0x61647669
    21b8:	63656861 	0x63656861
    21bc:	736e6f62 	0x736e6f62
    21c0:	61736973 	0x61736973
    21c4:	6d6f7265 	0x6d6f7265
    21c8:	72656c69 	0x72656c69
    21cc:	61626c65 	0x61626c65
    21d0:	7468616e 	jalx	1a185b8 <outData+0x1a145b8>
    21d4:	6d796f77 	0x6d796f77
    21d8:	6e6d6561 	0x6e6d6561
    21dc:	6e646572 	0x6e646572
    21e0:	696e6765 	0x696e6765
    21e4:	78706572 	0x78706572
    21e8:	69656e63 	0x69656e63
    21ec:	65497769 	0x65497769
    21f0:	6c6c6469 	0x6c6c6469
    21f4:	7370656e 	0x7370656e
    21f8:	73657468 	0x73657468
    21fc:	69736164 	0x69736164
    2200:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    2204:	6e6f7745 	0x6e6f7745
    2208:	6e6a6f79 	0x6e6a6f79
    220c:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
    2210:	6f776572 	0x6f776572
    2214:	616e6462 	0x616e6462
    2218:	65617574 	0x65617574
    221c:	796f6679 	0x796f6679
    2220:	6f757279 	0x6f757279
    2224:	6f757468 	0x6f757468
    2228:	4f686e65 	c3	0x1686e65
    222c:	7665726d 	jalx	995c9b4 <outData+0x99589b4>
    2230:	696e6459 	0x696e6459
    2234:	6f757769 	0x6f757769
    2238:	6c6c6e6f 	0x6c6c6e6f
    223c:	74756e64 	jalx	1d5b990 <outData+0x1d57990>
    2240:	65727374 	0x65727374
    2244:	616e6474 	0x616e6474
    2248:	6865706f 	0x6865706f
    224c:	77657261 	jalx	d95c984 <outData+0xd958984>
    2250:	6e646265 	0x6e646265
    2254:	61757479 	0x61757479
    2258:	6f66796f 	0x6f66796f
    225c:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
    2260:	75746875 	jalx	5d1a1d4 <outData+0x5d161d4>
    2264:	6e74696c 	0x6e74696c
    2268:	74686579 	jalx	1a195e4 <outData+0x1a155e4>
    226c:	76656661 	jalx	9959984 <outData+0x9955984>
    2270:	64656442 	0x64656442
    2274:	75747472 	jalx	5d1d1c8 <outData+0x5d191c8>
    2278:	7573746d 	jalx	5cdd1b4 <outData+0x5cd91b4>
    227c:	65696e32 	0x65696e32
    2280:	30796561 	andi	t9,v1,0x6561
    2284:	7273796f 	0x7273796f
    2288:	756c6c6c 	jalx	5b1b1b0 <outData+0x5b171b0>
    228c:	6f6f6b62 	0x6f6f6b62
    2290:	61636b61 	0x61636b61
    2294:	7470686f 	jalx	1c1a1bc <outData+0x1c161bc>
    2298:	746f736f 	jalx	1bdcdbc <outData+0x1bd8dbc>
    229c:	66796f75 	0x66796f75
    22a0:	7273656c 	0x7273656c
    22a4:	66616e64 	0x66616e64
    22a8:	72656361 	0x72656361
    22ac:	6c6c696e 	0x6c6c696e
    22b0:	61776179 	0x61776179
    22b4:	796f7563 	0x796f7563
    22b8:	616e7467 	0x616e7467
    22bc:	72617370 	0x72617370
    22c0:	6e6f7768 	0x6e6f7768
    22c4:	6f776d75 	0x6f776d75
    22c8:	6368706f 	0x6368706f
    22cc:	73736962 	0x73736962
    22d0:	696c6974 	0x696c6974
    22d4:	796c6179 	0x796c6179
    22d8:	6265666f 	0x6265666f
    22dc:	7265796f 	0x7265796f
    22e0:	75616e64 	jalx	585b990 <outData+0x5857990>
    22e4:	686f7766 	0x686f7766
    22e8:	6162756c 	0x6162756c
    22ec:	6f757379 	0x6f757379
    22f0:	6f757265 	0x6f757265
    22f4:	616c6c79 	0x616c6c79
    22f8:	6c6f6f6b 	0x6c6f6f6b
    22fc:	6564596f 	0x6564596f
    2300:	75617265 	jalx	585c994 <outData+0x5858994>
    2304:	6e6f7461 	0x6e6f7461
    2308:	73666174 	0x73666174
    230c:	6173796f 	0x6173796f
    2310:	75696d61 	jalx	5a5b584 <outData+0x5a57584>
    2314:	67696e65 	0x67696e65
    2318:	446f6e74 	0x446f6e74
    231c:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
    2320:	7961626f 	0x7961626f
    2324:	75747468 	jalx	5d1d1a0 <outData+0x5d191a0>
    2328:	65667574 	0x65667574
    232c:	7572654f 	jalx	5c9953c <outData+0x5c9553c>
    2330:	72776f72 	0x72776f72
    2334:	72796275 	0x72796275
    2338:	746b6e6f 	jalx	1adb9bc <outData+0x1ad79bc>
    233c:	77746861 	jalx	dd1a184 <outData+0xdd16184>
    2340:	74747343 	jalx	1d1cd0c <outData+0x1d18d0c>
    2344:	6f6d6d65 	0x6f6d6d65
    2348:	6e63656d 	0x6e63656d
    234c:	656e7441 	0x656e7441
    2350:	64647265 	0x64647265
    2354:	73736174 	0x73736174
    2358:	4d49544c 	0x4d49544c
    235c:	61646965 	0x61646965
    2360:	73616e64 	0x73616e64
    2364:	67656e74 	0x67656e74
    2368:	6c656d65 	0x6c656d65
    236c:	6e6f6674 	0x6e6f6674
    2370:	6865636c 	0x6865636c
    2374:	6173736f 	0x6173736f
    2378:	66393757 	0x66393757
    237c:	65617273 	0x65617273
    2380:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    2384:	7265656e 	0x7265656e
    2388:	49664963 	0x49664963
    238c:	6f756c64 	0x6f756c64
    2390:	6f666665 	0x6f666665
    2394:	72796f75 	0x72796f75
    2398:	6f6e6c79 	0x6f6e6c79
    239c:	6f6e6574 	0x6f6e6574
    23a0:	6970666f 	0x6970666f
    23a4:	72746865 	0x72746865
    23a8:	66757475 	0x66757475
    23ac:	72654b75 	0x72654b75
    23b0:	7274566f 	0x7274566f
    23b4:	6e6e6567 	0x6e6e6567
    23b8:	75747343 	jalx	5d1cd0c <outData+0x5d18d0c>
    23bc:	6f6d6d65 	0x6f6d6d65
    23c0:	6e63656d 	0x6e63656d
    23c4:	656e7441 	0x656e7441
    23c8:	64647265 	0x64647265
    23cc:	73736174 	0x73736174
    23d0:	4d49544c 	0x4d49544c
    23d4:	61646965 	0x61646965
    23d8:	73616e64 	0x73616e64
    23dc:	67656e74 	0x67656e74
    23e0:	6c656d65 	0x6c656d65
    23e4:	6e6f6674 	0x6e6f6674
    23e8:	6865636c 	0x6865636c
    23ec:	6173736f 	0x6173736f
    23f0:	66393757 	0x66393757
    23f4:	65617273 	0x65617273
    23f8:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    23fc:	7265656e 	0x7265656e
    2400:	49664963 	0x49664963
    2404:	6f756c64 	0x6f756c64
    2408:	6f666665 	0x6f666665
    240c:	72796f75 	0x72796f75
    2410:	6f6e6c79 	0x6f6e6c79
    2414:	6f6e6574 	0x6f6e6574
    2418:	6970666f 	0x6970666f
    241c:	72746865 	0x72746865
    2420:	66757475 	0x66757475
    2424:	72657375 	0x72657375
    2428:	6e736372 	0x6e736372
    242c:	65656e77 	0x65656e77
    2430:	6f756c64 	0x6f756c64
    2434:	62656974 	0x62656974
    2438:	5468656c 	0x5468656c
    243c:	6f6e6774 	0x6f6e6774
    2440:	65726d62 	0x65726d62
    2444:	656e6566 	0x656e6566
    2448:	6974736f 	0x6974736f
    244c:	6673756e 	0x6673756e
    2450:	73637265 	0x73637265
    2454:	656e6861 	0x656e6861
    2458:	76656265 	jalx	9958994 <outData+0x9954994>
    245c:	656e7072 	0x656e7072
    2460:	6f766564 	0x6f766564
    2464:	62797363 	0x62797363
    2468:	69656e74 	0x69656e74
    246c:	69737473 	0x69737473
    2470:	77686572 	jalx	da195c8 <outData+0xda155c8>
    2474:	65617374 	0x65617374
    2478:	68657265 	0x68657265
    247c:	73746f66 	0x73746f66
    2480:	6d796164 	0x6d796164
    2484:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    2488:	6861736e 	0x6861736e
    248c:	6f626173 	0x6f626173
    2490:	69736d6f 	0x69736d6f
    2494:	72657265 	0x72657265
    2498:	6c696162 	0x6c696162
    249c:	6c657468 	0x6c657468
    24a0:	616e6d79 	0x616e6d79
    24a4:	6f776e6d 	0x6f776e6d
    24a8:	65616e64 	0x65616e64
    24ac:	6572696e 	0x6572696e
    24b0:	67657870 	0x67657870
    24b4:	65726965 	0x65726965
    24b8:	6e636549 	0x6e636549
    24bc:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    24c0:	64697370 	0x64697370
    24c4:	656e7365 	0x656e7365
    24c8:	74686973 	jalx	1a1a5cc <outData+0x1a165cc>
    24cc:	61647669 	0x61647669
    24d0:	63656e6f 	0x63656e6f
    24d4:	77456e6a 	jalx	d15b9a8 <outData+0xd1579a8>
    24d8:	6f797468 	0x6f797468
    24dc:	65706f77 	0x65706f77
    24e0:	6572616e 	0x6572616e
    24e4:	64626561 	0x64626561
    24e8:	7574796f 	jalx	5d1e5bc <outData+0x5d1a5bc>
    24ec:	66796f75 	0x66796f75
    24f0:	72796f75 	0x72796f75
    24f4:	74684f68 	jalx	1a13da0 <outData+0x1a0fda0>
    24f8:	6e657665 	0x6e657665
    24fc:	726d696e 	0x726d696e
    2500:	64596f75 	0x64596f75
    2504:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    2508:	6e6f7475 	0x6e6f7475
    250c:	6e646572 	0x6e646572
    2510:	7374616e 	0x7374616e
    2514:	64746865 	0x64746865
    2518:	706f7765 	0x706f7765
    251c:	72616e64 	0x72616e64
    2520:	62656175 	0x62656175
    2524:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
    2528:	796f7572 	0x796f7572
    252c:	796f7574 	0x796f7574
    2530:	68756e74 	0x68756e74
    2534:	696c7468 	0x696c7468
    2538:	65797665 	0x65797665
    253c:	66616465 	0x66616465
    2540:	64427574 	0x64427574
    2544:	74727573 	jalx	1c9d5cc <outData+0x1c995cc>
    2548:	746d6569 	jalx	1b595a4 <outData+0x1b555a4>
    254c:	6e323079 	0x6e323079
    2550:	65617273 	0x65617273
    2554:	796f756c 	0x796f756c
    2558:	6c6c6f6f 	0x6c6c6f6f
    255c:	6b626163 	0x6b626163
    2560:	6b617470 	0x6b617470
    2564:	686f746f 	0x686f746f
    2568:	736f6679 	0x736f6679
    256c:	6f757273 	0x6f757273
    2570:	656c6661 	0x656c6661
    2574:	6e647265 	0x6e647265
    2578:	63616c6c 	0x63616c6c
    257c:	696e6177 	0x696e6177
    2580:	6179796f 	0x6179796f
    2584:	7563616e 	jalx	58d85b8 <outData+0x58d45b8>
    2588:	74677261 	jalx	19dc984 <outData+0x19d8984>
    258c:	73706e6f 	0x73706e6f
    2590:	77686f77 	jalx	da1bddc <outData+0xda17ddc>
    2594:	6d756368 	0x6d756368
    2598:	706f7373 	0x706f7373
    259c:	6962696c 	0x6962696c
    25a0:	6974796c 	0x6974796c
    25a4:	61796265 	0x61796265
    25a8:	666f7265 	0x666f7265
    25ac:	796f7561 	0x796f7561
    25b0:	6e64686f 	0x6e64686f
    25b4:	77666162 	jalx	d998588 <outData+0xd994588>
    25b8:	756c6f75 	jalx	5b1bdd4 <outData+0x5b17dd4>
    25bc:	73796f75 	0x73796f75
    25c0:	7265616c 	0x7265616c
    25c4:	6c796c6f 	0x6c796c6f
    25c8:	6f6b6564 	0x6f6b6564
    25cc:	596f7561 	0x596f7561
    25d0:	72656e6f 	0x72656e6f
    25d4:	74617366 	jalx	185cd98 <outData+0x1858d98>
    25d8:	61746173 	0x61746173
    25dc:	796f7569 	0x796f7569
    25e0:	6d616769 	0x6d616769
    25e4:	6e65446f 	0x6e65446f
    25e8:	6e74776f 	0x6e74776f
    25ec:	72727961 	0x72727961
    25f0:	626f7574 	0x626f7574
    25f4:	74686566 	jalx	1a19598 <outData+0x1a15598>
    25f8:	75747572 	jalx	5d1d5c8 <outData+0x5d195c8>
    25fc:	654f7277 	0x654f7277
    2600:	6f727279 	0x6f727279
    2604:	6275746b 	0x6275746b
    2608:	6e6f7774 	0x6e6f7774
    260c:	6861744b 	0x6861744b
    2610:	75727456 	jalx	5c9d158 <outData+0x5c99158>
    2614:	6f6e6e65 	0x6f6e6e65
    2618:	67757473 	0x67757473
    261c:	436f6d6d 	c0	0x16f6d6d
    2620:	656e6365 	0x656e6365
    2624:	6d656e74 	0x6d656e74
    2628:	41646472 	0x41646472
    262c:	65737361 	0x65737361
    2630:	744d4954 	jalx	1352550 <outData+0x134e550>
    2634:	4c616469 	0x4c616469
    2638:	6573616e 	0x6573616e
    263c:	6467656e 	0x6467656e
    2640:	746c656d 	jalx	1b195b4 <outData+0x1b155b4>
    2644:	656e6f66 	0x656e6f66
    2648:	74686563 	jalx	1a1958c <outData+0x1a1558c>
    264c:	6c617373 	0x6c617373
    2650:	6f663937 	0x6f663937
    2654:	57656172 	0x57656172
    2658:	73756e73 	0x73756e73
    265c:	63726565 	0x63726565
    2660:	6e496649 	0x6e496649
    2664:	636f756c 	0x636f756c
    2668:	646f6666 	0x646f6666
    266c:	6572796f 	0x6572796f
    2670:	756f6e6c 	jalx	5bdb9b0 <outData+0x5bd79b0>
    2674:	796f6e65 	0x796f6e65
    2678:	74697066 	jalx	1a5c198 <outData+0x1a58198>
    267c:	6f727468 	0x6f727468
    2680:	65667574 	0x65667574
    2684:	75726573 	jalx	5c995cc <outData+0x5c955cc>
    2688:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    268c:	7265656e 	0x7265656e
    2690:	776f756c 	jalx	dbdd5b0 <outData+0xdbd95b0>
    2694:	64626569 	0x64626569
    2698:	74546865 	jalx	151a194 <outData+0x1516194>
    269c:	6c6f6e67 	0x6c6f6e67
    26a0:	7465726d 	jalx	195c9b4 <outData+0x19589b4>
    26a4:	62656e65 	0x62656e65
    26a8:	66697473 	0x66697473
    26ac:	6f667375 	0x6f667375
    26b0:	6e736372 	0x6e736372
    26b4:	65656e68 	0x65656e68
    26b8:	61766562 	0x61766562
    26bc:	65656e70 	0x65656e70
    26c0:	726f7665 	0x726f7665
    26c4:	64627973 	0x64627973
    26c8:	6369656e 	0x6369656e
    26cc:	74697374 	jalx	1a5cdd0 <outData+0x1a58dd0>
    26d0:	73776865 	0x73776865
    26d4:	72656173 	0x72656173
    26d8:	74686572 	jalx	1a195c8 <outData+0x1a155c8>
    26dc:	6573746f 	0x6573746f
    26e0:	666d7961 	0x666d7961
    26e4:	64766963 	0x64766963
    26e8:	65686173 	0x65686173
    26ec:	6e6f6261 	0x6e6f6261
    26f0:	7369736d 	0x7369736d
    26f4:	6f726572 	0x6f726572
    26f8:	656c6961 	0x656c6961
    26fc:	626c6574 	0x626c6574
    2700:	68616e6d 	0x68616e6d
    2704:	796f776e 	0x796f776e
    2708:	6d65616e 	0x6d65616e
    270c:	64657269 	0x64657269
    2710:	6e676578 	0x6e676578
    2714:	70657269 	0x70657269
    2718:	656e6365 	0x656e6365
    271c:	4977696c 	0x4977696c
    2720:	6c646973 	0x6c646973
    2724:	70656e73 	0x70656e73
    2728:	65746869 	0x65746869
    272c:	73616476 	0x73616476
    2730:	6963656e 	0x6963656e
    2734:	6f77456e 	0x6f77456e
    2738:	6a6f7974 	0x6a6f7974
    273c:	6865706f 	0x6865706f
    2740:	77657261 	jalx	d95c984 <outData+0xd958984>
    2744:	6e646265 	0x6e646265
    2748:	61757479 	0x61757479
    274c:	6f66796f 	0x6f66796f
    2750:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
    2754:	7574684f 	jalx	5d1a13c <outData+0x5d1613c>
    2758:	686e6576 	0x686e6576
    275c:	65726d69 	0x65726d69
    2760:	6e64596f 	0x6e64596f
    2764:	7577696c 	jalx	5dda5b0 <outData+0x5dd65b0>
    2768:	6c6e6f74 	0x6c6e6f74
    276c:	756e6465 	jalx	5b99194 <outData+0x5b95194>
    2770:	72737461 	0x72737461
    2774:	6e647468 	0x6e647468
    2778:	65706f77 	0x65706f77
    277c:	6572616e 	0x6572616e
    2780:	64626561 	0x64626561
    2784:	7574796f 	jalx	5d1e5bc <outData+0x5d1a5bc>
    2788:	66796f75 	0x66796f75
    278c:	72796f75 	0x72796f75
    2790:	7468756e 	jalx	1a1d5b8 <outData+0x1a195b8>
    2794:	74696c74 	jalx	1a5b1d0 <outData+0x1a571d0>
    2798:	68657976 	0x68657976
    279c:	65666164 	0x65666164
    27a0:	65644275 	0x65644275
    27a4:	74747275 	jalx	1d1c9d4 <outData+0x1d189d4>
    27a8:	73746d65 	0x73746d65
    27ac:	696e3230 	0x696e3230
    27b0:	79656172 	0x79656172
    27b4:	73796f75 	0x73796f75
    27b8:	6c6c6c6f 	0x6c6c6c6f
    27bc:	6f6b6261 	0x6f6b6261
    27c0:	636b6174 	0x636b6174
    27c4:	70686f74 	0x70686f74
    27c8:	6f736f66 	0x6f736f66
    27cc:	796f7572 	0x796f7572
    27d0:	73656c66 	0x73656c66
    27d4:	616e6472 	0x616e6472
    27d8:	6563616c 	0x6563616c
    27dc:	6c696e61 	0x6c696e61
    27e0:	77617979 	jalx	d85e5e4 <outData+0xd85a5e4>
    27e4:	6f756361 	0x6f756361
    27e8:	6e746772 	0x6e746772
    27ec:	6173706e 	0x6173706e
    27f0:	6f77686f 	0x6f77686f
    27f4:	776d7563 	jalx	db5d58c <outData+0xdb5958c>
    27f8:	68706f73 	0x68706f73
    27fc:	73696269 	0x73696269
    2800:	6c697479 	0x6c697479
    2804:	6c617962 	0x6c617962
    2808:	65666f72 	0x65666f72
    280c:	65796f75 	0x65796f75
    2810:	616e6468 	0x616e6468
    2814:	6f776661 	0x6f776661
    2818:	62756c6f 	0x62756c6f
    281c:	7573796f 	jalx	5cde5bc <outData+0x5cda5bc>
    2820:	75726561 	jalx	5c99584 <outData+0x5c95584>
    2824:	6c6c796c 	0x6c6c796c
    2828:	6f6f6b65 	0x6f6f6b65
    282c:	64596f75 	0x64596f75
    2830:	6172656e 	0x6172656e
    2834:	6f746173 	0x6f746173
    2838:	66617461 	0x66617461
    283c:	73796f75 	0x73796f75
    2840:	696d6167 	0x696d6167
    2844:	696e6544 	0x696e6544
    2848:	6f6e7477 	0x6f6e7477
    284c:	6f727279 	0x6f727279
    2850:	61626f75 	0x61626f75
    2854:	74746865 	jalx	1d1a194 <outData+0x1d16194>
    2858:	66757475 	0x66757475
    285c:	72654f72 	0x72654f72
    2860:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
    2864:	79627574 	0x79627574
    2868:	6b6e6f77 	0x6b6e6f77
    286c:	74686174 	jalx	1a185d0 <outData+0x1a145d0>
    2870:	4b757274 	c2	0x1757274
    2874:	566f6e6e 	0x566f6e6e
    2878:	65677574 	0x65677574
    287c:	73436f6d 	0x73436f6d
    2880:	6d656e63 	0x6d656e63
    2884:	656d656e 	0x656d656e
    2888:	74416464 	jalx	1059190 <outData+0x1055190>
    288c:	72657373 	0x72657373
    2890:	61744d49 	0x61744d49
    2894:	544c6164 	0x544c6164
    2898:	69657361 	0x69657361
    289c:	6e646765 	0x6e646765
    28a0:	6e746c65 	0x6e746c65
    28a4:	6d656e6f 	0x6d656e6f
    28a8:	66746865 	0x66746865
    28ac:	636c6173 	0x636c6173
    28b0:	736f6639 	0x736f6639
    28b4:	37576561 	ori	s7,k0,0x6561
    28b8:	7273756e 	0x7273756e
    28bc:	73637265 	0x73637265
    28c0:	656e4966 	0x656e4966
    28c4:	49636f75 	0x49636f75
    28c8:	6c646f66 	0x6c646f66
    28cc:	66657279 	0x66657279
    28d0:	6f756f6e 	0x6f756f6e
    28d4:	6c796f6e 	0x6c796f6e
    28d8:	65746970 	0x65746970
    28dc:	666f7274 	0x666f7274
    28e0:	68656675 	0x68656675
    28e4:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    28e8:	73756e73 	0x73756e73
    28ec:	63726565 	0x63726565
    28f0:	6e776f75 	0x6e776f75
    28f4:	6c646265 	0x6c646265
    28f8:	69745468 	0x69745468
    28fc:	656c6f6e 	0x656c6f6e
    2900:	67746572 	0x67746572
    2904:	6d62656e 	0x6d62656e
    2908:	65666974 	0x65666974
    290c:	736f6673 	0x736f6673
    2910:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    2914:	7265656e 	0x7265656e
    2918:	68617665 	0x68617665
    291c:	6265656e 	0x6265656e
    2920:	70726f76 	0x70726f76
    2924:	65646279 	0x65646279
    2928:	73636965 	0x73636965
    292c:	6e746973 	0x6e746973
    2930:	74737768 	jalx	1cddda0 <outData+0x1cd9da0>
    2934:	65726561 	0x65726561
    2938:	73746865 	0x73746865
    293c:	72657374 	0x72657374
    2940:	6f666d79 	0x6f666d79
    2944:	61647669 	0x61647669
    2948:	63656861 	0x63656861
    294c:	736e6f62 	0x736e6f62
    2950:	61736973 	0x61736973
    2954:	6d6f7265 	0x6d6f7265
    2958:	72656c69 	0x72656c69
    295c:	61626c65 	0x61626c65
    2960:	7468616e 	jalx	1a185b8 <outData+0x1a145b8>
    2964:	6d796f77 	0x6d796f77
    2968:	6e6d6561 	0x6e6d6561
    296c:	6e646572 	0x6e646572
    2970:	696e6765 	0x696e6765
    2974:	78706572 	0x78706572
    2978:	69656e63 	0x69656e63
    297c:	65497769 	0x65497769
    2980:	6c6c6469 	0x6c6c6469
    2984:	7370656e 	0x7370656e
    2988:	73657468 	0x73657468
    298c:	69736164 	0x69736164
    2990:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    2994:	6e6f7745 	0x6e6f7745
    2998:	6e6a6f79 	0x6e6a6f79
    299c:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
    29a0:	6f776572 	0x6f776572
    29a4:	616e6462 	0x616e6462
    29a8:	65617574 	0x65617574
    29ac:	796f6679 	0x796f6679
    29b0:	6f757279 	0x6f757279
    29b4:	6f757468 	0x6f757468
    29b8:	4f686e65 	c3	0x1686e65
    29bc:	7665726d 	jalx	995c9b4 <outData+0x99589b4>
    29c0:	696e6459 	0x696e6459
    29c4:	6f757769 	0x6f757769
    29c8:	6c6c6e6f 	0x6c6c6e6f
    29cc:	74756e64 	jalx	1d5b990 <outData+0x1d57990>
    29d0:	65727374 	0x65727374
    29d4:	616e6474 	0x616e6474
    29d8:	6865706f 	0x6865706f
    29dc:	77657261 	jalx	d95c984 <outData+0xd958984>
    29e0:	4b757274 	c2	0x1757274
    29e4:	566f6e6e 	0x566f6e6e
    29e8:	65677574 	0x65677574
    29ec:	73436f6d 	0x73436f6d
    29f0:	6d656e63 	0x6d656e63
    29f4:	656d656e 	0x656d656e
    29f8:	74416464 	jalx	1059190 <outData+0x1055190>
    29fc:	72657373 	0x72657373
    2a00:	61744d49 	0x61744d49
    2a04:	544c6164 	0x544c6164
    2a08:	69657361 	0x69657361
    2a0c:	6e646765 	0x6e646765
    2a10:	6e746c65 	0x6e746c65
    2a14:	6d656e6f 	0x6d656e6f
    2a18:	66746865 	0x66746865
    2a1c:	636c6173 	0x636c6173
    2a20:	736f6639 	0x736f6639
    2a24:	37576561 	ori	s7,k0,0x6561
    2a28:	7273756e 	0x7273756e
    2a2c:	73637265 	0x73637265
    2a30:	656e4966 	0x656e4966
    2a34:	49636f75 	0x49636f75
    2a38:	6c646f66 	0x6c646f66
    2a3c:	66657279 	0x66657279
    2a40:	6f756f6e 	0x6f756f6e
    2a44:	6c796f6e 	0x6c796f6e
    2a48:	65746970 	0x65746970
    2a4c:	666f7274 	0x666f7274
    2a50:	68656675 	0x68656675
    2a54:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    2a58:	73756e73 	0x73756e73
    2a5c:	63726565 	0x63726565
    2a60:	6e776f75 	0x6e776f75
    2a64:	6c646265 	0x6c646265
    2a68:	69745468 	0x69745468
    2a6c:	656c6f6e 	0x656c6f6e
    2a70:	67746572 	0x67746572
    2a74:	6d62656e 	0x6d62656e
    2a78:	65666974 	0x65666974
    2a7c:	736f6673 	0x736f6673
    2a80:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    2a84:	7265656e 	0x7265656e
    2a88:	68617665 	0x68617665
    2a8c:	6265656e 	0x6265656e
    2a90:	70726f76 	0x70726f76
    2a94:	65646279 	0x65646279
    2a98:	73636965 	0x73636965
    2a9c:	6e746973 	0x6e746973
    2aa0:	74737768 	jalx	1cddda0 <outData+0x1cd9da0>
    2aa4:	65726561 	0x65726561
    2aa8:	73746865 	0x73746865
    2aac:	72657374 	0x72657374
    2ab0:	6f666d79 	0x6f666d79
    2ab4:	61647669 	0x61647669
    2ab8:	63656861 	0x63656861
    2abc:	736e6f62 	0x736e6f62
    2ac0:	61736973 	0x61736973
    2ac4:	6d6f7265 	0x6d6f7265
    2ac8:	72656c69 	0x72656c69
    2acc:	61626c65 	0x61626c65
    2ad0:	7468616e 	jalx	1a185b8 <outData+0x1a145b8>
    2ad4:	6d796f77 	0x6d796f77
    2ad8:	6e6d6561 	0x6e6d6561
    2adc:	6e646572 	0x6e646572
    2ae0:	696e6765 	0x696e6765
    2ae4:	78706572 	0x78706572
    2ae8:	69656e63 	0x69656e63
    2aec:	65497769 	0x65497769
    2af0:	6c6c6469 	0x6c6c6469
    2af4:	7370656e 	0x7370656e
    2af8:	73657468 	0x73657468
    2afc:	69736164 	0x69736164
    2b00:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    2b04:	6e6f7745 	0x6e6f7745
    2b08:	6e6a6f79 	0x6e6a6f79
    2b0c:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
    2b10:	6f776572 	0x6f776572
    2b14:	616e6462 	0x616e6462
    2b18:	65617574 	0x65617574
    2b1c:	796f6679 	0x796f6679
    2b20:	6f757279 	0x6f757279
    2b24:	6f757468 	0x6f757468
    2b28:	4f686e65 	c3	0x1686e65
    2b2c:	7665726d 	jalx	995c9b4 <outData+0x99589b4>
    2b30:	696e6459 	0x696e6459
    2b34:	6f757769 	0x6f757769
    2b38:	6c6c6e6f 	0x6c6c6e6f
    2b3c:	74756e64 	jalx	1d5b990 <outData+0x1d57990>
    2b40:	65727374 	0x65727374
    2b44:	616e6474 	0x616e6474
    2b48:	6865706f 	0x6865706f
    2b4c:	77657261 	jalx	d95c984 <outData+0xd958984>
    2b50:	6e646265 	0x6e646265
    2b54:	61757479 	0x61757479
    2b58:	6f66796f 	0x6f66796f
    2b5c:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
    2b60:	75746875 	jalx	5d1a1d4 <outData+0x5d161d4>
    2b64:	6e74696c 	0x6e74696c
    2b68:	74686579 	jalx	1a195e4 <outData+0x1a155e4>
    2b6c:	76656661 	jalx	9959984 <outData+0x9955984>
    2b70:	64656442 	0x64656442
    2b74:	75747472 	jalx	5d1d1c8 <outData+0x5d191c8>
    2b78:	7573746d 	jalx	5cdd1b4 <outData+0x5cd91b4>
    2b7c:	65696e32 	0x65696e32
    2b80:	30796561 	andi	t9,v1,0x6561
    2b84:	7273796f 	0x7273796f
    2b88:	756c6c6c 	jalx	5b1b1b0 <outData+0x5b171b0>
    2b8c:	6f6f6b62 	0x6f6f6b62
    2b90:	61636b61 	0x61636b61
    2b94:	7470686f 	jalx	1c1a1bc <outData+0x1c161bc>
    2b98:	746f736f 	jalx	1bdcdbc <outData+0x1bd8dbc>
    2b9c:	66796f75 	0x66796f75
    2ba0:	7273656c 	0x7273656c
    2ba4:	66616e64 	0x66616e64
    2ba8:	72656361 	0x72656361
    2bac:	6c6c696e 	0x6c6c696e
    2bb0:	61776179 	0x61776179
    2bb4:	796f7563 	0x796f7563
    2bb8:	616e7467 	0x616e7467
    2bbc:	72617370 	0x72617370
    2bc0:	6e6f7768 	0x6e6f7768
    2bc4:	6f776d75 	0x6f776d75
    2bc8:	6368706f 	0x6368706f
    2bcc:	73736962 	0x73736962
    2bd0:	696c6974 	0x696c6974
    2bd4:	796c6179 	0x796c6179
    2bd8:	6265666f 	0x6265666f
    2bdc:	7265796f 	0x7265796f
    2be0:	75616e64 	jalx	585b990 <outData+0x5857990>
    2be4:	686f7766 	0x686f7766
    2be8:	6162756c 	0x6162756c
    2bec:	6f757379 	0x6f757379
    2bf0:	6f757265 	0x6f757265
    2bf4:	616c6c79 	0x616c6c79
    2bf8:	6c6f6f6b 	0x6c6f6f6b
    2bfc:	6564596f 	0x6564596f
    2c00:	75617265 	jalx	585c994 <outData+0x5858994>
    2c04:	6e6f7461 	0x6e6f7461
    2c08:	73666174 	0x73666174
    2c0c:	6173796f 	0x6173796f
    2c10:	75696d61 	jalx	5a5b584 <outData+0x5a57584>
    2c14:	67696e65 	0x67696e65
    2c18:	446f6e74 	0x446f6e74
    2c1c:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
    2c20:	7961626f 	0x7961626f
    2c24:	75747468 	jalx	5d1d1a0 <outData+0x5d191a0>
    2c28:	65667574 	0x65667574
    2c2c:	7572654f 	jalx	5c9953c <outData+0x5c9553c>
    2c30:	72776f72 	0x72776f72
    2c34:	72796275 	0x72796275
    2c38:	746b6e6f 	jalx	1adb9bc <outData+0x1ad79bc>
    2c3c:	77746861 	jalx	dd1a184 <outData+0xdd16184>
    2c40:	744b7572 	jalx	12dd5c8 <outData+0x12d95c8>
    2c44:	74566f6e 	jalx	159bdb8 <outData+0x1597db8>
    2c48:	6e656775 	0x6e656775
    2c4c:	4b757274 	c2	0x1757274
    2c50:	566f6e6e 	0x566f6e6e
    2c54:	65677574 	0x65677574
    2c58:	73436f6d 	0x73436f6d
    2c5c:	6d656e63 	0x6d656e63
    2c60:	656d656e 	0x656d656e
    2c64:	74416464 	jalx	1059190 <outData+0x1055190>
    2c68:	72657373 	0x72657373
    2c6c:	61744d49 	0x61744d49
    2c70:	544c6164 	0x544c6164
    2c74:	69657361 	0x69657361
    2c78:	6e646765 	0x6e646765
    2c7c:	6e746c65 	0x6e746c65
    2c80:	6d656e6f 	0x6d656e6f
    2c84:	66746865 	0x66746865
    2c88:	636c6173 	0x636c6173
    2c8c:	736f6639 	0x736f6639
    2c90:	37576561 	ori	s7,k0,0x6561
    2c94:	7273756e 	0x7273756e
    2c98:	73637265 	0x73637265
    2c9c:	656e4966 	0x656e4966
    2ca0:	49636f75 	0x49636f75
    2ca4:	6c646f66 	0x6c646f66
    2ca8:	66657279 	0x66657279
    2cac:	6f756f6e 	0x6f756f6e
    2cb0:	6c796f6e 	0x6c796f6e
    2cb4:	65746970 	0x65746970
    2cb8:	666f7274 	0x666f7274
    2cbc:	68656675 	0x68656675
    2cc0:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    2cc4:	73756e73 	0x73756e73
    2cc8:	63726565 	0x63726565
    2ccc:	6e776f75 	0x6e776f75
    2cd0:	6c646265 	0x6c646265
    2cd4:	69745468 	0x69745468
    2cd8:	656c6f6e 	0x656c6f6e
    2cdc:	67746572 	0x67746572
    2ce0:	6d62656e 	0x6d62656e
    2ce4:	65666974 	0x65666974
    2ce8:	736f6673 	0x736f6673
    2cec:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    2cf0:	7265656e 	0x7265656e
    2cf4:	68617665 	0x68617665
    2cf8:	6265656e 	0x6265656e
    2cfc:	70726f76 	0x70726f76
    2d00:	65646279 	0x65646279
    2d04:	73636965 	0x73636965
    2d08:	6e746973 	0x6e746973
    2d0c:	74737768 	jalx	1cddda0 <outData+0x1cd9da0>
    2d10:	65726561 	0x65726561
    2d14:	73746865 	0x73746865
    2d18:	72657374 	0x72657374
    2d1c:	6f666d79 	0x6f666d79
    2d20:	61647669 	0x61647669
    2d24:	63656861 	0x63656861
    2d28:	736e6f62 	0x736e6f62
    2d2c:	61736973 	0x61736973
    2d30:	6d6f7265 	0x6d6f7265
    2d34:	72656c69 	0x72656c69
    2d38:	61626c65 	0x61626c65
    2d3c:	7468616e 	jalx	1a185b8 <outData+0x1a145b8>
    2d40:	6d796f77 	0x6d796f77
    2d44:	6e6d6561 	0x6e6d6561
    2d48:	6e646572 	0x6e646572
    2d4c:	696e6765 	0x696e6765
    2d50:	78706572 	0x78706572
    2d54:	69656e63 	0x69656e63
    2d58:	65497769 	0x65497769
    2d5c:	6c6c6469 	0x6c6c6469
    2d60:	7370656e 	0x7370656e
    2d64:	73657468 	0x73657468
    2d68:	69736164 	0x69736164
    2d6c:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    2d70:	6e6f7745 	0x6e6f7745
    2d74:	6e6a6f79 	0x6e6a6f79
    2d78:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
    2d7c:	6f776572 	0x6f776572
    2d80:	616e6462 	0x616e6462
    2d84:	65617574 	0x65617574
    2d88:	796f6679 	0x796f6679
    2d8c:	6f757279 	0x6f757279
    2d90:	6f757468 	0x6f757468
    2d94:	4f686e65 	c3	0x1686e65
    2d98:	7665726d 	jalx	995c9b4 <outData+0x99589b4>
    2d9c:	696e6459 	0x696e6459
    2da0:	6f757769 	0x6f757769
    2da4:	6c6c6e6f 	0x6c6c6e6f
    2da8:	74756e64 	jalx	1d5b990 <outData+0x1d57990>
    2dac:	65727374 	0x65727374
    2db0:	616e6474 	0x616e6474
    2db4:	6865706f 	0x6865706f
    2db8:	77657261 	jalx	d95c984 <outData+0xd958984>
    2dbc:	6e646265 	0x6e646265
    2dc0:	61757479 	0x61757479
    2dc4:	6f66796f 	0x6f66796f
    2dc8:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
    2dcc:	75746875 	jalx	5d1a1d4 <outData+0x5d161d4>
    2dd0:	6e74696c 	0x6e74696c
    2dd4:	74686579 	jalx	1a195e4 <outData+0x1a155e4>
    2dd8:	76656661 	jalx	9959984 <outData+0x9955984>
    2ddc:	64656442 	0x64656442
    2de0:	75747472 	jalx	5d1d1c8 <outData+0x5d191c8>
    2de4:	7573746d 	jalx	5cdd1b4 <outData+0x5cd91b4>
    2de8:	65696e32 	0x65696e32
    2dec:	30796561 	andi	t9,v1,0x6561
    2df0:	7273796f 	0x7273796f
    2df4:	756c6c6c 	jalx	5b1b1b0 <outData+0x5b171b0>
    2df8:	6f6f6b62 	0x6f6f6b62
    2dfc:	61636b61 	0x61636b61
    2e00:	7470686f 	jalx	1c1a1bc <outData+0x1c161bc>
    2e04:	746f736f 	jalx	1bdcdbc <outData+0x1bd8dbc>
    2e08:	66796f75 	0x66796f75
    2e0c:	7273656c 	0x7273656c
    2e10:	66616e64 	0x66616e64
    2e14:	72656361 	0x72656361
    2e18:	6c6c696e 	0x6c6c696e
    2e1c:	61776179 	0x61776179
    2e20:	796f7563 	0x796f7563
    2e24:	616e7467 	0x616e7467
    2e28:	72617370 	0x72617370
    2e2c:	6e6f7768 	0x6e6f7768
    2e30:	6f776d75 	0x6f776d75
    2e34:	6368706f 	0x6368706f
    2e38:	73736962 	0x73736962
    2e3c:	696c6974 	0x696c6974
    2e40:	796c6179 	0x796c6179
    2e44:	6265666f 	0x6265666f
    2e48:	7265796f 	0x7265796f
    2e4c:	75616e64 	jalx	585b990 <outData+0x5857990>
    2e50:	686f7766 	0x686f7766
    2e54:	6162756c 	0x6162756c
    2e58:	6f757379 	0x6f757379
    2e5c:	6f757265 	0x6f757265
    2e60:	616c6c79 	0x616c6c79
    2e64:	6c6f6f6b 	0x6c6f6f6b
    2e68:	6564596f 	0x6564596f
    2e6c:	75617265 	jalx	585c994 <outData+0x5858994>
    2e70:	6e6f7461 	0x6e6f7461
    2e74:	73666174 	0x73666174
    2e78:	6173796f 	0x6173796f
    2e7c:	75696d61 	jalx	5a5b584 <outData+0x5a57584>
    2e80:	67696e65 	0x67696e65
    2e84:	446f6e74 	0x446f6e74
    2e88:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
    2e8c:	7961626f 	0x7961626f
    2e90:	75747468 	jalx	5d1d1a0 <outData+0x5d191a0>
    2e94:	65667574 	0x65667574
    2e98:	7572654f 	jalx	5c9953c <outData+0x5c9553c>
    2e9c:	72776f72 	0x72776f72
    2ea0:	72796275 	0x72796275
    2ea4:	746b6e6f 	jalx	1adb9bc <outData+0x1ad79bc>
    2ea8:	77746861 	jalx	dd1a184 <outData+0xdd16184>
    2eac:	744b7572 	jalx	12dd5c8 <outData+0x12d95c8>
    2eb0:	74566f6e 	jalx	159bdb8 <outData+0x1597db8>
    2eb4:	6e656775 	0x6e656775
    2eb8:	7473436f 	jalx	1cd0dbc <outData+0x1cccdbc>
    2ebc:	6d6d656e 	0x6d6d656e
    2ec0:	63656d65 	0x63656d65
    2ec4:	6e744164 	0x6e744164
    2ec8:	64726573 	0x64726573
    2ecc:	7361744d 	0x7361744d
    2ed0:	49544c61 	0x49544c61
    2ed4:	64696573 	0x64696573
    2ed8:	616e6467 	0x616e6467
    2edc:	656e746c 	0x656e746c
    2ee0:	656d656e 	0x656d656e
    2ee4:	6f667468 	0x6f667468
    2ee8:	65636c61 	0x65636c61
    2eec:	73736f66 	0x73736f66
    2ef0:	39375765 	xori	s7,t1,0x5765
    2ef4:	61727375 	0x61727375
    2ef8:	6e736372 	0x6e736372
    2efc:	65656e49 	0x65656e49
    2f00:	6649636f 	0x6649636f
    2f04:	756c646f 	jalx	5b191bc <outData+0x5b151bc>
    2f08:	66666572 	0x66666572
    2f0c:	796f756f 	0x796f756f
    2f10:	6e6c796f 	0x6e6c796f
    2f14:	6e657469 	0x6e657469
    2f18:	70666f72 	0x70666f72
    2f1c:	74686566 	jalx	1a19598 <outData+0x1a15598>
    2f20:	75747572 	jalx	5d1d5c8 <outData+0x5d195c8>
    2f24:	6573756e 	0x6573756e
    2f28:	73637265 	0x73637265
    2f2c:	656e776f 	0x656e776f
    2f30:	756c6462 	jalx	5b19188 <outData+0x5b15188>
    2f34:	65697454 	0x65697454
    2f38:	68656c6f 	0x68656c6f
    2f3c:	6e677465 	0x6e677465
    2f40:	726d6265 	0x726d6265
    2f44:	6e656669 	0x6e656669
    2f48:	74736f66 	jalx	1cdbd98 <outData+0x1cd7d98>
    2f4c:	73756e73 	0x73756e73
    2f50:	63726565 	0x63726565
    2f54:	6e686176 	0x6e686176
    2f58:	65626565 	0x65626565
    2f5c:	6e70726f 	0x6e70726f
    2f60:	76656462 	jalx	9959188 <outData+0x9955188>
    2f64:	79736369 	0x79736369
    2f68:	656e7469 	0x656e7469
    2f6c:	73747377 	0x73747377
    2f70:	68657265 	0x68657265
    2f74:	61737468 	0x61737468
    2f78:	65726573 	0x65726573
    2f7c:	746f666d 	jalx	1bd99b4 <outData+0x1bd59b4>
    2f80:	79616476 	0x79616476
    2f84:	69636568 	0x69636568
    2f88:	61736e6f 	0x61736e6f
    2f8c:	62617369 	0x62617369
    2f90:	736d6f72 	0x736d6f72
    2f94:	6572656c 	0x6572656c
    2f98:	6961626c 	0x6961626c
    2f9c:	65746861 	0x65746861
    2fa0:	6e6d796f 	0x6e6d796f
    2fa4:	776e6d65 	jalx	db9b594 <outData+0xdb97594>
    2fa8:	616e6465 	0x616e6465
    2fac:	72696e67 	0x72696e67
    2fb0:	65787065 	0x65787065
    2fb4:	7269656e 	0x7269656e
    2fb8:	63654977 	0x63654977
    2fbc:	696c6c64 	0x696c6c64
    2fc0:	69737065 	0x69737065
    2fc4:	6e736574 	0x6e736574
    2fc8:	68697361 	0x68697361
    2fcc:	64766963 	0x64766963
    2fd0:	656e6f77 	0x656e6f77
    2fd4:	456e6a6f 	0x456e6a6f
    2fd8:	79746865 	0x79746865
    2fdc:	706f7765 	0x706f7765
    2fe0:	72616e64 	0x72616e64
    2fe4:	62656175 	0x62656175
    2fe8:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
    2fec:	796f7572 	0x796f7572
    2ff0:	796f7574 	0x796f7574
    2ff4:	684f686e 	0x684f686e
    2ff8:	65766572 	0x65766572
    2ffc:	6d696e64 	0x6d696e64
    3000:	596f7577 	0x596f7577
    3004:	696c6c6e 	0x696c6c6e
    3008:	6f74756e 	0x6f74756e
    300c:	64657273 	0x64657273
    3010:	74616e64 	jalx	185b990 <outData+0x1857990>
    3014:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
    3018:	6f776572 	0x6f776572
    301c:	616e6462 	0x616e6462
    3020:	65617574 	0x65617574
    3024:	796f6679 	0x796f6679
    3028:	6f757279 	0x6f757279
    302c:	6f757468 	0x6f757468
    3030:	756e7469 	jalx	5b9d1a4 <outData+0x5b991a4>
    3034:	6c746865 	0x6c746865
    3038:	79766566 	0x79766566
    303c:	61646564 	0x61646564
    3040:	42757474 	c0	0x757474
    3044:	72757374 	0x72757374
    3048:	6d65696e 	0x6d65696e
    304c:	32307965 	andi	s0,s1,0x7965
    3050:	61727379 	0x61727379
    3054:	6f756c6c 	0x6f756c6c
    3058:	6c6f6f6b 	0x6c6f6f6b
    305c:	6261636b 	0x6261636b
    3060:	61747068 	0x61747068
    3064:	6f746f73 	0x6f746f73
    3068:	6f66796f 	0x6f66796f
    306c:	75727365 	jalx	5c9cd94 <outData+0x5c98d94>
    3070:	6c66616e 	0x6c66616e
    3074:	64726563 	0x64726563
    3078:	616c6c69 	0x616c6c69
    307c:	6e617761 	0x6e617761
    3080:	79796f75 	0x79796f75
    3084:	63616e74 	0x63616e74
    3088:	67726173 	0x67726173
    308c:	706e6f77 	0x706e6f77
    3090:	686f776d 	0x686f776d
    3094:	75636870 	jalx	58da1c0 <outData+0x58d61c0>
    3098:	6f737369 	0x6f737369
    309c:	62696c69 	0x62696c69
    30a0:	74796c61 	jalx	1e5b184 <outData+0x1e57184>
    30a4:	79626566 	0x79626566
    30a8:	6f726579 	0x6f726579
    30ac:	6f75616e 	0x6f75616e
    30b0:	64686f77 	0x64686f77
    30b4:	66616275 	0x66616275
    30b8:	6c6f7573 	0x6c6f7573
    30bc:	796f7572 	0x796f7572
    30c0:	65616c6c 	0x65616c6c
    30c4:	796c6f6f 	0x796c6f6f
    30c8:	6b656459 	0x6b656459
    30cc:	6f756172 	0x6f756172
    30d0:	656e6f74 	0x656e6f74
    30d4:	61736661 	0x61736661
    30d8:	74617379 	jalx	185cde4 <outData+0x1858de4>
    30dc:	6f75696d 	0x6f75696d
    30e0:	6167696e 	0x6167696e
    30e4:	65446f6e 	0x65446f6e
    30e8:	74776f72 	jalx	1ddbdc8 <outData+0x1dd7dc8>
    30ec:	72796162 	0x72796162
    30f0:	6f757474 	0x6f757474
    30f4:	68656675 	0x68656675
    30f8:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    30fc:	4f72776f 	c3	0x172776f
    3100:	72727962 	0x72727962
    3104:	75746b6e 	jalx	5d1adb8 <outData+0x5d16db8>
    3108:	6f777468 	0x6f777468
    310c:	61744b75 	0x61744b75
    3110:	7274566f 	0x7274566f
    3114:	6e6e6567 	0x6e6e6567
    3118:	75747343 	jalx	5d1cd0c <outData+0x5d18d0c>
    311c:	6f6d6d65 	0x6f6d6d65
    3120:	6e63656d 	0x6e63656d
    3124:	656e7441 	0x656e7441
    3128:	64647265 	0x64647265
    312c:	73736174 	0x73736174
    3130:	4d49544c 	0x4d49544c
    3134:	61646965 	0x61646965
    3138:	73616e64 	0x73616e64
    313c:	67656e74 	0x67656e74
    3140:	6c656d65 	0x6c656d65
    3144:	6e6f6674 	0x6e6f6674
    3148:	6865636c 	0x6865636c
    314c:	6173736f 	0x6173736f
    3150:	66393757 	0x66393757
    3154:	65617273 	0x65617273
    3158:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    315c:	7265656e 	0x7265656e
    3160:	49664963 	0x49664963
    3164:	6f756c64 	0x6f756c64
    3168:	6f666665 	0x6f666665
    316c:	72796f75 	0x72796f75
    3170:	6f6e6c79 	0x6f6e6c79
    3174:	6f6e6574 	0x6f6e6574
    3178:	6970666f 	0x6970666f
    317c:	72746865 	0x72746865
    3180:	66757475 	0x66757475
    3184:	72657375 	0x72657375
    3188:	6e736372 	0x6e736372
    318c:	65656e77 	0x65656e77
    3190:	6f756c64 	0x6f756c64
    3194:	62656974 	0x62656974
    3198:	5468656c 	0x5468656c
    319c:	6f6e6774 	0x6f6e6774
    31a0:	65726d62 	0x65726d62
    31a4:	656e6566 	0x656e6566
    31a8:	6974736f 	0x6974736f
    31ac:	6673756e 	0x6673756e
    31b0:	73637265 	0x73637265
    31b4:	656e6861 	0x656e6861
    31b8:	76656265 	jalx	9958994 <outData+0x9954994>
    31bc:	656e7072 	0x656e7072
    31c0:	6f766564 	0x6f766564
    31c4:	62797363 	0x62797363
    31c8:	69656e74 	0x69656e74
    31cc:	69737473 	0x69737473
    31d0:	77686572 	jalx	da195c8 <outData+0xda155c8>
    31d4:	65617374 	0x65617374
    31d8:	68657265 	0x68657265
    31dc:	73746f66 	0x73746f66
    31e0:	6d796164 	0x6d796164
    31e4:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    31e8:	6861736e 	0x6861736e
    31ec:	6f626173 	0x6f626173
    31f0:	69736d6f 	0x69736d6f
    31f4:	72657265 	0x72657265
    31f8:	6c696162 	0x6c696162
    31fc:	6c657468 	0x6c657468
    3200:	616e6d79 	0x616e6d79
    3204:	6f776e6d 	0x6f776e6d
    3208:	65616e64 	0x65616e64
    320c:	6572696e 	0x6572696e
    3210:	67657870 	0x67657870
    3214:	65726965 	0x65726965
    3218:	6e636549 	0x6e636549
    321c:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    3220:	64697370 	0x64697370
    3224:	656e7365 	0x656e7365
    3228:	74686973 	jalx	1a1a5cc <outData+0x1a165cc>
    322c:	61647669 	0x61647669
    3230:	63656e6f 	0x63656e6f
    3234:	77456e6a 	jalx	d15b9a8 <outData+0xd1579a8>
    3238:	6f797468 	0x6f797468
    323c:	65706f77 	0x65706f77
    3240:	6572616e 	0x6572616e
    3244:	64626561 	0x64626561
    3248:	7574796f 	jalx	5d1e5bc <outData+0x5d1a5bc>
    324c:	66796f75 	0x66796f75
    3250:	72796f75 	0x72796f75
    3254:	74684f68 	jalx	1a13da0 <outData+0x1a0fda0>
    3258:	6e657665 	0x6e657665
    325c:	726d696e 	0x726d696e
    3260:	64596f75 	0x64596f75
    3264:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    3268:	6e6f7475 	0x6e6f7475
    326c:	6e646572 	0x6e646572
    3270:	7374616e 	0x7374616e
    3274:	64746865 	0x64746865
    3278:	706f7765 	0x706f7765
    327c:	72616e64 	0x72616e64
    3280:	62656175 	0x62656175
    3284:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
    3288:	796f7572 	0x796f7572
    328c:	796f7574 	0x796f7574
    3290:	68756e74 	0x68756e74
    3294:	696c7468 	0x696c7468
    3298:	65797665 	0x65797665
    329c:	66616465 	0x66616465
    32a0:	64427574 	0x64427574
    32a4:	74727573 	jalx	1c9d5cc <outData+0x1c995cc>
    32a8:	746d6569 	jalx	1b595a4 <outData+0x1b555a4>
    32ac:	6e323079 	0x6e323079
    32b0:	65617273 	0x65617273
    32b4:	796f756c 	0x796f756c
    32b8:	6c6c6f6f 	0x6c6c6f6f
    32bc:	6b626163 	0x6b626163
    32c0:	6b617470 	0x6b617470
    32c4:	686f746f 	0x686f746f
    32c8:	736f6679 	0x736f6679
    32cc:	6f757273 	0x6f757273
    32d0:	656c6661 	0x656c6661
    32d4:	6e647265 	0x6e647265
    32d8:	63616c6c 	0x63616c6c
    32dc:	696e6177 	0x696e6177
    32e0:	6179796f 	0x6179796f
    32e4:	7563616e 	jalx	58d85b8 <outData+0x58d45b8>
    32e8:	74677261 	jalx	19dc984 <outData+0x19d8984>
    32ec:	73706e6f 	0x73706e6f
    32f0:	77686f77 	jalx	da1bddc <outData+0xda17ddc>
    32f4:	6d756368 	0x6d756368
    32f8:	706f7373 	0x706f7373
    32fc:	6962696c 	0x6962696c
    3300:	6974796c 	0x6974796c
    3304:	61796265 	0x61796265
    3308:	666f7265 	0x666f7265
    330c:	796f7561 	0x796f7561
    3310:	6e64686f 	0x6e64686f
    3314:	77666162 	jalx	d998588 <outData+0xd994588>
    3318:	756c6f75 	jalx	5b1bdd4 <outData+0x5b17dd4>
    331c:	73796f75 	0x73796f75
    3320:	7265616c 	0x7265616c
    3324:	6c796c6f 	0x6c796c6f
    3328:	6f6b6564 	0x6f6b6564
    332c:	596f7561 	0x596f7561
    3330:	72656e6f 	0x72656e6f
    3334:	74617366 	jalx	185cd98 <outData+0x1858d98>
    3338:	61746173 	0x61746173
    333c:	796f7569 	0x796f7569
    3340:	6d616769 	0x6d616769
    3344:	6e65446f 	0x6e65446f
    3348:	6e74776f 	0x6e74776f
    334c:	72727961 	0x72727961
    3350:	626f7574 	0x626f7574
    3354:	74686566 	jalx	1a19598 <outData+0x1a15598>
    3358:	75747572 	jalx	5d1d5c8 <outData+0x5d195c8>
    335c:	654f7277 	0x654f7277
    3360:	6f727279 	0x6f727279
    3364:	6275746b 	0x6275746b
    3368:	6e6f7774 	0x6e6f7774
    336c:	68617474 	0x68617474
    3370:	73436f6d 	0x73436f6d
    3374:	6d656e63 	0x6d656e63
    3378:	656d656e 	0x656d656e
    337c:	74416464 	jalx	1059190 <outData+0x1055190>
    3380:	72657373 	0x72657373
    3384:	61744d49 	0x61744d49
    3388:	544c6164 	0x544c6164
    338c:	69657361 	0x69657361
    3390:	6e646765 	0x6e646765
    3394:	6e746c65 	0x6e746c65
    3398:	6d656e6f 	0x6d656e6f
    339c:	66746865 	0x66746865
    33a0:	636c6173 	0x636c6173
    33a4:	736f6639 	0x736f6639
    33a8:	37576561 	ori	s7,k0,0x6561
    33ac:	7273756e 	0x7273756e
    33b0:	73637265 	0x73637265
    33b4:	656e4966 	0x656e4966
    33b8:	49636f75 	0x49636f75
    33bc:	6c646f66 	0x6c646f66
    33c0:	66657279 	0x66657279
    33c4:	6f756f6e 	0x6f756f6e
    33c8:	6c796f6e 	0x6c796f6e
    33cc:	65746970 	0x65746970
    33d0:	666f7274 	0x666f7274
    33d4:	68656675 	0x68656675
    33d8:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    33dc:	4b757274 	c2	0x1757274
    33e0:	566f6e6e 	0x566f6e6e
    33e4:	65677574 	0x65677574
    33e8:	73436f6d 	0x73436f6d
    33ec:	6d656e63 	0x6d656e63
    33f0:	656d656e 	0x656d656e
    33f4:	74416464 	jalx	1059190 <outData+0x1055190>
    33f8:	72657373 	0x72657373
    33fc:	61744d49 	0x61744d49
    3400:	544c6164 	0x544c6164
    3404:	69657361 	0x69657361
    3408:	6e646765 	0x6e646765
    340c:	6e746c65 	0x6e746c65
    3410:	6d656e6f 	0x6d656e6f
    3414:	66746865 	0x66746865
    3418:	636c6173 	0x636c6173
    341c:	736f6639 	0x736f6639
    3420:	37576561 	ori	s7,k0,0x6561
    3424:	7273756e 	0x7273756e
    3428:	73637265 	0x73637265
    342c:	656e4966 	0x656e4966
    3430:	49636f75 	0x49636f75
    3434:	6c646f66 	0x6c646f66
    3438:	66657279 	0x66657279
    343c:	6f756f6e 	0x6f756f6e
    3440:	6c796f6e 	0x6c796f6e
    3444:	65746970 	0x65746970
    3448:	666f7274 	0x666f7274
    344c:	68656675 	0x68656675
    3450:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    3454:	73756e73 	0x73756e73
    3458:	63726565 	0x63726565
    345c:	6e776f75 	0x6e776f75
    3460:	6c646265 	0x6c646265
    3464:	69745468 	0x69745468
    3468:	656c6f6e 	0x656c6f6e
    346c:	67746572 	0x67746572
    3470:	6d62656e 	0x6d62656e
    3474:	65666974 	0x65666974
    3478:	736f6673 	0x736f6673
    347c:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    3480:	7265656e 	0x7265656e
    3484:	68617665 	0x68617665
    3488:	6265656e 	0x6265656e
    348c:	70726f76 	0x70726f76
    3490:	65646279 	0x65646279
    3494:	73636965 	0x73636965
    3498:	6e746973 	0x6e746973
    349c:	74737768 	jalx	1cddda0 <outData+0x1cd9da0>
    34a0:	65726561 	0x65726561
    34a4:	73746865 	0x73746865
    34a8:	72657374 	0x72657374
    34ac:	6f666d79 	0x6f666d79
    34b0:	61647669 	0x61647669
    34b4:	63656861 	0x63656861
    34b8:	736e6f62 	0x736e6f62
    34bc:	61736973 	0x61736973
    34c0:	6d6f7265 	0x6d6f7265
    34c4:	72656c69 	0x72656c69
    34c8:	61626c65 	0x61626c65
    34cc:	7468616e 	jalx	1a185b8 <outData+0x1a145b8>
    34d0:	6d796f77 	0x6d796f77
    34d4:	6e6d6561 	0x6e6d6561
    34d8:	6e646572 	0x6e646572
    34dc:	696e6765 	0x696e6765
    34e0:	78706572 	0x78706572
    34e4:	69656e63 	0x69656e63
    34e8:	65497769 	0x65497769
    34ec:	6c6c6469 	0x6c6c6469
    34f0:	7370656e 	0x7370656e
    34f4:	73657468 	0x73657468
    34f8:	69736164 	0x69736164
    34fc:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    3500:	6e6f7745 	0x6e6f7745
    3504:	6e6a6f79 	0x6e6a6f79
    3508:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
    350c:	6f776572 	0x6f776572
    3510:	616e6462 	0x616e6462
    3514:	65617574 	0x65617574
    3518:	796f6679 	0x796f6679
    351c:	6f757279 	0x6f757279
    3520:	6f757468 	0x6f757468
    3524:	4f686e65 	c3	0x1686e65
    3528:	7665726d 	jalx	995c9b4 <outData+0x99589b4>
    352c:	696e6459 	0x696e6459
    3530:	6f757769 	0x6f757769
    3534:	6c6c6e6f 	0x6c6c6e6f
    3538:	74756e64 	jalx	1d5b990 <outData+0x1d57990>
    353c:	65727374 	0x65727374
    3540:	616e6474 	0x616e6474
    3544:	6865706f 	0x6865706f
    3548:	77657261 	jalx	d95c984 <outData+0xd958984>
    354c:	6e646265 	0x6e646265
    3550:	61757479 	0x61757479
    3554:	6f66796f 	0x6f66796f
    3558:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
    355c:	75746875 	jalx	5d1a1d4 <outData+0x5d161d4>
    3560:	6e74696c 	0x6e74696c
    3564:	74686579 	jalx	1a195e4 <outData+0x1a155e4>
    3568:	76656661 	jalx	9959984 <outData+0x9955984>
    356c:	64656442 	0x64656442
    3570:	75747472 	jalx	5d1d1c8 <outData+0x5d191c8>
    3574:	7573746d 	jalx	5cdd1b4 <outData+0x5cd91b4>
    3578:	65696e32 	0x65696e32
    357c:	30796561 	andi	t9,v1,0x6561
    3580:	7273796f 	0x7273796f
    3584:	756c6c6c 	jalx	5b1b1b0 <outData+0x5b171b0>
    3588:	6f6f6b62 	0x6f6f6b62
    358c:	61636b61 	0x61636b61
    3590:	7470686f 	jalx	1c1a1bc <outData+0x1c161bc>
    3594:	746f736f 	jalx	1bdcdbc <outData+0x1bd8dbc>
    3598:	66796f75 	0x66796f75
    359c:	7273656c 	0x7273656c
    35a0:	66616e64 	0x66616e64
    35a4:	72656361 	0x72656361
    35a8:	6c6c696e 	0x6c6c696e
    35ac:	61776179 	0x61776179
    35b0:	796f7563 	0x796f7563
    35b4:	616e7467 	0x616e7467
    35b8:	72617370 	0x72617370
    35bc:	6e6f7768 	0x6e6f7768
    35c0:	6f776d75 	0x6f776d75
    35c4:	6368706f 	0x6368706f
    35c8:	73736962 	0x73736962
    35cc:	696c6974 	0x696c6974
    35d0:	796c6179 	0x796c6179
    35d4:	6265666f 	0x6265666f
    35d8:	7265796f 	0x7265796f
    35dc:	75616e64 	jalx	585b990 <outData+0x5857990>
    35e0:	686f7766 	0x686f7766
    35e4:	6162756c 	0x6162756c
    35e8:	6f757379 	0x6f757379
    35ec:	6f757265 	0x6f757265
    35f0:	616c6c79 	0x616c6c79
    35f4:	6c6f6f6b 	0x6c6f6f6b
    35f8:	6564596f 	0x6564596f
    35fc:	75617265 	jalx	585c994 <outData+0x5858994>
    3600:	6e6f7461 	0x6e6f7461
    3604:	73666174 	0x73666174
    3608:	6173796f 	0x6173796f
    360c:	75696d61 	jalx	5a5b584 <outData+0x5a57584>
    3610:	67696e65 	0x67696e65
    3614:	446f6e74 	0x446f6e74
    3618:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
    361c:	7961626f 	0x7961626f
    3620:	75747468 	jalx	5d1d1a0 <outData+0x5d191a0>
    3624:	65667574 	0x65667574
    3628:	7572654f 	jalx	5c9953c <outData+0x5c9553c>
    362c:	72776f72 	0x72776f72
    3630:	72796275 	0x72796275
    3634:	746b6e6f 	jalx	1adb9bc <outData+0x1ad79bc>
    3638:	77746861 	jalx	dd1a184 <outData+0xdd16184>
    363c:	744b7572 	jalx	12dd5c8 <outData+0x12d95c8>
    3640:	74566f6e 	jalx	159bdb8 <outData+0x1597db8>
    3644:	6e656775 	0x6e656775
    3648:	7473436f 	jalx	1cd0dbc <outData+0x1cccdbc>
    364c:	6d6d656e 	0x6d6d656e
    3650:	63656d65 	0x63656d65
    3654:	6e744164 	0x6e744164
    3658:	64726573 	0x64726573
    365c:	7361744d 	0x7361744d
    3660:	49544c61 	0x49544c61
    3664:	64696573 	0x64696573
    3668:	616e6467 	0x616e6467
    366c:	656e746c 	0x656e746c
    3670:	656d656e 	0x656d656e
    3674:	6f667468 	0x6f667468
    3678:	65636c61 	0x65636c61
    367c:	73736f66 	0x73736f66
    3680:	39375765 	xori	s7,t1,0x5765
    3684:	61727375 	0x61727375
    3688:	6e736372 	0x6e736372
    368c:	65656e49 	0x65656e49
    3690:	6649636f 	0x6649636f
    3694:	756c646f 	jalx	5b191bc <outData+0x5b151bc>
    3698:	66666572 	0x66666572
    369c:	796f756f 	0x796f756f
    36a0:	6e6c796f 	0x6e6c796f
    36a4:	6e657469 	0x6e657469
    36a8:	70666f72 	0x70666f72
    36ac:	74686566 	jalx	1a19598 <outData+0x1a15598>
    36b0:	75747572 	jalx	5d1d5c8 <outData+0x5d195c8>
    36b4:	6573756e 	0x6573756e
    36b8:	73637265 	0x73637265
    36bc:	656e776f 	0x656e776f
    36c0:	756c6462 	jalx	5b19188 <outData+0x5b15188>
    36c4:	65697454 	0x65697454
    36c8:	68656c6f 	0x68656c6f
    36cc:	6e677465 	0x6e677465
    36d0:	726d6265 	0x726d6265
    36d4:	6e656669 	0x6e656669
    36d8:	74736f66 	jalx	1cdbd98 <outData+0x1cd7d98>
    36dc:	73756e73 	0x73756e73
    36e0:	63726565 	0x63726565
    36e4:	6e686176 	0x6e686176
    36e8:	65626565 	0x65626565
    36ec:	6e70726f 	0x6e70726f
    36f0:	76656462 	jalx	9959188 <outData+0x9955188>
    36f4:	79736369 	0x79736369
    36f8:	656e7469 	0x656e7469
    36fc:	73747377 	0x73747377
    3700:	68657265 	0x68657265
    3704:	61737468 	0x61737468
    3708:	65726573 	0x65726573
    370c:	746f666d 	jalx	1bd99b4 <outData+0x1bd59b4>
    3710:	79616476 	0x79616476
    3714:	69636568 	0x69636568
    3718:	61736e6f 	0x61736e6f
    371c:	62617369 	0x62617369
    3720:	736d6f72 	0x736d6f72
    3724:	6572656c 	0x6572656c
    3728:	6961626c 	0x6961626c
    372c:	65746861 	0x65746861
    3730:	6e6d796f 	0x6e6d796f
    3734:	776e6d65 	jalx	db9b594 <outData+0xdb97594>
    3738:	616e6465 	0x616e6465
    373c:	72696e67 	0x72696e67
    3740:	65787065 	0x65787065
    3744:	7269656e 	0x7269656e
    3748:	63654977 	0x63654977
    374c:	696c6c64 	0x696c6c64
    3750:	69737065 	0x69737065
    3754:	6e736574 	0x6e736574
    3758:	68697361 	0x68697361
    375c:	64766963 	0x64766963
    3760:	656e6f77 	0x656e6f77
    3764:	456e6a6f 	0x456e6a6f
    3768:	79746865 	0x79746865
    376c:	706f7765 	0x706f7765
    3770:	72616e64 	0x72616e64
    3774:	62656175 	0x62656175
    3778:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
    377c:	796f7572 	0x796f7572
    3780:	796f7574 	0x796f7574
    3784:	684f686e 	0x684f686e
    3788:	65766572 	0x65766572
    378c:	6d696e64 	0x6d696e64
    3790:	596f7577 	0x596f7577
    3794:	696c6c6e 	0x696c6c6e
    3798:	6f74756e 	0x6f74756e
    379c:	64657273 	0x64657273
    37a0:	74616e64 	jalx	185b990 <outData+0x1857990>
    37a4:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
    37a8:	6f776572 	0x6f776572
    37ac:	616e6462 	0x616e6462
    37b0:	65617574 	0x65617574
    37b4:	796f6679 	0x796f6679
    37b8:	6f757279 	0x6f757279
    37bc:	6f757468 	0x6f757468
    37c0:	756e7469 	jalx	5b9d1a4 <outData+0x5b991a4>
    37c4:	6c746865 	0x6c746865
    37c8:	79766566 	0x79766566
    37cc:	61646564 	0x61646564
    37d0:	42757474 	c0	0x757474
    37d4:	72757374 	0x72757374
    37d8:	6d65696e 	0x6d65696e
    37dc:	32307965 	andi	s0,s1,0x7965
    37e0:	61727379 	0x61727379
    37e4:	6f756c6c 	0x6f756c6c
    37e8:	6c6f6f6b 	0x6c6f6f6b
    37ec:	6261636b 	0x6261636b
    37f0:	61747068 	0x61747068
    37f4:	6f746f73 	0x6f746f73
    37f8:	6f66796f 	0x6f66796f
    37fc:	75727365 	jalx	5c9cd94 <outData+0x5c98d94>
    3800:	6c66616e 	0x6c66616e
    3804:	64726563 	0x64726563
    3808:	616c6c69 	0x616c6c69
    380c:	6e617761 	0x6e617761
    3810:	79796f75 	0x79796f75
    3814:	63616e74 	0x63616e74
    3818:	67726173 	0x67726173
    381c:	706e6f77 	0x706e6f77
    3820:	686f776d 	0x686f776d
    3824:	75636870 	jalx	58da1c0 <outData+0x58d61c0>
    3828:	6f737369 	0x6f737369
    382c:	62696c69 	0x62696c69
    3830:	74796c61 	jalx	1e5b184 <outData+0x1e57184>
    3834:	79626566 	0x79626566
    3838:	6f726579 	0x6f726579
    383c:	6f75616e 	0x6f75616e
    3840:	64686f77 	0x64686f77
    3844:	66616275 	0x66616275
    3848:	6c6f7573 	0x6c6f7573
    384c:	796f7572 	0x796f7572
    3850:	65616c6c 	0x65616c6c
    3854:	796c6f6f 	0x796c6f6f
    3858:	6b656459 	0x6b656459
    385c:	6f756172 	0x6f756172
    3860:	656e6f74 	0x656e6f74
    3864:	61736661 	0x61736661
    3868:	74617379 	jalx	185cde4 <outData+0x1858de4>
    386c:	6f75696d 	0x6f75696d
    3870:	6167696e 	0x6167696e
    3874:	65446f6e 	0x65446f6e
    3878:	74776f72 	jalx	1ddbdc8 <outData+0x1dd7dc8>
    387c:	72796162 	0x72796162
    3880:	6f757474 	0x6f757474
    3884:	68656675 	0x68656675
    3888:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    388c:	4f72776f 	c3	0x172776f
    3890:	72727962 	0x72727962
    3894:	75746b6e 	jalx	5d1adb8 <outData+0x5d16db8>
    3898:	6f777468 	0x6f777468
    389c:	61744b75 	0x61744b75
    38a0:	7274566f 	0x7274566f
    38a4:	6e6e6567 	0x6e6e6567
    38a8:	75747343 	jalx	5d1cd0c <outData+0x5d18d0c>
    38ac:	6f6d6d65 	0x6f6d6d65
    38b0:	6e63656d 	0x6e63656d
    38b4:	656e7441 	0x656e7441
    38b8:	64647265 	0x64647265
    38bc:	73736174 	0x73736174
    38c0:	4d49544c 	0x4d49544c
    38c4:	61646965 	0x61646965
    38c8:	73616e64 	0x73616e64
    38cc:	67656e74 	0x67656e74
    38d0:	6c656d65 	0x6c656d65
    38d4:	6e6f6674 	0x6e6f6674
    38d8:	6865636c 	0x6865636c
    38dc:	6173736f 	0x6173736f
    38e0:	66393757 	0x66393757
    38e4:	65617273 	0x65617273
    38e8:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    38ec:	7265656e 	0x7265656e
    38f0:	49664963 	0x49664963
    38f4:	6f756c64 	0x6f756c64
    38f8:	6f666665 	0x6f666665
    38fc:	72796f75 	0x72796f75
    3900:	6f6e6c79 	0x6f6e6c79
    3904:	6f6e6574 	0x6f6e6574
    3908:	6970666f 	0x6970666f
    390c:	72746865 	0x72746865
    3910:	66757475 	0x66757475
    3914:	72657375 	0x72657375
    3918:	6e736372 	0x6e736372
    391c:	65656e77 	0x65656e77
    3920:	6f756c64 	0x6f756c64
    3924:	62656974 	0x62656974
    3928:	5468656c 	0x5468656c
    392c:	6f6e6774 	0x6f6e6774
    3930:	65726d62 	0x65726d62
    3934:	656e6566 	0x656e6566
    3938:	6974736f 	0x6974736f
    393c:	6673756e 	0x6673756e
    3940:	73637265 	0x73637265
    3944:	656e6861 	0x656e6861
    3948:	76656265 	jalx	9958994 <outData+0x9954994>
    394c:	656e7072 	0x656e7072
    3950:	6f766564 	0x6f766564
    3954:	62797363 	0x62797363
    3958:	69656e74 	0x69656e74
    395c:	69737473 	0x69737473
    3960:	77686572 	jalx	da195c8 <outData+0xda155c8>
    3964:	65617374 	0x65617374
    3968:	68657265 	0x68657265
    396c:	73746f66 	0x73746f66
    3970:	6d796164 	0x6d796164
    3974:	76696365 	jalx	9a58d94 <outData+0x9a54d94>
    3978:	6861736e 	0x6861736e
    397c:	6f626173 	0x6f626173
    3980:	69736d6f 	0x69736d6f
    3984:	72657265 	0x72657265
    3988:	6c696162 	0x6c696162
    398c:	6c657468 	0x6c657468
    3990:	616e6d79 	0x616e6d79
    3994:	6f776e6d 	0x6f776e6d
    3998:	65616e64 	0x65616e64
    399c:	6572696e 	0x6572696e
    39a0:	67657870 	0x67657870
    39a4:	65726965 	0x65726965
    39a8:	6e636549 	0x6e636549
    39ac:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    39b0:	64697370 	0x64697370
    39b4:	656e7365 	0x656e7365
    39b8:	74686973 	jalx	1a1a5cc <outData+0x1a165cc>
    39bc:	61647669 	0x61647669
    39c0:	63656e6f 	0x63656e6f
    39c4:	77456e6a 	jalx	d15b9a8 <outData+0xd1579a8>
    39c8:	6f797468 	0x6f797468
    39cc:	65706f77 	0x65706f77
    39d0:	6572616e 	0x6572616e
    39d4:	64626561 	0x64626561
    39d8:	7574796f 	jalx	5d1e5bc <outData+0x5d1a5bc>
    39dc:	66796f75 	0x66796f75
    39e0:	72796f75 	0x72796f75
    39e4:	74684f68 	jalx	1a13da0 <outData+0x1a0fda0>
    39e8:	6e657665 	0x6e657665
    39ec:	726d696e 	0x726d696e
    39f0:	64596f75 	0x64596f75
    39f4:	77696c6c 	jalx	da5b1b0 <outData+0xda571b0>
    39f8:	6e6f7475 	0x6e6f7475
    39fc:	6e646572 	0x6e646572
    3a00:	7374616e 	0x7374616e
    3a04:	64746865 	0x64746865
    3a08:	706f7765 	0x706f7765
    3a0c:	72616e64 	0x72616e64
    3a10:	62656175 	0x62656175
    3a14:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
    3a18:	796f7572 	0x796f7572
    3a1c:	796f7574 	0x796f7574
    3a20:	68756e74 	0x68756e74
    3a24:	696c7468 	0x696c7468
    3a28:	65797665 	0x65797665
    3a2c:	66616465 	0x66616465
    3a30:	64427574 	0x64427574
    3a34:	74727573 	jalx	1c9d5cc <outData+0x1c995cc>
    3a38:	746d6569 	jalx	1b595a4 <outData+0x1b555a4>
    3a3c:	6e323079 	0x6e323079
    3a40:	65617273 	0x65617273
    3a44:	796f756c 	0x796f756c
    3a48:	6c6c6f6f 	0x6c6c6f6f
    3a4c:	6b626163 	0x6b626163
    3a50:	6b617470 	0x6b617470
    3a54:	686f746f 	0x686f746f
    3a58:	736f6679 	0x736f6679
    3a5c:	6f757273 	0x6f757273
    3a60:	656c6661 	0x656c6661
    3a64:	6e647265 	0x6e647265
    3a68:	63616c6c 	0x63616c6c
    3a6c:	696e6177 	0x696e6177
    3a70:	6179796f 	0x6179796f
    3a74:	7563616e 	jalx	58d85b8 <outData+0x58d45b8>
    3a78:	74677261 	jalx	19dc984 <outData+0x19d8984>
    3a7c:	73706e6f 	0x73706e6f
    3a80:	77686f77 	jalx	da1bddc <outData+0xda17ddc>
    3a84:	6d756368 	0x6d756368
    3a88:	706f7373 	0x706f7373
    3a8c:	6962696c 	0x6962696c
    3a90:	6974796c 	0x6974796c
    3a94:	61796265 	0x61796265
    3a98:	666f7265 	0x666f7265
    3a9c:	796f7561 	0x796f7561
    3aa0:	6e64686f 	0x6e64686f
    3aa4:	77666162 	jalx	d998588 <outData+0xd994588>
    3aa8:	756c6f75 	jalx	5b1bdd4 <outData+0x5b17dd4>
    3aac:	73796f75 	0x73796f75
    3ab0:	7265616c 	0x7265616c
    3ab4:	6c796c6f 	0x6c796c6f
    3ab8:	6f6b6564 	0x6f6b6564
    3abc:	596f7561 	0x596f7561
    3ac0:	72656e6f 	0x72656e6f
    3ac4:	74617366 	jalx	185cd98 <outData+0x1858d98>
    3ac8:	61746173 	0x61746173
    3acc:	796f7569 	0x796f7569
    3ad0:	6d616769 	0x6d616769
    3ad4:	6e65446f 	0x6e65446f
    3ad8:	6e74776f 	0x6e74776f
    3adc:	72727961 	0x72727961
    3ae0:	626f7574 	0x626f7574
    3ae4:	74686566 	jalx	1a19598 <outData+0x1a15598>
    3ae8:	75747572 	jalx	5d1d5c8 <outData+0x5d195c8>
    3aec:	654f7277 	0x654f7277
    3af0:	6f727279 	0x6f727279
    3af4:	6275746b 	0x6275746b
    3af8:	6e6f7774 	0x6e6f7774
    3afc:	68617473 	0x68617473
    3b00:	756e7363 	jalx	5b9cd8c <outData+0x5b98d8c>
    3b04:	7265656e 	0x7265656e
    3b08:	776f756c 	jalx	dbdd5b0 <outData+0xdbd95b0>
    3b0c:	64626569 	0x64626569
    3b10:	74546865 	jalx	151a194 <outData+0x1516194>
    3b14:	6c6f6e67 	0x6c6f6e67
    3b18:	7465726d 	jalx	195c9b4 <outData+0x19589b4>
    3b1c:	62656e65 	0x62656e65
    3b20:	66697473 	0x66697473
    3b24:	6f667375 	0x6f667375
    3b28:	6e736372 	0x6e736372
    3b2c:	65656e68 	0x65656e68
    3b30:	61766562 	0x61766562
    3b34:	65656e70 	0x65656e70
    3b38:	726f7665 	0x726f7665
    3b3c:	64627973 	0x64627973
    3b40:	6369656e 	0x6369656e
    3b44:	74697374 	jalx	1a5cdd0 <outData+0x1a58dd0>
    3b48:	73776865 	0x73776865
    3b4c:	72656173 	0x72656173
    3b50:	74686572 	jalx	1a195c8 <outData+0x1a155c8>
    3b54:	6573746f 	0x6573746f
    3b58:	666d7961 	0x666d7961
    3b5c:	64766963 	0x64766963
    3b60:	65686173 	0x65686173
    3b64:	6e6f6261 	0x6e6f6261
    3b68:	7369736d 	0x7369736d
    3b6c:	6f726572 	0x6f726572
    3b70:	656c6961 	0x656c6961
    3b74:	626c6574 	0x626c6574
    3b78:	68616e6d 	0x68616e6d
    3b7c:	796f776e 	0x796f776e
    3b80:	6d65616e 	0x6d65616e
    3b84:	64657269 	0x64657269
    3b88:	6e676578 	0x6e676578
    3b8c:	70657269 	0x70657269
    3b90:	656e6365 	0x656e6365
    3b94:	4977696c 	0x4977696c
    3b98:	6c646973 	0x6c646973
    3b9c:	70656e73 	0x70656e73
    3ba0:	65746869 	0x65746869
    3ba4:	73616476 	0x73616476
    3ba8:	6963656e 	0x6963656e
    3bac:	6f77456e 	0x6f77456e
    3bb0:	6a6f7974 	0x6a6f7974
    3bb4:	6865706f 	0x6865706f
    3bb8:	77657261 	jalx	d95c984 <outData+0xd958984>
    3bbc:	6e646265 	0x6e646265
    3bc0:	61757479 	0x61757479
    3bc4:	6f66796f 	0x6f66796f
    3bc8:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
    3bcc:	7574684f 	jalx	5d1a13c <outData+0x5d1613c>
    3bd0:	686e6576 	0x686e6576
    3bd4:	65726d69 	0x65726d69
    3bd8:	6e64596f 	0x6e64596f
    3bdc:	7577696c 	jalx	5dda5b0 <outData+0x5dd65b0>
    3be0:	6c6e6f74 	0x6c6e6f74
    3be4:	756e6465 	jalx	5b99194 <outData+0x5b95194>
    3be8:	72737461 	0x72737461
    3bec:	6e647468 	0x6e647468
    3bf0:	65706f77 	0x65706f77
    3bf4:	6572616e 	0x6572616e
    3bf8:	64626561 	0x64626561
    3bfc:	7574796f 	jalx	5d1e5bc <outData+0x5d1a5bc>
    3c00:	66796f75 	0x66796f75
    3c04:	72796f75 	0x72796f75
    3c08:	7468756e 	jalx	1a1d5b8 <outData+0x1a195b8>
    3c0c:	74696c74 	jalx	1a5b1d0 <outData+0x1a571d0>
    3c10:	68657976 	0x68657976
    3c14:	65666164 	0x65666164
    3c18:	65644275 	0x65644275
    3c1c:	74747275 	jalx	1d1c9d4 <outData+0x1d189d4>
    3c20:	73746d65 	0x73746d65
    3c24:	696e3230 	0x696e3230
    3c28:	79656172 	0x79656172
    3c2c:	73796f75 	0x73796f75
    3c30:	6c6c6c6f 	0x6c6c6c6f
    3c34:	6f6b6261 	0x6f6b6261
    3c38:	636b6174 	0x636b6174
    3c3c:	70686f74 	0x70686f74
    3c40:	6f736f66 	0x6f736f66
    3c44:	796f7572 	0x796f7572
    3c48:	73656c66 	0x73656c66
    3c4c:	616e6472 	0x616e6472
    3c50:	6563616c 	0x6563616c
    3c54:	6c696e61 	0x6c696e61
    3c58:	77617979 	jalx	d85e5e4 <outData+0xd85a5e4>
    3c5c:	6f756361 	0x6f756361
    3c60:	6e746772 	0x6e746772
    3c64:	6173706e 	0x6173706e
    3c68:	6f77686f 	0x6f77686f
    3c6c:	776d7563 	jalx	db5d58c <outData+0xdb5958c>
    3c70:	68706f73 	0x68706f73
    3c74:	73696269 	0x73696269
    3c78:	6c697479 	0x6c697479
    3c7c:	6c617962 	0x6c617962
    3c80:	65666f72 	0x65666f72
    3c84:	65796f75 	0x65796f75
    3c88:	616e6468 	0x616e6468
    3c8c:	6f776661 	0x6f776661
    3c90:	62756c6f 	0x62756c6f
    3c94:	7573796f 	jalx	5cde5bc <outData+0x5cda5bc>
    3c98:	75726561 	jalx	5c99584 <outData+0x5c95584>
    3c9c:	6c6c796c 	0x6c6c796c
    3ca0:	6f6f6b65 	0x6f6f6b65
    3ca4:	64596f75 	0x64596f75
    3ca8:	6172656e 	0x6172656e
    3cac:	6f746173 	0x6f746173
    3cb0:	66617461 	0x66617461
    3cb4:	73796f75 	0x73796f75
    3cb8:	696d6167 	0x696d6167
    3cbc:	696e6544 	0x696e6544
    3cc0:	6f6e7477 	0x6f6e7477
    3cc4:	6f727279 	0x6f727279
    3cc8:	61626f75 	0x61626f75
    3ccc:	74746865 	jalx	1d1a194 <outData+0x1d16194>
    3cd0:	66757475 	0x66757475
    3cd4:	72654f72 	0x72654f72
    3cd8:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
    3cdc:	79627574 	0x79627574
    3ce0:	6b6e6f77 	0x6b6e6f77
    3ce4:	74686174 	jalx	1a185d0 <outData+0x1a145d0>
    3ce8:	6e646265 	0x6e646265
    3cec:	61757479 	0x61757479
    3cf0:	6f66796f 	0x6f66796f
    3cf4:	7572796f 	jalx	5c9e5bc <outData+0x5c9a5bc>
    3cf8:	75746875 	jalx	5d1a1d4 <outData+0x5d161d4>
    3cfc:	6e74696c 	0x6e74696c
    3d00:	74686579 	jalx	1a195e4 <outData+0x1a155e4>
    3d04:	76656661 	jalx	9959984 <outData+0x9955984>
    3d08:	64656442 	0x64656442
    3d0c:	75747472 	jalx	5d1d1c8 <outData+0x5d191c8>
    3d10:	7573746d 	jalx	5cdd1b4 <outData+0x5cd91b4>
    3d14:	65696e32 	0x65696e32
    3d18:	30796561 	andi	t9,v1,0x6561
    3d1c:	7273796f 	0x7273796f
    3d20:	756c6c6c 	jalx	5b1b1b0 <outData+0x5b171b0>
    3d24:	6f6f6b62 	0x6f6f6b62
    3d28:	61636b61 	0x61636b61
    3d2c:	7470686f 	jalx	1c1a1bc <outData+0x1c161bc>
    3d30:	746f736f 	jalx	1bdcdbc <outData+0x1bd8dbc>
    3d34:	66796f75 	0x66796f75
    3d38:	7273656c 	0x7273656c
    3d3c:	66616e64 	0x66616e64
    3d40:	72656361 	0x72656361
    3d44:	6c6c696e 	0x6c6c696e
    3d48:	61776179 	0x61776179
    3d4c:	796f7563 	0x796f7563
    3d50:	616e7467 	0x616e7467
    3d54:	72617370 	0x72617370
    3d58:	6e6f7768 	0x6e6f7768
    3d5c:	6f776d75 	0x6f776d75
    3d60:	6368706f 	0x6368706f
    3d64:	73736962 	0x73736962
    3d68:	696c6974 	0x696c6974
    3d6c:	796c6179 	0x796c6179
    3d70:	6265666f 	0x6265666f
    3d74:	7265796f 	0x7265796f
    3d78:	75616e64 	jalx	585b990 <outData+0x5857990>
    3d7c:	686f7766 	0x686f7766
    3d80:	6162756c 	0x6162756c
    3d84:	6f757379 	0x6f757379
    3d88:	6f757265 	0x6f757265
    3d8c:	616c6c79 	0x616c6c79
    3d90:	6c6f6f6b 	0x6c6f6f6b
    3d94:	6564596f 	0x6564596f
    3d98:	75617265 	jalx	585c994 <outData+0x5858994>
    3d9c:	6e6f7461 	0x6e6f7461
    3da0:	73666174 	0x73666174
    3da4:	6173796f 	0x6173796f
    3da8:	75696d61 	jalx	5a5b584 <outData+0x5a57584>
    3dac:	67696e65 	0x67696e65
    3db0:	446f6e74 	0x446f6e74
    3db4:	776f7272 	jalx	dbdc9c8 <outData+0xdbd89c8>
    3db8:	7961626f 	0x7961626f
    3dbc:	75747468 	jalx	5d1d1a0 <outData+0x5d191a0>
    3dc0:	65667574 	0x65667574
    3dc4:	7572654f 	jalx	5c9953c <outData+0x5c9553c>
    3dc8:	72776f72 	0x72776f72
    3dcc:	72796275 	0x72796275
    3dd0:	746b6e6f 	jalx	1adb9bc <outData+0x1ad79bc>
    3dd4:	77746861 	jalx	dd1a184 <outData+0xdd16184>
    3dd8:	7473756e 	jalx	1cdd5b8 <outData+0x1cd95b8>
    3ddc:	73637265 	0x73637265
    3de0:	656e776f 	0x656e776f
    3de4:	756c6462 	jalx	5b19188 <outData+0x5b15188>
    3de8:	65697454 	0x65697454
    3dec:	68656c6f 	0x68656c6f
    3df0:	6e677465 	0x6e677465
    3df4:	726d6265 	0x726d6265
    3df8:	6e656669 	0x6e656669
    3dfc:	74736f66 	jalx	1cdbd98 <outData+0x1cd7d98>
    3e00:	73756e73 	0x73756e73
    3e04:	63726565 	0x63726565
    3e08:	6e686176 	0x6e686176
    3e0c:	65626565 	0x65626565
    3e10:	6e70726f 	0x6e70726f
    3e14:	76656462 	jalx	9959188 <outData+0x9955188>
    3e18:	79736369 	0x79736369
    3e1c:	656e7469 	0x656e7469
    3e20:	73747377 	0x73747377
    3e24:	68657265 	0x68657265
    3e28:	61737468 	0x61737468
    3e2c:	65726573 	0x65726573
    3e30:	746f666d 	jalx	1bd99b4 <outData+0x1bd59b4>
    3e34:	79616476 	0x79616476
    3e38:	69636568 	0x69636568
    3e3c:	61736e6f 	0x61736e6f
    3e40:	62617369 	0x62617369
    3e44:	736d6f72 	0x736d6f72
    3e48:	6572656c 	0x6572656c
    3e4c:	6961626c 	0x6961626c
    3e50:	65746861 	0x65746861
    3e54:	6e6d796f 	0x6e6d796f
    3e58:	776e6d65 	jalx	db9b594 <outData+0xdb97594>
    3e5c:	616e6465 	0x616e6465
    3e60:	72696e67 	0x72696e67
    3e64:	65787065 	0x65787065
    3e68:	7269656e 	0x7269656e
    3e6c:	63654977 	0x63654977
    3e70:	696c6c64 	0x696c6c64
    3e74:	69737065 	0x69737065
    3e78:	6e736574 	0x6e736574
    3e7c:	68697361 	0x68697361
    3e80:	64766963 	0x64766963
    3e84:	656e6f77 	0x656e6f77
    3e88:	456e6a6f 	0x456e6a6f
    3e8c:	79746865 	0x79746865
    3e90:	706f7765 	0x706f7765
    3e94:	72616e64 	0x72616e64
    3e98:	62656175 	0x62656175
    3e9c:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
    3ea0:	796f7572 	0x796f7572
    3ea4:	796f7574 	0x796f7574
    3ea8:	684f686e 	0x684f686e
    3eac:	65766572 	0x65766572
    3eb0:	6d696e64 	0x6d696e64
    3eb4:	596f7577 	0x596f7577
    3eb8:	696c6c6e 	0x696c6c6e
    3ebc:	6f74756e 	0x6f74756e
    3ec0:	64657273 	0x64657273
    3ec4:	74616e64 	jalx	185b990 <outData+0x1857990>
    3ec8:	74686570 	jalx	1a195c0 <outData+0x1a155c0>
    3ecc:	6f776572 	0x6f776572
    3ed0:	616e6462 	0x616e6462
    3ed4:	65617574 	0x65617574
    3ed8:	796f6679 	0x796f6679
    3edc:	6f757279 	0x6f757279
    3ee0:	6f757468 	0x6f757468
    3ee4:	756e7469 	jalx	5b9d1a4 <outData+0x5b991a4>
    3ee8:	6c746865 	0x6c746865
    3eec:	79766566 	0x79766566
    3ef0:	61646564 	0x61646564
    3ef4:	42757474 	c0	0x757474
    3ef8:	72757374 	0x72757374
    3efc:	6d65696e 	0x6d65696e
    3f00:	32307965 	andi	s0,s1,0x7965
    3f04:	61727379 	0x61727379
    3f08:	6f756c6c 	0x6f756c6c
    3f0c:	6c6f6f6b 	0x6c6f6f6b
    3f10:	6261636b 	0x6261636b
    3f14:	61747068 	0x61747068
    3f18:	6f746f73 	0x6f746f73
    3f1c:	6f66796f 	0x6f66796f
    3f20:	75727365 	jalx	5c9cd94 <outData+0x5c98d94>
    3f24:	6c66616e 	0x6c66616e
    3f28:	64726563 	0x64726563
    3f2c:	616c6c69 	0x616c6c69
    3f30:	6e617761 	0x6e617761
    3f34:	79796f75 	0x79796f75
    3f38:	63616e74 	0x63616e74
    3f3c:	67726173 	0x67726173
    3f40:	706e6f77 	0x706e6f77
    3f44:	686f776d 	0x686f776d
    3f48:	75636870 	jalx	58da1c0 <outData+0x58d61c0>
    3f4c:	6f737369 	0x6f737369
    3f50:	62696c69 	0x62696c69
    3f54:	74796c61 	jalx	1e5b184 <outData+0x1e57184>
    3f58:	79626566 	0x79626566
    3f5c:	6f726579 	0x6f726579
    3f60:	6f75616e 	0x6f75616e
    3f64:	64686f77 	0x64686f77
    3f68:	66616275 	0x66616275
    3f6c:	6c6f7573 	0x6c6f7573
    3f70:	796f7572 	0x796f7572
    3f74:	65616c6c 	0x65616c6c
    3f78:	796c6f6f 	0x796c6f6f
    3f7c:	6b656459 	0x6b656459
    3f80:	6f756172 	0x6f756172
    3f84:	656e6f74 	0x656e6f74
    3f88:	61736661 	0x61736661
    3f8c:	74617379 	jalx	185cde4 <outData+0x1858de4>
    3f90:	6f75696d 	0x6f75696d
    3f94:	6167696e 	0x6167696e
    3f98:	65446f6e 	0x65446f6e
    3f9c:	74776f72 	jalx	1ddbdc8 <outData+0x1dd7dc8>
    3fa0:	72796162 	0x72796162
    3fa4:	6f757474 	0x6f757474
    3fa8:	68656675 	0x68656675
    3fac:	74757265 	jalx	1d5c994 <outData+0x1d58994>
    3fb0:	4f72776f 	c3	0x172776f
    3fb4:	72727962 	0x72727962
    3fb8:	75746b6e 	jalx	5d1adb8 <outData+0x5d16db8>
    3fbc:	6f777468 	0x6f777468
    3fc0:	61746e64 	0x61746e64
    3fc4:	62656175 	0x62656175
    3fc8:	74796f66 	jalx	1e5bd98 <outData+0x1e57d98>
    3fcc:	796f7572 	0x796f7572
    3fd0:	796f7574 	0x796f7574
    3fd4:	68756e74 	0x68756e74
    3fd8:	696c7468 	0x696c7468
    3fdc:	65797665 	0x65797665
    3fe0:	66616465 	0x66616465
    3fe4:	64427574 	0x64427574
    3fe8:	74727573 	jalx	1c9d5cc <outData+0x1c995cc>
    3fec:	746d6569 	jalx	1b595a4 <outData+0x1b555a4>
    3ff0:	6e323079 	0x6e323079
    3ff4:	65617273 	0x65617273
    3ff8:	796f756c 	0x796f756c
    3ffc:	6c6c6f6f 	0x6c6c6f6f

00004000 <outData>:
    4000:	006a5a37 	0x6a5a37
    4004:	93dc9485 	lbu	gp,-27515(s8)
    4008:	2c412112 	sltiu	at,v0,8466
    400c:	63f7ba43 	0x63f7ba43
    4010:	ad73f922 	sw	s3,-1758(t3)
