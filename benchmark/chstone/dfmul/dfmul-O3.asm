
dfmul.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <shift64RightJamming>:
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
   0:	10c00006 	beqz	a2,1c <shift64RightJamming+0x1c>
   4:	28c20040 	slti	v0,a2,64
    {
      z = a;
    }
  else if (count < 64)
   8:	14400007 	bnez	v0,28 <shift64RightJamming+0x28>
   c:	00061823 	negu	v1,a2
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
    }
  else
    {
      z = (a != 0);
  10:	00852825 	or	a1,a0,a1
  14:	0005282b 	sltu	a1,zero,a1
  18:	00002021 	addu	a0,zero,zero
    }
  *zPtr = z;
  1c:	ace40000 	sw	a0,0(a3)

}
  20:	03e00008 	jr	ra
  24:	ace50004 	sw	a1,4(a3)
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
  28:	30620020 	andi	v0,v1,0x20
  2c:	1040000d 	beqz	v0,64 <shift64RightJamming+0x64>
  30:	3063003f 	andi	v1,v1,0x3f
  34:	00651004 	sllv	v0,a1,v1
  38:	00001821 	addu	v1,zero,zero
  3c:	00431025 	or	v0,v0,v1
  40:	30c80020 	andi	t0,a2,0x20
  44:	11000011 	beqz	t0,8c <shift64RightJamming+0x8c>
  48:	0002102b 	sltu	v0,zero,v0
  4c:	00c42806 	srlv	a1,a0,a2
  50:	00452825 	or	a1,v0,a1
  54:	00002021 	addu	a0,zero,zero
    }
  else
    {
      z = (a != 0);
    }
  *zPtr = z;
  58:	ace40000 	sw	a0,0(a3)

}
  5c:	03e00008 	jr	ra
  60:	ace50004 	sw	a1,4(a3)
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
  64:	00031027 	nor	v0,zero,v1
  68:	00054042 	srl	t0,a1,0x1
  6c:	00484006 	srlv	t0,t0,v0
  70:	00641004 	sllv	v0,a0,v1
  74:	01021025 	or	v0,t0,v0
  78:	00651804 	sllv	v1,a1,v1
  7c:	00431025 	or	v0,v0,v1
  80:	30c80020 	andi	t0,a2,0x20
  84:	1500fff1 	bnez	t0,4c <shift64RightJamming+0x4c>
  88:	0002102b 	sltu	v0,zero,v0
  8c:	00044040 	sll	t0,a0,0x1
  90:	00061827 	nor	v1,zero,a2
  94:	00681804 	sllv	v1,t0,v1
  98:	00c52806 	srlv	a1,a1,a2
  9c:	00652825 	or	a1,v1,a1
  a0:	00c42006 	srlv	a0,a0,a2
  a4:	08000016 	j	58 <shift64RightJamming+0x58>
  a8:	00452825 	or	a1,v0,a1

000000ac <mul64To128>:
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  ac:	00c50019 	multu	a2,a1
| `z0Ptr' and `z1Ptr'.
*----------------------------------------------------------------------------*/

INLINE void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
  b0:	8fad0010 	lw	t5,16(sp)
  b4:	8fae0014 	lw	t6,20(sp)
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  b8:	00004812 	mflo	t1
  bc:	00004010 	mfhi	t0
	...
  zMiddleB = ((bits64) aHigh) * bLow;
  c8:	00870019 	multu	a0,a3
  cc:	00001010 	mfhi	v0
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  d0:	01024021 	addu	t0,t0,v0
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  d4:	00001812 	mflo	v1
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  d8:	01236021 	addu	t4,t1,v1
  dc:	00000000 	sll	zero,zero,0x0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  e0:	00e50019 	multu	a3,a1
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  e4:	0189282b 	sltu	a1,t4,t1
  e8:	00a84021 	addu	t0,a1,t0
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  ec:	0102382b 	sltu	a3,t0,v0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  f0:	00005812 	mflo	t3
  f4:	00005010 	mfhi	t2
	...
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
 100:	00c40019 	multu	a2,a0
 104:	00002812 	mflo	a1
 108:	00002010 	mfhi	a0
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 10c:	14e00004 	bnez	a3,120 <mul64To128+0x74>
 110:	24060001 	addiu	a2,zero,1
 114:	11020017 	beq	t0,v0,174 <mul64To128+0xc8>
 118:	0183102b 	sltu	v0,t4,v1
 11c:	00003021 	addu	a2,zero,zero
  zMiddleA <<= 32;
  z1 += zMiddleA;
 120:	018a7821 	addu	t7,t4,t2
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 124:	01054821 	addu	t1,t0,a1
 128:	0128402b 	sltu	t0,t1,t0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 12c:	01ec602b 	sltu	t4,t7,t4
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
 130:	01605021 	addu	t2,t3,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 134:	01042021 	addu	a0,t0,a0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 138:	24030001 	addiu	v1,zero,1
 13c:	15800003 	bnez	t4,14c <mul64To128+0xa0>
 140:	00001021 	addu	v0,zero,zero
 144:	00001821 	addu	v1,zero,zero
 148:	00001021 	addu	v0,zero,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 14c:	01232821 	addu	a1,t1,v1
 150:	00a9482b 	sltu	t1,a1,t1
 154:	00821021 	addu	v0,a0,v0
 158:	01221021 	addu	v0,t1,v0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 15c:	00463021 	addu	a2,v0,a2
  *z1Ptr = z1;
 160:	adcf0000 	sw	t7,0(t6)
 164:	adca0004 	sw	t2,4(t6)
  *z0Ptr = z0;
 168:	ada60000 	sw	a2,0(t5)

}
 16c:	03e00008 	jr	ra
 170:	ada50004 	sw	a1,4(t5)
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 174:	1040ffe9 	beqz	v0,11c <mul64To128+0x70>
 178:	24060001 	addiu	a2,zero,1
  zMiddleA <<= 32;
  z1 += zMiddleA;
 17c:	08000049 	j	124 <mul64To128+0x78>
 180:	018a7821 	addu	t7,t4,t2

00000184 <float_raise>:
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 184:	8f820000 	lw	v0,0(gp)
 188:	00000000 	sll	zero,zero,0x0
 18c:	00441025 	or	v0,v0,a0

}
 190:	03e00008 	jr	ra
 194:	af820000 	sw	v0,0(gp)

00000198 <float64_is_nan>:

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 198:	000517c2 	srl	v0,a1,0x1f
 19c:	00042040 	sll	a0,a0,0x1
 1a0:	3c03ffe0 	lui	v1,0xffe0
 1a4:	00442025 	or	a0,v0,a0
 1a8:	24660001 	addiu	a2,v1,1
 1ac:	0086302b 	sltu	a2,a0,a2
 1b0:	00052840 	sll	a1,a1,0x1
 1b4:	10c00007 	beqz	a2,1d4 <float64_is_nan+0x3c>
 1b8:	24020001 	addiu	v0,zero,1
 1bc:	10830003 	beq	a0,v1,1cc <float64_is_nan+0x34>
 1c0:	00000000 	sll	zero,zero,0x0

}
 1c4:	03e00008 	jr	ra
 1c8:	00001021 	addu	v0,zero,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 1cc:	10a0fffd 	beqz	a1,1c4 <float64_is_nan+0x2c>
 1d0:	00000000 	sll	zero,zero,0x0

}
 1d4:	03e00008 	jr	ra
 1d8:	00000000 	sll	zero,zero,0x0

000001dc <float64_is_signaling_nan>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 1dc:	000414c2 	srl	v0,a0,0x13
 1e0:	30420fff 	andi	v0,v0,0xfff
 1e4:	24030ffe 	addiu	v1,zero,4094
 1e8:	10430003 	beq	v0,v1,1f8 <float64_is_signaling_nan+0x1c>
 1ec:	00000000 	sll	zero,zero,0x0

}
 1f0:	03e00008 	jr	ra
 1f4:	00001021 	addu	v0,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 1f8:	3c020007 	lui	v0,0x7
 1fc:	3442ffff 	ori	v0,v0,0xffff
 200:	00821024 	and	v0,a0,v0
 204:	00451025 	or	v0,v0,a1
 208:	03e00008 	jr	ra
 20c:	0002102b 	sltu	v0,zero,v0

00000210 <extractFloat64Frac>:
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);

}
 210:	3c02000f 	lui	v0,0xf
 214:	3442ffff 	ori	v0,v0,0xffff
 218:	00821024 	and	v0,a0,v0
 21c:	03e00008 	jr	ra
 220:	00a01821 	addu	v1,a1,zero

00000224 <extractFloat64Exp>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 224:	00041502 	srl	v0,a0,0x14

}
 228:	03e00008 	jr	ra
 22c:	304207ff 	andi	v0,v0,0x7ff

00000230 <extractFloat64Sign>:
extractFloat64Sign (float64 a)
{

  return a >> 63;

}
 230:	03e00008 	jr	ra
 234:	000417c2 	srl	v0,a0,0x1f

00000238 <packFloat64>:

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 238:	000427c0 	sll	a0,a0,0x1f
 23c:	00c42021 	addu	a0,a2,a0
 240:	00051500 	sll	v0,a1,0x14

}
 244:	00821021 	addu	v0,a0,v0
 248:	03e00008 	jr	ra
 24c:	00e01821 	addu	v1,a3,zero

00000250 <float64_mul>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 250:	00044d02 	srl	t1,a0,0x14

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 254:	3c03000f 	lui	v1,0xf
 258:	3463ffff 	ori	v1,v1,0xffff

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 25c:	00065502 	srl	t2,a2,0x14

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
 260:	00866026 	xor	t4,a0,a2

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 264:	312907ff 	andi	t1,t1,0x7ff
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
 268:	240d07ff 	addiu	t5,zero,2047

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 26c:	00835824 	and	t3,a0,v1
 270:	00a07821 	addu	t7,a1,zero
 274:	00c31824 	and	v1,a2,v1
 278:	00e01021 	addu	v0,a3,zero

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 27c:	314a07ff 	andi	t2,t2,0x7ff
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
 280:	112d0076 	beq	t1,t5,45c <float64_mul+0x20c>
 284:	000c67c2 	srl	t4,t4,0x1f
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
 288:	114d0087 	beq	t2,t5,4a8 <float64_mul+0x258>
 28c:	00000000 	sll	zero,zero,0x0
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (aExp == 0)
 290:	1120004e 	beqz	t1,3cc <float64_mul+0x17c>
 294:	00000000 	sll	zero,zero,0x0
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  if (bExp == 0)
 298:	15400025 	bnez	t2,330 <float64_mul+0xe0>
 29c:	3c080010 	lui	t0,0x10
    {
      if (bSig == 0)
 2a0:	00671025 	or	v0,v1,a3
 2a4:	104000cc 	beqz	v0,5d8 <float64_mul+0x388>
 2a8:	00000000 	sll	zero,zero,0x0
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 2ac:	1060013e 	beqz	v1,7a8 <float64_mul+0x558>
 2b0:	00e01021 	addu	v0,a3,zero
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
 2b4:	00601021 	addu	v0,v1,zero
 2b8:	240afff5 	addiu	t2,zero,-11
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
 2bc:	3c040001 	lui	a0,0x1
 2c0:	0044202b 	sltu	a0,v0,a0
 2c4:	10800136 	beqz	a0,7a0 <float64_mul+0x550>
 2c8:	24060008 	addiu	a2,zero,8
    {
      shiftCount += 16;
      a <<= 16;
 2cc:	00021400 	sll	v0,v0,0x10
 2d0:	24060018 	addiu	a2,zero,24
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
 2d4:	24040010 	addiu	a0,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
 2d8:	3c050100 	lui	a1,0x100
 2dc:	0045282b 	sltu	a1,v0,a1
 2e0:	10a00003 	beqz	a1,2f0 <float64_mul+0xa0>
 2e4:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
      a <<= 8;
 2e8:	00021200 	sll	v0,v0,0x8
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
    {
      shiftCount += 8;
 2ec:	00c02021 	addu	a0,a2,zero
      a <<= 8;
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
 2f0:	00021602 	srl	v0,v0,0x18
 2f4:	3c050000 	lui	a1,0x0
 2f8:	00021080 	sll	v0,v0,0x2
 2fc:	24a501e0 	addiu	a1,a1,480
 300:	00451021 	addu	v0,v0,a1
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
 304:	8c420000 	lw	v0,0(v0)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
 308:	008a5021 	addu	t2,a0,t2
 30c:	01425021 	addu	t2,t2,v0
  *zSigPtr = aSig << shiftCount;
 310:	31420020 	andi	v0,t2,0x20
 314:	1040011a 	beqz	v0,780 <float64_mul+0x530>
 318:	00072042 	srl	a0,a3,0x1
  *zExpPtr = 1 - shiftCount;
 31c:	24040001 	addiu	a0,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 320:	01471804 	sllv	v1,a3,t2
 324:	00001021 	addu	v0,zero,zero
  *zExpPtr = 1 - shiftCount;
 328:	008a5023 	subu	t2,a0,t2
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
 32c:	3c080010 	lui	t0,0x10
 330:	01685825 	or	t3,t3,t0
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
 334:	00684025 	or	t0,v1,t0
 338:	00022542 	srl	a0,v0,0x15
 33c:	000842c0 	sll	t0,t0,0xb
 340:	00884025 	or	t0,a0,t0
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
 344:	000f2d82 	srl	a1,t7,0x16
 348:	000f7a80 	sll	t7,t7,0xa
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
 34c:	010f0019 	multu	t0,t7
 350:	000b5a80 	sll	t3,t3,0xa
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
 354:	000232c0 	sll	a2,v0,0xb
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
 358:	00ab5825 	or	t3,a1,t3
    {
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
 35c:	2529fc01 	addiu	t1,t1,-1023
 360:	012a6821 	addu	t5,t1,t2
 364:	00002812 	mflo	a1
 368:	00002010 	mfhi	a0
	...
  zMiddleB = ((bits64) aHigh) * bLow;
 374:	00cb0019 	multu	a2,t3
 378:	00001010 	mfhi	v0
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
 37c:	00822021 	addu	a0,a0,v0
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
 380:	00001812 	mflo	v1
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
 384:	00a37021 	addu	t6,a1,v1
 388:	01c5482b 	sltu	t1,t6,a1

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
 38c:	00cf0019 	multu	a2,t7
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
 390:	01242021 	addu	a0,t1,a0
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 394:	0082282b 	sltu	a1,a0,v0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
 398:	00003812 	mflo	a3
 39c:	00003010 	mfhi	a2
	...
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
 3a8:	010b0019 	multu	t0,t3
 3ac:	00004812 	mflo	t1
 3b0:	00004010 	mfhi	t0
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 3b4:	14a0004f 	bnez	a1,4f4 <float64_mul+0x2a4>
 3b8:	240a0001 	addiu	t2,zero,1
 3bc:	1082004a 	beq	a0,v0,4e8 <float64_mul+0x298>
 3c0:	01c3102b 	sltu	v0,t6,v1
 3c4:	0800013d 	j	4f4 <float64_mul+0x2a4>
 3c8:	00005021 	addu	t2,zero,zero
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (aExp == 0)
    {
      if (aSig == 0)
 3cc:	01652025 	or	a0,t3,a1
 3d0:	10800087 	beqz	a0,5f0 <float64_mul+0x3a0>
 3d4:	00000000 	sll	zero,zero,0x0
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 3d8:	11600103 	beqz	t3,7e8 <float64_mul+0x598>
 3dc:	00a02021 	addu	a0,a1,zero
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
 3e0:	01602021 	addu	a0,t3,zero
 3e4:	2409fff5 	addiu	t1,zero,-11
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
 3e8:	3c060001 	lui	a2,0x1
 3ec:	0086302b 	sltu	a2,a0,a2
 3f0:	10c000fb 	beqz	a2,7e0 <float64_mul+0x590>
 3f4:	240d0008 	addiu	t5,zero,8
    {
      shiftCount += 16;
      a <<= 16;
 3f8:	00042400 	sll	a0,a0,0x10
 3fc:	240d0018 	addiu	t5,zero,24
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
 400:	24060010 	addiu	a2,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
 404:	3c080100 	lui	t0,0x100
 408:	0088402b 	sltu	t0,a0,t0
 40c:	11000003 	beqz	t0,41c <float64_mul+0x1cc>
 410:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
      a <<= 8;
 414:	00042200 	sll	a0,a0,0x8
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
    {
      shiftCount += 8;
 418:	01a03021 	addu	a2,t5,zero
      a <<= 8;
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
 41c:	00042602 	srl	a0,a0,0x18
 420:	3c080000 	lui	t0,0x0
 424:	00042080 	sll	a0,a0,0x2
 428:	250801e0 	addiu	t0,t0,480
 42c:	00882021 	addu	a0,a0,t0
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
 430:	8c840000 	lw	a0,0(a0)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
 434:	00c94821 	addu	t1,a2,t1
 438:	01244821 	addu	t1,t1,a0
  *zSigPtr = aSig << shiftCount;
 43c:	31240020 	andi	a0,t1,0x20
 440:	108000de 	beqz	a0,7bc <float64_mul+0x56c>
 444:	00000000 	sll	zero,zero,0x0
  *zExpPtr = 1 - shiftCount;
 448:	24040001 	addiu	a0,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 44c:	01255804 	sllv	t3,a1,t1
 450:	00007821 	addu	t7,zero,zero
  *zExpPtr = 1 - shiftCount;
 454:	080000a6 	j	298 <float64_mul+0x48>
 458:	00894823 	subu	t1,a0,t1
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    {
      if (aSig || ((bExp == 0x7FF) && bSig))
 45c:	01655825 	or	t3,t3,a1
 460:	1560006b 	bnez	t3,610 <float64_mul+0x3c0>
 464:	00000000 	sll	zero,zero,0x0
 468:	11490066 	beq	t2,t1,604 <float64_mul+0x3b4>
 46c:	000a47c3 	sra	t0,t2,0x1f
	return propagateFloat64NaN (a, b);
      if ((bExp | bSig) == 0)
 470:	01031825 	or	v1,t0,v1
 474:	01475025 	or	t2,t2,a3
 478:	006a1825 	or	v1,v1,t2
 47c:	14600012 	bnez	v1,4c8 <float64_mul+0x278>
 480:	00000000 	sll	zero,zero,0x0
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 484:	8f820000 	lw	v0,0(gp)
      if (bSig)
	return propagateFloat64NaN (a, b);
      if ((aExp | aSig) == 0)
	{
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
 488:	3c087fff 	lui	t0,0x7fff
 48c:	34420010 	ori	v0,v0,0x10
 490:	2409ffff 	addiu	t1,zero,-1
 494:	3508ffff 	ori	t0,t0,0xffff
 498:	af820000 	sw	v0,0(gp)
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 49c:	01001021 	addu	v0,t0,zero
 4a0:	03e00008 	jr	ra
 4a4:	01201821 	addu	v1,t1,zero
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
 4a8:	00671825 	or	v1,v1,a3
 4ac:	14600058 	bnez	v1,610 <float64_mul+0x3c0>
 4b0:	000917c3 	sra	v0,t1,0x1f
	return propagateFloat64NaN (a, b);
      if ((aExp | aSig) == 0)
 4b4:	004b5825 	or	t3,v0,t3
 4b8:	01254825 	or	t1,t1,a1
 4bc:	01694825 	or	t1,t3,t1
 4c0:	1120fff0 	beqz	t1,484 <float64_mul+0x234>
 4c4:	00000000 	sll	zero,zero,0x0

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 4c8:	000c67c0 	sll	t4,t4,0x1f
 4cc:	3c027ff0 	lui	v0,0x7ff0
      if ((aExp | aSig) == 0)
	{
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
 4d0:	01821021 	addu	v0,t4,v0
 4d4:	00404021 	addu	t0,v0,zero
 4d8:	00004821 	addu	t1,zero,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 4dc:	01001021 	addu	v0,t0,zero
 4e0:	03e00008 	jr	ra
 4e4:	01201821 	addu	v1,t1,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 4e8:	10400002 	beqz	v0,4f4 <float64_mul+0x2a4>
 4ec:	00005021 	addu	t2,zero,zero
 4f0:	240a0001 	addiu	t2,zero,1
  zMiddleA <<= 32;
  z1 += zMiddleA;
 4f4:	01c67821 	addu	t7,t6,a2
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 4f8:	00892821 	addu	a1,a0,t1
 4fc:	00a4202b 	sltu	a0,a1,a0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 500:	01ee702b 	sltu	t6,t7,t6
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 504:	00884021 	addu	t0,a0,t0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 508:	24030001 	addiu	v1,zero,1
 50c:	15c00003 	bnez	t6,51c <float64_mul+0x2cc>
 510:	00001021 	addu	v0,zero,zero
 514:	00001821 	addu	v1,zero,zero
 518:	00001021 	addu	v0,zero,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 51c:	00a33021 	addu	a2,a1,v1
 520:	00c5282b 	sltu	a1,a2,a1
 524:	01021021 	addu	v0,t0,v0
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
  zSig0 |= (zSig1 != 0);
 528:	01e71825 	or	v1,t7,a3
 52c:	00a21021 	addu	v0,a1,v0
 530:	0003182b 	sltu	v1,zero,v1
 534:	00c31825 	or	v1,a2,v1
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 538:	004a5021 	addu	t2,v0,t2
  if (0 <= (sbits64) (zSig0 << 1))
 53c:	000a2040 	sll	a0,t2,0x1
 540:	000317c2 	srl	v0,v1,0x1f
 544:	00442025 	or	a0,v0,a0
 548:	04800099 	bltz	a0,7b0 <float64_mul+0x560>
 54c:	00034840 	sll	t1,v1,0x1
    {
      zSig0 <<= 1;
      --zExp;
 550:	25adffff 	addiu	t5,t5,-1
{
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
 554:	8f820000 	lw	v0,0(gp)
 558:	00000000 	sll	zero,zero,0x0
  roundNearestEven = (roundingMode == float_round_nearest_even);
 55c:	2c480001 	sltiu	t0,v0,1
  roundIncrement = 0x200;
  if (!roundNearestEven)
 560:	15000053 	bnez	t0,6b0 <float64_mul+0x460>
 564:	24030200 	addiu	v1,zero,512
    {
      if (roundingMode == float_round_to_zero)
 568:	24030001 	addiu	v1,zero,1
 56c:	1043004b 	beq	v0,v1,69c <float64_mul+0x44c>
 570:	00001821 	addu	v1,zero,zero
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
 574:	11800047 	beqz	t4,694 <float64_mul+0x444>
 578:	24030003 	addiu	v1,zero,3
	    {
	      if (roundingMode == float_round_up)
 57c:	24030002 	addiu	v1,zero,2
 580:	10430046 	beq	v0,v1,69c <float64_mul+0x44c>
 584:	00001821 	addu	v1,zero,zero
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
 588:	240303ff 	addiu	v1,zero,1023
 58c:	00001021 	addu	v0,zero,zero
 590:	00003821 	addu	a3,zero,zero
 594:	00003021 	addu	a2,zero,zero
	{
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
 598:	240503ff 	addiu	a1,zero,1023
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
 59c:	31aaffff 	andi	t2,t5,0xffff
 5a0:	2d4a07fd 	sltiu	t2,t2,2045
 5a4:	1540004a 	bnez	t2,6d0 <float64_mul+0x480>
 5a8:	00695021 	addu	t2,v1,t1
    {
      if ((0x7FD < zExp)
 5ac:	29aa07fe 	slti	t2,t5,2046
 5b0:	11400094 	beqz	t2,804 <float64_mul+0x5b4>
 5b4:	00000000 	sll	zero,zero,0x0
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 5b8:	240a07fd 	addiu	t2,zero,2045
 5bc:	11aa008c 	beq	t5,t2,7f0 <float64_mul+0x5a0>
 5c0:	00695021 	addu	t2,v1,t1
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
	}
      if (zExp < 0)
 5c4:	05a000a5 	bltz	t5,85c <float64_mul+0x60c>
 5c8:	00a95021 	addu	t2,a1,t1
 5cc:	0145282b 	sltu	a1,t2,a1
 5d0:	080001b7 	j	6dc <float64_mul+0x48c>
 5d4:	00a42821 	addu	a1,a1,a0
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  if (bExp == 0)
    {
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
 5d8:	000c67c0 	sll	t4,t4,0x1f
 5dc:	01804021 	addu	t0,t4,zero
 5e0:	00004821 	addu	t1,zero,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 5e4:	01001021 	addu	v0,t0,zero
 5e8:	03e00008 	jr	ra
 5ec:	01201821 	addu	v1,t1,zero
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (aExp == 0)
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
 5f0:	000c67c0 	sll	t4,t4,0x1f
 5f4:	01804021 	addu	t0,t4,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 5f8:	01801021 	addu	v0,t4,zero
 5fc:	03e00008 	jr	ra
 600:	01201821 	addu	v1,t1,zero
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    {
      if (aSig || ((bExp == 0x7FF) && bSig))
 604:	00671825 	or	v1,v1,a3
 608:	1060ffaf 	beqz	v1,4c8 <float64_mul+0x278>
 60c:	00000000 	sll	zero,zero,0x0

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 610:	00041cc2 	srl	v1,a0,0x13
 614:	30630fff 	andi	v1,v1,0xfff
 618:	24020ffe 	addiu	v0,zero,4094
 61c:	106200aa 	beq	v1,v0,8c8 <float64_mul+0x678>
 620:	3c0a0007 	lui	t2,0x7
 624:	00005021 	addu	t2,zero,zero
 628:	00061cc2 	srl	v1,a2,0x13
 62c:	30630fff 	andi	v1,v1,0xfff
 630:	24020ffe 	addiu	v0,zero,4094
 634:	106200a9 	beq	v1,v0,8dc <float64_mul+0x68c>
 638:	3c030007 	lui	v1,0x7
 63c:	00001821 	addu	v1,zero,zero

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
 640:	3c020008 	lui	v0,0x8
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
 644:	006a5825 	or	t3,v1,t2
  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
 648:	00c24025 	or	t0,a2,v0

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
 64c:	00822025 	or	a0,a0,v0
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
 650:	15600078 	bnez	t3,834 <float64_mul+0x5e4>
 654:	00e04821 	addu	t1,a3,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 658:	00071fc2 	srl	v1,a3,0x1f
 65c:	00063040 	sll	a2,a2,0x1
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
 660:	3c02ffe0 	lui	v0,0xffe0

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 664:	00663025 	or	a2,v1,a2
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
 668:	24430001 	addiu	v1,v0,1
 66c:	00c3182b 	sltu	v1,a2,v1
 670:	1060ff8a 	beqz	v1,49c <float64_mul+0x24c>
 674:	00073840 	sll	a3,a3,0x1
 678:	14c20003 	bne	a2,v0,688 <float64_mul+0x438>
 67c:	00000000 	sll	zero,zero,0x0
 680:	14e0ff86 	bnez	a3,49c <float64_mul+0x24c>
 684:	00000000 	sll	zero,zero,0x0
 688:	00804021 	addu	t0,a0,zero
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
 68c:	08000127 	j	49c <float64_mul+0x24c>
 690:	00a04821 	addu	t1,a1,zero
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
 694:	1443ffbc 	bne	v0,v1,588 <float64_mul+0x338>
 698:	00001821 	addu	v1,zero,zero
 69c:	00001021 	addu	v0,zero,zero
 6a0:	24070001 	addiu	a3,zero,1
 6a4:	00003021 	addu	a2,zero,zero
		roundIncrement = 0;
 6a8:	08000167 	j	59c <float64_mul+0x34c>
 6ac:	00002821 	addu	a1,zero,zero
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
 6b0:	31aaffff 	andi	t2,t5,0xffff
 6b4:	2d4a07fd 	sltiu	t2,t2,2045
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
  roundNearestEven = (roundingMode == float_round_nearest_even);
  roundIncrement = 0x200;
  if (!roundNearestEven)
 6b8:	00001021 	addu	v0,zero,zero
 6bc:	00003821 	addu	a3,zero,zero
 6c0:	00003021 	addu	a2,zero,zero
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
 6c4:	1140ffb9 	beqz	t2,5ac <float64_mul+0x35c>
 6c8:	24050200 	addiu	a1,zero,512
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 6cc:	00695021 	addu	t2,v1,t1
 6d0:	0143302b 	sltu	a2,t2,v1
 6d4:	00442821 	addu	a1,v0,a0
 6d8:	00c52821 	addu	a1,a2,a1
	      if (roundingMode == float_round_down)
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
 6dc:	312603ff 	andi	a2,t1,0x3ff
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
 6e0:	10c00025 	beqz	a2,778 <float64_mul+0x528>
 6e4:	2407ffff 	addiu	a3,zero,-1
 6e8:	8f850000 	lw	a1,0(gp)
    float_exception_flags |= float_flag_inexact;
 6ec:	38c60200 	xori	a2,a2,0x200
 6f0:	2cc60001 	sltiu	a2,a2,1
 6f4:	00c84024 	and	t0,a2,t0
 6f8:	01235021 	addu	t2,t1,v1
 6fc:	00084027 	nor	t0,zero,t0
 700:	34a50001 	ori	a1,a1,0x1
 704:	0149482b 	sltu	t1,t2,t1
 708:	00821021 	addu	v0,a0,v0
 70c:	af850000 	sw	a1,0(gp)
 710:	01003821 	addu	a3,t0,zero
 714:	000837c3 	sra	a2,t0,0x1f
 718:	01222821 	addu	a1,t1,v0
  zSig = (zSig + roundIncrement) >> 10;
 71c:	00051580 	sll	v0,a1,0x16
 720:	000a1a82 	srl	v1,t2,0xa
 724:	00431825 	or	v1,v0,v1
 728:	00052a82 	srl	a1,a1,0xa
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 72c:	00a65024 	and	t2,a1,a2
 730:	00671824 	and	v1,v1,a3
  if (zSig == 0)
 734:	01431025 	or	v0,t2,v1
 738:	1040000d 	beqz	v0,770 <float64_mul+0x520>
 73c:	00002821 	addu	a1,zero,zero
 740:	000d2500 	sll	a0,t5,0x14

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 744:	000c67c0 	sll	t4,t4,0x1f
 748:	00653021 	addu	a2,v1,a1
 74c:	014c5021 	addu	t2,t2,t4
 750:	00c3182b 	sltu	v1,a2,v1
 754:	01442021 	addu	a0,t2,a0
 758:	00641821 	addu	v1,v1,a0
 75c:	00604021 	addu	t0,v1,zero
 760:	00c04821 	addu	t1,a2,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 764:	01001021 	addu	v0,t0,zero
 768:	03e00008 	jr	ra
 76c:	01201821 	addu	v1,t1,zero
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
 770:	080001d1 	j	744 <float64_mul+0x4f4>
 774:	00002021 	addu	a0,zero,zero
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
 778:	080001c7 	j	71c <float64_mul+0x4cc>
 77c:	2406ffff 	addiu	a2,zero,-1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 780:	000a1027 	nor	v0,zero,t2
 784:	00441006 	srlv	v0,a0,v0
 788:	01431804 	sllv	v1,v1,t2
  *zExpPtr = 1 - shiftCount;
 78c:	24040001 	addiu	a0,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 790:	00431825 	or	v1,v0,v1
 794:	01471004 	sllv	v0,a3,t2
  *zExpPtr = 1 - shiftCount;
 798:	080000cb 	j	32c <float64_mul+0xdc>
 79c:	008a5023 	subu	t2,a0,t2
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
 7a0:	080000b6 	j	2d8 <float64_mul+0x88>
 7a4:	00002021 	addu	a0,zero,zero
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 7a8:	080000af 	j	2bc <float64_mul+0x6c>
 7ac:	240a0015 	addiu	t2,zero,21
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
  zSig0 |= (zSig1 != 0);
 7b0:	01402021 	addu	a0,t2,zero
 7b4:	08000155 	j	554 <float64_mul+0x304>
 7b8:	00604821 	addu	t1,v1,zero
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 7bc:	00092027 	nor	a0,zero,t1
 7c0:	00053042 	srl	a2,a1,0x1
 7c4:	00862006 	srlv	a0,a2,a0
 7c8:	012b5804 	sllv	t3,t3,t1
 7cc:	008b5825 	or	t3,a0,t3
  *zExpPtr = 1 - shiftCount;
 7d0:	24040001 	addiu	a0,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 7d4:	01257804 	sllv	t7,a1,t1
  *zExpPtr = 1 - shiftCount;
 7d8:	080000a6 	j	298 <float64_mul+0x48>
 7dc:	00894823 	subu	t1,a0,t1
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
 7e0:	08000101 	j	404 <float64_mul+0x1b4>
 7e4:	00003021 	addu	a2,zero,zero
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 7e8:	080000fa 	j	3e8 <float64_mul+0x198>
 7ec:	24090015 	addiu	t1,zero,21
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 7f0:	0143582b 	sltu	t3,t2,v1
 7f4:	00442821 	addu	a1,v0,a0
 7f8:	01652821 	addu	a1,t3,a1
 7fc:	04a1ffb7 	bgez	a1,6dc <float64_mul+0x48c>
 800:	00000000 	sll	zero,zero,0x0

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 804:	000c67c0 	sll	t4,t4,0x1f
 808:	3c027ff0 	lui	v0,0x7ff0
 80c:	01821021 	addu	v0,t4,v0
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 810:	00461023 	subu	v0,v0,a2
 814:	00471023 	subu	v0,v0,a3
 818:	00404021 	addu	t0,v0,zero
 81c:	8f820000 	lw	v0,0(gp)
 820:	00071823 	negu	v1,a3
 824:	34420009 	ori	v0,v0,0x9
 828:	00604821 	addu	t1,v1,zero
 82c:	08000127 	j	49c <float64_mul+0x24c>
 830:	af820000 	sw	v0,0(gp)
 834:	8f820000 	lw	v0,0(gp)
 838:	00000000 	sll	zero,zero,0x0
 83c:	34420010 	ori	v0,v0,0x10
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
 840:	1460ff16 	bnez	v1,49c <float64_mul+0x24c>
 844:	af820000 	sw	v0,0(gp)
 848:	1140ff83 	beqz	t2,658 <float64_mul+0x408>
 84c:	00000000 	sll	zero,zero,0x0
 850:	00804021 	addu	t0,a0,zero
 854:	08000127 	j	49c <float64_mul+0x24c>
 858:	00a04821 	addu	t1,a1,zero
      if (zExp < 0)
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
 85c:	000d2823 	negu	a1,t5

  if (count == 0)
    {
      z = a;
    }
  else if (count < 64)
 860:	28a60040 	slti	a2,a1,64
 864:	10c00026 	beqz	a2,900 <float64_mul+0x6b0>
 868:	30a60020 	andi	a2,a1,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 86c:	10c0002f 	beqz	a2,92c <float64_mul+0x6dc>
 870:	00053027 	nor	a2,zero,a1
 874:	00a43006 	srlv	a2,a0,a1
 878:	00002821 	addu	a1,zero,zero
 87c:	31a70020 	andi	a3,t5,0x20
 880:	10e00023 	beqz	a3,910 <float64_mul+0x6c0>
 884:	31ad003f 	andi	t5,t5,0x3f
 888:	01a92004 	sllv	a0,t1,t5
 88c:	00004821 	addu	t1,zero,zero
 890:	00894825 	or	t1,a0,t1
 894:	0009482b 	sltu	t1,zero,t1
 898:	00a02021 	addu	a0,a1,zero
 89c:	01264825 	or	t1,t1,a2
	  zExp = 0;
	  roundBits = zSig & 0x3FF;
 8a0:	312603ff 	andi	a2,t1,0x3ff
	  if (isTiny && roundBits)
 8a4:	14c00012 	bnez	a2,8f0 <float64_mul+0x6a0>
 8a8:	01235021 	addu	t2,t1,v1
 8ac:	0149282b 	sltu	a1,t2,t1
 8b0:	00821021 	addu	v0,a0,v0
 8b4:	00a22821 	addu	a1,a1,v0
 8b8:	2407ffff 	addiu	a3,zero,-1
 8bc:	2406ffff 	addiu	a2,zero,-1
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 8c0:	080001c7 	j	71c <float64_mul+0x4cc>
 8c4:	00006821 	addu	t5,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 8c8:	354affff 	ori	t2,t2,0xffff
 8cc:	008a5024 	and	t2,a0,t2
 8d0:	01455025 	or	t2,t2,a1
 8d4:	0800018a 	j	628 <float64_mul+0x3d8>
 8d8:	000a502b 	sltu	t2,zero,t2
 8dc:	3463ffff 	ori	v1,v1,0xffff
 8e0:	00c31824 	and	v1,a2,v1
| `a' and `b'.  The operation is performed according to the IEC/IEEE Standard
| for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_mul (float64 a, float64 b)
 8e4:	00671825 	or	v1,v1,a3
 8e8:	08000190 	j	640 <float64_mul+0x3f0>
 8ec:	0003182b 	sltu	v1,zero,v1
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 8f0:	8f850000 	lw	a1,0(gp)
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 8f4:	00006821 	addu	t5,zero,zero
 8f8:	080001bb 	j	6ec <float64_mul+0x49c>
 8fc:	34a50004 	ori	a1,a1,0x4
    }
  else
    {
      z = (a != 0);
 900:	00894825 	or	t1,a0,t1
 904:	0009482b 	sltu	t1,zero,t1
 908:	08000228 	j	8a0 <float64_mul+0x650>
 90c:	00002021 	addu	a0,zero,zero
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 910:	00095042 	srl	t2,t1,0x1
 914:	000d3827 	nor	a3,zero,t5
 918:	00ea3806 	srlv	a3,t2,a3
 91c:	01a42004 	sllv	a0,a0,t5
 920:	00e42025 	or	a0,a3,a0
 924:	08000224 	j	890 <float64_mul+0x640>
 928:	01a94804 	sllv	t1,t1,t5
 92c:	00043840 	sll	a3,a0,0x1
 930:	00c73804 	sllv	a3,a3,a2
 934:	00a93006 	srlv	a2,t1,a1
 938:	00e63025 	or	a2,a3,a2
 93c:	0800021f 	j	87c <float64_mul+0x62c>
 940:	00a42806 	srlv	a1,a0,a1

00000944 <ullong_to_double>:
    unsigned long long ll;
  } t;

  t.ll = x;
  return t.d;
}
 944:	44850000 	mtc1	a1,$f0
 948:	00000000 	sll	zero,zero,0x0
 94c:	44840800 	mtc1	a0,$f1
 950:	03e00008 	jr	ra
 954:	00000000 	sll	zero,zero,0x0

00000958 <main>:
  0x0000000000000000ULL		/* 0.0 */
};

int
main ()
{
 958:	27bdffa8 	addiu	sp,sp,-88
 95c:	afbe0050 	sw	s8,80(sp)
 960:	afb7004c 	sw	s7,76(sp)
 964:	afb60048 	sw	s6,72(sp)
 968:	3c170000 	lui	s7,0x0
 96c:	3c160000 	lui	s6,0x0
 970:	3c1e0000 	lui	s8,0x0
 974:	afb50044 	sw	s5,68(sp)
 978:	afb40040 	sw	s4,64(sp)
 97c:	afbf0054 	sw	ra,84(sp)
 980:	afb3003c 	sw	s3,60(sp)
 984:	afb20038 	sw	s2,56(sp)
 988:	afb10034 	sw	s1,52(sp)
 98c:	afb00030 	sw	s0,48(sp)
 990:	0000a021 	addu	s4,zero,zero
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
 994:	0000a821 	addu	s5,zero,zero
 998:	26f70000 	addiu	s7,s7,0
 99c:	26d60000 	addiu	s6,s6,0
 9a0:	27de0000 	addiu	s8,s8,0
  0xBFE0000000000000ULL,	/* -0.5 */
  0x0000000000000000ULL		/* 0.0 */
};

int
main ()
 9a4:	02f41821 	addu	v1,s7,s4
 9a8:	02d41021 	addu	v0,s6,s4
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
 9ac:	8c710004 	lw	s1,4(v1)
 9b0:	8c700000 	lw	s0,0(v1)
	  x2 = b_input[i];
 9b4:	8c530004 	lw	s3,4(v0)
 9b8:	8c520000 	lw	s2,0(v0)
	  result = float64_mul (x1, x2);
 9bc:	02202821 	addu	a1,s1,zero
 9c0:	02002021 	addu	a0,s0,zero
 9c4:	02603821 	addu	a3,s3,zero
 9c8:	0c000000 	jal	0 <shift64RightJamming>
 9cc:	02403021 	addu	a2,s2,zero
  0xBFE0000000000000ULL,	/* -0.5 */
  0x0000000000000000ULL		/* 0.0 */
};

int
main ()
 9d0:	03d42021 	addu	a0,s8,s4
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_mul (x1, x2);
	  main_result += (result != z_output[i]);
 9d4:	8c880000 	lw	t0,0(a0)
 9d8:	8c850004 	lw	a1,4(a0)
 9dc:	01024826 	xor	t1,t0,v0
 9e0:	00a32026 	xor	a0,a1,v1
 9e4:	01244825 	or	t1,t1,a0

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 9e8:	3c040000 	lui	a0,0x0
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_mul (x1, x2);
	  main_result += (result != z_output[i]);
 9ec:	0009482b 	sltu	t1,zero,t1

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 9f0:	24840000 	addiu	a0,a0,0
 9f4:	02203821 	addu	a3,s1,zero
 9f8:	02003021 	addu	a2,s0,zero
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_mul (x1, x2);
	  main_result += (result != z_output[i]);
 9fc:	02a9a821 	addu	s5,s5,t1

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 a00:	afb30014 	sw	s3,20(sp)
 a04:	afb20010 	sw	s2,16(sp)
 a08:	afa80018 	sw	t0,24(sp)
 a0c:	afa5001c 	sw	a1,28(sp)
 a10:	afa30024 	sw	v1,36(sp)
 a14:	afa20020 	sw	v0,32(sp)
 a18:	afa3002c 	sw	v1,44(sp)
 a1c:	afa20028 	sw	v0,40(sp)
 a20:	0c000000 	jal	0 <shift64RightJamming>
 a24:	26940008 	addiu	s4,s4,8
{
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
 a28:	240200a0 	addiu	v0,zero,160
 a2c:	1682ffde 	bne	s4,v0,9a8 <main+0x50>
 a30:	02f41821 	addu	v1,s7,s4
	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     a_input[i], b_input[i], z_output[i], result,
	     ullong_to_double (result));
	}
      printf ("%d\n", main_result);
 a34:	3c040000 	lui	a0,0x0
 a38:	02a02821 	addu	a1,s5,zero
 a3c:	0c000000 	jal	0 <shift64RightJamming>
 a40:	24840000 	addiu	a0,a0,0
      return main_result;
    }
 a44:	8fbf0054 	lw	ra,84(sp)
 a48:	02a01021 	addu	v0,s5,zero
 a4c:	8fbe0050 	lw	s8,80(sp)
 a50:	8fb7004c 	lw	s7,76(sp)
 a54:	8fb60048 	lw	s6,72(sp)
 a58:	8fb50044 	lw	s5,68(sp)
 a5c:	8fb40040 	lw	s4,64(sp)
 a60:	8fb3003c 	lw	s3,60(sp)
 a64:	8fb20038 	lw	s2,56(sp)
 a68:	8fb10034 	lw	s1,52(sp)
 a6c:	8fb00030 	lw	s0,48(sp)
 a70:	03e00008 	jr	ra
 a74:	27bd0058 	addiu	sp,sp,88

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
