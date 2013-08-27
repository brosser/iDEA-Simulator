
dfadd.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <roundAndPackFloat64>:
{
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
   0:	8f830000 	lw	v1,0(gp)
   4:	00000000 	sll	zero,zero,0x0
  roundNearestEven = (roundingMode == float_round_nearest_even);
   8:	2c6c0001 	sltiu	t4,v1,1
  roundIncrement = 0x200;
  if (!roundNearestEven)
   c:	1580002b 	bnez	t4,bc <roundAndPackFloat64+0xbc>
  10:	24090200 	addiu	t1,zero,512
    {
      if (roundingMode == float_round_to_zero)
  14:	24020001 	addiu	v0,zero,1
  18:	1062006c 	beq	v1,v0,1cc <roundAndPackFloat64+0x1cc>
  1c:	00004821 	addu	t1,zero,zero
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
  20:	14800067 	bnez	a0,1c0 <roundAndPackFloat64+0x1c0>
  24:	24020002 	addiu	v0,zero,2
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
  28:	24020003 	addiu	v0,zero,3
  2c:	10620068 	beq	v1,v0,1d0 <roundAndPackFloat64+0x1d0>
  30:	00004021 	addu	t0,zero,zero
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
  34:	30a3ffff 	andi	v1,a1,0xffff
  38:	2c6307fd 	sltiu	v1,v1,2045
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
  3c:	240903ff 	addiu	t1,zero,1023
  40:	00004021 	addu	t0,zero,zero
  44:	00005821 	addu	t3,zero,zero
  48:	00005021 	addu	t2,zero,zero
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
  4c:	10600023 	beqz	v1,dc <roundAndPackFloat64+0xdc>
  50:	240203ff 	addiu	v0,zero,1023
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
  54:	01276821 	addu	t5,t1,a3
  58:	01a9182b 	sltu	v1,t5,t1
  5c:	01061021 	addu	v0,t0,a2
  60:	00621021 	addu	v0,v1,v0
	      if (roundingMode == float_round_down)
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  64:	30e303ff 	andi	v1,a3,0x3ff
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
  68:	14600028 	bnez	v1,10c <roundAndPackFloat64+0x10c>
  6c:	00000000 	sll	zero,zero,0x0
  70:	240bffff 	addiu	t3,zero,-1
  74:	240affff 	addiu	t2,zero,-1
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  78:	00021d80 	sll	v1,v0,0x16
  7c:	000d4a82 	srl	t1,t5,0xa
  80:	00694825 	or	t1,v1,t1
  84:	00021282 	srl	v0,v0,0xa
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  88:	004a1024 	and	v0,v0,t2
  8c:	012b4824 	and	t1,t1,t3
  if (zSig == 0)
  90:	00491825 	or	v1,v0,t1
  94:	10600033 	beqz	v1,164 <roundAndPackFloat64+0x164>
  98:	00003821 	addu	a3,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
  9c:	000427c0 	sll	a0,a0,0x1f
  a0:	00441021 	addu	v0,v0,a0
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
  a4:	00053500 	sll	a2,a1,0x14

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
  a8:	01271821 	addu	v1,t1,a3
  ac:	0069482b 	sltu	t1,v1,t1
  b0:	00463021 	addu	a2,v0,a2
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
    zExp = 0;
  return packFloat64 (zSign, zExp, zSig);

}
  b4:	03e00008 	jr	ra
  b8:	01261021 	addu	v0,t1,a2
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
  roundNearestEven = (roundingMode == float_round_nearest_even);
  roundIncrement = 0x200;
  if (!roundNearestEven)
  bc:	00004021 	addu	t0,zero,zero
  c0:	00005821 	addu	t3,zero,zero
  c4:	00005021 	addu	t2,zero,zero
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
  roundNearestEven = (roundingMode == float_round_nearest_even);
  roundIncrement = 0x200;
  c8:	24020200 	addiu	v0,zero,512
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
  cc:	30a3ffff 	andi	v1,a1,0xffff
  d0:	2c6307fd 	sltiu	v1,v1,2045
  d4:	1460ffe0 	bnez	v1,58 <roundAndPackFloat64+0x58>
  d8:	01276821 	addu	t5,t1,a3
    {
      if ((0x7FD < zExp)
  dc:	28a307fe 	slti	v1,a1,2046
  e0:	1060002d 	beqz	v1,198 <roundAndPackFloat64+0x198>
  e4:	00000000 	sll	zero,zero,0x0
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
  e8:	240307fd 	addiu	v1,zero,2045
  ec:	10a30025 	beq	a1,v1,184 <roundAndPackFloat64+0x184>
  f0:	01276821 	addu	t5,t1,a3
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
	}
      if (zExp < 0)
  f4:	04a0003a 	bltz	a1,1e0 <roundAndPackFloat64+0x1e0>
  f8:	00476821 	addu	t5,v0,a3
  fc:	01a2102b 	sltu	v0,t5,v0
	      if (roundingMode == float_round_down)
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
 100:	30e303ff 	andi	v1,a3,0x3ff
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
 104:	1060ffda 	beqz	v1,70 <roundAndPackFloat64+0x70>
 108:	00461021 	addu	v0,v0,a2
 10c:	8f820000 	lw	v0,0(gp)
    float_exception_flags |= float_flag_inexact;
 110:	00e96821 	addu	t5,a3,t1
 114:	38630200 	xori	v1,v1,0x200
 118:	2c630001 	sltiu	v1,v1,1
 11c:	34420001 	ori	v0,v0,0x1
 120:	01a7382b 	sltu	a3,t5,a3
 124:	00c84021 	addu	t0,a2,t0
 128:	006c6024 	and	t4,v1,t4
 12c:	af820000 	sw	v0,0(gp)
 130:	00e81021 	addu	v0,a3,t0
  zSig = (zSig + roundIncrement) >> 10;
 134:	00021d80 	sll	v1,v0,0x16
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
 138:	000c6027 	nor	t4,zero,t4
  zSig = (zSig + roundIncrement) >> 10;
 13c:	000d4a82 	srl	t1,t5,0xa
 140:	00694825 	or	t1,v1,t1
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
 144:	01805821 	addu	t3,t4,zero
 148:	000c57c3 	sra	t2,t4,0x1f
  zSig = (zSig + roundIncrement) >> 10;
 14c:	00021282 	srl	v0,v0,0xa
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 150:	004a1024 	and	v0,v0,t2
 154:	012b4824 	and	t1,t1,t3
  if (zSig == 0)
 158:	00491825 	or	v1,v0,t1
 15c:	1460ffcf 	bnez	v1,9c <roundAndPackFloat64+0x9c>
 160:	00003821 	addu	a3,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 164:	000427c0 	sll	a0,a0,0x1f
 168:	00441021 	addu	v0,v0,a0
 16c:	01271821 	addu	v1,t1,a3
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
 170:	00003021 	addu	a2,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 174:	0069482b 	sltu	t1,v1,t1
 178:	00463021 	addu	a2,v0,a2
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
    zExp = 0;
  return packFloat64 (zSign, zExp, zSig);

}
 17c:	03e00008 	jr	ra
 180:	01261021 	addu	v0,t1,a2
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 184:	01a9182b 	sltu	v1,t5,t1
 188:	01061021 	addu	v0,t0,a2
 18c:	00621021 	addu	v0,v1,v0
 190:	0441ffb4 	bgez	v0,64 <roundAndPackFloat64+0x64>
 194:	00000000 	sll	zero,zero,0x0
 198:	8f830000 	lw	v1,0(gp)

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 19c:	000427c0 	sll	a0,a0,0x1f
 1a0:	3c027ff0 	lui	v0,0x7ff0
 1a4:	00821021 	addu	v0,a0,v0
 1a8:	34630009 	ori	v1,v1,0x9
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 1ac:	004a1023 	subu	v0,v0,t2
 1b0:	af830000 	sw	v1,0(gp)
 1b4:	004b1023 	subu	v0,v0,t3
 1b8:	03e00008 	jr	ra
 1bc:	000b1823 	negu	v1,t3
      else
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
	    {
	      if (roundingMode == float_round_up)
 1c0:	1462ff9d 	bne	v1,v0,38 <roundAndPackFloat64+0x38>
 1c4:	30a3ffff 	andi	v1,a1,0xffff
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
 1c8:	00004821 	addu	t1,zero,zero
 1cc:	00004021 	addu	t0,zero,zero
 1d0:	240b0001 	addiu	t3,zero,1
 1d4:	00005021 	addu	t2,zero,zero
		roundIncrement = 0;
 1d8:	08000033 	j	cc <roundAndPackFloat64+0xcc>
 1dc:	00001021 	addu	v0,zero,zero
      if (zExp < 0)
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
 1e0:	00051023 	negu	v0,a1

  if (count == 0)
    {
      z = a;
    }
  else if (count < 64)
 1e4:	28430040 	slti	v1,v0,64
 1e8:	1060000f 	beqz	v1,228 <roundAndPackFloat64+0x228>
 1ec:	30430020 	andi	v1,v0,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 1f0:	10600025 	beqz	v1,288 <roundAndPackFloat64+0x288>
 1f4:	00021827 	nor	v1,zero,v0
 1f8:	00461806 	srlv	v1,a2,v0
 1fc:	00001021 	addu	v0,zero,zero
 200:	30aa0020 	andi	t2,a1,0x20
 204:	11400019 	beqz	t2,26c <roundAndPackFloat64+0x26c>
 208:	30a5003f 	andi	a1,a1,0x3f
 20c:	00a73004 	sllv	a2,a3,a1
 210:	00003821 	addu	a3,zero,zero
 214:	00c73825 	or	a3,a2,a3
 218:	0007382b 	sltu	a3,zero,a3
 21c:	00403021 	addu	a2,v0,zero
 220:	0800008d 	j	234 <roundAndPackFloat64+0x234>
 224:	00e33825 	or	a3,a3,v1
    }
  else
    {
      z = (a != 0);
 228:	00c73825 	or	a3,a2,a3
 22c:	0007382b 	sltu	a3,zero,a3
 230:	00003021 	addu	a2,zero,zero
	  zExp = 0;
	  roundBits = zSig & 0x3FF;
 234:	30e303ff 	andi	v1,a3,0x3ff
	  if (isTiny && roundBits)
 238:	14600008 	bnez	v1,25c <roundAndPackFloat64+0x25c>
 23c:	00e96821 	addu	t5,a3,t1
 240:	01a7382b 	sltu	a3,t5,a3
 244:	00c84021 	addu	t0,a2,t0
 248:	00e81021 	addu	v0,a3,t0
 24c:	240bffff 	addiu	t3,zero,-1
 250:	240affff 	addiu	t2,zero,-1
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 254:	0800001e 	j	78 <roundAndPackFloat64+0x78>
 258:	00002821 	addu	a1,zero,zero
 25c:	8f820000 	lw	v0,0(gp)
 260:	00002821 	addu	a1,zero,zero
 264:	08000044 	j	110 <roundAndPackFloat64+0x110>
 268:	34420004 	ori	v0,v0,0x4
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 26c:	00075842 	srl	t3,a3,0x1
 270:	00055027 	nor	t2,zero,a1
 274:	014b5006 	srlv	t2,t3,t2
 278:	00a63004 	sllv	a2,a2,a1
 27c:	01463025 	or	a2,t2,a2
 280:	08000085 	j	214 <roundAndPackFloat64+0x214>
 284:	00a73804 	sllv	a3,a3,a1
 288:	00065040 	sll	t2,a2,0x1
 28c:	006a5004 	sllv	t2,t2,v1
 290:	00471806 	srlv	v1,a3,v0
 294:	01431825 	or	v1,t2,v1
 298:	08000080 	j	200 <roundAndPackFloat64+0x200>
 29c:	00461006 	srlv	v0,a2,v0

000002a0 <addFloat64Sigs>:

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 2a0:	3c03000f 	lui	v1,0xf
 2a4:	3463ffff 	ori	v1,v1,0xffff

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 2a8:	00044502 	srl	t0,a0,0x14
 2ac:	00061502 	srl	v0,a2,0x14

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 2b0:	00835024 	and	t2,a0,v1

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 2b4:	310807ff 	andi	t0,t0,0x7ff
 2b8:	304207ff 	andi	v0,v0,0x7ff

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 2bc:	00c31824 	and	v1,a2,v1
  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
  aSig <<= 9;
 2c0:	000565c2 	srl	t4,a1,0x17
  bSig <<= 9;
 2c4:	00076dc2 	srl	t5,a3,0x17
  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
  aSig <<= 9;
 2c8:	000a5240 	sll	t2,t2,0x9
  bSig <<= 9;
 2cc:	00034a40 	sll	t1,v1,0x9

  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
 2d0:	01025823 	subu	t3,t0,v0
  aSig <<= 9;
 2d4:	018a5025 	or	t2,t4,t2
  bSig <<= 9;
 2d8:	01a94825 	or	t1,t5,t1
| Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
addFloat64Sigs (float64 a, float64 b, flag zSign)
{
 2dc:	8fae0010 	lw	t6,16(sp)
  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
  aSig <<= 9;
 2e0:	00056240 	sll	t4,a1,0x9
  bSig <<= 9;
  if (0 < expDiff)
 2e4:	19600039 	blez	t3,3cc <addFloat64Sigs+0x12c>
 2e8:	00076a40 	sll	t5,a3,0x9
    {
      if (aExp == 0x7FF)
 2ec:	240307ff 	addiu	v1,zero,2047
 2f0:	11030045 	beq	t0,v1,408 <addFloat64Sigs+0x168>
 2f4:	00000000 	sll	zero,zero,0x0
	{
	  if (aSig)
	    return propagateFloat64NaN (a, b);
	  return a;
	}
      if (bExp == 0)
 2f8:	14400012 	bnez	v0,344 <addFloat64Sigs+0xa4>
 2fc:	3c022000 	lui	v0,0x2000
	--expDiff;
 300:	256bffff 	addiu	t3,t3,-1
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
 304:	15600010 	bnez	t3,348 <addFloat64Sigs+0xa8>
 308:	01002821 	addu	a1,t0,zero
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
 30c:	3c022000 	lui	v0,0x2000
  zSig = (aSig + bSig) << 1;
 310:	018d6821 	addu	t5,t4,t5
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
 314:	01425025 	or	t2,t2,v0
  zSig = (aSig + bSig) << 1;
 318:	01ac602b 	sltu	t4,t5,t4
 31c:	01494821 	addu	t1,t2,t1
 320:	01894821 	addu	t1,t4,t1
 324:	000d17c2 	srl	v0,t5,0x1f
 328:	00093040 	sll	a2,t1,0x1
 32c:	00463025 	or	a2,v0,a2
  --zExp;
  if ((sbits64) zSig < 0)
 330:	04c00022 	bltz	a2,3bc <addFloat64Sigs+0x11c>
 334:	000d3840 	sll	a3,t5,0x1
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
  zSig = (aSig + bSig) << 1;
  --zExp;
 338:	24a5ffff 	addiu	a1,a1,-1
    {
      zSig = aSig + bSig;
      ++zExp;
    }
roundAndPack:
  return roundAndPackFloat64 (zSign, zExp, zSig);
 33c:	08000000 	j	0 <roundAndPackFloat64>
 340:	01c02021 	addu	a0,t6,zero
	  return a;
	}
      if (bExp == 0)
	--expDiff;
      else
	bSig |= LIT64 (0x2000000000000000);
 344:	01224825 	or	t1,t1,v0
    {
      z = a;
    }
  else if (count < 64)
 348:	29620040 	slti	v0,t3,64
 34c:	10400034 	beqz	v0,420 <addFloat64Sigs+0x180>
 350:	31620020 	andi	v0,t3,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 354:	1040007e 	beqz	v0,550 <addFloat64Sigs+0x2b0>
 358:	000b1027 	nor	v0,zero,t3
 35c:	01691006 	srlv	v0,t1,t3
 360:	00002021 	addu	a0,zero,zero
 364:	000b5823 	negu	t3,t3
 368:	31630020 	andi	v1,t3,0x20
 36c:	10600071 	beqz	v1,534 <addFloat64Sigs+0x294>
 370:	316b003f 	andi	t3,t3,0x3f
 374:	016d4804 	sllv	t1,t5,t3
 378:	00006821 	addu	t5,zero,zero
 37c:	012d6825 	or	t5,t1,t5
 380:	000d682b 	sltu	t5,zero,t5
 384:	01a26825 	or	t5,t5,v0
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
 388:	3c022000 	lui	v0,0x2000
  zSig = (aSig + bSig) << 1;
 38c:	018d6821 	addu	t5,t4,t5
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
 390:	01425025 	or	t2,t2,v0
 394:	00804821 	addu	t1,a0,zero
  zSig = (aSig + bSig) << 1;
 398:	01ac602b 	sltu	t4,t5,t4
 39c:	01494821 	addu	t1,t2,t1
 3a0:	01894821 	addu	t1,t4,t1
 3a4:	000d17c2 	srl	v0,t5,0x1f
 3a8:	00093040 	sll	a2,t1,0x1
 3ac:	00463025 	or	a2,v0,a2
 3b0:	01002821 	addu	a1,t0,zero
  --zExp;
  if ((sbits64) zSig < 0)
 3b4:	04c1ffe0 	bgez	a2,338 <addFloat64Sigs+0x98>
 3b8:	000d3840 	sll	a3,t5,0x1
    {
      zSig = aSig + bSig;
 3bc:	01203021 	addu	a2,t1,zero
 3c0:	01a03821 	addu	a3,t5,zero
      ++zExp;
    }
roundAndPack:
  return roundAndPackFloat64 (zSign, zExp, zSig);
 3c4:	08000000 	j	0 <roundAndPackFloat64>
 3c8:	01c02021 	addu	a0,t6,zero
      else
	bSig |= LIT64 (0x2000000000000000);
      shift64RightJamming (bSig, expDiff, &bSig);
      zExp = aExp;
    }
  else if (expDiff < 0)
 3cc:	15600019 	bnez	t3,434 <addFloat64Sigs+0x194>
 3d0:	240307ff 	addiu	v1,zero,2047
      shift64RightJamming (aSig, -expDiff, &aSig);
      zExp = bExp;
    }
  else
    {
      if (aExp == 0x7FF)
 3d4:	240207ff 	addiu	v0,zero,2047
 3d8:	1102002f 	beq	t0,v0,498 <addFloat64Sigs+0x1f8>
 3dc:	00000000 	sll	zero,zero,0x0
	{
	  if (aSig | bSig)
	    return propagateFloat64NaN (a, b);
	  return a;
	}
      if (aExp == 0)
 3e0:	11000061 	beqz	t0,568 <addFloat64Sigs+0x2c8>
 3e4:	00000000 	sll	zero,zero,0x0
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
 3e8:	3c024000 	lui	v0,0x4000
 3ec:	018d3821 	addu	a3,t4,t5
 3f0:	01421021 	addu	v0,t2,v0
 3f4:	00ec602b 	sltu	t4,a3,t4
 3f8:	00494821 	addu	t1,v0,t1
 3fc:	01893021 	addu	a2,t4,t1
      zExp = aExp;
      goto roundAndPack;
 400:	080000cf 	j	33c <addFloat64Sigs+0x9c>
 404:	01002821 	addu	a1,t0,zero
  bSig <<= 9;
  if (0 < expDiff)
    {
      if (aExp == 0x7FF)
	{
	  if (aSig)
 408:	014c5025 	or	t2,t2,t4
 40c:	15400027 	bnez	t2,4ac <addFloat64Sigs+0x20c>
 410:	00000000 	sll	zero,zero,0x0
      ++zExp;
    }
roundAndPack:
  return roundAndPackFloat64 (zSign, zExp, zSig);

}
 414:	00801021 	addu	v0,a0,zero
 418:	03e00008 	jr	ra
 41c:	00a01821 	addu	v1,a1,zero
    }
  else
    {
      z = (a != 0);
 420:	012d6825 	or	t5,t1,t5
 424:	000d682b 	sltu	t5,zero,t5
 428:	00004821 	addu	t1,zero,zero
 42c:	080000c3 	j	30c <addFloat64Sigs+0x6c>
 430:	01002821 	addu	a1,t0,zero
      shift64RightJamming (bSig, expDiff, &bSig);
      zExp = aExp;
    }
  else if (expDiff < 0)
    {
      if (bExp == 0x7FF)
 434:	1043006f 	beq	v0,v1,5f4 <addFloat64Sigs+0x354>
 438:	00000000 	sll	zero,zero,0x0
	{
	  if (bSig)
	    return propagateFloat64NaN (a, b);
	  return packFloat64 (zSign, 0x7FF, 0);
	}
      if (aExp == 0)
 43c:	1100005f 	beqz	t0,5bc <addFloat64Sigs+0x31c>
 440:	3c032000 	lui	v1,0x2000
	++expDiff;
      else
	{
	  aSig |= LIT64 (0x2000000000000000);
 444:	01435025 	or	t2,t2,v1
	}
      shift64RightJamming (aSig, -expDiff, &aSig);
 448:	000b1823 	negu	v1,t3
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
 44c:	1060005d 	beqz	v1,5c4 <addFloat64Sigs+0x324>
 450:	28640040 	slti	a0,v1,64
    {
      z = a;
    }
  else if (count < 64)
 454:	1080006e 	beqz	a0,610 <addFloat64Sigs+0x370>
 458:	30640020 	andi	a0,v1,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 45c:	10800078 	beqz	a0,640 <addFloat64Sigs+0x3a0>
 460:	00032027 	nor	a0,zero,v1
 464:	006a2006 	srlv	a0,t2,v1
 468:	00001821 	addu	v1,zero,zero
 46c:	31650020 	andi	a1,t3,0x20
 470:	10a0006c 	beqz	a1,624 <addFloat64Sigs+0x384>
 474:	316b003f 	andi	t3,t3,0x3f
 478:	016c5004 	sllv	t2,t4,t3
 47c:	00006021 	addu	t4,zero,zero
 480:	014c6025 	or	t4,t2,t4
 484:	000c602b 	sltu	t4,zero,t4
 488:	00605021 	addu	t2,v1,zero
 48c:	01846025 	or	t4,t4,a0
 490:	080000c3 	j	30c <addFloat64Sigs+0x6c>
 494:	00402821 	addu	a1,v0,zero
    }
  else
    {
      if (aExp == 0x7FF)
	{
	  if (aSig | bSig)
 498:	012a4825 	or	t1,t1,t2
 49c:	01ac6025 	or	t4,t5,t4
 4a0:	012c4825 	or	t1,t1,t4
 4a4:	1120ffdc 	beqz	t1,418 <addFloat64Sigs+0x178>
 4a8:	00801021 	addu	v0,a0,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 4ac:	00041cc2 	srl	v1,a0,0x13
 4b0:	30630fff 	andi	v1,v1,0xfff
 4b4:	24020ffe 	addiu	v0,zero,4094
 4b8:	10620049 	beq	v1,v0,5e0 <addFloat64Sigs+0x340>
 4bc:	3c080007 	lui	t0,0x7
 4c0:	00004021 	addu	t0,zero,zero
 4c4:	00061cc2 	srl	v1,a2,0x13
 4c8:	30630fff 	andi	v1,v1,0xfff
 4cc:	24020ffe 	addiu	v0,zero,4094
 4d0:	1062003e 	beq	v1,v0,5cc <addFloat64Sigs+0x32c>
 4d4:	3c030007 	lui	v1,0x7
 4d8:	00001821 	addu	v1,zero,zero

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
 4dc:	3c020008 	lui	v0,0x8
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
 4e0:	00684825 	or	t1,v1,t0

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
 4e4:	00825825 	or	t3,a0,v0
 4e8:	00a05021 	addu	t2,a1,zero
  b |= LIT64 (0x0008000000000000);
 4ec:	00c22025 	or	a0,a2,v0
  if (aIsSignalingNaN | bIsSignalingNaN)
 4f0:	15200028 	bnez	t1,594 <addFloat64Sigs+0x2f4>
 4f4:	00e02821 	addu	a1,a3,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 4f8:	00071fc2 	srl	v1,a3,0x1f
 4fc:	00063040 	sll	a2,a2,0x1
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
 500:	3c02ffe0 	lui	v0,0xffe0

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 504:	00663025 	or	a2,v1,a2
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
 508:	24430001 	addiu	v1,v0,1
 50c:	00c3182b 	sltu	v1,a2,v1
 510:	1060ffc0 	beqz	v1,414 <addFloat64Sigs+0x174>
 514:	00073840 	sll	a3,a3,0x1
 518:	14c20003 	bne	a2,v0,528 <addFloat64Sigs+0x288>
 51c:	00000000 	sll	zero,zero,0x0
 520:	14e0ffbc 	bnez	a3,414 <addFloat64Sigs+0x174>
 524:	00000000 	sll	zero,zero,0x0
 528:	01602021 	addu	a0,t3,zero
	    return propagateFloat64NaN (a, b);
 52c:	08000105 	j	414 <addFloat64Sigs+0x174>
 530:	01402821 	addu	a1,t2,zero
 534:	000d2842 	srl	a1,t5,0x1
 538:	000b1827 	nor	v1,zero,t3
 53c:	00651806 	srlv	v1,a1,v1
 540:	01694804 	sllv	t1,t1,t3
 544:	00694825 	or	t1,v1,t1
 548:	080000df 	j	37c <addFloat64Sigs+0xdc>
 54c:	016d6804 	sllv	t5,t5,t3
 550:	00091840 	sll	v1,t1,0x1
 554:	00431804 	sllv	v1,v1,v0
 558:	016d1006 	srlv	v0,t5,t3
 55c:	00621025 	or	v0,v1,v0
 560:	080000d9 	j	364 <addFloat64Sigs+0xc4>
 564:	01692006 	srlv	a0,t1,t3
	  return a;
	}
      if (aExp == 0)
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
 568:	01ac6021 	addu	t4,t5,t4
 56c:	018d202b 	sltu	a0,t4,t5
 570:	012a4821 	addu	t1,t1,t2
 574:	00892021 	addu	a0,a0,t1
 578:	00042dc0 	sll	a1,a0,0x17
 57c:	000c6242 	srl	t4,t4,0x9
 580:	00042242 	srl	a0,a0,0x9

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 584:	000e77c0 	sll	t6,t6,0x1f
 588:	008e2021 	addu	a0,a0,t6
	  if (aSig | bSig)
	    return propagateFloat64NaN (a, b);
	  return a;
	}
      if (aExp == 0)
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
 58c:	08000105 	j	414 <addFloat64Sigs+0x174>
 590:	00ac2825 	or	a1,a1,t4
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 594:	8f820000 	lw	v0,0(gp)
 598:	00000000 	sll	zero,zero,0x0
 59c:	34420010 	ori	v0,v0,0x10
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
 5a0:	1460ff9c 	bnez	v1,414 <addFloat64Sigs+0x174>
 5a4:	af820000 	sw	v0,0(gp)
 5a8:	1100ffd3 	beqz	t0,4f8 <addFloat64Sigs+0x258>
 5ac:	00000000 	sll	zero,zero,0x0
 5b0:	01602021 	addu	a0,t3,zero
 5b4:	08000105 	j	414 <addFloat64Sigs+0x174>
 5b8:	01402821 	addu	a1,t2,zero
	  if (bSig)
	    return propagateFloat64NaN (a, b);
	  return packFloat64 (zSign, 0x7FF, 0);
	}
      if (aExp == 0)
	++expDiff;
 5bc:	08000112 	j	448 <addFloat64Sigs+0x1a8>
 5c0:	256b0001 	addiu	t3,t3,1
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
 5c4:	080000c3 	j	30c <addFloat64Sigs+0x6c>
 5c8:	00402821 	addu	a1,v0,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 5cc:	3463ffff 	ori	v1,v1,0xffff
 5d0:	00c31824 	and	v1,a2,v1
 5d4:	00671825 	or	v1,v1,a3
 5d8:	08000137 	j	4dc <addFloat64Sigs+0x23c>
 5dc:	0003182b 	sltu	v1,zero,v1
 5e0:	3508ffff 	ori	t0,t0,0xffff
 5e4:	00884024 	and	t0,a0,t0
 5e8:	01054025 	or	t0,t0,a1
 5ec:	08000131 	j	4c4 <addFloat64Sigs+0x224>
 5f0:	0008402b 	sltu	t0,zero,t0
    }
  else if (expDiff < 0)
    {
      if (bExp == 0x7FF)
	{
	  if (bSig)
 5f4:	012d4825 	or	t1,t1,t5
 5f8:	1520ffac 	bnez	t1,4ac <addFloat64Sigs+0x20c>
 5fc:	3c027ff0 	lui	v0,0x7ff0

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 600:	000e27c0 	sll	a0,t6,0x1f
 604:	00822021 	addu	a0,a0,v0
    {
      if (bExp == 0x7FF)
	{
	  if (bSig)
	    return propagateFloat64NaN (a, b);
	  return packFloat64 (zSign, 0x7FF, 0);
 608:	08000105 	j	414 <addFloat64Sigs+0x174>
 60c:	00002821 	addu	a1,zero,zero
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
    }
  else
    {
      z = (a != 0);
 610:	014c6025 	or	t4,t2,t4
 614:	000c602b 	sltu	t4,zero,t4
 618:	00005021 	addu	t2,zero,zero
 61c:	080000c3 	j	30c <addFloat64Sigs+0x6c>
 620:	00402821 	addu	a1,v0,zero
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 624:	000c3042 	srl	a2,t4,0x1
 628:	000b2827 	nor	a1,zero,t3
 62c:	00a62806 	srlv	a1,a2,a1
 630:	016a5004 	sllv	t2,t2,t3
 634:	00aa5025 	or	t2,a1,t2
 638:	08000120 	j	480 <addFloat64Sigs+0x1e0>
 63c:	016c6004 	sllv	t4,t4,t3
 640:	000a2840 	sll	a1,t2,0x1
 644:	00852804 	sllv	a1,a1,a0
 648:	006c2006 	srlv	a0,t4,v1
 64c:	00a42025 	or	a0,a1,a0
 650:	0800011b 	j	46c <addFloat64Sigs+0x1cc>
 654:	006a1806 	srlv	v1,t2,v1

00000658 <subFloat64Sigs>:

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 658:	3c02000f 	lui	v0,0xf
| Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
subFloat64Sigs (float64 a, float64 b, flag zSign)
{
 65c:	00804021 	addu	t0,a0,zero

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 660:	3442ffff 	ori	v0,v0,0xffff

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 664:	00042502 	srl	a0,a0,0x14
 668:	00061d02 	srl	v1,a2,0x14
| Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
subFloat64Sigs (float64 a, float64 b, flag zSign)
{
 66c:	00a04821 	addu	t1,a1,zero

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 670:	01025024 	and	t2,t0,v0
 674:	00a06021 	addu	t4,a1,zero

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 678:	306307ff 	andi	v1,v1,0x7ff
 67c:	308507ff 	andi	a1,a0,0x7ff

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 680:	00c21024 	and	v0,a2,v0
  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
  aSig <<= 10;
 684:	00096d82 	srl	t5,t1,0x16
  bSig <<= 10;
 688:	00077582 	srl	t6,a3,0x16
  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
  aSig <<= 10;
 68c:	000a5280 	sll	t2,t2,0xa
  bSig <<= 10;
 690:	00021280 	sll	v0,v0,0xa

  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
 694:	00a35823 	subu	t3,a1,v1
  aSig <<= 10;
 698:	01aa5025 	or	t2,t5,t2
  bSig <<= 10;
 69c:	01c21025 	or	v0,t6,v0
| Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
subFloat64Sigs (float64 a, float64 b, flag zSign)
{
 6a0:	8fa40010 	lw	a0,16(sp)
  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
  aSig <<= 10;
 6a4:	00096a80 	sll	t5,t1,0xa
  bSig <<= 10;
  if (0 < expDiff)
 6a8:	1960004e 	blez	t3,7e4 <subFloat64Sigs+0x18c>
 6ac:	00077280 	sll	t6,a3,0xa
  zSig = bSig - aSig;
  zExp = bExp;
  zSign ^= 1;
  goto normalizeRoundAndPack;
aExpBigger:
  if (aExp == 0x7FF)
 6b0:	240f07ff 	addiu	t7,zero,2047
 6b4:	10af0063 	beq	a1,t7,844 <subFloat64Sigs+0x1ec>
 6b8:	00000000 	sll	zero,zero,0x0
    {
      if (aSig)
	return propagateFloat64NaN (a, b);
      return a;
    }
  if (bExp == 0)
 6bc:	10600038 	beqz	v1,7a0 <subFloat64Sigs+0x148>
 6c0:	3c034000 	lui	v1,0x4000
    --expDiff;
  else
    bSig |= LIT64 (0x4000000000000000);
 6c4:	00431025 	or	v0,v0,v1

  if (count == 0)
    {
      z = a;
    }
  else if (count < 64)
 6c8:	29630040 	slti	v1,t3,64
 6cc:	10600063 	beqz	v1,85c <subFloat64Sigs+0x204>
 6d0:	31630020 	andi	v1,t3,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 6d4:	106000af 	beqz	v1,994 <subFloat64Sigs+0x33c>
 6d8:	000b1827 	nor	v1,zero,t3
 6dc:	01621806 	srlv	v1,v0,t3
 6e0:	00003821 	addu	a3,zero,zero
 6e4:	000b5823 	negu	t3,t3
 6e8:	31660020 	andi	a2,t3,0x20
 6ec:	10c000a2 	beqz	a2,978 <subFloat64Sigs+0x320>
 6f0:	316b003f 	andi	t3,t3,0x3f
 6f4:	016e1004 	sllv	v0,t6,t3
 6f8:	00007021 	addu	t6,zero,zero
 6fc:	004e7025 	or	t6,v0,t6
 700:	000e702b 	sltu	t6,zero,t6
 704:	00e01021 	addu	v0,a3,zero
 708:	01c37025 	or	t6,t6,v1
  shift64RightJamming (bSig, expDiff, &bSig);
  aSig |= LIT64 (0x4000000000000000);
 70c:	3c034000 	lui	v1,0x4000
 710:	01435025 	or	t2,t2,v1
aBigger:
  zSig = aSig - bSig;
 714:	01ae7023 	subu	t6,t5,t6
 718:	01ae682b 	sltu	t5,t5,t6
 71c:	01423023 	subu	a2,t2,v0
 720:	00cd3023 	subu	a2,a2,t5
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 724:	10c0002c 	beqz	a2,7d8 <subFloat64Sigs+0x180>
 728:	24a5ffff 	addiu	a1,a1,-1
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
 72c:	00c04021 	addu	t0,a2,zero
 730:	2407ffff 	addiu	a3,zero,-1
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
 734:	3c020001 	lui	v0,0x1
 738:	0102102b 	sltu	v0,t0,v0
 73c:	10400024 	beqz	v0,7d0 <subFloat64Sigs+0x178>
 740:	24090008 	addiu	t1,zero,8
    {
      shiftCount += 16;
      a <<= 16;
 744:	00084400 	sll	t0,t0,0x10
 748:	24090018 	addiu	t1,zero,24
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
 74c:	24020010 	addiu	v0,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
 750:	3c030100 	lui	v1,0x100
 754:	0103182b 	sltu	v1,t0,v1
 758:	10600003 	beqz	v1,768 <subFloat64Sigs+0x110>
 75c:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
      a <<= 8;
 760:	00084200 	sll	t0,t0,0x8
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
    {
      shiftCount += 8;
 764:	01201021 	addu	v0,t1,zero
      a <<= 8;
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
 768:	00084602 	srl	t0,t0,0x18
 76c:	3c030000 	lui	v1,0x0
 770:	24630450 	addiu	v1,v1,1104
 774:	00084080 	sll	t0,t0,0x2
 778:	01034021 	addu	t0,t0,v1
static float64
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
 77c:	8d030000 	lw	v1,0(t0)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
 780:	00474021 	addu	t0,v0,a3
 784:	01034021 	addu	t0,t0,v1
  return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
 788:	31020020 	andi	v0,t0,0x20
 78c:	10400009 	beqz	v0,7b4 <subFloat64Sigs+0x15c>
 790:	00a82823 	subu	a1,a1,t0
 794:	010e3004 	sllv	a2,t6,t0
 798:	08000000 	j	0 <roundAndPackFloat64>
 79c:	00003821 	addu	a3,zero,zero
      if (aSig)
	return propagateFloat64NaN (a, b);
      return a;
    }
  if (bExp == 0)
    --expDiff;
 7a0:	256bffff 	addiu	t3,t3,-1
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
 7a4:	1160ffd9 	beqz	t3,70c <subFloat64Sigs+0xb4>
 7a8:	29630040 	slti	v1,t3,64
 7ac:	080001b3 	j	6cc <subFloat64Sigs+0x74>
 7b0:	00000000 	sll	zero,zero,0x0
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
  return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
 7b4:	000e1842 	srl	v1,t6,0x1
 7b8:	00081027 	nor	v0,zero,t0
 7bc:	00431006 	srlv	v0,v1,v0
 7c0:	01063004 	sllv	a2,a2,t0
 7c4:	00463025 	or	a2,v0,a2
 7c8:	08000000 	j	0 <roundAndPackFloat64>
 7cc:	010e3804 	sllv	a3,t6,t0
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
 7d0:	080001d4 	j	750 <subFloat64Sigs+0xf8>
 7d4:	00001021 	addu	v0,zero,zero
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 7d8:	01c04021 	addu	t0,t6,zero
 7dc:	080001cd 	j	734 <subFloat64Sigs+0xdc>
 7e0:	2407001f 	addiu	a3,zero,31
  expDiff = aExp - bExp;
  aSig <<= 10;
  bSig <<= 10;
  if (0 < expDiff)
    goto aExpBigger;
  if (expDiff < 0)
 7e4:	15600021 	bnez	t3,86c <subFloat64Sigs+0x214>
 7e8:	240f07ff 	addiu	t7,zero,2047
    goto bExpBigger;
  if (aExp == 0x7FF)
 7ec:	240b07ff 	addiu	t3,zero,2047
 7f0:	10ab003a 	beq	a1,t3,8dc <subFloat64Sigs+0x284>
 7f4:	00000000 	sll	zero,zero,0x0
      if (aSig | bSig)
	return propagateFloat64NaN (a, b);
      float_raise (float_flag_invalid);
      return float64_default_nan;
    }
  if (aExp == 0)
 7f8:	14a00003 	bnez	a1,808 <subFloat64Sigs+0x1b0>
 7fc:	004a302b 	sltu	a2,v0,t2
    {
      aExp = 1;
      bExp = 1;
 800:	24030001 	addiu	v1,zero,1
      float_raise (float_flag_invalid);
      return float64_default_nan;
    }
  if (aExp == 0)
    {
      aExp = 1;
 804:	24050001 	addiu	a1,zero,1
      bExp = 1;
    }
  if (bSig < aSig)
 808:	14c0ffc2 	bnez	a2,714 <subFloat64Sigs+0xbc>
 80c:	00000000 	sll	zero,zero,0x0
 810:	11420077 	beq	t2,v0,9f0 <subFloat64Sigs+0x398>
 814:	01cd302b 	sltu	a2,t6,t5
    goto aBigger;
  if (aSig < bSig)
 818:	0142282b 	sltu	a1,t2,v0
 81c:	10a00078 	beqz	a1,a00 <subFloat64Sigs+0x3a8>
 820:	00000000 	sll	zero,zero,0x0
  else
    aSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (aSig, -expDiff, &aSig);
  bSig |= LIT64 (0x4000000000000000);
bBigger:
  zSig = bSig - aSig;
 824:	01cd3823 	subu	a3,t6,t5
 828:	01c7702b 	sltu	t6,t6,a3
 82c:	004a3023 	subu	a2,v0,t2
 830:	00ce3023 	subu	a2,a2,t6
  zExp = bExp;
  zSign ^= 1;
 834:	38840001 	xori	a0,a0,0x1
  else
    aSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (aSig, -expDiff, &aSig);
  bSig |= LIT64 (0x4000000000000000);
bBigger:
  zSig = bSig - aSig;
 838:	00e07021 	addu	t6,a3,zero
  zExp = bExp;
  zSign ^= 1;
  goto normalizeRoundAndPack;
 83c:	080001c9 	j	724 <subFloat64Sigs+0xcc>
 840:	00602821 	addu	a1,v1,zero
aExpBigger:
  if (aExp == 0x7FF)
    {
      if (aSig)
 844:	014d5025 	or	t2,t2,t5
 848:	15400029 	bnez	t2,8f0 <subFloat64Sigs+0x298>
 84c:	00000000 	sll	zero,zero,0x0
  zExp = aExp;
normalizeRoundAndPack:
  --zExp;
  return normalizeRoundAndPackFloat64 (zSign, zExp, zSig);

}
 850:	01001021 	addu	v0,t0,zero
 854:	03e00008 	jr	ra
 858:	01201821 	addu	v1,t1,zero
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
    }
  else
    {
      z = (a != 0);
 85c:	004e7025 	or	t6,v0,t6
 860:	000e702b 	sltu	t6,zero,t6
 864:	080001c3 	j	70c <subFloat64Sigs+0xb4>
 868:	00001021 	addu	v0,zero,zero
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
bExpBigger:
  if (bExp == 0x7FF)
 86c:	106f007b 	beq	v1,t7,a5c <subFloat64Sigs+0x404>
 870:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
    }
  if (aExp == 0)
 874:	10a0006d 	beqz	a1,a2c <subFloat64Sigs+0x3d4>
 878:	3c054000 	lui	a1,0x4000
    ++expDiff;
  else
    aSig |= LIT64 (0x4000000000000000);
 87c:	01455025 	or	t2,t2,a1
  shift64RightJamming (aSig, -expDiff, &aSig);
 880:	000b2823 	negu	a1,t3
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
 884:	10a00012 	beqz	a1,8d0 <subFloat64Sigs+0x278>
 888:	00000000 	sll	zero,zero,0x0
    {
      z = a;
    }
  else if (count < 64)
 88c:	28a60040 	slti	a2,a1,64
 890:	10c0007b 	beqz	a2,a80 <subFloat64Sigs+0x428>
 894:	00000000 	sll	zero,zero,0x0
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 898:	30a60020 	andi	a2,a1,0x20
 89c:	10c00085 	beqz	a2,ab4 <subFloat64Sigs+0x45c>
 8a0:	00053027 	nor	a2,zero,a1
 8a4:	00aa3006 	srlv	a2,t2,a1
 8a8:	00002821 	addu	a1,zero,zero
 8ac:	31670020 	andi	a3,t3,0x20
 8b0:	10e00079 	beqz	a3,a98 <subFloat64Sigs+0x440>
 8b4:	316b003f 	andi	t3,t3,0x3f
 8b8:	016d5004 	sllv	t2,t5,t3
 8bc:	00006821 	addu	t5,zero,zero
 8c0:	014d6825 	or	t5,t2,t5
 8c4:	000d682b 	sltu	t5,zero,t5
 8c8:	00a05021 	addu	t2,a1,zero
 8cc:	01a66825 	or	t5,t5,a2
  bSig |= LIT64 (0x4000000000000000);
 8d0:	3c054000 	lui	a1,0x4000
 8d4:	08000209 	j	824 <subFloat64Sigs+0x1cc>
 8d8:	00451025 	or	v0,v0,a1
    goto aExpBigger;
  if (expDiff < 0)
    goto bExpBigger;
  if (aExp == 0x7FF)
    {
      if (aSig | bSig)
 8dc:	004a1025 	or	v0,v0,t2
 8e0:	01cd6825 	or	t5,t6,t5
 8e4:	004d1025 	or	v0,v0,t5
 8e8:	10400030 	beqz	v0,9ac <subFloat64Sigs+0x354>
 8ec:	00000000 	sll	zero,zero,0x0
 8f0:	00081cc2 	srl	v1,t0,0x13
 8f4:	30630fff 	andi	v1,v1,0xfff
 8f8:	24020ffe 	addiu	v0,zero,4094
 8fc:	10620052 	beq	v1,v0,a48 <subFloat64Sigs+0x3f0>
 900:	3c020007 	lui	v0,0x7
 904:	00006021 	addu	t4,zero,zero
 908:	00061cc2 	srl	v1,a2,0x13
 90c:	30630fff 	andi	v1,v1,0xfff
 910:	24020ffe 	addiu	v0,zero,4094
 914:	10620047 	beq	v1,v0,a34 <subFloat64Sigs+0x3dc>
 918:	3c030007 	lui	v1,0x7
 91c:	00001821 	addu	v1,zero,zero

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
 920:	3c020008 	lui	v0,0x8
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
 924:	006c2025 	or	a0,v1,t4

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
 928:	01025025 	or	t2,t0,v0
 92c:	01202821 	addu	a1,t1,zero
  b |= LIT64 (0x0008000000000000);
 930:	00c24025 	or	t0,a2,v0
  if (aIsSignalingNaN | bIsSignalingNaN)
 934:	14800024 	bnez	a0,9c8 <subFloat64Sigs+0x370>
 938:	00e04821 	addu	t1,a3,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 93c:	00071fc2 	srl	v1,a3,0x1f
 940:	00063040 	sll	a2,a2,0x1
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
 944:	3c02ffe0 	lui	v0,0xffe0

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 948:	00663025 	or	a2,v1,a2
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
 94c:	24430001 	addiu	v1,v0,1
 950:	00c3182b 	sltu	v1,a2,v1
 954:	1060ffbe 	beqz	v1,850 <subFloat64Sigs+0x1f8>
 958:	00073840 	sll	a3,a3,0x1
 95c:	14c20003 	bne	a2,v0,96c <subFloat64Sigs+0x314>
 960:	00000000 	sll	zero,zero,0x0
 964:	14e0ffba 	bnez	a3,850 <subFloat64Sigs+0x1f8>
 968:	00000000 	sll	zero,zero,0x0
 96c:	01404021 	addu	t0,t2,zero
  goto normalizeRoundAndPack;
aExpBigger:
  if (aExp == 0x7FF)
    {
      if (aSig)
	return propagateFloat64NaN (a, b);
 970:	08000214 	j	850 <subFloat64Sigs+0x1f8>
 974:	00a04821 	addu	t1,a1,zero
 978:	000e4042 	srl	t0,t6,0x1
 97c:	000b3027 	nor	a2,zero,t3
 980:	00c83006 	srlv	a2,t0,a2
 984:	01621004 	sllv	v0,v0,t3
 988:	00c21025 	or	v0,a2,v0
 98c:	080001bf 	j	6fc <subFloat64Sigs+0xa4>
 990:	016e7004 	sllv	t6,t6,t3
 994:	00023040 	sll	a2,v0,0x1
 998:	00663004 	sllv	a2,a2,v1
 99c:	016e1806 	srlv	v1,t6,t3
 9a0:	00c31825 	or	v1,a2,v1
 9a4:	080001b9 	j	6e4 <subFloat64Sigs+0x8c>
 9a8:	01623806 	srlv	a3,v0,t3
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 9ac:	8f820000 	lw	v0,0(gp)
  if (aExp == 0x7FF)
    {
      if (aSig | bSig)
	return propagateFloat64NaN (a, b);
      float_raise (float_flag_invalid);
      return float64_default_nan;
 9b0:	3c087fff 	lui	t0,0x7fff
 9b4:	34420010 	ori	v0,v0,0x10
 9b8:	2409ffff 	addiu	t1,zero,-1
 9bc:	3508ffff 	ori	t0,t0,0xffff
 9c0:	08000214 	j	850 <subFloat64Sigs+0x1f8>
 9c4:	af820000 	sw	v0,0(gp)
 9c8:	8f820000 	lw	v0,0(gp)
 9cc:	00000000 	sll	zero,zero,0x0
 9d0:	34420010 	ori	v0,v0,0x10
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
 9d4:	1460ff9e 	bnez	v1,850 <subFloat64Sigs+0x1f8>
 9d8:	af820000 	sw	v0,0(gp)
 9dc:	1180ffd7 	beqz	t4,93c <subFloat64Sigs+0x2e4>
 9e0:	00000000 	sll	zero,zero,0x0
 9e4:	01404021 	addu	t0,t2,zero
 9e8:	08000214 	j	850 <subFloat64Sigs+0x1f8>
 9ec:	00a04821 	addu	t1,a1,zero
  if (aExp == 0)
    {
      aExp = 1;
      bExp = 1;
    }
  if (bSig < aSig)
 9f0:	14c0ff48 	bnez	a2,714 <subFloat64Sigs+0xbc>
 9f4:	00000000 	sll	zero,zero,0x0
    goto aBigger;
  if (aSig < bSig)
 9f8:	08000207 	j	81c <subFloat64Sigs+0x1c4>
 9fc:	0142282b 	sltu	a1,t2,v0
 a00:	144a0003 	bne	v0,t2,a10 <subFloat64Sigs+0x3b8>
 a04:	01ae282b 	sltu	a1,t5,t6
 a08:	14a0ff86 	bnez	a1,824 <subFloat64Sigs+0x1cc>
 a0c:	00000000 	sll	zero,zero,0x0

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 a10:	8f820000 	lw	v0,0(gp)
    }
  if (bSig < aSig)
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
 a14:	00004821 	addu	t1,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 a18:	38420003 	xori	v0,v0,0x3
 a1c:	2c420001 	sltiu	v0,v0,1
    }
  if (bSig < aSig)
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
 a20:	000217c0 	sll	v0,v0,0x1f
 a24:	08000214 	j	850 <subFloat64Sigs+0x1f8>
 a28:	00404021 	addu	t0,v0,zero
      if (bSig)
	return propagateFloat64NaN (a, b);
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
    }
  if (aExp == 0)
    ++expDiff;
 a2c:	08000220 	j	880 <subFloat64Sigs+0x228>
 a30:	256b0001 	addiu	t3,t3,1

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 a34:	3463ffff 	ori	v1,v1,0xffff
 a38:	00c31824 	and	v1,a2,v1
 a3c:	00671825 	or	v1,v1,a3
 a40:	08000248 	j	920 <subFloat64Sigs+0x2c8>
 a44:	0003182b 	sltu	v1,zero,v1
 a48:	3442ffff 	ori	v0,v0,0xffff
 a4c:	01021024 	and	v0,t0,v0
 a50:	004c6025 	or	t4,v0,t4
 a54:	08000242 	j	908 <subFloat64Sigs+0x2b0>
 a58:	000c602b 	sltu	t4,zero,t4
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
bExpBigger:
  if (bExp == 0x7FF)
    {
      if (bSig)
 a5c:	004e1025 	or	v0,v0,t6
 a60:	1440ffa3 	bnez	v0,8f0 <subFloat64Sigs+0x298>
 a64:	38840001 	xori	a0,a0,0x1

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 a68:	000427c0 	sll	a0,a0,0x1f
 a6c:	3c027ff0 	lui	v0,0x7ff0
bExpBigger:
  if (bExp == 0x7FF)
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
 a70:	00821021 	addu	v0,a0,v0
 a74:	00404021 	addu	t0,v0,zero
 a78:	08000214 	j	850 <subFloat64Sigs+0x1f8>
 a7c:	00004821 	addu	t1,zero,zero
    }
  else
    {
      z = (a != 0);
 a80:	014d6825 	or	t5,t2,t5
  if (aExp == 0)
    ++expDiff;
  else
    aSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (aSig, -expDiff, &aSig);
  bSig |= LIT64 (0x4000000000000000);
 a84:	3c054000 	lui	a1,0x4000
 a88:	000d682b 	sltu	t5,zero,t5
 a8c:	00005021 	addu	t2,zero,zero
 a90:	08000209 	j	824 <subFloat64Sigs+0x1cc>
 a94:	00451025 	or	v0,v0,a1
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 a98:	000d4042 	srl	t0,t5,0x1
 a9c:	000b3827 	nor	a3,zero,t3
 aa0:	00e83806 	srlv	a3,t0,a3
 aa4:	016a5004 	sllv	t2,t2,t3
 aa8:	00ea5025 	or	t2,a3,t2
 aac:	08000230 	j	8c0 <subFloat64Sigs+0x268>
 ab0:	016d6804 	sllv	t5,t5,t3
 ab4:	000a3840 	sll	a3,t2,0x1
 ab8:	00c73804 	sllv	a3,a3,a2
 abc:	00ad3006 	srlv	a2,t5,a1
 ac0:	00e63025 	or	a2,a3,a2
 ac4:	0800022b 	j	8ac <subFloat64Sigs+0x254>
 ac8:	00aa2806 	srlv	a1,t2,a1

00000acc <shift64RightJamming>:
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
 acc:	10c00006 	beqz	a2,ae8 <shift64RightJamming+0x1c>
 ad0:	28c20040 	slti	v0,a2,64
    {
      z = a;
    }
  else if (count < 64)
 ad4:	14400007 	bnez	v0,af4 <shift64RightJamming+0x28>
 ad8:	00061823 	negu	v1,a2
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
    }
  else
    {
      z = (a != 0);
 adc:	00852825 	or	a1,a0,a1
 ae0:	0005282b 	sltu	a1,zero,a1
 ae4:	00002021 	addu	a0,zero,zero
    }
  *zPtr = z;
 ae8:	ace40000 	sw	a0,0(a3)

}
 aec:	03e00008 	jr	ra
 af0:	ace50004 	sw	a1,4(a3)
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 af4:	30620020 	andi	v0,v1,0x20
 af8:	1040000d 	beqz	v0,b30 <shift64RightJamming+0x64>
 afc:	3063003f 	andi	v1,v1,0x3f
 b00:	00651004 	sllv	v0,a1,v1
 b04:	00001821 	addu	v1,zero,zero
 b08:	00431025 	or	v0,v0,v1
 b0c:	30c80020 	andi	t0,a2,0x20
 b10:	11000011 	beqz	t0,b58 <shift64RightJamming+0x8c>
 b14:	0002102b 	sltu	v0,zero,v0
 b18:	00c42806 	srlv	a1,a0,a2
 b1c:	00452825 	or	a1,v0,a1
 b20:	00002021 	addu	a0,zero,zero
    }
  else
    {
      z = (a != 0);
    }
  *zPtr = z;
 b24:	ace40000 	sw	a0,0(a3)

}
 b28:	03e00008 	jr	ra
 b2c:	ace50004 	sw	a1,4(a3)
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 b30:	00031027 	nor	v0,zero,v1
 b34:	00054042 	srl	t0,a1,0x1
 b38:	00484006 	srlv	t0,t0,v0
 b3c:	00641004 	sllv	v0,a0,v1
 b40:	01021025 	or	v0,t0,v0
 b44:	00651804 	sllv	v1,a1,v1
 b48:	00431025 	or	v0,v0,v1
 b4c:	30c80020 	andi	t0,a2,0x20
 b50:	1500fff1 	bnez	t0,b18 <shift64RightJamming+0x4c>
 b54:	0002102b 	sltu	v0,zero,v0
 b58:	00044040 	sll	t0,a0,0x1
 b5c:	00061827 	nor	v1,zero,a2
 b60:	00681804 	sllv	v1,t0,v1
 b64:	00c52806 	srlv	a1,a1,a2
 b68:	00652825 	or	a1,v1,a1
 b6c:	00c42006 	srlv	a0,a0,a2
 b70:	080002c9 	j	b24 <shift64RightJamming+0x58>
 b74:	00452825 	or	a1,v0,a1

00000b78 <float_raise>:
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 b78:	8f820000 	lw	v0,0(gp)
 b7c:	00000000 	sll	zero,zero,0x0
 b80:	00441025 	or	v0,v0,a0

}
 b84:	03e00008 	jr	ra
 b88:	af820000 	sw	v0,0(gp)

00000b8c <float64_is_nan>:

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 b8c:	000517c2 	srl	v0,a1,0x1f
 b90:	00042040 	sll	a0,a0,0x1
 b94:	3c03ffe0 	lui	v1,0xffe0
 b98:	00442025 	or	a0,v0,a0
 b9c:	24660001 	addiu	a2,v1,1
 ba0:	0086302b 	sltu	a2,a0,a2
 ba4:	00052840 	sll	a1,a1,0x1
 ba8:	10c00007 	beqz	a2,bc8 <float64_is_nan+0x3c>
 bac:	24020001 	addiu	v0,zero,1
 bb0:	10830003 	beq	a0,v1,bc0 <float64_is_nan+0x34>
 bb4:	00000000 	sll	zero,zero,0x0

}
 bb8:	03e00008 	jr	ra
 bbc:	00001021 	addu	v0,zero,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 bc0:	10a0fffd 	beqz	a1,bb8 <float64_is_nan+0x2c>
 bc4:	00000000 	sll	zero,zero,0x0

}
 bc8:	03e00008 	jr	ra
 bcc:	00000000 	sll	zero,zero,0x0

00000bd0 <float64_is_signaling_nan>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 bd0:	000414c2 	srl	v0,a0,0x13
 bd4:	30420fff 	andi	v0,v0,0xfff
 bd8:	24030ffe 	addiu	v1,zero,4094
 bdc:	10430003 	beq	v0,v1,bec <float64_is_signaling_nan+0x1c>
 be0:	00000000 	sll	zero,zero,0x0

}
 be4:	03e00008 	jr	ra
 be8:	00001021 	addu	v0,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 bec:	3c020007 	lui	v0,0x7
 bf0:	3442ffff 	ori	v0,v0,0xffff
 bf4:	00821024 	and	v0,a0,v0
 bf8:	00451025 	or	v0,v0,a1
 bfc:	03e00008 	jr	ra
 c00:	0002102b 	sltu	v0,zero,v0

00000c04 <extractFloat64Frac>:
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);

}
 c04:	3c02000f 	lui	v0,0xf
 c08:	3442ffff 	ori	v0,v0,0xffff
 c0c:	00821024 	and	v0,a0,v0
 c10:	03e00008 	jr	ra
 c14:	00a01821 	addu	v1,a1,zero

00000c18 <extractFloat64Exp>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 c18:	00041502 	srl	v0,a0,0x14

}
 c1c:	03e00008 	jr	ra
 c20:	304207ff 	andi	v0,v0,0x7ff

00000c24 <extractFloat64Sign>:
extractFloat64Sign (float64 a)
{

  return a >> 63;

}
 c24:	03e00008 	jr	ra
 c28:	000417c2 	srl	v0,a0,0x1f

00000c2c <packFloat64>:

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 c2c:	000427c0 	sll	a0,a0,0x1f
 c30:	00c42021 	addu	a0,a2,a0
 c34:	00051500 	sll	v0,a1,0x14

}
 c38:	00821021 	addu	v0,a0,v0
 c3c:	03e00008 	jr	ra
 c40:	00e01821 	addu	v1,a3,zero

00000c44 <float64_add>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_add (float64 a, float64 b)
{
 c44:	27bdffe0 	addiu	sp,sp,-32

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
 c48:	000417c2 	srl	v0,a0,0x1f
 c4c:	00061fc2 	srl	v1,a2,0x1f
{
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
 c50:	10430007 	beq	v0,v1,c70 <float64_add+0x2c>
 c54:	afbf001c 	sw	ra,28(sp)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);
 c58:	0c000196 	jal	658 <subFloat64Sigs>
 c5c:	afa20010 	sw	v0,16(sp)

}
 c60:	8fbf001c 	lw	ra,28(sp)
 c64:	00000000 	sll	zero,zero,0x0
 c68:	03e00008 	jr	ra
 c6c:	27bd0020 	addiu	sp,sp,32
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
 c70:	0c0000a8 	jal	2a0 <addFloat64Sigs>
 c74:	afa20010 	sw	v0,16(sp)
  else
    return subFloat64Sigs (a, b, aSign);

}
 c78:	8fbf001c 	lw	ra,28(sp)
 c7c:	00000000 	sll	zero,zero,0x0
 c80:	03e00008 	jr	ra
 c84:	27bd0020 	addiu	sp,sp,32

00000c88 <ullong_to_double>:
    unsigned long long ll;
  } t;

  t.ll = x;
  return t.d;
}
 c88:	44850000 	mtc1	a1,$f0
 c8c:	00000000 	sll	zero,zero,0x0
 c90:	44840800 	mtc1	a0,$f1
 c94:	03e00008 	jr	ra
 c98:	00000000 	sll	zero,zero,0x0

00000c9c <main>:
  0xBFE0000000000000ULL		/* -0.5 */
};

int
main ()
{
 c9c:	27bdffa8 	addiu	sp,sp,-88
 ca0:	afbe0050 	sw	s8,80(sp)
 ca4:	afb7004c 	sw	s7,76(sp)
 ca8:	afb60048 	sw	s6,72(sp)
 cac:	3c170000 	lui	s7,0x0
 cb0:	3c160000 	lui	s6,0x0
 cb4:	3c1e0000 	lui	s8,0x0
 cb8:	afb50044 	sw	s5,68(sp)
 cbc:	afb00030 	sw	s0,48(sp)
 cc0:	afbf0054 	sw	ra,84(sp)
 cc4:	afb40040 	sw	s4,64(sp)
 cc8:	afb3003c 	sw	s3,60(sp)
 ccc:	afb20038 	sw	s2,56(sp)
 cd0:	afb10034 	sw	s1,52(sp)
 cd4:	00008021 	addu	s0,zero,zero
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
 cd8:	0000a821 	addu	s5,zero,zero
 cdc:	26f70000 	addiu	s7,s7,0
 ce0:	26d60000 	addiu	s6,s6,0
 ce4:	08000356 	j	d58 <main+0xbc>
 ce8:	27de0000 	addiu	s8,s8,0
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);
 cec:	0c000196 	jal	658 <subFloat64Sigs>
 cf0:	afa20010 	sw	v0,16(sp)
  0xBFF0000000000000ULL,	/* -1.0 */
  0xBFE0000000000000ULL		/* -0.5 */
};

int
main ()
 cf4:	03d02021 	addu	a0,s8,s0
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_add (x1, x2);
	  main_result += (result != z_output[i]);
 cf8:	8c880000 	lw	t0,0(a0)
 cfc:	8c850004 	lw	a1,4(a0)
 d00:	01024826 	xor	t1,t0,v0
 d04:	00a32026 	xor	a0,a1,v1
 d08:	01244825 	or	t1,t1,a0

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 d0c:	3c040000 	lui	a0,0x0
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_add (x1, x2);
	  main_result += (result != z_output[i]);
 d10:	0009482b 	sltu	t1,zero,t1

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 d14:	24840000 	addiu	a0,a0,0
 d18:	02403021 	addu	a2,s2,zero
 d1c:	02803821 	addu	a3,s4,zero
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_add (x1, x2);
	  main_result += (result != z_output[i]);
 d20:	02a9a821 	addu	s5,s5,t1

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 d24:	afb10010 	sw	s1,16(sp)
 d28:	afb30014 	sw	s3,20(sp)
 d2c:	afa80018 	sw	t0,24(sp)
 d30:	afa5001c 	sw	a1,28(sp)
 d34:	afa30024 	sw	v1,36(sp)
 d38:	afa20020 	sw	v0,32(sp)
 d3c:	afa3002c 	sw	v1,44(sp)
 d40:	afa20028 	sw	v0,40(sp)
 d44:	0c000000 	jal	0 <roundAndPackFloat64>
 d48:	26100008 	addiu	s0,s0,8
{
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
 d4c:	24020170 	addiu	v0,zero,368
 d50:	12020012 	beq	s0,v0,d9c <main+0x100>
 d54:	3c040000 	lui	a0,0x0
  0xBFF0000000000000ULL,	/* -1.0 */
  0xBFE0000000000000ULL		/* -0.5 */
};

int
main ()
 d58:	02f03821 	addu	a3,s7,s0
 d5c:	02d02821 	addu	a1,s6,s0
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
 d60:	8cf20000 	lw	s2,0(a3)
	  x2 = b_input[i];
 d64:	8cb10000 	lw	s1,0(a1)
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
 d68:	8cf40004 	lw	s4,4(a3)
	  x2 = b_input[i];
 d6c:	8cb30004 	lw	s3,4(a1)

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
 d70:	001217c2 	srl	v0,s2,0x1f
 d74:	00111fc2 	srl	v1,s1,0x1f
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);
 d78:	02402021 	addu	a0,s2,zero
 d7c:	02203021 	addu	a2,s1,zero
 d80:	02802821 	addu	a1,s4,zero
{
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
 d84:	1443ffd9 	bne	v0,v1,cec <main+0x50>
 d88:	02603821 	addu	a3,s3,zero
    return addFloat64Sigs (a, b, aSign);
 d8c:	0c0000a8 	jal	2a0 <addFloat64Sigs>
 d90:	afa20010 	sw	v0,16(sp)
  0xBFF0000000000000ULL,	/* -1.0 */
  0xBFE0000000000000ULL		/* -0.5 */
};

int
main ()
 d94:	0800033e 	j	cf8 <main+0x5c>
 d98:	03d02021 	addu	a0,s8,s0
	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     a_input[i], b_input[i], z_output[i], result,
	     ullong_to_double (result));
	}
      printf ("%d\n", main_result);
 d9c:	02a02821 	addu	a1,s5,zero
 da0:	0c000000 	jal	0 <roundAndPackFloat64>
 da4:	24840000 	addiu	a0,a0,0
      return main_result;
    }
 da8:	8fbf0054 	lw	ra,84(sp)
 dac:	02a01021 	addu	v0,s5,zero
 db0:	8fbe0050 	lw	s8,80(sp)
 db4:	8fb7004c 	lw	s7,76(sp)
 db8:	8fb60048 	lw	s6,72(sp)
 dbc:	8fb50044 	lw	s5,68(sp)
 dc0:	8fb40040 	lw	s4,64(sp)
 dc4:	8fb3003c 	lw	s3,60(sp)
 dc8:	8fb20038 	lw	s2,56(sp)
 dcc:	8fb10034 	lw	s1,52(sp)
 dd0:	8fb00030 	lw	s0,48(sp)
 dd4:	03e00008 	jr	ra
 dd8:	27bd0058 	addiu	sp,sp,88

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
