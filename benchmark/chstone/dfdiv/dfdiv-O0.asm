
dfdiv.o:     file format elf32-bigmips


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

0000019c <add128>:
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     19c:	27bdfff0 	addiu	sp,sp,-16
     1a0:	afbe000c 	sw	s8,12(sp)
     1a4:	03a0f021 	addu	s8,sp,zero
     1a8:	afc50014 	sw	a1,20(s8)
     1ac:	afc40010 	sw	a0,16(s8)
     1b0:	afc7001c 	sw	a3,28(s8)
     1b4:	afc60018 	sw	a2,24(s8)
  bits64 z1;

  z1 = a1 + b1;
     1b8:	8fc5001c 	lw	a1,28(s8)
     1bc:	8fc40018 	lw	a0,24(s8)
     1c0:	8fc7002c 	lw	a3,44(s8)
     1c4:	8fc60028 	lw	a2,40(s8)
     1c8:	00a71821 	addu	v1,a1,a3
     1cc:	0065402b 	sltu	t0,v1,a1
     1d0:	00861021 	addu	v0,a0,a2
     1d4:	01022021 	addu	a0,t0,v0
     1d8:	00801021 	addu	v0,a0,zero
     1dc:	afc30004 	sw	v1,4(s8)
     1e0:	afc20000 	sw	v0,0(s8)
  *z1Ptr = z1;
     1e4:	8fc40034 	lw	a0,52(s8)
     1e8:	8fc30004 	lw	v1,4(s8)
     1ec:	8fc20000 	lw	v0,0(s8)
     1f0:	ac830004 	sw	v1,4(a0)
     1f4:	ac820000 	sw	v0,0(a0)
  *z0Ptr = a0 + b0 + (z1 < a1);
     1f8:	8fc50014 	lw	a1,20(s8)
     1fc:	8fc40010 	lw	a0,16(s8)
     200:	8fc70024 	lw	a3,36(s8)
     204:	8fc60020 	lw	a2,32(s8)
     208:	00a71821 	addu	v1,a1,a3
     20c:	0065402b 	sltu	t0,v1,a1
     210:	00861021 	addu	v0,a0,a2
     214:	01022021 	addu	a0,t0,v0
     218:	00801021 	addu	v0,a0,zero
     21c:	00603821 	addu	a3,v1,zero
     220:	00403021 	addu	a2,v0,zero
     224:	24050001 	addiu	a1,zero,1
     228:	00002021 	addu	a0,zero,zero
     22c:	8fc30018 	lw	v1,24(s8)
     230:	8fc20000 	lw	v0,0(s8)
     234:	00000000 	sll	zero,zero,0x0
     238:	0043102b 	sltu	v0,v0,v1
     23c:	1440000e 	bnez	v0,278 <add128+0xdc>
     240:	00000000 	sll	zero,zero,0x0
     244:	8fc30018 	lw	v1,24(s8)
     248:	8fc20000 	lw	v0,0(s8)
     24c:	00000000 	sll	zero,zero,0x0
     250:	14620007 	bne	v1,v0,270 <add128+0xd4>
     254:	00000000 	sll	zero,zero,0x0
     258:	8fc3001c 	lw	v1,28(s8)
     25c:	8fc20004 	lw	v0,4(s8)
     260:	00000000 	sll	zero,zero,0x0
     264:	0043102b 	sltu	v0,v0,v1
     268:	14400003 	bnez	v0,278 <add128+0xdc>
     26c:	00000000 	sll	zero,zero,0x0
     270:	00002821 	addu	a1,zero,zero
     274:	00002021 	addu	a0,zero,zero
     278:	00e51821 	addu	v1,a3,a1
     27c:	0067402b 	sltu	t0,v1,a3
     280:	00c41021 	addu	v0,a2,a0
     284:	01022021 	addu	a0,t0,v0
     288:	00801021 	addu	v0,a0,zero
     28c:	8fc40030 	lw	a0,48(s8)
     290:	00000000 	sll	zero,zero,0x0
     294:	ac830004 	sw	v1,4(a0)
     298:	ac820000 	sw	v0,0(a0)

}
     29c:	03c0e821 	addu	sp,s8,zero
     2a0:	8fbe000c 	lw	s8,12(sp)
     2a4:	27bd0010 	addiu	sp,sp,16
     2a8:	03e00008 	jr	ra
     2ac:	00000000 	sll	zero,zero,0x0

000002b0 <sub128>:
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     2b0:	27bdfff8 	addiu	sp,sp,-8
     2b4:	afbe0004 	sw	s8,4(sp)
     2b8:	03a0f021 	addu	s8,sp,zero
     2bc:	afc5000c 	sw	a1,12(s8)
     2c0:	afc40008 	sw	a0,8(s8)
     2c4:	afc70014 	sw	a3,20(s8)
     2c8:	afc60010 	sw	a2,16(s8)

  *z1Ptr = a1 - b1;
     2cc:	8fc50014 	lw	a1,20(s8)
     2d0:	8fc40010 	lw	a0,16(s8)
     2d4:	8fc70024 	lw	a3,36(s8)
     2d8:	8fc60020 	lw	a2,32(s8)
     2dc:	00a71823 	subu	v1,a1,a3
     2e0:	00a3402b 	sltu	t0,a1,v1
     2e4:	00861023 	subu	v0,a0,a2
     2e8:	00482023 	subu	a0,v0,t0
     2ec:	00801021 	addu	v0,a0,zero
     2f0:	8fc4002c 	lw	a0,44(s8)
     2f4:	00000000 	sll	zero,zero,0x0
     2f8:	ac830004 	sw	v1,4(a0)
     2fc:	ac820000 	sw	v0,0(a0)
  *z0Ptr = a0 - b0 - (a1 < b1);
     300:	8fc5000c 	lw	a1,12(s8)
     304:	8fc40008 	lw	a0,8(s8)
     308:	8fc7001c 	lw	a3,28(s8)
     30c:	8fc60018 	lw	a2,24(s8)
     310:	00a71823 	subu	v1,a1,a3
     314:	00a3402b 	sltu	t0,a1,v1
     318:	00861023 	subu	v0,a0,a2
     31c:	00482023 	subu	a0,v0,t0
     320:	00801021 	addu	v0,a0,zero
     324:	00603821 	addu	a3,v1,zero
     328:	00403021 	addu	a2,v0,zero
     32c:	24050001 	addiu	a1,zero,1
     330:	00002021 	addu	a0,zero,zero
     334:	8fc30020 	lw	v1,32(s8)
     338:	8fc20010 	lw	v0,16(s8)
     33c:	00000000 	sll	zero,zero,0x0
     340:	0043102b 	sltu	v0,v0,v1
     344:	1440000e 	bnez	v0,380 <sub128+0xd0>
     348:	00000000 	sll	zero,zero,0x0
     34c:	8fc30020 	lw	v1,32(s8)
     350:	8fc20010 	lw	v0,16(s8)
     354:	00000000 	sll	zero,zero,0x0
     358:	14620007 	bne	v1,v0,378 <sub128+0xc8>
     35c:	00000000 	sll	zero,zero,0x0
     360:	8fc30024 	lw	v1,36(s8)
     364:	8fc20014 	lw	v0,20(s8)
     368:	00000000 	sll	zero,zero,0x0
     36c:	0043102b 	sltu	v0,v0,v1
     370:	14400003 	bnez	v0,380 <sub128+0xd0>
     374:	00000000 	sll	zero,zero,0x0
     378:	00002821 	addu	a1,zero,zero
     37c:	00002021 	addu	a0,zero,zero
     380:	00e51823 	subu	v1,a3,a1
     384:	00e3402b 	sltu	t0,a3,v1
     388:	00c41023 	subu	v0,a2,a0
     38c:	00482023 	subu	a0,v0,t0
     390:	00801021 	addu	v0,a0,zero
     394:	8fc40028 	lw	a0,40(s8)
     398:	00000000 	sll	zero,zero,0x0
     39c:	ac830004 	sw	v1,4(a0)
     3a0:	ac820000 	sw	v0,0(a0)

}
     3a4:	03c0e821 	addu	sp,s8,zero
     3a8:	8fbe0004 	lw	s8,4(sp)
     3ac:	27bd0008 	addiu	sp,sp,8
     3b0:	03e00008 	jr	ra
     3b4:	00000000 	sll	zero,zero,0x0

000003b8 <mul64To128>:
| `z0Ptr' and `z1Ptr'.
*----------------------------------------------------------------------------*/

INLINE void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
     3b8:	27bdffa0 	addiu	sp,sp,-96
     3bc:	afbe005c 	sw	s8,92(sp)
     3c0:	afb70058 	sw	s7,88(sp)
     3c4:	afb60054 	sw	s6,84(sp)
     3c8:	afb50050 	sw	s5,80(sp)
     3cc:	afb4004c 	sw	s4,76(sp)
     3d0:	afb30048 	sw	s3,72(sp)
     3d4:	afb20044 	sw	s2,68(sp)
     3d8:	afb10040 	sw	s1,64(sp)
     3dc:	afb0003c 	sw	s0,60(sp)
     3e0:	03a0f021 	addu	s8,sp,zero
     3e4:	afc50064 	sw	a1,100(s8)
     3e8:	afc40060 	sw	a0,96(s8)
     3ec:	afc7006c 	sw	a3,108(s8)
     3f0:	afc60068 	sw	a2,104(s8)
  bits32 aHigh, aLow, bHigh, bLow;
  bits64 z0, zMiddleA, zMiddleB, z1;

  aLow = a;
     3f4:	8fc40064 	lw	a0,100(s8)
     3f8:	00000000 	sll	zero,zero,0x0
     3fc:	afc40000 	sw	a0,0(s8)
  aHigh = a >> 32;
     400:	8fc40060 	lw	a0,96(s8)
     404:	00000000 	sll	zero,zero,0x0
     408:	00042002 	srl	a0,a0,0x0
     40c:	afc40034 	sw	a0,52(s8)
     410:	00001021 	addu	v0,zero,zero
     414:	afc20030 	sw	v0,48(s8)
     418:	8fc20034 	lw	v0,52(s8)
     41c:	00000000 	sll	zero,zero,0x0
     420:	afc20004 	sw	v0,4(s8)
  bLow = b;
     424:	8fc4006c 	lw	a0,108(s8)
     428:	00000000 	sll	zero,zero,0x0
     42c:	afc40008 	sw	a0,8(s8)
  bHigh = b >> 32;
     430:	8fc40068 	lw	a0,104(s8)
     434:	00000000 	sll	zero,zero,0x0
     438:	0004b802 	srl	s7,a0,0x0
     43c:	0000b021 	addu	s6,zero,zero
     440:	afd7000c 	sw	s7,12(s8)
  z1 = ((bits64) aLow) * bLow;
     444:	8fd50000 	lw	s5,0(s8)
     448:	0000a021 	addu	s4,zero,zero
     44c:	8fc30008 	lw	v1,8(s8)
     450:	00001021 	addu	v0,zero,zero
     454:	02830018 	mult	s4,v1
     458:	00002012 	mflo	a0
	...
     464:	00550018 	mult	v0,s5
     468:	00002812 	mflo	a1
     46c:	00852021 	addu	a0,a0,a1
     470:	00000000 	sll	zero,zero,0x0
     474:	02a30019 	multu	s5,v1
     478:	00001812 	mflo	v1
     47c:	00001010 	mfhi	v0
     480:	00822021 	addu	a0,a0,v0
     484:	00801021 	addu	v0,a0,zero
     488:	afc30014 	sw	v1,20(s8)
     48c:	afc20010 	sw	v0,16(s8)
     490:	afc30014 	sw	v1,20(s8)
     494:	afc20010 	sw	v0,16(s8)
  zMiddleA = ((bits64) aLow) * bHigh;
     498:	8fd30000 	lw	s3,0(s8)
     49c:	00009021 	addu	s2,zero,zero
     4a0:	8fd1000c 	lw	s1,12(s8)
     4a4:	00008021 	addu	s0,zero,zero
     4a8:	02510018 	mult	s2,s1
     4ac:	00002012 	mflo	a0
	...
     4b8:	02130018 	mult	s0,s3
     4bc:	00001012 	mflo	v0
     4c0:	00822021 	addu	a0,a0,v0
     4c4:	00000000 	sll	zero,zero,0x0
     4c8:	02710019 	multu	s3,s1
     4cc:	00001812 	mflo	v1
     4d0:	00001010 	mfhi	v0
     4d4:	00822021 	addu	a0,a0,v0
     4d8:	00801021 	addu	v0,a0,zero
     4dc:	afc3001c 	sw	v1,28(s8)
     4e0:	afc20018 	sw	v0,24(s8)
     4e4:	afc3001c 	sw	v1,28(s8)
     4e8:	afc20018 	sw	v0,24(s8)
  zMiddleB = ((bits64) aHigh) * bLow;
     4ec:	8fd90004 	lw	t9,4(s8)
     4f0:	0000c021 	addu	t8,zero,zero
     4f4:	8fcf0008 	lw	t7,8(s8)
     4f8:	00007021 	addu	t6,zero,zero
     4fc:	030f0018 	mult	t8,t7
     500:	00002012 	mflo	a0
	...
     50c:	01d90018 	mult	t6,t9
     510:	00001012 	mflo	v0
     514:	00822021 	addu	a0,a0,v0
     518:	00000000 	sll	zero,zero,0x0
     51c:	032f0019 	multu	t9,t7
     520:	00001812 	mflo	v1
     524:	00001010 	mfhi	v0
     528:	00822021 	addu	a0,a0,v0
     52c:	00801021 	addu	v0,a0,zero
     530:	afc30024 	sw	v1,36(s8)
     534:	afc20020 	sw	v0,32(s8)
     538:	afc30024 	sw	v1,36(s8)
     53c:	afc20020 	sw	v0,32(s8)
  z0 = ((bits64) aHigh) * bHigh;
     540:	8fcd0004 	lw	t5,4(s8)
     544:	00006021 	addu	t4,zero,zero
     548:	8fcb000c 	lw	t3,12(s8)
     54c:	00005021 	addu	t2,zero,zero
     550:	018b0018 	mult	t4,t3
     554:	00002012 	mflo	a0
	...
     560:	014d0018 	mult	t2,t5
     564:	00001012 	mflo	v0
     568:	00822021 	addu	a0,a0,v0
     56c:	00000000 	sll	zero,zero,0x0
     570:	01ab0019 	multu	t5,t3
     574:	00001812 	mflo	v1
     578:	00001010 	mfhi	v0
     57c:	00822021 	addu	a0,a0,v0
     580:	00801021 	addu	v0,a0,zero
     584:	afc3002c 	sw	v1,44(s8)
     588:	afc20028 	sw	v0,40(s8)
     58c:	afc3002c 	sw	v1,44(s8)
     590:	afc20028 	sw	v0,40(s8)
  zMiddleA += zMiddleB;
     594:	8fc5001c 	lw	a1,28(s8)
     598:	8fc40018 	lw	a0,24(s8)
     59c:	8fc70024 	lw	a3,36(s8)
     5a0:	8fc60020 	lw	a2,32(s8)
     5a4:	00a71821 	addu	v1,a1,a3
     5a8:	0065502b 	sltu	t2,v1,a1
     5ac:	00861021 	addu	v0,a0,a2
     5b0:	01422021 	addu	a0,t2,v0
     5b4:	00801021 	addu	v0,a0,zero
     5b8:	afc3001c 	sw	v1,28(s8)
     5bc:	afc20018 	sw	v0,24(s8)
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     5c0:	8fc30020 	lw	v1,32(s8)
     5c4:	8fc20018 	lw	v0,24(s8)
     5c8:	00000000 	sll	zero,zero,0x0
     5cc:	0043102b 	sltu	v0,v0,v1
     5d0:	1440000c 	bnez	v0,604 <mul64To128+0x24c>
     5d4:	00000000 	sll	zero,zero,0x0
     5d8:	8fc30020 	lw	v1,32(s8)
     5dc:	8fc20018 	lw	v0,24(s8)
     5e0:	00000000 	sll	zero,zero,0x0
     5e4:	1462000b 	bne	v1,v0,614 <mul64To128+0x25c>
     5e8:	00000000 	sll	zero,zero,0x0
     5ec:	8fc30024 	lw	v1,36(s8)
     5f0:	8fc2001c 	lw	v0,28(s8)
     5f4:	00000000 	sll	zero,zero,0x0
     5f8:	0043102b 	sltu	v0,v0,v1
     5fc:	10400005 	beqz	v0,614 <mul64To128+0x25c>
     600:	00000000 	sll	zero,zero,0x0
     604:	00002821 	addu	a1,zero,zero
     608:	24040001 	addiu	a0,zero,1
     60c:	08000187 	j	61c <mul64To128+0x264>
     610:	00000000 	sll	zero,zero,0x0
     614:	00002821 	addu	a1,zero,zero
     618:	00002021 	addu	a0,zero,zero
     61c:	8fc20018 	lw	v0,24(s8)
     620:	00000000 	sll	zero,zero,0x0
     624:	00024802 	srl	t1,v0,0x0
     628:	00004021 	addu	t0,zero,zero
     62c:	00a91821 	addu	v1,a1,t1
     630:	0065302b 	sltu	a2,v1,a1
     634:	00881021 	addu	v0,a0,t0
     638:	00c22021 	addu	a0,a2,v0
     63c:	00801021 	addu	v0,a0,zero
     640:	00603821 	addu	a3,v1,zero
     644:	00403021 	addu	a2,v0,zero
     648:	8fc5002c 	lw	a1,44(s8)
     64c:	8fc40028 	lw	a0,40(s8)
     650:	00a71821 	addu	v1,a1,a3
     654:	0065402b 	sltu	t0,v1,a1
     658:	00861021 	addu	v0,a0,a2
     65c:	01022021 	addu	a0,t0,v0
     660:	00801021 	addu	v0,a0,zero
     664:	afc3002c 	sw	v1,44(s8)
     668:	afc20028 	sw	v0,40(s8)
  zMiddleA <<= 32;
     66c:	8fc2001c 	lw	v0,28(s8)
     670:	00000000 	sll	zero,zero,0x0
     674:	00021000 	sll	v0,v0,0x0
     678:	afc20018 	sw	v0,24(s8)
     67c:	afc0001c 	sw	zero,28(s8)
  z1 += zMiddleA;
     680:	8fc50014 	lw	a1,20(s8)
     684:	8fc40010 	lw	a0,16(s8)
     688:	8fc7001c 	lw	a3,28(s8)
     68c:	8fc60018 	lw	a2,24(s8)
     690:	00a71821 	addu	v1,a1,a3
     694:	0065402b 	sltu	t0,v1,a1
     698:	00861021 	addu	v0,a0,a2
     69c:	01022021 	addu	a0,t0,v0
     6a0:	00801021 	addu	v0,a0,zero
     6a4:	afc30014 	sw	v1,20(s8)
     6a8:	afc20010 	sw	v0,16(s8)
  z0 += (z1 < zMiddleA);
     6ac:	24050001 	addiu	a1,zero,1
     6b0:	00002021 	addu	a0,zero,zero
     6b4:	8fc30018 	lw	v1,24(s8)
     6b8:	8fc20010 	lw	v0,16(s8)
     6bc:	00000000 	sll	zero,zero,0x0
     6c0:	0043102b 	sltu	v0,v0,v1
     6c4:	1440000e 	bnez	v0,700 <mul64To128+0x348>
     6c8:	00000000 	sll	zero,zero,0x0
     6cc:	8fc30018 	lw	v1,24(s8)
     6d0:	8fc20010 	lw	v0,16(s8)
     6d4:	00000000 	sll	zero,zero,0x0
     6d8:	14620007 	bne	v1,v0,6f8 <mul64To128+0x340>
     6dc:	00000000 	sll	zero,zero,0x0
     6e0:	8fc3001c 	lw	v1,28(s8)
     6e4:	8fc20014 	lw	v0,20(s8)
     6e8:	00000000 	sll	zero,zero,0x0
     6ec:	0043102b 	sltu	v0,v0,v1
     6f0:	14400003 	bnez	v0,700 <mul64To128+0x348>
     6f4:	00000000 	sll	zero,zero,0x0
     6f8:	00002821 	addu	a1,zero,zero
     6fc:	00002021 	addu	a0,zero,zero
     700:	8fc7002c 	lw	a3,44(s8)
     704:	8fc60028 	lw	a2,40(s8)
     708:	00e51821 	addu	v1,a3,a1
     70c:	0067402b 	sltu	t0,v1,a3
     710:	00c41021 	addu	v0,a2,a0
     714:	01022021 	addu	a0,t0,v0
     718:	00801021 	addu	v0,a0,zero
     71c:	afc3002c 	sw	v1,44(s8)
     720:	afc20028 	sw	v0,40(s8)
  *z1Ptr = z1;
     724:	8fc40074 	lw	a0,116(s8)
     728:	8fc30014 	lw	v1,20(s8)
     72c:	8fc20010 	lw	v0,16(s8)
     730:	ac830004 	sw	v1,4(a0)
     734:	ac820000 	sw	v0,0(a0)
  *z0Ptr = z0;
     738:	8fc40070 	lw	a0,112(s8)
     73c:	8fc3002c 	lw	v1,44(s8)
     740:	8fc20028 	lw	v0,40(s8)
     744:	ac830004 	sw	v1,4(a0)
     748:	ac820000 	sw	v0,0(a0)

}
     74c:	03c0e821 	addu	sp,s8,zero
     750:	8fbe005c 	lw	s8,92(sp)
     754:	8fb70058 	lw	s7,88(sp)
     758:	8fb60054 	lw	s6,84(sp)
     75c:	8fb50050 	lw	s5,80(sp)
     760:	8fb4004c 	lw	s4,76(sp)
     764:	8fb30048 	lw	s3,72(sp)
     768:	8fb20044 	lw	s2,68(sp)
     76c:	8fb10040 	lw	s1,64(sp)
     770:	8fb0003c 	lw	s0,60(sp)
     774:	27bd0060 	addiu	sp,sp,96
     778:	03e00008 	jr	ra
     77c:	00000000 	sll	zero,zero,0x0

00000780 <estimateDiv128To64>:
| unsigned integer is returned.
*----------------------------------------------------------------------------*/

static bits64
estimateDiv128To64 (bits64 a0, bits64 a1, bits64 b)
{
     780:	27bdff70 	addiu	sp,sp,-144
     784:	afbf008c 	sw	ra,140(sp)
     788:	afbe0088 	sw	s8,136(sp)
     78c:	afb70084 	sw	s7,132(sp)
     790:	afb60080 	sw	s6,128(sp)
     794:	afb5007c 	sw	s5,124(sp)
     798:	afb40078 	sw	s4,120(sp)
     79c:	afb30074 	sw	s3,116(sp)
     7a0:	afb20070 	sw	s2,112(sp)
     7a4:	afb1006c 	sw	s1,108(sp)
     7a8:	afb00068 	sw	s0,104(sp)
     7ac:	03a0f021 	addu	s8,sp,zero
     7b0:	afc50094 	sw	a1,148(s8)
     7b4:	afc40090 	sw	a0,144(s8)
     7b8:	afc7009c 	sw	a3,156(s8)
     7bc:	afc60098 	sw	a2,152(s8)
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
     7c0:	8fc500a0 	lw	a1,160(s8)
     7c4:	8fc40090 	lw	a0,144(s8)
     7c8:	00000000 	sll	zero,zero,0x0
     7cc:	0085202b 	sltu	a0,a0,a1
     7d0:	14800010 	bnez	a0,814 <estimateDiv128To64+0x94>
     7d4:	00000000 	sll	zero,zero,0x0
     7d8:	8fc500a0 	lw	a1,160(s8)
     7dc:	8fc40090 	lw	a0,144(s8)
     7e0:	00000000 	sll	zero,zero,0x0
     7e4:	14a40007 	bne	a1,a0,804 <estimateDiv128To64+0x84>
     7e8:	00000000 	sll	zero,zero,0x0
     7ec:	8fc500a4 	lw	a1,164(s8)
     7f0:	8fc40094 	lw	a0,148(s8)
     7f4:	00000000 	sll	zero,zero,0x0
     7f8:	0085202b 	sltu	a0,a0,a1
     7fc:	14800005 	bnez	a0,814 <estimateDiv128To64+0x94>
     800:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
     804:	2403ffff 	addiu	v1,zero,-1
     808:	2402ffff 	addiu	v0,zero,-1
     80c:	080002a8 	j	aa0 <estimateDiv128To64+0x320>
     810:	00000000 	sll	zero,zero,0x0
  b0 = b >> 32;
     814:	8fc400a0 	lw	a0,160(s8)
     818:	00000000 	sll	zero,zero,0x0
     81c:	00042002 	srl	a0,a0,0x0
     820:	afc40034 	sw	a0,52(s8)
     824:	afc00030 	sw	zero,48(s8)
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
     828:	8fc40034 	lw	a0,52(s8)
     82c:	00000000 	sll	zero,zero,0x0
     830:	00041000 	sll	v0,a0,0x0
     834:	00001821 	addu	v1,zero,zero
     838:	8fc40090 	lw	a0,144(s8)
     83c:	00000000 	sll	zero,zero,0x0
     840:	0082202b 	sltu	a0,a0,v0
     844:	1480000a 	bnez	a0,870 <estimateDiv128To64+0xf0>
     848:	00000000 	sll	zero,zero,0x0
     84c:	8fc50090 	lw	a1,144(s8)
     850:	00402021 	addu	a0,v0,zero
     854:	14a40010 	bne	a1,a0,898 <estimateDiv128To64+0x118>
     858:	00000000 	sll	zero,zero,0x0
     85c:	8fc40094 	lw	a0,148(s8)
     860:	00000000 	sll	zero,zero,0x0
     864:	0083102b 	sltu	v0,a0,v1
     868:	1040000b 	beqz	v0,898 <estimateDiv128To64+0x118>
     86c:	00000000 	sll	zero,zero,0x0
     870:	8fc50094 	lw	a1,148(s8)
     874:	8fc40090 	lw	a0,144(s8)
     878:	8fc70034 	lw	a3,52(s8)
     87c:	8fc60030 	lw	a2,48(s8)
     880:	0c000000 	jal	0 <shift64RightJamming>
     884:	00000000 	sll	zero,zero,0x0
     888:	0003b000 	sll	s6,v1,0x0
     88c:	0000b821 	addu	s7,zero,zero
     890:	08000228 	j	8a0 <estimateDiv128To64+0x120>
     894:	00000000 	sll	zero,zero,0x0
     898:	0000b821 	addu	s7,zero,zero
     89c:	2416ffff 	addiu	s6,zero,-1
     8a0:	afd7002c 	sw	s7,44(s8)
     8a4:	afd60028 	sw	s6,40(s8)
  mul64To128 (b, z, &term0, &term1);
     8a8:	27c20050 	addiu	v0,s8,80
     8ac:	afa20010 	sw	v0,16(sp)
     8b0:	27c20058 	addiu	v0,s8,88
     8b4:	afa20014 	sw	v0,20(sp)
     8b8:	8fc500a4 	lw	a1,164(s8)
     8bc:	8fc400a0 	lw	a0,160(s8)
     8c0:	8fc7002c 	lw	a3,44(s8)
     8c4:	8fc60028 	lw	a2,40(s8)
     8c8:	0c000000 	jal	0 <shift64RightJamming>
     8cc:	00000000 	sll	zero,zero,0x0
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
     8d0:	8fc50054 	lw	a1,84(s8)
     8d4:	8fc40050 	lw	a0,80(s8)
     8d8:	8fc3005c 	lw	v1,92(s8)
     8dc:	8fc20058 	lw	v0,88(s8)
     8e0:	afa50014 	sw	a1,20(sp)
     8e4:	afa40010 	sw	a0,16(sp)
     8e8:	afa3001c 	sw	v1,28(sp)
     8ec:	afa20018 	sw	v0,24(sp)
     8f0:	27c20040 	addiu	v0,s8,64
     8f4:	afa20020 	sw	v0,32(sp)
     8f8:	27c20048 	addiu	v0,s8,72
     8fc:	afa20024 	sw	v0,36(sp)
     900:	8fc50094 	lw	a1,148(s8)
     904:	8fc40090 	lw	a0,144(s8)
     908:	8fc7009c 	lw	a3,156(s8)
     90c:	8fc60098 	lw	a2,152(s8)
     910:	0c000000 	jal	0 <shift64RightJamming>
     914:	00000000 	sll	zero,zero,0x0
  while (((sbits64) rem0) < 0)
     918:	0800026c 	j	9b0 <estimateDiv128To64+0x230>
     91c:	00000000 	sll	zero,zero,0x0
    {
      z -= LIT64 (0x100000000);
     920:	8fc5002c 	lw	a1,44(s8)
     924:	8fc40028 	lw	a0,40(s8)
     928:	00003821 	addu	a3,zero,zero
     92c:	2406ffff 	addiu	a2,zero,-1
     930:	00a71821 	addu	v1,a1,a3
     934:	0065402b 	sltu	t0,v1,a1
     938:	00861021 	addu	v0,a0,a2
     93c:	01022021 	addu	a0,t0,v0
     940:	00801021 	addu	v0,a0,zero
     944:	afc3002c 	sw	v1,44(s8)
     948:	afc20028 	sw	v0,40(s8)
      b1 = b << 32;
     94c:	8fc200a4 	lw	v0,164(s8)
     950:	00000000 	sll	zero,zero,0x0
     954:	00021000 	sll	v0,v0,0x0
     958:	afc20038 	sw	v0,56(s8)
     95c:	afc0003c 	sw	zero,60(s8)
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
     960:	8fc50044 	lw	a1,68(s8)
     964:	8fc40040 	lw	a0,64(s8)
     968:	8fc3004c 	lw	v1,76(s8)
     96c:	8fc20048 	lw	v0,72(s8)
     970:	8fc70034 	lw	a3,52(s8)
     974:	8fc60030 	lw	a2,48(s8)
     978:	afa70014 	sw	a3,20(sp)
     97c:	afa60010 	sw	a2,16(sp)
     980:	8fc7003c 	lw	a3,60(s8)
     984:	8fc60038 	lw	a2,56(s8)
     988:	afa7001c 	sw	a3,28(sp)
     98c:	afa60018 	sw	a2,24(sp)
     990:	27c60040 	addiu	a2,s8,64
     994:	afa60020 	sw	a2,32(sp)
     998:	27c60048 	addiu	a2,s8,72
     99c:	afa60024 	sw	a2,36(sp)
     9a0:	00603821 	addu	a3,v1,zero
     9a4:	00403021 	addu	a2,v0,zero
     9a8:	0c000000 	jal	0 <shift64RightJamming>
     9ac:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
     9b0:	8fc30044 	lw	v1,68(s8)
     9b4:	8fc20040 	lw	v0,64(s8)
     9b8:	00000000 	sll	zero,zero,0x0
     9bc:	0440ffd8 	bltz	v0,920 <estimateDiv128To64+0x1a0>
     9c0:	00000000 	sll	zero,zero,0x0
    {
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    }
  rem0 = (rem0 << 32) | (rem1 >> 32);
     9c4:	8fc30044 	lw	v1,68(s8)
     9c8:	8fc20040 	lw	v0,64(s8)
     9cc:	0003a000 	sll	s4,v1,0x0
     9d0:	0000a821 	addu	s5,zero,zero
     9d4:	8fc3004c 	lw	v1,76(s8)
     9d8:	8fc20048 	lw	v0,72(s8)
     9dc:	00000000 	sll	zero,zero,0x0
     9e0:	00029802 	srl	s3,v0,0x0
     9e4:	00009021 	addu	s2,zero,zero
     9e8:	02921025 	or	v0,s4,s2
     9ec:	afc20060 	sw	v0,96(s8)
     9f0:	02b31825 	or	v1,s5,s3
     9f4:	afc30064 	sw	v1,100(s8)
     9f8:	8fc30064 	lw	v1,100(s8)
     9fc:	8fc20060 	lw	v0,96(s8)
     a00:	afc30044 	sw	v1,68(s8)
     a04:	afc20040 	sw	v0,64(s8)
  z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
     a08:	8fc20034 	lw	v0,52(s8)
     a0c:	00000000 	sll	zero,zero,0x0
     a10:	00028000 	sll	s0,v0,0x0
     a14:	00008821 	addu	s1,zero,zero
     a18:	8fc30044 	lw	v1,68(s8)
     a1c:	8fc20040 	lw	v0,64(s8)
     a20:	00000000 	sll	zero,zero,0x0
     a24:	0050202b 	sltu	a0,v0,s0
     a28:	14800007 	bnez	a0,a48 <estimateDiv128To64+0x2c8>
     a2c:	00000000 	sll	zero,zero,0x0
     a30:	00402021 	addu	a0,v0,zero
     a34:	1604000e 	bne	s0,a0,a70 <estimateDiv128To64+0x2f0>
     a38:	00000000 	sll	zero,zero,0x0
     a3c:	0071102b 	sltu	v0,v1,s1
     a40:	1040000b 	beqz	v0,a70 <estimateDiv128To64+0x2f0>
     a44:	00000000 	sll	zero,zero,0x0
     a48:	8fc30044 	lw	v1,68(s8)
     a4c:	8fc20040 	lw	v0,64(s8)
     a50:	00602821 	addu	a1,v1,zero
     a54:	00402021 	addu	a0,v0,zero
     a58:	8fc70034 	lw	a3,52(s8)
     a5c:	8fc60030 	lw	a2,48(s8)
     a60:	0c000000 	jal	0 <shift64RightJamming>
     a64:	00000000 	sll	zero,zero,0x0
     a68:	0800029e 	j	a78 <estimateDiv128To64+0x2f8>
     a6c:	00000000 	sll	zero,zero,0x0
     a70:	2403ffff 	addiu	v1,zero,-1
     a74:	00001021 	addu	v0,zero,zero
     a78:	8fc40028 	lw	a0,40(s8)
     a7c:	00000000 	sll	zero,zero,0x0
     a80:	00822025 	or	a0,a0,v0
     a84:	afc40028 	sw	a0,40(s8)
     a88:	8fc4002c 	lw	a0,44(s8)
     a8c:	00000000 	sll	zero,zero,0x0
     a90:	00831025 	or	v0,a0,v1
     a94:	afc2002c 	sw	v0,44(s8)
  return z;
     a98:	8fc3002c 	lw	v1,44(s8)
     a9c:	8fc20028 	lw	v0,40(s8)

}
     aa0:	03c0e821 	addu	sp,s8,zero
     aa4:	8fbf008c 	lw	ra,140(sp)
     aa8:	8fbe0088 	lw	s8,136(sp)
     aac:	8fb70084 	lw	s7,132(sp)
     ab0:	8fb60080 	lw	s6,128(sp)
     ab4:	8fb5007c 	lw	s5,124(sp)
     ab8:	8fb40078 	lw	s4,120(sp)
     abc:	8fb30074 	lw	s3,116(sp)
     ac0:	8fb20070 	lw	s2,112(sp)
     ac4:	8fb1006c 	lw	s1,108(sp)
     ac8:	8fb00068 	lw	s0,104(sp)
     acc:	27bd0090 	addiu	sp,sp,144
     ad0:	03e00008 	jr	ra
     ad4:	00000000 	sll	zero,zero,0x0

00000ad8 <countLeadingZeros32>:
| `a'.  If `a' is zero, 32 is returned.
*----------------------------------------------------------------------------*/

static int8
countLeadingZeros32 (bits32 a)
{
     ad8:	27bdfff0 	addiu	sp,sp,-16
     adc:	afbe000c 	sw	s8,12(sp)
     ae0:	03a0f021 	addu	s8,sp,zero
     ae4:	afc40010 	sw	a0,16(s8)
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
     ae8:	afc00000 	sw	zero,0(s8)
  if (a < 0x10000)
     aec:	8fc30010 	lw	v1,16(s8)
     af0:	3c020001 	lui	v0,0x1
     af4:	0062102b 	sltu	v0,v1,v0
     af8:	10400009 	beqz	v0,b20 <countLeadingZeros32+0x48>
     afc:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 16;
     b00:	8fc20000 	lw	v0,0(s8)
     b04:	00000000 	sll	zero,zero,0x0
     b08:	24420010 	addiu	v0,v0,16
     b0c:	afc20000 	sw	v0,0(s8)
      a <<= 16;
     b10:	8fc20010 	lw	v0,16(s8)
     b14:	00000000 	sll	zero,zero,0x0
     b18:	00021400 	sll	v0,v0,0x10
     b1c:	afc20010 	sw	v0,16(s8)
    }
  if (a < 0x1000000)
     b20:	8fc30010 	lw	v1,16(s8)
     b24:	3c020100 	lui	v0,0x100
     b28:	0062102b 	sltu	v0,v1,v0
     b2c:	10400009 	beqz	v0,b54 <countLeadingZeros32+0x7c>
     b30:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
     b34:	8fc20000 	lw	v0,0(s8)
     b38:	00000000 	sll	zero,zero,0x0
     b3c:	24420008 	addiu	v0,v0,8
     b40:	afc20000 	sw	v0,0(s8)
      a <<= 8;
     b44:	8fc20010 	lw	v0,16(s8)
     b48:	00000000 	sll	zero,zero,0x0
     b4c:	00021200 	sll	v0,v0,0x8
     b50:	afc20010 	sw	v0,16(s8)
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
     b54:	8fc20010 	lw	v0,16(s8)
     b58:	00000000 	sll	zero,zero,0x0
     b5c:	00021e02 	srl	v1,v0,0x18
     b60:	3c020000 	lui	v0,0x0
     b64:	00031880 	sll	v1,v1,0x2
     b68:	2442025c 	addiu	v0,v0,604
     b6c:	00621021 	addu	v0,v1,v0
     b70:	8c420000 	lw	v0,0(v0)
     b74:	8fc30000 	lw	v1,0(s8)
     b78:	00000000 	sll	zero,zero,0x0
     b7c:	00621021 	addu	v0,v1,v0
     b80:	afc20000 	sw	v0,0(s8)
  return shiftCount;
     b84:	8fc20000 	lw	v0,0(s8)

}
     b88:	03c0e821 	addu	sp,s8,zero
     b8c:	8fbe000c 	lw	s8,12(sp)
     b90:	27bd0010 	addiu	sp,sp,16
     b94:	03e00008 	jr	ra
     b98:	00000000 	sll	zero,zero,0x0

00000b9c <countLeadingZeros64>:
| `a'.  If `a' is zero, 64 is returned.
*----------------------------------------------------------------------------*/

static int8
countLeadingZeros64 (bits64 a)
{
     b9c:	27bdffe0 	addiu	sp,sp,-32
     ba0:	afbf001c 	sw	ra,28(sp)
     ba4:	afbe0018 	sw	s8,24(sp)
     ba8:	03a0f021 	addu	s8,sp,zero
     bac:	afc50024 	sw	a1,36(s8)
     bb0:	afc40020 	sw	a0,32(s8)
  int8 shiftCount;

  shiftCount = 0;
     bb4:	afc00010 	sw	zero,16(s8)
  if (a < ((bits64) 1) << 32)
     bb8:	8fc20020 	lw	v0,32(s8)
     bbc:	00000000 	sll	zero,zero,0x0
     bc0:	14400007 	bnez	v0,be0 <countLeadingZeros64+0x44>
     bc4:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 32;
     bc8:	8fc20010 	lw	v0,16(s8)
     bcc:	00000000 	sll	zero,zero,0x0
     bd0:	24420020 	addiu	v0,v0,32
     bd4:	afc20010 	sw	v0,16(s8)
     bd8:	080002fd 	j	bf4 <countLeadingZeros64+0x58>
     bdc:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      a >>= 32;
     be0:	8fc20020 	lw	v0,32(s8)
     be4:	00000000 	sll	zero,zero,0x0
     be8:	00021002 	srl	v0,v0,0x0
     bec:	afc20024 	sw	v0,36(s8)
     bf0:	afc00020 	sw	zero,32(s8)
    }
  shiftCount += countLeadingZeros32 (a);
     bf4:	8fc20024 	lw	v0,36(s8)
     bf8:	00000000 	sll	zero,zero,0x0
     bfc:	00402021 	addu	a0,v0,zero
     c00:	0c0002b6 	jal	ad8 <countLeadingZeros32>
     c04:	00000000 	sll	zero,zero,0x0
     c08:	8fc30010 	lw	v1,16(s8)
     c0c:	00000000 	sll	zero,zero,0x0
     c10:	00621021 	addu	v0,v1,v0
     c14:	afc20010 	sw	v0,16(s8)
  return shiftCount;
     c18:	8fc20010 	lw	v0,16(s8)

}
     c1c:	03c0e821 	addu	sp,s8,zero
     c20:	8fbf001c 	lw	ra,28(sp)
     c24:	8fbe0018 	lw	s8,24(sp)
     c28:	27bd0020 	addiu	sp,sp,32
     c2c:	03e00008 	jr	ra
     c30:	00000000 	sll	zero,zero,0x0

00000c34 <float_raise>:
| should be simply `float_exception_flags |= flags;'.
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
     c34:	27bdfff8 	addiu	sp,sp,-8
     c38:	afbe0004 	sw	s8,4(sp)
     c3c:	03a0f021 	addu	s8,sp,zero
     c40:	afc40008 	sw	a0,8(s8)
  float_exception_flags |= flags;
     c44:	8f830000 	lw	v1,0(gp)
     c48:	8fc20008 	lw	v0,8(s8)
     c4c:	00000000 	sll	zero,zero,0x0
     c50:	00621025 	or	v0,v1,v0
     c54:	af820000 	sw	v0,0(gp)

}
     c58:	03c0e821 	addu	sp,s8,zero
     c5c:	8fbe0004 	lw	s8,4(sp)
     c60:	27bd0008 	addiu	sp,sp,8
     c64:	03e00008 	jr	ra
     c68:	00000000 	sll	zero,zero,0x0

00000c6c <float64_is_nan>:
| otherwise returns 0.
*----------------------------------------------------------------------------*/

flag
float64_is_nan (float64 a)
{
     c6c:	27bdfff8 	addiu	sp,sp,-8
     c70:	afbe0004 	sw	s8,4(sp)
     c74:	03a0f021 	addu	s8,sp,zero
     c78:	afc5000c 	sw	a1,12(s8)
     c7c:	afc40008 	sw	a0,8(s8)

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     c80:	8fc4000c 	lw	a0,12(s8)
     c84:	00000000 	sll	zero,zero,0x0
     c88:	000427c2 	srl	a0,a0,0x1f
     c8c:	8fc50008 	lw	a1,8(s8)
     c90:	00000000 	sll	zero,zero,0x0
     c94:	00051040 	sll	v0,a1,0x1
     c98:	00821025 	or	v0,a0,v0
     c9c:	8fc4000c 	lw	a0,12(s8)
     ca0:	00000000 	sll	zero,zero,0x0
     ca4:	00041840 	sll	v1,a0,0x1
     ca8:	24040001 	addiu	a0,zero,1
     cac:	3c05ffe0 	lui	a1,0xffe0
     cb0:	34a50001 	ori	a1,a1,0x1
     cb4:	0045282b 	sltu	a1,v0,a1
     cb8:	10a00007 	beqz	a1,cd8 <float64_is_nan+0x6c>
     cbc:	00000000 	sll	zero,zero,0x0
     cc0:	3c05ffe0 	lui	a1,0xffe0
     cc4:	14450003 	bne	v0,a1,cd4 <float64_is_nan+0x68>
     cc8:	00000000 	sll	zero,zero,0x0
     ccc:	14600002 	bnez	v1,cd8 <float64_is_nan+0x6c>
     cd0:	00000000 	sll	zero,zero,0x0
     cd4:	00002021 	addu	a0,zero,zero
     cd8:	00801021 	addu	v0,a0,zero

}
     cdc:	03c0e821 	addu	sp,s8,zero
     ce0:	8fbe0004 	lw	s8,4(sp)
     ce4:	27bd0008 	addiu	sp,sp,8
     ce8:	03e00008 	jr	ra
     cec:	00000000 	sll	zero,zero,0x0

00000cf0 <float64_is_signaling_nan>:
| NaN; otherwise returns 0.
*----------------------------------------------------------------------------*/

flag
float64_is_signaling_nan (float64 a)
{
     cf0:	27bdfff8 	addiu	sp,sp,-8
     cf4:	afbe0004 	sw	s8,4(sp)
     cf8:	03a0f021 	addu	s8,sp,zero
     cfc:	afc5000c 	sw	a1,12(s8)
     d00:	afc40008 	sw	a0,8(s8)

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     d04:	8fc40008 	lw	a0,8(s8)
     d08:	00000000 	sll	zero,zero,0x0
     d0c:	00044cc2 	srl	t1,a0,0x13
     d10:	00004021 	addu	t0,zero,zero
     d14:	31060000 	andi	a2,t0,0x0
     d18:	31270fff 	andi	a3,t1,0xfff
     d1c:	14c00012 	bnez	a2,d68 <float64_is_signaling_nan+0x78>
     d20:	00000000 	sll	zero,zero,0x0
     d24:	24040ffe 	addiu	a0,zero,4094
     d28:	14e4000f 	bne	a3,a0,d68 <float64_is_signaling_nan+0x78>
     d2c:	00000000 	sll	zero,zero,0x0
     d30:	8fc50008 	lw	a1,8(s8)
     d34:	3c040007 	lui	a0,0x7
     d38:	3484ffff 	ori	a0,a0,0xffff
     d3c:	00a41024 	and	v0,a1,a0
     d40:	8fc5000c 	lw	a1,12(s8)
     d44:	2404ffff 	addiu	a0,zero,-1
     d48:	00a41824 	and	v1,a1,a0
     d4c:	00402021 	addu	a0,v0,zero
     d50:	00832025 	or	a0,a0,v1
     d54:	10800004 	beqz	a0,d68 <float64_is_signaling_nan+0x78>
     d58:	00000000 	sll	zero,zero,0x0
     d5c:	24020001 	addiu	v0,zero,1
     d60:	0800035b 	j	d6c <float64_is_signaling_nan+0x7c>
     d64:	00000000 	sll	zero,zero,0x0
     d68:	00001021 	addu	v0,zero,zero

}
     d6c:	03c0e821 	addu	sp,s8,zero
     d70:	8fbe0004 	lw	s8,4(sp)
     d74:	27bd0008 	addiu	sp,sp,8
     d78:	03e00008 	jr	ra
     d7c:	00000000 	sll	zero,zero,0x0

00000d80 <propagateFloat64NaN>:
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/

static float64
propagateFloat64NaN (float64 a, float64 b)
{
     d80:	27bdffd8 	addiu	sp,sp,-40
     d84:	afbf0024 	sw	ra,36(sp)
     d88:	afbe0020 	sw	s8,32(sp)
     d8c:	03a0f021 	addu	s8,sp,zero
     d90:	afc5002c 	sw	a1,44(s8)
     d94:	afc40028 	sw	a0,40(s8)
     d98:	afc70034 	sw	a3,52(s8)
     d9c:	afc60030 	sw	a2,48(s8)
  flag aIsNaN, aIsSignalingNaN, bIsNaN, bIsSignalingNaN;

  aIsNaN = float64_is_nan (a);
     da0:	8fc5002c 	lw	a1,44(s8)
     da4:	8fc40028 	lw	a0,40(s8)
     da8:	0c000000 	jal	0 <shift64RightJamming>
     dac:	00000000 	sll	zero,zero,0x0
     db0:	afc20010 	sw	v0,16(s8)
  aIsSignalingNaN = float64_is_signaling_nan (a);
     db4:	8fc5002c 	lw	a1,44(s8)
     db8:	8fc40028 	lw	a0,40(s8)
     dbc:	0c000000 	jal	0 <shift64RightJamming>
     dc0:	00000000 	sll	zero,zero,0x0
     dc4:	afc20014 	sw	v0,20(s8)
  bIsNaN = float64_is_nan (b);
     dc8:	8fc50034 	lw	a1,52(s8)
     dcc:	8fc40030 	lw	a0,48(s8)
     dd0:	0c000000 	jal	0 <shift64RightJamming>
     dd4:	00000000 	sll	zero,zero,0x0
     dd8:	afc20018 	sw	v0,24(s8)
  bIsSignalingNaN = float64_is_signaling_nan (b);
     ddc:	8fc50034 	lw	a1,52(s8)
     de0:	8fc40030 	lw	a0,48(s8)
     de4:	0c000000 	jal	0 <shift64RightJamming>
     de8:	00000000 	sll	zero,zero,0x0
     dec:	afc2001c 	sw	v0,28(s8)
  a |= LIT64 (0x0008000000000000);
     df0:	8fc30028 	lw	v1,40(s8)
     df4:	3c020008 	lui	v0,0x8
     df8:	00621025 	or	v0,v1,v0
     dfc:	afc20028 	sw	v0,40(s8)
     e00:	8fc2002c 	lw	v0,44(s8)
     e04:	00000000 	sll	zero,zero,0x0
     e08:	34420000 	ori	v0,v0,0x0
     e0c:	afc2002c 	sw	v0,44(s8)
  b |= LIT64 (0x0008000000000000);
     e10:	8fc30030 	lw	v1,48(s8)
     e14:	3c020008 	lui	v0,0x8
     e18:	00621025 	or	v0,v1,v0
     e1c:	afc20030 	sw	v0,48(s8)
     e20:	8fc20034 	lw	v0,52(s8)
     e24:	00000000 	sll	zero,zero,0x0
     e28:	34420000 	ori	v0,v0,0x0
     e2c:	afc20034 	sw	v0,52(s8)
  if (aIsSignalingNaN | bIsSignalingNaN)
     e30:	8fc30014 	lw	v1,20(s8)
     e34:	8fc2001c 	lw	v0,28(s8)
     e38:	00000000 	sll	zero,zero,0x0
     e3c:	00621025 	or	v0,v1,v0
     e40:	10400004 	beqz	v0,e54 <propagateFloat64NaN+0xd4>
     e44:	00000000 	sll	zero,zero,0x0
    float_raise (float_flag_invalid);
     e48:	24040010 	addiu	a0,zero,16
     e4c:	0c000000 	jal	0 <shift64RightJamming>
     e50:	00000000 	sll	zero,zero,0x0
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
     e54:	8fc2001c 	lw	v0,28(s8)
     e58:	00000000 	sll	zero,zero,0x0
     e5c:	14400015 	bnez	v0,eb4 <propagateFloat64NaN+0x134>
     e60:	00000000 	sll	zero,zero,0x0
     e64:	8fc20014 	lw	v0,20(s8)
     e68:	00000000 	sll	zero,zero,0x0
     e6c:	1440000d 	bnez	v0,ea4 <propagateFloat64NaN+0x124>
     e70:	00000000 	sll	zero,zero,0x0
     e74:	8fc20018 	lw	v0,24(s8)
     e78:	00000000 	sll	zero,zero,0x0
     e7c:	10400005 	beqz	v0,e94 <propagateFloat64NaN+0x114>
     e80:	00000000 	sll	zero,zero,0x0
     e84:	8fc30034 	lw	v1,52(s8)
     e88:	8fc20030 	lw	v0,48(s8)
     e8c:	080003a7 	j	e9c <propagateFloat64NaN+0x11c>
     e90:	00000000 	sll	zero,zero,0x0
     e94:	8fc3002c 	lw	v1,44(s8)
     e98:	8fc20028 	lw	v0,40(s8)
     e9c:	080003ab 	j	eac <propagateFloat64NaN+0x12c>
     ea0:	00000000 	sll	zero,zero,0x0
     ea4:	8fc3002c 	lw	v1,44(s8)
     ea8:	8fc20028 	lw	v0,40(s8)
     eac:	080003af 	j	ebc <propagateFloat64NaN+0x13c>
     eb0:	00000000 	sll	zero,zero,0x0
     eb4:	8fc30034 	lw	v1,52(s8)
     eb8:	8fc20030 	lw	v0,48(s8)

}
     ebc:	03c0e821 	addu	sp,s8,zero
     ec0:	8fbf0024 	lw	ra,36(sp)
     ec4:	8fbe0020 	lw	s8,32(sp)
     ec8:	27bd0028 	addiu	sp,sp,40
     ecc:	03e00008 	jr	ra
     ed0:	00000000 	sll	zero,zero,0x0

00000ed4 <extractFloat64Frac>:
| Returns the fraction bits of the double-precision floating-point value `a'.
*----------------------------------------------------------------------------*/

INLINE bits64
extractFloat64Frac (float64 a)
{
     ed4:	27bdfff8 	addiu	sp,sp,-8
     ed8:	afbe0004 	sw	s8,4(sp)
     edc:	03a0f021 	addu	s8,sp,zero
     ee0:	afc5000c 	sw	a1,12(s8)
     ee4:	afc40008 	sw	a0,8(s8)

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     ee8:	8fc50008 	lw	a1,8(s8)
     eec:	3c04000f 	lui	a0,0xf
     ef0:	3484ffff 	ori	a0,a0,0xffff
     ef4:	00a41024 	and	v0,a1,a0
     ef8:	8fc5000c 	lw	a1,12(s8)
     efc:	2404ffff 	addiu	a0,zero,-1
     f00:	00a41824 	and	v1,a1,a0

}
     f04:	03c0e821 	addu	sp,s8,zero
     f08:	8fbe0004 	lw	s8,4(sp)
     f0c:	27bd0008 	addiu	sp,sp,8
     f10:	03e00008 	jr	ra
     f14:	00000000 	sll	zero,zero,0x0

00000f18 <extractFloat64Exp>:
| Returns the exponent bits of the double-precision floating-point value `a'.
*----------------------------------------------------------------------------*/

INLINE int16
extractFloat64Exp (float64 a)
{
     f18:	27bdfff8 	addiu	sp,sp,-8
     f1c:	afbe0004 	sw	s8,4(sp)
     f20:	03a0f021 	addu	s8,sp,zero
     f24:	afc5000c 	sw	a1,12(s8)
     f28:	afc40008 	sw	a0,8(s8)

  return (a >> 52) & 0x7FF;
     f2c:	8fc40008 	lw	a0,8(s8)
     f30:	00000000 	sll	zero,zero,0x0
     f34:	00041d02 	srl	v1,a0,0x14
     f38:	00001021 	addu	v0,zero,zero
     f3c:	00601021 	addu	v0,v1,zero
     f40:	304207ff 	andi	v0,v0,0x7ff

}
     f44:	03c0e821 	addu	sp,s8,zero
     f48:	8fbe0004 	lw	s8,4(sp)
     f4c:	27bd0008 	addiu	sp,sp,8
     f50:	03e00008 	jr	ra
     f54:	00000000 	sll	zero,zero,0x0

00000f58 <extractFloat64Sign>:
| Returns the sign bit of the double-precision floating-point value `a'.
*----------------------------------------------------------------------------*/

INLINE flag
extractFloat64Sign (float64 a)
{
     f58:	27bdfff8 	addiu	sp,sp,-8
     f5c:	afbe0004 	sw	s8,4(sp)
     f60:	03a0f021 	addu	s8,sp,zero
     f64:	afc5000c 	sw	a1,12(s8)
     f68:	afc40008 	sw	a0,8(s8)

  return a >> 63;
     f6c:	8fc40008 	lw	a0,8(s8)
     f70:	00000000 	sll	zero,zero,0x0
     f74:	00041fc2 	srl	v1,a0,0x1f
     f78:	00001021 	addu	v0,zero,zero
     f7c:	00601021 	addu	v0,v1,zero

}
     f80:	03c0e821 	addu	sp,s8,zero
     f84:	8fbe0004 	lw	s8,4(sp)
     f88:	27bd0008 	addiu	sp,sp,8
     f8c:	03e00008 	jr	ra
     f90:	00000000 	sll	zero,zero,0x0

00000f94 <normalizeFloat64Subnormal>:
| `zSigPtr', respectively.
*----------------------------------------------------------------------------*/

static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
     f94:	27bdffd8 	addiu	sp,sp,-40
     f98:	afbf0024 	sw	ra,36(sp)
     f9c:	afbe0020 	sw	s8,32(sp)
     fa0:	afb1001c 	sw	s1,28(sp)
     fa4:	afb00018 	sw	s0,24(sp)
     fa8:	03a0f021 	addu	s8,sp,zero
     fac:	afc5002c 	sw	a1,44(s8)
     fb0:	afc40028 	sw	a0,40(s8)
     fb4:	afc60030 	sw	a2,48(s8)
     fb8:	afc70034 	sw	a3,52(s8)
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
     fbc:	8fc5002c 	lw	a1,44(s8)
     fc0:	8fc40028 	lw	a0,40(s8)
     fc4:	0c0002e7 	jal	b9c <countLeadingZeros64>
     fc8:	00000000 	sll	zero,zero,0x0
     fcc:	2442fff5 	addiu	v0,v0,-11
     fd0:	afc20010 	sw	v0,16(s8)
  *zSigPtr = aSig << shiftCount;
     fd4:	8fc20010 	lw	v0,16(s8)
     fd8:	00000000 	sll	zero,zero,0x0
     fdc:	30420020 	andi	v0,v0,0x20
     fe0:	10400008 	beqz	v0,1004 <normalizeFloat64Subnormal+0x70>
     fe4:	00000000 	sll	zero,zero,0x0
     fe8:	8fc3002c 	lw	v1,44(s8)
     fec:	8fc20010 	lw	v0,16(s8)
     ff0:	00000000 	sll	zero,zero,0x0
     ff4:	00438004 	sllv	s0,v1,v0
     ff8:	00008821 	addu	s1,zero,zero
     ffc:	08000411 	j	1044 <normalizeFloat64Subnormal+0xb0>
    1000:	00000000 	sll	zero,zero,0x0
    1004:	8fc2002c 	lw	v0,44(s8)
    1008:	00000000 	sll	zero,zero,0x0
    100c:	00021842 	srl	v1,v0,0x1
    1010:	8fc40010 	lw	a0,16(s8)
    1014:	2402ffff 	addiu	v0,zero,-1
    1018:	00821026 	xor	v0,a0,v0
    101c:	00431006 	srlv	v0,v1,v0
    1020:	8fc40028 	lw	a0,40(s8)
    1024:	8fc30010 	lw	v1,16(s8)
    1028:	00000000 	sll	zero,zero,0x0
    102c:	00648004 	sllv	s0,a0,v1
    1030:	00508025 	or	s0,v0,s0
    1034:	8fc3002c 	lw	v1,44(s8)
    1038:	8fc20010 	lw	v0,16(s8)
    103c:	00000000 	sll	zero,zero,0x0
    1040:	00438804 	sllv	s1,v1,v0
    1044:	8fc20034 	lw	v0,52(s8)
    1048:	00000000 	sll	zero,zero,0x0
    104c:	ac510004 	sw	s1,4(v0)
    1050:	ac500000 	sw	s0,0(v0)
  *zExpPtr = 1 - shiftCount;
    1054:	24030001 	addiu	v1,zero,1
    1058:	8fc20010 	lw	v0,16(s8)
    105c:	00000000 	sll	zero,zero,0x0
    1060:	00621823 	subu	v1,v1,v0
    1064:	8fc20030 	lw	v0,48(s8)
    1068:	00000000 	sll	zero,zero,0x0
    106c:	ac430000 	sw	v1,0(v0)

}
    1070:	03c0e821 	addu	sp,s8,zero
    1074:	8fbf0024 	lw	ra,36(sp)
    1078:	8fbe0020 	lw	s8,32(sp)
    107c:	8fb1001c 	lw	s1,28(sp)
    1080:	8fb00018 	lw	s0,24(sp)
    1084:	27bd0028 	addiu	sp,sp,40
    1088:	03e00008 	jr	ra
    108c:	00000000 	sll	zero,zero,0x0

00001090 <packFloat64>:
| significand.
*----------------------------------------------------------------------------*/

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
    1090:	27bdfff8 	addiu	sp,sp,-8
    1094:	afbe0004 	sw	s8,4(sp)
    1098:	03a0f021 	addu	s8,sp,zero
    109c:	afc40008 	sw	a0,8(s8)
    10a0:	afc5000c 	sw	a1,12(s8)
    10a4:	afc70014 	sw	a3,20(s8)
    10a8:	afc60010 	sw	a2,16(s8)

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
    10ac:	8fcd0008 	lw	t5,8(s8)
    10b0:	8fc40008 	lw	a0,8(s8)
    10b4:	00000000 	sll	zero,zero,0x0
    10b8:	000427c3 	sra	a0,a0,0x1f
    10bc:	00806021 	addu	t4,a0,zero
    10c0:	000d47c0 	sll	t0,t5,0x1f
    10c4:	00004821 	addu	t1,zero,zero
    10c8:	8fc3000c 	lw	v1,12(s8)
    10cc:	8fc4000c 	lw	a0,12(s8)
    10d0:	00000000 	sll	zero,zero,0x0
    10d4:	000427c3 	sra	a0,a0,0x1f
    10d8:	00801021 	addu	v0,a0,zero
    10dc:	00035500 	sll	t2,v1,0x14
    10e0:	00005821 	addu	t3,zero,zero
    10e4:	012b1821 	addu	v1,t1,t3
    10e8:	0069202b 	sltu	a0,v1,t1
    10ec:	010a1021 	addu	v0,t0,t2
    10f0:	00822021 	addu	a0,a0,v0
    10f4:	00801021 	addu	v0,a0,zero
    10f8:	00602821 	addu	a1,v1,zero
    10fc:	00402021 	addu	a0,v0,zero
    1100:	8fc70014 	lw	a3,20(s8)
    1104:	8fc60010 	lw	a2,16(s8)
    1108:	00a71821 	addu	v1,a1,a3
    110c:	0065402b 	sltu	t0,v1,a1
    1110:	00861021 	addu	v0,a0,a2
    1114:	01022021 	addu	a0,t0,v0
    1118:	00801021 	addu	v0,a0,zero

}
    111c:	03c0e821 	addu	sp,s8,zero
    1120:	8fbe0004 	lw	s8,4(sp)
    1124:	27bd0008 	addiu	sp,sp,8
    1128:	03e00008 	jr	ra
    112c:	00000000 	sll	zero,zero,0x0

00001130 <roundAndPackFloat64>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
roundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
    1130:	27bdffa8 	addiu	sp,sp,-88
    1134:	afbf0054 	sw	ra,84(sp)
    1138:	afbe0050 	sw	s8,80(sp)
    113c:	afb7004c 	sw	s7,76(sp)
    1140:	afb60048 	sw	s6,72(sp)
    1144:	afb50044 	sw	s5,68(sp)
    1148:	afb40040 	sw	s4,64(sp)
    114c:	afb3003c 	sw	s3,60(sp)
    1150:	afb20038 	sw	s2,56(sp)
    1154:	afb10034 	sw	s1,52(sp)
    1158:	afb00030 	sw	s0,48(sp)
    115c:	03a0f021 	addu	s8,sp,zero
    1160:	afc40058 	sw	a0,88(s8)
    1164:	afc5005c 	sw	a1,92(s8)
    1168:	afc70064 	sw	a3,100(s8)
    116c:	afc60060 	sw	a2,96(s8)
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
    1170:	8f820000 	lw	v0,0(gp)
    1174:	00000000 	sll	zero,zero,0x0
    1178:	afc20018 	sw	v0,24(s8)
  roundNearestEven = (roundingMode == float_round_nearest_even);
    117c:	8fc20018 	lw	v0,24(s8)
    1180:	00000000 	sll	zero,zero,0x0
    1184:	2c420001 	sltiu	v0,v0,1
    1188:	afc2001c 	sw	v0,28(s8)
  roundIncrement = 0x200;
    118c:	24020200 	addiu	v0,zero,512
    1190:	afc20010 	sw	v0,16(s8)
  if (!roundNearestEven)
    1194:	8fc2001c 	lw	v0,28(s8)
    1198:	00000000 	sll	zero,zero,0x0
    119c:	1440001a 	bnez	v0,1208 <roundAndPackFloat64+0xd8>
    11a0:	00000000 	sll	zero,zero,0x0
    {
      if (roundingMode == float_round_to_zero)
    11a4:	8fc30018 	lw	v1,24(s8)
    11a8:	24020001 	addiu	v0,zero,1
    11ac:	14620004 	bne	v1,v0,11c0 <roundAndPackFloat64+0x90>
    11b0:	00000000 	sll	zero,zero,0x0
	{
	  roundIncrement = 0;
    11b4:	afc00010 	sw	zero,16(s8)
    11b8:	08000482 	j	1208 <roundAndPackFloat64+0xd8>
    11bc:	00000000 	sll	zero,zero,0x0
	}
      else
	{
	  roundIncrement = 0x3FF;
    11c0:	240203ff 	addiu	v0,zero,1023
    11c4:	afc20010 	sw	v0,16(s8)
	  if (zSign)
    11c8:	8fc20058 	lw	v0,88(s8)
    11cc:	00000000 	sll	zero,zero,0x0
    11d0:	10400008 	beqz	v0,11f4 <roundAndPackFloat64+0xc4>
    11d4:	00000000 	sll	zero,zero,0x0
	    {
	      if (roundingMode == float_round_up)
    11d8:	8fc30018 	lw	v1,24(s8)
    11dc:	24020002 	addiu	v0,zero,2
    11e0:	14620009 	bne	v1,v0,1208 <roundAndPackFloat64+0xd8>
    11e4:	00000000 	sll	zero,zero,0x0
		roundIncrement = 0;
    11e8:	afc00010 	sw	zero,16(s8)
    11ec:	08000482 	j	1208 <roundAndPackFloat64+0xd8>
    11f0:	00000000 	sll	zero,zero,0x0
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
    11f4:	8fc30018 	lw	v1,24(s8)
    11f8:	24020003 	addiu	v0,zero,3
    11fc:	14620002 	bne	v1,v0,1208 <roundAndPackFloat64+0xd8>
    1200:	00000000 	sll	zero,zero,0x0
		roundIncrement = 0;
    1204:	afc00010 	sw	zero,16(s8)
	    }
	}
    }
  roundBits = zSig & 0x3FF;
    1208:	8fc30064 	lw	v1,100(s8)
    120c:	8fc20060 	lw	v0,96(s8)
    1210:	00601021 	addu	v0,v1,zero
    1214:	304203ff 	andi	v0,v0,0x3ff
    1218:	afc20014 	sw	v0,20(s8)
  if (0x7FD <= (bits16) zExp)
    121c:	8fc2005c 	lw	v0,92(s8)
    1220:	00000000 	sll	zero,zero,0x0
    1224:	3042ffff 	andi	v0,v0,0xffff
    1228:	2c4207fd 	sltiu	v0,v0,2045
    122c:	14400050 	bnez	v0,1370 <roundAndPackFloat64+0x240>
    1230:	00000000 	sll	zero,zero,0x0
    {
      if ((0x7FD < zExp)
    1234:	8fc2005c 	lw	v0,92(s8)
    1238:	00000000 	sll	zero,zero,0x0
    123c:	284207fe 	slti	v0,v0,2046
    1240:	10400013 	beqz	v0,1290 <roundAndPackFloat64+0x160>
    1244:	00000000 	sll	zero,zero,0x0
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
    1248:	8fc3005c 	lw	v1,92(s8)
    124c:	240207fd 	addiu	v0,zero,2045
    1250:	14620026 	bne	v1,v0,12ec <roundAndPackFloat64+0x1bc>
    1254:	00000000 	sll	zero,zero,0x0
    1258:	8fc90010 	lw	t1,16(s8)
    125c:	8fc20010 	lw	v0,16(s8)
    1260:	00000000 	sll	zero,zero,0x0
    1264:	000217c3 	sra	v0,v0,0x1f
    1268:	00404021 	addu	t0,v0,zero
    126c:	8fc50064 	lw	a1,100(s8)
    1270:	8fc40060 	lw	a0,96(s8)
    1274:	01251821 	addu	v1,t1,a1
    1278:	0069302b 	sltu	a2,v1,t1
    127c:	01041021 	addu	v0,t0,a0
    1280:	00c22021 	addu	a0,a2,v0
    1284:	00801021 	addu	v0,a0,zero
    1288:	04410018 	bgez	v0,12ec <roundAndPackFloat64+0x1bc>
    128c:	00000000 	sll	zero,zero,0x0
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
    1290:	24040009 	addiu	a0,zero,9
    1294:	0c000000 	jal	0 <shift64RightJamming>
    1298:	00000000 	sll	zero,zero,0x0
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
    129c:	8fc40058 	lw	a0,88(s8)
    12a0:	240507ff 	addiu	a1,zero,2047
    12a4:	00003821 	addu	a3,zero,zero
    12a8:	00003021 	addu	a2,zero,zero
    12ac:	0c000000 	jal	0 <shift64RightJamming>
    12b0:	00000000 	sll	zero,zero,0x0
    12b4:	00602821 	addu	a1,v1,zero
    12b8:	00402021 	addu	a0,v0,zero
    12bc:	8fc20010 	lw	v0,16(s8)
    12c0:	00000000 	sll	zero,zero,0x0
    12c4:	2c420001 	sltiu	v0,v0,1
    12c8:	0040b821 	addu	s7,v0,zero
    12cc:	0000b021 	addu	s6,zero,zero
    12d0:	00b71823 	subu	v1,a1,s7
    12d4:	00a3302b 	sltu	a2,a1,v1
    12d8:	00961023 	subu	v0,a0,s6
    12dc:	00462023 	subu	a0,v0,a2
    12e0:	00801021 	addu	v0,a0,zero
    12e4:	0800051c 	j	1470 <roundAndPackFloat64+0x340>
    12e8:	00000000 	sll	zero,zero,0x0
	}
      if (zExp < 0)
    12ec:	8fc2005c 	lw	v0,92(s8)
    12f0:	00000000 	sll	zero,zero,0x0
    12f4:	0441001e 	bgez	v0,1370 <roundAndPackFloat64+0x240>
    12f8:	00000000 	sll	zero,zero,0x0
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
    12fc:	24020001 	addiu	v0,zero,1
    1300:	afc20020 	sw	v0,32(s8)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
    1304:	8fc30064 	lw	v1,100(s8)
    1308:	8fc20060 	lw	v0,96(s8)
    130c:	8fc4005c 	lw	a0,92(s8)
    1310:	00000000 	sll	zero,zero,0x0
    1314:	00043023 	negu	a2,a0
    1318:	27c70060 	addiu	a3,s8,96
    131c:	00602821 	addu	a1,v1,zero
    1320:	00402021 	addu	a0,v0,zero
    1324:	0c000000 	jal	0 <shift64RightJamming>
    1328:	00000000 	sll	zero,zero,0x0
	  zExp = 0;
    132c:	afc0005c 	sw	zero,92(s8)
	  roundBits = zSig & 0x3FF;
    1330:	8fc30064 	lw	v1,100(s8)
    1334:	8fc20060 	lw	v0,96(s8)
    1338:	00601021 	addu	v0,v1,zero
    133c:	304203ff 	andi	v0,v0,0x3ff
    1340:	afc20014 	sw	v0,20(s8)
	  if (isTiny && roundBits)
    1344:	8fc20020 	lw	v0,32(s8)
    1348:	00000000 	sll	zero,zero,0x0
    134c:	10400008 	beqz	v0,1370 <roundAndPackFloat64+0x240>
    1350:	00000000 	sll	zero,zero,0x0
    1354:	8fc20014 	lw	v0,20(s8)
    1358:	00000000 	sll	zero,zero,0x0
    135c:	10400004 	beqz	v0,1370 <roundAndPackFloat64+0x240>
    1360:	00000000 	sll	zero,zero,0x0
	    float_raise (float_flag_underflow);
    1364:	24040004 	addiu	a0,zero,4
    1368:	0c000000 	jal	0 <shift64RightJamming>
    136c:	00000000 	sll	zero,zero,0x0
	}
    }
  if (roundBits)
    1370:	8fc20014 	lw	v0,20(s8)
    1374:	00000000 	sll	zero,zero,0x0
    1378:	10400005 	beqz	v0,1390 <roundAndPackFloat64+0x260>
    137c:	00000000 	sll	zero,zero,0x0
    float_exception_flags |= float_flag_inexact;
    1380:	8f820000 	lw	v0,0(gp)
    1384:	00000000 	sll	zero,zero,0x0
    1388:	34420001 	ori	v0,v0,0x1
    138c:	af820000 	sw	v0,0(gp)
  zSig = (zSig + roundIncrement) >> 10;
    1390:	8fd30010 	lw	s3,16(s8)
    1394:	8fc20010 	lw	v0,16(s8)
    1398:	00000000 	sll	zero,zero,0x0
    139c:	000217c3 	sra	v0,v0,0x1f
    13a0:	00409021 	addu	s2,v0,zero
    13a4:	8fc50064 	lw	a1,100(s8)
    13a8:	8fc40060 	lw	a0,96(s8)
    13ac:	02651821 	addu	v1,s3,a1
    13b0:	0073302b 	sltu	a2,v1,s3
    13b4:	02441021 	addu	v0,s2,a0
    13b8:	00c22021 	addu	a0,a2,v0
    13bc:	00801021 	addu	v0,a0,zero
    13c0:	00022580 	sll	a0,v0,0x16
    13c4:	00038a82 	srl	s1,v1,0xa
    13c8:	00918825 	or	s1,a0,s1
    13cc:	00028282 	srl	s0,v0,0xa
    13d0:	afd10064 	sw	s1,100(s8)
    13d4:	afd00060 	sw	s0,96(s8)
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
    13d8:	8fc20014 	lw	v0,20(s8)
    13dc:	00000000 	sll	zero,zero,0x0
    13e0:	38420200 	xori	v0,v0,0x200
    13e4:	2c430001 	sltiu	v1,v0,1
    13e8:	8fc2001c 	lw	v0,28(s8)
    13ec:	00000000 	sll	zero,zero,0x0
    13f0:	00621024 	and	v0,v1,v0
    13f4:	00021027 	nor	v0,zero,v0
    13f8:	0040a821 	addu	s5,v0,zero
    13fc:	000217c3 	sra	v0,v0,0x1f
    1400:	0040a021 	addu	s4,v0,zero
    1404:	8fc30064 	lw	v1,100(s8)
    1408:	8fc20060 	lw	v0,96(s8)
    140c:	00000000 	sll	zero,zero,0x0
    1410:	02822024 	and	a0,s4,v0
    1414:	afc40028 	sw	a0,40(s8)
    1418:	02a32024 	and	a0,s5,v1
    141c:	afc4002c 	sw	a0,44(s8)
    1420:	8fc3002c 	lw	v1,44(s8)
    1424:	8fc20028 	lw	v0,40(s8)
    1428:	afc30064 	sw	v1,100(s8)
    142c:	afc20060 	sw	v0,96(s8)
  if (zSig == 0)
    1430:	8fc50064 	lw	a1,100(s8)
    1434:	8fc40060 	lw	a0,96(s8)
    1438:	00000000 	sll	zero,zero,0x0
    143c:	00801021 	addu	v0,a0,zero
    1440:	00451025 	or	v0,v0,a1
    1444:	14400002 	bnez	v0,1450 <roundAndPackFloat64+0x320>
    1448:	00000000 	sll	zero,zero,0x0
    zExp = 0;
    144c:	afc0005c 	sw	zero,92(s8)
  return packFloat64 (zSign, zExp, zSig);
    1450:	8fc30064 	lw	v1,100(s8)
    1454:	8fc20060 	lw	v0,96(s8)
    1458:	8fc40058 	lw	a0,88(s8)
    145c:	8fc5005c 	lw	a1,92(s8)
    1460:	00603821 	addu	a3,v1,zero
    1464:	00403021 	addu	a2,v0,zero
    1468:	0c000000 	jal	0 <shift64RightJamming>
    146c:	00000000 	sll	zero,zero,0x0

}
    1470:	03c0e821 	addu	sp,s8,zero
    1474:	8fbf0054 	lw	ra,84(sp)
    1478:	8fbe0050 	lw	s8,80(sp)
    147c:	8fb7004c 	lw	s7,76(sp)
    1480:	8fb60048 	lw	s6,72(sp)
    1484:	8fb50044 	lw	s5,68(sp)
    1488:	8fb40040 	lw	s4,64(sp)
    148c:	8fb3003c 	lw	s3,60(sp)
    1490:	8fb20038 	lw	s2,56(sp)
    1494:	8fb10034 	lw	s1,52(sp)
    1498:	8fb00030 	lw	s0,48(sp)
    149c:	27bd0058 	addiu	sp,sp,88
    14a0:	03e00008 	jr	ra
    14a4:	00000000 	sll	zero,zero,0x0

000014a8 <float64_div>:
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
    14a8:	27bdff30 	addiu	sp,sp,-208
    14ac:	afbf00cc 	sw	ra,204(sp)
    14b0:	afbe00c8 	sw	s8,200(sp)
    14b4:	afb700c4 	sw	s7,196(sp)
    14b8:	afb600c0 	sw	s6,192(sp)
    14bc:	afb500bc 	sw	s5,188(sp)
    14c0:	afb400b8 	sw	s4,184(sp)
    14c4:	afb300b4 	sw	s3,180(sp)
    14c8:	afb200b0 	sw	s2,176(sp)
    14cc:	afb100ac 	sw	s1,172(sp)
    14d0:	afb000a8 	sw	s0,168(sp)
    14d4:	03a0f021 	addu	s8,sp,zero
    14d8:	afc500d4 	sw	a1,212(s8)
    14dc:	afc400d0 	sw	a0,208(s8)
    14e0:	afc700dc 	sw	a3,220(s8)
    14e4:	afc600d8 	sw	a2,216(s8)
  flag aSign, bSign, zSign;
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  bits64 rem0, rem1, term0, term1;

  aSig = extractFloat64Frac (a);
    14e8:	8fc500d4 	lw	a1,212(s8)
    14ec:	8fc400d0 	lw	a0,208(s8)
    14f0:	0c000000 	jal	0 <shift64RightJamming>
    14f4:	00000000 	sll	zero,zero,0x0
    14f8:	afc30054 	sw	v1,84(s8)
    14fc:	afc20050 	sw	v0,80(s8)
  aExp = extractFloat64Exp (a);
    1500:	8fc500d4 	lw	a1,212(s8)
    1504:	8fc400d0 	lw	a0,208(s8)
    1508:	0c000000 	jal	0 <shift64RightJamming>
    150c:	00000000 	sll	zero,zero,0x0
    1510:	afc20044 	sw	v0,68(s8)
  aSign = extractFloat64Sign (a);
    1514:	8fc500d4 	lw	a1,212(s8)
    1518:	8fc400d0 	lw	a0,208(s8)
    151c:	0c000000 	jal	0 <shift64RightJamming>
    1520:	00000000 	sll	zero,zero,0x0
    1524:	afc20038 	sw	v0,56(s8)
  bSig = extractFloat64Frac (b);
    1528:	8fc500dc 	lw	a1,220(s8)
    152c:	8fc400d8 	lw	a0,216(s8)
    1530:	0c000000 	jal	0 <shift64RightJamming>
    1534:	00000000 	sll	zero,zero,0x0
    1538:	afc3005c 	sw	v1,92(s8)
    153c:	afc20058 	sw	v0,88(s8)
  bExp = extractFloat64Exp (b);
    1540:	8fc500dc 	lw	a1,220(s8)
    1544:	8fc400d8 	lw	a0,216(s8)
    1548:	0c000000 	jal	0 <shift64RightJamming>
    154c:	00000000 	sll	zero,zero,0x0
    1550:	afc20048 	sw	v0,72(s8)
  bSign = extractFloat64Sign (b);
    1554:	8fc500dc 	lw	a1,220(s8)
    1558:	8fc400d8 	lw	a0,216(s8)
    155c:	0c000000 	jal	0 <shift64RightJamming>
    1560:	00000000 	sll	zero,zero,0x0
    1564:	afc2003c 	sw	v0,60(s8)
  zSign = aSign ^ bSign;
    1568:	8fc30038 	lw	v1,56(s8)
    156c:	8fc2003c 	lw	v0,60(s8)
    1570:	00000000 	sll	zero,zero,0x0
    1574:	00621026 	xor	v0,v1,v0
    1578:	afc20040 	sw	v0,64(s8)
  if (aExp == 0x7FF)
    157c:	8fc30044 	lw	v1,68(s8)
    1580:	240207ff 	addiu	v0,zero,2047
    1584:	14620033 	bne	v1,v0,1654 <float64_div+0x1ac>
    1588:	00000000 	sll	zero,zero,0x0
    {
      if (aSig)
    158c:	8fc50054 	lw	a1,84(s8)
    1590:	8fc40050 	lw	a0,80(s8)
    1594:	00000000 	sll	zero,zero,0x0
    1598:	00801021 	addu	v0,a0,zero
    159c:	00451025 	or	v0,v0,a1
    15a0:	10400009 	beqz	v0,15c8 <float64_div+0x120>
    15a4:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    15a8:	8fc500d4 	lw	a1,212(s8)
    15ac:	8fc400d0 	lw	a0,208(s8)
    15b0:	8fc700dc 	lw	a3,220(s8)
    15b4:	8fc600d8 	lw	a2,216(s8)
    15b8:	0c000360 	jal	d80 <propagateFloat64NaN>
    15bc:	00000000 	sll	zero,zero,0x0
    15c0:	080006cd 	j	1b34 <float64_div+0x68c>
    15c4:	00000000 	sll	zero,zero,0x0
      if (bExp == 0x7FF)
    15c8:	8fc30048 	lw	v1,72(s8)
    15cc:	240207ff 	addiu	v0,zero,2047
    15d0:	14620018 	bne	v1,v0,1634 <float64_div+0x18c>
    15d4:	00000000 	sll	zero,zero,0x0
	{
	  if (bSig)
    15d8:	8fc5005c 	lw	a1,92(s8)
    15dc:	8fc40058 	lw	a0,88(s8)
    15e0:	00000000 	sll	zero,zero,0x0
    15e4:	00801021 	addu	v0,a0,zero
    15e8:	00451025 	or	v0,v0,a1
    15ec:	10400009 	beqz	v0,1614 <float64_div+0x16c>
    15f0:	00000000 	sll	zero,zero,0x0
	    return propagateFloat64NaN (a, b);
    15f4:	8fc500d4 	lw	a1,212(s8)
    15f8:	8fc400d0 	lw	a0,208(s8)
    15fc:	8fc700dc 	lw	a3,220(s8)
    1600:	8fc600d8 	lw	a2,216(s8)
    1604:	0c000360 	jal	d80 <propagateFloat64NaN>
    1608:	00000000 	sll	zero,zero,0x0
    160c:	080006cd 	j	1b34 <float64_div+0x68c>
    1610:	00000000 	sll	zero,zero,0x0
	  float_raise (float_flag_invalid);
    1614:	24040010 	addiu	a0,zero,16
    1618:	0c000000 	jal	0 <shift64RightJamming>
    161c:	00000000 	sll	zero,zero,0x0
	  return float64_default_nan;
    1620:	2403ffff 	addiu	v1,zero,-1
    1624:	3c027fff 	lui	v0,0x7fff
    1628:	3442ffff 	ori	v0,v0,0xffff
    162c:	080006cd 	j	1b34 <float64_div+0x68c>
    1630:	00000000 	sll	zero,zero,0x0
	}
      return packFloat64 (zSign, 0x7FF, 0);
    1634:	8fc40040 	lw	a0,64(s8)
    1638:	240507ff 	addiu	a1,zero,2047
    163c:	00003821 	addu	a3,zero,zero
    1640:	00003021 	addu	a2,zero,zero
    1644:	0c000000 	jal	0 <shift64RightJamming>
    1648:	00000000 	sll	zero,zero,0x0
    164c:	080006cd 	j	1b34 <float64_div+0x68c>
    1650:	00000000 	sll	zero,zero,0x0
    }
  if (bExp == 0x7FF)
    1654:	8fc30048 	lw	v1,72(s8)
    1658:	240207ff 	addiu	v0,zero,2047
    165c:	14620018 	bne	v1,v0,16c0 <float64_div+0x218>
    1660:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
    1664:	8fc5005c 	lw	a1,92(s8)
    1668:	8fc40058 	lw	a0,88(s8)
    166c:	00000000 	sll	zero,zero,0x0
    1670:	00801021 	addu	v0,a0,zero
    1674:	00451025 	or	v0,v0,a1
    1678:	10400009 	beqz	v0,16a0 <float64_div+0x1f8>
    167c:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    1680:	8fc500d4 	lw	a1,212(s8)
    1684:	8fc400d0 	lw	a0,208(s8)
    1688:	8fc700dc 	lw	a3,220(s8)
    168c:	8fc600d8 	lw	a2,216(s8)
    1690:	0c000360 	jal	d80 <propagateFloat64NaN>
    1694:	00000000 	sll	zero,zero,0x0
    1698:	080006cd 	j	1b34 <float64_div+0x68c>
    169c:	00000000 	sll	zero,zero,0x0
      return packFloat64 (zSign, 0, 0);
    16a0:	8fc40040 	lw	a0,64(s8)
    16a4:	00002821 	addu	a1,zero,zero
    16a8:	00003821 	addu	a3,zero,zero
    16ac:	00003021 	addu	a2,zero,zero
    16b0:	0c000000 	jal	0 <shift64RightJamming>
    16b4:	00000000 	sll	zero,zero,0x0
    16b8:	080006cd 	j	1b34 <float64_div+0x68c>
    16bc:	00000000 	sll	zero,zero,0x0
    }
  if (bExp == 0)
    16c0:	8fc20048 	lw	v0,72(s8)
    16c4:	00000000 	sll	zero,zero,0x0
    16c8:	14400039 	bnez	v0,17b0 <float64_div+0x308>
    16cc:	00000000 	sll	zero,zero,0x0
    {
      if (bSig == 0)
    16d0:	8fc5005c 	lw	a1,92(s8)
    16d4:	8fc40058 	lw	a0,88(s8)
    16d8:	00000000 	sll	zero,zero,0x0
    16dc:	00801021 	addu	v0,a0,zero
    16e0:	00451025 	or	v0,v0,a1
    16e4:	1440002a 	bnez	v0,1790 <float64_div+0x2e8>
    16e8:	00000000 	sll	zero,zero,0x0
	{
	  if ((aExp | aSig) == 0)
    16ec:	8fc20044 	lw	v0,68(s8)
    16f0:	00000000 	sll	zero,zero,0x0
    16f4:	00401821 	addu	v1,v0,zero
    16f8:	afc30084 	sw	v1,132(s8)
    16fc:	000217c3 	sra	v0,v0,0x1f
    1700:	afc20080 	sw	v0,128(s8)
    1704:	8fc30054 	lw	v1,84(s8)
    1708:	8fc20050 	lw	v0,80(s8)
    170c:	8fc40080 	lw	a0,128(s8)
    1710:	00000000 	sll	zero,zero,0x0
    1714:	00822025 	or	a0,a0,v0
    1718:	afc40088 	sw	a0,136(s8)
    171c:	8fc80084 	lw	t0,132(s8)
    1720:	00000000 	sll	zero,zero,0x0
    1724:	01034025 	or	t0,t0,v1
    1728:	afc8008c 	sw	t0,140(s8)
    172c:	8fc20088 	lw	v0,136(s8)
    1730:	8fc9008c 	lw	t1,140(s8)
    1734:	00000000 	sll	zero,zero,0x0
    1738:	00491025 	or	v0,v0,t1
    173c:	14400009 	bnez	v0,1764 <float64_div+0x2bc>
    1740:	00000000 	sll	zero,zero,0x0
	    {
	      float_raise (float_flag_invalid);
    1744:	24040010 	addiu	a0,zero,16
    1748:	0c000000 	jal	0 <shift64RightJamming>
    174c:	00000000 	sll	zero,zero,0x0
	      return float64_default_nan;
    1750:	2403ffff 	addiu	v1,zero,-1
    1754:	3c027fff 	lui	v0,0x7fff
    1758:	3442ffff 	ori	v0,v0,0xffff
    175c:	080006cd 	j	1b34 <float64_div+0x68c>
    1760:	00000000 	sll	zero,zero,0x0
	    }
	  float_raise (float_flag_divbyzero);
    1764:	24040002 	addiu	a0,zero,2
    1768:	0c000000 	jal	0 <shift64RightJamming>
    176c:	00000000 	sll	zero,zero,0x0
	  return packFloat64 (zSign, 0x7FF, 0);
    1770:	8fc40040 	lw	a0,64(s8)
    1774:	240507ff 	addiu	a1,zero,2047
    1778:	00003821 	addu	a3,zero,zero
    177c:	00003021 	addu	a2,zero,zero
    1780:	0c000000 	jal	0 <shift64RightJamming>
    1784:	00000000 	sll	zero,zero,0x0
    1788:	080006cd 	j	1b34 <float64_div+0x68c>
    178c:	00000000 	sll	zero,zero,0x0
	}
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    1790:	8fc3005c 	lw	v1,92(s8)
    1794:	8fc20058 	lw	v0,88(s8)
    1798:	27c60048 	addiu	a2,s8,72
    179c:	27c70058 	addiu	a3,s8,88
    17a0:	00602821 	addu	a1,v1,zero
    17a4:	00402021 	addu	a0,v0,zero
    17a8:	0c0003e5 	jal	f94 <normalizeFloat64Subnormal>
    17ac:	00000000 	sll	zero,zero,0x0
    }
  if (aExp == 0)
    17b0:	8fc20044 	lw	v0,68(s8)
    17b4:	00000000 	sll	zero,zero,0x0
    17b8:	14400018 	bnez	v0,181c <float64_div+0x374>
    17bc:	00000000 	sll	zero,zero,0x0
    {
      if (aSig == 0)
    17c0:	8fc50054 	lw	a1,84(s8)
    17c4:	8fc40050 	lw	a0,80(s8)
    17c8:	00000000 	sll	zero,zero,0x0
    17cc:	00801021 	addu	v0,a0,zero
    17d0:	00451025 	or	v0,v0,a1
    17d4:	14400009 	bnez	v0,17fc <float64_div+0x354>
    17d8:	00000000 	sll	zero,zero,0x0
	return packFloat64 (zSign, 0, 0);
    17dc:	8fc40040 	lw	a0,64(s8)
    17e0:	00002821 	addu	a1,zero,zero
    17e4:	00003821 	addu	a3,zero,zero
    17e8:	00003021 	addu	a2,zero,zero
    17ec:	0c000000 	jal	0 <shift64RightJamming>
    17f0:	00000000 	sll	zero,zero,0x0
    17f4:	080006cd 	j	1b34 <float64_div+0x68c>
    17f8:	00000000 	sll	zero,zero,0x0
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    17fc:	8fc30054 	lw	v1,84(s8)
    1800:	8fc20050 	lw	v0,80(s8)
    1804:	27c60044 	addiu	a2,s8,68
    1808:	27c70050 	addiu	a3,s8,80
    180c:	00602821 	addu	a1,v1,zero
    1810:	00402021 	addu	a0,v0,zero
    1814:	0c0003e5 	jal	f94 <normalizeFloat64Subnormal>
    1818:	00000000 	sll	zero,zero,0x0
    }
  zExp = aExp - bExp + 0x3FD;
    181c:	8fc30044 	lw	v1,68(s8)
    1820:	8fc20048 	lw	v0,72(s8)
    1824:	00000000 	sll	zero,zero,0x0
    1828:	00621023 	subu	v0,v1,v0
    182c:	244203fd 	addiu	v0,v0,1021
    1830:	afc20028 	sw	v0,40(s8)
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    1834:	8fc30054 	lw	v1,84(s8)
    1838:	8fc20050 	lw	v0,80(s8)
    183c:	3c040010 	lui	a0,0x10
    1840:	00442025 	or	a0,v0,a0
    1844:	afc40090 	sw	a0,144(s8)
    1848:	34640000 	ori	a0,v1,0x0
    184c:	afc40094 	sw	a0,148(s8)
    1850:	8fc80094 	lw	t0,148(s8)
    1854:	00000000 	sll	zero,zero,0x0
    1858:	00081582 	srl	v0,t0,0x16
    185c:	8fc90090 	lw	t1,144(s8)
    1860:	00000000 	sll	zero,zero,0x0
    1864:	00094a80 	sll	t1,t1,0xa
    1868:	afc90098 	sw	t1,152(s8)
    186c:	8fc30098 	lw	v1,152(s8)
    1870:	00000000 	sll	zero,zero,0x0
    1874:	00431825 	or	v1,v0,v1
    1878:	afc30098 	sw	v1,152(s8)
    187c:	8fc40094 	lw	a0,148(s8)
    1880:	00000000 	sll	zero,zero,0x0
    1884:	00042280 	sll	a0,a0,0xa
    1888:	afc4009c 	sw	a0,156(s8)
    188c:	8fc9009c 	lw	t1,156(s8)
    1890:	8fc80098 	lw	t0,152(s8)
    1894:	afc90054 	sw	t1,84(s8)
    1898:	afc80050 	sw	t0,80(s8)
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    189c:	8fc3005c 	lw	v1,92(s8)
    18a0:	8fc20058 	lw	v0,88(s8)
    18a4:	3c040010 	lui	a0,0x10
    18a8:	0044b025 	or	s6,v0,a0
    18ac:	34770000 	ori	s7,v1,0x0
    18b0:	00171542 	srl	v0,s7,0x15
    18b4:	0016a2c0 	sll	s4,s6,0xb
    18b8:	0054a025 	or	s4,v0,s4
    18bc:	0017aac0 	sll	s5,s7,0xb
    18c0:	afd5005c 	sw	s5,92(s8)
    18c4:	afd40058 	sw	s4,88(s8)
  if (bSig <= (aSig + aSig))
    18c8:	8fc50054 	lw	a1,84(s8)
    18cc:	8fc40050 	lw	a0,80(s8)
    18d0:	8fc70054 	lw	a3,84(s8)
    18d4:	8fc60050 	lw	a2,80(s8)
    18d8:	00a71821 	addu	v1,a1,a3
    18dc:	0065402b 	sltu	t0,v1,a1
    18e0:	00861021 	addu	v0,a0,a2
    18e4:	01022021 	addu	a0,t0,v0
    18e8:	00801021 	addu	v0,a0,zero
    18ec:	8fc5005c 	lw	a1,92(s8)
    18f0:	8fc40058 	lw	a0,88(s8)
    18f4:	00000000 	sll	zero,zero,0x0
    18f8:	0044302b 	sltu	a2,v0,a0
    18fc:	14c00014 	bnez	a2,1950 <float64_div+0x4a8>
    1900:	00000000 	sll	zero,zero,0x0
    1904:	00403021 	addu	a2,v0,zero
    1908:	14860004 	bne	a0,a2,191c <float64_div+0x474>
    190c:	00000000 	sll	zero,zero,0x0
    1910:	0065102b 	sltu	v0,v1,a1
    1914:	1440000e 	bnez	v0,1950 <float64_div+0x4a8>
    1918:	00000000 	sll	zero,zero,0x0
    {
      aSig >>= 1;
    191c:	8fc30054 	lw	v1,84(s8)
    1920:	8fc20050 	lw	v0,80(s8)
    1924:	00000000 	sll	zero,zero,0x0
    1928:	000227c0 	sll	a0,v0,0x1f
    192c:	00039842 	srl	s3,v1,0x1
    1930:	00939825 	or	s3,a0,s3
    1934:	00029042 	srl	s2,v0,0x1
    1938:	afd30054 	sw	s3,84(s8)
    193c:	afd20050 	sw	s2,80(s8)
      ++zExp;
    1940:	8fc20028 	lw	v0,40(s8)
    1944:	00000000 	sll	zero,zero,0x0
    1948:	24420001 	addiu	v0,v0,1
    194c:	afc20028 	sw	v0,40(s8)
    }
  zSig = estimateDiv128To64 (aSig, 0, bSig);
    1950:	8fc30054 	lw	v1,84(s8)
    1954:	8fc20050 	lw	v0,80(s8)
    1958:	8fc5005c 	lw	a1,92(s8)
    195c:	8fc40058 	lw	a0,88(s8)
    1960:	afa50014 	sw	a1,20(sp)
    1964:	afa40010 	sw	a0,16(sp)
    1968:	00602821 	addu	a1,v1,zero
    196c:	00402021 	addu	a0,v0,zero
    1970:	00003821 	addu	a3,zero,zero
    1974:	00003021 	addu	a2,zero,zero
    1978:	0c0001e0 	jal	780 <estimateDiv128To64>
    197c:	00000000 	sll	zero,zero,0x0
    1980:	afc30034 	sw	v1,52(s8)
    1984:	afc20030 	sw	v0,48(s8)
  if ((zSig & 0x1FF) <= 2)
    1988:	8fc20030 	lw	v0,48(s8)
    198c:	00000000 	sll	zero,zero,0x0
    1990:	30500000 	andi	s0,v0,0x0
    1994:	8fc20034 	lw	v0,52(s8)
    1998:	00000000 	sll	zero,zero,0x0
    199c:	305101ff 	andi	s1,v0,0x1ff
    19a0:	1600005e 	bnez	s0,1b1c <float64_div+0x674>
    19a4:	00000000 	sll	zero,zero,0x0
    19a8:	16000004 	bnez	s0,19bc <float64_div+0x514>
    19ac:	00000000 	sll	zero,zero,0x0
    19b0:	2e220003 	sltiu	v0,s1,3
    19b4:	10400059 	beqz	v0,1b1c <float64_div+0x674>
    19b8:	00000000 	sll	zero,zero,0x0
    {
      mul64To128 (bSig, zSig, &term0, &term1);
    19bc:	8fc3005c 	lw	v1,92(s8)
    19c0:	8fc20058 	lw	v0,88(s8)
    19c4:	27c40070 	addiu	a0,s8,112
    19c8:	afa40010 	sw	a0,16(sp)
    19cc:	27c40078 	addiu	a0,s8,120
    19d0:	afa40014 	sw	a0,20(sp)
    19d4:	00602821 	addu	a1,v1,zero
    19d8:	00402021 	addu	a0,v0,zero
    19dc:	8fc70034 	lw	a3,52(s8)
    19e0:	8fc60030 	lw	a2,48(s8)
    19e4:	0c000000 	jal	0 <shift64RightJamming>
    19e8:	00000000 	sll	zero,zero,0x0
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
    19ec:	8fc30054 	lw	v1,84(s8)
    19f0:	8fc20050 	lw	v0,80(s8)
    19f4:	8fc70074 	lw	a3,116(s8)
    19f8:	8fc60070 	lw	a2,112(s8)
    19fc:	8fc5007c 	lw	a1,124(s8)
    1a00:	8fc40078 	lw	a0,120(s8)
    1a04:	afa70014 	sw	a3,20(sp)
    1a08:	afa60010 	sw	a2,16(sp)
    1a0c:	afa5001c 	sw	a1,28(sp)
    1a10:	afa40018 	sw	a0,24(sp)
    1a14:	27c40060 	addiu	a0,s8,96
    1a18:	afa40020 	sw	a0,32(sp)
    1a1c:	27c40068 	addiu	a0,s8,104
    1a20:	afa40024 	sw	a0,36(sp)
    1a24:	00602821 	addu	a1,v1,zero
    1a28:	00402021 	addu	a0,v0,zero
    1a2c:	00003821 	addu	a3,zero,zero
    1a30:	00003021 	addu	a2,zero,zero
    1a34:	0c000000 	jal	0 <shift64RightJamming>
    1a38:	00000000 	sll	zero,zero,0x0
      while ((sbits64) rem0 < 0)
    1a3c:	080006b0 	j	1ac0 <float64_div+0x618>
    1a40:	00000000 	sll	zero,zero,0x0
	{
	  --zSig;
    1a44:	8fc50034 	lw	a1,52(s8)
    1a48:	8fc40030 	lw	a0,48(s8)
    1a4c:	2407ffff 	addiu	a3,zero,-1
    1a50:	2406ffff 	addiu	a2,zero,-1
    1a54:	00a71821 	addu	v1,a1,a3
    1a58:	0065402b 	sltu	t0,v1,a1
    1a5c:	00861021 	addu	v0,a0,a2
    1a60:	01022021 	addu	a0,t0,v0
    1a64:	00801021 	addu	v0,a0,zero
    1a68:	afc30034 	sw	v1,52(s8)
    1a6c:	afc20030 	sw	v0,48(s8)
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
    1a70:	8fc50064 	lw	a1,100(s8)
    1a74:	8fc40060 	lw	a0,96(s8)
    1a78:	8fc3006c 	lw	v1,108(s8)
    1a7c:	8fc20068 	lw	v0,104(s8)
    1a80:	8fc7005c 	lw	a3,92(s8)
    1a84:	8fc60058 	lw	a2,88(s8)
    1a88:	00004821 	addu	t1,zero,zero
    1a8c:	00004021 	addu	t0,zero,zero
    1a90:	afa90014 	sw	t1,20(sp)
    1a94:	afa80010 	sw	t0,16(sp)
    1a98:	afa7001c 	sw	a3,28(sp)
    1a9c:	afa60018 	sw	a2,24(sp)
    1aa0:	27c60060 	addiu	a2,s8,96
    1aa4:	afa60020 	sw	a2,32(sp)
    1aa8:	27c60068 	addiu	a2,s8,104
    1aac:	afa60024 	sw	a2,36(sp)
    1ab0:	00603821 	addu	a3,v1,zero
    1ab4:	00403021 	addu	a2,v0,zero
    1ab8:	0c000000 	jal	0 <shift64RightJamming>
    1abc:	00000000 	sll	zero,zero,0x0
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
    {
      mul64To128 (bSig, zSig, &term0, &term1);
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
      while ((sbits64) rem0 < 0)
    1ac0:	8fc30064 	lw	v1,100(s8)
    1ac4:	8fc20060 	lw	v0,96(s8)
    1ac8:	00000000 	sll	zero,zero,0x0
    1acc:	0440ffdd 	bltz	v0,1a44 <float64_div+0x59c>
    1ad0:	00000000 	sll	zero,zero,0x0
	{
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
    1ad4:	8fc3006c 	lw	v1,108(s8)
    1ad8:	8fc20068 	lw	v0,104(s8)
    1adc:	00000000 	sll	zero,zero,0x0
    1ae0:	00431025 	or	v0,v0,v1
    1ae4:	0002102b 	sltu	v0,zero,v0
    1ae8:	afc200a4 	sw	v0,164(s8)
    1aec:	00004821 	addu	t1,zero,zero
    1af0:	afc900a0 	sw	t1,160(s8)
    1af4:	8fc20030 	lw	v0,48(s8)
    1af8:	8fc300a0 	lw	v1,160(s8)
    1afc:	00000000 	sll	zero,zero,0x0
    1b00:	00431025 	or	v0,v0,v1
    1b04:	afc20030 	sw	v0,48(s8)
    1b08:	8fc20034 	lw	v0,52(s8)
    1b0c:	8fc400a4 	lw	a0,164(s8)
    1b10:	00000000 	sll	zero,zero,0x0
    1b14:	00441025 	or	v0,v0,a0
    1b18:	afc20034 	sw	v0,52(s8)
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);
    1b1c:	8fc40040 	lw	a0,64(s8)
    1b20:	8fc50028 	lw	a1,40(s8)
    1b24:	8fc70034 	lw	a3,52(s8)
    1b28:	8fc60030 	lw	a2,48(s8)
    1b2c:	0c00044c 	jal	1130 <roundAndPackFloat64>
    1b30:	00000000 	sll	zero,zero,0x0

}
    1b34:	03c0e821 	addu	sp,s8,zero
    1b38:	8fbf00cc 	lw	ra,204(sp)
    1b3c:	8fbe00c8 	lw	s8,200(sp)
    1b40:	8fb700c4 	lw	s7,196(sp)
    1b44:	8fb600c0 	lw	s6,192(sp)
    1b48:	8fb500bc 	lw	s5,188(sp)
    1b4c:	8fb400b8 	lw	s4,184(sp)
    1b50:	8fb300b4 	lw	s3,180(sp)
    1b54:	8fb200b0 	lw	s2,176(sp)
    1b58:	8fb100ac 	lw	s1,172(sp)
    1b5c:	8fb000a8 	lw	s0,168(sp)
    1b60:	27bd00d0 	addiu	sp,sp,208
    1b64:	03e00008 	jr	ra
    1b68:	00000000 	sll	zero,zero,0x0

00001b6c <ullong_to_double>:
#include <stdio.h>
#include "softfloat.c"

double
ullong_to_double (unsigned long long x)
{
    1b6c:	27bdfff0 	addiu	sp,sp,-16
    1b70:	afbe000c 	sw	s8,12(sp)
    1b74:	03a0f021 	addu	s8,sp,zero
    1b78:	afc50014 	sw	a1,20(s8)
    1b7c:	afc40010 	sw	a0,16(s8)
  {
    double d;
    unsigned long long ll;
  } t;

  t.ll = x;
    1b80:	8fc30014 	lw	v1,20(s8)
    1b84:	8fc20010 	lw	v0,16(s8)
    1b88:	afc30004 	sw	v1,4(s8)
    1b8c:	afc20000 	sw	v0,0(s8)
  return t.d;
    1b90:	c7c00004 	lwc1	$f0,4(s8)
    1b94:	00000000 	sll	zero,zero,0x0
    1b98:	c7c10000 	lwc1	$f1,0(s8)
}
    1b9c:	03c0e821 	addu	sp,s8,zero
    1ba0:	8fbe000c 	lw	s8,12(sp)
    1ba4:	27bd0010 	addiu	sp,sp,16
    1ba8:	03e00008 	jr	ra
    1bac:	00000000 	sll	zero,zero,0x0

00001bb0 <main>:
  0x3FE5555555555555ULL		/* 0.666667 */
};

int
main ()
{
    1bb0:	27bdff88 	addiu	sp,sp,-120
    1bb4:	afbf0074 	sw	ra,116(sp)
    1bb8:	afbe0070 	sw	s8,112(sp)
    1bbc:	afb7006c 	sw	s7,108(sp)
    1bc0:	afb60068 	sw	s6,104(sp)
    1bc4:	afb50064 	sw	s5,100(sp)
    1bc8:	afb40060 	sw	s4,96(sp)
    1bcc:	afb3005c 	sw	s3,92(sp)
    1bd0:	afb20058 	sw	s2,88(sp)
    1bd4:	afb10054 	sw	s1,84(sp)
    1bd8:	afb00050 	sw	s0,80(sp)
    1bdc:	03a0f021 	addu	s8,sp,zero
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
    1be0:	afc00030 	sw	zero,48(s8)
      for (i = 0; i < N; i++)
    1be4:	afc00034 	sw	zero,52(s8)
    1be8:	0800075c 	j	1d70 <main+0x1c0>
    1bec:	00000000 	sll	zero,zero,0x0
	{
	  float64 result;
	  x1 = a_input[i];
    1bf0:	3c020000 	lui	v0,0x0
    1bf4:	8fc30034 	lw	v1,52(s8)
    1bf8:	00000000 	sll	zero,zero,0x0
    1bfc:	000318c0 	sll	v1,v1,0x3
    1c00:	24420000 	addiu	v0,v0,0
    1c04:	00621021 	addu	v0,v1,v0
    1c08:	8c430004 	lw	v1,4(v0)
    1c0c:	8c420000 	lw	v0,0(v0)
    1c10:	afc3003c 	sw	v1,60(s8)
    1c14:	afc20038 	sw	v0,56(s8)
	  x2 = b_input[i];
    1c18:	3c020000 	lui	v0,0x0
    1c1c:	8fc30034 	lw	v1,52(s8)
    1c20:	00000000 	sll	zero,zero,0x0
    1c24:	000318c0 	sll	v1,v1,0x3
    1c28:	24420000 	addiu	v0,v0,0
    1c2c:	00621021 	addu	v0,v1,v0
    1c30:	8c430004 	lw	v1,4(v0)
    1c34:	8c420000 	lw	v0,0(v0)
    1c38:	afc30044 	sw	v1,68(s8)
    1c3c:	afc20040 	sw	v0,64(s8)
	  result = float64_div (x1, x2);
    1c40:	8fc5003c 	lw	a1,60(s8)
    1c44:	8fc40038 	lw	a0,56(s8)
    1c48:	8fc70044 	lw	a3,68(s8)
    1c4c:	8fc60040 	lw	a2,64(s8)
    1c50:	0c000000 	jal	0 <shift64RightJamming>
    1c54:	00000000 	sll	zero,zero,0x0
    1c58:	afc3004c 	sw	v1,76(s8)
    1c5c:	afc20048 	sw	v0,72(s8)
	  main_result += (result != z_output[i]);
    1c60:	3c020000 	lui	v0,0x0
    1c64:	8fc30034 	lw	v1,52(s8)
    1c68:	00000000 	sll	zero,zero,0x0
    1c6c:	000318c0 	sll	v1,v1,0x3
    1c70:	24420000 	addiu	v0,v0,0
    1c74:	00621021 	addu	v0,v1,v0
    1c78:	8c430004 	lw	v1,4(v0)
    1c7c:	8c420000 	lw	v0,0(v0)
    1c80:	8fc40048 	lw	a0,72(s8)
    1c84:	00000000 	sll	zero,zero,0x0
    1c88:	00828026 	xor	s0,a0,v0
    1c8c:	8fc4004c 	lw	a0,76(s8)
    1c90:	00000000 	sll	zero,zero,0x0
    1c94:	00838826 	xor	s1,a0,v1
    1c98:	02111025 	or	v0,s0,s1
    1c9c:	0002102b 	sltu	v0,zero,v0
    1ca0:	8fc30030 	lw	v1,48(s8)
    1ca4:	00000000 	sll	zero,zero,0x0
    1ca8:	00621021 	addu	v0,v1,v0
    1cac:	afc20030 	sw	v0,48(s8)

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
    1cb0:	3c020000 	lui	v0,0x0
    1cb4:	8fc30034 	lw	v1,52(s8)
    1cb8:	00000000 	sll	zero,zero,0x0
    1cbc:	000318c0 	sll	v1,v1,0x3
    1cc0:	24420000 	addiu	v0,v0,0
    1cc4:	00621021 	addu	v0,v1,v0
    1cc8:	8c530004 	lw	s3,4(v0)
    1ccc:	8c520000 	lw	s2,0(v0)
    1cd0:	3c020000 	lui	v0,0x0
    1cd4:	8fc30034 	lw	v1,52(s8)
    1cd8:	00000000 	sll	zero,zero,0x0
    1cdc:	000318c0 	sll	v1,v1,0x3
    1ce0:	24420000 	addiu	v0,v0,0
    1ce4:	00621021 	addu	v0,v1,v0
    1ce8:	8c570004 	lw	s7,4(v0)
    1cec:	8c560000 	lw	s6,0(v0)
    1cf0:	3c020000 	lui	v0,0x0
    1cf4:	8fc30034 	lw	v1,52(s8)
    1cf8:	00000000 	sll	zero,zero,0x0
    1cfc:	000318c0 	sll	v1,v1,0x3
    1d00:	24420000 	addiu	v0,v0,0
    1d04:	00621021 	addu	v0,v1,v0
    1d08:	8c550004 	lw	s5,4(v0)
    1d0c:	8c540000 	lw	s4,0(v0)
    1d10:	8fc5004c 	lw	a1,76(s8)
    1d14:	8fc40048 	lw	a0,72(s8)
    1d18:	0c000000 	jal	0 <shift64RightJamming>
    1d1c:	00000000 	sll	zero,zero,0x0
    1d20:	afb70014 	sw	s7,20(sp)
    1d24:	afb60010 	sw	s6,16(sp)
    1d28:	afb5001c 	sw	s5,28(sp)
    1d2c:	afb40018 	sw	s4,24(sp)
    1d30:	8fc3004c 	lw	v1,76(s8)
    1d34:	8fc20048 	lw	v0,72(s8)
    1d38:	afa30024 	sw	v1,36(sp)
    1d3c:	afa20020 	sw	v0,32(sp)
    1d40:	e7a0002c 	swc1	$f0,44(sp)
    1d44:	e7a10028 	swc1	$f1,40(sp)
    1d48:	3c020000 	lui	v0,0x0
    1d4c:	24440210 	addiu	a0,v0,528
    1d50:	02603821 	addu	a3,s3,zero
    1d54:	02403021 	addu	a2,s2,zero
    1d58:	0c000000 	jal	0 <shift64RightJamming>
    1d5c:	00000000 	sll	zero,zero,0x0
{
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
    1d60:	8fc20034 	lw	v0,52(s8)
    1d64:	00000000 	sll	zero,zero,0x0
    1d68:	24420001 	addiu	v0,v0,1
    1d6c:	afc20034 	sw	v0,52(s8)
    1d70:	8fc20034 	lw	v0,52(s8)
    1d74:	00000000 	sll	zero,zero,0x0
    1d78:	28420016 	slti	v0,v0,22
    1d7c:	1440ff9c 	bnez	v0,1bf0 <main+0x40>
    1d80:	00000000 	sll	zero,zero,0x0
	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     a_input[i], b_input[i], z_output[i], result,
	     ullong_to_double (result));
	}
      printf ("%d\n", main_result);
    1d84:	3c020000 	lui	v0,0x0
    1d88:	24440258 	addiu	a0,v0,600
    1d8c:	8fc50030 	lw	a1,48(s8)
    1d90:	0c000000 	jal	0 <shift64RightJamming>
    1d94:	00000000 	sll	zero,zero,0x0
      return main_result;
    1d98:	8fc20030 	lw	v0,48(s8)
    }
    1d9c:	03c0e821 	addu	sp,s8,zero
    1da0:	8fbf0074 	lw	ra,116(sp)
    1da4:	8fbe0070 	lw	s8,112(sp)
    1da8:	8fb7006c 	lw	s7,108(sp)
    1dac:	8fb60068 	lw	s6,104(sp)
    1db0:	8fb50064 	lw	s5,100(sp)
    1db4:	8fb40060 	lw	s4,96(sp)
    1db8:	8fb3005c 	lw	s3,92(sp)
    1dbc:	8fb20058 	lw	s2,88(sp)
    1dc0:	8fb10054 	lw	s1,84(sp)
    1dc4:	8fb00050 	lw	s0,80(sp)
    1dc8:	27bd0078 	addiu	sp,sp,120
    1dcc:	03e00008 	jr	ra
    1dd0:	00000000 	sll	zero,zero,0x0

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
 210:	615f696e 	0x615f696e
 214:	7075743d 	0x7075743d
 218:	25303136 	addiu	s0,t1,12598
 21c:	6c6c7820 	0x6c6c7820
 220:	625f696e 	0x625f696e
 224:	7075743d 	0x7075743d
 228:	25303136 	addiu	s0,t1,12598
 22c:	6c6c7820 	0x6c6c7820
 230:	65787065 	0x65787065
 234:	63746564 	0x63746564
 238:	3d253031 	0x3d253031
 23c:	366c6c78 	ori	t4,s3,0x6c78
 240:	206f7574 	addi	t7,v1,30068
 244:	7075743d 	0x7075743d
 248:	25303136 	addiu	s0,t1,12598
 24c:	6c6c7820 	0x6c6c7820
 250:	28256c66 	slti	a1,at,27750
 254:	290a0000 	slti	t2,t0,0
 258:	25640a00 	addiu	a0,t3,2560

0000025c <countLeadingZerosHigh.2196>:
 25c:	00000008 	jr	zero
 260:	00000007 	srav	zero,zero,zero
 264:	00000006 	srlv	zero,zero,zero
 268:	00000006 	srlv	zero,zero,zero
 26c:	00000005 	0x5
 270:	00000005 	0x5
 274:	00000005 	0x5
 278:	00000005 	0x5
 27c:	00000004 	sllv	zero,zero,zero
 280:	00000004 	sllv	zero,zero,zero
 284:	00000004 	sllv	zero,zero,zero
 288:	00000004 	sllv	zero,zero,zero
 28c:	00000004 	sllv	zero,zero,zero
 290:	00000004 	sllv	zero,zero,zero
 294:	00000004 	sllv	zero,zero,zero
 298:	00000004 	sllv	zero,zero,zero
 29c:	00000003 	sra	zero,zero,0x0
 2a0:	00000003 	sra	zero,zero,0x0
 2a4:	00000003 	sra	zero,zero,0x0
 2a8:	00000003 	sra	zero,zero,0x0
 2ac:	00000003 	sra	zero,zero,0x0
 2b0:	00000003 	sra	zero,zero,0x0
 2b4:	00000003 	sra	zero,zero,0x0
 2b8:	00000003 	sra	zero,zero,0x0
 2bc:	00000003 	sra	zero,zero,0x0
 2c0:	00000003 	sra	zero,zero,0x0
 2c4:	00000003 	sra	zero,zero,0x0
 2c8:	00000003 	sra	zero,zero,0x0
 2cc:	00000003 	sra	zero,zero,0x0
 2d0:	00000003 	sra	zero,zero,0x0
 2d4:	00000003 	sra	zero,zero,0x0
 2d8:	00000003 	sra	zero,zero,0x0
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
 340:	00000002 	srl	zero,zero,0x0
 344:	00000002 	srl	zero,zero,0x0
 348:	00000002 	srl	zero,zero,0x0
 34c:	00000002 	srl	zero,zero,0x0
 350:	00000002 	srl	zero,zero,0x0
 354:	00000002 	srl	zero,zero,0x0
 358:	00000002 	srl	zero,zero,0x0
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
 440:	00000001 	0x1
 444:	00000001 	0x1
 448:	00000001 	0x1
 44c:	00000001 	0x1
 450:	00000001 	0x1
 454:	00000001 	0x1
 458:	00000001 	0x1
	...
