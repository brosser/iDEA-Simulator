
dfsin.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <propagateFloat64NaN>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
       0:	000414c2 	srl	v0,a0,0x13
       4:	30420fff 	andi	v0,v0,0xfff
       8:	24030ffe 	addiu	v1,zero,4094
       c:	1043002b 	beq	v0,v1,bc <propagateFloat64NaN+0xbc>
      10:	3c090007 	lui	t1,0x7
      14:	00004821 	addu	t1,zero,zero
      18:	00061cc2 	srl	v1,a2,0x13
      1c:	30630fff 	andi	v1,v1,0xfff
      20:	24020ffe 	addiu	v0,zero,4094
      24:	10620020 	beq	v1,v0,a8 <propagateFloat64NaN+0xa8>
      28:	3c080007 	lui	t0,0x7
      2c:	00004021 	addu	t0,zero,zero

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
      30:	3c020008 	lui	v0,0x8
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
      34:	01095025 	or	t2,t0,t1

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
      38:	00822025 	or	a0,a0,v0
  b |= LIT64 (0x0008000000000000);
      3c:	00e01821 	addu	v1,a3,zero
  if (aIsSignalingNaN | bIsSignalingNaN)
      40:	1540000f 	bnez	t2,80 <propagateFloat64NaN+0x80>
      44:	00c21025 	or	v0,a2,v0

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
      48:	00074fc2 	srl	t1,a3,0x1f
      4c:	00063040 	sll	a2,a2,0x1
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
      50:	3c08ffe0 	lui	t0,0xffe0

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
      54:	01263025 	or	a2,t1,a2
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
      58:	25090001 	addiu	t1,t0,1
      5c:	00c9482b 	sltu	t1,a2,t1
      60:	11200005 	beqz	t1,78 <propagateFloat64NaN+0x78>
      64:	00073840 	sll	a3,a3,0x1
      68:	14c80019 	bne	a2,t0,d0 <propagateFloat64NaN+0xd0>
      6c:	00000000 	sll	zero,zero,0x0
      70:	10e00017 	beqz	a3,d0 <propagateFloat64NaN+0xd0>
      74:	00000000 	sll	zero,zero,0x0

}
      78:	03e00008 	jr	ra
      7c:	00000000 	sll	zero,zero,0x0
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
      80:	8f8a0000 	lw	t2,0(gp)
      84:	00000000 	sll	zero,zero,0x0
      88:	354a0010 	ori	t2,t2,0x10
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
      8c:	1500fffa 	bnez	t0,78 <propagateFloat64NaN+0x78>
      90:	af8a0000 	sw	t2,0(gp)
      94:	1120ffec 	beqz	t1,48 <propagateFloat64NaN+0x48>
      98:	00000000 	sll	zero,zero,0x0
      9c:	00801021 	addu	v0,a0,zero
      a0:	03e00008 	jr	ra
      a4:	00a01821 	addu	v1,a1,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
      a8:	3508ffff 	ori	t0,t0,0xffff
      ac:	00c84024 	and	t0,a2,t0
      b0:	01074025 	or	t0,t0,a3
      b4:	0800000c 	j	30 <propagateFloat64NaN+0x30>
      b8:	0008402b 	sltu	t0,zero,t0
      bc:	3529ffff 	ori	t1,t1,0xffff
      c0:	00894824 	and	t1,a0,t1
      c4:	01254825 	or	t1,t1,a1
      c8:	08000006 	j	18 <propagateFloat64NaN+0x18>
      cc:	0009482b 	sltu	t1,zero,t1
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
      d0:	00801021 	addu	v0,a0,zero

}
      d4:	03e00008 	jr	ra
      d8:	00a01821 	addu	v1,a1,zero

000000dc <normalizeFloat64Subnormal>:
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
      dc:	10800021 	beqz	a0,164 <normalizeFloat64Subnormal+0x88>
      e0:	00a01021 	addu	v0,a1,zero
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
      e4:	00801021 	addu	v0,a0,zero
      e8:	2409fff5 	addiu	t1,zero,-11
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
      ec:	3c030001 	lui	v1,0x1
      f0:	0043182b 	sltu	v1,v0,v1
      f4:	10600003 	beqz	v1,104 <normalizeFloat64Subnormal+0x28>
      f8:	00001821 	addu	v1,zero,zero
    {
      shiftCount += 16;
      a <<= 16;
      fc:	00021400 	sll	v0,v0,0x10
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
     100:	24030010 	addiu	v1,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
     104:	3c080100 	lui	t0,0x100
     108:	0048402b 	sltu	t0,v0,t0
     10c:	11000003 	beqz	t0,11c <normalizeFloat64Subnormal+0x40>
     110:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
     114:	24630008 	addiu	v1,v1,8
      a <<= 8;
     118:	00021200 	sll	v0,v0,0x8
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
     11c:	00021602 	srl	v0,v0,0x18
     120:	3c080000 	lui	t0,0x0
     124:	25080240 	addiu	t0,t0,576
     128:	00021080 	sll	v0,v0,0x2
     12c:	00481021 	addu	v0,v0,t0
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
     130:	8c480000 	lw	t0,0(v0)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
     134:	00691021 	addu	v0,v1,t1
     138:	00481021 	addu	v0,v0,t0
  *zSigPtr = aSig << shiftCount;
     13c:	30430020 	andi	v1,v0,0x20
     140:	1060000a 	beqz	v1,16c <normalizeFloat64Subnormal+0x90>
     144:	00021827 	nor	v1,zero,v0
  *zExpPtr = 1 - shiftCount;
     148:	24030001 	addiu	v1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
     14c:	00452804 	sllv	a1,a1,v0
  *zExpPtr = 1 - shiftCount;
     150:	00621023 	subu	v0,v1,v0
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
     154:	ace50000 	sw	a1,0(a3)
     158:	ace00004 	sw	zero,4(a3)
  *zExpPtr = 1 - shiftCount;

}
     15c:	03e00008 	jr	ra
     160:	acc20000 	sw	v0,0(a2)
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
     164:	0800003b 	j	ec <normalizeFloat64Subnormal+0x10>
     168:	24090015 	addiu	t1,zero,21
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
     16c:	00054042 	srl	t0,a1,0x1
     170:	00681806 	srlv	v1,t0,v1
     174:	00442004 	sllv	a0,a0,v0
     178:	00832025 	or	a0,a0,v1
  *zExpPtr = 1 - shiftCount;
     17c:	24030001 	addiu	v1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
     180:	00452804 	sllv	a1,a1,v0
  *zExpPtr = 1 - shiftCount;
     184:	00621023 	subu	v0,v1,v0
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
     188:	ace40000 	sw	a0,0(a3)
     18c:	ace50004 	sw	a1,4(a3)
  *zExpPtr = 1 - shiftCount;

}
     190:	03e00008 	jr	ra
     194:	acc20000 	sw	v0,0(a2)

00000198 <roundAndPackFloat64>:
{
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
     198:	8f830000 	lw	v1,0(gp)
     19c:	00000000 	sll	zero,zero,0x0
  roundNearestEven = (roundingMode == float_round_nearest_even);
     1a0:	2c690001 	sltiu	t1,v1,1
  roundIncrement = 0x200;
  if (!roundNearestEven)
     1a4:	15200027 	bnez	t1,244 <roundAndPackFloat64+0xac>
     1a8:	24020001 	addiu	v0,zero,1
    {
      if (roundingMode == float_round_to_zero)
     1ac:	10620074 	beq	v1,v0,380 <roundAndPackFloat64+0x1e8>
     1b0:	00000000 	sll	zero,zero,0x0
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
     1b4:	10800070 	beqz	a0,378 <roundAndPackFloat64+0x1e0>
     1b8:	24020003 	addiu	v0,zero,3
	    {
	      if (roundingMode == float_round_up)
     1bc:	24020002 	addiu	v0,zero,2
     1c0:	10620021 	beq	v1,v0,248 <roundAndPackFloat64+0xb0>
     1c4:	00001821 	addu	v1,zero,zero
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
     1c8:	30a2ffff 	andi	v0,a1,0xffff
     1cc:	2c4207fd 	sltiu	v0,v0,2045
     1d0:	10400021 	beqz	v0,258 <roundAndPackFloat64+0xc0>
     1d4:	240303ff 	addiu	v1,zero,1023
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
     1d8:	00671021 	addu	v0,v1,a3
     1dc:	0043402b 	sltu	t0,v0,v1
     1e0:	00036fc3 	sra	t5,v1,0x1f
     1e4:	01064021 	addu	t0,t0,a2
     1e8:	00406021 	addu	t4,v0,zero
	      if (roundingMode == float_round_down)
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
     1ec:	30ea03ff 	andi	t2,a3,0x3ff
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
     1f0:	15400033 	bnez	t2,2c0 <roundAndPackFloat64+0x128>
     1f4:	240bffff 	addiu	t3,zero,-1
     1f8:	240affff 	addiu	t2,zero,-1
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
     1fc:	00081580 	sll	v0,t0,0x16
     200:	000c3a82 	srl	a3,t4,0xa
     204:	00473825 	or	a3,v0,a3
     208:	00084282 	srl	t0,t0,0xa
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
     20c:	010a3024 	and	a2,t0,t2
     210:	00eb3824 	and	a3,a3,t3
  if (zSig == 0)
     214:	00c71025 	or	v0,a2,a3
     218:	1040003f 	beqz	v0,318 <roundAndPackFloat64+0x180>
     21c:	00004821 	addu	t1,zero,zero
     220:	00004821 	addu	t1,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     224:	000427c0 	sll	a0,a0,0x1f
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
     228:	00054500 	sll	t0,a1,0x14

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     22c:	00e91821 	addu	v1,a3,t1
     230:	00c43021 	addu	a2,a2,a0
     234:	0067382b 	sltu	a3,v1,a3
     238:	00c84021 	addu	t0,a2,t0
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
    zExp = 0;
  return packFloat64 (zSign, zExp, zSig);

}
     23c:	03e00008 	jr	ra
     240:	00e81021 	addu	v0,a3,t0
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
  roundNearestEven = (roundingMode == float_round_nearest_even);
  roundIncrement = 0x200;
     244:	24030200 	addiu	v1,zero,512
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
     248:	30a2ffff 	andi	v0,a1,0xffff
     24c:	2c4207fd 	sltiu	v0,v0,2045
     250:	1440ffe2 	bnez	v0,1dc <roundAndPackFloat64+0x44>
     254:	00671021 	addu	v0,v1,a3
    {
      if ((0x7FD < zExp)
     258:	28a207fe 	slti	v0,a1,2046
     25c:	1040003b 	beqz	v0,34c <roundAndPackFloat64+0x1b4>
     260:	00000000 	sll	zero,zero,0x0
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
     264:	240207fd 	addiu	v0,zero,2045
     268:	10a20033 	beq	a1,v0,338 <roundAndPackFloat64+0x1a0>
     26c:	00671021 	addu	v0,v1,a3
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
	}
      if (zExp < 0)
     270:	04a1ffdb 	bgez	a1,1e0 <roundAndPackFloat64+0x48>
     274:	0043402b 	sltu	t0,v0,v1
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
     278:	00051023 	negu	v0,a1

  if (count == 0)
    {
      z = a;
    }
  else if (count < 64)
     27c:	28480040 	slti	t0,v0,64
     280:	11000041 	beqz	t0,388 <roundAndPackFloat64+0x1f0>
     284:	30480020 	andi	t0,v0,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     288:	11000058 	beqz	t0,3ec <roundAndPackFloat64+0x254>
     28c:	00024027 	nor	t0,zero,v0
     290:	00464006 	srlv	t0,a2,v0
     294:	00001021 	addu	v0,zero,zero
     298:	30aa0020 	andi	t2,a1,0x20
     29c:	1140004c 	beqz	t2,3d0 <roundAndPackFloat64+0x238>
     2a0:	30a5003f 	andi	a1,a1,0x3f
     2a4:	00a73004 	sllv	a2,a3,a1
     2a8:	00003821 	addu	a3,zero,zero
     2ac:	00c73825 	or	a3,a2,a3
     2b0:	0007382b 	sltu	a3,zero,a3
     2b4:	00403021 	addu	a2,v0,zero
     2b8:	080000e5 	j	394 <roundAndPackFloat64+0x1fc>
     2bc:	00e83825 	or	a3,a3,t0
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
     2c0:	8f880000 	lw	t0,0(gp)
    float_exception_flags |= float_flag_inexact;
     2c4:	394a0200 	xori	t2,t2,0x200
     2c8:	0047382b 	sltu	a3,v0,a3
     2cc:	2d4a0001 	sltiu	t2,t2,1
     2d0:	00cd3021 	addu	a2,a2,t5
     2d4:	01494824 	and	t1,t2,t1
     2d8:	35030001 	ori	v1,t0,0x1
     2dc:	00406021 	addu	t4,v0,zero
     2e0:	00e64021 	addu	t0,a3,a2
  zSig = (zSig + roundIncrement) >> 10;
     2e4:	00081580 	sll	v0,t0,0x16
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
     2e8:	00094827 	nor	t1,zero,t1
  zSig = (zSig + roundIncrement) >> 10;
     2ec:	000c3a82 	srl	a3,t4,0xa
     2f0:	00473825 	or	a3,v0,a3
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
     2f4:	01205821 	addu	t3,t1,zero
     2f8:	000957c3 	sra	t2,t1,0x1f
  zSig = (zSig + roundIncrement) >> 10;
     2fc:	00084282 	srl	t0,t0,0xa
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
     300:	010a3024 	and	a2,t0,t2
     304:	00eb3824 	and	a3,a3,t3
  if (zSig == 0)
     308:	00c71025 	or	v0,a2,a3
     30c:	1440ffc4 	bnez	v0,220 <roundAndPackFloat64+0x88>
     310:	af830000 	sw	v1,0(gp)
     314:	00004821 	addu	t1,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     318:	000427c0 	sll	a0,a0,0x1f
     31c:	00e91821 	addu	v1,a3,t1
     320:	00c43021 	addu	a2,a2,a0
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
     324:	00004021 	addu	t0,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     328:	0067382b 	sltu	a3,v1,a3
     32c:	00c84021 	addu	t0,a2,t0
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
    zExp = 0;
  return packFloat64 (zSign, zExp, zSig);

}
     330:	03e00008 	jr	ra
     334:	00e81021 	addu	v0,a3,t0
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
     338:	0043402b 	sltu	t0,v0,v1
     33c:	01064021 	addu	t0,t0,a2
     340:	00036fc3 	sra	t5,v1,0x1f
     344:	0501ffa9 	bgez	t0,1ec <roundAndPackFloat64+0x54>
     348:	00406021 	addu	t4,v0,zero
     34c:	8f860000 	lw	a2,0(gp)
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
     350:	2c630001 	sltiu	v1,v1,1

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     354:	000427c0 	sll	a0,a0,0x1f
     358:	3c027ff0 	lui	v0,0x7ff0
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
     35c:	00032823 	negu	a1,v1
     360:	34c60009 	ori	a2,a2,0x9

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     364:	00821021 	addu	v0,a0,v0
     368:	af860000 	sw	a2,0(gp)
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
     36c:	00451021 	addu	v0,v0,a1
     370:	03e00008 	jr	ra
     374:	00a01821 	addu	v1,a1,zero
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
     378:	1462ff94 	bne	v1,v0,1cc <roundAndPackFloat64+0x34>
     37c:	30a2ffff 	andi	v0,a1,0xffff
		roundIncrement = 0;
     380:	08000092 	j	248 <roundAndPackFloat64+0xb0>
     384:	00001821 	addu	v1,zero,zero
    }
  else
    {
      z = (a != 0);
     388:	00c73825 	or	a3,a2,a3
     38c:	0007382b 	sltu	a3,zero,a3
     390:	00003021 	addu	a2,zero,zero
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
	  roundBits = zSig & 0x3FF;
     394:	30ea03ff 	andi	t2,a3,0x3ff
	  if (isTiny && roundBits)
     398:	15400007 	bnez	t2,3b8 <roundAndPackFloat64+0x220>
     39c:	00e36021 	addu	t4,a3,v1
     3a0:	0187382b 	sltu	a3,t4,a3
     3a4:	00e64021 	addu	t0,a3,a2
     3a8:	240bffff 	addiu	t3,zero,-1
     3ac:	240affff 	addiu	t2,zero,-1
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
     3b0:	0800007f 	j	1fc <roundAndPackFloat64+0x64>
     3b4:	00002821 	addu	a1,zero,zero
     3b8:	8f880000 	lw	t0,0(gp)
     3bc:	00002821 	addu	a1,zero,zero
     3c0:	35080004 	ori	t0,t0,0x4
     3c4:	00036fc3 	sra	t5,v1,0x1f
     3c8:	080000b1 	j	2c4 <roundAndPackFloat64+0x12c>
     3cc:	00671021 	addu	v0,v1,a3
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     3d0:	00075842 	srl	t3,a3,0x1
     3d4:	00055027 	nor	t2,zero,a1
     3d8:	014b5006 	srlv	t2,t3,t2
     3dc:	00a63004 	sllv	a2,a2,a1
     3e0:	01463025 	or	a2,t2,a2
     3e4:	080000ab 	j	2ac <roundAndPackFloat64+0x114>
     3e8:	00a73804 	sllv	a3,a3,a1
     3ec:	00065040 	sll	t2,a2,0x1
     3f0:	010a5004 	sllv	t2,t2,t0
     3f4:	00474006 	srlv	t0,a3,v0
     3f8:	01484025 	or	t0,t2,t0
     3fc:	080000a6 	j	298 <roundAndPackFloat64+0x100>
     400:	00461006 	srlv	v0,a2,v0

00000404 <shift64RightJamming>:
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
     404:	10c00006 	beqz	a2,420 <shift64RightJamming+0x1c>
     408:	28c20040 	slti	v0,a2,64
    {
      z = a;
    }
  else if (count < 64)
     40c:	14400007 	bnez	v0,42c <shift64RightJamming+0x28>
     410:	00061823 	negu	v1,a2
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
    }
  else
    {
      z = (a != 0);
     414:	00852825 	or	a1,a0,a1
     418:	0005282b 	sltu	a1,zero,a1
     41c:	00002021 	addu	a0,zero,zero
    }
  *zPtr = z;
     420:	ace40000 	sw	a0,0(a3)

}
     424:	03e00008 	jr	ra
     428:	ace50004 	sw	a1,4(a3)
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     42c:	30620020 	andi	v0,v1,0x20
     430:	1040000d 	beqz	v0,468 <shift64RightJamming+0x64>
     434:	3063003f 	andi	v1,v1,0x3f
     438:	00651004 	sllv	v0,a1,v1
     43c:	00001821 	addu	v1,zero,zero
     440:	00431025 	or	v0,v0,v1
     444:	30c80020 	andi	t0,a2,0x20
     448:	11000011 	beqz	t0,490 <shift64RightJamming+0x8c>
     44c:	0002102b 	sltu	v0,zero,v0
     450:	00c42806 	srlv	a1,a0,a2
     454:	00452825 	or	a1,v0,a1
     458:	00002021 	addu	a0,zero,zero
    }
  else
    {
      z = (a != 0);
    }
  *zPtr = z;
     45c:	ace40000 	sw	a0,0(a3)

}
     460:	03e00008 	jr	ra
     464:	ace50004 	sw	a1,4(a3)
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     468:	00031027 	nor	v0,zero,v1
     46c:	00054042 	srl	t0,a1,0x1
     470:	00484006 	srlv	t0,t0,v0
     474:	00641004 	sllv	v0,a0,v1
     478:	01021025 	or	v0,t0,v0
     47c:	00651804 	sllv	v1,a1,v1
     480:	00431025 	or	v0,v0,v1
     484:	30c80020 	andi	t0,a2,0x20
     488:	1500fff1 	bnez	t0,450 <shift64RightJamming+0x4c>
     48c:	0002102b 	sltu	v0,zero,v0
     490:	00044040 	sll	t0,a0,0x1
     494:	00061827 	nor	v1,zero,a2
     498:	00681804 	sllv	v1,t0,v1
     49c:	00c52806 	srlv	a1,a1,a2
     4a0:	00652825 	or	a1,v1,a1
     4a4:	00c42006 	srlv	a0,a0,a2
     4a8:	08000117 	j	45c <shift64RightJamming+0x58>
     4ac:	00452825 	or	a1,v0,a1

000004b0 <shift64ExtraRightJamming>:
*----------------------------------------------------------------------------*/

INLINE void
shift64ExtraRightJamming (bits64 a0, bits64 a1, int16 count, bits64 * z0Ptr,
			  bits64 * z1Ptr)
{
     4b0:	8fa80010 	lw	t0,16(sp)
     4b4:	8fa90018 	lw	t1,24(sp)
  bits64 z0, z1;
  int8 negCount;
  negCount = (-count) & 63;

  if (count == 0)
     4b8:	11000025 	beqz	t0,550 <shift64ExtraRightJamming+0xa0>
     4bc:	29020040 	slti	v0,t0,64
    {
      z1 = a1;
      z0 = a0;
    }
  else if (count < 64)
     4c0:	1440000f 	bnez	v0,500 <shift64ExtraRightJamming+0x50>
     4c4:	24020040 	addiu	v0,zero,64
      z1 = (a0 << negCount) | (a1 != 0);
      z0 = a0 >> count;
    }
  else
    {
      if (count == 64)
     4c8:	11020041 	beq	t0,v0,5d0 <shift64ExtraRightJamming+0x120>
     4cc:	00001821 	addu	v1,zero,zero
	{
	  z1 = a0 | (a1 != 0);
	}
      else
	{
	  z1 = ((a0 | a1) != 0);
     4d0:	00c42025 	or	a0,a2,a0
     4d4:	00e53825 	or	a3,a3,a1
     4d8:	00873825 	or	a3,a0,a3
     4dc:	0007382b 	sltu	a3,zero,a3
     4e0:	00003021 	addu	a2,zero,zero
	}
      z0 = 0;
     4e4:	00001021 	addu	v0,zero,zero
    }
  *z1Ptr = z1;
  *z0Ptr = z0;
     4e8:	8fa40014 	lw	a0,20(sp)
	{
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
     4ec:	ad260000 	sw	a2,0(t1)
     4f0:	ad270004 	sw	a3,4(t1)
  *z0Ptr = z0;
     4f4:	ac830004 	sw	v1,4(a0)

}
     4f8:	03e00008 	jr	ra
     4fc:	ac820000 	sw	v0,0(a0)
shift64ExtraRightJamming (bits64 a0, bits64 a1, int16 count, bits64 * z0Ptr,
			  bits64 * z1Ptr)
{
  bits64 z0, z1;
  int8 negCount;
  negCount = (-count) & 63;
     500:	00081823 	negu	v1,t0
      z1 = a1;
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
     504:	30620020 	andi	v0,v1,0x20
     508:	10400019 	beqz	v0,570 <shift64ExtraRightJamming+0xc0>
     50c:	3063003f 	andi	v1,v1,0x3f
     510:	00c73825 	or	a3,a2,a3
     514:	00651004 	sllv	v0,a1,v1
     518:	0007382b 	sltu	a3,zero,a3
     51c:	00001821 	addu	v1,zero,zero
      z0 = a0 >> count;
     520:	310a0020 	andi	t2,t0,0x20
      z1 = a1;
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
     524:	00403021 	addu	a2,v0,zero
      z0 = a0 >> count;
     528:	1140001d 	beqz	t2,5a0 <shift64ExtraRightJamming+0xf0>
     52c:	00673825 	or	a3,v1,a3
     530:	01041806 	srlv	v1,a0,t0
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
  *z0Ptr = z0;
     534:	8fa40014 	lw	a0,20(sp)
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
      z0 = a0 >> count;
     538:	00001021 	addu	v0,zero,zero
	{
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
     53c:	ad260000 	sw	a2,0(t1)
     540:	ad270004 	sw	a3,4(t1)
  *z0Ptr = z0;
     544:	ac830004 	sw	v1,4(a0)

}
     548:	03e00008 	jr	ra
     54c:	ac820000 	sw	v0,0(a0)
  negCount = (-count) & 63;

  if (count == 0)
    {
      z1 = a1;
      z0 = a0;
     550:	00801021 	addu	v0,a0,zero
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
  *z0Ptr = z0;
     554:	8fa40014 	lw	a0,20(sp)
  negCount = (-count) & 63;

  if (count == 0)
    {
      z1 = a1;
      z0 = a0;
     558:	00a01821 	addu	v1,a1,zero
	{
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
     55c:	ad260000 	sw	a2,0(t1)
     560:	ad270004 	sw	a3,4(t1)
  *z0Ptr = z0;
     564:	ac830004 	sw	v1,4(a0)

}
     568:	03e00008 	jr	ra
     56c:	ac820000 	sw	v0,0(a0)
      z1 = a1;
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
     570:	00031027 	nor	v0,zero,v1
     574:	00055042 	srl	t2,a1,0x1
     578:	004a5006 	srlv	t2,t2,v0
     57c:	00c73825 	or	a3,a2,a3
     580:	00641004 	sllv	v0,a0,v1
     584:	01421025 	or	v0,t2,v0
     588:	00651804 	sllv	v1,a1,v1
     58c:	0007382b 	sltu	a3,zero,a3
      z0 = a0 >> count;
     590:	310a0020 	andi	t2,t0,0x20
      z1 = a1;
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
     594:	00403021 	addu	a2,v0,zero
      z0 = a0 >> count;
     598:	1540ffe5 	bnez	t2,530 <shift64ExtraRightJamming+0x80>
     59c:	00673825 	or	a3,v1,a3
     5a0:	00045840 	sll	t3,a0,0x1
     5a4:	00085027 	nor	t2,zero,t0
     5a8:	01041006 	srlv	v0,a0,t0
     5ac:	014b5004 	sllv	t2,t3,t2
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
  *z0Ptr = z0;
     5b0:	8fa40014 	lw	a0,20(sp)
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
      z0 = a0 >> count;
     5b4:	01051806 	srlv	v1,a1,t0
     5b8:	01431825 	or	v1,t2,v1
	{
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
     5bc:	ad260000 	sw	a2,0(t1)
     5c0:	ad270004 	sw	a3,4(t1)
  *z0Ptr = z0;
     5c4:	ac830004 	sw	v1,4(a0)

}
     5c8:	03e00008 	jr	ra
     5cc:	ac820000 	sw	v0,0(a0)
    }
  else
    {
      if (count == 64)
	{
	  z1 = a0 | (a1 != 0);
     5d0:	00c73825 	or	a3,a2,a3
     5d4:	0007382b 	sltu	a3,zero,a3
     5d8:	00803021 	addu	a2,a0,zero
     5dc:	00e53825 	or	a3,a3,a1
	}
      else
	{
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
     5e0:	0800013a 	j	4e8 <shift64ExtraRightJamming+0x38>
     5e4:	00001021 	addu	v0,zero,zero

000005e8 <add128>:
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     5e8:	8fa2001c 	lw	v0,28(sp)
  bits64 z1;

  z1 = a1 + b1;
     5ec:	8fa80018 	lw	t0,24(sp)
     5f0:	00474821 	addu	t1,v0,a3
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     5f4:	8faa0014 	lw	t2,20(sp)
  bits64 z1;

  z1 = a1 + b1;
     5f8:	0122102b 	sltu	v0,t1,v0
     5fc:	01064021 	addu	t0,t0,a2
     600:	00484021 	addu	t0,v0,t0
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     604:	8fa20010 	lw	v0,16(sp)
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     608:	8fa30024 	lw	v1,36(sp)
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     60c:	01452821 	addu	a1,t2,a1
     610:	00442021 	addu	a0,v0,a0
     614:	00aa502b 	sltu	t2,a1,t2
     618:	0106602b 	sltu	t4,t0,a2
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     61c:	8fab0020 	lw	t3,32(sp)
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     620:	01442021 	addu	a0,t2,a0
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
     624:	ac680000 	sw	t0,0(v1)
     628:	ac690004 	sw	t1,4(v1)
  *z0Ptr = a0 + b0 + (z1 < a1);
     62c:	00001021 	addu	v0,zero,zero
     630:	15800005 	bnez	t4,648 <add128+0x60>
     634:	24030001 	addiu	v1,zero,1
     638:	10c8000a 	beq	a2,t0,664 <add128+0x7c>
     63c:	00000000 	sll	zero,zero,0x0
     640:	00001821 	addu	v1,zero,zero
     644:	00001021 	addu	v0,zero,zero
     648:	00a33021 	addu	a2,a1,v1
     64c:	00c5282b 	sltu	a1,a2,a1
     650:	00821021 	addu	v0,a0,v0
     654:	00a21021 	addu	v0,a1,v0
     658:	ad620000 	sw	v0,0(t3)

}
     65c:	03e00008 	jr	ra
     660:	ad660004 	sw	a2,4(t3)
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     664:	0127382b 	sltu	a3,t1,a3
     668:	14e0fff8 	bnez	a3,64c <add128+0x64>
     66c:	00a33021 	addu	a2,a1,v1
     670:	08000191 	j	644 <add128+0x5c>
     674:	00001821 	addu	v1,zero,zero

00000678 <sub128>:
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     678:	8fa8001c 	lw	t0,28(sp)
     67c:	8fa90018 	lw	t1,24(sp)

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     680:	8faa0014 	lw	t2,20(sp)
     684:	8fa20010 	lw	v0,16(sp)
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     688:	00e85823 	subu	t3,a3,t0
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     68c:	8fa30024 	lw	v1,36(sp)

  *z1Ptr = a1 - b1;
     690:	00c96823 	subu	t5,a2,t1
     694:	00eb602b 	sltu	t4,a3,t3
  *z0Ptr = a0 - b0 - (a1 < b1);
     698:	00aa5023 	subu	t2,a1,t2
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     69c:	01ac6023 	subu	t4,t5,t4
  *z0Ptr = a0 - b0 - (a1 < b1);
     6a0:	00822023 	subu	a0,a0,v0
     6a4:	00aa282b 	sltu	a1,a1,t2
     6a8:	00c9702b 	sltu	t6,a2,t1
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     6ac:	8fad0020 	lw	t5,32(sp)

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     6b0:	00852023 	subu	a0,a0,a1
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     6b4:	ac6c0000 	sw	t4,0(v1)
     6b8:	ac6b0004 	sw	t3,4(v1)
  *z0Ptr = a0 - b0 - (a1 < b1);
     6bc:	00001021 	addu	v0,zero,zero
     6c0:	15c00005 	bnez	t6,6d8 <sub128+0x60>
     6c4:	24030001 	addiu	v1,zero,1
     6c8:	1126000a 	beq	t1,a2,6f4 <sub128+0x7c>
     6cc:	00000000 	sll	zero,zero,0x0
     6d0:	00001821 	addu	v1,zero,zero
     6d4:	00001021 	addu	v0,zero,zero
     6d8:	01432823 	subu	a1,t2,v1
     6dc:	0145502b 	sltu	t2,t2,a1
     6e0:	00821023 	subu	v0,a0,v0
     6e4:	004a1023 	subu	v0,v0,t2
     6e8:	ada20000 	sw	v0,0(t5)

}
     6ec:	03e00008 	jr	ra
     6f0:	ada50004 	sw	a1,4(t5)
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     6f4:	00e8402b 	sltu	t0,a3,t0
     6f8:	1500fff8 	bnez	t0,6dc <sub128+0x64>
     6fc:	01432823 	subu	a1,t2,v1
     700:	080001b5 	j	6d4 <sub128+0x5c>
     704:	00001821 	addu	v1,zero,zero

00000708 <mul64To128>:
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     708:	00c50019 	multu	a2,a1
| `z0Ptr' and `z1Ptr'.
*----------------------------------------------------------------------------*/

INLINE void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
     70c:	8fad0010 	lw	t5,16(sp)
     710:	8fae0014 	lw	t6,20(sp)
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     714:	00004812 	mflo	t1
     718:	00004010 	mfhi	t0
	...
  zMiddleB = ((bits64) aHigh) * bLow;
     724:	00870019 	multu	a0,a3
     728:	00001010 	mfhi	v0
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     72c:	01024021 	addu	t0,t0,v0
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
     730:	00001812 	mflo	v1
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     734:	01236021 	addu	t4,t1,v1
     738:	00000000 	sll	zero,zero,0x0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
     73c:	00e50019 	multu	a3,a1
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     740:	0189282b 	sltu	a1,t4,t1
     744:	00a84021 	addu	t0,a1,t0
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     748:	0102382b 	sltu	a3,t0,v0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
     74c:	00005812 	mflo	t3
     750:	00005010 	mfhi	t2
	...
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
     75c:	00c40019 	multu	a2,a0
     760:	00002812 	mflo	a1
     764:	00002010 	mfhi	a0
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     768:	14e00004 	bnez	a3,77c <mul64To128+0x74>
     76c:	24060001 	addiu	a2,zero,1
     770:	11020017 	beq	t0,v0,7d0 <mul64To128+0xc8>
     774:	0183102b 	sltu	v0,t4,v1
     778:	00003021 	addu	a2,zero,zero
  zMiddleA <<= 32;
  z1 += zMiddleA;
     77c:	018a7821 	addu	t7,t4,t2
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     780:	01054821 	addu	t1,t0,a1
     784:	0128402b 	sltu	t0,t1,t0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     788:	01ec602b 	sltu	t4,t7,t4
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
     78c:	01605021 	addu	t2,t3,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     790:	01042021 	addu	a0,t0,a0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     794:	24030001 	addiu	v1,zero,1
     798:	15800003 	bnez	t4,7a8 <mul64To128+0xa0>
     79c:	00001021 	addu	v0,zero,zero
     7a0:	00001821 	addu	v1,zero,zero
     7a4:	00001021 	addu	v0,zero,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     7a8:	01232821 	addu	a1,t1,v1
     7ac:	00a9482b 	sltu	t1,a1,t1
     7b0:	00821021 	addu	v0,a0,v0
     7b4:	01221021 	addu	v0,t1,v0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     7b8:	00463021 	addu	a2,v0,a2
  *z1Ptr = z1;
     7bc:	adcf0000 	sw	t7,0(t6)
     7c0:	adca0004 	sw	t2,4(t6)
  *z0Ptr = z0;
     7c4:	ada60000 	sw	a2,0(t5)

}
     7c8:	03e00008 	jr	ra
     7cc:	ada50004 	sw	a1,4(t5)
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     7d0:	1040ffe9 	beqz	v0,778 <mul64To128+0x70>
     7d4:	24060001 	addiu	a2,zero,1
  zMiddleA <<= 32;
  z1 += zMiddleA;
     7d8:	080001e0 	j	780 <mul64To128+0x78>
     7dc:	018a7821 	addu	t7,t4,t2

000007e0 <float_raise>:
     7e0:	8f820000 	lw	v0,0(gp)
     7e4:	00000000 	sll	zero,zero,0x0
     7e8:	00441025 	or	v0,v0,a0

}
     7ec:	03e00008 	jr	ra
     7f0:	af820000 	sw	v0,0(gp)

000007f4 <float64_is_nan>:

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     7f4:	000517c2 	srl	v0,a1,0x1f
     7f8:	00042040 	sll	a0,a0,0x1
     7fc:	3c03ffe0 	lui	v1,0xffe0
     800:	00442025 	or	a0,v0,a0
     804:	24660001 	addiu	a2,v1,1
     808:	0086302b 	sltu	a2,a0,a2
     80c:	00052840 	sll	a1,a1,0x1
     810:	10c00007 	beqz	a2,830 <float64_is_nan+0x3c>
     814:	24020001 	addiu	v0,zero,1
     818:	10830003 	beq	a0,v1,828 <float64_is_nan+0x34>
     81c:	00000000 	sll	zero,zero,0x0

}
     820:	03e00008 	jr	ra
     824:	00001021 	addu	v0,zero,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     828:	10a0fffd 	beqz	a1,820 <float64_is_nan+0x2c>
     82c:	00000000 	sll	zero,zero,0x0

}
     830:	03e00008 	jr	ra
     834:	00000000 	sll	zero,zero,0x0

00000838 <float64_is_signaling_nan>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     838:	000414c2 	srl	v0,a0,0x13
     83c:	30420fff 	andi	v0,v0,0xfff
     840:	24030ffe 	addiu	v1,zero,4094
     844:	10430003 	beq	v0,v1,854 <float64_is_signaling_nan+0x1c>
     848:	00000000 	sll	zero,zero,0x0

}
     84c:	03e00008 	jr	ra
     850:	00001021 	addu	v0,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     854:	3c020007 	lui	v0,0x7
     858:	3442ffff 	ori	v0,v0,0xffff
     85c:	00821024 	and	v0,a0,v0
     860:	00451025 	or	v0,v0,a1
     864:	03e00008 	jr	ra
     868:	0002102b 	sltu	v0,zero,v0

0000086c <extractFloat64Frac>:
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);

}
     86c:	3c02000f 	lui	v0,0xf
     870:	3442ffff 	ori	v0,v0,0xffff
     874:	00821024 	and	v0,a0,v0
     878:	03e00008 	jr	ra
     87c:	00a01821 	addu	v1,a1,zero

00000880 <extractFloat64Exp>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     880:	00041502 	srl	v0,a0,0x14

}
     884:	03e00008 	jr	ra
     888:	304207ff 	andi	v0,v0,0x7ff

0000088c <extractFloat64Sign>:
extractFloat64Sign (float64 a)
{

  return a >> 63;

}
     88c:	03e00008 	jr	ra
     890:	000417c2 	srl	v0,a0,0x1f

00000894 <packFloat64>:

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     894:	000427c0 	sll	a0,a0,0x1f
     898:	00c42021 	addu	a0,a2,a0
     89c:	00051500 	sll	v0,a1,0x14

}
     8a0:	00821021 	addu	v0,a0,v0
     8a4:	03e00008 	jr	ra
     8a8:	00e01821 	addu	v1,a3,zero

000008ac <int32_to_float64>:
  flag zSign;
  uint32 absA;
  int8 shiftCount;
  bits64 zSig;

  if (a == 0)
     8ac:	10800029 	beqz	a0,954 <int32_to_float64+0xa8>
     8b0:	000437c2 	srl	a2,a0,0x1f
    return 0;
  zSign = (a < 0);
  absA = zSign ? -a : a;
     8b4:	10c00002 	beqz	a2,8c0 <int32_to_float64+0x14>
     8b8:	3c020001 	lui	v0,0x1
     8bc:	00042023 	negu	a0,a0
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
     8c0:	0082102b 	sltu	v0,a0,v0
     8c4:	14400021 	bnez	v0,94c <int32_to_float64+0xa0>
     8c8:	00041c00 	sll	v1,a0,0x10
     8cc:	00801821 	addu	v1,a0,zero
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
     8d0:	00002821 	addu	a1,zero,zero
  if (a < 0x10000)
    {
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
     8d4:	3c020100 	lui	v0,0x100
     8d8:	0062102b 	sltu	v0,v1,v0
     8dc:	10400003 	beqz	v0,8ec <int32_to_float64+0x40>
     8e0:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
     8e4:	24a50008 	addiu	a1,a1,8
      a <<= 8;
     8e8:	00031a00 	sll	v1,v1,0x8
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
     8ec:	00031e02 	srl	v1,v1,0x18
     8f0:	3c020000 	lui	v0,0x0
     8f4:	24420240 	addiu	v0,v0,576
     8f8:	00031880 	sll	v1,v1,0x2
     8fc:	00621821 	addu	v1,v1,v0
  shiftCount = countLeadingZeros32 (absA) + 21;
     900:	8c630000 	lw	v1,0(v1)
     904:	24a20015 	addiu	v0,a1,21
     908:	00431021 	addu	v0,v0,v1
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);
     90c:	30430020 	andi	v1,v0,0x20
     910:	10600015 	beqz	v1,968 <int32_to_float64+0xbc>
     914:	00043842 	srl	a3,a0,0x1
     918:	00443804 	sllv	a3,a0,v0
     91c:	00001821 	addu	v1,zero,zero
     920:	24080432 	addiu	t0,zero,1074
     924:	01021023 	subu	v0,t0,v0

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     928:	000637c0 	sll	a2,a2,0x1f
     92c:	00e63021 	addu	a2,a3,a2
     930:	00021500 	sll	v0,v0,0x14
     934:	00c21021 	addu	v0,a2,v0
     938:	00402021 	addu	a0,v0,zero
     93c:	00602821 	addu	a1,v1,zero
  absA = zSign ? -a : a;
  shiftCount = countLeadingZeros32 (absA) + 21;
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);

}
     940:	00801021 	addu	v0,a0,zero
     944:	03e00008 	jr	ra
     948:	00a01821 	addu	v1,a1,zero
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
     94c:	08000235 	j	8d4 <int32_to_float64+0x28>
     950:	24050010 	addiu	a1,zero,16
  uint32 absA;
  int8 shiftCount;
  bits64 zSig;

  if (a == 0)
    return 0;
     954:	00002821 	addu	a1,zero,zero
     958:	00002021 	addu	a0,zero,zero
  absA = zSign ? -a : a;
  shiftCount = countLeadingZeros32 (absA) + 21;
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);

}
     95c:	00801021 	addu	v0,a0,zero
     960:	03e00008 	jr	ra
     964:	00a01821 	addu	v1,a1,zero
    return 0;
  zSign = (a < 0);
  absA = zSign ? -a : a;
  shiftCount = countLeadingZeros32 (absA) + 21;
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);
     968:	00021827 	nor	v1,zero,v0
     96c:	00673806 	srlv	a3,a3,v1
     970:	08000248 	j	920 <int32_to_float64+0x74>
     974:	00441804 	sllv	v1,a0,v0

00000978 <float64_add>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_add (float64 a, float64 b)
{
     978:	27bdfff8 	addiu	sp,sp,-8

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
     97c:	00046fc2 	srl	t5,a0,0x1f
     980:	000617c2 	srl	v0,a2,0x1f
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_add (float64 a, float64 b)
{
     984:	afb00004 	sw	s0,4(sp)
     988:	00a04821 	addu	t1,a1,zero
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
     98c:	11a200a2 	beq	t5,v0,c18 <float64_add+0x2a0>
     990:	00804021 	addu	t0,a0,zero

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     994:	3c03000f 	lui	v1,0xf
     998:	3463ffff 	ori	v1,v1,0xffff

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     99c:	00045d02 	srl	t3,a0,0x14
     9a0:	00067d02 	srl	t7,a2,0x14

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     9a4:	00831024 	and	v0,a0,v1

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     9a8:	316b07ff 	andi	t3,t3,0x7ff
     9ac:	31ef07ff 	andi	t7,t7,0x7ff

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     9b0:	00c31824 	and	v1,a2,v1
  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
  aSig <<= 10;
     9b4:	0005cd82 	srl	t9,a1,0x16
     9b8:	00021280 	sll	v0,v0,0xa
  bSig <<= 10;
     9bc:	0007c582 	srl	t8,a3,0x16
     9c0:	00031a80 	sll	v1,v1,0xa

  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
     9c4:	016f5023 	subu	t2,t3,t7
  aSig <<= 10;
     9c8:	03221025 	or	v0,t9,v0
     9cc:	00057280 	sll	t6,a1,0xa
  bSig <<= 10;
     9d0:	03031825 	or	v1,t8,v1
  if (0 < expDiff)
     9d4:	1940003d 	blez	t2,acc <float64_add+0x154>
     9d8:	00076280 	sll	t4,a3,0xa
  zSig = bSig - aSig;
  zExp = bExp;
  zSign ^= 1;
  goto normalizeRoundAndPack;
aExpBigger:
  if (aExp == 0x7FF)
     9dc:	241807ff 	addiu	t8,zero,2047
     9e0:	1178005e 	beq	t3,t8,b5c <float64_add+0x1e4>
     9e4:	00000000 	sll	zero,zero,0x0
    {
      if (aSig)
	return propagateFloat64NaN (a, b);
      return a;
    }
  if (bExp == 0)
     9e8:	15e00049 	bnez	t7,b10 <float64_add+0x198>
     9ec:	3c044000 	lui	a0,0x4000
    --expDiff;
     9f0:	254affff 	addiu	t2,t2,-1
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
     9f4:	15400048 	bnez	t2,b18 <float64_add+0x1a0>
     9f8:	29440040 	slti	a0,t2,64
  else
    bSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (bSig, expDiff, &bSig);
  aSig |= LIT64 (0x4000000000000000);
     9fc:	3c044000 	lui	a0,0x4000
     a00:	00441025 	or	v0,v0,a0
aBigger:
  zSig = aSig - bSig;
     a04:	01cc6023 	subu	t4,t6,t4
     a08:	01cc702b 	sltu	t6,t6,t4
     a0c:	00433023 	subu	a2,v0,v1
     a10:	00ce3023 	subu	a2,a2,t6
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
     a14:	10c00020 	beqz	a2,a98 <float64_add+0x120>
     a18:	256bffff 	addiu	t3,t3,-1
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
     a1c:	00c02021 	addu	a0,a2,zero
     a20:	2407ffff 	addiu	a3,zero,-1
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
     a24:	3c020001 	lui	v0,0x1
     a28:	0082102b 	sltu	v0,a0,v0
     a2c:	10400003 	beqz	v0,a3c <float64_add+0xc4>
     a30:	00004021 	addu	t0,zero,zero
    {
      shiftCount += 16;
      a <<= 16;
     a34:	00042400 	sll	a0,a0,0x10
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
     a38:	24080010 	addiu	t0,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
     a3c:	3c020100 	lui	v0,0x100
     a40:	0082102b 	sltu	v0,a0,v0
     a44:	10400003 	beqz	v0,a54 <float64_add+0xdc>
     a48:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
     a4c:	25080008 	addiu	t0,t0,8
      a <<= 8;
     a50:	00042200 	sll	a0,a0,0x8
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
     a54:	00042602 	srl	a0,a0,0x18
     a58:	3c020000 	lui	v0,0x0
     a5c:	24420240 	addiu	v0,v0,576
     a60:	00042080 	sll	a0,a0,0x2
     a64:	00822021 	addu	a0,a0,v0
static float64
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
     a68:	8c820000 	lw	v0,0(a0)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
     a6c:	01072021 	addu	a0,t0,a3
     a70:	00822021 	addu	a0,a0,v0
  return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
     a74:	30820020 	andi	v0,a0,0x20
     a78:	1040000a 	beqz	v0,aa4 <float64_add+0x12c>
     a7c:	01642823 	subu	a1,t3,a0
     a80:	008c3004 	sllv	a2,t4,a0
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);

}
     a84:	8fb00004 	lw	s0,4(sp)
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
  return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
     a88:	00003821 	addu	a3,zero,zero
     a8c:	01a02021 	addu	a0,t5,zero
     a90:	08000066 	j	198 <roundAndPackFloat64>
     a94:	27bd0008 	addiu	sp,sp,8
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
     a98:	01802021 	addu	a0,t4,zero
     a9c:	08000289 	j	a24 <float64_add+0xac>
     aa0:	2407001f 	addiu	a3,zero,31
     aa4:	00041027 	nor	v0,zero,a0
     aa8:	000c1842 	srl	v1,t4,0x1
     aac:	00863004 	sllv	a2,a2,a0
     ab0:	00431006 	srlv	v0,v1,v0
     ab4:	008c3804 	sllv	a3,t4,a0
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);

}
     ab8:	8fb00004 	lw	s0,4(sp)
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
  return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
     abc:	00463025 	or	a2,v0,a2
     ac0:	01a02021 	addu	a0,t5,zero
     ac4:	08000066 	j	198 <roundAndPackFloat64>
     ac8:	27bd0008 	addiu	sp,sp,8
  expDiff = aExp - bExp;
  aSig <<= 10;
  bSig <<= 10;
  if (0 < expDiff)
    goto aExpBigger;
  if (expDiff < 0)
     acc:	1540002f 	bnez	t2,b8c <float64_add+0x214>
     ad0:	240807ff 	addiu	t0,zero,2047
    goto bExpBigger;
  if (aExp == 0x7FF)
     ad4:	116800e7 	beq	t3,t0,e74 <float64_add+0x4fc>
     ad8:	00000000 	sll	zero,zero,0x0
      if (aSig | bSig)
	return propagateFloat64NaN (a, b);
      float_raise (float_flag_invalid);
      return float64_default_nan;
    }
  if (aExp == 0)
     adc:	15600003 	bnez	t3,aec <float64_add+0x174>
     ae0:	0062202b 	sltu	a0,v1,v0
    {
      aExp = 1;
      bExp = 1;
     ae4:	240f0001 	addiu	t7,zero,1
      float_raise (float_flag_invalid);
      return float64_default_nan;
    }
  if (aExp == 0)
    {
      aExp = 1;
     ae8:	240b0001 	addiu	t3,zero,1
      bExp = 1;
    }
  if (bSig < aSig)
     aec:	1480ffc5 	bnez	a0,a04 <float64_add+0x8c>
     af0:	00000000 	sll	zero,zero,0x0
     af4:	104300a8 	beq	v0,v1,d98 <float64_add+0x420>
     af8:	018e202b 	sltu	a0,t4,t6
    goto aBigger;
  if (aSig < bSig)
     afc:	0043202b 	sltu	a0,v0,v1
     b00:	108000ad 	beqz	a0,db8 <float64_add+0x440>
     b04:	01e05821 	addu	t3,t7,zero
     b08:	080002ff 	j	bfc <float64_add+0x284>
     b0c:	00000000 	sll	zero,zero,0x0
      return a;
    }
  if (bExp == 0)
    --expDiff;
  else
    bSig |= LIT64 (0x4000000000000000);
     b10:	00641825 	or	v1,v1,a0

  if (count == 0)
    {
      z = a;
    }
  else if (count < 64)
     b14:	29440040 	slti	a0,t2,64
     b18:	10800018 	beqz	a0,b7c <float64_add+0x204>
     b1c:	31440020 	andi	a0,t2,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     b20:	10800084 	beqz	a0,d34 <float64_add+0x3bc>
     b24:	000a2027 	nor	a0,zero,t2
     b28:	01432006 	srlv	a0,v1,t2
     b2c:	00003021 	addu	a2,zero,zero
     b30:	000a5023 	negu	t2,t2
     b34:	31450020 	andi	a1,t2,0x20
     b38:	10a00077 	beqz	a1,d18 <float64_add+0x3a0>
     b3c:	314a003f 	andi	t2,t2,0x3f
     b40:	014c1804 	sllv	v1,t4,t2
     b44:	00006021 	addu	t4,zero,zero
     b48:	006c6025 	or	t4,v1,t4
     b4c:	000c602b 	sltu	t4,zero,t4
     b50:	00c01821 	addu	v1,a2,zero
     b54:	0800027f 	j	9fc <float64_add+0x84>
     b58:	01846025 	or	t4,t4,a0
  zSign ^= 1;
  goto normalizeRoundAndPack;
aExpBigger:
  if (aExp == 0x7FF)
    {
      if (aSig)
     b5c:	004e7025 	or	t6,v0,t6
     b60:	15c0005d 	bnez	t6,cd8 <float64_add+0x360>
     b64:	00000000 	sll	zero,zero,0x0
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);

}
     b68:	01001021 	addu	v0,t0,zero
     b6c:	01201821 	addu	v1,t1,zero
     b70:	8fb00004 	lw	s0,4(sp)
     b74:	03e00008 	jr	ra
     b78:	27bd0008 	addiu	sp,sp,8
    }
  else
    {
      z = (a != 0);
     b7c:	006c6025 	or	t4,v1,t4
     b80:	000c602b 	sltu	t4,zero,t4
     b84:	0800027f 	j	9fc <float64_add+0x84>
     b88:	00001821 	addu	v1,zero,zero
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
bExpBigger:
  if (bExp == 0x7FF)
     b8c:	11e80096 	beq	t7,t0,de8 <float64_add+0x470>
     b90:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
    }
  if (aExp == 0)
     b94:	156000cb 	bnez	t3,ec4 <float64_add+0x54c>
     b98:	3c044000 	lui	a0,0x4000
    ++expDiff;
     b9c:	254a0001 	addiu	t2,t2,1
  else
    aSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (aSig, -expDiff, &aSig);
     ba0:	000a2023 	negu	a0,t2
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
     ba4:	10800012 	beqz	a0,bf0 <float64_add+0x278>
     ba8:	00000000 	sll	zero,zero,0x0
    {
      z = a;
    }
  else if (count < 64)
     bac:	28850040 	slti	a1,a0,64
     bb0:	10a000e0 	beqz	a1,f34 <float64_add+0x5bc>
     bb4:	00000000 	sll	zero,zero,0x0
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     bb8:	30850020 	andi	a1,a0,0x20
     bbc:	10a000e8 	beqz	a1,f60 <float64_add+0x5e8>
     bc0:	00042827 	nor	a1,zero,a0
     bc4:	00822806 	srlv	a1,v0,a0
     bc8:	00002021 	addu	a0,zero,zero
     bcc:	31460020 	andi	a2,t2,0x20
     bd0:	10c000dc 	beqz	a2,f44 <float64_add+0x5cc>
     bd4:	314a003f 	andi	t2,t2,0x3f
     bd8:	014e1004 	sllv	v0,t6,t2
     bdc:	00007021 	addu	t6,zero,zero
     be0:	004e7025 	or	t6,v0,t6
     be4:	000e702b 	sltu	t6,zero,t6
     be8:	00801021 	addu	v0,a0,zero
     bec:	01c57025 	or	t6,t6,a1
  bSig |= LIT64 (0x4000000000000000);
     bf0:	3c044000 	lui	a0,0x4000
     bf4:	00641825 	or	v1,v1,a0
     bf8:	01e05821 	addu	t3,t7,zero
bBigger:
  zSig = bSig - aSig;
     bfc:	018e3823 	subu	a3,t4,t6
     c00:	0187602b 	sltu	t4,t4,a3
     c04:	00623023 	subu	a2,v1,v0
     c08:	00cc3023 	subu	a2,a2,t4
  zExp = bExp;
  zSign ^= 1;
     c0c:	39ad0001 	xori	t5,t5,0x1
  else
    aSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (aSig, -expDiff, &aSig);
  bSig |= LIT64 (0x4000000000000000);
bBigger:
  zSig = bSig - aSig;
     c10:	08000285 	j	a14 <float64_add+0x9c>
     c14:	00e06021 	addu	t4,a3,zero

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     c18:	3c03000f 	lui	v1,0xf
     c1c:	3463ffff 	ori	v1,v1,0xffff

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     c20:	00045d02 	srl	t3,a0,0x14
     c24:	0006c502 	srl	t8,a2,0x14
     c28:	316b07ff 	andi	t3,t3,0x7ff
     c2c:	331807ff 	andi	t8,t8,0x7ff

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     c30:	00837024 	and	t6,a0,v1
     c34:	00c35024 	and	t2,a2,v1
  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
  aSig <<= 9;
     c38:	000585c2 	srl	s0,a1,0x17
     c3c:	000e7240 	sll	t6,t6,0x9
  bSig <<= 9;
     c40:	0007cdc2 	srl	t9,a3,0x17
     c44:	000a5240 	sll	t2,t2,0x9

  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
     c48:	01781023 	subu	v0,t3,t8
  aSig <<= 9;
     c4c:	020e7025 	or	t6,s0,t6
     c50:	00057a40 	sll	t7,a1,0x9
  bSig <<= 9;
     c54:	032a5025 	or	t2,t9,t2
  if (0 < expDiff)
     c58:	18400022 	blez	v0,ce4 <float64_add+0x36c>
     c5c:	00076240 	sll	t4,a3,0x9
    {
      if (aExp == 0x7FF)
     c60:	240307ff 	addiu	v1,zero,2047
     c64:	1163008f 	beq	t3,v1,ea4 <float64_add+0x52c>
     c68:	00000000 	sll	zero,zero,0x0
	{
	  if (aSig)
	    return propagateFloat64NaN (a, b);
	  return a;
	}
      if (bExp == 0)
     c6c:	17000037 	bnez	t8,d4c <float64_add+0x3d4>
     c70:	3c032000 	lui	v1,0x2000
	--expDiff;
     c74:	2442ffff 	addiu	v0,v0,-1
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
     c78:	14400036 	bnez	v0,d54 <float64_add+0x3dc>
     c7c:	28430040 	slti	v1,v0,64
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
     c80:	3c022000 	lui	v0,0x2000
  zSig = (aSig + bSig) << 1;
     c84:	01ec6021 	addu	t4,t7,t4
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
     c88:	01c27025 	or	t6,t6,v0
  zSig = (aSig + bSig) << 1;
     c8c:	018f782b 	sltu	t7,t4,t7
     c90:	01ca5021 	addu	t2,t6,t2
     c94:	01ea7821 	addu	t7,t7,t2
     c98:	000c17c2 	srl	v0,t4,0x1f
     c9c:	000f3040 	sll	a2,t7,0x1
     ca0:	00463025 	or	a2,v0,a2
  --zExp;
  if ((sbits64) zSig < 0)
     ca4:	04c00084 	bltz	a2,eb8 <float64_add+0x540>
     ca8:	000c3840 	sll	a3,t4,0x1
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
  zSig = (aSig + bSig) << 1;
  --zExp;
     cac:	256bffff 	addiu	t3,t3,-1
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);

}
     cb0:	8fb00004 	lw	s0,4(sp)
    {
      zSig = aSig + bSig;
      ++zExp;
    }
roundAndPack:
  return roundAndPackFloat64 (zSign, zExp, zSig);
     cb4:	01a02021 	addu	a0,t5,zero
     cb8:	01602821 	addu	a1,t3,zero
     cbc:	08000066 	j	198 <roundAndPackFloat64>
     cc0:	27bd0008 	addiu	sp,sp,8
    }
  else
    {
      if (aExp == 0x7FF)
	{
	  if (aSig | bSig)
     cc4:	014e5025 	or	t2,t2,t6
     cc8:	018f6025 	or	t4,t4,t7
     ccc:	014c5025 	or	t2,t2,t4
     cd0:	1140ffa6 	beqz	t2,b6c <float64_add+0x1f4>
     cd4:	01001021 	addu	v0,t0,zero
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);

}
     cd8:	8fb00004 	lw	s0,4(sp)
  goto normalizeRoundAndPack;
aExpBigger:
  if (aExp == 0x7FF)
    {
      if (aSig)
	return propagateFloat64NaN (a, b);
     cdc:	08000000 	j	0 <propagateFloat64NaN>
     ce0:	27bd0008 	addiu	sp,sp,8
      else
	bSig |= LIT64 (0x2000000000000000);
      shift64RightJamming (bSig, expDiff, &bSig);
      zExp = aExp;
    }
  else if (expDiff < 0)
     ce4:	14400049 	bnez	v0,e0c <float64_add+0x494>
     ce8:	240307ff 	addiu	v1,zero,2047
      shift64RightJamming (aSig, -expDiff, &aSig);
      zExp = bExp;
    }
  else
    {
      if (aExp == 0x7FF)
     cec:	240207ff 	addiu	v0,zero,2047
     cf0:	1162fff4 	beq	t3,v0,cc4 <float64_add+0x34c>
     cf4:	00000000 	sll	zero,zero,0x0
	{
	  if (aSig | bSig)
	    return propagateFloat64NaN (a, b);
	  return a;
	}
      if (aExp == 0)
     cf8:	11600081 	beqz	t3,f00 <float64_add+0x588>
     cfc:	3c024000 	lui	v0,0x4000
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
     d00:	01ec3821 	addu	a3,t7,t4
     d04:	01c21021 	addu	v0,t6,v0
     d08:	00ef782b 	sltu	t7,a3,t7
     d0c:	004a5021 	addu	t2,v0,t2
     d10:	0800032c 	j	cb0 <float64_add+0x338>
     d14:	01ea3021 	addu	a2,t7,t2
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     d18:	000c3842 	srl	a3,t4,0x1
     d1c:	000a2827 	nor	a1,zero,t2
     d20:	00a72806 	srlv	a1,a3,a1
     d24:	01431804 	sllv	v1,v1,t2
     d28:	00a31825 	or	v1,a1,v1
     d2c:	080002d2 	j	b48 <float64_add+0x1d0>
     d30:	014c6004 	sllv	t4,t4,t2
     d34:	00032840 	sll	a1,v1,0x1
     d38:	00852804 	sllv	a1,a1,a0
     d3c:	014c2006 	srlv	a0,t4,t2
     d40:	00a42025 	or	a0,a1,a0
     d44:	080002cc 	j	b30 <float64_add+0x1b8>
     d48:	01433006 	srlv	a2,v1,t2
	  return a;
	}
      if (bExp == 0)
	--expDiff;
      else
	bSig |= LIT64 (0x2000000000000000);
     d4c:	01435025 	or	t2,t2,v1

  if (count == 0)
    {
      z = a;
    }
  else if (count < 64)
     d50:	28430040 	slti	v1,v0,64
     d54:	10600014 	beqz	v1,da8 <float64_add+0x430>
     d58:	30430020 	andi	v1,v0,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     d5c:	10600062 	beqz	v1,ee8 <float64_add+0x570>
     d60:	00021827 	nor	v1,zero,v0
     d64:	004a1806 	srlv	v1,t2,v0
     d68:	00002021 	addu	a0,zero,zero
     d6c:	00021023 	negu	v0,v0
     d70:	30450020 	andi	a1,v0,0x20
     d74:	10a00055 	beqz	a1,ecc <float64_add+0x554>
     d78:	3042003f 	andi	v0,v0,0x3f
     d7c:	004c5004 	sllv	t2,t4,v0
     d80:	00006021 	addu	t4,zero,zero
     d84:	014c6025 	or	t4,t2,t4
     d88:	000c602b 	sltu	t4,zero,t4
     d8c:	00805021 	addu	t2,a0,zero
     d90:	08000320 	j	c80 <float64_add+0x308>
     d94:	01836025 	or	t4,t4,v1
  if (aExp == 0)
    {
      aExp = 1;
      bExp = 1;
    }
  if (bSig < aSig)
     d98:	1480ff1a 	bnez	a0,a04 <float64_add+0x8c>
     d9c:	0043202b 	sltu	a0,v0,v1
     da0:	080002c0 	j	b00 <float64_add+0x188>
     da4:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      z = (a != 0);
     da8:	014c6025 	or	t4,t2,t4
     dac:	000c602b 	sltu	t4,zero,t4
     db0:	08000320 	j	c80 <float64_add+0x308>
     db4:	00005021 	addu	t2,zero,zero
    goto aBigger;
  if (aSig < bSig)
     db8:	14620004 	bne	v1,v0,dcc <float64_add+0x454>
     dbc:	00000000 	sll	zero,zero,0x0
     dc0:	01cc202b 	sltu	a0,t6,t4
     dc4:	1480ff8d 	bnez	a0,bfc <float64_add+0x284>
     dc8:	01e05821 	addu	t3,t7,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     dcc:	8f820000 	lw	v0,0(gp)
    }
  if (bSig < aSig)
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
     dd0:	00004821 	addu	t1,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     dd4:	38420003 	xori	v0,v0,0x3
     dd8:	2c420001 	sltiu	v0,v0,1
    }
  if (bSig < aSig)
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
     ddc:	000217c0 	sll	v0,v0,0x1f
     de0:	080002da 	j	b68 <float64_add+0x1f0>
     de4:	00404021 	addu	t0,v0,zero
bExpBigger:
  if (bExp == 0x7FF)
    {
      if (bSig)
     de8:	006c6025 	or	t4,v1,t4
     dec:	1580ffba 	bnez	t4,cd8 <float64_add+0x360>
     df0:	39ad0001 	xori	t5,t5,0x1

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     df4:	000d6fc0 	sll	t5,t5,0x1f
     df8:	3c027ff0 	lui	v0,0x7ff0
bExpBigger:
  if (bExp == 0x7FF)
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
     dfc:	01a21021 	addu	v0,t5,v0
     e00:	00404021 	addu	t0,v0,zero
     e04:	080002da 	j	b68 <float64_add+0x1f0>
     e08:	00004821 	addu	t1,zero,zero
      shift64RightJamming (bSig, expDiff, &bSig);
      zExp = aExp;
    }
  else if (expDiff < 0)
    {
      if (bExp == 0x7FF)
     e0c:	1303005c 	beq	t8,v1,f80 <float64_add+0x608>
     e10:	00000000 	sll	zero,zero,0x0
	{
	  if (bSig)
	    return propagateFloat64NaN (a, b);
	  return packFloat64 (zSign, 0x7FF, 0);
	}
      if (aExp == 0)
     e14:	15600058 	bnez	t3,f78 <float64_add+0x600>
     e18:	3c032000 	lui	v1,0x2000
	++expDiff;
     e1c:	24420001 	addiu	v0,v0,1
      else
	{
	  aSig |= LIT64 (0x2000000000000000);
	}
      shift64RightJamming (aSig, -expDiff, &aSig);
     e20:	00021823 	negu	v1,v0
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
     e24:	1060ff96 	beqz	v1,c80 <float64_add+0x308>
     e28:	03005821 	addu	t3,t8,zero
    {
      z = a;
    }
  else if (count < 64)
     e2c:	28640040 	slti	a0,v1,64
     e30:	10800058 	beqz	a0,f94 <float64_add+0x61c>
     e34:	30640020 	andi	a0,v1,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     e38:	10800062 	beqz	a0,fc4 <float64_add+0x64c>
     e3c:	00032027 	nor	a0,zero,v1
     e40:	006e2006 	srlv	a0,t6,v1
     e44:	00001821 	addu	v1,zero,zero
     e48:	30450020 	andi	a1,v0,0x20
     e4c:	10a00056 	beqz	a1,fa8 <float64_add+0x630>
     e50:	3042003f 	andi	v0,v0,0x3f
     e54:	004f7004 	sllv	t6,t7,v0
     e58:	00007821 	addu	t7,zero,zero
     e5c:	01cf7825 	or	t7,t6,t7
     e60:	000f782b 	sltu	t7,zero,t7
     e64:	00607021 	addu	t6,v1,zero
     e68:	01e47825 	or	t7,t7,a0
     e6c:	08000320 	j	c80 <float64_add+0x308>
     e70:	03005821 	addu	t3,t8,zero
    goto aExpBigger;
  if (expDiff < 0)
    goto bExpBigger;
  if (aExp == 0x7FF)
    {
      if (aSig | bSig)
     e74:	00621025 	or	v0,v1,v0
     e78:	018e7025 	or	t6,t4,t6
     e7c:	004e6025 	or	t4,v0,t6
     e80:	1580ff95 	bnez	t4,cd8 <float64_add+0x360>
     e84:	3c087fff 	lui	t0,0x7fff
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
     e88:	8f820000 	lw	v0,0(gp)
     e8c:	00000000 	sll	zero,zero,0x0
     e90:	34420010 	ori	v0,v0,0x10
	return propagateFloat64NaN (a, b);
      float_raise (float_flag_invalid);
      return float64_default_nan;
     e94:	2409ffff 	addiu	t1,zero,-1
     e98:	3508ffff 	ori	t0,t0,0xffff
     e9c:	080002da 	j	b68 <float64_add+0x1f0>
     ea0:	af820000 	sw	v0,0(gp)
  bSig <<= 9;
  if (0 < expDiff)
    {
      if (aExp == 0x7FF)
	{
	  if (aSig)
     ea4:	01cf7825 	or	t7,t6,t7
     ea8:	11e0ff30 	beqz	t7,b6c <float64_add+0x1f4>
     eac:	01001021 	addu	v0,t0,zero
     eb0:	08000336 	j	cd8 <float64_add+0x360>
     eb4:	00000000 	sll	zero,zero,0x0
  aSig |= LIT64 (0x2000000000000000);
  zSig = (aSig + bSig) << 1;
  --zExp;
  if ((sbits64) zSig < 0)
    {
      zSig = aSig + bSig;
     eb8:	01e03021 	addu	a2,t7,zero
     ebc:	0800032c 	j	cb0 <float64_add+0x338>
     ec0:	01803821 	addu	a3,t4,zero
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
    }
  if (aExp == 0)
    ++expDiff;
  else
    aSig |= LIT64 (0x4000000000000000);
     ec4:	080002e8 	j	ba0 <float64_add+0x228>
     ec8:	00441025 	or	v0,v0,a0
     ecc:	000c3042 	srl	a2,t4,0x1
     ed0:	00022827 	nor	a1,zero,v0
     ed4:	00a62806 	srlv	a1,a2,a1
     ed8:	004a5004 	sllv	t2,t2,v0
     edc:	00aa5025 	or	t2,a1,t2
     ee0:	08000361 	j	d84 <float64_add+0x40c>
     ee4:	004c6004 	sllv	t4,t4,v0
     ee8:	000a2040 	sll	a0,t2,0x1
     eec:	00642004 	sllv	a0,a0,v1
     ef0:	004c1806 	srlv	v1,t4,v0
     ef4:	00831825 	or	v1,a0,v1
     ef8:	0800035b 	j	d6c <float64_add+0x3f4>
     efc:	004a2006 	srlv	a0,t2,v0
	  if (aSig | bSig)
	    return propagateFloat64NaN (a, b);
	  return a;
	}
      if (aExp == 0)
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
     f00:	018f7821 	addu	t7,t4,t7
     f04:	01ec602b 	sltu	t4,t7,t4
     f08:	014e5021 	addu	t2,t2,t6
     f0c:	018a5021 	addu	t2,t4,t2
     f10:	000a1242 	srl	v0,t2,0x9

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     f14:	000d6fc0 	sll	t5,t5,0x1f
	  if (aSig | bSig)
	    return propagateFloat64NaN (a, b);
	  return a;
	}
      if (aExp == 0)
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
     f18:	000a55c0 	sll	t2,t2,0x17
     f1c:	000f7a42 	srl	t7,t7,0x9

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     f20:	004d6821 	addu	t5,v0,t5
     f24:	014f5025 	or	t2,t2,t7
     f28:	01a04021 	addu	t0,t5,zero
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
     f2c:	080002da 	j	b68 <float64_add+0x1f0>
     f30:	01404821 	addu	t1,t2,zero
    }
  else
    {
      z = (a != 0);
     f34:	004e7025 	or	t6,v0,t6
     f38:	000e702b 	sltu	t6,zero,t6
     f3c:	080002fc 	j	bf0 <float64_add+0x278>
     f40:	00001021 	addu	v0,zero,zero
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     f44:	000e3842 	srl	a3,t6,0x1
     f48:	000a3027 	nor	a2,zero,t2
     f4c:	00c73006 	srlv	a2,a3,a2
     f50:	01421004 	sllv	v0,v0,t2
     f54:	00c21025 	or	v0,a2,v0
     f58:	080002f8 	j	be0 <float64_add+0x268>
     f5c:	014e7004 	sllv	t6,t6,t2
     f60:	00023040 	sll	a2,v0,0x1
     f64:	00a63004 	sllv	a2,a2,a1
     f68:	008e2806 	srlv	a1,t6,a0
     f6c:	00c52825 	or	a1,a2,a1
     f70:	080002f3 	j	bcc <float64_add+0x254>
     f74:	00822006 	srlv	a0,v0,a0
	}
      if (aExp == 0)
	++expDiff;
      else
	{
	  aSig |= LIT64 (0x2000000000000000);
     f78:	08000388 	j	e20 <float64_add+0x4a8>
     f7c:	01c37025 	or	t6,t6,v1
    }
  else if (expDiff < 0)
    {
      if (bExp == 0x7FF)
	{
	  if (bSig)
     f80:	014c6025 	or	t4,t2,t4
     f84:	1180ff9c 	beqz	t4,df8 <float64_add+0x480>
     f88:	000d6fc0 	sll	t5,t5,0x1f
     f8c:	08000336 	j	cd8 <float64_add+0x360>
     f90:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      z = (a != 0);
     f94:	01cf7825 	or	t7,t6,t7
     f98:	000f782b 	sltu	t7,zero,t7
     f9c:	00007021 	addu	t6,zero,zero
     fa0:	08000320 	j	c80 <float64_add+0x308>
     fa4:	03005821 	addu	t3,t8,zero
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     fa8:	000f3042 	srl	a2,t7,0x1
     fac:	00022827 	nor	a1,zero,v0
     fb0:	00a62806 	srlv	a1,a2,a1
     fb4:	004e7004 	sllv	t6,t6,v0
     fb8:	00ae7025 	or	t6,a1,t6
     fbc:	08000397 	j	e5c <float64_add+0x4e4>
     fc0:	004f7804 	sllv	t7,t7,v0
     fc4:	000e2840 	sll	a1,t6,0x1
     fc8:	00852804 	sllv	a1,a1,a0
     fcc:	006f2006 	srlv	a0,t7,v1
     fd0:	00a42025 	or	a0,a1,a0
     fd4:	08000392 	j	e48 <float64_add+0x4d0>
     fd8:	006e1806 	srlv	v1,t6,v1

00000fdc <float64_mul>:

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     fdc:	3c0c000f 	lui	t4,0xf
| for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_mul (float64 a, float64 b)
{
     fe0:	27bdffb0 	addiu	sp,sp,-80

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     fe4:	358cffff 	ori	t4,t4,0xffff

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     fe8:	00045502 	srl	t2,a0,0x14
     fec:	00064d02 	srl	t1,a2,0x14

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     ff0:	008c6824 	and	t5,a0,t4
| for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_mul (float64 a, float64 b)
{
     ff4:	afb00044 	sw	s0,68(sp)

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     ff8:	314a07ff 	andi	t2,t2,0x7ff

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     ffc:	00cc6024 	and	t4,a2,t4

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    1000:	312907ff 	andi	t1,t1,0x7ff

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    1004:	00868026 	xor	s0,a0,a2
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    1008:	240f07ff 	addiu	t7,zero,2047
| for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_mul (float64 a, float64 b)
{
    100c:	afbf004c 	sw	ra,76(sp)
    1010:	afb10048 	sw	s1,72(sp)
    1014:	00804021 	addu	t0,a0,zero
    1018:	00c01821 	addu	v1,a2,zero
    101c:	00e05821 	addu	t3,a3,zero
    1020:	00a07021 	addu	t6,a1,zero
  flag aSign, bSign, zSign;
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig0, zSig1;

  aSig = extractFloat64Frac (a);
    1024:	afad0020 	sw	t5,32(sp)
    1028:	afa50024 	sw	a1,36(sp)
  aExp = extractFloat64Exp (a);
    102c:	afaa0018 	sw	t2,24(sp)

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    1030:	00e01021 	addu	v0,a3,zero
  bits64 aSig, bSig, zSig0, zSig1;

  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
    1034:	afac0028 	sw	t4,40(sp)
    1038:	afa7002c 	sw	a3,44(sp)
  bExp = extractFloat64Exp (b);
    103c:	afa9001c 	sw	t1,28(sp)
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    1040:	114f0057 	beq	t2,t7,11a0 <float64_mul+0x1c4>
    1044:	001087c2 	srl	s0,s0,0x1f
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    1048:	112f006c 	beq	t1,t7,11fc <float64_mul+0x220>
    104c:	00000000 	sll	zero,zero,0x0
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (aExp == 0)
    1050:	1140000f 	beqz	t2,1090 <float64_mul+0xb4>
    1054:	00000000 	sll	zero,zero,0x0
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  if (bExp == 0)
    1058:	15200018 	bnez	t1,10bc <float64_mul+0xe0>
    105c:	01821825 	or	v1,t4,v0
    {
      if (bSig == 0)
    1060:	14600077 	bnez	v1,1240 <float64_mul+0x264>
    1064:	01802021 	addu	a0,t4,zero
	return packFloat64 (zSign, 0, 0);
    1068:	001087c0 	sll	s0,s0,0x1f
    106c:	02002021 	addu	a0,s0,zero
    1070:	00002821 	addu	a1,zero,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
    1074:	8fbf004c 	lw	ra,76(sp)
    1078:	00801021 	addu	v0,a0,zero
    107c:	00a01821 	addu	v1,a1,zero
    1080:	8fb10048 	lw	s1,72(sp)
    1084:	8fb00044 	lw	s0,68(sp)
    1088:	03e00008 	jr	ra
    108c:	27bd0050 	addiu	sp,sp,80
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (aExp == 0)
    {
      if (aSig == 0)
    1090:	01a57025 	or	t6,t5,a1
    1094:	11c0fff4 	beqz	t6,1068 <float64_mul+0x8c>
    1098:	01a02021 	addu	a0,t5,zero
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    109c:	27a60018 	addiu	a2,sp,24
    10a0:	0c000037 	jal	dc <normalizeFloat64Subnormal>
    10a4:	27a70020 	addiu	a3,sp,32
    10a8:	8fa9001c 	lw	t1,28(sp)
    10ac:	8fac0028 	lw	t4,40(sp)
    10b0:	8fa2002c 	lw	v0,44(sp)
    }
  if (bExp == 0)
    10b4:	1120ffea 	beqz	t1,1060 <float64_mul+0x84>
    10b8:	01821825 	or	v1,t4,v0
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    10bc:	8fa30020 	lw	v1,32(sp)
    10c0:	8fa80024 	lw	t0,36(sp)
    10c4:	3c0b0010 	lui	t3,0x10
    10c8:	006b1825 	or	v1,v1,t3
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    10cc:	018b6025 	or	t4,t4,t3
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    10d0:	00082d82 	srl	a1,t0,0x16
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    10d4:	00022542 	srl	a0,v0,0x15
    {
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
    10d8:	8fb10018 	lw	s1,24(sp)
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    10dc:	000212c0 	sll	v0,v0,0xb
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    10e0:	00031a80 	sll	v1,v1,0xa
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    10e4:	000c62c0 	sll	t4,t4,0xb
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    10e8:	00a31825 	or	v1,a1,v1
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    10ec:	008c6025 	or	t4,a0,t4
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    10f0:	00084280 	sll	t0,t0,0xa
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
    10f4:	00403821 	addu	a3,v0,zero
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    10f8:	afa2002c 	sw	v0,44(sp)
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
    10fc:	27a20030 	addiu	v0,sp,48
    1100:	00602021 	addu	a0,v1,zero
    1104:	01803021 	addu	a2,t4,zero
    1108:	afa20010 	sw	v0,16(sp)
    {
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
    110c:	2631fc01 	addiu	s1,s1,-1023
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
    1110:	27a20038 	addiu	v0,sp,56
    1114:	01002821 	addu	a1,t0,zero
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    1118:	afa30020 	sw	v1,32(sp)
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
    111c:	afa20014 	sw	v0,20(sp)
    {
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
    1120:	02298821 	addu	s1,s1,t1
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    1124:	afa80024 	sw	t0,36(sp)
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
    1128:	0c000000 	jal	0 <propagateFloat64NaN>
    112c:	afac0028 	sw	t4,40(sp)
  zSig0 |= (zSig1 != 0);
    1130:	8fa30038 	lw	v1,56(sp)
    1134:	8fa2003c 	lw	v0,60(sp)
    1138:	8fa40034 	lw	a0,52(sp)
    113c:	00621025 	or	v0,v1,v0
    1140:	0002102b 	sltu	v0,zero,v0
    1144:	8fa30030 	lw	v1,48(sp)
    1148:	00821025 	or	v0,a0,v0
  if (0 <= (sbits64) (zSig0 << 1))
    114c:	000227c2 	srl	a0,v0,0x1f
    1150:	00033040 	sll	a2,v1,0x1
    1154:	00863025 	or	a2,a0,a2
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
  zSig0 |= (zSig1 != 0);
    1158:	afa20034 	sw	v0,52(sp)
  if (0 <= (sbits64) (zSig0 << 1))
    115c:	04c0004c 	bltz	a2,1290 <float64_mul+0x2b4>
    1160:	00023840 	sll	a3,v0,0x1
    {
      zSig0 <<= 1;
    1164:	afa60030 	sw	a2,48(sp)
    1168:	afa70034 	sw	a3,52(sp)
      --zExp;
    116c:	2631ffff 	addiu	s1,s1,-1
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);
    1170:	02002021 	addu	a0,s0,zero
    1174:	0c000066 	jal	198 <roundAndPackFloat64>
    1178:	02202821 	addu	a1,s1,zero

}
    117c:	8fbf004c 	lw	ra,76(sp)
  if (0 <= (sbits64) (zSig0 << 1))
    {
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);
    1180:	00602821 	addu	a1,v1,zero
    1184:	00402021 	addu	a0,v0,zero

}
    1188:	00801021 	addu	v0,a0,zero
    118c:	00a01821 	addu	v1,a1,zero
    1190:	8fb10048 	lw	s1,72(sp)
    1194:	8fb00044 	lw	s0,68(sp)
    1198:	03e00008 	jr	ra
    119c:	27bd0050 	addiu	sp,sp,80
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    {
      if (aSig || ((bExp == 0x7FF) && bSig))
    11a0:	01a56825 	or	t5,t5,a1
    11a4:	15a00033 	bnez	t5,1274 <float64_mul+0x298>
    11a8:	01002021 	addu	a0,t0,zero
    11ac:	112a002d 	beq	t1,t2,1264 <float64_mul+0x288>
    11b0:	000917c3 	sra	v0,t1,0x1f
	return propagateFloat64NaN (a, b);
      if ((bExp | bSig) == 0)
    11b4:	004c6025 	or	t4,v0,t4
    11b8:	01274825 	or	t1,t1,a3
    11bc:	01894825 	or	t1,t4,t1
    11c0:	15200014 	bnez	t1,1214 <float64_mul+0x238>
    11c4:	001087c0 	sll	s0,s0,0x1f
    11c8:	8f820000 	lw	v0,0(gp)
      if (bSig)
	return propagateFloat64NaN (a, b);
      if ((aExp | aSig) == 0)
	{
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
    11cc:	3c047fff 	lui	a0,0x7fff
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
    11d0:	8fbf004c 	lw	ra,76(sp)
    11d4:	34420010 	ori	v0,v0,0x10
      if (bSig)
	return propagateFloat64NaN (a, b);
      if ((aExp | aSig) == 0)
	{
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
    11d8:	2405ffff 	addiu	a1,zero,-1
    11dc:	3484ffff 	ori	a0,a0,0xffff
    11e0:	af820000 	sw	v0,0(gp)
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
    11e4:	00a01821 	addu	v1,a1,zero
    11e8:	00801021 	addu	v0,a0,zero
    11ec:	8fb10048 	lw	s1,72(sp)
    11f0:	8fb00044 	lw	s0,68(sp)
    11f4:	03e00008 	jr	ra
    11f8:	27bd0050 	addiu	sp,sp,80
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
    11fc:	01875825 	or	t3,t4,a3
    1200:	15600026 	bnez	t3,129c <float64_mul+0x2c0>
    1204:	01455025 	or	t2,t2,a1
	return propagateFloat64NaN (a, b);
      if ((aExp | aSig) == 0)
    1208:	01aa6825 	or	t5,t5,t2
    120c:	11a0ffee 	beqz	t5,11c8 <float64_mul+0x1ec>
    1210:	001087c0 	sll	s0,s0,0x1f

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
    1214:	3c027ff0 	lui	v0,0x7ff0
      if ((aExp | aSig) == 0)
	{
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    1218:	02021021 	addu	v0,s0,v0
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
    121c:	8fbf004c 	lw	ra,76(sp)
      if ((aExp | aSig) == 0)
	{
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    1220:	00402021 	addu	a0,v0,zero
    1224:	00002821 	addu	a1,zero,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
    1228:	00801021 	addu	v0,a0,zero
    122c:	00a01821 	addu	v1,a1,zero
    1230:	8fb10048 	lw	s1,72(sp)
    1234:	8fb00044 	lw	s0,68(sp)
    1238:	03e00008 	jr	ra
    123c:	27bd0050 	addiu	sp,sp,80
    }
  if (bExp == 0)
    {
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    1240:	00402821 	addu	a1,v0,zero
    1244:	27a6001c 	addiu	a2,sp,28
    1248:	0c000037 	jal	dc <normalizeFloat64Subnormal>
    124c:	27a70028 	addiu	a3,sp,40
    1250:	8fa9001c 	lw	t1,28(sp)
    1254:	8fac0028 	lw	t4,40(sp)
    1258:	8fa2002c 	lw	v0,44(sp)
    125c:	0800042f 	j	10bc <float64_mul+0xe0>
    1260:	00000000 	sll	zero,zero,0x0
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    {
      if (aSig || ((bExp == 0x7FF) && bSig))
    1264:	01876025 	or	t4,t4,a3
    1268:	1180ffea 	beqz	t4,1214 <float64_mul+0x238>
    126c:	001087c0 	sll	s0,s0,0x1f
	return propagateFloat64NaN (a, b);
    1270:	01002021 	addu	a0,t0,zero
    1274:	01c02821 	addu	a1,t6,zero
    1278:	00603021 	addu	a2,v1,zero
    127c:	0c000000 	jal	0 <propagateFloat64NaN>
    1280:	01603821 	addu	a3,t3,zero
    1284:	00602821 	addu	a1,v1,zero
    1288:	0800041d 	j	1074 <float64_mul+0x98>
    128c:	00402021 	addu	a0,v0,zero
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
  zSig0 |= (zSig1 != 0);
  if (0 <= (sbits64) (zSig0 << 1))
    1290:	00603021 	addu	a2,v1,zero
    1294:	0800045c 	j	1170 <float64_mul+0x194>
    1298:	00403821 	addu	a3,v0,zero
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
    129c:	0c000000 	jal	0 <propagateFloat64NaN>
    12a0:	00000000 	sll	zero,zero,0x0
    12a4:	00602821 	addu	a1,v1,zero
    12a8:	0800041d 	j	1074 <float64_mul+0x98>
    12ac:	00402021 	addu	a0,v0,zero

000012b0 <float64_div>:
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
    12b0:	27bdff88 	addiu	sp,sp,-120

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    12b4:	3c09000f 	lui	t1,0xf
    12b8:	3529ffff 	ori	t1,t1,0xffff
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
    12bc:	afb30060 	sw	s3,96(sp)

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    12c0:	00064502 	srl	t0,a2,0x14
    12c4:	00049d02 	srl	s3,a0,0x14
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
    12c8:	afb50068 	sw	s5,104(sp)
    12cc:	afb2005c 	sw	s2,92(sp)

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    12d0:	0089a824 	and	s5,a0,t1

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    12d4:	327307ff 	andi	s3,s3,0x7ff

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    12d8:	00c94824 	and	t1,a2,t1

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    12dc:	310807ff 	andi	t0,t0,0x7ff

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    12e0:	00869026 	xor	s2,a0,a2
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    12e4:	240a07ff 	addiu	t2,zero,2047
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
    12e8:	afbf0074 	sw	ra,116(sp)
    12ec:	afb70070 	sw	s7,112(sp)
    12f0:	afb6006c 	sw	s6,108(sp)
    12f4:	afb40064 	sw	s4,100(sp)
    12f8:	afb10058 	sw	s1,88(sp)
    12fc:	afb00054 	sw	s0,84(sp)

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    1300:	00a06021 	addu	t4,a1,zero
  flag aSign, bSign, zSign;
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  bits64 rem0, rem1, term0, term1;

  aSig = extractFloat64Frac (a);
    1304:	afb50020 	sw	s5,32(sp)
    1308:	afa50024 	sw	a1,36(sp)
  aExp = extractFloat64Exp (a);
    130c:	afb30018 	sw	s3,24(sp)
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
    1310:	afa90028 	sw	t1,40(sp)
    1314:	afa7002c 	sw	a3,44(sp)
  bExp = extractFloat64Exp (b);
    1318:	afa8001c 	sw	t0,28(sp)
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    131c:	126a00c5 	beq	s3,t2,1634 <float64_div+0x384>
    1320:	001297c2 	srl	s2,s2,0x1f
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    1324:	110a00cd 	beq	t0,t2,165c <float64_div+0x3ac>
    1328:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
      return packFloat64 (zSign, 0, 0);
    }
  if (bExp == 0)
    132c:	15000017 	bnez	t0,138c <float64_div+0xdc>
    1330:	01271025 	or	v0,t1,a3
    {
      if (bSig == 0)
    1334:	1440000d 	bnez	v0,136c <float64_div+0xbc>
    1338:	001317c3 	sra	v0,s3,0x1f
	{
	  if ((aExp | aSig) == 0)
    133c:	0055a825 	or	s5,v0,s5
    1340:	02659825 	or	s3,s3,a1
    1344:	02b39825 	or	s3,s5,s3
    1348:	16600101 	bnez	s3,1750 <float64_div+0x4a0>
    134c:	001297c0 	sll	s2,s2,0x1f
    1350:	8f820000 	lw	v0,0(gp)
	    {
	      float_raise (float_flag_invalid);
	      return float64_default_nan;
    1354:	3c047fff 	lui	a0,0x7fff
    1358:	34420010 	ori	v0,v0,0x10
    135c:	2405ffff 	addiu	a1,zero,-1
    1360:	3484ffff 	ori	a0,a0,0xffff
    1364:	0800059d 	j	1674 <float64_div+0x3c4>
    1368:	af820000 	sw	v0,0(gp)
	    }
	  float_raise (float_flag_divbyzero);
	  return packFloat64 (zSign, 0x7FF, 0);
	}
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    136c:	00e02821 	addu	a1,a3,zero
    1370:	01202021 	addu	a0,t1,zero
    1374:	27a6001c 	addiu	a2,sp,28
    1378:	0c000037 	jal	dc <normalizeFloat64Subnormal>
    137c:	27a70028 	addiu	a3,sp,40
    1380:	8fb30018 	lw	s3,24(sp)
    1384:	8fb50020 	lw	s5,32(sp)
    1388:	8fac0024 	lw	t4,36(sp)
    }
  if (aExp == 0)
    138c:	1660000c 	bnez	s3,13c0 <float64_div+0x110>
    1390:	3c020010 	lui	v0,0x10
    {
      if (aSig == 0)
    1394:	02ac1025 	or	v0,s5,t4
    1398:	104000b3 	beqz	v0,1668 <float64_div+0x3b8>
    139c:	02a02021 	addu	a0,s5,zero
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    13a0:	01802821 	addu	a1,t4,zero
    13a4:	27a60018 	addiu	a2,sp,24
    13a8:	0c000037 	jal	dc <normalizeFloat64Subnormal>
    13ac:	27a70020 	addiu	a3,sp,32
    13b0:	8fb30018 	lw	s3,24(sp)
    13b4:	8fb50020 	lw	s5,32(sp)
    13b8:	8fac0024 	lw	t4,36(sp)
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    13bc:	3c020010 	lui	v0,0x10
    13c0:	02a2a825 	or	s5,s5,v0
    13c4:	000c2582 	srl	a0,t4,0x16
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    13c8:	8fb60028 	lw	s6,40(sp)
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    13cc:	0015aa80 	sll	s5,s5,0xa
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    13d0:	8fb7002c 	lw	s7,44(sp)
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    13d4:	0095a825 	or	s5,a0,s5
    13d8:	000ca280 	sll	s4,t4,0xa
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  if (bSig <= (aSig + aSig))
    13dc:	000c62c0 	sll	t4,t4,0xb
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    13e0:	02c2b025 	or	s6,s6,v0
  if (bSig <= (aSig + aSig))
    13e4:	0194182b 	sltu	v1,t4,s4
    13e8:	00151040 	sll	v0,s5,0x1
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    13ec:	00172542 	srl	a0,s7,0x15
  if (bSig <= (aSig + aSig))
    13f0:	00621021 	addu	v0,v1,v0
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    13f4:	0016b2c0 	sll	s6,s6,0xb
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
    13f8:	8fa3001c 	lw	v1,28(sp)
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    13fc:	0096b025 	or	s6,a0,s6
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
    1400:	02639823 	subu	s3,s3,v1
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    1404:	0017bac0 	sll	s7,s7,0xb
  if (bSig <= (aSig + aSig))
    1408:	0056182b 	sltu	v1,v0,s6
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
    140c:	267303fd 	addiu	s3,s3,1021
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    1410:	afb50020 	sw	s5,32(sp)
    1414:	afb40024 	sw	s4,36(sp)
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    1418:	afb60028 	sw	s6,40(sp)
  if (bSig <= (aSig + aSig))
    141c:	14600006 	bnez	v1,1438 <float64_div+0x188>
    1420:	afb7002c 	sw	s7,44(sp)
    1424:	16c200ba 	bne	s6,v0,1710 <float64_div+0x460>
    1428:	001517c0 	sll	v0,s5,0x1f
    142c:	0197602b 	sltu	t4,t4,s7
    1430:	118000b7 	beqz	t4,1710 <float64_div+0x460>
    1434:	00000000 	sll	zero,zero,0x0
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
    1438:	02b6102b 	sltu	v0,s5,s6
    143c:	1040009a 	beqz	v0,16a8 <float64_div+0x3f8>
    1440:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
    1444:	144000ca 	bnez	v0,1770 <float64_div+0x4c0>
    1448:	02a02021 	addu	a0,s5,zero
    144c:	00008821 	addu	s1,zero,zero
    1450:	2410ffff 	addiu	s0,zero,-1
  mul64To128 (b, z, &term0, &term1);
    1454:	27a20040 	addiu	v0,sp,64
    1458:	02c02021 	addu	a0,s6,zero
    145c:	02e02821 	addu	a1,s7,zero
    1460:	02203821 	addu	a3,s1,zero
    1464:	02003021 	addu	a2,s0,zero
    1468:	afa20010 	sw	v0,16(sp)
    146c:	27a20048 	addiu	v0,sp,72
    1470:	0c000000 	jal	0 <propagateFloat64NaN>
    1474:	afa20014 	sw	v0,20(sp)
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
    1478:	8fa60048 	lw	a2,72(sp)
    147c:	8fa5004c 	lw	a1,76(sp)
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
    1480:	8fa30044 	lw	v1,68(sp)
    1484:	00c52025 	or	a0,a2,a1
    1488:	8fa70040 	lw	a3,64(sp)
    148c:	02831823 	subu	v1,s4,v1
    1490:	0004202b 	sltu	a0,zero,a0
    1494:	0283a02b 	sltu	s4,s4,v1
    1498:	00642023 	subu	a0,v1,a0
    149c:	02a73823 	subu	a3,s5,a3
    14a0:	00f43823 	subu	a3,a3,s4
    14a4:	0064182b 	sltu	v1,v1,a0
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
    14a8:	0005282b 	sltu	a1,zero,a1
    14ac:	00063023 	negu	a2,a2
  *z0Ptr = a0 - b0 - (a1 < b1);
    14b0:	00e33823 	subu	a3,a3,v1
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    14b4:	04e100bb 	bgez	a3,17a4 <float64_div+0x4f4>
    14b8:	00c52823 	subu	a1,a2,a1
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
    14bc:	0200a021 	addu	s4,s0,zero
    14c0:	08000533 	j	14cc <float64_div+0x21c>
    14c4:	0220a821 	addu	s5,s1,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
    14c8:	00c02821 	addu	a1,a2,zero
    14cc:	00b73021 	addu	a2,a1,s7
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
    14d0:	00c5402b 	sltu	t0,a2,a1
    14d4:	24030001 	addiu	v1,zero,1
    14d8:	00001021 	addu	v0,zero,zero
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    {
      z -= LIT64 (0x100000000);
    14dc:	2694ffff 	addiu	s4,s4,-1
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
    14e0:	15000003 	bnez	t0,14f0 <float64_div+0x240>
    14e4:	00c02821 	addu	a1,a2,zero
    14e8:	00001821 	addu	v1,zero,zero
    14ec:	00001021 	addu	v0,zero,zero
    14f0:	02c34021 	addu	t0,s6,v1
    14f4:	0103482b 	sltu	t1,t0,v1
    14f8:	01221021 	addu	v0,t1,v0
    14fc:	00884021 	addu	t0,a0,t0
    1500:	0104202b 	sltu	a0,t0,a0
    1504:	00e23821 	addu	a3,a3,v0
    1508:	00873821 	addu	a3,a0,a3
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    150c:	04e0ffee 	bltz	a3,14c8 <float64_div+0x218>
    1510:	01002021 	addu	a0,t0,zero
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    }
  rem0 = (rem0 << 32) | (rem1 >> 32);
  z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
    1514:	0096102b 	sltu	v0,a0,s6
    1518:	1440009c 	bnez	v0,178c <float64_div+0x4dc>
    151c:	00000000 	sll	zero,zero,0x0
    1520:	2403ffff 	addiu	v1,zero,-1
    1524:	00001021 	addu	v0,zero,zero
    1528:	00758825 	or	s1,v1,s5
    152c:	00548025 	or	s0,v0,s4
    {
      aSig >>= 1;
      ++zExp;
    }
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
    1530:	322201ff 	andi	v0,s1,0x1ff
    1534:	2c420003 	sltiu	v0,v0,3
    1538:	10400061 	beqz	v0,16c0 <float64_div+0x410>
    153c:	27a20030 	addiu	v0,sp,48
    {
      mul64To128 (bSig, zSig, &term0, &term1);
    1540:	8fa5002c 	lw	a1,44(sp)
    1544:	8fa40028 	lw	a0,40(sp)
    1548:	02003021 	addu	a2,s0,zero
    154c:	afa20010 	sw	v0,16(sp)
    1550:	02203821 	addu	a3,s1,zero
    1554:	27a20038 	addiu	v0,sp,56
    1558:	0c000000 	jal	0 <propagateFloat64NaN>
    155c:	afa20014 	sw	v0,20(sp)
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
    1560:	8fa50038 	lw	a1,56(sp)
    1564:	8fa3003c 	lw	v1,60(sp)
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
    1568:	8fa40024 	lw	a0,36(sp)
    156c:	8fa20034 	lw	v0,52(sp)
    1570:	00a35825 	or	t3,a1,v1
    1574:	8fa60030 	lw	a2,48(sp)
    1578:	8fa90020 	lw	t1,32(sp)
    157c:	00821023 	subu	v0,a0,v0
    1580:	000b582b 	sltu	t3,zero,t3
    1584:	0082202b 	sltu	a0,a0,v0
    1588:	01264823 	subu	t1,t1,a2
    158c:	004b5823 	subu	t3,v0,t3
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
    1590:	00031823 	negu	v1,v1
  *z0Ptr = a0 - b0 - (a1 < b1);
    1594:	01244823 	subu	t1,t1,a0
    1598:	004b102b 	sltu	v0,v0,t3
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
    159c:	0003302b 	sltu	a2,zero,v1
    15a0:	00054023 	negu	t0,a1
  *z0Ptr = a0 - b0 - (a1 < b1);
    15a4:	01224823 	subu	t1,t1,v0
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
    15a8:	01064023 	subu	t0,t0,a2
      while ((sbits64) rem0 < 0)
    15ac:	05210062 	bgez	t1,1738 <float64_div+0x488>
    15b0:	00605021 	addu	t2,v1,zero
    15b4:	8fae0028 	lw	t6,40(sp)
    15b8:	8fad002c 	lw	t5,44(sp)
    15bc:	00000000 	sll	zero,zero,0x0
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
    15c0:	014d3821 	addu	a3,t2,t5
	{
	  --zSig;
    15c4:	2624ffff 	addiu	a0,s1,-1
    15c8:	010e2821 	addu	a1,t0,t6
    15cc:	00ea302b 	sltu	a2,a3,t2
    15d0:	0091602b 	sltu	t4,a0,s1
    15d4:	00c53021 	addu	a2,a2,a1
    15d8:	2610ffff 	addiu	s0,s0,-1
    15dc:	00801821 	addu	v1,a0,zero
    15e0:	01908021 	addu	s0,t4,s0
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
    15e4:	00c8602b 	sltu	t4,a2,t0
    15e8:	00608821 	addu	s1,v1,zero
    15ec:	24050001 	addiu	a1,zero,1
    15f0:	00002021 	addu	a0,zero,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
    15f4:	00c07821 	addu	t7,a2,zero
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
    15f8:	15800005 	bnez	t4,1610 <float64_div+0x360>
    15fc:	00e01821 	addu	v1,a3,zero
    1600:	11060037 	beq	t0,a2,16e0 <float64_div+0x430>
    1604:	00ea502b 	sltu	t2,a3,t2
    1608:	00002821 	addu	a1,zero,zero
    160c:	00002021 	addu	a0,zero,zero
    1610:	01651021 	addu	v0,t3,a1
    1614:	004b582b 	sltu	t3,v0,t3
    1618:	01244821 	addu	t1,t1,a0
    161c:	01694821 	addu	t1,t3,t1
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
    {
      mul64To128 (bSig, zSig, &term0, &term1);
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
      while ((sbits64) rem0 < 0)
    1620:	05210046 	bgez	t1,173c <float64_div+0x48c>
    1624:	00405821 	addu	t3,v0,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
    1628:	00c04021 	addu	t0,a2,zero
    162c:	08000570 	j	15c0 <float64_div+0x310>
    1630:	00e05021 	addu	t2,a3,zero
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    {
      if (aSig)
    1634:	02a51825 	or	v1,s5,a1
    1638:	14600030 	bnez	v1,16fc <float64_div+0x44c>
    163c:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
      if (bExp == 0x7FF)
    1640:	1113002b 	beq	t0,s3,16f0 <float64_div+0x440>
    1644:	001297c0 	sll	s2,s2,0x1f

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
    1648:	3c027ff0 	lui	v0,0x7ff0
	  if (bSig)
	    return propagateFloat64NaN (a, b);
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    164c:	02421021 	addu	v0,s2,v0
    1650:	00402021 	addu	a0,v0,zero
    1654:	0800059d 	j	1674 <float64_div+0x3c4>
    1658:	00002821 	addu	a1,zero,zero
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
    165c:	01274825 	or	t1,t1,a3
    1660:	15200026 	bnez	t1,16fc <float64_div+0x44c>
    1664:	00000000 	sll	zero,zero,0x0
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  if (aExp == 0)
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
    1668:	001297c0 	sll	s2,s2,0x1f
    166c:	02402021 	addu	a0,s2,zero
    1670:	00002821 	addu	a1,zero,zero
	}
      zSig |= (rem1 != 0);
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);

}
    1674:	8fbf0074 	lw	ra,116(sp)
    1678:	00801021 	addu	v0,a0,zero
    167c:	00a01821 	addu	v1,a1,zero
    1680:	8fb70070 	lw	s7,112(sp)
    1684:	8fb6006c 	lw	s6,108(sp)
    1688:	8fb50068 	lw	s5,104(sp)
    168c:	8fb40064 	lw	s4,100(sp)
    1690:	8fb30060 	lw	s3,96(sp)
    1694:	8fb2005c 	lw	s2,92(sp)
    1698:	8fb10058 	lw	s1,88(sp)
    169c:	8fb00054 	lw	s0,84(sp)
    16a0:	03e00008 	jr	ra
    16a4:	27bd0078 	addiu	sp,sp,120
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
    16a8:	16d50004 	bne	s6,s5,16bc <float64_div+0x40c>
    16ac:	2411ffff 	addiu	s1,zero,-1
    16b0:	0297182b 	sltu	v1,s4,s7
    16b4:	1460ff63 	bnez	v1,1444 <float64_div+0x194>
    16b8:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
    16bc:	2410ffff 	addiu	s0,zero,-1
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);
    16c0:	02402021 	addu	a0,s2,zero
    16c4:	02602821 	addu	a1,s3,zero
    16c8:	02203821 	addu	a3,s1,zero
    16cc:	0c000066 	jal	198 <roundAndPackFloat64>
    16d0:	02003021 	addu	a2,s0,zero
    16d4:	00602821 	addu	a1,v1,zero
    16d8:	0800059d 	j	1674 <float64_div+0x3c4>
    16dc:	00402021 	addu	a0,v0,zero
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
    16e0:	1540ffcc 	bnez	t2,1614 <float64_div+0x364>
    16e4:	01651021 	addu	v0,t3,a1
    16e8:	08000583 	j	160c <float64_div+0x35c>
    16ec:	00002821 	addu	a1,zero,zero
    {
      if (aSig)
	return propagateFloat64NaN (a, b);
      if (bExp == 0x7FF)
	{
	  if (bSig)
    16f0:	01274825 	or	t1,t1,a3
    16f4:	1120ff16 	beqz	t1,1350 <float64_div+0xa0>
    16f8:	00000000 	sll	zero,zero,0x0
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
    16fc:	0c000000 	jal	0 <propagateFloat64NaN>
    1700:	00000000 	sll	zero,zero,0x0
    1704:	00602821 	addu	a1,v1,zero
    1708:	0800059d 	j	1674 <float64_div+0x3c4>
    170c:	00402021 	addu	a0,v0,zero
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  if (bSig <= (aSig + aSig))
    {
      aSig >>= 1;
    1710:	0014a042 	srl	s4,s4,0x1
    1714:	0015a842 	srl	s5,s5,0x1
    1718:	0054a025 	or	s4,v0,s4
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
    171c:	02b6102b 	sltu	v0,s5,s6
    1720:	afb50020 	sw	s5,32(sp)
    1724:	afb40024 	sw	s4,36(sp)
    1728:	1440ff46 	bnez	v0,1444 <float64_div+0x194>
    172c:	26730001 	addiu	s3,s3,1
    1730:	080005aa 	j	16a8 <float64_div+0x3f8>
    1734:	00000000 	sll	zero,zero,0x0
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
    1738:	01007821 	addu	t7,t0,zero
      while ((sbits64) rem0 < 0)
	{
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
    173c:	01e37825 	or	t7,t7,v1
    1740:	000f782b 	sltu	t7,zero,t7
    1744:	01f17825 	or	t7,t7,s1
    1748:	080005b0 	j	16c0 <float64_div+0x410>
    174c:	01e08821 	addu	s1,t7,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
    1750:	3c027ff0 	lui	v0,0x7ff0
	    {
	      float_raise (float_flag_invalid);
	      return float64_default_nan;
	    }
	  float_raise (float_flag_divbyzero);
	  return packFloat64 (zSign, 0x7FF, 0);
    1754:	02421021 	addu	v0,s2,v0
    1758:	00402021 	addu	a0,v0,zero
    175c:	8f820000 	lw	v0,0(gp)
    1760:	00002821 	addu	a1,zero,zero
    1764:	34420002 	ori	v0,v0,0x2
    1768:	0800059d 	j	1674 <float64_div+0x3c4>
    176c:	af820000 	sw	v0,0(gp)
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
    1770:	02802821 	addu	a1,s4,zero
    1774:	00003021 	addu	a2,zero,zero
    1778:	0c000000 	jal	0 <propagateFloat64NaN>
    177c:	02c03821 	addu	a3,s6,zero
    1780:	00608021 	addu	s0,v1,zero
    1784:	08000515 	j	1454 <float64_div+0x1a4>
    1788:	00008821 	addu	s1,zero,zero
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    }
  rem0 = (rem0 << 32) | (rem1 >> 32);
  z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
    178c:	00003021 	addu	a2,zero,zero
    1790:	0c000000 	jal	0 <propagateFloat64NaN>
    1794:	02c03821 	addu	a3,s6,zero
    1798:	00402021 	addu	a0,v0,zero
    179c:	0800054a 	j	1528 <float64_div+0x278>
    17a0:	00801021 	addu	v0,a0,zero
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
    17a4:	0200a021 	addu	s4,s0,zero
    17a8:	08000545 	j	1514 <float64_div+0x264>
    17ac:	0220a821 	addu	s5,s1,zero

000017b0 <float64_le>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    17b0:	00041502 	srl	v0,a0,0x14
    17b4:	304207ff 	andi	v0,v0,0x7ff
flag
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
    17b8:	240307ff 	addiu	v1,zero,2047
    17bc:	10430015 	beq	v0,v1,1814 <float64_le+0x64>
    17c0:	3c02000f 	lui	v0,0xf

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    17c4:	00064502 	srl	t0,a2,0x14
    17c8:	310807ff 	andi	t0,t0,0x7ff
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    17cc:	240307ff 	addiu	v1,zero,2047
    17d0:	1103001a 	beq	t0,v1,183c <float64_le+0x8c>
    17d4:	000417c2 	srl	v0,a0,0x1f

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    17d8:	00061fc2 	srl	v1,a2,0x1f
      float_raise (float_flag_invalid);
      return 0;
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    17dc:	10430020 	beq	v0,v1,1860 <float64_le+0xb0>
    17e0:	00000000 	sll	zero,zero,0x0
    return aSign || ((bits64) ((a | b) << 1) == 0);
    17e4:	14400009 	bnez	v0,180c <float64_le+0x5c>
    17e8:	00e52825 	or	a1,a3,a1
    17ec:	00c42025 	or	a0,a2,a0
    17f0:	00051fc2 	srl	v1,a1,0x1f
    17f4:	00042040 	sll	a0,a0,0x1
    17f8:	00642025 	or	a0,v1,a0
    17fc:	00052840 	sll	a1,a1,0x1

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    {
      float_raise (float_flag_invalid);
      return 0;
    1800:	00851025 	or	v0,a0,a1
    1804:	03e00008 	jr	ra
    1808:	2c420001 	sltiu	v0,v0,1
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    return aSign || ((bits64) ((a | b) << 1) == 0);
    180c:	03e00008 	jr	ra
    1810:	24020001 	addiu	v0,zero,1

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    1814:	3442ffff 	ori	v0,v0,0xffff
    1818:	00821024 	and	v0,a0,v0
flag
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
    181c:	00451025 	or	v0,v0,a1
    1820:	1040ffe9 	beqz	v0,17c8 <float64_le+0x18>
    1824:	00064502 	srl	t0,a2,0x14
    1828:	8f830000 	lw	v1,0(gp)
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    {
      float_raise (float_flag_invalid);
      return 0;
    182c:	00001021 	addu	v0,zero,zero
    1830:	34630010 	ori	v1,v1,0x10
    1834:	03e00008 	jr	ra
    1838:	af830000 	sw	v1,0(gp)

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    183c:	3c02000f 	lui	v0,0xf
    1840:	3442ffff 	ori	v0,v0,0xffff
    1844:	00c21024 	and	v0,a2,v0
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    1848:	00471025 	or	v0,v0,a3
    184c:	1440fff6 	bnez	v0,1828 <float64_le+0x78>
    1850:	00061fc2 	srl	v1,a2,0x1f

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    1854:	000417c2 	srl	v0,a0,0x1f
      float_raise (float_flag_invalid);
      return 0;
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    1858:	1443ffe2 	bne	v0,v1,17e4 <float64_le+0x34>
    185c:	00000000 	sll	zero,zero,0x0
    return aSign || ((bits64) ((a | b) << 1) == 0);
  return (a == b) || (aSign ^ (a < b));
    1860:	10860009 	beq	a0,a2,1888 <float64_le+0xd8>
    1864:	0086402b 	sltu	t0,a0,a2
    1868:	15000004 	bnez	t0,187c <float64_le+0xcc>
    186c:	24030001 	addiu	v1,zero,1
    1870:	10c40009 	beq	a2,a0,1898 <float64_le+0xe8>
    1874:	00000000 	sll	zero,zero,0x0
    1878:	00001821 	addu	v1,zero,zero

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    {
      float_raise (float_flag_invalid);
      return 0;
    187c:	00621026 	xor	v0,v1,v0
    1880:	03e00008 	jr	ra
    1884:	0002102b 	sltu	v0,zero,v0
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    return aSign || ((bits64) ((a | b) << 1) == 0);
  return (a == b) || (aSign ^ (a < b));
    1888:	14a7fff7 	bne	a1,a3,1868 <float64_le+0xb8>
    188c:	00000000 	sll	zero,zero,0x0

}
    1890:	03e00008 	jr	ra
    1894:	24020001 	addiu	v0,zero,1
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    return aSign || ((bits64) ((a | b) << 1) == 0);
  return (a == b) || (aSign ^ (a < b));
    1898:	00a7282b 	sltu	a1,a1,a3
    189c:	14a0fff7 	bnez	a1,187c <float64_le+0xcc>
    18a0:	00000000 	sll	zero,zero,0x0
    18a4:	0800061f 	j	187c <float64_le+0xcc>
    18a8:	00001821 	addu	v1,zero,zero

000018ac <float64_ge>:

}

flag
float64_ge (float64 a, float64 b)
{
    18ac:	00a01821 	addu	v1,a1,zero
    18b0:	00801021 	addu	v0,a0,zero
  return float64_le (b, a);
    18b4:	00e02821 	addu	a1,a3,zero
    18b8:	00c02021 	addu	a0,a2,zero
    18bc:	00603821 	addu	a3,v1,zero
    18c0:	08000000 	j	0 <propagateFloat64NaN>
    18c4:	00403021 	addu	a2,v0,zero

000018c8 <float64_neg>:

// added by hiroyuki@acm.org
float64
float64_neg (float64 x)
{
  return (((~x) & 0x8000000000000000ULL) | (x & 0x7fffffffffffffffULL));
    18c8:	00041827 	nor	v1,zero,a0
    18cc:	3c028000 	lui	v0,0x8000
    18d0:	00621024 	and	v0,v1,v0
    18d4:	3c037fff 	lui	v1,0x7fff
    18d8:	3463ffff 	ori	v1,v1,0xffff
    18dc:	00832024 	and	a0,a0,v1
}
    18e0:	00441025 	or	v0,v0,a0
    18e4:	03e00008 	jr	ra
    18e8:	00a01821 	addu	v1,a1,zero

000018ec <float64_abs>:

float64
float64_abs (float64 x)
{
  return (x & 0x7fffffffffffffffULL);
}
    18ec:	3c027fff 	lui	v0,0x7fff
    18f0:	3442ffff 	ori	v0,v0,0xffff
    18f4:	00821024 	and	v0,a0,v0
    18f8:	03e00008 	jr	ra
    18fc:	00a01821 	addu	v1,a1,zero

00001900 <sin>:

float64
sin (float64 rad)
{
    1900:	27bdffc8 	addiu	sp,sp,-56
  float64 m_rad2;
  int inc;

  app = diff = rad;
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
    1904:	00803021 	addu	a2,a0,zero
    1908:	00a03821 	addu	a3,a1,zero
  return (x & 0x7fffffffffffffffULL);
}

float64
sin (float64 rad)
{
    190c:	afb70030 	sw	s7,48(sp)
    1910:	afb6002c 	sw	s6,44(sp)
    1914:	afb50028 	sw	s5,40(sp)
    1918:	afb40024 	sw	s4,36(sp)
    191c:	afb30020 	sw	s3,32(sp)
    1920:	afb2001c 	sw	s2,28(sp)
    1924:	afb10018 	sw	s1,24(sp)
    1928:	afb00014 	sw	s0,20(sp)
    192c:	00808821 	addu	s1,a0,zero
    1930:	00a08021 	addu	s0,a1,zero
    1934:	afbf0034 	sw	ra,52(sp)
  float64 m_rad2;
  int inc;

  app = diff = rad;
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
    1938:	0c000000 	jal	0 <propagateFloat64NaN>
    193c:	3c157fff 	lui	s5,0x7fff

// added by hiroyuki@acm.org
float64
float64_neg (float64 x)
{
  return (((~x) & 0x8000000000000000ULL) | (x & 0x7fffffffffffffffULL));
    1940:	0002b027 	nor	s6,zero,v0
    1944:	0060b821 	addu	s7,v1,zero
    1948:	36b5ffff 	ori	s5,s5,0xffff
    194c:	3c038000 	lui	v1,0x8000
    1950:	02c3b024 	and	s6,s6,v1
    1954:	00551024 	and	v0,v0,s5
    1958:	02c2b025 	or	s6,s6,v0
  float64 app;
  float64 diff;
  float64 m_rad2;
  int inc;

  app = diff = rad;
    195c:	0220a021 	addu	s4,s1,zero
    1960:	02009821 	addu	s3,s0,zero
    1964:	24120003 	addiu	s2,zero,3
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
  do
    {
      diff = float64_div (float64_mul (diff, m_rad2),
    1968:	02002821 	addu	a1,s0,zero
    196c:	02202021 	addu	a0,s1,zero
    1970:	02c03021 	addu	a2,s6,zero
    1974:	0c000000 	jal	0 <propagateFloat64NaN>
    1978:	02e03821 	addu	a3,s7,zero
{
  return (x & 0x7fffffffffffffffULL);
}

float64
sin (float64 rad)
    197c:	2644ffff 	addiu	a0,s2,-1
  app = diff = rad;
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
  do
    {
      diff = float64_div (float64_mul (diff, m_rad2),
    1980:	02440018 	mult	s2,a0
    1984:	00608821 	addu	s1,v1,zero
    1988:	00408021 	addu	s0,v0,zero
    198c:	00002012 	mflo	a0
    1990:	0c000000 	jal	0 <propagateFloat64NaN>
    1994:	26520002 	addiu	s2,s2,2
    1998:	00603821 	addu	a3,v1,zero
    199c:	02202821 	addu	a1,s1,zero
    19a0:	02002021 	addu	a0,s0,zero
    19a4:	0c000000 	jal	0 <propagateFloat64NaN>
    19a8:	00403021 	addu	a2,v0,zero
    19ac:	00408821 	addu	s1,v0,zero
			  int32_to_float64 ((2 * inc) * (2 * inc + 1)));
      app = float64_add (app, diff);
    19b0:	02802021 	addu	a0,s4,zero
    19b4:	02602821 	addu	a1,s3,zero
    19b8:	02203021 	addu	a2,s1,zero
    19bc:	00603821 	addu	a3,v1,zero
    19c0:	0c000000 	jal	0 <propagateFloat64NaN>
    19c4:	00608021 	addu	s0,v1,zero
}

flag
float64_ge (float64 a, float64 b)
{
  return float64_le (b, a);
    19c8:	3c0588e3 	lui	a1,0x88e3
    19cc:	3c043ee4 	lui	a0,0x3ee4
    19d0:	34a568f1 	ori	a1,a1,0x68f1
    19d4:	3484f8b5 	ori	a0,a0,0xf8b5
    19d8:	02353024 	and	a2,s1,s5
    19dc:	02003821 	addu	a3,s0,zero
    19e0:	0040a021 	addu	s4,v0,zero
    19e4:	0c000000 	jal	0 <propagateFloat64NaN>
    19e8:	00609821 	addu	s3,v1,zero
      inc++;
    }
  while (float64_ge (float64_abs (diff), 0x3ee4f8b588e368f1ULL));	/* 0.00001 */
    19ec:	1440ffdf 	bnez	v0,196c <sin+0x6c>
    19f0:	02002821 	addu	a1,s0,zero
  return app;
}
    19f4:	8fbf0034 	lw	ra,52(sp)
    19f8:	02801021 	addu	v0,s4,zero
    19fc:	02601821 	addu	v1,s3,zero
    1a00:	8fb70030 	lw	s7,48(sp)
    1a04:	8fb6002c 	lw	s6,44(sp)
    1a08:	8fb50028 	lw	s5,40(sp)
    1a0c:	8fb40024 	lw	s4,36(sp)
    1a10:	8fb30020 	lw	s3,32(sp)
    1a14:	8fb2001c 	lw	s2,28(sp)
    1a18:	8fb10018 	lw	s1,24(sp)
    1a1c:	8fb00014 	lw	s0,20(sp)
    1a20:	03e00008 	jr	ra
    1a24:	27bd0038 	addiu	sp,sp,56

00001a28 <ullong_to_double>:
    unsigned long long ll;
  } t;

  t.ll = x;
  return t.d;
}
    1a28:	44850000 	mtc1	a1,$f0
    1a2c:	00000000 	sll	zero,zero,0x0
    1a30:	44840800 	mtc1	a0,$f1
    1a34:	03e00008 	jr	ra
    1a38:	00000000 	sll	zero,zero,0x0

00001a3c <main>:
  0xbfc63a23c48863ddULL
};				/* -0.173649 */

int
main ()
{
    1a3c:	27bdffb0 	addiu	sp,sp,-80
    1a40:	afb50048 	sw	s5,72(sp)
    1a44:	afb40044 	sw	s4,68(sp)
    1a48:	afb30040 	sw	s3,64(sp)
    1a4c:	3c150000 	lui	s5,0x0
    1a50:	3c140000 	lui	s4,0x0
	  float64 result;
	  result = sin (test_in[i]);
	  main_result += (result != test_out[i]);

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
    1a54:	3c130000 	lui	s3,0x0
  0xbfc63a23c48863ddULL
};				/* -0.173649 */

int
main ()
{
    1a58:	afb2003c 	sw	s2,60(sp)
    1a5c:	afb10038 	sw	s1,56(sp)
    1a60:	afb00034 	sw	s0,52(sp)
    1a64:	afbf004c 	sw	ra,76(sp)
    1a68:	00008021 	addu	s0,zero,zero
  int main_result;
  int i;
      main_result = 0;
    1a6c:	00008821 	addu	s1,zero,zero
    1a70:	26b50000 	addiu	s5,s5,0
    1a74:	26940000 	addiu	s4,s4,0
	  float64 result;
	  result = sin (test_in[i]);
	  main_result += (result != test_out[i]);

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
    1a78:	26730000 	addiu	s3,s3,0
main ()
{
  int main_result;
  int i;
      main_result = 0;
      for (i = 0; i < N; i++)
    1a7c:	24120120 	addiu	s2,zero,288
  0xbfd5e3ad0a69caf7ULL,	/* -0.342021 */
  0xbfc63a23c48863ddULL
};				/* -0.173649 */

int
main ()
    1a80:	02b01021 	addu	v0,s5,s0
  int i;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  result = sin (test_in[i]);
    1a84:	8c470004 	lw	a3,4(v0)
    1a88:	8c460000 	lw	a2,0(v0)
    1a8c:	00e02821 	addu	a1,a3,zero
    1a90:	00c02021 	addu	a0,a2,zero
    1a94:	afa60028 	sw	a2,40(sp)
    1a98:	0c000000 	jal	0 <propagateFloat64NaN>
    1a9c:	afa7002c 	sw	a3,44(sp)
  0xbfd5e3ad0a69caf7ULL,	/* -0.342021 */
  0xbfc63a23c48863ddULL
};				/* -0.173649 */

int
main ()
    1aa0:	02902021 	addu	a0,s4,s0
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  result = sin (test_in[i]);
	  main_result += (result != test_out[i]);
    1aa4:	8c880000 	lw	t0,0(a0)
    1aa8:	8c850004 	lw	a1,4(a0)
    1aac:	01024826 	xor	t1,t0,v0
    1ab0:	00a32026 	xor	a0,a1,v1
    1ab4:	01244825 	or	t1,t1,a0

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
    1ab8:	8fa60028 	lw	a2,40(sp)
    1abc:	8fa7002c 	lw	a3,44(sp)
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  result = sin (test_in[i]);
	  main_result += (result != test_out[i]);
    1ac0:	0009482b 	sltu	t1,zero,t1

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
    1ac4:	26100008 	addiu	s0,s0,8
    1ac8:	02602021 	addu	a0,s3,zero
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  result = sin (test_in[i]);
	  main_result += (result != test_out[i]);
    1acc:	02298821 	addu	s1,s1,t1

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
    1ad0:	afa80010 	sw	t0,16(sp)
    1ad4:	afa50014 	sw	a1,20(sp)
    1ad8:	afa3001c 	sw	v1,28(sp)
    1adc:	afa20018 	sw	v0,24(sp)
    1ae0:	afa30024 	sw	v1,36(sp)
    1ae4:	0c000000 	jal	0 <propagateFloat64NaN>
    1ae8:	afa20020 	sw	v0,32(sp)
main ()
{
  int main_result;
  int i;
      main_result = 0;
      for (i = 0; i < N; i++)
    1aec:	1612ffe5 	bne	s0,s2,1a84 <main+0x48>
    1af0:	02b01021 	addu	v0,s5,s0

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     test_in[i], test_out[i], result, ullong_to_double (result));
	}
      printf ("%d\n", main_result);
    1af4:	3c040000 	lui	a0,0x0
    1af8:	02202821 	addu	a1,s1,zero
    1afc:	0c000000 	jal	0 <propagateFloat64NaN>
    1b00:	24840000 	addiu	a0,a0,0
      return main_result;
    }
    1b04:	8fbf004c 	lw	ra,76(sp)
    1b08:	02201021 	addu	v0,s1,zero
    1b0c:	8fb50048 	lw	s5,72(sp)
    1b10:	8fb40044 	lw	s4,68(sp)
    1b14:	8fb30040 	lw	s3,64(sp)
    1b18:	8fb2003c 	lw	s2,60(sp)
    1b1c:	8fb10038 	lw	s1,56(sp)
    1b20:	8fb00034 	lw	s0,52(sp)
    1b24:	03e00008 	jr	ra
    1b28:	27bd0050 	addiu	sp,sp,80

Disassembly of section .rodata:

00000000 <test_in>:
	...
   8:	3fc65717 	0x3fc65717
   c:	fced55c1 	0xfced55c1
  10:	3fd65717 	0x3fd65717
  14:	fced55c1 	0xfced55c1
  18:	3fe0c151 	0x3fe0c151
  1c:	fdb20051 	0xfdb20051
  20:	3fe65717 	0x3fe65717
  24:	fced55c1 	0xfced55c1
  28:	3febecdd 	0x3febecdd
  2c:	fc28ab31 	0xfc28ab31
  30:	3ff0c151 	0x3ff0c151
  34:	fdb20051 	0xfdb20051
  38:	3ff38c34 	0x3ff38c34
  3c:	fd4fab09 	0xfd4fab09
  40:	3ff65717 	0x3ff65717
  44:	fced55c1 	0xfced55c1
  48:	3ff921fa 	0x3ff921fa
  4c:	fc8b0079 	0xfc8b0079
  50:	3ffbecdd 	0x3ffbecdd
  54:	fc28ab31 	0xfc28ab31
  58:	3ffeb7c0 	0x3ffeb7c0
  5c:	fbc655e9 	0xfbc655e9
  60:	4000c151 	0x4000c151
  64:	fdb20051 	0xfdb20051
  68:	400226c3 	0x400226c3
  6c:	7d80d5ad 	0x7d80d5ad
  70:	40038c34 	0x40038c34
  74:	fd4fab09 	0xfd4fab09
  78:	4004f1a6 	0x4004f1a6
  7c:	7d1e8065 	0x7d1e8065
  80:	40065717 	0x40065717
  84:	fced55c1 	0xfced55c1
  88:	4007bc89 	0x4007bc89
  8c:	7cbc2b1d 	0x7cbc2b1d
  90:	400921fa 	0x400921fa
  94:	fc8b0079 	0xfc8b0079
  98:	400a876c 	0x400a876c
  9c:	7c59d5d5 	0x7c59d5d5
  a0:	400becdd 	0x400becdd
  a4:	fc28ab31 	0xfc28ab31
  a8:	400d524f 	0x400d524f
  ac:	7bf7808d 	0x7bf7808d
  b0:	400eb7c0 	0x400eb7c0
  b4:	fbc655e9 	0xfbc655e9
  b8:	40100e99 	0x40100e99
  bc:	3dca95a3 	0x3dca95a3
  c0:	4010c151 	0x4010c151
  c4:	fdb20051 	0xfdb20051
  c8:	4011740a 	0x4011740a
  cc:	bd996aff 	0xbd996aff
  d0:	401226c3 	0x401226c3
  d4:	7d80d5ad 	0x7d80d5ad
  d8:	4012d97c 	0x4012d97c
  dc:	3d68405b 	0x3d68405b
  e0:	40138c34 	0x40138c34
  e4:	fd4fab09 	0xfd4fab09
  e8:	40143eed 	0x40143eed
  ec:	bd3715b7 	0xbd3715b7
  f0:	4014f1a6 	0x4014f1a6
  f4:	7d1e8065 	0x7d1e8065
  f8:	4015a45f 	0x4015a45f
  fc:	3d05eb13 	0x3d05eb13
 100:	40165717 	0x40165717
 104:	fced55c1 	0xfced55c1
 108:	401709d0 	0x401709d0
 10c:	bcd4c06f 	0xbcd4c06f
 110:	4017bc89 	0x4017bc89
 114:	7cbc2b1d 	0x7cbc2b1d
 118:	40186f42 	0x40186f42
 11c:	3ca395cb 	0x3ca395cb

00000120 <test_out>:
	...
 128:	3fc63a1a 	0x3fc63a1a
 12c:	335aadcd 	andi	k0,k0,0xadcd
 130:	3fd5e3a8 	0x3fd5e3a8
 134:	2b09bf3e 	slti	t1,t8,-16578
 138:	3fdfffff 	0x3fdfffff
 13c:	91f9aa91 	lbu	t9,-21871(t7)
 140:	3fe491b7 	0x3fe491b7
 144:	16c242e3 	bne	s6,v0,10cd4 <main+0xf298>
 148:	3fe8836f 	0x3fe8836f
 14c:	672614a6 	0x672614a6
 150:	3febb67a 	0x3febb67a
 154:	c40b2bed 	lwc1	$f11,11245(zero)
 158:	3fee11f6 	0x3fee11f6
 15c:	127e28ad 	beq	s3,s8,a414 <main+0x89d8>
 160:	3fef838b 	0x3fef838b
 164:	6adffac0 	0x6adffac0
 168:	3fefffff 	0x3fefffff
 16c:	e1cbd7aa 	swc0	$11,-10326(t6)
 170:	3fef838b 	0x3fef838b
 174:	b0147989 	0xb0147989
 178:	3fee11f6 	0x3fee11f6
 17c:	92d962b4 	lbu	t9,25268(s6)
 180:	3febb67b 	0x3febb67b
 184:	77c0142d 	jalx	f0050b4 <main+0xf003678>
 188:	3fe88370 	0x3fe88370
 18c:	9d4ea869 	0x9d4ea869
 190:	3fe491b8 	0x3fe491b8
 194:	1d72d8e8 	0x1d72d8e8
 198:	3fe00000 	0x3fe00000
 19c:	ea5f43c8 	swc2	$31,17352(s2)
 1a0:	3fd5e3aa 	0x3fd5e3aa
 1a4:	4e0590c5 	c3	0x590c5
 1a8:	3fc63a1d 	0x3fc63a1d
 1ac:	2189552c 	addi	t1,t4,21804
 1b0:	3ea6aedf 	0x3ea6aedf
 1b4:	fc454b91 	0xfc454b91
 1b8:	bfc63a14 	0xbfc63a14
 1bc:	44ddb37c 	0x44ddb37c
 1c0:	bfd5e3a4 	0xbfd5e3a4
 1c4:	e68f8f3e 	swc1	$f15,-28866(s4)
 1c8:	bfdffffd 	0xbfdffffd
 1cc:	494cf96b 	0x494cf96b
 1d0:	bfe491b6 	0xbfe491b6
 1d4:	1cb9a3d3 	0x1cb9a3d3
 1d8:	bfe8836e 	0xbfe8836e
 1dc:	b2dcf815 	0xb2dcf815
 1e0:	bfebb67a 	0xbfebb67a
 1e4:	740aae32 	jalx	2ab8c8 <main+0x2a9e8c>
 1e8:	bfee11f5 	0xbfee11f5
 1ec:	912d2157 	lbu	t5,8535(t1)
 1f0:	bfef838b 	0xbfef838b
 1f4:	1ac64afc 	0x1ac64afc
 1f8:	bfefffff 	0xbfefffff
 1fc:	c2e5dc8f 	lwc0	$5,-9073(s7)
 200:	bfef838b 	0xbfef838b
 204:	5ea2e7ea 	0x5ea2e7ea
 208:	bfee11f7 	0xbfee11f7
 20c:	112dae27 	beq	t1,t5,fffebaac <main+0xfffea070>
 210:	bfebb67c 	0xbfebb67c
 214:	2c31cb4a 	sltiu	s1,at,-13494
 218:	bfe88371 	0xbfe88371
 21c:	6e6fd781 	0x6e6fd781
 220:	bfe491b9 	0xbfe491b9
 224:	cd1b5d56 	lwc3	$27,23894(t0)
 228:	bfe00002 	0xbfe00002
 22c:	1d0ca30d 	0x1d0ca30d
 230:	bfd5e3ad 	0xbfd5e3ad
 234:	0a69caf7 	j	9a72bdc <main+0x9a711a0>
 238:	bfc63a23 	0xbfc63a23
 23c:	c48863dd 	lwc1	$f8,25565(a0)

00000240 <countLeadingZerosHigh.2208>:
 240:	00000008 	jr	zero
 244:	00000007 	srav	zero,zero,zero
 248:	00000006 	srlv	zero,zero,zero
 24c:	00000006 	srlv	zero,zero,zero
 250:	00000005 	0x5
 254:	00000005 	0x5
 258:	00000005 	0x5
 25c:	00000005 	0x5
 260:	00000004 	sllv	zero,zero,zero
 264:	00000004 	sllv	zero,zero,zero
 268:	00000004 	sllv	zero,zero,zero
 26c:	00000004 	sllv	zero,zero,zero
 270:	00000004 	sllv	zero,zero,zero
 274:	00000004 	sllv	zero,zero,zero
 278:	00000004 	sllv	zero,zero,zero
 27c:	00000004 	sllv	zero,zero,zero
 280:	00000003 	sra	zero,zero,0x0
 284:	00000003 	sra	zero,zero,0x0
 288:	00000003 	sra	zero,zero,0x0
 28c:	00000003 	sra	zero,zero,0x0
 290:	00000003 	sra	zero,zero,0x0
 294:	00000003 	sra	zero,zero,0x0
 298:	00000003 	sra	zero,zero,0x0
 29c:	00000003 	sra	zero,zero,0x0
 2a0:	00000003 	sra	zero,zero,0x0
 2a4:	00000003 	sra	zero,zero,0x0
 2a8:	00000003 	sra	zero,zero,0x0
 2ac:	00000003 	sra	zero,zero,0x0
 2b0:	00000003 	sra	zero,zero,0x0
 2b4:	00000003 	sra	zero,zero,0x0
 2b8:	00000003 	sra	zero,zero,0x0
 2bc:	00000003 	sra	zero,zero,0x0
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
 310:	00000002 	srl	zero,zero,0x0
 314:	00000002 	srl	zero,zero,0x0
 318:	00000002 	srl	zero,zero,0x0
 31c:	00000002 	srl	zero,zero,0x0
 320:	00000002 	srl	zero,zero,0x0
 324:	00000002 	srl	zero,zero,0x0
 328:	00000002 	srl	zero,zero,0x0
 32c:	00000002 	srl	zero,zero,0x0
 330:	00000002 	srl	zero,zero,0x0
 334:	00000002 	srl	zero,zero,0x0
 338:	00000002 	srl	zero,zero,0x0
 33c:	00000002 	srl	zero,zero,0x0
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
 410:	00000001 	0x1
 414:	00000001 	0x1
 418:	00000001 	0x1
 41c:	00000001 	0x1
 420:	00000001 	0x1
 424:	00000001 	0x1
 428:	00000001 	0x1
 42c:	00000001 	0x1
 430:	00000001 	0x1
 434:	00000001 	0x1
 438:	00000001 	0x1
 43c:	00000001 	0x1
	...
