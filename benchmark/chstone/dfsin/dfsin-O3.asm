
dfsin.o:     file format elf32-bigmips


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
     770:	24630240 	addiu	v1,v1,576
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

00000b78 <shift64ExtraRightJamming>:
*----------------------------------------------------------------------------*/

INLINE void
shift64ExtraRightJamming (bits64 a0, bits64 a1, int16 count, bits64 * z0Ptr,
			  bits64 * z1Ptr)
{
     b78:	8fa80010 	lw	t0,16(sp)
     b7c:	8fa90018 	lw	t1,24(sp)
  bits64 z0, z1;
  int8 negCount;
  negCount = (-count) & 63;

  if (count == 0)
     b80:	11000025 	beqz	t0,c18 <shift64ExtraRightJamming+0xa0>
     b84:	29020040 	slti	v0,t0,64
    {
      z1 = a1;
      z0 = a0;
    }
  else if (count < 64)
     b88:	1440000f 	bnez	v0,bc8 <shift64ExtraRightJamming+0x50>
     b8c:	24020040 	addiu	v0,zero,64
      z1 = (a0 << negCount) | (a1 != 0);
      z0 = a0 >> count;
    }
  else
    {
      if (count == 64)
     b90:	11020041 	beq	t0,v0,c98 <shift64ExtraRightJamming+0x120>
     b94:	00001821 	addu	v1,zero,zero
	{
	  z1 = a0 | (a1 != 0);
	}
      else
	{
	  z1 = ((a0 | a1) != 0);
     b98:	00c42025 	or	a0,a2,a0
     b9c:	00e53825 	or	a3,a3,a1
     ba0:	00873825 	or	a3,a0,a3
     ba4:	0007382b 	sltu	a3,zero,a3
     ba8:	00003021 	addu	a2,zero,zero
	}
      z0 = 0;
     bac:	00001021 	addu	v0,zero,zero
    }
  *z1Ptr = z1;
  *z0Ptr = z0;
     bb0:	8fa40014 	lw	a0,20(sp)
	{
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
     bb4:	ad260000 	sw	a2,0(t1)
     bb8:	ad270004 	sw	a3,4(t1)
  *z0Ptr = z0;
     bbc:	ac830004 	sw	v1,4(a0)

}
     bc0:	03e00008 	jr	ra
     bc4:	ac820000 	sw	v0,0(a0)
shift64ExtraRightJamming (bits64 a0, bits64 a1, int16 count, bits64 * z0Ptr,
			  bits64 * z1Ptr)
{
  bits64 z0, z1;
  int8 negCount;
  negCount = (-count) & 63;
     bc8:	00081823 	negu	v1,t0
      z1 = a1;
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
     bcc:	30620020 	andi	v0,v1,0x20
     bd0:	10400019 	beqz	v0,c38 <shift64ExtraRightJamming+0xc0>
     bd4:	3063003f 	andi	v1,v1,0x3f
     bd8:	00c73825 	or	a3,a2,a3
     bdc:	00651004 	sllv	v0,a1,v1
     be0:	0007382b 	sltu	a3,zero,a3
     be4:	00001821 	addu	v1,zero,zero
      z0 = a0 >> count;
     be8:	310a0020 	andi	t2,t0,0x20
      z1 = a1;
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
     bec:	00403021 	addu	a2,v0,zero
      z0 = a0 >> count;
     bf0:	1140001d 	beqz	t2,c68 <shift64ExtraRightJamming+0xf0>
     bf4:	00673825 	or	a3,v1,a3
     bf8:	01041806 	srlv	v1,a0,t0
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
  *z0Ptr = z0;
     bfc:	8fa40014 	lw	a0,20(sp)
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
      z0 = a0 >> count;
     c00:	00001021 	addu	v0,zero,zero
	{
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
     c04:	ad260000 	sw	a2,0(t1)
     c08:	ad270004 	sw	a3,4(t1)
  *z0Ptr = z0;
     c0c:	ac830004 	sw	v1,4(a0)

}
     c10:	03e00008 	jr	ra
     c14:	ac820000 	sw	v0,0(a0)
  negCount = (-count) & 63;

  if (count == 0)
    {
      z1 = a1;
      z0 = a0;
     c18:	00801021 	addu	v0,a0,zero
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
  *z0Ptr = z0;
     c1c:	8fa40014 	lw	a0,20(sp)
  negCount = (-count) & 63;

  if (count == 0)
    {
      z1 = a1;
      z0 = a0;
     c20:	00a01821 	addu	v1,a1,zero
	{
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
     c24:	ad260000 	sw	a2,0(t1)
     c28:	ad270004 	sw	a3,4(t1)
  *z0Ptr = z0;
     c2c:	ac830004 	sw	v1,4(a0)

}
     c30:	03e00008 	jr	ra
     c34:	ac820000 	sw	v0,0(a0)
      z1 = a1;
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
     c38:	00031027 	nor	v0,zero,v1
     c3c:	00055042 	srl	t2,a1,0x1
     c40:	004a5006 	srlv	t2,t2,v0
     c44:	00c73825 	or	a3,a2,a3
     c48:	00641004 	sllv	v0,a0,v1
     c4c:	01421025 	or	v0,t2,v0
     c50:	00651804 	sllv	v1,a1,v1
     c54:	0007382b 	sltu	a3,zero,a3
      z0 = a0 >> count;
     c58:	310a0020 	andi	t2,t0,0x20
      z1 = a1;
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
     c5c:	00403021 	addu	a2,v0,zero
      z0 = a0 >> count;
     c60:	1540ffe5 	bnez	t2,bf8 <shift64ExtraRightJamming+0x80>
     c64:	00673825 	or	a3,v1,a3
     c68:	00045840 	sll	t3,a0,0x1
     c6c:	00085027 	nor	t2,zero,t0
     c70:	01041006 	srlv	v0,a0,t0
     c74:	014b5004 	sllv	t2,t3,t2
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
  *z0Ptr = z0;
     c78:	8fa40014 	lw	a0,20(sp)
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
      z0 = a0 >> count;
     c7c:	01051806 	srlv	v1,a1,t0
     c80:	01431825 	or	v1,t2,v1
	{
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
     c84:	ad260000 	sw	a2,0(t1)
     c88:	ad270004 	sw	a3,4(t1)
  *z0Ptr = z0;
     c8c:	ac830004 	sw	v1,4(a0)

}
     c90:	03e00008 	jr	ra
     c94:	ac820000 	sw	v0,0(a0)
    }
  else
    {
      if (count == 64)
	{
	  z1 = a0 | (a1 != 0);
     c98:	00c73825 	or	a3,a2,a3
     c9c:	0007382b 	sltu	a3,zero,a3
     ca0:	00803021 	addu	a2,a0,zero
     ca4:	00e53825 	or	a3,a3,a1
	}
      else
	{
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
     ca8:	080002ec 	j	bb0 <shift64ExtraRightJamming+0x38>
     cac:	00001021 	addu	v0,zero,zero

00000cb0 <add128>:
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     cb0:	8fa2001c 	lw	v0,28(sp)
  bits64 z1;

  z1 = a1 + b1;
     cb4:	8fa80018 	lw	t0,24(sp)
     cb8:	00474821 	addu	t1,v0,a3
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     cbc:	8faa0014 	lw	t2,20(sp)
  bits64 z1;

  z1 = a1 + b1;
     cc0:	0122102b 	sltu	v0,t1,v0
     cc4:	01064021 	addu	t0,t0,a2
     cc8:	00484021 	addu	t0,v0,t0
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     ccc:	8fa20010 	lw	v0,16(sp)
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     cd0:	8fa30024 	lw	v1,36(sp)
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     cd4:	01452821 	addu	a1,t2,a1
     cd8:	00442021 	addu	a0,v0,a0
     cdc:	00aa502b 	sltu	t2,a1,t2
     ce0:	0106602b 	sltu	t4,t0,a2
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     ce4:	8fab0020 	lw	t3,32(sp)
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     ce8:	01442021 	addu	a0,t2,a0
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
     cec:	ac680000 	sw	t0,0(v1)
     cf0:	ac690004 	sw	t1,4(v1)
  *z0Ptr = a0 + b0 + (z1 < a1);
     cf4:	00001021 	addu	v0,zero,zero
     cf8:	15800005 	bnez	t4,d10 <add128+0x60>
     cfc:	24030001 	addiu	v1,zero,1
     d00:	10c8000a 	beq	a2,t0,d2c <add128+0x7c>
     d04:	00000000 	sll	zero,zero,0x0
     d08:	00001821 	addu	v1,zero,zero
     d0c:	00001021 	addu	v0,zero,zero
     d10:	00a33021 	addu	a2,a1,v1
     d14:	00c5282b 	sltu	a1,a2,a1
     d18:	00821021 	addu	v0,a0,v0
     d1c:	00a21021 	addu	v0,a1,v0
     d20:	ad620000 	sw	v0,0(t3)

}
     d24:	03e00008 	jr	ra
     d28:	ad660004 	sw	a2,4(t3)
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     d2c:	0127382b 	sltu	a3,t1,a3
     d30:	14e0fff8 	bnez	a3,d14 <add128+0x64>
     d34:	00a33021 	addu	a2,a1,v1
     d38:	08000343 	j	d0c <add128+0x5c>
     d3c:	00001821 	addu	v1,zero,zero

00000d40 <sub128>:
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     d40:	8fa8001c 	lw	t0,28(sp)
     d44:	8fa90018 	lw	t1,24(sp)

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     d48:	8faa0014 	lw	t2,20(sp)
     d4c:	8fa20010 	lw	v0,16(sp)
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     d50:	00e85823 	subu	t3,a3,t0
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     d54:	8fa30024 	lw	v1,36(sp)

  *z1Ptr = a1 - b1;
     d58:	00c96823 	subu	t5,a2,t1
     d5c:	00eb602b 	sltu	t4,a3,t3
  *z0Ptr = a0 - b0 - (a1 < b1);
     d60:	00aa5023 	subu	t2,a1,t2
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     d64:	01ac6023 	subu	t4,t5,t4
  *z0Ptr = a0 - b0 - (a1 < b1);
     d68:	00822023 	subu	a0,a0,v0
     d6c:	00aa282b 	sltu	a1,a1,t2
     d70:	00c9702b 	sltu	t6,a2,t1
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     d74:	8fad0020 	lw	t5,32(sp)

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     d78:	00852023 	subu	a0,a0,a1
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     d7c:	ac6c0000 	sw	t4,0(v1)
     d80:	ac6b0004 	sw	t3,4(v1)
  *z0Ptr = a0 - b0 - (a1 < b1);
     d84:	00001021 	addu	v0,zero,zero
     d88:	15c00005 	bnez	t6,da0 <sub128+0x60>
     d8c:	24030001 	addiu	v1,zero,1
     d90:	1126000a 	beq	t1,a2,dbc <sub128+0x7c>
     d94:	00000000 	sll	zero,zero,0x0
     d98:	00001821 	addu	v1,zero,zero
     d9c:	00001021 	addu	v0,zero,zero
     da0:	01432823 	subu	a1,t2,v1
     da4:	0145502b 	sltu	t2,t2,a1
     da8:	00821023 	subu	v0,a0,v0
     dac:	004a1023 	subu	v0,v0,t2
     db0:	ada20000 	sw	v0,0(t5)

}
     db4:	03e00008 	jr	ra
     db8:	ada50004 	sw	a1,4(t5)
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     dbc:	00e8402b 	sltu	t0,a3,t0
     dc0:	1500fff8 	bnez	t0,da4 <sub128+0x64>
     dc4:	01432823 	subu	a1,t2,v1
     dc8:	08000367 	j	d9c <sub128+0x5c>
     dcc:	00001821 	addu	v1,zero,zero

00000dd0 <mul64To128>:
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     dd0:	00c50019 	multu	a2,a1
| `z0Ptr' and `z1Ptr'.
*----------------------------------------------------------------------------*/

INLINE void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
     dd4:	8fad0010 	lw	t5,16(sp)
     dd8:	8fae0014 	lw	t6,20(sp)
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     ddc:	00004812 	mflo	t1
     de0:	00004010 	mfhi	t0
	...
  zMiddleB = ((bits64) aHigh) * bLow;
     dec:	00870019 	multu	a0,a3
     df0:	00001010 	mfhi	v0
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     df4:	01024021 	addu	t0,t0,v0
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
     df8:	00001812 	mflo	v1
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     dfc:	01236021 	addu	t4,t1,v1
     e00:	00000000 	sll	zero,zero,0x0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
     e04:	00e50019 	multu	a3,a1
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     e08:	0189282b 	sltu	a1,t4,t1
     e0c:	00a84021 	addu	t0,a1,t0
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     e10:	0102382b 	sltu	a3,t0,v0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
     e14:	00005812 	mflo	t3
     e18:	00005010 	mfhi	t2
	...
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
     e24:	00c40019 	multu	a2,a0
     e28:	00002812 	mflo	a1
     e2c:	00002010 	mfhi	a0
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     e30:	14e00004 	bnez	a3,e44 <mul64To128+0x74>
     e34:	24060001 	addiu	a2,zero,1
     e38:	11020017 	beq	t0,v0,e98 <mul64To128+0xc8>
     e3c:	0183102b 	sltu	v0,t4,v1
     e40:	00003021 	addu	a2,zero,zero
  zMiddleA <<= 32;
  z1 += zMiddleA;
     e44:	018a7821 	addu	t7,t4,t2
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     e48:	01054821 	addu	t1,t0,a1
     e4c:	0128402b 	sltu	t0,t1,t0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     e50:	01ec602b 	sltu	t4,t7,t4
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
     e54:	01605021 	addu	t2,t3,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     e58:	01042021 	addu	a0,t0,a0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     e5c:	24030001 	addiu	v1,zero,1
     e60:	15800003 	bnez	t4,e70 <mul64To128+0xa0>
     e64:	00001021 	addu	v0,zero,zero
     e68:	00001821 	addu	v1,zero,zero
     e6c:	00001021 	addu	v0,zero,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     e70:	01232821 	addu	a1,t1,v1
     e74:	00a9482b 	sltu	t1,a1,t1
     e78:	00821021 	addu	v0,a0,v0
     e7c:	01221021 	addu	v0,t1,v0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     e80:	00463021 	addu	a2,v0,a2
  *z1Ptr = z1;
     e84:	adcf0000 	sw	t7,0(t6)
     e88:	adca0004 	sw	t2,4(t6)
  *z0Ptr = z0;
     e8c:	ada60000 	sw	a2,0(t5)

}
     e90:	03e00008 	jr	ra
     e94:	ada50004 	sw	a1,4(t5)
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     e98:	1040ffe9 	beqz	v0,e40 <mul64To128+0x70>
     e9c:	24060001 	addiu	a2,zero,1
  zMiddleA <<= 32;
  z1 += zMiddleA;
     ea0:	08000392 	j	e48 <mul64To128+0x78>
     ea4:	018a7821 	addu	t7,t4,t2

00000ea8 <float_raise>:
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
     ea8:	8f820000 	lw	v0,0(gp)
     eac:	00000000 	sll	zero,zero,0x0
     eb0:	00441025 	or	v0,v0,a0

}
     eb4:	03e00008 	jr	ra
     eb8:	af820000 	sw	v0,0(gp)

00000ebc <float64_is_nan>:

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     ebc:	000517c2 	srl	v0,a1,0x1f
     ec0:	00042040 	sll	a0,a0,0x1
     ec4:	3c03ffe0 	lui	v1,0xffe0
     ec8:	00442025 	or	a0,v0,a0
     ecc:	24660001 	addiu	a2,v1,1
     ed0:	0086302b 	sltu	a2,a0,a2
     ed4:	00052840 	sll	a1,a1,0x1
     ed8:	10c00007 	beqz	a2,ef8 <float64_is_nan+0x3c>
     edc:	24020001 	addiu	v0,zero,1
     ee0:	10830003 	beq	a0,v1,ef0 <float64_is_nan+0x34>
     ee4:	00000000 	sll	zero,zero,0x0

}
     ee8:	03e00008 	jr	ra
     eec:	00001021 	addu	v0,zero,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     ef0:	10a0fffd 	beqz	a1,ee8 <float64_is_nan+0x2c>
     ef4:	00000000 	sll	zero,zero,0x0

}
     ef8:	03e00008 	jr	ra
     efc:	00000000 	sll	zero,zero,0x0

00000f00 <float64_is_signaling_nan>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     f00:	000414c2 	srl	v0,a0,0x13
     f04:	30420fff 	andi	v0,v0,0xfff
     f08:	24030ffe 	addiu	v1,zero,4094
     f0c:	10430003 	beq	v0,v1,f1c <float64_is_signaling_nan+0x1c>
     f10:	00000000 	sll	zero,zero,0x0

}
     f14:	03e00008 	jr	ra
     f18:	00001021 	addu	v0,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     f1c:	3c020007 	lui	v0,0x7
     f20:	3442ffff 	ori	v0,v0,0xffff
     f24:	00821024 	and	v0,a0,v0
     f28:	00451025 	or	v0,v0,a1
     f2c:	03e00008 	jr	ra
     f30:	0002102b 	sltu	v0,zero,v0

00000f34 <extractFloat64Frac>:
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);

}
     f34:	3c02000f 	lui	v0,0xf
     f38:	3442ffff 	ori	v0,v0,0xffff
     f3c:	00821024 	and	v0,a0,v0
     f40:	03e00008 	jr	ra
     f44:	00a01821 	addu	v1,a1,zero

00000f48 <extractFloat64Exp>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     f48:	00041502 	srl	v0,a0,0x14

}
     f4c:	03e00008 	jr	ra
     f50:	304207ff 	andi	v0,v0,0x7ff

00000f54 <extractFloat64Sign>:
extractFloat64Sign (float64 a)
{

  return a >> 63;

}
     f54:	03e00008 	jr	ra
     f58:	000417c2 	srl	v0,a0,0x1f

00000f5c <packFloat64>:

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     f5c:	000427c0 	sll	a0,a0,0x1f
     f60:	00c42021 	addu	a0,a2,a0
     f64:	00051500 	sll	v0,a1,0x14

}
     f68:	00821021 	addu	v0,a0,v0
     f6c:	03e00008 	jr	ra
     f70:	00e01821 	addu	v1,a3,zero

00000f74 <int32_to_float64>:
  flag zSign;
  uint32 absA;
  int8 shiftCount;
  bits64 zSig;

  if (a == 0)
     f74:	1080002b 	beqz	a0,1024 <int32_to_float64+0xb0>
     f78:	000437c2 	srl	a2,a0,0x1f
    return 0;
  zSign = (a < 0);
  absA = zSign ? -a : a;
     f7c:	10c00002 	beqz	a2,f88 <int32_to_float64+0x14>
     f80:	3c020001 	lui	v0,0x1
     f84:	00042023 	negu	a0,a0
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
     f88:	0082102b 	sltu	v0,a0,v0
     f8c:	14400022 	bnez	v0,1018 <int32_to_float64+0xa4>
     f90:	00041c00 	sll	v1,a0,0x10
     f94:	00801821 	addu	v1,a0,zero
     f98:	24020015 	addiu	v0,zero,21
     f9c:	24070008 	addiu	a3,zero,8
    {
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
     fa0:	3c050100 	lui	a1,0x100
     fa4:	0065282b 	sltu	a1,v1,a1
     fa8:	10a00003 	beqz	a1,fb8 <int32_to_float64+0x44>
     fac:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
      a <<= 8;
     fb0:	00031a00 	sll	v1,v1,0x8
     fb4:	24e20015 	addiu	v0,a3,21
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
     fb8:	00031e02 	srl	v1,v1,0x18
     fbc:	3c050000 	lui	a1,0x0
     fc0:	00031880 	sll	v1,v1,0x2
     fc4:	24a50240 	addiu	a1,a1,576
     fc8:	00651821 	addu	v1,v1,a1
  shiftCount = countLeadingZeros32 (absA) + 21;
     fcc:	8c630000 	lw	v1,0(v1)
     fd0:	00000000 	sll	zero,zero,0x0
     fd4:	00431021 	addu	v0,v0,v1
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);
     fd8:	30430020 	andi	v1,v0,0x20
     fdc:	10600016 	beqz	v1,1038 <int32_to_float64+0xc4>
     fe0:	00043842 	srl	a3,a0,0x1
     fe4:	00443804 	sllv	a3,a0,v0
     fe8:	00001821 	addu	v1,zero,zero
     fec:	24080432 	addiu	t0,zero,1074
     ff0:	01021023 	subu	v0,t0,v0

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     ff4:	000637c0 	sll	a2,a2,0x1f
     ff8:	00e63021 	addu	a2,a3,a2
     ffc:	00021500 	sll	v0,v0,0x14
    1000:	00c21021 	addu	v0,a2,v0
    1004:	00402021 	addu	a0,v0,zero
    1008:	00602821 	addu	a1,v1,zero
  absA = zSign ? -a : a;
  shiftCount = countLeadingZeros32 (absA) + 21;
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);

}
    100c:	00801021 	addu	v0,a0,zero
    1010:	03e00008 	jr	ra
    1014:	00a01821 	addu	v1,a1,zero

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
      a <<= 16;
    1018:	24020025 	addiu	v0,zero,37
    101c:	080003e8 	j	fa0 <int32_to_float64+0x2c>
    1020:	24070018 	addiu	a3,zero,24
  uint32 absA;
  int8 shiftCount;
  bits64 zSig;

  if (a == 0)
    return 0;
    1024:	00002821 	addu	a1,zero,zero
    1028:	00002021 	addu	a0,zero,zero
  absA = zSign ? -a : a;
  shiftCount = countLeadingZeros32 (absA) + 21;
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);

}
    102c:	00801021 	addu	v0,a0,zero
    1030:	03e00008 	jr	ra
    1034:	00a01821 	addu	v1,a1,zero
    return 0;
  zSign = (a < 0);
  absA = zSign ? -a : a;
  shiftCount = countLeadingZeros32 (absA) + 21;
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);
    1038:	00021827 	nor	v1,zero,v0
    103c:	00673806 	srlv	a3,a3,v1
    1040:	080003fb 	j	fec <int32_to_float64+0x78>
    1044:	00441804 	sllv	v1,a0,v0

00001048 <float64_add>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_add (float64 a, float64 b)
{
    1048:	27bdffe0 	addiu	sp,sp,-32

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    104c:	000417c2 	srl	v0,a0,0x1f
    1050:	00061fc2 	srl	v1,a2,0x1f
{
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
    1054:	10430007 	beq	v0,v1,1074 <float64_add+0x2c>
    1058:	afbf001c 	sw	ra,28(sp)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);
    105c:	0c000196 	jal	658 <subFloat64Sigs>
    1060:	afa20010 	sw	v0,16(sp)

}
    1064:	8fbf001c 	lw	ra,28(sp)
    1068:	00000000 	sll	zero,zero,0x0
    106c:	03e00008 	jr	ra
    1070:	27bd0020 	addiu	sp,sp,32
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
    1074:	0c0000a8 	jal	2a0 <addFloat64Sigs>
    1078:	afa20010 	sw	v0,16(sp)
  else
    return subFloat64Sigs (a, b, aSign);

}
    107c:	8fbf001c 	lw	ra,28(sp)
    1080:	00000000 	sll	zero,zero,0x0
    1084:	03e00008 	jr	ra
    1088:	27bd0020 	addiu	sp,sp,32

0000108c <float64_mul>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    108c:	00044502 	srl	t0,a0,0x14

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    1090:	3c03000f 	lui	v1,0xf
    1094:	3463ffff 	ori	v1,v1,0xffff

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    1098:	00064d02 	srl	t1,a2,0x14

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    109c:	00867026 	xor	t6,a0,a2

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    10a0:	310807ff 	andi	t0,t0,0x7ff
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    10a4:	240d07ff 	addiu	t5,zero,2047

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    10a8:	00837824 	and	t7,a0,v1
    10ac:	00a05821 	addu	t3,a1,zero
    10b0:	00c31824 	and	v1,a2,v1
    10b4:	00e06021 	addu	t4,a3,zero

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    10b8:	312907ff 	andi	t1,t1,0x7ff
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    10bc:	110d0016 	beq	t0,t5,1118 <float64_mul+0x8c>
    10c0:	000e77c2 	srl	t6,t6,0x1f
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    10c4:	112d0070 	beq	t1,t5,1288 <float64_mul+0x1fc>
    10c8:	00000000 	sll	zero,zero,0x0
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (aExp == 0)
    10cc:	1100000a 	beqz	t0,10f8 <float64_mul+0x6c>
    10d0:	01e51025 	or	v0,t7,a1
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  if (bExp == 0)
    10d4:	15200043 	bnez	t1,11e4 <float64_mul+0x158>
    10d8:	00671025 	or	v0,v1,a3
    {
      if (bSig == 0)
    10dc:	14400021 	bnez	v0,1164 <float64_mul+0xd8>
    10e0:	00000000 	sll	zero,zero,0x0
	return packFloat64 (zSign, 0, 0);
    10e4:	000e77c0 	sll	t6,t6,0x1f
    10e8:	01c04021 	addu	t0,t6,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
    10ec:	01c01021 	addu	v0,t6,zero
    10f0:	03e00008 	jr	ra
    10f4:	01201821 	addu	v1,t1,zero
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (aExp == 0)
    {
      if (aSig == 0)
    10f8:	14400074 	bnez	v0,12cc <float64_mul+0x240>
    10fc:	00000000 	sll	zero,zero,0x0
	return packFloat64 (zSign, 0, 0);
    1100:	000e77c0 	sll	t6,t6,0x1f
    1104:	01c04021 	addu	t0,t6,zero
    1108:	00004821 	addu	t1,zero,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
    110c:	01001021 	addu	v0,t0,zero
    1110:	03e00008 	jr	ra
    1114:	01201821 	addu	v1,t1,zero
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    {
      if (aSig || ((bExp == 0x7FF) && bSig))
    1118:	01e57825 	or	t7,t7,a1
    111c:	15e000ad 	bnez	t7,13d4 <float64_mul+0x348>
    1120:	00000000 	sll	zero,zero,0x0
    1124:	112800a8 	beq	t1,t0,13c8 <float64_mul+0x33c>
    1128:	000957c3 	sra	t2,t1,0x1f
	return propagateFloat64NaN (a, b);
      if ((bExp | bSig) == 0)
    112c:	01431825 	or	v1,t2,v1
    1130:	01274825 	or	t1,t1,a3
    1134:	00691825 	or	v1,v1,t1
    1138:	1460005c 	bnez	v1,12ac <float64_mul+0x220>
    113c:	00000000 	sll	zero,zero,0x0
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
    1140:	8f820000 	lw	v0,0(gp)
      if (bSig)
	return propagateFloat64NaN (a, b);
      if ((aExp | aSig) == 0)
	{
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
    1144:	3c087fff 	lui	t0,0x7fff
    1148:	34420010 	ori	v0,v0,0x10
    114c:	2409ffff 	addiu	t1,zero,-1
    1150:	3508ffff 	ori	t0,t0,0xffff
    1154:	af820000 	sw	v0,0(gp)
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
    1158:	01001021 	addu	v0,t0,zero
    115c:	03e00008 	jr	ra
    1160:	01201821 	addu	v1,t1,zero
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
    1164:	146000d6 	bnez	v1,14c0 <float64_mul+0x434>
    1168:	00601021 	addu	v0,v1,zero
    116c:	00e01021 	addu	v0,a3,zero
    1170:	24050015 	addiu	a1,zero,21
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    1174:	3c060001 	lui	a2,0x1
    1178:	0046302b 	sltu	a2,v0,a2
    117c:	10c000da 	beqz	a2,14e8 <float64_mul+0x45c>
    1180:	24090008 	addiu	t1,zero,8
    {
      shiftCount += 16;
      a <<= 16;
    1184:	00021400 	sll	v0,v0,0x10
    1188:	24090018 	addiu	t1,zero,24
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
    118c:	24040010 	addiu	a0,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
    1190:	3c060100 	lui	a2,0x100
    1194:	0046302b 	sltu	a2,v0,a2
    1198:	10c00003 	beqz	a2,11a8 <float64_mul+0x11c>
    119c:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
      a <<= 8;
    11a0:	00021200 	sll	v0,v0,0x8
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
    {
      shiftCount += 8;
    11a4:	01202021 	addu	a0,t1,zero
      a <<= 8;
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
    11a8:	00021602 	srl	v0,v0,0x18
    11ac:	3c060000 	lui	a2,0x0
    11b0:	00021080 	sll	v0,v0,0x2
    11b4:	24c60240 	addiu	a2,a2,576
    11b8:	00461021 	addu	v0,v0,a2
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
    11bc:	8c420000 	lw	v0,0(v0)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
    11c0:	00852821 	addu	a1,a0,a1
    11c4:	00a22821 	addu	a1,a1,v0
  *zSigPtr = aSig << shiftCount;
    11c8:	30a20020 	andi	v0,a1,0x20
    11cc:	104000be 	beqz	v0,14c8 <float64_mul+0x43c>
    11d0:	00072042 	srl	a0,a3,0x1
  *zExpPtr = 1 - shiftCount;
    11d4:	24090001 	addiu	t1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
    11d8:	00a71804 	sllv	v1,a3,a1
    11dc:	00006021 	addu	t4,zero,zero
  *zExpPtr = 1 - shiftCount;
    11e0:	01254823 	subu	t1,t1,a1
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    11e4:	3c0a0010 	lui	t2,0x10
    11e8:	01ea2025 	or	a0,t7,t2
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    11ec:	006a5025 	or	t2,v1,t2
    11f0:	000c1542 	srl	v0,t4,0x15
    11f4:	000a52c0 	sll	t2,t2,0xb
    11f8:	004a5025 	or	t2,v0,t2
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    11fc:	000b2d82 	srl	a1,t3,0x16
    1200:	000b5a80 	sll	t3,t3,0xa
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    1204:	014b0019 	multu	t2,t3
    1208:	00042280 	sll	a0,a0,0xa
    120c:	00a42025 	or	a0,a1,a0
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    1210:	000c62c0 	sll	t4,t4,0xb
    {
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
    1214:	2508fc01 	addiu	t0,t0,-1023
    1218:	01092821 	addu	a1,t0,t1
    121c:	00003812 	mflo	a3
    1220:	00003010 	mfhi	a2
	...
  zMiddleB = ((bits64) aHigh) * bLow;
    122c:	01840019 	multu	t4,a0
    1230:	00001010 	mfhi	v0
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
    1234:	00c23021 	addu	a2,a2,v0
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
    1238:	00001812 	mflo	v1
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
    123c:	00e37821 	addu	t7,a3,v1
    1240:	00000000 	sll	zero,zero,0x0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
    1244:	018b0019 	multu	t4,t3
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
    1248:	01e7582b 	sltu	t3,t7,a3
    124c:	01663021 	addu	a2,t3,a2
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1250:	00c2382b 	sltu	a3,a2,v0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
    1254:	00004812 	mflo	t1
    1258:	00004010 	mfhi	t0
	...
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
    1264:	01440019 	multu	t2,a0
    1268:	00005812 	mflo	t3
    126c:	00005010 	mfhi	t2
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1270:	14e0003a 	bnez	a3,135c <float64_mul+0x2d0>
    1274:	240c0001 	addiu	t4,zero,1
    1278:	10c20035 	beq	a2,v0,1350 <float64_mul+0x2c4>
    127c:	01e3102b 	sltu	v0,t7,v1
    1280:	080004d7 	j	135c <float64_mul+0x2d0>
    1284:	00006021 	addu	t4,zero,zero
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
    1288:	00671825 	or	v1,v1,a3
    128c:	14600052 	bnez	v1,13d8 <float64_mul+0x34c>
    1290:	00041cc2 	srl	v1,a0,0x13
	return propagateFloat64NaN (a, b);
      if ((aExp | aSig) == 0)
    1294:	000827c3 	sra	a0,t0,0x1f
    1298:	008f7825 	or	t7,a0,t7
    129c:	01054025 	or	t0,t0,a1
    12a0:	01e84025 	or	t0,t7,t0
    12a4:	1100ffa6 	beqz	t0,1140 <float64_mul+0xb4>
    12a8:	00000000 	sll	zero,zero,0x0

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
    12ac:	000e77c0 	sll	t6,t6,0x1f
    12b0:	3c027ff0 	lui	v0,0x7ff0
      if ((aExp | aSig) == 0)
	{
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    12b4:	01c21021 	addu	v0,t6,v0
    12b8:	00404021 	addu	t0,v0,zero
    12bc:	00004821 	addu	t1,zero,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
    12c0:	01001021 	addu	v0,t0,zero
    12c4:	03e00008 	jr	ra
    12c8:	01201821 	addu	v1,t1,zero
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
    12cc:	11e00078 	beqz	t7,14b0 <float64_mul+0x424>
    12d0:	00a01021 	addu	v0,a1,zero
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
    12d4:	01e01021 	addu	v0,t7,zero
    12d8:	2408fff5 	addiu	t0,zero,-11
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    12dc:	3c060001 	lui	a2,0x1
    12e0:	0046302b 	sltu	a2,v0,a2
    12e4:	10c00074 	beqz	a2,14b8 <float64_mul+0x42c>
    12e8:	240a0008 	addiu	t2,zero,8
    {
      shiftCount += 16;
      a <<= 16;
    12ec:	00021400 	sll	v0,v0,0x10
    12f0:	240a0018 	addiu	t2,zero,24
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
    12f4:	24040010 	addiu	a0,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
    12f8:	3c060100 	lui	a2,0x100
    12fc:	0046302b 	sltu	a2,v0,a2
    1300:	10c00003 	beqz	a2,1310 <float64_mul+0x284>
    1304:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
      a <<= 8;
    1308:	00021200 	sll	v0,v0,0x8
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
    {
      shiftCount += 8;
    130c:	01402021 	addu	a0,t2,zero
      a <<= 8;
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
    1310:	00025602 	srl	t2,v0,0x18
    1314:	3c060000 	lui	a2,0x0
    1318:	000a5080 	sll	t2,t2,0x2
    131c:	24c60240 	addiu	a2,a2,576
    1320:	01463021 	addu	a2,t2,a2
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
    1324:	8cc60000 	lw	a2,0(a2)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
    1328:	00881021 	addu	v0,a0,t0
    132c:	00461021 	addu	v0,v0,a2
  *zSigPtr = aSig << shiftCount;
    1330:	30440020 	andi	a0,v0,0x20
    1334:	10800055 	beqz	a0,148c <float64_mul+0x400>
    1338:	00000000 	sll	zero,zero,0x0
  *zExpPtr = 1 - shiftCount;
    133c:	24080001 	addiu	t0,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
    1340:	00457804 	sllv	t7,a1,v0
    1344:	00005821 	addu	t3,zero,zero
  *zExpPtr = 1 - shiftCount;
    1348:	08000435 	j	10d4 <float64_mul+0x48>
    134c:	01024023 	subu	t0,t0,v0
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1350:	10400002 	beqz	v0,135c <float64_mul+0x2d0>
    1354:	00006021 	addu	t4,zero,zero
    1358:	240c0001 	addiu	t4,zero,1
  zMiddleA <<= 32;
  z1 += zMiddleA;
    135c:	01e8c021 	addu	t8,t7,t0
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1360:	00cb2021 	addu	a0,a2,t3
    1364:	0086302b 	sltu	a2,a0,a2
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
    1368:	030f782b 	sltu	t7,t8,t7
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
    136c:	01204021 	addu	t0,t1,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1370:	00ca5021 	addu	t2,a2,t2
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
    1374:	24030001 	addiu	v1,zero,1
    1378:	15e00003 	bnez	t7,1388 <float64_mul+0x2fc>
    137c:	00001021 	addu	v0,zero,zero
    1380:	00001821 	addu	v1,zero,zero
    1384:	00001021 	addu	v0,zero,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1388:	00833821 	addu	a3,a0,v1
    138c:	00e4202b 	sltu	a0,a3,a0
    1390:	01421021 	addu	v0,t2,v0
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
  zSig0 |= (zSig1 != 0);
    1394:	03081825 	or	v1,t8,t0
    1398:	00821021 	addu	v0,a0,v0
    139c:	0003182b 	sltu	v1,zero,v1
    13a0:	00e31825 	or	v1,a3,v1
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
    13a4:	004c6021 	addu	t4,v0,t4
  if (0 <= (sbits64) (zSig0 << 1))
    13a8:	000c3040 	sll	a2,t4,0x1
    13ac:	000317c2 	srl	v0,v1,0x1f
    13b0:	00463025 	or	a2,v0,a2
    13b4:	04c00032 	bltz	a2,1480 <float64_mul+0x3f4>
    13b8:	00033840 	sll	a3,v1,0x1
    {
      zSig0 <<= 1;
      --zExp;
    13bc:	24a5ffff 	addiu	a1,a1,-1
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);
    13c0:	08000000 	j	0 <roundAndPackFloat64>
    13c4:	01c02021 	addu	a0,t6,zero
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    {
      if (aSig || ((bExp == 0x7FF) && bSig))
    13c8:	00671825 	or	v1,v1,a3
    13cc:	1060ffb7 	beqz	v1,12ac <float64_mul+0x220>
    13d0:	00000000 	sll	zero,zero,0x0

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
    13d4:	00041cc2 	srl	v1,a0,0x13
    13d8:	30630fff 	andi	v1,v1,0xfff
    13dc:	24020ffe 	addiu	v0,zero,4094
    13e0:	10620048 	beq	v1,v0,1504 <float64_mul+0x478>
    13e4:	3c0a0007 	lui	t2,0x7
    13e8:	00005021 	addu	t2,zero,zero
    13ec:	00061cc2 	srl	v1,a2,0x13
    13f0:	30630fff 	andi	v1,v1,0xfff
    13f4:	24020ffe 	addiu	v0,zero,4094
    13f8:	1062003d 	beq	v1,v0,14f0 <float64_mul+0x464>
    13fc:	3c030007 	lui	v1,0x7
    1400:	00001821 	addu	v1,zero,zero

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
    1404:	3c020008 	lui	v0,0x8
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    1408:	006a5825 	or	t3,v1,t2
  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
    140c:	00c24025 	or	t0,a2,v0

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
    1410:	00822025 	or	a0,a0,v0
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    1414:	15600010 	bnez	t3,1458 <float64_mul+0x3cc>
    1418:	00e04821 	addu	t1,a3,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
    141c:	00071fc2 	srl	v1,a3,0x1f
    1420:	00063040 	sll	a2,a2,0x1
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
    1424:	3c02ffe0 	lui	v0,0xffe0

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
    1428:	00663025 	or	a2,v1,a2
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
    142c:	24430001 	addiu	v1,v0,1
    1430:	00c3182b 	sltu	v1,a2,v1
    1434:	1060ff48 	beqz	v1,1158 <float64_mul+0xcc>
    1438:	00073840 	sll	a3,a3,0x1
    143c:	14c20003 	bne	a2,v0,144c <float64_mul+0x3c0>
    1440:	00000000 	sll	zero,zero,0x0
    1444:	14e0ff44 	bnez	a3,1158 <float64_mul+0xcc>
    1448:	00000000 	sll	zero,zero,0x0
    144c:	00804021 	addu	t0,a0,zero
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
    1450:	08000456 	j	1158 <float64_mul+0xcc>
    1454:	00a04821 	addu	t1,a1,zero
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
    1458:	8f820000 	lw	v0,0(gp)
    145c:	00000000 	sll	zero,zero,0x0
    1460:	34420010 	ori	v0,v0,0x10
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
    1464:	1460ff3c 	bnez	v1,1158 <float64_mul+0xcc>
    1468:	af820000 	sw	v0,0(gp)
    146c:	1140ffeb 	beqz	t2,141c <float64_mul+0x390>
    1470:	00000000 	sll	zero,zero,0x0
    1474:	00804021 	addu	t0,a0,zero
    1478:	08000456 	j	1158 <float64_mul+0xcc>
    147c:	00a04821 	addu	t1,a1,zero
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
  zSig0 |= (zSig1 != 0);
    1480:	01803021 	addu	a2,t4,zero
    1484:	080004f0 	j	13c0 <float64_mul+0x334>
    1488:	00603821 	addu	a3,v1,zero
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
    148c:	00053042 	srl	a2,a1,0x1
    1490:	00022027 	nor	a0,zero,v0
    1494:	00862006 	srlv	a0,a2,a0
    1498:	004f7804 	sllv	t7,t7,v0
  *zExpPtr = 1 - shiftCount;
    149c:	24080001 	addiu	t0,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
    14a0:	008f7825 	or	t7,a0,t7
    14a4:	00455804 	sllv	t3,a1,v0
  *zExpPtr = 1 - shiftCount;
    14a8:	08000435 	j	10d4 <float64_mul+0x48>
    14ac:	01024023 	subu	t0,t0,v0
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
    14b0:	080004b7 	j	12dc <float64_mul+0x250>
    14b4:	24080015 	addiu	t0,zero,21
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
    14b8:	080004be 	j	12f8 <float64_mul+0x26c>
    14bc:	00002021 	addu	a0,zero,zero
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
    14c0:	0800045d 	j	1174 <float64_mul+0xe8>
    14c4:	2405fff5 	addiu	a1,zero,-11
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
    14c8:	00051027 	nor	v0,zero,a1
    14cc:	00441006 	srlv	v0,a0,v0
    14d0:	00a31804 	sllv	v1,v1,a1
  *zExpPtr = 1 - shiftCount;
    14d4:	24090001 	addiu	t1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
    14d8:	00431825 	or	v1,v0,v1
    14dc:	00a76004 	sllv	t4,a3,a1
  *zExpPtr = 1 - shiftCount;
    14e0:	08000479 	j	11e4 <float64_mul+0x158>
    14e4:	01254823 	subu	t1,t1,a1
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
    14e8:	08000464 	j	1190 <float64_mul+0x104>
    14ec:	00002021 	addu	a0,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
    14f0:	3463ffff 	ori	v1,v1,0xffff
    14f4:	00c31824 	and	v1,a2,v1
| `a' and `b'.  The operation is performed according to the IEC/IEEE Standard
| for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_mul (float64 a, float64 b)
    14f8:	00671825 	or	v1,v1,a3
    14fc:	08000501 	j	1404 <float64_mul+0x378>
    1500:	0003182b 	sltu	v1,zero,v1
    1504:	354affff 	ori	t2,t2,0xffff
    1508:	008a5024 	and	t2,a0,t2
    150c:	01455025 	or	t2,t2,a1
    1510:	080004fb 	j	13ec <float64_mul+0x360>
    1514:	000a502b 	sltu	t2,zero,t2

00001518 <float64_div>:
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
    1518:	27bdffc8 	addiu	sp,sp,-56
    151c:	afb00014 	sw	s0,20(sp)

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    1520:	00041502 	srl	v0,a0,0x14

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    1524:	3c10000f 	lui	s0,0xf
    1528:	3610ffff 	ori	s0,s0,0xffff
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
    152c:	afb50028 	sw	s5,40(sp)
    1530:	afb2001c 	sw	s2,28(sp)

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    1534:	0006ad02 	srl	s5,a2,0x14

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    1538:	00869026 	xor	s2,a0,a2

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    153c:	304207ff 	andi	v0,v0,0x7ff
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    1540:	240307ff 	addiu	v1,zero,2047
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
    1544:	afb40024 	sw	s4,36(sp)
    1548:	afb10018 	sw	s1,24(sp)

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    154c:	0090a024 	and	s4,a0,s0
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
    1550:	afbf0034 	sw	ra,52(sp)
    1554:	afb70030 	sw	s7,48(sp)
    1558:	afb6002c 	sw	s6,44(sp)
    155c:	afb30020 	sw	s3,32(sp)

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    1560:	00a04021 	addu	t0,a1,zero
    1564:	00d08024 	and	s0,a2,s0
    1568:	00e08821 	addu	s1,a3,zero

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    156c:	32b507ff 	andi	s5,s5,0x7ff
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    1570:	104300f0 	beq	v0,v1,1934 <float64_div+0x41c>
    1574:	001297c2 	srl	s2,s2,0x1f
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    1578:	12a300f8 	beq	s5,v1,195c <float64_div+0x444>
    157c:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
      return packFloat64 (zSign, 0, 0);
    }
  if (bExp == 0)
    1580:	16a0002f 	bnez	s5,1640 <float64_div+0x128>
    1584:	02071825 	or	v1,s0,a3
    {
      if (bSig == 0)
    1588:	1460000d 	bnez	v1,15c0 <float64_div+0xa8>
    158c:	00021fc3 	sra	v1,v0,0x1f
	{
	  if ((aExp | aSig) == 0)
    1590:	0074a025 	or	s4,v1,s4
    1594:	00451025 	or	v0,v0,a1
    1598:	02821025 	or	v0,s4,v0
    159c:	1440015b 	bnez	v0,1b0c <float64_div+0x5f4>
    15a0:	001297c0 	sll	s2,s2,0x1f
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
    15a4:	8f820000 	lw	v0,0(gp)
	    {
	      float_raise (float_flag_invalid);
	      return float64_default_nan;
    15a8:	3c087fff 	lui	t0,0x7fff
    15ac:	34420010 	ori	v0,v0,0x10
    15b0:	2409ffff 	addiu	t1,zero,-1
    15b4:	3508ffff 	ori	t0,t0,0xffff
    15b8:	0800065d 	j	1974 <float64_div+0x45c>
    15bc:	af820000 	sw	v0,0(gp)
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
    15c0:	16000191 	bnez	s0,1c08 <float64_div+0x6f0>
    15c4:	02001821 	addu	v1,s0,zero
    15c8:	00e01821 	addu	v1,a3,zero
    15cc:	24150015 	addiu	s5,zero,21
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    15d0:	3c040001 	lui	a0,0x1
    15d4:	0064202b 	sltu	a0,v1,a0
    15d8:	108001fe 	beqz	a0,1dd4 <float64_div+0x8bc>
    15dc:	24090008 	addiu	t1,zero,8
    {
      shiftCount += 16;
      a <<= 16;
    15e0:	00031c00 	sll	v1,v1,0x10
    15e4:	24090018 	addiu	t1,zero,24
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
    15e8:	24040010 	addiu	a0,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
    15ec:	3c060100 	lui	a2,0x100
    15f0:	0066302b 	sltu	a2,v1,a2
    15f4:	10c00003 	beqz	a2,1604 <float64_div+0xec>
    15f8:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
      a <<= 8;
    15fc:	00031a00 	sll	v1,v1,0x8
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
    {
      shiftCount += 8;
    1600:	01202021 	addu	a0,t1,zero
      a <<= 8;
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
    1604:	00031e02 	srl	v1,v1,0x18
    1608:	3c060000 	lui	a2,0x0
    160c:	00031880 	sll	v1,v1,0x2
    1610:	24c60240 	addiu	a2,a2,576
    1614:	00661821 	addu	v1,v1,a2
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
    1618:	8c630000 	lw	v1,0(v1)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
    161c:	0095a821 	addu	s5,a0,s5
    1620:	02a3a821 	addu	s5,s5,v1
  *zSigPtr = aSig << shiftCount;
    1624:	32a30020 	andi	v1,s5,0x20
    1628:	106001e2 	beqz	v1,1db4 <float64_div+0x89c>
    162c:	00151827 	nor	v1,zero,s5
  *zExpPtr = 1 - shiftCount;
    1630:	24030001 	addiu	v1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
    1634:	02a78004 	sllv	s0,a3,s5
    1638:	00008821 	addu	s1,zero,zero
  *zExpPtr = 1 - shiftCount;
    163c:	0075a823 	subu	s5,v1,s5
	  float_raise (float_flag_divbyzero);
	  return packFloat64 (zSign, 0x7FF, 0);
	}
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  if (aExp == 0)
    1640:	14400025 	bnez	v0,16d8 <float64_div+0x1c0>
    1644:	3c030010 	lui	v1,0x10
    {
      if (aSig == 0)
    1648:	02851025 	or	v0,s4,a1
    164c:	104000c6 	beqz	v0,1968 <float64_div+0x450>
    1650:	00000000 	sll	zero,zero,0x0
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
    1654:	1680016e 	bnez	s4,1c10 <float64_div+0x6f8>
    1658:	02801821 	addu	v1,s4,zero
    165c:	00a01821 	addu	v1,a1,zero
    1660:	24020015 	addiu	v0,zero,21
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    1664:	3c040001 	lui	a0,0x1
    1668:	0064202b 	sltu	a0,v1,a0
    166c:	108001e3 	beqz	a0,1dfc <float64_div+0x8e4>
    1670:	24070008 	addiu	a3,zero,8
    {
      shiftCount += 16;
      a <<= 16;
    1674:	00031c00 	sll	v1,v1,0x10
    1678:	24070018 	addiu	a3,zero,24
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
    167c:	24040010 	addiu	a0,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
    1680:	3c060100 	lui	a2,0x100
    1684:	0066302b 	sltu	a2,v1,a2
    1688:	10c00003 	beqz	a2,1698 <float64_div+0x180>
    168c:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
      a <<= 8;
    1690:	00031a00 	sll	v1,v1,0x8
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
    {
      shiftCount += 8;
    1694:	00e02021 	addu	a0,a3,zero
      a <<= 8;
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
    1698:	00031e02 	srl	v1,v1,0x18
    169c:	3c060000 	lui	a2,0x0
    16a0:	00031880 	sll	v1,v1,0x2
    16a4:	24c60240 	addiu	a2,a2,576
    16a8:	00661821 	addu	v1,v1,a2
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
    16ac:	8c630000 	lw	v1,0(v1)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
    16b0:	00821021 	addu	v0,a0,v0
    16b4:	00431021 	addu	v0,v0,v1
  *zSigPtr = aSig << shiftCount;
    16b8:	30430020 	andi	v1,v0,0x20
    16bc:	106001c7 	beqz	v1,1ddc <float64_div+0x8c4>
    16c0:	00052042 	srl	a0,a1,0x1
    16c4:	0045a004 	sllv	s4,a1,v0
  *zExpPtr = 1 - shiftCount;
    16c8:	24050001 	addiu	a1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
    16cc:	00004021 	addu	t0,zero,zero
  *zExpPtr = 1 - shiftCount;
    16d0:	00a21023 	subu	v0,a1,v0
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    16d4:	3c030010 	lui	v1,0x10
    16d8:	0283a025 	or	s4,s4,v1
    16dc:	00082582 	srl	a0,t0,0x16
    16e0:	0014a280 	sll	s4,s4,0xa
    16e4:	0094a025 	or	s4,a0,s4
    16e8:	00089a80 	sll	s3,t0,0xa
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    16ec:	02038025 	or	s0,s0,v1
  if (bSig <= (aSig + aSig))
    16f0:	000842c0 	sll	t0,t0,0xb
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    16f4:	00112d42 	srl	a1,s1,0x15
  if (bSig <= (aSig + aSig))
    16f8:	0113202b 	sltu	a0,t0,s3
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    16fc:	001082c0 	sll	s0,s0,0xb
  if (bSig <= (aSig + aSig))
    1700:	00141840 	sll	v1,s4,0x1
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    1704:	00b08025 	or	s0,a1,s0
  if (bSig <= (aSig + aSig))
    1708:	00831821 	addu	v1,a0,v1
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
    170c:	0055a823 	subu	s5,v0,s5
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  if (bSig <= (aSig + aSig))
    1710:	0070202b 	sltu	a0,v1,s0
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
    1714:	26b503fd 	addiu	s5,s5,1021
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  if (bSig <= (aSig + aSig))
    1718:	14800006 	bnez	a0,1734 <float64_div+0x21c>
    171c:	00118ac0 	sll	s1,s1,0xb
    1720:	160300f2 	bne	s0,v1,1aec <float64_div+0x5d4>
    1724:	001417c0 	sll	v0,s4,0x1f
    1728:	0111402b 	sltu	t0,t0,s1
    172c:	110000ef 	beqz	t0,1aec <float64_div+0x5d4>
    1730:	00000000 	sll	zero,zero,0x0
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
    1734:	0290102b 	sltu	v0,s4,s0
    1738:	1040009b 	beqz	v0,19a8 <float64_div+0x490>
    173c:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
    1740:	144000fa 	bnez	v0,1b2c <float64_div+0x614>
    1744:	02802021 	addu	a0,s4,zero
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
    1748:	00101400 	sll	v0,s0,0x10
    174c:	00501823 	subu	v1,v0,s0
    1750:	0043102b 	sltu	v0,v0,v1
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    1754:	00115c00 	sll	t3,s1,0x10
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
    1758:	00105402 	srl	t2,s0,0x10
    175c:	01425023 	subu	t2,t2,v0
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    1760:	01711023 	subu	v0,t3,s1
    1764:	0162582b 	sltu	t3,t3,v0
    1768:	00114c02 	srl	t1,s1,0x10
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
    176c:	00032402 	srl	a0,v1,0x10
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    1770:	012b4823 	subu	t1,t1,t3
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
    1774:	00034400 	sll	t0,v1,0x10
    1778:	000a2c00 	sll	a1,t2,0x10
    177c:	00684021 	addu	t0,v1,t0
    1780:	00852825 	or	a1,a0,a1
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    1784:	00025c02 	srl	t3,v0,0x10
    1788:	00026400 	sll	t4,v0,0x10
    178c:	00092400 	sll	a0,t1,0x10
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
    1790:	0103182b 	sltu	v1,t0,v1
    1794:	01452821 	addu	a1,t2,a1
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    1798:	004c6021 	addu	t4,v0,t4
    179c:	01642025 	or	a0,t3,a0
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
    17a0:	00651821 	addu	v1,v1,a1
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    17a4:	0182682b 	sltu	t5,t4,v0
    17a8:	01242021 	addu	a0,t1,a0
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
    17ac:	00603021 	addu	a2,v1,zero
    17b0:	01003821 	addu	a3,t0,zero
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    17b4:	01a46821 	addu	t5,t5,a0
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
    17b8:	00002821 	addu	a1,zero,zero
    17bc:	00002021 	addu	a0,zero,zero
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
    17c0:	00001821 	addu	v1,zero,zero
    17c4:	2402ffff 	addiu	v0,zero,-1
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    17c8:	00004021 	addu	t0,zero,zero
    17cc:	02675823 	subu	t3,s3,a3
  zMiddleA <<= 32;
  z1 += zMiddleA;
    17d0:	01847021 	addu	t6,t4,a0
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    17d4:	026b502b 	sltu	t2,s3,t3
  zMiddleA <<= 32;
  z1 += zMiddleA;
    17d8:	00a02021 	addu	a0,a1,zero
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
    17dc:	000e7823 	negu	t7,t6
    17e0:	0005282b 	sltu	a1,zero,a1
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    17e4:	02863023 	subu	a2,s4,a2
    17e8:	016d6823 	subu	t5,t3,t5
    17ec:	00ca3023 	subu	a2,a2,t2
    17f0:	016d582b 	sltu	t3,t3,t5
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
    17f4:	01e52823 	subu	a1,t7,a1
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
    17f8:	01cc602b 	sltu	t4,t6,t4
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    17fc:	00cb3023 	subu	a2,a2,t3
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
    1800:	00a03821 	addu	a3,a1,zero
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
    1804:	240b0001 	addiu	t3,zero,1
    1808:	15800003 	bnez	t4,1818 <float64_div+0x300>
    180c:	00005021 	addu	t2,zero,zero
    1810:	00005821 	addu	t3,zero,zero
    1814:	00005021 	addu	t2,zero,zero
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
    1818:	01c42025 	or	a0,t6,a0
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
    181c:	01ab6023 	subu	t4,t5,t3
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
    1820:	0004202b 	sltu	a0,zero,a0
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
    1824:	01ac682b 	sltu	t5,t5,t4
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
    1828:	01842023 	subu	a0,t4,a0
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
    182c:	00ca5023 	subu	t2,a2,t2
    1830:	014d5023 	subu	t2,t2,t5
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
    1834:	0184602b 	sltu	t4,t4,a0
    1838:	014c6023 	subu	t4,t2,t4
    183c:	01884023 	subu	t0,t4,t0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    1840:	0501017b 	bgez	t0,1e30 <float64_div+0x918>
    1844:	00000000 	sll	zero,zero,0x0
    1848:	0040b021 	addu	s6,v0,zero
    184c:	08000616 	j	1858 <float64_div+0x340>
    1850:	0060b821 	addu	s7,v1,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
    1854:	00c03821 	addu	a3,a2,zero
    1858:	00f13021 	addu	a2,a3,s1
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
    185c:	00c7382b 	sltu	a3,a2,a3
    1860:	24030001 	addiu	v1,zero,1
    1864:	00001021 	addu	v0,zero,zero
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    {
      z -= LIT64 (0x100000000);
    1868:	26d6ffff 	addiu	s6,s6,-1
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
    186c:	14e00003 	bnez	a3,187c <float64_div+0x364>
    1870:	00c02821 	addu	a1,a2,zero
    1874:	00001821 	addu	v1,zero,zero
    1878:	00001021 	addu	v0,zero,zero
    187c:	02033821 	addu	a3,s0,v1
    1880:	00e3482b 	sltu	t1,a3,v1
    1884:	01221021 	addu	v0,t1,v0
    1888:	00873821 	addu	a3,a0,a3
    188c:	00e4202b 	sltu	a0,a3,a0
    1890:	01024021 	addu	t0,t0,v0
    1894:	00884021 	addu	t0,a0,t0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    1898:	0500ffee 	bltz	t0,1854 <float64_div+0x33c>
    189c:	00e02021 	addu	a0,a3,zero
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    }
  rem0 = (rem0 << 32) | (rem1 >> 32);
  z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
    18a0:	0090102b 	sltu	v0,a0,s0
    18a4:	144000bb 	bnez	v0,1b94 <float64_div+0x67c>
    18a8:	00003021 	addu	a2,zero,zero
    18ac:	2403ffff 	addiu	v1,zero,-1
    18b0:	00001021 	addu	v0,zero,zero
    18b4:	00773825 	or	a3,v1,s7
    18b8:	00563025 	or	a2,v0,s6
    {
      aSig >>= 1;
      ++zExp;
    }
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
    18bc:	30e201ff 	andi	v0,a3,0x1ff
    18c0:	2c420003 	sltiu	v0,v0,3
    18c4:	1040003e 	beqz	v0,19c0 <float64_div+0x4a8>
    18c8:	00f00019 	multu	a3,s0
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
    18cc:	00001010 	mfhi	v0
    18d0:	00001812 	mflo	v1
	...
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    18dc:	00d10019 	multu	a2,s1
    18e0:	00002812 	mflo	a1
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
    18e4:	00a36021 	addu	t4,a1,v1
    18e8:	0185482b 	sltu	t1,t4,a1
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    18ec:	00002010 	mfhi	a0
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
    18f0:	00822021 	addu	a0,a0,v0
    18f4:	01242021 	addu	a0,t1,a0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
    18f8:	00f10019 	multu	a3,s1
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    18fc:	0082282b 	sltu	a1,a0,v0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
    1900:	00005812 	mflo	t3
    1904:	00005010 	mfhi	t2
	...
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
    1910:	00d00019 	multu	a2,s0
    1914:	00004812 	mflo	t1
    1918:	00004010 	mfhi	t0
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    191c:	14a000c1 	bnez	a1,1c24 <float64_div+0x70c>
    1920:	00000000 	sll	zero,zero,0x0
    1924:	108200bc 	beq	a0,v0,1c18 <float64_div+0x700>
    1928:	00001021 	addu	v0,zero,zero
    192c:	0800070a 	j	1c28 <float64_div+0x710>
    1930:	00000000 	sll	zero,zero,0x0
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    {
      if (aSig)
    1934:	0285a025 	or	s4,s4,a1
    1938:	1680009b 	bnez	s4,1ba8 <float64_div+0x690>
    193c:	00041cc2 	srl	v1,a0,0x13
	return propagateFloat64NaN (a, b);
      if (bExp == 0x7FF)
    1940:	12a2002c 	beq	s5,v0,19f4 <float64_div+0x4dc>
    1944:	001297c0 	sll	s2,s2,0x1f

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
    1948:	3c027ff0 	lui	v0,0x7ff0
	  if (bSig)
	    return propagateFloat64NaN (a, b);
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    194c:	02421021 	addu	v0,s2,v0
    1950:	00404021 	addu	t0,v0,zero
    1954:	0800065d 	j	1974 <float64_div+0x45c>
    1958:	00004821 	addu	t1,zero,zero
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
    195c:	02078025 	or	s0,s0,a3
    1960:	16000047 	bnez	s0,1a80 <float64_div+0x568>
    1964:	00041cc2 	srl	v1,a0,0x13
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  if (aExp == 0)
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
    1968:	001297c0 	sll	s2,s2,0x1f
    196c:	02404021 	addu	t0,s2,zero
    1970:	00004821 	addu	t1,zero,zero
	}
      zSig |= (rem1 != 0);
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);

}
    1974:	8fbf0034 	lw	ra,52(sp)
    1978:	01001021 	addu	v0,t0,zero
    197c:	01201821 	addu	v1,t1,zero
    1980:	8fb70030 	lw	s7,48(sp)
    1984:	8fb6002c 	lw	s6,44(sp)
    1988:	8fb50028 	lw	s5,40(sp)
    198c:	8fb40024 	lw	s4,36(sp)
    1990:	8fb30020 	lw	s3,32(sp)
    1994:	8fb2001c 	lw	s2,28(sp)
    1998:	8fb10018 	lw	s1,24(sp)
    199c:	8fb00014 	lw	s0,20(sp)
    19a0:	03e00008 	jr	ra
    19a4:	27bd0038 	addiu	sp,sp,56
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
    19a8:	16140004 	bne	s0,s4,19bc <float64_div+0x4a4>
    19ac:	2407ffff 	addiu	a3,zero,-1
    19b0:	0271182b 	sltu	v1,s3,s1
    19b4:	1460ff62 	bnez	v1,1740 <float64_div+0x228>
    19b8:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
    19bc:	2406ffff 	addiu	a2,zero,-1
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);
    19c0:	02402021 	addu	a0,s2,zero
    19c4:	02a02821 	addu	a1,s5,zero

}
    19c8:	8fbf0034 	lw	ra,52(sp)
    19cc:	8fb70030 	lw	s7,48(sp)
    19d0:	8fb6002c 	lw	s6,44(sp)
    19d4:	8fb50028 	lw	s5,40(sp)
    19d8:	8fb40024 	lw	s4,36(sp)
    19dc:	8fb30020 	lw	s3,32(sp)
    19e0:	8fb2001c 	lw	s2,28(sp)
    19e4:	8fb10018 	lw	s1,24(sp)
    19e8:	8fb00014 	lw	s0,20(sp)
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);
    19ec:	08000000 	j	0 <roundAndPackFloat64>
    19f0:	27bd0038 	addiu	sp,sp,56
    {
      if (aSig)
	return propagateFloat64NaN (a, b);
      if (bExp == 0x7FF)
	{
	  if (bSig)
    19f4:	02078025 	or	s0,s0,a3
    19f8:	1200feea 	beqz	s0,15a4 <float64_div+0x8c>
    19fc:	00041cc2 	srl	v1,a0,0x13

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
    1a00:	30630fff 	andi	v1,v1,0xfff
    1a04:	24020ffe 	addiu	v0,zero,4094
    1a08:	1062011b 	beq	v1,v0,1e78 <float64_div+0x960>
    1a0c:	3c0a0007 	lui	t2,0x7
    1a10:	00005021 	addu	t2,zero,zero
    1a14:	00061cc2 	srl	v1,a2,0x13
    1a18:	30630fff 	andi	v1,v1,0xfff
    1a1c:	24020ffe 	addiu	v0,zero,4094
    1a20:	10620110 	beq	v1,v0,1e64 <float64_div+0x94c>
    1a24:	3c030007 	lui	v1,0x7
    1a28:	00001821 	addu	v1,zero,zero

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
    1a2c:	3c020008 	lui	v0,0x8
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    1a30:	006a5825 	or	t3,v1,t2
  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
    1a34:	00c24025 	or	t0,a2,v0
    1a38:	00e04821 	addu	t1,a3,zero
  if (aIsSignalingNaN | bIsSignalingNaN)
    1a3c:	156000ff 	bnez	t3,1e3c <float64_div+0x924>
    1a40:	00821025 	or	v0,a0,v0

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
    1a44:	000727c2 	srl	a0,a3,0x1f
    1a48:	00063040 	sll	a2,a2,0x1
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
    1a4c:	3c03ffe0 	lui	v1,0xffe0

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
    1a50:	00863025 	or	a2,a0,a2
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
    1a54:	24640001 	addiu	a0,v1,1
    1a58:	00c4202b 	sltu	a0,a2,a0
    1a5c:	1080ffc5 	beqz	a0,1974 <float64_div+0x45c>
    1a60:	00073840 	sll	a3,a3,0x1
    1a64:	14c30003 	bne	a2,v1,1a74 <float64_div+0x55c>
    1a68:	00000000 	sll	zero,zero,0x0
    1a6c:	14e0ffc1 	bnez	a3,1974 <float64_div+0x45c>
    1a70:	00000000 	sll	zero,zero,0x0
    1a74:	00404021 	addu	t0,v0,zero
	    return propagateFloat64NaN (a, b);
    1a78:	0800065d 	j	1974 <float64_div+0x45c>
    1a7c:	00a04821 	addu	t1,a1,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
    1a80:	30630fff 	andi	v1,v1,0xfff
    1a84:	24020ffe 	addiu	v0,zero,4094
    1a88:	106200a9 	beq	v1,v0,1d30 <float64_div+0x818>
    1a8c:	3c0a0007 	lui	t2,0x7
    1a90:	00005021 	addu	t2,zero,zero
    1a94:	00061cc2 	srl	v1,a2,0x13
    1a98:	30630fff 	andi	v1,v1,0xfff
    1a9c:	24020ffe 	addiu	v0,zero,4094
    1aa0:	106200d8 	beq	v1,v0,1e04 <float64_div+0x8ec>
    1aa4:	3c030007 	lui	v1,0x7
    1aa8:	00001821 	addu	v1,zero,zero

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
    1aac:	3c020008 	lui	v0,0x8
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    1ab0:	006a5825 	or	t3,v1,t2
  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
    1ab4:	00c24025 	or	t0,a2,v0

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
    1ab8:	00822025 	or	a0,a0,v0
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    1abc:	116000aa 	beqz	t3,1d68 <float64_div+0x850>
    1ac0:	00e04821 	addu	t1,a3,zero
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
    1ac4:	8f820000 	lw	v0,0(gp)
    1ac8:	00000000 	sll	zero,zero,0x0
    1acc:	34420010 	ori	v0,v0,0x10
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
    1ad0:	1460ffa8 	bnez	v1,1974 <float64_div+0x45c>
    1ad4:	af820000 	sw	v0,0(gp)
    1ad8:	114000a4 	beqz	t2,1d6c <float64_div+0x854>
    1adc:	00071fc2 	srl	v1,a3,0x1f
    1ae0:	00804021 	addu	t0,a0,zero
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
    1ae4:	0800065d 	j	1974 <float64_div+0x45c>
    1ae8:	00a04821 	addu	t1,a1,zero
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  if (bSig <= (aSig + aSig))
    {
      aSig >>= 1;
    1aec:	00139842 	srl	s3,s3,0x1
    1af0:	0014a042 	srl	s4,s4,0x1
    1af4:	00539825 	or	s3,v0,s3
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
    1af8:	0290102b 	sltu	v0,s4,s0
    1afc:	1440ff10 	bnez	v0,1740 <float64_div+0x228>
    1b00:	26b50001 	addiu	s5,s5,1
    1b04:	0800066a 	j	19a8 <float64_div+0x490>
    1b08:	00000000 	sll	zero,zero,0x0

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
    1b0c:	3c027ff0 	lui	v0,0x7ff0
	    {
	      float_raise (float_flag_invalid);
	      return float64_default_nan;
	    }
	  float_raise (float_flag_divbyzero);
	  return packFloat64 (zSign, 0x7FF, 0);
    1b10:	02421021 	addu	v0,s2,v0
    1b14:	00404021 	addu	t0,v0,zero
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
    1b18:	8f820000 	lw	v0,0(gp)
    1b1c:	00004821 	addu	t1,zero,zero
    1b20:	34420002 	ori	v0,v0,0x2
    1b24:	0800065d 	j	1974 <float64_div+0x45c>
    1b28:	af820000 	sw	v0,0(gp)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
    1b2c:	02602821 	addu	a1,s3,zero
    1b30:	00003021 	addu	a2,zero,zero
    1b34:	0c000000 	jal	0 <roundAndPackFloat64>
    1b38:	02003821 	addu	a3,s0,zero
    1b3c:	00602021 	addu	a0,v1,zero
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    1b40:	02240019 	multu	s1,a0
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
    1b44:	00601021 	addu	v0,v1,zero
    1b48:	00005821 	addu	t3,zero,zero
    1b4c:	00001821 	addu	v1,zero,zero
    1b50:	00002821 	addu	a1,zero,zero
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    1b54:	00004812 	mflo	t1
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
    1b58:	012b6021 	addu	t4,t1,t3
    1b5c:	0189682b 	sltu	t5,t4,t1
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
    1b60:	00004010 	mfhi	t0
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
    1b64:	01a86821 	addu	t5,t5,t0
    1b68:	00000000 	sll	zero,zero,0x0
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
    1b6c:	00500019 	multu	v0,s0
    1b70:	00003812 	mflo	a3
    1b74:	00003010 	mfhi	a2
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1b78:	15a00079 	bnez	t5,1d60 <float64_div+0x848>
    1b7c:	00002021 	addu	a0,zero,zero
    1b80:	018b402b 	sltu	t0,t4,t3
    1b84:	11000076 	beqz	t0,1d60 <float64_div+0x848>
    1b88:	00000000 	sll	zero,zero,0x0
    1b8c:	080005f3 	j	17cc <float64_div+0x2b4>
    1b90:	24080001 	addiu	t0,zero,1
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    }
  rem0 = (rem0 << 32) | (rem1 >> 32);
  z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
    1b94:	0c000000 	jal	0 <roundAndPackFloat64>
    1b98:	02003821 	addu	a3,s0,zero
    1b9c:	00402021 	addu	a0,v0,zero
    1ba0:	0800062d 	j	18b4 <float64_div+0x39c>
    1ba4:	00801021 	addu	v0,a0,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
    1ba8:	30630fff 	andi	v1,v1,0xfff
    1bac:	24020ffe 	addiu	v0,zero,4094
    1bb0:	10620064 	beq	v1,v0,1d44 <float64_div+0x82c>
    1bb4:	3c020007 	lui	v0,0x7
    1bb8:	00001821 	addu	v1,zero,zero
    1bbc:	00005021 	addu	t2,zero,zero
    1bc0:	000644c2 	srl	t0,a2,0x13
    1bc4:	31080fff 	andi	t0,t0,0xfff
    1bc8:	24020ffe 	addiu	v0,zero,4094
    1bcc:	11020092 	beq	t0,v0,1e18 <float64_div+0x900>
    1bd0:	3c0b0007 	lui	t3,0x7
    1bd4:	00005821 	addu	t3,zero,zero

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
    1bd8:	3c020008 	lui	v0,0x8
  b |= LIT64 (0x0008000000000000);
    1bdc:	00c24025 	or	t0,a2,v0

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
    1be0:	00822025 	or	a0,a0,v0
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    1be4:	1060ffbc 	beqz	v1,1ad8 <float64_div+0x5c0>
    1be8:	00e04821 	addu	t1,a3,zero
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
    1bec:	8f820000 	lw	v0,0(gp)
    1bf0:	00000000 	sll	zero,zero,0x0
    1bf4:	34420010 	ori	v0,v0,0x10
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
    1bf8:	1560ff5e 	bnez	t3,1974 <float64_div+0x45c>
    1bfc:	af820000 	sw	v0,0(gp)
    1c00:	080006b6 	j	1ad8 <float64_div+0x5c0>
    1c04:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
    1c08:	08000574 	j	15d0 <float64_div+0xb8>
    1c0c:	2415fff5 	addiu	s5,zero,-11
    1c10:	08000599 	j	1664 <float64_div+0x14c>
    1c14:	2402fff5 	addiu	v0,zero,-11
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1c18:	0183102b 	sltu	v0,t4,v1
    1c1c:	10400002 	beqz	v0,1c28 <float64_div+0x710>
    1c20:	00001021 	addu	v0,zero,zero
    1c24:	24020001 	addiu	v0,zero,1
  zMiddleA <<= 32;
  z1 += zMiddleA;
    1c28:	018a2821 	addu	a1,t4,t2
    1c2c:	01607021 	addu	t6,t3,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1c30:	02695023 	subu	t2,s3,t1
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
    1c34:	00ab5825 	or	t3,a1,t3
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1c38:	01442023 	subu	a0,t2,a0
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
    1c3c:	000e7023 	negu	t6,t6
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1c40:	026a982b 	sltu	s3,s3,t2
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
    1c44:	000b482b 	sltu	t1,zero,t3
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1c48:	02884023 	subu	t0,s4,t0
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
    1c4c:	000e582b 	sltu	t3,zero,t6
    1c50:	00057823 	negu	t7,a1
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1c54:	0144502b 	sltu	t2,t2,a0
    1c58:	01134023 	subu	t0,t0,s3
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
    1c5c:	00894823 	subu	t1,a0,t1
    1c60:	0089202b 	sltu	a0,a0,t1
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
    1c64:	01eb7823 	subu	t7,t7,t3
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1c68:	010a5023 	subu	t2,t0,t2
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
    1c6c:	00ac602b 	sltu	t4,a1,t4
    1c70:	01445023 	subu	t2,t2,a0
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
    1c74:	01e05821 	addu	t3,t7,zero
    1c78:	01c06821 	addu	t5,t6,zero
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
    1c7c:	24050001 	addiu	a1,zero,1
    1c80:	15800003 	bnez	t4,1c90 <float64_div+0x778>
    1c84:	00002021 	addu	a0,zero,zero
    1c88:	00002821 	addu	a1,zero,zero
    1c8c:	00002021 	addu	a0,zero,zero
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
    1c90:	01256023 	subu	t4,t1,a1
    1c94:	012c482b 	sltu	t1,t1,t4
    1c98:	01442023 	subu	a0,t2,a0
    1c9c:	00892023 	subu	a0,a0,t1
    1ca0:	00821023 	subu	v0,a0,v0
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
    {
      mul64To128 (bSig, zSig, &term0, &term1);
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
      while ((sbits64) rem0 < 0)
    1ca4:	0441003e 	bgez	v0,1da0 <float64_div+0x888>
    1ca8:	01c02021 	addu	a0,t6,zero
	{
	  --zSig;
    1cac:	24e8ffff 	addiu	t0,a3,-1
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
    1cb0:	01b15021 	addu	t2,t5,s1
    1cb4:	0107482b 	sltu	t1,t0,a3
    1cb8:	01701821 	addu	v1,t3,s0
    1cbc:	014d382b 	sltu	a3,t2,t5
    1cc0:	00e31821 	addu	v1,a3,v1
    1cc4:	01002821 	addu	a1,t0,zero
    1cc8:	24c6ffff 	addiu	a2,a2,-1
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
    1ccc:	006b702b 	sltu	t6,v1,t3
    1cd0:	01263021 	addu	a2,t1,a2
    1cd4:	00004021 	addu	t0,zero,zero
    1cd8:	24090001 	addiu	t1,zero,1
    1cdc:	00a03821 	addu	a3,a1,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
    1ce0:	00607821 	addu	t7,v1,zero
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
    1ce4:	15c00005 	bnez	t6,1cfc <float64_div+0x7e4>
    1ce8:	01402021 	addu	a0,t2,zero
    1cec:	1163000c 	beq	t3,v1,1d20 <float64_div+0x808>
    1cf0:	014d682b 	sltu	t5,t2,t5
    1cf4:	00004821 	addu	t1,zero,zero
    1cf8:	00004021 	addu	t0,zero,zero
    1cfc:	01892821 	addu	a1,t4,t1
    1d00:	00ac602b 	sltu	t4,a1,t4
    1d04:	00481021 	addu	v0,v0,t0
    1d08:	01821021 	addu	v0,t4,v0
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
    {
      mul64To128 (bSig, zSig, &term0, &term1);
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
      while ((sbits64) rem0 < 0)
    1d0c:	04410024 	bgez	v0,1da0 <float64_div+0x888>
    1d10:	00a06021 	addu	t4,a1,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
    1d14:	00605821 	addu	t3,v1,zero
    1d18:	0800072b 	j	1cac <float64_div+0x794>
    1d1c:	01406821 	addu	t5,t2,zero
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
    1d20:	15a0fff7 	bnez	t5,1d00 <float64_div+0x7e8>
    1d24:	01892821 	addu	a1,t4,t1
    1d28:	0800073e 	j	1cf8 <float64_div+0x7e0>
    1d2c:	00004821 	addu	t1,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
    1d30:	354affff 	ori	t2,t2,0xffff
    1d34:	008a5024 	and	t2,a0,t2
    1d38:	01455025 	or	t2,t2,a1
    1d3c:	080006a5 	j	1a94 <float64_div+0x57c>
    1d40:	000a502b 	sltu	t2,zero,t2
    1d44:	3442ffff 	ori	v0,v0,0xffff
    1d48:	00821024 	and	v0,a0,v0
    1d4c:	00451025 	or	v0,v0,a1
    1d50:	1040ff99 	beqz	v0,1bb8 <float64_div+0x6a0>
    1d54:	24030001 	addiu	v1,zero,1
    1d58:	080006f0 	j	1bc0 <float64_div+0x6a8>
    1d5c:	240a0001 	addiu	t2,zero,1
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
    1d60:	080005f3 	j	17cc <float64_div+0x2b4>
    1d64:	00004021 	addu	t0,zero,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
    1d68:	00071fc2 	srl	v1,a3,0x1f
    1d6c:	00063040 	sll	a2,a2,0x1
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
    1d70:	3c02ffe0 	lui	v0,0xffe0

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
    1d74:	00663025 	or	a2,v1,a2
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
    1d78:	24430001 	addiu	v1,v0,1
    1d7c:	00c3182b 	sltu	v1,a2,v1
    1d80:	1060fefc 	beqz	v1,1974 <float64_div+0x45c>
    1d84:	00073840 	sll	a3,a3,0x1
    1d88:	14c2ff55 	bne	a2,v0,1ae0 <float64_div+0x5c8>
    1d8c:	00000000 	sll	zero,zero,0x0
    1d90:	14e0fef8 	bnez	a3,1974 <float64_div+0x45c>
    1d94:	00000000 	sll	zero,zero,0x0
    1d98:	080006b9 	j	1ae4 <float64_div+0x5cc>
    1d9c:	00804021 	addu	t0,a0,zero
	{
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
    1da0:	01e42025 	or	a0,t7,a0
    1da4:	0004202b 	sltu	a0,zero,a0
    1da8:	00872025 	or	a0,a0,a3
    1dac:	08000670 	j	19c0 <float64_div+0x4a8>
    1db0:	00803821 	addu	a3,a0,zero
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
    1db4:	00072042 	srl	a0,a3,0x1
    1db8:	00641806 	srlv	v1,a0,v1
    1dbc:	02b08004 	sllv	s0,s0,s5
    1dc0:	00708025 	or	s0,v1,s0
  *zExpPtr = 1 - shiftCount;
    1dc4:	24030001 	addiu	v1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
    1dc8:	02a78804 	sllv	s1,a3,s5
  *zExpPtr = 1 - shiftCount;
    1dcc:	08000590 	j	1640 <float64_div+0x128>
    1dd0:	0075a823 	subu	s5,v1,s5
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
    1dd4:	0800057b 	j	15ec <float64_div+0xd4>
    1dd8:	00002021 	addu	a0,zero,zero
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
    1ddc:	00021827 	nor	v1,zero,v0
    1de0:	0054a004 	sllv	s4,s4,v0
    1de4:	00454004 	sllv	t0,a1,v0
    1de8:	00641806 	srlv	v1,a0,v1
  *zExpPtr = 1 - shiftCount;
    1dec:	24050001 	addiu	a1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
    1df0:	0074a025 	or	s4,v1,s4
  *zExpPtr = 1 - shiftCount;
    1df4:	080005b5 	j	16d4 <float64_div+0x1bc>
    1df8:	00a21023 	subu	v0,a1,v0
    1dfc:	080005a0 	j	1680 <float64_div+0x168>
    1e00:	00002021 	addu	a0,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
    1e04:	3463ffff 	ori	v1,v1,0xffff
    1e08:	00c31824 	and	v1,a2,v1
| by the corresponding value `b'.  The operation is performed according to
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
    1e0c:	00671825 	or	v1,v1,a3
    1e10:	080006ab 	j	1aac <float64_div+0x594>
    1e14:	0003182b 	sltu	v1,zero,v1
    1e18:	356bffff 	ori	t3,t3,0xffff
    1e1c:	00cb5824 	and	t3,a2,t3
    1e20:	01675825 	or	t3,t3,a3
    1e24:	000b582b 	sltu	t3,zero,t3
    1e28:	080006f6 	j	1bd8 <float64_div+0x6c0>
    1e2c:	014b1825 	or	v1,t2,t3
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    1e30:	0040b021 	addu	s6,v0,zero
    1e34:	08000628 	j	18a0 <float64_div+0x388>
    1e38:	0060b821 	addu	s7,v1,zero
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
    1e3c:	8f840000 	lw	a0,0(gp)
    1e40:	00000000 	sll	zero,zero,0x0
    1e44:	34840010 	ori	a0,a0,0x10
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
    1e48:	1460feca 	bnez	v1,1974 <float64_div+0x45c>
    1e4c:	af840000 	sw	a0,0(gp)
    1e50:	1140fefc 	beqz	t2,1a44 <float64_div+0x52c>
    1e54:	00000000 	sll	zero,zero,0x0
    1e58:	00404021 	addu	t0,v0,zero
    1e5c:	0800065d 	j	1974 <float64_div+0x45c>
    1e60:	00a04821 	addu	t1,a1,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
    1e64:	3463ffff 	ori	v1,v1,0xffff
    1e68:	00c31824 	and	v1,a2,v1
    1e6c:	00671825 	or	v1,v1,a3
    1e70:	0800068b 	j	1a2c <float64_div+0x514>
    1e74:	0003182b 	sltu	v1,zero,v1
    1e78:	354affff 	ori	t2,t2,0xffff
    1e7c:	008a5024 	and	t2,a0,t2
    1e80:	01455025 	or	t2,t2,a1
    1e84:	08000685 	j	1a14 <float64_div+0x4fc>
    1e88:	000a502b 	sltu	t2,zero,t2

00001e8c <float64_le>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    1e8c:	00041502 	srl	v0,a0,0x14
    1e90:	304207ff 	andi	v0,v0,0x7ff
flag
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
    1e94:	240307ff 	addiu	v1,zero,2047
    1e98:	10430015 	beq	v0,v1,1ef0 <float64_le+0x64>
    1e9c:	3c02000f 	lui	v0,0xf

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    1ea0:	00064502 	srl	t0,a2,0x14
    1ea4:	310807ff 	andi	t0,t0,0x7ff
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    1ea8:	240307ff 	addiu	v1,zero,2047
    1eac:	1103001a 	beq	t0,v1,1f18 <float64_le+0x8c>
    1eb0:	000417c2 	srl	v0,a0,0x1f

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    1eb4:	00061fc2 	srl	v1,a2,0x1f
      float_raise (float_flag_invalid);
      return 0;
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    1eb8:	10430020 	beq	v0,v1,1f3c <float64_le+0xb0>
    1ebc:	00000000 	sll	zero,zero,0x0
    return aSign || ((bits64) ((a | b) << 1) == 0);
    1ec0:	14400009 	bnez	v0,1ee8 <float64_le+0x5c>
    1ec4:	00e52825 	or	a1,a3,a1
    1ec8:	00c42025 	or	a0,a2,a0
    1ecc:	00051fc2 	srl	v1,a1,0x1f
    1ed0:	00042040 	sll	a0,a0,0x1
    1ed4:	00642025 	or	a0,v1,a0
    1ed8:	00052840 	sll	a1,a1,0x1

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    {
      float_raise (float_flag_invalid);
      return 0;
    1edc:	00851025 	or	v0,a0,a1
    1ee0:	03e00008 	jr	ra
    1ee4:	2c420001 	sltiu	v0,v0,1
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    return aSign || ((bits64) ((a | b) << 1) == 0);
    1ee8:	03e00008 	jr	ra
    1eec:	24020001 	addiu	v0,zero,1

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    1ef0:	3442ffff 	ori	v0,v0,0xffff
    1ef4:	00821024 	and	v0,a0,v0
flag
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
    1ef8:	00451025 	or	v0,v0,a1
    1efc:	1040ffe9 	beqz	v0,1ea4 <float64_le+0x18>
    1f00:	00064502 	srl	t0,a2,0x14
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
    1f04:	8f830000 	lw	v1,0(gp)
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    {
      float_raise (float_flag_invalid);
      return 0;
    1f08:	00001021 	addu	v0,zero,zero
    1f0c:	34630010 	ori	v1,v1,0x10
    1f10:	03e00008 	jr	ra
    1f14:	af830000 	sw	v1,0(gp)

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    1f18:	3c02000f 	lui	v0,0xf
    1f1c:	3442ffff 	ori	v0,v0,0xffff
    1f20:	00c21024 	and	v0,a2,v0
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    1f24:	00471025 	or	v0,v0,a3
    1f28:	1440fff6 	bnez	v0,1f04 <float64_le+0x78>
    1f2c:	00061fc2 	srl	v1,a2,0x1f

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    1f30:	000417c2 	srl	v0,a0,0x1f
      float_raise (float_flag_invalid);
      return 0;
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    1f34:	1443ffe2 	bne	v0,v1,1ec0 <float64_le+0x34>
    1f38:	00000000 	sll	zero,zero,0x0
    return aSign || ((bits64) ((a | b) << 1) == 0);
  return (a == b) || (aSign ^ (a < b));
    1f3c:	10860009 	beq	a0,a2,1f64 <float64_le+0xd8>
    1f40:	0086402b 	sltu	t0,a0,a2
    1f44:	15000004 	bnez	t0,1f58 <float64_le+0xcc>
    1f48:	24030001 	addiu	v1,zero,1
    1f4c:	10c40009 	beq	a2,a0,1f74 <float64_le+0xe8>
    1f50:	00000000 	sll	zero,zero,0x0
    1f54:	00001821 	addu	v1,zero,zero

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    {
      float_raise (float_flag_invalid);
      return 0;
    1f58:	00621026 	xor	v0,v1,v0
    1f5c:	03e00008 	jr	ra
    1f60:	0002102b 	sltu	v0,zero,v0
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    return aSign || ((bits64) ((a | b) << 1) == 0);
  return (a == b) || (aSign ^ (a < b));
    1f64:	14a7fff7 	bne	a1,a3,1f44 <float64_le+0xb8>
    1f68:	00000000 	sll	zero,zero,0x0

}
    1f6c:	03e00008 	jr	ra
    1f70:	24020001 	addiu	v0,zero,1
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    return aSign || ((bits64) ((a | b) << 1) == 0);
  return (a == b) || (aSign ^ (a < b));
    1f74:	00a7282b 	sltu	a1,a1,a3
    1f78:	14a0fff7 	bnez	a1,1f58 <float64_le+0xcc>
    1f7c:	00000000 	sll	zero,zero,0x0
    1f80:	080007d6 	j	1f58 <float64_le+0xcc>
    1f84:	00001821 	addu	v1,zero,zero

00001f88 <float64_ge>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    1f88:	00061502 	srl	v0,a2,0x14
    1f8c:	304207ff 	andi	v0,v0,0x7ff
flag
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
    1f90:	240307ff 	addiu	v1,zero,2047
    1f94:	10430015 	beq	v0,v1,1fec <float64_ge+0x64>
    1f98:	3c02000f 	lui	v0,0xf

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    1f9c:	00044502 	srl	t0,a0,0x14
    1fa0:	310807ff 	andi	t0,t0,0x7ff
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    1fa4:	240307ff 	addiu	v1,zero,2047
    1fa8:	1103001a 	beq	t0,v1,2014 <float64_ge+0x8c>
    1fac:	000617c2 	srl	v0,a2,0x1f

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    1fb0:	00041fc2 	srl	v1,a0,0x1f
      float_raise (float_flag_invalid);
      return 0;
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    1fb4:	10430020 	beq	v0,v1,2038 <float64_ge+0xb0>
    1fb8:	00000000 	sll	zero,zero,0x0
    return aSign || ((bits64) ((a | b) << 1) == 0);
    1fbc:	14400009 	bnez	v0,1fe4 <float64_ge+0x5c>
    1fc0:	00e52825 	or	a1,a3,a1
    1fc4:	00c42025 	or	a0,a2,a0
    1fc8:	00051fc2 	srl	v1,a1,0x1f
    1fcc:	00042040 	sll	a0,a0,0x1
    1fd0:	00642025 	or	a0,v1,a0
    1fd4:	00052840 	sll	a1,a1,0x1

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    {
      float_raise (float_flag_invalid);
      return 0;
    1fd8:	00851025 	or	v0,a0,a1
    1fdc:	03e00008 	jr	ra
    1fe0:	2c420001 	sltiu	v0,v0,1
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    return aSign || ((bits64) ((a | b) << 1) == 0);
    1fe4:	03e00008 	jr	ra
    1fe8:	24020001 	addiu	v0,zero,1

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    1fec:	3442ffff 	ori	v0,v0,0xffff
    1ff0:	00c21024 	and	v0,a2,v0
flag
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
    1ff4:	00471025 	or	v0,v0,a3
    1ff8:	1040ffe9 	beqz	v0,1fa0 <float64_ge+0x18>
    1ffc:	00044502 	srl	t0,a0,0x14
    2000:	8f830000 	lw	v1,0(gp)
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    {
      float_raise (float_flag_invalid);
      return 0;
    2004:	00001021 	addu	v0,zero,zero
    2008:	34630010 	ori	v1,v1,0x10
    200c:	03e00008 	jr	ra
    2010:	af830000 	sw	v1,0(gp)

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    2014:	3c02000f 	lui	v0,0xf
    2018:	3442ffff 	ori	v0,v0,0xffff
    201c:	00821024 	and	v0,a0,v0
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    2020:	00451025 	or	v0,v0,a1
    2024:	1440fff6 	bnez	v0,2000 <float64_ge+0x78>
    2028:	00041fc2 	srl	v1,a0,0x1f

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    202c:	000617c2 	srl	v0,a2,0x1f
      float_raise (float_flag_invalid);
      return 0;
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    2030:	1443ffe2 	bne	v0,v1,1fbc <float64_ge+0x34>
    2034:	00000000 	sll	zero,zero,0x0
    return aSign || ((bits64) ((a | b) << 1) == 0);
  return (a == b) || (aSign ^ (a < b));
    2038:	10c40009 	beq	a2,a0,2060 <float64_ge+0xd8>
    203c:	00c4402b 	sltu	t0,a2,a0
    2040:	15000004 	bnez	t0,2054 <float64_ge+0xcc>
    2044:	24030001 	addiu	v1,zero,1
    2048:	10860009 	beq	a0,a2,2070 <float64_ge+0xe8>
    204c:	00000000 	sll	zero,zero,0x0
    2050:	00001821 	addu	v1,zero,zero

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    {
      float_raise (float_flag_invalid);
      return 0;
    2054:	00431026 	xor	v0,v0,v1
    2058:	03e00008 	jr	ra
    205c:	0002102b 	sltu	v0,zero,v0
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    return aSign || ((bits64) ((a | b) << 1) == 0);
  return (a == b) || (aSign ^ (a < b));
    2060:	14e5fff7 	bne	a3,a1,2040 <float64_ge+0xb8>
    2064:	00000000 	sll	zero,zero,0x0

flag
float64_ge (float64 a, float64 b)
{
  return float64_le (b, a);
}
    2068:	03e00008 	jr	ra
    206c:	24020001 	addiu	v0,zero,1
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    return aSign || ((bits64) ((a | b) << 1) == 0);
  return (a == b) || (aSign ^ (a < b));
    2070:	00e5282b 	sltu	a1,a3,a1
    2074:	14a0fff7 	bnez	a1,2054 <float64_ge+0xcc>
    2078:	00000000 	sll	zero,zero,0x0
    207c:	08000815 	j	2054 <float64_ge+0xcc>
    2080:	00001821 	addu	v1,zero,zero

00002084 <float64_neg>:

// added by hiroyuki@acm.org
float64
float64_neg (float64 x)
{
  return (((~x) & 0x8000000000000000ULL) | (x & 0x7fffffffffffffffULL));
    2084:	00041827 	nor	v1,zero,a0
    2088:	3c028000 	lui	v0,0x8000
    208c:	00621024 	and	v0,v1,v0
    2090:	3c037fff 	lui	v1,0x7fff
    2094:	3463ffff 	ori	v1,v1,0xffff
    2098:	00832024 	and	a0,a0,v1
}
    209c:	00441025 	or	v0,v0,a0
    20a0:	03e00008 	jr	ra
    20a4:	00a01821 	addu	v1,a1,zero

000020a8 <float64_abs>:

float64
float64_abs (float64 x)
{
  return (x & 0x7fffffffffffffffULL);
}
    20a8:	3c027fff 	lui	v0,0x7fff
    20ac:	3442ffff 	ori	v0,v0,0xffff
    20b0:	00821024 	and	v0,a0,v0
    20b4:	03e00008 	jr	ra
    20b8:	00a01821 	addu	v1,a1,zero

000020bc <sin>:

float64
sin (float64 rad)
{
    20bc:	27bdffb8 	addiu	sp,sp,-72
  float64 m_rad2;
  int inc;

  app = diff = rad;
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
    20c0:	00803021 	addu	a2,a0,zero
    20c4:	00a03821 	addu	a3,a1,zero
  return (x & 0x7fffffffffffffffULL);
}

float64
sin (float64 rad)
{
    20c8:	afbe0040 	sw	s8,64(sp)
    20cc:	afb7003c 	sw	s7,60(sp)
    20d0:	afb60038 	sw	s6,56(sp)
    20d4:	afb50034 	sw	s5,52(sp)
    20d8:	afb40030 	sw	s4,48(sp)
    20dc:	afb3002c 	sw	s3,44(sp)
    20e0:	afb20028 	sw	s2,40(sp)
    20e4:	afb10024 	sw	s1,36(sp)
    20e8:	afb00020 	sw	s0,32(sp)
    20ec:	00a08821 	addu	s1,a1,zero
    20f0:	00808021 	addu	s0,a0,zero
    20f4:	afbf0044 	sw	ra,68(sp)
  float64 m_rad2;
  int inc;

  app = diff = rad;
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
    20f8:	0c000000 	jal	0 <roundAndPackFloat64>
    20fc:	3c167fff 	lui	s6,0x7fff

// added by hiroyuki@acm.org
float64
float64_neg (float64 x)
{
  return (((~x) & 0x8000000000000000ULL) | (x & 0x7fffffffffffffffULL));
    2100:	0002f027 	nor	s8,zero,v0
    2104:	afa30018 	sw	v1,24(sp)
    2108:	36d6ffff 	ori	s6,s6,0xffff
    210c:	3c038000 	lui	v1,0x8000
    2110:	03c3f024 	and	s8,s8,v1
    2114:	00561024 	and	v0,v0,s6
    2118:	03c2f025 	or	s8,s8,v0
  float64 app;
  float64 diff;
  float64 m_rad2;
  int inc;

  app = diff = rad;
    211c:	02009021 	addu	s2,s0,zero
    2120:	0220a021 	addu	s4,s1,zero
    2124:	24130003 	addiu	s3,zero,3
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    2128:	3c170001 	lui	s7,0x1
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    212c:	241507ff 	addiu	s5,zero,2047
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
  do
    {
      diff = float64_div (float64_mul (diff, m_rad2),
    2130:	8fa70018 	lw	a3,24(sp)
    2134:	02002021 	addu	a0,s0,zero
    2138:	02202821 	addu	a1,s1,zero
    213c:	0c000000 	jal	0 <roundAndPackFloat64>
    2140:	03c03021 	addu	a2,s8,zero
    2144:	00602821 	addu	a1,v1,zero
{
  return (x & 0x7fffffffffffffffULL);
}

float64
sin (float64 rad)
    2148:	2663ffff 	addiu	v1,s3,-1
  app = diff = rad;
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
  do
    {
      diff = float64_div (float64_mul (diff, m_rad2),
    214c:	02630018 	mult	s3,v1
    2150:	00402021 	addu	a0,v0,zero
    2154:	00001812 	mflo	v1
    2158:	0077102b 	sltu	v0,v1,s7
    215c:	1040003a 	beqz	v0,2248 <sin+0x18c>
    2160:	24060015 	addiu	a2,zero,21
    {
      shiftCount += 16;
      a <<= 16;
    2164:	00031400 	sll	v0,v1,0x10
    2168:	24060025 	addiu	a2,zero,37
    216c:	24080018 	addiu	t0,zero,24
    }
  if (a < 0x1000000)
    2170:	3c090100 	lui	t1,0x100
    2174:	0049382b 	sltu	a3,v0,t1
    2178:	10e00003 	beqz	a3,2188 <sin+0xcc>
    217c:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
      a <<= 8;
    2180:	00021200 	sll	v0,v0,0x8
    2184:	25060015 	addiu	a2,t0,21
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
    2188:	00021602 	srl	v0,v0,0x18
    218c:	3c070000 	lui	a3,0x0
    2190:	24e70240 	addiu	a3,a3,576
    2194:	00021080 	sll	v0,v0,0x2
    2198:	00e21021 	addu	v0,a3,v0

  if (a == 0)
    return 0;
  zSign = (a < 0);
  absA = zSign ? -a : a;
  shiftCount = countLeadingZeros32 (absA) + 21;
    219c:	8c470000 	lw	a3,0(v0)
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);
    21a0:	24090432 	addiu	t1,zero,1074

  if (a == 0)
    return 0;
  zSign = (a < 0);
  absA = zSign ? -a : a;
  shiftCount = countLeadingZeros32 (absA) + 21;
    21a4:	00c73821 	addu	a3,a2,a3
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);
    21a8:	01273023 	subu	a2,t1,a3
    21ac:	30e20020 	andi	v0,a3,0x20
    21b0:	10400028 	beqz	v0,2254 <sin+0x198>
    21b4:	00063500 	sll	a2,a2,0x14
    21b8:	00e31004 	sllv	v0,v1,a3
    21bc:	00c23021 	addu	a2,a2,v0
    21c0:	0c000000 	jal	0 <roundAndPackFloat64>
    21c4:	00003821 	addu	a3,zero,zero
    21c8:	00408021 	addu	s0,v0,zero
    21cc:	00608821 	addu	s1,v1,zero

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    21d0:	001217c2 	srl	v0,s2,0x1f
    21d4:	00101fc2 	srl	v1,s0,0x1f
{
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
    21d8:	1043002a 	beq	v0,v1,2284 <sin+0x1c8>
    21dc:	02402021 	addu	a0,s2,zero
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);
    21e0:	02802821 	addu	a1,s4,zero
    21e4:	02003021 	addu	a2,s0,zero
    21e8:	02203821 	addu	a3,s1,zero
    21ec:	0c000196 	jal	658 <subFloat64Sigs>
    21f0:	afa20010 	sw	v0,16(sp)
    21f4:	00409021 	addu	s2,v0,zero
#include "softfloat.c"

float64
float64_abs (float64 x)
{
  return (x & 0x7fffffffffffffffULL);
    21f8:	02161024 	and	v0,s0,s6
    21fc:	0060a021 	addu	s4,v1,zero

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    2200:	00021d02 	srl	v1,v0,0x14
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    2204:	1075002b 	beq	v1,s5,22b4 <sin+0x1f8>
    2208:	3c04000f 	lui	a0,0xf
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    return aSign || ((bits64) ((a | b) << 1) == 0);
  return (a == b) || (aSign ^ (a < b));
    220c:	3c073ee4 	lui	a3,0x3ee4
    2210:	34e7f8b6 	ori	a3,a3,0xf8b6
    2214:	0047182b 	sltu	v1,v0,a3
    2218:	1060ffc5 	beqz	v1,2130 <sin+0x74>
    221c:	26730002 	addiu	s3,s3,2
    2220:	3c093ee4 	lui	t1,0x3ee4
    2224:	3529f8b5 	ori	t1,t1,0xf8b5
    2228:	1449002b 	bne	v0,t1,22d8 <sin+0x21c>
    222c:	3c0388e3 	lui	v1,0x88e3
    2230:	346368f1 	ori	v1,v1,0x68f1
    2234:	0223102b 	sltu	v0,s1,v1
    2238:	1040ffbd 	beqz	v0,2130 <sin+0x74>
    223c:	00000000 	sll	zero,zero,0x0
    2240:	080008b6 	j	22d8 <sin+0x21c>
    2244:	00000000 	sll	zero,zero,0x0
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    2248:	00001012 	mflo	v0
    224c:	0800085c 	j	2170 <sin+0xb4>
    2250:	24080008 	addiu	t0,zero,8
    return 0;
  zSign = (a < 0);
  absA = zSign ? -a : a;
  shiftCount = countLeadingZeros32 (absA) + 21;
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);
    2254:	00034042 	srl	t0,v1,0x1
    2258:	00071027 	nor	v0,zero,a3
    225c:	00481006 	srlv	v0,t0,v0
    2260:	00e33804 	sllv	a3,v1,a3
  app = diff = rad;
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
  do
    {
      diff = float64_div (float64_mul (diff, m_rad2),
    2264:	0c000000 	jal	0 <roundAndPackFloat64>
    2268:	00c23021 	addu	a2,a2,v0
    226c:	00408021 	addu	s0,v0,zero
    2270:	00608821 	addu	s1,v1,zero

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
    2274:	001217c2 	srl	v0,s2,0x1f
    2278:	00101fc2 	srl	v1,s0,0x1f
{
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
    227c:	1443ffd8 	bne	v0,v1,21e0 <sin+0x124>
    2280:	02402021 	addu	a0,s2,zero
    return addFloat64Sigs (a, b, aSign);
    2284:	02802821 	addu	a1,s4,zero
    2288:	02003021 	addu	a2,s0,zero
    228c:	02203821 	addu	a3,s1,zero
    2290:	0c0000a8 	jal	2a0 <addFloat64Sigs>
    2294:	afa20010 	sw	v0,16(sp)
    2298:	00409021 	addu	s2,v0,zero
#include "softfloat.c"

float64
float64_abs (float64 x)
{
  return (x & 0x7fffffffffffffffULL);
    229c:	02161024 	and	v0,s0,s6
    22a0:	0060a021 	addu	s4,v1,zero

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
    22a4:	00021d02 	srl	v1,v0,0x14
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    22a8:	1475ffd9 	bne	v1,s5,2210 <sin+0x154>
    22ac:	3c073ee4 	lui	a3,0x3ee4

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    22b0:	3c04000f 	lui	a0,0xf
    22b4:	3484ffff 	ori	a0,a0,0xffff
    22b8:	00441824 	and	v1,v0,a0
float64_le (float64 a, float64 b)
{
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    22bc:	00711825 	or	v1,v1,s1
    22c0:	1060ffd3 	beqz	v1,2210 <sin+0x154>
    22c4:	3c073ee4 	lui	a3,0x3ee4
    22c8:	8f820000 	lw	v0,0(gp)
    22cc:	00000000 	sll	zero,zero,0x0
    22d0:	34420010 	ori	v0,v0,0x10
    22d4:	af820000 	sw	v0,0(gp)
      app = float64_add (app, diff);
      inc++;
    }
  while (float64_ge (float64_abs (diff), 0x3ee4f8b588e368f1ULL));	/* 0.00001 */
  return app;
}
    22d8:	8fbf0044 	lw	ra,68(sp)
    22dc:	02401021 	addu	v0,s2,zero
    22e0:	02801821 	addu	v1,s4,zero
    22e4:	8fbe0040 	lw	s8,64(sp)
    22e8:	8fb7003c 	lw	s7,60(sp)
    22ec:	8fb60038 	lw	s6,56(sp)
    22f0:	8fb50034 	lw	s5,52(sp)
    22f4:	8fb40030 	lw	s4,48(sp)
    22f8:	8fb3002c 	lw	s3,44(sp)
    22fc:	8fb20028 	lw	s2,40(sp)
    2300:	8fb10024 	lw	s1,36(sp)
    2304:	8fb00020 	lw	s0,32(sp)
    2308:	03e00008 	jr	ra
    230c:	27bd0048 	addiu	sp,sp,72

00002310 <ullong_to_double>:
    unsigned long long ll;
  } t;

  t.ll = x;
  return t.d;
}
    2310:	44850000 	mtc1	a1,$f0
    2314:	00000000 	sll	zero,zero,0x0
    2318:	44840800 	mtc1	a0,$f1
    231c:	03e00008 	jr	ra
    2320:	00000000 	sll	zero,zero,0x0

00002324 <main>:
  0xbfc63a23c48863ddULL
};				/* -0.173649 */

int
main ()
{
    2324:	27bdffb0 	addiu	sp,sp,-80
    2328:	afb50048 	sw	s5,72(sp)
    232c:	afb40044 	sw	s4,68(sp)
    2330:	afb30040 	sw	s3,64(sp)
    2334:	3c150000 	lui	s5,0x0
    2338:	3c140000 	lui	s4,0x0
	  float64 result;
	  result = sin (test_in[i]);
	  main_result += (result != test_out[i]);

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
    233c:	3c130000 	lui	s3,0x0
  0xbfc63a23c48863ddULL
};				/* -0.173649 */

int
main ()
{
    2340:	afb2003c 	sw	s2,60(sp)
    2344:	afb10038 	sw	s1,56(sp)
    2348:	afb00034 	sw	s0,52(sp)
    234c:	afbf004c 	sw	ra,76(sp)
    2350:	00008021 	addu	s0,zero,zero
  int main_result;
  int i;
      main_result = 0;
    2354:	00008821 	addu	s1,zero,zero
    2358:	26b50000 	addiu	s5,s5,0
    235c:	26940000 	addiu	s4,s4,0
	  float64 result;
	  result = sin (test_in[i]);
	  main_result += (result != test_out[i]);

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
    2360:	26730000 	addiu	s3,s3,0
main ()
{
  int main_result;
  int i;
      main_result = 0;
      for (i = 0; i < N; i++)
    2364:	24120120 	addiu	s2,zero,288
  0xbfd5e3ad0a69caf7ULL,	/* -0.342021 */
  0xbfc63a23c48863ddULL
};				/* -0.173649 */

int
main ()
    2368:	02b01021 	addu	v0,s5,s0
  int i;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  result = sin (test_in[i]);
    236c:	8c470004 	lw	a3,4(v0)
    2370:	8c460000 	lw	a2,0(v0)
    2374:	00e02821 	addu	a1,a3,zero
    2378:	00c02021 	addu	a0,a2,zero
    237c:	afa60028 	sw	a2,40(sp)
    2380:	0c000000 	jal	0 <roundAndPackFloat64>
    2384:	afa7002c 	sw	a3,44(sp)
  0xbfd5e3ad0a69caf7ULL,	/* -0.342021 */
  0xbfc63a23c48863ddULL
};				/* -0.173649 */

int
main ()
    2388:	02902021 	addu	a0,s4,s0
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  result = sin (test_in[i]);
	  main_result += (result != test_out[i]);
    238c:	8c880000 	lw	t0,0(a0)
    2390:	8c850004 	lw	a1,4(a0)
    2394:	01024826 	xor	t1,t0,v0
    2398:	00a32026 	xor	a0,a1,v1
    239c:	01244825 	or	t1,t1,a0

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
    23a0:	8fa60028 	lw	a2,40(sp)
    23a4:	8fa7002c 	lw	a3,44(sp)
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  result = sin (test_in[i]);
	  main_result += (result != test_out[i]);
    23a8:	0009482b 	sltu	t1,zero,t1

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
    23ac:	26100008 	addiu	s0,s0,8
    23b0:	02602021 	addu	a0,s3,zero
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  result = sin (test_in[i]);
	  main_result += (result != test_out[i]);
    23b4:	02298821 	addu	s1,s1,t1

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
    23b8:	afa80010 	sw	t0,16(sp)
    23bc:	afa50014 	sw	a1,20(sp)
    23c0:	afa3001c 	sw	v1,28(sp)
    23c4:	afa20018 	sw	v0,24(sp)
    23c8:	afa30024 	sw	v1,36(sp)
    23cc:	0c000000 	jal	0 <roundAndPackFloat64>
    23d0:	afa20020 	sw	v0,32(sp)
main ()
{
  int main_result;
  int i;
      main_result = 0;
      for (i = 0; i < N; i++)
    23d4:	1612ffe5 	bne	s0,s2,236c <main+0x48>
    23d8:	02b01021 	addu	v0,s5,s0

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     test_in[i], test_out[i], result, ullong_to_double (result));
	}
      printf ("%d\n", main_result);
    23dc:	3c040000 	lui	a0,0x0
    23e0:	02202821 	addu	a1,s1,zero
    23e4:	0c000000 	jal	0 <roundAndPackFloat64>
    23e8:	24840000 	addiu	a0,a0,0
      return main_result;
    }
    23ec:	8fbf004c 	lw	ra,76(sp)
    23f0:	02201021 	addu	v0,s1,zero
    23f4:	8fb50048 	lw	s5,72(sp)
    23f8:	8fb40044 	lw	s4,68(sp)
    23fc:	8fb30040 	lw	s3,64(sp)
    2400:	8fb2003c 	lw	s2,60(sp)
    2404:	8fb10038 	lw	s1,56(sp)
    2408:	8fb00034 	lw	s0,52(sp)
    240c:	03e00008 	jr	ra
    2410:	27bd0050 	addiu	sp,sp,80

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
 144:	16c242e3 	bne	s6,v0,10cd4 <main+0xe9b0>
 148:	3fe8836f 	0x3fe8836f
 14c:	672614a6 	0x672614a6
 150:	3febb67a 	0x3febb67a
 154:	c40b2bed 	lwc1	$f11,11245(zero)
 158:	3fee11f6 	0x3fee11f6
 15c:	127e28ad 	beq	s3,s8,a414 <main+0x80f0>
 160:	3fef838b 	0x3fef838b
 164:	6adffac0 	0x6adffac0
 168:	3fefffff 	0x3fefffff
 16c:	e1cbd7aa 	swc0	$11,-10326(t6)
 170:	3fef838b 	0x3fef838b
 174:	b0147989 	0xb0147989
 178:	3fee11f6 	0x3fee11f6
 17c:	92d962b4 	lbu	t9,25268(s6)
 180:	3febb67b 	0x3febb67b
 184:	77c0142d 	jalx	f0050b4 <main+0xf002d90>
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
 1e4:	740aae32 	jalx	2ab8c8 <main+0x2a95a4>
 1e8:	bfee11f5 	0xbfee11f5
 1ec:	912d2157 	lbu	t5,8535(t1)
 1f0:	bfef838b 	0xbfef838b
 1f4:	1ac64afc 	0x1ac64afc
 1f8:	bfefffff 	0xbfefffff
 1fc:	c2e5dc8f 	lwc0	$5,-9073(s7)
 200:	bfef838b 	0xbfef838b
 204:	5ea2e7ea 	0x5ea2e7ea
 208:	bfee11f7 	0xbfee11f7
 20c:	112dae27 	beq	t1,t5,fffebaac <main+0xfffe9788>
 210:	bfebb67c 	0xbfebb67c
 214:	2c31cb4a 	sltiu	s1,at,-13494
 218:	bfe88371 	0xbfe88371
 21c:	6e6fd781 	0x6e6fd781
 220:	bfe491b9 	0xbfe491b9
 224:	cd1b5d56 	lwc3	$27,23894(t0)
 228:	bfe00002 	0xbfe00002
 22c:	1d0ca30d 	0x1d0ca30d
 230:	bfd5e3ad 	0xbfd5e3ad
 234:	0a69caf7 	j	9a72bdc <main+0x9a708b8>
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
