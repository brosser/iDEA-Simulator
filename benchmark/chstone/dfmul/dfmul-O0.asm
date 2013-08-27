
dfmul.o:     file format elf32-bigmips


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

0000019c <mul64To128>:
| `z0Ptr' and `z1Ptr'.
*----------------------------------------------------------------------------*/

INLINE void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
     19c:	27bdffa0 	addiu	sp,sp,-96
     1a0:	afbe005c 	sw	s8,92(sp)
     1a4:	afb70058 	sw	s7,88(sp)
     1a8:	afb60054 	sw	s6,84(sp)
     1ac:	afb50050 	sw	s5,80(sp)
     1b0:	afb4004c 	sw	s4,76(sp)
     1b4:	afb30048 	sw	s3,72(sp)
     1b8:	afb20044 	sw	s2,68(sp)
     1bc:	afb10040 	sw	s1,64(sp)
     1c0:	afb0003c 	sw	s0,60(sp)
     1c4:	03a0f021 	addu	s8,sp,zero
     1c8:	afc50064 	sw	a1,100(s8)
     1cc:	afc40060 	sw	a0,96(s8)
     1d0:	afc7006c 	sw	a3,108(s8)
     1d4:	afc60068 	sw	a2,104(s8)
  bits32 aHigh, aLow, bHigh, bLow;
  bits64 z0, zMiddleA, zMiddleB, z1;

  aLow = a;
     1d8:	8fc40064 	lw	a0,100(s8)
     1dc:	00000000 	sll	zero,zero,0x0
     1e0:	afc40000 	sw	a0,0(s8)
  aHigh = a >> 32;
     1e4:	8fc40060 	lw	a0,96(s8)
     1e8:	00000000 	sll	zero,zero,0x0
     1ec:	00042002 	srl	a0,a0,0x0
     1f0:	afc40034 	sw	a0,52(s8)
     1f4:	00001021 	addu	v0,zero,zero
     1f8:	afc20030 	sw	v0,48(s8)
     1fc:	8fc20034 	lw	v0,52(s8)
     200:	00000000 	sll	zero,zero,0x0
     204:	afc20004 	sw	v0,4(s8)
  bLow = b;
     208:	8fc4006c 	lw	a0,108(s8)
     20c:	00000000 	sll	zero,zero,0x0
     210:	afc40008 	sw	a0,8(s8)
  bHigh = b >> 32;
     214:	8fc40068 	lw	a0,104(s8)
     218:	00000000 	sll	zero,zero,0x0
     21c:	0004b802 	srl	s7,a0,0x0
     220:	0000b021 	addu	s6,zero,zero
     224:	afd7000c 	sw	s7,12(s8)
  z1 = ((bits64) aLow) * bLow;
     228:	8fd50000 	lw	s5,0(s8)
     22c:	0000a021 	addu	s4,zero,zero
     230:	8fc30008 	lw	v1,8(s8)
     234:	00001021 	addu	v0,zero,zero
     238:	02830018 	mult	s4,v1
     23c:	00002012 	mflo	a0
	...
     248:	00550018 	mult	v0,s5
     24c:	00002812 	mflo	a1
     250:	00852021 	addu	a0,a0,a1
     254:	00000000 	sll	zero,zero,0x0
     258:	02a30019 	multu	s5,v1
     25c:	00001812 	mflo	v1
     260:	00001010 	mfhi	v0
     264:	00822021 	addu	a0,a0,v0
     268:	00801021 	addu	v0,a0,zero
     26c:	afc30014 	sw	v1,20(s8)
     270:	afc20010 	sw	v0,16(s8)
     274:	afc30014 	sw	v1,20(s8)
     278:	afc20010 	sw	v0,16(s8)
  zMiddleA = ((bits64) aLow) * bHigh;
     27c:	8fd30000 	lw	s3,0(s8)
     280:	00009021 	addu	s2,zero,zero
     284:	8fd1000c 	lw	s1,12(s8)
     288:	00008021 	addu	s0,zero,zero
     28c:	02510018 	mult	s2,s1
     290:	00002012 	mflo	a0
	...
     29c:	02130018 	mult	s0,s3
     2a0:	00001012 	mflo	v0
     2a4:	00822021 	addu	a0,a0,v0
     2a8:	00000000 	sll	zero,zero,0x0
     2ac:	02710019 	multu	s3,s1
     2b0:	00001812 	mflo	v1
     2b4:	00001010 	mfhi	v0
     2b8:	00822021 	addu	a0,a0,v0
     2bc:	00801021 	addu	v0,a0,zero
     2c0:	afc3001c 	sw	v1,28(s8)
     2c4:	afc20018 	sw	v0,24(s8)
     2c8:	afc3001c 	sw	v1,28(s8)
     2cc:	afc20018 	sw	v0,24(s8)
  zMiddleB = ((bits64) aHigh) * bLow;
     2d0:	8fd90004 	lw	t9,4(s8)
     2d4:	0000c021 	addu	t8,zero,zero
     2d8:	8fcf0008 	lw	t7,8(s8)
     2dc:	00007021 	addu	t6,zero,zero
     2e0:	030f0018 	mult	t8,t7
     2e4:	00002012 	mflo	a0
	...
     2f0:	01d90018 	mult	t6,t9
     2f4:	00001012 	mflo	v0
     2f8:	00822021 	addu	a0,a0,v0
     2fc:	00000000 	sll	zero,zero,0x0
     300:	032f0019 	multu	t9,t7
     304:	00001812 	mflo	v1
     308:	00001010 	mfhi	v0
     30c:	00822021 	addu	a0,a0,v0
     310:	00801021 	addu	v0,a0,zero
     314:	afc30024 	sw	v1,36(s8)
     318:	afc20020 	sw	v0,32(s8)
     31c:	afc30024 	sw	v1,36(s8)
     320:	afc20020 	sw	v0,32(s8)
  z0 = ((bits64) aHigh) * bHigh;
     324:	8fcd0004 	lw	t5,4(s8)
     328:	00006021 	addu	t4,zero,zero
     32c:	8fcb000c 	lw	t3,12(s8)
     330:	00005021 	addu	t2,zero,zero
     334:	018b0018 	mult	t4,t3
     338:	00002012 	mflo	a0
	...
     344:	014d0018 	mult	t2,t5
     348:	00001012 	mflo	v0
     34c:	00822021 	addu	a0,a0,v0
     350:	00000000 	sll	zero,zero,0x0
     354:	01ab0019 	multu	t5,t3
     358:	00001812 	mflo	v1
     35c:	00001010 	mfhi	v0
     360:	00822021 	addu	a0,a0,v0
     364:	00801021 	addu	v0,a0,zero
     368:	afc3002c 	sw	v1,44(s8)
     36c:	afc20028 	sw	v0,40(s8)
     370:	afc3002c 	sw	v1,44(s8)
     374:	afc20028 	sw	v0,40(s8)
  zMiddleA += zMiddleB;
     378:	8fc5001c 	lw	a1,28(s8)
     37c:	8fc40018 	lw	a0,24(s8)
     380:	8fc70024 	lw	a3,36(s8)
     384:	8fc60020 	lw	a2,32(s8)
     388:	00a71821 	addu	v1,a1,a3
     38c:	0065502b 	sltu	t2,v1,a1
     390:	00861021 	addu	v0,a0,a2
     394:	01422021 	addu	a0,t2,v0
     398:	00801021 	addu	v0,a0,zero
     39c:	afc3001c 	sw	v1,28(s8)
     3a0:	afc20018 	sw	v0,24(s8)
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     3a4:	8fc30020 	lw	v1,32(s8)
     3a8:	8fc20018 	lw	v0,24(s8)
     3ac:	00000000 	sll	zero,zero,0x0
     3b0:	0043102b 	sltu	v0,v0,v1
     3b4:	1440000c 	bnez	v0,3e8 <mul64To128+0x24c>
     3b8:	00000000 	sll	zero,zero,0x0
     3bc:	8fc30020 	lw	v1,32(s8)
     3c0:	8fc20018 	lw	v0,24(s8)
     3c4:	00000000 	sll	zero,zero,0x0
     3c8:	1462000b 	bne	v1,v0,3f8 <mul64To128+0x25c>
     3cc:	00000000 	sll	zero,zero,0x0
     3d0:	8fc30024 	lw	v1,36(s8)
     3d4:	8fc2001c 	lw	v0,28(s8)
     3d8:	00000000 	sll	zero,zero,0x0
     3dc:	0043102b 	sltu	v0,v0,v1
     3e0:	10400005 	beqz	v0,3f8 <mul64To128+0x25c>
     3e4:	00000000 	sll	zero,zero,0x0
     3e8:	00002821 	addu	a1,zero,zero
     3ec:	24040001 	addiu	a0,zero,1
     3f0:	08000100 	j	400 <mul64To128+0x264>
     3f4:	00000000 	sll	zero,zero,0x0
     3f8:	00002821 	addu	a1,zero,zero
     3fc:	00002021 	addu	a0,zero,zero
     400:	8fc20018 	lw	v0,24(s8)
     404:	00000000 	sll	zero,zero,0x0
     408:	00024802 	srl	t1,v0,0x0
     40c:	00004021 	addu	t0,zero,zero
     410:	00a91821 	addu	v1,a1,t1
     414:	0065302b 	sltu	a2,v1,a1
     418:	00881021 	addu	v0,a0,t0
     41c:	00c22021 	addu	a0,a2,v0
     420:	00801021 	addu	v0,a0,zero
     424:	00603821 	addu	a3,v1,zero
     428:	00403021 	addu	a2,v0,zero
     42c:	8fc5002c 	lw	a1,44(s8)
     430:	8fc40028 	lw	a0,40(s8)
     434:	00a71821 	addu	v1,a1,a3
     438:	0065402b 	sltu	t0,v1,a1
     43c:	00861021 	addu	v0,a0,a2
     440:	01022021 	addu	a0,t0,v0
     444:	00801021 	addu	v0,a0,zero
     448:	afc3002c 	sw	v1,44(s8)
     44c:	afc20028 	sw	v0,40(s8)
  zMiddleA <<= 32;
     450:	8fc2001c 	lw	v0,28(s8)
     454:	00000000 	sll	zero,zero,0x0
     458:	00021000 	sll	v0,v0,0x0
     45c:	afc20018 	sw	v0,24(s8)
     460:	afc0001c 	sw	zero,28(s8)
  z1 += zMiddleA;
     464:	8fc50014 	lw	a1,20(s8)
     468:	8fc40010 	lw	a0,16(s8)
     46c:	8fc7001c 	lw	a3,28(s8)
     470:	8fc60018 	lw	a2,24(s8)
     474:	00a71821 	addu	v1,a1,a3
     478:	0065402b 	sltu	t0,v1,a1
     47c:	00861021 	addu	v0,a0,a2
     480:	01022021 	addu	a0,t0,v0
     484:	00801021 	addu	v0,a0,zero
     488:	afc30014 	sw	v1,20(s8)
     48c:	afc20010 	sw	v0,16(s8)
  z0 += (z1 < zMiddleA);
     490:	24050001 	addiu	a1,zero,1
     494:	00002021 	addu	a0,zero,zero
     498:	8fc30018 	lw	v1,24(s8)
     49c:	8fc20010 	lw	v0,16(s8)
     4a0:	00000000 	sll	zero,zero,0x0
     4a4:	0043102b 	sltu	v0,v0,v1
     4a8:	1440000e 	bnez	v0,4e4 <mul64To128+0x348>
     4ac:	00000000 	sll	zero,zero,0x0
     4b0:	8fc30018 	lw	v1,24(s8)
     4b4:	8fc20010 	lw	v0,16(s8)
     4b8:	00000000 	sll	zero,zero,0x0
     4bc:	14620007 	bne	v1,v0,4dc <mul64To128+0x340>
     4c0:	00000000 	sll	zero,zero,0x0
     4c4:	8fc3001c 	lw	v1,28(s8)
     4c8:	8fc20014 	lw	v0,20(s8)
     4cc:	00000000 	sll	zero,zero,0x0
     4d0:	0043102b 	sltu	v0,v0,v1
     4d4:	14400003 	bnez	v0,4e4 <mul64To128+0x348>
     4d8:	00000000 	sll	zero,zero,0x0
     4dc:	00002821 	addu	a1,zero,zero
     4e0:	00002021 	addu	a0,zero,zero
     4e4:	8fc7002c 	lw	a3,44(s8)
     4e8:	8fc60028 	lw	a2,40(s8)
     4ec:	00e51821 	addu	v1,a3,a1
     4f0:	0067402b 	sltu	t0,v1,a3
     4f4:	00c41021 	addu	v0,a2,a0
     4f8:	01022021 	addu	a0,t0,v0
     4fc:	00801021 	addu	v0,a0,zero
     500:	afc3002c 	sw	v1,44(s8)
     504:	afc20028 	sw	v0,40(s8)
  *z1Ptr = z1;
     508:	8fc40074 	lw	a0,116(s8)
     50c:	8fc30014 	lw	v1,20(s8)
     510:	8fc20010 	lw	v0,16(s8)
     514:	ac830004 	sw	v1,4(a0)
     518:	ac820000 	sw	v0,0(a0)
  *z0Ptr = z0;
     51c:	8fc40070 	lw	a0,112(s8)
     520:	8fc3002c 	lw	v1,44(s8)
     524:	8fc20028 	lw	v0,40(s8)
     528:	ac830004 	sw	v1,4(a0)
     52c:	ac820000 	sw	v0,0(a0)

}
     530:	03c0e821 	addu	sp,s8,zero
     534:	8fbe005c 	lw	s8,92(sp)
     538:	8fb70058 	lw	s7,88(sp)
     53c:	8fb60054 	lw	s6,84(sp)
     540:	8fb50050 	lw	s5,80(sp)
     544:	8fb4004c 	lw	s4,76(sp)
     548:	8fb30048 	lw	s3,72(sp)
     54c:	8fb20044 	lw	s2,68(sp)
     550:	8fb10040 	lw	s1,64(sp)
     554:	8fb0003c 	lw	s0,60(sp)
     558:	27bd0060 	addiu	sp,sp,96
     55c:	03e00008 	jr	ra
     560:	00000000 	sll	zero,zero,0x0

00000564 <countLeadingZeros32>:
| `a'.  If `a' is zero, 32 is returned.
*----------------------------------------------------------------------------*/

static int8
countLeadingZeros32 (bits32 a)
{
     564:	27bdfff0 	addiu	sp,sp,-16
     568:	afbe000c 	sw	s8,12(sp)
     56c:	03a0f021 	addu	s8,sp,zero
     570:	afc40010 	sw	a0,16(s8)
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
     574:	afc00000 	sw	zero,0(s8)
  if (a < 0x10000)
     578:	8fc30010 	lw	v1,16(s8)
     57c:	3c020001 	lui	v0,0x1
     580:	0062102b 	sltu	v0,v1,v0
     584:	10400009 	beqz	v0,5ac <countLeadingZeros32+0x48>
     588:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 16;
     58c:	8fc20000 	lw	v0,0(s8)
     590:	00000000 	sll	zero,zero,0x0
     594:	24420010 	addiu	v0,v0,16
     598:	afc20000 	sw	v0,0(s8)
      a <<= 16;
     59c:	8fc20010 	lw	v0,16(s8)
     5a0:	00000000 	sll	zero,zero,0x0
     5a4:	00021400 	sll	v0,v0,0x10
     5a8:	afc20010 	sw	v0,16(s8)
    }
  if (a < 0x1000000)
     5ac:	8fc30010 	lw	v1,16(s8)
     5b0:	3c020100 	lui	v0,0x100
     5b4:	0062102b 	sltu	v0,v1,v0
     5b8:	10400009 	beqz	v0,5e0 <countLeadingZeros32+0x7c>
     5bc:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
     5c0:	8fc20000 	lw	v0,0(s8)
     5c4:	00000000 	sll	zero,zero,0x0
     5c8:	24420008 	addiu	v0,v0,8
     5cc:	afc20000 	sw	v0,0(s8)
      a <<= 8;
     5d0:	8fc20010 	lw	v0,16(s8)
     5d4:	00000000 	sll	zero,zero,0x0
     5d8:	00021200 	sll	v0,v0,0x8
     5dc:	afc20010 	sw	v0,16(s8)
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
     5e0:	8fc20010 	lw	v0,16(s8)
     5e4:	00000000 	sll	zero,zero,0x0
     5e8:	00021e02 	srl	v1,v0,0x18
     5ec:	3c020000 	lui	v0,0x0
     5f0:	00031880 	sll	v1,v1,0x2
     5f4:	2442022c 	addiu	v0,v0,556
     5f8:	00621021 	addu	v0,v1,v0
     5fc:	8c420000 	lw	v0,0(v0)
     600:	8fc30000 	lw	v1,0(s8)
     604:	00000000 	sll	zero,zero,0x0
     608:	00621021 	addu	v0,v1,v0
     60c:	afc20000 	sw	v0,0(s8)
  return shiftCount;
     610:	8fc20000 	lw	v0,0(s8)

}
     614:	03c0e821 	addu	sp,s8,zero
     618:	8fbe000c 	lw	s8,12(sp)
     61c:	27bd0010 	addiu	sp,sp,16
     620:	03e00008 	jr	ra
     624:	00000000 	sll	zero,zero,0x0

00000628 <countLeadingZeros64>:
| `a'.  If `a' is zero, 64 is returned.
*----------------------------------------------------------------------------*/

static int8
countLeadingZeros64 (bits64 a)
{
     628:	27bdffe0 	addiu	sp,sp,-32
     62c:	afbf001c 	sw	ra,28(sp)
     630:	afbe0018 	sw	s8,24(sp)
     634:	03a0f021 	addu	s8,sp,zero
     638:	afc50024 	sw	a1,36(s8)
     63c:	afc40020 	sw	a0,32(s8)
  int8 shiftCount;

  shiftCount = 0;
     640:	afc00010 	sw	zero,16(s8)
  if (a < ((bits64) 1) << 32)
     644:	8fc20020 	lw	v0,32(s8)
     648:	00000000 	sll	zero,zero,0x0
     64c:	14400007 	bnez	v0,66c <countLeadingZeros64+0x44>
     650:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 32;
     654:	8fc20010 	lw	v0,16(s8)
     658:	00000000 	sll	zero,zero,0x0
     65c:	24420020 	addiu	v0,v0,32
     660:	afc20010 	sw	v0,16(s8)
     664:	080001a0 	j	680 <countLeadingZeros64+0x58>
     668:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      a >>= 32;
     66c:	8fc20020 	lw	v0,32(s8)
     670:	00000000 	sll	zero,zero,0x0
     674:	00021002 	srl	v0,v0,0x0
     678:	afc20024 	sw	v0,36(s8)
     67c:	afc00020 	sw	zero,32(s8)
    }
  shiftCount += countLeadingZeros32 (a);
     680:	8fc20024 	lw	v0,36(s8)
     684:	00000000 	sll	zero,zero,0x0
     688:	00402021 	addu	a0,v0,zero
     68c:	0c000159 	jal	564 <countLeadingZeros32>
     690:	00000000 	sll	zero,zero,0x0
     694:	8fc30010 	lw	v1,16(s8)
     698:	00000000 	sll	zero,zero,0x0
     69c:	00621021 	addu	v0,v1,v0
     6a0:	afc20010 	sw	v0,16(s8)
  return shiftCount;
     6a4:	8fc20010 	lw	v0,16(s8)

}
     6a8:	03c0e821 	addu	sp,s8,zero
     6ac:	8fbf001c 	lw	ra,28(sp)
     6b0:	8fbe0018 	lw	s8,24(sp)
     6b4:	27bd0020 	addiu	sp,sp,32
     6b8:	03e00008 	jr	ra
     6bc:	00000000 	sll	zero,zero,0x0

000006c0 <float_raise>:
| should be simply `float_exception_flags |= flags;'.
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
     6c0:	27bdfff8 	addiu	sp,sp,-8
     6c4:	afbe0004 	sw	s8,4(sp)
     6c8:	03a0f021 	addu	s8,sp,zero
     6cc:	afc40008 	sw	a0,8(s8)
  float_exception_flags |= flags;
     6d0:	8f830000 	lw	v1,0(gp)
     6d4:	8fc20008 	lw	v0,8(s8)
     6d8:	00000000 	sll	zero,zero,0x0
     6dc:	00621025 	or	v0,v1,v0
     6e0:	af820000 	sw	v0,0(gp)

}
     6e4:	03c0e821 	addu	sp,s8,zero
     6e8:	8fbe0004 	lw	s8,4(sp)
     6ec:	27bd0008 	addiu	sp,sp,8
     6f0:	03e00008 	jr	ra
     6f4:	00000000 	sll	zero,zero,0x0

000006f8 <float64_is_nan>:
| otherwise returns 0.
*----------------------------------------------------------------------------*/

flag
float64_is_nan (float64 a)
{
     6f8:	27bdfff8 	addiu	sp,sp,-8
     6fc:	afbe0004 	sw	s8,4(sp)
     700:	03a0f021 	addu	s8,sp,zero
     704:	afc5000c 	sw	a1,12(s8)
     708:	afc40008 	sw	a0,8(s8)

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     70c:	8fc4000c 	lw	a0,12(s8)
     710:	00000000 	sll	zero,zero,0x0
     714:	000427c2 	srl	a0,a0,0x1f
     718:	8fc50008 	lw	a1,8(s8)
     71c:	00000000 	sll	zero,zero,0x0
     720:	00051040 	sll	v0,a1,0x1
     724:	00821025 	or	v0,a0,v0
     728:	8fc4000c 	lw	a0,12(s8)
     72c:	00000000 	sll	zero,zero,0x0
     730:	00041840 	sll	v1,a0,0x1
     734:	24040001 	addiu	a0,zero,1
     738:	3c05ffe0 	lui	a1,0xffe0
     73c:	34a50001 	ori	a1,a1,0x1
     740:	0045282b 	sltu	a1,v0,a1
     744:	10a00007 	beqz	a1,764 <float64_is_nan+0x6c>
     748:	00000000 	sll	zero,zero,0x0
     74c:	3c05ffe0 	lui	a1,0xffe0
     750:	14450003 	bne	v0,a1,760 <float64_is_nan+0x68>
     754:	00000000 	sll	zero,zero,0x0
     758:	14600002 	bnez	v1,764 <float64_is_nan+0x6c>
     75c:	00000000 	sll	zero,zero,0x0
     760:	00002021 	addu	a0,zero,zero
     764:	00801021 	addu	v0,a0,zero

}
     768:	03c0e821 	addu	sp,s8,zero
     76c:	8fbe0004 	lw	s8,4(sp)
     770:	27bd0008 	addiu	sp,sp,8
     774:	03e00008 	jr	ra
     778:	00000000 	sll	zero,zero,0x0

0000077c <float64_is_signaling_nan>:
| NaN; otherwise returns 0.
*----------------------------------------------------------------------------*/

flag
float64_is_signaling_nan (float64 a)
{
     77c:	27bdfff8 	addiu	sp,sp,-8
     780:	afbe0004 	sw	s8,4(sp)
     784:	03a0f021 	addu	s8,sp,zero
     788:	afc5000c 	sw	a1,12(s8)
     78c:	afc40008 	sw	a0,8(s8)

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     790:	8fc40008 	lw	a0,8(s8)
     794:	00000000 	sll	zero,zero,0x0
     798:	00044cc2 	srl	t1,a0,0x13
     79c:	00004021 	addu	t0,zero,zero
     7a0:	31060000 	andi	a2,t0,0x0
     7a4:	31270fff 	andi	a3,t1,0xfff
     7a8:	14c00012 	bnez	a2,7f4 <float64_is_signaling_nan+0x78>
     7ac:	00000000 	sll	zero,zero,0x0
     7b0:	24040ffe 	addiu	a0,zero,4094
     7b4:	14e4000f 	bne	a3,a0,7f4 <float64_is_signaling_nan+0x78>
     7b8:	00000000 	sll	zero,zero,0x0
     7bc:	8fc50008 	lw	a1,8(s8)
     7c0:	3c040007 	lui	a0,0x7
     7c4:	3484ffff 	ori	a0,a0,0xffff
     7c8:	00a41024 	and	v0,a1,a0
     7cc:	8fc5000c 	lw	a1,12(s8)
     7d0:	2404ffff 	addiu	a0,zero,-1
     7d4:	00a41824 	and	v1,a1,a0
     7d8:	00402021 	addu	a0,v0,zero
     7dc:	00832025 	or	a0,a0,v1
     7e0:	10800004 	beqz	a0,7f4 <float64_is_signaling_nan+0x78>
     7e4:	00000000 	sll	zero,zero,0x0
     7e8:	24020001 	addiu	v0,zero,1
     7ec:	080001fe 	j	7f8 <float64_is_signaling_nan+0x7c>
     7f0:	00000000 	sll	zero,zero,0x0
     7f4:	00001021 	addu	v0,zero,zero

}
     7f8:	03c0e821 	addu	sp,s8,zero
     7fc:	8fbe0004 	lw	s8,4(sp)
     800:	27bd0008 	addiu	sp,sp,8
     804:	03e00008 	jr	ra
     808:	00000000 	sll	zero,zero,0x0

0000080c <propagateFloat64NaN>:
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/

static float64
propagateFloat64NaN (float64 a, float64 b)
{
     80c:	27bdffd8 	addiu	sp,sp,-40
     810:	afbf0024 	sw	ra,36(sp)
     814:	afbe0020 	sw	s8,32(sp)
     818:	03a0f021 	addu	s8,sp,zero
     81c:	afc5002c 	sw	a1,44(s8)
     820:	afc40028 	sw	a0,40(s8)
     824:	afc70034 	sw	a3,52(s8)
     828:	afc60030 	sw	a2,48(s8)
  flag aIsNaN, aIsSignalingNaN, bIsNaN, bIsSignalingNaN;

  aIsNaN = float64_is_nan (a);
     82c:	8fc5002c 	lw	a1,44(s8)
     830:	8fc40028 	lw	a0,40(s8)
     834:	0c000000 	jal	0 <shift64RightJamming>
     838:	00000000 	sll	zero,zero,0x0
     83c:	afc20010 	sw	v0,16(s8)
  aIsSignalingNaN = float64_is_signaling_nan (a);
     840:	8fc5002c 	lw	a1,44(s8)
     844:	8fc40028 	lw	a0,40(s8)
     848:	0c000000 	jal	0 <shift64RightJamming>
     84c:	00000000 	sll	zero,zero,0x0
     850:	afc20014 	sw	v0,20(s8)
  bIsNaN = float64_is_nan (b);
     854:	8fc50034 	lw	a1,52(s8)
     858:	8fc40030 	lw	a0,48(s8)
     85c:	0c000000 	jal	0 <shift64RightJamming>
     860:	00000000 	sll	zero,zero,0x0
     864:	afc20018 	sw	v0,24(s8)
  bIsSignalingNaN = float64_is_signaling_nan (b);
     868:	8fc50034 	lw	a1,52(s8)
     86c:	8fc40030 	lw	a0,48(s8)
     870:	0c000000 	jal	0 <shift64RightJamming>
     874:	00000000 	sll	zero,zero,0x0
     878:	afc2001c 	sw	v0,28(s8)
  a |= LIT64 (0x0008000000000000);
     87c:	8fc30028 	lw	v1,40(s8)
     880:	3c020008 	lui	v0,0x8
     884:	00621025 	or	v0,v1,v0
     888:	afc20028 	sw	v0,40(s8)
     88c:	8fc2002c 	lw	v0,44(s8)
     890:	00000000 	sll	zero,zero,0x0
     894:	34420000 	ori	v0,v0,0x0
     898:	afc2002c 	sw	v0,44(s8)
  b |= LIT64 (0x0008000000000000);
     89c:	8fc30030 	lw	v1,48(s8)
     8a0:	3c020008 	lui	v0,0x8
     8a4:	00621025 	or	v0,v1,v0
     8a8:	afc20030 	sw	v0,48(s8)
     8ac:	8fc20034 	lw	v0,52(s8)
     8b0:	00000000 	sll	zero,zero,0x0
     8b4:	34420000 	ori	v0,v0,0x0
     8b8:	afc20034 	sw	v0,52(s8)
  if (aIsSignalingNaN | bIsSignalingNaN)
     8bc:	8fc30014 	lw	v1,20(s8)
     8c0:	8fc2001c 	lw	v0,28(s8)
     8c4:	00000000 	sll	zero,zero,0x0
     8c8:	00621025 	or	v0,v1,v0
     8cc:	10400004 	beqz	v0,8e0 <propagateFloat64NaN+0xd4>
     8d0:	00000000 	sll	zero,zero,0x0
    float_raise (float_flag_invalid);
     8d4:	24040010 	addiu	a0,zero,16
     8d8:	0c000000 	jal	0 <shift64RightJamming>
     8dc:	00000000 	sll	zero,zero,0x0
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
     8e0:	8fc2001c 	lw	v0,28(s8)
     8e4:	00000000 	sll	zero,zero,0x0
     8e8:	14400015 	bnez	v0,940 <propagateFloat64NaN+0x134>
     8ec:	00000000 	sll	zero,zero,0x0
     8f0:	8fc20014 	lw	v0,20(s8)
     8f4:	00000000 	sll	zero,zero,0x0
     8f8:	1440000d 	bnez	v0,930 <propagateFloat64NaN+0x124>
     8fc:	00000000 	sll	zero,zero,0x0
     900:	8fc20018 	lw	v0,24(s8)
     904:	00000000 	sll	zero,zero,0x0
     908:	10400005 	beqz	v0,920 <propagateFloat64NaN+0x114>
     90c:	00000000 	sll	zero,zero,0x0
     910:	8fc30034 	lw	v1,52(s8)
     914:	8fc20030 	lw	v0,48(s8)
     918:	0800024a 	j	928 <propagateFloat64NaN+0x11c>
     91c:	00000000 	sll	zero,zero,0x0
     920:	8fc3002c 	lw	v1,44(s8)
     924:	8fc20028 	lw	v0,40(s8)
     928:	0800024e 	j	938 <propagateFloat64NaN+0x12c>
     92c:	00000000 	sll	zero,zero,0x0
     930:	8fc3002c 	lw	v1,44(s8)
     934:	8fc20028 	lw	v0,40(s8)
     938:	08000252 	j	948 <propagateFloat64NaN+0x13c>
     93c:	00000000 	sll	zero,zero,0x0
     940:	8fc30034 	lw	v1,52(s8)
     944:	8fc20030 	lw	v0,48(s8)

}
     948:	03c0e821 	addu	sp,s8,zero
     94c:	8fbf0024 	lw	ra,36(sp)
     950:	8fbe0020 	lw	s8,32(sp)
     954:	27bd0028 	addiu	sp,sp,40
     958:	03e00008 	jr	ra
     95c:	00000000 	sll	zero,zero,0x0

00000960 <extractFloat64Frac>:
| Returns the fraction bits of the double-precision floating-point value `a'.
*----------------------------------------------------------------------------*/

INLINE bits64
extractFloat64Frac (float64 a)
{
     960:	27bdfff8 	addiu	sp,sp,-8
     964:	afbe0004 	sw	s8,4(sp)
     968:	03a0f021 	addu	s8,sp,zero
     96c:	afc5000c 	sw	a1,12(s8)
     970:	afc40008 	sw	a0,8(s8)

  return a & LIT64 (0x000FFFFFFFFFFFFF);
     974:	8fc50008 	lw	a1,8(s8)
     978:	3c04000f 	lui	a0,0xf
     97c:	3484ffff 	ori	a0,a0,0xffff
     980:	00a41024 	and	v0,a1,a0
     984:	8fc5000c 	lw	a1,12(s8)
     988:	2404ffff 	addiu	a0,zero,-1
     98c:	00a41824 	and	v1,a1,a0

}
     990:	03c0e821 	addu	sp,s8,zero
     994:	8fbe0004 	lw	s8,4(sp)
     998:	27bd0008 	addiu	sp,sp,8
     99c:	03e00008 	jr	ra
     9a0:	00000000 	sll	zero,zero,0x0

000009a4 <extractFloat64Exp>:
| Returns the exponent bits of the double-precision floating-point value `a'.
*----------------------------------------------------------------------------*/

INLINE int16
extractFloat64Exp (float64 a)
{
     9a4:	27bdfff8 	addiu	sp,sp,-8
     9a8:	afbe0004 	sw	s8,4(sp)
     9ac:	03a0f021 	addu	s8,sp,zero
     9b0:	afc5000c 	sw	a1,12(s8)
     9b4:	afc40008 	sw	a0,8(s8)

  return (a >> 52) & 0x7FF;
     9b8:	8fc40008 	lw	a0,8(s8)
     9bc:	00000000 	sll	zero,zero,0x0
     9c0:	00041d02 	srl	v1,a0,0x14
     9c4:	00001021 	addu	v0,zero,zero
     9c8:	00601021 	addu	v0,v1,zero
     9cc:	304207ff 	andi	v0,v0,0x7ff

}
     9d0:	03c0e821 	addu	sp,s8,zero
     9d4:	8fbe0004 	lw	s8,4(sp)
     9d8:	27bd0008 	addiu	sp,sp,8
     9dc:	03e00008 	jr	ra
     9e0:	00000000 	sll	zero,zero,0x0

000009e4 <extractFloat64Sign>:
| Returns the sign bit of the double-precision floating-point value `a'.
*----------------------------------------------------------------------------*/

INLINE flag
extractFloat64Sign (float64 a)
{
     9e4:	27bdfff8 	addiu	sp,sp,-8
     9e8:	afbe0004 	sw	s8,4(sp)
     9ec:	03a0f021 	addu	s8,sp,zero
     9f0:	afc5000c 	sw	a1,12(s8)
     9f4:	afc40008 	sw	a0,8(s8)

  return a >> 63;
     9f8:	8fc40008 	lw	a0,8(s8)
     9fc:	00000000 	sll	zero,zero,0x0
     a00:	00041fc2 	srl	v1,a0,0x1f
     a04:	00001021 	addu	v0,zero,zero
     a08:	00601021 	addu	v0,v1,zero

}
     a0c:	03c0e821 	addu	sp,s8,zero
     a10:	8fbe0004 	lw	s8,4(sp)
     a14:	27bd0008 	addiu	sp,sp,8
     a18:	03e00008 	jr	ra
     a1c:	00000000 	sll	zero,zero,0x0

00000a20 <normalizeFloat64Subnormal>:
| `zSigPtr', respectively.
*----------------------------------------------------------------------------*/

static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
     a20:	27bdffd8 	addiu	sp,sp,-40
     a24:	afbf0024 	sw	ra,36(sp)
     a28:	afbe0020 	sw	s8,32(sp)
     a2c:	afb1001c 	sw	s1,28(sp)
     a30:	afb00018 	sw	s0,24(sp)
     a34:	03a0f021 	addu	s8,sp,zero
     a38:	afc5002c 	sw	a1,44(s8)
     a3c:	afc40028 	sw	a0,40(s8)
     a40:	afc60030 	sw	a2,48(s8)
     a44:	afc70034 	sw	a3,52(s8)
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
     a48:	8fc5002c 	lw	a1,44(s8)
     a4c:	8fc40028 	lw	a0,40(s8)
     a50:	0c00018a 	jal	628 <countLeadingZeros64>
     a54:	00000000 	sll	zero,zero,0x0
     a58:	2442fff5 	addiu	v0,v0,-11
     a5c:	afc20010 	sw	v0,16(s8)
  *zSigPtr = aSig << shiftCount;
     a60:	8fc20010 	lw	v0,16(s8)
     a64:	00000000 	sll	zero,zero,0x0
     a68:	30420020 	andi	v0,v0,0x20
     a6c:	10400008 	beqz	v0,a90 <normalizeFloat64Subnormal+0x70>
     a70:	00000000 	sll	zero,zero,0x0
     a74:	8fc3002c 	lw	v1,44(s8)
     a78:	8fc20010 	lw	v0,16(s8)
     a7c:	00000000 	sll	zero,zero,0x0
     a80:	00438004 	sllv	s0,v1,v0
     a84:	00008821 	addu	s1,zero,zero
     a88:	080002b4 	j	ad0 <normalizeFloat64Subnormal+0xb0>
     a8c:	00000000 	sll	zero,zero,0x0
     a90:	8fc2002c 	lw	v0,44(s8)
     a94:	00000000 	sll	zero,zero,0x0
     a98:	00021842 	srl	v1,v0,0x1
     a9c:	8fc40010 	lw	a0,16(s8)
     aa0:	2402ffff 	addiu	v0,zero,-1
     aa4:	00821026 	xor	v0,a0,v0
     aa8:	00431006 	srlv	v0,v1,v0
     aac:	8fc40028 	lw	a0,40(s8)
     ab0:	8fc30010 	lw	v1,16(s8)
     ab4:	00000000 	sll	zero,zero,0x0
     ab8:	00648004 	sllv	s0,a0,v1
     abc:	00508025 	or	s0,v0,s0
     ac0:	8fc3002c 	lw	v1,44(s8)
     ac4:	8fc20010 	lw	v0,16(s8)
     ac8:	00000000 	sll	zero,zero,0x0
     acc:	00438804 	sllv	s1,v1,v0
     ad0:	8fc20034 	lw	v0,52(s8)
     ad4:	00000000 	sll	zero,zero,0x0
     ad8:	ac510004 	sw	s1,4(v0)
     adc:	ac500000 	sw	s0,0(v0)
  *zExpPtr = 1 - shiftCount;
     ae0:	24030001 	addiu	v1,zero,1
     ae4:	8fc20010 	lw	v0,16(s8)
     ae8:	00000000 	sll	zero,zero,0x0
     aec:	00621823 	subu	v1,v1,v0
     af0:	8fc20030 	lw	v0,48(s8)
     af4:	00000000 	sll	zero,zero,0x0
     af8:	ac430000 	sw	v1,0(v0)

}
     afc:	03c0e821 	addu	sp,s8,zero
     b00:	8fbf0024 	lw	ra,36(sp)
     b04:	8fbe0020 	lw	s8,32(sp)
     b08:	8fb1001c 	lw	s1,28(sp)
     b0c:	8fb00018 	lw	s0,24(sp)
     b10:	27bd0028 	addiu	sp,sp,40
     b14:	03e00008 	jr	ra
     b18:	00000000 	sll	zero,zero,0x0

00000b1c <packFloat64>:
| significand.
*----------------------------------------------------------------------------*/

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
     b1c:	27bdfff8 	addiu	sp,sp,-8
     b20:	afbe0004 	sw	s8,4(sp)
     b24:	03a0f021 	addu	s8,sp,zero
     b28:	afc40008 	sw	a0,8(s8)
     b2c:	afc5000c 	sw	a1,12(s8)
     b30:	afc70014 	sw	a3,20(s8)
     b34:	afc60010 	sw	a2,16(s8)

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
     b38:	8fcd0008 	lw	t5,8(s8)
     b3c:	8fc40008 	lw	a0,8(s8)
     b40:	00000000 	sll	zero,zero,0x0
     b44:	000427c3 	sra	a0,a0,0x1f
     b48:	00806021 	addu	t4,a0,zero
     b4c:	000d47c0 	sll	t0,t5,0x1f
     b50:	00004821 	addu	t1,zero,zero
     b54:	8fc3000c 	lw	v1,12(s8)
     b58:	8fc4000c 	lw	a0,12(s8)
     b5c:	00000000 	sll	zero,zero,0x0
     b60:	000427c3 	sra	a0,a0,0x1f
     b64:	00801021 	addu	v0,a0,zero
     b68:	00035500 	sll	t2,v1,0x14
     b6c:	00005821 	addu	t3,zero,zero
     b70:	012b1821 	addu	v1,t1,t3
     b74:	0069202b 	sltu	a0,v1,t1
     b78:	010a1021 	addu	v0,t0,t2
     b7c:	00822021 	addu	a0,a0,v0
     b80:	00801021 	addu	v0,a0,zero
     b84:	00602821 	addu	a1,v1,zero
     b88:	00402021 	addu	a0,v0,zero
     b8c:	8fc70014 	lw	a3,20(s8)
     b90:	8fc60010 	lw	a2,16(s8)
     b94:	00a71821 	addu	v1,a1,a3
     b98:	0065402b 	sltu	t0,v1,a1
     b9c:	00861021 	addu	v0,a0,a2
     ba0:	01022021 	addu	a0,t0,v0
     ba4:	00801021 	addu	v0,a0,zero

}
     ba8:	03c0e821 	addu	sp,s8,zero
     bac:	8fbe0004 	lw	s8,4(sp)
     bb0:	27bd0008 	addiu	sp,sp,8
     bb4:	03e00008 	jr	ra
     bb8:	00000000 	sll	zero,zero,0x0

00000bbc <roundAndPackFloat64>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
roundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
     bbc:	27bdffa8 	addiu	sp,sp,-88
     bc0:	afbf0054 	sw	ra,84(sp)
     bc4:	afbe0050 	sw	s8,80(sp)
     bc8:	afb7004c 	sw	s7,76(sp)
     bcc:	afb60048 	sw	s6,72(sp)
     bd0:	afb50044 	sw	s5,68(sp)
     bd4:	afb40040 	sw	s4,64(sp)
     bd8:	afb3003c 	sw	s3,60(sp)
     bdc:	afb20038 	sw	s2,56(sp)
     be0:	afb10034 	sw	s1,52(sp)
     be4:	afb00030 	sw	s0,48(sp)
     be8:	03a0f021 	addu	s8,sp,zero
     bec:	afc40058 	sw	a0,88(s8)
     bf0:	afc5005c 	sw	a1,92(s8)
     bf4:	afc70064 	sw	a3,100(s8)
     bf8:	afc60060 	sw	a2,96(s8)
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
     bfc:	8f820000 	lw	v0,0(gp)
     c00:	00000000 	sll	zero,zero,0x0
     c04:	afc20018 	sw	v0,24(s8)
  roundNearestEven = (roundingMode == float_round_nearest_even);
     c08:	8fc20018 	lw	v0,24(s8)
     c0c:	00000000 	sll	zero,zero,0x0
     c10:	2c420001 	sltiu	v0,v0,1
     c14:	afc2001c 	sw	v0,28(s8)
  roundIncrement = 0x200;
     c18:	24020200 	addiu	v0,zero,512
     c1c:	afc20010 	sw	v0,16(s8)
  if (!roundNearestEven)
     c20:	8fc2001c 	lw	v0,28(s8)
     c24:	00000000 	sll	zero,zero,0x0
     c28:	1440001a 	bnez	v0,c94 <roundAndPackFloat64+0xd8>
     c2c:	00000000 	sll	zero,zero,0x0
    {
      if (roundingMode == float_round_to_zero)
     c30:	8fc30018 	lw	v1,24(s8)
     c34:	24020001 	addiu	v0,zero,1
     c38:	14620004 	bne	v1,v0,c4c <roundAndPackFloat64+0x90>
     c3c:	00000000 	sll	zero,zero,0x0
	{
	  roundIncrement = 0;
     c40:	afc00010 	sw	zero,16(s8)
     c44:	08000325 	j	c94 <roundAndPackFloat64+0xd8>
     c48:	00000000 	sll	zero,zero,0x0
	}
      else
	{
	  roundIncrement = 0x3FF;
     c4c:	240203ff 	addiu	v0,zero,1023
     c50:	afc20010 	sw	v0,16(s8)
	  if (zSign)
     c54:	8fc20058 	lw	v0,88(s8)
     c58:	00000000 	sll	zero,zero,0x0
     c5c:	10400008 	beqz	v0,c80 <roundAndPackFloat64+0xc4>
     c60:	00000000 	sll	zero,zero,0x0
	    {
	      if (roundingMode == float_round_up)
     c64:	8fc30018 	lw	v1,24(s8)
     c68:	24020002 	addiu	v0,zero,2
     c6c:	14620009 	bne	v1,v0,c94 <roundAndPackFloat64+0xd8>
     c70:	00000000 	sll	zero,zero,0x0
		roundIncrement = 0;
     c74:	afc00010 	sw	zero,16(s8)
     c78:	08000325 	j	c94 <roundAndPackFloat64+0xd8>
     c7c:	00000000 	sll	zero,zero,0x0
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
     c80:	8fc30018 	lw	v1,24(s8)
     c84:	24020003 	addiu	v0,zero,3
     c88:	14620002 	bne	v1,v0,c94 <roundAndPackFloat64+0xd8>
     c8c:	00000000 	sll	zero,zero,0x0
		roundIncrement = 0;
     c90:	afc00010 	sw	zero,16(s8)
	    }
	}
    }
  roundBits = zSig & 0x3FF;
     c94:	8fc30064 	lw	v1,100(s8)
     c98:	8fc20060 	lw	v0,96(s8)
     c9c:	00601021 	addu	v0,v1,zero
     ca0:	304203ff 	andi	v0,v0,0x3ff
     ca4:	afc20014 	sw	v0,20(s8)
  if (0x7FD <= (bits16) zExp)
     ca8:	8fc2005c 	lw	v0,92(s8)
     cac:	00000000 	sll	zero,zero,0x0
     cb0:	3042ffff 	andi	v0,v0,0xffff
     cb4:	2c4207fd 	sltiu	v0,v0,2045
     cb8:	14400050 	bnez	v0,dfc <roundAndPackFloat64+0x240>
     cbc:	00000000 	sll	zero,zero,0x0
    {
      if ((0x7FD < zExp)
     cc0:	8fc2005c 	lw	v0,92(s8)
     cc4:	00000000 	sll	zero,zero,0x0
     cc8:	284207fe 	slti	v0,v0,2046
     ccc:	10400013 	beqz	v0,d1c <roundAndPackFloat64+0x160>
     cd0:	00000000 	sll	zero,zero,0x0
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
     cd4:	8fc3005c 	lw	v1,92(s8)
     cd8:	240207fd 	addiu	v0,zero,2045
     cdc:	14620026 	bne	v1,v0,d78 <roundAndPackFloat64+0x1bc>
     ce0:	00000000 	sll	zero,zero,0x0
     ce4:	8fc90010 	lw	t1,16(s8)
     ce8:	8fc20010 	lw	v0,16(s8)
     cec:	00000000 	sll	zero,zero,0x0
     cf0:	000217c3 	sra	v0,v0,0x1f
     cf4:	00404021 	addu	t0,v0,zero
     cf8:	8fc50064 	lw	a1,100(s8)
     cfc:	8fc40060 	lw	a0,96(s8)
     d00:	01251821 	addu	v1,t1,a1
     d04:	0069302b 	sltu	a2,v1,t1
     d08:	01041021 	addu	v0,t0,a0
     d0c:	00c22021 	addu	a0,a2,v0
     d10:	00801021 	addu	v0,a0,zero
     d14:	04410018 	bgez	v0,d78 <roundAndPackFloat64+0x1bc>
     d18:	00000000 	sll	zero,zero,0x0
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
     d1c:	24040009 	addiu	a0,zero,9
     d20:	0c000000 	jal	0 <shift64RightJamming>
     d24:	00000000 	sll	zero,zero,0x0
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
     d28:	8fc40058 	lw	a0,88(s8)
     d2c:	240507ff 	addiu	a1,zero,2047
     d30:	00003821 	addu	a3,zero,zero
     d34:	00003021 	addu	a2,zero,zero
     d38:	0c000000 	jal	0 <shift64RightJamming>
     d3c:	00000000 	sll	zero,zero,0x0
     d40:	00602821 	addu	a1,v1,zero
     d44:	00402021 	addu	a0,v0,zero
     d48:	8fc20010 	lw	v0,16(s8)
     d4c:	00000000 	sll	zero,zero,0x0
     d50:	2c420001 	sltiu	v0,v0,1
     d54:	0040b821 	addu	s7,v0,zero
     d58:	0000b021 	addu	s6,zero,zero
     d5c:	00b71823 	subu	v1,a1,s7
     d60:	00a3302b 	sltu	a2,a1,v1
     d64:	00961023 	subu	v0,a0,s6
     d68:	00462023 	subu	a0,v0,a2
     d6c:	00801021 	addu	v0,a0,zero
     d70:	080003bf 	j	efc <roundAndPackFloat64+0x340>
     d74:	00000000 	sll	zero,zero,0x0
	}
      if (zExp < 0)
     d78:	8fc2005c 	lw	v0,92(s8)
     d7c:	00000000 	sll	zero,zero,0x0
     d80:	0441001e 	bgez	v0,dfc <roundAndPackFloat64+0x240>
     d84:	00000000 	sll	zero,zero,0x0
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
     d88:	24020001 	addiu	v0,zero,1
     d8c:	afc20020 	sw	v0,32(s8)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
     d90:	8fc30064 	lw	v1,100(s8)
     d94:	8fc20060 	lw	v0,96(s8)
     d98:	8fc4005c 	lw	a0,92(s8)
     d9c:	00000000 	sll	zero,zero,0x0
     da0:	00043023 	negu	a2,a0
     da4:	27c70060 	addiu	a3,s8,96
     da8:	00602821 	addu	a1,v1,zero
     dac:	00402021 	addu	a0,v0,zero
     db0:	0c000000 	jal	0 <shift64RightJamming>
     db4:	00000000 	sll	zero,zero,0x0
	  zExp = 0;
     db8:	afc0005c 	sw	zero,92(s8)
	  roundBits = zSig & 0x3FF;
     dbc:	8fc30064 	lw	v1,100(s8)
     dc0:	8fc20060 	lw	v0,96(s8)
     dc4:	00601021 	addu	v0,v1,zero
     dc8:	304203ff 	andi	v0,v0,0x3ff
     dcc:	afc20014 	sw	v0,20(s8)
	  if (isTiny && roundBits)
     dd0:	8fc20020 	lw	v0,32(s8)
     dd4:	00000000 	sll	zero,zero,0x0
     dd8:	10400008 	beqz	v0,dfc <roundAndPackFloat64+0x240>
     ddc:	00000000 	sll	zero,zero,0x0
     de0:	8fc20014 	lw	v0,20(s8)
     de4:	00000000 	sll	zero,zero,0x0
     de8:	10400004 	beqz	v0,dfc <roundAndPackFloat64+0x240>
     dec:	00000000 	sll	zero,zero,0x0
	    float_raise (float_flag_underflow);
     df0:	24040004 	addiu	a0,zero,4
     df4:	0c000000 	jal	0 <shift64RightJamming>
     df8:	00000000 	sll	zero,zero,0x0
	}
    }
  if (roundBits)
     dfc:	8fc20014 	lw	v0,20(s8)
     e00:	00000000 	sll	zero,zero,0x0
     e04:	10400005 	beqz	v0,e1c <roundAndPackFloat64+0x260>
     e08:	00000000 	sll	zero,zero,0x0
    float_exception_flags |= float_flag_inexact;
     e0c:	8f820000 	lw	v0,0(gp)
     e10:	00000000 	sll	zero,zero,0x0
     e14:	34420001 	ori	v0,v0,0x1
     e18:	af820000 	sw	v0,0(gp)
  zSig = (zSig + roundIncrement) >> 10;
     e1c:	8fd30010 	lw	s3,16(s8)
     e20:	8fc20010 	lw	v0,16(s8)
     e24:	00000000 	sll	zero,zero,0x0
     e28:	000217c3 	sra	v0,v0,0x1f
     e2c:	00409021 	addu	s2,v0,zero
     e30:	8fc50064 	lw	a1,100(s8)
     e34:	8fc40060 	lw	a0,96(s8)
     e38:	02651821 	addu	v1,s3,a1
     e3c:	0073302b 	sltu	a2,v1,s3
     e40:	02441021 	addu	v0,s2,a0
     e44:	00c22021 	addu	a0,a2,v0
     e48:	00801021 	addu	v0,a0,zero
     e4c:	00022580 	sll	a0,v0,0x16
     e50:	00038a82 	srl	s1,v1,0xa
     e54:	00918825 	or	s1,a0,s1
     e58:	00028282 	srl	s0,v0,0xa
     e5c:	afd10064 	sw	s1,100(s8)
     e60:	afd00060 	sw	s0,96(s8)
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
     e64:	8fc20014 	lw	v0,20(s8)
     e68:	00000000 	sll	zero,zero,0x0
     e6c:	38420200 	xori	v0,v0,0x200
     e70:	2c430001 	sltiu	v1,v0,1
     e74:	8fc2001c 	lw	v0,28(s8)
     e78:	00000000 	sll	zero,zero,0x0
     e7c:	00621024 	and	v0,v1,v0
     e80:	00021027 	nor	v0,zero,v0
     e84:	0040a821 	addu	s5,v0,zero
     e88:	000217c3 	sra	v0,v0,0x1f
     e8c:	0040a021 	addu	s4,v0,zero
     e90:	8fc30064 	lw	v1,100(s8)
     e94:	8fc20060 	lw	v0,96(s8)
     e98:	00000000 	sll	zero,zero,0x0
     e9c:	02822024 	and	a0,s4,v0
     ea0:	afc40028 	sw	a0,40(s8)
     ea4:	02a32024 	and	a0,s5,v1
     ea8:	afc4002c 	sw	a0,44(s8)
     eac:	8fc3002c 	lw	v1,44(s8)
     eb0:	8fc20028 	lw	v0,40(s8)
     eb4:	afc30064 	sw	v1,100(s8)
     eb8:	afc20060 	sw	v0,96(s8)
  if (zSig == 0)
     ebc:	8fc50064 	lw	a1,100(s8)
     ec0:	8fc40060 	lw	a0,96(s8)
     ec4:	00000000 	sll	zero,zero,0x0
     ec8:	00801021 	addu	v0,a0,zero
     ecc:	00451025 	or	v0,v0,a1
     ed0:	14400002 	bnez	v0,edc <roundAndPackFloat64+0x320>
     ed4:	00000000 	sll	zero,zero,0x0
    zExp = 0;
     ed8:	afc0005c 	sw	zero,92(s8)
  return packFloat64 (zSign, zExp, zSig);
     edc:	8fc30064 	lw	v1,100(s8)
     ee0:	8fc20060 	lw	v0,96(s8)
     ee4:	8fc40058 	lw	a0,88(s8)
     ee8:	8fc5005c 	lw	a1,92(s8)
     eec:	00603821 	addu	a3,v1,zero
     ef0:	00403021 	addu	a2,v0,zero
     ef4:	0c000000 	jal	0 <shift64RightJamming>
     ef8:	00000000 	sll	zero,zero,0x0

}
     efc:	03c0e821 	addu	sp,s8,zero
     f00:	8fbf0054 	lw	ra,84(sp)
     f04:	8fbe0050 	lw	s8,80(sp)
     f08:	8fb7004c 	lw	s7,76(sp)
     f0c:	8fb60048 	lw	s6,72(sp)
     f10:	8fb50044 	lw	s5,68(sp)
     f14:	8fb40040 	lw	s4,64(sp)
     f18:	8fb3003c 	lw	s3,60(sp)
     f1c:	8fb20038 	lw	s2,56(sp)
     f20:	8fb10034 	lw	s1,52(sp)
     f24:	8fb00030 	lw	s0,48(sp)
     f28:	27bd0058 	addiu	sp,sp,88
     f2c:	03e00008 	jr	ra
     f30:	00000000 	sll	zero,zero,0x0

00000f34 <float64_mul>:
| for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_mul (float64 a, float64 b)
{
     f34:	27bdff48 	addiu	sp,sp,-184
     f38:	afbf00b4 	sw	ra,180(sp)
     f3c:	afbe00b0 	sw	s8,176(sp)
     f40:	afb700ac 	sw	s7,172(sp)
     f44:	afb600a8 	sw	s6,168(sp)
     f48:	afb500a4 	sw	s5,164(sp)
     f4c:	afb400a0 	sw	s4,160(sp)
     f50:	afb3009c 	sw	s3,156(sp)
     f54:	afb20098 	sw	s2,152(sp)
     f58:	afb10094 	sw	s1,148(sp)
     f5c:	afb00090 	sw	s0,144(sp)
     f60:	03a0f021 	addu	s8,sp,zero
     f64:	afc500bc 	sw	a1,188(s8)
     f68:	afc400b8 	sw	a0,184(s8)
     f6c:	afc700c4 	sw	a3,196(s8)
     f70:	afc600c0 	sw	a2,192(s8)
  flag aSign, bSign, zSign;
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig0, zSig1;

  aSig = extractFloat64Frac (a);
     f74:	8fc500bc 	lw	a1,188(s8)
     f78:	8fc400b8 	lw	a0,184(s8)
     f7c:	0c000000 	jal	0 <shift64RightJamming>
     f80:	00000000 	sll	zero,zero,0x0
     f84:	afc30034 	sw	v1,52(s8)
     f88:	afc20030 	sw	v0,48(s8)
  aExp = extractFloat64Exp (a);
     f8c:	8fc500bc 	lw	a1,188(s8)
     f90:	8fc400b8 	lw	a0,184(s8)
     f94:	0c000000 	jal	0 <shift64RightJamming>
     f98:	00000000 	sll	zero,zero,0x0
     f9c:	afc20028 	sw	v0,40(s8)
  aSign = extractFloat64Sign (a);
     fa0:	8fc500bc 	lw	a1,188(s8)
     fa4:	8fc400b8 	lw	a0,184(s8)
     fa8:	0c000000 	jal	0 <shift64RightJamming>
     fac:	00000000 	sll	zero,zero,0x0
     fb0:	afc2001c 	sw	v0,28(s8)
  bSig = extractFloat64Frac (b);
     fb4:	8fc500c4 	lw	a1,196(s8)
     fb8:	8fc400c0 	lw	a0,192(s8)
     fbc:	0c000000 	jal	0 <shift64RightJamming>
     fc0:	00000000 	sll	zero,zero,0x0
     fc4:	afc3003c 	sw	v1,60(s8)
     fc8:	afc20038 	sw	v0,56(s8)
  bExp = extractFloat64Exp (b);
     fcc:	8fc500c4 	lw	a1,196(s8)
     fd0:	8fc400c0 	lw	a0,192(s8)
     fd4:	0c000000 	jal	0 <shift64RightJamming>
     fd8:	00000000 	sll	zero,zero,0x0
     fdc:	afc2002c 	sw	v0,44(s8)
  bSign = extractFloat64Sign (b);
     fe0:	8fc500c4 	lw	a1,196(s8)
     fe4:	8fc400c0 	lw	a0,192(s8)
     fe8:	0c000000 	jal	0 <shift64RightJamming>
     fec:	00000000 	sll	zero,zero,0x0
     ff0:	afc20020 	sw	v0,32(s8)
  zSign = aSign ^ bSign;
     ff4:	8fc3001c 	lw	v1,28(s8)
     ff8:	8fc20020 	lw	v0,32(s8)
     ffc:	00000000 	sll	zero,zero,0x0
    1000:	00621026 	xor	v0,v1,v0
    1004:	afc20024 	sw	v0,36(s8)
  if (aExp == 0x7FF)
    1008:	8fc30028 	lw	v1,40(s8)
    100c:	240207ff 	addiu	v0,zero,2047
    1010:	14620041 	bne	v1,v0,1118 <float64_mul+0x1e4>
    1014:	00000000 	sll	zero,zero,0x0
    {
      if (aSig || ((bExp == 0x7FF) && bSig))
    1018:	8fc50034 	lw	a1,52(s8)
    101c:	8fc40030 	lw	a0,48(s8)
    1020:	00000000 	sll	zero,zero,0x0
    1024:	00801021 	addu	v0,a0,zero
    1028:	00451025 	or	v0,v0,a1
    102c:	1440000c 	bnez	v0,1060 <float64_mul+0x12c>
    1030:	00000000 	sll	zero,zero,0x0
    1034:	8fc3002c 	lw	v1,44(s8)
    1038:	240207ff 	addiu	v0,zero,2047
    103c:	14620010 	bne	v1,v0,1080 <float64_mul+0x14c>
    1040:	00000000 	sll	zero,zero,0x0
    1044:	8fc5003c 	lw	a1,60(s8)
    1048:	8fc40038 	lw	a0,56(s8)
    104c:	00000000 	sll	zero,zero,0x0
    1050:	00801021 	addu	v0,a0,zero
    1054:	00451025 	or	v0,v0,a1
    1058:	10400009 	beqz	v0,1080 <float64_mul+0x14c>
    105c:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    1060:	8fc500bc 	lw	a1,188(s8)
    1064:	8fc400b8 	lw	a0,184(s8)
    1068:	8fc700c4 	lw	a3,196(s8)
    106c:	8fc600c0 	lw	a2,192(s8)
    1070:	0c000203 	jal	80c <propagateFloat64NaN>
    1074:	00000000 	sll	zero,zero,0x0
    1078:	08000520 	j	1480 <float64_mul+0x54c>
    107c:	00000000 	sll	zero,zero,0x0
      if ((bExp | bSig) == 0)
    1080:	8fc2002c 	lw	v0,44(s8)
    1084:	00000000 	sll	zero,zero,0x0
    1088:	00401821 	addu	v1,v0,zero
    108c:	afc30054 	sw	v1,84(s8)
    1090:	000217c3 	sra	v0,v0,0x1f
    1094:	afc20050 	sw	v0,80(s8)
    1098:	8fc3003c 	lw	v1,60(s8)
    109c:	8fc20038 	lw	v0,56(s8)
    10a0:	8fc40050 	lw	a0,80(s8)
    10a4:	00000000 	sll	zero,zero,0x0
    10a8:	00822025 	or	a0,a0,v0
    10ac:	afc40058 	sw	a0,88(s8)
    10b0:	8fc40054 	lw	a0,84(s8)
    10b4:	00000000 	sll	zero,zero,0x0
    10b8:	00832025 	or	a0,a0,v1
    10bc:	afc4005c 	sw	a0,92(s8)
    10c0:	8fc20058 	lw	v0,88(s8)
    10c4:	8fc3005c 	lw	v1,92(s8)
    10c8:	00000000 	sll	zero,zero,0x0
    10cc:	00431025 	or	v0,v0,v1
    10d0:	14400009 	bnez	v0,10f8 <float64_mul+0x1c4>
    10d4:	00000000 	sll	zero,zero,0x0
	{
	  float_raise (float_flag_invalid);
    10d8:	24040010 	addiu	a0,zero,16
    10dc:	0c000000 	jal	0 <shift64RightJamming>
    10e0:	00000000 	sll	zero,zero,0x0
	  return float64_default_nan;
    10e4:	2403ffff 	addiu	v1,zero,-1
    10e8:	3c027fff 	lui	v0,0x7fff
    10ec:	3442ffff 	ori	v0,v0,0xffff
    10f0:	08000520 	j	1480 <float64_mul+0x54c>
    10f4:	00000000 	sll	zero,zero,0x0
	}
      return packFloat64 (zSign, 0x7FF, 0);
    10f8:	8fc40024 	lw	a0,36(s8)
    10fc:	240507ff 	addiu	a1,zero,2047
    1100:	00003821 	addu	a3,zero,zero
    1104:	00003021 	addu	a2,zero,zero
    1108:	0c000000 	jal	0 <shift64RightJamming>
    110c:	00000000 	sll	zero,zero,0x0
    1110:	08000520 	j	1480 <float64_mul+0x54c>
    1114:	00000000 	sll	zero,zero,0x0
    }
  if (bExp == 0x7FF)
    1118:	8fc3002c 	lw	v1,44(s8)
    111c:	240207ff 	addiu	v0,zero,2047
    1120:	14620036 	bne	v1,v0,11fc <float64_mul+0x2c8>
    1124:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
    1128:	8fc5003c 	lw	a1,60(s8)
    112c:	8fc40038 	lw	a0,56(s8)
    1130:	00000000 	sll	zero,zero,0x0
    1134:	00801021 	addu	v0,a0,zero
    1138:	00451025 	or	v0,v0,a1
    113c:	10400009 	beqz	v0,1164 <float64_mul+0x230>
    1140:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    1144:	8fc500bc 	lw	a1,188(s8)
    1148:	8fc400b8 	lw	a0,184(s8)
    114c:	8fc700c4 	lw	a3,196(s8)
    1150:	8fc600c0 	lw	a2,192(s8)
    1154:	0c000203 	jal	80c <propagateFloat64NaN>
    1158:	00000000 	sll	zero,zero,0x0
    115c:	08000520 	j	1480 <float64_mul+0x54c>
    1160:	00000000 	sll	zero,zero,0x0
      if ((aExp | aSig) == 0)
    1164:	8fc20028 	lw	v0,40(s8)
    1168:	00000000 	sll	zero,zero,0x0
    116c:	00402021 	addu	a0,v0,zero
    1170:	afc40064 	sw	a0,100(s8)
    1174:	000217c3 	sra	v0,v0,0x1f
    1178:	afc20060 	sw	v0,96(s8)
    117c:	8fc30034 	lw	v1,52(s8)
    1180:	8fc20030 	lw	v0,48(s8)
    1184:	8fc40060 	lw	a0,96(s8)
    1188:	00000000 	sll	zero,zero,0x0
    118c:	00822025 	or	a0,a0,v0
    1190:	afc40068 	sw	a0,104(s8)
    1194:	8fc40064 	lw	a0,100(s8)
    1198:	00000000 	sll	zero,zero,0x0
    119c:	00832025 	or	a0,a0,v1
    11a0:	afc4006c 	sw	a0,108(s8)
    11a4:	8fc20068 	lw	v0,104(s8)
    11a8:	8fc3006c 	lw	v1,108(s8)
    11ac:	00000000 	sll	zero,zero,0x0
    11b0:	00431025 	or	v0,v0,v1
    11b4:	14400009 	bnez	v0,11dc <float64_mul+0x2a8>
    11b8:	00000000 	sll	zero,zero,0x0
	{
	  float_raise (float_flag_invalid);
    11bc:	24040010 	addiu	a0,zero,16
    11c0:	0c000000 	jal	0 <shift64RightJamming>
    11c4:	00000000 	sll	zero,zero,0x0
	  return float64_default_nan;
    11c8:	2403ffff 	addiu	v1,zero,-1
    11cc:	3c027fff 	lui	v0,0x7fff
    11d0:	3442ffff 	ori	v0,v0,0xffff
    11d4:	08000520 	j	1480 <float64_mul+0x54c>
    11d8:	00000000 	sll	zero,zero,0x0
	}
      return packFloat64 (zSign, 0x7FF, 0);
    11dc:	8fc40024 	lw	a0,36(s8)
    11e0:	240507ff 	addiu	a1,zero,2047
    11e4:	00003821 	addu	a3,zero,zero
    11e8:	00003021 	addu	a2,zero,zero
    11ec:	0c000000 	jal	0 <shift64RightJamming>
    11f0:	00000000 	sll	zero,zero,0x0
    11f4:	08000520 	j	1480 <float64_mul+0x54c>
    11f8:	00000000 	sll	zero,zero,0x0
    }
  if (aExp == 0)
    11fc:	8fc20028 	lw	v0,40(s8)
    1200:	00000000 	sll	zero,zero,0x0
    1204:	14400018 	bnez	v0,1268 <float64_mul+0x334>
    1208:	00000000 	sll	zero,zero,0x0
    {
      if (aSig == 0)
    120c:	8fc50034 	lw	a1,52(s8)
    1210:	8fc40030 	lw	a0,48(s8)
    1214:	00000000 	sll	zero,zero,0x0
    1218:	00801021 	addu	v0,a0,zero
    121c:	00451025 	or	v0,v0,a1
    1220:	14400009 	bnez	v0,1248 <float64_mul+0x314>
    1224:	00000000 	sll	zero,zero,0x0
	return packFloat64 (zSign, 0, 0);
    1228:	8fc40024 	lw	a0,36(s8)
    122c:	00002821 	addu	a1,zero,zero
    1230:	00003821 	addu	a3,zero,zero
    1234:	00003021 	addu	a2,zero,zero
    1238:	0c000000 	jal	0 <shift64RightJamming>
    123c:	00000000 	sll	zero,zero,0x0
    1240:	08000520 	j	1480 <float64_mul+0x54c>
    1244:	00000000 	sll	zero,zero,0x0
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    1248:	8fc30034 	lw	v1,52(s8)
    124c:	8fc20030 	lw	v0,48(s8)
    1250:	27c60028 	addiu	a2,s8,40
    1254:	27c70030 	addiu	a3,s8,48
    1258:	00602821 	addu	a1,v1,zero
    125c:	00402021 	addu	a0,v0,zero
    1260:	0c000288 	jal	a20 <normalizeFloat64Subnormal>
    1264:	00000000 	sll	zero,zero,0x0
    }
  if (bExp == 0)
    1268:	8fc2002c 	lw	v0,44(s8)
    126c:	00000000 	sll	zero,zero,0x0
    1270:	14400018 	bnez	v0,12d4 <float64_mul+0x3a0>
    1274:	00000000 	sll	zero,zero,0x0
    {
      if (bSig == 0)
    1278:	8fc5003c 	lw	a1,60(s8)
    127c:	8fc40038 	lw	a0,56(s8)
    1280:	00000000 	sll	zero,zero,0x0
    1284:	00801021 	addu	v0,a0,zero
    1288:	00451025 	or	v0,v0,a1
    128c:	14400009 	bnez	v0,12b4 <float64_mul+0x380>
    1290:	00000000 	sll	zero,zero,0x0
	return packFloat64 (zSign, 0, 0);
    1294:	8fc40024 	lw	a0,36(s8)
    1298:	00002821 	addu	a1,zero,zero
    129c:	00003821 	addu	a3,zero,zero
    12a0:	00003021 	addu	a2,zero,zero
    12a4:	0c000000 	jal	0 <shift64RightJamming>
    12a8:	00000000 	sll	zero,zero,0x0
    12ac:	08000520 	j	1480 <float64_mul+0x54c>
    12b0:	00000000 	sll	zero,zero,0x0
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    12b4:	8fc3003c 	lw	v1,60(s8)
    12b8:	8fc20038 	lw	v0,56(s8)
    12bc:	27c6002c 	addiu	a2,s8,44
    12c0:	27c70038 	addiu	a3,s8,56
    12c4:	00602821 	addu	a1,v1,zero
    12c8:	00402021 	addu	a0,v0,zero
    12cc:	0c000288 	jal	a20 <normalizeFloat64Subnormal>
    12d0:	00000000 	sll	zero,zero,0x0
    }
  zExp = aExp + bExp - 0x3FF;
    12d4:	8fc30028 	lw	v1,40(s8)
    12d8:	8fc2002c 	lw	v0,44(s8)
    12dc:	00000000 	sll	zero,zero,0x0
    12e0:	00621021 	addu	v0,v1,v0
    12e4:	2442fc01 	addiu	v0,v0,-1023
    12e8:	afc20018 	sw	v0,24(s8)
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    12ec:	8fc30034 	lw	v1,52(s8)
    12f0:	8fc20030 	lw	v0,48(s8)
    12f4:	3c040010 	lui	a0,0x10
    12f8:	00442025 	or	a0,v0,a0
    12fc:	afc40070 	sw	a0,112(s8)
    1300:	34640000 	ori	a0,v1,0x0
    1304:	afc40074 	sw	a0,116(s8)
    1308:	8fc30074 	lw	v1,116(s8)
    130c:	00000000 	sll	zero,zero,0x0
    1310:	00031582 	srl	v0,v1,0x16
    1314:	8fc40070 	lw	a0,112(s8)
    1318:	00000000 	sll	zero,zero,0x0
    131c:	00042280 	sll	a0,a0,0xa
    1320:	afc40078 	sw	a0,120(s8)
    1324:	8fc30078 	lw	v1,120(s8)
    1328:	00000000 	sll	zero,zero,0x0
    132c:	00431825 	or	v1,v0,v1
    1330:	afc30078 	sw	v1,120(s8)
    1334:	8fc40074 	lw	a0,116(s8)
    1338:	00000000 	sll	zero,zero,0x0
    133c:	00042280 	sll	a0,a0,0xa
    1340:	afc4007c 	sw	a0,124(s8)
    1344:	8fc3007c 	lw	v1,124(s8)
    1348:	8fc20078 	lw	v0,120(s8)
    134c:	afc30034 	sw	v1,52(s8)
    1350:	afc20030 	sw	v0,48(s8)
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    1354:	8fc3003c 	lw	v1,60(s8)
    1358:	8fc20038 	lw	v0,56(s8)
    135c:	3c040010 	lui	a0,0x10
    1360:	0044b025 	or	s6,v0,a0
    1364:	34770000 	ori	s7,v1,0x0
    1368:	00171542 	srl	v0,s7,0x15
    136c:	0016a2c0 	sll	s4,s6,0xb
    1370:	0054a025 	or	s4,v0,s4
    1374:	0017aac0 	sll	s5,s7,0xb
    1378:	afd5003c 	sw	s5,60(s8)
    137c:	afd40038 	sw	s4,56(s8)
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
    1380:	8fc50034 	lw	a1,52(s8)
    1384:	8fc40030 	lw	a0,48(s8)
    1388:	8fc3003c 	lw	v1,60(s8)
    138c:	8fc20038 	lw	v0,56(s8)
    1390:	27c60040 	addiu	a2,s8,64
    1394:	afa60010 	sw	a2,16(sp)
    1398:	27c60048 	addiu	a2,s8,72
    139c:	afa60014 	sw	a2,20(sp)
    13a0:	00603821 	addu	a3,v1,zero
    13a4:	00403021 	addu	a2,v0,zero
    13a8:	0c000000 	jal	0 <shift64RightJamming>
    13ac:	00000000 	sll	zero,zero,0x0
  zSig0 |= (zSig1 != 0);
    13b0:	8fc3004c 	lw	v1,76(s8)
    13b4:	8fc20048 	lw	v0,72(s8)
    13b8:	00000000 	sll	zero,zero,0x0
    13bc:	00431025 	or	v0,v0,v1
    13c0:	0002102b 	sltu	v0,zero,v0
    13c4:	afc20084 	sw	v0,132(s8)
    13c8:	00001821 	addu	v1,zero,zero
    13cc:	afc30080 	sw	v1,128(s8)
    13d0:	8fc30044 	lw	v1,68(s8)
    13d4:	8fc20040 	lw	v0,64(s8)
    13d8:	8fc40080 	lw	a0,128(s8)
    13dc:	00000000 	sll	zero,zero,0x0
    13e0:	00822025 	or	a0,a0,v0
    13e4:	afc40088 	sw	a0,136(s8)
    13e8:	8fc40084 	lw	a0,132(s8)
    13ec:	00000000 	sll	zero,zero,0x0
    13f0:	00832025 	or	a0,a0,v1
    13f4:	afc4008c 	sw	a0,140(s8)
    13f8:	8fc3008c 	lw	v1,140(s8)
    13fc:	8fc20088 	lw	v0,136(s8)
    1400:	afc30044 	sw	v1,68(s8)
    1404:	afc20040 	sw	v0,64(s8)
  if (0 <= (sbits64) (zSig0 << 1))
    1408:	8fc30044 	lw	v1,68(s8)
    140c:	8fc20040 	lw	v0,64(s8)
    1410:	000327c2 	srl	a0,v1,0x1f
    1414:	00029040 	sll	s2,v0,0x1
    1418:	00929025 	or	s2,a0,s2
    141c:	00039840 	sll	s3,v1,0x1
    1420:	02601821 	addu	v1,s3,zero
    1424:	02401021 	addu	v0,s2,zero
    1428:	0440000d 	bltz	v0,1460 <float64_mul+0x52c>
    142c:	00000000 	sll	zero,zero,0x0
    {
      zSig0 <<= 1;
    1430:	8fc30044 	lw	v1,68(s8)
    1434:	8fc20040 	lw	v0,64(s8)
    1438:	000327c2 	srl	a0,v1,0x1f
    143c:	00028040 	sll	s0,v0,0x1
    1440:	00908025 	or	s0,a0,s0
    1444:	00038840 	sll	s1,v1,0x1
    1448:	afd10044 	sw	s1,68(s8)
    144c:	afd00040 	sw	s0,64(s8)
      --zExp;
    1450:	8fc20018 	lw	v0,24(s8)
    1454:	00000000 	sll	zero,zero,0x0
    1458:	2442ffff 	addiu	v0,v0,-1
    145c:	afc20018 	sw	v0,24(s8)
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);
    1460:	8fc30044 	lw	v1,68(s8)
    1464:	8fc20040 	lw	v0,64(s8)
    1468:	8fc40024 	lw	a0,36(s8)
    146c:	8fc50018 	lw	a1,24(s8)
    1470:	00603821 	addu	a3,v1,zero
    1474:	00403021 	addu	a2,v0,zero
    1478:	0c0002ef 	jal	bbc <roundAndPackFloat64>
    147c:	00000000 	sll	zero,zero,0x0

}
    1480:	03c0e821 	addu	sp,s8,zero
    1484:	8fbf00b4 	lw	ra,180(sp)
    1488:	8fbe00b0 	lw	s8,176(sp)
    148c:	8fb700ac 	lw	s7,172(sp)
    1490:	8fb600a8 	lw	s6,168(sp)
    1494:	8fb500a4 	lw	s5,164(sp)
    1498:	8fb400a0 	lw	s4,160(sp)
    149c:	8fb3009c 	lw	s3,156(sp)
    14a0:	8fb20098 	lw	s2,152(sp)
    14a4:	8fb10094 	lw	s1,148(sp)
    14a8:	8fb00090 	lw	s0,144(sp)
    14ac:	27bd00b8 	addiu	sp,sp,184
    14b0:	03e00008 	jr	ra
    14b4:	00000000 	sll	zero,zero,0x0

000014b8 <ullong_to_double>:
#include <stdio.h>
#include "softfloat.c"

double
ullong_to_double (unsigned long long x)
{
    14b8:	27bdfff0 	addiu	sp,sp,-16
    14bc:	afbe000c 	sw	s8,12(sp)
    14c0:	03a0f021 	addu	s8,sp,zero
    14c4:	afc50014 	sw	a1,20(s8)
    14c8:	afc40010 	sw	a0,16(s8)
  {
    double d;
    unsigned long long ll;
  } t;

  t.ll = x;
    14cc:	8fc30014 	lw	v1,20(s8)
    14d0:	8fc20010 	lw	v0,16(s8)
    14d4:	afc30004 	sw	v1,4(s8)
    14d8:	afc20000 	sw	v0,0(s8)
  return t.d;
    14dc:	c7c00004 	lwc1	$f0,4(s8)
    14e0:	00000000 	sll	zero,zero,0x0
    14e4:	c7c10000 	lwc1	$f1,0(s8)
}
    14e8:	03c0e821 	addu	sp,s8,zero
    14ec:	8fbe000c 	lw	s8,12(sp)
    14f0:	27bd0010 	addiu	sp,sp,16
    14f4:	03e00008 	jr	ra
    14f8:	00000000 	sll	zero,zero,0x0

000014fc <main>:
  0x0000000000000000ULL		/* 0.0 */
};

int
main ()
{
    14fc:	27bdff88 	addiu	sp,sp,-120
    1500:	afbf0074 	sw	ra,116(sp)
    1504:	afbe0070 	sw	s8,112(sp)
    1508:	afb7006c 	sw	s7,108(sp)
    150c:	afb60068 	sw	s6,104(sp)
    1510:	afb50064 	sw	s5,100(sp)
    1514:	afb40060 	sw	s4,96(sp)
    1518:	afb3005c 	sw	s3,92(sp)
    151c:	afb20058 	sw	s2,88(sp)
    1520:	afb10054 	sw	s1,84(sp)
    1524:	afb00050 	sw	s0,80(sp)
    1528:	03a0f021 	addu	s8,sp,zero
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
    152c:	afc00030 	sw	zero,48(s8)
      for (i = 0; i < N; i++)
    1530:	afc00034 	sw	zero,52(s8)
    1534:	080005af 	j	16bc <main+0x1c0>
    1538:	00000000 	sll	zero,zero,0x0
	{
	  float64 result;
	  x1 = a_input[i];
    153c:	3c020000 	lui	v0,0x0
    1540:	8fc30034 	lw	v1,52(s8)
    1544:	00000000 	sll	zero,zero,0x0
    1548:	000318c0 	sll	v1,v1,0x3
    154c:	24420000 	addiu	v0,v0,0
    1550:	00621021 	addu	v0,v1,v0
    1554:	8c430004 	lw	v1,4(v0)
    1558:	8c420000 	lw	v0,0(v0)
    155c:	afc3003c 	sw	v1,60(s8)
    1560:	afc20038 	sw	v0,56(s8)
	  x2 = b_input[i];
    1564:	3c020000 	lui	v0,0x0
    1568:	8fc30034 	lw	v1,52(s8)
    156c:	00000000 	sll	zero,zero,0x0
    1570:	000318c0 	sll	v1,v1,0x3
    1574:	24420000 	addiu	v0,v0,0
    1578:	00621021 	addu	v0,v1,v0
    157c:	8c430004 	lw	v1,4(v0)
    1580:	8c420000 	lw	v0,0(v0)
    1584:	afc30044 	sw	v1,68(s8)
    1588:	afc20040 	sw	v0,64(s8)
	  result = float64_mul (x1, x2);
    158c:	8fc5003c 	lw	a1,60(s8)
    1590:	8fc40038 	lw	a0,56(s8)
    1594:	8fc70044 	lw	a3,68(s8)
    1598:	8fc60040 	lw	a2,64(s8)
    159c:	0c000000 	jal	0 <shift64RightJamming>
    15a0:	00000000 	sll	zero,zero,0x0
    15a4:	afc3004c 	sw	v1,76(s8)
    15a8:	afc20048 	sw	v0,72(s8)
	  main_result += (result != z_output[i]);
    15ac:	3c020000 	lui	v0,0x0
    15b0:	8fc30034 	lw	v1,52(s8)
    15b4:	00000000 	sll	zero,zero,0x0
    15b8:	000318c0 	sll	v1,v1,0x3
    15bc:	24420000 	addiu	v0,v0,0
    15c0:	00621021 	addu	v0,v1,v0
    15c4:	8c430004 	lw	v1,4(v0)
    15c8:	8c420000 	lw	v0,0(v0)
    15cc:	8fc40048 	lw	a0,72(s8)
    15d0:	00000000 	sll	zero,zero,0x0
    15d4:	00828026 	xor	s0,a0,v0
    15d8:	8fc4004c 	lw	a0,76(s8)
    15dc:	00000000 	sll	zero,zero,0x0
    15e0:	00838826 	xor	s1,a0,v1
    15e4:	02111025 	or	v0,s0,s1
    15e8:	0002102b 	sltu	v0,zero,v0
    15ec:	8fc30030 	lw	v1,48(s8)
    15f0:	00000000 	sll	zero,zero,0x0
    15f4:	00621021 	addu	v0,v1,v0
    15f8:	afc20030 	sw	v0,48(s8)

	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
    15fc:	3c020000 	lui	v0,0x0
    1600:	8fc30034 	lw	v1,52(s8)
    1604:	00000000 	sll	zero,zero,0x0
    1608:	000318c0 	sll	v1,v1,0x3
    160c:	24420000 	addiu	v0,v0,0
    1610:	00621021 	addu	v0,v1,v0
    1614:	8c530004 	lw	s3,4(v0)
    1618:	8c520000 	lw	s2,0(v0)
    161c:	3c020000 	lui	v0,0x0
    1620:	8fc30034 	lw	v1,52(s8)
    1624:	00000000 	sll	zero,zero,0x0
    1628:	000318c0 	sll	v1,v1,0x3
    162c:	24420000 	addiu	v0,v0,0
    1630:	00621021 	addu	v0,v1,v0
    1634:	8c570004 	lw	s7,4(v0)
    1638:	8c560000 	lw	s6,0(v0)
    163c:	3c020000 	lui	v0,0x0
    1640:	8fc30034 	lw	v1,52(s8)
    1644:	00000000 	sll	zero,zero,0x0
    1648:	000318c0 	sll	v1,v1,0x3
    164c:	24420000 	addiu	v0,v0,0
    1650:	00621021 	addu	v0,v1,v0
    1654:	8c550004 	lw	s5,4(v0)
    1658:	8c540000 	lw	s4,0(v0)
    165c:	8fc5004c 	lw	a1,76(s8)
    1660:	8fc40048 	lw	a0,72(s8)
    1664:	0c000000 	jal	0 <shift64RightJamming>
    1668:	00000000 	sll	zero,zero,0x0
    166c:	afb70014 	sw	s7,20(sp)
    1670:	afb60010 	sw	s6,16(sp)
    1674:	afb5001c 	sw	s5,28(sp)
    1678:	afb40018 	sw	s4,24(sp)
    167c:	8fc3004c 	lw	v1,76(s8)
    1680:	8fc20048 	lw	v0,72(s8)
    1684:	afa30024 	sw	v1,36(sp)
    1688:	afa20020 	sw	v0,32(sp)
    168c:	e7a0002c 	swc1	$f0,44(sp)
    1690:	e7a10028 	swc1	$f1,40(sp)
    1694:	3c020000 	lui	v0,0x0
    1698:	244401e0 	addiu	a0,v0,480
    169c:	02603821 	addu	a3,s3,zero
    16a0:	02403021 	addu	a2,s2,zero
    16a4:	0c000000 	jal	0 <shift64RightJamming>
    16a8:	00000000 	sll	zero,zero,0x0
{
  int main_result;
  int i;
  float64 x1, x2;
      main_result = 0;
      for (i = 0; i < N; i++)
    16ac:	8fc20034 	lw	v0,52(s8)
    16b0:	00000000 	sll	zero,zero,0x0
    16b4:	24420001 	addiu	v0,v0,1
    16b8:	afc20034 	sw	v0,52(s8)
    16bc:	8fc20034 	lw	v0,52(s8)
    16c0:	00000000 	sll	zero,zero,0x0
    16c4:	28420014 	slti	v0,v0,20
    16c8:	1440ff9c 	bnez	v0,153c <main+0x40>
    16cc:	00000000 	sll	zero,zero,0x0
	  printf
	    ("a_input=%016llx b_input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     a_input[i], b_input[i], z_output[i], result,
	     ullong_to_double (result));
	}
      printf ("%d\n", main_result);
    16d0:	3c020000 	lui	v0,0x0
    16d4:	24440228 	addiu	a0,v0,552
    16d8:	8fc50030 	lw	a1,48(s8)
    16dc:	0c000000 	jal	0 <shift64RightJamming>
    16e0:	00000000 	sll	zero,zero,0x0
      return main_result;
    16e4:	8fc20030 	lw	v0,48(s8)
    }
    16e8:	03c0e821 	addu	sp,s8,zero
    16ec:	8fbf0074 	lw	ra,116(sp)
    16f0:	8fbe0070 	lw	s8,112(sp)
    16f4:	8fb7006c 	lw	s7,108(sp)
    16f8:	8fb60068 	lw	s6,104(sp)
    16fc:	8fb50064 	lw	s5,100(sp)
    1700:	8fb40060 	lw	s4,96(sp)
    1704:	8fb3005c 	lw	s3,92(sp)
    1708:	8fb20058 	lw	s2,88(sp)
    170c:	8fb10054 	lw	s1,84(sp)
    1710:	8fb00050 	lw	s0,80(sp)
    1714:	27bd0078 	addiu	sp,sp,120
    1718:	03e00008 	jr	ra
    171c:	00000000 	sll	zero,zero,0x0

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
 1e0:	615f696e 	0x615f696e
 1e4:	7075743d 	0x7075743d
 1e8:	25303136 	addiu	s0,t1,12598
 1ec:	6c6c7820 	0x6c6c7820
 1f0:	625f696e 	0x625f696e
 1f4:	7075743d 	0x7075743d
 1f8:	25303136 	addiu	s0,t1,12598
 1fc:	6c6c7820 	0x6c6c7820
 200:	65787065 	0x65787065
 204:	63746564 	0x63746564
 208:	3d253031 	0x3d253031
 20c:	366c6c78 	ori	t4,s3,0x6c78
 210:	206f7574 	addi	t7,v1,30068
 214:	7075743d 	0x7075743d
 218:	25303136 	addiu	s0,t1,12598
 21c:	6c6c7820 	0x6c6c7820
 220:	28256c66 	slti	a1,at,27750
 224:	290a0000 	slti	t2,t0,0
 228:	25640a00 	addiu	a0,t3,2560

0000022c <countLeadingZerosHigh.2164>:
 22c:	00000008 	jr	zero
 230:	00000007 	srav	zero,zero,zero
 234:	00000006 	srlv	zero,zero,zero
 238:	00000006 	srlv	zero,zero,zero
 23c:	00000005 	0x5
 240:	00000005 	0x5
 244:	00000005 	0x5
 248:	00000005 	0x5
 24c:	00000004 	sllv	zero,zero,zero
 250:	00000004 	sllv	zero,zero,zero
 254:	00000004 	sllv	zero,zero,zero
 258:	00000004 	sllv	zero,zero,zero
 25c:	00000004 	sllv	zero,zero,zero
 260:	00000004 	sllv	zero,zero,zero
 264:	00000004 	sllv	zero,zero,zero
 268:	00000004 	sllv	zero,zero,zero
 26c:	00000003 	sra	zero,zero,0x0
 270:	00000003 	sra	zero,zero,0x0
 274:	00000003 	sra	zero,zero,0x0
 278:	00000003 	sra	zero,zero,0x0
 27c:	00000003 	sra	zero,zero,0x0
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
 310:	00000002 	srl	zero,zero,0x0
 314:	00000002 	srl	zero,zero,0x0
 318:	00000002 	srl	zero,zero,0x0
 31c:	00000002 	srl	zero,zero,0x0
 320:	00000002 	srl	zero,zero,0x0
 324:	00000002 	srl	zero,zero,0x0
 328:	00000002 	srl	zero,zero,0x0
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
 410:	00000001 	0x1
 414:	00000001 	0x1
 418:	00000001 	0x1
 41c:	00000001 	0x1
 420:	00000001 	0x1
 424:	00000001 	0x1
 428:	00000001 	0x1
	...
