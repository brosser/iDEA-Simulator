
dfmul.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <normalizeFloat64Subnormal>:
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
   0:	14800003 	bnez	a0,10 <normalizeFloat64Subnormal+0x10>
   4:	00a04021 	addu	t0,a1,zero
    {
      shiftCount += 32;
   8:	08000006 	j	18 <normalizeFloat64Subnormal+0x18>
   c:	24020020 	addiu	v0,zero,32
    }
  else
    {
      a >>= 32;
  10:	00804021 	addu	t0,a0,zero
static int8
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  14:	00001021 	addu	v0,zero,zero
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
  18:	3c090001 	lui	t1,0x1
  1c:	0109482b 	sltu	t1,t0,t1
  20:	11200004 	beqz	t1,34 <normalizeFloat64Subnormal+0x34>
  24:	01001821 	addu	v1,t0,zero
    {
      shiftCount += 16;
      a <<= 16;
  28:	00081c00 	sll	v1,t0,0x10
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
  2c:	0800000e 	j	38 <normalizeFloat64Subnormal+0x38>
  30:	24080010 	addiu	t0,zero,16
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  34:	00004021 	addu	t0,zero,zero
  if (a < 0x10000)
    {
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
  38:	3c090100 	lui	t1,0x100
  3c:	0069482b 	sltu	t1,v1,t1
  40:	11200003 	beqz	t1,50 <normalizeFloat64Subnormal+0x50>
  44:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
  48:	25080008 	addiu	t0,t0,8
      a <<= 8;
  4c:	00031a00 	sll	v1,v1,0x8
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
  50:	2442fff5 	addiu	v0,v0,-11
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
  54:	00481021 	addu	v0,v0,t0
  if (a < 0x1000000)
    {
      shiftCount += 8;
      a <<= 8;
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
  58:	00031e02 	srl	v1,v1,0x18
  5c:	00031880 	sll	v1,v1,0x2
  60:	3c080000 	lui	t0,0x0
  64:	250801e0 	addiu	t0,t0,480
  68:	00681821 	addu	v1,v1,t0
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  6c:	8c630000 	lw	v1,0(v1)
  70:	00000000 	sll	zero,zero,0x0
  74:	00431021 	addu	v0,v0,v1
  *zSigPtr = aSig << shiftCount;
  78:	30430020 	andi	v1,v0,0x20
  7c:	10600005 	beqz	v1,94 <normalizeFloat64Subnormal+0x94>
  80:	00054042 	srl	t0,a1,0x1
  84:	00452804 	sllv	a1,a1,v0
  88:	ace50000 	sw	a1,0(a3)
  8c:	0800002c 	j	b0 <normalizeFloat64Subnormal+0xb0>
  90:	ace00004 	sw	zero,4(a3)
  94:	00021827 	nor	v1,zero,v0
  98:	00681806 	srlv	v1,t0,v1
  9c:	00442004 	sllv	a0,a0,v0
  a0:	00832025 	or	a0,a0,v1
  a4:	ace40000 	sw	a0,0(a3)
  a8:	00452804 	sllv	a1,a1,v0
  ac:	ace50004 	sw	a1,4(a3)
  *zExpPtr = 1 - shiftCount;
  b0:	24030001 	addiu	v1,zero,1
  b4:	00621023 	subu	v0,v1,v0

}
  b8:	03e00008 	jr	ra
  bc:	acc20000 	sw	v0,0(a2)

000000c0 <shift64RightJamming>:
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
  c0:	10c00021 	beqz	a2,148 <shift64RightJamming+0x88>
  c4:	28c20040 	slti	v0,a2,64
    {
      z = a;
    }
  else if (count < 64)
  c8:	1040001c 	beqz	v0,13c <shift64RightJamming+0x7c>
  cc:	00061023 	negu	v0,a2
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
  d0:	3043003f 	andi	v1,v0,0x3f
  d4:	30420020 	andi	v0,v0,0x20
  d8:	10400004 	beqz	v0,ec <shift64RightJamming+0x2c>
  dc:	00054042 	srl	t0,a1,0x1
  e0:	00651004 	sllv	v0,a1,v1
  e4:	08000040 	j	100 <shift64RightJamming+0x40>
  e8:	00001821 	addu	v1,zero,zero
  ec:	00031027 	nor	v0,zero,v1
  f0:	00484006 	srlv	t0,t0,v0
  f4:	00641004 	sllv	v0,a0,v1
  f8:	01021025 	or	v0,t0,v0
  fc:	00651804 	sllv	v1,a1,v1
 100:	00431025 	or	v0,v0,v1
 104:	30c30020 	andi	v1,a2,0x20
 108:	10600004 	beqz	v1,11c <shift64RightJamming+0x5c>
 10c:	0002102b 	sltu	v0,zero,v0
 110:	00c42806 	srlv	a1,a0,a2
 114:	0800004d 	j	134 <shift64RightJamming+0x74>
 118:	00002021 	addu	a0,zero,zero
 11c:	00044040 	sll	t0,a0,0x1
 120:	00061827 	nor	v1,zero,a2
 124:	00681804 	sllv	v1,t0,v1
 128:	00c52806 	srlv	a1,a1,a2
 12c:	00652825 	or	a1,v1,a1
 130:	00c42006 	srlv	a0,a0,a2
 134:	08000052 	j	148 <shift64RightJamming+0x88>
 138:	00452825 	or	a1,v0,a1
    }
  else
    {
      z = (a != 0);
 13c:	00852825 	or	a1,a0,a1
 140:	0005282b 	sltu	a1,zero,a1
 144:	00002021 	addu	a0,zero,zero
    }
  *zPtr = z;
 148:	ace40000 	sw	a0,0(a3)

}
 14c:	03e00008 	jr	ra
 150:	ace50004 	sw	a1,4(a3)

00000154 <mul64To128>:
| `z0Ptr' and `z1Ptr'.
*----------------------------------------------------------------------------*/

INLINE void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
 154:	8fac0010 	lw	t4,16(sp)
 158:	8fad0014 	lw	t5,20(sp)

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
 15c:	00e50019 	multu	a3,a1
 160:	00005812 	mflo	t3
 164:	00005010 	mfhi	t2
	...
  zMiddleA = ((bits64) aLow) * bHigh;
 170:	00c50019 	multu	a2,a1
 174:	00004812 	mflo	t1
 178:	00004010 	mfhi	t0
	...
  zMiddleB = ((bits64) aHigh) * bLow;
 184:	00870019 	multu	a0,a3
 188:	00001812 	mflo	v1
 18c:	00001010 	mfhi	v0
	...
  z0 = ((bits64) aHigh) * bHigh;
 198:	00c40019 	multu	a2,a0
 19c:	00002812 	mflo	a1
 1a0:	00002010 	mfhi	a0
  zMiddleA += zMiddleB;
 1a4:	01237021 	addu	t6,t1,v1
 1a8:	01c9302b 	sltu	a2,t6,t1
 1ac:	01024021 	addu	t0,t0,v0
 1b0:	00c84021 	addu	t0,a2,t0
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 1b4:	0102302b 	sltu	a2,t0,v0
 1b8:	14c00007 	bnez	a2,1d8 <mul64To128+0x84>
 1bc:	24060001 	addiu	a2,zero,1
 1c0:	14480005 	bne	v0,t0,1d8 <mul64To128+0x84>
 1c4:	00003021 	addu	a2,zero,zero
 1c8:	01c3102b 	sltu	v0,t6,v1
 1cc:	10400003 	beqz	v0,1dc <mul64To128+0x88>
 1d0:	01ca7821 	addu	t7,t6,t2
 1d4:	24060001 	addiu	a2,zero,1
  zMiddleA <<= 32;
  z1 += zMiddleA;
 1d8:	01ca7821 	addu	t7,t6,t2
 1dc:	01605021 	addu	t2,t3,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 1e0:	01054821 	addu	t1,t0,a1
 1e4:	0128402b 	sltu	t0,t1,t0
 1e8:	01042021 	addu	a0,t0,a0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 1ec:	24030001 	addiu	v1,zero,1
 1f0:	01ee702b 	sltu	t6,t7,t6
 1f4:	15c00003 	bnez	t6,204 <mul64To128+0xb0>
 1f8:	00001021 	addu	v0,zero,zero
 1fc:	00001821 	addu	v1,zero,zero
 200:	00001021 	addu	v0,zero,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 204:	01232821 	addu	a1,t1,v1
 208:	00a9482b 	sltu	t1,a1,t1
 20c:	00821021 	addu	v0,a0,v0
 210:	01221021 	addu	v0,t1,v0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
  *z1Ptr = z1;
 214:	adaf0000 	sw	t7,0(t5)
 218:	adaa0004 	sw	t2,4(t5)
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 21c:	00463021 	addu	a2,v0,a2
  *z1Ptr = z1;
  *z0Ptr = z0;
 220:	ad860000 	sw	a2,0(t4)

}
 224:	03e00008 	jr	ra
 228:	ad850004 	sw	a1,4(t4)

0000022c <float_raise>:
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 22c:	8f820000 	lw	v0,0(gp)
 230:	00000000 	sll	zero,zero,0x0
 234:	00441025 	or	v0,v0,a0

}
 238:	03e00008 	jr	ra
 23c:	af820000 	sw	v0,0(gp)

00000240 <float64_is_nan>:

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 240:	000517c2 	srl	v0,a1,0x1f
 244:	00042040 	sll	a0,a0,0x1
 248:	00442025 	or	a0,v0,a0
 24c:	00052840 	sll	a1,a1,0x1
 250:	3c03ffe0 	lui	v1,0xffe0
 254:	24630001 	addiu	v1,v1,1
 258:	0083182b 	sltu	v1,a0,v1
 25c:	10600007 	beqz	v1,27c <float64_is_nan+0x3c>
 260:	24020001 	addiu	v0,zero,1
 264:	3c03ffe0 	lui	v1,0xffe0
 268:	14830003 	bne	a0,v1,278 <float64_is_nan+0x38>
 26c:	00000000 	sll	zero,zero,0x0
 270:	14a00002 	bnez	a1,27c <float64_is_nan+0x3c>
 274:	00000000 	sll	zero,zero,0x0
 278:	00001021 	addu	v0,zero,zero

}
 27c:	03e00008 	jr	ra
 280:	00000000 	sll	zero,zero,0x0

00000284 <float64_is_signaling_nan>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 284:	000434c2 	srl	a2,a0,0x13
 288:	30c60fff 	andi	a2,a2,0xfff
 28c:	24030ffe 	addiu	v1,zero,4094
 290:	14c30007 	bne	a2,v1,2b0 <float64_is_signaling_nan+0x2c>
 294:	00000000 	sll	zero,zero,0x0
 298:	3c020007 	lui	v0,0x7
 29c:	3442ffff 	ori	v0,v0,0xffff
 2a0:	00821024 	and	v0,a0,v0
| Returns 1 if the double-precision floating-point value `a' is a signaling
| NaN; otherwise returns 0.
*----------------------------------------------------------------------------*/

flag
float64_is_signaling_nan (float64 a)
 2a4:	00451025 	or	v0,v0,a1
 2a8:	03e00008 	jr	ra
 2ac:	0002102b 	sltu	v0,zero,v0
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));

}
 2b0:	03e00008 	jr	ra
 2b4:	00001021 	addu	v0,zero,zero

000002b8 <propagateFloat64NaN>:
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/

static float64
propagateFloat64NaN (float64 a, float64 b)
{
 2b8:	27bdffd0 	addiu	sp,sp,-48
 2bc:	afbf002c 	sw	ra,44(sp)
 2c0:	afb60028 	sw	s6,40(sp)
 2c4:	afb50024 	sw	s5,36(sp)
 2c8:	afb40020 	sw	s4,32(sp)
 2cc:	afb3001c 	sw	s3,28(sp)
 2d0:	afb20018 	sw	s2,24(sp)
 2d4:	afb10014 	sw	s1,20(sp)
 2d8:	afb00010 	sw	s0,16(sp)
 2dc:	0080a021 	addu	s4,a0,zero
 2e0:	00a0b021 	addu	s6,a1,zero
 2e4:	00c08821 	addu	s1,a2,zero
  flag aIsNaN, aIsSignalingNaN, bIsNaN, bIsSignalingNaN;

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
 2e8:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 2ec:	00e09021 	addu	s2,a3,zero
 2f0:	00409821 	addu	s3,v0,zero
  bIsNaN = float64_is_nan (b);
 2f4:	02202021 	addu	a0,s1,zero
 2f8:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 2fc:	02402821 	addu	a1,s2,zero
 300:	0040a821 	addu	s5,v0,zero
  bIsSignalingNaN = float64_is_signaling_nan (b);
 304:	02202021 	addu	a0,s1,zero
 308:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 30c:	02402821 	addu	a1,s2,zero
 310:	00408021 	addu	s0,v0,zero
  a |= LIT64 (0x0008000000000000);
 314:	3c020008 	lui	v0,0x8
 318:	0282a025 	or	s4,s4,v0
  b |= LIT64 (0x0008000000000000);
 31c:	02228825 	or	s1,s1,v0
  if (aIsSignalingNaN | bIsSignalingNaN)
 320:	02131025 	or	v0,s0,s3
 324:	10400003 	beqz	v0,334 <propagateFloat64NaN+0x7c>
 328:	00000000 	sll	zero,zero,0x0
    float_raise (float_flag_invalid);
 32c:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 330:	24040010 	addiu	a0,zero,16
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
 334:	1600000b 	bnez	s0,364 <propagateFloat64NaN+0xac>
 338:	02201021 	addu	v0,s1,zero
 33c:	16600005 	bnez	s3,354 <propagateFloat64NaN+0x9c>
 340:	02808821 	addu	s1,s4,zero
 344:	12a00005 	beqz	s5,35c <propagateFloat64NaN+0xa4>
 348:	02401821 	addu	v1,s2,zero
 34c:	080000da 	j	368 <propagateFloat64NaN+0xb0>
 350:	00000000 	sll	zero,zero,0x0
 354:	080000d8 	j	360 <propagateFloat64NaN+0xa8>
 358:	02c09021 	addu	s2,s6,zero
 35c:	02c09021 	addu	s2,s6,zero

}
 360:	02201021 	addu	v0,s1,zero
 364:	02401821 	addu	v1,s2,zero
 368:	8fbf002c 	lw	ra,44(sp)
 36c:	8fb60028 	lw	s6,40(sp)
 370:	8fb50024 	lw	s5,36(sp)
 374:	8fb40020 	lw	s4,32(sp)
 378:	8fb3001c 	lw	s3,28(sp)
 37c:	8fb20018 	lw	s2,24(sp)
 380:	8fb10014 	lw	s1,20(sp)
 384:	8fb00010 	lw	s0,16(sp)
 388:	03e00008 	jr	ra
 38c:	27bd0030 	addiu	sp,sp,48

00000390 <extractFloat64Frac>:
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);

}
 390:	3c02000f 	lui	v0,0xf
 394:	3442ffff 	ori	v0,v0,0xffff
 398:	00821024 	and	v0,a0,v0
 39c:	03e00008 	jr	ra
 3a0:	00a01821 	addu	v1,a1,zero

000003a4 <extractFloat64Exp>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 3a4:	00041502 	srl	v0,a0,0x14

}
 3a8:	03e00008 	jr	ra
 3ac:	304207ff 	andi	v0,v0,0x7ff

000003b0 <extractFloat64Sign>:
extractFloat64Sign (float64 a)
{

  return a >> 63;

}
 3b0:	03e00008 	jr	ra
 3b4:	000417c2 	srl	v0,a0,0x1f

000003b8 <packFloat64>:

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 3b8:	000427c0 	sll	a0,a0,0x1f
 3bc:	00c42021 	addu	a0,a2,a0
 3c0:	00051500 	sll	v0,a1,0x14

}
 3c4:	00821021 	addu	v0,a0,v0
 3c8:	03e00008 	jr	ra
 3cc:	00e01821 	addu	v1,a3,zero

000003d0 <float64_mul>:
| for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_mul (float64 a, float64 b)
{
 3d0:	27bdff98 	addiu	sp,sp,-104
 3d4:	afbf0064 	sw	ra,100(sp)
 3d8:	afb60060 	sw	s6,96(sp)
 3dc:	afb5005c 	sw	s5,92(sp)
 3e0:	afb40058 	sw	s4,88(sp)
 3e4:	afb30054 	sw	s3,84(sp)
 3e8:	afb20050 	sw	s2,80(sp)
 3ec:	afb1004c 	sw	s1,76(sp)
 3f0:	afb00048 	sw	s0,72(sp)
 3f4:	afa5006c 	sw	a1,108(sp)
 3f8:	afa40068 	sw	a0,104(sp)
 3fc:	afa70074 	sw	a3,116(sp)
  flag aSign, bSign, zSign;
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig0, zSig1;

  aSig = extractFloat64Frac (a);
 400:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 404:	afa60070 	sw	a2,112(sp)
 408:	00409021 	addu	s2,v0,zero
 40c:	afb20020 	sw	s2,32(sp)
 410:	afa30024 	sw	v1,36(sp)
  aExp = extractFloat64Exp (a);
 414:	8fa5006c 	lw	a1,108(sp)
 418:	8fa40068 	lw	a0,104(sp)
 41c:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 420:	0060a821 	addu	s5,v1,zero
 424:	afa20018 	sw	v0,24(sp)
  aSign = extractFloat64Sign (a);
 428:	8fa5006c 	lw	a1,108(sp)
 42c:	8fa40068 	lw	a0,104(sp)
 430:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 434:	00408021 	addu	s0,v0,zero
  bSig = extractFloat64Frac (b);
 438:	8fa50074 	lw	a1,116(sp)
 43c:	8fa40070 	lw	a0,112(sp)
 440:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 444:	0040a021 	addu	s4,v0,zero
 448:	00409821 	addu	s3,v0,zero
 44c:	afb30028 	sw	s3,40(sp)
 450:	afa3002c 	sw	v1,44(sp)
  bExp = extractFloat64Exp (b);
 454:	8fa50074 	lw	a1,116(sp)
 458:	8fa40070 	lw	a0,112(sp)
 45c:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 460:	0060b021 	addu	s6,v1,zero
 464:	afa2001c 	sw	v0,28(sp)
  bSign = extractFloat64Sign (b);
 468:	8fa50074 	lw	a1,116(sp)
 46c:	8fa40070 	lw	a0,112(sp)
 470:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 474:	00408821 	addu	s1,v0,zero
  zSign = aSign ^ bSign;
 478:	0054a026 	xor	s4,v0,s4
  if (aExp == 0x7FF)
 47c:	240207ff 	addiu	v0,zero,2047
 480:	16020025 	bne	s0,v0,518 <float64_mul+0x148>
 484:	00000000 	sll	zero,zero,0x0
    {
      if (aSig || ((bExp == 0x7FF) && bSig))
 488:	02559025 	or	s2,s2,s5
 48c:	16400006 	bnez	s2,4a8 <float64_mul+0xd8>
 490:	00000000 	sll	zero,zero,0x0
 494:	1622000d 	bne	s1,v0,4cc <float64_mul+0xfc>
 498:	001117c3 	sra	v0,s1,0x1f
 49c:	02769825 	or	s3,s3,s6
 4a0:	12600015 	beqz	s3,4f8 <float64_mul+0x128>
 4a4:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
 4a8:	8fa5006c 	lw	a1,108(sp)
 4ac:	8fa40068 	lw	a0,104(sp)
 4b0:	8fa70074 	lw	a3,116(sp)
 4b4:	8fa60070 	lw	a2,112(sp)
 4b8:	0c0000ae 	jal	2b8 <propagateFloat64NaN>
 4bc:	00000000 	sll	zero,zero,0x0
 4c0:	00602821 	addu	a1,v1,zero
 4c4:	0800021b 	j	86c <float64_mul+0x49c>
 4c8:	00402021 	addu	a0,v0,zero
      if ((bExp | bSig) == 0)
 4cc:	00539825 	or	s3,v0,s3
 4d0:	02368825 	or	s1,s1,s6
 4d4:	02718825 	or	s1,s3,s1
 4d8:	16200007 	bnez	s1,4f8 <float64_mul+0x128>
 4dc:	00000000 	sll	zero,zero,0x0
	{
	  float_raise (float_flag_invalid);
 4e0:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 4e4:	24040010 	addiu	a0,zero,16
	  return float64_default_nan;
 4e8:	2405ffff 	addiu	a1,zero,-1
 4ec:	3c047fff 	lui	a0,0x7fff
 4f0:	0800021b 	j	86c <float64_mul+0x49c>
 4f4:	3484ffff 	ori	a0,a0,0xffff
	}
      return packFloat64 (zSign, 0x7FF, 0);
 4f8:	02802021 	addu	a0,s4,zero
 4fc:	240507ff 	addiu	a1,zero,2047
 500:	00003821 	addu	a3,zero,zero
 504:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 508:	00003021 	addu	a2,zero,zero
 50c:	00602821 	addu	a1,v1,zero
 510:	0800021b 	j	86c <float64_mul+0x49c>
 514:	00402021 	addu	a0,v0,zero
    }
  if (bExp == 0x7FF)
 518:	1622001e 	bne	s1,v0,594 <float64_mul+0x1c4>
 51c:	02769825 	or	s3,s3,s6
    {
      if (bSig)
 520:	1260000a 	beqz	s3,54c <float64_mul+0x17c>
 524:	001017c3 	sra	v0,s0,0x1f
	return propagateFloat64NaN (a, b);
 528:	8fa5006c 	lw	a1,108(sp)
 52c:	8fa40068 	lw	a0,104(sp)
 530:	8fa70074 	lw	a3,116(sp)
 534:	8fa60070 	lw	a2,112(sp)
 538:	0c0000ae 	jal	2b8 <propagateFloat64NaN>
 53c:	00000000 	sll	zero,zero,0x0
 540:	00602821 	addu	a1,v1,zero
 544:	0800021b 	j	86c <float64_mul+0x49c>
 548:	00402021 	addu	a0,v0,zero
      if ((aExp | aSig) == 0)
 54c:	00529025 	or	s2,v0,s2
 550:	02158025 	or	s0,s0,s5
 554:	02508025 	or	s0,s2,s0
 558:	16000007 	bnez	s0,578 <float64_mul+0x1a8>
 55c:	00003821 	addu	a3,zero,zero
	{
	  float_raise (float_flag_invalid);
 560:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 564:	24040010 	addiu	a0,zero,16
	  return float64_default_nan;
 568:	2405ffff 	addiu	a1,zero,-1
 56c:	3c047fff 	lui	a0,0x7fff
 570:	0800021b 	j	86c <float64_mul+0x49c>
 574:	3484ffff 	ori	a0,a0,0xffff
	}
      return packFloat64 (zSign, 0x7FF, 0);
 578:	02802021 	addu	a0,s4,zero
 57c:	240507ff 	addiu	a1,zero,2047
 580:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 584:	00003021 	addu	a2,zero,zero
 588:	00602821 	addu	a1,v1,zero
 58c:	0800021b 	j	86c <float64_mul+0x49c>
 590:	00402021 	addu	a0,v0,zero
    }
  if (aExp == 0)
 594:	1600000f 	bnez	s0,5d4 <float64_mul+0x204>
 598:	02551025 	or	v0,s2,s5
    {
      if (aSig == 0)
 59c:	14400008 	bnez	v0,5c0 <float64_mul+0x1f0>
 5a0:	02802021 	addu	a0,s4,zero
	return packFloat64 (zSign, 0, 0);
 5a4:	00002821 	addu	a1,zero,zero
 5a8:	00003821 	addu	a3,zero,zero
 5ac:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 5b0:	00003021 	addu	a2,zero,zero
 5b4:	00602821 	addu	a1,v1,zero
 5b8:	0800021b 	j	86c <float64_mul+0x49c>
 5bc:	00402021 	addu	a0,v0,zero
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
 5c0:	02402021 	addu	a0,s2,zero
 5c4:	02a02821 	addu	a1,s5,zero
 5c8:	27a60018 	addiu	a2,sp,24
 5cc:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 5d0:	27a70020 	addiu	a3,sp,32
    }
  if (bExp == 0)
 5d4:	8fa2001c 	lw	v0,28(sp)
 5d8:	00000000 	sll	zero,zero,0x0
 5dc:	14400012 	bnez	v0,628 <float64_mul+0x258>
 5e0:	00000000 	sll	zero,zero,0x0
    {
      if (bSig == 0)
 5e4:	8fa40028 	lw	a0,40(sp)
 5e8:	8fa5002c 	lw	a1,44(sp)
 5ec:	00000000 	sll	zero,zero,0x0
 5f0:	00851025 	or	v0,a0,a1
 5f4:	14400008 	bnez	v0,618 <float64_mul+0x248>
 5f8:	00003821 	addu	a3,zero,zero
	return packFloat64 (zSign, 0, 0);
 5fc:	02802021 	addu	a0,s4,zero
 600:	00002821 	addu	a1,zero,zero
 604:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 608:	00003021 	addu	a2,zero,zero
 60c:	00602821 	addu	a1,v1,zero
 610:	0800021b 	j	86c <float64_mul+0x49c>
 614:	00402021 	addu	a0,v0,zero
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
 618:	27a6001c 	addiu	a2,sp,28
 61c:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 620:	27a70028 	addiu	a3,sp,40
    }
  zExp = aExp + bExp - 0x3FF;
 624:	8fa2001c 	lw	v0,28(sp)
 628:	8fb00018 	lw	s0,24(sp)
 62c:	00000000 	sll	zero,zero,0x0
 630:	02028021 	addu	s0,s0,v0
 634:	2610fc01 	addiu	s0,s0,-1023
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
 638:	3c020010 	lui	v0,0x10
 63c:	8fa40020 	lw	a0,32(sp)
 640:	00000000 	sll	zero,zero,0x0
 644:	00822025 	or	a0,a0,v0
 648:	8fa50024 	lw	a1,36(sp)
 64c:	00000000 	sll	zero,zero,0x0
 650:	00051d82 	srl	v1,a1,0x16
 654:	00042280 	sll	a0,a0,0xa
 658:	00642025 	or	a0,v1,a0
 65c:	00052a80 	sll	a1,a1,0xa
 660:	afa40020 	sw	a0,32(sp)
 664:	afa50024 	sw	a1,36(sp)
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
 668:	8fa60028 	lw	a2,40(sp)
 66c:	00000000 	sll	zero,zero,0x0
 670:	00c23025 	or	a2,a2,v0
 674:	8fa7002c 	lw	a3,44(sp)
 678:	00000000 	sll	zero,zero,0x0
 67c:	00071d42 	srl	v1,a3,0x15
 680:	000632c0 	sll	a2,a2,0xb
 684:	00663025 	or	a2,v1,a2
 688:	00073ac0 	sll	a3,a3,0xb
 68c:	afa60028 	sw	a2,40(sp)
 690:	afa7002c 	sw	a3,44(sp)
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
 694:	27a20030 	addiu	v0,sp,48
 698:	afa20010 	sw	v0,16(sp)
 69c:	27a20038 	addiu	v0,sp,56
 6a0:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 6a4:	afa20014 	sw	v0,20(sp)
  zSig0 |= (zSig1 != 0);
 6a8:	8fa2003c 	lw	v0,60(sp)
 6ac:	8fa30038 	lw	v1,56(sp)
 6b0:	00000000 	sll	zero,zero,0x0
 6b4:	00621825 	or	v1,v1,v0
 6b8:	0003182b 	sltu	v1,zero,v1
 6bc:	8fa20030 	lw	v0,48(sp)
 6c0:	8fa40034 	lw	a0,52(sp)
 6c4:	00000000 	sll	zero,zero,0x0
 6c8:	00831825 	or	v1,a0,v1
 6cc:	afa30034 	sw	v1,52(sp)
  if (0 <= (sbits64) (zSig0 << 1))
 6d0:	000327c2 	srl	a0,v1,0x1f
 6d4:	00021040 	sll	v0,v0,0x1
 6d8:	00821025 	or	v0,a0,v0
 6dc:	04400004 	bltz	v0,6f0 <float64_mul+0x320>
 6e0:	00031840 	sll	v1,v1,0x1
    {
      zSig0 <<= 1;
 6e4:	afa20030 	sw	v0,48(sp)
 6e8:	afa30034 	sw	v1,52(sp)
      --zExp;
 6ec:	2610ffff 	addiu	s0,s0,-1
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);
 6f0:	8fa40030 	lw	a0,48(sp)
 6f4:	8fb30034 	lw	s3,52(sp)
 6f8:	afa40040 	sw	a0,64(sp)
 6fc:	afb30044 	sw	s3,68(sp)
{
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
 700:	8f820000 	lw	v0,0(gp)
 704:	00000000 	sll	zero,zero,0x0
  roundNearestEven = (roundingMode == float_round_nearest_even);
 708:	2c520001 	sltiu	s2,v0,1
  roundIncrement = 0x200;
  if (!roundNearestEven)
 70c:	1640000e 	bnez	s2,748 <float64_mul+0x378>
 710:	24110200 	addiu	s1,zero,512
    {
      if (roundingMode == float_round_to_zero)
 714:	24030001 	addiu	v1,zero,1
 718:	1043000b 	beq	v0,v1,748 <float64_mul+0x378>
 71c:	00008821 	addu	s1,zero,zero
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
 720:	12800006 	beqz	s4,73c <float64_mul+0x36c>
 724:	24030003 	addiu	v1,zero,3
	    {
	      if (roundingMode == float_round_up)
 728:	24030002 	addiu	v1,zero,2
 72c:	10430007 	beq	v0,v1,74c <float64_mul+0x37c>
 730:	3202ffff 	andi	v0,s0,0xffff
	{
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
 734:	080001d3 	j	74c <float64_mul+0x37c>
 738:	241103ff 	addiu	s1,zero,1023
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
 73c:	14430002 	bne	v0,v1,748 <float64_mul+0x378>
 740:	241103ff 	addiu	s1,zero,1023
		roundIncrement = 0;
 744:	00008821 	addu	s1,zero,zero
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
 748:	3202ffff 	andi	v0,s0,0xffff
 74c:	2c4207fd 	sltiu	v0,v0,2045
 750:	14400025 	bnez	v0,7e8 <float64_mul+0x418>
 754:	2a0207fe 	slti	v0,s0,2046
    {
      if ((0x7FD < zExp)
 758:	10400007 	beqz	v0,778 <float64_mul+0x3a8>
 75c:	240207fd 	addiu	v0,zero,2045
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 760:	16020013 	bne	s0,v0,7b0 <float64_mul+0x3e0>
 764:	02331021 	addu	v0,s1,s3
 768:	0051102b 	sltu	v0,v0,s1
 76c:	00442021 	addu	a0,v0,a0
 770:	0481001e 	bgez	a0,7ec <float64_mul+0x41c>
 774:	327303ff 	andi	s3,s3,0x3ff
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
 778:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 77c:	24040009 	addiu	a0,zero,9
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 780:	02802021 	addu	a0,s4,zero
 784:	240507ff 	addiu	a1,zero,2047
 788:	00003821 	addu	a3,zero,zero
 78c:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 790:	00003021 	addu	a2,zero,zero
 794:	2e310001 	sltiu	s1,s1,1
 798:	00718823 	subu	s1,v1,s1
 79c:	0071182b 	sltu	v1,v1,s1
 7a0:	00433823 	subu	a3,v0,v1
 7a4:	00e02021 	addu	a0,a3,zero
 7a8:	0800021b 	j	86c <float64_mul+0x49c>
 7ac:	02202821 	addu	a1,s1,zero
	}
      if (zExp < 0)
 7b0:	0601000d 	bgez	s0,7e8 <float64_mul+0x418>
 7b4:	02602821 	addu	a1,s3,zero
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
 7b8:	00103023 	negu	a2,s0
 7bc:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 7c0:	27a70040 	addiu	a3,sp,64
	  zExp = 0;
	  roundBits = zSig & 0x3FF;
 7c4:	8fb30044 	lw	s3,68(sp)
 7c8:	00000000 	sll	zero,zero,0x0
 7cc:	327303ff 	andi	s3,s3,0x3ff
	  if (isTiny && roundBits)
 7d0:	1260000d 	beqz	s3,808 <float64_mul+0x438>
 7d4:	00000000 	sll	zero,zero,0x0
	    float_raise (float_flag_underflow);
 7d8:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 7dc:	24040004 	addiu	a0,zero,4
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 7e0:	080001fd 	j	7f4 <float64_mul+0x424>
 7e4:	00008021 	addu	s0,zero,zero
	      if (roundingMode == float_round_down)
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
 7e8:	327303ff 	andi	s3,s3,0x3ff
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
 7ec:	12600008 	beqz	s3,810 <float64_mul+0x440>
 7f0:	3a670200 	xori	a3,s3,0x200
    float_exception_flags |= float_flag_inexact;
 7f4:	8f820000 	lw	v0,0(gp)
 7f8:	00000000 	sll	zero,zero,0x0
 7fc:	34420001 	ori	v0,v0,0x1
 800:	08000203 	j	80c <float64_mul+0x43c>
 804:	af820000 	sw	v0,0(gp)
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 808:	00008021 	addu	s0,zero,zero
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 80c:	3a670200 	xori	a3,s3,0x200
 810:	2ce70001 	sltiu	a3,a3,1
 814:	00f23824 	and	a3,a3,s2
 818:	00073827 	nor	a3,zero,a3
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
 81c:	8fa20044 	lw	v0,68(sp)
 820:	00000000 	sll	zero,zero,0x0
 824:	02221021 	addu	v0,s1,v0
 828:	0051302b 	sltu	a2,v0,s1
 82c:	8fa30040 	lw	v1,64(sp)
 830:	00000000 	sll	zero,zero,0x0
 834:	00c33021 	addu	a2,a2,v1
 838:	00061d80 	sll	v1,a2,0x16
 83c:	00021282 	srl	v0,v0,0xa
 840:	00621025 	or	v0,v1,v0
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 844:	00063282 	srl	a2,a2,0xa
 848:	00e23824 	and	a3,a3,v0
  if (zSig == 0)
 84c:	00c71025 	or	v0,a2,a3
 850:	14400002 	bnez	v0,85c <float64_mul+0x48c>
 854:	02802021 	addu	a0,s4,zero
    zExp = 0;
 858:	00008021 	addu	s0,zero,zero
  return packFloat64 (zSign, zExp, zSig);
 85c:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 860:	02002821 	addu	a1,s0,zero
 864:	00602821 	addu	a1,v1,zero
 868:	00402021 	addu	a0,v0,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 86c:	00801021 	addu	v0,a0,zero
 870:	00a01821 	addu	v1,a1,zero
 874:	8fbf0064 	lw	ra,100(sp)
 878:	8fb60060 	lw	s6,96(sp)
 87c:	8fb5005c 	lw	s5,92(sp)
 880:	8fb40058 	lw	s4,88(sp)
 884:	8fb30054 	lw	s3,84(sp)
 888:	8fb20050 	lw	s2,80(sp)
 88c:	8fb1004c 	lw	s1,76(sp)
 890:	8fb00048 	lw	s0,72(sp)
 894:	03e00008 	jr	ra
 898:	27bd0068 	addiu	sp,sp,104

0000089c <ullong_to_double>:
    unsigned long long ll;
  } t;

  t.ll = x;
  return t.d;
}
 89c:	44850000 	mtc1	a1,$f0
 8a0:	00000000 	sll	zero,zero,0x0
 8a4:	44840800 	mtc1	a0,$f1
 8a8:	03e00008 	jr	ra
 8ac:	00000000 	sll	zero,zero,0x0

000008b0 <main>:
  0x0000000000000000ULL		/* 0.0 */
};

int
main ()
{
 8b0:	27bdffa0 	addiu	sp,sp,-96
 8b4:	afbf005c 	sw	ra,92(sp)
 8b8:	afbe0058 	sw	s8,88(sp)
 8bc:	afb70054 	sw	s7,84(sp)
 8c0:	afb60050 	sw	s6,80(sp)
 8c4:	afb5004c 	sw	s5,76(sp)
 8c8:	afb40048 	sw	s4,72(sp)
 8cc:	afb30044 	sw	s3,68(sp)
 8d0:	afb20040 	sw	s2,64(sp)
 8d4:	afb1003c 	sw	s1,60(sp)
 8d8:	afb00038 	sw	s0,56(sp)
 8dc:	00008021 	addu	s0,zero,zero
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
 8e0:	00009821 	addu	s3,zero,zero
  0xBFE0000000000000ULL,	/* -0.5 */
  0x0000000000000000ULL		/* 0.0 */
};

int
main ()
 8e4:	3c1e0000 	lui	s8,0x0
 8e8:	27de0000 	addiu	s8,s8,0
 8ec:	03d01021 	addu	v0,s8,s0
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
 8f0:	8c550004 	lw	s5,4(v0)
 8f4:	8c540000 	lw	s4,0(v0)
  0xBFE0000000000000ULL,	/* -0.5 */
  0x0000000000000000ULL		/* 0.0 */
};

int
main ()
 8f8:	3c030000 	lui	v1,0x0
 8fc:	24630000 	addiu	v1,v1,0
 900:	00701021 	addu	v0,v1,s0
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
 904:	8c450004 	lw	a1,4(v0)
 908:	8c440000 	lw	a0,0(v0)
 90c:	afa50034 	sw	a1,52(sp)
 910:	afa40030 	sw	a0,48(sp)
	  result = float64_mul (x1, x2);
 914:	02a02821 	addu	a1,s5,zero
 918:	8fa70034 	lw	a3,52(sp)
 91c:	8fa60030 	lw	a2,48(sp)
 920:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 924:	02802021 	addu	a0,s4,zero
 928:	00408821 	addu	s1,v0,zero
 92c:	00609021 	addu	s2,v1,zero
  0xBFE0000000000000ULL,	/* -0.5 */
  0x0000000000000000ULL		/* 0.0 */
};

int
main ()
 930:	3c050000 	lui	a1,0x0
 934:	24a50000 	addiu	a1,a1,0
 938:	00b01021 	addu	v0,a1,s0
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_mul (x1, x2);
	  main_result += (result != z_output[i]);
 93c:	8c560000 	lw	s6,0(v0)
 940:	8c570004 	lw	s7,4(v0)
 944:	02d11826 	xor	v1,s6,s1
 948:	02f21026 	xor	v0,s7,s2
 94c:	00621025 	or	v0,v1,v0
 950:	0002102b 	sltu	v0,zero,v0
 954:	02629821 	addu	s3,s3,v0

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 958:	02202021 	addu	a0,s1,zero
 95c:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 960:	02402821 	addu	a1,s2,zero
 964:	8fa30034 	lw	v1,52(sp)
 968:	8fa20030 	lw	v0,48(sp)
 96c:	afa30014 	sw	v1,20(sp)
 970:	afa20010 	sw	v0,16(sp)
 974:	afb60018 	sw	s6,24(sp)
 978:	afb7001c 	sw	s7,28(sp)
 97c:	afb10020 	sw	s1,32(sp)
 980:	afb20024 	sw	s2,36(sp)
 984:	e7a0002c 	swc1	$f0,44(sp)
 988:	e7a10028 	swc1	$f1,40(sp)
 98c:	3c040000 	lui	a0,0x0
 990:	24840000 	addiu	a0,a0,0
 994:	02a03821 	addu	a3,s5,zero
 998:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 99c:	02803021 	addu	a2,s4,zero
 9a0:	26100008 	addiu	s0,s0,8
{
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
 9a4:	240300a0 	addiu	v1,zero,160
 9a8:	1603ffd1 	bne	s0,v1,8f0 <main+0x40>
 9ac:	03d01021 	addu	v0,s8,s0
	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     a_input[i], b_input[i], z_output[i], result,
	     ullong_to_double (result));
	}
      printf ("%d\n", main_result);
 9b0:	3c040000 	lui	a0,0x0
 9b4:	24840000 	addiu	a0,a0,0
 9b8:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 9bc:	02602821 	addu	a1,s3,zero
      return main_result;
    }
 9c0:	02601021 	addu	v0,s3,zero
 9c4:	8fbf005c 	lw	ra,92(sp)
 9c8:	8fbe0058 	lw	s8,88(sp)
 9cc:	8fb70054 	lw	s7,84(sp)
 9d0:	8fb60050 	lw	s6,80(sp)
 9d4:	8fb5004c 	lw	s5,76(sp)
 9d8:	8fb40048 	lw	s4,72(sp)
 9dc:	8fb30044 	lw	s3,68(sp)
 9e0:	8fb20040 	lw	s2,64(sp)
 9e4:	8fb1003c 	lw	s1,60(sp)
 9e8:	8fb00038 	lw	s0,56(sp)
 9ec:	03e00008 	jr	ra
 9f0:	27bd0060 	addiu	sp,sp,96

Disassembly of section .rodata:

00000000 <a_input>:
   0:	7ff00000 	0x7ff00000
   4:	00000000 	sll	zero,zero,0x0
   8:	7fff0000 	0x7fff0000
   c:	00000000 	sll	zero,zero,0x0
  10:	7ff00000 	0x7ff00000
  14:	00000000 	sll	zero,zero,0x0
  18:	7ff00000 	0x7ff00000
  1c:	00000000 	sll	zero,zero,0x0
  20:	3ff00000 	0x3ff00000
	...
  30:	3ff00000 	0x3ff00000
	...
  40:	80000000 	lb	zero,0(zero)
  44:	00000000 	sll	zero,zero,0x0
  48:	3ff00000 	0x3ff00000
  4c:	00000000 	sll	zero,zero,0x0
  50:	3ff00000 	0x3ff00000
  54:	00000000 	sll	zero,zero,0x0
  58:	40000000 	mfc0	zero,c0_index
  5c:	00000000 	sll	zero,zero,0x0
  60:	3fd00000 	0x3fd00000
  64:	00000000 	sll	zero,zero,0x0
  68:	c0000000 	lwc0	$0,0(zero)
  6c:	00000000 	sll	zero,zero,0x0
  70:	bfd00000 	0xbfd00000
  74:	00000000 	sll	zero,zero,0x0
  78:	40000000 	mfc0	zero,c0_index
  7c:	00000000 	sll	zero,zero,0x0
  80:	bfd00000 	0xbfd00000
  84:	00000000 	sll	zero,zero,0x0
  88:	c0000000 	lwc0	$0,0(zero)
  8c:	00000000 	sll	zero,zero,0x0
  90:	3fd00000 	0x3fd00000
	...

000000a0 <b_input>:
  a0:	ffffffff 	0xffffffff
  a4:	ffffffff 	0xffffffff
  a8:	fff00000 	0xfff00000
	...
  b8:	3ff00000 	0x3ff00000
  bc:	00000000 	sll	zero,zero,0x0
  c0:	ffff0000 	0xffff0000
  c4:	00000000 	sll	zero,zero,0x0
  c8:	7ff00000 	0x7ff00000
  cc:	00000000 	sll	zero,zero,0x0
  d0:	7ff00000 	0x7ff00000
  d4:	00000000 	sll	zero,zero,0x0
  d8:	3ff00000 	0x3ff00000
  dc:	00000000 	sll	zero,zero,0x0
  e0:	3ff00000 	0x3ff00000
	...
  f0:	80000000 	lb	zero,0(zero)
  f4:	00000000 	sll	zero,zero,0x0
  f8:	3fd00000 	0x3fd00000
  fc:	00000000 	sll	zero,zero,0x0
 100:	40000000 	mfc0	zero,c0_index
 104:	00000000 	sll	zero,zero,0x0
 108:	bfd00000 	0xbfd00000
 10c:	00000000 	sll	zero,zero,0x0
 110:	c0000000 	lwc0	$0,0(zero)
 114:	00000000 	sll	zero,zero,0x0
 118:	bfd00000 	0xbfd00000
 11c:	00000000 	sll	zero,zero,0x0
 120:	40000000 	mfc0	zero,c0_index
 124:	00000000 	sll	zero,zero,0x0
 128:	3fd00000 	0x3fd00000
 12c:	00000000 	sll	zero,zero,0x0
 130:	c0000000 	lwc0	$0,0(zero)
	...

00000140 <z_output>:
 140:	ffffffff 	0xffffffff
 144:	ffffffff 	0xffffffff
 148:	7fff0000 	0x7fff0000
 14c:	00000000 	sll	zero,zero,0x0
 150:	7fffffff 	0x7fffffff
 154:	ffffffff 	0xffffffff
 158:	7ff00000 	0x7ff00000
 15c:	00000000 	sll	zero,zero,0x0
 160:	ffff0000 	0xffff0000
 164:	00000000 	sll	zero,zero,0x0
 168:	7fffffff 	0x7fffffff
 16c:	ffffffff 	0xffffffff
 170:	7ff00000 	0x7ff00000
	...
 180:	80000000 	lb	zero,0(zero)
	...
 190:	80000000 	lb	zero,0(zero)
 194:	00000000 	sll	zero,zero,0x0
 198:	3fe00000 	0x3fe00000
 19c:	00000000 	sll	zero,zero,0x0
 1a0:	3fe00000 	0x3fe00000
 1a4:	00000000 	sll	zero,zero,0x0
 1a8:	3fe00000 	0x3fe00000
 1ac:	00000000 	sll	zero,zero,0x0
 1b0:	3fe00000 	0x3fe00000
 1b4:	00000000 	sll	zero,zero,0x0
 1b8:	bfe00000 	0xbfe00000
 1bc:	00000000 	sll	zero,zero,0x0
 1c0:	bfe00000 	0xbfe00000
 1c4:	00000000 	sll	zero,zero,0x0
 1c8:	bfe00000 	0xbfe00000
 1cc:	00000000 	sll	zero,zero,0x0
 1d0:	bfe00000 	0xbfe00000
	...

000001e0 <countLeadingZerosHigh.2164>:
 1e0:	00000008 	jr	zero
 1e4:	00000007 	srav	zero,zero,zero
 1e8:	00000006 	srlv	zero,zero,zero
 1ec:	00000006 	srlv	zero,zero,zero
 1f0:	00000005 	0x5
 1f4:	00000005 	0x5
 1f8:	00000005 	0x5
 1fc:	00000005 	0x5
 200:	00000004 	sllv	zero,zero,zero
 204:	00000004 	sllv	zero,zero,zero
 208:	00000004 	sllv	zero,zero,zero
 20c:	00000004 	sllv	zero,zero,zero
 210:	00000004 	sllv	zero,zero,zero
 214:	00000004 	sllv	zero,zero,zero
 218:	00000004 	sllv	zero,zero,zero
 21c:	00000004 	sllv	zero,zero,zero
 220:	00000003 	sra	zero,zero,0x0
 224:	00000003 	sra	zero,zero,0x0
 228:	00000003 	sra	zero,zero,0x0
 22c:	00000003 	sra	zero,zero,0x0
 230:	00000003 	sra	zero,zero,0x0
 234:	00000003 	sra	zero,zero,0x0
 238:	00000003 	sra	zero,zero,0x0
 23c:	00000003 	sra	zero,zero,0x0
 240:	00000003 	sra	zero,zero,0x0
 244:	00000003 	sra	zero,zero,0x0
 248:	00000003 	sra	zero,zero,0x0
 24c:	00000003 	sra	zero,zero,0x0
 250:	00000003 	sra	zero,zero,0x0
 254:	00000003 	sra	zero,zero,0x0
 258:	00000003 	sra	zero,zero,0x0
 25c:	00000003 	sra	zero,zero,0x0
 260:	00000002 	srl	zero,zero,0x0
 264:	00000002 	srl	zero,zero,0x0
 268:	00000002 	srl	zero,zero,0x0
 26c:	00000002 	srl	zero,zero,0x0
 270:	00000002 	srl	zero,zero,0x0
 274:	00000002 	srl	zero,zero,0x0
 278:	00000002 	srl	zero,zero,0x0
 27c:	00000002 	srl	zero,zero,0x0
 280:	00000002 	srl	zero,zero,0x0
 284:	00000002 	srl	zero,zero,0x0
 288:	00000002 	srl	zero,zero,0x0
 28c:	00000002 	srl	zero,zero,0x0
 290:	00000002 	srl	zero,zero,0x0
 294:	00000002 	srl	zero,zero,0x0
 298:	00000002 	srl	zero,zero,0x0
 29c:	00000002 	srl	zero,zero,0x0
 2a0:	00000002 	srl	zero,zero,0x0
 2a4:	00000002 	srl	zero,zero,0x0
 2a8:	00000002 	srl	zero,zero,0x0
 2ac:	00000002 	srl	zero,zero,0x0
 2b0:	00000002 	srl	zero,zero,0x0
 2b4:	00000002 	srl	zero,zero,0x0
 2b8:	00000002 	srl	zero,zero,0x0
 2bc:	00000002 	srl	zero,zero,0x0
 2c0:	00000002 	srl	zero,zero,0x0
 2c4:	00000002 	srl	zero,zero,0x0
 2c8:	00000002 	srl	zero,zero,0x0
 2cc:	00000002 	srl	zero,zero,0x0
 2d0:	00000002 	srl	zero,zero,0x0
 2d4:	00000002 	srl	zero,zero,0x0
 2d8:	00000002 	srl	zero,zero,0x0
 2dc:	00000002 	srl	zero,zero,0x0
 2e0:	00000001 	0x1
 2e4:	00000001 	0x1
 2e8:	00000001 	0x1
 2ec:	00000001 	0x1
 2f0:	00000001 	0x1
 2f4:	00000001 	0x1
 2f8:	00000001 	0x1
 2fc:	00000001 	0x1
 300:	00000001 	0x1
 304:	00000001 	0x1
 308:	00000001 	0x1
 30c:	00000001 	0x1
 310:	00000001 	0x1
 314:	00000001 	0x1
 318:	00000001 	0x1
 31c:	00000001 	0x1
 320:	00000001 	0x1
 324:	00000001 	0x1
 328:	00000001 	0x1
 32c:	00000001 	0x1
 330:	00000001 	0x1
 334:	00000001 	0x1
 338:	00000001 	0x1
 33c:	00000001 	0x1
 340:	00000001 	0x1
 344:	00000001 	0x1
 348:	00000001 	0x1
 34c:	00000001 	0x1
 350:	00000001 	0x1
 354:	00000001 	0x1
 358:	00000001 	0x1
 35c:	00000001 	0x1
 360:	00000001 	0x1
 364:	00000001 	0x1
 368:	00000001 	0x1
 36c:	00000001 	0x1
 370:	00000001 	0x1
 374:	00000001 	0x1
 378:	00000001 	0x1
 37c:	00000001 	0x1
 380:	00000001 	0x1
 384:	00000001 	0x1
 388:	00000001 	0x1
 38c:	00000001 	0x1
 390:	00000001 	0x1
 394:	00000001 	0x1
 398:	00000001 	0x1
 39c:	00000001 	0x1
 3a0:	00000001 	0x1
 3a4:	00000001 	0x1
 3a8:	00000001 	0x1
 3ac:	00000001 	0x1
 3b0:	00000001 	0x1
 3b4:	00000001 	0x1
 3b8:	00000001 	0x1
 3bc:	00000001 	0x1
 3c0:	00000001 	0x1
 3c4:	00000001 	0x1
 3c8:	00000001 	0x1
 3cc:	00000001 	0x1
 3d0:	00000001 	0x1
 3d4:	00000001 	0x1
 3d8:	00000001 	0x1
 3dc:	00000001 	0x1
	...
