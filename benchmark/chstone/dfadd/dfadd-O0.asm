
dfadd.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <shift64RightJamming>:
| The result is stored in the location pointed to by `zPtr'.
*----------------------------------------------------------------------------*/

INLINE void
shift64RightJamming (bits64 a, int16 count, bits64 * zPtr)
{
       0:	27bdfff0 	addiu	sp,sp,-16
       4:	afbe000c 	sw	s8,12(sp)
       8:	03a0f021 	addu	s8,sp,zero
       c:	afc50014 	sw	a1,20(s8)
      10:	afc40010 	sw	a0,16(s8)
      14:	afc60018 	sw	a2,24(s8)
      18:	afc7001c 	sw	a3,28(s8)
  bits64 z;

  if (count == 0)
      1c:	8fc40018 	lw	a0,24(s8)
      20:	00000000 	sll	zero,zero,0x0
      24:	14800007 	bnez	a0,44 <shift64RightJamming+0x44>
      28:	00000000 	sll	zero,zero,0x0
    {
      z = a;
      2c:	8fc30014 	lw	v1,20(s8)
      30:	8fc20010 	lw	v0,16(s8)
      34:	afc30004 	sw	v1,4(s8)
      38:	afc20000 	sw	v0,0(s8)
      3c:	0800005d 	j	174 <shift64RightJamming+0x174>
      40:	00000000 	sll	zero,zero,0x0
    }
  else if (count < 64)
      44:	8fc40018 	lw	a0,24(s8)
      48:	00000000 	sll	zero,zero,0x0
      4c:	28840040 	slti	a0,a0,64
      50:	10800041 	beqz	a0,158 <shift64RightJamming+0x158>
      54:	00000000 	sll	zero,zero,0x0
    {
      z = (a >> count) | ((a << ((-count) & 63)) != 0);
      58:	8fc40018 	lw	a0,24(s8)
      5c:	00000000 	sll	zero,zero,0x0
      60:	30840020 	andi	a0,a0,0x20
      64:	10800008 	beqz	a0,88 <shift64RightJamming+0x88>
      68:	00000000 	sll	zero,zero,0x0
      6c:	8fc50010 	lw	a1,16(s8)
      70:	8fc40018 	lw	a0,24(s8)
      74:	00000000 	sll	zero,zero,0x0
      78:	00851806 	srlv	v1,a1,a0
      7c:	00001021 	addu	v0,zero,zero
      80:	08000032 	j	c8 <shift64RightJamming+0xc8>
      84:	00000000 	sll	zero,zero,0x0
      88:	8fc40010 	lw	a0,16(s8)
      8c:	00000000 	sll	zero,zero,0x0
      90:	00042840 	sll	a1,a0,0x1
      94:	8fc60018 	lw	a2,24(s8)
      98:	2404ffff 	addiu	a0,zero,-1
      9c:	00c42026 	xor	a0,a2,a0
      a0:	00852004 	sllv	a0,a1,a0
      a4:	8fc60014 	lw	a2,20(s8)
      a8:	8fc50018 	lw	a1,24(s8)
      ac:	00000000 	sll	zero,zero,0x0
      b0:	00a61806 	srlv	v1,a2,a1
      b4:	00831825 	or	v1,a0,v1
      b8:	8fc50010 	lw	a1,16(s8)
      bc:	8fc40018 	lw	a0,24(s8)
      c0:	00000000 	sll	zero,zero,0x0
      c4:	00851006 	srlv	v0,a1,a0
      c8:	8fc40018 	lw	a0,24(s8)
      cc:	00000000 	sll	zero,zero,0x0
      d0:	00042023 	negu	a0,a0
      d4:	3084003f 	andi	a0,a0,0x3f
      d8:	30850020 	andi	a1,a0,0x20
      dc:	10a00007 	beqz	a1,fc <shift64RightJamming+0xfc>
      e0:	00000000 	sll	zero,zero,0x0
      e4:	8fc50014 	lw	a1,20(s8)
      e8:	00000000 	sll	zero,zero,0x0
      ec:	00854004 	sllv	t0,a1,a0
      f0:	00004821 	addu	t1,zero,zero
      f4:	0800004c 	j	130 <shift64RightJamming+0x130>
      f8:	00000000 	sll	zero,zero,0x0
      fc:	8fc50014 	lw	a1,20(s8)
     100:	00000000 	sll	zero,zero,0x0
     104:	00053042 	srl	a2,a1,0x1
     108:	2405ffff 	addiu	a1,zero,-1
     10c:	00852826 	xor	a1,a0,a1
     110:	00a62806 	srlv	a1,a2,a1
     114:	8fc60010 	lw	a2,16(s8)
     118:	00000000 	sll	zero,zero,0x0
     11c:	00864004 	sllv	t0,a2,a0
     120:	00a84025 	or	t0,a1,t0
     124:	8fc50014 	lw	a1,20(s8)
     128:	00000000 	sll	zero,zero,0x0
     12c:	00854804 	sllv	t1,a1,a0
     130:	01092025 	or	a0,t0,t1
     134:	0004202b 	sltu	a0,zero,a0
     138:	00805821 	addu	t3,a0,zero
     13c:	00005021 	addu	t2,zero,zero
     140:	004a2025 	or	a0,v0,t2
     144:	afc40000 	sw	a0,0(s8)
     148:	006b1025 	or	v0,v1,t3
     14c:	afc20004 	sw	v0,4(s8)
     150:	0800005d 	j	174 <shift64RightJamming+0x174>
     154:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      z = (a != 0);
     158:	8fc30010 	lw	v1,16(s8)
     15c:	8fc20014 	lw	v0,20(s8)
     160:	00000000 	sll	zero,zero,0x0
     164:	00621025 	or	v0,v1,v0
     168:	0002102b 	sltu	v0,zero,v0
     16c:	afc20004 	sw	v0,4(s8)
     170:	afc00000 	sw	zero,0(s8)
    }
  *zPtr = z;
     174:	8fc4001c 	lw	a0,28(s8)
     178:	8fc30004 	lw	v1,4(s8)
     17c:	8fc20000 	lw	v0,0(s8)
     180:	ac830004 	sw	v1,4(a0)
     184:	ac820000 	sw	v0,0(a0)

}
     188:	03c0e821 	addu	sp,s8,zero
     18c:	8fbe000c 	lw	s8,12(sp)
     190:	27bd0010 	addiu	sp,sp,16
     194:	03e00008 	jr	ra
     198:	00000000 	sll	zero,zero,0x0

0000019c <countLeadingZeros32>:
| `a'.  If `a' is zero, 32 is returned.
*----------------------------------------------------------------------------*/

static int8
countLeadingZeros32 (bits32 a)
{
     19c:	27bdfff0 	addiu	sp,sp,-16
     1a0:	afbe000c 	sw	s8,12(sp)
     1a4:	03a0f021 	addu	s8,sp,zero
     1a8:	afc40010 	sw	a0,16(s8)
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
     1ac:	afc00000 	sw	zero,0(s8)
  if (a < 0x10000)
     1b0:	8fc30010 	lw	v1,16(s8)
     1b4:	3c020001 	lui	v0,0x1
     1b8:	0062102b 	sltu	v0,v1,v0
     1bc:	10400009 	beqz	v0,1e4 <countLeadingZeros32+0x48>
     1c0:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 16;
     1c4:	8fc20000 	lw	v0,0(s8)
     1c8:	00000000 	sll	zero,zero,0x0
     1cc:	24420010 	addiu	v0,v0,16
     1d0:	afc20000 	sw	v0,0(s8)
      a <<= 16;
     1d4:	8fc20010 	lw	v0,16(s8)
     1d8:	00000000 	sll	zero,zero,0x0
     1dc:	00021400 	sll	v0,v0,0x10
     1e0:	afc20010 	sw	v0,16(s8)
    }
  if (a < 0x1000000)
     1e4:	8fc30010 	lw	v1,16(s8)
     1e8:	3c020100 	lui	v0,0x100
     1ec:	0062102b 	sltu	v0,v1,v0
     1f0:	10400009 	beqz	v0,218 <countLeadingZeros32+0x7c>
     1f4:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
     1f8:	8fc20000 	lw	v0,0(s8)
     1fc:	00000000 	sll	zero,zero,0x0
     200:	24420008 	addiu	v0,v0,8
     204:	afc20000 	sw	v0,0(s8)
      a <<= 8;
     208:	8fc20010 	lw	v0,16(s8)
     20c:	00000000 	sll	zero,zero,0x0
     210:	00021200 	sll	v0,v0,0x8
     214:	afc20010 	sw	v0,16(s8)
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
     218:	8fc20010 	lw	v0,16(s8)
     21c:	00000000 	sll	zero,zero,0x0
     220:	00021e02 	srl	v1,v0,0x18
     224:	3c020000 	lui	v0,0x0
     228:	00031880 	sll	v1,v1,0x2
     22c:	2442049c 	addiu	v0,v0,1180
     230:	00621021 	addu	v0,v1,v0
     234:	8c420000 	lw	v0,0(v0)
     238:	8fc30000 	lw	v1,0(s8)
     23c:	00000000 	sll	zero,zero,0x0
     240:	00621021 	addu	v0,v1,v0
     244:	afc20000 	sw	v0,0(s8)
  return shiftCount;
     248:	8fc20000 	lw	v0,0(s8)

}
     24c:	03c0e821 	addu	sp,s8,zero
     250:	8fbe000c 	lw	s8,12(sp)
     254:	27bd0010 	addiu	sp,sp,16
     258:	03e00008 	jr	ra
     25c:	00000000 	sll	zero,zero,0x0

00000260 <countLeadingZeros64>:
| `a'.  If `a' is zero, 64 is returned.
*----------------------------------------------------------------------------*/

static int8
countLeadingZeros64 (bits64 a)
{
     260:	27bdffe0 	addiu	sp,sp,-32
     264:	afbf001c 	sw	ra,28(sp)
     268:	afbe0018 	sw	s8,24(sp)
     26c:	03a0f021 	addu	s8,sp,zero
     270:	afc50024 	sw	a1,36(s8)
     274:	afc40020 	sw	a0,32(s8)
  int8 shiftCount;

  shiftCount = 0;
     278:	afc00010 	sw	zero,16(s8)
  if (a < ((bits64) 1) << 32)
     27c:	8fc20020 	lw	v0,32(s8)
     280:	00000000 	sll	zero,zero,0x0
     284:	14400007 	bnez	v0,2a4 <countLeadingZeros64+0x44>
     288:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 32;
     28c:	8fc20010 	lw	v0,16(s8)
     290:	00000000 	sll	zero,zero,0x0
     294:	24420020 	addiu	v0,v0,32
     298:	afc20010 	sw	v0,16(s8)
     29c:	080000ae 	j	2b8 <countLeadingZeros64+0x58>
     2a0:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      a >>= 32;
     2a4:	8fc20020 	lw	v0,32(s8)
     2a8:	00000000 	sll	zero,zero,0x0
     2ac:	00021002 	srl	v0,v0,0x0
     2b0:	afc20024 	sw	v0,36(s8)
     2b4:	afc00020 	sw	zero,32(s8)
    }
  shiftCount += countLeadingZeros32 (a);
     2b8:	8fc20024 	lw	v0,36(s8)
     2bc:	00000000 	sll	zero,zero,0x0
     2c0:	00402021 	addu	a0,v0,zero
     2c4:	0c000067 	jal	19c <countLeadingZeros32>
     2c8:	00000000 	sll	zero,zero,0x0
     2cc:	8fc30010 	lw	v1,16(s8)
     2d0:	00000000 	sll	zero,zero,0x0
     2d4:	00621021 	addu	v0,v1,v0
     2d8:	afc20010 	sw	v0,16(s8)
  return shiftCount;
     2dc:	8fc20010 	lw	v0,16(s8)

}
     2e0:	03c0e821 	addu	sp,s8,zero
     2e4:	8fbf001c 	lw	ra,28(sp)
     2e8:	8fbe0018 	lw	s8,24(sp)
     2ec:	27bd0020 	addiu	sp,sp,32
     2f0:	03e00008 	jr	ra
     2f4:	00000000 	sll	zero,zero,0x0

000002f8 <float_raise>:
| should be simply `float_exception_flags |= flags;'.
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
     2f8:	27bdfff8 	addiu	sp,sp,-8
     2fc:	afbe0004 	sw	s8,4(sp)
     300:	03a0f021 	addu	s8,sp,zero
     304:	afc40008 	sw	a0,8(s8)
  float_exception_flags |= flags;
     308:	8f830000 	lw	v1,0(gp)
     30c:	8fc20008 	lw	v0,8(s8)
     310:	00000000 	sll	zero,zero,0x0
     314:	00621025 	or	v0,v1,v0
     318:	af820000 	sw	v0,0(gp)

}
     31c:	03c0e821 	addu	sp,s8,zero
     320:	8fbe0004 	lw	s8,4(sp)
     324:	27bd0008 	addiu	sp,sp,8
     328:	03e00008 	jr	ra
     32c:	00000000 	sll	zero,zero,0x0

00000330 <float64_is_nan>:
| otherwise returns 0.
*----------------------------------------------------------------------------*/

flag
float64_is_nan (float64 a)
{
     330:	27bdfff8 	addiu	sp,sp,-8
     334:	afbe0004 	sw	s8,4(sp)
     338:	03a0f021 	addu	s8,sp,zero
     33c:	afc5000c 	sw	a1,12(s8)
     340:	afc40008 	sw	a0,8(s8)

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     344:	8fc4000c 	lw	a0,12(s8)
     348:	00000000 	sll	zero,zero,0x0
     34c:	000427c2 	srl	a0,a0,0x1f
     350:	8fc50008 	lw	a1,8(s8)
     354:	00000000 	sll	zero,zero,0x0
     358:	00051040 	sll	v0,a1,0x1
     35c:	00821025 	or	v0,a0,v0
     360:	8fc4000c 	lw	a0,12(s8)
     364:	00000000 	sll	zero,zero,0x0
     368:	00041840 	sll	v1,a0,0x1
     36c:	24040001 	addiu	a0,zero,1
     370:	3c05ffe0 	lui	a1,0xffe0
     374:	34a50001 	ori	a1,a1,0x1
     378:	0045282b 	sltu	a1,v0,a1
     37c:	10a00007 	beqz	a1,39c <float64_is_nan+0x6c>
     380:	00000000 	sll	zero,zero,0x0
     384:	3c05ffe0 	lui	a1,0xffe0
     388:	14450003 	bne	v0,a1,398 <float64_is_nan+0x68>
     38c:	00000000 	sll	zero,zero,0x0
     390:	14600002 	bnez	v1,39c <float64_is_nan+0x6c>
     394:	00000000 	sll	zero,zero,0x0
     398:	00002021 	addu	a0,zero,zero
     39c:	00801021 	addu	v0,a0,zero

}
     3a0:	03c0e821 	addu	sp,s8,zero
     3a4:	8fbe0004 	lw	s8,4(sp)
     3a8:	27bd0008 	addiu	sp,sp,8
     3ac:	03e00008 	jr	ra
     3b0:	00000000 	sll	zero,zero,0x0

000003b4 <float64_is_signaling_nan>:
| NaN; otherwise returns 0.
*----------------------------------------------------------------------------*/

flag
float64_is_signaling_nan (float64 a)
{
     3b4:	27bdfff8 	addiu	sp,sp,-8
     3b8:	afbe0004 	sw	s8,4(sp)
     3bc:	03a0f021 	addu	s8,sp,zero
     3c0:	afc5000c 	sw	a1,12(s8)
     3c4:	afc40008 	sw	a0,8(s8)

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     3c8:	8fc40008 	lw	a0,8(s8)
     3cc:	00000000 	sll	zero,zero,0x0
     3d0:	00044cc2 	srl	t1,a0,0x13
     3d4:	00004021 	addu	t0,zero,zero
     3d8:	31060000 	andi	a2,t0,0x0
     3dc:	31270fff 	andi	a3,t1,0xfff
     3e0:	14c00012 	bnez	a2,42c <float64_is_signaling_nan+0x78>
     3e4:	00000000 	sll	zero,zero,0x0
     3e8:	24040ffe 	addiu	a0,zero,4094
     3ec:	14e4000f 	bne	a3,a0,42c <float64_is_signaling_nan+0x78>
     3f0:	00000000 	sll	zero,zero,0x0
     3f4:	8fc50008 	lw	a1,8(s8)
     3f8:	3c040007 	lui	a0,0x7
     3fc:	3484ffff 	ori	a0,a0,0xffff
     400:	00a41024 	and	v0,a1,a0
     404:	8fc5000c 	lw	a1,12(s8)
     408:	2404ffff 	addiu	a0,zero,-1
     40c:	00a41824 	and	v1,a1,a0
     410:	00402021 	addu	a0,v0,zero
     414:	00832025 	or	a0,a0,v1
     418:	10800004 	beqz	a0,42c <float64_is_signaling_nan+0x78>
     41c:	00000000 	sll	zero,zero,0x0
     420:	24020001 	addiu	v0,zero,1
     424:	0800010c 	j	430 <float64_is_signaling_nan+0x7c>
     428:	00000000 	sll	zero,zero,0x0
     42c:	00001021 	addu	v0,zero,zero

}
     430:	03c0e821 	addu	sp,s8,zero
     434:	8fbe0004 	lw	s8,4(sp)
     438:	27bd0008 	addiu	sp,sp,8
     43c:	03e00008 	jr	ra
     440:	00000000 	sll	zero,zero,0x0

00000444 <propagateFloat64NaN>:
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/

static float64
propagateFloat64NaN (float64 a, float64 b)
{
     444:	27bdffd8 	addiu	sp,sp,-40
     448:	afbf0024 	sw	ra,36(sp)
     44c:	afbe0020 	sw	s8,32(sp)
     450:	03a0f021 	addu	s8,sp,zero
     454:	afc5002c 	sw	a1,44(s8)
     458:	afc40028 	sw	a0,40(s8)
     45c:	afc70034 	sw	a3,52(s8)
     460:	afc60030 	sw	a2,48(s8)
  flag aIsNaN, aIsSignalingNaN, bIsNaN, bIsSignalingNaN;

  aIsNaN = float64_is_nan (a);
     464:	8fc5002c 	lw	a1,44(s8)
     468:	8fc40028 	lw	a0,40(s8)
     46c:	0c000000 	jal	0 <shift64RightJamming>
     470:	00000000 	sll	zero,zero,0x0
     474:	afc20010 	sw	v0,16(s8)
  aIsSignalingNaN = float64_is_signaling_nan (a);
     478:	8fc5002c 	lw	a1,44(s8)
     47c:	8fc40028 	lw	a0,40(s8)
     480:	0c000000 	jal	0 <shift64RightJamming>
     484:	00000000 	sll	zero,zero,0x0
     488:	afc20014 	sw	v0,20(s8)
  bIsNaN = float64_is_nan (b);
     48c:	8fc50034 	lw	a1,52(s8)
     490:	8fc40030 	lw	a0,48(s8)
     494:	0c000000 	jal	0 <shift64RightJamming>
     498:	00000000 	sll	zero,zero,0x0
     49c:	afc20018 	sw	v0,24(s8)
  bIsSignalingNaN = float64_is_signaling_nan (b);
     4a0:	8fc50034 	lw	a1,52(s8)
     4a4:	8fc40030 	lw	a0,48(s8)
     4a8:	0c000000 	jal	0 <shift64RightJamming>
     4ac:	00000000 	sll	zero,zero,0x0
     4b0:	afc2001c 	sw	v0,28(s8)
  a |= LIT64 (0x0008000000000000);
     4b4:	8fc30028 	lw	v1,40(s8)
     4b8:	3c020008 	lui	v0,0x8
     4bc:	00621025 	or	v0,v1,v0
     4c0:	afc20028 	sw	v0,40(s8)
     4c4:	8fc2002c 	lw	v0,44(s8)
     4c8:	00000000 	sll	zero,zero,0x0
     4cc:	34420000 	ori	v0,v0,0x0
     4d0:	afc2002c 	sw	v0,44(s8)
  b |= LIT64 (0x0008000000000000);
     4d4:	8fc30030 	lw	v1,48(s8)
     4d8:	3c020008 	lui	v0,0x8
     4dc:	00621025 	or	v0,v1,v0
     4e0:	afc20030 	sw	v0,48(s8)
     4e4:	8fc20034 	lw	v0,52(s8)
     4e8:	00000000 	sll	zero,zero,0x0
     4ec:	34420000 	ori	v0,v0,0x0
     4f0:	afc20034 	sw	v0,52(s8)
  if (aIsSignalingNaN | bIsSignalingNaN)
     4f4:	8fc30014 	lw	v1,20(s8)
     4f8:	8fc2001c 	lw	v0,28(s8)
     4fc:	00000000 	sll	zero,zero,0x0
     500:	00621025 	or	v0,v1,v0
     504:	10400004 	beqz	v0,518 <propagateFloat64NaN+0xd4>
     508:	00000000 	sll	zero,zero,0x0
    float_raise (float_flag_invalid);
     50c:	24040010 	addiu	a0,zero,16
     510:	0c000000 	jal	0 <shift64RightJamming>
     514:	00000000 	sll	zero,zero,0x0
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
     518:	8fc2001c 	lw	v0,28(s8)
     51c:	00000000 	sll	zero,zero,0x0
     520:	14400015 	bnez	v0,578 <propagateFloat64NaN+0x134>
     524:	00000000 	sll	zero,zero,0x0
     528:	8fc20014 	lw	v0,20(s8)
     52c:	00000000 	sll	zero,zero,0x0
     530:	1440000d 	bnez	v0,568 <propagateFloat64NaN+0x124>
     534:	00000000 	sll	zero,zero,0x0
     538:	8fc20018 	lw	v0,24(s8)
     53c:	00000000 	sll	zero,zero,0x0
     540:	10400005 	beqz	v0,558 <propagateFloat64NaN+0x114>
     544:	00000000 	sll	zero,zero,0x0
     548:	8fc30034 	lw	v1,52(s8)
     54c:	8fc20030 	lw	v0,48(s8)
     550:	08000158 	j	560 <propagateFloat64NaN+0x11c>
     554:	00000000 	sll	zero,zero,0x0
     558:	8fc3002c 	lw	v1,44(s8)
     55c:	8fc20028 	lw	v0,40(s8)
     560:	0800015c 	j	570 <propagateFloat64NaN+0x12c>
     564:	00000000 	sll	zero,zero,0x0
     568:	8fc3002c 	lw	v1,44(s8)
     56c:	8fc20028 	lw	v0,40(s8)
     570:	08000160 	j	580 <propagateFloat64NaN+0x13c>
     574:	00000000 	sll	zero,zero,0x0
     578:	8fc30034 	lw	v1,52(s8)
     57c:	8fc20030 	lw	v0,48(s8)

}
     580:	03c0e821 	addu	sp,s8,zero
     584:	8fbf0024 	lw	ra,36(sp)
     588:	8fbe0020 	lw	s8,32(sp)
     58c:	27bd0028 	addiu	sp,sp,40
     590:	03e00008 	jr	ra
     594:	00000000 	sll	zero,zero,0x0

00000598 <extractFloat64Frac>:
| Returns the fraction bits of the double-precision floating-point value `a'.
*----------------------------------------------------------------------------*/

INLINE bits64
extractFloat64Frac (float64 a)
{
     598:	27bdfff8 	addiu	sp,sp,-8
     59c:	afbe0004 	sw	s8,4(sp)
     5a0:	03a0f021 	addu	s8,sp,zero
     5a4:	afc5000c 	sw	a1,12(s8)
     5a8:	afc40008 	sw	a0,8(s8)

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     5ac:	8fc50008 	lw	a1,8(s8)
     5b0:	3c04000f 	lui	a0,0xf
     5b4:	3484ffff 	ori	a0,a0,0xffff
     5b8:	00a41024 	and	v0,a1,a0
     5bc:	8fc5000c 	lw	a1,12(s8)
     5c0:	2404ffff 	addiu	a0,zero,-1
     5c4:	00a41824 	and	v1,a1,a0

}
     5c8:	03c0e821 	addu	sp,s8,zero
     5cc:	8fbe0004 	lw	s8,4(sp)
     5d0:	27bd0008 	addiu	sp,sp,8
     5d4:	03e00008 	jr	ra
     5d8:	00000000 	sll	zero,zero,0x0

000005dc <extractFloat64Exp>:
| Returns the exponent bits of the double-precision floating-point value `a'.
*----------------------------------------------------------------------------*/

INLINE int16
extractFloat64Exp (float64 a)
{
     5dc:	27bdfff8 	addiu	sp,sp,-8
     5e0:	afbe0004 	sw	s8,4(sp)
     5e4:	03a0f021 	addu	s8,sp,zero
     5e8:	afc5000c 	sw	a1,12(s8)
     5ec:	afc40008 	sw	a0,8(s8)

  return (a >> 52) & 0x7FF;
     5f0:	8fc40008 	lw	a0,8(s8)
     5f4:	00000000 	sll	zero,zero,0x0
     5f8:	00041d02 	srl	v1,a0,0x14
     5fc:	00001021 	addu	v0,zero,zero
     600:	00601021 	addu	v0,v1,zero
     604:	304207ff 	andi	v0,v0,0x7ff

}
     608:	03c0e821 	addu	sp,s8,zero
     60c:	8fbe0004 	lw	s8,4(sp)
     610:	27bd0008 	addiu	sp,sp,8
     614:	03e00008 	jr	ra
     618:	00000000 	sll	zero,zero,0x0

0000061c <extractFloat64Sign>:
| Returns the sign bit of the double-precision floating-point value `a'.
*----------------------------------------------------------------------------*/

INLINE flag
extractFloat64Sign (float64 a)
{
     61c:	27bdfff8 	addiu	sp,sp,-8
     620:	afbe0004 	sw	s8,4(sp)
     624:	03a0f021 	addu	s8,sp,zero
     628:	afc5000c 	sw	a1,12(s8)
     62c:	afc40008 	sw	a0,8(s8)

  return a >> 63;
     630:	8fc40008 	lw	a0,8(s8)
     634:	00000000 	sll	zero,zero,0x0
     638:	00041fc2 	srl	v1,a0,0x1f
     63c:	00001021 	addu	v0,zero,zero
     640:	00601021 	addu	v0,v1,zero

}
     644:	03c0e821 	addu	sp,s8,zero
     648:	8fbe0004 	lw	s8,4(sp)
     64c:	27bd0008 	addiu	sp,sp,8
     650:	03e00008 	jr	ra
     654:	00000000 	sll	zero,zero,0x0

00000658 <packFloat64>:
| significand.
*----------------------------------------------------------------------------*/

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
     658:	27bdfff8 	addiu	sp,sp,-8
     65c:	afbe0004 	sw	s8,4(sp)
     660:	03a0f021 	addu	s8,sp,zero
     664:	afc40008 	sw	a0,8(s8)
     668:	afc5000c 	sw	a1,12(s8)
     66c:	afc70014 	sw	a3,20(s8)
     670:	afc60010 	sw	a2,16(s8)

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     674:	8fcd0008 	lw	t5,8(s8)
     678:	8fc40008 	lw	a0,8(s8)
     67c:	00000000 	sll	zero,zero,0x0
     680:	000427c3 	sra	a0,a0,0x1f
     684:	00806021 	addu	t4,a0,zero
     688:	000d47c0 	sll	t0,t5,0x1f
     68c:	00004821 	addu	t1,zero,zero
     690:	8fc3000c 	lw	v1,12(s8)
     694:	8fc4000c 	lw	a0,12(s8)
     698:	00000000 	sll	zero,zero,0x0
     69c:	000427c3 	sra	a0,a0,0x1f
     6a0:	00801021 	addu	v0,a0,zero
     6a4:	00035500 	sll	t2,v1,0x14
     6a8:	00005821 	addu	t3,zero,zero
     6ac:	012b1821 	addu	v1,t1,t3
     6b0:	0069202b 	sltu	a0,v1,t1
     6b4:	010a1021 	addu	v0,t0,t2
     6b8:	00822021 	addu	a0,a0,v0
     6bc:	00801021 	addu	v0,a0,zero
     6c0:	00602821 	addu	a1,v1,zero
     6c4:	00402021 	addu	a0,v0,zero
     6c8:	8fc70014 	lw	a3,20(s8)
     6cc:	8fc60010 	lw	a2,16(s8)
     6d0:	00a71821 	addu	v1,a1,a3
     6d4:	0065402b 	sltu	t0,v1,a1
     6d8:	00861021 	addu	v0,a0,a2
     6dc:	01022021 	addu	a0,t0,v0
     6e0:	00801021 	addu	v0,a0,zero

}
     6e4:	03c0e821 	addu	sp,s8,zero
     6e8:	8fbe0004 	lw	s8,4(sp)
     6ec:	27bd0008 	addiu	sp,sp,8
     6f0:	03e00008 	jr	ra
     6f4:	00000000 	sll	zero,zero,0x0

000006f8 <roundAndPackFloat64>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
roundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
     6f8:	27bdffa8 	addiu	sp,sp,-88
     6fc:	afbf0054 	sw	ra,84(sp)
     700:	afbe0050 	sw	s8,80(sp)
     704:	afb7004c 	sw	s7,76(sp)
     708:	afb60048 	sw	s6,72(sp)
     70c:	afb50044 	sw	s5,68(sp)
     710:	afb40040 	sw	s4,64(sp)
     714:	afb3003c 	sw	s3,60(sp)
     718:	afb20038 	sw	s2,56(sp)
     71c:	afb10034 	sw	s1,52(sp)
     720:	afb00030 	sw	s0,48(sp)
     724:	03a0f021 	addu	s8,sp,zero
     728:	afc40058 	sw	a0,88(s8)
     72c:	afc5005c 	sw	a1,92(s8)
     730:	afc70064 	sw	a3,100(s8)
     734:	afc60060 	sw	a2,96(s8)
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
     738:	8f820000 	lw	v0,0(gp)
     73c:	00000000 	sll	zero,zero,0x0
     740:	afc20018 	sw	v0,24(s8)
  roundNearestEven = (roundingMode == float_round_nearest_even);
     744:	8fc20018 	lw	v0,24(s8)
     748:	00000000 	sll	zero,zero,0x0
     74c:	2c420001 	sltiu	v0,v0,1
     750:	afc2001c 	sw	v0,28(s8)
  roundIncrement = 0x200;
     754:	24020200 	addiu	v0,zero,512
     758:	afc20010 	sw	v0,16(s8)
  if (!roundNearestEven)
     75c:	8fc2001c 	lw	v0,28(s8)
     760:	00000000 	sll	zero,zero,0x0
     764:	1440001a 	bnez	v0,7d0 <roundAndPackFloat64+0xd8>
     768:	00000000 	sll	zero,zero,0x0
    {
      if (roundingMode == float_round_to_zero)
     76c:	8fc30018 	lw	v1,24(s8)
     770:	24020001 	addiu	v0,zero,1
     774:	14620004 	bne	v1,v0,788 <roundAndPackFloat64+0x90>
     778:	00000000 	sll	zero,zero,0x0
	{
	  roundIncrement = 0;
     77c:	afc00010 	sw	zero,16(s8)
     780:	080001f4 	j	7d0 <roundAndPackFloat64+0xd8>
     784:	00000000 	sll	zero,zero,0x0
	}
      else
	{
	  roundIncrement = 0x3FF;
     788:	240203ff 	addiu	v0,zero,1023
     78c:	afc20010 	sw	v0,16(s8)
	  if (zSign)
     790:	8fc20058 	lw	v0,88(s8)
     794:	00000000 	sll	zero,zero,0x0
     798:	10400008 	beqz	v0,7bc <roundAndPackFloat64+0xc4>
     79c:	00000000 	sll	zero,zero,0x0
	    {
	      if (roundingMode == float_round_up)
     7a0:	8fc30018 	lw	v1,24(s8)
     7a4:	24020002 	addiu	v0,zero,2
     7a8:	14620009 	bne	v1,v0,7d0 <roundAndPackFloat64+0xd8>
     7ac:	00000000 	sll	zero,zero,0x0
		roundIncrement = 0;
     7b0:	afc00010 	sw	zero,16(s8)
     7b4:	080001f4 	j	7d0 <roundAndPackFloat64+0xd8>
     7b8:	00000000 	sll	zero,zero,0x0
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
     7bc:	8fc30018 	lw	v1,24(s8)
     7c0:	24020003 	addiu	v0,zero,3
     7c4:	14620002 	bne	v1,v0,7d0 <roundAndPackFloat64+0xd8>
     7c8:	00000000 	sll	zero,zero,0x0
		roundIncrement = 0;
     7cc:	afc00010 	sw	zero,16(s8)
	    }
	}
    }
  roundBits = zSig & 0x3FF;
     7d0:	8fc30064 	lw	v1,100(s8)
     7d4:	8fc20060 	lw	v0,96(s8)
     7d8:	00601021 	addu	v0,v1,zero
     7dc:	304203ff 	andi	v0,v0,0x3ff
     7e0:	afc20014 	sw	v0,20(s8)
  if (0x7FD <= (bits16) zExp)
     7e4:	8fc2005c 	lw	v0,92(s8)
     7e8:	00000000 	sll	zero,zero,0x0
     7ec:	3042ffff 	andi	v0,v0,0xffff
     7f0:	2c4207fd 	sltiu	v0,v0,2045
     7f4:	14400050 	bnez	v0,938 <roundAndPackFloat64+0x240>
     7f8:	00000000 	sll	zero,zero,0x0
    {
      if ((0x7FD < zExp)
     7fc:	8fc2005c 	lw	v0,92(s8)
     800:	00000000 	sll	zero,zero,0x0
     804:	284207fe 	slti	v0,v0,2046
     808:	10400013 	beqz	v0,858 <roundAndPackFloat64+0x160>
     80c:	00000000 	sll	zero,zero,0x0
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
     810:	8fc3005c 	lw	v1,92(s8)
     814:	240207fd 	addiu	v0,zero,2045
     818:	14620026 	bne	v1,v0,8b4 <roundAndPackFloat64+0x1bc>
     81c:	00000000 	sll	zero,zero,0x0
     820:	8fc90010 	lw	t1,16(s8)
     824:	8fc20010 	lw	v0,16(s8)
     828:	00000000 	sll	zero,zero,0x0
     82c:	000217c3 	sra	v0,v0,0x1f
     830:	00404021 	addu	t0,v0,zero
     834:	8fc50064 	lw	a1,100(s8)
     838:	8fc40060 	lw	a0,96(s8)
     83c:	01251821 	addu	v1,t1,a1
     840:	0069302b 	sltu	a2,v1,t1
     844:	01041021 	addu	v0,t0,a0
     848:	00c22021 	addu	a0,a2,v0
     84c:	00801021 	addu	v0,a0,zero
     850:	04410018 	bgez	v0,8b4 <roundAndPackFloat64+0x1bc>
     854:	00000000 	sll	zero,zero,0x0
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
     858:	24040009 	addiu	a0,zero,9
     85c:	0c000000 	jal	0 <shift64RightJamming>
     860:	00000000 	sll	zero,zero,0x0
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
     864:	8fc40058 	lw	a0,88(s8)
     868:	240507ff 	addiu	a1,zero,2047
     86c:	00003821 	addu	a3,zero,zero
     870:	00003021 	addu	a2,zero,zero
     874:	0c000000 	jal	0 <shift64RightJamming>
     878:	00000000 	sll	zero,zero,0x0
     87c:	00602821 	addu	a1,v1,zero
     880:	00402021 	addu	a0,v0,zero
     884:	8fc20010 	lw	v0,16(s8)
     888:	00000000 	sll	zero,zero,0x0
     88c:	2c420001 	sltiu	v0,v0,1
     890:	0040b821 	addu	s7,v0,zero
     894:	0000b021 	addu	s6,zero,zero
     898:	00b71823 	subu	v1,a1,s7
     89c:	00a3302b 	sltu	a2,a1,v1
     8a0:	00961023 	subu	v0,a0,s6
     8a4:	00462023 	subu	a0,v0,a2
     8a8:	00801021 	addu	v0,a0,zero
     8ac:	0800028e 	j	a38 <roundAndPackFloat64+0x340>
     8b0:	00000000 	sll	zero,zero,0x0
	}
      if (zExp < 0)
     8b4:	8fc2005c 	lw	v0,92(s8)
     8b8:	00000000 	sll	zero,zero,0x0
     8bc:	0441001e 	bgez	v0,938 <roundAndPackFloat64+0x240>
     8c0:	00000000 	sll	zero,zero,0x0
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
     8c4:	24020001 	addiu	v0,zero,1
     8c8:	afc20020 	sw	v0,32(s8)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
     8cc:	8fc30064 	lw	v1,100(s8)
     8d0:	8fc20060 	lw	v0,96(s8)
     8d4:	8fc4005c 	lw	a0,92(s8)
     8d8:	00000000 	sll	zero,zero,0x0
     8dc:	00043023 	negu	a2,a0
     8e0:	27c70060 	addiu	a3,s8,96
     8e4:	00602821 	addu	a1,v1,zero
     8e8:	00402021 	addu	a0,v0,zero
     8ec:	0c000000 	jal	0 <shift64RightJamming>
     8f0:	00000000 	sll	zero,zero,0x0
	  zExp = 0;
     8f4:	afc0005c 	sw	zero,92(s8)
	  roundBits = zSig & 0x3FF;
     8f8:	8fc30064 	lw	v1,100(s8)
     8fc:	8fc20060 	lw	v0,96(s8)
     900:	00601021 	addu	v0,v1,zero
     904:	304203ff 	andi	v0,v0,0x3ff
     908:	afc20014 	sw	v0,20(s8)
	  if (isTiny && roundBits)
     90c:	8fc20020 	lw	v0,32(s8)
     910:	00000000 	sll	zero,zero,0x0
     914:	10400008 	beqz	v0,938 <roundAndPackFloat64+0x240>
     918:	00000000 	sll	zero,zero,0x0
     91c:	8fc20014 	lw	v0,20(s8)
     920:	00000000 	sll	zero,zero,0x0
     924:	10400004 	beqz	v0,938 <roundAndPackFloat64+0x240>
     928:	00000000 	sll	zero,zero,0x0
	    float_raise (float_flag_underflow);
     92c:	24040004 	addiu	a0,zero,4
     930:	0c000000 	jal	0 <shift64RightJamming>
     934:	00000000 	sll	zero,zero,0x0
	}
    }
  if (roundBits)
     938:	8fc20014 	lw	v0,20(s8)
     93c:	00000000 	sll	zero,zero,0x0
     940:	10400005 	beqz	v0,958 <roundAndPackFloat64+0x260>
     944:	00000000 	sll	zero,zero,0x0
    float_exception_flags |= float_flag_inexact;
     948:	8f820000 	lw	v0,0(gp)
     94c:	00000000 	sll	zero,zero,0x0
     950:	34420001 	ori	v0,v0,0x1
     954:	af820000 	sw	v0,0(gp)
  zSig = (zSig + roundIncrement) >> 10;
     958:	8fd30010 	lw	s3,16(s8)
     95c:	8fc20010 	lw	v0,16(s8)
     960:	00000000 	sll	zero,zero,0x0
     964:	000217c3 	sra	v0,v0,0x1f
     968:	00409021 	addu	s2,v0,zero
     96c:	8fc50064 	lw	a1,100(s8)
     970:	8fc40060 	lw	a0,96(s8)
     974:	02651821 	addu	v1,s3,a1
     978:	0073302b 	sltu	a2,v1,s3
     97c:	02441021 	addu	v0,s2,a0
     980:	00c22021 	addu	a0,a2,v0
     984:	00801021 	addu	v0,a0,zero
     988:	00022580 	sll	a0,v0,0x16
     98c:	00038a82 	srl	s1,v1,0xa
     990:	00918825 	or	s1,a0,s1
     994:	00028282 	srl	s0,v0,0xa
     998:	afd10064 	sw	s1,100(s8)
     99c:	afd00060 	sw	s0,96(s8)
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
     9a0:	8fc20014 	lw	v0,20(s8)
     9a4:	00000000 	sll	zero,zero,0x0
     9a8:	38420200 	xori	v0,v0,0x200
     9ac:	2c430001 	sltiu	v1,v0,1
     9b0:	8fc2001c 	lw	v0,28(s8)
     9b4:	00000000 	sll	zero,zero,0x0
     9b8:	00621024 	and	v0,v1,v0
     9bc:	00021027 	nor	v0,zero,v0
     9c0:	0040a821 	addu	s5,v0,zero
     9c4:	000217c3 	sra	v0,v0,0x1f
     9c8:	0040a021 	addu	s4,v0,zero
     9cc:	8fc30064 	lw	v1,100(s8)
     9d0:	8fc20060 	lw	v0,96(s8)
     9d4:	00000000 	sll	zero,zero,0x0
     9d8:	02822024 	and	a0,s4,v0
     9dc:	afc40028 	sw	a0,40(s8)
     9e0:	02a32024 	and	a0,s5,v1
     9e4:	afc4002c 	sw	a0,44(s8)
     9e8:	8fc3002c 	lw	v1,44(s8)
     9ec:	8fc20028 	lw	v0,40(s8)
     9f0:	afc30064 	sw	v1,100(s8)
     9f4:	afc20060 	sw	v0,96(s8)
  if (zSig == 0)
     9f8:	8fc50064 	lw	a1,100(s8)
     9fc:	8fc40060 	lw	a0,96(s8)
     a00:	00000000 	sll	zero,zero,0x0
     a04:	00801021 	addu	v0,a0,zero
     a08:	00451025 	or	v0,v0,a1
     a0c:	14400002 	bnez	v0,a18 <roundAndPackFloat64+0x320>
     a10:	00000000 	sll	zero,zero,0x0
    zExp = 0;
     a14:	afc0005c 	sw	zero,92(s8)
  return packFloat64 (zSign, zExp, zSig);
     a18:	8fc30064 	lw	v1,100(s8)
     a1c:	8fc20060 	lw	v0,96(s8)
     a20:	8fc40058 	lw	a0,88(s8)
     a24:	8fc5005c 	lw	a1,92(s8)
     a28:	00603821 	addu	a3,v1,zero
     a2c:	00403021 	addu	a2,v0,zero
     a30:	0c000000 	jal	0 <shift64RightJamming>
     a34:	00000000 	sll	zero,zero,0x0

}
     a38:	03c0e821 	addu	sp,s8,zero
     a3c:	8fbf0054 	lw	ra,84(sp)
     a40:	8fbe0050 	lw	s8,80(sp)
     a44:	8fb7004c 	lw	s7,76(sp)
     a48:	8fb60048 	lw	s6,72(sp)
     a4c:	8fb50044 	lw	s5,68(sp)
     a50:	8fb40040 	lw	s4,64(sp)
     a54:	8fb3003c 	lw	s3,60(sp)
     a58:	8fb20038 	lw	s2,56(sp)
     a5c:	8fb10034 	lw	s1,52(sp)
     a60:	8fb00030 	lw	s0,48(sp)
     a64:	27bd0058 	addiu	sp,sp,88
     a68:	03e00008 	jr	ra
     a6c:	00000000 	sll	zero,zero,0x0

00000a70 <normalizeRoundAndPackFloat64>:
| floating-point exponent.
*----------------------------------------------------------------------------*/

static float64
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
     a70:	27bdffd8 	addiu	sp,sp,-40
     a74:	afbf0024 	sw	ra,36(sp)
     a78:	afbe0020 	sw	s8,32(sp)
     a7c:	afb1001c 	sw	s1,28(sp)
     a80:	afb00018 	sw	s0,24(sp)
     a84:	03a0f021 	addu	s8,sp,zero
     a88:	afc40028 	sw	a0,40(s8)
     a8c:	afc5002c 	sw	a1,44(s8)
     a90:	afc70034 	sw	a3,52(s8)
     a94:	afc60030 	sw	a2,48(s8)
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
     a98:	8fc50034 	lw	a1,52(s8)
     a9c:	8fc40030 	lw	a0,48(s8)
     aa0:	0c000098 	jal	260 <countLeadingZeros64>
     aa4:	00000000 	sll	zero,zero,0x0
     aa8:	2442ffff 	addiu	v0,v0,-1
     aac:	afc20010 	sw	v0,16(s8)
  return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
     ab0:	8fc3002c 	lw	v1,44(s8)
     ab4:	8fc20010 	lw	v0,16(s8)
     ab8:	00000000 	sll	zero,zero,0x0
     abc:	00621023 	subu	v0,v1,v0
     ac0:	8fc30010 	lw	v1,16(s8)
     ac4:	00000000 	sll	zero,zero,0x0
     ac8:	30630020 	andi	v1,v1,0x20
     acc:	10600008 	beqz	v1,af0 <normalizeRoundAndPackFloat64+0x80>
     ad0:	00000000 	sll	zero,zero,0x0
     ad4:	8fc40034 	lw	a0,52(s8)
     ad8:	8fc30010 	lw	v1,16(s8)
     adc:	00000000 	sll	zero,zero,0x0
     ae0:	00648004 	sllv	s0,a0,v1
     ae4:	00008821 	addu	s1,zero,zero
     ae8:	080002cc 	j	b30 <normalizeRoundAndPackFloat64+0xc0>
     aec:	00000000 	sll	zero,zero,0x0
     af0:	8fc30034 	lw	v1,52(s8)
     af4:	00000000 	sll	zero,zero,0x0
     af8:	00032042 	srl	a0,v1,0x1
     afc:	8fc50010 	lw	a1,16(s8)
     b00:	2403ffff 	addiu	v1,zero,-1
     b04:	00a31826 	xor	v1,a1,v1
     b08:	00641806 	srlv	v1,a0,v1
     b0c:	8fc50030 	lw	a1,48(s8)
     b10:	8fc40010 	lw	a0,16(s8)
     b14:	00000000 	sll	zero,zero,0x0
     b18:	00858004 	sllv	s0,a1,a0
     b1c:	00708025 	or	s0,v1,s0
     b20:	8fc40034 	lw	a0,52(s8)
     b24:	8fc30010 	lw	v1,16(s8)
     b28:	00000000 	sll	zero,zero,0x0
     b2c:	00648804 	sllv	s1,a0,v1
     b30:	8fc40028 	lw	a0,40(s8)
     b34:	00402821 	addu	a1,v0,zero
     b38:	02203821 	addu	a3,s1,zero
     b3c:	02003021 	addu	a2,s0,zero
     b40:	0c0001be 	jal	6f8 <roundAndPackFloat64>
     b44:	00000000 	sll	zero,zero,0x0

}
     b48:	03c0e821 	addu	sp,s8,zero
     b4c:	8fbf0024 	lw	ra,36(sp)
     b50:	8fbe0020 	lw	s8,32(sp)
     b54:	8fb1001c 	lw	s1,28(sp)
     b58:	8fb00018 	lw	s0,24(sp)
     b5c:	27bd0028 	addiu	sp,sp,40
     b60:	03e00008 	jr	ra
     b64:	00000000 	sll	zero,zero,0x0

00000b68 <addFloat64Sigs>:
| Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
addFloat64Sigs (float64 a, float64 b, flag zSign)
{
     b68:	27bdff80 	addiu	sp,sp,-128
     b6c:	afbf007c 	sw	ra,124(sp)
     b70:	afbe0078 	sw	s8,120(sp)
     b74:	afb70074 	sw	s7,116(sp)
     b78:	afb60070 	sw	s6,112(sp)
     b7c:	afb5006c 	sw	s5,108(sp)
     b80:	afb40068 	sw	s4,104(sp)
     b84:	afb30064 	sw	s3,100(sp)
     b88:	afb20060 	sw	s2,96(sp)
     b8c:	afb1005c 	sw	s1,92(sp)
     b90:	afb00058 	sw	s0,88(sp)
     b94:	03a0f021 	addu	s8,sp,zero
     b98:	afc50084 	sw	a1,132(s8)
     b9c:	afc40080 	sw	a0,128(s8)
     ba0:	afc7008c 	sw	a3,140(s8)
     ba4:	afc60088 	sw	a2,136(s8)
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  int16 expDiff;

  aSig = extractFloat64Frac (a);
     ba8:	8fc50084 	lw	a1,132(s8)
     bac:	8fc40080 	lw	a0,128(s8)
     bb0:	0c000000 	jal	0 <shift64RightJamming>
     bb4:	00000000 	sll	zero,zero,0x0
     bb8:	afc30034 	sw	v1,52(s8)
     bbc:	afc20030 	sw	v0,48(s8)
  aExp = extractFloat64Exp (a);
     bc0:	8fc50084 	lw	a1,132(s8)
     bc4:	8fc40080 	lw	a0,128(s8)
     bc8:	0c000000 	jal	0 <shift64RightJamming>
     bcc:	00000000 	sll	zero,zero,0x0
     bd0:	afc20024 	sw	v0,36(s8)
  bSig = extractFloat64Frac (b);
     bd4:	8fc5008c 	lw	a1,140(s8)
     bd8:	8fc40088 	lw	a0,136(s8)
     bdc:	0c000000 	jal	0 <shift64RightJamming>
     be0:	00000000 	sll	zero,zero,0x0
     be4:	afc3003c 	sw	v1,60(s8)
     be8:	afc20038 	sw	v0,56(s8)
  bExp = extractFloat64Exp (b);
     bec:	8fc5008c 	lw	a1,140(s8)
     bf0:	8fc40088 	lw	a0,136(s8)
     bf4:	0c000000 	jal	0 <shift64RightJamming>
     bf8:	00000000 	sll	zero,zero,0x0
     bfc:	afc20028 	sw	v0,40(s8)
  expDiff = aExp - bExp;
     c00:	8fc30024 	lw	v1,36(s8)
     c04:	8fc20028 	lw	v0,40(s8)
     c08:	00000000 	sll	zero,zero,0x0
     c0c:	00621023 	subu	v0,v1,v0
     c10:	afc20020 	sw	v0,32(s8)
  aSig <<= 9;
     c14:	8fc30034 	lw	v1,52(s8)
     c18:	8fc20030 	lw	v0,48(s8)
     c1c:	000325c2 	srl	a0,v1,0x17
     c20:	0002a240 	sll	s4,v0,0x9
     c24:	0094a025 	or	s4,a0,s4
     c28:	0003aa40 	sll	s5,v1,0x9
     c2c:	afd50034 	sw	s5,52(s8)
     c30:	afd40030 	sw	s4,48(s8)
  bSig <<= 9;
     c34:	8fc3003c 	lw	v1,60(s8)
     c38:	8fc20038 	lw	v0,56(s8)
     c3c:	000325c2 	srl	a0,v1,0x17
     c40:	00029240 	sll	s2,v0,0x9
     c44:	00929025 	or	s2,a0,s2
     c48:	00039a40 	sll	s3,v1,0x9
     c4c:	afd3003c 	sw	s3,60(s8)
     c50:	afd20038 	sw	s2,56(s8)
  if (0 < expDiff)
     c54:	8fc20020 	lw	v0,32(s8)
     c58:	00000000 	sll	zero,zero,0x0
     c5c:	1840003a 	blez	v0,d48 <addFloat64Sigs+0x1e0>
     c60:	00000000 	sll	zero,zero,0x0
    {
      if (aExp == 0x7FF)
     c64:	8fc30024 	lw	v1,36(s8)
     c68:	240207ff 	addiu	v0,zero,2047
     c6c:	14620014 	bne	v1,v0,cc0 <addFloat64Sigs+0x158>
     c70:	00000000 	sll	zero,zero,0x0
	{
	  if (aSig)
     c74:	8fc50034 	lw	a1,52(s8)
     c78:	8fc40030 	lw	a0,48(s8)
     c7c:	00000000 	sll	zero,zero,0x0
     c80:	00801021 	addu	v0,a0,zero
     c84:	00451025 	or	v0,v0,a1
     c88:	10400009 	beqz	v0,cb0 <addFloat64Sigs+0x148>
     c8c:	00000000 	sll	zero,zero,0x0
	    return propagateFloat64NaN (a, b);
     c90:	8fc50084 	lw	a1,132(s8)
     c94:	8fc40080 	lw	a0,128(s8)
     c98:	8fc7008c 	lw	a3,140(s8)
     c9c:	8fc60088 	lw	a2,136(s8)
     ca0:	0c000111 	jal	444 <propagateFloat64NaN>
     ca4:	00000000 	sll	zero,zero,0x0
     ca8:	0800041a 	j	1068 <addFloat64Sigs+0x500>
     cac:	00000000 	sll	zero,zero,0x0
	  return a;
     cb0:	8fc30084 	lw	v1,132(s8)
     cb4:	8fc20080 	lw	v0,128(s8)
     cb8:	0800041a 	j	1068 <addFloat64Sigs+0x500>
     cbc:	00000000 	sll	zero,zero,0x0
	}
      if (bExp == 0)
     cc0:	8fc20028 	lw	v0,40(s8)
     cc4:	00000000 	sll	zero,zero,0x0
     cc8:	14400007 	bnez	v0,ce8 <addFloat64Sigs+0x180>
     ccc:	00000000 	sll	zero,zero,0x0
	--expDiff;
     cd0:	8fc20020 	lw	v0,32(s8)
     cd4:	00000000 	sll	zero,zero,0x0
     cd8:	2442ffff 	addiu	v0,v0,-1
     cdc:	afc20020 	sw	v0,32(s8)
     ce0:	08000345 	j	d14 <addFloat64Sigs+0x1ac>
     ce4:	00000000 	sll	zero,zero,0x0
      else
	bSig |= LIT64 (0x2000000000000000);
     ce8:	8fc3003c 	lw	v1,60(s8)
     cec:	8fc20038 	lw	v0,56(s8)
     cf0:	3c042000 	lui	a0,0x2000
     cf4:	00442025 	or	a0,v0,a0
     cf8:	afc40040 	sw	a0,64(s8)
     cfc:	34640000 	ori	a0,v1,0x0
     d00:	afc40044 	sw	a0,68(s8)
     d04:	8fc30044 	lw	v1,68(s8)
     d08:	8fc20040 	lw	v0,64(s8)
     d0c:	afc3003c 	sw	v1,60(s8)
     d10:	afc20038 	sw	v0,56(s8)
      shift64RightJamming (bSig, expDiff, &bSig);
     d14:	8fc3003c 	lw	v1,60(s8)
     d18:	8fc20038 	lw	v0,56(s8)
     d1c:	27c70038 	addiu	a3,s8,56
     d20:	00602821 	addu	a1,v1,zero
     d24:	00402021 	addu	a0,v0,zero
     d28:	8fc60020 	lw	a2,32(s8)
     d2c:	0c000000 	jal	0 <shift64RightJamming>
     d30:	00000000 	sll	zero,zero,0x0
      zExp = aExp;
     d34:	8fc20024 	lw	v0,36(s8)
     d38:	00000000 	sll	zero,zero,0x0
     d3c:	afc20010 	sw	v0,16(s8)
     d40:	080003e2 	j	f88 <addFloat64Sigs+0x420>
     d44:	00000000 	sll	zero,zero,0x0
    }
  else if (expDiff < 0)
     d48:	8fc20020 	lw	v0,32(s8)
     d4c:	00000000 	sll	zero,zero,0x0
     d50:	04410040 	bgez	v0,e54 <addFloat64Sigs+0x2ec>
     d54:	00000000 	sll	zero,zero,0x0
    {
      if (bExp == 0x7FF)
     d58:	8fc30028 	lw	v1,40(s8)
     d5c:	240207ff 	addiu	v0,zero,2047
     d60:	14620018 	bne	v1,v0,dc4 <addFloat64Sigs+0x25c>
     d64:	00000000 	sll	zero,zero,0x0
	{
	  if (bSig)
     d68:	8fc5003c 	lw	a1,60(s8)
     d6c:	8fc40038 	lw	a0,56(s8)
     d70:	00000000 	sll	zero,zero,0x0
     d74:	00801021 	addu	v0,a0,zero
     d78:	00451025 	or	v0,v0,a1
     d7c:	10400009 	beqz	v0,da4 <addFloat64Sigs+0x23c>
     d80:	00000000 	sll	zero,zero,0x0
	    return propagateFloat64NaN (a, b);
     d84:	8fc50084 	lw	a1,132(s8)
     d88:	8fc40080 	lw	a0,128(s8)
     d8c:	8fc7008c 	lw	a3,140(s8)
     d90:	8fc60088 	lw	a2,136(s8)
     d94:	0c000111 	jal	444 <propagateFloat64NaN>
     d98:	00000000 	sll	zero,zero,0x0
     d9c:	0800041a 	j	1068 <addFloat64Sigs+0x500>
     da0:	00000000 	sll	zero,zero,0x0
	  return packFloat64 (zSign, 0x7FF, 0);
     da4:	8fc40090 	lw	a0,144(s8)
     da8:	240507ff 	addiu	a1,zero,2047
     dac:	00003821 	addu	a3,zero,zero
     db0:	00003021 	addu	a2,zero,zero
     db4:	0c000000 	jal	0 <shift64RightJamming>
     db8:	00000000 	sll	zero,zero,0x0
     dbc:	0800041a 	j	1068 <addFloat64Sigs+0x500>
     dc0:	00000000 	sll	zero,zero,0x0
	}
      if (aExp == 0)
     dc4:	8fc20024 	lw	v0,36(s8)
     dc8:	00000000 	sll	zero,zero,0x0
     dcc:	14400007 	bnez	v0,dec <addFloat64Sigs+0x284>
     dd0:	00000000 	sll	zero,zero,0x0
	++expDiff;
     dd4:	8fc20020 	lw	v0,32(s8)
     dd8:	00000000 	sll	zero,zero,0x0
     ddc:	24420001 	addiu	v0,v0,1
     de0:	afc20020 	sw	v0,32(s8)
     de4:	08000386 	j	e18 <addFloat64Sigs+0x2b0>
     de8:	00000000 	sll	zero,zero,0x0
      else
	{
	  aSig |= LIT64 (0x2000000000000000);
     dec:	8fc30034 	lw	v1,52(s8)
     df0:	8fc20030 	lw	v0,48(s8)
     df4:	3c042000 	lui	a0,0x2000
     df8:	00442025 	or	a0,v0,a0
     dfc:	afc40048 	sw	a0,72(s8)
     e00:	34640000 	ori	a0,v1,0x0
     e04:	afc4004c 	sw	a0,76(s8)
     e08:	8fc3004c 	lw	v1,76(s8)
     e0c:	8fc20048 	lw	v0,72(s8)
     e10:	afc30034 	sw	v1,52(s8)
     e14:	afc20030 	sw	v0,48(s8)
	}
      shift64RightJamming (aSig, -expDiff, &aSig);
     e18:	8fc30034 	lw	v1,52(s8)
     e1c:	8fc20030 	lw	v0,48(s8)
     e20:	8fc40020 	lw	a0,32(s8)
     e24:	00000000 	sll	zero,zero,0x0
     e28:	00043023 	negu	a2,a0
     e2c:	27c70030 	addiu	a3,s8,48
     e30:	00602821 	addu	a1,v1,zero
     e34:	00402021 	addu	a0,v0,zero
     e38:	0c000000 	jal	0 <shift64RightJamming>
     e3c:	00000000 	sll	zero,zero,0x0
      zExp = bExp;
     e40:	8fc20028 	lw	v0,40(s8)
     e44:	00000000 	sll	zero,zero,0x0
     e48:	afc20010 	sw	v0,16(s8)
     e4c:	080003e2 	j	f88 <addFloat64Sigs+0x420>
     e50:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      if (aExp == 0x7FF)
     e54:	8fc30024 	lw	v1,36(s8)
     e58:	240207ff 	addiu	v0,zero,2047
     e5c:	14620018 	bne	v1,v0,ec0 <addFloat64Sigs+0x358>
     e60:	00000000 	sll	zero,zero,0x0
	{
	  if (aSig | bSig)
     e64:	8fc50034 	lw	a1,52(s8)
     e68:	8fc40030 	lw	a0,48(s8)
     e6c:	8fc3003c 	lw	v1,60(s8)
     e70:	8fc20038 	lw	v0,56(s8)
     e74:	00000000 	sll	zero,zero,0x0
     e78:	0082b025 	or	s6,a0,v0
     e7c:	00a3b825 	or	s7,a1,v1
     e80:	02c01021 	addu	v0,s6,zero
     e84:	00571025 	or	v0,v0,s7
     e88:	10400009 	beqz	v0,eb0 <addFloat64Sigs+0x348>
     e8c:	00000000 	sll	zero,zero,0x0
	    return propagateFloat64NaN (a, b);
     e90:	8fc50084 	lw	a1,132(s8)
     e94:	8fc40080 	lw	a0,128(s8)
     e98:	8fc7008c 	lw	a3,140(s8)
     e9c:	8fc60088 	lw	a2,136(s8)
     ea0:	0c000111 	jal	444 <propagateFloat64NaN>
     ea4:	00000000 	sll	zero,zero,0x0
     ea8:	0800041a 	j	1068 <addFloat64Sigs+0x500>
     eac:	00000000 	sll	zero,zero,0x0
	  return a;
     eb0:	8fc30084 	lw	v1,132(s8)
     eb4:	8fc20080 	lw	v0,128(s8)
     eb8:	0800041a 	j	1068 <addFloat64Sigs+0x500>
     ebc:	00000000 	sll	zero,zero,0x0
	}
      if (aExp == 0)
     ec0:	8fc20024 	lw	v0,36(s8)
     ec4:	00000000 	sll	zero,zero,0x0
     ec8:	14400016 	bnez	v0,f24 <addFloat64Sigs+0x3bc>
     ecc:	00000000 	sll	zero,zero,0x0
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
     ed0:	8fc50034 	lw	a1,52(s8)
     ed4:	8fc40030 	lw	a0,48(s8)
     ed8:	8fc7003c 	lw	a3,60(s8)
     edc:	8fc60038 	lw	a2,56(s8)
     ee0:	00a71821 	addu	v1,a1,a3
     ee4:	0065402b 	sltu	t0,v1,a1
     ee8:	00861021 	addu	v0,a0,a2
     eec:	01022021 	addu	a0,t0,v0
     ef0:	00801021 	addu	v0,a0,zero
     ef4:	000225c0 	sll	a0,v0,0x17
     ef8:	00038a42 	srl	s1,v1,0x9
     efc:	00918825 	or	s1,a0,s1
     f00:	00028242 	srl	s0,v0,0x9
     f04:	8fc40090 	lw	a0,144(s8)
     f08:	00002821 	addu	a1,zero,zero
     f0c:	02203821 	addu	a3,s1,zero
     f10:	02003021 	addu	a2,s0,zero
     f14:	0c000000 	jal	0 <shift64RightJamming>
     f18:	00000000 	sll	zero,zero,0x0
     f1c:	0800041a 	j	1068 <addFloat64Sigs+0x500>
     f20:	00000000 	sll	zero,zero,0x0
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
     f24:	8fc50034 	lw	a1,52(s8)
     f28:	8fc40030 	lw	a0,48(s8)
     f2c:	8fc7003c 	lw	a3,60(s8)
     f30:	8fc60038 	lw	a2,56(s8)
     f34:	00a71821 	addu	v1,a1,a3
     f38:	0065402b 	sltu	t0,v1,a1
     f3c:	00861021 	addu	v0,a0,a2
     f40:	01022021 	addu	a0,t0,v0
     f44:	00801021 	addu	v0,a0,zero
     f48:	00602821 	addu	a1,v1,zero
     f4c:	00402021 	addu	a0,v0,zero
     f50:	00003821 	addu	a3,zero,zero
     f54:	3c064000 	lui	a2,0x4000
     f58:	00a71821 	addu	v1,a1,a3
     f5c:	0065402b 	sltu	t0,v1,a1
     f60:	00861021 	addu	v0,a0,a2
     f64:	01022021 	addu	a0,t0,v0
     f68:	00801021 	addu	v0,a0,zero
     f6c:	afc3001c 	sw	v1,28(s8)
     f70:	afc20018 	sw	v0,24(s8)
      zExp = aExp;
     f74:	8fc20024 	lw	v0,36(s8)
     f78:	00000000 	sll	zero,zero,0x0
     f7c:	afc20010 	sw	v0,16(s8)
      goto roundAndPack;
     f80:	08000414 	j	1050 <addFloat64Sigs+0x4e8>
     f84:	00000000 	sll	zero,zero,0x0
    }
  aSig |= LIT64 (0x2000000000000000);
     f88:	8fc30034 	lw	v1,52(s8)
     f8c:	8fc20030 	lw	v0,48(s8)
     f90:	3c042000 	lui	a0,0x2000
     f94:	00442025 	or	a0,v0,a0
     f98:	afc40050 	sw	a0,80(s8)
     f9c:	34640000 	ori	a0,v1,0x0
     fa0:	afc40054 	sw	a0,84(s8)
     fa4:	8fc30054 	lw	v1,84(s8)
     fa8:	8fc20050 	lw	v0,80(s8)
     fac:	afc30034 	sw	v1,52(s8)
     fb0:	afc20030 	sw	v0,48(s8)
  zSig = (aSig + bSig) << 1;
     fb4:	8fc50034 	lw	a1,52(s8)
     fb8:	8fc40030 	lw	a0,48(s8)
     fbc:	8fc7003c 	lw	a3,60(s8)
     fc0:	8fc60038 	lw	a2,56(s8)
     fc4:	00a71821 	addu	v1,a1,a3
     fc8:	0065402b 	sltu	t0,v1,a1
     fcc:	00861021 	addu	v0,a0,a2
     fd0:	01022021 	addu	a0,t0,v0
     fd4:	00801021 	addu	v0,a0,zero
     fd8:	000327c2 	srl	a0,v1,0x1f
     fdc:	00022840 	sll	a1,v0,0x1
     fe0:	00a42025 	or	a0,a1,a0
     fe4:	afc40018 	sw	a0,24(s8)
     fe8:	00031040 	sll	v0,v1,0x1
     fec:	afc2001c 	sw	v0,28(s8)
  --zExp;
     ff0:	8fc20010 	lw	v0,16(s8)
     ff4:	00000000 	sll	zero,zero,0x0
     ff8:	2442ffff 	addiu	v0,v0,-1
     ffc:	afc20010 	sw	v0,16(s8)
  if ((sbits64) zSig < 0)
    1000:	8fc3001c 	lw	v1,28(s8)
    1004:	8fc20018 	lw	v0,24(s8)
    1008:	00000000 	sll	zero,zero,0x0
    100c:	04410010 	bgez	v0,1050 <addFloat64Sigs+0x4e8>
    1010:	00000000 	sll	zero,zero,0x0
    {
      zSig = aSig + bSig;
    1014:	8fc50034 	lw	a1,52(s8)
    1018:	8fc40030 	lw	a0,48(s8)
    101c:	8fc7003c 	lw	a3,60(s8)
    1020:	8fc60038 	lw	a2,56(s8)
    1024:	00a71821 	addu	v1,a1,a3
    1028:	0065402b 	sltu	t0,v1,a1
    102c:	00861021 	addu	v0,a0,a2
    1030:	01022021 	addu	a0,t0,v0
    1034:	00801021 	addu	v0,a0,zero
    1038:	afc3001c 	sw	v1,28(s8)
    103c:	afc20018 	sw	v0,24(s8)
      ++zExp;
    1040:	8fc20010 	lw	v0,16(s8)
    1044:	00000000 	sll	zero,zero,0x0
    1048:	24420001 	addiu	v0,v0,1
    104c:	afc20010 	sw	v0,16(s8)
    }
roundAndPack:
  return roundAndPackFloat64 (zSign, zExp, zSig);
    1050:	8fc40090 	lw	a0,144(s8)
    1054:	8fc50010 	lw	a1,16(s8)
    1058:	8fc7001c 	lw	a3,28(s8)
    105c:	8fc60018 	lw	a2,24(s8)
    1060:	0c0001be 	jal	6f8 <roundAndPackFloat64>
    1064:	00000000 	sll	zero,zero,0x0

}
    1068:	03c0e821 	addu	sp,s8,zero
    106c:	8fbf007c 	lw	ra,124(sp)
    1070:	8fbe0078 	lw	s8,120(sp)
    1074:	8fb70074 	lw	s7,116(sp)
    1078:	8fb60070 	lw	s6,112(sp)
    107c:	8fb5006c 	lw	s5,108(sp)
    1080:	8fb40068 	lw	s4,104(sp)
    1084:	8fb30064 	lw	s3,100(sp)
    1088:	8fb20060 	lw	s2,96(sp)
    108c:	8fb1005c 	lw	s1,92(sp)
    1090:	8fb00058 	lw	s0,88(sp)
    1094:	27bd0080 	addiu	sp,sp,128
    1098:	03e00008 	jr	ra
    109c:	00000000 	sll	zero,zero,0x0

000010a0 <subFloat64Sigs>:
| Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
subFloat64Sigs (float64 a, float64 b, flag zSign)
{
    10a0:	27bdff80 	addiu	sp,sp,-128
    10a4:	afbf007c 	sw	ra,124(sp)
    10a8:	afbe0078 	sw	s8,120(sp)
    10ac:	afb70074 	sw	s7,116(sp)
    10b0:	afb60070 	sw	s6,112(sp)
    10b4:	afb5006c 	sw	s5,108(sp)
    10b8:	afb40068 	sw	s4,104(sp)
    10bc:	afb30064 	sw	s3,100(sp)
    10c0:	afb20060 	sw	s2,96(sp)
    10c4:	afb1005c 	sw	s1,92(sp)
    10c8:	afb00058 	sw	s0,88(sp)
    10cc:	03a0f021 	addu	s8,sp,zero
    10d0:	afc50084 	sw	a1,132(s8)
    10d4:	afc40080 	sw	a0,128(s8)
    10d8:	afc7008c 	sw	a3,140(s8)
    10dc:	afc60088 	sw	a2,136(s8)
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  int16 expDiff;

  aSig = extractFloat64Frac (a);
    10e0:	8fc50084 	lw	a1,132(s8)
    10e4:	8fc40080 	lw	a0,128(s8)
    10e8:	0c000000 	jal	0 <shift64RightJamming>
    10ec:	00000000 	sll	zero,zero,0x0
    10f0:	afc30034 	sw	v1,52(s8)
    10f4:	afc20030 	sw	v0,48(s8)
  aExp = extractFloat64Exp (a);
    10f8:	8fc50084 	lw	a1,132(s8)
    10fc:	8fc40080 	lw	a0,128(s8)
    1100:	0c000000 	jal	0 <shift64RightJamming>
    1104:	00000000 	sll	zero,zero,0x0
    1108:	afc20010 	sw	v0,16(s8)
  bSig = extractFloat64Frac (b);
    110c:	8fc5008c 	lw	a1,140(s8)
    1110:	8fc40088 	lw	a0,136(s8)
    1114:	0c000000 	jal	0 <shift64RightJamming>
    1118:	00000000 	sll	zero,zero,0x0
    111c:	afc3003c 	sw	v1,60(s8)
    1120:	afc20038 	sw	v0,56(s8)
  bExp = extractFloat64Exp (b);
    1124:	8fc5008c 	lw	a1,140(s8)
    1128:	8fc40088 	lw	a0,136(s8)
    112c:	0c000000 	jal	0 <shift64RightJamming>
    1130:	00000000 	sll	zero,zero,0x0
    1134:	afc20014 	sw	v0,20(s8)
  expDiff = aExp - bExp;
    1138:	8fc30010 	lw	v1,16(s8)
    113c:	8fc20014 	lw	v0,20(s8)
    1140:	00000000 	sll	zero,zero,0x0
    1144:	00621023 	subu	v0,v1,v0
    1148:	afc20028 	sw	v0,40(s8)
  aSig <<= 10;
    114c:	8fc30034 	lw	v1,52(s8)
    1150:	8fc20030 	lw	v0,48(s8)
    1154:	00032582 	srl	a0,v1,0x16
    1158:	00029280 	sll	s2,v0,0xa
    115c:	00929025 	or	s2,a0,s2
    1160:	00039a80 	sll	s3,v1,0xa
    1164:	afd30034 	sw	s3,52(s8)
    1168:	afd20030 	sw	s2,48(s8)
  bSig <<= 10;
    116c:	8fc3003c 	lw	v1,60(s8)
    1170:	8fc20038 	lw	v0,56(s8)
    1174:	00032582 	srl	a0,v1,0x16
    1178:	00028280 	sll	s0,v0,0xa
    117c:	00908025 	or	s0,a0,s0
    1180:	00038a80 	sll	s1,v1,0xa
    1184:	afd1003c 	sw	s1,60(s8)
    1188:	afd00038 	sw	s0,56(s8)
  if (0 < expDiff)
    118c:	8fc20028 	lw	v0,40(s8)
    1190:	00000000 	sll	zero,zero,0x0
    1194:	1c4000b7 	bgtz	v0,1474 <subFloat64Sigs+0x3d4>
    1198:	00000000 	sll	zero,zero,0x0
    goto aExpBigger;
  if (expDiff < 0)
    119c:	8fc20028 	lw	v0,40(s8)
    11a0:	00000000 	sll	zero,zero,0x0
    11a4:	04400050 	bltz	v0,12e8 <subFloat64Sigs+0x248>
    11a8:	00000000 	sll	zero,zero,0x0
    goto bExpBigger;
  if (aExp == 0x7FF)
    11ac:	8fc30010 	lw	v1,16(s8)
    11b0:	240207ff 	addiu	v0,zero,2047
    11b4:	1462001c 	bne	v1,v0,1228 <subFloat64Sigs+0x188>
    11b8:	00000000 	sll	zero,zero,0x0
    {
      if (aSig | bSig)
    11bc:	8fc50034 	lw	a1,52(s8)
    11c0:	8fc40030 	lw	a0,48(s8)
    11c4:	8fc3003c 	lw	v1,60(s8)
    11c8:	8fc20038 	lw	v0,56(s8)
    11cc:	00000000 	sll	zero,zero,0x0
    11d0:	0082a025 	or	s4,a0,v0
    11d4:	00a3a825 	or	s5,a1,v1
    11d8:	02801021 	addu	v0,s4,zero
    11dc:	00551025 	or	v0,v0,s5
    11e0:	10400009 	beqz	v0,1208 <subFloat64Sigs+0x168>
    11e4:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    11e8:	8fc50084 	lw	a1,132(s8)
    11ec:	8fc40080 	lw	a0,128(s8)
    11f0:	8fc7008c 	lw	a3,140(s8)
    11f4:	8fc60088 	lw	a2,136(s8)
    11f8:	0c000111 	jal	444 <propagateFloat64NaN>
    11fc:	00000000 	sll	zero,zero,0x0
    1200:	08000577 	j	15dc <subFloat64Sigs+0x53c>
    1204:	00000000 	sll	zero,zero,0x0
      float_raise (float_flag_invalid);
    1208:	24040010 	addiu	a0,zero,16
    120c:	0c000000 	jal	0 <shift64RightJamming>
    1210:	00000000 	sll	zero,zero,0x0
      return float64_default_nan;
    1214:	2403ffff 	addiu	v1,zero,-1
    1218:	3c027fff 	lui	v0,0x7fff
    121c:	3442ffff 	ori	v0,v0,0xffff
    1220:	08000577 	j	15dc <subFloat64Sigs+0x53c>
    1224:	00000000 	sll	zero,zero,0x0
    }
  if (aExp == 0)
    1228:	8fc20010 	lw	v0,16(s8)
    122c:	00000000 	sll	zero,zero,0x0
    1230:	14400005 	bnez	v0,1248 <subFloat64Sigs+0x1a8>
    1234:	00000000 	sll	zero,zero,0x0
    {
      aExp = 1;
    1238:	24020001 	addiu	v0,zero,1
    123c:	afc20010 	sw	v0,16(s8)
      bExp = 1;
    1240:	24020001 	addiu	v0,zero,1
    1244:	afc20014 	sw	v0,20(s8)
    }
  if (bSig < aSig)
    1248:	8fc3003c 	lw	v1,60(s8)
    124c:	8fc20038 	lw	v0,56(s8)
    1250:	8fc50034 	lw	a1,52(s8)
    1254:	8fc40030 	lw	a0,48(s8)
    1258:	00000000 	sll	zero,zero,0x0
    125c:	0044302b 	sltu	a2,v0,a0
    1260:	14c000c2 	bnez	a2,156c <subFloat64Sigs+0x4cc>
    1264:	00000000 	sll	zero,zero,0x0
    1268:	00403021 	addu	a2,v0,zero
    126c:	14860004 	bne	a0,a2,1280 <subFloat64Sigs+0x1e0>
    1270:	00000000 	sll	zero,zero,0x0
    1274:	0065102b 	sltu	v0,v1,a1
    1278:	144000bf 	bnez	v0,1578 <subFloat64Sigs+0x4d8>
    127c:	00000000 	sll	zero,zero,0x0
    goto aBigger;
  if (aSig < bSig)
    1280:	8fc30034 	lw	v1,52(s8)
    1284:	8fc20030 	lw	v0,48(s8)
    1288:	8fc5003c 	lw	a1,60(s8)
    128c:	8fc40038 	lw	a0,56(s8)
    1290:	00000000 	sll	zero,zero,0x0
    1294:	0044302b 	sltu	a2,v0,a0
    1298:	14c0005e 	bnez	a2,1414 <subFloat64Sigs+0x374>
    129c:	00000000 	sll	zero,zero,0x0
    12a0:	00403021 	addu	a2,v0,zero
    12a4:	14860004 	bne	a0,a2,12b8 <subFloat64Sigs+0x218>
    12a8:	00000000 	sll	zero,zero,0x0
    12ac:	0065102b 	sltu	v0,v1,a1
    12b0:	1440005b 	bnez	v0,1420 <subFloat64Sigs+0x380>
    12b4:	00000000 	sll	zero,zero,0x0
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
    12b8:	8f820000 	lw	v0,0(gp)
    12bc:	00000000 	sll	zero,zero,0x0
    12c0:	38420003 	xori	v0,v0,0x3
    12c4:	2c420001 	sltiu	v0,v0,1
    12c8:	00402021 	addu	a0,v0,zero
    12cc:	00002821 	addu	a1,zero,zero
    12d0:	00003821 	addu	a3,zero,zero
    12d4:	00003021 	addu	a2,zero,zero
    12d8:	0c000000 	jal	0 <shift64RightJamming>
    12dc:	00000000 	sll	zero,zero,0x0
    12e0:	08000577 	j	15dc <subFloat64Sigs+0x53c>
    12e4:	00000000 	sll	zero,zero,0x0
  aSig <<= 10;
  bSig <<= 10;
  if (0 < expDiff)
    goto aExpBigger;
  if (expDiff < 0)
    goto bExpBigger;
    12e8:	00000000 	sll	zero,zero,0x0
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
bExpBigger:
  if (bExp == 0x7FF)
    12ec:	8fc30014 	lw	v1,20(s8)
    12f0:	240207ff 	addiu	v0,zero,2047
    12f4:	1462001b 	bne	v1,v0,1364 <subFloat64Sigs+0x2c4>
    12f8:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
    12fc:	8fc5003c 	lw	a1,60(s8)
    1300:	8fc40038 	lw	a0,56(s8)
    1304:	00000000 	sll	zero,zero,0x0
    1308:	00801021 	addu	v0,a0,zero
    130c:	00451025 	or	v0,v0,a1
    1310:	10400009 	beqz	v0,1338 <subFloat64Sigs+0x298>
    1314:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    1318:	8fc50084 	lw	a1,132(s8)
    131c:	8fc40080 	lw	a0,128(s8)
    1320:	8fc7008c 	lw	a3,140(s8)
    1324:	8fc60088 	lw	a2,136(s8)
    1328:	0c000111 	jal	444 <propagateFloat64NaN>
    132c:	00000000 	sll	zero,zero,0x0
    1330:	08000577 	j	15dc <subFloat64Sigs+0x53c>
    1334:	00000000 	sll	zero,zero,0x0
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
    1338:	8fc20090 	lw	v0,144(s8)
    133c:	00000000 	sll	zero,zero,0x0
    1340:	38420001 	xori	v0,v0,0x1
    1344:	00402021 	addu	a0,v0,zero
    1348:	240507ff 	addiu	a1,zero,2047
    134c:	00003821 	addu	a3,zero,zero
    1350:	00003021 	addu	a2,zero,zero
    1354:	0c000000 	jal	0 <shift64RightJamming>
    1358:	00000000 	sll	zero,zero,0x0
    135c:	08000577 	j	15dc <subFloat64Sigs+0x53c>
    1360:	00000000 	sll	zero,zero,0x0
    }
  if (aExp == 0)
    1364:	8fc20010 	lw	v0,16(s8)
    1368:	00000000 	sll	zero,zero,0x0
    136c:	14400007 	bnez	v0,138c <subFloat64Sigs+0x2ec>
    1370:	00000000 	sll	zero,zero,0x0
    ++expDiff;
    1374:	8fc20028 	lw	v0,40(s8)
    1378:	00000000 	sll	zero,zero,0x0
    137c:	24420001 	addiu	v0,v0,1
    1380:	afc20028 	sw	v0,40(s8)
    1384:	080004ee 	j	13b8 <subFloat64Sigs+0x318>
    1388:	00000000 	sll	zero,zero,0x0
  else
    aSig |= LIT64 (0x4000000000000000);
    138c:	8fc30034 	lw	v1,52(s8)
    1390:	8fc20030 	lw	v0,48(s8)
    1394:	3c044000 	lui	a0,0x4000
    1398:	00442025 	or	a0,v0,a0
    139c:	afc40048 	sw	a0,72(s8)
    13a0:	34640000 	ori	a0,v1,0x0
    13a4:	afc4004c 	sw	a0,76(s8)
    13a8:	8fc3004c 	lw	v1,76(s8)
    13ac:	8fc20048 	lw	v0,72(s8)
    13b0:	afc30034 	sw	v1,52(s8)
    13b4:	afc20030 	sw	v0,48(s8)
  shift64RightJamming (aSig, -expDiff, &aSig);
    13b8:	8fc30034 	lw	v1,52(s8)
    13bc:	8fc20030 	lw	v0,48(s8)
    13c0:	8fc40028 	lw	a0,40(s8)
    13c4:	00000000 	sll	zero,zero,0x0
    13c8:	00043023 	negu	a2,a0
    13cc:	27c70030 	addiu	a3,s8,48
    13d0:	00602821 	addu	a1,v1,zero
    13d4:	00402021 	addu	a0,v0,zero
    13d8:	0c000000 	jal	0 <shift64RightJamming>
    13dc:	00000000 	sll	zero,zero,0x0
  bSig |= LIT64 (0x4000000000000000);
    13e0:	8fc3003c 	lw	v1,60(s8)
    13e4:	8fc20038 	lw	v0,56(s8)
    13e8:	3c044000 	lui	a0,0x4000
    13ec:	00442025 	or	a0,v0,a0
    13f0:	afc40050 	sw	a0,80(s8)
    13f4:	34640000 	ori	a0,v1,0x0
    13f8:	afc40054 	sw	a0,84(s8)
    13fc:	8fc30054 	lw	v1,84(s8)
    1400:	8fc20050 	lw	v0,80(s8)
    1404:	afc3003c 	sw	v1,60(s8)
    1408:	afc20038 	sw	v0,56(s8)
    140c:	08000509 	j	1424 <subFloat64Sigs+0x384>
    1410:	00000000 	sll	zero,zero,0x0
      bExp = 1;
    }
  if (bSig < aSig)
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
    1414:	00000000 	sll	zero,zero,0x0
    1418:	08000509 	j	1424 <subFloat64Sigs+0x384>
    141c:	00000000 	sll	zero,zero,0x0
    1420:	00000000 	sll	zero,zero,0x0
  else
    aSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (aSig, -expDiff, &aSig);
  bSig |= LIT64 (0x4000000000000000);
bBigger:
  zSig = bSig - aSig;
    1424:	8fc5003c 	lw	a1,60(s8)
    1428:	8fc40038 	lw	a0,56(s8)
    142c:	8fc70034 	lw	a3,52(s8)
    1430:	8fc60030 	lw	a2,48(s8)
    1434:	00a71823 	subu	v1,a1,a3
    1438:	00a3402b 	sltu	t0,a1,v1
    143c:	00861023 	subu	v0,a0,a2
    1440:	00482023 	subu	a0,v0,t0
    1444:	00801021 	addu	v0,a0,zero
    1448:	afc30024 	sw	v1,36(s8)
    144c:	afc20020 	sw	v0,32(s8)
  zExp = bExp;
    1450:	8fc20014 	lw	v0,20(s8)
    1454:	00000000 	sll	zero,zero,0x0
    1458:	afc20018 	sw	v0,24(s8)
  zSign ^= 1;
    145c:	8fc20090 	lw	v0,144(s8)
    1460:	00000000 	sll	zero,zero,0x0
    1464:	38420001 	xori	v0,v0,0x1
    1468:	afc20090 	sw	v0,144(s8)
  goto normalizeRoundAndPack;
    146c:	0800056d 	j	15b4 <subFloat64Sigs+0x514>
    1470:	00000000 	sll	zero,zero,0x0
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
  aSig <<= 10;
  bSig <<= 10;
  if (0 < expDiff)
    goto aExpBigger;
    1474:	00000000 	sll	zero,zero,0x0
  zSig = bSig - aSig;
  zExp = bExp;
  zSign ^= 1;
  goto normalizeRoundAndPack;
aExpBigger:
  if (aExp == 0x7FF)
    1478:	8fc30010 	lw	v1,16(s8)
    147c:	240207ff 	addiu	v0,zero,2047
    1480:	14620014 	bne	v1,v0,14d4 <subFloat64Sigs+0x434>
    1484:	00000000 	sll	zero,zero,0x0
    {
      if (aSig)
    1488:	8fc50034 	lw	a1,52(s8)
    148c:	8fc40030 	lw	a0,48(s8)
    1490:	00000000 	sll	zero,zero,0x0
    1494:	00801021 	addu	v0,a0,zero
    1498:	00451025 	or	v0,v0,a1
    149c:	10400009 	beqz	v0,14c4 <subFloat64Sigs+0x424>
    14a0:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    14a4:	8fc50084 	lw	a1,132(s8)
    14a8:	8fc40080 	lw	a0,128(s8)
    14ac:	8fc7008c 	lw	a3,140(s8)
    14b0:	8fc60088 	lw	a2,136(s8)
    14b4:	0c000111 	jal	444 <propagateFloat64NaN>
    14b8:	00000000 	sll	zero,zero,0x0
    14bc:	08000577 	j	15dc <subFloat64Sigs+0x53c>
    14c0:	00000000 	sll	zero,zero,0x0
      return a;
    14c4:	8fc30084 	lw	v1,132(s8)
    14c8:	8fc20080 	lw	v0,128(s8)
    14cc:	08000577 	j	15dc <subFloat64Sigs+0x53c>
    14d0:	00000000 	sll	zero,zero,0x0
    }
  if (bExp == 0)
    14d4:	8fc20014 	lw	v0,20(s8)
    14d8:	00000000 	sll	zero,zero,0x0
    14dc:	14400007 	bnez	v0,14fc <subFloat64Sigs+0x45c>
    14e0:	00000000 	sll	zero,zero,0x0
    --expDiff;
    14e4:	8fc20028 	lw	v0,40(s8)
    14e8:	00000000 	sll	zero,zero,0x0
    14ec:	2442ffff 	addiu	v0,v0,-1
    14f0:	afc20028 	sw	v0,40(s8)
    14f4:	0800054a 	j	1528 <subFloat64Sigs+0x488>
    14f8:	00000000 	sll	zero,zero,0x0
  else
    bSig |= LIT64 (0x4000000000000000);
    14fc:	8fc3003c 	lw	v1,60(s8)
    1500:	8fc20038 	lw	v0,56(s8)
    1504:	3c044000 	lui	a0,0x4000
    1508:	00442025 	or	a0,v0,a0
    150c:	afc40040 	sw	a0,64(s8)
    1510:	34640000 	ori	a0,v1,0x0
    1514:	afc40044 	sw	a0,68(s8)
    1518:	8fc30044 	lw	v1,68(s8)
    151c:	8fc20040 	lw	v0,64(s8)
    1520:	afc3003c 	sw	v1,60(s8)
    1524:	afc20038 	sw	v0,56(s8)
  shift64RightJamming (bSig, expDiff, &bSig);
    1528:	8fc3003c 	lw	v1,60(s8)
    152c:	8fc20038 	lw	v0,56(s8)
    1530:	27c70038 	addiu	a3,s8,56
    1534:	00602821 	addu	a1,v1,zero
    1538:	00402021 	addu	a0,v0,zero
    153c:	8fc60028 	lw	a2,40(s8)
    1540:	0c000000 	jal	0 <shift64RightJamming>
    1544:	00000000 	sll	zero,zero,0x0
  aSig |= LIT64 (0x4000000000000000);
    1548:	8fc30034 	lw	v1,52(s8)
    154c:	8fc20030 	lw	v0,48(s8)
    1550:	3c044000 	lui	a0,0x4000
    1554:	0044b025 	or	s6,v0,a0
    1558:	34770000 	ori	s7,v1,0x0
    155c:	afd70034 	sw	s7,52(s8)
    1560:	afd60030 	sw	s6,48(s8)
    1564:	0800055f 	j	157c <subFloat64Sigs+0x4dc>
    1568:	00000000 	sll	zero,zero,0x0
    {
      aExp = 1;
      bExp = 1;
    }
  if (bSig < aSig)
    goto aBigger;
    156c:	00000000 	sll	zero,zero,0x0
    1570:	0800055f 	j	157c <subFloat64Sigs+0x4dc>
    1574:	00000000 	sll	zero,zero,0x0
    1578:	00000000 	sll	zero,zero,0x0
  else
    bSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (bSig, expDiff, &bSig);
  aSig |= LIT64 (0x4000000000000000);
aBigger:
  zSig = aSig - bSig;
    157c:	8fc50034 	lw	a1,52(s8)
    1580:	8fc40030 	lw	a0,48(s8)
    1584:	8fc7003c 	lw	a3,60(s8)
    1588:	8fc60038 	lw	a2,56(s8)
    158c:	00a71823 	subu	v1,a1,a3
    1590:	00a3402b 	sltu	t0,a1,v1
    1594:	00861023 	subu	v0,a0,a2
    1598:	00482023 	subu	a0,v0,t0
    159c:	00801021 	addu	v0,a0,zero
    15a0:	afc30024 	sw	v1,36(s8)
    15a4:	afc20020 	sw	v0,32(s8)
  zExp = aExp;
    15a8:	8fc20010 	lw	v0,16(s8)
    15ac:	00000000 	sll	zero,zero,0x0
    15b0:	afc20018 	sw	v0,24(s8)
normalizeRoundAndPack:
  --zExp;
    15b4:	8fc20018 	lw	v0,24(s8)
    15b8:	00000000 	sll	zero,zero,0x0
    15bc:	2442ffff 	addiu	v0,v0,-1
    15c0:	afc20018 	sw	v0,24(s8)
  return normalizeRoundAndPackFloat64 (zSign, zExp, zSig);
    15c4:	8fc40090 	lw	a0,144(s8)
    15c8:	8fc50018 	lw	a1,24(s8)
    15cc:	8fc70024 	lw	a3,36(s8)
    15d0:	8fc60020 	lw	a2,32(s8)
    15d4:	0c00029c 	jal	a70 <normalizeRoundAndPackFloat64>
    15d8:	00000000 	sll	zero,zero,0x0

}
    15dc:	03c0e821 	addu	sp,s8,zero
    15e0:	8fbf007c 	lw	ra,124(sp)
    15e4:	8fbe0078 	lw	s8,120(sp)
    15e8:	8fb70074 	lw	s7,116(sp)
    15ec:	8fb60070 	lw	s6,112(sp)
    15f0:	8fb5006c 	lw	s5,108(sp)
    15f4:	8fb40068 	lw	s4,104(sp)
    15f8:	8fb30064 	lw	s3,100(sp)
    15fc:	8fb20060 	lw	s2,96(sp)
    1600:	8fb1005c 	lw	s1,92(sp)
    1604:	8fb00058 	lw	s0,88(sp)
    1608:	27bd0080 	addiu	sp,sp,128
    160c:	03e00008 	jr	ra
    1610:	00000000 	sll	zero,zero,0x0

00001614 <float64_add>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_add (float64 a, float64 b)
{
    1614:	27bdffd8 	addiu	sp,sp,-40
    1618:	afbf0024 	sw	ra,36(sp)
    161c:	afbe0020 	sw	s8,32(sp)
    1620:	03a0f021 	addu	s8,sp,zero
    1624:	afc5002c 	sw	a1,44(s8)
    1628:	afc40028 	sw	a0,40(s8)
    162c:	afc70034 	sw	a3,52(s8)
    1630:	afc60030 	sw	a2,48(s8)
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
    1634:	8fc5002c 	lw	a1,44(s8)
    1638:	8fc40028 	lw	a0,40(s8)
    163c:	0c000000 	jal	0 <shift64RightJamming>
    1640:	00000000 	sll	zero,zero,0x0
    1644:	afc20018 	sw	v0,24(s8)
  bSign = extractFloat64Sign (b);
    1648:	8fc50034 	lw	a1,52(s8)
    164c:	8fc40030 	lw	a0,48(s8)
    1650:	0c000000 	jal	0 <shift64RightJamming>
    1654:	00000000 	sll	zero,zero,0x0
    1658:	afc2001c 	sw	v0,28(s8)
  if (aSign == bSign)
    165c:	8fc30018 	lw	v1,24(s8)
    1660:	8fc2001c 	lw	v0,28(s8)
    1664:	00000000 	sll	zero,zero,0x0
    1668:	1462000c 	bne	v1,v0,169c <float64_add+0x88>
    166c:	00000000 	sll	zero,zero,0x0
    return addFloat64Sigs (a, b, aSign);
    1670:	8fc20018 	lw	v0,24(s8)
    1674:	00000000 	sll	zero,zero,0x0
    1678:	afa20010 	sw	v0,16(sp)
    167c:	8fc5002c 	lw	a1,44(s8)
    1680:	8fc40028 	lw	a0,40(s8)
    1684:	8fc70034 	lw	a3,52(s8)
    1688:	8fc60030 	lw	a2,48(s8)
    168c:	0c0002da 	jal	b68 <addFloat64Sigs>
    1690:	00000000 	sll	zero,zero,0x0
    1694:	080005b0 	j	16c0 <float64_add+0xac>
    1698:	00000000 	sll	zero,zero,0x0
  else
    return subFloat64Sigs (a, b, aSign);
    169c:	8fc20018 	lw	v0,24(s8)
    16a0:	00000000 	sll	zero,zero,0x0
    16a4:	afa20010 	sw	v0,16(sp)
    16a8:	8fc5002c 	lw	a1,44(s8)
    16ac:	8fc40028 	lw	a0,40(s8)
    16b0:	8fc70034 	lw	a3,52(s8)
    16b4:	8fc60030 	lw	a2,48(s8)
    16b8:	0c000428 	jal	10a0 <subFloat64Sigs>
    16bc:	00000000 	sll	zero,zero,0x0

}
    16c0:	03c0e821 	addu	sp,s8,zero
    16c4:	8fbf0024 	lw	ra,36(sp)
    16c8:	8fbe0020 	lw	s8,32(sp)
    16cc:	27bd0028 	addiu	sp,sp,40
    16d0:	03e00008 	jr	ra
    16d4:	00000000 	sll	zero,zero,0x0

000016d8 <ullong_to_double>:
#include <stdio.h>
#include "softfloat.c"

double
ullong_to_double (unsigned long long x)
{
    16d8:	27bdfff0 	addiu	sp,sp,-16
    16dc:	afbe000c 	sw	s8,12(sp)
    16e0:	03a0f021 	addu	s8,sp,zero
    16e4:	afc50014 	sw	a1,20(s8)
    16e8:	afc40010 	sw	a0,16(s8)
  {
    double d;
    unsigned long long ll;
  } t;

  t.ll = x;
    16ec:	8fc30014 	lw	v1,20(s8)
    16f0:	8fc20010 	lw	v0,16(s8)
    16f4:	afc30004 	sw	v1,4(s8)
    16f8:	afc20000 	sw	v0,0(s8)
  return t.d;
    16fc:	c7c00004 	lwc1	$f0,4(s8)
    1700:	00000000 	sll	zero,zero,0x0
    1704:	c7c10000 	lwc1	$f1,0(s8)
}
    1708:	03c0e821 	addu	sp,s8,zero
    170c:	8fbe000c 	lw	s8,12(sp)
    1710:	27bd0010 	addiu	sp,sp,16
    1714:	03e00008 	jr	ra
    1718:	00000000 	sll	zero,zero,0x0

0000171c <main>:
  0xBFE0000000000000ULL		/* -0.5 */
};

int
main ()
{
    171c:	27bdff88 	addiu	sp,sp,-120
    1720:	afbf0074 	sw	ra,116(sp)
    1724:	afbe0070 	sw	s8,112(sp)
    1728:	afb7006c 	sw	s7,108(sp)
    172c:	afb60068 	sw	s6,104(sp)
    1730:	afb50064 	sw	s5,100(sp)
    1734:	afb40060 	sw	s4,96(sp)
    1738:	afb3005c 	sw	s3,92(sp)
    173c:	afb20058 	sw	s2,88(sp)
    1740:	afb10054 	sw	s1,84(sp)
    1744:	afb00050 	sw	s0,80(sp)
    1748:	03a0f021 	addu	s8,sp,zero
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
    174c:	afc00030 	sw	zero,48(s8)
      for (i = 0; i < N; i++)
    1750:	afc00034 	sw	zero,52(s8)
    1754:	08000637 	j	18dc <main+0x1c0>
    1758:	00000000 	sll	zero,zero,0x0
	{
	  float64 result;
	  x1 = a_input[i];
    175c:	3c020000 	lui	v0,0x0
    1760:	8fc30034 	lw	v1,52(s8)
    1764:	00000000 	sll	zero,zero,0x0
    1768:	000318c0 	sll	v1,v1,0x3
    176c:	24420000 	addiu	v0,v0,0
    1770:	00621021 	addu	v0,v1,v0
    1774:	8c430004 	lw	v1,4(v0)
    1778:	8c420000 	lw	v0,0(v0)
    177c:	afc3003c 	sw	v1,60(s8)
    1780:	afc20038 	sw	v0,56(s8)
	  x2 = b_input[i];
    1784:	3c020000 	lui	v0,0x0
    1788:	8fc30034 	lw	v1,52(s8)
    178c:	00000000 	sll	zero,zero,0x0
    1790:	000318c0 	sll	v1,v1,0x3
    1794:	24420000 	addiu	v0,v0,0
    1798:	00621021 	addu	v0,v1,v0
    179c:	8c430004 	lw	v1,4(v0)
    17a0:	8c420000 	lw	v0,0(v0)
    17a4:	afc30044 	sw	v1,68(s8)
    17a8:	afc20040 	sw	v0,64(s8)
	  result = float64_add (x1, x2);
    17ac:	8fc5003c 	lw	a1,60(s8)
    17b0:	8fc40038 	lw	a0,56(s8)
    17b4:	8fc70044 	lw	a3,68(s8)
    17b8:	8fc60040 	lw	a2,64(s8)
    17bc:	0c000000 	jal	0 <shift64RightJamming>
    17c0:	00000000 	sll	zero,zero,0x0
    17c4:	afc3004c 	sw	v1,76(s8)
    17c8:	afc20048 	sw	v0,72(s8)
	  main_result += (result != z_output[i]);
    17cc:	3c020000 	lui	v0,0x0
    17d0:	8fc30034 	lw	v1,52(s8)
    17d4:	00000000 	sll	zero,zero,0x0
    17d8:	000318c0 	sll	v1,v1,0x3
    17dc:	24420000 	addiu	v0,v0,0
    17e0:	00621021 	addu	v0,v1,v0
    17e4:	8c430004 	lw	v1,4(v0)
    17e8:	8c420000 	lw	v0,0(v0)
    17ec:	8fc40048 	lw	a0,72(s8)
    17f0:	00000000 	sll	zero,zero,0x0
    17f4:	00828026 	xor	s0,a0,v0
    17f8:	8fc4004c 	lw	a0,76(s8)
    17fc:	00000000 	sll	zero,zero,0x0
    1800:	00838826 	xor	s1,a0,v1
    1804:	02111025 	or	v0,s0,s1
    1808:	0002102b 	sltu	v0,zero,v0
    180c:	8fc30030 	lw	v1,48(s8)
    1810:	00000000 	sll	zero,zero,0x0
    1814:	00621021 	addu	v0,v1,v0
    1818:	afc20030 	sw	v0,48(s8)

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
    181c:	3c020000 	lui	v0,0x0
    1820:	8fc30034 	lw	v1,52(s8)
    1824:	00000000 	sll	zero,zero,0x0
    1828:	000318c0 	sll	v1,v1,0x3
    182c:	24420000 	addiu	v0,v0,0
    1830:	00621021 	addu	v0,v1,v0
    1834:	8c530004 	lw	s3,4(v0)
    1838:	8c520000 	lw	s2,0(v0)
    183c:	3c020000 	lui	v0,0x0
    1840:	8fc30034 	lw	v1,52(s8)
    1844:	00000000 	sll	zero,zero,0x0
    1848:	000318c0 	sll	v1,v1,0x3
    184c:	24420000 	addiu	v0,v0,0
    1850:	00621021 	addu	v0,v1,v0
    1854:	8c570004 	lw	s7,4(v0)
    1858:	8c560000 	lw	s6,0(v0)
    185c:	3c020000 	lui	v0,0x0
    1860:	8fc30034 	lw	v1,52(s8)
    1864:	00000000 	sll	zero,zero,0x0
    1868:	000318c0 	sll	v1,v1,0x3
    186c:	24420000 	addiu	v0,v0,0
    1870:	00621021 	addu	v0,v1,v0
    1874:	8c550004 	lw	s5,4(v0)
    1878:	8c540000 	lw	s4,0(v0)
    187c:	8fc5004c 	lw	a1,76(s8)
    1880:	8fc40048 	lw	a0,72(s8)
    1884:	0c000000 	jal	0 <shift64RightJamming>
    1888:	00000000 	sll	zero,zero,0x0
    188c:	afb70014 	sw	s7,20(sp)
    1890:	afb60010 	sw	s6,16(sp)
    1894:	afb5001c 	sw	s5,28(sp)
    1898:	afb40018 	sw	s4,24(sp)
    189c:	8fc3004c 	lw	v1,76(s8)
    18a0:	8fc20048 	lw	v0,72(s8)
    18a4:	afa30024 	sw	v1,36(sp)
    18a8:	afa20020 	sw	v0,32(sp)
    18ac:	e7a0002c 	swc1	$f0,44(sp)
    18b0:	e7a10028 	swc1	$f1,40(sp)
    18b4:	3c020000 	lui	v0,0x0
    18b8:	24440450 	addiu	a0,v0,1104
    18bc:	02603821 	addu	a3,s3,zero
    18c0:	02403021 	addu	a2,s2,zero
    18c4:	0c000000 	jal	0 <shift64RightJamming>
    18c8:	00000000 	sll	zero,zero,0x0
{
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
    18cc:	8fc20034 	lw	v0,52(s8)
    18d0:	00000000 	sll	zero,zero,0x0
    18d4:	24420001 	addiu	v0,v0,1
    18d8:	afc20034 	sw	v0,52(s8)
    18dc:	8fc20034 	lw	v0,52(s8)
    18e0:	00000000 	sll	zero,zero,0x0
    18e4:	2842002e 	slti	v0,v0,46
    18e8:	1440ff9c 	bnez	v0,175c <main+0x40>
    18ec:	00000000 	sll	zero,zero,0x0
	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     a_input[i], b_input[i], z_output[i], result,
	     ullong_to_double (result));
	}
      printf ("%d\n", main_result);
    18f0:	3c020000 	lui	v0,0x0
    18f4:	24440498 	addiu	a0,v0,1176
    18f8:	8fc50030 	lw	a1,48(s8)
    18fc:	0c000000 	jal	0 <shift64RightJamming>
    1900:	00000000 	sll	zero,zero,0x0
      return main_result;
    1904:	8fc20030 	lw	v0,48(s8)
    }
    1908:	03c0e821 	addu	sp,s8,zero
    190c:	8fbf0074 	lw	ra,116(sp)
    1910:	8fbe0070 	lw	s8,112(sp)
    1914:	8fb7006c 	lw	s7,108(sp)
    1918:	8fb60068 	lw	s6,104(sp)
    191c:	8fb50064 	lw	s5,100(sp)
    1920:	8fb40060 	lw	s4,96(sp)
    1924:	8fb3005c 	lw	s3,92(sp)
    1928:	8fb20058 	lw	s2,88(sp)
    192c:	8fb10054 	lw	s1,84(sp)
    1930:	8fb00050 	lw	s0,80(sp)
    1934:	27bd0078 	addiu	sp,sp,120
    1938:	03e00008 	jr	ra
    193c:	00000000 	sll	zero,zero,0x0

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
 450:	615f696e 	0x615f696e
 454:	7075743d 	0x7075743d
 458:	25303136 	addiu	s0,t1,12598
 45c:	6c6c7820 	0x6c6c7820
 460:	625f696e 	0x625f696e
 464:	7075743d 	0x7075743d
 468:	25303136 	addiu	s0,t1,12598
 46c:	6c6c7820 	0x6c6c7820
 470:	65787065 	0x65787065
 474:	63746564 	0x63746564
 478:	3d253031 	0x3d253031
 47c:	366c6c78 	ori	t4,s3,0x6c78
 480:	206f7574 	addi	t7,v1,30068
 484:	7075743d 	0x7075743d
 488:	25303136 	addiu	s0,t1,12598
 48c:	6c6c7820 	0x6c6c7820
 490:	28256c66 	slti	a1,at,27750
 494:	290a0000 	slti	t2,t0,0
 498:	25640a00 	addiu	a0,t3,2560

0000049c <countLeadingZerosHigh.2150>:
 49c:	00000008 	jr	zero
 4a0:	00000007 	srav	zero,zero,zero
 4a4:	00000006 	srlv	zero,zero,zero
 4a8:	00000006 	srlv	zero,zero,zero
 4ac:	00000005 	0x5
 4b0:	00000005 	0x5
 4b4:	00000005 	0x5
 4b8:	00000005 	0x5
 4bc:	00000004 	sllv	zero,zero,zero
 4c0:	00000004 	sllv	zero,zero,zero
 4c4:	00000004 	sllv	zero,zero,zero
 4c8:	00000004 	sllv	zero,zero,zero
 4cc:	00000004 	sllv	zero,zero,zero
 4d0:	00000004 	sllv	zero,zero,zero
 4d4:	00000004 	sllv	zero,zero,zero
 4d8:	00000004 	sllv	zero,zero,zero
 4dc:	00000003 	sra	zero,zero,0x0
 4e0:	00000003 	sra	zero,zero,0x0
 4e4:	00000003 	sra	zero,zero,0x0
 4e8:	00000003 	sra	zero,zero,0x0
 4ec:	00000003 	sra	zero,zero,0x0
 4f0:	00000003 	sra	zero,zero,0x0
 4f4:	00000003 	sra	zero,zero,0x0
 4f8:	00000003 	sra	zero,zero,0x0
 4fc:	00000003 	sra	zero,zero,0x0
 500:	00000003 	sra	zero,zero,0x0
 504:	00000003 	sra	zero,zero,0x0
 508:	00000003 	sra	zero,zero,0x0
 50c:	00000003 	sra	zero,zero,0x0
 510:	00000003 	sra	zero,zero,0x0
 514:	00000003 	sra	zero,zero,0x0
 518:	00000003 	sra	zero,zero,0x0
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
 550:	00000002 	srl	zero,zero,0x0
 554:	00000002 	srl	zero,zero,0x0
 558:	00000002 	srl	zero,zero,0x0
 55c:	00000002 	srl	zero,zero,0x0
 560:	00000002 	srl	zero,zero,0x0
 564:	00000002 	srl	zero,zero,0x0
 568:	00000002 	srl	zero,zero,0x0
 56c:	00000002 	srl	zero,zero,0x0
 570:	00000002 	srl	zero,zero,0x0
 574:	00000002 	srl	zero,zero,0x0
 578:	00000002 	srl	zero,zero,0x0
 57c:	00000002 	srl	zero,zero,0x0
 580:	00000002 	srl	zero,zero,0x0
 584:	00000002 	srl	zero,zero,0x0
 588:	00000002 	srl	zero,zero,0x0
 58c:	00000002 	srl	zero,zero,0x0
 590:	00000002 	srl	zero,zero,0x0
 594:	00000002 	srl	zero,zero,0x0
 598:	00000002 	srl	zero,zero,0x0
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
 650:	00000001 	0x1
 654:	00000001 	0x1
 658:	00000001 	0x1
 65c:	00000001 	0x1
 660:	00000001 	0x1
 664:	00000001 	0x1
 668:	00000001 	0x1
 66c:	00000001 	0x1
 670:	00000001 	0x1
 674:	00000001 	0x1
 678:	00000001 	0x1
 67c:	00000001 	0x1
 680:	00000001 	0x1
 684:	00000001 	0x1
 688:	00000001 	0x1
 68c:	00000001 	0x1
 690:	00000001 	0x1
 694:	00000001 	0x1
 698:	00000001 	0x1
	...
