
dfadd.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <shift64RightJamming>:
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
   0:	10c00021 	beqz	a2,88 <shift64RightJamming+0x88>
   4:	28c20040 	slti	v0,a2,64
    {
      z = a;
    }
  else if (count < 64)
   8:	1040001c 	beqz	v0,7c <shift64RightJamming+0x7c>
   c:	00061023 	negu	v0,a2
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
  10:	3043003f 	andi	v1,v0,0x3f
  14:	30420020 	andi	v0,v0,0x20
  18:	10400004 	beqz	v0,2c <shift64RightJamming+0x2c>
  1c:	00054042 	srl	t0,a1,0x1
  20:	00651004 	sllv	v0,a1,v1
  24:	08000010 	j	40 <shift64RightJamming+0x40>
  28:	00001821 	addu	v1,zero,zero
  2c:	00031027 	nor	v0,zero,v1
  30:	00484006 	srlv	t0,t0,v0
  34:	00641004 	sllv	v0,a0,v1
  38:	01021025 	or	v0,t0,v0
  3c:	00651804 	sllv	v1,a1,v1
  40:	00431025 	or	v0,v0,v1
  44:	30c30020 	andi	v1,a2,0x20
  48:	10600004 	beqz	v1,5c <shift64RightJamming+0x5c>
  4c:	0002102b 	sltu	v0,zero,v0
  50:	00c42806 	srlv	a1,a0,a2
  54:	0800001d 	j	74 <shift64RightJamming+0x74>
  58:	00002021 	addu	a0,zero,zero
  5c:	00044040 	sll	t0,a0,0x1
  60:	00061827 	nor	v1,zero,a2
  64:	00681804 	sllv	v1,t0,v1
  68:	00c52806 	srlv	a1,a1,a2
  6c:	00652825 	or	a1,v1,a1
  70:	00c42006 	srlv	a0,a0,a2
  74:	08000022 	j	88 <shift64RightJamming+0x88>
  78:	00452825 	or	a1,v0,a1
    }
  else
    {
      z = (a != 0);
  7c:	00852825 	or	a1,a0,a1
  80:	0005282b 	sltu	a1,zero,a1
  84:	00002021 	addu	a0,zero,zero
    }
  *zPtr = z;
  88:	ace40000 	sw	a0,0(a3)

}
  8c:	03e00008 	jr	ra
  90:	ace50004 	sw	a1,4(a3)

00000094 <float_raise>:
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
  94:	8f820000 	lw	v0,0(gp)
  98:	00000000 	sll	zero,zero,0x0
  9c:	00441025 	or	v0,v0,a0

}
  a0:	03e00008 	jr	ra
  a4:	af820000 	sw	v0,0(gp)

000000a8 <float64_is_nan>:

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
  a8:	000517c2 	srl	v0,a1,0x1f
  ac:	00042040 	sll	a0,a0,0x1
  b0:	00442025 	or	a0,v0,a0
  b4:	00052840 	sll	a1,a1,0x1
  b8:	3c03ffe0 	lui	v1,0xffe0
  bc:	24630001 	addiu	v1,v1,1
  c0:	0083182b 	sltu	v1,a0,v1
  c4:	10600007 	beqz	v1,e4 <float64_is_nan+0x3c>
  c8:	24020001 	addiu	v0,zero,1
  cc:	3c03ffe0 	lui	v1,0xffe0
  d0:	14830003 	bne	a0,v1,e0 <float64_is_nan+0x38>
  d4:	00000000 	sll	zero,zero,0x0
  d8:	14a00002 	bnez	a1,e4 <float64_is_nan+0x3c>
  dc:	00000000 	sll	zero,zero,0x0
  e0:	00001021 	addu	v0,zero,zero

}
  e4:	03e00008 	jr	ra
  e8:	00000000 	sll	zero,zero,0x0

000000ec <float64_is_signaling_nan>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
  ec:	000434c2 	srl	a2,a0,0x13
  f0:	30c60fff 	andi	a2,a2,0xfff
  f4:	24030ffe 	addiu	v1,zero,4094
  f8:	14c30007 	bne	a2,v1,118 <float64_is_signaling_nan+0x2c>
  fc:	00000000 	sll	zero,zero,0x0
 100:	3c020007 	lui	v0,0x7
 104:	3442ffff 	ori	v0,v0,0xffff
 108:	00821024 	and	v0,a0,v0
| Returns 1 if the double-precision floating-point value `a' is a signaling
| NaN; otherwise returns 0.
*----------------------------------------------------------------------------*/

flag
float64_is_signaling_nan (float64 a)
 10c:	00451025 	or	v0,v0,a1
 110:	03e00008 	jr	ra
 114:	0002102b 	sltu	v0,zero,v0
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));

}
 118:	03e00008 	jr	ra
 11c:	00001021 	addu	v0,zero,zero

00000120 <propagateFloat64NaN>:
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/

static float64
propagateFloat64NaN (float64 a, float64 b)
{
 120:	27bdffd0 	addiu	sp,sp,-48
 124:	afbf002c 	sw	ra,44(sp)
 128:	afb60028 	sw	s6,40(sp)
 12c:	afb50024 	sw	s5,36(sp)
 130:	afb40020 	sw	s4,32(sp)
 134:	afb3001c 	sw	s3,28(sp)
 138:	afb20018 	sw	s2,24(sp)
 13c:	afb10014 	sw	s1,20(sp)
 140:	afb00010 	sw	s0,16(sp)
 144:	0080a021 	addu	s4,a0,zero
 148:	00a0b021 	addu	s6,a1,zero
 14c:	00c08821 	addu	s1,a2,zero
  flag aIsNaN, aIsSignalingNaN, bIsNaN, bIsSignalingNaN;

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
 150:	0c000000 	jal	0 <shift64RightJamming>
 154:	00e09021 	addu	s2,a3,zero
 158:	00409821 	addu	s3,v0,zero
  bIsNaN = float64_is_nan (b);
 15c:	02202021 	addu	a0,s1,zero
 160:	0c000000 	jal	0 <shift64RightJamming>
 164:	02402821 	addu	a1,s2,zero
 168:	0040a821 	addu	s5,v0,zero
  bIsSignalingNaN = float64_is_signaling_nan (b);
 16c:	02202021 	addu	a0,s1,zero
 170:	0c000000 	jal	0 <shift64RightJamming>
 174:	02402821 	addu	a1,s2,zero
 178:	00408021 	addu	s0,v0,zero
  a |= LIT64 (0x0008000000000000);
 17c:	3c020008 	lui	v0,0x8
 180:	0282a025 	or	s4,s4,v0
  b |= LIT64 (0x0008000000000000);
 184:	02228825 	or	s1,s1,v0
  if (aIsSignalingNaN | bIsSignalingNaN)
 188:	02131025 	or	v0,s0,s3
 18c:	10400003 	beqz	v0,19c <propagateFloat64NaN+0x7c>
 190:	00000000 	sll	zero,zero,0x0
    float_raise (float_flag_invalid);
 194:	0c000000 	jal	0 <shift64RightJamming>
 198:	24040010 	addiu	a0,zero,16
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
 19c:	1600000b 	bnez	s0,1cc <propagateFloat64NaN+0xac>
 1a0:	02201021 	addu	v0,s1,zero
 1a4:	16600005 	bnez	s3,1bc <propagateFloat64NaN+0x9c>
 1a8:	02808821 	addu	s1,s4,zero
 1ac:	12a00005 	beqz	s5,1c4 <propagateFloat64NaN+0xa4>
 1b0:	02401821 	addu	v1,s2,zero
 1b4:	08000074 	j	1d0 <propagateFloat64NaN+0xb0>
 1b8:	00000000 	sll	zero,zero,0x0
 1bc:	08000072 	j	1c8 <propagateFloat64NaN+0xa8>
 1c0:	02c09021 	addu	s2,s6,zero
 1c4:	02c09021 	addu	s2,s6,zero

}
 1c8:	02201021 	addu	v0,s1,zero
 1cc:	02401821 	addu	v1,s2,zero
 1d0:	8fbf002c 	lw	ra,44(sp)
 1d4:	8fb60028 	lw	s6,40(sp)
 1d8:	8fb50024 	lw	s5,36(sp)
 1dc:	8fb40020 	lw	s4,32(sp)
 1e0:	8fb3001c 	lw	s3,28(sp)
 1e4:	8fb20018 	lw	s2,24(sp)
 1e8:	8fb10014 	lw	s1,20(sp)
 1ec:	8fb00010 	lw	s0,16(sp)
 1f0:	03e00008 	jr	ra
 1f4:	27bd0030 	addiu	sp,sp,48

000001f8 <extractFloat64Frac>:
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);

}
 1f8:	3c02000f 	lui	v0,0xf
 1fc:	3442ffff 	ori	v0,v0,0xffff
 200:	00821024 	and	v0,a0,v0
 204:	03e00008 	jr	ra
 208:	00a01821 	addu	v1,a1,zero

0000020c <extractFloat64Exp>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 20c:	00041502 	srl	v0,a0,0x14

}
 210:	03e00008 	jr	ra
 214:	304207ff 	andi	v0,v0,0x7ff

00000218 <extractFloat64Sign>:
extractFloat64Sign (float64 a)
{

  return a >> 63;

}
 218:	03e00008 	jr	ra
 21c:	000417c2 	srl	v0,a0,0x1f

00000220 <packFloat64>:

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 220:	000427c0 	sll	a0,a0,0x1f
 224:	00c42021 	addu	a0,a2,a0
 228:	00051500 	sll	v0,a1,0x14

}
 22c:	00821021 	addu	v0,a0,v0
 230:	03e00008 	jr	ra
 234:	00e01821 	addu	v1,a3,zero

00000238 <roundAndPackFloat64>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
roundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
 238:	27bdffd8 	addiu	sp,sp,-40
 23c:	afbf0024 	sw	ra,36(sp)
 240:	afb30020 	sw	s3,32(sp)
 244:	afb2001c 	sw	s2,28(sp)
 248:	afb10018 	sw	s1,24(sp)
 24c:	afb00014 	sw	s0,20(sp)
 250:	00808021 	addu	s0,a0,zero
 254:	afa70034 	sw	a3,52(sp)
 258:	afa60030 	sw	a2,48(sp)
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
 25c:	8f830000 	lw	v1,0(gp)
 260:	00000000 	sll	zero,zero,0x0
  roundNearestEven = (roundingMode == float_round_nearest_even);
 264:	2c720001 	sltiu	s2,v1,1
  roundIncrement = 0x200;
  if (!roundNearestEven)
 268:	1640000f 	bnez	s2,2a8 <roundAndPackFloat64+0x70>
 26c:	00a01021 	addu	v0,a1,zero
    {
      if (roundingMode == float_round_to_zero)
 270:	24040001 	addiu	a0,zero,1
 274:	1064000e 	beq	v1,a0,2b0 <roundAndPackFloat64+0x78>
 278:	00000000 	sll	zero,zero,0x0
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
 27c:	12000006 	beqz	s0,298 <roundAndPackFloat64+0x60>
 280:	24040003 	addiu	a0,zero,3
	    {
	      if (roundingMode == float_round_up)
 284:	24040002 	addiu	a0,zero,2
 288:	1064000b 	beq	v1,a0,2b8 <roundAndPackFloat64+0x80>
 28c:	00000000 	sll	zero,zero,0x0
	{
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
 290:	080000b1 	j	2c4 <roundAndPackFloat64+0x8c>
 294:	241103ff 	addiu	s1,zero,1023
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
 298:	10640009 	beq	v1,a0,2c0 <roundAndPackFloat64+0x88>
 29c:	241103ff 	addiu	s1,zero,1023
 2a0:	080000b1 	j	2c4 <roundAndPackFloat64+0x8c>
 2a4:	00000000 	sll	zero,zero,0x0
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
  roundNearestEven = (roundingMode == float_round_nearest_even);
  roundIncrement = 0x200;
 2a8:	080000b1 	j	2c4 <roundAndPackFloat64+0x8c>
 2ac:	24110200 	addiu	s1,zero,512
  if (!roundNearestEven)
    {
      if (roundingMode == float_round_to_zero)
	{
	  roundIncrement = 0;
 2b0:	080000b1 	j	2c4 <roundAndPackFloat64+0x8c>
 2b4:	00008821 	addu	s1,zero,zero
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
	    {
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
 2b8:	080000b1 	j	2c4 <roundAndPackFloat64+0x8c>
 2bc:	00008821 	addu	s1,zero,zero
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
		roundIncrement = 0;
 2c0:	00008821 	addu	s1,zero,zero
	    }
	}
    }
  roundBits = zSig & 0x3FF;
 2c4:	8fa40030 	lw	a0,48(sp)
 2c8:	8fb30034 	lw	s3,52(sp)
  if (0x7FD <= (bits16) zExp)
 2cc:	3043ffff 	andi	v1,v0,0xffff
 2d0:	2c6307fd 	sltiu	v1,v1,2045
 2d4:	14600025 	bnez	v1,36c <roundAndPackFloat64+0x134>
 2d8:	284307fe 	slti	v1,v0,2046
    {
      if ((0x7FD < zExp)
 2dc:	10600008 	beqz	v1,300 <roundAndPackFloat64+0xc8>
 2e0:	00000000 	sll	zero,zero,0x0
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 2e4:	240307fd 	addiu	v1,zero,2045
 2e8:	14430012 	bne	v0,v1,334 <roundAndPackFloat64+0xfc>
 2ec:	02331821 	addu	v1,s1,s3
 2f0:	0071182b 	sltu	v1,v1,s1
 2f4:	00642021 	addu	a0,v1,a0
 2f8:	0481001d 	bgez	a0,370 <roundAndPackFloat64+0x138>
 2fc:	327303ff 	andi	s3,s3,0x3ff
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
 300:	0c000000 	jal	0 <shift64RightJamming>
 304:	24040009 	addiu	a0,zero,9
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 308:	02002021 	addu	a0,s0,zero
 30c:	240507ff 	addiu	a1,zero,2047
 310:	00003821 	addu	a3,zero,zero
 314:	0c000000 	jal	0 <shift64RightJamming>
 318:	00003021 	addu	a2,zero,zero
 31c:	2e310001 	sltiu	s1,s1,1
 320:	00718823 	subu	s1,v1,s1
 324:	0071182b 	sltu	v1,v1,s1
 328:	00431023 	subu	v0,v0,v1
 32c:	080000fa 	j	3e8 <roundAndPackFloat64+0x1b0>
 330:	02201821 	addu	v1,s1,zero
	}
      if (zExp < 0)
 334:	0441000d 	bgez	v0,36c <roundAndPackFloat64+0x134>
 338:	02602821 	addu	a1,s3,zero
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
 33c:	00023023 	negu	a2,v0
 340:	0c000000 	jal	0 <shift64RightJamming>
 344:	27a70030 	addiu	a3,sp,48
	  zExp = 0;
	  roundBits = zSig & 0x3FF;
 348:	8fb30034 	lw	s3,52(sp)
 34c:	00000000 	sll	zero,zero,0x0
 350:	327303ff 	andi	s3,s3,0x3ff
	  if (isTiny && roundBits)
 354:	1260000d 	beqz	s3,38c <roundAndPackFloat64+0x154>
 358:	00000000 	sll	zero,zero,0x0
	    float_raise (float_flag_underflow);
 35c:	0c000000 	jal	0 <shift64RightJamming>
 360:	24040004 	addiu	a0,zero,4
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 364:	080000de 	j	378 <roundAndPackFloat64+0x140>
 368:	00001021 	addu	v0,zero,zero
	      if (roundingMode == float_round_down)
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
 36c:	327303ff 	andi	s3,s3,0x3ff
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
 370:	12600008 	beqz	s3,394 <roundAndPackFloat64+0x15c>
 374:	3a670200 	xori	a3,s3,0x200
    float_exception_flags |= float_flag_inexact;
 378:	8f830000 	lw	v1,0(gp)
 37c:	00000000 	sll	zero,zero,0x0
 380:	34630001 	ori	v1,v1,0x1
 384:	080000e4 	j	390 <roundAndPackFloat64+0x158>
 388:	af830000 	sw	v1,0(gp)
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 38c:	00001021 	addu	v0,zero,zero
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 390:	3a670200 	xori	a3,s3,0x200
 394:	2ce70001 	sltiu	a3,a3,1
 398:	00f23824 	and	a3,a3,s2
 39c:	00073827 	nor	a3,zero,a3
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
 3a0:	8fa30034 	lw	v1,52(sp)
 3a4:	00000000 	sll	zero,zero,0x0
 3a8:	02231821 	addu	v1,s1,v1
 3ac:	0071302b 	sltu	a2,v1,s1
 3b0:	8fa40030 	lw	a0,48(sp)
 3b4:	00000000 	sll	zero,zero,0x0
 3b8:	00c43021 	addu	a2,a2,a0
 3bc:	00062580 	sll	a0,a2,0x16
 3c0:	00031a82 	srl	v1,v1,0xa
 3c4:	00831825 	or	v1,a0,v1
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 3c8:	00063282 	srl	a2,a2,0xa
 3cc:	00e33824 	and	a3,a3,v1
  if (zSig == 0)
 3d0:	00c71825 	or	v1,a2,a3
 3d4:	14600002 	bnez	v1,3e0 <roundAndPackFloat64+0x1a8>
 3d8:	02002021 	addu	a0,s0,zero
    zExp = 0;
 3dc:	00001021 	addu	v0,zero,zero
  return packFloat64 (zSign, zExp, zSig);
 3e0:	0c000000 	jal	0 <shift64RightJamming>
 3e4:	00402821 	addu	a1,v0,zero

}
 3e8:	8fbf0024 	lw	ra,36(sp)
 3ec:	8fb30020 	lw	s3,32(sp)
 3f0:	8fb2001c 	lw	s2,28(sp)
 3f4:	8fb10018 	lw	s1,24(sp)
 3f8:	8fb00014 	lw	s0,20(sp)
 3fc:	03e00008 	jr	ra
 400:	27bd0028 	addiu	sp,sp,40

00000404 <float64_add>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_add (float64 a, float64 b)
{
 404:	27bdffb8 	addiu	sp,sp,-72
 408:	afbf0044 	sw	ra,68(sp)
 40c:	afbe0040 	sw	s8,64(sp)
 410:	afb7003c 	sw	s7,60(sp)
 414:	afb60038 	sw	s6,56(sp)
 418:	afb50034 	sw	s5,52(sp)
 41c:	afb40030 	sw	s4,48(sp)
 420:	afb3002c 	sw	s3,44(sp)
 424:	afb20028 	sw	s2,40(sp)
 428:	afb10024 	sw	s1,36(sp)
 42c:	afb00020 	sw	s0,32(sp)
 430:	00a09821 	addu	s3,a1,zero
 434:	00809021 	addu	s2,a0,zero
 438:	afa70054 	sw	a3,84(sp)
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
 43c:	0c000000 	jal	0 <shift64RightJamming>
 440:	afa60050 	sw	a2,80(sp)
  bSign = extractFloat64Sign (b);
 444:	8fa50054 	lw	a1,84(sp)
 448:	8fa40050 	lw	a0,80(sp)
 44c:	0c000000 	jal	0 <shift64RightJamming>
 450:	0040a021 	addu	s4,v0,zero
  if (aSign == bSign)
 454:	168200a0 	bne	s4,v0,6d8 <float64_add+0x2d4>
 458:	02602821 	addu	a1,s3,zero
{
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  int16 expDiff;

  aSig = extractFloat64Frac (a);
 45c:	0c000000 	jal	0 <shift64RightJamming>
 460:	02402021 	addu	a0,s2,zero
 464:	0040a821 	addu	s5,v0,zero
 468:	0060b021 	addu	s6,v1,zero
  aExp = extractFloat64Exp (a);
 46c:	02602821 	addu	a1,s3,zero
 470:	0c000000 	jal	0 <shift64RightJamming>
 474:	02402021 	addu	a0,s2,zero
  bSig = extractFloat64Frac (b);
 478:	8fa50054 	lw	a1,84(sp)
 47c:	8fa40050 	lw	a0,80(sp)
 480:	0c000000 	jal	0 <shift64RightJamming>
 484:	00408821 	addu	s1,v0,zero
 488:	0040b821 	addu	s7,v0,zero
  bExp = extractFloat64Exp (b);
 48c:	8fa50054 	lw	a1,84(sp)
 490:	8fa40050 	lw	a0,80(sp)
 494:	0c000000 	jal	0 <shift64RightJamming>
 498:	0060f021 	addu	s8,v1,zero
 49c:	00408021 	addu	s0,v0,zero
  expDiff = aExp - bExp;
 4a0:	02223023 	subu	a2,s1,v0
  aSig <<= 9;
 4a4:	001615c2 	srl	v0,s6,0x17
 4a8:	0015aa40 	sll	s5,s5,0x9
 4ac:	0055a825 	or	s5,v0,s5
 4b0:	0016b240 	sll	s6,s6,0x9
 4b4:	afb50018 	sw	s5,24(sp)
 4b8:	afb6001c 	sw	s6,28(sp)
  bSig <<= 9;
 4bc:	001e15c2 	srl	v0,s8,0x17
 4c0:	0017ba40 	sll	s7,s7,0x9
 4c4:	0057b825 	or	s7,v0,s7
 4c8:	001ef240 	sll	s8,s8,0x9
 4cc:	afb70010 	sw	s7,16(sp)
  if (0 < expDiff)
 4d0:	18c0001c 	blez	a2,544 <float64_add+0x140>
 4d4:	afbe0014 	sw	s8,20(sp)
    {
      if (aExp == 0x7FF)
 4d8:	240207ff 	addiu	v0,zero,2047
 4dc:	1622000b 	bne	s1,v0,50c <float64_add+0x108>
 4e0:	02b6a825 	or	s5,s5,s6
	{
	  if (aSig)
 4e4:	12a00157 	beqz	s5,a44 <float64_add+0x640>
 4e8:	02401021 	addu	v0,s2,zero
	    return propagateFloat64NaN (a, b);
 4ec:	02602821 	addu	a1,s3,zero
 4f0:	8fa70054 	lw	a3,84(sp)
 4f4:	8fa60050 	lw	a2,80(sp)
 4f8:	0c000048 	jal	120 <propagateFloat64NaN>
 4fc:	02402021 	addu	a0,s2,zero
 500:	00609821 	addu	s3,v1,zero
 504:	08000290 	j	a40 <float64_add+0x63c>
 508:	00409021 	addu	s2,v0,zero
	  return a;
	}
      if (bExp == 0)
 50c:	16000003 	bnez	s0,51c <float64_add+0x118>
 510:	00000000 	sll	zero,zero,0x0
	--expDiff;
 514:	0800014b 	j	52c <float64_add+0x128>
 518:	24c6ffff 	addiu	a2,a2,-1
      else
	bSig |= LIT64 (0x2000000000000000);
 51c:	3c022000 	lui	v0,0x2000
 520:	02e2b825 	or	s7,s7,v0
 524:	afb70010 	sw	s7,16(sp)
 528:	afbe0014 	sw	s8,20(sp)
      shift64RightJamming (bSig, expDiff, &bSig);
 52c:	8fa50014 	lw	a1,20(sp)
 530:	8fa40010 	lw	a0,16(sp)
 534:	0c000000 	jal	0 <shift64RightJamming>
 538:	27a70010 	addiu	a3,sp,16
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
 53c:	0800019a 	j	668 <float64_add+0x264>
 540:	3c022000 	lui	v0,0x2000
      else
	bSig |= LIT64 (0x2000000000000000);
      shift64RightJamming (bSig, expDiff, &bSig);
      zExp = aExp;
    }
  else if (expDiff < 0)
 544:	04c10022 	bgez	a2,5d0 <float64_add+0x1cc>
 548:	240207ff 	addiu	v0,zero,2047
    {
      if (bExp == 0x7FF)
 54c:	16020012 	bne	s0,v0,598 <float64_add+0x194>
 550:	02feb825 	or	s7,s7,s8
	{
	  if (bSig)
 554:	12e00009 	beqz	s7,57c <float64_add+0x178>
 558:	240507ff 	addiu	a1,zero,2047
	    return propagateFloat64NaN (a, b);
 55c:	02602821 	addu	a1,s3,zero
 560:	8fa70054 	lw	a3,84(sp)
 564:	8fa60050 	lw	a2,80(sp)
 568:	0c000048 	jal	120 <propagateFloat64NaN>
 56c:	02402021 	addu	a0,s2,zero
 570:	00609821 	addu	s3,v1,zero
 574:	08000290 	j	a40 <float64_add+0x63c>
 578:	00409021 	addu	s2,v0,zero
	  return packFloat64 (zSign, 0x7FF, 0);
 57c:	02802021 	addu	a0,s4,zero
 580:	00003821 	addu	a3,zero,zero
 584:	0c000000 	jal	0 <shift64RightJamming>
 588:	00003021 	addu	a2,zero,zero
 58c:	00609821 	addu	s3,v1,zero
 590:	08000290 	j	a40 <float64_add+0x63c>
 594:	00409021 	addu	s2,v0,zero
	}
      if (aExp == 0)
 598:	16200003 	bnez	s1,5a8 <float64_add+0x1a4>
 59c:	3c022000 	lui	v0,0x2000
	++expDiff;
 5a0:	0800016d 	j	5b4 <float64_add+0x1b0>
 5a4:	24c60001 	addiu	a2,a2,1
      else
	{
	  aSig |= LIT64 (0x2000000000000000);
 5a8:	02a2a825 	or	s5,s5,v0
 5ac:	afb50018 	sw	s5,24(sp)
 5b0:	afb6001c 	sw	s6,28(sp)
	}
      shift64RightJamming (aSig, -expDiff, &aSig);
 5b4:	8fa5001c 	lw	a1,28(sp)
 5b8:	8fa40018 	lw	a0,24(sp)
 5bc:	00063023 	negu	a2,a2
 5c0:	0c000000 	jal	0 <shift64RightJamming>
 5c4:	27a70018 	addiu	a3,sp,24
      zExp = bExp;
 5c8:	08000199 	j	664 <float64_add+0x260>
 5cc:	02008821 	addu	s1,s0,zero
    }
  else
    {
      if (aExp == 0x7FF)
 5d0:	1622000e 	bne	s1,v0,60c <float64_add+0x208>
 5d4:	00000000 	sll	zero,zero,0x0
	{
	  if (aSig | bSig)
 5d8:	02f5a825 	or	s5,s7,s5
 5dc:	03d6b025 	or	s6,s8,s6
 5e0:	02b6a825 	or	s5,s5,s6
 5e4:	12a00117 	beqz	s5,a44 <float64_add+0x640>
 5e8:	02401021 	addu	v0,s2,zero
	    return propagateFloat64NaN (a, b);
 5ec:	02602821 	addu	a1,s3,zero
 5f0:	8fa70054 	lw	a3,84(sp)
 5f4:	8fa60050 	lw	a2,80(sp)
 5f8:	0c000048 	jal	120 <propagateFloat64NaN>
 5fc:	02402021 	addu	a0,s2,zero
 600:	00609821 	addu	s3,v1,zero
 604:	08000290 	j	a40 <float64_add+0x63c>
 608:	00409021 	addu	s2,v0,zero
	  return a;
	}
      if (aExp == 0)
 60c:	1620000f 	bnez	s1,64c <float64_add+0x248>
 610:	3c024000 	lui	v0,0x4000
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
 614:	03d6b021 	addu	s6,s8,s6
 618:	02def02b 	sltu	s8,s6,s8
 61c:	02f5a821 	addu	s5,s7,s5
 620:	03d53021 	addu	a2,s8,s5
 624:	00063dc0 	sll	a3,a2,0x17
 628:	00161242 	srl	v0,s6,0x9
 62c:	02802021 	addu	a0,s4,zero
 630:	00002821 	addu	a1,zero,zero
 634:	00063242 	srl	a2,a2,0x9
 638:	0c000000 	jal	0 <shift64RightJamming>
 63c:	00e23825 	or	a3,a3,v0
 640:	00609821 	addu	s3,v1,zero
 644:	08000290 	j	a40 <float64_add+0x63c>
 648:	00409021 	addu	s2,v0,zero
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
 64c:	02de3821 	addu	a3,s6,s8
 650:	00f6302b 	sltu	a2,a3,s6
 654:	02b7a821 	addu	s5,s5,s7
 658:	00d53021 	addu	a2,a2,s5
 65c:	080001b0 	j	6c0 <float64_add+0x2bc>
 660:	00c23021 	addu	a2,a2,v0
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
 664:	3c022000 	lui	v0,0x2000
 668:	8fa40018 	lw	a0,24(sp)
 66c:	00000000 	sll	zero,zero,0x0
 670:	00822025 	or	a0,a0,v0
 674:	8fa3001c 	lw	v1,28(sp)
 678:	afa40018 	sw	a0,24(sp)
  zSig = (aSig + bSig) << 1;
 67c:	8fa20014 	lw	v0,20(sp)
 680:	00000000 	sll	zero,zero,0x0
 684:	00621021 	addu	v0,v1,v0
 688:	0043182b 	sltu	v1,v0,v1
 68c:	8fa50010 	lw	a1,16(sp)
 690:	00000000 	sll	zero,zero,0x0
 694:	00852021 	addu	a0,a0,a1
 698:	00641821 	addu	v1,v1,a0
 69c:	000227c2 	srl	a0,v0,0x1f
 6a0:	00033040 	sll	a2,v1,0x1
 6a4:	00863025 	or	a2,a0,a2
  --zExp;
  if ((sbits64) zSig < 0)
 6a8:	04c00003 	bltz	a2,6b8 <float64_add+0x2b4>
 6ac:	00023840 	sll	a3,v0,0x1
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
  zSig = (aSig + bSig) << 1;
  --zExp;
 6b0:	080001b0 	j	6c0 <float64_add+0x2bc>
 6b4:	2631ffff 	addiu	s1,s1,-1
  if ((sbits64) zSig < 0)
    {
      zSig = aSig + bSig;
 6b8:	00603021 	addu	a2,v1,zero
 6bc:	00403821 	addu	a3,v0,zero
      ++zExp;
    }
roundAndPack:
  return roundAndPackFloat64 (zSign, zExp, zSig);
 6c0:	02802021 	addu	a0,s4,zero
 6c4:	0c00008e 	jal	238 <roundAndPackFloat64>
 6c8:	02202821 	addu	a1,s1,zero
 6cc:	00609821 	addu	s3,v1,zero
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
 6d0:	08000290 	j	a40 <float64_add+0x63c>
 6d4:	00409021 	addu	s2,v0,zero
{
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  int16 expDiff;

  aSig = extractFloat64Frac (a);
 6d8:	0c000000 	jal	0 <shift64RightJamming>
 6dc:	02402021 	addu	a0,s2,zero
 6e0:	0040a821 	addu	s5,v0,zero
 6e4:	0060b021 	addu	s6,v1,zero
  aExp = extractFloat64Exp (a);
 6e8:	02602821 	addu	a1,s3,zero
 6ec:	0c000000 	jal	0 <shift64RightJamming>
 6f0:	02402021 	addu	a0,s2,zero
  bSig = extractFloat64Frac (b);
 6f4:	8fa50054 	lw	a1,84(sp)
 6f8:	8fa40050 	lw	a0,80(sp)
 6fc:	0c000000 	jal	0 <shift64RightJamming>
 700:	00408821 	addu	s1,v0,zero
 704:	0040b821 	addu	s7,v0,zero
  bExp = extractFloat64Exp (b);
 708:	8fa50054 	lw	a1,84(sp)
 70c:	8fa40050 	lw	a0,80(sp)
 710:	0c000000 	jal	0 <shift64RightJamming>
 714:	0060f021 	addu	s8,v1,zero
 718:	00408021 	addu	s0,v0,zero
  expDiff = aExp - bExp;
 71c:	02223023 	subu	a2,s1,v0
  aSig <<= 10;
 720:	00161582 	srl	v0,s6,0x16
 724:	0015aa80 	sll	s5,s5,0xa
 728:	0055a825 	or	s5,v0,s5
 72c:	0016b280 	sll	s6,s6,0xa
 730:	afb50010 	sw	s5,16(sp)
 734:	afb60014 	sw	s6,20(sp)
  bSig <<= 10;
 738:	001e1582 	srl	v0,s8,0x16
 73c:	0017ba80 	sll	s7,s7,0xa
 740:	0057b825 	or	s7,v0,s7
 744:	001ef280 	sll	s8,s8,0xa
 748:	afb70018 	sw	s7,24(sp)
  if (0 < expDiff)
 74c:	1cc00066 	bgtz	a2,8e8 <float64_add+0x4e4>
 750:	afbe001c 	sw	s8,28(sp)
    goto aExpBigger;
  if (expDiff < 0)
 754:	04c00031 	bltz	a2,81c <float64_add+0x418>
 758:	240207ff 	addiu	v0,zero,2047
    goto bExpBigger;
  if (aExp == 0x7FF)
 75c:	16220013 	bne	s1,v0,7ac <float64_add+0x3a8>
 760:	00000000 	sll	zero,zero,0x0
    {
      if (aSig | bSig)
 764:	02f5a825 	or	s5,s7,s5
 768:	03d6f025 	or	s8,s8,s6
 76c:	02bea825 	or	s5,s5,s8
 770:	12a00008 	beqz	s5,794 <float64_add+0x390>
 774:	02602821 	addu	a1,s3,zero
	return propagateFloat64NaN (a, b);
 778:	8fa70054 	lw	a3,84(sp)
 77c:	8fa60050 	lw	a2,80(sp)
 780:	0c000048 	jal	120 <propagateFloat64NaN>
 784:	02402021 	addu	a0,s2,zero
 788:	00609821 	addu	s3,v1,zero
 78c:	08000290 	j	a40 <float64_add+0x63c>
 790:	00409021 	addu	s2,v0,zero
      float_raise (float_flag_invalid);
 794:	0c000000 	jal	0 <shift64RightJamming>
 798:	24040010 	addiu	a0,zero,16
      return float64_default_nan;
 79c:	2413ffff 	addiu	s3,zero,-1
 7a0:	3c127fff 	lui	s2,0x7fff
 7a4:	08000290 	j	a40 <float64_add+0x63c>
 7a8:	3652ffff 	ori	s2,s2,0xffff
    }
  if (aExp == 0)
 7ac:	16200003 	bnez	s1,7bc <float64_add+0x3b8>
 7b0:	02f5102b 	sltu	v0,s7,s5
    {
      aExp = 1;
      bExp = 1;
 7b4:	24100001 	addiu	s0,zero,1
      float_raise (float_flag_invalid);
      return float64_default_nan;
    }
  if (aExp == 0)
    {
      aExp = 1;
 7b8:	24110001 	addiu	s1,zero,1
      bExp = 1;
    }
  if (bSig < aSig)
 7bc:	14400067 	bnez	v0,95c <float64_add+0x558>
 7c0:	00000000 	sll	zero,zero,0x0
 7c4:	16b70004 	bne	s5,s7,7d8 <float64_add+0x3d4>
 7c8:	02b7102b 	sltu	v0,s5,s7
 7cc:	03d6102b 	sltu	v0,s8,s6
 7d0:	14400062 	bnez	v0,95c <float64_add+0x558>
 7d4:	02b7102b 	sltu	v0,s5,s7
    goto aBigger;
  if (aSig < bSig)
 7d8:	14400036 	bnez	v0,8b4 <float64_add+0x4b0>
 7dc:	00000000 	sll	zero,zero,0x0
 7e0:	16f50003 	bne	s7,s5,7f0 <float64_add+0x3ec>
 7e4:	02deb02b 	sltu	s6,s6,s8
 7e8:	16c00033 	bnez	s6,8b8 <float64_add+0x4b4>
 7ec:	02008821 	addu	s1,s0,zero
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
 7f0:	8f840000 	lw	a0,0(gp)
 7f4:	00000000 	sll	zero,zero,0x0
 7f8:	38840003 	xori	a0,a0,0x3
 7fc:	2c840001 	sltiu	a0,a0,1
 800:	00002821 	addu	a1,zero,zero
 804:	00003821 	addu	a3,zero,zero
 808:	0c000000 	jal	0 <shift64RightJamming>
 80c:	00003021 	addu	a2,zero,zero
 810:	00609821 	addu	s3,v1,zero
 814:	08000290 	j	a40 <float64_add+0x63c>
 818:	00409021 	addu	s2,v0,zero
bExpBigger:
  if (bExp == 0x7FF)
 81c:	16020012 	bne	s0,v0,868 <float64_add+0x464>
 820:	02feb825 	or	s7,s7,s8
    {
      if (bSig)
 824:	12e00009 	beqz	s7,84c <float64_add+0x448>
 828:	240507ff 	addiu	a1,zero,2047
	return propagateFloat64NaN (a, b);
 82c:	02602821 	addu	a1,s3,zero
 830:	8fa70054 	lw	a3,84(sp)
 834:	8fa60050 	lw	a2,80(sp)
 838:	0c000048 	jal	120 <propagateFloat64NaN>
 83c:	02402021 	addu	a0,s2,zero
 840:	00609821 	addu	s3,v1,zero
 844:	08000290 	j	a40 <float64_add+0x63c>
 848:	00409021 	addu	s2,v0,zero
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
 84c:	3a840001 	xori	a0,s4,0x1
 850:	00003821 	addu	a3,zero,zero
 854:	0c000000 	jal	0 <shift64RightJamming>
 858:	00003021 	addu	a2,zero,zero
 85c:	00609821 	addu	s3,v1,zero
 860:	08000290 	j	a40 <float64_add+0x63c>
 864:	00409021 	addu	s2,v0,zero
    }
  if (aExp == 0)
 868:	16200003 	bnez	s1,878 <float64_add+0x474>
 86c:	3c024000 	lui	v0,0x4000
    ++expDiff;
 870:	08000221 	j	884 <float64_add+0x480>
 874:	24c60001 	addiu	a2,a2,1
  else
    aSig |= LIT64 (0x4000000000000000);
 878:	02a2a825 	or	s5,s5,v0
 87c:	afb50010 	sw	s5,16(sp)
 880:	afb60014 	sw	s6,20(sp)
  shift64RightJamming (aSig, -expDiff, &aSig);
 884:	8fa50014 	lw	a1,20(sp)
 888:	8fa40010 	lw	a0,16(sp)
 88c:	00063023 	negu	a2,a2
 890:	0c000000 	jal	0 <shift64RightJamming>
 894:	27a70010 	addiu	a3,sp,16
  bSig |= LIT64 (0x4000000000000000);
 898:	3c024000 	lui	v0,0x4000
 89c:	8fa30018 	lw	v1,24(sp)
 8a0:	00000000 	sll	zero,zero,0x0
 8a4:	00621025 	or	v0,v1,v0
 8a8:	afa20018 	sw	v0,24(sp)
  int16 expDiff;

  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
 8ac:	0800022e 	j	8b8 <float64_add+0x4b4>
 8b0:	02008821 	addu	s1,s0,zero
      aExp = 1;
      bExp = 1;
    }
  if (bSig < aSig)
    goto aBigger;
  if (aSig < bSig)
 8b4:	02008821 	addu	s1,s0,zero
  else
    aSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (aSig, -expDiff, &aSig);
  bSig |= LIT64 (0x4000000000000000);
bBigger:
  zSig = bSig - aSig;
 8b8:	8fa6001c 	lw	a2,28(sp)
 8bc:	8fa70014 	lw	a3,20(sp)
 8c0:	00000000 	sll	zero,zero,0x0
 8c4:	00c73823 	subu	a3,a2,a3
 8c8:	00c7302b 	sltu	a2,a2,a3
 8cc:	8fa20010 	lw	v0,16(sp)
 8d0:	8fa30018 	lw	v1,24(sp)
 8d4:	00000000 	sll	zero,zero,0x0
 8d8:	00621023 	subu	v0,v1,v0
 8dc:	00463023 	subu	a2,v0,a2
  zExp = bExp;
  zSign ^= 1;
 8e0:	08000261 	j	984 <float64_add+0x580>
 8e4:	3a940001 	xori	s4,s4,0x1
  goto normalizeRoundAndPack;
aExpBigger:
  if (aExp == 0x7FF)
 8e8:	240207ff 	addiu	v0,zero,2047
 8ec:	1622000b 	bne	s1,v0,91c <float64_add+0x518>
 8f0:	02b6a825 	or	s5,s5,s6
    {
      if (aSig)
 8f4:	12a00053 	beqz	s5,a44 <float64_add+0x640>
 8f8:	02401021 	addu	v0,s2,zero
	return propagateFloat64NaN (a, b);
 8fc:	02602821 	addu	a1,s3,zero
 900:	8fa70054 	lw	a3,84(sp)
 904:	8fa60050 	lw	a2,80(sp)
 908:	0c000048 	jal	120 <propagateFloat64NaN>
 90c:	02402021 	addu	a0,s2,zero
 910:	00609821 	addu	s3,v1,zero
 914:	08000290 	j	a40 <float64_add+0x63c>
 918:	00409021 	addu	s2,v0,zero
      return a;
    }
  if (bExp == 0)
 91c:	16000003 	bnez	s0,92c <float64_add+0x528>
 920:	3c024000 	lui	v0,0x4000
    --expDiff;
 924:	0800024e 	j	938 <float64_add+0x534>
 928:	24c6ffff 	addiu	a2,a2,-1
  else
    bSig |= LIT64 (0x4000000000000000);
 92c:	02e2b825 	or	s7,s7,v0
 930:	afb70018 	sw	s7,24(sp)
 934:	afbe001c 	sw	s8,28(sp)
  shift64RightJamming (bSig, expDiff, &bSig);
 938:	8fa5001c 	lw	a1,28(sp)
 93c:	8fa40018 	lw	a0,24(sp)
 940:	0c000000 	jal	0 <shift64RightJamming>
 944:	27a70018 	addiu	a3,sp,24
  aSig |= LIT64 (0x4000000000000000);
 948:	3c024000 	lui	v0,0x4000
 94c:	8fa30010 	lw	v1,16(sp)
 950:	00000000 	sll	zero,zero,0x0
 954:	00621025 	or	v0,v1,v0
 958:	afa20010 	sw	v0,16(sp)
aBigger:
  zSig = aSig - bSig;
 95c:	8fa60014 	lw	a2,20(sp)
 960:	8fa7001c 	lw	a3,28(sp)
 964:	00000000 	sll	zero,zero,0x0
 968:	00c73823 	subu	a3,a2,a3
 96c:	00c7302b 	sltu	a2,a2,a3
 970:	8fa20018 	lw	v0,24(sp)
 974:	8fa30010 	lw	v1,16(sp)
 978:	00000000 	sll	zero,zero,0x0
 97c:	00621023 	subu	v0,v1,v0
 980:	00463023 	subu	a2,v0,a2
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 984:	14c00004 	bnez	a2,998 <float64_add+0x594>
 988:	2631ffff 	addiu	s1,s1,-1
 98c:	00e02021 	addu	a0,a3,zero
    {
      shiftCount += 32;
 990:	08000268 	j	9a0 <float64_add+0x59c>
 994:	24020020 	addiu	v0,zero,32
    }
  else
    {
      a >>= 32;
 998:	00c02021 	addu	a0,a2,zero
static int8
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
 99c:	00001021 	addu	v0,zero,zero
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
 9a0:	3c050001 	lui	a1,0x1
 9a4:	0085282b 	sltu	a1,a0,a1
 9a8:	10a00004 	beqz	a1,9bc <float64_add+0x5b8>
 9ac:	00801821 	addu	v1,a0,zero
    {
      shiftCount += 16;
      a <<= 16;
 9b0:	00041c00 	sll	v1,a0,0x10
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
 9b4:	08000270 	j	9c0 <float64_add+0x5bc>
 9b8:	24040010 	addiu	a0,zero,16
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
 9bc:	00002021 	addu	a0,zero,zero
  if (a < 0x10000)
    {
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
 9c0:	3c050100 	lui	a1,0x100
 9c4:	0065282b 	sltu	a1,v1,a1
 9c8:	10a00003 	beqz	a1,9d8 <float64_add+0x5d4>
 9cc:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
 9d0:	24840008 	addiu	a0,a0,8
      a <<= 8;
 9d4:	00031a00 	sll	v1,v1,0x8
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
 9d8:	2442ffff 	addiu	v0,v0,-1
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
 9dc:	00441021 	addu	v0,v0,a0
  if (a < 0x1000000)
    {
      shiftCount += 8;
      a <<= 8;
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
 9e0:	00031e02 	srl	v1,v1,0x18
 9e4:	00031880 	sll	v1,v1,0x2
 9e8:	3c040000 	lui	a0,0x0
 9ec:	24840450 	addiu	a0,a0,1104
 9f0:	00641821 	addu	v1,v1,a0
static float64
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
 9f4:	8c630000 	lw	v1,0(v1)
 9f8:	00000000 	sll	zero,zero,0x0
 9fc:	00431021 	addu	v0,v0,v1
  return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
 a00:	30430020 	andi	v1,v0,0x20
 a04:	10600004 	beqz	v1,a18 <float64_add+0x614>
 a08:	02222823 	subu	a1,s1,v0
 a0c:	00473004 	sllv	a2,a3,v0
 a10:	0800028c 	j	a30 <float64_add+0x62c>
 a14:	00003821 	addu	a3,zero,zero
 a18:	00072042 	srl	a0,a3,0x1
 a1c:	00021827 	nor	v1,zero,v0
 a20:	00641806 	srlv	v1,a0,v1
 a24:	00463004 	sllv	a2,a2,v0
 a28:	00663025 	or	a2,v1,a2
 a2c:	00473804 	sllv	a3,a3,v0
 a30:	0c00008e 	jal	238 <roundAndPackFloat64>
 a34:	02802021 	addu	a0,s4,zero
 a38:	00609821 	addu	s3,v1,zero
 a3c:	00409021 	addu	s2,v0,zero
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);

}
 a40:	02401021 	addu	v0,s2,zero
 a44:	02601821 	addu	v1,s3,zero
 a48:	8fbf0044 	lw	ra,68(sp)
 a4c:	8fbe0040 	lw	s8,64(sp)
 a50:	8fb7003c 	lw	s7,60(sp)
 a54:	8fb60038 	lw	s6,56(sp)
 a58:	8fb50034 	lw	s5,52(sp)
 a5c:	8fb40030 	lw	s4,48(sp)
 a60:	8fb3002c 	lw	s3,44(sp)
 a64:	8fb20028 	lw	s2,40(sp)
 a68:	8fb10024 	lw	s1,36(sp)
 a6c:	8fb00020 	lw	s0,32(sp)
 a70:	03e00008 	jr	ra
 a74:	27bd0048 	addiu	sp,sp,72

00000a78 <ullong_to_double>:
    unsigned long long ll;
  } t;

  t.ll = x;
  return t.d;
}
 a78:	44850000 	mtc1	a1,$f0
 a7c:	00000000 	sll	zero,zero,0x0
 a80:	44840800 	mtc1	a0,$f1
 a84:	03e00008 	jr	ra
 a88:	00000000 	sll	zero,zero,0x0

00000a8c <main>:
  0xBFE0000000000000ULL		/* -0.5 */
};

int
main ()
{
 a8c:	27bdffa0 	addiu	sp,sp,-96
 a90:	afbf005c 	sw	ra,92(sp)
 a94:	afbe0058 	sw	s8,88(sp)
 a98:	afb70054 	sw	s7,84(sp)
 a9c:	afb60050 	sw	s6,80(sp)
 aa0:	afb5004c 	sw	s5,76(sp)
 aa4:	afb40048 	sw	s4,72(sp)
 aa8:	afb30044 	sw	s3,68(sp)
 aac:	afb20040 	sw	s2,64(sp)
 ab0:	afb1003c 	sw	s1,60(sp)
 ab4:	afb00038 	sw	s0,56(sp)
 ab8:	00008021 	addu	s0,zero,zero
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
 abc:	00009821 	addu	s3,zero,zero
  0xBFF0000000000000ULL,	/* -1.0 */
  0xBFE0000000000000ULL		/* -0.5 */
};

int
main ()
 ac0:	3c1e0000 	lui	s8,0x0
 ac4:	27de0000 	addiu	s8,s8,0
 ac8:	03d01021 	addu	v0,s8,s0
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
 acc:	8c550004 	lw	s5,4(v0)
 ad0:	8c540000 	lw	s4,0(v0)
  0xBFF0000000000000ULL,	/* -1.0 */
  0xBFE0000000000000ULL		/* -0.5 */
};

int
main ()
 ad4:	3c030000 	lui	v1,0x0
 ad8:	24630000 	addiu	v1,v1,0
 adc:	00701021 	addu	v0,v1,s0
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
 ae0:	8c450004 	lw	a1,4(v0)
 ae4:	8c440000 	lw	a0,0(v0)
 ae8:	afa50034 	sw	a1,52(sp)
 aec:	afa40030 	sw	a0,48(sp)
	  result = float64_add (x1, x2);
 af0:	02a02821 	addu	a1,s5,zero
 af4:	8fa70034 	lw	a3,52(sp)
 af8:	8fa60030 	lw	a2,48(sp)
 afc:	0c000000 	jal	0 <shift64RightJamming>
 b00:	02802021 	addu	a0,s4,zero
 b04:	00408821 	addu	s1,v0,zero
 b08:	00609021 	addu	s2,v1,zero
  0xBFF0000000000000ULL,	/* -1.0 */
  0xBFE0000000000000ULL		/* -0.5 */
};

int
main ()
 b0c:	3c050000 	lui	a1,0x0
 b10:	24a50000 	addiu	a1,a1,0
 b14:	00b01021 	addu	v0,a1,s0
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_add (x1, x2);
	  main_result += (result != z_output[i]);
 b18:	8c560000 	lw	s6,0(v0)
 b1c:	8c570004 	lw	s7,4(v0)
 b20:	02d11826 	xor	v1,s6,s1
 b24:	02f21026 	xor	v0,s7,s2
 b28:	00621025 	or	v0,v1,v0
 b2c:	0002102b 	sltu	v0,zero,v0
 b30:	02629821 	addu	s3,s3,v0

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 b34:	02202021 	addu	a0,s1,zero
 b38:	0c000000 	jal	0 <shift64RightJamming>
 b3c:	02402821 	addu	a1,s2,zero
 b40:	8fa30034 	lw	v1,52(sp)
 b44:	8fa20030 	lw	v0,48(sp)
 b48:	afa30014 	sw	v1,20(sp)
 b4c:	afa20010 	sw	v0,16(sp)
 b50:	afb60018 	sw	s6,24(sp)
 b54:	afb7001c 	sw	s7,28(sp)
 b58:	afb10020 	sw	s1,32(sp)
 b5c:	afb20024 	sw	s2,36(sp)
 b60:	e7a0002c 	swc1	$f0,44(sp)
 b64:	e7a10028 	swc1	$f1,40(sp)
 b68:	3c040000 	lui	a0,0x0
 b6c:	24840000 	addiu	a0,a0,0
 b70:	02a03821 	addu	a3,s5,zero
 b74:	0c000000 	jal	0 <shift64RightJamming>
 b78:	02803021 	addu	a2,s4,zero
 b7c:	26100008 	addiu	s0,s0,8
{
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
 b80:	24030170 	addiu	v1,zero,368
 b84:	1603ffd1 	bne	s0,v1,acc <main+0x40>
 b88:	03d01021 	addu	v0,s8,s0
	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     a_input[i], b_input[i], z_output[i], result,
	     ullong_to_double (result));
	}
      printf ("%d\n", main_result);
 b8c:	3c040000 	lui	a0,0x0
 b90:	24840000 	addiu	a0,a0,0
 b94:	0c000000 	jal	0 <shift64RightJamming>
 b98:	02602821 	addu	a1,s3,zero
      return main_result;
    }
 b9c:	02601021 	addu	v0,s3,zero
 ba0:	8fbf005c 	lw	ra,92(sp)
 ba4:	8fbe0058 	lw	s8,88(sp)
 ba8:	8fb70054 	lw	s7,84(sp)
 bac:	8fb60050 	lw	s6,80(sp)
 bb0:	8fb5004c 	lw	s5,76(sp)
 bb4:	8fb40048 	lw	s4,72(sp)
 bb8:	8fb30044 	lw	s3,68(sp)
 bbc:	8fb20040 	lw	s2,64(sp)
 bc0:	8fb1003c 	lw	s1,60(sp)
 bc4:	8fb00038 	lw	s0,56(sp)
 bc8:	03e00008 	jr	ra
 bcc:	27bd0060 	addiu	sp,sp,96

Disassembly of section .rodata:

00000000 <a_input>:
   0:	7ff80000 	0x7ff80000
   4:	00000000 	sll	zero,zero,0x0
   8:	7ff00000 	0x7ff00000
   c:	00000000 	sll	zero,zero,0x0
  10:	40000000 	mfc0	zero,c0_index
  14:	00000000 	sll	zero,zero,0x0
  18:	40000000 	mfc0	zero,c0_index
  1c:	00000000 	sll	zero,zero,0x0
  20:	3ff00000 	0x3ff00000
  24:	00000000 	sll	zero,zero,0x0
  28:	3ff00000 	0x3ff00000
	...
  38:	3ff80000 	0x3ff80000
  3c:	00000000 	sll	zero,zero,0x0
  40:	7ff80000 	0x7ff80000
  44:	00000000 	sll	zero,zero,0x0
  48:	7ff00000 	0x7ff00000
	...
  58:	3ff80000 	0x3ff80000
  5c:	00000000 	sll	zero,zero,0x0
  60:	fff80000 	0xfff80000
  64:	00000000 	sll	zero,zero,0x0
  68:	fff00000 	0xfff00000
  6c:	00000000 	sll	zero,zero,0x0
  70:	c0000000 	lwc0	$0,0(zero)
  74:	00000000 	sll	zero,zero,0x0
  78:	c0000000 	lwc0	$0,0(zero)
  7c:	00000000 	sll	zero,zero,0x0
  80:	bff00000 	0xbff00000
  84:	00000000 	sll	zero,zero,0x0
  88:	bff00000 	0xbff00000
  8c:	00000000 	sll	zero,zero,0x0
  90:	80000000 	lb	zero,0(zero)
  94:	00000000 	sll	zero,zero,0x0
  98:	bff80000 	0xbff80000
  9c:	00000000 	sll	zero,zero,0x0
  a0:	fff80000 	0xfff80000
  a4:	00000000 	sll	zero,zero,0x0
  a8:	fff00000 	0xfff00000
  ac:	00000000 	sll	zero,zero,0x0
  b0:	80000000 	lb	zero,0(zero)
  b4:	00000000 	sll	zero,zero,0x0
  b8:	bff80000 	0xbff80000
  bc:	00000000 	sll	zero,zero,0x0
  c0:	7ff80000 	0x7ff80000
  c4:	00000000 	sll	zero,zero,0x0
  c8:	7ff00000 	0x7ff00000
  cc:	00000000 	sll	zero,zero,0x0
  d0:	3ff00000 	0x3ff00000
  d4:	00000000 	sll	zero,zero,0x0
  d8:	3ff00000 	0x3ff00000
  dc:	00000000 	sll	zero,zero,0x0
  e0:	3ff00000 	0x3ff00000
	...
  f0:	3ff80000 	0x3ff80000
  f4:	00000000 	sll	zero,zero,0x0
  f8:	7ff80000 	0x7ff80000
  fc:	00000000 	sll	zero,zero,0x0
 100:	7ff00000 	0x7ff00000
 104:	00000000 	sll	zero,zero,0x0
 108:	3ff00000 	0x3ff00000
 10c:	00000000 	sll	zero,zero,0x0
 110:	40000000 	mfc0	zero,c0_index
 114:	00000000 	sll	zero,zero,0x0
 118:	fff00000 	0xfff00000
 11c:	00000000 	sll	zero,zero,0x0
 120:	fff00000 	0xfff00000
 124:	00000000 	sll	zero,zero,0x0
 128:	bff00000 	0xbff00000
 12c:	00000000 	sll	zero,zero,0x0
 130:	bff00000 	0xbff00000
 134:	00000000 	sll	zero,zero,0x0
 138:	bff00000 	0xbff00000
 13c:	00000000 	sll	zero,zero,0x0
 140:	80000000 	lb	zero,0(zero)
 144:	00000000 	sll	zero,zero,0x0
 148:	bff80000 	0xbff80000
 14c:	00000000 	sll	zero,zero,0x0
 150:	fff80000 	0xfff80000
 154:	00000000 	sll	zero,zero,0x0
 158:	fff00000 	0xfff00000
 15c:	00000000 	sll	zero,zero,0x0
 160:	bff00000 	0xbff00000
 164:	00000000 	sll	zero,zero,0x0
 168:	c0000000 	lwc0	$0,0(zero)
 16c:	00000000 	sll	zero,zero,0x0

00000170 <b_input>:
 170:	3ff00000 	0x3ff00000
 174:	00000000 	sll	zero,zero,0x0
 178:	3ff00000 	0x3ff00000
	...
 188:	3ff80000 	0x3ff80000
 18c:	00000000 	sll	zero,zero,0x0
 190:	7ff80000 	0x7ff80000
 194:	00000000 	sll	zero,zero,0x0
 198:	7ff00000 	0x7ff00000
 19c:	00000000 	sll	zero,zero,0x0
 1a0:	40000000 	mfc0	zero,c0_index
 1a4:	00000000 	sll	zero,zero,0x0
 1a8:	40000000 	mfc0	zero,c0_index
 1ac:	00000000 	sll	zero,zero,0x0
 1b0:	7ff00000 	0x7ff00000
 1b4:	00000000 	sll	zero,zero,0x0
 1b8:	7ff00000 	0x7ff00000
	...
 1c8:	3ff00000 	0x3ff00000
 1cc:	00000000 	sll	zero,zero,0x0
 1d0:	bff00000 	0xbff00000
 1d4:	00000000 	sll	zero,zero,0x0
 1d8:	bff00000 	0xbff00000
 1dc:	00000000 	sll	zero,zero,0x0
 1e0:	80000000 	lb	zero,0(zero)
 1e4:	00000000 	sll	zero,zero,0x0
 1e8:	bff80000 	0xbff80000
 1ec:	00000000 	sll	zero,zero,0x0
 1f0:	fff80000 	0xfff80000
 1f4:	00000000 	sll	zero,zero,0x0
 1f8:	fff00000 	0xfff00000
 1fc:	00000000 	sll	zero,zero,0x0
 200:	c0000000 	lwc0	$0,0(zero)
 204:	00000000 	sll	zero,zero,0x0
 208:	c0000000 	lwc0	$0,0(zero)
 20c:	00000000 	sll	zero,zero,0x0
 210:	fff00000 	0xfff00000
 214:	00000000 	sll	zero,zero,0x0
 218:	fff00000 	0xfff00000
 21c:	00000000 	sll	zero,zero,0x0
 220:	80000000 	lb	zero,0(zero)
 224:	00000000 	sll	zero,zero,0x0
 228:	bff00000 	0xbff00000
 22c:	00000000 	sll	zero,zero,0x0
 230:	fff00000 	0xfff00000
 234:	00000000 	sll	zero,zero,0x0
 238:	fff00000 	0xfff00000
 23c:	00000000 	sll	zero,zero,0x0
 240:	bff00000 	0xbff00000
 244:	00000000 	sll	zero,zero,0x0
 248:	fff80000 	0xfff80000
 24c:	00000000 	sll	zero,zero,0x0
 250:	fff00000 	0xfff00000
 254:	00000000 	sll	zero,zero,0x0
 258:	bff00000 	0xbff00000
 25c:	00000000 	sll	zero,zero,0x0
 260:	c0000000 	lwc0	$0,0(zero)
 264:	00000000 	sll	zero,zero,0x0
 268:	bff00000 	0xbff00000
 26c:	00000000 	sll	zero,zero,0x0
 270:	bff00000 	0xbff00000
 274:	00000000 	sll	zero,zero,0x0
 278:	80000000 	lb	zero,0(zero)
 27c:	00000000 	sll	zero,zero,0x0
 280:	bff80000 	0xbff80000
 284:	00000000 	sll	zero,zero,0x0
 288:	7ff80000 	0x7ff80000
 28c:	00000000 	sll	zero,zero,0x0
 290:	7ff00000 	0x7ff00000
 294:	00000000 	sll	zero,zero,0x0
 298:	3ff00000 	0x3ff00000
 29c:	00000000 	sll	zero,zero,0x0
 2a0:	7ff80000 	0x7ff80000
 2a4:	00000000 	sll	zero,zero,0x0
 2a8:	7ff00000 	0x7ff00000
 2ac:	00000000 	sll	zero,zero,0x0
 2b0:	3ff00000 	0x3ff00000
 2b4:	00000000 	sll	zero,zero,0x0
 2b8:	40000000 	mfc0	zero,c0_index
 2bc:	00000000 	sll	zero,zero,0x0
 2c0:	3ff00000 	0x3ff00000
 2c4:	00000000 	sll	zero,zero,0x0
 2c8:	3ff00000 	0x3ff00000
	...
 2d8:	3ff80000 	0x3ff80000
 2dc:	00000000 	sll	zero,zero,0x0

000002e0 <z_output>:
 2e0:	7ff80000 	0x7ff80000
 2e4:	00000000 	sll	zero,zero,0x0
 2e8:	7ff00000 	0x7ff00000
 2ec:	00000000 	sll	zero,zero,0x0
 2f0:	40000000 	mfc0	zero,c0_index
 2f4:	00000000 	sll	zero,zero,0x0
 2f8:	400c0000 	mfc0	t4,c0_index
 2fc:	00000000 	sll	zero,zero,0x0
 300:	7ff80000 	0x7ff80000
 304:	00000000 	sll	zero,zero,0x0
 308:	7ff00000 	0x7ff00000
 30c:	00000000 	sll	zero,zero,0x0
 310:	40000000 	mfc0	zero,c0_index
 314:	00000000 	sll	zero,zero,0x0
 318:	400c0000 	mfc0	t4,c0_index
 31c:	00000000 	sll	zero,zero,0x0
 320:	7ff80000 	0x7ff80000
 324:	00000000 	sll	zero,zero,0x0
 328:	7ff00000 	0x7ff00000
	...
 338:	40040000 	mfc0	a0,c0_index
 33c:	00000000 	sll	zero,zero,0x0
 340:	fff80000 	0xfff80000
 344:	00000000 	sll	zero,zero,0x0
 348:	fff00000 	0xfff00000
 34c:	00000000 	sll	zero,zero,0x0
 350:	c0000000 	lwc0	$0,0(zero)
 354:	00000000 	sll	zero,zero,0x0
 358:	c00c0000 	lwc0	$12,0(zero)
 35c:	00000000 	sll	zero,zero,0x0
 360:	fff80000 	0xfff80000
 364:	00000000 	sll	zero,zero,0x0
 368:	fff00000 	0xfff00000
 36c:	00000000 	sll	zero,zero,0x0
 370:	c0000000 	lwc0	$0,0(zero)
 374:	00000000 	sll	zero,zero,0x0
 378:	c00c0000 	lwc0	$12,0(zero)
 37c:	00000000 	sll	zero,zero,0x0
 380:	fff80000 	0xfff80000
 384:	00000000 	sll	zero,zero,0x0
 388:	fff00000 	0xfff00000
 38c:	00000000 	sll	zero,zero,0x0
 390:	80000000 	lb	zero,0(zero)
 394:	00000000 	sll	zero,zero,0x0
 398:	c0040000 	lwc0	$4,0(zero)
 39c:	00000000 	sll	zero,zero,0x0
 3a0:	7ff80000 	0x7ff80000
 3a4:	00000000 	sll	zero,zero,0x0
 3a8:	7fffffff 	0x7fffffff
 3ac:	ffffffff 	0xffffffff
	...
 3b8:	fff80000 	0xfff80000
 3bc:	00000000 	sll	zero,zero,0x0
 3c0:	fff00000 	0xfff00000
 3c4:	00000000 	sll	zero,zero,0x0
 3c8:	bff00000 	0xbff00000
 3cc:	00000000 	sll	zero,zero,0x0
 3d0:	bfe00000 	0xbfe00000
 3d4:	00000000 	sll	zero,zero,0x0
 3d8:	7ff80000 	0x7ff80000
 3dc:	00000000 	sll	zero,zero,0x0
 3e0:	7ff00000 	0x7ff00000
 3e4:	00000000 	sll	zero,zero,0x0
 3e8:	3ff00000 	0x3ff00000
 3ec:	00000000 	sll	zero,zero,0x0
 3f0:	3fe00000 	0x3fe00000
 3f4:	00000000 	sll	zero,zero,0x0
 3f8:	7ff80000 	0x7ff80000
 3fc:	00000000 	sll	zero,zero,0x0
 400:	7fffffff 	0x7fffffff
 404:	ffffffff 	0xffffffff
	...
 410:	7ff80000 	0x7ff80000
 414:	00000000 	sll	zero,zero,0x0
 418:	7ff00000 	0x7ff00000
 41c:	00000000 	sll	zero,zero,0x0
 420:	3ff00000 	0x3ff00000
 424:	00000000 	sll	zero,zero,0x0
 428:	3fe00000 	0x3fe00000
 42c:	00000000 	sll	zero,zero,0x0
 430:	fff80000 	0xfff80000
 434:	00000000 	sll	zero,zero,0x0
 438:	fff00000 	0xfff00000
 43c:	00000000 	sll	zero,zero,0x0
 440:	bff00000 	0xbff00000
 444:	00000000 	sll	zero,zero,0x0
 448:	bfe00000 	0xbfe00000
 44c:	00000000 	sll	zero,zero,0x0

00000450 <countLeadingZerosHigh.2150>:
 450:	00000008 	jr	zero
 454:	00000007 	srav	zero,zero,zero
 458:	00000006 	srlv	zero,zero,zero
 45c:	00000006 	srlv	zero,zero,zero
 460:	00000005 	0x5
 464:	00000005 	0x5
 468:	00000005 	0x5
 46c:	00000005 	0x5
 470:	00000004 	sllv	zero,zero,zero
 474:	00000004 	sllv	zero,zero,zero
 478:	00000004 	sllv	zero,zero,zero
 47c:	00000004 	sllv	zero,zero,zero
 480:	00000004 	sllv	zero,zero,zero
 484:	00000004 	sllv	zero,zero,zero
 488:	00000004 	sllv	zero,zero,zero
 48c:	00000004 	sllv	zero,zero,zero
 490:	00000003 	sra	zero,zero,0x0
 494:	00000003 	sra	zero,zero,0x0
 498:	00000003 	sra	zero,zero,0x0
 49c:	00000003 	sra	zero,zero,0x0
 4a0:	00000003 	sra	zero,zero,0x0
 4a4:	00000003 	sra	zero,zero,0x0
 4a8:	00000003 	sra	zero,zero,0x0
 4ac:	00000003 	sra	zero,zero,0x0
 4b0:	00000003 	sra	zero,zero,0x0
 4b4:	00000003 	sra	zero,zero,0x0
 4b8:	00000003 	sra	zero,zero,0x0
 4bc:	00000003 	sra	zero,zero,0x0
 4c0:	00000003 	sra	zero,zero,0x0
 4c4:	00000003 	sra	zero,zero,0x0
 4c8:	00000003 	sra	zero,zero,0x0
 4cc:	00000003 	sra	zero,zero,0x0
 4d0:	00000002 	srl	zero,zero,0x0
 4d4:	00000002 	srl	zero,zero,0x0
 4d8:	00000002 	srl	zero,zero,0x0
 4dc:	00000002 	srl	zero,zero,0x0
 4e0:	00000002 	srl	zero,zero,0x0
 4e4:	00000002 	srl	zero,zero,0x0
 4e8:	00000002 	srl	zero,zero,0x0
 4ec:	00000002 	srl	zero,zero,0x0
 4f0:	00000002 	srl	zero,zero,0x0
 4f4:	00000002 	srl	zero,zero,0x0
 4f8:	00000002 	srl	zero,zero,0x0
 4fc:	00000002 	srl	zero,zero,0x0
 500:	00000002 	srl	zero,zero,0x0
 504:	00000002 	srl	zero,zero,0x0
 508:	00000002 	srl	zero,zero,0x0
 50c:	00000002 	srl	zero,zero,0x0
 510:	00000002 	srl	zero,zero,0x0
 514:	00000002 	srl	zero,zero,0x0
 518:	00000002 	srl	zero,zero,0x0
 51c:	00000002 	srl	zero,zero,0x0
 520:	00000002 	srl	zero,zero,0x0
 524:	00000002 	srl	zero,zero,0x0
 528:	00000002 	srl	zero,zero,0x0
 52c:	00000002 	srl	zero,zero,0x0
 530:	00000002 	srl	zero,zero,0x0
 534:	00000002 	srl	zero,zero,0x0
 538:	00000002 	srl	zero,zero,0x0
 53c:	00000002 	srl	zero,zero,0x0
 540:	00000002 	srl	zero,zero,0x0
 544:	00000002 	srl	zero,zero,0x0
 548:	00000002 	srl	zero,zero,0x0
 54c:	00000002 	srl	zero,zero,0x0
 550:	00000001 	0x1
 554:	00000001 	0x1
 558:	00000001 	0x1
 55c:	00000001 	0x1
 560:	00000001 	0x1
 564:	00000001 	0x1
 568:	00000001 	0x1
 56c:	00000001 	0x1
 570:	00000001 	0x1
 574:	00000001 	0x1
 578:	00000001 	0x1
 57c:	00000001 	0x1
 580:	00000001 	0x1
 584:	00000001 	0x1
 588:	00000001 	0x1
 58c:	00000001 	0x1
 590:	00000001 	0x1
 594:	00000001 	0x1
 598:	00000001 	0x1
 59c:	00000001 	0x1
 5a0:	00000001 	0x1
 5a4:	00000001 	0x1
 5a8:	00000001 	0x1
 5ac:	00000001 	0x1
 5b0:	00000001 	0x1
 5b4:	00000001 	0x1
 5b8:	00000001 	0x1
 5bc:	00000001 	0x1
 5c0:	00000001 	0x1
 5c4:	00000001 	0x1
 5c8:	00000001 	0x1
 5cc:	00000001 	0x1
 5d0:	00000001 	0x1
 5d4:	00000001 	0x1
 5d8:	00000001 	0x1
 5dc:	00000001 	0x1
 5e0:	00000001 	0x1
 5e4:	00000001 	0x1
 5e8:	00000001 	0x1
 5ec:	00000001 	0x1
 5f0:	00000001 	0x1
 5f4:	00000001 	0x1
 5f8:	00000001 	0x1
 5fc:	00000001 	0x1
 600:	00000001 	0x1
 604:	00000001 	0x1
 608:	00000001 	0x1
 60c:	00000001 	0x1
 610:	00000001 	0x1
 614:	00000001 	0x1
 618:	00000001 	0x1
 61c:	00000001 	0x1
 620:	00000001 	0x1
 624:	00000001 	0x1
 628:	00000001 	0x1
 62c:	00000001 	0x1
 630:	00000001 	0x1
 634:	00000001 	0x1
 638:	00000001 	0x1
 63c:	00000001 	0x1
 640:	00000001 	0x1
 644:	00000001 	0x1
 648:	00000001 	0x1
 64c:	00000001 	0x1
	...
