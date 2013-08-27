
dfmul.o:     file format elf32-bigmips


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

000000dc <shift64RightJamming>:
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
  dc:	10c00006 	beqz	a2,f8 <shift64RightJamming+0x1c>
  e0:	28c20040 	slti	v0,a2,64
    {
      z = a;
    }
  else if (count < 64)
  e4:	14400007 	bnez	v0,104 <shift64RightJamming+0x28>
  e8:	00061823 	negu	v1,a2
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
    }
  else
    {
      z = (a != 0);
  ec:	00852825 	or	a1,a0,a1
  f0:	0005282b 	sltu	a1,zero,a1
  f4:	00002021 	addu	a0,zero,zero
    }
  *zPtr = z;
  f8:	ace40000 	sw	a0,0(a3)

}
  fc:	03e00008 	jr	ra
 100:	ace50004 	sw	a1,4(a3)
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 104:	30620020 	andi	v0,v1,0x20
 108:	1040000d 	beqz	v0,140 <shift64RightJamming+0x64>
 10c:	3063003f 	andi	v1,v1,0x3f
 110:	00651004 	sllv	v0,a1,v1
 114:	00001821 	addu	v1,zero,zero
 118:	00431025 	or	v0,v0,v1
 11c:	30c80020 	andi	t0,a2,0x20
 120:	11000011 	beqz	t0,168 <shift64RightJamming+0x8c>
 124:	0002102b 	sltu	v0,zero,v0
 128:	00c42806 	srlv	a1,a0,a2
 12c:	00452825 	or	a1,v0,a1
 130:	00002021 	addu	a0,zero,zero
    }
  else
    {
      z = (a != 0);
    }
  *zPtr = z;
 134:	ace40000 	sw	a0,0(a3)

}
 138:	03e00008 	jr	ra
 13c:	ace50004 	sw	a1,4(a3)
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 140:	00031027 	nor	v0,zero,v1
 144:	00054042 	srl	t0,a1,0x1
 148:	00484006 	srlv	t0,t0,v0
 14c:	00641004 	sllv	v0,a0,v1
 150:	01021025 	or	v0,t0,v0
 154:	00651804 	sllv	v1,a1,v1
 158:	00431025 	or	v0,v0,v1
 15c:	30c80020 	andi	t0,a2,0x20
 160:	1500fff1 	bnez	t0,128 <shift64RightJamming+0x4c>
 164:	0002102b 	sltu	v0,zero,v0
 168:	00044040 	sll	t0,a0,0x1
 16c:	00061827 	nor	v1,zero,a2
 170:	00681804 	sllv	v1,t0,v1
 174:	00c52806 	srlv	a1,a1,a2
 178:	00652825 	or	a1,v1,a1
 17c:	00c42006 	srlv	a0,a0,a2
 180:	0800004d 	j	134 <shift64RightJamming+0x58>
 184:	00452825 	or	a1,v0,a1

00000188 <mul64To128>:
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
 188:	00c50019 	multu	a2,a1
| `z0Ptr' and `z1Ptr'.
*----------------------------------------------------------------------------*/

INLINE void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
 18c:	8fad0010 	lw	t5,16(sp)
 190:	8fae0014 	lw	t6,20(sp)
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
 194:	00004812 	mflo	t1
 198:	00004010 	mfhi	t0
	...
  zMiddleB = ((bits64) aHigh) * bLow;
 1a4:	00870019 	multu	a0,a3
 1a8:	00001010 	mfhi	v0
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
 1ac:	01024021 	addu	t0,t0,v0
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
 1b0:	00001812 	mflo	v1
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
 1b4:	01236021 	addu	t4,t1,v1
 1b8:	00000000 	sll	zero,zero,0x0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
 1bc:	00e50019 	multu	a3,a1
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
 1c0:	0189282b 	sltu	a1,t4,t1
 1c4:	00a84021 	addu	t0,a1,t0
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 1c8:	0102382b 	sltu	a3,t0,v0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
 1cc:	00005812 	mflo	t3
 1d0:	00005010 	mfhi	t2
	...
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
 1dc:	00c40019 	multu	a2,a0
 1e0:	00002812 	mflo	a1
 1e4:	00002010 	mfhi	a0
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 1e8:	14e00004 	bnez	a3,1fc <mul64To128+0x74>
 1ec:	24060001 	addiu	a2,zero,1
 1f0:	11020017 	beq	t0,v0,250 <mul64To128+0xc8>
 1f4:	0183102b 	sltu	v0,t4,v1
 1f8:	00003021 	addu	a2,zero,zero
  zMiddleA <<= 32;
  z1 += zMiddleA;
 1fc:	018a7821 	addu	t7,t4,t2
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 200:	01054821 	addu	t1,t0,a1
 204:	0128402b 	sltu	t0,t1,t0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 208:	01ec602b 	sltu	t4,t7,t4
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
 20c:	01605021 	addu	t2,t3,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 210:	01042021 	addu	a0,t0,a0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 214:	24030001 	addiu	v1,zero,1
 218:	15800003 	bnez	t4,228 <mul64To128+0xa0>
 21c:	00001021 	addu	v0,zero,zero
 220:	00001821 	addu	v1,zero,zero
 224:	00001021 	addu	v0,zero,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 228:	01232821 	addu	a1,t1,v1
 22c:	00a9482b 	sltu	t1,a1,t1
 230:	00821021 	addu	v0,a0,v0
 234:	01221021 	addu	v0,t1,v0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 238:	00463021 	addu	a2,v0,a2
  *z1Ptr = z1;
 23c:	adcf0000 	sw	t7,0(t6)
 240:	adca0004 	sw	t2,4(t6)
  *z0Ptr = z0;
 244:	ada60000 	sw	a2,0(t5)

}
 248:	03e00008 	jr	ra
 24c:	ada50004 	sw	a1,4(t5)
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 250:	1040ffe9 	beqz	v0,1f8 <mul64To128+0x70>
 254:	24060001 	addiu	a2,zero,1
  zMiddleA <<= 32;
  z1 += zMiddleA;
 258:	08000080 	j	200 <mul64To128+0x78>
 25c:	018a7821 	addu	t7,t4,t2

00000260 <float_raise>:
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 260:	8f820000 	lw	v0,0(gp)
 264:	00000000 	sll	zero,zero,0x0
 268:	00441025 	or	v0,v0,a0

}
 26c:	03e00008 	jr	ra
 270:	af820000 	sw	v0,0(gp)

00000274 <float64_is_nan>:

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 274:	000517c2 	srl	v0,a1,0x1f
 278:	00042040 	sll	a0,a0,0x1
 27c:	3c03ffe0 	lui	v1,0xffe0
 280:	00442025 	or	a0,v0,a0
 284:	24660001 	addiu	a2,v1,1
 288:	0086302b 	sltu	a2,a0,a2
 28c:	00052840 	sll	a1,a1,0x1
 290:	10c00007 	beqz	a2,2b0 <float64_is_nan+0x3c>
 294:	24020001 	addiu	v0,zero,1
 298:	10830003 	beq	a0,v1,2a8 <float64_is_nan+0x34>
 29c:	00000000 	sll	zero,zero,0x0

}
 2a0:	03e00008 	jr	ra
 2a4:	00001021 	addu	v0,zero,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 2a8:	10a0fffd 	beqz	a1,2a0 <float64_is_nan+0x2c>
 2ac:	00000000 	sll	zero,zero,0x0

}
 2b0:	03e00008 	jr	ra
 2b4:	00000000 	sll	zero,zero,0x0

000002b8 <float64_is_signaling_nan>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 2b8:	000414c2 	srl	v0,a0,0x13
 2bc:	30420fff 	andi	v0,v0,0xfff
 2c0:	24030ffe 	addiu	v1,zero,4094
 2c4:	10430003 	beq	v0,v1,2d4 <float64_is_signaling_nan+0x1c>
 2c8:	00000000 	sll	zero,zero,0x0

}
 2cc:	03e00008 	jr	ra
 2d0:	00001021 	addu	v0,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 2d4:	3c020007 	lui	v0,0x7
 2d8:	3442ffff 	ori	v0,v0,0xffff
 2dc:	00821024 	and	v0,a0,v0
 2e0:	00451025 	or	v0,v0,a1
 2e4:	03e00008 	jr	ra
 2e8:	0002102b 	sltu	v0,zero,v0

000002ec <extractFloat64Frac>:
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);

}
 2ec:	3c02000f 	lui	v0,0xf
 2f0:	3442ffff 	ori	v0,v0,0xffff
 2f4:	00821024 	and	v0,a0,v0
 2f8:	03e00008 	jr	ra
 2fc:	00a01821 	addu	v1,a1,zero

00000300 <extractFloat64Exp>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 300:	00041502 	srl	v0,a0,0x14

}
 304:	03e00008 	jr	ra
 308:	304207ff 	andi	v0,v0,0x7ff

0000030c <extractFloat64Sign>:
extractFloat64Sign (float64 a)
{

  return a >> 63;

}
 30c:	03e00008 	jr	ra
 310:	000417c2 	srl	v0,a0,0x1f

00000314 <packFloat64>:

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 314:	000427c0 	sll	a0,a0,0x1f
 318:	00c42021 	addu	a0,a2,a0
 31c:	00051500 	sll	v0,a1,0x14

}
 320:	00821021 	addu	v0,a0,v0
 324:	03e00008 	jr	ra
 328:	00e01821 	addu	v1,a3,zero

0000032c <float64_mul>:
| for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_mul (float64 a, float64 b)
{
 32c:	27bdffc8 	addiu	sp,sp,-56

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 330:	00044d02 	srl	t1,a0,0x14

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 334:	3c0c000f 	lui	t4,0xf
 338:	358cffff 	ori	t4,t4,0xffff
| for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_mul (float64 a, float64 b)
{
 33c:	afb10030 	sw	s1,48(sp)
 340:	afb0002c 	sw	s0,44(sp)

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 344:	00068d02 	srl	s1,a2,0x14

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
 348:	00868026 	xor	s0,a0,a2

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 34c:	312907ff 	andi	t1,t1,0x7ff
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
 350:	240d07ff 	addiu	t5,zero,2047

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 354:	008c7024 	and	t6,a0,t4
| for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_mul (float64 a, float64 b)
{
 358:	afbf0034 	sw	ra,52(sp)
 35c:	00804021 	addu	t0,a0,zero
 360:	00c01821 	addu	v1,a2,zero
 364:	00a05821 	addu	t3,a1,zero
 368:	00e05021 	addu	t2,a3,zero

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 36c:	00a07821 	addu	t7,a1,zero
 370:	00cc6024 	and	t4,a2,t4
 374:	00e01021 	addu	v0,a3,zero

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 378:	323107ff 	andi	s1,s1,0x7ff
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
 37c:	112d00b4 	beq	t1,t5,650 <float64_mul+0x324>
 380:	001087c2 	srl	s0,s0,0x1f
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
 384:	122d00c9 	beq	s1,t5,6ac <float64_mul+0x380>
 388:	00000000 	sll	zero,zero,0x0
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (aExp == 0)
 38c:	11200083 	beqz	t1,59c <float64_mul+0x270>
 390:	00000000 	sll	zero,zero,0x0
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  if (bExp == 0)
 394:	16200023 	bnez	s1,424 <float64_mul+0xf8>
 398:	00000000 	sll	zero,zero,0x0
    {
      if (bSig == 0)
 39c:	018a1025 	or	v0,t4,t2
 3a0:	104000a1 	beqz	v0,628 <float64_mul+0x2fc>
 3a4:	00000000 	sll	zero,zero,0x0
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 3a8:	118000f0 	beqz	t4,76c <float64_mul+0x440>
 3ac:	01401021 	addu	v0,t2,zero
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
 3b0:	01801021 	addu	v0,t4,zero
 3b4:	2411fff5 	addiu	s1,zero,-11
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
 3b8:	3c030001 	lui	v1,0x1
 3bc:	0043182b 	sltu	v1,v0,v1
 3c0:	10600003 	beqz	v1,3d0 <float64_mul+0xa4>
 3c4:	00001821 	addu	v1,zero,zero
    {
      shiftCount += 16;
      a <<= 16;
 3c8:	00021400 	sll	v0,v0,0x10
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
 3cc:	24030010 	addiu	v1,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
 3d0:	3c040100 	lui	a0,0x100
 3d4:	0044202b 	sltu	a0,v0,a0
 3d8:	10800003 	beqz	a0,3e8 <float64_mul+0xbc>
 3dc:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
 3e0:	24630008 	addiu	v1,v1,8
      a <<= 8;
 3e4:	00021200 	sll	v0,v0,0x8
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
 3e8:	00021602 	srl	v0,v0,0x18
 3ec:	3c040000 	lui	a0,0x0
 3f0:	00021080 	sll	v0,v0,0x2
 3f4:	248401e0 	addiu	a0,a0,480
 3f8:	00441021 	addu	v0,v0,a0
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
 3fc:	8c420000 	lw	v0,0(v0)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
 400:	00718821 	addu	s1,v1,s1
 404:	02228821 	addu	s1,s1,v0
  *zSigPtr = aSig << shiftCount;
 408:	32220020 	andi	v0,s1,0x20
 40c:	104000d9 	beqz	v0,774 <float64_mul+0x448>
 410:	000a1842 	srl	v1,t2,0x1
 414:	022a6004 	sllv	t4,t2,s1
  *zExpPtr = 1 - shiftCount;
 418:	240a0001 	addiu	t2,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 41c:	00001021 	addu	v0,zero,zero
  *zExpPtr = 1 - shiftCount;
 420:	01518823 	subu	s1,t2,s1
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
 424:	3c0a0010 	lui	t2,0x10
 428:	01ca7025 	or	t6,t6,t2
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
 42c:	018a6025 	or	t4,t4,t2
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
 430:	000f2582 	srl	a0,t7,0x16
 434:	000e7280 	sll	t6,t6,0xa
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
 438:	00023542 	srl	a2,v0,0x15
 43c:	000c62c0 	sll	t4,t4,0xb
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
 440:	00023ac0 	sll	a3,v0,0xb
 444:	27a20018 	addiu	v0,sp,24
    {
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  zExp = aExp + bExp - 0x3FF;
 448:	2529fc01 	addiu	t1,t1,-1023
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
 44c:	008e2025 	or	a0,a0,t6
 450:	000f2a80 	sll	a1,t7,0xa
 454:	00cc3025 	or	a2,a2,t4
 458:	afa20010 	sw	v0,16(sp)
 45c:	27a20020 	addiu	v0,sp,32
 460:	afa20014 	sw	v0,20(sp)
 464:	0c000000 	jal	0 <propagateFloat64NaN>
 468:	01318821 	addu	s1,t1,s1
  zSig0 |= (zSig1 != 0);
 46c:	8fa20024 	lw	v0,36(sp)
 470:	8fa30020 	lw	v1,32(sp)
 474:	8fa40018 	lw	a0,24(sp)
 478:	00621825 	or	v1,v1,v0
 47c:	8fa2001c 	lw	v0,28(sp)
 480:	0003182b 	sltu	v1,zero,v1
 484:	00431825 	or	v1,v0,v1
  if (0 <= (sbits64) (zSig0 << 1))
 488:	00032fc2 	srl	a1,v1,0x1f
 48c:	00041040 	sll	v0,a0,0x1
 490:	00a21025 	or	v0,a1,v0
 494:	044000bf 	bltz	v0,794 <float64_mul+0x468>
 498:	00033040 	sll	a2,v1,0x1
    {
      zSig0 <<= 1;
      --zExp;
 49c:	2631ffff 	addiu	s1,s1,-1
{
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
 4a0:	8f830000 	lw	v1,0(gp)
 4a4:	00000000 	sll	zero,zero,0x0
  roundNearestEven = (roundingMode == float_round_nearest_even);
 4a8:	2c640001 	sltiu	a0,v1,1
  roundIncrement = 0x200;
  if (!roundNearestEven)
 4ac:	10800092 	beqz	a0,6f8 <float64_mul+0x3cc>
 4b0:	24050001 	addiu	a1,zero,1
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
  roundNearestEven = (roundingMode == float_round_nearest_even);
  roundIncrement = 0x200;
 4b4:	24030200 	addiu	v1,zero,512
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
 4b8:	3225ffff 	andi	a1,s1,0xffff
 4bc:	2ca507fd 	sltiu	a1,a1,2045
 4c0:	14a00009 	bnez	a1,4e8 <float64_mul+0x1bc>
 4c4:	00664021 	addu	t0,v1,a2
    {
      if ((0x7FD < zExp)
 4c8:	2a2507fe 	slti	a1,s1,2046
 4cc:	10a000c3 	beqz	a1,7dc <float64_mul+0x4b0>
 4d0:	00000000 	sll	zero,zero,0x0
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 4d4:	240507fd 	addiu	a1,zero,2045
 4d8:	122500bc 	beq	s1,a1,7cc <float64_mul+0x4a0>
 4dc:	0103482b 	sltu	t1,t0,v1
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
	}
      if (zExp < 0)
 4e0:	062000cf 	bltz	s1,820 <float64_mul+0x4f4>
 4e4:	00112823 	negu	a1,s1
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 4e8:	0103482b 	sltu	t1,t0,v1
 4ec:	000357c3 	sra	t2,v1,0x1f
 4f0:	01224821 	addu	t1,t1,v0
 4f4:	01003821 	addu	a3,t0,zero
	      if (roundingMode == float_round_down)
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
 4f8:	30c503ff 	andi	a1,a2,0x3ff
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
 4fc:	10a00098 	beqz	a1,760 <float64_mul+0x434>
 500:	00000000 	sll	zero,zero,0x0
 504:	8f870000 	lw	a3,0(gp)
    float_exception_flags |= float_flag_inexact;
 508:	38a50200 	xori	a1,a1,0x200
 50c:	2ca50001 	sltiu	a1,a1,1
 510:	00a42024 	and	a0,a1,a0
 514:	00041827 	nor	v1,zero,a0
 518:	34e70001 	ori	a3,a3,0x1
 51c:	0106302b 	sltu	a2,t0,a2
 520:	004a1021 	addu	v0,v0,t2
 524:	af870000 	sw	a3,0(gp)
 528:	00602821 	addu	a1,v1,zero
 52c:	000327c3 	sra	a0,v1,0x1f
 530:	00c24821 	addu	t1,a2,v0
 534:	01003821 	addu	a3,t0,zero
  zSig = (zSig + roundIncrement) >> 10;
 538:	00091580 	sll	v0,t1,0x16
 53c:	00073a82 	srl	a3,a3,0xa
 540:	00473825 	or	a3,v0,a3
 544:	00094a82 	srl	t1,t1,0xa
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 548:	01244824 	and	t1,t1,a0
 54c:	00e53824 	and	a3,a3,a1
  if (zSig == 0)
 550:	01271025 	or	v0,t1,a3
 554:	10400080 	beqz	v0,758 <float64_mul+0x42c>
 558:	00001821 	addu	v1,zero,zero
 55c:	00111500 	sll	v0,s1,0x14

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 560:	001087c0 	sll	s0,s0,0x1f
 564:	00e34021 	addu	t0,a3,v1
 568:	01304821 	addu	t1,t1,s0
 56c:	0107382b 	sltu	a3,t0,a3
 570:	01221021 	addu	v0,t1,v0
 574:	00e21021 	addu	v0,a3,v0
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 578:	8fbf0034 	lw	ra,52(sp)

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 57c:	00402021 	addu	a0,v0,zero
 580:	01002821 	addu	a1,t0,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 584:	00801021 	addu	v0,a0,zero
 588:	00a01821 	addu	v1,a1,zero
 58c:	8fb10030 	lw	s1,48(sp)
 590:	8fb0002c 	lw	s0,44(sp)
 594:	03e00008 	jr	ra
 598:	27bd0038 	addiu	sp,sp,56
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (aExp == 0)
    {
      if (aSig == 0)
 59c:	01c51825 	or	v1,t6,a1
 5a0:	10600021 	beqz	v1,628 <float64_mul+0x2fc>
 5a4:	00000000 	sll	zero,zero,0x0
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 5a8:	11c00086 	beqz	t6,7c4 <float64_mul+0x498>
 5ac:	00a01821 	addu	v1,a1,zero
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
 5b0:	01c01821 	addu	v1,t6,zero
 5b4:	2409fff5 	addiu	t1,zero,-11
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
 5b8:	3c040001 	lui	a0,0x1
 5bc:	0064202b 	sltu	a0,v1,a0
 5c0:	10800003 	beqz	a0,5d0 <float64_mul+0x2a4>
 5c4:	00002021 	addu	a0,zero,zero
    {
      shiftCount += 16;
      a <<= 16;
 5c8:	00031c00 	sll	v1,v1,0x10
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
 5cc:	24040010 	addiu	a0,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
 5d0:	3c050100 	lui	a1,0x100
 5d4:	0065282b 	sltu	a1,v1,a1
 5d8:	10a00003 	beqz	a1,5e8 <float64_mul+0x2bc>
 5dc:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
 5e0:	24840008 	addiu	a0,a0,8
      a <<= 8;
 5e4:	00031a00 	sll	v1,v1,0x8
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
 5e8:	00031e02 	srl	v1,v1,0x18
 5ec:	3c050000 	lui	a1,0x0
 5f0:	00031880 	sll	v1,v1,0x2
 5f4:	24a501e0 	addiu	a1,a1,480
 5f8:	00651821 	addu	v1,v1,a1
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
 5fc:	8c630000 	lw	v1,0(v1)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
 600:	00894821 	addu	t1,a0,t1
 604:	01234821 	addu	t1,t1,v1
  *zSigPtr = aSig << shiftCount;
 608:	31230020 	andi	v1,t1,0x20
 60c:	10600064 	beqz	v1,7a0 <float64_mul+0x474>
 610:	00000000 	sll	zero,zero,0x0
  *zExpPtr = 1 - shiftCount;
 614:	24030001 	addiu	v1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 618:	012b7004 	sllv	t6,t3,t1
 61c:	00007821 	addu	t7,zero,zero
  *zExpPtr = 1 - shiftCount;
 620:	080000e5 	j	394 <float64_mul+0x68>
 624:	00694823 	subu	t1,v1,t1
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  if (bExp == 0)
    {
      if (bSig == 0)
	return packFloat64 (zSign, 0, 0);
 628:	001087c0 	sll	s0,s0,0x1f
 62c:	02002021 	addu	a0,s0,zero
 630:	00002821 	addu	a1,zero,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 634:	8fbf0034 	lw	ra,52(sp)
 638:	00801021 	addu	v0,a0,zero
 63c:	00a01821 	addu	v1,a1,zero
 640:	8fb10030 	lw	s1,48(sp)
 644:	8fb0002c 	lw	s0,44(sp)
 648:	03e00008 	jr	ra
 64c:	27bd0038 	addiu	sp,sp,56
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    {
      if (aSig || ((bExp == 0x7FF) && bSig))
 650:	01c57025 	or	t6,t6,a1
 654:	15c00035 	bnez	t6,72c <float64_mul+0x400>
 658:	01002021 	addu	a0,t0,zero
 65c:	1229002f 	beq	s1,t1,71c <float64_mul+0x3f0>
 660:	001117c3 	sra	v0,s1,0x1f
	return propagateFloat64NaN (a, b);
      if ((bExp | bSig) == 0)
 664:	004c6025 	or	t4,v0,t4
 668:	02278825 	or	s1,s1,a3
 66c:	01916025 	or	t4,t4,s1
 670:	15800016 	bnez	t4,6cc <float64_mul+0x3a0>
 674:	001087c0 	sll	s0,s0,0x1f
 678:	8f820000 	lw	v0,0(gp)
      if (bSig)
	return propagateFloat64NaN (a, b);
      if ((aExp | aSig) == 0)
	{
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
 67c:	3c047fff 	lui	a0,0x7fff
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 680:	8fbf0034 	lw	ra,52(sp)
 684:	34420010 	ori	v0,v0,0x10
      if (bSig)
	return propagateFloat64NaN (a, b);
      if ((aExp | aSig) == 0)
	{
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
 688:	2405ffff 	addiu	a1,zero,-1
 68c:	3484ffff 	ori	a0,a0,0xffff
 690:	af820000 	sw	v0,0(gp)
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 694:	00a01821 	addu	v1,a1,zero
 698:	00801021 	addu	v0,a0,zero
 69c:	8fb10030 	lw	s1,48(sp)
 6a0:	8fb0002c 	lw	s0,44(sp)
 6a4:	03e00008 	jr	ra
 6a8:	27bd0038 	addiu	sp,sp,56
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
 6ac:	01876025 	or	t4,t4,a3
 6b0:	15800056 	bnez	t4,80c <float64_mul+0x4e0>
 6b4:	000917c3 	sra	v0,t1,0x1f
	return propagateFloat64NaN (a, b);
      if ((aExp | aSig) == 0)
 6b8:	004e7025 	or	t6,v0,t6
 6bc:	01254825 	or	t1,t1,a1
 6c0:	01c94825 	or	t1,t6,t1
 6c4:	1120ffec 	beqz	t1,678 <float64_mul+0x34c>
 6c8:	001087c0 	sll	s0,s0,0x1f

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 6cc:	3c027ff0 	lui	v0,0x7ff0
      if ((aExp | aSig) == 0)
	{
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
 6d0:	02021021 	addu	v0,s0,v0
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 6d4:	8fbf0034 	lw	ra,52(sp)
      if ((aExp | aSig) == 0)
	{
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
 6d8:	00402021 	addu	a0,v0,zero
 6dc:	00002821 	addu	a1,zero,zero
      zSig0 <<= 1;
      --zExp;
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);

}
 6e0:	00801021 	addu	v0,a0,zero
 6e4:	00a01821 	addu	v1,a1,zero
 6e8:	8fb10030 	lw	s1,48(sp)
 6ec:	8fb0002c 	lw	s0,44(sp)
 6f0:	03e00008 	jr	ra
 6f4:	27bd0038 	addiu	sp,sp,56
  roundingMode = float_rounding_mode;
  roundNearestEven = (roundingMode == float_round_nearest_even);
  roundIncrement = 0x200;
  if (!roundNearestEven)
    {
      if (roundingMode == float_round_to_zero)
 6f8:	10650015 	beq	v1,a1,750 <float64_mul+0x424>
 6fc:	00000000 	sll	zero,zero,0x0
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
 700:	12000011 	beqz	s0,748 <float64_mul+0x41c>
 704:	24050003 	addiu	a1,zero,3
	    {
	      if (roundingMode == float_round_up)
 708:	24050002 	addiu	a1,zero,2
 70c:	10650010 	beq	v1,a1,750 <float64_mul+0x424>
 710:	00000000 	sll	zero,zero,0x0
	{
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
 714:	0800012e 	j	4b8 <float64_mul+0x18c>
 718:	240303ff 	addiu	v1,zero,1023
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    {
      if (aSig || ((bExp == 0x7FF) && bSig))
 71c:	01876025 	or	t4,t4,a3
 720:	1180ffea 	beqz	t4,6cc <float64_mul+0x3a0>
 724:	001087c0 	sll	s0,s0,0x1f
	return propagateFloat64NaN (a, b);
 728:	01002021 	addu	a0,t0,zero
 72c:	01602821 	addu	a1,t3,zero
 730:	00603021 	addu	a2,v1,zero
 734:	0c000000 	jal	0 <propagateFloat64NaN>
 738:	01403821 	addu	a3,t2,zero
 73c:	00602821 	addu	a1,v1,zero
 740:	0800018d 	j	634 <float64_mul+0x308>
 744:	00402021 	addu	a0,v0,zero
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
 748:	1465fff2 	bne	v1,a1,714 <float64_mul+0x3e8>
 74c:	00000000 	sll	zero,zero,0x0
		roundIncrement = 0;
 750:	0800012e 	j	4b8 <float64_mul+0x18c>
 754:	00001821 	addu	v1,zero,zero
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
 758:	08000158 	j	560 <float64_mul+0x234>
 75c:	00001021 	addu	v0,zero,zero
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
 760:	2405ffff 	addiu	a1,zero,-1
 764:	0800014e 	j	538 <float64_mul+0x20c>
 768:	2404ffff 	addiu	a0,zero,-1
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 76c:	080000ee 	j	3b8 <float64_mul+0x8c>
 770:	24110015 	addiu	s1,zero,21
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 774:	00111027 	nor	v0,zero,s1
 778:	00431006 	srlv	v0,v1,v0
 77c:	022c6004 	sllv	t4,t4,s1
 780:	004c6025 	or	t4,v0,t4
 784:	022a1004 	sllv	v0,t2,s1
  *zExpPtr = 1 - shiftCount;
 788:	240a0001 	addiu	t2,zero,1
 78c:	08000109 	j	424 <float64_mul+0xf8>
 790:	01518823 	subu	s1,t2,s1
  zExp = aExp + bExp - 0x3FF;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
  zSig0 |= (zSig1 != 0);
  if (0 <= (sbits64) (zSig0 << 1))
 794:	00801021 	addu	v0,a0,zero
 798:	08000128 	j	4a0 <float64_mul+0x174>
 79c:	00603021 	addu	a2,v1,zero
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 7a0:	00091827 	nor	v1,zero,t1
 7a4:	000b2042 	srl	a0,t3,0x1
 7a8:	00641806 	srlv	v1,a0,v1
 7ac:	012e7004 	sllv	t6,t6,t1
 7b0:	006e7025 	or	t6,v1,t6
  *zExpPtr = 1 - shiftCount;
 7b4:	24030001 	addiu	v1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 7b8:	012b7804 	sllv	t7,t3,t1
  *zExpPtr = 1 - shiftCount;
 7bc:	080000e5 	j	394 <float64_mul+0x68>
 7c0:	00694823 	subu	t1,v1,t1
 7c4:	0800016e 	j	5b8 <float64_mul+0x28c>
 7c8:	24090015 	addiu	t1,zero,21
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 7cc:	01224821 	addu	t1,t1,v0
 7d0:	000357c3 	sra	t2,v1,0x1f
 7d4:	0521ff48 	bgez	t1,4f8 <float64_mul+0x1cc>
 7d8:	01003821 	addu	a3,t0,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 7dc:	001087c0 	sll	s0,s0,0x1f
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 7e0:	2c630001 	sltiu	v1,v1,1

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 7e4:	3c027ff0 	lui	v0,0x7ff0
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 7e8:	00033023 	negu	a2,v1

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 7ec:	02021021 	addu	v0,s0,v0
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 7f0:	00461021 	addu	v0,v0,a2
 7f4:	00402021 	addu	a0,v0,zero
 7f8:	8f820000 	lw	v0,0(gp)
 7fc:	00c02821 	addu	a1,a2,zero
 800:	34420009 	ori	v0,v0,0x9
 804:	0800018d 	j	634 <float64_mul+0x308>
 808:	af820000 	sw	v0,0(gp)
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
 80c:	0c000000 	jal	0 <propagateFloat64NaN>
 810:	00000000 	sll	zero,zero,0x0
 814:	00602821 	addu	a1,v1,zero
 818:	0800018d 	j	634 <float64_mul+0x308>
 81c:	00402021 	addu	a0,v0,zero

  if (count == 0)
    {
      z = a;
    }
  else if (count < 64)
 820:	28a70040 	slti	a3,a1,64
 824:	10e0001d 	beqz	a3,89c <float64_mul+0x570>
 828:	30a70020 	andi	a3,a1,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 82c:	10e00026 	beqz	a3,8c8 <float64_mul+0x59c>
 830:	00053827 	nor	a3,zero,a1
 834:	00a23806 	srlv	a3,v0,a1
 838:	00002821 	addu	a1,zero,zero
 83c:	32280020 	andi	t0,s1,0x20
 840:	1100001a 	beqz	t0,8ac <float64_mul+0x580>
 844:	3231003f 	andi	s1,s1,0x3f
 848:	02261004 	sllv	v0,a2,s1
 84c:	00003021 	addu	a2,zero,zero
 850:	00463025 	or	a2,v0,a2
 854:	0006302b 	sltu	a2,zero,a2
 858:	00a01021 	addu	v0,a1,zero
 85c:	00c73025 	or	a2,a2,a3
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
	  roundBits = zSig & 0x3FF;
 860:	30c503ff 	andi	a1,a2,0x3ff
	  if (isTiny && roundBits)
 864:	14a00008 	bnez	a1,888 <float64_mul+0x55c>
 868:	000357c3 	sra	t2,v1,0x1f
 86c:	00c33821 	addu	a3,a2,v1
 870:	00e6302b 	sltu	a2,a3,a2
 874:	00c24821 	addu	t1,a2,v0
 878:	2405ffff 	addiu	a1,zero,-1
 87c:	2404ffff 	addiu	a0,zero,-1
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 880:	0800014e 	j	538 <float64_mul+0x20c>
 884:	00008821 	addu	s1,zero,zero
 888:	8f870000 	lw	a3,0(gp)
 88c:	00008821 	addu	s1,zero,zero
 890:	34e70004 	ori	a3,a3,0x4
 894:	08000142 	j	508 <float64_mul+0x1dc>
 898:	00664021 	addu	t0,v1,a2
    }
  else
    {
      z = (a != 0);
 89c:	00463025 	or	a2,v0,a2
 8a0:	0006302b 	sltu	a2,zero,a2
 8a4:	08000218 	j	860 <float64_mul+0x534>
 8a8:	00001021 	addu	v0,zero,zero
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 8ac:	00064842 	srl	t1,a2,0x1
 8b0:	00114027 	nor	t0,zero,s1
 8b4:	01094006 	srlv	t0,t1,t0
 8b8:	02221004 	sllv	v0,v0,s1
 8bc:	01021025 	or	v0,t0,v0
 8c0:	08000214 	j	850 <float64_mul+0x524>
 8c4:	02263004 	sllv	a2,a2,s1
 8c8:	00024040 	sll	t0,v0,0x1
 8cc:	00e84004 	sllv	t0,t0,a3
 8d0:	00a63806 	srlv	a3,a2,a1
 8d4:	01073825 	or	a3,t0,a3
 8d8:	0800020f 	j	83c <float64_mul+0x510>
 8dc:	00a22806 	srlv	a1,v0,a1

000008e0 <ullong_to_double>:
    unsigned long long ll;
  } t;

  t.ll = x;
  return t.d;
}
 8e0:	44850000 	mtc1	a1,$f0
 8e4:	00000000 	sll	zero,zero,0x0
 8e8:	44840800 	mtc1	a0,$f1
 8ec:	03e00008 	jr	ra
 8f0:	00000000 	sll	zero,zero,0x0

000008f4 <main>:
  0x0000000000000000ULL		/* 0.0 */
};

int
main ()
{
 8f4:	27bdffa8 	addiu	sp,sp,-88
 8f8:	afbe0050 	sw	s8,80(sp)
 8fc:	afb7004c 	sw	s7,76(sp)
 900:	afb60048 	sw	s6,72(sp)
 904:	3c170000 	lui	s7,0x0
 908:	3c160000 	lui	s6,0x0
 90c:	3c1e0000 	lui	s8,0x0
 910:	afb50044 	sw	s5,68(sp)
 914:	afb40040 	sw	s4,64(sp)
 918:	afbf0054 	sw	ra,84(sp)
 91c:	afb3003c 	sw	s3,60(sp)
 920:	afb20038 	sw	s2,56(sp)
 924:	afb10034 	sw	s1,52(sp)
 928:	afb00030 	sw	s0,48(sp)
 92c:	0000a021 	addu	s4,zero,zero
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
 930:	0000a821 	addu	s5,zero,zero
 934:	26f70000 	addiu	s7,s7,0
 938:	26d60000 	addiu	s6,s6,0
 93c:	27de0000 	addiu	s8,s8,0
  0xBFE0000000000000ULL,	/* -0.5 */
  0x0000000000000000ULL		/* 0.0 */
};

int
main ()
 940:	02f41821 	addu	v1,s7,s4
 944:	02d41021 	addu	v0,s6,s4
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
 948:	8c710004 	lw	s1,4(v1)
 94c:	8c700000 	lw	s0,0(v1)
	  x2 = b_input[i];
 950:	8c530004 	lw	s3,4(v0)
 954:	8c520000 	lw	s2,0(v0)
	  result = float64_mul (x1, x2);
 958:	02202821 	addu	a1,s1,zero
 95c:	02002021 	addu	a0,s0,zero
 960:	02603821 	addu	a3,s3,zero
 964:	0c000000 	jal	0 <propagateFloat64NaN>
 968:	02403021 	addu	a2,s2,zero
  0xBFE0000000000000ULL,	/* -0.5 */
  0x0000000000000000ULL		/* 0.0 */
};

int
main ()
 96c:	03d42021 	addu	a0,s8,s4
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_mul (x1, x2);
	  main_result += (result != z_output[i]);
 970:	8c880000 	lw	t0,0(a0)
 974:	8c850004 	lw	a1,4(a0)
 978:	01024826 	xor	t1,t0,v0
 97c:	00a32026 	xor	a0,a1,v1
 980:	01244825 	or	t1,t1,a0

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 984:	3c040000 	lui	a0,0x0
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_mul (x1, x2);
	  main_result += (result != z_output[i]);
 988:	0009482b 	sltu	t1,zero,t1

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 98c:	24840000 	addiu	a0,a0,0
 990:	02203821 	addu	a3,s1,zero
 994:	02003021 	addu	a2,s0,zero
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_mul (x1, x2);
	  main_result += (result != z_output[i]);
 998:	02a9a821 	addu	s5,s5,t1

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 99c:	afb30014 	sw	s3,20(sp)
 9a0:	afb20010 	sw	s2,16(sp)
 9a4:	afa80018 	sw	t0,24(sp)
 9a8:	afa5001c 	sw	a1,28(sp)
 9ac:	afa30024 	sw	v1,36(sp)
 9b0:	afa20020 	sw	v0,32(sp)
 9b4:	afa3002c 	sw	v1,44(sp)
 9b8:	afa20028 	sw	v0,40(sp)
 9bc:	0c000000 	jal	0 <propagateFloat64NaN>
 9c0:	26940008 	addiu	s4,s4,8
{
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
 9c4:	240200a0 	addiu	v0,zero,160
 9c8:	1682ffde 	bne	s4,v0,944 <main+0x50>
 9cc:	02f41821 	addu	v1,s7,s4
	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     a_input[i], b_input[i], z_output[i], result,
	     ullong_to_double (result));
	}
      printf ("%d\n", main_result);
 9d0:	3c040000 	lui	a0,0x0
 9d4:	02a02821 	addu	a1,s5,zero
 9d8:	0c000000 	jal	0 <propagateFloat64NaN>
 9dc:	24840000 	addiu	a0,a0,0
      return main_result;
    }
 9e0:	8fbf0054 	lw	ra,84(sp)
 9e4:	02a01021 	addu	v0,s5,zero
 9e8:	8fbe0050 	lw	s8,80(sp)
 9ec:	8fb7004c 	lw	s7,76(sp)
 9f0:	8fb60048 	lw	s6,72(sp)
 9f4:	8fb50044 	lw	s5,68(sp)
 9f8:	8fb40040 	lw	s4,64(sp)
 9fc:	8fb3003c 	lw	s3,60(sp)
 a00:	8fb20038 	lw	s2,56(sp)
 a04:	8fb10034 	lw	s1,52(sp)
 a08:	8fb00030 	lw	s0,48(sp)
 a0c:	03e00008 	jr	ra
 a10:	27bd0058 	addiu	sp,sp,88

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
