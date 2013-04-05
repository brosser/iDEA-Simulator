
dfadd.o:     file format elf32-bigmips


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

000000dc <roundAndPackFloat64>:
{
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
  dc:	8f830000 	lw	v1,0(gp)
  e0:	00000000 	sll	zero,zero,0x0
  roundNearestEven = (roundingMode == float_round_nearest_even);
  e4:	2c690001 	sltiu	t1,v1,1
  roundIncrement = 0x200;
  if (!roundNearestEven)
  e8:	15200027 	bnez	t1,188 <roundAndPackFloat64+0xac>
  ec:	24020001 	addiu	v0,zero,1
    {
      if (roundingMode == float_round_to_zero)
  f0:	10620074 	beq	v1,v0,2c4 <roundAndPackFloat64+0x1e8>
  f4:	00000000 	sll	zero,zero,0x0
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
  f8:	10800070 	beqz	a0,2bc <roundAndPackFloat64+0x1e0>
  fc:	24020003 	addiu	v0,zero,3
	    {
	      if (roundingMode == float_round_up)
 100:	24020002 	addiu	v0,zero,2
 104:	10620021 	beq	v1,v0,18c <roundAndPackFloat64+0xb0>
 108:	00001821 	addu	v1,zero,zero
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
 10c:	30a2ffff 	andi	v0,a1,0xffff
 110:	2c4207fd 	sltiu	v0,v0,2045
 114:	10400021 	beqz	v0,19c <roundAndPackFloat64+0xc0>
 118:	240303ff 	addiu	v1,zero,1023
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 11c:	00671021 	addu	v0,v1,a3
 120:	0043402b 	sltu	t0,v0,v1
 124:	00036fc3 	sra	t5,v1,0x1f
 128:	01064021 	addu	t0,t0,a2
 12c:	00406021 	addu	t4,v0,zero
	      if (roundingMode == float_round_down)
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
 130:	30ea03ff 	andi	t2,a3,0x3ff
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
 134:	15400033 	bnez	t2,204 <roundAndPackFloat64+0x128>
 138:	240bffff 	addiu	t3,zero,-1
 13c:	240affff 	addiu	t2,zero,-1
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
 140:	00081580 	sll	v0,t0,0x16
 144:	000c3a82 	srl	a3,t4,0xa
 148:	00473825 	or	a3,v0,a3
 14c:	00084282 	srl	t0,t0,0xa
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 150:	010a3024 	and	a2,t0,t2
 154:	00eb3824 	and	a3,a3,t3
  if (zSig == 0)
 158:	00c71025 	or	v0,a2,a3
 15c:	1040003f 	beqz	v0,25c <roundAndPackFloat64+0x180>
 160:	00004821 	addu	t1,zero,zero
 164:	00004821 	addu	t1,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 168:	000427c0 	sll	a0,a0,0x1f
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
 16c:	00054500 	sll	t0,a1,0x14

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 170:	00e91821 	addu	v1,a3,t1
 174:	00c43021 	addu	a2,a2,a0
 178:	0067382b 	sltu	a3,v1,a3
 17c:	00c84021 	addu	t0,a2,t0
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
    zExp = 0;
  return packFloat64 (zSign, zExp, zSig);

}
 180:	03e00008 	jr	ra
 184:	00e81021 	addu	v0,a3,t0
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
  roundNearestEven = (roundingMode == float_round_nearest_even);
  roundIncrement = 0x200;
 188:	24030200 	addiu	v1,zero,512
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
 18c:	30a2ffff 	andi	v0,a1,0xffff
 190:	2c4207fd 	sltiu	v0,v0,2045
 194:	1440ffe2 	bnez	v0,120 <roundAndPackFloat64+0x44>
 198:	00671021 	addu	v0,v1,a3
    {
      if ((0x7FD < zExp)
 19c:	28a207fe 	slti	v0,a1,2046
 1a0:	1040003b 	beqz	v0,290 <roundAndPackFloat64+0x1b4>
 1a4:	00000000 	sll	zero,zero,0x0
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 1a8:	240207fd 	addiu	v0,zero,2045
 1ac:	10a20033 	beq	a1,v0,27c <roundAndPackFloat64+0x1a0>
 1b0:	00671021 	addu	v0,v1,a3
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
	}
      if (zExp < 0)
 1b4:	04a1ffdb 	bgez	a1,124 <roundAndPackFloat64+0x48>
 1b8:	0043402b 	sltu	t0,v0,v1
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
 1bc:	00051023 	negu	v0,a1

  if (count == 0)
    {
      z = a;
    }
  else if (count < 64)
 1c0:	28480040 	slti	t0,v0,64
 1c4:	11000041 	beqz	t0,2cc <roundAndPackFloat64+0x1f0>
 1c8:	30480020 	andi	t0,v0,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 1cc:	11000058 	beqz	t0,330 <roundAndPackFloat64+0x254>
 1d0:	00024027 	nor	t0,zero,v0
 1d4:	00464006 	srlv	t0,a2,v0
 1d8:	00001021 	addu	v0,zero,zero
 1dc:	30aa0020 	andi	t2,a1,0x20
 1e0:	1140004c 	beqz	t2,314 <roundAndPackFloat64+0x238>
 1e4:	30a5003f 	andi	a1,a1,0x3f
 1e8:	00a73004 	sllv	a2,a3,a1
 1ec:	00003821 	addu	a3,zero,zero
 1f0:	00c73825 	or	a3,a2,a3
 1f4:	0007382b 	sltu	a3,zero,a3
 1f8:	00403021 	addu	a2,v0,zero
 1fc:	080000b6 	j	2d8 <roundAndPackFloat64+0x1fc>
 200:	00e83825 	or	a3,a3,t0
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
 204:	8f880000 	lw	t0,0(gp)
    float_exception_flags |= float_flag_inexact;
 208:	394a0200 	xori	t2,t2,0x200
 20c:	0047382b 	sltu	a3,v0,a3
 210:	2d4a0001 	sltiu	t2,t2,1
 214:	00cd3021 	addu	a2,a2,t5
 218:	01494824 	and	t1,t2,t1
 21c:	35030001 	ori	v1,t0,0x1
 220:	00406021 	addu	t4,v0,zero
 224:	00e64021 	addu	t0,a3,a2
  zSig = (zSig + roundIncrement) >> 10;
 228:	00081580 	sll	v0,t0,0x16
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
 22c:	00094827 	nor	t1,zero,t1
  zSig = (zSig + roundIncrement) >> 10;
 230:	000c3a82 	srl	a3,t4,0xa
 234:	00473825 	or	a3,v0,a3
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
 238:	01205821 	addu	t3,t1,zero
 23c:	000957c3 	sra	t2,t1,0x1f
  zSig = (zSig + roundIncrement) >> 10;
 240:	00084282 	srl	t0,t0,0xa
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 244:	010a3024 	and	a2,t0,t2
 248:	00eb3824 	and	a3,a3,t3
  if (zSig == 0)
 24c:	00c71025 	or	v0,a2,a3
 250:	1440ffc4 	bnez	v0,164 <roundAndPackFloat64+0x88>
 254:	af830000 	sw	v1,0(gp)
 258:	00004821 	addu	t1,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 25c:	000427c0 	sll	a0,a0,0x1f
 260:	00e91821 	addu	v1,a3,t1
 264:	00c43021 	addu	a2,a2,a0
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
 268:	00004021 	addu	t0,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 26c:	0067382b 	sltu	a3,v1,a3
 270:	00c84021 	addu	t0,a2,t0
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
    zExp = 0;
  return packFloat64 (zSign, zExp, zSig);

}
 274:	03e00008 	jr	ra
 278:	00e81021 	addu	v0,a3,t0
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 27c:	0043402b 	sltu	t0,v0,v1
 280:	01064021 	addu	t0,t0,a2
 284:	00036fc3 	sra	t5,v1,0x1f
 288:	0501ffa9 	bgez	t0,130 <roundAndPackFloat64+0x54>
 28c:	00406021 	addu	t4,v0,zero
 290:	8f860000 	lw	a2,0(gp)
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 294:	2c630001 	sltiu	v1,v1,1

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 298:	000427c0 	sll	a0,a0,0x1f
 29c:	3c027ff0 	lui	v0,0x7ff0
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 2a0:	00032823 	negu	a1,v1
 2a4:	34c60009 	ori	a2,a2,0x9

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 2a8:	00821021 	addu	v0,a0,v0
 2ac:	af860000 	sw	a2,0(gp)
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 2b0:	00451021 	addu	v0,v0,a1
 2b4:	03e00008 	jr	ra
 2b8:	00a01821 	addu	v1,a1,zero
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
 2bc:	1462ff94 	bne	v1,v0,110 <roundAndPackFloat64+0x34>
 2c0:	30a2ffff 	andi	v0,a1,0xffff
		roundIncrement = 0;
 2c4:	08000063 	j	18c <roundAndPackFloat64+0xb0>
 2c8:	00001821 	addu	v1,zero,zero
    }
  else
    {
      z = (a != 0);
 2cc:	00c73825 	or	a3,a2,a3
 2d0:	0007382b 	sltu	a3,zero,a3
 2d4:	00003021 	addu	a2,zero,zero
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
	  roundBits = zSig & 0x3FF;
 2d8:	30ea03ff 	andi	t2,a3,0x3ff
	  if (isTiny && roundBits)
 2dc:	15400007 	bnez	t2,2fc <roundAndPackFloat64+0x220>
 2e0:	00e36021 	addu	t4,a3,v1
 2e4:	0187382b 	sltu	a3,t4,a3
 2e8:	00e64021 	addu	t0,a3,a2
 2ec:	240bffff 	addiu	t3,zero,-1
 2f0:	240affff 	addiu	t2,zero,-1
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 2f4:	08000050 	j	140 <roundAndPackFloat64+0x64>
 2f8:	00002821 	addu	a1,zero,zero
 2fc:	8f880000 	lw	t0,0(gp)
 300:	00002821 	addu	a1,zero,zero
 304:	35080004 	ori	t0,t0,0x4
 308:	00036fc3 	sra	t5,v1,0x1f
 30c:	08000082 	j	208 <roundAndPackFloat64+0x12c>
 310:	00671021 	addu	v0,v1,a3
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 314:	00075842 	srl	t3,a3,0x1
 318:	00055027 	nor	t2,zero,a1
 31c:	014b5006 	srlv	t2,t3,t2
 320:	00a63004 	sllv	a2,a2,a1
 324:	01463025 	or	a2,t2,a2
 328:	0800007c 	j	1f0 <roundAndPackFloat64+0x114>
 32c:	00a73804 	sllv	a3,a3,a1
 330:	00065040 	sll	t2,a2,0x1
 334:	010a5004 	sllv	t2,t2,t0
 338:	00474006 	srlv	t0,a3,v0
 33c:	01484025 	or	t0,t2,t0
 340:	08000077 	j	1dc <roundAndPackFloat64+0x100>
 344:	00461006 	srlv	v0,a2,v0

00000348 <shift64RightJamming>:
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
 348:	10c00006 	beqz	a2,364 <shift64RightJamming+0x1c>
 34c:	28c20040 	slti	v0,a2,64
    {
      z = a;
    }
  else if (count < 64)
 350:	14400007 	bnez	v0,370 <shift64RightJamming+0x28>
 354:	00061823 	negu	v1,a2
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
    }
  else
    {
      z = (a != 0);
 358:	00852825 	or	a1,a0,a1
 35c:	0005282b 	sltu	a1,zero,a1
 360:	00002021 	addu	a0,zero,zero
    }
  *zPtr = z;
 364:	ace40000 	sw	a0,0(a3)

}
 368:	03e00008 	jr	ra
 36c:	ace50004 	sw	a1,4(a3)
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 370:	30620020 	andi	v0,v1,0x20
 374:	1040000d 	beqz	v0,3ac <shift64RightJamming+0x64>
 378:	3063003f 	andi	v1,v1,0x3f
 37c:	00651004 	sllv	v0,a1,v1
 380:	00001821 	addu	v1,zero,zero
 384:	00431025 	or	v0,v0,v1
 388:	30c80020 	andi	t0,a2,0x20
 38c:	11000011 	beqz	t0,3d4 <shift64RightJamming+0x8c>
 390:	0002102b 	sltu	v0,zero,v0
 394:	00c42806 	srlv	a1,a0,a2
 398:	00452825 	or	a1,v0,a1
 39c:	00002021 	addu	a0,zero,zero
    }
  else
    {
      z = (a != 0);
    }
  *zPtr = z;
 3a0:	ace40000 	sw	a0,0(a3)

}
 3a4:	03e00008 	jr	ra
 3a8:	ace50004 	sw	a1,4(a3)
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 3ac:	00031027 	nor	v0,zero,v1
 3b0:	00054042 	srl	t0,a1,0x1
 3b4:	00484006 	srlv	t0,t0,v0
 3b8:	00641004 	sllv	v0,a0,v1
 3bc:	01021025 	or	v0,t0,v0
 3c0:	00651804 	sllv	v1,a1,v1
 3c4:	00431025 	or	v0,v0,v1
 3c8:	30c80020 	andi	t0,a2,0x20
 3cc:	1500fff1 	bnez	t0,394 <shift64RightJamming+0x4c>
 3d0:	0002102b 	sltu	v0,zero,v0
 3d4:	00044040 	sll	t0,a0,0x1
 3d8:	00061827 	nor	v1,zero,a2
 3dc:	00681804 	sllv	v1,t0,v1
 3e0:	00c52806 	srlv	a1,a1,a2
 3e4:	00652825 	or	a1,v1,a1
 3e8:	00c42006 	srlv	a0,a0,a2
 3ec:	080000e8 	j	3a0 <shift64RightJamming+0x58>
 3f0:	00452825 	or	a1,v0,a1

000003f4 <float_raise>:
 3f4:	8f820000 	lw	v0,0(gp)
 3f8:	00000000 	sll	zero,zero,0x0
 3fc:	00441025 	or	v0,v0,a0

}
 400:	03e00008 	jr	ra
 404:	af820000 	sw	v0,0(gp)

00000408 <float64_is_nan>:

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 408:	000517c2 	srl	v0,a1,0x1f
 40c:	00042040 	sll	a0,a0,0x1
 410:	3c03ffe0 	lui	v1,0xffe0
 414:	00442025 	or	a0,v0,a0
 418:	24660001 	addiu	a2,v1,1
 41c:	0086302b 	sltu	a2,a0,a2
 420:	00052840 	sll	a1,a1,0x1
 424:	10c00007 	beqz	a2,444 <float64_is_nan+0x3c>
 428:	24020001 	addiu	v0,zero,1
 42c:	10830003 	beq	a0,v1,43c <float64_is_nan+0x34>
 430:	00000000 	sll	zero,zero,0x0

}
 434:	03e00008 	jr	ra
 438:	00001021 	addu	v0,zero,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 43c:	10a0fffd 	beqz	a1,434 <float64_is_nan+0x2c>
 440:	00000000 	sll	zero,zero,0x0

}
 444:	03e00008 	jr	ra
 448:	00000000 	sll	zero,zero,0x0

0000044c <float64_is_signaling_nan>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 44c:	000414c2 	srl	v0,a0,0x13
 450:	30420fff 	andi	v0,v0,0xfff
 454:	24030ffe 	addiu	v1,zero,4094
 458:	10430003 	beq	v0,v1,468 <float64_is_signaling_nan+0x1c>
 45c:	00000000 	sll	zero,zero,0x0

}
 460:	03e00008 	jr	ra
 464:	00001021 	addu	v0,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 468:	3c020007 	lui	v0,0x7
 46c:	3442ffff 	ori	v0,v0,0xffff
 470:	00821024 	and	v0,a0,v0
 474:	00451025 	or	v0,v0,a1
 478:	03e00008 	jr	ra
 47c:	0002102b 	sltu	v0,zero,v0

00000480 <extractFloat64Frac>:
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);

}
 480:	3c02000f 	lui	v0,0xf
 484:	3442ffff 	ori	v0,v0,0xffff
 488:	00821024 	and	v0,a0,v0
 48c:	03e00008 	jr	ra
 490:	00a01821 	addu	v1,a1,zero

00000494 <extractFloat64Exp>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 494:	00041502 	srl	v0,a0,0x14

}
 498:	03e00008 	jr	ra
 49c:	304207ff 	andi	v0,v0,0x7ff

000004a0 <extractFloat64Sign>:
extractFloat64Sign (float64 a)
{

  return a >> 63;

}
 4a0:	03e00008 	jr	ra
 4a4:	000417c2 	srl	v0,a0,0x1f

000004a8 <packFloat64>:

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 4a8:	000427c0 	sll	a0,a0,0x1f
 4ac:	00c42021 	addu	a0,a2,a0
 4b0:	00051500 	sll	v0,a1,0x14

}
 4b4:	00821021 	addu	v0,a0,v0
 4b8:	03e00008 	jr	ra
 4bc:	00e01821 	addu	v1,a3,zero

000004c0 <float64_add>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_add (float64 a, float64 b)
{
 4c0:	27bdfff8 	addiu	sp,sp,-8

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
 4c4:	00046fc2 	srl	t5,a0,0x1f
 4c8:	000617c2 	srl	v0,a2,0x1f
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_add (float64 a, float64 b)
{
 4cc:	afb00004 	sw	s0,4(sp)
 4d0:	00a04821 	addu	t1,a1,zero
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
 4d4:	11a200a2 	beq	t5,v0,760 <float64_add+0x2a0>
 4d8:	00804021 	addu	t0,a0,zero

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 4dc:	3c03000f 	lui	v1,0xf
 4e0:	3463ffff 	ori	v1,v1,0xffff

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 4e4:	00045d02 	srl	t3,a0,0x14
 4e8:	00067d02 	srl	t7,a2,0x14

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 4ec:	00831024 	and	v0,a0,v1

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 4f0:	316b07ff 	andi	t3,t3,0x7ff
 4f4:	31ef07ff 	andi	t7,t7,0x7ff

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 4f8:	00c31824 	and	v1,a2,v1
  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
  aSig <<= 10;
 4fc:	0005cd82 	srl	t9,a1,0x16
 500:	00021280 	sll	v0,v0,0xa
  bSig <<= 10;
 504:	0007c582 	srl	t8,a3,0x16
 508:	00031a80 	sll	v1,v1,0xa

  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
 50c:	016f5023 	subu	t2,t3,t7
  aSig <<= 10;
 510:	03221025 	or	v0,t9,v0
 514:	00057280 	sll	t6,a1,0xa
  bSig <<= 10;
 518:	03031825 	or	v1,t8,v1
  if (0 < expDiff)
 51c:	1940003d 	blez	t2,614 <float64_add+0x154>
 520:	00076280 	sll	t4,a3,0xa
  zSig = bSig - aSig;
  zExp = bExp;
  zSign ^= 1;
  goto normalizeRoundAndPack;
aExpBigger:
  if (aExp == 0x7FF)
 524:	241807ff 	addiu	t8,zero,2047
 528:	1178005e 	beq	t3,t8,6a4 <float64_add+0x1e4>
 52c:	00000000 	sll	zero,zero,0x0
    {
      if (aSig)
	return propagateFloat64NaN (a, b);
      return a;
    }
  if (bExp == 0)
 530:	15e00049 	bnez	t7,658 <float64_add+0x198>
 534:	3c044000 	lui	a0,0x4000
    --expDiff;
 538:	254affff 	addiu	t2,t2,-1
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
 53c:	15400048 	bnez	t2,660 <float64_add+0x1a0>
 540:	29440040 	slti	a0,t2,64
  else
    bSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (bSig, expDiff, &bSig);
  aSig |= LIT64 (0x4000000000000000);
 544:	3c044000 	lui	a0,0x4000
 548:	00441025 	or	v0,v0,a0
aBigger:
  zSig = aSig - bSig;
 54c:	01cc6023 	subu	t4,t6,t4
 550:	01cc702b 	sltu	t6,t6,t4
 554:	00433023 	subu	a2,v0,v1
 558:	00ce3023 	subu	a2,a2,t6
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 55c:	10c00020 	beqz	a2,5e0 <float64_add+0x120>
 560:	256bffff 	addiu	t3,t3,-1
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
 564:	00c02021 	addu	a0,a2,zero
 568:	2407ffff 	addiu	a3,zero,-1
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
 56c:	3c020001 	lui	v0,0x1
 570:	0082102b 	sltu	v0,a0,v0
 574:	10400003 	beqz	v0,584 <float64_add+0xc4>
 578:	00004021 	addu	t0,zero,zero
    {
      shiftCount += 16;
      a <<= 16;
 57c:	00042400 	sll	a0,a0,0x10
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
 580:	24080010 	addiu	t0,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
 584:	3c020100 	lui	v0,0x100
 588:	0082102b 	sltu	v0,a0,v0
 58c:	10400003 	beqz	v0,59c <float64_add+0xdc>
 590:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
 594:	25080008 	addiu	t0,t0,8
      a <<= 8;
 598:	00042200 	sll	a0,a0,0x8
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
 59c:	00042602 	srl	a0,a0,0x18
 5a0:	3c020000 	lui	v0,0x0
 5a4:	24420450 	addiu	v0,v0,1104
 5a8:	00042080 	sll	a0,a0,0x2
 5ac:	00822021 	addu	a0,a0,v0
static float64
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
 5b0:	8c820000 	lw	v0,0(a0)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
 5b4:	01072021 	addu	a0,t0,a3
 5b8:	00822021 	addu	a0,a0,v0
  return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
 5bc:	30820020 	andi	v0,a0,0x20
 5c0:	1040000a 	beqz	v0,5ec <float64_add+0x12c>
 5c4:	01642823 	subu	a1,t3,a0
 5c8:	008c3004 	sllv	a2,t4,a0
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);

}
 5cc:	8fb00004 	lw	s0,4(sp)
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
  return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
 5d0:	00003821 	addu	a3,zero,zero
 5d4:	01a02021 	addu	a0,t5,zero
 5d8:	08000037 	j	dc <roundAndPackFloat64>
 5dc:	27bd0008 	addiu	sp,sp,8
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 5e0:	01802021 	addu	a0,t4,zero
 5e4:	0800015b 	j	56c <float64_add+0xac>
 5e8:	2407001f 	addiu	a3,zero,31
 5ec:	00041027 	nor	v0,zero,a0
 5f0:	000c1842 	srl	v1,t4,0x1
 5f4:	00863004 	sllv	a2,a2,a0
 5f8:	00431006 	srlv	v0,v1,v0
 5fc:	008c3804 	sllv	a3,t4,a0
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);

}
 600:	8fb00004 	lw	s0,4(sp)
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
  return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
 604:	00463025 	or	a2,v0,a2
 608:	01a02021 	addu	a0,t5,zero
 60c:	08000037 	j	dc <roundAndPackFloat64>
 610:	27bd0008 	addiu	sp,sp,8
  expDiff = aExp - bExp;
  aSig <<= 10;
  bSig <<= 10;
  if (0 < expDiff)
    goto aExpBigger;
  if (expDiff < 0)
 614:	1540002f 	bnez	t2,6d4 <float64_add+0x214>
 618:	240807ff 	addiu	t0,zero,2047
    goto bExpBigger;
  if (aExp == 0x7FF)
 61c:	116800e7 	beq	t3,t0,9bc <float64_add+0x4fc>
 620:	00000000 	sll	zero,zero,0x0
      if (aSig | bSig)
	return propagateFloat64NaN (a, b);
      float_raise (float_flag_invalid);
      return float64_default_nan;
    }
  if (aExp == 0)
 624:	15600003 	bnez	t3,634 <float64_add+0x174>
 628:	0062202b 	sltu	a0,v1,v0
    {
      aExp = 1;
      bExp = 1;
 62c:	240f0001 	addiu	t7,zero,1
      float_raise (float_flag_invalid);
      return float64_default_nan;
    }
  if (aExp == 0)
    {
      aExp = 1;
 630:	240b0001 	addiu	t3,zero,1
      bExp = 1;
    }
  if (bSig < aSig)
 634:	1480ffc5 	bnez	a0,54c <float64_add+0x8c>
 638:	00000000 	sll	zero,zero,0x0
 63c:	104300a8 	beq	v0,v1,8e0 <float64_add+0x420>
 640:	018e202b 	sltu	a0,t4,t6
    goto aBigger;
  if (aSig < bSig)
 644:	0043202b 	sltu	a0,v0,v1
 648:	108000ad 	beqz	a0,900 <float64_add+0x440>
 64c:	01e05821 	addu	t3,t7,zero
 650:	080001d1 	j	744 <float64_add+0x284>
 654:	00000000 	sll	zero,zero,0x0
      return a;
    }
  if (bExp == 0)
    --expDiff;
  else
    bSig |= LIT64 (0x4000000000000000);
 658:	00641825 	or	v1,v1,a0

  if (count == 0)
    {
      z = a;
    }
  else if (count < 64)
 65c:	29440040 	slti	a0,t2,64
 660:	10800018 	beqz	a0,6c4 <float64_add+0x204>
 664:	31440020 	andi	a0,t2,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 668:	10800084 	beqz	a0,87c <float64_add+0x3bc>
 66c:	000a2027 	nor	a0,zero,t2
 670:	01432006 	srlv	a0,v1,t2
 674:	00003021 	addu	a2,zero,zero
 678:	000a5023 	negu	t2,t2
 67c:	31450020 	andi	a1,t2,0x20
 680:	10a00077 	beqz	a1,860 <float64_add+0x3a0>
 684:	314a003f 	andi	t2,t2,0x3f
 688:	014c1804 	sllv	v1,t4,t2
 68c:	00006021 	addu	t4,zero,zero
 690:	006c6025 	or	t4,v1,t4
 694:	000c602b 	sltu	t4,zero,t4
 698:	00c01821 	addu	v1,a2,zero
 69c:	08000151 	j	544 <float64_add+0x84>
 6a0:	01846025 	or	t4,t4,a0
  zSign ^= 1;
  goto normalizeRoundAndPack;
aExpBigger:
  if (aExp == 0x7FF)
    {
      if (aSig)
 6a4:	004e7025 	or	t6,v0,t6
 6a8:	15c0005d 	bnez	t6,820 <float64_add+0x360>
 6ac:	00000000 	sll	zero,zero,0x0
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);

}
 6b0:	01001021 	addu	v0,t0,zero
 6b4:	01201821 	addu	v1,t1,zero
 6b8:	8fb00004 	lw	s0,4(sp)
 6bc:	03e00008 	jr	ra
 6c0:	27bd0008 	addiu	sp,sp,8
    }
  else
    {
      z = (a != 0);
 6c4:	006c6025 	or	t4,v1,t4
 6c8:	000c602b 	sltu	t4,zero,t4
 6cc:	08000151 	j	544 <float64_add+0x84>
 6d0:	00001821 	addu	v1,zero,zero
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
bExpBigger:
  if (bExp == 0x7FF)
 6d4:	11e80096 	beq	t7,t0,930 <float64_add+0x470>
 6d8:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
    }
  if (aExp == 0)
 6dc:	156000cb 	bnez	t3,a0c <float64_add+0x54c>
 6e0:	3c044000 	lui	a0,0x4000
    ++expDiff;
 6e4:	254a0001 	addiu	t2,t2,1
  else
    aSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (aSig, -expDiff, &aSig);
 6e8:	000a2023 	negu	a0,t2
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
 6ec:	10800012 	beqz	a0,738 <float64_add+0x278>
 6f0:	00000000 	sll	zero,zero,0x0
    {
      z = a;
    }
  else if (count < 64)
 6f4:	28850040 	slti	a1,a0,64
 6f8:	10a000e0 	beqz	a1,a7c <float64_add+0x5bc>
 6fc:	00000000 	sll	zero,zero,0x0
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 700:	30850020 	andi	a1,a0,0x20
 704:	10a000e8 	beqz	a1,aa8 <float64_add+0x5e8>
 708:	00042827 	nor	a1,zero,a0
 70c:	00822806 	srlv	a1,v0,a0
 710:	00002021 	addu	a0,zero,zero
 714:	31460020 	andi	a2,t2,0x20
 718:	10c000dc 	beqz	a2,a8c <float64_add+0x5cc>
 71c:	314a003f 	andi	t2,t2,0x3f
 720:	014e1004 	sllv	v0,t6,t2
 724:	00007021 	addu	t6,zero,zero
 728:	004e7025 	or	t6,v0,t6
 72c:	000e702b 	sltu	t6,zero,t6
 730:	00801021 	addu	v0,a0,zero
 734:	01c57025 	or	t6,t6,a1
  bSig |= LIT64 (0x4000000000000000);
 738:	3c044000 	lui	a0,0x4000
 73c:	00641825 	or	v1,v1,a0
 740:	01e05821 	addu	t3,t7,zero
bBigger:
  zSig = bSig - aSig;
 744:	018e3823 	subu	a3,t4,t6
 748:	0187602b 	sltu	t4,t4,a3
 74c:	00623023 	subu	a2,v1,v0
 750:	00cc3023 	subu	a2,a2,t4
  zExp = bExp;
  zSign ^= 1;
 754:	39ad0001 	xori	t5,t5,0x1
  else
    aSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (aSig, -expDiff, &aSig);
  bSig |= LIT64 (0x4000000000000000);
bBigger:
  zSig = bSig - aSig;
 758:	08000157 	j	55c <float64_add+0x9c>
 75c:	00e06021 	addu	t4,a3,zero

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 760:	3c03000f 	lui	v1,0xf
 764:	3463ffff 	ori	v1,v1,0xffff

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 768:	00045d02 	srl	t3,a0,0x14
 76c:	0006c502 	srl	t8,a2,0x14
 770:	316b07ff 	andi	t3,t3,0x7ff
 774:	331807ff 	andi	t8,t8,0x7ff

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 778:	00837024 	and	t6,a0,v1
 77c:	00c35024 	and	t2,a2,v1
  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
  aSig <<= 9;
 780:	000585c2 	srl	s0,a1,0x17
 784:	000e7240 	sll	t6,t6,0x9
  bSig <<= 9;
 788:	0007cdc2 	srl	t9,a3,0x17
 78c:	000a5240 	sll	t2,t2,0x9

  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
 790:	01781023 	subu	v0,t3,t8
  aSig <<= 9;
 794:	020e7025 	or	t6,s0,t6
 798:	00057a40 	sll	t7,a1,0x9
  bSig <<= 9;
 79c:	032a5025 	or	t2,t9,t2
  if (0 < expDiff)
 7a0:	18400022 	blez	v0,82c <float64_add+0x36c>
 7a4:	00076240 	sll	t4,a3,0x9
    {
      if (aExp == 0x7FF)
 7a8:	240307ff 	addiu	v1,zero,2047
 7ac:	1163008f 	beq	t3,v1,9ec <float64_add+0x52c>
 7b0:	00000000 	sll	zero,zero,0x0
	{
	  if (aSig)
	    return propagateFloat64NaN (a, b);
	  return a;
	}
      if (bExp == 0)
 7b4:	17000037 	bnez	t8,894 <float64_add+0x3d4>
 7b8:	3c032000 	lui	v1,0x2000
	--expDiff;
 7bc:	2442ffff 	addiu	v0,v0,-1
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
 7c0:	14400036 	bnez	v0,89c <float64_add+0x3dc>
 7c4:	28430040 	slti	v1,v0,64
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
 7c8:	3c022000 	lui	v0,0x2000
  zSig = (aSig + bSig) << 1;
 7cc:	01ec6021 	addu	t4,t7,t4
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
 7d0:	01c27025 	or	t6,t6,v0
  zSig = (aSig + bSig) << 1;
 7d4:	018f782b 	sltu	t7,t4,t7
 7d8:	01ca5021 	addu	t2,t6,t2
 7dc:	01ea7821 	addu	t7,t7,t2
 7e0:	000c17c2 	srl	v0,t4,0x1f
 7e4:	000f3040 	sll	a2,t7,0x1
 7e8:	00463025 	or	a2,v0,a2
  --zExp;
  if ((sbits64) zSig < 0)
 7ec:	04c00084 	bltz	a2,a00 <float64_add+0x540>
 7f0:	000c3840 	sll	a3,t4,0x1
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
  zSig = (aSig + bSig) << 1;
  --zExp;
 7f4:	256bffff 	addiu	t3,t3,-1
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);

}
 7f8:	8fb00004 	lw	s0,4(sp)
    {
      zSig = aSig + bSig;
      ++zExp;
    }
roundAndPack:
  return roundAndPackFloat64 (zSign, zExp, zSig);
 7fc:	01a02021 	addu	a0,t5,zero
 800:	01602821 	addu	a1,t3,zero
 804:	08000037 	j	dc <roundAndPackFloat64>
 808:	27bd0008 	addiu	sp,sp,8
    }
  else
    {
      if (aExp == 0x7FF)
	{
	  if (aSig | bSig)
 80c:	014e5025 	or	t2,t2,t6
 810:	018f6025 	or	t4,t4,t7
 814:	014c5025 	or	t2,t2,t4
 818:	1140ffa6 	beqz	t2,6b4 <float64_add+0x1f4>
 81c:	01001021 	addu	v0,t0,zero
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);

}
 820:	8fb00004 	lw	s0,4(sp)
  goto normalizeRoundAndPack;
aExpBigger:
  if (aExp == 0x7FF)
    {
      if (aSig)
	return propagateFloat64NaN (a, b);
 824:	08000000 	j	0 <propagateFloat64NaN>
 828:	27bd0008 	addiu	sp,sp,8
      else
	bSig |= LIT64 (0x2000000000000000);
      shift64RightJamming (bSig, expDiff, &bSig);
      zExp = aExp;
    }
  else if (expDiff < 0)
 82c:	14400049 	bnez	v0,954 <float64_add+0x494>
 830:	240307ff 	addiu	v1,zero,2047
      shift64RightJamming (aSig, -expDiff, &aSig);
      zExp = bExp;
    }
  else
    {
      if (aExp == 0x7FF)
 834:	240207ff 	addiu	v0,zero,2047
 838:	1162fff4 	beq	t3,v0,80c <float64_add+0x34c>
 83c:	00000000 	sll	zero,zero,0x0
	{
	  if (aSig | bSig)
	    return propagateFloat64NaN (a, b);
	  return a;
	}
      if (aExp == 0)
 840:	11600081 	beqz	t3,a48 <float64_add+0x588>
 844:	3c024000 	lui	v0,0x4000
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
 848:	01ec3821 	addu	a3,t7,t4
 84c:	01c21021 	addu	v0,t6,v0
 850:	00ef782b 	sltu	t7,a3,t7
 854:	004a5021 	addu	t2,v0,t2
 858:	080001fe 	j	7f8 <float64_add+0x338>
 85c:	01ea3021 	addu	a2,t7,t2
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 860:	000c3842 	srl	a3,t4,0x1
 864:	000a2827 	nor	a1,zero,t2
 868:	00a72806 	srlv	a1,a3,a1
 86c:	01431804 	sllv	v1,v1,t2
 870:	00a31825 	or	v1,a1,v1
 874:	080001a4 	j	690 <float64_add+0x1d0>
 878:	014c6004 	sllv	t4,t4,t2
 87c:	00032840 	sll	a1,v1,0x1
 880:	00852804 	sllv	a1,a1,a0
 884:	014c2006 	srlv	a0,t4,t2
 888:	00a42025 	or	a0,a1,a0
 88c:	0800019e 	j	678 <float64_add+0x1b8>
 890:	01433006 	srlv	a2,v1,t2
	  return a;
	}
      if (bExp == 0)
	--expDiff;
      else
	bSig |= LIT64 (0x2000000000000000);
 894:	01435025 	or	t2,t2,v1

  if (count == 0)
    {
      z = a;
    }
  else if (count < 64)
 898:	28430040 	slti	v1,v0,64
 89c:	10600014 	beqz	v1,8f0 <float64_add+0x430>
 8a0:	30430020 	andi	v1,v0,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 8a4:	10600062 	beqz	v1,a30 <float64_add+0x570>
 8a8:	00021827 	nor	v1,zero,v0
 8ac:	004a1806 	srlv	v1,t2,v0
 8b0:	00002021 	addu	a0,zero,zero
 8b4:	00021023 	negu	v0,v0
 8b8:	30450020 	andi	a1,v0,0x20
 8bc:	10a00055 	beqz	a1,a14 <float64_add+0x554>
 8c0:	3042003f 	andi	v0,v0,0x3f
 8c4:	004c5004 	sllv	t2,t4,v0
 8c8:	00006021 	addu	t4,zero,zero
 8cc:	014c6025 	or	t4,t2,t4
 8d0:	000c602b 	sltu	t4,zero,t4
 8d4:	00805021 	addu	t2,a0,zero
 8d8:	080001f2 	j	7c8 <float64_add+0x308>
 8dc:	01836025 	or	t4,t4,v1
  if (aExp == 0)
    {
      aExp = 1;
      bExp = 1;
    }
  if (bSig < aSig)
 8e0:	1480ff1a 	bnez	a0,54c <float64_add+0x8c>
 8e4:	0043202b 	sltu	a0,v0,v1
 8e8:	08000192 	j	648 <float64_add+0x188>
 8ec:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      z = (a != 0);
 8f0:	014c6025 	or	t4,t2,t4
 8f4:	000c602b 	sltu	t4,zero,t4
 8f8:	080001f2 	j	7c8 <float64_add+0x308>
 8fc:	00005021 	addu	t2,zero,zero
    goto aBigger;
  if (aSig < bSig)
 900:	14620004 	bne	v1,v0,914 <float64_add+0x454>
 904:	00000000 	sll	zero,zero,0x0
 908:	01cc202b 	sltu	a0,t6,t4
 90c:	1480ff8d 	bnez	a0,744 <float64_add+0x284>
 910:	01e05821 	addu	t3,t7,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 914:	8f820000 	lw	v0,0(gp)
    }
  if (bSig < aSig)
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
 918:	00004821 	addu	t1,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 91c:	38420003 	xori	v0,v0,0x3
 920:	2c420001 	sltiu	v0,v0,1
    }
  if (bSig < aSig)
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
 924:	000217c0 	sll	v0,v0,0x1f
 928:	080001ac 	j	6b0 <float64_add+0x1f0>
 92c:	00404021 	addu	t0,v0,zero
bExpBigger:
  if (bExp == 0x7FF)
    {
      if (bSig)
 930:	006c6025 	or	t4,v1,t4
 934:	1580ffba 	bnez	t4,820 <float64_add+0x360>
 938:	39ad0001 	xori	t5,t5,0x1

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 93c:	000d6fc0 	sll	t5,t5,0x1f
 940:	3c027ff0 	lui	v0,0x7ff0
bExpBigger:
  if (bExp == 0x7FF)
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
 944:	01a21021 	addu	v0,t5,v0
 948:	00404021 	addu	t0,v0,zero
 94c:	080001ac 	j	6b0 <float64_add+0x1f0>
 950:	00004821 	addu	t1,zero,zero
      shift64RightJamming (bSig, expDiff, &bSig);
      zExp = aExp;
    }
  else if (expDiff < 0)
    {
      if (bExp == 0x7FF)
 954:	1303005c 	beq	t8,v1,ac8 <float64_add+0x608>
 958:	00000000 	sll	zero,zero,0x0
	{
	  if (bSig)
	    return propagateFloat64NaN (a, b);
	  return packFloat64 (zSign, 0x7FF, 0);
	}
      if (aExp == 0)
 95c:	15600058 	bnez	t3,ac0 <float64_add+0x600>
 960:	3c032000 	lui	v1,0x2000
	++expDiff;
 964:	24420001 	addiu	v0,v0,1
      else
	{
	  aSig |= LIT64 (0x2000000000000000);
	}
      shift64RightJamming (aSig, -expDiff, &aSig);
 968:	00021823 	negu	v1,v0
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
 96c:	1060ff96 	beqz	v1,7c8 <float64_add+0x308>
 970:	03005821 	addu	t3,t8,zero
    {
      z = a;
    }
  else if (count < 64)
 974:	28640040 	slti	a0,v1,64
 978:	10800058 	beqz	a0,adc <float64_add+0x61c>
 97c:	30640020 	andi	a0,v1,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 980:	10800062 	beqz	a0,b0c <float64_add+0x64c>
 984:	00032027 	nor	a0,zero,v1
 988:	006e2006 	srlv	a0,t6,v1
 98c:	00001821 	addu	v1,zero,zero
 990:	30450020 	andi	a1,v0,0x20
 994:	10a00056 	beqz	a1,af0 <float64_add+0x630>
 998:	3042003f 	andi	v0,v0,0x3f
 99c:	004f7004 	sllv	t6,t7,v0
 9a0:	00007821 	addu	t7,zero,zero
 9a4:	01cf7825 	or	t7,t6,t7
 9a8:	000f782b 	sltu	t7,zero,t7
 9ac:	00607021 	addu	t6,v1,zero
 9b0:	01e47825 	or	t7,t7,a0
 9b4:	080001f2 	j	7c8 <float64_add+0x308>
 9b8:	03005821 	addu	t3,t8,zero
    goto aExpBigger;
  if (expDiff < 0)
    goto bExpBigger;
  if (aExp == 0x7FF)
    {
      if (aSig | bSig)
 9bc:	00621025 	or	v0,v1,v0
 9c0:	018e7025 	or	t6,t4,t6
 9c4:	004e6025 	or	t4,v0,t6
 9c8:	1580ff95 	bnez	t4,820 <float64_add+0x360>
 9cc:	3c087fff 	lui	t0,0x7fff
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 9d0:	8f820000 	lw	v0,0(gp)
 9d4:	00000000 	sll	zero,zero,0x0
 9d8:	34420010 	ori	v0,v0,0x10
	return propagateFloat64NaN (a, b);
      float_raise (float_flag_invalid);
      return float64_default_nan;
 9dc:	2409ffff 	addiu	t1,zero,-1
 9e0:	3508ffff 	ori	t0,t0,0xffff
 9e4:	080001ac 	j	6b0 <float64_add+0x1f0>
 9e8:	af820000 	sw	v0,0(gp)
  bSig <<= 9;
  if (0 < expDiff)
    {
      if (aExp == 0x7FF)
	{
	  if (aSig)
 9ec:	01cf7825 	or	t7,t6,t7
 9f0:	11e0ff30 	beqz	t7,6b4 <float64_add+0x1f4>
 9f4:	01001021 	addu	v0,t0,zero
 9f8:	08000208 	j	820 <float64_add+0x360>
 9fc:	00000000 	sll	zero,zero,0x0
  aSig |= LIT64 (0x2000000000000000);
  zSig = (aSig + bSig) << 1;
  --zExp;
  if ((sbits64) zSig < 0)
    {
      zSig = aSig + bSig;
 a00:	01e03021 	addu	a2,t7,zero
 a04:	080001fe 	j	7f8 <float64_add+0x338>
 a08:	01803821 	addu	a3,t4,zero
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
    }
  if (aExp == 0)
    ++expDiff;
  else
    aSig |= LIT64 (0x4000000000000000);
 a0c:	080001ba 	j	6e8 <float64_add+0x228>
 a10:	00441025 	or	v0,v0,a0
 a14:	000c3042 	srl	a2,t4,0x1
 a18:	00022827 	nor	a1,zero,v0
 a1c:	00a62806 	srlv	a1,a2,a1
 a20:	004a5004 	sllv	t2,t2,v0
 a24:	00aa5025 	or	t2,a1,t2
 a28:	08000233 	j	8cc <float64_add+0x40c>
 a2c:	004c6004 	sllv	t4,t4,v0
 a30:	000a2040 	sll	a0,t2,0x1
 a34:	00642004 	sllv	a0,a0,v1
 a38:	004c1806 	srlv	v1,t4,v0
 a3c:	00831825 	or	v1,a0,v1
 a40:	0800022d 	j	8b4 <float64_add+0x3f4>
 a44:	004a2006 	srlv	a0,t2,v0
	  if (aSig | bSig)
	    return propagateFloat64NaN (a, b);
	  return a;
	}
      if (aExp == 0)
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
 a48:	018f7821 	addu	t7,t4,t7
 a4c:	01ec602b 	sltu	t4,t7,t4
 a50:	014e5021 	addu	t2,t2,t6
 a54:	018a5021 	addu	t2,t4,t2
 a58:	000a1242 	srl	v0,t2,0x9

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 a5c:	000d6fc0 	sll	t5,t5,0x1f
	  if (aSig | bSig)
	    return propagateFloat64NaN (a, b);
	  return a;
	}
      if (aExp == 0)
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
 a60:	000a55c0 	sll	t2,t2,0x17
 a64:	000f7a42 	srl	t7,t7,0x9

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 a68:	004d6821 	addu	t5,v0,t5
 a6c:	014f5025 	or	t2,t2,t7
 a70:	01a04021 	addu	t0,t5,zero
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
 a74:	080001ac 	j	6b0 <float64_add+0x1f0>
 a78:	01404821 	addu	t1,t2,zero
    }
  else
    {
      z = (a != 0);
 a7c:	004e7025 	or	t6,v0,t6
 a80:	000e702b 	sltu	t6,zero,t6
 a84:	080001ce 	j	738 <float64_add+0x278>
 a88:	00001021 	addu	v0,zero,zero
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 a8c:	000e3842 	srl	a3,t6,0x1
 a90:	000a3027 	nor	a2,zero,t2
 a94:	00c73006 	srlv	a2,a3,a2
 a98:	01421004 	sllv	v0,v0,t2
 a9c:	00c21025 	or	v0,a2,v0
 aa0:	080001ca 	j	728 <float64_add+0x268>
 aa4:	014e7004 	sllv	t6,t6,t2
 aa8:	00023040 	sll	a2,v0,0x1
 aac:	00a63004 	sllv	a2,a2,a1
 ab0:	008e2806 	srlv	a1,t6,a0
 ab4:	00c52825 	or	a1,a2,a1
 ab8:	080001c5 	j	714 <float64_add+0x254>
 abc:	00822006 	srlv	a0,v0,a0
	}
      if (aExp == 0)
	++expDiff;
      else
	{
	  aSig |= LIT64 (0x2000000000000000);
 ac0:	0800025a 	j	968 <float64_add+0x4a8>
 ac4:	01c37025 	or	t6,t6,v1
    }
  else if (expDiff < 0)
    {
      if (bExp == 0x7FF)
	{
	  if (bSig)
 ac8:	014c6025 	or	t4,t2,t4
 acc:	1180ff9c 	beqz	t4,940 <float64_add+0x480>
 ad0:	000d6fc0 	sll	t5,t5,0x1f
 ad4:	08000208 	j	820 <float64_add+0x360>
 ad8:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      z = (a != 0);
 adc:	01cf7825 	or	t7,t6,t7
 ae0:	000f782b 	sltu	t7,zero,t7
 ae4:	00007021 	addu	t6,zero,zero
 ae8:	080001f2 	j	7c8 <float64_add+0x308>
 aec:	03005821 	addu	t3,t8,zero
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 af0:	000f3042 	srl	a2,t7,0x1
 af4:	00022827 	nor	a1,zero,v0
 af8:	00a62806 	srlv	a1,a2,a1
 afc:	004e7004 	sllv	t6,t6,v0
 b00:	00ae7025 	or	t6,a1,t6
 b04:	08000269 	j	9a4 <float64_add+0x4e4>
 b08:	004f7804 	sllv	t7,t7,v0
 b0c:	000e2840 	sll	a1,t6,0x1
 b10:	00852804 	sllv	a1,a1,a0
 b14:	006f2006 	srlv	a0,t7,v1
 b18:	00a42025 	or	a0,a1,a0
 b1c:	08000264 	j	990 <float64_add+0x4d0>
 b20:	006e1806 	srlv	v1,t6,v1

00000b24 <ullong_to_double>:
    unsigned long long ll;
  } t;

  t.ll = x;
  return t.d;
}
 b24:	44850000 	mtc1	a1,$f0
 b28:	00000000 	sll	zero,zero,0x0
 b2c:	44840800 	mtc1	a0,$f1
 b30:	03e00008 	jr	ra
 b34:	00000000 	sll	zero,zero,0x0

00000b38 <main>:
  0xBFE0000000000000ULL		/* -0.5 */
};

int
main ()
{
 b38:	27bdffa8 	addiu	sp,sp,-88
 b3c:	afbe0050 	sw	s8,80(sp)
 b40:	afb7004c 	sw	s7,76(sp)
 b44:	afb60048 	sw	s6,72(sp)
 b48:	3c170000 	lui	s7,0x0
 b4c:	3c160000 	lui	s6,0x0
 b50:	3c1e0000 	lui	s8,0x0
 b54:	afb50044 	sw	s5,68(sp)
 b58:	afb40040 	sw	s4,64(sp)
 b5c:	afbf0054 	sw	ra,84(sp)
 b60:	afb3003c 	sw	s3,60(sp)
 b64:	afb20038 	sw	s2,56(sp)
 b68:	afb10034 	sw	s1,52(sp)
 b6c:	afb00030 	sw	s0,48(sp)
 b70:	0000a021 	addu	s4,zero,zero
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
 b74:	0000a821 	addu	s5,zero,zero
 b78:	26f70000 	addiu	s7,s7,0
 b7c:	26d60000 	addiu	s6,s6,0
 b80:	27de0000 	addiu	s8,s8,0
  0xBFF0000000000000ULL,	/* -1.0 */
  0xBFE0000000000000ULL		/* -0.5 */
};

int
main ()
 b84:	02f41821 	addu	v1,s7,s4
 b88:	02d41021 	addu	v0,s6,s4
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
 b8c:	8c710004 	lw	s1,4(v1)
 b90:	8c700000 	lw	s0,0(v1)
	  x2 = b_input[i];
 b94:	8c530004 	lw	s3,4(v0)
 b98:	8c520000 	lw	s2,0(v0)
	  result = float64_add (x1, x2);
 b9c:	02202821 	addu	a1,s1,zero
 ba0:	02002021 	addu	a0,s0,zero
 ba4:	02603821 	addu	a3,s3,zero
 ba8:	0c000000 	jal	0 <propagateFloat64NaN>
 bac:	02403021 	addu	a2,s2,zero
  0xBFF0000000000000ULL,	/* -1.0 */
  0xBFE0000000000000ULL		/* -0.5 */
};

int
main ()
 bb0:	03d42021 	addu	a0,s8,s4
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_add (x1, x2);
	  main_result += (result != z_output[i]);
 bb4:	8c880000 	lw	t0,0(a0)
 bb8:	8c850004 	lw	a1,4(a0)
 bbc:	01024826 	xor	t1,t0,v0
 bc0:	00a32026 	xor	a0,a1,v1
 bc4:	01244825 	or	t1,t1,a0

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 bc8:	3c040000 	lui	a0,0x0
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_add (x1, x2);
	  main_result += (result != z_output[i]);
 bcc:	0009482b 	sltu	t1,zero,t1

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 bd0:	24840000 	addiu	a0,a0,0
 bd4:	02203821 	addu	a3,s1,zero
 bd8:	02003021 	addu	a2,s0,zero
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_add (x1, x2);
	  main_result += (result != z_output[i]);
 bdc:	02a9a821 	addu	s5,s5,t1

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 be0:	afb30014 	sw	s3,20(sp)
 be4:	afb20010 	sw	s2,16(sp)
 be8:	afa80018 	sw	t0,24(sp)
 bec:	afa5001c 	sw	a1,28(sp)
 bf0:	afa30024 	sw	v1,36(sp)
 bf4:	afa20020 	sw	v0,32(sp)
 bf8:	afa3002c 	sw	v1,44(sp)
 bfc:	afa20028 	sw	v0,40(sp)
 c00:	0c000000 	jal	0 <propagateFloat64NaN>
 c04:	26940008 	addiu	s4,s4,8
{
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
 c08:	24020170 	addiu	v0,zero,368
 c0c:	1682ffde 	bne	s4,v0,b88 <main+0x50>
 c10:	02f41821 	addu	v1,s7,s4
	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     a_input[i], b_input[i], z_output[i], result,
	     ullong_to_double (result));
	}
      printf ("%d\n", main_result);
 c14:	3c040000 	lui	a0,0x0
 c18:	02a02821 	addu	a1,s5,zero
 c1c:	0c000000 	jal	0 <propagateFloat64NaN>
 c20:	24840000 	addiu	a0,a0,0
      return main_result;
    }
 c24:	8fbf0054 	lw	ra,84(sp)
 c28:	02a01021 	addu	v0,s5,zero
 c2c:	8fbe0050 	lw	s8,80(sp)
 c30:	8fb7004c 	lw	s7,76(sp)
 c34:	8fb60048 	lw	s6,72(sp)
 c38:	8fb50044 	lw	s5,68(sp)
 c3c:	8fb40040 	lw	s4,64(sp)
 c40:	8fb3003c 	lw	s3,60(sp)
 c44:	8fb20038 	lw	s2,56(sp)
 c48:	8fb10034 	lw	s1,52(sp)
 c4c:	8fb00030 	lw	s0,48(sp)
 c50:	03e00008 	jr	ra
 c54:	27bd0058 	addiu	sp,sp,88

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
