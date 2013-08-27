
dfdiv.o:     file format elf32-bigmips


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

000000ac <add128>:
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
      ac:	8fa2001c 	lw	v0,28(sp)
  bits64 z1;

  z1 = a1 + b1;
      b0:	8fa80018 	lw	t0,24(sp)
      b4:	00474821 	addu	t1,v0,a3
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
      b8:	8faa0014 	lw	t2,20(sp)
  bits64 z1;

  z1 = a1 + b1;
      bc:	0122102b 	sltu	v0,t1,v0
      c0:	01064021 	addu	t0,t0,a2
      c4:	00484021 	addu	t0,v0,t0
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
      c8:	8fa20010 	lw	v0,16(sp)
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
      cc:	8fa30024 	lw	v1,36(sp)
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
      d0:	01452821 	addu	a1,t2,a1
      d4:	00442021 	addu	a0,v0,a0
      d8:	00aa502b 	sltu	t2,a1,t2
      dc:	0106602b 	sltu	t4,t0,a2
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
      e0:	8fab0020 	lw	t3,32(sp)
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
      e4:	01442021 	addu	a0,t2,a0
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
      e8:	ac680000 	sw	t0,0(v1)
      ec:	ac690004 	sw	t1,4(v1)
  *z0Ptr = a0 + b0 + (z1 < a1);
      f0:	00001021 	addu	v0,zero,zero
      f4:	15800005 	bnez	t4,10c <add128+0x60>
      f8:	24030001 	addiu	v1,zero,1
      fc:	10c8000a 	beq	a2,t0,128 <add128+0x7c>
     100:	00000000 	sll	zero,zero,0x0
     104:	00001821 	addu	v1,zero,zero
     108:	00001021 	addu	v0,zero,zero
     10c:	00a33021 	addu	a2,a1,v1
     110:	00c5282b 	sltu	a1,a2,a1
     114:	00821021 	addu	v0,a0,v0
     118:	00a21021 	addu	v0,a1,v0
     11c:	ad620000 	sw	v0,0(t3)

}
     120:	03e00008 	jr	ra
     124:	ad660004 	sw	a2,4(t3)
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     128:	0127382b 	sltu	a3,t1,a3
     12c:	14e0fff8 	bnez	a3,110 <add128+0x64>
     130:	00a33021 	addu	a2,a1,v1
     134:	08000042 	j	108 <add128+0x5c>
     138:	00001821 	addu	v1,zero,zero

0000013c <sub128>:
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     13c:	8fa8001c 	lw	t0,28(sp)
     140:	8fa90018 	lw	t1,24(sp)

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     144:	8faa0014 	lw	t2,20(sp)
     148:	8fa20010 	lw	v0,16(sp)
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     14c:	00e85823 	subu	t3,a3,t0
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     150:	8fa30024 	lw	v1,36(sp)

  *z1Ptr = a1 - b1;
     154:	00c96823 	subu	t5,a2,t1
     158:	00eb602b 	sltu	t4,a3,t3
  *z0Ptr = a0 - b0 - (a1 < b1);
     15c:	00aa5023 	subu	t2,a1,t2
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     160:	01ac6023 	subu	t4,t5,t4
  *z0Ptr = a0 - b0 - (a1 < b1);
     164:	00822023 	subu	a0,a0,v0
     168:	00aa282b 	sltu	a1,a1,t2
     16c:	00c9702b 	sltu	t6,a2,t1
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     170:	8fad0020 	lw	t5,32(sp)

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     174:	00852023 	subu	a0,a0,a1
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     178:	ac6c0000 	sw	t4,0(v1)
     17c:	ac6b0004 	sw	t3,4(v1)
  *z0Ptr = a0 - b0 - (a1 < b1);
     180:	00001021 	addu	v0,zero,zero
     184:	15c00005 	bnez	t6,19c <sub128+0x60>
     188:	24030001 	addiu	v1,zero,1
     18c:	1126000a 	beq	t1,a2,1b8 <sub128+0x7c>
     190:	00000000 	sll	zero,zero,0x0
     194:	00001821 	addu	v1,zero,zero
     198:	00001021 	addu	v0,zero,zero
     19c:	01432823 	subu	a1,t2,v1
     1a0:	0145502b 	sltu	t2,t2,a1
     1a4:	00821023 	subu	v0,a0,v0
     1a8:	004a1023 	subu	v0,v0,t2
     1ac:	ada20000 	sw	v0,0(t5)

}
     1b0:	03e00008 	jr	ra
     1b4:	ada50004 	sw	a1,4(t5)
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     1b8:	00e8402b 	sltu	t0,a3,t0
     1bc:	1500fff8 	bnez	t0,1a0 <sub128+0x64>
     1c0:	01432823 	subu	a1,t2,v1
     1c4:	08000066 	j	198 <sub128+0x5c>
     1c8:	00001821 	addu	v1,zero,zero

000001cc <mul64To128>:
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     1cc:	00c50019 	multu	a2,a1
| `z0Ptr' and `z1Ptr'.
*----------------------------------------------------------------------------*/

INLINE void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
     1d0:	8fad0010 	lw	t5,16(sp)
     1d4:	8fae0014 	lw	t6,20(sp)
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     1d8:	00004812 	mflo	t1
     1dc:	00004010 	mfhi	t0
	...
  zMiddleB = ((bits64) aHigh) * bLow;
     1e8:	00870019 	multu	a0,a3
     1ec:	00001010 	mfhi	v0
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     1f0:	01024021 	addu	t0,t0,v0
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
     1f4:	00001812 	mflo	v1
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     1f8:	01236021 	addu	t4,t1,v1
     1fc:	00000000 	sll	zero,zero,0x0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
     200:	00e50019 	multu	a3,a1
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     204:	0189282b 	sltu	a1,t4,t1
     208:	00a84021 	addu	t0,a1,t0
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     20c:	0102382b 	sltu	a3,t0,v0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
     210:	00005812 	mflo	t3
     214:	00005010 	mfhi	t2
	...
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
     220:	00c40019 	multu	a2,a0
     224:	00002812 	mflo	a1
     228:	00002010 	mfhi	a0
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     22c:	14e00004 	bnez	a3,240 <mul64To128+0x74>
     230:	24060001 	addiu	a2,zero,1
     234:	11020017 	beq	t0,v0,294 <mul64To128+0xc8>
     238:	0183102b 	sltu	v0,t4,v1
     23c:	00003021 	addu	a2,zero,zero
  zMiddleA <<= 32;
  z1 += zMiddleA;
     240:	018a7821 	addu	t7,t4,t2
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     244:	01054821 	addu	t1,t0,a1
     248:	0128402b 	sltu	t0,t1,t0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     24c:	01ec602b 	sltu	t4,t7,t4
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
     250:	01605021 	addu	t2,t3,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     254:	01042021 	addu	a0,t0,a0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     258:	24030001 	addiu	v1,zero,1
     25c:	15800003 	bnez	t4,26c <mul64To128+0xa0>
     260:	00001021 	addu	v0,zero,zero
     264:	00001821 	addu	v1,zero,zero
     268:	00001021 	addu	v0,zero,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     26c:	01232821 	addu	a1,t1,v1
     270:	00a9482b 	sltu	t1,a1,t1
     274:	00821021 	addu	v0,a0,v0
     278:	01221021 	addu	v0,t1,v0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     27c:	00463021 	addu	a2,v0,a2
  *z1Ptr = z1;
     280:	adcf0000 	sw	t7,0(t6)
     284:	adca0004 	sw	t2,4(t6)
  *z0Ptr = z0;
     288:	ada60000 	sw	a2,0(t5)

}
     28c:	03e00008 	jr	ra
     290:	ada50004 	sw	a1,4(t5)
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     294:	1040ffe9 	beqz	v0,23c <mul64To128+0x70>
     298:	24060001 	addiu	a2,zero,1
  zMiddleA <<= 32;
  z1 += zMiddleA;
     29c:	08000091 	j	244 <mul64To128+0x78>
     2a0:	018a7821 	addu	t7,t4,t2

000002a4 <float_raise>:
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
     2a4:	8f820000 	lw	v0,0(gp)
     2a8:	00000000 	sll	zero,zero,0x0
     2ac:	00441025 	or	v0,v0,a0

}
     2b0:	03e00008 	jr	ra
     2b4:	af820000 	sw	v0,0(gp)

000002b8 <float64_is_nan>:

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     2b8:	000517c2 	srl	v0,a1,0x1f
     2bc:	00042040 	sll	a0,a0,0x1
     2c0:	3c03ffe0 	lui	v1,0xffe0
     2c4:	00442025 	or	a0,v0,a0
     2c8:	24660001 	addiu	a2,v1,1
     2cc:	0086302b 	sltu	a2,a0,a2
     2d0:	00052840 	sll	a1,a1,0x1
     2d4:	10c00007 	beqz	a2,2f4 <float64_is_nan+0x3c>
     2d8:	24020001 	addiu	v0,zero,1
     2dc:	10830003 	beq	a0,v1,2ec <float64_is_nan+0x34>
     2e0:	00000000 	sll	zero,zero,0x0

}
     2e4:	03e00008 	jr	ra
     2e8:	00001021 	addu	v0,zero,zero

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     2ec:	10a0fffd 	beqz	a1,2e4 <float64_is_nan+0x2c>
     2f0:	00000000 	sll	zero,zero,0x0

}
     2f4:	03e00008 	jr	ra
     2f8:	00000000 	sll	zero,zero,0x0

000002fc <float64_is_signaling_nan>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     2fc:	000414c2 	srl	v0,a0,0x13
     300:	30420fff 	andi	v0,v0,0xfff
     304:	24030ffe 	addiu	v1,zero,4094
     308:	10430003 	beq	v0,v1,318 <float64_is_signaling_nan+0x1c>
     30c:	00000000 	sll	zero,zero,0x0

}
     310:	03e00008 	jr	ra
     314:	00001021 	addu	v0,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     318:	3c020007 	lui	v0,0x7
     31c:	3442ffff 	ori	v0,v0,0xffff
     320:	00821024 	and	v0,a0,v0
     324:	00451025 	or	v0,v0,a1
     328:	03e00008 	jr	ra
     32c:	0002102b 	sltu	v0,zero,v0

00000330 <extractFloat64Frac>:
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);

}
     330:	3c02000f 	lui	v0,0xf
     334:	3442ffff 	ori	v0,v0,0xffff
     338:	00821024 	and	v0,a0,v0
     33c:	03e00008 	jr	ra
     340:	00a01821 	addu	v1,a1,zero

00000344 <extractFloat64Exp>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     344:	00041502 	srl	v0,a0,0x14

}
     348:	03e00008 	jr	ra
     34c:	304207ff 	andi	v0,v0,0x7ff

00000350 <extractFloat64Sign>:
extractFloat64Sign (float64 a)
{

  return a >> 63;

}
     350:	03e00008 	jr	ra
     354:	000417c2 	srl	v0,a0,0x1f

00000358 <packFloat64>:

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     358:	000427c0 	sll	a0,a0,0x1f
     35c:	00c42021 	addu	a0,a2,a0
     360:	00051500 	sll	v0,a1,0x14

}
     364:	00821021 	addu	v0,a0,v0
     368:	03e00008 	jr	ra
     36c:	00e01821 	addu	v1,a3,zero

00000370 <float64_div>:
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
     370:	27bdffc8 	addiu	sp,sp,-56
     374:	afb00014 	sw	s0,20(sp)

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     378:	00041502 	srl	v0,a0,0x14

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     37c:	3c10000f 	lui	s0,0xf
     380:	3610ffff 	ori	s0,s0,0xffff
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
     384:	afb30020 	sw	s3,32(sp)
     388:	afb2001c 	sw	s2,28(sp)

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     38c:	00069d02 	srl	s3,a2,0x14

INLINE flag
extractFloat64Sign (float64 a)
{

  return a >> 63;
     390:	00869026 	xor	s2,a0,a2

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     394:	304207ff 	andi	v0,v0,0x7ff
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
     398:	240307ff 	addiu	v1,zero,2047
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
     39c:	afb50028 	sw	s5,40(sp)
     3a0:	afb10018 	sw	s1,24(sp)

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     3a4:	0090a824 	and	s5,a0,s0
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
     3a8:	afbf0034 	sw	ra,52(sp)
     3ac:	afb70030 	sw	s7,48(sp)
     3b0:	afb6002c 	sw	s6,44(sp)
     3b4:	afb40024 	sw	s4,36(sp)

INLINE bits64
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     3b8:	00a04021 	addu	t0,a1,zero
     3bc:	00d08024 	and	s0,a2,s0
     3c0:	00e08821 	addu	s1,a3,zero

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     3c4:	327307ff 	andi	s3,s3,0x7ff
  aSign = extractFloat64Sign (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
     3c8:	1043011e 	beq	v0,v1,844 <float64_div+0x4d4>
     3cc:	001297c2 	srl	s2,s2,0x1f
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
     3d0:	12630126 	beq	s3,v1,86c <float64_div+0x4fc>
     3d4:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
      return packFloat64 (zSign, 0, 0);
    }
  if (bExp == 0)
     3d8:	16600023 	bnez	s3,468 <float64_div+0xf8>
     3dc:	02071825 	or	v1,s0,a3
    {
      if (bSig == 0)
     3e0:	1060017f 	beqz	v1,9e0 <float64_div+0x670>
     3e4:	00021fc3 	sra	v1,v0,0x1f
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
     3e8:	12000236 	beqz	s0,cc4 <float64_div+0x954>
     3ec:	00e01821 	addu	v1,a3,zero
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
     3f0:	02001821 	addu	v1,s0,zero
     3f4:	2413fff5 	addiu	s3,zero,-11
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
     3f8:	3c040001 	lui	a0,0x1
     3fc:	0064202b 	sltu	a0,v1,a0
     400:	1080022e 	beqz	a0,cbc <float64_div+0x94c>
     404:	24090008 	addiu	t1,zero,8
    {
      shiftCount += 16;
      a <<= 16;
     408:	00031c00 	sll	v1,v1,0x10
     40c:	24090018 	addiu	t1,zero,24
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
     410:	24040010 	addiu	a0,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
     414:	3c060100 	lui	a2,0x100
     418:	0066302b 	sltu	a2,v1,a2
     41c:	10c00003 	beqz	a2,42c <float64_div+0xbc>
     420:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
      a <<= 8;
     424:	00031a00 	sll	v1,v1,0x8
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
    {
      shiftCount += 8;
     428:	01202021 	addu	a0,t1,zero
      a <<= 8;
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
     42c:	00031e02 	srl	v1,v1,0x18
     430:	3c060000 	lui	a2,0x0
     434:	00031880 	sll	v1,v1,0x2
     438:	24c60210 	addiu	a2,a2,528
     43c:	00661821 	addu	v1,v1,a2
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
     440:	8c630000 	lw	v1,0(v1)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
     444:	00939821 	addu	s3,a0,s3
     448:	02639821 	addu	s3,s3,v1
  *zSigPtr = aSig << shiftCount;
     44c:	32630020 	andi	v1,s3,0x20
     450:	10600212 	beqz	v1,c9c <float64_div+0x92c>
     454:	00131827 	nor	v1,zero,s3
  *zExpPtr = 1 - shiftCount;
     458:	24030001 	addiu	v1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
     45c:	02678004 	sllv	s0,a3,s3
     460:	00008821 	addu	s1,zero,zero
  *zExpPtr = 1 - shiftCount;
     464:	00739823 	subu	s3,v1,s3
	  float_raise (float_flag_divbyzero);
	  return packFloat64 (zSign, 0x7FF, 0);
	}
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  if (aExp == 0)
     468:	14400025 	bnez	v0,500 <float64_div+0x190>
     46c:	3c030010 	lui	v1,0x10
    {
      if (aSig == 0)
     470:	02a51025 	or	v0,s5,a1
     474:	10400100 	beqz	v0,878 <float64_div+0x508>
     478:	00000000 	sll	zero,zero,0x0
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
     47c:	12a0021b 	beqz	s5,cec <float64_div+0x97c>
     480:	00a01821 	addu	v1,a1,zero
    {
      shiftCount += 32;
    }
  else
    {
      a >>= 32;
     484:	02a01821 	addu	v1,s5,zero
     488:	2402fff5 	addiu	v0,zero,-11
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
     48c:	3c040001 	lui	a0,0x1
     490:	0064202b 	sltu	a0,v1,a0
     494:	10800217 	beqz	a0,cf4 <float64_div+0x984>
     498:	24070008 	addiu	a3,zero,8
    {
      shiftCount += 16;
      a <<= 16;
     49c:	00031c00 	sll	v1,v1,0x10
     4a0:	24070018 	addiu	a3,zero,24
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
    {
      shiftCount += 16;
     4a4:	24040010 	addiu	a0,zero,16
      a <<= 16;
    }
  if (a < 0x1000000)
     4a8:	3c060100 	lui	a2,0x100
     4ac:	0066302b 	sltu	a2,v1,a2
     4b0:	10c00003 	beqz	a2,4c0 <float64_div+0x150>
     4b4:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
      a <<= 8;
     4b8:	00031a00 	sll	v1,v1,0x8
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
    {
      shiftCount += 8;
     4bc:	00e02021 	addu	a0,a3,zero
      a <<= 8;
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
     4c0:	00031e02 	srl	v1,v1,0x18
     4c4:	3c060000 	lui	a2,0x0
     4c8:	00031880 	sll	v1,v1,0x2
     4cc:	24c60210 	addiu	a2,a2,528
     4d0:	00661821 	addu	v1,v1,a2
static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
     4d4:	8c630000 	lw	v1,0(v1)
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
     4d8:	00821021 	addu	v0,a0,v0
     4dc:	00431021 	addu	v0,v0,v1
  *zSigPtr = aSig << shiftCount;
     4e0:	30430020 	andi	v1,v0,0x20
     4e4:	106001f9 	beqz	v1,ccc <float64_div+0x95c>
     4e8:	00052042 	srl	a0,a1,0x1
     4ec:	0045a804 	sllv	s5,a1,v0
  *zExpPtr = 1 - shiftCount;
     4f0:	24050001 	addiu	a1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
     4f4:	00004021 	addu	t0,zero,zero
  *zExpPtr = 1 - shiftCount;
     4f8:	00a21023 	subu	v0,a1,v0
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
     4fc:	3c030010 	lui	v1,0x10
     500:	02a3a825 	or	s5,s5,v1
     504:	00082582 	srl	a0,t0,0x16
     508:	0015aa80 	sll	s5,s5,0xa
     50c:	0095a825 	or	s5,a0,s5
     510:	0008a280 	sll	s4,t0,0xa
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
     514:	02038025 	or	s0,s0,v1
  if (bSig <= (aSig + aSig))
     518:	000842c0 	sll	t0,t0,0xb
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
     51c:	00112d42 	srl	a1,s1,0x15
  if (bSig <= (aSig + aSig))
     520:	0114202b 	sltu	a0,t0,s4
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
     524:	001082c0 	sll	s0,s0,0xb
  if (bSig <= (aSig + aSig))
     528:	00151840 	sll	v1,s5,0x1
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
     52c:	00b08025 	or	s0,a1,s0
  if (bSig <= (aSig + aSig))
     530:	00831821 	addu	v1,a0,v1
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
     534:	00539823 	subu	s3,v0,s3
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  if (bSig <= (aSig + aSig))
     538:	0070202b 	sltu	a0,v1,s0
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    }
  zExp = aExp - bExp + 0x3FD;
     53c:	267303fd 	addiu	s3,s3,1021
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  if (bSig <= (aSig + aSig))
     540:	14800006 	bnez	a0,55c <float64_div+0x1ec>
     544:	00118ac0 	sll	s1,s1,0xb
     548:	1603016f 	bne	s0,v1,b08 <float64_div+0x798>
     54c:	001517c0 	sll	v0,s5,0x1f
     550:	0111402b 	sltu	t0,t0,s1
     554:	1100016c 	beqz	t0,b08 <float64_div+0x798>
     558:	00000000 	sll	zero,zero,0x0
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
     55c:	02b0102b 	sltu	v0,s5,s0
     560:	104000d5 	beqz	v0,8b8 <float64_div+0x548>
     564:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
     568:	1440019b 	bnez	v0,bd8 <float64_div+0x868>
     56c:	02a02021 	addu	a0,s5,zero
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
     570:	00101400 	sll	v0,s0,0x10
     574:	00501823 	subu	v1,v0,s0
     578:	0043102b 	sltu	v0,v0,v1
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     57c:	00115c00 	sll	t3,s1,0x10
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
     580:	00104402 	srl	t0,s0,0x10
     584:	01024023 	subu	t0,t0,v0
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     588:	01711023 	subu	v0,t3,s1
     58c:	0162582b 	sltu	t3,t3,v0
     590:	00115402 	srl	t2,s1,0x10
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
     594:	00032c02 	srl	a1,v1,0x10
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     598:	014b5023 	subu	t2,t2,t3
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
     59c:	00084c00 	sll	t1,t0,0x10
     5a0:	00032400 	sll	a0,v1,0x10
     5a4:	00642021 	addu	a0,v1,a0
     5a8:	00a94825 	or	t1,a1,t1
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     5ac:	00025c02 	srl	t3,v0,0x10
     5b0:	00026400 	sll	t4,v0,0x10
     5b4:	000a2c00 	sll	a1,t2,0x10
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
     5b8:	0083182b 	sltu	v1,a0,v1
     5bc:	01094821 	addu	t1,t0,t1
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     5c0:	004c6021 	addu	t4,v0,t4
     5c4:	01652825 	or	a1,t3,a1
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
     5c8:	00691821 	addu	v1,v1,t1
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     5cc:	0182102b 	sltu	v0,t4,v0
     5d0:	01452821 	addu	a1,t2,a1
     5d4:	00457821 	addu	t7,v0,a1
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
     5d8:	00603021 	addu	a2,v1,zero
     5dc:	00803821 	addu	a3,a0,zero
     5e0:	00002821 	addu	a1,zero,zero
     5e4:	00002021 	addu	a0,zero,zero
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
     5e8:	00001821 	addu	v1,zero,zero
     5ec:	2402ffff 	addiu	v0,zero,-1
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     5f0:	00004021 	addu	t0,zero,zero
  zMiddleA <<= 32;
  z1 += zMiddleA;
     5f4:	01845821 	addu	t3,t4,a0
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     5f8:	02877023 	subu	t6,s4,a3
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     5fc:	01656825 	or	t5,t3,a1
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     600:	01cf2023 	subu	a0,t6,t7
     604:	028e502b 	sltu	t2,s4,t6
     608:	02a63023 	subu	a2,s5,a2
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     60c:	000d682b 	sltu	t5,zero,t5
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     610:	000b3823 	negu	a3,t3
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     614:	00ca3023 	subu	a2,a2,t2
     618:	01c4702b 	sltu	t6,t6,a0
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     61c:	0005282b 	sltu	a1,zero,a1
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     620:	008d6823 	subu	t5,a0,t5
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     624:	00e52823 	subu	a1,a3,a1
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     628:	00ce7023 	subu	t6,a2,t6
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     62c:	008d202b 	sltu	a0,a0,t5
     630:	016c602b 	sltu	t4,t3,t4
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     634:	00a03821 	addu	a3,a1,zero
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     638:	01c47023 	subu	t6,t6,a0
     63c:	240b0001 	addiu	t3,zero,1
     640:	15800003 	bnez	t4,650 <float64_div+0x2e0>
     644:	00005021 	addu	t2,zero,zero
     648:	00005821 	addu	t3,zero,zero
     64c:	00005021 	addu	t2,zero,zero
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     650:	01ab2023 	subu	a0,t5,t3
     654:	01a4682b 	sltu	t5,t5,a0
     658:	01ca5023 	subu	t2,t6,t2
     65c:	014d5023 	subu	t2,t2,t5
     660:	01484023 	subu	t0,t2,t0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
     664:	0501020d 	bgez	t0,e9c <float64_div+0xb2c>
     668:	00000000 	sll	zero,zero,0x0
     66c:	0040b021 	addu	s6,v0,zero
     670:	0800019f 	j	67c <float64_div+0x30c>
     674:	0060b821 	addu	s7,v1,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
     678:	00c03821 	addu	a3,a2,zero
     67c:	00f13021 	addu	a2,a3,s1
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     680:	00c7382b 	sltu	a3,a2,a3
     684:	24030001 	addiu	v1,zero,1
     688:	00001021 	addu	v0,zero,zero
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    {
      z -= LIT64 (0x100000000);
     68c:	26d6ffff 	addiu	s6,s6,-1
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     690:	14e00003 	bnez	a3,6a0 <float64_div+0x330>
     694:	00c02821 	addu	a1,a2,zero
     698:	00001821 	addu	v1,zero,zero
     69c:	00001021 	addu	v0,zero,zero
     6a0:	02033821 	addu	a3,s0,v1
     6a4:	00e3482b 	sltu	t1,a3,v1
     6a8:	01221021 	addu	v0,t1,v0
     6ac:	00873821 	addu	a3,a0,a3
     6b0:	00e4202b 	sltu	a0,a3,a0
     6b4:	01024021 	addu	t0,t0,v0
     6b8:	00884021 	addu	t0,a0,t0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
     6bc:	0500ffee 	bltz	t0,678 <float64_div+0x308>
     6c0:	00e02021 	addu	a0,a3,zero
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    }
  rem0 = (rem0 << 32) | (rem1 >> 32);
  z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
     6c4:	0090102b 	sltu	v0,a0,s0
     6c8:	1440015d 	bnez	v0,c40 <float64_div+0x8d0>
     6cc:	00000000 	sll	zero,zero,0x0
     6d0:	2405ffff 	addiu	a1,zero,-1
     6d4:	00002021 	addu	a0,zero,zero
     6d8:	00b71825 	or	v1,a1,s7
     6dc:	00961025 	or	v0,a0,s6
    {
      aSig >>= 1;
      ++zExp;
    }
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
     6e0:	306401ff 	andi	a0,v1,0x1ff
     6e4:	2c840003 	sltiu	a0,a0,3
     6e8:	10800139 	beqz	a0,bd0 <float64_div+0x860>
     6ec:	00700019 	multu	v1,s0
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
     6f0:	00003010 	mfhi	a2
     6f4:	00003812 	mflo	a3
	...
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     700:	00510019 	multu	v0,s1
     704:	00002812 	mflo	a1
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     708:	00a76021 	addu	t4,a1,a3
     70c:	0185482b 	sltu	t1,t4,a1
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     710:	00002010 	mfhi	a0
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     714:	00862021 	addu	a0,a0,a2
     718:	01242021 	addu	a0,t1,a0

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
     71c:	00710019 	multu	v1,s1
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     720:	0086282b 	sltu	a1,a0,a2

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
     724:	00005812 	mflo	t3
     728:	00005010 	mfhi	t2
	...
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
     734:	00500019 	multu	v0,s0
     738:	00004812 	mflo	t1
     73c:	00004010 	mfhi	t0
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     740:	14a001a5 	bnez	a1,dd8 <float64_div+0xa68>
     744:	00000000 	sll	zero,zero,0x0
     748:	108601a1 	beq	a0,a2,dd0 <float64_div+0xa60>
     74c:	0187282b 	sltu	a1,t4,a3
     750:	00003021 	addu	a2,zero,zero
  zMiddleA <<= 32;
  z1 += zMiddleA;
     754:	018a2821 	addu	a1,t4,t2
     758:	01607021 	addu	t6,t3,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     75c:	02895023 	subu	t2,s4,t1
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     760:	00ab5825 	or	t3,a1,t3
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     764:	01442023 	subu	a0,t2,a0
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     768:	000e7023 	negu	t6,t6
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     76c:	028aa02b 	sltu	s4,s4,t2
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     770:	000b482b 	sltu	t1,zero,t3
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     774:	02a84023 	subu	t0,s5,t0
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     778:	000e582b 	sltu	t3,zero,t6
     77c:	00057823 	negu	t7,a1
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     780:	0144502b 	sltu	t2,t2,a0
     784:	01144023 	subu	t0,t0,s4
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     788:	00894823 	subu	t1,a0,t1
     78c:	0089202b 	sltu	a0,a0,t1
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     790:	01eb7823 	subu	t7,t7,t3
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     794:	010a5023 	subu	t2,t0,t2
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     798:	00ac602b 	sltu	t4,a1,t4
     79c:	01445023 	subu	t2,t2,a0
INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
     7a0:	01e05821 	addu	t3,t7,zero
     7a4:	01c06821 	addu	t5,t6,zero
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     7a8:	24050001 	addiu	a1,zero,1
     7ac:	1180016b 	beqz	t4,d5c <float64_div+0x9ec>
     7b0:	00002021 	addu	a0,zero,zero
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{

  *z1Ptr = a1 - b1;
  *z0Ptr = a0 - b0 - (a1 < b1);
     7b4:	01256023 	subu	t4,t1,a1
     7b8:	012c482b 	sltu	t1,t1,t4
     7bc:	01442023 	subu	a0,t2,a0
     7c0:	00892023 	subu	a0,a0,t1
     7c4:	00863023 	subu	a2,a0,a2
    {
      mul64To128 (bSig, zSig, &term0, &term1);
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
      while ((sbits64) rem0 < 0)
     7c8:	04c100fd 	bgez	a2,bc0 <float64_div+0x850>
     7cc:	01c02021 	addu	a0,t6,zero
	{
	  --zSig;
     7d0:	2468ffff 	addiu	t0,v1,-1
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
     7d4:	01b15021 	addu	t2,t5,s1
     7d8:	0103482b 	sltu	t1,t0,v1
     7dc:	014d382b 	sltu	a3,t2,t5
     7e0:	01701821 	addu	v1,t3,s0
     7e4:	00e33821 	addu	a3,a3,v1
     7e8:	01002821 	addu	a1,t0,zero
     7ec:	2442ffff 	addiu	v0,v0,-1
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     7f0:	00eb702b 	sltu	t6,a3,t3
     7f4:	01221021 	addu	v0,t1,v0
     7f8:	00004021 	addu	t0,zero,zero
     7fc:	24090001 	addiu	t1,zero,1
     800:	00a01821 	addu	v1,a1,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
     804:	00e07821 	addu	t7,a3,zero
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     808:	15c00005 	bnez	t6,820 <float64_div+0x4b0>
     80c:	01402021 	addu	a0,t2,zero
     810:	116700c5 	beq	t3,a3,b28 <float64_div+0x7b8>
     814:	00000000 	sll	zero,zero,0x0
     818:	00004821 	addu	t1,zero,zero
     81c:	00004021 	addu	t0,zero,zero
     820:	01892821 	addu	a1,t4,t1
     824:	00ac602b 	sltu	t4,a1,t4
     828:	00c83021 	addu	a2,a2,t0
     82c:	01863021 	addu	a2,t4,a2
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
    {
      mul64To128 (bSig, zSig, &term0, &term1);
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
      while ((sbits64) rem0 < 0)
     830:	04c100e3 	bgez	a2,bc0 <float64_div+0x850>
     834:	00a06021 	addu	t4,a1,zero
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
  bits64 z1;

  z1 = a1 + b1;
     838:	00e05821 	addu	t3,a3,zero
     83c:	080001f4 	j	7d0 <float64_div+0x460>
     840:	01406821 	addu	t5,t2,zero
  bExp = extractFloat64Exp (b);
  bSign = extractFloat64Sign (b);
  zSign = aSign ^ bSign;
  if (aExp == 0x7FF)
    {
      if (aSig)
     844:	02a5a825 	or	s5,s5,a1
     848:	16a0012c 	bnez	s5,cfc <float64_div+0x98c>
     84c:	00041cc2 	srl	v1,a0,0x13
	return propagateFloat64NaN (a, b);
      if (bExp == 0x7FF)
     850:	1262006f 	beq	s3,v0,a10 <float64_div+0x6a0>
     854:	001297c0 	sll	s2,s2,0x1f

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     858:	3c027ff0 	lui	v0,0x7ff0
	  if (bSig)
	    return propagateFloat64NaN (a, b);
	  float_raise (float_flag_invalid);
	  return float64_default_nan;
	}
      return packFloat64 (zSign, 0x7FF, 0);
     85c:	02421021 	addu	v0,s2,v0
     860:	00404021 	addu	t0,v0,zero
     864:	08000221 	j	884 <float64_div+0x514>
     868:	00004821 	addu	t1,zero,zero
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
     86c:	02078025 	or	s0,s0,a3
     870:	1600008a 	bnez	s0,a9c <float64_div+0x72c>
     874:	00041cc2 	srl	v1,a0,0x13
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    }
  if (aExp == 0)
    {
      if (aSig == 0)
	return packFloat64 (zSign, 0, 0);
     878:	001297c0 	sll	s2,s2,0x1f
     87c:	02404021 	addu	t0,s2,zero
     880:	00004821 	addu	t1,zero,zero
	}
      zSig |= (rem1 != 0);
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);

}
     884:	8fbf0034 	lw	ra,52(sp)
     888:	01001021 	addu	v0,t0,zero
     88c:	01201821 	addu	v1,t1,zero
     890:	8fb70030 	lw	s7,48(sp)
     894:	8fb6002c 	lw	s6,44(sp)
     898:	8fb50028 	lw	s5,40(sp)
     89c:	8fb40024 	lw	s4,36(sp)
     8a0:	8fb30020 	lw	s3,32(sp)
     8a4:	8fb2001c 	lw	s2,28(sp)
     8a8:	8fb10018 	lw	s1,24(sp)
     8ac:	8fb00014 	lw	s0,20(sp)
     8b0:	03e00008 	jr	ra
     8b4:	27bd0038 	addiu	sp,sp,56
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
     8b8:	16150004 	bne	s0,s5,8cc <float64_div+0x55c>
     8bc:	240903ff 	addiu	t1,zero,1023
     8c0:	0291182b 	sltu	v1,s4,s1
     8c4:	1460ff28 	bnez	v1,568 <float64_div+0x1f8>
     8c8:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
     8cc:	2403ffff 	addiu	v1,zero,-1
     8d0:	2402ffff 	addiu	v0,zero,-1
{
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
     8d4:	8f840000 	lw	a0,0(gp)
     8d8:	00000000 	sll	zero,zero,0x0
  roundNearestEven = (roundingMode == float_round_nearest_even);
     8dc:	2c880001 	sltiu	t0,a0,1
  roundIncrement = 0x200;
  if (!roundNearestEven)
     8e0:	1500009d 	bnez	t0,b58 <float64_div+0x7e8>
     8e4:	326bffff 	andi	t3,s3,0xffff
    {
      if (roundingMode == float_round_to_zero)
     8e8:	24050001 	addiu	a1,zero,1
     8ec:	10850095 	beq	a0,a1,b44 <float64_div+0x7d4>
     8f0:	00002821 	addu	a1,zero,zero
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
     8f4:	12400091 	beqz	s2,b3c <float64_div+0x7cc>
     8f8:	24050003 	addiu	a1,zero,3
	    {
	      if (roundingMode == float_round_up)
     8fc:	24050002 	addiu	a1,zero,2
     900:	10850090 	beq	a0,a1,b44 <float64_div+0x7d4>
     904:	00002821 	addu	a1,zero,zero
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
     908:	240503ff 	addiu	a1,zero,1023
     90c:	00002021 	addu	a0,zero,zero
     910:	00003821 	addu	a3,zero,zero
     914:	00003021 	addu	a2,zero,zero
	{
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
     918:	240a03ff 	addiu	t2,zero,1023
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
     91c:	326bffff 	andi	t3,s3,0xffff
     920:	2d6b07fd 	sltiu	t3,t3,2045
     924:	15600094 	bnez	t3,b78 <float64_div+0x808>
     928:	00a35821 	addu	t3,a1,v1
    {
      if ((0x7FD < zExp)
     92c:	2a6b07fe 	slti	t3,s3,2046
     930:	116000ce 	beqz	t3,c6c <float64_div+0x8fc>
     934:	00000000 	sll	zero,zero,0x0
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
     938:	240b07fd 	addiu	t3,zero,2045
     93c:	126b00c6 	beq	s3,t3,c58 <float64_div+0x8e8>
     940:	00a35821 	addu	t3,a1,v1
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
	}
      if (zExp < 0)
     944:	06600107 	bltz	s3,d64 <float64_div+0x9f4>
     948:	01435821 	addu	t3,t2,v1
     94c:	016a502b 	sltu	t2,t3,t2
     950:	01425021 	addu	t2,t2,v0
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
     954:	1120008c 	beqz	t1,b88 <float64_div+0x818>
     958:	00000000 	sll	zero,zero,0x0
     95c:	8f870000 	lw	a3,0(gp)
    float_exception_flags |= float_flag_inexact;
     960:	39260200 	xori	a2,t1,0x200
     964:	2cc60001 	sltiu	a2,a2,1
     968:	00c84024 	and	t0,a2,t0
     96c:	00655821 	addu	t3,v1,a1
     970:	00083027 	nor	a2,zero,t0
     974:	34e70001 	ori	a3,a3,0x1
     978:	0163502b 	sltu	t2,t3,v1
     97c:	00441021 	addu	v0,v0,a0
     980:	00c04821 	addu	t1,a2,zero
     984:	af870000 	sw	a3,0(gp)
     988:	000647c3 	sra	t0,a2,0x1f
     98c:	01425021 	addu	t2,t2,v0
  zSig = (zSig + roundIncrement) >> 10;
     990:	000a1580 	sll	v0,t2,0x16
     994:	000b1a82 	srl	v1,t3,0xa
     998:	00431825 	or	v1,v0,v1
     99c:	000a5282 	srl	t2,t2,0xa
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
     9a0:	01485024 	and	t2,t2,t0
     9a4:	00691824 	and	v1,v1,t1
  if (zSig == 0)
     9a8:	01431025 	or	v0,t2,v1
     9ac:	10400081 	beqz	v0,bb4 <float64_div+0x844>
     9b0:	00000000 	sll	zero,zero,0x0
     9b4:	00133500 	sll	a2,s3,0x14
     9b8:	00003821 	addu	a3,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     9bc:	001297c0 	sll	s2,s2,0x1f
     9c0:	00672821 	addu	a1,v1,a3
     9c4:	01525021 	addu	t2,t2,s2
     9c8:	00a3182b 	sltu	v1,a1,v1
     9cc:	01463021 	addu	a2,t2,a2
     9d0:	00661821 	addu	v1,v1,a2
     9d4:	00604021 	addu	t0,v1,zero
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);
     9d8:	08000221 	j	884 <float64_div+0x514>
     9dc:	00a04821 	addu	t1,a1,zero
    }
  if (bExp == 0)
    {
      if (bSig == 0)
	{
	  if ((aExp | aSig) == 0)
     9e0:	0075a825 	or	s5,v1,s5
     9e4:	00451025 	or	v0,v0,a1
     9e8:	02a21025 	or	v0,s5,v0
     9ec:	1440011e 	bnez	v0,e68 <float64_div+0xaf8>
     9f0:	001297c0 	sll	s2,s2,0x1f
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
     9f4:	8f820000 	lw	v0,0(gp)
	    {
	      float_raise (float_flag_invalid);
	      return float64_default_nan;
     9f8:	3c087fff 	lui	t0,0x7fff
     9fc:	34420010 	ori	v0,v0,0x10
     a00:	2409ffff 	addiu	t1,zero,-1
     a04:	3508ffff 	ori	t0,t0,0xffff
     a08:	08000221 	j	884 <float64_div+0x514>
     a0c:	af820000 	sw	v0,0(gp)
    {
      if (aSig)
	return propagateFloat64NaN (a, b);
      if (bExp == 0x7FF)
	{
	  if (bSig)
     a10:	02078025 	or	s0,s0,a3
     a14:	1200fff7 	beqz	s0,9f4 <float64_div+0x684>
     a18:	00041cc2 	srl	v1,a0,0x13

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     a1c:	30630fff 	andi	v1,v1,0xfff
     a20:	24020ffe 	addiu	v0,zero,4094
     a24:	10620137 	beq	v1,v0,f04 <float64_div+0xb94>
     a28:	3c0a0007 	lui	t2,0x7
     a2c:	00005021 	addu	t2,zero,zero
     a30:	00061cc2 	srl	v1,a2,0x13
     a34:	30630fff 	andi	v1,v1,0xfff
     a38:	24020ffe 	addiu	v0,zero,4094
     a3c:	1062012c 	beq	v1,v0,ef0 <float64_div+0xb80>
     a40:	3c030007 	lui	v1,0x7
     a44:	00001821 	addu	v1,zero,zero

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
     a48:	3c020008 	lui	v0,0x8
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
     a4c:	006a5825 	or	t3,v1,t2
  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
     a50:	00c24025 	or	t0,a2,v0
     a54:	00e04821 	addu	t1,a3,zero
  if (aIsSignalingNaN | bIsSignalingNaN)
     a58:	15600117 	bnez	t3,eb8 <float64_div+0xb48>
     a5c:	00821025 	or	v0,a0,v0

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     a60:	000727c2 	srl	a0,a3,0x1f
     a64:	00063040 	sll	a2,a2,0x1
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
     a68:	3c03ffe0 	lui	v1,0xffe0

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     a6c:	00863025 	or	a2,a0,a2
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
     a70:	24640001 	addiu	a0,v1,1
     a74:	00c4202b 	sltu	a0,a2,a0
     a78:	1080ff82 	beqz	a0,884 <float64_div+0x514>
     a7c:	00073840 	sll	a3,a3,0x1
     a80:	14c30003 	bne	a2,v1,a90 <float64_div+0x720>
     a84:	00000000 	sll	zero,zero,0x0
     a88:	14e0ff7e 	bnez	a3,884 <float64_div+0x514>
     a8c:	00000000 	sll	zero,zero,0x0
     a90:	00404021 	addu	t0,v0,zero
	    return propagateFloat64NaN (a, b);
     a94:	08000221 	j	884 <float64_div+0x514>
     a98:	00a04821 	addu	t1,a1,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     a9c:	30630fff 	andi	v1,v1,0xfff
     aa0:	24020ffe 	addiu	v0,zero,4094
     aa4:	106200ce 	beq	v1,v0,de0 <float64_div+0xa70>
     aa8:	3c0a0007 	lui	t2,0x7
     aac:	00005021 	addu	t2,zero,zero
     ab0:	00061cc2 	srl	v1,a2,0x13
     ab4:	30630fff 	andi	v1,v1,0xfff
     ab8:	24020ffe 	addiu	v0,zero,4094
     abc:	106200f2 	beq	v1,v0,e88 <float64_div+0xb18>
     ac0:	3c030007 	lui	v1,0x7
     ac4:	00001821 	addu	v1,zero,zero

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
     ac8:	3c020008 	lui	v0,0x8
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
     acc:	006a5825 	or	t3,v1,t2
  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
     ad0:	00c24025 	or	t0,a2,v0

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
     ad4:	00822025 	or	a0,a0,v0
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
     ad8:	116000d3 	beqz	t3,e28 <float64_div+0xab8>
     adc:	00e04821 	addu	t1,a3,zero
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
     ae0:	8f820000 	lw	v0,0(gp)
     ae4:	00000000 	sll	zero,zero,0x0
     ae8:	34420010 	ori	v0,v0,0x10
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
     aec:	1460ff65 	bnez	v1,884 <float64_div+0x514>
     af0:	af820000 	sw	v0,0(gp)
     af4:	114000cd 	beqz	t2,e2c <float64_div+0xabc>
     af8:	00071fc2 	srl	v1,a3,0x1f
     afc:	00804021 	addu	t0,a0,zero
      return packFloat64 (zSign, 0x7FF, 0);
    }
  if (bExp == 0x7FF)
    {
      if (bSig)
	return propagateFloat64NaN (a, b);
     b00:	08000221 	j	884 <float64_div+0x514>
     b04:	00a04821 	addu	t1,a1,zero
  zExp = aExp - bExp + 0x3FD;
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
  if (bSig <= (aSig + aSig))
    {
      aSig >>= 1;
     b08:	0014a042 	srl	s4,s4,0x1
     b0c:	0015a842 	srl	s5,s5,0x1
     b10:	0054a025 	or	s4,v0,s4
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
     b14:	02b0102b 	sltu	v0,s5,s0
     b18:	1440fe93 	bnez	v0,568 <float64_div+0x1f8>
     b1c:	26730001 	addiu	s3,s3,1
     b20:	0800022e 	j	8b8 <float64_div+0x548>
     b24:	00000000 	sll	zero,zero,0x0
{
  bits64 z1;

  z1 = a1 + b1;
  *z1Ptr = z1;
  *z0Ptr = a0 + b0 + (z1 < a1);
     b28:	014d682b 	sltu	t5,t2,t5
     b2c:	15a0ff3d 	bnez	t5,824 <float64_div+0x4b4>
     b30:	01892821 	addu	a1,t4,t1
     b34:	08000207 	j	81c <float64_div+0x4ac>
     b38:	00004821 	addu	t1,zero,zero
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
     b3c:	1485ff72 	bne	a0,a1,908 <float64_div+0x598>
     b40:	00002821 	addu	a1,zero,zero
     b44:	00002021 	addu	a0,zero,zero
     b48:	24070001 	addiu	a3,zero,1
     b4c:	00003021 	addu	a2,zero,zero
		roundIncrement = 0;
     b50:	08000247 	j	91c <float64_div+0x5ac>
     b54:	00005021 	addu	t2,zero,zero
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
     b58:	2d6b07fd 	sltiu	t3,t3,2045
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
  roundNearestEven = (roundingMode == float_round_nearest_even);
  roundIncrement = 0x200;
  if (!roundNearestEven)
     b5c:	24050200 	addiu	a1,zero,512
     b60:	00002021 	addu	a0,zero,zero
     b64:	00003821 	addu	a3,zero,zero
     b68:	00003021 	addu	a2,zero,zero
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
     b6c:	1160ff6f 	beqz	t3,92c <float64_div+0x5bc>
     b70:	240a0200 	addiu	t2,zero,512
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
     b74:	00a35821 	addu	t3,a1,v1
     b78:	0165502b 	sltu	t2,t3,a1
     b7c:	00823021 	addu	a2,a0,v0
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
     b80:	1520ff76 	bnez	t1,95c <float64_div+0x5ec>
     b84:	01465021 	addu	t2,t2,a2
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
     b88:	000a1580 	sll	v0,t2,0x16
     b8c:	000b1a82 	srl	v1,t3,0xa
     b90:	00431825 	or	v1,v0,v1
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
     b94:	2409ffff 	addiu	t1,zero,-1
     b98:	2408ffff 	addiu	t0,zero,-1
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
     b9c:	000a5282 	srl	t2,t2,0xa
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
     ba0:	01485024 	and	t2,t2,t0
     ba4:	00691824 	and	v1,v1,t1
  if (zSig == 0)
     ba8:	01431025 	or	v0,t2,v1
     bac:	1440ff81 	bnez	v0,9b4 <float64_div+0x644>
     bb0:	00000000 	sll	zero,zero,0x0
     bb4:	00003821 	addu	a3,zero,zero
     bb8:	0800026f 	j	9bc <float64_div+0x64c>
     bbc:	00003021 	addu	a2,zero,zero
      while ((sbits64) rem0 < 0)
	{
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
     bc0:	01e47825 	or	t7,t7,a0
     bc4:	000f782b 	sltu	t7,zero,t7
     bc8:	01e37825 	or	t7,t7,v1
     bcc:	01e01821 	addu	v1,t7,zero
     bd0:	08000235 	j	8d4 <float64_div+0x564>
     bd4:	306903ff 	andi	t1,v1,0x3ff
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
     bd8:	02802821 	addu	a1,s4,zero
     bdc:	00003021 	addu	a2,zero,zero
     be0:	0c000000 	jal	0 <shift64RightJamming>
     be4:	02003821 	addu	a3,s0,zero
     be8:	00602021 	addu	a0,v1,zero
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     bec:	02240019 	multu	s1,a0
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
     bf0:	00601021 	addu	v0,v1,zero
     bf4:	00005821 	addu	t3,zero,zero
     bf8:	00001821 	addu	v1,zero,zero
     bfc:	00002821 	addu	a1,zero,zero
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     c00:	00004812 	mflo	t1
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     c04:	012b6021 	addu	t4,t1,t3
     c08:	0189782b 	sltu	t7,t4,t1
  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
     c0c:	00004010 	mfhi	t0
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
     c10:	01e87821 	addu	t7,t7,t0
     c14:	00000000 	sll	zero,zero,0x0
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
     c18:	00500019 	multu	v0,s0
     c1c:	00003812 	mflo	a3
     c20:	00003010 	mfhi	a2
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     c24:	15e0008e 	bnez	t7,e60 <float64_div+0xaf0>
     c28:	00002021 	addu	a0,zero,zero
     c2c:	018b402b 	sltu	t0,t4,t3
     c30:	1100008b 	beqz	t0,e60 <float64_div+0xaf0>
     c34:	00000000 	sll	zero,zero,0x0
     c38:	0800017d 	j	5f4 <float64_div+0x284>
     c3c:	24080001 	addiu	t0,zero,1
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    }
  rem0 = (rem0 << 32) | (rem1 >> 32);
  z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
     c40:	00003021 	addu	a2,zero,zero
     c44:	0c000000 	jal	0 <shift64RightJamming>
     c48:	02003821 	addu	a3,s0,zero
     c4c:	00402021 	addu	a0,v0,zero
     c50:	080001b6 	j	6d8 <float64_div+0x368>
     c54:	00602821 	addu	a1,v1,zero
    }
  roundBits = zSig & 0x3FF;
  if (0x7FD <= (bits16) zExp)
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
     c58:	0165602b 	sltu	t4,t3,a1
     c5c:	00825021 	addu	t2,a0,v0
     c60:	018a5021 	addu	t2,t4,t2
     c64:	0541ff3b 	bgez	t2,954 <float64_div+0x5e4>
     c68:	00000000 	sll	zero,zero,0x0

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     c6c:	001297c0 	sll	s2,s2,0x1f
     c70:	3c027ff0 	lui	v0,0x7ff0
     c74:	02421021 	addu	v0,s2,v0
    {
      if ((0x7FD < zExp)
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
     c78:	00461023 	subu	v0,v0,a2
     c7c:	00471023 	subu	v0,v0,a3
     c80:	00404021 	addu	t0,v0,zero
     c84:	8f820000 	lw	v0,0(gp)
     c88:	00071823 	negu	v1,a3
     c8c:	34420009 	ori	v0,v0,0x9
     c90:	00604821 	addu	t1,v1,zero
     c94:	08000221 	j	884 <float64_div+0x514>
     c98:	af820000 	sw	v0,0(gp)
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
     c9c:	00072042 	srl	a0,a3,0x1
     ca0:	00641806 	srlv	v1,a0,v1
     ca4:	02708004 	sllv	s0,s0,s3
     ca8:	00708025 	or	s0,v1,s0
  *zExpPtr = 1 - shiftCount;
     cac:	24030001 	addiu	v1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
     cb0:	02678804 	sllv	s1,a3,s3
  *zExpPtr = 1 - shiftCount;
     cb4:	0800011a 	j	468 <float64_div+0xf8>
     cb8:	00739823 	subu	s3,v1,s3
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
     cbc:	08000105 	j	414 <float64_div+0xa4>
     cc0:	00002021 	addu	a0,zero,zero
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
     cc4:	080000fe 	j	3f8 <float64_div+0x88>
     cc8:	24130015 	addiu	s3,zero,21
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
     ccc:	00021827 	nor	v1,zero,v0
     cd0:	0055a804 	sllv	s5,s5,v0
     cd4:	00454004 	sllv	t0,a1,v0
     cd8:	00641806 	srlv	v1,a0,v1
  *zExpPtr = 1 - shiftCount;
     cdc:	24050001 	addiu	a1,zero,1
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
  *zSigPtr = aSig << shiftCount;
     ce0:	0075a825 	or	s5,v1,s5
  *zExpPtr = 1 - shiftCount;
     ce4:	0800013f 	j	4fc <float64_div+0x18c>
     ce8:	00a21023 	subu	v0,a1,v0
     cec:	08000123 	j	48c <float64_div+0x11c>
     cf0:	24020015 	addiu	v0,zero,21
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
     cf4:	0800012a 	j	4a8 <float64_div+0x138>
     cf8:	00002021 	addu	a0,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     cfc:	30630fff 	andi	v1,v1,0xfff
     d00:	24020ffe 	addiu	v0,zero,4094
     d04:	10620041 	beq	v1,v0,e0c <float64_div+0xa9c>
     d08:	3c020007 	lui	v0,0x7
     d0c:	00001821 	addu	v1,zero,zero
     d10:	00005021 	addu	t2,zero,zero
     d14:	000644c2 	srl	t0,a2,0x13
     d18:	31080fff 	andi	t0,t0,0xfff
     d1c:	24020ffe 	addiu	v0,zero,4094
     d20:	11020034 	beq	t0,v0,df4 <float64_div+0xa84>
     d24:	3c0b0007 	lui	t3,0x7
     d28:	00005821 	addu	t3,zero,zero

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
     d2c:	3c020008 	lui	v0,0x8
  b |= LIT64 (0x0008000000000000);
     d30:	00c24025 	or	t0,a2,v0

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
  bIsNaN = float64_is_nan (b);
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
     d34:	00822025 	or	a0,a0,v0
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
     d38:	1060ff6e 	beqz	v1,af4 <float64_div+0x784>
     d3c:	00e04821 	addu	t1,a3,zero
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
     d40:	8f820000 	lw	v0,0(gp)
     d44:	00000000 	sll	zero,zero,0x0
     d48:	34420010 	ori	v0,v0,0x10
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
     d4c:	1560fecd 	bnez	t3,884 <float64_div+0x514>
     d50:	af820000 	sw	v0,0(gp)
     d54:	080002bd 	j	af4 <float64_div+0x784>
     d58:	00000000 	sll	zero,zero,0x0
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     d5c:	080001ed 	j	7b4 <float64_div+0x444>
     d60:	00002821 	addu	a1,zero,zero
      if (zExp < 0)
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
     d64:	00133023 	negu	a2,s3

  if (count == 0)
    {
      z = a;
    }
  else if (count < 64)
     d68:	28c70040 	slti	a3,a2,64
     d6c:	10e0005c 	beqz	a3,ee0 <float64_div+0xb70>
     d70:	30c70020 	andi	a3,a2,0x20
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     d74:	10e0006f 	beqz	a3,f34 <float64_div+0xbc4>
     d78:	00063827 	nor	a3,zero,a2
     d7c:	00c23806 	srlv	a3,v0,a2
     d80:	00003021 	addu	a2,zero,zero
     d84:	32690020 	andi	t1,s3,0x20
     d88:	11200063 	beqz	t1,f18 <float64_div+0xba8>
     d8c:	3273003f 	andi	s3,s3,0x3f
     d90:	02634804 	sllv	t1,v1,s3
     d94:	00009821 	addu	s3,zero,zero
     d98:	01334825 	or	t1,t1,s3
     d9c:	0009482b 	sltu	t1,zero,t1
     da0:	00c01021 	addu	v0,a2,zero
     da4:	01271825 	or	v1,t1,a3
	  zExp = 0;
	  roundBits = zSig & 0x3FF;
     da8:	306903ff 	andi	t1,v1,0x3ff
	  if (isTiny && roundBits)
     dac:	1520003e 	bnez	t1,ea8 <float64_div+0xb38>
     db0:	00655821 	addu	t3,v1,a1
     db4:	0163502b 	sltu	t2,t3,v1
     db8:	00441021 	addu	v0,v0,a0
     dbc:	01425021 	addu	t2,t2,v0
     dc0:	2409ffff 	addiu	t1,zero,-1
     dc4:	2408ffff 	addiu	t0,zero,-1
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
     dc8:	08000264 	j	990 <float64_div+0x620>
     dcc:	00009821 	addu	s3,zero,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     dd0:	10a0fe5f 	beqz	a1,750 <float64_div+0x3e0>
     dd4:	00000000 	sll	zero,zero,0x0
     dd8:	080001d5 	j	754 <float64_div+0x3e4>
     ddc:	24060001 	addiu	a2,zero,1

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     de0:	354affff 	ori	t2,t2,0xffff
     de4:	008a5024 	and	t2,a0,t2
     de8:	01455025 	or	t2,t2,a1
     dec:	080002ac 	j	ab0 <float64_div+0x740>
     df0:	000a502b 	sltu	t2,zero,t2
     df4:	356bffff 	ori	t3,t3,0xffff
     df8:	00cb5824 	and	t3,a2,t3
     dfc:	01675825 	or	t3,t3,a3
     e00:	000b582b 	sltu	t3,zero,t3
     e04:	0800034b 	j	d2c <float64_div+0x9bc>
     e08:	014b1825 	or	v1,t2,t3
     e0c:	3442ffff 	ori	v0,v0,0xffff
     e10:	00821024 	and	v0,a0,v0
     e14:	00451025 	or	v0,v0,a1
     e18:	1040ffbc 	beqz	v0,d0c <float64_div+0x99c>
     e1c:	24030001 	addiu	v1,zero,1
     e20:	08000345 	j	d14 <float64_div+0x9a4>
     e24:	240a0001 	addiu	t2,zero,1

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     e28:	00071fc2 	srl	v1,a3,0x1f
     e2c:	00063040 	sll	a2,a2,0x1
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
     e30:	3c02ffe0 	lui	v0,0xffe0

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     e34:	00663025 	or	a2,v1,a2
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
     e38:	24430001 	addiu	v1,v0,1
     e3c:	00c3182b 	sltu	v1,a2,v1
     e40:	1060fe90 	beqz	v1,884 <float64_div+0x514>
     e44:	00073840 	sll	a3,a3,0x1
     e48:	14c2ff2c 	bne	a2,v0,afc <float64_div+0x78c>
     e4c:	00000000 	sll	zero,zero,0x0
     e50:	14e0fe8c 	bnez	a3,884 <float64_div+0x514>
     e54:	00000000 	sll	zero,zero,0x0
     e58:	080002c0 	j	b00 <float64_div+0x790>
     e5c:	00804021 	addu	t0,a0,zero
     e60:	0800017d 	j	5f4 <float64_div+0x284>
     e64:	00004021 	addu	t0,zero,zero

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     e68:	3c027ff0 	lui	v0,0x7ff0
	    {
	      float_raise (float_flag_invalid);
	      return float64_default_nan;
	    }
	  float_raise (float_flag_divbyzero);
	  return packFloat64 (zSign, 0x7FF, 0);
     e6c:	02421021 	addu	v0,s2,v0
     e70:	00404021 	addu	t0,v0,zero
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
     e74:	8f820000 	lw	v0,0(gp)
     e78:	00004821 	addu	t1,zero,zero
     e7c:	34420002 	ori	v0,v0,0x2
     e80:	08000221 	j	884 <float64_div+0x514>
     e84:	af820000 	sw	v0,0(gp)

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     e88:	3463ffff 	ori	v1,v1,0xffff
     e8c:	00c31824 	and	v1,a2,v1
| by the corresponding value `b'.  The operation is performed according to
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
     e90:	00671825 	or	v1,v1,a3
     e94:	080002b2 	j	ac8 <float64_div+0x758>
     e98:	0003182b 	sltu	v1,zero,v1
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
     e9c:	0040b021 	addu	s6,v0,zero
     ea0:	080001b1 	j	6c4 <float64_div+0x354>
     ea4:	0060b821 	addu	s7,v1,zero
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
     ea8:	8f870000 	lw	a3,0(gp)
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
     eac:	00009821 	addu	s3,zero,zero
     eb0:	08000258 	j	960 <float64_div+0x5f0>
     eb4:	34e70004 	ori	a3,a3,0x4
     eb8:	8f840000 	lw	a0,0(gp)
     ebc:	00000000 	sll	zero,zero,0x0
     ec0:	34840010 	ori	a0,a0,0x10
  bIsSignalingNaN = float64_is_signaling_nan (b);
  a |= LIT64 (0x0008000000000000);
  b |= LIT64 (0x0008000000000000);
  if (aIsSignalingNaN | bIsSignalingNaN)
    float_raise (float_flag_invalid);
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
     ec4:	1460fe6f 	bnez	v1,884 <float64_div+0x514>
     ec8:	af840000 	sw	a0,0(gp)
     ecc:	1140fee4 	beqz	t2,a60 <float64_div+0x6f0>
     ed0:	00000000 	sll	zero,zero,0x0
     ed4:	00404021 	addu	t0,v0,zero
     ed8:	08000221 	j	884 <float64_div+0x514>
     edc:	00a04821 	addu	t1,a1,zero
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
    }
  else
    {
      z = (a != 0);
     ee0:	00433025 	or	a2,v0,v1
     ee4:	0006182b 	sltu	v1,zero,a2
     ee8:	0800036a 	j	da8 <float64_div+0xa38>
     eec:	00001021 	addu	v0,zero,zero

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     ef0:	3463ffff 	ori	v1,v1,0xffff
     ef4:	00c31824 	and	v1,a2,v1
| by the corresponding value `b'.  The operation is performed according to
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
     ef8:	00671825 	or	v1,v1,a3
     efc:	08000292 	j	a48 <float64_div+0x6d8>
     f00:	0003182b 	sltu	v1,zero,v1
     f04:	354affff 	ori	t2,t2,0xffff
     f08:	008a5024 	and	t2,a0,t2
     f0c:	01455025 	or	t2,t2,a1
     f10:	0800028c 	j	a30 <float64_div+0x6c0>
     f14:	000a502b 	sltu	t2,zero,t2
    {
      z = a;
    }
  else if (count < 64)
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     f18:	00134827 	nor	t1,zero,s3
     f1c:	00035042 	srl	t2,v1,0x1
     f20:	012a5006 	srlv	t2,t2,t1
     f24:	02624804 	sllv	t1,v0,s3
     f28:	01494825 	or	t1,t2,t1
     f2c:	08000366 	j	d98 <float64_div+0xa28>
     f30:	02639804 	sllv	s3,v1,s3
     f34:	00024840 	sll	t1,v0,0x1
     f38:	00e94804 	sllv	t1,t1,a3
     f3c:	00c33806 	srlv	a3,v1,a2
     f40:	01273825 	or	a3,t1,a3
     f44:	08000361 	j	d84 <float64_div+0xa14>
     f48:	00c23006 	srlv	a2,v0,a2

00000f4c <ullong_to_double>:
    unsigned long long ll;
  } t;

  t.ll = x;
  return t.d;
}
     f4c:	44850000 	mtc1	a1,$f0
     f50:	00000000 	sll	zero,zero,0x0
     f54:	44840800 	mtc1	a0,$f1
     f58:	03e00008 	jr	ra
     f5c:	00000000 	sll	zero,zero,0x0

00000f60 <main>:
  0x3FE5555555555555ULL		/* 0.666667 */
};

int
main ()
{
     f60:	27bdffa8 	addiu	sp,sp,-88
     f64:	afbe0050 	sw	s8,80(sp)
     f68:	afb7004c 	sw	s7,76(sp)
     f6c:	afb60048 	sw	s6,72(sp)
     f70:	3c170000 	lui	s7,0x0
     f74:	3c160000 	lui	s6,0x0
     f78:	3c1e0000 	lui	s8,0x0
     f7c:	afb50044 	sw	s5,68(sp)
     f80:	afb40040 	sw	s4,64(sp)
     f84:	afbf0054 	sw	ra,84(sp)
     f88:	afb3003c 	sw	s3,60(sp)
     f8c:	afb20038 	sw	s2,56(sp)
     f90:	afb10034 	sw	s1,52(sp)
     f94:	afb00030 	sw	s0,48(sp)
     f98:	0000a021 	addu	s4,zero,zero
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
     f9c:	0000a821 	addu	s5,zero,zero
     fa0:	26f70000 	addiu	s7,s7,0
     fa4:	26d60000 	addiu	s6,s6,0
     fa8:	27de0000 	addiu	s8,s8,0
  0xBFE5555555555555ULL,	/* -0.666667 */
  0x3FE5555555555555ULL		/* 0.666667 */
};

int
main ()
     fac:	02f41821 	addu	v1,s7,s4
     fb0:	02d41021 	addu	v0,s6,s4
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  x1 = a_input[i];
     fb4:	8c710004 	lw	s1,4(v1)
     fb8:	8c700000 	lw	s0,0(v1)
	  x2 = b_input[i];
     fbc:	8c530004 	lw	s3,4(v0)
     fc0:	8c520000 	lw	s2,0(v0)
	  result = float64_div (x1, x2);
     fc4:	02202821 	addu	a1,s1,zero
     fc8:	02002021 	addu	a0,s0,zero
     fcc:	02603821 	addu	a3,s3,zero
     fd0:	0c000000 	jal	0 <shift64RightJamming>
     fd4:	02403021 	addu	a2,s2,zero
  0xBFE5555555555555ULL,	/* -0.666667 */
  0x3FE5555555555555ULL		/* 0.666667 */
};

int
main ()
     fd8:	03d42021 	addu	a0,s8,s4
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_div (x1, x2);
	  main_result += (result != z_output[i]);
     fdc:	8c880000 	lw	t0,0(a0)
     fe0:	8c850004 	lw	a1,4(a0)
     fe4:	01024826 	xor	t1,t0,v0
     fe8:	00a32026 	xor	a0,a1,v1
     fec:	01244825 	or	t1,t1,a0

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
     ff0:	3c040000 	lui	a0,0x0
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_div (x1, x2);
	  main_result += (result != z_output[i]);
     ff4:	0009482b 	sltu	t1,zero,t1

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
     ff8:	24840000 	addiu	a0,a0,0
     ffc:	02203821 	addu	a3,s1,zero
    1000:	02003021 	addu	a2,s0,zero
	{
	  float64 result;
	  x1 = a_input[i];
	  x2 = b_input[i];
	  result = float64_div (x1, x2);
	  main_result += (result != z_output[i]);
    1004:	02a9a821 	addu	s5,s5,t1

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
    1008:	afb30014 	sw	s3,20(sp)
    100c:	afb20010 	sw	s2,16(sp)
    1010:	afa80018 	sw	t0,24(sp)
    1014:	afa5001c 	sw	a1,28(sp)
    1018:	afa30024 	sw	v1,36(sp)
    101c:	afa20020 	sw	v0,32(sp)
    1020:	afa3002c 	sw	v1,44(sp)
    1024:	afa20028 	sw	v0,40(sp)
    1028:	0c000000 	jal	0 <shift64RightJamming>
    102c:	26940008 	addiu	s4,s4,8
{
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
    1030:	240200b0 	addiu	v0,zero,176
    1034:	1682ffde 	bne	s4,v0,fb0 <main+0x50>
    1038:	02f41821 	addu	v1,s7,s4
	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     a_input[i], b_input[i], z_output[i], result,
	     ullong_to_double (result));
	}
      printf ("%d\n", main_result);
    103c:	3c040000 	lui	a0,0x0
    1040:	02a02821 	addu	a1,s5,zero
    1044:	0c000000 	jal	0 <shift64RightJamming>
    1048:	24840000 	addiu	a0,a0,0
      return main_result;
    }
    104c:	8fbf0054 	lw	ra,84(sp)
    1050:	02a01021 	addu	v0,s5,zero
    1054:	8fbe0050 	lw	s8,80(sp)
    1058:	8fb7004c 	lw	s7,76(sp)
    105c:	8fb60048 	lw	s6,72(sp)
    1060:	8fb50044 	lw	s5,68(sp)
    1064:	8fb40040 	lw	s4,64(sp)
    1068:	8fb3003c 	lw	s3,60(sp)
    106c:	8fb20038 	lw	s2,56(sp)
    1070:	8fb10034 	lw	s1,52(sp)
    1074:	8fb00030 	lw	s0,48(sp)
    1078:	03e00008 	jr	ra
    107c:	27bd0058 	addiu	sp,sp,88

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
