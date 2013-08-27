
dfdiv.o:     file format elf32-bigmips


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
  64:	25080210 	addiu	t0,t0,528
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

00000154 <add128>:
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
 154:	8fa30014 	lw	v1,20(sp)
 158:	8fa8001c 	lw	t0,28(sp)
 15c:	8faa0020 	lw	t2,32(sp)
 160:	8fa20024 	lw	v0,36(sp)
  bits64 z1;

  z1 = a1 + b1;
 164:	01074821 	addu	t1,t0,a3
 168:	0128402b 	sltu	t0,t1,t0
 16c:	8fab0018 	lw	t3,24(sp)
 170:	00000000 	sll	zero,zero,0x0
 174:	01665821 	addu	t3,t3,a2
 178:	010b4021 	addu	t0,t0,t3
 17c:	01005821 	addu	t3,t0,zero
  *z1Ptr = z1;
 180:	ac480000 	sw	t0,0(v0)
 184:	ac490004 	sw	t1,4(v0)
  *z0Ptr = a0 + b0 + (z1 < a1);
 188:	00652821 	addu	a1,v1,a1
 18c:	00a3182b 	sltu	v1,a1,v1
 190:	8fa20010 	lw	v0,16(sp)
 194:	00000000 	sll	zero,zero,0x0
 198:	00442021 	addu	a0,v0,a0
 19c:	00642021 	addu	a0,v1,a0
 1a0:	24030001 	addiu	v1,zero,1
 1a4:	0106402b 	sltu	t0,t0,a2
 1a8:	15000007 	bnez	t0,1c8 <add128+0x74>
 1ac:	00001021 	addu	v0,zero,zero
 1b0:	14cb0003 	bne	a2,t3,1c0 <add128+0x6c>
 1b4:	0127482b 	sltu	t1,t1,a3
 1b8:	15200004 	bnez	t1,1cc <add128+0x78>
 1bc:	00a33021 	addu	a2,a1,v1
 1c0:	00001821 	addu	v1,zero,zero
 1c4:	00001021 	addu	v0,zero,zero
 1c8:	00a33021 	addu	a2,a1,v1
 1cc:	00c5282b 	sltu	a1,a2,a1
 1d0:	00821021 	addu	v0,a0,v0
 1d4:	00a21021 	addu	v0,a1,v0
 1d8:	ad420000 	sw	v0,0(t2)

}
 1dc:	03e00008 	jr	ra
 1e0:	ad460004 	sw	a2,4(t2)

000001e4 <sub128>:
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
 1e4:	8fa90018 	lw	t1,24(sp)
 1e8:	8fab001c 	lw	t3,28(sp)
 1ec:	8faa0020 	lw	t2,32(sp)
 1f0:	8fa20024 	lw	v0,36(sp)

  *z1Ptr = a1 - b1;
 1f4:	00eb1823 	subu	v1,a3,t3
 1f8:	00e3402b 	sltu	t0,a3,v1
 1fc:	00c96023 	subu	t4,a2,t1
 200:	01884023 	subu	t0,t4,t0
 204:	ac480000 	sw	t0,0(v0)
 208:	ac430004 	sw	v1,4(v0)
  *z0Ptr = a0 - b0 - (a1 < b1);
 20c:	8fa80014 	lw	t0,20(sp)
 210:	00000000 	sll	zero,zero,0x0
 214:	00a84023 	subu	t0,a1,t0
 218:	00a8282b 	sltu	a1,a1,t0
 21c:	8fa20010 	lw	v0,16(sp)
 220:	00000000 	sll	zero,zero,0x0
 224:	00822023 	subu	a0,a0,v0
 228:	00852023 	subu	a0,a0,a1
 22c:	24030001 	addiu	v1,zero,1
 230:	00c9282b 	sltu	a1,a2,t1
 234:	14a00007 	bnez	a1,254 <sub128+0x70>
 238:	00001021 	addu	v0,zero,zero
 23c:	15260003 	bne	t1,a2,24c <sub128+0x68>
 240:	00eb382b 	sltu	a3,a3,t3
 244:	14e00004 	bnez	a3,258 <sub128+0x74>
 248:	01032823 	subu	a1,t0,v1
 24c:	00001821 	addu	v1,zero,zero
 250:	00001021 	addu	v0,zero,zero
 254:	01032823 	subu	a1,t0,v1
 258:	0105402b 	sltu	t0,t0,a1
 25c:	00821023 	subu	v0,a0,v0
 260:	00481023 	subu	v0,v0,t0
 264:	ad420000 	sw	v0,0(t2)

}
 268:	03e00008 	jr	ra
 26c:	ad450004 	sw	a1,4(t2)

00000270 <mul64To128>:
| `z0Ptr' and `z1Ptr'.
*----------------------------------------------------------------------------*/

INLINE void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
 270:	8fac0010 	lw	t4,16(sp)
 274:	8fad0014 	lw	t5,20(sp)

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
 278:	00e50019 	multu	a3,a1
 27c:	00005812 	mflo	t3
 280:	00005010 	mfhi	t2
	...
  zMiddleA = ((bits64) aLow) * bHigh;
 28c:	00c50019 	multu	a2,a1
 290:	00004812 	mflo	t1
 294:	00004010 	mfhi	t0
	...
  zMiddleB = ((bits64) aHigh) * bLow;
 2a0:	00870019 	multu	a0,a3
 2a4:	00001812 	mflo	v1
 2a8:	00001010 	mfhi	v0
	...
  z0 = ((bits64) aHigh) * bHigh;
 2b4:	00c40019 	multu	a2,a0
 2b8:	00002812 	mflo	a1
 2bc:	00002010 	mfhi	a0
  zMiddleA += zMiddleB;
 2c0:	01237021 	addu	t6,t1,v1
 2c4:	01c9302b 	sltu	a2,t6,t1
 2c8:	01024021 	addu	t0,t0,v0
 2cc:	00c84021 	addu	t0,a2,t0
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 2d0:	0102302b 	sltu	a2,t0,v0
 2d4:	14c00007 	bnez	a2,2f4 <mul64To128+0x84>
 2d8:	24060001 	addiu	a2,zero,1
 2dc:	14480005 	bne	v0,t0,2f4 <mul64To128+0x84>
 2e0:	00003021 	addu	a2,zero,zero
 2e4:	01c3102b 	sltu	v0,t6,v1
 2e8:	10400003 	beqz	v0,2f8 <mul64To128+0x88>
 2ec:	01ca7821 	addu	t7,t6,t2
 2f0:	24060001 	addiu	a2,zero,1
  zMiddleA <<= 32;
  z1 += zMiddleA;
 2f4:	01ca7821 	addu	t7,t6,t2
 2f8:	01605021 	addu	t2,t3,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 2fc:	01054821 	addu	t1,t0,a1
 300:	0128402b 	sltu	t0,t1,t0
 304:	01042021 	addu	a0,t0,a0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 308:	24030001 	addiu	v1,zero,1
 30c:	01ee702b 	sltu	t6,t7,t6
 310:	15c00003 	bnez	t6,320 <mul64To128+0xb0>
 314:	00001021 	addu	v0,zero,zero
 318:	00001821 	addu	v1,zero,zero
 31c:	00001021 	addu	v0,zero,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 320:	01232821 	addu	a1,t1,v1
 324:	00a9482b 	sltu	t1,a1,t1
 328:	00821021 	addu	v0,a0,v0
 32c:	01221021 	addu	v0,t1,v0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
  *z1Ptr = z1;
 330:	adaf0000 	sw	t7,0(t5)
 334:	adaa0004 	sw	t2,4(t5)
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 338:	00463021 	addu	a2,v0,a2
  *z1Ptr = z1;
  *z0Ptr = z0;
 33c:	ad860000 	sw	a2,0(t4)

}
 340:	03e00008 	jr	ra
 344:	ad850004 	sw	a1,4(t4)

00000348 <float_raise>:
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 348:	8f820000 	lw	v0,0(gp)
 34c:	00000000 	sll	zero,zero,0x0
 350:	00441025 	or	v0,v0,a0

}
 354:	03e00008 	jr	ra
 358:	af820000 	sw	v0,0(gp)

0000035c <float64_is_nan>:

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 35c:	000517c2 	srl	v0,a1,0x1f
 360:	00042040 	sll	a0,a0,0x1
 364:	00442025 	or	a0,v0,a0
 368:	00052840 	sll	a1,a1,0x1
 36c:	3c03ffe0 	lui	v1,0xffe0
 370:	24630001 	addiu	v1,v1,1
 374:	0083182b 	sltu	v1,a0,v1
 378:	10600007 	beqz	v1,398 <float64_is_nan+0x3c>
 37c:	24020001 	addiu	v0,zero,1
 380:	3c03ffe0 	lui	v1,0xffe0
 384:	14830003 	bne	a0,v1,394 <float64_is_nan+0x38>
 388:	00000000 	sll	zero,zero,0x0
 38c:	14a00002 	bnez	a1,398 <float64_is_nan+0x3c>
 390:	00000000 	sll	zero,zero,0x0
 394:	00001021 	addu	v0,zero,zero

}
 398:	03e00008 	jr	ra
 39c:	00000000 	sll	zero,zero,0x0

000003a0 <float64_is_signaling_nan>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 3a0:	000434c2 	srl	a2,a0,0x13
 3a4:	30c60fff 	andi	a2,a2,0xfff
 3a8:	24030ffe 	addiu	v1,zero,4094
 3ac:	14c30007 	bne	a2,v1,3cc <float64_is_signaling_nan+0x2c>
 3b0:	00000000 	sll	zero,zero,0x0
 3b4:	3c020007 	lui	v0,0x7
 3b8:	3442ffff 	ori	v0,v0,0xffff
 3bc:	00821024 	and	v0,a0,v0
| Returns 1 if the double-precision floating-point value `a' is a signaling
| NaN; otherwise returns 0.
*----------------------------------------------------------------------------*/

flag
float64_is_signaling_nan (float64 a)
 3c0:	00451025 	or	v0,v0,a1
 3c4:	03e00008 	jr	ra
 3c8:	0002102b 	sltu	v0,zero,v0
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));

}
 3cc:	03e00008 	jr	ra
 3d0:	00001021 	addu	v0,zero,zero

000003d4 <propagateFloat64NaN>:
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/

static float64
propagateFloat64NaN (float64 a, float64 b)
{
 3d4:	27bdffd0 	addiu	sp,sp,-48
 3d8:	afbf002c 	sw	ra,44(sp)
 3dc:	afb60028 	sw	s6,40(sp)
 3e0:	afb50024 	sw	s5,36(sp)
 3e4:	afb40020 	sw	s4,32(sp)
 3e8:	afb3001c 	sw	s3,28(sp)
 3ec:	afb20018 	sw	s2,24(sp)
 3f0:	afb10014 	sw	s1,20(sp)
 3f4:	afb00010 	sw	s0,16(sp)
 3f8:	0080a021 	addu	s4,a0,zero
 3fc:	00a0b021 	addu	s6,a1,zero
 400:	00c08821 	addu	s1,a2,zero
  flag aIsNaN, aIsSignalingNaN, bIsNaN, bIsSignalingNaN;

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
 404:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 408:	00e09021 	addu	s2,a3,zero
 40c:	00409821 	addu	s3,v0,zero
  bIsNaN = float64_is_nan (b);
 410:	02202021 	addu	a0,s1,zero
 414:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 418:	02402821 	addu	a1,s2,zero
 41c:	0040a821 	addu	s5,v0,zero
  bIsSignalingNaN = float64_is_signaling_nan (b);
 420:	02202021 	addu	a0,s1,zero
 424:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 428:	02402821 	addu	a1,s2,zero
 42c:	00408021 	addu	s0,v0,zero
  a |= LIT64 (0x0008000000000000);
 430:	3c020008 	lui	v0,0x8
 434:	0282a025 	or	s4,s4,v0
  b |= LIT64 (0x0008000000000000);
 438:	02228825 	or	s1,s1,v0
  if (aIsSignalingNaN | bIsSignalingNaN)
 43c:	02131025 	or	v0,s0,s3
 440:	10400003 	beqz	v0,450 <propagateFloat64NaN+0x7c>
 444:	00000000 	sll	zero,zero,0x0
    float_raise (float_flag_invalid);
 448:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 44c:	24040010 	addiu	a0,zero,16
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
 450:	1600000b 	bnez	s0,480 <propagateFloat64NaN+0xac>
 454:	02201021 	addu	v0,s1,zero
 458:	16600005 	bnez	s3,470 <propagateFloat64NaN+0x9c>
 45c:	02808821 	addu	s1,s4,zero
 460:	12a00005 	beqz	s5,478 <propagateFloat64NaN+0xa4>
 464:	02401821 	addu	v1,s2,zero
 468:	08000121 	j	484 <propagateFloat64NaN+0xb0>
 46c:	00000000 	sll	zero,zero,0x0
 470:	0800011f 	j	47c <propagateFloat64NaN+0xa8>
 474:	02c09021 	addu	s2,s6,zero
 478:	02c09021 	addu	s2,s6,zero

}
 47c:	02201021 	addu	v0,s1,zero
 480:	02401821 	addu	v1,s2,zero
 484:	8fbf002c 	lw	ra,44(sp)
 488:	8fb60028 	lw	s6,40(sp)
 48c:	8fb50024 	lw	s5,36(sp)
 490:	8fb40020 	lw	s4,32(sp)
 494:	8fb3001c 	lw	s3,28(sp)
 498:	8fb20018 	lw	s2,24(sp)
 49c:	8fb10014 	lw	s1,20(sp)
 4a0:	8fb00010 	lw	s0,16(sp)
 4a4:	03e00008 	jr	ra
 4a8:	27bd0030 	addiu	sp,sp,48

000004ac <extractFloat64Frac>:
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);

}
 4ac:	3c02000f 	lui	v0,0xf
 4b0:	3442ffff 	ori	v0,v0,0xffff
 4b4:	00821024 	and	v0,a0,v0
 4b8:	03e00008 	jr	ra
 4bc:	00a01821 	addu	v1,a1,zero

000004c0 <extractFloat64Exp>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 4c0:	00041502 	srl	v0,a0,0x14

}
 4c4:	03e00008 	jr	ra
 4c8:	304207ff 	andi	v0,v0,0x7ff

000004cc <extractFloat64Sign>:
extractFloat64Sign (float64 a)
{

  return a >> 63;

}
 4cc:	03e00008 	jr	ra
 4d0:	000417c2 	srl	v0,a0,0x1f

000004d4 <packFloat64>:

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 4d4:	000427c0 	sll	a0,a0,0x1f
 4d8:	00c42021 	addu	a0,a2,a0
 4dc:	00051500 	sll	v0,a1,0x14

}
 4e0:	00821021 	addu	v0,a0,v0
 4e4:	03e00008 	jr	ra
 4e8:	00e01821 	addu	v1,a3,zero

000004ec <float64_div>:
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
 4ec:	27bdff48 	addiu	sp,sp,-184
 4f0:	afbf00b4 	sw	ra,180(sp)
 4f4:	afbe00b0 	sw	s8,176(sp)
 4f8:	afb700ac 	sw	s7,172(sp)
 4fc:	afb600a8 	sw	s6,168(sp)
 500:	afb500a4 	sw	s5,164(sp)
 504:	afb400a0 	sw	s4,160(sp)
 508:	afb3009c 	sw	s3,156(sp)
 50c:	afb20098 	sw	s2,152(sp)
 510:	afb10094 	sw	s1,148(sp)
 514:	afb00090 	sw	s0,144(sp)
 518:	afa500bc 	sw	a1,188(sp)
 51c:	afa400b8 	sw	a0,184(sp)
 520:	afa700c4 	sw	a3,196(sp)
  flag aSign, bSign, zSign;
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  bits64 rem0, rem1, term0, term1;

  aSig = extractFloat64Frac (a);
 524:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 528:	afa600c0 	sw	a2,192(sp)
 52c:	00409821 	addu	s3,v0,zero
 530:	afb30030 	sw	s3,48(sp)
 534:	afa30034 	sw	v1,52(sp)
  aExp = extractFloat64Exp (a);
 538:	8fa500bc 	lw	a1,188(sp)
 53c:	8fa400b8 	lw	a0,184(sp)
 540:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 544:	0060b021 	addu	s6,v1,zero
 548:	afa20028 	sw	v0,40(sp)
  aSign = extractFloat64Sign (a);
 54c:	8fa500bc 	lw	a1,188(sp)
 550:	8fa400b8 	lw	a0,184(sp)
 554:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 558:	00408821 	addu	s1,v0,zero
  bSig = extractFloat64Frac (b);
 55c:	8fa500c4 	lw	a1,196(sp)
 560:	8fa400c0 	lw	a0,192(sp)
 564:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 568:	0040a021 	addu	s4,v0,zero
 56c:	00409021 	addu	s2,v0,zero
 570:	afb20038 	sw	s2,56(sp)
 574:	afa3003c 	sw	v1,60(sp)
  bExp = extractFloat64Exp (b);
 578:	8fa500c4 	lw	a1,196(sp)
 57c:	8fa400c0 	lw	a0,192(sp)
 580:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 584:	0060a821 	addu	s5,v1,zero
 588:	afa2002c 	sw	v0,44(sp)
  bSign = extractFloat64Sign (b);
 58c:	8fa500c4 	lw	a1,196(sp)
 590:	8fa400c0 	lw	a0,192(sp)
 594:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 598:	00408021 	addu	s0,v0,zero
  zSign = aSign ^ bSign;
 59c:	0054b826 	xor	s7,v0,s4
  if (aExp == 0x7FF)
 5a0:	240207ff 	addiu	v0,zero,2047
 5a4:	16220028 	bne	s1,v0,648 <float64_div+0x15c>
 5a8:	00000000 	sll	zero,zero,0x0
    {
      if (aSig)
 5ac:	02769825 	or	s3,s3,s6
 5b0:	1260000a 	beqz	s3,5dc <float64_div+0xf0>
 5b4:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
 5b8:	8fa500bc 	lw	a1,188(sp)
 5bc:	8fa400b8 	lw	a0,184(sp)
 5c0:	8fa700c4 	lw	a3,196(sp)
 5c4:	8fa600c0 	lw	a2,192(sp)
 5c8:	0c0000f5 	jal	3d4 <propagateFloat64NaN>
 5cc:	00000000 	sll	zero,zero,0x0
 5d0:	00602821 	addu	a1,v1,zero
 5d4:	0800030f 	j	c3c <float64_div+0x750>
 5d8:	00402021 	addu	a0,v0,zero
      if (bExp == 0x7FF)
 5dc:	16020013 	bne	s0,v0,62c <float64_div+0x140>
 5e0:	02e02021 	addu	a0,s7,zero
	{
	  if (bSig)
 5e4:	02559025 	or	s2,s2,s5
 5e8:	1240000a 	beqz	s2,614 <float64_div+0x128>
 5ec:	00000000 	sll	zero,zero,0x0
	    return propagateFloat64NaN (a, b);
 5f0:	8fa500bc 	lw	a1,188(sp)
 5f4:	8fa400b8 	lw	a0,184(sp)
 5f8:	8fa700c4 	lw	a3,196(sp)
 5fc:	8fa600c0 	lw	a2,192(sp)
 600:	0c0000f5 	jal	3d4 <propagateFloat64NaN>
 604:	00000000 	sll	zero,zero,0x0
 608:	00602821 	addu	a1,v1,zero
 60c:	0800030f 	j	c3c <float64_div+0x750>
 610:	00402021 	addu	a0,v0,zero
	  float_raise (float_flag_invalid);
 614:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 618:	24040010 	addiu	a0,zero,16
	  return float64_default_nan;
 61c:	2405ffff 	addiu	a1,zero,-1
 620:	3c047fff 	lui	a0,0x7fff
 624:	0800030f 	j	c3c <float64_div+0x750>
 628:	3484ffff 	ori	a0,a0,0xffff
	}
      return packFloat64 (zSign, 0x7FF, 0);
 62c:	240507ff 	addiu	a1,zero,2047
 630:	00003821 	addu	a3,zero,zero
 634:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 638:	00003021 	addu	a2,zero,zero
 63c:	00602821 	addu	a1,v1,zero
 640:	0800030f 	j	c3c <float64_div+0x750>
 644:	00402021 	addu	a0,v0,zero
    }
  if (bExp == 0x7FF)
 648:	16020014 	bne	s0,v0,69c <float64_div+0x1b0>
 64c:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
 650:	02559025 	or	s2,s2,s5
 654:	1240000a 	beqz	s2,680 <float64_div+0x194>
 658:	00003821 	addu	a3,zero,zero
	return propagateFloat64NaN (a, b);
 65c:	8fa500bc 	lw	a1,188(sp)
 660:	8fa400b8 	lw	a0,184(sp)
 664:	8fa700c4 	lw	a3,196(sp)
 668:	8fa600c0 	lw	a2,192(sp)
 66c:	0c0000f5 	jal	3d4 <propagateFloat64NaN>
 670:	00000000 	sll	zero,zero,0x0
 674:	00602821 	addu	a1,v1,zero
 678:	0800030f 	j	c3c <float64_div+0x750>
 67c:	00402021 	addu	a0,v0,zero
      return packFloat64 (zSign, 0, 0);
 680:	02e02021 	addu	a0,s7,zero
 684:	00002821 	addu	a1,zero,zero
 688:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 68c:	00003021 	addu	a2,zero,zero
 690:	00602821 	addu	a1,v1,zero
 694:	0800030f 	j	c3c <float64_div+0x750>
 698:	00402021 	addu	a0,v0,zero
    }
  if (bExp == 0)
 69c:	1600001d 	bnez	s0,714 <float64_div+0x228>
 6a0:	02551025 	or	v0,s2,s5
    {
      if (bSig == 0)
 6a4:	14400016 	bnez	v0,700 <float64_div+0x214>
 6a8:	001117c3 	sra	v0,s1,0x1f
	{
	  if ((aExp | aSig) == 0)
 6ac:	00539825 	or	s3,v0,s3
 6b0:	02368825 	or	s1,s1,s6
 6b4:	02718825 	or	s1,s3,s1
 6b8:	16200007 	bnez	s1,6d8 <float64_div+0x1ec>
 6bc:	00000000 	sll	zero,zero,0x0
	    {
	      float_raise (float_flag_invalid);
 6c0:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 6c4:	24040010 	addiu	a0,zero,16
	      return float64_default_nan;
 6c8:	2405ffff 	addiu	a1,zero,-1
 6cc:	3c047fff 	lui	a0,0x7fff
 6d0:	0800030f 	j	c3c <float64_div+0x750>
 6d4:	3484ffff 	ori	a0,a0,0xffff
	    }
	  float_raise (float_flag_divbyzero);
 6d8:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 6dc:	24040002 	addiu	a0,zero,2
	  return packFloat64 (zSign, 0x7FF, 0);
 6e0:	02e02021 	addu	a0,s7,zero
 6e4:	240507ff 	addiu	a1,zero,2047
 6e8:	00003821 	addu	a3,zero,zero
 6ec:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 6f0:	00003021 	addu	a2,zero,zero
 6f4:	00602821 	addu	a1,v1,zero
 6f8:	0800030f 	j	c3c <float64_div+0x750>
 6fc:	00402021 	addu	a0,v0,zero
	}
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
 700:	02402021 	addu	a0,s2,zero
 704:	02a02821 	addu	a1,s5,zero
 708:	27a6002c 	addiu	a2,sp,44
 70c:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 710:	27a70038 	addiu	a3,sp,56
    }
  if (aExp == 0)
 714:	8fa20028 	lw	v0,40(sp)
 718:	00000000 	sll	zero,zero,0x0
 71c:	14400011 	bnez	v0,764 <float64_div+0x278>
 720:	00000000 	sll	zero,zero,0x0
    {
      if (aSig == 0)
 724:	8fa40030 	lw	a0,48(sp)
 728:	8fa50034 	lw	a1,52(sp)
 72c:	00000000 	sll	zero,zero,0x0
 730:	00851025 	or	v0,a0,a1
 734:	14400008 	bnez	v0,758 <float64_div+0x26c>
 738:	00003821 	addu	a3,zero,zero
	return packFloat64 (zSign, 0, 0);
 73c:	02e02021 	addu	a0,s7,zero
 740:	00002821 	addu	a1,zero,zero
 744:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 748:	00003021 	addu	a2,zero,zero
 74c:	00602821 	addu	a1,v1,zero
 750:	0800030f 	j	c3c <float64_div+0x750>
 754:	00402021 	addu	a0,v0,zero
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
 758:	27a60028 	addiu	a2,sp,40
 75c:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 760:	27a70030 	addiu	a3,sp,48
    }
  zExp = aExp - bExp + 0x3FD;
 764:	8fbe0028 	lw	s8,40(sp)
 768:	00000000 	sll	zero,zero,0x0
 76c:	27de03fd 	addiu	s8,s8,1021
 770:	8fa2002c 	lw	v0,44(sp)
 774:	00000000 	sll	zero,zero,0x0
 778:	03c2f023 	subu	s8,s8,v0
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
 77c:	3c040010 	lui	a0,0x10
 780:	8fa20030 	lw	v0,48(sp)
 784:	00000000 	sll	zero,zero,0x0
 788:	00441025 	or	v0,v0,a0
 78c:	8fa30034 	lw	v1,52(sp)
 790:	00000000 	sll	zero,zero,0x0
 794:	00032d82 	srl	a1,v1,0x16
 798:	00021280 	sll	v0,v0,0xa
 79c:	00a21025 	or	v0,a1,v0
 7a0:	00031a80 	sll	v1,v1,0xa
 7a4:	afa20030 	sw	v0,48(sp)
 7a8:	afa30034 	sw	v1,52(sp)
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
 7ac:	8fb00038 	lw	s0,56(sp)
 7b0:	00000000 	sll	zero,zero,0x0
 7b4:	02048025 	or	s0,s0,a0
 7b8:	8fb3003c 	lw	s3,60(sp)
 7bc:	00000000 	sll	zero,zero,0x0
 7c0:	00132d42 	srl	a1,s3,0x15
 7c4:	001082c0 	sll	s0,s0,0xb
 7c8:	00b08025 	or	s0,a1,s0
 7cc:	00139ac0 	sll	s3,s3,0xb
 7d0:	afb00038 	sw	s0,56(sp)
  if (bSig <= (aSig + aSig))
 7d4:	00032840 	sll	a1,v1,0x1
 7d8:	00a3302b 	sltu	a2,a1,v1
 7dc:	00022040 	sll	a0,v0,0x1
 7e0:	00c42021 	addu	a0,a2,a0
 7e4:	0090302b 	sltu	a2,a0,s0
 7e8:	14c0000c 	bnez	a2,81c <float64_div+0x330>
 7ec:	afb3003c 	sw	s3,60(sp)
 7f0:	16040004 	bne	s0,a0,804 <float64_div+0x318>
 7f4:	000227c0 	sll	a0,v0,0x1f
 7f8:	00b3282b 	sltu	a1,a1,s3
 7fc:	14a00007 	bnez	a1,81c <float64_div+0x330>
 800:	00000000 	sll	zero,zero,0x0
    {
      aSig >>= 1;
 804:	00031842 	srl	v1,v1,0x1
 808:	00641825 	or	v1,v1,a0
 80c:	afa30034 	sw	v1,52(sp)
 810:	00021042 	srl	v0,v0,0x1
 814:	afa20030 	sw	v0,48(sp)
      ++zExp;
 818:	27de0001 	addiu	s8,s8,1
    }
  zSig = estimateDiv128To64 (aSig, 0, bSig);
 81c:	8fb20030 	lw	s2,48(sp)
 820:	8fb50034 	lw	s5,52(sp)
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
 824:	0250102b 	sltu	v0,s2,s0
 828:	14400005 	bnez	v0,840 <float64_div+0x354>
 82c:	02008821 	addu	s1,s0,zero
 830:	161200a2 	bne	s0,s2,abc <float64_div+0x5d0>
 834:	02b3102b 	sltu	v0,s5,s3
 838:	104000a0 	beqz	v0,abc <float64_div+0x5d0>
 83c:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
 840:	0000a021 	addu	s4,zero,zero
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
 844:	0250102b 	sltu	v0,s2,s0
 848:	14400006 	bnez	v0,864 <float64_div+0x378>
 84c:	afb00088 	sw	s0,136(sp)
 850:	00001821 	addu	v1,zero,zero
 854:	2402ffff 	addiu	v0,zero,-1
 858:	afa30084 	sw	v1,132(sp)
 85c:	08000221 	j	884 <float64_div+0x398>
 860:	afa20080 	sw	v0,128(sp)
 864:	02402021 	addu	a0,s2,zero
 868:	02a02821 	addu	a1,s5,zero
 86c:	00003021 	addu	a2,zero,zero
 870:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 874:	02003821 	addu	a3,s0,zero
 878:	afa30080 	sw	v1,128(sp)
 87c:	00002821 	addu	a1,zero,zero
 880:	afa50084 	sw	a1,132(sp)
  mul64To128 (b, z, &term0, &term1);
 884:	27a20070 	addiu	v0,sp,112
 888:	afa20010 	sw	v0,16(sp)
 88c:	27a20078 	addiu	v0,sp,120
 890:	afa20014 	sw	v0,20(sp)
 894:	02002021 	addu	a0,s0,zero
 898:	8fa70084 	lw	a3,132(sp)
 89c:	8fa60080 	lw	a2,128(sp)
 8a0:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 8a4:	02602821 	addu	a1,s3,zero
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
 8a8:	8fa30074 	lw	v1,116(sp)
 8ac:	8fa20070 	lw	v0,112(sp)
 8b0:	afa30014 	sw	v1,20(sp)
 8b4:	afa20010 	sw	v0,16(sp)
 8b8:	8fa3007c 	lw	v1,124(sp)
 8bc:	8fa20078 	lw	v0,120(sp)
 8c0:	afa3001c 	sw	v1,28(sp)
 8c4:	afa20018 	sw	v0,24(sp)
 8c8:	27a20060 	addiu	v0,sp,96
 8cc:	afa20020 	sw	v0,32(sp)
 8d0:	27a20068 	addiu	v0,sp,104
 8d4:	afa20024 	sw	v0,36(sp)
 8d8:	02402021 	addu	a0,s2,zero
 8dc:	02a02821 	addu	a1,s5,zero
 8e0:	00003821 	addu	a3,zero,zero
 8e4:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 8e8:	00003021 	addu	a2,zero,zero
  while (((sbits64) rem0) < 0)
 8ec:	8fa40060 	lw	a0,96(sp)
 8f0:	8fa50064 	lw	a1,100(sp)
 8f4:	04800005 	bltz	a0,90c <float64_div+0x420>
 8f8:	02609021 	addu	s2,s3,zero
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
 8fc:	8fb00080 	lw	s0,128(sp)
 900:	8fa20084 	lw	v0,132(sp)
 904:	08000258 	j	960 <float64_div+0x474>
 908:	afa20080 	sw	v0,128(sp)
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    {
      z -= LIT64 (0x100000000);
      b1 = b << 32;
 90c:	00009821 	addu	s3,zero,zero
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
 910:	8fb00080 	lw	s0,128(sp)
 914:	8fa30084 	lw	v1,132(sp)
 918:	00000000 	sll	zero,zero,0x0
 91c:	afa30080 	sw	v1,128(sp)
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    {
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
 920:	27b50060 	addiu	s5,sp,96
 924:	27b60068 	addiu	s6,sp,104
 928:	afb40010 	sw	s4,16(sp)
 92c:	afb10014 	sw	s1,20(sp)
 930:	afb20018 	sw	s2,24(sp)
 934:	afb3001c 	sw	s3,28(sp)
 938:	afb50020 	sw	s5,32(sp)
 93c:	afb60024 	sw	s6,36(sp)
 940:	8fa7006c 	lw	a3,108(sp)
 944:	8fa60068 	lw	a2,104(sp)
 948:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 94c:	2610ffff 	addiu	s0,s0,-1
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
 950:	8fa40060 	lw	a0,96(sp)
 954:	8fa50064 	lw	a1,100(sp)
 958:	0480fff3 	bltz	a0,928 <float64_div+0x43c>
 95c:	00000000 	sll	zero,zero,0x0
    {
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    }
  rem0 = (rem0 << 32) | (rem1 >> 32);
 960:	8fa20068 	lw	v0,104(sp)
 964:	00a02021 	addu	a0,a1,zero
 968:	afa50060 	sw	a1,96(sp)
 96c:	afa20064 	sw	v0,100(sp)
  z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
 970:	8fa30088 	lw	v1,136(sp)
 974:	00000000 	sll	zero,zero,0x0
 978:	00a3282b 	sltu	a1,a1,v1
 97c:	14a00004 	bnez	a1,990 <float64_div+0x4a4>
 980:	00402821 	addu	a1,v0,zero
 984:	2403ffff 	addiu	v1,zero,-1
 988:	08000269 	j	9a4 <float64_div+0x4b8>
 98c:	00001021 	addu	v0,zero,zero
 990:	00003021 	addu	a2,zero,zero
 994:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 998:	02203821 	addu	a3,s1,zero
 99c:	00403821 	addu	a3,v0,zero
 9a0:	00e01021 	addu	v0,a3,zero
 9a4:	00509025 	or	s2,v0,s0
 9a8:	8fa40080 	lw	a0,128(sp)
 9ac:	00000000 	sll	zero,zero,0x0
 9b0:	00649825 	or	s3,v1,a0
  if ((zSig & 0x1FF) <= 2)
 9b4:	326201ff 	andi	v0,s3,0x1ff
 9b8:	2c420003 	sltiu	v0,v0,3
 9bc:	10400041 	beqz	v0,ac4 <float64_div+0x5d8>
 9c0:	27a20050 	addiu	v0,sp,80
    {
      mul64To128 (bSig, zSig, &term0, &term1);
 9c4:	afa20010 	sw	v0,16(sp)
 9c8:	27a20058 	addiu	v0,sp,88
 9cc:	afa20014 	sw	v0,20(sp)
 9d0:	8fa5003c 	lw	a1,60(sp)
 9d4:	8fa40038 	lw	a0,56(sp)
 9d8:	02603821 	addu	a3,s3,zero
 9dc:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 9e0:	02403021 	addu	a2,s2,zero
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
 9e4:	8fa30054 	lw	v1,84(sp)
 9e8:	8fa20050 	lw	v0,80(sp)
 9ec:	afa30014 	sw	v1,20(sp)
 9f0:	afa20010 	sw	v0,16(sp)
 9f4:	8fa3005c 	lw	v1,92(sp)
 9f8:	8fa20058 	lw	v0,88(sp)
 9fc:	afa3001c 	sw	v1,28(sp)
 a00:	afa20018 	sw	v0,24(sp)
 a04:	27a20040 	addiu	v0,sp,64
 a08:	afa20020 	sw	v0,32(sp)
 a0c:	27a20048 	addiu	v0,sp,72
 a10:	afa20024 	sw	v0,36(sp)
 a14:	8fa50034 	lw	a1,52(sp)
 a18:	8fa40030 	lw	a0,48(sp)
 a1c:	00003821 	addu	a3,zero,zero
 a20:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 a24:	00003021 	addu	a2,zero,zero
      while ((sbits64) rem0 < 0)
 a28:	8fa40040 	lw	a0,64(sp)
 a2c:	8fa50044 	lw	a1,68(sp)
 a30:	0481001a 	bgez	a0,a9c <float64_div+0x5b0>
 a34:	27b10048 	addiu	s1,sp,72
	{
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
 a38:	27b00040 	addiu	s0,sp,64
    {
      mul64To128 (bSig, zSig, &term0, &term1);
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
      while ((sbits64) rem0 < 0)
	{
	  --zSig;
 a3c:	2666ffff 	addiu	a2,s3,-1
 a40:	00d3382b 	sltu	a3,a2,s3
 a44:	2652ffff 	addiu	s2,s2,-1
 a48:	00f21821 	addu	v1,a3,s2
 a4c:	00609021 	addu	s2,v1,zero
 a50:	00c09821 	addu	s3,a2,zero
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
 a54:	00001821 	addu	v1,zero,zero
 a58:	00001021 	addu	v0,zero,zero
 a5c:	afa30014 	sw	v1,20(sp)
 a60:	afa20010 	sw	v0,16(sp)
 a64:	8fa3003c 	lw	v1,60(sp)
 a68:	8fa20038 	lw	v0,56(sp)
 a6c:	afa3001c 	sw	v1,28(sp)
 a70:	afa20018 	sw	v0,24(sp)
 a74:	afb00020 	sw	s0,32(sp)
 a78:	afb10024 	sw	s1,36(sp)
 a7c:	8fa7004c 	lw	a3,76(sp)
 a80:	8fa60048 	lw	a2,72(sp)
 a84:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 a88:	00000000 	sll	zero,zero,0x0
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
    {
      mul64To128 (bSig, zSig, &term0, &term1);
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
      while ((sbits64) rem0 < 0)
 a8c:	8fa40040 	lw	a0,64(sp)
 a90:	8fa50044 	lw	a1,68(sp)
 a94:	0480ffea 	bltz	a0,a40 <float64_div+0x554>
 a98:	2666ffff 	addiu	a2,s3,-1
	{
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
 a9c:	8fa2004c 	lw	v0,76(sp)
 aa0:	8fa40048 	lw	a0,72(sp)
 aa4:	00000000 	sll	zero,zero,0x0
 aa8:	00822025 	or	a0,a0,v0
 aac:	0004202b 	sltu	a0,zero,a0
 ab0:	00931025 	or	v0,a0,s3
 ab4:	080002b1 	j	ac4 <float64_div+0x5d8>
 ab8:	00409821 	addu	s3,v0,zero
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
 abc:	2413ffff 	addiu	s3,zero,-1
 ac0:	2412ffff 	addiu	s2,zero,-1
 ac4:	afb3007c 	sw	s3,124(sp)
 ac8:	afb20078 	sw	s2,120(sp)
{
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
 acc:	8f820000 	lw	v0,0(gp)
 ad0:	00000000 	sll	zero,zero,0x0
  roundNearestEven = (roundingMode == float_round_nearest_even);
 ad4:	2c510001 	sltiu	s1,v0,1
  roundIncrement = 0x200;
  if (!roundNearestEven)
 ad8:	1620000e 	bnez	s1,b14 <float64_div+0x628>
 adc:	24100200 	addiu	s0,zero,512
    {
      if (roundingMode == float_round_to_zero)
 ae0:	24030001 	addiu	v1,zero,1
 ae4:	1043000b 	beq	v0,v1,b14 <float64_div+0x628>
 ae8:	00008021 	addu	s0,zero,zero
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
 aec:	12e00006 	beqz	s7,b08 <float64_div+0x61c>
 af0:	24030003 	addiu	v1,zero,3
	    {
	      if (roundingMode == float_round_up)
 af4:	24030002 	addiu	v1,zero,2
 af8:	10430007 	beq	v0,v1,b18 <float64_div+0x62c>
 afc:	33c2ffff 	andi	v0,s8,0xffff
	{
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
 b00:	080002c6 	j	b18 <float64_div+0x62c>
 b04:	241003ff 	addiu	s0,zero,1023
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
 b08:	14430002 	bne	v0,v1,b14 <float64_div+0x628>
 b0c:	241003ff 	addiu	s0,zero,1023
		roundIncrement = 0;
 b10:	00008021 	addu	s0,zero,zero
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
 b14:	33c2ffff 	andi	v0,s8,0xffff
 b18:	2c4207fd 	sltiu	v0,v0,2045
 b1c:	14400026 	bnez	v0,bb8 <float64_div+0x6cc>
 b20:	2bc207fe 	slti	v0,s8,2046
    {
      if ((0x7FD < zExp)
 b24:	10400007 	beqz	v0,b44 <float64_div+0x658>
 b28:	240207fd 	addiu	v0,zero,2045
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 b2c:	17c20013 	bne	s8,v0,b7c <float64_div+0x690>
 b30:	02131021 	addu	v0,s0,s3
 b34:	0050102b 	sltu	v0,v0,s0
 b38:	00521021 	addu	v0,v0,s2
 b3c:	0441001f 	bgez	v0,bbc <float64_div+0x6d0>
 b40:	327203ff 	andi	s2,s3,0x3ff
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
 b44:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 b48:	24040009 	addiu	a0,zero,9
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 b4c:	02e02021 	addu	a0,s7,zero
 b50:	240507ff 	addiu	a1,zero,2047
 b54:	00003821 	addu	a3,zero,zero
 b58:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 b5c:	00003021 	addu	a2,zero,zero
 b60:	2e100001 	sltiu	s0,s0,1
 b64:	00708023 	subu	s0,v1,s0
 b68:	0070182b 	sltu	v1,v1,s0
 b6c:	00433823 	subu	a3,v0,v1
 b70:	00e02021 	addu	a0,a3,zero
 b74:	0800030f 	j	c3c <float64_div+0x750>
 b78:	02002821 	addu	a1,s0,zero
	}
      if (zExp < 0)
 b7c:	07c1000e 	bgez	s8,bb8 <float64_div+0x6cc>
 b80:	02602821 	addu	a1,s3,zero
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
 b84:	02402021 	addu	a0,s2,zero
 b88:	001e3023 	negu	a2,s8
 b8c:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 b90:	27a70078 	addiu	a3,sp,120
	  zExp = 0;
	  roundBits = zSig & 0x3FF;
 b94:	8fb2007c 	lw	s2,124(sp)
 b98:	00000000 	sll	zero,zero,0x0
 b9c:	325203ff 	andi	s2,s2,0x3ff
	  if (isTiny && roundBits)
 ba0:	1240000d 	beqz	s2,bd8 <float64_div+0x6ec>
 ba4:	00000000 	sll	zero,zero,0x0
	    float_raise (float_flag_underflow);
 ba8:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 bac:	24040004 	addiu	a0,zero,4
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 bb0:	080002f1 	j	bc4 <float64_div+0x6d8>
 bb4:	0000f021 	addu	s8,zero,zero
	      if (roundingMode == float_round_down)
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
 bb8:	327203ff 	andi	s2,s3,0x3ff
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
 bbc:	12400008 	beqz	s2,be0 <float64_div+0x6f4>
 bc0:	3a470200 	xori	a3,s2,0x200
    float_exception_flags |= float_flag_inexact;
 bc4:	8f820000 	lw	v0,0(gp)
 bc8:	00000000 	sll	zero,zero,0x0
 bcc:	34420001 	ori	v0,v0,0x1
 bd0:	080002f7 	j	bdc <float64_div+0x6f0>
 bd4:	af820000 	sw	v0,0(gp)
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 bd8:	0000f021 	addu	s8,zero,zero
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 bdc:	3a470200 	xori	a3,s2,0x200
 be0:	2ce70001 	sltiu	a3,a3,1
 be4:	00f13824 	and	a3,a3,s1
 be8:	00073827 	nor	a3,zero,a3
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
 bec:	8fa2007c 	lw	v0,124(sp)
 bf0:	00000000 	sll	zero,zero,0x0
 bf4:	02021021 	addu	v0,s0,v0
 bf8:	0050302b 	sltu	a2,v0,s0
 bfc:	8fa30078 	lw	v1,120(sp)
 c00:	00000000 	sll	zero,zero,0x0
 c04:	00c33021 	addu	a2,a2,v1
 c08:	00061d80 	sll	v1,a2,0x16
 c0c:	00021282 	srl	v0,v0,0xa
 c10:	00621025 	or	v0,v1,v0
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 c14:	00063282 	srl	a2,a2,0xa
 c18:	00e23824 	and	a3,a3,v0
  if (zSig == 0)
 c1c:	00c71025 	or	v0,a2,a3
 c20:	14400002 	bnez	v0,c2c <float64_div+0x740>
 c24:	02e02021 	addu	a0,s7,zero
    zExp = 0;
 c28:	0000f021 	addu	s8,zero,zero
  return packFloat64 (zSign, zExp, zSig);
 c2c:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 c30:	03c02821 	addu	a1,s8,zero
 c34:	00602821 	addu	a1,v1,zero
 c38:	00402021 	addu	a0,v0,zero
	}
      zSig |= (rem1 != 0);
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);

}
 c3c:	00801021 	addu	v0,a0,zero
 c40:	00a01821 	addu	v1,a1,zero
 c44:	8fbf00b4 	lw	ra,180(sp)
 c48:	8fbe00b0 	lw	s8,176(sp)
 c4c:	8fb700ac 	lw	s7,172(sp)
 c50:	8fb600a8 	lw	s6,168(sp)
 c54:	8fb500a4 	lw	s5,164(sp)
 c58:	8fb400a0 	lw	s4,160(sp)
 c5c:	8fb3009c 	lw	s3,156(sp)
 c60:	8fb20098 	lw	s2,152(sp)
 c64:	8fb10094 	lw	s1,148(sp)
 c68:	8fb00090 	lw	s0,144(sp)
 c6c:	03e00008 	jr	ra
 c70:	27bd00b8 	addiu	sp,sp,184

00000c74 <ullong_to_double>:
    unsigned long long ll;
  } t;

  t.ll = x;
  return t.d;
}
 c74:	44850000 	mtc1	a1,$f0
 c78:	00000000 	sll	zero,zero,0x0
 c7c:	44840800 	mtc1	a0,$f1
 c80:	03e00008 	jr	ra
 c84:	00000000 	sll	zero,zero,0x0

00000c88 <main>:
  0x3FE5555555555555ULL		/* 0.666667 */
};

int
main ()
{
 c88:	27bdffa0 	addiu	sp,sp,-96
 c8c:	afbf005c 	sw	ra,92(sp)
 c90:	afbe0058 	sw	s8,88(sp)
 c94:	afb70054 	sw	s7,84(sp)
 c98:	afb60050 	sw	s6,80(sp)
 c9c:	afb5004c 	sw	s5,76(sp)
 ca0:	afb40048 	sw	s4,72(sp)
 ca4:	afb30044 	sw	s3,68(sp)
 ca8:	afb20040 	sw	s2,64(sp)
 cac:	afb1003c 	sw	s1,60(sp)
 cb0:	afb00038 	sw	s0,56(sp)
 cb4:	00008021 	addu	s0,zero,zero
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
 cb8:	00009821 	addu	s3,zero,zero
  0xBFE5555555555555ULL,	/* -0.666667 */
  0x3FE5555555555555ULL		/* 0.666667 */
};

int
main ()
 cbc:	3c1e0000 	lui	s8,0x0
 cc0:	27de0000 	addiu	s8,s8,0
 cc4:	03d01021 	addu	v0,s8,s0
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
 cc8:	8c550004 	lw	s5,4(v0)
 ccc:	8c540000 	lw	s4,0(v0)
  0xBFE5555555555555ULL,	/* -0.666667 */
  0x3FE5555555555555ULL		/* 0.666667 */
};

int
main ()
 cd0:	3c030000 	lui	v1,0x0
 cd4:	24630000 	addiu	v1,v1,0
 cd8:	00701021 	addu	v0,v1,s0
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
 cdc:	8c450004 	lw	a1,4(v0)
 ce0:	8c440000 	lw	a0,0(v0)
 ce4:	afa50034 	sw	a1,52(sp)
 ce8:	afa40030 	sw	a0,48(sp)
	  result = float64_div (x1, x2);
 cec:	02a02821 	addu	a1,s5,zero
 cf0:	8fa70034 	lw	a3,52(sp)
 cf4:	8fa60030 	lw	a2,48(sp)
 cf8:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 cfc:	02802021 	addu	a0,s4,zero
 d00:	00408821 	addu	s1,v0,zero
 d04:	00609021 	addu	s2,v1,zero
  0xBFE5555555555555ULL,	/* -0.666667 */
  0x3FE5555555555555ULL		/* 0.666667 */
};

int
main ()
 d08:	3c050000 	lui	a1,0x0
 d0c:	24a50000 	addiu	a1,a1,0
 d10:	00b01021 	addu	v0,a1,s0
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_div (x1, x2);
	  main_result += (result != z_output[i]);
 d14:	8c560000 	lw	s6,0(v0)
 d18:	8c570004 	lw	s7,4(v0)
 d1c:	02d11826 	xor	v1,s6,s1
 d20:	02f21026 	xor	v0,s7,s2
 d24:	00621025 	or	v0,v1,v0
 d28:	0002102b 	sltu	v0,zero,v0
 d2c:	02629821 	addu	s3,s3,v0

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 d30:	02202021 	addu	a0,s1,zero
 d34:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 d38:	02402821 	addu	a1,s2,zero
 d3c:	8fa30034 	lw	v1,52(sp)
 d40:	8fa20030 	lw	v0,48(sp)
 d44:	afa30014 	sw	v1,20(sp)
 d48:	afa20010 	sw	v0,16(sp)
 d4c:	afb60018 	sw	s6,24(sp)
 d50:	afb7001c 	sw	s7,28(sp)
 d54:	afb10020 	sw	s1,32(sp)
 d58:	afb20024 	sw	s2,36(sp)
 d5c:	e7a0002c 	swc1	$f0,44(sp)
 d60:	e7a10028 	swc1	$f1,40(sp)
 d64:	3c040000 	lui	a0,0x0
 d68:	24840000 	addiu	a0,a0,0
 d6c:	02a03821 	addu	a3,s5,zero
 d70:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 d74:	02803021 	addu	a2,s4,zero
 d78:	26100008 	addiu	s0,s0,8
{
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
 d7c:	240300b0 	addiu	v1,zero,176
 d80:	1603ffd1 	bne	s0,v1,cc8 <main+0x40>
 d84:	03d01021 	addu	v0,s8,s0
	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     a_input[i], b_input[i], z_output[i], result,
	     ullong_to_double (result));
	}
      printf ("%d\n", main_result);
 d88:	3c040000 	lui	a0,0x0
 d8c:	24840000 	addiu	a0,a0,0
 d90:	0c000000 	jal	0 <normalizeFloat64Subnormal>
 d94:	02602821 	addu	a1,s3,zero
      return main_result;
    }
 d98:	02601021 	addu	v0,s3,zero
 d9c:	8fbf005c 	lw	ra,92(sp)
 da0:	8fbe0058 	lw	s8,88(sp)
 da4:	8fb70054 	lw	s7,84(sp)
 da8:	8fb60050 	lw	s6,80(sp)
 dac:	8fb5004c 	lw	s5,76(sp)
 db0:	8fb40048 	lw	s4,72(sp)
 db4:	8fb30044 	lw	s3,68(sp)
 db8:	8fb20040 	lw	s2,64(sp)
 dbc:	8fb1003c 	lw	s1,60(sp)
 dc0:	8fb00038 	lw	s0,56(sp)
 dc4:	03e00008 	jr	ra
 dc8:	27bd0060 	addiu	sp,sp,96

Disassembly of section .rodata:

00000000 <a_input>:
   0:	7fff0000 	0x7fff0000
   4:	00000000 	sll	zero,zero,0x0
   8:	7ff00000 	0x7ff00000
   c:	00000000 	sll	zero,zero,0x0
  10:	7ff00000 	0x7ff00000
  14:	00000000 	sll	zero,zero,0x0
  18:	7ff00000 	0x7ff00000
  1c:	00000000 	sll	zero,zero,0x0
  20:	3ff00000 	0x3ff00000
  24:	00000000 	sll	zero,zero,0x0
  28:	3ff00000 	0x3ff00000
	...
  38:	3ff00000 	0x3ff00000
	...
  48:	80000000 	lb	zero,0(zero)
  4c:	00000000 	sll	zero,zero,0x0
  50:	40080000 	mfc0	t0,c0_index
  54:	00000000 	sll	zero,zero,0x0
  58:	c0080000 	lwc0	$8,0(zero)
  5c:	00000000 	sll	zero,zero,0x0
  60:	40080000 	mfc0	t0,c0_index
  64:	00000000 	sll	zero,zero,0x0
  68:	c0080000 	lwc0	$8,0(zero)
  6c:	00000000 	sll	zero,zero,0x0
  70:	40000000 	mfc0	zero,c0_index
  74:	00000000 	sll	zero,zero,0x0
  78:	c0000000 	lwc0	$0,0(zero)
  7c:	00000000 	sll	zero,zero,0x0
  80:	40000000 	mfc0	zero,c0_index
  84:	00000000 	sll	zero,zero,0x0
  88:	c0000000 	lwc0	$0,0(zero)
  8c:	00000000 	sll	zero,zero,0x0
  90:	3ff00000 	0x3ff00000
  94:	00000000 	sll	zero,zero,0x0
  98:	bff00000 	0xbff00000
  9c:	00000000 	sll	zero,zero,0x0
  a0:	3ff00000 	0x3ff00000
  a4:	00000000 	sll	zero,zero,0x0
  a8:	bff00000 	0xbff00000
  ac:	00000000 	sll	zero,zero,0x0

000000b0 <b_input>:
  b0:	3ff00000 	0x3ff00000
  b4:	00000000 	sll	zero,zero,0x0
  b8:	7ff80000 	0x7ff80000
  bc:	00000000 	sll	zero,zero,0x0
  c0:	7ff00000 	0x7ff00000
  c4:	00000000 	sll	zero,zero,0x0
  c8:	3ff00000 	0x3ff00000
  cc:	00000000 	sll	zero,zero,0x0
  d0:	7ff80000 	0x7ff80000
  d4:	00000000 	sll	zero,zero,0x0
  d8:	7ff00000 	0x7ff00000
	...
  f0:	3ff00000 	0x3ff00000
  f4:	00000000 	sll	zero,zero,0x0
  f8:	3ff00000 	0x3ff00000
  fc:	00000000 	sll	zero,zero,0x0
 100:	40000000 	mfc0	zero,c0_index
 104:	00000000 	sll	zero,zero,0x0
 108:	40000000 	mfc0	zero,c0_index
 10c:	00000000 	sll	zero,zero,0x0
 110:	c0000000 	lwc0	$0,0(zero)
 114:	00000000 	sll	zero,zero,0x0
 118:	c0000000 	lwc0	$0,0(zero)
 11c:	00000000 	sll	zero,zero,0x0
 120:	40100000 	mfc0	s0,c0_index
 124:	00000000 	sll	zero,zero,0x0
 128:	40100000 	mfc0	s0,c0_index
 12c:	00000000 	sll	zero,zero,0x0
 130:	c0100000 	lwc0	$16,0(zero)
 134:	00000000 	sll	zero,zero,0x0
 138:	c0100000 	lwc0	$16,0(zero)
 13c:	00000000 	sll	zero,zero,0x0
 140:	3ff80000 	0x3ff80000
 144:	00000000 	sll	zero,zero,0x0
 148:	3ff80000 	0x3ff80000
 14c:	00000000 	sll	zero,zero,0x0
 150:	bff80000 	0xbff80000
 154:	00000000 	sll	zero,zero,0x0
 158:	bff80000 	0xbff80000
 15c:	00000000 	sll	zero,zero,0x0

00000160 <z_output>:
 160:	7fff0000 	0x7fff0000
 164:	00000000 	sll	zero,zero,0x0
 168:	7ff80000 	0x7ff80000
 16c:	00000000 	sll	zero,zero,0x0
 170:	7fffffff 	0x7fffffff
 174:	ffffffff 	0xffffffff
 178:	7ff00000 	0x7ff00000
 17c:	00000000 	sll	zero,zero,0x0
 180:	7ff80000 	0x7ff80000
	...
 190:	7fffffff 	0x7fffffff
 194:	ffffffff 	0xffffffff
 198:	7ff00000 	0x7ff00000
	...
 1a8:	80000000 	lb	zero,0(zero)
 1ac:	00000000 	sll	zero,zero,0x0
 1b0:	3ff80000 	0x3ff80000
 1b4:	00000000 	sll	zero,zero,0x0
 1b8:	bff80000 	0xbff80000
 1bc:	00000000 	sll	zero,zero,0x0
 1c0:	bff80000 	0xbff80000
 1c4:	00000000 	sll	zero,zero,0x0
 1c8:	3ff80000 	0x3ff80000
 1cc:	00000000 	sll	zero,zero,0x0
 1d0:	3fe00000 	0x3fe00000
 1d4:	00000000 	sll	zero,zero,0x0
 1d8:	bfe00000 	0xbfe00000
 1dc:	00000000 	sll	zero,zero,0x0
 1e0:	bfe00000 	0xbfe00000
 1e4:	00000000 	sll	zero,zero,0x0
 1e8:	3fe00000 	0x3fe00000
 1ec:	00000000 	sll	zero,zero,0x0
 1f0:	3fe55555 	0x3fe55555
 1f4:	55555555 	0x55555555
 1f8:	bfe55555 	0xbfe55555
 1fc:	55555555 	0x55555555
 200:	bfe55555 	0xbfe55555
 204:	55555555 	0x55555555
 208:	3fe55555 	0x3fe55555
 20c:	55555555 	0x55555555

00000210 <countLeadingZerosHigh.2196>:
 210:	00000008 	jr	zero
 214:	00000007 	srav	zero,zero,zero
 218:	00000006 	srlv	zero,zero,zero
 21c:	00000006 	srlv	zero,zero,zero
 220:	00000005 	0x5
 224:	00000005 	0x5
 228:	00000005 	0x5
 22c:	00000005 	0x5
 230:	00000004 	sllv	zero,zero,zero
 234:	00000004 	sllv	zero,zero,zero
 238:	00000004 	sllv	zero,zero,zero
 23c:	00000004 	sllv	zero,zero,zero
 240:	00000004 	sllv	zero,zero,zero
 244:	00000004 	sllv	zero,zero,zero
 248:	00000004 	sllv	zero,zero,zero
 24c:	00000004 	sllv	zero,zero,zero
 250:	00000003 	sra	zero,zero,0x0
 254:	00000003 	sra	zero,zero,0x0
 258:	00000003 	sra	zero,zero,0x0
 25c:	00000003 	sra	zero,zero,0x0
 260:	00000003 	sra	zero,zero,0x0
 264:	00000003 	sra	zero,zero,0x0
 268:	00000003 	sra	zero,zero,0x0
 26c:	00000003 	sra	zero,zero,0x0
 270:	00000003 	sra	zero,zero,0x0
 274:	00000003 	sra	zero,zero,0x0
 278:	00000003 	sra	zero,zero,0x0
 27c:	00000003 	sra	zero,zero,0x0
 280:	00000003 	sra	zero,zero,0x0
 284:	00000003 	sra	zero,zero,0x0
 288:	00000003 	sra	zero,zero,0x0
 28c:	00000003 	sra	zero,zero,0x0
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
 2e0:	00000002 	srl	zero,zero,0x0
 2e4:	00000002 	srl	zero,zero,0x0
 2e8:	00000002 	srl	zero,zero,0x0
 2ec:	00000002 	srl	zero,zero,0x0
 2f0:	00000002 	srl	zero,zero,0x0
 2f4:	00000002 	srl	zero,zero,0x0
 2f8:	00000002 	srl	zero,zero,0x0
 2fc:	00000002 	srl	zero,zero,0x0
 300:	00000002 	srl	zero,zero,0x0
 304:	00000002 	srl	zero,zero,0x0
 308:	00000002 	srl	zero,zero,0x0
 30c:	00000002 	srl	zero,zero,0x0
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
 3e0:	00000001 	0x1
 3e4:	00000001 	0x1
 3e8:	00000001 	0x1
 3ec:	00000001 	0x1
 3f0:	00000001 	0x1
 3f4:	00000001 	0x1
 3f8:	00000001 	0x1
 3fc:	00000001 	0x1
 400:	00000001 	0x1
 404:	00000001 	0x1
 408:	00000001 	0x1
 40c:	00000001 	0x1
	...
