
dfsin.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <countLeadingZeros32>:
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
  if (a < 0x10000)
       0:	3c020001 	lui	v0,0x1
       4:	0082102b 	sltu	v0,a0,v0
       8:	10400003 	beqz	v0,18 <countLeadingZeros32+0x18>
       c:	24020010 	addiu	v0,zero,16
    {
      shiftCount += 16;
      a <<= 16;
      10:	08000007 	j	1c <countLeadingZeros32+0x1c>
      14:	00042400 	sll	a0,a0,0x10
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
      18:	00001021 	addu	v0,zero,zero
  if (a < 0x10000)
    {
      shiftCount += 16;
      a <<= 16;
    }
  if (a < 0x1000000)
      1c:	3c030100 	lui	v1,0x100
      20:	0083182b 	sltu	v1,a0,v1
      24:	10600003 	beqz	v1,34 <countLeadingZeros32+0x34>
      28:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
      2c:	24420008 	addiu	v0,v0,8
      a <<= 8;
      30:	00042200 	sll	a0,a0,0x8
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
      34:	00042602 	srl	a0,a0,0x18
      38:	00042080 	sll	a0,a0,0x2
      3c:	3c030000 	lui	v1,0x0
      40:	24630240 	addiu	v1,v1,576
      44:	00832021 	addu	a0,a0,v1
      48:	8c830000 	lw	v1,0(a0)
  return shiftCount;

}
      4c:	03e00008 	jr	ra
      50:	00431021 	addu	v0,v0,v1

00000054 <countLeadingZeros64>:
| `a'.  If `a' is zero, 64 is returned.
*----------------------------------------------------------------------------*/

static int8
countLeadingZeros64 (bits64 a)
{
      54:	27bdffe8 	addiu	sp,sp,-24
      58:	afbf0014 	sw	ra,20(sp)
      5c:	afb00010 	sw	s0,16(sp)
      60:	00801021 	addu	v0,a0,zero
  int8 shiftCount;

  shiftCount = 0;
  if (a < ((bits64) 1) << 32)
      64:	14400003 	bnez	v0,74 <countLeadingZeros64+0x20>
      68:	00a02021 	addu	a0,a1,zero
    {
      shiftCount += 32;
      6c:	0800001f 	j	7c <countLeadingZeros64+0x28>
      70:	24100020 	addiu	s0,zero,32
    }
  else
    {
      a >>= 32;
      74:	00402021 	addu	a0,v0,zero
static int8
countLeadingZeros64 (bits64 a)
{
  int8 shiftCount;

  shiftCount = 0;
      78:	00008021 	addu	s0,zero,zero
    }
  else
    {
      a >>= 32;
    }
  shiftCount += countLeadingZeros32 (a);
      7c:	0c000000 	jal	0 <countLeadingZeros32>
      80:	00000000 	sll	zero,zero,0x0
  return shiftCount;

}
      84:	00501021 	addu	v0,v0,s0
      88:	8fbf0014 	lw	ra,20(sp)
      8c:	8fb00010 	lw	s0,16(sp)
      90:	03e00008 	jr	ra
      94:	27bd0018 	addiu	sp,sp,24

00000098 <normalizeFloat64Subnormal>:
| `zSigPtr', respectively.
*----------------------------------------------------------------------------*/

static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
      98:	27bdffd8 	addiu	sp,sp,-40
      9c:	afbf0024 	sw	ra,36(sp)
      a0:	afb30020 	sw	s3,32(sp)
      a4:	afb2001c 	sw	s2,28(sp)
      a8:	afb10018 	sw	s1,24(sp)
      ac:	afb00014 	sw	s0,20(sp)
      b0:	00809821 	addu	s3,a0,zero
      b4:	00a09021 	addu	s2,a1,zero
      b8:	00c08821 	addu	s1,a2,zero
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
      bc:	0c000015 	jal	54 <countLeadingZeros64>
      c0:	00e08021 	addu	s0,a3,zero
      c4:	2442fff5 	addiu	v0,v0,-11
  *zSigPtr = aSig << shiftCount;
      c8:	30430020 	andi	v1,v0,0x20
      cc:	10600005 	beqz	v1,e4 <normalizeFloat64Subnormal+0x4c>
      d0:	00122042 	srl	a0,s2,0x1
      d4:	00529004 	sllv	s2,s2,v0
      d8:	ae120000 	sw	s2,0(s0)
      dc:	08000040 	j	100 <normalizeFloat64Subnormal+0x68>
      e0:	ae000004 	sw	zero,4(s0)
      e4:	00021827 	nor	v1,zero,v0
      e8:	00641806 	srlv	v1,a0,v1
      ec:	00539804 	sllv	s3,s3,v0
      f0:	02639825 	or	s3,s3,v1
      f4:	ae130000 	sw	s3,0(s0)
      f8:	00529004 	sllv	s2,s2,v0
      fc:	ae120004 	sw	s2,4(s0)
  *zExpPtr = 1 - shiftCount;
     100:	24030001 	addiu	v1,zero,1
     104:	00621023 	subu	v0,v1,v0
     108:	ae220000 	sw	v0,0(s1)

}
     10c:	8fbf0024 	lw	ra,36(sp)
     110:	8fb30020 	lw	s3,32(sp)
     114:	8fb2001c 	lw	s2,28(sp)
     118:	8fb10018 	lw	s1,24(sp)
     11c:	8fb00014 	lw	s0,20(sp)
     120:	03e00008 	jr	ra
     124:	27bd0028 	addiu	sp,sp,40

00000128 <shift64RightJamming>:
INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
  bits64 z;

  if (count == 0)
     128:	10c00021 	beqz	a2,1b0 <shift64RightJamming+0x88>
     12c:	28c20040 	slti	v0,a2,64
    {
      z = a;
    }
  else if (count < 64)
     130:	1040001c 	beqz	v0,1a4 <shift64RightJamming+0x7c>
     134:	00061023 	negu	v0,a2
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
     138:	3043003f 	andi	v1,v0,0x3f
     13c:	30420020 	andi	v0,v0,0x20
     140:	10400004 	beqz	v0,154 <shift64RightJamming+0x2c>
     144:	00054042 	srl	t0,a1,0x1
     148:	00651004 	sllv	v0,a1,v1
     14c:	0800005a 	j	168 <shift64RightJamming+0x40>
     150:	00001821 	addu	v1,zero,zero
     154:	00031027 	nor	v0,zero,v1
     158:	00484006 	srlv	t0,t0,v0
     15c:	00641004 	sllv	v0,a0,v1
     160:	01021025 	or	v0,t0,v0
     164:	00651804 	sllv	v1,a1,v1
     168:	00431025 	or	v0,v0,v1
     16c:	30c30020 	andi	v1,a2,0x20
     170:	10600004 	beqz	v1,184 <shift64RightJamming+0x5c>
     174:	0002102b 	sltu	v0,zero,v0
     178:	00c42806 	srlv	a1,a0,a2
     17c:	08000067 	j	19c <shift64RightJamming+0x74>
     180:	00002021 	addu	a0,zero,zero
     184:	00044040 	sll	t0,a0,0x1
     188:	00061827 	nor	v1,zero,a2
     18c:	00681804 	sllv	v1,t0,v1
     190:	00c52806 	srlv	a1,a1,a2
     194:	00652825 	or	a1,v1,a1
     198:	00c42006 	srlv	a0,a0,a2
     19c:	0800006c 	j	1b0 <shift64RightJamming+0x88>
     1a0:	00452825 	or	a1,v0,a1
    }
  else
    {
      z = (a != 0);
     1a4:	00852825 	or	a1,a0,a1
     1a8:	0005282b 	sltu	a1,zero,a1
     1ac:	00002021 	addu	a0,zero,zero
    }
  *zPtr = z;
     1b0:	ace40000 	sw	a0,0(a3)

}
     1b4:	03e00008 	jr	ra
     1b8:	ace50004 	sw	a1,4(a3)

000001bc <shift64ExtraRightJamming>:
*----------------------------------------------------------------------------*/

INLINE void
shift64ExtraRightJamming (bits64 a0, bits64 a1, int16 count, bits64 * z0Ptr,
			  bits64 * z1Ptr)
{
     1bc:	8fa80010 	lw	t0,16(sp)
     1c0:	8fa90018 	lw	t1,24(sp)
  bits64 z0, z1;
  int8 negCount;
  negCount = (-count) & 63;

  if (count == 0)
     1c4:	11000031 	beqz	t0,28c <shift64ExtraRightJamming+0xd0>
     1c8:	29020040 	slti	v0,t0,64
    {
      z1 = a1;
      z0 = a0;
    }
  else if (count < 64)
     1cc:	1040001e 	beqz	v0,248 <shift64ExtraRightJamming+0x8c>
     1d0:	24020040 	addiu	v0,zero,64
shift64ExtraRightJamming (bits64 a0, bits64 a1, int16 count, bits64 * z0Ptr,
			  bits64 * z1Ptr)
{
  bits64 z0, z1;
  int8 negCount;
  negCount = (-count) & 63;
     1d4:	00081023 	negu	v0,t0
     1d8:	3043003f 	andi	v1,v0,0x3f
      z1 = a1;
      z0 = a0;
    }
  else if (count < 64)
    {
      z1 = (a0 << negCount) | (a1 != 0);
     1dc:	30420020 	andi	v0,v0,0x20
     1e0:	10400004 	beqz	v0,1f4 <shift64ExtraRightJamming+0x38>
     1e4:	00055042 	srl	t2,a1,0x1
     1e8:	00651004 	sllv	v0,a1,v1
     1ec:	08000082 	j	208 <shift64ExtraRightJamming+0x4c>
     1f0:	00001821 	addu	v1,zero,zero
     1f4:	00031027 	nor	v0,zero,v1
     1f8:	004a5006 	srlv	t2,t2,v0
     1fc:	00641004 	sllv	v0,a0,v1
     200:	01421025 	or	v0,t2,v0
     204:	00651804 	sllv	v1,a1,v1
     208:	00c73825 	or	a3,a2,a3
     20c:	0007382b 	sltu	a3,zero,a3
     210:	00403021 	addu	a2,v0,zero
      z0 = a0 >> count;
     214:	31020020 	andi	v0,t0,0x20
     218:	10400004 	beqz	v0,22c <shift64ExtraRightJamming+0x70>
     21c:	00673825 	or	a3,v1,a3
     220:	01041806 	srlv	v1,a0,t0
     224:	080000a5 	j	294 <shift64ExtraRightJamming+0xd8>
     228:	00001021 	addu	v0,zero,zero
     22c:	00045040 	sll	t2,a0,0x1
     230:	00081027 	nor	v0,zero,t0
     234:	004a5004 	sllv	t2,t2,v0
     238:	01051806 	srlv	v1,a1,t0
     23c:	01431825 	or	v1,t2,v1
     240:	080000a5 	j	294 <shift64ExtraRightJamming+0xd8>
     244:	01041006 	srlv	v0,a0,t0
    }
  else
    {
      if (count == 64)
     248:	15020008 	bne	t0,v0,26c <shift64ExtraRightJamming+0xb0>
     24c:	00000000 	sll	zero,zero,0x0
	{
	  z1 = a0 | (a1 != 0);
     250:	00c73825 	or	a3,a2,a3
     254:	0007382b 	sltu	a3,zero,a3
     258:	00803021 	addu	a2,a0,zero
     25c:	00e53825 	or	a3,a3,a1
	}
      else
	{
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
     260:	00001821 	addu	v1,zero,zero
     264:	080000a5 	j	294 <shift64ExtraRightJamming+0xd8>
     268:	00001021 	addu	v0,zero,zero
	{
	  z1 = a0 | (a1 != 0);
	}
      else
	{
	  z1 = ((a0 | a1) != 0);
     26c:	00c42025 	or	a0,a2,a0
     270:	00e53825 	or	a3,a3,a1
     274:	00873825 	or	a3,a0,a3
     278:	0007382b 	sltu	a3,zero,a3
     27c:	00003021 	addu	a2,zero,zero
	}
      z0 = 0;
     280:	00001821 	addu	v1,zero,zero
     284:	080000a5 	j	294 <shift64ExtraRightJamming+0xd8>
     288:	00001021 	addu	v0,zero,zero
  negCount = (-count) & 63;

  if (count == 0)
    {
      z1 = a1;
      z0 = a0;
     28c:	00801021 	addu	v0,a0,zero
     290:	00a01821 	addu	v1,a1,zero
	{
	  z1 = ((a0 | a1) != 0);
	}
      z0 = 0;
    }
  *z1Ptr = z1;
     294:	ad260000 	sw	a2,0(t1)
     298:	ad270004 	sw	a3,4(t1)
  *z0Ptr = z0;
     29c:	8fa40014 	lw	a0,20(sp)
     2a0:	00000000 	sll	zero,zero,0x0
     2a4:	ac830004 	sw	v1,4(a0)

}
     2a8:	03e00008 	jr	ra
     2ac:	ac820000 	sw	v0,0(a0)

000002b0 <add128>:
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     2b0:	8fa30014 	lw	v1,20(sp)
     2b4:	8fa8001c 	lw	t0,28(sp)
     2b8:	8faa0020 	lw	t2,32(sp)
     2bc:	8fa20024 	lw	v0,36(sp)
  bits64 z1;

  z1 = a1 + b1;
     2c0:	01074821 	addu	t1,t0,a3
     2c4:	0128402b 	sltu	t0,t1,t0
     2c8:	8fab0018 	lw	t3,24(sp)
     2cc:	00000000 	sll	zero,zero,0x0
     2d0:	01665821 	addu	t3,t3,a2
     2d4:	010b4021 	addu	t0,t0,t3
     2d8:	01005821 	addu	t3,t0,zero
  *z1Ptr = z1;
     2dc:	ac480000 	sw	t0,0(v0)
     2e0:	ac490004 	sw	t1,4(v0)
  *z0Ptr = a0 + b0 + (z1 < a1);
     2e4:	00652821 	addu	a1,v1,a1
     2e8:	00a3182b 	sltu	v1,a1,v1
     2ec:	8fa20010 	lw	v0,16(sp)
     2f0:	00000000 	sll	zero,zero,0x0
     2f4:	00442021 	addu	a0,v0,a0
     2f8:	00642021 	addu	a0,v1,a0
     2fc:	24030001 	addiu	v1,zero,1
     300:	0106402b 	sltu	t0,t0,a2
     304:	15000007 	bnez	t0,324 <add128+0x74>
     308:	00001021 	addu	v0,zero,zero
     30c:	14cb0003 	bne	a2,t3,31c <add128+0x6c>
     310:	0127482b 	sltu	t1,t1,a3
     314:	15200004 	bnez	t1,328 <add128+0x78>
     318:	00a33021 	addu	a2,a1,v1
     31c:	00001821 	addu	v1,zero,zero
     320:	00001021 	addu	v0,zero,zero
     324:	00a33021 	addu	a2,a1,v1
     328:	00c5282b 	sltu	a1,a2,a1
     32c:	00821021 	addu	v0,a0,v0
     330:	00a21021 	addu	v0,a1,v0
     334:	ad420000 	sw	v0,0(t2)

}
     338:	03e00008 	jr	ra
     33c:	ad460004 	sw	a2,4(t2)

00000340 <sub128>:
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     340:	8fa90018 	lw	t1,24(sp)
     344:	8fab001c 	lw	t3,28(sp)
     348:	8faa0020 	lw	t2,32(sp)
     34c:	8fa20024 	lw	v0,36(sp)

  *z1Ptr = a1 - b1;
     350:	00eb1823 	subu	v1,a3,t3
     354:	00e3402b 	sltu	t0,a3,v1
     358:	00c96023 	subu	t4,a2,t1
     35c:	01884023 	subu	t0,t4,t0
     360:	ac480000 	sw	t0,0(v0)
     364:	ac430004 	sw	v1,4(v0)
  *z0Ptr = a0 - b0 - (a1 < b1);
     368:	8fa80014 	lw	t0,20(sp)
     36c:	00000000 	sll	zero,zero,0x0
     370:	00a84023 	subu	t0,a1,t0
     374:	00a8282b 	sltu	a1,a1,t0
     378:	8fa20010 	lw	v0,16(sp)
     37c:	00000000 	sll	zero,zero,0x0
     380:	00822023 	subu	a0,a0,v0
     384:	00852023 	subu	a0,a0,a1
     388:	24030001 	addiu	v1,zero,1
     38c:	00c9282b 	sltu	a1,a2,t1
     390:	14a00007 	bnez	a1,3b0 <sub128+0x70>
     394:	00001021 	addu	v0,zero,zero
     398:	15260003 	bne	t1,a2,3a8 <sub128+0x68>
     39c:	00eb382b 	sltu	a3,a3,t3
     3a0:	14e00004 	bnez	a3,3b4 <sub128+0x74>
     3a4:	01032823 	subu	a1,t0,v1
     3a8:	00001821 	addu	v1,zero,zero
     3ac:	00001021 	addu	v0,zero,zero
     3b0:	01032823 	subu	a1,t0,v1
     3b4:	0105402b 	sltu	t0,t0,a1
     3b8:	00821023 	subu	v0,a0,v0
     3bc:	00481023 	subu	v0,v0,t0
     3c0:	ad420000 	sw	v0,0(t2)

}
     3c4:	03e00008 	jr	ra
     3c8:	ad450004 	sw	a1,4(t2)

000003cc <mul64To128>:
| `z0Ptr' and `z1Ptr'.
*----------------------------------------------------------------------------*/

INLINE void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
     3cc:	8fac0010 	lw	t4,16(sp)
     3d0:	8fad0014 	lw	t5,20(sp)

  aLow = a;
  aHigh = a >> 32;
  bLow = b;
  bHigh = b >> 32;
  z1 = ((bits64) aLow) * bLow;
     3d4:	00e50019 	multu	a3,a1
     3d8:	00005812 	mflo	t3
     3dc:	00005010 	mfhi	t2
	...
  zMiddleA = ((bits64) aLow) * bHigh;
     3e8:	00c50019 	multu	a2,a1
     3ec:	00004812 	mflo	t1
     3f0:	00004010 	mfhi	t0
	...
  zMiddleB = ((bits64) aHigh) * bLow;
     3fc:	00870019 	multu	a0,a3
     400:	00001812 	mflo	v1
     404:	00001010 	mfhi	v0
	...
  z0 = ((bits64) aHigh) * bHigh;
     410:	00c40019 	multu	a2,a0
     414:	00002812 	mflo	a1
     418:	00002010 	mfhi	a0
  zMiddleA += zMiddleB;
     41c:	01237021 	addu	t6,t1,v1
     420:	01c9302b 	sltu	a2,t6,t1
     424:	01024021 	addu	t0,t0,v0
     428:	00c84021 	addu	t0,a2,t0
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     42c:	0102302b 	sltu	a2,t0,v0
     430:	14c00007 	bnez	a2,450 <mul64To128+0x84>
     434:	24060001 	addiu	a2,zero,1
     438:	14480005 	bne	v0,t0,450 <mul64To128+0x84>
     43c:	00003021 	addu	a2,zero,zero
     440:	01c3102b 	sltu	v0,t6,v1
     444:	10400003 	beqz	v0,454 <mul64To128+0x88>
     448:	01ca7821 	addu	t7,t6,t2
     44c:	24060001 	addiu	a2,zero,1
  zMiddleA <<= 32;
  z1 += zMiddleA;
     450:	01ca7821 	addu	t7,t6,t2
     454:	01605021 	addu	t2,t3,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     458:	01054821 	addu	t1,t0,a1
     45c:	0128402b 	sltu	t0,t1,t0
     460:	01042021 	addu	a0,t0,a0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     464:	24030001 	addiu	v1,zero,1
     468:	01ee702b 	sltu	t6,t7,t6
     46c:	15c00003 	bnez	t6,47c <mul64To128+0xb0>
     470:	00001021 	addu	v0,zero,zero
     474:	00001821 	addu	v1,zero,zero
     478:	00001021 	addu	v0,zero,zero
  z1 = ((bits64) aLow) * bLow;
  zMiddleA = ((bits64) aLow) * bHigh;
  zMiddleB = ((bits64) aHigh) * bLow;
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     47c:	01232821 	addu	a1,t1,v1
     480:	00a9482b 	sltu	t1,a1,t1
     484:	00821021 	addu	v0,a0,v0
     488:	01221021 	addu	v0,t1,v0
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
  *z1Ptr = z1;
     48c:	adaf0000 	sw	t7,0(t5)
     490:	adaa0004 	sw	t2,4(t5)
  z0 = ((bits64) aHigh) * bHigh;
  zMiddleA += zMiddleB;
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
  zMiddleA <<= 32;
  z1 += zMiddleA;
  z0 += (z1 < zMiddleA);
     494:	00463021 	addu	a2,v0,a2
  *z1Ptr = z1;
  *z0Ptr = z0;
     498:	ad860000 	sw	a2,0(t4)

}
     49c:	03e00008 	jr	ra
     4a0:	ad850004 	sw	a1,4(t4)

000004a4 <float_raise>:
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
  float_exception_flags |= flags;
     4a4:	8f820000 	lw	v0,0(gp)
     4a8:	00000000 	sll	zero,zero,0x0
     4ac:	00441025 	or	v0,v0,a0

}
     4b0:	03e00008 	jr	ra
     4b4:	af820000 	sw	v0,0(gp)

000004b8 <float64_is_nan>:

flag
float64_is_nan (float64 a)
{

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     4b8:	000517c2 	srl	v0,a1,0x1f
     4bc:	00042040 	sll	a0,a0,0x1
     4c0:	00442025 	or	a0,v0,a0
     4c4:	00052840 	sll	a1,a1,0x1
     4c8:	3c03ffe0 	lui	v1,0xffe0
     4cc:	24630001 	addiu	v1,v1,1
     4d0:	0083182b 	sltu	v1,a0,v1
     4d4:	10600007 	beqz	v1,4f4 <float64_is_nan+0x3c>
     4d8:	24020001 	addiu	v0,zero,1
     4dc:	3c03ffe0 	lui	v1,0xffe0
     4e0:	14830003 	bne	a0,v1,4f0 <float64_is_nan+0x38>
     4e4:	00000000 	sll	zero,zero,0x0
     4e8:	14a00002 	bnez	a1,4f4 <float64_is_nan+0x3c>
     4ec:	00000000 	sll	zero,zero,0x0
     4f0:	00001021 	addu	v0,zero,zero

}
     4f4:	03e00008 	jr	ra
     4f8:	00000000 	sll	zero,zero,0x0

000004fc <float64_is_signaling_nan>:

flag
float64_is_signaling_nan (float64 a)
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     4fc:	000434c2 	srl	a2,a0,0x13
     500:	30c60fff 	andi	a2,a2,0xfff
     504:	24030ffe 	addiu	v1,zero,4094
     508:	14c30007 	bne	a2,v1,528 <float64_is_signaling_nan+0x2c>
     50c:	00000000 	sll	zero,zero,0x0
     510:	3c020007 	lui	v0,0x7
     514:	3442ffff 	ori	v0,v0,0xffff
     518:	00821024 	and	v0,a0,v0
| Returns 1 if the double-precision floating-point value `a' is a signaling
| NaN; otherwise returns 0.
*----------------------------------------------------------------------------*/

flag
float64_is_signaling_nan (float64 a)
     51c:	00451025 	or	v0,v0,a1
     520:	03e00008 	jr	ra
     524:	0002102b 	sltu	v0,zero,v0
{

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));

}
     528:	03e00008 	jr	ra
     52c:	00001021 	addu	v0,zero,zero

00000530 <propagateFloat64NaN>:
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/

static float64
propagateFloat64NaN (float64 a, float64 b)
{
     530:	27bdffd0 	addiu	sp,sp,-48
     534:	afbf002c 	sw	ra,44(sp)
     538:	afb60028 	sw	s6,40(sp)
     53c:	afb50024 	sw	s5,36(sp)
     540:	afb40020 	sw	s4,32(sp)
     544:	afb3001c 	sw	s3,28(sp)
     548:	afb20018 	sw	s2,24(sp)
     54c:	afb10014 	sw	s1,20(sp)
     550:	afb00010 	sw	s0,16(sp)
     554:	0080a021 	addu	s4,a0,zero
     558:	00a0b021 	addu	s6,a1,zero
     55c:	00c08821 	addu	s1,a2,zero
  flag aIsNaN, aIsSignalingNaN, bIsNaN, bIsSignalingNaN;

  aIsNaN = float64_is_nan (a);
  aIsSignalingNaN = float64_is_signaling_nan (a);
     560:	0c000000 	jal	0 <countLeadingZeros32>
     564:	00e09021 	addu	s2,a3,zero
     568:	00409821 	addu	s3,v0,zero
  bIsNaN = float64_is_nan (b);
     56c:	02202021 	addu	a0,s1,zero
     570:	0c000000 	jal	0 <countLeadingZeros32>
     574:	02402821 	addu	a1,s2,zero
     578:	0040a821 	addu	s5,v0,zero
  bIsSignalingNaN = float64_is_signaling_nan (b);
     57c:	02202021 	addu	a0,s1,zero
     580:	0c000000 	jal	0 <countLeadingZeros32>
     584:	02402821 	addu	a1,s2,zero
     588:	00408021 	addu	s0,v0,zero
  a |= LIT64 (0x0008000000000000);
     58c:	3c020008 	lui	v0,0x8
     590:	0282a025 	or	s4,s4,v0
  b |= LIT64 (0x0008000000000000);
     594:	02228825 	or	s1,s1,v0
  if (aIsSignalingNaN | bIsSignalingNaN)
     598:	02131025 	or	v0,s0,s3
     59c:	10400003 	beqz	v0,5ac <propagateFloat64NaN+0x7c>
     5a0:	00000000 	sll	zero,zero,0x0
    float_raise (float_flag_invalid);
     5a4:	0c000000 	jal	0 <countLeadingZeros32>
     5a8:	24040010 	addiu	a0,zero,16
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
     5ac:	1600000b 	bnez	s0,5dc <propagateFloat64NaN+0xac>
     5b0:	02201021 	addu	v0,s1,zero
     5b4:	16600005 	bnez	s3,5cc <propagateFloat64NaN+0x9c>
     5b8:	02808821 	addu	s1,s4,zero
     5bc:	12a00005 	beqz	s5,5d4 <propagateFloat64NaN+0xa4>
     5c0:	02401821 	addu	v1,s2,zero
     5c4:	08000178 	j	5e0 <propagateFloat64NaN+0xb0>
     5c8:	00000000 	sll	zero,zero,0x0
     5cc:	08000176 	j	5d8 <propagateFloat64NaN+0xa8>
     5d0:	02c09021 	addu	s2,s6,zero
     5d4:	02c09021 	addu	s2,s6,zero

}
     5d8:	02201021 	addu	v0,s1,zero
     5dc:	02401821 	addu	v1,s2,zero
     5e0:	8fbf002c 	lw	ra,44(sp)
     5e4:	8fb60028 	lw	s6,40(sp)
     5e8:	8fb50024 	lw	s5,36(sp)
     5ec:	8fb40020 	lw	s4,32(sp)
     5f0:	8fb3001c 	lw	s3,28(sp)
     5f4:	8fb20018 	lw	s2,24(sp)
     5f8:	8fb10014 	lw	s1,20(sp)
     5fc:	8fb00010 	lw	s0,16(sp)
     600:	03e00008 	jr	ra
     604:	27bd0030 	addiu	sp,sp,48

00000608 <extractFloat64Frac>:
extractFloat64Frac (float64 a)
{

  return a & LIT64 (0x000FFFFFFFFFFFFF);

}
     608:	3c02000f 	lui	v0,0xf
     60c:	3442ffff 	ori	v0,v0,0xffff
     610:	00821024 	and	v0,a0,v0
     614:	03e00008 	jr	ra
     618:	00a01821 	addu	v1,a1,zero

0000061c <extractFloat64Exp>:

INLINE int16
extractFloat64Exp (float64 a)
{

  return (a >> 52) & 0x7FF;
     61c:	00041502 	srl	v0,a0,0x14

}
     620:	03e00008 	jr	ra
     624:	304207ff 	andi	v0,v0,0x7ff

00000628 <extractFloat64Sign>:
extractFloat64Sign (float64 a)
{

  return a >> 63;

}
     628:	03e00008 	jr	ra
     62c:	000417c2 	srl	v0,a0,0x1f

00000630 <packFloat64>:

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     630:	000427c0 	sll	a0,a0,0x1f
     634:	00c42021 	addu	a0,a2,a0
     638:	00051500 	sll	v0,a1,0x14

}
     63c:	00821021 	addu	v0,a0,v0
     640:	03e00008 	jr	ra
     644:	00e01821 	addu	v1,a3,zero

00000648 <roundAndPackFloat64>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
roundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
     648:	27bdffd8 	addiu	sp,sp,-40
     64c:	afbf0024 	sw	ra,36(sp)
     650:	afb30020 	sw	s3,32(sp)
     654:	afb2001c 	sw	s2,28(sp)
     658:	afb10018 	sw	s1,24(sp)
     65c:	afb00014 	sw	s0,20(sp)
     660:	00808021 	addu	s0,a0,zero
     664:	afa70034 	sw	a3,52(sp)
     668:	afa60030 	sw	a2,48(sp)
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
     66c:	8f830000 	lw	v1,0(gp)
     670:	00000000 	sll	zero,zero,0x0
  roundNearestEven = (roundingMode == float_round_nearest_even);
     674:	2c720001 	sltiu	s2,v1,1
  roundIncrement = 0x200;
  if (!roundNearestEven)
     678:	1640000f 	bnez	s2,6b8 <roundAndPackFloat64+0x70>
     67c:	00a01021 	addu	v0,a1,zero
    {
      if (roundingMode == float_round_to_zero)
     680:	24040001 	addiu	a0,zero,1
     684:	1064000e 	beq	v1,a0,6c0 <roundAndPackFloat64+0x78>
     688:	00000000 	sll	zero,zero,0x0
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
     68c:	12000006 	beqz	s0,6a8 <roundAndPackFloat64+0x60>
     690:	24040003 	addiu	a0,zero,3
	    {
	      if (roundingMode == float_round_up)
     694:	24040002 	addiu	a0,zero,2
     698:	1064000b 	beq	v1,a0,6c8 <roundAndPackFloat64+0x80>
     69c:	00000000 	sll	zero,zero,0x0
	{
	  roundIncrement = 0;
	}
      else
	{
	  roundIncrement = 0x3FF;
     6a0:	080001b5 	j	6d4 <roundAndPackFloat64+0x8c>
     6a4:	241103ff 	addiu	s1,zero,1023
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
     6a8:	10640009 	beq	v1,a0,6d0 <roundAndPackFloat64+0x88>
     6ac:	241103ff 	addiu	s1,zero,1023
     6b0:	080001b5 	j	6d4 <roundAndPackFloat64+0x8c>
     6b4:	00000000 	sll	zero,zero,0x0
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
  roundNearestEven = (roundingMode == float_round_nearest_even);
  roundIncrement = 0x200;
     6b8:	080001b5 	j	6d4 <roundAndPackFloat64+0x8c>
     6bc:	24110200 	addiu	s1,zero,512
  if (!roundNearestEven)
    {
      if (roundingMode == float_round_to_zero)
	{
	  roundIncrement = 0;
     6c0:	080001b5 	j	6d4 <roundAndPackFloat64+0x8c>
     6c4:	00008821 	addu	s1,zero,zero
	{
	  roundIncrement = 0x3FF;
	  if (zSign)
	    {
	      if (roundingMode == float_round_up)
		roundIncrement = 0;
     6c8:	080001b5 	j	6d4 <roundAndPackFloat64+0x8c>
     6cc:	00008821 	addu	s1,zero,zero
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
		roundIncrement = 0;
     6d0:	00008821 	addu	s1,zero,zero
	    }
	}
    }
  roundBits = zSig & 0x3FF;
     6d4:	8fa40030 	lw	a0,48(sp)
     6d8:	8fb30034 	lw	s3,52(sp)
  if (0x7FD <= (bits16) zExp)
     6dc:	3043ffff 	andi	v1,v0,0xffff
     6e0:	2c6307fd 	sltiu	v1,v1,2045
     6e4:	14600025 	bnez	v1,77c <roundAndPackFloat64+0x134>
     6e8:	284307fe 	slti	v1,v0,2046
    {
      if ((0x7FD < zExp)
     6ec:	10600008 	beqz	v1,710 <roundAndPackFloat64+0xc8>
     6f0:	00000000 	sll	zero,zero,0x0
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
     6f4:	240307fd 	addiu	v1,zero,2045
     6f8:	14430012 	bne	v0,v1,744 <roundAndPackFloat64+0xfc>
     6fc:	02331821 	addu	v1,s1,s3
     700:	0071182b 	sltu	v1,v1,s1
     704:	00642021 	addu	a0,v1,a0
     708:	0481001d 	bgez	a0,780 <roundAndPackFloat64+0x138>
     70c:	327303ff 	andi	s3,s3,0x3ff
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
     710:	0c000000 	jal	0 <countLeadingZeros32>
     714:	24040009 	addiu	a0,zero,9
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
     718:	02002021 	addu	a0,s0,zero
     71c:	240507ff 	addiu	a1,zero,2047
     720:	00003821 	addu	a3,zero,zero
     724:	0c000000 	jal	0 <countLeadingZeros32>
     728:	00003021 	addu	a2,zero,zero
     72c:	2e310001 	sltiu	s1,s1,1
     730:	00718823 	subu	s1,v1,s1
     734:	0071182b 	sltu	v1,v1,s1
     738:	00431023 	subu	v0,v0,v1
     73c:	080001fe 	j	7f8 <roundAndPackFloat64+0x1b0>
     740:	02201821 	addu	v1,s1,zero
	}
      if (zExp < 0)
     744:	0441000d 	bgez	v0,77c <roundAndPackFloat64+0x134>
     748:	02602821 	addu	a1,s3,zero
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
     74c:	00023023 	negu	a2,v0
     750:	0c000000 	jal	0 <countLeadingZeros32>
     754:	27a70030 	addiu	a3,sp,48
	  zExp = 0;
	  roundBits = zSig & 0x3FF;
     758:	8fb30034 	lw	s3,52(sp)
     75c:	00000000 	sll	zero,zero,0x0
     760:	327303ff 	andi	s3,s3,0x3ff
	  if (isTiny && roundBits)
     764:	1260000d 	beqz	s3,79c <roundAndPackFloat64+0x154>
     768:	00000000 	sll	zero,zero,0x0
	    float_raise (float_flag_underflow);
     76c:	0c000000 	jal	0 <countLeadingZeros32>
     770:	24040004 	addiu	a0,zero,4
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
     774:	080001e2 	j	788 <roundAndPackFloat64+0x140>
     778:	00001021 	addu	v0,zero,zero
	      if (roundingMode == float_round_down)
		roundIncrement = 0;
	    }
	}
    }
  roundBits = zSig & 0x3FF;
     77c:	327303ff 	andi	s3,s3,0x3ff
	  roundBits = zSig & 0x3FF;
	  if (isTiny && roundBits)
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
     780:	12600008 	beqz	s3,7a4 <roundAndPackFloat64+0x15c>
     784:	3a670200 	xori	a3,s3,0x200
    float_exception_flags |= float_flag_inexact;
     788:	8f830000 	lw	v1,0(gp)
     78c:	00000000 	sll	zero,zero,0x0
     790:	34630001 	ori	v1,v1,0x1
     794:	080001e8 	j	7a0 <roundAndPackFloat64+0x158>
     798:	af830000 	sw	v1,0(gp)
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
	  zExp = 0;
     79c:	00001021 	addu	v0,zero,zero
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
     7a0:	3a670200 	xori	a3,s3,0x200
     7a4:	2ce70001 	sltiu	a3,a3,1
     7a8:	00f23824 	and	a3,a3,s2
     7ac:	00073827 	nor	a3,zero,a3
	    float_raise (float_flag_underflow);
	}
    }
  if (roundBits)
    float_exception_flags |= float_flag_inexact;
  zSig = (zSig + roundIncrement) >> 10;
     7b0:	8fa30034 	lw	v1,52(sp)
     7b4:	00000000 	sll	zero,zero,0x0
     7b8:	02231821 	addu	v1,s1,v1
     7bc:	0071302b 	sltu	a2,v1,s1
     7c0:	8fa40030 	lw	a0,48(sp)
     7c4:	00000000 	sll	zero,zero,0x0
     7c8:	00c43021 	addu	a2,a2,a0
     7cc:	00062580 	sll	a0,a2,0x16
     7d0:	00031a82 	srl	v1,v1,0xa
     7d4:	00831825 	or	v1,a0,v1
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
     7d8:	00063282 	srl	a2,a2,0xa
     7dc:	00e33824 	and	a3,a3,v1
  if (zSig == 0)
     7e0:	00c71825 	or	v1,a2,a3
     7e4:	14600002 	bnez	v1,7f0 <roundAndPackFloat64+0x1a8>
     7e8:	02002021 	addu	a0,s0,zero
    zExp = 0;
     7ec:	00001021 	addu	v0,zero,zero
  return packFloat64 (zSign, zExp, zSig);
     7f0:	0c000000 	jal	0 <countLeadingZeros32>
     7f4:	00402821 	addu	a1,v0,zero

}
     7f8:	8fbf0024 	lw	ra,36(sp)
     7fc:	8fb30020 	lw	s3,32(sp)
     800:	8fb2001c 	lw	s2,28(sp)
     804:	8fb10018 	lw	s1,24(sp)
     808:	8fb00014 	lw	s0,20(sp)
     80c:	03e00008 	jr	ra
     810:	27bd0028 	addiu	sp,sp,40

00000814 <int32_to_float64>:
| according to the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
int32_to_float64 (int32 a)
{
     814:	27bdffe0 	addiu	sp,sp,-32
     818:	afbf001c 	sw	ra,28(sp)
     81c:	afb10018 	sw	s1,24(sp)
  flag zSign;
  uint32 absA;
  int8 shiftCount;
  bits64 zSig;

  if (a == 0)
     820:	10800018 	beqz	a0,884 <int32_to_float64+0x70>
     824:	afb00014 	sw	s0,20(sp)
    return 0;
  zSign = (a < 0);
     828:	000487c2 	srl	s0,a0,0x1f
  absA = zSign ? -a : a;
     82c:	16000002 	bnez	s0,838 <int32_to_float64+0x24>
     830:	00048823 	negu	s1,a0
     834:	00808821 	addu	s1,a0,zero
  shiftCount = countLeadingZeros32 (absA) + 21;
     838:	0c000000 	jal	0 <countLeadingZeros32>
     83c:	02202021 	addu	a0,s1,zero
     840:	24420015 	addiu	v0,v0,21
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);
     844:	24050432 	addiu	a1,zero,1074
     848:	30430020 	andi	v1,v0,0x20
     84c:	10600004 	beqz	v1,860 <int32_to_float64+0x4c>
     850:	00a22823 	subu	a1,a1,v0
     854:	00513004 	sllv	a2,s1,v0
     858:	0800021c 	j	870 <int32_to_float64+0x5c>
     85c:	00003821 	addu	a3,zero,zero
     860:	00113042 	srl	a2,s1,0x1
     864:	00021827 	nor	v1,zero,v0
     868:	00663006 	srlv	a2,a2,v1
     86c:	00513804 	sllv	a3,s1,v0
     870:	0c000000 	jal	0 <countLeadingZeros32>
     874:	02002021 	addu	a0,s0,zero
     878:	00602821 	addu	a1,v1,zero
     87c:	08000223 	j	88c <int32_to_float64+0x78>
     880:	00402021 	addu	a0,v0,zero
  uint32 absA;
  int8 shiftCount;
  bits64 zSig;

  if (a == 0)
    return 0;
     884:	00002821 	addu	a1,zero,zero
     888:	00002021 	addu	a0,zero,zero
  absA = zSign ? -a : a;
  shiftCount = countLeadingZeros32 (absA) + 21;
  zSig = absA;
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);

}
     88c:	00801021 	addu	v0,a0,zero
     890:	00a01821 	addu	v1,a1,zero
     894:	8fbf001c 	lw	ra,28(sp)
     898:	8fb10018 	lw	s1,24(sp)
     89c:	8fb00014 	lw	s0,20(sp)
     8a0:	03e00008 	jr	ra
     8a4:	27bd0020 	addiu	sp,sp,32

000008a8 <float64_add>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_add (float64 a, float64 b)
{
     8a8:	27bdffb8 	addiu	sp,sp,-72
     8ac:	afbf0044 	sw	ra,68(sp)
     8b0:	afbe0040 	sw	s8,64(sp)
     8b4:	afb7003c 	sw	s7,60(sp)
     8b8:	afb60038 	sw	s6,56(sp)
     8bc:	afb50034 	sw	s5,52(sp)
     8c0:	afb40030 	sw	s4,48(sp)
     8c4:	afb3002c 	sw	s3,44(sp)
     8c8:	afb20028 	sw	s2,40(sp)
     8cc:	afb10024 	sw	s1,36(sp)
     8d0:	afb00020 	sw	s0,32(sp)
     8d4:	00a09821 	addu	s3,a1,zero
     8d8:	00809021 	addu	s2,a0,zero
     8dc:	afa70054 	sw	a3,84(sp)
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
     8e0:	0c000000 	jal	0 <countLeadingZeros32>
     8e4:	afa60050 	sw	a2,80(sp)
  bSign = extractFloat64Sign (b);
     8e8:	8fa50054 	lw	a1,84(sp)
     8ec:	8fa40050 	lw	a0,80(sp)
     8f0:	0c000000 	jal	0 <countLeadingZeros32>
     8f4:	0040a021 	addu	s4,v0,zero
  if (aSign == bSign)
     8f8:	168200a0 	bne	s4,v0,b7c <float64_add+0x2d4>
     8fc:	02602821 	addu	a1,s3,zero
{
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  int16 expDiff;

  aSig = extractFloat64Frac (a);
     900:	0c000000 	jal	0 <countLeadingZeros32>
     904:	02402021 	addu	a0,s2,zero
     908:	0040a821 	addu	s5,v0,zero
     90c:	0060b021 	addu	s6,v1,zero
  aExp = extractFloat64Exp (a);
     910:	02602821 	addu	a1,s3,zero
     914:	0c000000 	jal	0 <countLeadingZeros32>
     918:	02402021 	addu	a0,s2,zero
  bSig = extractFloat64Frac (b);
     91c:	8fa50054 	lw	a1,84(sp)
     920:	8fa40050 	lw	a0,80(sp)
     924:	0c000000 	jal	0 <countLeadingZeros32>
     928:	00408821 	addu	s1,v0,zero
     92c:	0040b821 	addu	s7,v0,zero
  bExp = extractFloat64Exp (b);
     930:	8fa50054 	lw	a1,84(sp)
     934:	8fa40050 	lw	a0,80(sp)
     938:	0c000000 	jal	0 <countLeadingZeros32>
     93c:	0060f021 	addu	s8,v1,zero
     940:	00408021 	addu	s0,v0,zero
  expDiff = aExp - bExp;
     944:	02223023 	subu	a2,s1,v0
  aSig <<= 9;
     948:	001615c2 	srl	v0,s6,0x17
     94c:	0015aa40 	sll	s5,s5,0x9
     950:	0055a825 	or	s5,v0,s5
     954:	0016b240 	sll	s6,s6,0x9
     958:	afb50018 	sw	s5,24(sp)
     95c:	afb6001c 	sw	s6,28(sp)
  bSig <<= 9;
     960:	001e15c2 	srl	v0,s8,0x17
     964:	0017ba40 	sll	s7,s7,0x9
     968:	0057b825 	or	s7,v0,s7
     96c:	001ef240 	sll	s8,s8,0x9
     970:	afb70010 	sw	s7,16(sp)
  if (0 < expDiff)
     974:	18c0001c 	blez	a2,9e8 <float64_add+0x140>
     978:	afbe0014 	sw	s8,20(sp)
    {
      if (aExp == 0x7FF)
     97c:	240207ff 	addiu	v0,zero,2047
     980:	1622000b 	bne	s1,v0,9b0 <float64_add+0x108>
     984:	02b6a825 	or	s5,s5,s6
	{
	  if (aSig)
     988:	12a0013c 	beqz	s5,e7c <float64_add+0x5d4>
     98c:	02401021 	addu	v0,s2,zero
	    return propagateFloat64NaN (a, b);
     990:	02602821 	addu	a1,s3,zero
     994:	8fa70054 	lw	a3,84(sp)
     998:	8fa60050 	lw	a2,80(sp)
     99c:	0c00014c 	jal	530 <propagateFloat64NaN>
     9a0:	02402021 	addu	a0,s2,zero
     9a4:	00609821 	addu	s3,v1,zero
     9a8:	0800039e 	j	e78 <float64_add+0x5d0>
     9ac:	00409021 	addu	s2,v0,zero
	  return a;
	}
      if (bExp == 0)
     9b0:	16000003 	bnez	s0,9c0 <float64_add+0x118>
     9b4:	00000000 	sll	zero,zero,0x0
	--expDiff;
     9b8:	08000274 	j	9d0 <float64_add+0x128>
     9bc:	24c6ffff 	addiu	a2,a2,-1
      else
	bSig |= LIT64 (0x2000000000000000);
     9c0:	3c022000 	lui	v0,0x2000
     9c4:	02e2b825 	or	s7,s7,v0
     9c8:	afb70010 	sw	s7,16(sp)
     9cc:	afbe0014 	sw	s8,20(sp)
      shift64RightJamming (bSig, expDiff, &bSig);
     9d0:	8fa50014 	lw	a1,20(sp)
     9d4:	8fa40010 	lw	a0,16(sp)
     9d8:	0c000000 	jal	0 <countLeadingZeros32>
     9dc:	27a70010 	addiu	a3,sp,16
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
     9e0:	080002c3 	j	b0c <float64_add+0x264>
     9e4:	3c022000 	lui	v0,0x2000
      else
	bSig |= LIT64 (0x2000000000000000);
      shift64RightJamming (bSig, expDiff, &bSig);
      zExp = aExp;
    }
  else if (expDiff < 0)
     9e8:	04c10022 	bgez	a2,a74 <float64_add+0x1cc>
     9ec:	240207ff 	addiu	v0,zero,2047
    {
      if (bExp == 0x7FF)
     9f0:	16020012 	bne	s0,v0,a3c <float64_add+0x194>
     9f4:	02feb825 	or	s7,s7,s8
	{
	  if (bSig)
     9f8:	12e00009 	beqz	s7,a20 <float64_add+0x178>
     9fc:	240507ff 	addiu	a1,zero,2047
	    return propagateFloat64NaN (a, b);
     a00:	02602821 	addu	a1,s3,zero
     a04:	8fa70054 	lw	a3,84(sp)
     a08:	8fa60050 	lw	a2,80(sp)
     a0c:	0c00014c 	jal	530 <propagateFloat64NaN>
     a10:	02402021 	addu	a0,s2,zero
     a14:	00609821 	addu	s3,v1,zero
     a18:	0800039e 	j	e78 <float64_add+0x5d0>
     a1c:	00409021 	addu	s2,v0,zero
	  return packFloat64 (zSign, 0x7FF, 0);
     a20:	02802021 	addu	a0,s4,zero
     a24:	00003821 	addu	a3,zero,zero
     a28:	0c000000 	jal	0 <countLeadingZeros32>
     a2c:	00003021 	addu	a2,zero,zero
     a30:	00609821 	addu	s3,v1,zero
     a34:	0800039e 	j	e78 <float64_add+0x5d0>
     a38:	00409021 	addu	s2,v0,zero
	}
      if (aExp == 0)
     a3c:	16200003 	bnez	s1,a4c <float64_add+0x1a4>
     a40:	3c022000 	lui	v0,0x2000
	++expDiff;
     a44:	08000296 	j	a58 <float64_add+0x1b0>
     a48:	24c60001 	addiu	a2,a2,1
      else
	{
	  aSig |= LIT64 (0x2000000000000000);
     a4c:	02a2a825 	or	s5,s5,v0
     a50:	afb50018 	sw	s5,24(sp)
     a54:	afb6001c 	sw	s6,28(sp)
	}
      shift64RightJamming (aSig, -expDiff, &aSig);
     a58:	8fa5001c 	lw	a1,28(sp)
     a5c:	8fa40018 	lw	a0,24(sp)
     a60:	00063023 	negu	a2,a2
     a64:	0c000000 	jal	0 <countLeadingZeros32>
     a68:	27a70018 	addiu	a3,sp,24
      zExp = bExp;
     a6c:	080002c2 	j	b08 <float64_add+0x260>
     a70:	02008821 	addu	s1,s0,zero
    }
  else
    {
      if (aExp == 0x7FF)
     a74:	1622000e 	bne	s1,v0,ab0 <float64_add+0x208>
     a78:	00000000 	sll	zero,zero,0x0
	{
	  if (aSig | bSig)
     a7c:	02f5a825 	or	s5,s7,s5
     a80:	03d6b025 	or	s6,s8,s6
     a84:	02b6a825 	or	s5,s5,s6
     a88:	12a000fc 	beqz	s5,e7c <float64_add+0x5d4>
     a8c:	02401021 	addu	v0,s2,zero
	    return propagateFloat64NaN (a, b);
     a90:	02602821 	addu	a1,s3,zero
     a94:	8fa70054 	lw	a3,84(sp)
     a98:	8fa60050 	lw	a2,80(sp)
     a9c:	0c00014c 	jal	530 <propagateFloat64NaN>
     aa0:	02402021 	addu	a0,s2,zero
     aa4:	00609821 	addu	s3,v1,zero
     aa8:	0800039e 	j	e78 <float64_add+0x5d0>
     aac:	00409021 	addu	s2,v0,zero
	  return a;
	}
      if (aExp == 0)
     ab0:	1620000f 	bnez	s1,af0 <float64_add+0x248>
     ab4:	3c024000 	lui	v0,0x4000
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
     ab8:	03d6b021 	addu	s6,s8,s6
     abc:	02def02b 	sltu	s8,s6,s8
     ac0:	02f5a821 	addu	s5,s7,s5
     ac4:	03d53021 	addu	a2,s8,s5
     ac8:	00063dc0 	sll	a3,a2,0x17
     acc:	00161242 	srl	v0,s6,0x9
     ad0:	02802021 	addu	a0,s4,zero
     ad4:	00002821 	addu	a1,zero,zero
     ad8:	00063242 	srl	a2,a2,0x9
     adc:	0c000000 	jal	0 <countLeadingZeros32>
     ae0:	00e23825 	or	a3,a3,v0
     ae4:	00609821 	addu	s3,v1,zero
     ae8:	0800039e 	j	e78 <float64_add+0x5d0>
     aec:	00409021 	addu	s2,v0,zero
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
     af0:	02de3821 	addu	a3,s6,s8
     af4:	00f6302b 	sltu	a2,a3,s6
     af8:	02b7a821 	addu	s5,s5,s7
     afc:	00d53021 	addu	a2,a2,s5
     b00:	080002d9 	j	b64 <float64_add+0x2bc>
     b04:	00c23021 	addu	a2,a2,v0
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
     b08:	3c022000 	lui	v0,0x2000
     b0c:	8fa40018 	lw	a0,24(sp)
     b10:	00000000 	sll	zero,zero,0x0
     b14:	00822025 	or	a0,a0,v0
     b18:	8fa3001c 	lw	v1,28(sp)
     b1c:	afa40018 	sw	a0,24(sp)
  zSig = (aSig + bSig) << 1;
     b20:	8fa20014 	lw	v0,20(sp)
     b24:	00000000 	sll	zero,zero,0x0
     b28:	00621021 	addu	v0,v1,v0
     b2c:	0043182b 	sltu	v1,v0,v1
     b30:	8fa50010 	lw	a1,16(sp)
     b34:	00000000 	sll	zero,zero,0x0
     b38:	00852021 	addu	a0,a0,a1
     b3c:	00641821 	addu	v1,v1,a0
     b40:	000227c2 	srl	a0,v0,0x1f
     b44:	00033040 	sll	a2,v1,0x1
     b48:	00863025 	or	a2,a0,a2
  --zExp;
  if ((sbits64) zSig < 0)
     b4c:	04c00003 	bltz	a2,b5c <float64_add+0x2b4>
     b50:	00023840 	sll	a3,v0,0x1
      zExp = aExp;
      goto roundAndPack;
    }
  aSig |= LIT64 (0x2000000000000000);
  zSig = (aSig + bSig) << 1;
  --zExp;
     b54:	080002d9 	j	b64 <float64_add+0x2bc>
     b58:	2631ffff 	addiu	s1,s1,-1
  if ((sbits64) zSig < 0)
    {
      zSig = aSig + bSig;
     b5c:	00603021 	addu	a2,v1,zero
     b60:	00403821 	addu	a3,v0,zero
      ++zExp;
    }
roundAndPack:
  return roundAndPackFloat64 (zSign, zExp, zSig);
     b64:	02802021 	addu	a0,s4,zero
     b68:	0c000192 	jal	648 <roundAndPackFloat64>
     b6c:	02202821 	addu	a1,s1,zero
     b70:	00609821 	addu	s3,v1,zero
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
     b74:	0800039e 	j	e78 <float64_add+0x5d0>
     b78:	00409021 	addu	s2,v0,zero
{
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  int16 expDiff;

  aSig = extractFloat64Frac (a);
     b7c:	0c000000 	jal	0 <countLeadingZeros32>
     b80:	02402021 	addu	a0,s2,zero
     b84:	0040a821 	addu	s5,v0,zero
     b88:	0060b021 	addu	s6,v1,zero
  aExp = extractFloat64Exp (a);
     b8c:	02602821 	addu	a1,s3,zero
     b90:	0c000000 	jal	0 <countLeadingZeros32>
     b94:	02402021 	addu	a0,s2,zero
  bSig = extractFloat64Frac (b);
     b98:	8fa50054 	lw	a1,84(sp)
     b9c:	8fa40050 	lw	a0,80(sp)
     ba0:	0c000000 	jal	0 <countLeadingZeros32>
     ba4:	00408821 	addu	s1,v0,zero
     ba8:	0040b821 	addu	s7,v0,zero
  bExp = extractFloat64Exp (b);
     bac:	8fa50054 	lw	a1,84(sp)
     bb0:	8fa40050 	lw	a0,80(sp)
     bb4:	0c000000 	jal	0 <countLeadingZeros32>
     bb8:	0060f021 	addu	s8,v1,zero
     bbc:	00408021 	addu	s0,v0,zero
  expDiff = aExp - bExp;
     bc0:	02223023 	subu	a2,s1,v0
  aSig <<= 10;
     bc4:	00161582 	srl	v0,s6,0x16
     bc8:	0015aa80 	sll	s5,s5,0xa
     bcc:	0055a825 	or	s5,v0,s5
     bd0:	0016b280 	sll	s6,s6,0xa
     bd4:	afb50010 	sw	s5,16(sp)
     bd8:	afb60014 	sw	s6,20(sp)
  bSig <<= 10;
     bdc:	001e1582 	srl	v0,s8,0x16
     be0:	0017ba80 	sll	s7,s7,0xa
     be4:	0057b825 	or	s7,v0,s7
     be8:	001ef280 	sll	s8,s8,0xa
     bec:	afb70018 	sw	s7,24(sp)
  if (0 < expDiff)
     bf0:	1cc00066 	bgtz	a2,d8c <float64_add+0x4e4>
     bf4:	afbe001c 	sw	s8,28(sp)
    goto aExpBigger;
  if (expDiff < 0)
     bf8:	04c00031 	bltz	a2,cc0 <float64_add+0x418>
     bfc:	240207ff 	addiu	v0,zero,2047
    goto bExpBigger;
  if (aExp == 0x7FF)
     c00:	16220013 	bne	s1,v0,c50 <float64_add+0x3a8>
     c04:	00000000 	sll	zero,zero,0x0
    {
      if (aSig | bSig)
     c08:	02f5a825 	or	s5,s7,s5
     c0c:	03d6f025 	or	s8,s8,s6
     c10:	02bea825 	or	s5,s5,s8
     c14:	12a00008 	beqz	s5,c38 <float64_add+0x390>
     c18:	02602821 	addu	a1,s3,zero
	return propagateFloat64NaN (a, b);
     c1c:	8fa70054 	lw	a3,84(sp)
     c20:	8fa60050 	lw	a2,80(sp)
     c24:	0c00014c 	jal	530 <propagateFloat64NaN>
     c28:	02402021 	addu	a0,s2,zero
     c2c:	00609821 	addu	s3,v1,zero
     c30:	0800039e 	j	e78 <float64_add+0x5d0>
     c34:	00409021 	addu	s2,v0,zero
      float_raise (float_flag_invalid);
     c38:	0c000000 	jal	0 <countLeadingZeros32>
     c3c:	24040010 	addiu	a0,zero,16
      return float64_default_nan;
     c40:	2413ffff 	addiu	s3,zero,-1
     c44:	3c127fff 	lui	s2,0x7fff
     c48:	0800039e 	j	e78 <float64_add+0x5d0>
     c4c:	3652ffff 	ori	s2,s2,0xffff
    }
  if (aExp == 0)
     c50:	16200003 	bnez	s1,c60 <float64_add+0x3b8>
     c54:	02f5102b 	sltu	v0,s7,s5
    {
      aExp = 1;
      bExp = 1;
     c58:	24100001 	addiu	s0,zero,1
      float_raise (float_flag_invalid);
      return float64_default_nan;
    }
  if (aExp == 0)
    {
      aExp = 1;
     c5c:	24110001 	addiu	s1,zero,1
      bExp = 1;
    }
  if (bSig < aSig)
     c60:	14400067 	bnez	v0,e00 <float64_add+0x558>
     c64:	00000000 	sll	zero,zero,0x0
     c68:	16b70004 	bne	s5,s7,c7c <float64_add+0x3d4>
     c6c:	02b7102b 	sltu	v0,s5,s7
     c70:	03d6102b 	sltu	v0,s8,s6
     c74:	14400062 	bnez	v0,e00 <float64_add+0x558>
     c78:	02b7102b 	sltu	v0,s5,s7
    goto aBigger;
  if (aSig < bSig)
     c7c:	14400036 	bnez	v0,d58 <float64_add+0x4b0>
     c80:	00000000 	sll	zero,zero,0x0
     c84:	16f50003 	bne	s7,s5,c94 <float64_add+0x3ec>
     c88:	02deb02b 	sltu	s6,s6,s8
     c8c:	16c00033 	bnez	s6,d5c <float64_add+0x4b4>
     c90:	02008821 	addu	s1,s0,zero
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
     c94:	8f840000 	lw	a0,0(gp)
     c98:	00000000 	sll	zero,zero,0x0
     c9c:	38840003 	xori	a0,a0,0x3
     ca0:	2c840001 	sltiu	a0,a0,1
     ca4:	00002821 	addu	a1,zero,zero
     ca8:	00003821 	addu	a3,zero,zero
     cac:	0c000000 	jal	0 <countLeadingZeros32>
     cb0:	00003021 	addu	a2,zero,zero
     cb4:	00609821 	addu	s3,v1,zero
     cb8:	0800039e 	j	e78 <float64_add+0x5d0>
     cbc:	00409021 	addu	s2,v0,zero
bExpBigger:
  if (bExp == 0x7FF)
     cc0:	16020012 	bne	s0,v0,d0c <float64_add+0x464>
     cc4:	02feb825 	or	s7,s7,s8
    {
      if (bSig)
     cc8:	12e00009 	beqz	s7,cf0 <float64_add+0x448>
     ccc:	240507ff 	addiu	a1,zero,2047
	return propagateFloat64NaN (a, b);
     cd0:	02602821 	addu	a1,s3,zero
     cd4:	8fa70054 	lw	a3,84(sp)
     cd8:	8fa60050 	lw	a2,80(sp)
     cdc:	0c00014c 	jal	530 <propagateFloat64NaN>
     ce0:	02402021 	addu	a0,s2,zero
     ce4:	00609821 	addu	s3,v1,zero
     ce8:	0800039e 	j	e78 <float64_add+0x5d0>
     cec:	00409021 	addu	s2,v0,zero
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
     cf0:	3a840001 	xori	a0,s4,0x1
     cf4:	00003821 	addu	a3,zero,zero
     cf8:	0c000000 	jal	0 <countLeadingZeros32>
     cfc:	00003021 	addu	a2,zero,zero
     d00:	00609821 	addu	s3,v1,zero
     d04:	0800039e 	j	e78 <float64_add+0x5d0>
     d08:	00409021 	addu	s2,v0,zero
    }
  if (aExp == 0)
     d0c:	16200003 	bnez	s1,d1c <float64_add+0x474>
     d10:	3c024000 	lui	v0,0x4000
    ++expDiff;
     d14:	0800034a 	j	d28 <float64_add+0x480>
     d18:	24c60001 	addiu	a2,a2,1
  else
    aSig |= LIT64 (0x4000000000000000);
     d1c:	02a2a825 	or	s5,s5,v0
     d20:	afb50010 	sw	s5,16(sp)
     d24:	afb60014 	sw	s6,20(sp)
  shift64RightJamming (aSig, -expDiff, &aSig);
     d28:	8fa50014 	lw	a1,20(sp)
     d2c:	8fa40010 	lw	a0,16(sp)
     d30:	00063023 	negu	a2,a2
     d34:	0c000000 	jal	0 <countLeadingZeros32>
     d38:	27a70010 	addiu	a3,sp,16
  bSig |= LIT64 (0x4000000000000000);
     d3c:	3c024000 	lui	v0,0x4000
     d40:	8fa30018 	lw	v1,24(sp)
     d44:	00000000 	sll	zero,zero,0x0
     d48:	00621025 	or	v0,v1,v0
     d4c:	afa20018 	sw	v0,24(sp)
  int16 expDiff;

  aSig = extractFloat64Frac (a);
  aExp = extractFloat64Exp (a);
  bSig = extractFloat64Frac (b);
  bExp = extractFloat64Exp (b);
     d50:	08000357 	j	d5c <float64_add+0x4b4>
     d54:	02008821 	addu	s1,s0,zero
      aExp = 1;
      bExp = 1;
    }
  if (bSig < aSig)
    goto aBigger;
  if (aSig < bSig)
     d58:	02008821 	addu	s1,s0,zero
  else
    aSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (aSig, -expDiff, &aSig);
  bSig |= LIT64 (0x4000000000000000);
bBigger:
  zSig = bSig - aSig;
     d5c:	8fb2001c 	lw	s2,28(sp)
     d60:	8fb00014 	lw	s0,20(sp)
     d64:	00000000 	sll	zero,zero,0x0
     d68:	02508023 	subu	s0,s2,s0
     d6c:	0250902b 	sltu	s2,s2,s0
     d70:	8fa20010 	lw	v0,16(sp)
     d74:	8fa30018 	lw	v1,24(sp)
     d78:	00000000 	sll	zero,zero,0x0
     d7c:	00621023 	subu	v0,v1,v0
     d80:	00529023 	subu	s2,v0,s2
  zExp = bExp;
  zSign ^= 1;
     d84:	0800038a 	j	e28 <float64_add+0x580>
     d88:	3a940001 	xori	s4,s4,0x1
  goto normalizeRoundAndPack;
aExpBigger:
  if (aExp == 0x7FF)
     d8c:	240207ff 	addiu	v0,zero,2047
     d90:	1622000b 	bne	s1,v0,dc0 <float64_add+0x518>
     d94:	02b6a825 	or	s5,s5,s6
    {
      if (aSig)
     d98:	12a00038 	beqz	s5,e7c <float64_add+0x5d4>
     d9c:	02401021 	addu	v0,s2,zero
	return propagateFloat64NaN (a, b);
     da0:	02602821 	addu	a1,s3,zero
     da4:	8fa70054 	lw	a3,84(sp)
     da8:	8fa60050 	lw	a2,80(sp)
     dac:	0c00014c 	jal	530 <propagateFloat64NaN>
     db0:	02402021 	addu	a0,s2,zero
     db4:	00609821 	addu	s3,v1,zero
     db8:	0800039e 	j	e78 <float64_add+0x5d0>
     dbc:	00409021 	addu	s2,v0,zero
      return a;
    }
  if (bExp == 0)
     dc0:	16000003 	bnez	s0,dd0 <float64_add+0x528>
     dc4:	3c024000 	lui	v0,0x4000
    --expDiff;
     dc8:	08000377 	j	ddc <float64_add+0x534>
     dcc:	24c6ffff 	addiu	a2,a2,-1
  else
    bSig |= LIT64 (0x4000000000000000);
     dd0:	02e2b825 	or	s7,s7,v0
     dd4:	afb70018 	sw	s7,24(sp)
     dd8:	afbe001c 	sw	s8,28(sp)
  shift64RightJamming (bSig, expDiff, &bSig);
     ddc:	8fa5001c 	lw	a1,28(sp)
     de0:	8fa40018 	lw	a0,24(sp)
     de4:	0c000000 	jal	0 <countLeadingZeros32>
     de8:	27a70018 	addiu	a3,sp,24
  aSig |= LIT64 (0x4000000000000000);
     dec:	3c024000 	lui	v0,0x4000
     df0:	8fa30010 	lw	v1,16(sp)
     df4:	00000000 	sll	zero,zero,0x0
     df8:	00621025 	or	v0,v1,v0
     dfc:	afa20010 	sw	v0,16(sp)
aBigger:
  zSig = aSig - bSig;
     e00:	8fb20014 	lw	s2,20(sp)
     e04:	8fb0001c 	lw	s0,28(sp)
     e08:	00000000 	sll	zero,zero,0x0
     e0c:	02508023 	subu	s0,s2,s0
     e10:	0250902b 	sltu	s2,s2,s0
     e14:	8fa20018 	lw	v0,24(sp)
     e18:	8fa30010 	lw	v1,16(sp)
     e1c:	00000000 	sll	zero,zero,0x0
     e20:	00621023 	subu	v0,v1,v0
     e24:	00529023 	subu	s2,v0,s2
static float64
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
     e28:	02402021 	addu	a0,s2,zero
     e2c:	0c000015 	jal	54 <countLeadingZeros64>
     e30:	02002821 	addu	a1,s0,zero
  aSig |= LIT64 (0x4000000000000000);
aBigger:
  zSig = aSig - bSig;
  zExp = aExp;
normalizeRoundAndPack:
  --zExp;
     e34:	2447ffff 	addiu	a3,v0,-1
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
  return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
     e38:	02222823 	subu	a1,s1,v0
     e3c:	30e20020 	andi	v0,a3,0x20
     e40:	10400004 	beqz	v0,e54 <float64_add+0x5ac>
     e44:	00101842 	srl	v1,s0,0x1
     e48:	00f03004 	sllv	a2,s0,a3
     e4c:	0800039a 	j	e68 <float64_add+0x5c0>
     e50:	00003821 	addu	a3,zero,zero
     e54:	00071027 	nor	v0,zero,a3
     e58:	00431006 	srlv	v0,v1,v0
     e5c:	00f23004 	sllv	a2,s2,a3
     e60:	00463025 	or	a2,v0,a2
     e64:	00f03804 	sllv	a3,s0,a3
     e68:	0c000192 	jal	648 <roundAndPackFloat64>
     e6c:	02802021 	addu	a0,s4,zero
     e70:	00609821 	addu	s3,v1,zero
     e74:	00409021 	addu	s2,v0,zero
  if (aSign == bSign)
    return addFloat64Sigs (a, b, aSign);
  else
    return subFloat64Sigs (a, b, aSign);

}
     e78:	02401021 	addu	v0,s2,zero
     e7c:	02601821 	addu	v1,s3,zero
     e80:	8fbf0044 	lw	ra,68(sp)
     e84:	8fbe0040 	lw	s8,64(sp)
     e88:	8fb7003c 	lw	s7,60(sp)
     e8c:	8fb60038 	lw	s6,56(sp)
     e90:	8fb50034 	lw	s5,52(sp)
     e94:	8fb40030 	lw	s4,48(sp)
     e98:	8fb3002c 	lw	s3,44(sp)
     e9c:	8fb20028 	lw	s2,40(sp)
     ea0:	8fb10024 	lw	s1,36(sp)
     ea4:	8fb00020 	lw	s0,32(sp)
     ea8:	03e00008 	jr	ra
     eac:	27bd0048 	addiu	sp,sp,72

00000eb0 <float64_mul>:
| for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_mul (float64 a, float64 b)
{
     eb0:	27bdffa0 	addiu	sp,sp,-96
     eb4:	afbf005c 	sw	ra,92(sp)
     eb8:	afb60058 	sw	s6,88(sp)
     ebc:	afb50054 	sw	s5,84(sp)
     ec0:	afb40050 	sw	s4,80(sp)
     ec4:	afb3004c 	sw	s3,76(sp)
     ec8:	afb20048 	sw	s2,72(sp)
     ecc:	afb10044 	sw	s1,68(sp)
     ed0:	afb00040 	sw	s0,64(sp)
     ed4:	afa50064 	sw	a1,100(sp)
     ed8:	afa40060 	sw	a0,96(sp)
     edc:	afa7006c 	sw	a3,108(sp)
  flag aSign, bSign, zSign;
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig0, zSig1;

  aSig = extractFloat64Frac (a);
     ee0:	0c000000 	jal	0 <countLeadingZeros32>
     ee4:	afa60068 	sw	a2,104(sp)
     ee8:	00409021 	addu	s2,v0,zero
     eec:	afb20020 	sw	s2,32(sp)
     ef0:	afa30024 	sw	v1,36(sp)
  aExp = extractFloat64Exp (a);
     ef4:	8fa50064 	lw	a1,100(sp)
     ef8:	8fa40060 	lw	a0,96(sp)
     efc:	0c000000 	jal	0 <countLeadingZeros32>
     f00:	0060a821 	addu	s5,v1,zero
     f04:	afa20018 	sw	v0,24(sp)
  aSign = extractFloat64Sign (a);
     f08:	8fa50064 	lw	a1,100(sp)
     f0c:	8fa40060 	lw	a0,96(sp)
     f10:	0c000000 	jal	0 <countLeadingZeros32>
     f14:	00408021 	addu	s0,v0,zero
  bSig = extractFloat64Frac (b);
     f18:	8fa5006c 	lw	a1,108(sp)
     f1c:	8fa40068 	lw	a0,104(sp)
     f20:	0c000000 	jal	0 <countLeadingZeros32>
     f24:	0040a021 	addu	s4,v0,zero
     f28:	00409821 	addu	s3,v0,zero
     f2c:	afb30028 	sw	s3,40(sp)
     f30:	afa3002c 	sw	v1,44(sp)
  bExp = extractFloat64Exp (b);
     f34:	8fa5006c 	lw	a1,108(sp)
     f38:	8fa40068 	lw	a0,104(sp)
     f3c:	0c000000 	jal	0 <countLeadingZeros32>
     f40:	0060b021 	addu	s6,v1,zero
     f44:	afa2001c 	sw	v0,28(sp)
  bSign = extractFloat64Sign (b);
     f48:	8fa5006c 	lw	a1,108(sp)
     f4c:	8fa40068 	lw	a0,104(sp)
     f50:	0c000000 	jal	0 <countLeadingZeros32>
     f54:	00408821 	addu	s1,v0,zero
  zSign = aSign ^ bSign;
     f58:	0054a026 	xor	s4,v0,s4
  if (aExp == 0x7FF)
     f5c:	240207ff 	addiu	v0,zero,2047
     f60:	16020025 	bne	s0,v0,ff8 <float64_mul+0x148>
     f64:	00000000 	sll	zero,zero,0x0
    {
      if (aSig || ((bExp == 0x7FF) && bSig))
     f68:	02559025 	or	s2,s2,s5
     f6c:	16400006 	bnez	s2,f88 <float64_mul+0xd8>
     f70:	00000000 	sll	zero,zero,0x0
     f74:	1622000d 	bne	s1,v0,fac <float64_mul+0xfc>
     f78:	001117c3 	sra	v0,s1,0x1f
     f7c:	02769825 	or	s3,s3,s6
     f80:	12600015 	beqz	s3,fd8 <float64_mul+0x128>
     f84:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
     f88:	8fa50064 	lw	a1,100(sp)
     f8c:	8fa40060 	lw	a0,96(sp)
     f90:	8fa7006c 	lw	a3,108(sp)
     f94:	8fa60068 	lw	a2,104(sp)
     f98:	0c00014c 	jal	530 <propagateFloat64NaN>
     f9c:	00000000 	sll	zero,zero,0x0
     fa0:	00602821 	addu	a1,v1,zero
     fa4:	0800047b 	j	11ec <float64_mul+0x33c>
     fa8:	00402021 	addu	a0,v0,zero
      if ((bExp | bSig) == 0)
     fac:	00539825 	or	s3,v0,s3
     fb0:	02368825 	or	s1,s1,s6
     fb4:	02718825 	or	s1,s3,s1
     fb8:	16200007 	bnez	s1,fd8 <float64_mul+0x128>
     fbc:	00000000 	sll	zero,zero,0x0
	{
	  float_raise (float_flag_invalid);
     fc0:	0c000000 	jal	0 <countLeadingZeros32>
     fc4:	24040010 	addiu	a0,zero,16
	  return float64_default_nan;
     fc8:	2405ffff 	addiu	a1,zero,-1
     fcc:	3c047fff 	lui	a0,0x7fff
     fd0:	0800047b 	j	11ec <float64_mul+0x33c>
     fd4:	3484ffff 	ori	a0,a0,0xffff
	}
      return packFloat64 (zSign, 0x7FF, 0);
     fd8:	02802021 	addu	a0,s4,zero
     fdc:	240507ff 	addiu	a1,zero,2047
     fe0:	00003821 	addu	a3,zero,zero
     fe4:	0c000000 	jal	0 <countLeadingZeros32>
     fe8:	00003021 	addu	a2,zero,zero
     fec:	00602821 	addu	a1,v1,zero
     ff0:	0800047b 	j	11ec <float64_mul+0x33c>
     ff4:	00402021 	addu	a0,v0,zero
    }
  if (bExp == 0x7FF)
     ff8:	1622001e 	bne	s1,v0,1074 <float64_mul+0x1c4>
     ffc:	02769825 	or	s3,s3,s6
    {
      if (bSig)
    1000:	1260000a 	beqz	s3,102c <float64_mul+0x17c>
    1004:	001017c3 	sra	v0,s0,0x1f
	return propagateFloat64NaN (a, b);
    1008:	8fa50064 	lw	a1,100(sp)
    100c:	8fa40060 	lw	a0,96(sp)
    1010:	8fa7006c 	lw	a3,108(sp)
    1014:	8fa60068 	lw	a2,104(sp)
    1018:	0c00014c 	jal	530 <propagateFloat64NaN>
    101c:	00000000 	sll	zero,zero,0x0
    1020:	00602821 	addu	a1,v1,zero
    1024:	0800047b 	j	11ec <float64_mul+0x33c>
    1028:	00402021 	addu	a0,v0,zero
      if ((aExp | aSig) == 0)
    102c:	00529025 	or	s2,v0,s2
    1030:	02158025 	or	s0,s0,s5
    1034:	02508025 	or	s0,s2,s0
    1038:	16000007 	bnez	s0,1058 <float64_mul+0x1a8>
    103c:	00003821 	addu	a3,zero,zero
	{
	  float_raise (float_flag_invalid);
    1040:	0c000000 	jal	0 <countLeadingZeros32>
    1044:	24040010 	addiu	a0,zero,16
	  return float64_default_nan;
    1048:	2405ffff 	addiu	a1,zero,-1
    104c:	3c047fff 	lui	a0,0x7fff
    1050:	0800047b 	j	11ec <float64_mul+0x33c>
    1054:	3484ffff 	ori	a0,a0,0xffff
	}
      return packFloat64 (zSign, 0x7FF, 0);
    1058:	02802021 	addu	a0,s4,zero
    105c:	240507ff 	addiu	a1,zero,2047
    1060:	0c000000 	jal	0 <countLeadingZeros32>
    1064:	00003021 	addu	a2,zero,zero
    1068:	00602821 	addu	a1,v1,zero
    106c:	0800047b 	j	11ec <float64_mul+0x33c>
    1070:	00402021 	addu	a0,v0,zero
    }
  if (aExp == 0)
    1074:	1600000f 	bnez	s0,10b4 <float64_mul+0x204>
    1078:	02551025 	or	v0,s2,s5
    {
      if (aSig == 0)
    107c:	14400008 	bnez	v0,10a0 <float64_mul+0x1f0>
    1080:	02802021 	addu	a0,s4,zero
	return packFloat64 (zSign, 0, 0);
    1084:	00002821 	addu	a1,zero,zero
    1088:	00003821 	addu	a3,zero,zero
    108c:	0c000000 	jal	0 <countLeadingZeros32>
    1090:	00003021 	addu	a2,zero,zero
    1094:	00602821 	addu	a1,v1,zero
    1098:	0800047b 	j	11ec <float64_mul+0x33c>
    109c:	00402021 	addu	a0,v0,zero
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    10a0:	02402021 	addu	a0,s2,zero
    10a4:	02a02821 	addu	a1,s5,zero
    10a8:	27a60018 	addiu	a2,sp,24
    10ac:	0c000026 	jal	98 <normalizeFloat64Subnormal>
    10b0:	27a70020 	addiu	a3,sp,32
    }
  if (bExp == 0)
    10b4:	8fa2001c 	lw	v0,28(sp)
    10b8:	00000000 	sll	zero,zero,0x0
    10bc:	14400012 	bnez	v0,1108 <float64_mul+0x258>
    10c0:	00000000 	sll	zero,zero,0x0
    {
      if (bSig == 0)
    10c4:	8fa40028 	lw	a0,40(sp)
    10c8:	8fa5002c 	lw	a1,44(sp)
    10cc:	00000000 	sll	zero,zero,0x0
    10d0:	00851025 	or	v0,a0,a1
    10d4:	14400008 	bnez	v0,10f8 <float64_mul+0x248>
    10d8:	00003821 	addu	a3,zero,zero
	return packFloat64 (zSign, 0, 0);
    10dc:	02802021 	addu	a0,s4,zero
    10e0:	00002821 	addu	a1,zero,zero
    10e4:	0c000000 	jal	0 <countLeadingZeros32>
    10e8:	00003021 	addu	a2,zero,zero
    10ec:	00602821 	addu	a1,v1,zero
    10f0:	0800047b 	j	11ec <float64_mul+0x33c>
    10f4:	00402021 	addu	a0,v0,zero
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    10f8:	27a6001c 	addiu	a2,sp,28
    10fc:	0c000026 	jal	98 <normalizeFloat64Subnormal>
    1100:	27a70028 	addiu	a3,sp,40
    }
  zExp = aExp + bExp - 0x3FF;
    1104:	8fa2001c 	lw	v0,28(sp)
    1108:	8fb00018 	lw	s0,24(sp)
    110c:	00000000 	sll	zero,zero,0x0
    1110:	02028021 	addu	s0,s0,v0
    1114:	2610fc01 	addiu	s0,s0,-1023
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    1118:	3c020010 	lui	v0,0x10
    111c:	8fa40020 	lw	a0,32(sp)
    1120:	00000000 	sll	zero,zero,0x0
    1124:	00822025 	or	a0,a0,v0
    1128:	8fa50024 	lw	a1,36(sp)
    112c:	00000000 	sll	zero,zero,0x0
    1130:	00051d82 	srl	v1,a1,0x16
    1134:	00042280 	sll	a0,a0,0xa
    1138:	00642025 	or	a0,v1,a0
    113c:	00052a80 	sll	a1,a1,0xa
    1140:	afa40020 	sw	a0,32(sp)
    1144:	afa50024 	sw	a1,36(sp)
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    1148:	8fa60028 	lw	a2,40(sp)
    114c:	00000000 	sll	zero,zero,0x0
    1150:	00c23025 	or	a2,a2,v0
    1154:	8fa7002c 	lw	a3,44(sp)
    1158:	00000000 	sll	zero,zero,0x0
    115c:	00071d42 	srl	v1,a3,0x15
    1160:	000632c0 	sll	a2,a2,0xb
    1164:	00663025 	or	a2,v1,a2
    1168:	00073ac0 	sll	a3,a3,0xb
    116c:	afa60028 	sw	a2,40(sp)
    1170:	afa7002c 	sw	a3,44(sp)
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
    1174:	27a20030 	addiu	v0,sp,48
    1178:	afa20010 	sw	v0,16(sp)
    117c:	27a20038 	addiu	v0,sp,56
    1180:	0c000000 	jal	0 <countLeadingZeros32>
    1184:	afa20014 	sw	v0,20(sp)
  zSig0 |= (zSig1 != 0);
    1188:	8fa2003c 	lw	v0,60(sp)
    118c:	8fa30038 	lw	v1,56(sp)
    1190:	00000000 	sll	zero,zero,0x0
    1194:	00621825 	or	v1,v1,v0
    1198:	0003182b 	sltu	v1,zero,v1
    119c:	8fa20030 	lw	v0,48(sp)
    11a0:	8fa40034 	lw	a0,52(sp)
    11a4:	00000000 	sll	zero,zero,0x0
    11a8:	00831825 	or	v1,a0,v1
    11ac:	afa30034 	sw	v1,52(sp)
  if (0 <= (sbits64) (zSig0 << 1))
    11b0:	000327c2 	srl	a0,v1,0x1f
    11b4:	00021040 	sll	v0,v0,0x1
    11b8:	00821025 	or	v0,a0,v0
    11bc:	04400004 	bltz	v0,11d0 <float64_mul+0x320>
    11c0:	00031840 	sll	v1,v1,0x1
    {
      zSig0 <<= 1;
    11c4:	afa20030 	sw	v0,48(sp)
    11c8:	afa30034 	sw	v1,52(sp)
      --zExp;
    11cc:	2610ffff 	addiu	s0,s0,-1
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);
    11d0:	02802021 	addu	a0,s4,zero
    11d4:	8fa70034 	lw	a3,52(sp)
    11d8:	8fa60030 	lw	a2,48(sp)
    11dc:	0c000192 	jal	648 <roundAndPackFloat64>
    11e0:	02002821 	addu	a1,s0,zero
    11e4:	00602821 	addu	a1,v1,zero
    11e8:	00402021 	addu	a0,v0,zero

}
    11ec:	00801021 	addu	v0,a0,zero
    11f0:	00a01821 	addu	v1,a1,zero
    11f4:	8fbf005c 	lw	ra,92(sp)
    11f8:	8fb60058 	lw	s6,88(sp)
    11fc:	8fb50054 	lw	s5,84(sp)
    1200:	8fb40050 	lw	s4,80(sp)
    1204:	8fb3004c 	lw	s3,76(sp)
    1208:	8fb20048 	lw	s2,72(sp)
    120c:	8fb10044 	lw	s1,68(sp)
    1210:	8fb00040 	lw	s0,64(sp)
    1214:	03e00008 	jr	ra
    1218:	27bd0060 	addiu	sp,sp,96

0000121c <float64_div>:
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
    121c:	27bdff48 	addiu	sp,sp,-184
    1220:	afbf00b4 	sw	ra,180(sp)
    1224:	afbe00b0 	sw	s8,176(sp)
    1228:	afb700ac 	sw	s7,172(sp)
    122c:	afb600a8 	sw	s6,168(sp)
    1230:	afb500a4 	sw	s5,164(sp)
    1234:	afb400a0 	sw	s4,160(sp)
    1238:	afb3009c 	sw	s3,156(sp)
    123c:	afb20098 	sw	s2,152(sp)
    1240:	afb10094 	sw	s1,148(sp)
    1244:	afb00090 	sw	s0,144(sp)
    1248:	afa500bc 	sw	a1,188(sp)
    124c:	afa400b8 	sw	a0,184(sp)
    1250:	afa700c4 	sw	a3,196(sp)
  flag aSign, bSign, zSign;
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  bits64 rem0, rem1, term0, term1;

  aSig = extractFloat64Frac (a);
    1254:	0c000000 	jal	0 <countLeadingZeros32>
    1258:	afa600c0 	sw	a2,192(sp)
    125c:	00409821 	addu	s3,v0,zero
    1260:	afb30030 	sw	s3,48(sp)
    1264:	afa30034 	sw	v1,52(sp)
  aExp = extractFloat64Exp (a);
    1268:	8fa500bc 	lw	a1,188(sp)
    126c:	8fa400b8 	lw	a0,184(sp)
    1270:	0c000000 	jal	0 <countLeadingZeros32>
    1274:	0060b021 	addu	s6,v1,zero
    1278:	afa20028 	sw	v0,40(sp)
  aSign = extractFloat64Sign (a);
    127c:	8fa500bc 	lw	a1,188(sp)
    1280:	8fa400b8 	lw	a0,184(sp)
    1284:	0c000000 	jal	0 <countLeadingZeros32>
    1288:	00408821 	addu	s1,v0,zero
  bSig = extractFloat64Frac (b);
    128c:	8fa500c4 	lw	a1,196(sp)
    1290:	8fa400c0 	lw	a0,192(sp)
    1294:	0c000000 	jal	0 <countLeadingZeros32>
    1298:	0040a021 	addu	s4,v0,zero
    129c:	00409021 	addu	s2,v0,zero
    12a0:	afb20038 	sw	s2,56(sp)
    12a4:	afa3003c 	sw	v1,60(sp)
  bExp = extractFloat64Exp (b);
    12a8:	8fa500c4 	lw	a1,196(sp)
    12ac:	8fa400c0 	lw	a0,192(sp)
    12b0:	0c000000 	jal	0 <countLeadingZeros32>
    12b4:	0060a821 	addu	s5,v1,zero
    12b8:	afa2002c 	sw	v0,44(sp)
  bSign = extractFloat64Sign (b);
    12bc:	8fa500c4 	lw	a1,196(sp)
    12c0:	8fa400c0 	lw	a0,192(sp)
    12c4:	0c000000 	jal	0 <countLeadingZeros32>
    12c8:	00408021 	addu	s0,v0,zero
  zSign = aSign ^ bSign;
    12cc:	0054b826 	xor	s7,v0,s4
  if (aExp == 0x7FF)
    12d0:	240207ff 	addiu	v0,zero,2047
    12d4:	16220028 	bne	s1,v0,1378 <float64_div+0x15c>
    12d8:	00000000 	sll	zero,zero,0x0
    {
      if (aSig)
    12dc:	02769825 	or	s3,s3,s6
    12e0:	1260000a 	beqz	s3,130c <float64_div+0xf0>
    12e4:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    12e8:	8fa500bc 	lw	a1,188(sp)
    12ec:	8fa400b8 	lw	a0,184(sp)
    12f0:	8fa700c4 	lw	a3,196(sp)
    12f4:	8fa600c0 	lw	a2,192(sp)
    12f8:	0c00014c 	jal	530 <propagateFloat64NaN>
    12fc:	00000000 	sll	zero,zero,0x0
    1300:	00602821 	addu	a1,v1,zero
    1304:	08000605 	j	1814 <float64_div+0x5f8>
    1308:	00402021 	addu	a0,v0,zero
      if (bExp == 0x7FF)
    130c:	16020013 	bne	s0,v0,135c <float64_div+0x140>
    1310:	02e02021 	addu	a0,s7,zero
	{
	  if (bSig)
    1314:	02559025 	or	s2,s2,s5
    1318:	1240000a 	beqz	s2,1344 <float64_div+0x128>
    131c:	00000000 	sll	zero,zero,0x0
	    return propagateFloat64NaN (a, b);
    1320:	8fa500bc 	lw	a1,188(sp)
    1324:	8fa400b8 	lw	a0,184(sp)
    1328:	8fa700c4 	lw	a3,196(sp)
    132c:	8fa600c0 	lw	a2,192(sp)
    1330:	0c00014c 	jal	530 <propagateFloat64NaN>
    1334:	00000000 	sll	zero,zero,0x0
    1338:	00602821 	addu	a1,v1,zero
    133c:	08000605 	j	1814 <float64_div+0x5f8>
    1340:	00402021 	addu	a0,v0,zero
	  float_raise (float_flag_invalid);
    1344:	0c000000 	jal	0 <countLeadingZeros32>
    1348:	24040010 	addiu	a0,zero,16
	  return float64_default_nan;
    134c:	2405ffff 	addiu	a1,zero,-1
    1350:	3c047fff 	lui	a0,0x7fff
    1354:	08000605 	j	1814 <float64_div+0x5f8>
    1358:	3484ffff 	ori	a0,a0,0xffff
	}
      return packFloat64 (zSign, 0x7FF, 0);
    135c:	240507ff 	addiu	a1,zero,2047
    1360:	00003821 	addu	a3,zero,zero
    1364:	0c000000 	jal	0 <countLeadingZeros32>
    1368:	00003021 	addu	a2,zero,zero
    136c:	00602821 	addu	a1,v1,zero
    1370:	08000605 	j	1814 <float64_div+0x5f8>
    1374:	00402021 	addu	a0,v0,zero
    }
  if (bExp == 0x7FF)
    1378:	16020014 	bne	s0,v0,13cc <float64_div+0x1b0>
    137c:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
    1380:	02559025 	or	s2,s2,s5
    1384:	1240000a 	beqz	s2,13b0 <float64_div+0x194>
    1388:	00003821 	addu	a3,zero,zero
	return propagateFloat64NaN (a, b);
    138c:	8fa500bc 	lw	a1,188(sp)
    1390:	8fa400b8 	lw	a0,184(sp)
    1394:	8fa700c4 	lw	a3,196(sp)
    1398:	8fa600c0 	lw	a2,192(sp)
    139c:	0c00014c 	jal	530 <propagateFloat64NaN>
    13a0:	00000000 	sll	zero,zero,0x0
    13a4:	00602821 	addu	a1,v1,zero
    13a8:	08000605 	j	1814 <float64_div+0x5f8>
    13ac:	00402021 	addu	a0,v0,zero
      return packFloat64 (zSign, 0, 0);
    13b0:	02e02021 	addu	a0,s7,zero
    13b4:	00002821 	addu	a1,zero,zero
    13b8:	0c000000 	jal	0 <countLeadingZeros32>
    13bc:	00003021 	addu	a2,zero,zero
    13c0:	00602821 	addu	a1,v1,zero
    13c4:	08000605 	j	1814 <float64_div+0x5f8>
    13c8:	00402021 	addu	a0,v0,zero
    }
  if (bExp == 0)
    13cc:	1600001d 	bnez	s0,1444 <float64_div+0x228>
    13d0:	02551025 	or	v0,s2,s5
    {
      if (bSig == 0)
    13d4:	14400016 	bnez	v0,1430 <float64_div+0x214>
    13d8:	001117c3 	sra	v0,s1,0x1f
	{
	  if ((aExp | aSig) == 0)
    13dc:	00539825 	or	s3,v0,s3
    13e0:	02368825 	or	s1,s1,s6
    13e4:	02718825 	or	s1,s3,s1
    13e8:	16200007 	bnez	s1,1408 <float64_div+0x1ec>
    13ec:	00000000 	sll	zero,zero,0x0
	    {
	      float_raise (float_flag_invalid);
    13f0:	0c000000 	jal	0 <countLeadingZeros32>
    13f4:	24040010 	addiu	a0,zero,16
	      return float64_default_nan;
    13f8:	2405ffff 	addiu	a1,zero,-1
    13fc:	3c047fff 	lui	a0,0x7fff
    1400:	08000605 	j	1814 <float64_div+0x5f8>
    1404:	3484ffff 	ori	a0,a0,0xffff
	    }
	  float_raise (float_flag_divbyzero);
    1408:	0c000000 	jal	0 <countLeadingZeros32>
    140c:	24040002 	addiu	a0,zero,2
	  return packFloat64 (zSign, 0x7FF, 0);
    1410:	02e02021 	addu	a0,s7,zero
    1414:	240507ff 	addiu	a1,zero,2047
    1418:	00003821 	addu	a3,zero,zero
    141c:	0c000000 	jal	0 <countLeadingZeros32>
    1420:	00003021 	addu	a2,zero,zero
    1424:	00602821 	addu	a1,v1,zero
    1428:	08000605 	j	1814 <float64_div+0x5f8>
    142c:	00402021 	addu	a0,v0,zero
	}
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    1430:	02402021 	addu	a0,s2,zero
    1434:	02a02821 	addu	a1,s5,zero
    1438:	27a6002c 	addiu	a2,sp,44
    143c:	0c000026 	jal	98 <normalizeFloat64Subnormal>
    1440:	27a70038 	addiu	a3,sp,56
    }
  if (aExp == 0)
    1444:	8fa20028 	lw	v0,40(sp)
    1448:	00000000 	sll	zero,zero,0x0
    144c:	14400011 	bnez	v0,1494 <float64_div+0x278>
    1450:	00000000 	sll	zero,zero,0x0
    {
      if (aSig == 0)
    1454:	8fa40030 	lw	a0,48(sp)
    1458:	8fa50034 	lw	a1,52(sp)
    145c:	00000000 	sll	zero,zero,0x0
    1460:	00851025 	or	v0,a0,a1
    1464:	14400008 	bnez	v0,1488 <float64_div+0x26c>
    1468:	00003821 	addu	a3,zero,zero
	return packFloat64 (zSign, 0, 0);
    146c:	02e02021 	addu	a0,s7,zero
    1470:	00002821 	addu	a1,zero,zero
    1474:	0c000000 	jal	0 <countLeadingZeros32>
    1478:	00003021 	addu	a2,zero,zero
    147c:	00602821 	addu	a1,v1,zero
    1480:	08000605 	j	1814 <float64_div+0x5f8>
    1484:	00402021 	addu	a0,v0,zero
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    1488:	27a60028 	addiu	a2,sp,40
    148c:	0c000026 	jal	98 <normalizeFloat64Subnormal>
    1490:	27a70030 	addiu	a3,sp,48
    }
  zExp = aExp - bExp + 0x3FD;
    1494:	8fbe0028 	lw	s8,40(sp)
    1498:	00000000 	sll	zero,zero,0x0
    149c:	27de03fd 	addiu	s8,s8,1021
    14a0:	8fa2002c 	lw	v0,44(sp)
    14a4:	00000000 	sll	zero,zero,0x0
    14a8:	03c2f023 	subu	s8,s8,v0
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    14ac:	3c040010 	lui	a0,0x10
    14b0:	8fa20030 	lw	v0,48(sp)
    14b4:	00000000 	sll	zero,zero,0x0
    14b8:	00441025 	or	v0,v0,a0
    14bc:	8fa30034 	lw	v1,52(sp)
    14c0:	00000000 	sll	zero,zero,0x0
    14c4:	00032d82 	srl	a1,v1,0x16
    14c8:	00021280 	sll	v0,v0,0xa
    14cc:	00a21025 	or	v0,a1,v0
    14d0:	00031a80 	sll	v1,v1,0xa
    14d4:	afa20030 	sw	v0,48(sp)
    14d8:	afa30034 	sw	v1,52(sp)
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    14dc:	8fb00038 	lw	s0,56(sp)
    14e0:	00000000 	sll	zero,zero,0x0
    14e4:	02048025 	or	s0,s0,a0
    14e8:	8fb3003c 	lw	s3,60(sp)
    14ec:	00000000 	sll	zero,zero,0x0
    14f0:	00132d42 	srl	a1,s3,0x15
    14f4:	001082c0 	sll	s0,s0,0xb
    14f8:	00b08025 	or	s0,a1,s0
    14fc:	00139ac0 	sll	s3,s3,0xb
    1500:	afb00038 	sw	s0,56(sp)
  if (bSig <= (aSig + aSig))
    1504:	00032840 	sll	a1,v1,0x1
    1508:	00a3302b 	sltu	a2,a1,v1
    150c:	00022040 	sll	a0,v0,0x1
    1510:	00c42021 	addu	a0,a2,a0
    1514:	0090302b 	sltu	a2,a0,s0
    1518:	14c0000c 	bnez	a2,154c <float64_div+0x330>
    151c:	afb3003c 	sw	s3,60(sp)
    1520:	16040004 	bne	s0,a0,1534 <float64_div+0x318>
    1524:	000227c0 	sll	a0,v0,0x1f
    1528:	00b3282b 	sltu	a1,a1,s3
    152c:	14a00007 	bnez	a1,154c <float64_div+0x330>
    1530:	00000000 	sll	zero,zero,0x0
    {
      aSig >>= 1;
    1534:	00031842 	srl	v1,v1,0x1
    1538:	00641825 	or	v1,v1,a0
    153c:	afa30034 	sw	v1,52(sp)
    1540:	00021042 	srl	v0,v0,0x1
    1544:	afa20030 	sw	v0,48(sp)
      ++zExp;
    1548:	27de0001 	addiu	s8,s8,1
    }
  zSig = estimateDiv128To64 (aSig, 0, bSig);
    154c:	8fb20030 	lw	s2,48(sp)
    1550:	8fb50034 	lw	s5,52(sp)
{
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
    1554:	0250102b 	sltu	v0,s2,s0
    1558:	14400005 	bnez	v0,1570 <float64_div+0x354>
    155c:	02008821 	addu	s1,s0,zero
    1560:	161200a3 	bne	s0,s2,17f0 <float64_div+0x5d4>
    1564:	02b3102b 	sltu	v0,s5,s3
    1568:	104000a1 	beqz	v0,17f0 <float64_div+0x5d4>
    156c:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
    1570:	0000a021 	addu	s4,zero,zero
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
    1574:	0250102b 	sltu	v0,s2,s0
    1578:	14400006 	bnez	v0,1594 <float64_div+0x378>
    157c:	afb00088 	sw	s0,136(sp)
    1580:	00001821 	addu	v1,zero,zero
    1584:	2402ffff 	addiu	v0,zero,-1
    1588:	afa30084 	sw	v1,132(sp)
    158c:	0800056d 	j	15b4 <float64_div+0x398>
    1590:	afa20080 	sw	v0,128(sp)
    1594:	02402021 	addu	a0,s2,zero
    1598:	02a02821 	addu	a1,s5,zero
    159c:	00003021 	addu	a2,zero,zero
    15a0:	0c000000 	jal	0 <countLeadingZeros32>
    15a4:	02003821 	addu	a3,s0,zero
    15a8:	afa30080 	sw	v1,128(sp)
    15ac:	00002821 	addu	a1,zero,zero
    15b0:	afa50084 	sw	a1,132(sp)
  mul64To128 (b, z, &term0, &term1);
    15b4:	27a20070 	addiu	v0,sp,112
    15b8:	afa20010 	sw	v0,16(sp)
    15bc:	27a20078 	addiu	v0,sp,120
    15c0:	afa20014 	sw	v0,20(sp)
    15c4:	02002021 	addu	a0,s0,zero
    15c8:	8fa70084 	lw	a3,132(sp)
    15cc:	8fa60080 	lw	a2,128(sp)
    15d0:	0c000000 	jal	0 <countLeadingZeros32>
    15d4:	02602821 	addu	a1,s3,zero
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
    15d8:	8fa30074 	lw	v1,116(sp)
    15dc:	8fa20070 	lw	v0,112(sp)
    15e0:	afa30014 	sw	v1,20(sp)
    15e4:	afa20010 	sw	v0,16(sp)
    15e8:	8fa3007c 	lw	v1,124(sp)
    15ec:	8fa20078 	lw	v0,120(sp)
    15f0:	afa3001c 	sw	v1,28(sp)
    15f4:	afa20018 	sw	v0,24(sp)
    15f8:	27a20060 	addiu	v0,sp,96
    15fc:	afa20020 	sw	v0,32(sp)
    1600:	27a20068 	addiu	v0,sp,104
    1604:	afa20024 	sw	v0,36(sp)
    1608:	02402021 	addu	a0,s2,zero
    160c:	02a02821 	addu	a1,s5,zero
    1610:	00003821 	addu	a3,zero,zero
    1614:	0c000000 	jal	0 <countLeadingZeros32>
    1618:	00003021 	addu	a2,zero,zero
  while (((sbits64) rem0) < 0)
    161c:	8fa40060 	lw	a0,96(sp)
    1620:	8fa50064 	lw	a1,100(sp)
    1624:	04800005 	bltz	a0,163c <float64_div+0x420>
    1628:	02609021 	addu	s2,s3,zero
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
    162c:	8fb00080 	lw	s0,128(sp)
    1630:	8fa20084 	lw	v0,132(sp)
    1634:	080005a4 	j	1690 <float64_div+0x474>
    1638:	afa20080 	sw	v0,128(sp)
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    {
      z -= LIT64 (0x100000000);
      b1 = b << 32;
    163c:	00009821 	addu	s3,zero,zero
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
    1640:	8fb00080 	lw	s0,128(sp)
    1644:	8fa30084 	lw	v1,132(sp)
    1648:	00000000 	sll	zero,zero,0x0
    164c:	afa30080 	sw	v1,128(sp)
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    {
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    1650:	27b50060 	addiu	s5,sp,96
    1654:	27b60068 	addiu	s6,sp,104
    1658:	afb40010 	sw	s4,16(sp)
    165c:	afb10014 	sw	s1,20(sp)
    1660:	afb20018 	sw	s2,24(sp)
    1664:	afb3001c 	sw	s3,28(sp)
    1668:	afb50020 	sw	s5,32(sp)
    166c:	afb60024 	sw	s6,36(sp)
    1670:	8fa7006c 	lw	a3,108(sp)
    1674:	8fa60068 	lw	a2,104(sp)
    1678:	0c000000 	jal	0 <countLeadingZeros32>
    167c:	2610ffff 	addiu	s0,s0,-1
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
    1680:	8fa40060 	lw	a0,96(sp)
    1684:	8fa50064 	lw	a1,100(sp)
    1688:	0480fff3 	bltz	a0,1658 <float64_div+0x43c>
    168c:	00000000 	sll	zero,zero,0x0
    {
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    }
  rem0 = (rem0 << 32) | (rem1 >> 32);
    1690:	8fa20068 	lw	v0,104(sp)
    1694:	00a02021 	addu	a0,a1,zero
    1698:	afa50060 	sw	a1,96(sp)
    169c:	afa20064 	sw	v0,100(sp)
  z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
    16a0:	8fa30088 	lw	v1,136(sp)
    16a4:	00000000 	sll	zero,zero,0x0
    16a8:	00a3282b 	sltu	a1,a1,v1
    16ac:	14a00004 	bnez	a1,16c0 <float64_div+0x4a4>
    16b0:	00402821 	addu	a1,v0,zero
    16b4:	2403ffff 	addiu	v1,zero,-1
    16b8:	080005b5 	j	16d4 <float64_div+0x4b8>
    16bc:	00001021 	addu	v0,zero,zero
    16c0:	00003021 	addu	a2,zero,zero
    16c4:	0c000000 	jal	0 <countLeadingZeros32>
    16c8:	02203821 	addu	a3,s1,zero
    16cc:	00403821 	addu	a3,v0,zero
    16d0:	00e01021 	addu	v0,a3,zero
    16d4:	00509025 	or	s2,v0,s0
    16d8:	8fa40080 	lw	a0,128(sp)
    16dc:	00000000 	sll	zero,zero,0x0
    16e0:	00649825 	or	s3,v1,a0
  if ((zSig & 0x1FF) <= 2)
    16e4:	326201ff 	andi	v0,s3,0x1ff
    16e8:	2c420003 	sltiu	v0,v0,3
    16ec:	10400043 	beqz	v0,17fc <float64_div+0x5e0>
    16f0:	02e02021 	addu	a0,s7,zero
    {
      mul64To128 (bSig, zSig, &term0, &term1);
    16f4:	27a20050 	addiu	v0,sp,80
    16f8:	afa20010 	sw	v0,16(sp)
    16fc:	27a20058 	addiu	v0,sp,88
    1700:	afa20014 	sw	v0,20(sp)
    1704:	8fa5003c 	lw	a1,60(sp)
    1708:	8fa40038 	lw	a0,56(sp)
    170c:	02603821 	addu	a3,s3,zero
    1710:	0c000000 	jal	0 <countLeadingZeros32>
    1714:	02403021 	addu	a2,s2,zero
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
    1718:	8fa30054 	lw	v1,84(sp)
    171c:	8fa20050 	lw	v0,80(sp)
    1720:	afa30014 	sw	v1,20(sp)
    1724:	afa20010 	sw	v0,16(sp)
    1728:	8fa3005c 	lw	v1,92(sp)
    172c:	8fa20058 	lw	v0,88(sp)
    1730:	afa3001c 	sw	v1,28(sp)
    1734:	afa20018 	sw	v0,24(sp)
    1738:	27a20040 	addiu	v0,sp,64
    173c:	afa20020 	sw	v0,32(sp)
    1740:	27a20048 	addiu	v0,sp,72
    1744:	afa20024 	sw	v0,36(sp)
    1748:	8fa50034 	lw	a1,52(sp)
    174c:	8fa40030 	lw	a0,48(sp)
    1750:	00003821 	addu	a3,zero,zero
    1754:	0c000000 	jal	0 <countLeadingZeros32>
    1758:	00003021 	addu	a2,zero,zero
      while ((sbits64) rem0 < 0)
    175c:	8fa40040 	lw	a0,64(sp)
    1760:	8fa50044 	lw	a1,68(sp)
    1764:	0481001a 	bgez	a0,17d0 <float64_div+0x5b4>
    1768:	27b00040 	addiu	s0,sp,64
	{
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
    176c:	27b10048 	addiu	s1,sp,72
    {
      mul64To128 (bSig, zSig, &term0, &term1);
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
      while ((sbits64) rem0 < 0)
	{
	  --zSig;
    1770:	2666ffff 	addiu	a2,s3,-1
    1774:	00d3382b 	sltu	a3,a2,s3
    1778:	2652ffff 	addiu	s2,s2,-1
    177c:	00f21821 	addu	v1,a3,s2
    1780:	00609021 	addu	s2,v1,zero
    1784:	00c09821 	addu	s3,a2,zero
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
    1788:	00001821 	addu	v1,zero,zero
    178c:	00001021 	addu	v0,zero,zero
    1790:	afa30014 	sw	v1,20(sp)
    1794:	afa20010 	sw	v0,16(sp)
    1798:	8fa3003c 	lw	v1,60(sp)
    179c:	8fa20038 	lw	v0,56(sp)
    17a0:	afa3001c 	sw	v1,28(sp)
    17a4:	afa20018 	sw	v0,24(sp)
    17a8:	afb00020 	sw	s0,32(sp)
    17ac:	afb10024 	sw	s1,36(sp)
    17b0:	8fa7004c 	lw	a3,76(sp)
    17b4:	8fa60048 	lw	a2,72(sp)
    17b8:	0c000000 	jal	0 <countLeadingZeros32>
    17bc:	00000000 	sll	zero,zero,0x0
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
    {
      mul64To128 (bSig, zSig, &term0, &term1);
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
      while ((sbits64) rem0 < 0)
    17c0:	8fa40040 	lw	a0,64(sp)
    17c4:	8fa50044 	lw	a1,68(sp)
    17c8:	0480ffe9 	bltz	a0,1770 <float64_div+0x554>
    17cc:	00000000 	sll	zero,zero,0x0
	{
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
    17d0:	8fa2004c 	lw	v0,76(sp)
    17d4:	8fa40048 	lw	a0,72(sp)
    17d8:	00000000 	sll	zero,zero,0x0
    17dc:	00822025 	or	a0,a0,v0
    17e0:	0004202b 	sltu	a0,zero,a0
    17e4:	00931025 	or	v0,a0,s3
    17e8:	080005fe 	j	17f8 <float64_div+0x5dc>
    17ec:	00409821 	addu	s3,v0,zero
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
    return LIT64 (0xFFFFFFFFFFFFFFFF);
    17f0:	2413ffff 	addiu	s3,zero,-1
    17f4:	2412ffff 	addiu	s2,zero,-1
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);
    17f8:	02e02021 	addu	a0,s7,zero
    17fc:	03c02821 	addu	a1,s8,zero
    1800:	02603821 	addu	a3,s3,zero
    1804:	0c000192 	jal	648 <roundAndPackFloat64>
    1808:	02403021 	addu	a2,s2,zero
    180c:	00602821 	addu	a1,v1,zero
    1810:	00402021 	addu	a0,v0,zero

}
    1814:	00801021 	addu	v0,a0,zero
    1818:	00a01821 	addu	v1,a1,zero
    181c:	8fbf00b4 	lw	ra,180(sp)
    1820:	8fbe00b0 	lw	s8,176(sp)
    1824:	8fb700ac 	lw	s7,172(sp)
    1828:	8fb600a8 	lw	s6,168(sp)
    182c:	8fb500a4 	lw	s5,164(sp)
    1830:	8fb400a0 	lw	s4,160(sp)
    1834:	8fb3009c 	lw	s3,156(sp)
    1838:	8fb20098 	lw	s2,152(sp)
    183c:	8fb10094 	lw	s1,148(sp)
    1840:	8fb00090 	lw	s0,144(sp)
    1844:	03e00008 	jr	ra
    1848:	27bd00b8 	addiu	sp,sp,184

0000184c <float64_le>:
| Arithmetic.
*----------------------------------------------------------------------------*/

flag
float64_le (float64 a, float64 b)
{
    184c:	27bdffd8 	addiu	sp,sp,-40
    1850:	afbf0024 	sw	ra,36(sp)
    1854:	afb40020 	sw	s4,32(sp)
    1858:	afb3001c 	sw	s3,28(sp)
    185c:	afb20018 	sw	s2,24(sp)
    1860:	afb10014 	sw	s1,20(sp)
    1864:	afb00010 	sw	s0,16(sp)
    1868:	00809821 	addu	s3,a0,zero
    186c:	00a0a021 	addu	s4,a1,zero
    1870:	00c08021 	addu	s0,a2,zero
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
    1874:	0c000000 	jal	0 <countLeadingZeros32>
    1878:	00e08821 	addu	s1,a3,zero
    187c:	240307ff 	addiu	v1,zero,2047
    1880:	14430007 	bne	v0,v1,18a0 <float64_le+0x54>
    1884:	02002021 	addu	a0,s0,zero
    1888:	02602021 	addu	a0,s3,zero
    188c:	0c000000 	jal	0 <countLeadingZeros32>
    1890:	02802821 	addu	a1,s4,zero
    1894:	00431025 	or	v0,v0,v1
    1898:	1440000c 	bnez	v0,18cc <float64_le+0x80>
    189c:	02002021 	addu	a0,s0,zero
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    18a0:	0c000000 	jal	0 <countLeadingZeros32>
    18a4:	02202821 	addu	a1,s1,zero
    18a8:	240307ff 	addiu	v1,zero,2047
    18ac:	1443000b 	bne	v0,v1,18dc <float64_le+0x90>
    18b0:	02602021 	addu	a0,s3,zero
    18b4:	02002021 	addu	a0,s0,zero
    18b8:	0c000000 	jal	0 <countLeadingZeros32>
    18bc:	02202821 	addu	a1,s1,zero
    18c0:	00431025 	or	v0,v0,v1
    18c4:	10400005 	beqz	v0,18dc <float64_le+0x90>
    18c8:	02602021 	addu	a0,s3,zero
    {
      float_raise (float_flag_invalid);
    18cc:	0c000000 	jal	0 <countLeadingZeros32>
    18d0:	24040010 	addiu	a0,zero,16
      return 0;
    18d4:	0800065a 	j	1968 <float64_le+0x11c>
    18d8:	00001021 	addu	v0,zero,zero
    }
  aSign = extractFloat64Sign (a);
    18dc:	0c000000 	jal	0 <countLeadingZeros32>
    18e0:	02802821 	addu	a1,s4,zero
    18e4:	00409021 	addu	s2,v0,zero
  bSign = extractFloat64Sign (b);
    18e8:	02002021 	addu	a0,s0,zero
    18ec:	0c000000 	jal	0 <countLeadingZeros32>
    18f0:	02202821 	addu	a1,s1,zero
  if (aSign != bSign)
    18f4:	1242000b 	beq	s2,v0,1924 <float64_le+0xd8>
    18f8:	00000000 	sll	zero,zero,0x0
    return aSign || ((bits64) ((a | b) << 1) == 0);
    18fc:	16400017 	bnez	s2,195c <float64_le+0x110>
    1900:	02138025 	or	s0,s0,s3
    1904:	02348825 	or	s1,s1,s4
    1908:	00111fc2 	srl	v1,s1,0x1f
    190c:	00108040 	sll	s0,s0,0x1
    1910:	00708025 	or	s0,v1,s0
    1914:	00118840 	sll	s1,s1,0x1

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    {
      float_raise (float_flag_invalid);
      return 0;
    1918:	02118025 	or	s0,s0,s1
    191c:	0800065a 	j	1968 <float64_le+0x11c>
    1920:	2e020001 	sltiu	v0,s0,1
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    return aSign || ((bits64) ((a | b) << 1) == 0);
  return (a == b) || (aSign ^ (a < b));
    1924:	16700003 	bne	s3,s0,1934 <float64_le+0xe8>
    1928:	0270182b 	sltu	v1,s3,s0
    192c:	1291000d 	beq	s4,s1,1964 <float64_le+0x118>
    1930:	00000000 	sll	zero,zero,0x0
    1934:	14600006 	bnez	v1,1950 <float64_le+0x104>
    1938:	24020001 	addiu	v0,zero,1
    193c:	16130003 	bne	s0,s3,194c <float64_le+0x100>
    1940:	0291882b 	sltu	s1,s4,s1
    1944:	16200002 	bnez	s1,1950 <float64_le+0x104>
    1948:	00000000 	sll	zero,zero,0x0
    194c:	00001021 	addu	v0,zero,zero

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    {
      float_raise (float_flag_invalid);
      return 0;
    1950:	02421026 	xor	v0,s2,v0
    1954:	0800065a 	j	1968 <float64_le+0x11c>
    1958:	0002102b 	sltu	v0,zero,v0
    }
  aSign = extractFloat64Sign (a);
  bSign = extractFloat64Sign (b);
  if (aSign != bSign)
    return aSign || ((bits64) ((a | b) << 1) == 0);
    195c:	0800065a 	j	1968 <float64_le+0x11c>
    1960:	24020001 	addiu	v0,zero,1
  return (a == b) || (aSign ^ (a < b));
    1964:	24020001 	addiu	v0,zero,1

}
    1968:	8fbf0024 	lw	ra,36(sp)
    196c:	8fb40020 	lw	s4,32(sp)
    1970:	8fb3001c 	lw	s3,28(sp)
    1974:	8fb20018 	lw	s2,24(sp)
    1978:	8fb10014 	lw	s1,20(sp)
    197c:	8fb00010 	lw	s0,16(sp)
    1980:	03e00008 	jr	ra
    1984:	27bd0028 	addiu	sp,sp,40

00001988 <float64_ge>:

flag
float64_ge (float64 a, float64 b)
{
    1988:	27bdffe8 	addiu	sp,sp,-24
    198c:	afbf0014 	sw	ra,20(sp)
    1990:	00a01821 	addu	v1,a1,zero
    1994:	00801021 	addu	v0,a0,zero
  return float64_le (b, a);
    1998:	00e02821 	addu	a1,a3,zero
    199c:	00c02021 	addu	a0,a2,zero
    19a0:	00603821 	addu	a3,v1,zero
    19a4:	0c000000 	jal	0 <countLeadingZeros32>
    19a8:	00403021 	addu	a2,v0,zero
}
    19ac:	8fbf0014 	lw	ra,20(sp)
    19b0:	00000000 	sll	zero,zero,0x0
    19b4:	03e00008 	jr	ra
    19b8:	27bd0018 	addiu	sp,sp,24

000019bc <float64_neg>:

// added by hiroyuki@acm.org
float64
float64_neg (float64 x)
{
  return (((~x) & 0x8000000000000000ULL) | (x & 0x7fffffffffffffffULL));
    19bc:	00041827 	nor	v1,zero,a0
    19c0:	3c028000 	lui	v0,0x8000
    19c4:	00621024 	and	v0,v1,v0
    19c8:	3c037fff 	lui	v1,0x7fff
    19cc:	3463ffff 	ori	v1,v1,0xffff
    19d0:	00832024 	and	a0,a0,v1
}
    19d4:	00441025 	or	v0,v0,a0
    19d8:	03e00008 	jr	ra
    19dc:	00a01821 	addu	v1,a1,zero

000019e0 <float64_abs>:

float64
float64_abs (float64 x)
{
  return (x & 0x7fffffffffffffffULL);
}
    19e0:	3c027fff 	lui	v0,0x7fff
    19e4:	3442ffff 	ori	v0,v0,0xffff
    19e8:	00821024 	and	v0,a0,v0
    19ec:	03e00008 	jr	ra
    19f0:	00a01821 	addu	v1,a1,zero

000019f4 <sin>:

float64
sin (float64 rad)
{
    19f4:	27bdffd0 	addiu	sp,sp,-48
    19f8:	afbf002c 	sw	ra,44(sp)
    19fc:	afb70028 	sw	s7,40(sp)
    1a00:	afb60024 	sw	s6,36(sp)
    1a04:	afb40020 	sw	s4,32(sp)
    1a08:	afb3001c 	sw	s3,28(sp)
    1a0c:	afb20018 	sw	s2,24(sp)
    1a10:	afb10014 	sw	s1,20(sp)
    1a14:	afb00010 	sw	s0,16(sp)
    1a18:	00809821 	addu	s3,a0,zero
    1a1c:	00a0a021 	addu	s4,a1,zero
  float64 m_rad2;
  int inc;

  app = diff = rad;
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
    1a20:	00803021 	addu	a2,a0,zero
    1a24:	0c000000 	jal	0 <countLeadingZeros32>
    1a28:	00a03821 	addu	a3,a1,zero
    1a2c:	00602821 	addu	a1,v1,zero
    1a30:	0c000000 	jal	0 <countLeadingZeros32>
    1a34:	00402021 	addu	a0,v0,zero
    1a38:	0060b821 	addu	s7,v1,zero
    1a3c:	0040b021 	addu	s6,v0,zero
  float64 app;
  float64 diff;
  float64 m_rad2;
  int inc;

  app = diff = rad;
    1a40:	02608021 	addu	s0,s3,zero
    1a44:	02808821 	addu	s1,s4,zero
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
    1a48:	24120003 	addiu	s2,zero,3
  do
    {
      diff = float64_div (float64_mul (diff, m_rad2),
    1a4c:	02002021 	addu	a0,s0,zero
    1a50:	02202821 	addu	a1,s1,zero
    1a54:	02e03821 	addu	a3,s7,zero
    1a58:	0c000000 	jal	0 <countLeadingZeros32>
    1a5c:	02c03021 	addu	a2,s6,zero
    1a60:	00608821 	addu	s1,v1,zero
{
  return (x & 0x7fffffffffffffffULL);
}

float64
sin (float64 rad)
    1a64:	2644ffff 	addiu	a0,s2,-1
  app = diff = rad;
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
  do
    {
      diff = float64_div (float64_mul (diff, m_rad2),
    1a68:	02440018 	mult	s2,a0
    1a6c:	00002012 	mflo	a0
    1a70:	0c000000 	jal	0 <countLeadingZeros32>
    1a74:	00408021 	addu	s0,v0,zero
    1a78:	02202821 	addu	a1,s1,zero
    1a7c:	02002021 	addu	a0,s0,zero
    1a80:	00603821 	addu	a3,v1,zero
    1a84:	0c000000 	jal	0 <countLeadingZeros32>
    1a88:	00403021 	addu	a2,v0,zero
    1a8c:	00408021 	addu	s0,v0,zero
    1a90:	00608821 	addu	s1,v1,zero
			  int32_to_float64 ((2 * inc) * (2 * inc + 1)));
      app = float64_add (app, diff);
    1a94:	02602021 	addu	a0,s3,zero
    1a98:	02802821 	addu	a1,s4,zero
    1a9c:	02003021 	addu	a2,s0,zero
    1aa0:	0c000000 	jal	0 <countLeadingZeros32>
    1aa4:	00603821 	addu	a3,v1,zero
    1aa8:	00409821 	addu	s3,v0,zero
    1aac:	0060a021 	addu	s4,v1,zero
      inc++;
    }
  while (float64_ge (float64_abs (diff), 0x3ee4f8b588e368f1ULL));	/* 0.00001 */
    1ab0:	02002021 	addu	a0,s0,zero
    1ab4:	0c000000 	jal	0 <countLeadingZeros32>
    1ab8:	02202821 	addu	a1,s1,zero
    1abc:	00602821 	addu	a1,v1,zero
    1ac0:	00402021 	addu	a0,v0,zero
    1ac4:	3c0788e3 	lui	a3,0x88e3
    1ac8:	34e768f1 	ori	a3,a3,0x68f1
    1acc:	3c063ee4 	lui	a2,0x3ee4
    1ad0:	0c000000 	jal	0 <countLeadingZeros32>
    1ad4:	34c6f8b5 	ori	a2,a2,0xf8b5
    1ad8:	1440ffdc 	bnez	v0,1a4c <sin+0x58>
    1adc:	26520002 	addiu	s2,s2,2
  return app;
}
    1ae0:	02601021 	addu	v0,s3,zero
    1ae4:	02801821 	addu	v1,s4,zero
    1ae8:	8fbf002c 	lw	ra,44(sp)
    1aec:	8fb70028 	lw	s7,40(sp)
    1af0:	8fb60024 	lw	s6,36(sp)
    1af4:	8fb40020 	lw	s4,32(sp)
    1af8:	8fb3001c 	lw	s3,28(sp)
    1afc:	8fb20018 	lw	s2,24(sp)
    1b00:	8fb10014 	lw	s1,20(sp)
    1b04:	8fb00010 	lw	s0,16(sp)
    1b08:	03e00008 	jr	ra
    1b0c:	27bd0030 	addiu	sp,sp,48

00001b10 <ullong_to_double>:
    unsigned long long ll;
  } t;

  t.ll = x;
  return t.d;
}
    1b10:	44850000 	mtc1	a1,$f0
    1b14:	00000000 	sll	zero,zero,0x0
    1b18:	44840800 	mtc1	a0,$f1
    1b1c:	03e00008 	jr	ra
    1b20:	00000000 	sll	zero,zero,0x0

00001b24 <main>:
  0xbfc63a23c48863ddULL
};				/* -0.173649 */

int
main ()
{
    1b24:	27bdffb0 	addiu	sp,sp,-80
    1b28:	afbf004c 	sw	ra,76(sp)
    1b2c:	afbe0048 	sw	s8,72(sp)
    1b30:	afb70044 	sw	s7,68(sp)
    1b34:	afb60040 	sw	s6,64(sp)
    1b38:	afb5003c 	sw	s5,60(sp)
    1b3c:	afb40038 	sw	s4,56(sp)
    1b40:	afb30034 	sw	s3,52(sp)
    1b44:	afb20030 	sw	s2,48(sp)
    1b48:	afb1002c 	sw	s1,44(sp)
    1b4c:	afb00028 	sw	s0,40(sp)
    1b50:	00008021 	addu	s0,zero,zero
  int main_result;
  int i;
      main_result = 0;
    1b54:	00009821 	addu	s3,zero,zero
  0xbfd5e3ad0a69caf7ULL,	/* -0.342021 */
  0xbfc63a23c48863ddULL
};				/* -0.173649 */

int
main ()
    1b58:	3c1e0000 	lui	s8,0x0
    1b5c:	27de0000 	addiu	s8,s8,0
    1b60:	03d01021 	addu	v0,s8,s0
  int i;
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  result = sin (test_in[i]);
    1b64:	8c550004 	lw	s5,4(v0)
    1b68:	8c540000 	lw	s4,0(v0)
    1b6c:	02a02821 	addu	a1,s5,zero
    1b70:	0c000000 	jal	0 <countLeadingZeros32>
    1b74:	02802021 	addu	a0,s4,zero
    1b78:	00408821 	addu	s1,v0,zero
    1b7c:	00609021 	addu	s2,v1,zero
  0xbfd5e3ad0a69caf7ULL,	/* -0.342021 */
  0xbfc63a23c48863ddULL
};				/* -0.173649 */

int
main ()
    1b80:	3c030000 	lui	v1,0x0
    1b84:	24630000 	addiu	v1,v1,0
    1b88:	00701021 	addu	v0,v1,s0
      main_result = 0;
      for (i = 0; i < N; i++)
	{
	  float64 result;
	  result = sin (test_in[i]);
	  main_result += (result != test_out[i]);
    1b8c:	8c560000 	lw	s6,0(v0)
    1b90:	8c570004 	lw	s7,4(v0)
    1b94:	02d11826 	xor	v1,s6,s1
    1b98:	02f21026 	xor	v0,s7,s2
    1b9c:	00621025 	or	v0,v1,v0
    1ba0:	0002102b 	sltu	v0,zero,v0
    1ba4:	02629821 	addu	s3,s3,v0

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
    1ba8:	02202021 	addu	a0,s1,zero
    1bac:	0c000000 	jal	0 <countLeadingZeros32>
    1bb0:	02402821 	addu	a1,s2,zero
    1bb4:	afb60010 	sw	s6,16(sp)
    1bb8:	afb70014 	sw	s7,20(sp)
    1bbc:	afb10018 	sw	s1,24(sp)
    1bc0:	afb2001c 	sw	s2,28(sp)
    1bc4:	e7a00024 	swc1	$f0,36(sp)
    1bc8:	e7a10020 	swc1	$f1,32(sp)
    1bcc:	3c040000 	lui	a0,0x0
    1bd0:	24840000 	addiu	a0,a0,0
    1bd4:	02a03821 	addu	a3,s5,zero
    1bd8:	0c000000 	jal	0 <countLeadingZeros32>
    1bdc:	02803021 	addu	a2,s4,zero
    1be0:	26100008 	addiu	s0,s0,8
main ()
{
  int main_result;
  int i;
      main_result = 0;
      for (i = 0; i < N; i++)
    1be4:	24020120 	addiu	v0,zero,288
    1be8:	1602ffde 	bne	s0,v0,1b64 <main+0x40>
    1bec:	03d01021 	addu	v0,s8,s0

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     test_in[i], test_out[i], result, ullong_to_double (result));
	}
      printf ("%d\n", main_result);
    1bf0:	3c040000 	lui	a0,0x0
    1bf4:	24840000 	addiu	a0,a0,0
    1bf8:	0c000000 	jal	0 <countLeadingZeros32>
    1bfc:	02602821 	addu	a1,s3,zero
      return main_result;
    }
    1c00:	02601021 	addu	v0,s3,zero
    1c04:	8fbf004c 	lw	ra,76(sp)
    1c08:	8fbe0048 	lw	s8,72(sp)
    1c0c:	8fb70044 	lw	s7,68(sp)
    1c10:	8fb60040 	lw	s6,64(sp)
    1c14:	8fb5003c 	lw	s5,60(sp)
    1c18:	8fb40038 	lw	s4,56(sp)
    1c1c:	8fb30034 	lw	s3,52(sp)
    1c20:	8fb20030 	lw	s2,48(sp)
    1c24:	8fb1002c 	lw	s1,44(sp)
    1c28:	8fb00028 	lw	s0,40(sp)
    1c2c:	03e00008 	jr	ra
    1c30:	27bd0050 	addiu	sp,sp,80

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
 144:	16c242e3 	bne	s6,v0,10cd4 <main+0xf1b0>
 148:	3fe8836f 	0x3fe8836f
 14c:	672614a6 	0x672614a6
 150:	3febb67a 	0x3febb67a
 154:	c40b2bed 	lwc1	$f11,11245(zero)
 158:	3fee11f6 	0x3fee11f6
 15c:	127e28ad 	beq	s3,s8,a414 <main+0x88f0>
 160:	3fef838b 	0x3fef838b
 164:	6adffac0 	0x6adffac0
 168:	3fefffff 	0x3fefffff
 16c:	e1cbd7aa 	swc0	$11,-10326(t6)
 170:	3fef838b 	0x3fef838b
 174:	b0147989 	0xb0147989
 178:	3fee11f6 	0x3fee11f6
 17c:	92d962b4 	lbu	t9,25268(s6)
 180:	3febb67b 	0x3febb67b
 184:	77c0142d 	jalx	f0050b4 <main+0xf003590>
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
 1e4:	740aae32 	jalx	2ab8c8 <main+0x2a9da4>
 1e8:	bfee11f5 	0xbfee11f5
 1ec:	912d2157 	lbu	t5,8535(t1)
 1f0:	bfef838b 	0xbfef838b
 1f4:	1ac64afc 	0x1ac64afc
 1f8:	bfefffff 	0xbfefffff
 1fc:	c2e5dc8f 	lwc0	$5,-9073(s7)
 200:	bfef838b 	0xbfef838b
 204:	5ea2e7ea 	0x5ea2e7ea
 208:	bfee11f7 	0xbfee11f7
 20c:	112dae27 	beq	t1,t5,fffebaac <main+0xfffe9f88>
 210:	bfebb67c 	0xbfebb67c
 214:	2c31cb4a 	sltiu	s1,at,-13494
 218:	bfe88371 	0xbfe88371
 21c:	6e6fd781 	0x6e6fd781
 220:	bfe491b9 	0xbfe491b9
 224:	cd1b5d56 	lwc3	$27,23894(t0)
 228:	bfe00002 	0xbfe00002
 22c:	1d0ca30d 	0x1d0ca30d
 230:	bfd5e3ad 	0xbfd5e3ad
 234:	0a69caf7 	j	9a72bdc <main+0x9a710b8>
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
