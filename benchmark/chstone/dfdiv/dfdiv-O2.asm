
dfdiv.o:     file format elf32-bigmips


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

00000188 <add128>:
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
 188:	8fa2001c 	lw	v0,28(sp)
  bits64 z1;

  z1 = a1 + b1;
 18c:	8fa80018 	lw	t0,24(sp)
 190:	00474821 	addu	t1,v0,a3
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
 194:	8faa0014 	lw	t2,20(sp)
  bits64 z1;

  z1 = a1 + b1;
 198:	0122102b 	sltu	v0,t1,v0
 19c:	01064021 	addu	t0,t0,a2
 1a0:	00484021 	addu	t0,v0,t0
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
 1a4:	8fa20010 	lw	v0,16(sp)
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
 1a8:	8fa30024 	lw	v1,36(sp)
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
 1ac:	01452821 	addu	a1,t2,a1
 1b0:	00442021 	addu	a0,v0,a0
 1b4:	00aa502b 	sltu	t2,a1,t2
 1b8:	0106602b 	sltu	t4,t0,a2
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
 1bc:	8fab0020 	lw	t3,32(sp)
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
 1c0:	01442021 	addu	a0,t2,a0
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
 1c4:	ac680000 	sw	t0,0(v1)
 1c8:	ac690004 	sw	t1,4(v1)
  *z0Ptr = a0 + b0 + (z1 < a1);
 1cc:	00001021 	addu	v0,zero,zero
 1d0:	15800005 	bnez	t4,1e8 <add128+0x60>
 1d4:	24030001 	addiu	v1,zero,1
 1d8:	10c8000a 	beq	a2,t0,204 <add128+0x7c>
 1dc:	00000000 	sll	zero,zero,0x0
 1e0:	00001821 	addu	v1,zero,zero
 1e4:	00001021 	addu	v0,zero,zero
 1e8:	00a33021 	addu	a2,a1,v1
 1ec:	00c5282b 	sltu	a1,a2,a1
 1f0:	00821021 	addu	v0,a0,v0
 1f4:	00a21021 	addu	v0,a1,v0
 1f8:	ad620000 	sw	v0,0(t3)

}
 1fc:	03e00008 	jr	ra
 200:	ad660004 	sw	a2,4(t3)
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
 204:	0127382b 	sltu	a3,t1,a3
 208:	14e0fff8 	bnez	a3,1ec <add128+0x64>
 20c:	00a33021 	addu	a2,a1,v1
 210:	08000079 	j	1e4 <add128+0x5c>
 214:	00001821 	addu	v1,zero,zero

00000218 <sub128>:
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
 218:	8fa8001c 	lw	t0,28(sp)
 21c:	8fa90018 	lw	t1,24(sp)

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
 220:	8faa0014 	lw	t2,20(sp)
 224:	8fa20010 	lw	v0,16(sp)
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
 228:	00e85823 	subu	t3,a3,t0
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
 22c:	8fa30024 	lw	v1,36(sp)

  *z1Ptr = a1 - b1;
 230:	00c96823 	subu	t5,a2,t1
 234:	00eb602b 	sltu	t4,a3,t3
  *z0Ptr = a0 - b0 - (a1 < b1);
 238:	00aa5023 	subu	t2,a1,t2
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
 23c:	01ac6023 	subu	t4,t5,t4
  *z0Ptr = a0 - b0 - (a1 < b1);
 240:	00822023 	subu	a0,a0,v0
 244:	00aa282b 	sltu	a1,a1,t2
 248:	00c9702b 	sltu	t6,a2,t1
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
 24c:	8fad0020 	lw	t5,32(sp)

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
 250:	00852023 	subu	a0,a0,a1
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
 254:	ac6c0000 	sw	t4,0(v1)
 258:	ac6b0004 	sw	t3,4(v1)
  *z0Ptr = a0 - b0 - (a1 < b1);
 25c:	00001021 	addu	v0,zero,zero
 260:	15c00005 	bnez	t6,278 <sub128+0x60>
 264:	24030001 	addiu	v1,zero,1
 268:	1126000a 	beq	t1,a2,294 <sub128+0x7c>
 26c:	00000000 	sll	zero,zero,0x0
 270:	00001821 	addu	v1,zero,zero
 274:	00001021 	addu	v0,zero,zero
 278:	01432823 	subu	a1,t2,v1
 27c:	0145502b 	sltu	t2,t2,a1
 280:	00821023 	subu	v0,a0,v0
 284:	004a1023 	subu	v0,v0,t2
 288:	ada20000 	sw	v0,0(t5)

}
 28c:	03e00008 	jr	ra
 290:	ada50004 	sw	a1,4(t5)
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
 294:	00e8402b 	sltu	t0,a3,t0
 298:	1500fff8 	bnez	t0,27c <sub128+0x64>
 29c:	01432823 	subu	a1,t2,v1
 2a0:	0800009d 	j	274 <sub128+0x5c>
 2a4:	00001821 	addu	v1,zero,zero

000002a8 <mul64To128>:
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
 2a8:	00c50019 	multu	a2,a1
| `z0Ptr' and `z1Ptr'.
*----------------------------------------------------------------------------*/

INLINE void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
 2ac:	8fad0010 	lw	t5,16(sp)
 2b0:	8fae0014 	lw	t6,20(sp)
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
 2b4:	00004812 	mflo	t1
 2b8:	00004010 	mfhi	t0
	...
  zMiddleB = ((bits64) aHigh) * bLow;
 2c4:	00870019 	multu	a0,a3
 2c8:	00001010 	mfhi	v0
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
 2cc:	01024021 	addu	t0,t0,v0
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
 2d0:	00001812 	mflo	v1
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
 2d4:	01236021 	addu	t4,t1,v1
 2d8:	00000000 	sll	zero,zero,0x0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
 2dc:	00e50019 	multu	a3,a1
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
 2e0:	0189282b 	sltu	a1,t4,t1
 2e4:	00a84021 	addu	t0,a1,t0
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 2e8:	0102382b 	sltu	a3,t0,v0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
 2ec:	00005812 	mflo	t3
 2f0:	00005010 	mfhi	t2
	...
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
 2fc:	00c40019 	multu	a2,a0
 300:	00002812 	mflo	a1
 304:	00002010 	mfhi	a0
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 308:	14e00004 	bnez	a3,31c <mul64To128+0x74>
 30c:	24060001 	addiu	a2,zero,1
 310:	11020017 	beq	t0,v0,370 <mul64To128+0xc8>
 314:	0183102b 	sltu	v0,t4,v1
 318:	00003021 	addu	a2,zero,zero
  zMiddleA <<= 32;
  z1 += zMiddleA;
 31c:	018a7821 	addu	t7,t4,t2
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 320:	01054821 	addu	t1,t0,a1
 324:	0128402b 	sltu	t0,t1,t0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 328:	01ec602b 	sltu	t4,t7,t4
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
 32c:	01605021 	addu	t2,t3,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 330:	01042021 	addu	a0,t0,a0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 334:	24030001 	addiu	v1,zero,1
 338:	15800003 	bnez	t4,348 <mul64To128+0xa0>
 33c:	00001021 	addu	v0,zero,zero
 340:	00001821 	addu	v1,zero,zero
 344:	00001021 	addu	v0,zero,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 348:	01232821 	addu	a1,t1,v1
 34c:	00a9482b 	sltu	t1,a1,t1
 350:	00821021 	addu	v0,a0,v0
 354:	01221021 	addu	v0,t1,v0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
 358:	00463021 	addu	a2,v0,a2
  *z1Ptr = z1;
 35c:	adcf0000 	sw	t7,0(t6)
 360:	adca0004 	sw	t2,4(t6)
  *z0Ptr = z0;
 364:	ada60000 	sw	a2,0(t5)

}
 368:	03e00008 	jr	ra
 36c:	ada50004 	sw	a1,4(t5)
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
 370:	1040ffe9 	beqz	v0,318 <mul64To128+0x70>
 374:	24060001 	addiu	a2,zero,1
  zMiddleA <<= 32;
  z1 += zMiddleA;
 378:	080000c8 	j	320 <mul64To128+0x78>
 37c:	018a7821 	addu	t7,t4,t2

00000380 <float_raise>:
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 380:	8f820000 	lw	v0,0(gp)
 384:	00000000 	sll	zero,zero,0x0
 388:	00441025 	or	v0,v0,a0

}
 38c:	03e00008 	jr	ra
 390:	af820000 	sw	v0,0(gp)

00000394 <float64_is_nan>:

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 394:	000517c2 	srl	v0,a1,0x1f
 398:	00042040 	sll	a0,a0,0x1
 39c:	3c03ffe0 	lui	v1,0xffe0
 3a0:	00442025 	or	a0,v0,a0
 3a4:	24660001 	addiu	a2,v1,1
 3a8:	0086302b 	sltu	a2,a0,a2
 3ac:	00052840 	sll	a1,a1,0x1
 3b0:	10c00007 	beqz	a2,3d0 <float64_is_nan+0x3c>
 3b4:	24020001 	addiu	v0,zero,1
 3b8:	10830003 	beq	a0,v1,3c8 <float64_is_nan+0x34>
 3bc:	00000000 	sll	zero,zero,0x0

}
 3c0:	03e00008 	jr	ra
 3c4:	00001021 	addu	v0,zero,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
 3c8:	10a0fffd 	beqz	a1,3c0 <float64_is_nan+0x2c>
 3cc:	00000000 	sll	zero,zero,0x0

}
 3d0:	03e00008 	jr	ra
 3d4:	00000000 	sll	zero,zero,0x0

000003d8 <float64_is_signaling_nan>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 3d8:	000414c2 	srl	v0,a0,0x13
 3dc:	30420fff 	andi	v0,v0,0xfff
 3e0:	24030ffe 	addiu	v1,zero,4094
 3e4:	10430003 	beq	v0,v1,3f4 <float64_is_signaling_nan+0x1c>
 3e8:	00000000 	sll	zero,zero,0x0

}
 3ec:	03e00008 	jr	ra
 3f0:	00001021 	addu	v0,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
 3f4:	3c020007 	lui	v0,0x7
 3f8:	3442ffff 	ori	v0,v0,0xffff
 3fc:	00821024 	and	v0,a0,v0
 400:	00451025 	or	v0,v0,a1
 404:	03e00008 	jr	ra
 408:	0002102b 	sltu	v0,zero,v0

0000040c <extractFloat64Frac>:
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);

}
 40c:	3c02000f 	lui	v0,0xf
 410:	3442ffff 	ori	v0,v0,0xffff
 414:	00821024 	and	v0,a0,v0
 418:	03e00008 	jr	ra
 41c:	00a01821 	addu	v1,a1,zero

00000420 <extractFloat64Exp>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 420:	00041502 	srl	v0,a0,0x14

}
 424:	03e00008 	jr	ra
 428:	304207ff 	andi	v0,v0,0x7ff

0000042c <extractFloat64Sign>:
extractFloat64Sign (float64 a)
{

  return a >> 63;

}
 42c:	03e00008 	jr	ra
 430:	000417c2 	srl	v0,a0,0x1f

00000434 <packFloat64>:

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 434:	000427c0 	sll	a0,a0,0x1f
 438:	00c42021 	addu	a0,a2,a0
 43c:	00051500 	sll	v0,a1,0x14

}
 440:	00821021 	addu	v0,a0,v0
 444:	03e00008 	jr	ra
 448:	00e01821 	addu	v1,a3,zero

0000044c <float64_div>:
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
 44c:	27bdff98 	addiu	sp,sp,-104
 450:	afb20048 	sw	s2,72(sp)

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 454:	00041d02 	srl	v1,a0,0x14

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 458:	3c12000f 	lui	s2,0xf
 45c:	3652ffff 	ori	s2,s2,0xffff
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
 460:	afb60058 	sw	s6,88(sp)
 464:	afb50054 	sw	s5,84(sp)

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 468:	0006b502 	srl	s6,a2,0x14

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
 46c:	0086a826 	xor	s5,a0,a2

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 470:	306307ff 	andi	v1,v1,0x7ff
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
 474:	240a07ff 	addiu	t2,zero,2047
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
 478:	afbe0060 	sw	s8,96(sp)
 47c:	afb40050 	sw	s4,80(sp)
 480:	afbf0064 	sw	ra,100(sp)
 484:	afb7005c 	sw	s7,92(sp)
 488:	afb3004c 	sw	s3,76(sp)
 48c:	afb10044 	sw	s1,68(sp)
 490:	afb00040 	sw	s0,64(sp)
 494:	00a04021 	addu	t0,a1,zero
 498:	00e04821 	addu	t1,a3,zero

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
 49c:	0092f024 	and	s8,a0,s2
 4a0:	00a05821 	addu	t3,a1,zero
 4a4:	00d21024 	and	v0,a2,s2
 4a8:	00e0a021 	addu	s4,a3,zero

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
 4ac:	32d607ff 	andi	s6,s6,0x7ff
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
 4b0:	106a00dd 	beq	v1,t2,828 <float64_div+0x3dc>
 4b4:	0015afc2 	srl	s5,s5,0x1f
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
 4b8:	12ca00e5 	beq	s6,t2,850 <float64_div+0x404>
 4bc:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
      return packFloat64 (zSign, 0, 0);
    }
  if (bExp == 0)
 4c0:	16c00022 	bnez	s6,54c <float64_div+0x100>
 4c4:	00472025 	or	a0,v0,a3
    {
      if (bSig == 0)
 4c8:	10800140 	beqz	a0,9cc <float64_div+0x580>
 4cc:	00000000 	sll	zero,zero,0x0
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 4d0:	10400192 	beqz	v0,b1c <float64_div+0x6d0>
 4d4:	00e02021 	addu	a0,a3,zero
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
 4d8:	00402021 	addu	a0,v0,zero
 4dc:	2416fff5 	addiu	s6,zero,-11
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
 4e0:	3c050001 	lui	a1,0x1
 4e4:	0085282b 	sltu	a1,a0,a1
 4e8:	10a00003 	beqz	a1,4f8 <float64_div+0xac>
 4ec:	00002821 	addu	a1,zero,zero
    {
      shiftCount += 16;
      a <<= 16;
 4f0:	00042400 	sll	a0,a0,0x10
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
 4f4:	24050010 	addiu	a1,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
 4f8:	3c060100 	lui	a2,0x100
 4fc:	0086302b 	sltu	a2,a0,a2
 500:	10c00003 	beqz	a2,510 <float64_div+0xc4>
 504:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
 508:	24a50008 	addiu	a1,a1,8
      a <<= 8;
 50c:	00042200 	sll	a0,a0,0x8
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
 510:	00042602 	srl	a0,a0,0x18
 514:	3c060000 	lui	a2,0x0
 518:	00042080 	sll	a0,a0,0x2
 51c:	24c60210 	addiu	a2,a2,528
 520:	00862021 	addu	a0,a0,a2
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
 524:	8c840000 	lw	a0,0(a0)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
 528:	00b6b021 	addu	s6,a1,s6
 52c:	02c4b021 	addu	s6,s6,a0
  *zSigPtr = aSig << shiftCount;
 530:	32c40020 	andi	a0,s6,0x20
 534:	10800171 	beqz	a0,afc <float64_div+0x6b0>
 538:	00162027 	nor	a0,zero,s6
  *zExpPtr = 1 - shiftCount;
 53c:	24040001 	addiu	a0,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 540:	02c91004 	sllv	v0,t1,s6
 544:	0000a021 	addu	s4,zero,zero
  *zExpPtr = 1 - shiftCount;
 548:	0096b023 	subu	s6,a0,s6
	  float_raise (float_flag_divbyzero);
	  return packFloat64 (zSign, 0x7FF, 0);
	}
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  if (aExp == 0)
 54c:	14600024 	bnez	v1,5e0 <float64_div+0x194>
 550:	3c120010 	lui	s2,0x10
    {
      if (aSig == 0)
 554:	03c81825 	or	v1,s8,t0
 558:	106000c0 	beqz	v1,85c <float64_div+0x410>
 55c:	00000000 	sll	zero,zero,0x0
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 560:	13c00170 	beqz	s8,b24 <float64_div+0x6d8>
 564:	01002021 	addu	a0,t0,zero
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
 568:	03c02021 	addu	a0,s8,zero
 56c:	2403fff5 	addiu	v1,zero,-11
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
 570:	3c050001 	lui	a1,0x1
 574:	0085282b 	sltu	a1,a0,a1
 578:	10a00003 	beqz	a1,588 <float64_div+0x13c>
 57c:	00002821 	addu	a1,zero,zero
    {
      shiftCount += 16;
      a <<= 16;
 580:	00042400 	sll	a0,a0,0x10
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
 584:	24050010 	addiu	a1,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
 588:	3c060100 	lui	a2,0x100
 58c:	0086302b 	sltu	a2,a0,a2
 590:	10c00003 	beqz	a2,5a0 <float64_div+0x154>
 594:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
 598:	24a50008 	addiu	a1,a1,8
      a <<= 8;
 59c:	00042200 	sll	a0,a0,0x8
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
 5a0:	00042602 	srl	a0,a0,0x18
 5a4:	3c060000 	lui	a2,0x0
 5a8:	00042080 	sll	a0,a0,0x2
 5ac:	24c60210 	addiu	a2,a2,528
 5b0:	00862021 	addu	a0,a0,a2
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
 5b4:	8c840000 	lw	a0,0(a0)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
 5b8:	00a31821 	addu	v1,a1,v1
 5bc:	00641821 	addu	v1,v1,a0
  *zSigPtr = aSig << shiftCount;
 5c0:	30640020 	andi	a0,v1,0x20
 5c4:	10800159 	beqz	a0,b2c <float64_div+0x6e0>
 5c8:	00032027 	nor	a0,zero,v1
  *zExpPtr = 1 - shiftCount;
 5cc:	24040001 	addiu	a0,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 5d0:	0068f004 	sllv	s8,t0,v1
 5d4:	00005821 	addu	t3,zero,zero
  *zExpPtr = 1 - shiftCount;
 5d8:	00831823 	subu	v1,a0,v1
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
 5dc:	3c120010 	lui	s2,0x10
 5e0:	03d2f025 	or	s8,s8,s2
 5e4:	000b2582 	srl	a0,t3,0x16
 5e8:	001ef280 	sll	s8,s8,0xa
 5ec:	009ef025 	or	s8,a0,s8
 5f0:	000bba80 	sll	s7,t3,0xa
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
 5f4:	00529025 	or	s2,v0,s2
  if (bSig <= (aSig + aSig))
 5f8:	000b5ac0 	sll	t3,t3,0xb
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
 5fc:	00142d42 	srl	a1,s4,0x15
  if (bSig <= (aSig + aSig))
 600:	0177202b 	sltu	a0,t3,s7
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
 604:	001292c0 	sll	s2,s2,0xb
  if (bSig <= (aSig + aSig))
 608:	001e1040 	sll	v0,s8,0x1
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
 60c:	00b29025 	or	s2,a1,s2
  if (bSig <= (aSig + aSig))
 610:	00821021 	addu	v0,a0,v0
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
 614:	0076b023 	subu	s6,v1,s6
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  if (bSig <= (aSig + aSig))
 618:	0052202b 	sltu	a0,v0,s2
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
 61c:	26d603fd 	addiu	s6,s6,1021
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  if (bSig <= (aSig + aSig))
 620:	14800006 	bnez	a0,63c <float64_div+0x1f0>
 624:	0014a2c0 	sll	s4,s4,0xb
 628:	164200fd 	bne	s2,v0,a20 <float64_div+0x5d4>
 62c:	001e17c0 	sll	v0,s8,0x1f
 630:	0174582b 	sltu	t3,t3,s4
 634:	116000fa 	beqz	t3,a20 <float64_div+0x5d4>
 638:	00000000 	sll	zero,zero,0x0
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
 63c:	03d2102b 	sltu	v0,s8,s2
 640:	10400097 	beqz	v0,8a0 <float64_div+0x454>
 644:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
 648:	1440010c 	bnez	v0,a7c <float64_div+0x630>
 64c:	03c02021 	addu	a0,s8,zero
 650:	00008821 	addu	s1,zero,zero
 654:	2410ffff 	addiu	s0,zero,-1
  mul64To128 (b, z, &term0, &term1);
 658:	27a20028 	addiu	v0,sp,40
 65c:	02402021 	addu	a0,s2,zero
 660:	02802821 	addu	a1,s4,zero
 664:	02203821 	addu	a3,s1,zero
 668:	02003021 	addu	a2,s0,zero
 66c:	afa20010 	sw	v0,16(sp)
 670:	27a20030 	addiu	v0,sp,48
 674:	0c000000 	jal	0 <propagateFloat64NaN>
 678:	afa20014 	sw	v0,20(sp)
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
 67c:	8fa60030 	lw	a2,48(sp)
 680:	8fa50034 	lw	a1,52(sp)
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
 684:	8fa3002c 	lw	v1,44(sp)
 688:	00c52025 	or	a0,a2,a1
 68c:	8fa70028 	lw	a3,40(sp)
 690:	02e31823 	subu	v1,s7,v1
 694:	0004202b 	sltu	a0,zero,a0
 698:	02e3102b 	sltu	v0,s7,v1
 69c:	00642023 	subu	a0,v1,a0
 6a0:	03c73823 	subu	a3,s8,a3
 6a4:	00e23823 	subu	a3,a3,v0
 6a8:	0064182b 	sltu	v1,v1,a0
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
 6ac:	0005282b 	sltu	a1,zero,a1
 6b0:	00063023 	negu	a2,a2
  *z0Ptr = a0 - b0 - (a1 < b1);
 6b4:	00e33823 	subu	a3,a3,v1
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
 6b8:	04e10147 	bgez	a3,bd8 <float64_div+0x78c>
 6bc:	00c52823 	subu	a1,a2,a1
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
 6c0:	02009821 	addu	s3,s0,zero
 6c4:	080001b4 	j	6d0 <float64_div+0x284>
 6c8:	02204021 	addu	t0,s1,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
 6cc:	00c02821 	addu	a1,a2,zero
 6d0:	00b43021 	addu	a2,a1,s4
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
 6d4:	00c5482b 	sltu	t1,a2,a1
 6d8:	24030001 	addiu	v1,zero,1
 6dc:	00001021 	addu	v0,zero,zero
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    {
      z -= LIT64 (0x100000000);
 6e0:	2673ffff 	addiu	s3,s3,-1
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
 6e4:	15200003 	bnez	t1,6f4 <float64_div+0x2a8>
 6e8:	00c02821 	addu	a1,a2,zero
 6ec:	00001821 	addu	v1,zero,zero
 6f0:	00001021 	addu	v0,zero,zero
 6f4:	02434821 	addu	t1,s2,v1
 6f8:	0123502b 	sltu	t2,t1,v1
 6fc:	01421021 	addu	v0,t2,v0
 700:	00894821 	addu	t1,a0,t1
 704:	0124202b 	sltu	a0,t1,a0
 708:	00e23821 	addu	a3,a3,v0
 70c:	00873821 	addu	a3,a0,a3
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
 710:	04e0ffee 	bltz	a3,6cc <float64_div+0x280>
 714:	01202021 	addu	a0,t1,zero
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    }
  rem0 = (rem0 << 32) | (rem1 >> 32);
  z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
 718:	0092102b 	sltu	v0,a0,s2
 71c:	144000de 	bnez	v0,a98 <float64_div+0x64c>
 720:	00000000 	sll	zero,zero,0x0
 724:	2403ffff 	addiu	v1,zero,-1
 728:	00001021 	addu	v0,zero,zero
 72c:	00688825 	or	s1,v1,t0
 730:	00538025 	or	s0,v0,s3
    {
      aSig >>= 1;
      ++zExp;
    }
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
 734:	322201ff 	andi	v0,s1,0x1ff
 738:	2c420003 	sltiu	v0,v0,3
 73c:	104000c8 	beqz	v0,a60 <float64_div+0x614>
 740:	27a20018 	addiu	v0,sp,24
    {
      mul64To128 (bSig, zSig, &term0, &term1);
 744:	02402021 	addu	a0,s2,zero
 748:	02802821 	addu	a1,s4,zero
 74c:	afa20010 	sw	v0,16(sp)
 750:	02203821 	addu	a3,s1,zero
 754:	27a20020 	addiu	v0,sp,32
 758:	02003021 	addu	a2,s0,zero
 75c:	0c000000 	jal	0 <propagateFloat64NaN>
 760:	afa20014 	sw	v0,20(sp)
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
 764:	8fa40020 	lw	a0,32(sp)
 768:	8fa30024 	lw	v1,36(sp)
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
 76c:	8fa2001c 	lw	v0,28(sp)
 770:	00835025 	or	t2,a0,v1
 774:	8fa50018 	lw	a1,24(sp)
 778:	02e21023 	subu	v0,s7,v0
 77c:	000a502b 	sltu	t2,zero,t2
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
 780:	00031823 	negu	v1,v1
  *z0Ptr = a0 - b0 - (a1 < b1);
 784:	02e2b82b 	sltu	s7,s7,v0
 788:	03c5f023 	subu	s8,s8,a1
 78c:	004a5023 	subu	t2,v0,t2
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
 790:	0003282b 	sltu	a1,zero,v1
 794:	00046023 	negu	t4,a0
  *z0Ptr = a0 - b0 - (a1 < b1);
 798:	03d7b823 	subu	s7,s8,s7
 79c:	004a102b 	sltu	v0,v0,t2
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
 7a0:	01856023 	subu	t4,t4,a1
  *z0Ptr = a0 - b0 - (a1 < b1);
 7a4:	02e2b823 	subu	s7,s7,v0
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
 7a8:	01804021 	addu	t0,t4,zero
      while ((sbits64) rem0 < 0)
 7ac:	06e100a8 	bgez	s7,a50 <float64_div+0x604>
 7b0:	00604821 	addu	t1,v1,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
 7b4:	01343821 	addu	a3,t1,s4
	{
	  --zSig;
 7b8:	2624ffff 	addiu	a0,s1,-1
 7bc:	01122821 	addu	a1,t0,s2
 7c0:	00e9302b 	sltu	a2,a3,t1
 7c4:	0091582b 	sltu	t3,a0,s1
 7c8:	00c53021 	addu	a2,a2,a1
 7cc:	2610ffff 	addiu	s0,s0,-1
 7d0:	00801821 	addu	v1,a0,zero
 7d4:	01708021 	addu	s0,t3,s0
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
 7d8:	00c8582b 	sltu	t3,a2,t0
 7dc:	00608821 	addu	s1,v1,zero
 7e0:	24050001 	addiu	a1,zero,1
 7e4:	00002021 	addu	a0,zero,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
 7e8:	00c06021 	addu	t4,a2,zero
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
 7ec:	15600005 	bnez	t3,804 <float64_div+0x3b8>
 7f0:	00e01821 	addu	v1,a3,zero
 7f4:	11060070 	beq	t0,a2,9b8 <float64_div+0x56c>
 7f8:	00000000 	sll	zero,zero,0x0
 7fc:	00002821 	addu	a1,zero,zero
 800:	00002021 	addu	a0,zero,zero
 804:	01451021 	addu	v0,t2,a1
 808:	004a502b 	sltu	t2,v0,t2
 80c:	02e4b821 	addu	s7,s7,a0
 810:	0157b821 	addu	s7,t2,s7
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
    {
      mul64To128 (bSig, zSig, &term0, &term1);
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
      while ((sbits64) rem0 < 0)
 814:	06e1008e 	bgez	s7,a50 <float64_div+0x604>
 818:	00405021 	addu	t2,v0,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
 81c:	00c04021 	addu	t0,a2,zero
 820:	080001ed 	j	7b4 <float64_div+0x368>
 824:	00e04821 	addu	t1,a3,zero
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    {
      if (aSig)
 828:	03c5f025 	or	s8,s8,a1
 82c:	17c00077 	bnez	s8,a0c <float64_div+0x5c0>
 830:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
      if (bExp == 0x7FF)
 834:	12c30072 	beq	s6,v1,a00 <float64_div+0x5b4>
 838:	0015afc0 	sll	s5,s5,0x1f

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 83c:	3c027ff0 	lui	v0,0x7ff0
	  if (bSig)
	    return propagateFloat64NaN (a, b);
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
 840:	02a21021 	addu	v0,s5,v0
 844:	00402021 	addu	a0,v0,zero
 848:	0800021a 	j	868 <float64_div+0x41c>
 84c:	00002821 	addu	a1,zero,zero
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
 850:	00471025 	or	v0,v0,a3
 854:	1440006d 	bnez	v0,a0c <float64_div+0x5c0>
 858:	00000000 	sll	zero,zero,0x0
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  if (aExp == 0)
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
 85c:	0015afc0 	sll	s5,s5,0x1f
 860:	02a02021 	addu	a0,s5,zero
 864:	00002821 	addu	a1,zero,zero
	}
      zSig |= (rem1 != 0);
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);

}
 868:	8fbf0064 	lw	ra,100(sp)
 86c:	00801021 	addu	v0,a0,zero
 870:	00a01821 	addu	v1,a1,zero
 874:	8fbe0060 	lw	s8,96(sp)
 878:	8fb7005c 	lw	s7,92(sp)
 87c:	8fb60058 	lw	s6,88(sp)
 880:	8fb50054 	lw	s5,84(sp)
 884:	8fb40050 	lw	s4,80(sp)
 888:	8fb3004c 	lw	s3,76(sp)
 88c:	8fb20048 	lw	s2,72(sp)
 890:	8fb10044 	lw	s1,68(sp)
 894:	8fb00040 	lw	s0,64(sp)
 898:	03e00008 	jr	ra
 89c:	27bd0068 	addiu	sp,sp,104
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
 8a0:	165e0004 	bne	s2,s8,8b4 <float64_div+0x468>
 8a4:	240503ff 	addiu	a1,zero,1023
 8a8:	02f4182b 	sltu	v1,s7,s4
 8ac:	1460ff66 	bnez	v1,648 <float64_div+0x1fc>
 8b0:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
 8b4:	2411ffff 	addiu	s1,zero,-1
 8b8:	2410ffff 	addiu	s0,zero,-1
{
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
 8bc:	8f820000 	lw	v0,0(gp)
 8c0:	00000000 	sll	zero,zero,0x0
  roundNearestEven = (roundingMode == float_round_nearest_even);
 8c4:	2c440001 	sltiu	a0,v0,1
  roundIncrement = 0x200;
  if (!roundNearestEven)
 8c8:	1480000a 	bnez	a0,8f4 <float64_div+0x4a8>
 8cc:	24030200 	addiu	v1,zero,512
    {
      if (roundingMode == float_round_to_zero)
 8d0:	24030001 	addiu	v1,zero,1
 8d4:	10430007 	beq	v0,v1,8f4 <float64_div+0x4a8>
 8d8:	00001821 	addu	v1,zero,zero
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
 8dc:	12a00058 	beqz	s5,a40 <float64_div+0x5f4>
 8e0:	24030003 	addiu	v1,zero,3
	    {
	      if (roundingMode == float_round_up)
 8e4:	24030002 	addiu	v1,zero,2
 8e8:	10430002 	beq	v0,v1,8f4 <float64_div+0x4a8>
 8ec:	00001821 	addu	v1,zero,zero
	{
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
 8f0:	240303ff 	addiu	v1,zero,1023
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
 8f4:	32c2ffff 	andi	v0,s6,0xffff
 8f8:	2c4207fd 	sltiu	v0,v0,2045
 8fc:	14400008 	bnez	v0,920 <float64_div+0x4d4>
 900:	00711021 	addu	v0,v1,s1
    {
      if ((0x7FD < zExp)
 904:	2ac207fe 	slti	v0,s6,2046
 908:	10400070 	beqz	v0,acc <float64_div+0x680>
 90c:	240207fd 	addiu	v0,zero,2045
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 910:	12c20069 	beq	s6,v0,ab8 <float64_div+0x66c>
 914:	00711021 	addu	v0,v1,s1
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
	}
      if (zExp < 0)
 918:	06c0008c 	bltz	s6,b4c <float64_div+0x700>
 91c:	00000000 	sll	zero,zero,0x0
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
 920:	0043382b 	sltu	a3,v0,v1
 924:	000347c3 	sra	t0,v1,0x1f
 928:	00f03821 	addu	a3,a3,s0
 92c:	00403021 	addu	a2,v0,zero
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
 930:	10a0004f 	beqz	a1,a70 <float64_div+0x624>
 934:	00000000 	sll	zero,zero,0x0
 938:	8f860000 	lw	a2,0(gp)
    float_exception_flags |= float_flag_inexact;
 93c:	38a30200 	xori	v1,a1,0x200
 940:	2c630001 	sltiu	v1,v1,1
 944:	00642024 	and	a0,v1,a0
 948:	00041827 	nor	v1,zero,a0
 94c:	34c60001 	ori	a2,a2,0x1
 950:	0051382b 	sltu	a3,v0,s1
 954:	01108021 	addu	s0,t0,s0
 958:	af860000 	sw	a2,0(gp)
 95c:	00602821 	addu	a1,v1,zero
 960:	000327c3 	sra	a0,v1,0x1f
 964:	00f03821 	addu	a3,a3,s0
 968:	00403021 	addu	a2,v0,zero
  zSig = (zSig + roundIncrement) >> 10;
 96c:	00071580 	sll	v0,a3,0x16
 970:	00063282 	srl	a2,a2,0xa
 974:	00463025 	or	a2,v0,a2
 978:	00073a82 	srl	a3,a3,0xa
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
 97c:	00e43824 	and	a3,a3,a0
 980:	00c53024 	and	a2,a2,a1
  if (zSig == 0)
 984:	00e61025 	or	v0,a3,a2
 988:	10400037 	beqz	v0,a68 <float64_div+0x61c>
 98c:	00001821 	addu	v1,zero,zero
 990:	00161500 	sll	v0,s6,0x14

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 994:	0015afc0 	sll	s5,s5,0x1f
 998:	00c34021 	addu	t0,a2,v1
 99c:	00f53821 	addu	a3,a3,s5
 9a0:	0106302b 	sltu	a2,t0,a2
 9a4:	00e21021 	addu	v0,a3,v0
 9a8:	00c21021 	addu	v0,a2,v0
 9ac:	00402021 	addu	a0,v0,zero
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);
 9b0:	0800021a 	j	868 <float64_div+0x41c>
 9b4:	01002821 	addu	a1,t0,zero
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
 9b8:	00e9482b 	sltu	t1,a3,t1
 9bc:	1520ff92 	bnez	t1,808 <float64_div+0x3bc>
 9c0:	01451021 	addu	v0,t2,a1
 9c4:	08000200 	j	800 <float64_div+0x3b4>
 9c8:	00002821 	addu	a1,zero,zero
    }
  if (bExp == 0)
    {
      if (bSig == 0)
	{
	  if ((aExp | aSig) == 0)
 9cc:	000317c3 	sra	v0,v1,0x1f
 9d0:	005ef025 	or	s8,v0,s8
 9d4:	00651825 	or	v1,v1,a1
 9d8:	03c3f025 	or	s8,s8,v1
 9dc:	17c00076 	bnez	s8,bb8 <float64_div+0x76c>
 9e0:	0015afc0 	sll	s5,s5,0x1f
 9e4:	8f820000 	lw	v0,0(gp)
	    {
	      float_raise (float_flag_invalid);
	      return float64_default_nan;
 9e8:	3c047fff 	lui	a0,0x7fff
 9ec:	34420010 	ori	v0,v0,0x10
 9f0:	2405ffff 	addiu	a1,zero,-1
 9f4:	3484ffff 	ori	a0,a0,0xffff
 9f8:	0800021a 	j	868 <float64_div+0x41c>
 9fc:	af820000 	sw	v0,0(gp)
    {
      if (aSig)
	return propagateFloat64NaN (a, b);
      if (bExp == 0x7FF)
	{
	  if (bSig)
 a00:	00471025 	or	v0,v0,a3
 a04:	1040fff7 	beqz	v0,9e4 <float64_div+0x598>
 a08:	00000000 	sll	zero,zero,0x0
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
 a0c:	0c000000 	jal	0 <propagateFloat64NaN>
 a10:	00000000 	sll	zero,zero,0x0
 a14:	00602821 	addu	a1,v1,zero
 a18:	0800021a 	j	868 <float64_div+0x41c>
 a1c:	00402021 	addu	a0,v0,zero
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  if (bSig <= (aSig + aSig))
    {
      aSig >>= 1;
 a20:	0017b842 	srl	s7,s7,0x1
 a24:	001ef042 	srl	s8,s8,0x1
 a28:	0057b825 	or	s7,v0,s7
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
 a2c:	03d2102b 	sltu	v0,s8,s2
 a30:	1440ff05 	bnez	v0,648 <float64_div+0x1fc>
 a34:	26d60001 	addiu	s6,s6,1
 a38:	08000228 	j	8a0 <float64_div+0x454>
 a3c:	00000000 	sll	zero,zero,0x0
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
 a40:	1443ffab 	bne	v0,v1,8f0 <float64_div+0x4a4>
 a44:	00001821 	addu	v1,zero,zero
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
 a48:	0800023e 	j	8f8 <float64_div+0x4ac>
 a4c:	32c2ffff 	andi	v0,s6,0xffff
      while ((sbits64) rem0 < 0)
	{
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
 a50:	01836025 	or	t4,t4,v1
 a54:	000c602b 	sltu	t4,zero,t4
 a58:	01916025 	or	t4,t4,s1
 a5c:	01808821 	addu	s1,t4,zero
 a60:	0800022f 	j	8bc <float64_div+0x470>
 a64:	322503ff 	andi	a1,s1,0x3ff
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
  if (zSig == 0)
 a68:	08000265 	j	994 <float64_div+0x548>
 a6c:	00001021 	addu	v0,zero,zero
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
 a70:	2405ffff 	addiu	a1,zero,-1
 a74:	0800025b 	j	96c <float64_div+0x520>
 a78:	2404ffff 	addiu	a0,zero,-1
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
 a7c:	02e02821 	addu	a1,s7,zero
 a80:	00003021 	addu	a2,zero,zero
 a84:	0c000000 	jal	0 <propagateFloat64NaN>
 a88:	02403821 	addu	a3,s2,zero
 a8c:	00608021 	addu	s0,v1,zero
 a90:	08000196 	j	658 <float64_div+0x20c>
 a94:	00008821 	addu	s1,zero,zero
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    }
  rem0 = (rem0 << 32) | (rem1 >> 32);
  z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
 a98:	00003021 	addu	a2,zero,zero
 a9c:	02403821 	addu	a3,s2,zero
 aa0:	0c000000 	jal	0 <propagateFloat64NaN>
 aa4:	afa80038 	sw	t0,56(sp)
 aa8:	00402021 	addu	a0,v0,zero
 aac:	8fa80038 	lw	t0,56(sp)
 ab0:	080001cb 	j	72c <float64_div+0x2e0>
 ab4:	00801021 	addu	v0,a0,zero
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
 ab8:	0043382b 	sltu	a3,v0,v1
 abc:	00f03821 	addu	a3,a3,s0
 ac0:	000347c3 	sra	t0,v1,0x1f
 ac4:	04e1ff9a 	bgez	a3,930 <float64_div+0x4e4>
 ac8:	00403021 	addu	a2,v0,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 acc:	0015afc0 	sll	s5,s5,0x1f
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 ad0:	2c630001 	sltiu	v1,v1,1

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 ad4:	3c027ff0 	lui	v0,0x7ff0
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 ad8:	00033023 	negu	a2,v1

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 adc:	02a21021 	addu	v0,s5,v0
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
 ae0:	00461021 	addu	v0,v0,a2
 ae4:	00402021 	addu	a0,v0,zero
 ae8:	8f820000 	lw	v0,0(gp)
 aec:	00c02821 	addu	a1,a2,zero
 af0:	34420009 	ori	v0,v0,0x9
 af4:	0800021a 	j	868 <float64_div+0x41c>
 af8:	af820000 	sw	v0,0(gp)
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 afc:	00092842 	srl	a1,t1,0x1
 b00:	00852006 	srlv	a0,a1,a0
 b04:	02c21004 	sllv	v0,v0,s6
 b08:	00821025 	or	v0,a0,v0
  *zExpPtr = 1 - shiftCount;
 b0c:	24040001 	addiu	a0,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 b10:	02c9a004 	sllv	s4,t1,s6
  *zExpPtr = 1 - shiftCount;
 b14:	08000153 	j	54c <float64_div+0x100>
 b18:	0096b023 	subu	s6,a0,s6
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
 b1c:	08000138 	j	4e0 <float64_div+0x94>
 b20:	24160015 	addiu	s6,zero,21
 b24:	0800015c 	j	570 <float64_div+0x124>
 b28:	24030015 	addiu	v1,zero,21
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 b2c:	00082842 	srl	a1,t0,0x1
 b30:	00852006 	srlv	a0,a1,a0
 b34:	007ef004 	sllv	s8,s8,v1
 b38:	009ef025 	or	s8,a0,s8
  *zExpPtr = 1 - shiftCount;
 b3c:	24040001 	addiu	a0,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
 b40:	00685804 	sllv	t3,t0,v1
  *zExpPtr = 1 - shiftCount;
 b44:	08000177 	j	5dc <float64_div+0x190>
 b48:	00831823 	subu	v1,a0,v1
      if (zExp < 0)
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
 b4c:	00161023 	negu	v0,s6

  if (count == 0)
    {
      z = a;
    }
  else if (count < 64)
 b50:	28450040 	slti	a1,v0,64
 b54:	10a00028 	beqz	a1,bf8 <float64_div+0x7ac>
 b58:	30450020 	andi	a1,v0,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 b5c:	10a00031 	beqz	a1,c24 <float64_div+0x7d8>
 b60:	00022827 	nor	a1,zero,v0
 b64:	00502806 	srlv	a1,s0,v0
 b68:	00001021 	addu	v0,zero,zero
 b6c:	32c60020 	andi	a2,s6,0x20
 b70:	10c00025 	beqz	a2,c08 <float64_div+0x7bc>
 b74:	32d6003f 	andi	s6,s6,0x3f
 b78:	02d13004 	sllv	a2,s1,s6
 b7c:	0000b021 	addu	s6,zero,zero
 b80:	00d63025 	or	a2,a2,s6
 b84:	0006302b 	sltu	a2,zero,a2
 b88:	00408021 	addu	s0,v0,zero
 b8c:	00c58825 	or	s1,a2,a1
	  zExp = 0;
	  roundBits = zSig & 0x3FF;
 b90:	322503ff 	andi	a1,s1,0x3ff
	  if (isTiny && roundBits)
 b94:	14a00013 	bnez	a1,be4 <float64_div+0x798>
 b98:	000347c3 	sra	t0,v1,0x1f
 b9c:	02233021 	addu	a2,s1,v1
 ba0:	00d1382b 	sltu	a3,a2,s1
 ba4:	00f03821 	addu	a3,a3,s0
 ba8:	2405ffff 	addiu	a1,zero,-1
 bac:	2404ffff 	addiu	a0,zero,-1
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 bb0:	0800025b 	j	96c <float64_div+0x520>
 bb4:	0000b021 	addu	s6,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
 bb8:	3c027ff0 	lui	v0,0x7ff0
	    {
	      float_raise (float_flag_invalid);
	      return float64_default_nan;
	    }
	  float_raise (float_flag_divbyzero);
	  return packFloat64 (zSign, 0x7FF, 0);
 bbc:	02a21021 	addu	v0,s5,v0
 bc0:	00402021 	addu	a0,v0,zero
 bc4:	8f820000 	lw	v0,0(gp)
 bc8:	00002821 	addu	a1,zero,zero
 bcc:	34420002 	ori	v0,v0,0x2
 bd0:	0800021a 	j	868 <float64_div+0x41c>
 bd4:	af820000 	sw	v0,0(gp)
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
 bd8:	02009821 	addu	s3,s0,zero
 bdc:	080001c6 	j	718 <float64_div+0x2cc>
 be0:	02204021 	addu	t0,s1,zero
 be4:	8f860000 	lw	a2,0(gp)
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
 be8:	0000b021 	addu	s6,zero,zero
 bec:	34c60004 	ori	a2,a2,0x4
 bf0:	0800024f 	j	93c <float64_div+0x4f0>
 bf4:	00711021 	addu	v0,v1,s1
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
    }
  else
    {
      z = (a != 0);
 bf8:	02111025 	or	v0,s0,s1
 bfc:	0002882b 	sltu	s1,zero,v0
 c00:	080002e4 	j	b90 <float64_div+0x744>
 c04:	00008021 	addu	s0,zero,zero
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
 c08:	00163027 	nor	a2,zero,s6
 c0c:	00113842 	srl	a3,s1,0x1
 c10:	00c73806 	srlv	a3,a3,a2
 c14:	02d03004 	sllv	a2,s0,s6
 c18:	00e63025 	or	a2,a3,a2
 c1c:	080002e0 	j	b80 <float64_div+0x734>
 c20:	02d1b004 	sllv	s6,s1,s6
 c24:	00103040 	sll	a2,s0,0x1
 c28:	00a63004 	sllv	a2,a2,a1
 c2c:	00512806 	srlv	a1,s1,v0
 c30:	00c52825 	or	a1,a2,a1
 c34:	080002db 	j	b6c <float64_div+0x720>
 c38:	00501006 	srlv	v0,s0,v0

00000c3c <ullong_to_double>:
    unsigned long long ll;
  } t;

  t.ll = x;
  return t.d;
}
 c3c:	44850000 	mtc1	a1,$f0
 c40:	00000000 	sll	zero,zero,0x0
 c44:	44840800 	mtc1	a0,$f1
 c48:	03e00008 	jr	ra
 c4c:	00000000 	sll	zero,zero,0x0

00000c50 <main>:
  0x3FE5555555555555ULL		/* 0.666667 */
};

int
main ()
{
 c50:	27bdffa8 	addiu	sp,sp,-88
 c54:	afbe0050 	sw	s8,80(sp)
 c58:	afb7004c 	sw	s7,76(sp)
 c5c:	afb60048 	sw	s6,72(sp)
 c60:	3c170000 	lui	s7,0x0
 c64:	3c160000 	lui	s6,0x0
 c68:	3c1e0000 	lui	s8,0x0
 c6c:	afb50044 	sw	s5,68(sp)
 c70:	afb40040 	sw	s4,64(sp)
 c74:	afbf0054 	sw	ra,84(sp)
 c78:	afb3003c 	sw	s3,60(sp)
 c7c:	afb20038 	sw	s2,56(sp)
 c80:	afb10034 	sw	s1,52(sp)
 c84:	afb00030 	sw	s0,48(sp)
 c88:	0000a021 	addu	s4,zero,zero
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
 c8c:	0000a821 	addu	s5,zero,zero
 c90:	26f70000 	addiu	s7,s7,0
 c94:	26d60000 	addiu	s6,s6,0
 c98:	27de0000 	addiu	s8,s8,0
  0xBFE5555555555555ULL,	/* -0.666667 */
  0x3FE5555555555555ULL		/* 0.666667 */
};

int
main ()
 c9c:	02f41821 	addu	v1,s7,s4
 ca0:	02d41021 	addu	v0,s6,s4
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
 ca4:	8c710004 	lw	s1,4(v1)
 ca8:	8c700000 	lw	s0,0(v1)
	  x2 = b_input[i];
 cac:	8c530004 	lw	s3,4(v0)
 cb0:	8c520000 	lw	s2,0(v0)
	  result = float64_div (x1, x2);
 cb4:	02202821 	addu	a1,s1,zero
 cb8:	02002021 	addu	a0,s0,zero
 cbc:	02603821 	addu	a3,s3,zero
 cc0:	0c000000 	jal	0 <propagateFloat64NaN>
 cc4:	02403021 	addu	a2,s2,zero
  0xBFE5555555555555ULL,	/* -0.666667 */
  0x3FE5555555555555ULL		/* 0.666667 */
};

int
main ()
 cc8:	03d42021 	addu	a0,s8,s4
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_div (x1, x2);
	  main_result += (result != z_output[i]);
 ccc:	8c880000 	lw	t0,0(a0)
 cd0:	8c850004 	lw	a1,4(a0)
 cd4:	01024826 	xor	t1,t0,v0
 cd8:	00a32026 	xor	a0,a1,v1
 cdc:	01244825 	or	t1,t1,a0

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 ce0:	3c040000 	lui	a0,0x0
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_div (x1, x2);
	  main_result += (result != z_output[i]);
 ce4:	0009482b 	sltu	t1,zero,t1

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 ce8:	24840000 	addiu	a0,a0,0
 cec:	02203821 	addu	a3,s1,zero
 cf0:	02003021 	addu	a2,s0,zero
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_div (x1, x2);
	  main_result += (result != z_output[i]);
 cf4:	02a9a821 	addu	s5,s5,t1

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
 cf8:	afb30014 	sw	s3,20(sp)
 cfc:	afb20010 	sw	s2,16(sp)
 d00:	afa80018 	sw	t0,24(sp)
 d04:	afa5001c 	sw	a1,28(sp)
 d08:	afa30024 	sw	v1,36(sp)
 d0c:	afa20020 	sw	v0,32(sp)
 d10:	afa3002c 	sw	v1,44(sp)
 d14:	afa20028 	sw	v0,40(sp)
 d18:	0c000000 	jal	0 <propagateFloat64NaN>
 d1c:	26940008 	addiu	s4,s4,8
{
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
 d20:	240200b0 	addiu	v0,zero,176
 d24:	1682ffde 	bne	s4,v0,ca0 <main+0x50>
 d28:	02f41821 	addu	v1,s7,s4
	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     a_input[i], b_input[i], z_output[i], result,
	     ullong_to_double (result));
	}
      printf ("%d\n", main_result);
 d2c:	3c040000 	lui	a0,0x0
 d30:	02a02821 	addu	a1,s5,zero
 d34:	0c000000 	jal	0 <propagateFloat64NaN>
 d38:	24840000 	addiu	a0,a0,0
      return main_result;
    }
 d3c:	8fbf0054 	lw	ra,84(sp)
 d40:	02a01021 	addu	v0,s5,zero
 d44:	8fbe0050 	lw	s8,80(sp)
 d48:	8fb7004c 	lw	s7,76(sp)
 d4c:	8fb60048 	lw	s6,72(sp)
 d50:	8fb50044 	lw	s5,68(sp)
 d54:	8fb40040 	lw	s4,64(sp)
 d58:	8fb3003c 	lw	s3,60(sp)
 d5c:	8fb20038 	lw	s2,56(sp)
 d60:	8fb10034 	lw	s1,52(sp)
 d64:	8fb00030 	lw	s0,48(sp)
 d68:	03e00008 	jr	ra
 d6c:	27bd0058 	addiu	sp,sp,88

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
