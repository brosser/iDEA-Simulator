
dfsin.o:     file format elf32-bigmips


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

0000019c <shift64ExtraRightJamming>:
*----------------------------------------------------------------------------*/

INLINE void
shift64ExtraRightJamming (bits64 a0, bits64 a1, int16 count, bits64 * z0Ptr,
			  bits64 * z1Ptr)
{
     19c:	27bdffe0 	addiu	sp,sp,-32
     1a0:	afbe001c 	sw	s8,28(sp)
     1a4:	03a0f021 	addu	s8,sp,zero
     1a8:	afc50024 	sw	a1,36(s8)
     1ac:	afc40020 	sw	a0,32(s8)
     1b0:	afc7002c 	sw	a3,44(s8)
     1b4:	afc60028 	sw	a2,40(s8)
  bits64 z0, z1;
  int8 negCount;
  negCount = (-count) & 63;
     1b8:	8fc40030 	lw	a0,48(s8)
     1bc:	00000000 	sll	zero,zero,0x0
     1c0:	00042023 	negu	a0,a0
     1c4:	3084003f 	andi	a0,a0,0x3f
     1c8:	afc40010 	sw	a0,16(s8)

  if (count == 0)
     1cc:	8fc40030 	lw	a0,48(s8)
     1d0:	00000000 	sll	zero,zero,0x0
     1d4:	1480000b 	bnez	a0,204 <shift64ExtraRightJamming+0x68>
     1d8:	00000000 	sll	zero,zero,0x0
    {
      z1 = a1;
     1dc:	8fc3002c 	lw	v1,44(s8)
     1e0:	8fc20028 	lw	v0,40(s8)
     1e4:	afc3000c 	sw	v1,12(s8)
     1e8:	afc20008 	sw	v0,8(s8)
      z0 = a0;
     1ec:	8fc30024 	lw	v1,36(s8)
     1f0:	8fc20020 	lw	v0,32(s8)
     1f4:	afc30004 	sw	v1,4(s8)
     1f8:	afc20000 	sw	v0,0(s8)
     1fc:	080000f3 	j	3cc <shift64ExtraRightJamming+0x230>
     200:	00000000 	sll	zero,zero,0x0
    }
  else if (count < 64)
     204:	8fc40030 	lw	a0,48(s8)
     208:	00000000 	sll	zero,zero,0x0
     20c:	28840040 	slti	a0,a0,64
     210:	10800049 	beqz	a0,338 <shift64ExtraRightJamming+0x19c>
     214:	00000000 	sll	zero,zero,0x0
    {
      z1 = (a0 << negCount) | (a1 != 0);
     218:	8fc40010 	lw	a0,16(s8)
     21c:	00000000 	sll	zero,zero,0x0
     220:	30840020 	andi	a0,a0,0x20
     224:	10800008 	beqz	a0,248 <shift64ExtraRightJamming+0xac>
     228:	00000000 	sll	zero,zero,0x0
     22c:	8fc50024 	lw	a1,36(s8)
     230:	8fc40010 	lw	a0,16(s8)
     234:	00000000 	sll	zero,zero,0x0
     238:	00851004 	sllv	v0,a1,a0
     23c:	00001821 	addu	v1,zero,zero
     240:	080000a2 	j	288 <shift64ExtraRightJamming+0xec>
     244:	00000000 	sll	zero,zero,0x0
     248:	8fc40024 	lw	a0,36(s8)
     24c:	00000000 	sll	zero,zero,0x0
     250:	00042842 	srl	a1,a0,0x1
     254:	8fc60010 	lw	a2,16(s8)
     258:	2404ffff 	addiu	a0,zero,-1
     25c:	00c42026 	xor	a0,a2,a0
     260:	00852006 	srlv	a0,a1,a0
     264:	8fc60020 	lw	a2,32(s8)
     268:	8fc50010 	lw	a1,16(s8)
     26c:	00000000 	sll	zero,zero,0x0
     270:	00a61004 	sllv	v0,a2,a1
     274:	00821025 	or	v0,a0,v0
     278:	8fc50024 	lw	a1,36(s8)
     27c:	8fc40010 	lw	a0,16(s8)
     280:	00000000 	sll	zero,zero,0x0
     284:	00851804 	sllv	v1,a1,a0
     288:	8fc50028 	lw	a1,40(s8)
     28c:	8fc4002c 	lw	a0,44(s8)
     290:	00000000 	sll	zero,zero,0x0
     294:	00a42025 	or	a0,a1,a0
     298:	0004202b 	sltu	a0,zero,a0
     29c:	00806821 	addu	t5,a0,zero
     2a0:	00006021 	addu	t4,zero,zero
     2a4:	004c2025 	or	a0,v0,t4
     2a8:	afc40008 	sw	a0,8(s8)
     2ac:	006d1025 	or	v0,v1,t5
     2b0:	afc2000c 	sw	v0,12(s8)
      z0 = a0 >> count;
     2b4:	8fc20030 	lw	v0,48(s8)
     2b8:	00000000 	sll	zero,zero,0x0
     2bc:	30420020 	andi	v0,v0,0x20
     2c0:	10400009 	beqz	v0,2e8 <shift64ExtraRightJamming+0x14c>
     2c4:	00000000 	sll	zero,zero,0x0
     2c8:	8fc30020 	lw	v1,32(s8)
     2cc:	8fc20030 	lw	v0,48(s8)
     2d0:	00000000 	sll	zero,zero,0x0
     2d4:	00431006 	srlv	v0,v1,v0
     2d8:	afc20004 	sw	v0,4(s8)
     2dc:	afc00000 	sw	zero,0(s8)
     2e0:	080000f3 	j	3cc <shift64ExtraRightJamming+0x230>
     2e4:	00000000 	sll	zero,zero,0x0
     2e8:	8fc20020 	lw	v0,32(s8)
     2ec:	00000000 	sll	zero,zero,0x0
     2f0:	00021840 	sll	v1,v0,0x1
     2f4:	8fc40030 	lw	a0,48(s8)
     2f8:	2402ffff 	addiu	v0,zero,-1
     2fc:	00821026 	xor	v0,a0,v0
     300:	00431004 	sllv	v0,v1,v0
     304:	8fc40024 	lw	a0,36(s8)
     308:	8fc30030 	lw	v1,48(s8)
     30c:	00000000 	sll	zero,zero,0x0
     310:	00641806 	srlv	v1,a0,v1
     314:	00621025 	or	v0,v1,v0
     318:	afc20004 	sw	v0,4(s8)
     31c:	8fc30020 	lw	v1,32(s8)
     320:	8fc20030 	lw	v0,48(s8)
     324:	00000000 	sll	zero,zero,0x0
     328:	00431006 	srlv	v0,v1,v0
     32c:	afc20000 	sw	v0,0(s8)
     330:	080000f3 	j	3cc <shift64ExtraRightJamming+0x230>
     334:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      if (count == 64)
     338:	8fc30030 	lw	v1,48(s8)
     33c:	24020040 	addiu	v0,zero,64
     340:	14620012 	bne	v1,v0,38c <shift64ExtraRightJamming+0x1f0>
     344:	00000000 	sll	zero,zero,0x0
	{
	  z1 = a0 | (a1 != 0);
     348:	8fc30028 	lw	v1,40(s8)
     34c:	8fc2002c 	lw	v0,44(s8)
     350:	00000000 	sll	zero,zero,0x0
     354:	00621025 	or	v0,v1,v0
     358:	0002102b 	sltu	v0,zero,v0
     35c:	00405821 	addu	t3,v0,zero
     360:	00005021 	addu	t2,zero,zero
     364:	8fc20020 	lw	v0,32(s8)
     368:	00000000 	sll	zero,zero,0x0
     36c:	004a1025 	or	v0,v0,t2
     370:	afc20008 	sw	v0,8(s8)
     374:	8fc20024 	lw	v0,36(s8)
     378:	00000000 	sll	zero,zero,0x0
     37c:	004b1025 	or	v0,v0,t3
     380:	afc2000c 	sw	v0,12(s8)
     384:	080000ef 	j	3bc <shift64ExtraRightJamming+0x220>
     388:	00000000 	sll	zero,zero,0x0
	}
      else
	{
	  z1 = ((a0 | a1) != 0);
     38c:	8fc30020 	lw	v1,32(s8)
     390:	8fc20028 	lw	v0,40(s8)
     394:	00000000 	sll	zero,zero,0x0
     398:	00624025 	or	t0,v1,v0
     39c:	8fc30024 	lw	v1,36(s8)
     3a0:	8fc2002c 	lw	v0,44(s8)
     3a4:	00000000 	sll	zero,zero,0x0
     3a8:	00624825 	or	t1,v1,v0
     3ac:	01091025 	or	v0,t0,t1
     3b0:	0002102b 	sltu	v0,zero,v0
     3b4:	afc2000c 	sw	v0,12(s8)
     3b8:	afc00008 	sw	zero,8(s8)
	}
      z0 = 0;
     3bc:	00001821 	addu	v1,zero,zero
     3c0:	00001021 	addu	v0,zero,zero
     3c4:	afc30004 	sw	v1,4(s8)
     3c8:	afc20000 	sw	v0,0(s8)
    }
  *z1Ptr = z1;
     3cc:	8fc40038 	lw	a0,56(s8)
     3d0:	8fc3000c 	lw	v1,12(s8)
     3d4:	8fc20008 	lw	v0,8(s8)
     3d8:	ac830004 	sw	v1,4(a0)
     3dc:	ac820000 	sw	v0,0(a0)
  *z0Ptr = z0;
     3e0:	8fc40034 	lw	a0,52(s8)
     3e4:	8fc30004 	lw	v1,4(s8)
     3e8:	8fc20000 	lw	v0,0(s8)
     3ec:	ac830004 	sw	v1,4(a0)
     3f0:	ac820000 	sw	v0,0(a0)

}
     3f4:	03c0e821 	addu	sp,s8,zero
     3f8:	8fbe001c 	lw	s8,28(sp)
     3fc:	27bd0020 	addiu	sp,sp,32
     400:	03e00008 	jr	ra
     404:	00000000 	sll	zero,zero,0x0

00000408 <add128>:
*----------------------------------------------------------------------------*/

INLINE void
add128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     408:	27bdfff0 	addiu	sp,sp,-16
     40c:	afbe000c 	sw	s8,12(sp)
     410:	03a0f021 	addu	s8,sp,zero
     414:	afc50014 	sw	a1,20(s8)
     418:	afc40010 	sw	a0,16(s8)
     41c:	afc7001c 	sw	a3,28(s8)
     420:	afc60018 	sw	a2,24(s8)
  bits64 z1;

  z1 = a1 + b1;
     424:	8fc5001c 	lw	a1,28(s8)
     428:	8fc40018 	lw	a0,24(s8)
     42c:	8fc7002c 	lw	a3,44(s8)
     430:	8fc60028 	lw	a2,40(s8)
     434:	00a71821 	addu	v1,a1,a3
     438:	0065402b 	sltu	t0,v1,a1
     43c:	00861021 	addu	v0,a0,a2
     440:	01022021 	addu	a0,t0,v0
     444:	00801021 	addu	v0,a0,zero
     448:	afc30004 	sw	v1,4(s8)
     44c:	afc20000 	sw	v0,0(s8)
  *z1Ptr = z1;
     450:	8fc40034 	lw	a0,52(s8)
     454:	8fc30004 	lw	v1,4(s8)
     458:	8fc20000 	lw	v0,0(s8)
     45c:	ac830004 	sw	v1,4(a0)
     460:	ac820000 	sw	v0,0(a0)
  *z0Ptr = a0 + b0 + (z1 < a1);
     464:	8fc50014 	lw	a1,20(s8)
     468:	8fc40010 	lw	a0,16(s8)
     46c:	8fc70024 	lw	a3,36(s8)
     470:	8fc60020 	lw	a2,32(s8)
     474:	00a71821 	addu	v1,a1,a3
     478:	0065402b 	sltu	t0,v1,a1
     47c:	00861021 	addu	v0,a0,a2
     480:	01022021 	addu	a0,t0,v0
     484:	00801021 	addu	v0,a0,zero
     488:	00603821 	addu	a3,v1,zero
     48c:	00403021 	addu	a2,v0,zero
     490:	24050001 	addiu	a1,zero,1
     494:	00002021 	addu	a0,zero,zero
     498:	8fc30018 	lw	v1,24(s8)
     49c:	8fc20000 	lw	v0,0(s8)
     4a0:	00000000 	sll	zero,zero,0x0
     4a4:	0043102b 	sltu	v0,v0,v1
     4a8:	1440000e 	bnez	v0,4e4 <add128+0xdc>
     4ac:	00000000 	sll	zero,zero,0x0
     4b0:	8fc30018 	lw	v1,24(s8)
     4b4:	8fc20000 	lw	v0,0(s8)
     4b8:	00000000 	sll	zero,zero,0x0
     4bc:	14620007 	bne	v1,v0,4dc <add128+0xd4>
     4c0:	00000000 	sll	zero,zero,0x0
     4c4:	8fc3001c 	lw	v1,28(s8)
     4c8:	8fc20004 	lw	v0,4(s8)
     4cc:	00000000 	sll	zero,zero,0x0
     4d0:	0043102b 	sltu	v0,v0,v1
     4d4:	14400003 	bnez	v0,4e4 <add128+0xdc>
     4d8:	00000000 	sll	zero,zero,0x0
     4dc:	00002821 	addu	a1,zero,zero
     4e0:	00002021 	addu	a0,zero,zero
     4e4:	00e51821 	addu	v1,a3,a1
     4e8:	0067402b 	sltu	t0,v1,a3
     4ec:	00c41021 	addu	v0,a2,a0
     4f0:	01022021 	addu	a0,t0,v0
     4f4:	00801021 	addu	v0,a0,zero
     4f8:	8fc40030 	lw	a0,48(s8)
     4fc:	00000000 	sll	zero,zero,0x0
     500:	ac830004 	sw	v1,4(a0)
     504:	ac820000 	sw	v0,0(a0)

}
     508:	03c0e821 	addu	sp,s8,zero
     50c:	8fbe000c 	lw	s8,12(sp)
     510:	27bd0010 	addiu	sp,sp,16
     514:	03e00008 	jr	ra
     518:	00000000 	sll	zero,zero,0x0

0000051c <sub128>:
*----------------------------------------------------------------------------*/

INLINE void
sub128 (bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
	bits64 * z1Ptr)
{
     51c:	27bdfff8 	addiu	sp,sp,-8
     520:	afbe0004 	sw	s8,4(sp)
     524:	03a0f021 	addu	s8,sp,zero
     528:	afc5000c 	sw	a1,12(s8)
     52c:	afc40008 	sw	a0,8(s8)
     530:	afc70014 	sw	a3,20(s8)
     534:	afc60010 	sw	a2,16(s8)

  *z1Ptr = a1 - b1;
     538:	8fc50014 	lw	a1,20(s8)
     53c:	8fc40010 	lw	a0,16(s8)
     540:	8fc70024 	lw	a3,36(s8)
     544:	8fc60020 	lw	a2,32(s8)
     548:	00a71823 	subu	v1,a1,a3
     54c:	00a3402b 	sltu	t0,a1,v1
     550:	00861023 	subu	v0,a0,a2
     554:	00482023 	subu	a0,v0,t0
     558:	00801021 	addu	v0,a0,zero
     55c:	8fc4002c 	lw	a0,44(s8)
     560:	00000000 	sll	zero,zero,0x0
     564:	ac830004 	sw	v1,4(a0)
     568:	ac820000 	sw	v0,0(a0)
  *z0Ptr = a0 - b0 - (a1 < b1);
     56c:	8fc5000c 	lw	a1,12(s8)
     570:	8fc40008 	lw	a0,8(s8)
     574:	8fc7001c 	lw	a3,28(s8)
     578:	8fc60018 	lw	a2,24(s8)
     57c:	00a71823 	subu	v1,a1,a3
     580:	00a3402b 	sltu	t0,a1,v1
     584:	00861023 	subu	v0,a0,a2
     588:	00482023 	subu	a0,v0,t0
     58c:	00801021 	addu	v0,a0,zero
     590:	00603821 	addu	a3,v1,zero
     594:	00403021 	addu	a2,v0,zero
     598:	24050001 	addiu	a1,zero,1
     59c:	00002021 	addu	a0,zero,zero
     5a0:	8fc30020 	lw	v1,32(s8)
     5a4:	8fc20010 	lw	v0,16(s8)
     5a8:	00000000 	sll	zero,zero,0x0
     5ac:	0043102b 	sltu	v0,v0,v1
     5b0:	1440000e 	bnez	v0,5ec <sub128+0xd0>
     5b4:	00000000 	sll	zero,zero,0x0
     5b8:	8fc30020 	lw	v1,32(s8)
     5bc:	8fc20010 	lw	v0,16(s8)
     5c0:	00000000 	sll	zero,zero,0x0
     5c4:	14620007 	bne	v1,v0,5e4 <sub128+0xc8>
     5c8:	00000000 	sll	zero,zero,0x0
     5cc:	8fc30024 	lw	v1,36(s8)
     5d0:	8fc20014 	lw	v0,20(s8)
     5d4:	00000000 	sll	zero,zero,0x0
     5d8:	0043102b 	sltu	v0,v0,v1
     5dc:	14400003 	bnez	v0,5ec <sub128+0xd0>
     5e0:	00000000 	sll	zero,zero,0x0
     5e4:	00002821 	addu	a1,zero,zero
     5e8:	00002021 	addu	a0,zero,zero
     5ec:	00e51823 	subu	v1,a3,a1
     5f0:	00e3402b 	sltu	t0,a3,v1
     5f4:	00c41023 	subu	v0,a2,a0
     5f8:	00482023 	subu	a0,v0,t0
     5fc:	00801021 	addu	v0,a0,zero
     600:	8fc40028 	lw	a0,40(s8)
     604:	00000000 	sll	zero,zero,0x0
     608:	ac830004 	sw	v1,4(a0)
     60c:	ac820000 	sw	v0,0(a0)

}
     610:	03c0e821 	addu	sp,s8,zero
     614:	8fbe0004 	lw	s8,4(sp)
     618:	27bd0008 	addiu	sp,sp,8
     61c:	03e00008 	jr	ra
     620:	00000000 	sll	zero,zero,0x0

00000624 <mul64To128>:
| `z0Ptr' and `z1Ptr'.
*----------------------------------------------------------------------------*/

INLINE void
mul64To128 (bits64 a, bits64 b, bits64 * z0Ptr, bits64 * z1Ptr)
{
     624:	27bdffa0 	addiu	sp,sp,-96
     628:	afbe005c 	sw	s8,92(sp)
     62c:	afb70058 	sw	s7,88(sp)
     630:	afb60054 	sw	s6,84(sp)
     634:	afb50050 	sw	s5,80(sp)
     638:	afb4004c 	sw	s4,76(sp)
     63c:	afb30048 	sw	s3,72(sp)
     640:	afb20044 	sw	s2,68(sp)
     644:	afb10040 	sw	s1,64(sp)
     648:	afb0003c 	sw	s0,60(sp)
     64c:	03a0f021 	addu	s8,sp,zero
     650:	afc50064 	sw	a1,100(s8)
     654:	afc40060 	sw	a0,96(s8)
     658:	afc7006c 	sw	a3,108(s8)
     65c:	afc60068 	sw	a2,104(s8)
  bits32 aHigh, aLow, bHigh, bLow;
  bits64 z0, zMiddleA, zMiddleB, z1;

  aLow = a;
     660:	8fc40064 	lw	a0,100(s8)
     664:	00000000 	sll	zero,zero,0x0
     668:	afc40000 	sw	a0,0(s8)
  aHigh = a >> 32;
     66c:	8fc40060 	lw	a0,96(s8)
     670:	00000000 	sll	zero,zero,0x0
     674:	00042002 	srl	a0,a0,0x0
     678:	afc40034 	sw	a0,52(s8)
     67c:	00001021 	addu	v0,zero,zero
     680:	afc20030 	sw	v0,48(s8)
     684:	8fc20034 	lw	v0,52(s8)
     688:	00000000 	sll	zero,zero,0x0
     68c:	afc20004 	sw	v0,4(s8)
  bLow = b;
     690:	8fc4006c 	lw	a0,108(s8)
     694:	00000000 	sll	zero,zero,0x0
     698:	afc40008 	sw	a0,8(s8)
  bHigh = b >> 32;
     69c:	8fc40068 	lw	a0,104(s8)
     6a0:	00000000 	sll	zero,zero,0x0
     6a4:	0004b802 	srl	s7,a0,0x0
     6a8:	0000b021 	addu	s6,zero,zero
     6ac:	afd7000c 	sw	s7,12(s8)
  z1 = ((bits64) aLow) * bLow;
     6b0:	8fd50000 	lw	s5,0(s8)
     6b4:	0000a021 	addu	s4,zero,zero
     6b8:	8fc30008 	lw	v1,8(s8)
     6bc:	00001021 	addu	v0,zero,zero
     6c0:	02830018 	mult	s4,v1
     6c4:	00002012 	mflo	a0
	...
     6d0:	00550018 	mult	v0,s5
     6d4:	00002812 	mflo	a1
     6d8:	00852021 	addu	a0,a0,a1
     6dc:	00000000 	sll	zero,zero,0x0
     6e0:	02a30019 	multu	s5,v1
     6e4:	00001812 	mflo	v1
     6e8:	00001010 	mfhi	v0
     6ec:	00822021 	addu	a0,a0,v0
     6f0:	00801021 	addu	v0,a0,zero
     6f4:	afc30014 	sw	v1,20(s8)
     6f8:	afc20010 	sw	v0,16(s8)
     6fc:	afc30014 	sw	v1,20(s8)
     700:	afc20010 	sw	v0,16(s8)
  zMiddleA = ((bits64) aLow) * bHigh;
     704:	8fd30000 	lw	s3,0(s8)
     708:	00009021 	addu	s2,zero,zero
     70c:	8fd1000c 	lw	s1,12(s8)
     710:	00008021 	addu	s0,zero,zero
     714:	02510018 	mult	s2,s1
     718:	00002012 	mflo	a0
	...
     724:	02130018 	mult	s0,s3
     728:	00001012 	mflo	v0
     72c:	00822021 	addu	a0,a0,v0
     730:	00000000 	sll	zero,zero,0x0
     734:	02710019 	multu	s3,s1
     738:	00001812 	mflo	v1
     73c:	00001010 	mfhi	v0
     740:	00822021 	addu	a0,a0,v0
     744:	00801021 	addu	v0,a0,zero
     748:	afc3001c 	sw	v1,28(s8)
     74c:	afc20018 	sw	v0,24(s8)
     750:	afc3001c 	sw	v1,28(s8)
     754:	afc20018 	sw	v0,24(s8)
  zMiddleB = ((bits64) aHigh) * bLow;
     758:	8fd90004 	lw	t9,4(s8)
     75c:	0000c021 	addu	t8,zero,zero
     760:	8fcf0008 	lw	t7,8(s8)
     764:	00007021 	addu	t6,zero,zero
     768:	030f0018 	mult	t8,t7
     76c:	00002012 	mflo	a0
	...
     778:	01d90018 	mult	t6,t9
     77c:	00001012 	mflo	v0
     780:	00822021 	addu	a0,a0,v0
     784:	00000000 	sll	zero,zero,0x0
     788:	032f0019 	multu	t9,t7
     78c:	00001812 	mflo	v1
     790:	00001010 	mfhi	v0
     794:	00822021 	addu	a0,a0,v0
     798:	00801021 	addu	v0,a0,zero
     79c:	afc30024 	sw	v1,36(s8)
     7a0:	afc20020 	sw	v0,32(s8)
     7a4:	afc30024 	sw	v1,36(s8)
     7a8:	afc20020 	sw	v0,32(s8)
  z0 = ((bits64) aHigh) * bHigh;
     7ac:	8fcd0004 	lw	t5,4(s8)
     7b0:	00006021 	addu	t4,zero,zero
     7b4:	8fcb000c 	lw	t3,12(s8)
     7b8:	00005021 	addu	t2,zero,zero
     7bc:	018b0018 	mult	t4,t3
     7c0:	00002012 	mflo	a0
	...
     7cc:	014d0018 	mult	t2,t5
     7d0:	00001012 	mflo	v0
     7d4:	00822021 	addu	a0,a0,v0
     7d8:	00000000 	sll	zero,zero,0x0
     7dc:	01ab0019 	multu	t5,t3
     7e0:	00001812 	mflo	v1
     7e4:	00001010 	mfhi	v0
     7e8:	00822021 	addu	a0,a0,v0
     7ec:	00801021 	addu	v0,a0,zero
     7f0:	afc3002c 	sw	v1,44(s8)
     7f4:	afc20028 	sw	v0,40(s8)
     7f8:	afc3002c 	sw	v1,44(s8)
     7fc:	afc20028 	sw	v0,40(s8)
  zMiddleA += zMiddleB;
     800:	8fc5001c 	lw	a1,28(s8)
     804:	8fc40018 	lw	a0,24(s8)
     808:	8fc70024 	lw	a3,36(s8)
     80c:	8fc60020 	lw	a2,32(s8)
     810:	00a71821 	addu	v1,a1,a3
     814:	0065502b 	sltu	t2,v1,a1
     818:	00861021 	addu	v0,a0,a2
     81c:	01422021 	addu	a0,t2,v0
     820:	00801021 	addu	v0,a0,zero
     824:	afc3001c 	sw	v1,28(s8)
     828:	afc20018 	sw	v0,24(s8)
  z0 += (((bits64) (zMiddleA < zMiddleB)) << 32) + (zMiddleA >> 32);
     82c:	8fc30020 	lw	v1,32(s8)
     830:	8fc20018 	lw	v0,24(s8)
     834:	00000000 	sll	zero,zero,0x0
     838:	0043102b 	sltu	v0,v0,v1
     83c:	1440000c 	bnez	v0,870 <mul64To128+0x24c>
     840:	00000000 	sll	zero,zero,0x0
     844:	8fc30020 	lw	v1,32(s8)
     848:	8fc20018 	lw	v0,24(s8)
     84c:	00000000 	sll	zero,zero,0x0
     850:	1462000b 	bne	v1,v0,880 <mul64To128+0x25c>
     854:	00000000 	sll	zero,zero,0x0
     858:	8fc30024 	lw	v1,36(s8)
     85c:	8fc2001c 	lw	v0,28(s8)
     860:	00000000 	sll	zero,zero,0x0
     864:	0043102b 	sltu	v0,v0,v1
     868:	10400005 	beqz	v0,880 <mul64To128+0x25c>
     86c:	00000000 	sll	zero,zero,0x0
     870:	00002821 	addu	a1,zero,zero
     874:	24040001 	addiu	a0,zero,1
     878:	08000222 	j	888 <mul64To128+0x264>
     87c:	00000000 	sll	zero,zero,0x0
     880:	00002821 	addu	a1,zero,zero
     884:	00002021 	addu	a0,zero,zero
     888:	8fc20018 	lw	v0,24(s8)
     88c:	00000000 	sll	zero,zero,0x0
     890:	00024802 	srl	t1,v0,0x0
     894:	00004021 	addu	t0,zero,zero
     898:	00a91821 	addu	v1,a1,t1
     89c:	0065302b 	sltu	a2,v1,a1
     8a0:	00881021 	addu	v0,a0,t0
     8a4:	00c22021 	addu	a0,a2,v0
     8a8:	00801021 	addu	v0,a0,zero
     8ac:	00603821 	addu	a3,v1,zero
     8b0:	00403021 	addu	a2,v0,zero
     8b4:	8fc5002c 	lw	a1,44(s8)
     8b8:	8fc40028 	lw	a0,40(s8)
     8bc:	00a71821 	addu	v1,a1,a3
     8c0:	0065402b 	sltu	t0,v1,a1
     8c4:	00861021 	addu	v0,a0,a2
     8c8:	01022021 	addu	a0,t0,v0
     8cc:	00801021 	addu	v0,a0,zero
     8d0:	afc3002c 	sw	v1,44(s8)
     8d4:	afc20028 	sw	v0,40(s8)
  zMiddleA <<= 32;
     8d8:	8fc2001c 	lw	v0,28(s8)
     8dc:	00000000 	sll	zero,zero,0x0
     8e0:	00021000 	sll	v0,v0,0x0
     8e4:	afc20018 	sw	v0,24(s8)
     8e8:	afc0001c 	sw	zero,28(s8)
  z1 += zMiddleA;
     8ec:	8fc50014 	lw	a1,20(s8)
     8f0:	8fc40010 	lw	a0,16(s8)
     8f4:	8fc7001c 	lw	a3,28(s8)
     8f8:	8fc60018 	lw	a2,24(s8)
     8fc:	00a71821 	addu	v1,a1,a3
     900:	0065402b 	sltu	t0,v1,a1
     904:	00861021 	addu	v0,a0,a2
     908:	01022021 	addu	a0,t0,v0
     90c:	00801021 	addu	v0,a0,zero
     910:	afc30014 	sw	v1,20(s8)
     914:	afc20010 	sw	v0,16(s8)
  z0 += (z1 < zMiddleA);
     918:	24050001 	addiu	a1,zero,1
     91c:	00002021 	addu	a0,zero,zero
     920:	8fc30018 	lw	v1,24(s8)
     924:	8fc20010 	lw	v0,16(s8)
     928:	00000000 	sll	zero,zero,0x0
     92c:	0043102b 	sltu	v0,v0,v1
     930:	1440000e 	bnez	v0,96c <mul64To128+0x348>
     934:	00000000 	sll	zero,zero,0x0
     938:	8fc30018 	lw	v1,24(s8)
     93c:	8fc20010 	lw	v0,16(s8)
     940:	00000000 	sll	zero,zero,0x0
     944:	14620007 	bne	v1,v0,964 <mul64To128+0x340>
     948:	00000000 	sll	zero,zero,0x0
     94c:	8fc3001c 	lw	v1,28(s8)
     950:	8fc20014 	lw	v0,20(s8)
     954:	00000000 	sll	zero,zero,0x0
     958:	0043102b 	sltu	v0,v0,v1
     95c:	14400003 	bnez	v0,96c <mul64To128+0x348>
     960:	00000000 	sll	zero,zero,0x0
     964:	00002821 	addu	a1,zero,zero
     968:	00002021 	addu	a0,zero,zero
     96c:	8fc7002c 	lw	a3,44(s8)
     970:	8fc60028 	lw	a2,40(s8)
     974:	00e51821 	addu	v1,a3,a1
     978:	0067402b 	sltu	t0,v1,a3
     97c:	00c41021 	addu	v0,a2,a0
     980:	01022021 	addu	a0,t0,v0
     984:	00801021 	addu	v0,a0,zero
     988:	afc3002c 	sw	v1,44(s8)
     98c:	afc20028 	sw	v0,40(s8)
  *z1Ptr = z1;
     990:	8fc40074 	lw	a0,116(s8)
     994:	8fc30014 	lw	v1,20(s8)
     998:	8fc20010 	lw	v0,16(s8)
     99c:	ac830004 	sw	v1,4(a0)
     9a0:	ac820000 	sw	v0,0(a0)
  *z0Ptr = z0;
     9a4:	8fc40070 	lw	a0,112(s8)
     9a8:	8fc3002c 	lw	v1,44(s8)
     9ac:	8fc20028 	lw	v0,40(s8)
     9b0:	ac830004 	sw	v1,4(a0)
     9b4:	ac820000 	sw	v0,0(a0)

}
     9b8:	03c0e821 	addu	sp,s8,zero
     9bc:	8fbe005c 	lw	s8,92(sp)
     9c0:	8fb70058 	lw	s7,88(sp)
     9c4:	8fb60054 	lw	s6,84(sp)
     9c8:	8fb50050 	lw	s5,80(sp)
     9cc:	8fb4004c 	lw	s4,76(sp)
     9d0:	8fb30048 	lw	s3,72(sp)
     9d4:	8fb20044 	lw	s2,68(sp)
     9d8:	8fb10040 	lw	s1,64(sp)
     9dc:	8fb0003c 	lw	s0,60(sp)
     9e0:	27bd0060 	addiu	sp,sp,96
     9e4:	03e00008 	jr	ra
     9e8:	00000000 	sll	zero,zero,0x0

000009ec <estimateDiv128To64>:
| unsigned integer is returned.
*----------------------------------------------------------------------------*/

static bits64
estimateDiv128To64 (bits64 a0, bits64 a1, bits64 b)
{
     9ec:	27bdff70 	addiu	sp,sp,-144
     9f0:	afbf008c 	sw	ra,140(sp)
     9f4:	afbe0088 	sw	s8,136(sp)
     9f8:	afb70084 	sw	s7,132(sp)
     9fc:	afb60080 	sw	s6,128(sp)
     a00:	afb5007c 	sw	s5,124(sp)
     a04:	afb40078 	sw	s4,120(sp)
     a08:	afb30074 	sw	s3,116(sp)
     a0c:	afb20070 	sw	s2,112(sp)
     a10:	afb1006c 	sw	s1,108(sp)
     a14:	afb00068 	sw	s0,104(sp)
     a18:	03a0f021 	addu	s8,sp,zero
     a1c:	afc50094 	sw	a1,148(s8)
     a20:	afc40090 	sw	a0,144(s8)
     a24:	afc7009c 	sw	a3,156(s8)
     a28:	afc60098 	sw	a2,152(s8)
  bits64 b0, b1;
  bits64 rem0, rem1, term0, term1;
  bits64 z;

  if (b <= a0)
     a2c:	8fc500a0 	lw	a1,160(s8)
     a30:	8fc40090 	lw	a0,144(s8)
     a34:	00000000 	sll	zero,zero,0x0
     a38:	0085202b 	sltu	a0,a0,a1
     a3c:	14800010 	bnez	a0,a80 <estimateDiv128To64+0x94>
     a40:	00000000 	sll	zero,zero,0x0
     a44:	8fc500a0 	lw	a1,160(s8)
     a48:	8fc40090 	lw	a0,144(s8)
     a4c:	00000000 	sll	zero,zero,0x0
     a50:	14a40007 	bne	a1,a0,a70 <estimateDiv128To64+0x84>
     a54:	00000000 	sll	zero,zero,0x0
     a58:	8fc500a4 	lw	a1,164(s8)
     a5c:	8fc40094 	lw	a0,148(s8)
     a60:	00000000 	sll	zero,zero,0x0
     a64:	0085202b 	sltu	a0,a0,a1
     a68:	14800005 	bnez	a0,a80 <estimateDiv128To64+0x94>
     a6c:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
     a70:	2403ffff 	addiu	v1,zero,-1
     a74:	2402ffff 	addiu	v0,zero,-1
     a78:	08000343 	j	d0c <estimateDiv128To64+0x320>
     a7c:	00000000 	sll	zero,zero,0x0
  b0 = b >> 32;
     a80:	8fc400a0 	lw	a0,160(s8)
     a84:	00000000 	sll	zero,zero,0x0
     a88:	00042002 	srl	a0,a0,0x0
     a8c:	afc40034 	sw	a0,52(s8)
     a90:	afc00030 	sw	zero,48(s8)
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
     a94:	8fc40034 	lw	a0,52(s8)
     a98:	00000000 	sll	zero,zero,0x0
     a9c:	00041000 	sll	v0,a0,0x0
     aa0:	00001821 	addu	v1,zero,zero
     aa4:	8fc40090 	lw	a0,144(s8)
     aa8:	00000000 	sll	zero,zero,0x0
     aac:	0082202b 	sltu	a0,a0,v0
     ab0:	1480000a 	bnez	a0,adc <estimateDiv128To64+0xf0>
     ab4:	00000000 	sll	zero,zero,0x0
     ab8:	8fc50090 	lw	a1,144(s8)
     abc:	00402021 	addu	a0,v0,zero
     ac0:	14a40010 	bne	a1,a0,b04 <estimateDiv128To64+0x118>
     ac4:	00000000 	sll	zero,zero,0x0
     ac8:	8fc40094 	lw	a0,148(s8)
     acc:	00000000 	sll	zero,zero,0x0
     ad0:	0083102b 	sltu	v0,a0,v1
     ad4:	1040000b 	beqz	v0,b04 <estimateDiv128To64+0x118>
     ad8:	00000000 	sll	zero,zero,0x0
     adc:	8fc50094 	lw	a1,148(s8)
     ae0:	8fc40090 	lw	a0,144(s8)
     ae4:	8fc70034 	lw	a3,52(s8)
     ae8:	8fc60030 	lw	a2,48(s8)
     aec:	0c000000 	jal	0 <shift64RightJamming>
     af0:	00000000 	sll	zero,zero,0x0
     af4:	0003b000 	sll	s6,v1,0x0
     af8:	0000b821 	addu	s7,zero,zero
     afc:	080002c3 	j	b0c <estimateDiv128To64+0x120>
     b00:	00000000 	sll	zero,zero,0x0
     b04:	0000b821 	addu	s7,zero,zero
     b08:	2416ffff 	addiu	s6,zero,-1
     b0c:	afd7002c 	sw	s7,44(s8)
     b10:	afd60028 	sw	s6,40(s8)
  mul64To128 (b, z, &term0, &term1);
     b14:	27c20050 	addiu	v0,s8,80
     b18:	afa20010 	sw	v0,16(sp)
     b1c:	27c20058 	addiu	v0,s8,88
     b20:	afa20014 	sw	v0,20(sp)
     b24:	8fc500a4 	lw	a1,164(s8)
     b28:	8fc400a0 	lw	a0,160(s8)
     b2c:	8fc7002c 	lw	a3,44(s8)
     b30:	8fc60028 	lw	a2,40(s8)
     b34:	0c000000 	jal	0 <shift64RightJamming>
     b38:	00000000 	sll	zero,zero,0x0
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
     b3c:	8fc50054 	lw	a1,84(s8)
     b40:	8fc40050 	lw	a0,80(s8)
     b44:	8fc3005c 	lw	v1,92(s8)
     b48:	8fc20058 	lw	v0,88(s8)
     b4c:	afa50014 	sw	a1,20(sp)
     b50:	afa40010 	sw	a0,16(sp)
     b54:	afa3001c 	sw	v1,28(sp)
     b58:	afa20018 	sw	v0,24(sp)
     b5c:	27c20040 	addiu	v0,s8,64
     b60:	afa20020 	sw	v0,32(sp)
     b64:	27c20048 	addiu	v0,s8,72
     b68:	afa20024 	sw	v0,36(sp)
     b6c:	8fc50094 	lw	a1,148(s8)
     b70:	8fc40090 	lw	a0,144(s8)
     b74:	8fc7009c 	lw	a3,156(s8)
     b78:	8fc60098 	lw	a2,152(s8)
     b7c:	0c000000 	jal	0 <shift64RightJamming>
     b80:	00000000 	sll	zero,zero,0x0
  while (((sbits64) rem0) < 0)
     b84:	08000307 	j	c1c <estimateDiv128To64+0x230>
     b88:	00000000 	sll	zero,zero,0x0
    {
      z -= LIT64 (0x100000000);
     b8c:	8fc5002c 	lw	a1,44(s8)
     b90:	8fc40028 	lw	a0,40(s8)
     b94:	00003821 	addu	a3,zero,zero
     b98:	2406ffff 	addiu	a2,zero,-1
     b9c:	00a71821 	addu	v1,a1,a3
     ba0:	0065402b 	sltu	t0,v1,a1
     ba4:	00861021 	addu	v0,a0,a2
     ba8:	01022021 	addu	a0,t0,v0
     bac:	00801021 	addu	v0,a0,zero
     bb0:	afc3002c 	sw	v1,44(s8)
     bb4:	afc20028 	sw	v0,40(s8)
      b1 = b << 32;
     bb8:	8fc200a4 	lw	v0,164(s8)
     bbc:	00000000 	sll	zero,zero,0x0
     bc0:	00021000 	sll	v0,v0,0x0
     bc4:	afc20038 	sw	v0,56(s8)
     bc8:	afc0003c 	sw	zero,60(s8)
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
     bcc:	8fc50044 	lw	a1,68(s8)
     bd0:	8fc40040 	lw	a0,64(s8)
     bd4:	8fc3004c 	lw	v1,76(s8)
     bd8:	8fc20048 	lw	v0,72(s8)
     bdc:	8fc70034 	lw	a3,52(s8)
     be0:	8fc60030 	lw	a2,48(s8)
     be4:	afa70014 	sw	a3,20(sp)
     be8:	afa60010 	sw	a2,16(sp)
     bec:	8fc7003c 	lw	a3,60(s8)
     bf0:	8fc60038 	lw	a2,56(s8)
     bf4:	afa7001c 	sw	a3,28(sp)
     bf8:	afa60018 	sw	a2,24(sp)
     bfc:	27c60040 	addiu	a2,s8,64
     c00:	afa60020 	sw	a2,32(sp)
     c04:	27c60048 	addiu	a2,s8,72
     c08:	afa60024 	sw	a2,36(sp)
     c0c:	00603821 	addu	a3,v1,zero
     c10:	00403021 	addu	a2,v0,zero
     c14:	0c000000 	jal	0 <shift64RightJamming>
     c18:	00000000 	sll	zero,zero,0x0
    return LIT64 (0xFFFFFFFFFFFFFFFF);
  b0 = b >> 32;
  z = (b0 << 32 <= a0) ? LIT64 (0xFFFFFFFF00000000) : (a0 / b0) << 32;
  mul64To128 (b, z, &term0, &term1);
  sub128 (a0, a1, term0, term1, &rem0, &rem1);
  while (((sbits64) rem0) < 0)
     c1c:	8fc30044 	lw	v1,68(s8)
     c20:	8fc20040 	lw	v0,64(s8)
     c24:	00000000 	sll	zero,zero,0x0
     c28:	0440ffd8 	bltz	v0,b8c <estimateDiv128To64+0x1a0>
     c2c:	00000000 	sll	zero,zero,0x0
    {
      z -= LIT64 (0x100000000);
      b1 = b << 32;
      add128 (rem0, rem1, b0, b1, &rem0, &rem1);
    }
  rem0 = (rem0 << 32) | (rem1 >> 32);
     c30:	8fc30044 	lw	v1,68(s8)
     c34:	8fc20040 	lw	v0,64(s8)
     c38:	0003a000 	sll	s4,v1,0x0
     c3c:	0000a821 	addu	s5,zero,zero
     c40:	8fc3004c 	lw	v1,76(s8)
     c44:	8fc20048 	lw	v0,72(s8)
     c48:	00000000 	sll	zero,zero,0x0
     c4c:	00029802 	srl	s3,v0,0x0
     c50:	00009021 	addu	s2,zero,zero
     c54:	02921025 	or	v0,s4,s2
     c58:	afc20060 	sw	v0,96(s8)
     c5c:	02b31825 	or	v1,s5,s3
     c60:	afc30064 	sw	v1,100(s8)
     c64:	8fc30064 	lw	v1,100(s8)
     c68:	8fc20060 	lw	v0,96(s8)
     c6c:	afc30044 	sw	v1,68(s8)
     c70:	afc20040 	sw	v0,64(s8)
  z |= (b0 << 32 <= rem0) ? 0xFFFFFFFF : rem0 / b0;
     c74:	8fc20034 	lw	v0,52(s8)
     c78:	00000000 	sll	zero,zero,0x0
     c7c:	00028000 	sll	s0,v0,0x0
     c80:	00008821 	addu	s1,zero,zero
     c84:	8fc30044 	lw	v1,68(s8)
     c88:	8fc20040 	lw	v0,64(s8)
     c8c:	00000000 	sll	zero,zero,0x0
     c90:	0050202b 	sltu	a0,v0,s0
     c94:	14800007 	bnez	a0,cb4 <estimateDiv128To64+0x2c8>
     c98:	00000000 	sll	zero,zero,0x0
     c9c:	00402021 	addu	a0,v0,zero
     ca0:	1604000e 	bne	s0,a0,cdc <estimateDiv128To64+0x2f0>
     ca4:	00000000 	sll	zero,zero,0x0
     ca8:	0071102b 	sltu	v0,v1,s1
     cac:	1040000b 	beqz	v0,cdc <estimateDiv128To64+0x2f0>
     cb0:	00000000 	sll	zero,zero,0x0
     cb4:	8fc30044 	lw	v1,68(s8)
     cb8:	8fc20040 	lw	v0,64(s8)
     cbc:	00602821 	addu	a1,v1,zero
     cc0:	00402021 	addu	a0,v0,zero
     cc4:	8fc70034 	lw	a3,52(s8)
     cc8:	8fc60030 	lw	a2,48(s8)
     ccc:	0c000000 	jal	0 <shift64RightJamming>
     cd0:	00000000 	sll	zero,zero,0x0
     cd4:	08000339 	j	ce4 <estimateDiv128To64+0x2f8>
     cd8:	00000000 	sll	zero,zero,0x0
     cdc:	2403ffff 	addiu	v1,zero,-1
     ce0:	00001021 	addu	v0,zero,zero
     ce4:	8fc40028 	lw	a0,40(s8)
     ce8:	00000000 	sll	zero,zero,0x0
     cec:	00822025 	or	a0,a0,v0
     cf0:	afc40028 	sw	a0,40(s8)
     cf4:	8fc4002c 	lw	a0,44(s8)
     cf8:	00000000 	sll	zero,zero,0x0
     cfc:	00831025 	or	v0,a0,v1
     d00:	afc2002c 	sw	v0,44(s8)
  return z;
     d04:	8fc3002c 	lw	v1,44(s8)
     d08:	8fc20028 	lw	v0,40(s8)

}
     d0c:	03c0e821 	addu	sp,s8,zero
     d10:	8fbf008c 	lw	ra,140(sp)
     d14:	8fbe0088 	lw	s8,136(sp)
     d18:	8fb70084 	lw	s7,132(sp)
     d1c:	8fb60080 	lw	s6,128(sp)
     d20:	8fb5007c 	lw	s5,124(sp)
     d24:	8fb40078 	lw	s4,120(sp)
     d28:	8fb30074 	lw	s3,116(sp)
     d2c:	8fb20070 	lw	s2,112(sp)
     d30:	8fb1006c 	lw	s1,108(sp)
     d34:	8fb00068 	lw	s0,104(sp)
     d38:	27bd0090 	addiu	sp,sp,144
     d3c:	03e00008 	jr	ra
     d40:	00000000 	sll	zero,zero,0x0

00000d44 <countLeadingZeros32>:
| `a'.  If `a' is zero, 32 is returned.
*----------------------------------------------------------------------------*/

static int8
countLeadingZeros32 (bits32 a)
{
     d44:	27bdfff0 	addiu	sp,sp,-16
     d48:	afbe000c 	sw	s8,12(sp)
     d4c:	03a0f021 	addu	s8,sp,zero
     d50:	afc40010 	sw	a0,16(s8)
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  };
  int8 shiftCount;

  shiftCount = 0;
     d54:	afc00000 	sw	zero,0(s8)
  if (a < 0x10000)
     d58:	8fc30010 	lw	v1,16(s8)
     d5c:	3c020001 	lui	v0,0x1
     d60:	0062102b 	sltu	v0,v1,v0
     d64:	10400009 	beqz	v0,d8c <countLeadingZeros32+0x48>
     d68:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 16;
     d6c:	8fc20000 	lw	v0,0(s8)
     d70:	00000000 	sll	zero,zero,0x0
     d74:	24420010 	addiu	v0,v0,16
     d78:	afc20000 	sw	v0,0(s8)
      a <<= 16;
     d7c:	8fc20010 	lw	v0,16(s8)
     d80:	00000000 	sll	zero,zero,0x0
     d84:	00021400 	sll	v0,v0,0x10
     d88:	afc20010 	sw	v0,16(s8)
    }
  if (a < 0x1000000)
     d8c:	8fc30010 	lw	v1,16(s8)
     d90:	3c020100 	lui	v0,0x100
     d94:	0062102b 	sltu	v0,v1,v0
     d98:	10400009 	beqz	v0,dc0 <countLeadingZeros32+0x7c>
     d9c:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 8;
     da0:	8fc20000 	lw	v0,0(s8)
     da4:	00000000 	sll	zero,zero,0x0
     da8:	24420008 	addiu	v0,v0,8
     dac:	afc20000 	sw	v0,0(s8)
      a <<= 8;
     db0:	8fc20010 	lw	v0,16(s8)
     db4:	00000000 	sll	zero,zero,0x0
     db8:	00021200 	sll	v0,v0,0x8
     dbc:	afc20010 	sw	v0,16(s8)
    }
  shiftCount += countLeadingZerosHigh[a >> 24];
     dc0:	8fc20010 	lw	v0,16(s8)
     dc4:	00000000 	sll	zero,zero,0x0
     dc8:	00021e02 	srl	v1,v0,0x18
     dcc:	3c020000 	lui	v0,0x0
     dd0:	00031880 	sll	v1,v1,0x2
     dd4:	2442027c 	addiu	v0,v0,636
     dd8:	00621021 	addu	v0,v1,v0
     ddc:	8c420000 	lw	v0,0(v0)
     de0:	8fc30000 	lw	v1,0(s8)
     de4:	00000000 	sll	zero,zero,0x0
     de8:	00621021 	addu	v0,v1,v0
     dec:	afc20000 	sw	v0,0(s8)
  return shiftCount;
     df0:	8fc20000 	lw	v0,0(s8)

}
     df4:	03c0e821 	addu	sp,s8,zero
     df8:	8fbe000c 	lw	s8,12(sp)
     dfc:	27bd0010 	addiu	sp,sp,16
     e00:	03e00008 	jr	ra
     e04:	00000000 	sll	zero,zero,0x0

00000e08 <countLeadingZeros64>:
| `a'.  If `a' is zero, 64 is returned.
*----------------------------------------------------------------------------*/

static int8
countLeadingZeros64 (bits64 a)
{
     e08:	27bdffe0 	addiu	sp,sp,-32
     e0c:	afbf001c 	sw	ra,28(sp)
     e10:	afbe0018 	sw	s8,24(sp)
     e14:	03a0f021 	addu	s8,sp,zero
     e18:	afc50024 	sw	a1,36(s8)
     e1c:	afc40020 	sw	a0,32(s8)
  int8 shiftCount;

  shiftCount = 0;
     e20:	afc00010 	sw	zero,16(s8)
  if (a < ((bits64) 1) << 32)
     e24:	8fc20020 	lw	v0,32(s8)
     e28:	00000000 	sll	zero,zero,0x0
     e2c:	14400007 	bnez	v0,e4c <countLeadingZeros64+0x44>
     e30:	00000000 	sll	zero,zero,0x0
    {
      shiftCount += 32;
     e34:	8fc20010 	lw	v0,16(s8)
     e38:	00000000 	sll	zero,zero,0x0
     e3c:	24420020 	addiu	v0,v0,32
     e40:	afc20010 	sw	v0,16(s8)
     e44:	08000398 	j	e60 <countLeadingZeros64+0x58>
     e48:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      a >>= 32;
     e4c:	8fc20020 	lw	v0,32(s8)
     e50:	00000000 	sll	zero,zero,0x0
     e54:	00021002 	srl	v0,v0,0x0
     e58:	afc20024 	sw	v0,36(s8)
     e5c:	afc00020 	sw	zero,32(s8)
    }
  shiftCount += countLeadingZeros32 (a);
     e60:	8fc20024 	lw	v0,36(s8)
     e64:	00000000 	sll	zero,zero,0x0
     e68:	00402021 	addu	a0,v0,zero
     e6c:	0c000351 	jal	d44 <countLeadingZeros32>
     e70:	00000000 	sll	zero,zero,0x0
     e74:	8fc30010 	lw	v1,16(s8)
     e78:	00000000 	sll	zero,zero,0x0
     e7c:	00621021 	addu	v0,v1,v0
     e80:	afc20010 	sw	v0,16(s8)
  return shiftCount;
     e84:	8fc20010 	lw	v0,16(s8)

}
     e88:	03c0e821 	addu	sp,s8,zero
     e8c:	8fbf001c 	lw	ra,28(sp)
     e90:	8fbe0018 	lw	s8,24(sp)
     e94:	27bd0020 	addiu	sp,sp,32
     e98:	03e00008 	jr	ra
     e9c:	00000000 	sll	zero,zero,0x0

00000ea0 <float_raise>:
| should be simply `float_exception_flags |= flags;'.
*----------------------------------------------------------------------------*/

void
float_raise (int8 flags)
{
     ea0:	27bdfff8 	addiu	sp,sp,-8
     ea4:	afbe0004 	sw	s8,4(sp)
     ea8:	03a0f021 	addu	s8,sp,zero
     eac:	afc40008 	sw	a0,8(s8)
  float_exception_flags |= flags;
     eb0:	8f830000 	lw	v1,0(gp)
     eb4:	8fc20008 	lw	v0,8(s8)
     eb8:	00000000 	sll	zero,zero,0x0
     ebc:	00621025 	or	v0,v1,v0
     ec0:	af820000 	sw	v0,0(gp)

}
     ec4:	03c0e821 	addu	sp,s8,zero
     ec8:	8fbe0004 	lw	s8,4(sp)
     ecc:	27bd0008 	addiu	sp,sp,8
     ed0:	03e00008 	jr	ra
     ed4:	00000000 	sll	zero,zero,0x0

00000ed8 <float64_is_nan>:
| otherwise returns 0.
*----------------------------------------------------------------------------*/

flag
float64_is_nan (float64 a)
{
     ed8:	27bdfff8 	addiu	sp,sp,-8
     edc:	afbe0004 	sw	s8,4(sp)
     ee0:	03a0f021 	addu	s8,sp,zero
     ee4:	afc5000c 	sw	a1,12(s8)
     ee8:	afc40008 	sw	a0,8(s8)

  return (LIT64 (0xFFE0000000000000) < (bits64) (a << 1));
     eec:	8fc4000c 	lw	a0,12(s8)
     ef0:	00000000 	sll	zero,zero,0x0
     ef4:	000427c2 	srl	a0,a0,0x1f
     ef8:	8fc50008 	lw	a1,8(s8)
     efc:	00000000 	sll	zero,zero,0x0
     f00:	00051040 	sll	v0,a1,0x1
     f04:	00821025 	or	v0,a0,v0
     f08:	8fc4000c 	lw	a0,12(s8)
     f0c:	00000000 	sll	zero,zero,0x0
     f10:	00041840 	sll	v1,a0,0x1
     f14:	24040001 	addiu	a0,zero,1
     f18:	3c05ffe0 	lui	a1,0xffe0
     f1c:	34a50001 	ori	a1,a1,0x1
     f20:	0045282b 	sltu	a1,v0,a1
     f24:	10a00007 	beqz	a1,f44 <float64_is_nan+0x6c>
     f28:	00000000 	sll	zero,zero,0x0
     f2c:	3c05ffe0 	lui	a1,0xffe0
     f30:	14450003 	bne	v0,a1,f40 <float64_is_nan+0x68>
     f34:	00000000 	sll	zero,zero,0x0
     f38:	14600002 	bnez	v1,f44 <float64_is_nan+0x6c>
     f3c:	00000000 	sll	zero,zero,0x0
     f40:	00002021 	addu	a0,zero,zero
     f44:	00801021 	addu	v0,a0,zero

}
     f48:	03c0e821 	addu	sp,s8,zero
     f4c:	8fbe0004 	lw	s8,4(sp)
     f50:	27bd0008 	addiu	sp,sp,8
     f54:	03e00008 	jr	ra
     f58:	00000000 	sll	zero,zero,0x0

00000f5c <float64_is_signaling_nan>:
| NaN; otherwise returns 0.
*----------------------------------------------------------------------------*/

flag
float64_is_signaling_nan (float64 a)
{
     f5c:	27bdfff8 	addiu	sp,sp,-8
     f60:	afbe0004 	sw	s8,4(sp)
     f64:	03a0f021 	addu	s8,sp,zero
     f68:	afc5000c 	sw	a1,12(s8)
     f6c:	afc40008 	sw	a0,8(s8)

  return (((a >> 51) & 0xFFF) == 0xFFE) && (a & LIT64 (0x0007FFFFFFFFFFFF));
     f70:	8fc40008 	lw	a0,8(s8)
     f74:	00000000 	sll	zero,zero,0x0
     f78:	00044cc2 	srl	t1,a0,0x13
     f7c:	00004021 	addu	t0,zero,zero
     f80:	31060000 	andi	a2,t0,0x0
     f84:	31270fff 	andi	a3,t1,0xfff
     f88:	14c00012 	bnez	a2,fd4 <float64_is_signaling_nan+0x78>
     f8c:	00000000 	sll	zero,zero,0x0
     f90:	24040ffe 	addiu	a0,zero,4094
     f94:	14e4000f 	bne	a3,a0,fd4 <float64_is_signaling_nan+0x78>
     f98:	00000000 	sll	zero,zero,0x0
     f9c:	8fc50008 	lw	a1,8(s8)
     fa0:	3c040007 	lui	a0,0x7
     fa4:	3484ffff 	ori	a0,a0,0xffff
     fa8:	00a41024 	and	v0,a1,a0
     fac:	8fc5000c 	lw	a1,12(s8)
     fb0:	2404ffff 	addiu	a0,zero,-1
     fb4:	00a41824 	and	v1,a1,a0
     fb8:	00402021 	addu	a0,v0,zero
     fbc:	00832025 	or	a0,a0,v1
     fc0:	10800004 	beqz	a0,fd4 <float64_is_signaling_nan+0x78>
     fc4:	00000000 	sll	zero,zero,0x0
     fc8:	24020001 	addiu	v0,zero,1
     fcc:	080003f6 	j	fd8 <float64_is_signaling_nan+0x7c>
     fd0:	00000000 	sll	zero,zero,0x0
     fd4:	00001021 	addu	v0,zero,zero

}
     fd8:	03c0e821 	addu	sp,s8,zero
     fdc:	8fbe0004 	lw	s8,4(sp)
     fe0:	27bd0008 	addiu	sp,sp,8
     fe4:	03e00008 	jr	ra
     fe8:	00000000 	sll	zero,zero,0x0

00000fec <propagateFloat64NaN>:
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/

static float64
propagateFloat64NaN (float64 a, float64 b)
{
     fec:	27bdffd8 	addiu	sp,sp,-40
     ff0:	afbf0024 	sw	ra,36(sp)
     ff4:	afbe0020 	sw	s8,32(sp)
     ff8:	03a0f021 	addu	s8,sp,zero
     ffc:	afc5002c 	sw	a1,44(s8)
    1000:	afc40028 	sw	a0,40(s8)
    1004:	afc70034 	sw	a3,52(s8)
    1008:	afc60030 	sw	a2,48(s8)
  flag aIsNaN, aIsSignalingNaN, bIsNaN, bIsSignalingNaN;

  aIsNaN = float64_is_nan (a);
    100c:	8fc5002c 	lw	a1,44(s8)
    1010:	8fc40028 	lw	a0,40(s8)
    1014:	0c000000 	jal	0 <shift64RightJamming>
    1018:	00000000 	sll	zero,zero,0x0
    101c:	afc20010 	sw	v0,16(s8)
  aIsSignalingNaN = float64_is_signaling_nan (a);
    1020:	8fc5002c 	lw	a1,44(s8)
    1024:	8fc40028 	lw	a0,40(s8)
    1028:	0c000000 	jal	0 <shift64RightJamming>
    102c:	00000000 	sll	zero,zero,0x0
    1030:	afc20014 	sw	v0,20(s8)
  bIsNaN = float64_is_nan (b);
    1034:	8fc50034 	lw	a1,52(s8)
    1038:	8fc40030 	lw	a0,48(s8)
    103c:	0c000000 	jal	0 <shift64RightJamming>
    1040:	00000000 	sll	zero,zero,0x0
    1044:	afc20018 	sw	v0,24(s8)
  bIsSignalingNaN = float64_is_signaling_nan (b);
    1048:	8fc50034 	lw	a1,52(s8)
    104c:	8fc40030 	lw	a0,48(s8)
    1050:	0c000000 	jal	0 <shift64RightJamming>
    1054:	00000000 	sll	zero,zero,0x0
    1058:	afc2001c 	sw	v0,28(s8)
  a |= LIT64 (0x0008000000000000);
    105c:	8fc30028 	lw	v1,40(s8)
    1060:	3c020008 	lui	v0,0x8
    1064:	00621025 	or	v0,v1,v0
    1068:	afc20028 	sw	v0,40(s8)
    106c:	8fc2002c 	lw	v0,44(s8)
    1070:	00000000 	sll	zero,zero,0x0
    1074:	34420000 	ori	v0,v0,0x0
    1078:	afc2002c 	sw	v0,44(s8)
  b |= LIT64 (0x0008000000000000);
    107c:	8fc30030 	lw	v1,48(s8)
    1080:	3c020008 	lui	v0,0x8
    1084:	00621025 	or	v0,v1,v0
    1088:	afc20030 	sw	v0,48(s8)
    108c:	8fc20034 	lw	v0,52(s8)
    1090:	00000000 	sll	zero,zero,0x0
    1094:	34420000 	ori	v0,v0,0x0
    1098:	afc20034 	sw	v0,52(s8)
  if (aIsSignalingNaN | bIsSignalingNaN)
    109c:	8fc30014 	lw	v1,20(s8)
    10a0:	8fc2001c 	lw	v0,28(s8)
    10a4:	00000000 	sll	zero,zero,0x0
    10a8:	00621025 	or	v0,v1,v0
    10ac:	10400004 	beqz	v0,10c0 <propagateFloat64NaN+0xd4>
    10b0:	00000000 	sll	zero,zero,0x0
    float_raise (float_flag_invalid);
    10b4:	24040010 	addiu	a0,zero,16
    10b8:	0c000000 	jal	0 <shift64RightJamming>
    10bc:	00000000 	sll	zero,zero,0x0
  return bIsSignalingNaN ? b : aIsSignalingNaN ? a : bIsNaN ? b : a;
    10c0:	8fc2001c 	lw	v0,28(s8)
    10c4:	00000000 	sll	zero,zero,0x0
    10c8:	14400015 	bnez	v0,1120 <propagateFloat64NaN+0x134>
    10cc:	00000000 	sll	zero,zero,0x0
    10d0:	8fc20014 	lw	v0,20(s8)
    10d4:	00000000 	sll	zero,zero,0x0
    10d8:	1440000d 	bnez	v0,1110 <propagateFloat64NaN+0x124>
    10dc:	00000000 	sll	zero,zero,0x0
    10e0:	8fc20018 	lw	v0,24(s8)
    10e4:	00000000 	sll	zero,zero,0x0
    10e8:	10400005 	beqz	v0,1100 <propagateFloat64NaN+0x114>
    10ec:	00000000 	sll	zero,zero,0x0
    10f0:	8fc30034 	lw	v1,52(s8)
    10f4:	8fc20030 	lw	v0,48(s8)
    10f8:	08000442 	j	1108 <propagateFloat64NaN+0x11c>
    10fc:	00000000 	sll	zero,zero,0x0
    1100:	8fc3002c 	lw	v1,44(s8)
    1104:	8fc20028 	lw	v0,40(s8)
    1108:	08000446 	j	1118 <propagateFloat64NaN+0x12c>
    110c:	00000000 	sll	zero,zero,0x0
    1110:	8fc3002c 	lw	v1,44(s8)
    1114:	8fc20028 	lw	v0,40(s8)
    1118:	0800044a 	j	1128 <propagateFloat64NaN+0x13c>
    111c:	00000000 	sll	zero,zero,0x0
    1120:	8fc30034 	lw	v1,52(s8)
    1124:	8fc20030 	lw	v0,48(s8)

}
    1128:	03c0e821 	addu	sp,s8,zero
    112c:	8fbf0024 	lw	ra,36(sp)
    1130:	8fbe0020 	lw	s8,32(sp)
    1134:	27bd0028 	addiu	sp,sp,40
    1138:	03e00008 	jr	ra
    113c:	00000000 	sll	zero,zero,0x0

00001140 <extractFloat64Frac>:
| Returns the fraction bits of the double-precision floating-point value `a'.
*----------------------------------------------------------------------------*/

INLINE bits64
extractFloat64Frac (float64 a)
{
    1140:	27bdfff8 	addiu	sp,sp,-8
    1144:	afbe0004 	sw	s8,4(sp)
    1148:	03a0f021 	addu	s8,sp,zero
    114c:	afc5000c 	sw	a1,12(s8)
    1150:	afc40008 	sw	a0,8(s8)

  return a & LIT64 (0x000FFFFFFFFFFFFF);
    1154:	8fc50008 	lw	a1,8(s8)
    1158:	3c04000f 	lui	a0,0xf
    115c:	3484ffff 	ori	a0,a0,0xffff
    1160:	00a41024 	and	v0,a1,a0
    1164:	8fc5000c 	lw	a1,12(s8)
    1168:	2404ffff 	addiu	a0,zero,-1
    116c:	00a41824 	and	v1,a1,a0

}
    1170:	03c0e821 	addu	sp,s8,zero
    1174:	8fbe0004 	lw	s8,4(sp)
    1178:	27bd0008 	addiu	sp,sp,8
    117c:	03e00008 	jr	ra
    1180:	00000000 	sll	zero,zero,0x0

00001184 <extractFloat64Exp>:
| Returns the exponent bits of the double-precision floating-point value `a'.
*----------------------------------------------------------------------------*/

INLINE int16
extractFloat64Exp (float64 a)
{
    1184:	27bdfff8 	addiu	sp,sp,-8
    1188:	afbe0004 	sw	s8,4(sp)
    118c:	03a0f021 	addu	s8,sp,zero
    1190:	afc5000c 	sw	a1,12(s8)
    1194:	afc40008 	sw	a0,8(s8)

  return (a >> 52) & 0x7FF;
    1198:	8fc40008 	lw	a0,8(s8)
    119c:	00000000 	sll	zero,zero,0x0
    11a0:	00041d02 	srl	v1,a0,0x14
    11a4:	00001021 	addu	v0,zero,zero
    11a8:	00601021 	addu	v0,v1,zero
    11ac:	304207ff 	andi	v0,v0,0x7ff

}
    11b0:	03c0e821 	addu	sp,s8,zero
    11b4:	8fbe0004 	lw	s8,4(sp)
    11b8:	27bd0008 	addiu	sp,sp,8
    11bc:	03e00008 	jr	ra
    11c0:	00000000 	sll	zero,zero,0x0

000011c4 <extractFloat64Sign>:
| Returns the sign bit of the double-precision floating-point value `a'.
*----------------------------------------------------------------------------*/

INLINE flag
extractFloat64Sign (float64 a)
{
    11c4:	27bdfff8 	addiu	sp,sp,-8
    11c8:	afbe0004 	sw	s8,4(sp)
    11cc:	03a0f021 	addu	s8,sp,zero
    11d0:	afc5000c 	sw	a1,12(s8)
    11d4:	afc40008 	sw	a0,8(s8)

  return a >> 63;
    11d8:	8fc40008 	lw	a0,8(s8)
    11dc:	00000000 	sll	zero,zero,0x0
    11e0:	00041fc2 	srl	v1,a0,0x1f
    11e4:	00001021 	addu	v0,zero,zero
    11e8:	00601021 	addu	v0,v1,zero

}
    11ec:	03c0e821 	addu	sp,s8,zero
    11f0:	8fbe0004 	lw	s8,4(sp)
    11f4:	27bd0008 	addiu	sp,sp,8
    11f8:	03e00008 	jr	ra
    11fc:	00000000 	sll	zero,zero,0x0

00001200 <normalizeFloat64Subnormal>:
| `zSigPtr', respectively.
*----------------------------------------------------------------------------*/

static void
normalizeFloat64Subnormal (bits64 aSig, int16 * zExpPtr, bits64 * zSigPtr)
{
    1200:	27bdffd8 	addiu	sp,sp,-40
    1204:	afbf0024 	sw	ra,36(sp)
    1208:	afbe0020 	sw	s8,32(sp)
    120c:	afb1001c 	sw	s1,28(sp)
    1210:	afb00018 	sw	s0,24(sp)
    1214:	03a0f021 	addu	s8,sp,zero
    1218:	afc5002c 	sw	a1,44(s8)
    121c:	afc40028 	sw	a0,40(s8)
    1220:	afc60030 	sw	a2,48(s8)
    1224:	afc70034 	sw	a3,52(s8)
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (aSig) - 11;
    1228:	8fc5002c 	lw	a1,44(s8)
    122c:	8fc40028 	lw	a0,40(s8)
    1230:	0c000382 	jal	e08 <countLeadingZeros64>
    1234:	00000000 	sll	zero,zero,0x0
    1238:	2442fff5 	addiu	v0,v0,-11
    123c:	afc20010 	sw	v0,16(s8)
  *zSigPtr = aSig << shiftCount;
    1240:	8fc20010 	lw	v0,16(s8)
    1244:	00000000 	sll	zero,zero,0x0
    1248:	30420020 	andi	v0,v0,0x20
    124c:	10400008 	beqz	v0,1270 <normalizeFloat64Subnormal+0x70>
    1250:	00000000 	sll	zero,zero,0x0
    1254:	8fc3002c 	lw	v1,44(s8)
    1258:	8fc20010 	lw	v0,16(s8)
    125c:	00000000 	sll	zero,zero,0x0
    1260:	00438004 	sllv	s0,v1,v0
    1264:	00008821 	addu	s1,zero,zero
    1268:	080004ac 	j	12b0 <normalizeFloat64Subnormal+0xb0>
    126c:	00000000 	sll	zero,zero,0x0
    1270:	8fc2002c 	lw	v0,44(s8)
    1274:	00000000 	sll	zero,zero,0x0
    1278:	00021842 	srl	v1,v0,0x1
    127c:	8fc40010 	lw	a0,16(s8)
    1280:	2402ffff 	addiu	v0,zero,-1
    1284:	00821026 	xor	v0,a0,v0
    1288:	00431006 	srlv	v0,v1,v0
    128c:	8fc40028 	lw	a0,40(s8)
    1290:	8fc30010 	lw	v1,16(s8)
    1294:	00000000 	sll	zero,zero,0x0
    1298:	00648004 	sllv	s0,a0,v1
    129c:	00508025 	or	s0,v0,s0
    12a0:	8fc3002c 	lw	v1,44(s8)
    12a4:	8fc20010 	lw	v0,16(s8)
    12a8:	00000000 	sll	zero,zero,0x0
    12ac:	00438804 	sllv	s1,v1,v0
    12b0:	8fc20034 	lw	v0,52(s8)
    12b4:	00000000 	sll	zero,zero,0x0
    12b8:	ac510004 	sw	s1,4(v0)
    12bc:	ac500000 	sw	s0,0(v0)
  *zExpPtr = 1 - shiftCount;
    12c0:	24030001 	addiu	v1,zero,1
    12c4:	8fc20010 	lw	v0,16(s8)
    12c8:	00000000 	sll	zero,zero,0x0
    12cc:	00621823 	subu	v1,v1,v0
    12d0:	8fc20030 	lw	v0,48(s8)
    12d4:	00000000 	sll	zero,zero,0x0
    12d8:	ac430000 	sw	v1,0(v0)

}
    12dc:	03c0e821 	addu	sp,s8,zero
    12e0:	8fbf0024 	lw	ra,36(sp)
    12e4:	8fbe0020 	lw	s8,32(sp)
    12e8:	8fb1001c 	lw	s1,28(sp)
    12ec:	8fb00018 	lw	s0,24(sp)
    12f0:	27bd0028 	addiu	sp,sp,40
    12f4:	03e00008 	jr	ra
    12f8:	00000000 	sll	zero,zero,0x0

000012fc <packFloat64>:
| significand.
*----------------------------------------------------------------------------*/

INLINE float64
packFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
    12fc:	27bdfff8 	addiu	sp,sp,-8
    1300:	afbe0004 	sw	s8,4(sp)
    1304:	03a0f021 	addu	s8,sp,zero
    1308:	afc40008 	sw	a0,8(s8)
    130c:	afc5000c 	sw	a1,12(s8)
    1310:	afc70014 	sw	a3,20(s8)
    1314:	afc60010 	sw	a2,16(s8)

  return (((bits64) zSign) << 63) + (((bits64) zExp) << 52) + zSig;
    1318:	8fcd0008 	lw	t5,8(s8)
    131c:	8fc40008 	lw	a0,8(s8)
    1320:	00000000 	sll	zero,zero,0x0
    1324:	000427c3 	sra	a0,a0,0x1f
    1328:	00806021 	addu	t4,a0,zero
    132c:	000d47c0 	sll	t0,t5,0x1f
    1330:	00004821 	addu	t1,zero,zero
    1334:	8fc3000c 	lw	v1,12(s8)
    1338:	8fc4000c 	lw	a0,12(s8)
    133c:	00000000 	sll	zero,zero,0x0
    1340:	000427c3 	sra	a0,a0,0x1f
    1344:	00801021 	addu	v0,a0,zero
    1348:	00035500 	sll	t2,v1,0x14
    134c:	00005821 	addu	t3,zero,zero
    1350:	012b1821 	addu	v1,t1,t3
    1354:	0069202b 	sltu	a0,v1,t1
    1358:	010a1021 	addu	v0,t0,t2
    135c:	00822021 	addu	a0,a0,v0
    1360:	00801021 	addu	v0,a0,zero
    1364:	00602821 	addu	a1,v1,zero
    1368:	00402021 	addu	a0,v0,zero
    136c:	8fc70014 	lw	a3,20(s8)
    1370:	8fc60010 	lw	a2,16(s8)
    1374:	00a71821 	addu	v1,a1,a3
    1378:	0065402b 	sltu	t0,v1,a1
    137c:	00861021 	addu	v0,a0,a2
    1380:	01022021 	addu	a0,t0,v0
    1384:	00801021 	addu	v0,a0,zero

}
    1388:	03c0e821 	addu	sp,s8,zero
    138c:	8fbe0004 	lw	s8,4(sp)
    1390:	27bd0008 	addiu	sp,sp,8
    1394:	03e00008 	jr	ra
    1398:	00000000 	sll	zero,zero,0x0

0000139c <roundAndPackFloat64>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
roundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
    139c:	27bdffa8 	addiu	sp,sp,-88
    13a0:	afbf0054 	sw	ra,84(sp)
    13a4:	afbe0050 	sw	s8,80(sp)
    13a8:	afb7004c 	sw	s7,76(sp)
    13ac:	afb60048 	sw	s6,72(sp)
    13b0:	afb50044 	sw	s5,68(sp)
    13b4:	afb40040 	sw	s4,64(sp)
    13b8:	afb3003c 	sw	s3,60(sp)
    13bc:	afb20038 	sw	s2,56(sp)
    13c0:	afb10034 	sw	s1,52(sp)
    13c4:	afb00030 	sw	s0,48(sp)
    13c8:	03a0f021 	addu	s8,sp,zero
    13cc:	afc40058 	sw	a0,88(s8)
    13d0:	afc5005c 	sw	a1,92(s8)
    13d4:	afc70064 	sw	a3,100(s8)
    13d8:	afc60060 	sw	a2,96(s8)
  int8 roundingMode;
  flag roundNearestEven, isTiny;
  int16 roundIncrement, roundBits;

  roundingMode = float_rounding_mode;
    13dc:	8f820000 	lw	v0,0(gp)
    13e0:	00000000 	sll	zero,zero,0x0
    13e4:	afc20018 	sw	v0,24(s8)
  roundNearestEven = (roundingMode == float_round_nearest_even);
    13e8:	8fc20018 	lw	v0,24(s8)
    13ec:	00000000 	sll	zero,zero,0x0
    13f0:	2c420001 	sltiu	v0,v0,1
    13f4:	afc2001c 	sw	v0,28(s8)
  roundIncrement = 0x200;
    13f8:	24020200 	addiu	v0,zero,512
    13fc:	afc20010 	sw	v0,16(s8)
  if (!roundNearestEven)
    1400:	8fc2001c 	lw	v0,28(s8)
    1404:	00000000 	sll	zero,zero,0x0
    1408:	1440001a 	bnez	v0,1474 <roundAndPackFloat64+0xd8>
    140c:	00000000 	sll	zero,zero,0x0
    {
      if (roundingMode == float_round_to_zero)
    1410:	8fc30018 	lw	v1,24(s8)
    1414:	24020001 	addiu	v0,zero,1
    1418:	14620004 	bne	v1,v0,142c <roundAndPackFloat64+0x90>
    141c:	00000000 	sll	zero,zero,0x0
	{
	  roundIncrement = 0;
    1420:	afc00010 	sw	zero,16(s8)
    1424:	0800051d 	j	1474 <roundAndPackFloat64+0xd8>
    1428:	00000000 	sll	zero,zero,0x0
	}
      else
	{
	  roundIncrement = 0x3FF;
    142c:	240203ff 	addiu	v0,zero,1023
    1430:	afc20010 	sw	v0,16(s8)
	  if (zSign)
    1434:	8fc20058 	lw	v0,88(s8)
    1438:	00000000 	sll	zero,zero,0x0
    143c:	10400008 	beqz	v0,1460 <roundAndPackFloat64+0xc4>
    1440:	00000000 	sll	zero,zero,0x0
	    {
	      if (roundingMode == float_round_up)
    1444:	8fc30018 	lw	v1,24(s8)
    1448:	24020002 	addiu	v0,zero,2
    144c:	14620009 	bne	v1,v0,1474 <roundAndPackFloat64+0xd8>
    1450:	00000000 	sll	zero,zero,0x0
		roundIncrement = 0;
    1454:	afc00010 	sw	zero,16(s8)
    1458:	0800051d 	j	1474 <roundAndPackFloat64+0xd8>
    145c:	00000000 	sll	zero,zero,0x0
	    }
	  else
	    {
	      if (roundingMode == float_round_down)
    1460:	8fc30018 	lw	v1,24(s8)
    1464:	24020003 	addiu	v0,zero,3
    1468:	14620002 	bne	v1,v0,1474 <roundAndPackFloat64+0xd8>
    146c:	00000000 	sll	zero,zero,0x0
		roundIncrement = 0;
    1470:	afc00010 	sw	zero,16(s8)
	    }
	}
    }
  roundBits = zSig & 0x3FF;
    1474:	8fc30064 	lw	v1,100(s8)
    1478:	8fc20060 	lw	v0,96(s8)
    147c:	00601021 	addu	v0,v1,zero
    1480:	304203ff 	andi	v0,v0,0x3ff
    1484:	afc20014 	sw	v0,20(s8)
  if (0x7FD <= (bits16) zExp)
    1488:	8fc2005c 	lw	v0,92(s8)
    148c:	00000000 	sll	zero,zero,0x0
    1490:	3042ffff 	andi	v0,v0,0xffff
    1494:	2c4207fd 	sltiu	v0,v0,2045
    1498:	14400050 	bnez	v0,15dc <roundAndPackFloat64+0x240>
    149c:	00000000 	sll	zero,zero,0x0
    {
      if ((0x7FD < zExp)
    14a0:	8fc2005c 	lw	v0,92(s8)
    14a4:	00000000 	sll	zero,zero,0x0
    14a8:	284207fe 	slti	v0,v0,2046
    14ac:	10400013 	beqz	v0,14fc <roundAndPackFloat64+0x160>
    14b0:	00000000 	sll	zero,zero,0x0
	  || ((zExp == 0x7FD) && ((sbits64) (zSig + roundIncrement) < 0)))
    14b4:	8fc3005c 	lw	v1,92(s8)
    14b8:	240207fd 	addiu	v0,zero,2045
    14bc:	14620026 	bne	v1,v0,1558 <roundAndPackFloat64+0x1bc>
    14c0:	00000000 	sll	zero,zero,0x0
    14c4:	8fc90010 	lw	t1,16(s8)
    14c8:	8fc20010 	lw	v0,16(s8)
    14cc:	00000000 	sll	zero,zero,0x0
    14d0:	000217c3 	sra	v0,v0,0x1f
    14d4:	00404021 	addu	t0,v0,zero
    14d8:	8fc50064 	lw	a1,100(s8)
    14dc:	8fc40060 	lw	a0,96(s8)
    14e0:	01251821 	addu	v1,t1,a1
    14e4:	0069302b 	sltu	a2,v1,t1
    14e8:	01041021 	addu	v0,t0,a0
    14ec:	00c22021 	addu	a0,a2,v0
    14f0:	00801021 	addu	v0,a0,zero
    14f4:	04410018 	bgez	v0,1558 <roundAndPackFloat64+0x1bc>
    14f8:	00000000 	sll	zero,zero,0x0
	{
	  float_raise (float_flag_overflow | float_flag_inexact);
    14fc:	24040009 	addiu	a0,zero,9
    1500:	0c000000 	jal	0 <shift64RightJamming>
    1504:	00000000 	sll	zero,zero,0x0
	  return packFloat64 (zSign, 0x7FF, 0) - (roundIncrement == 0);
    1508:	8fc40058 	lw	a0,88(s8)
    150c:	240507ff 	addiu	a1,zero,2047
    1510:	00003821 	addu	a3,zero,zero
    1514:	00003021 	addu	a2,zero,zero
    1518:	0c000000 	jal	0 <shift64RightJamming>
    151c:	00000000 	sll	zero,zero,0x0
    1520:	00602821 	addu	a1,v1,zero
    1524:	00402021 	addu	a0,v0,zero
    1528:	8fc20010 	lw	v0,16(s8)
    152c:	00000000 	sll	zero,zero,0x0
    1530:	2c420001 	sltiu	v0,v0,1
    1534:	0040b821 	addu	s7,v0,zero
    1538:	0000b021 	addu	s6,zero,zero
    153c:	00b71823 	subu	v1,a1,s7
    1540:	00a3302b 	sltu	a2,a1,v1
    1544:	00961023 	subu	v0,a0,s6
    1548:	00462023 	subu	a0,v0,a2
    154c:	00801021 	addu	v0,a0,zero
    1550:	080005b7 	j	16dc <roundAndPackFloat64+0x340>
    1554:	00000000 	sll	zero,zero,0x0
	}
      if (zExp < 0)
    1558:	8fc2005c 	lw	v0,92(s8)
    155c:	00000000 	sll	zero,zero,0x0
    1560:	0441001e 	bgez	v0,15dc <roundAndPackFloat64+0x240>
    1564:	00000000 	sll	zero,zero,0x0
	{
	  isTiny = (float_detect_tininess == float_tininess_before_rounding)
    1568:	24020001 	addiu	v0,zero,1
    156c:	afc20020 	sw	v0,32(s8)
	    || (zExp < -1)
	    || (zSig + roundIncrement < LIT64 (0x8000000000000000));
	  shift64RightJamming (zSig, -zExp, &zSig);
    1570:	8fc30064 	lw	v1,100(s8)
    1574:	8fc20060 	lw	v0,96(s8)
    1578:	8fc4005c 	lw	a0,92(s8)
    157c:	00000000 	sll	zero,zero,0x0
    1580:	00043023 	negu	a2,a0
    1584:	27c70060 	addiu	a3,s8,96
    1588:	00602821 	addu	a1,v1,zero
    158c:	00402021 	addu	a0,v0,zero
    1590:	0c000000 	jal	0 <shift64RightJamming>
    1594:	00000000 	sll	zero,zero,0x0
	  zExp = 0;
    1598:	afc0005c 	sw	zero,92(s8)
	  roundBits = zSig & 0x3FF;
    159c:	8fc30064 	lw	v1,100(s8)
    15a0:	8fc20060 	lw	v0,96(s8)
    15a4:	00601021 	addu	v0,v1,zero
    15a8:	304203ff 	andi	v0,v0,0x3ff
    15ac:	afc20014 	sw	v0,20(s8)
	  if (isTiny && roundBits)
    15b0:	8fc20020 	lw	v0,32(s8)
    15b4:	00000000 	sll	zero,zero,0x0
    15b8:	10400008 	beqz	v0,15dc <roundAndPackFloat64+0x240>
    15bc:	00000000 	sll	zero,zero,0x0
    15c0:	8fc20014 	lw	v0,20(s8)
    15c4:	00000000 	sll	zero,zero,0x0
    15c8:	10400004 	beqz	v0,15dc <roundAndPackFloat64+0x240>
    15cc:	00000000 	sll	zero,zero,0x0
	    float_raise (float_flag_underflow);
    15d0:	24040004 	addiu	a0,zero,4
    15d4:	0c000000 	jal	0 <shift64RightJamming>
    15d8:	00000000 	sll	zero,zero,0x0
	}
    }
  if (roundBits)
    15dc:	8fc20014 	lw	v0,20(s8)
    15e0:	00000000 	sll	zero,zero,0x0
    15e4:	10400005 	beqz	v0,15fc <roundAndPackFloat64+0x260>
    15e8:	00000000 	sll	zero,zero,0x0
    float_exception_flags |= float_flag_inexact;
    15ec:	8f820000 	lw	v0,0(gp)
    15f0:	00000000 	sll	zero,zero,0x0
    15f4:	34420001 	ori	v0,v0,0x1
    15f8:	af820000 	sw	v0,0(gp)
  zSig = (zSig + roundIncrement) >> 10;
    15fc:	8fd30010 	lw	s3,16(s8)
    1600:	8fc20010 	lw	v0,16(s8)
    1604:	00000000 	sll	zero,zero,0x0
    1608:	000217c3 	sra	v0,v0,0x1f
    160c:	00409021 	addu	s2,v0,zero
    1610:	8fc50064 	lw	a1,100(s8)
    1614:	8fc40060 	lw	a0,96(s8)
    1618:	02651821 	addu	v1,s3,a1
    161c:	0073302b 	sltu	a2,v1,s3
    1620:	02441021 	addu	v0,s2,a0
    1624:	00c22021 	addu	a0,a2,v0
    1628:	00801021 	addu	v0,a0,zero
    162c:	00022580 	sll	a0,v0,0x16
    1630:	00038a82 	srl	s1,v1,0xa
    1634:	00918825 	or	s1,a0,s1
    1638:	00028282 	srl	s0,v0,0xa
    163c:	afd10064 	sw	s1,100(s8)
    1640:	afd00060 	sw	s0,96(s8)
  zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
    1644:	8fc20014 	lw	v0,20(s8)
    1648:	00000000 	sll	zero,zero,0x0
    164c:	38420200 	xori	v0,v0,0x200
    1650:	2c430001 	sltiu	v1,v0,1
    1654:	8fc2001c 	lw	v0,28(s8)
    1658:	00000000 	sll	zero,zero,0x0
    165c:	00621024 	and	v0,v1,v0
    1660:	00021027 	nor	v0,zero,v0
    1664:	0040a821 	addu	s5,v0,zero
    1668:	000217c3 	sra	v0,v0,0x1f
    166c:	0040a021 	addu	s4,v0,zero
    1670:	8fc30064 	lw	v1,100(s8)
    1674:	8fc20060 	lw	v0,96(s8)
    1678:	00000000 	sll	zero,zero,0x0
    167c:	02822024 	and	a0,s4,v0
    1680:	afc40028 	sw	a0,40(s8)
    1684:	02a32024 	and	a0,s5,v1
    1688:	afc4002c 	sw	a0,44(s8)
    168c:	8fc3002c 	lw	v1,44(s8)
    1690:	8fc20028 	lw	v0,40(s8)
    1694:	afc30064 	sw	v1,100(s8)
    1698:	afc20060 	sw	v0,96(s8)
  if (zSig == 0)
    169c:	8fc50064 	lw	a1,100(s8)
    16a0:	8fc40060 	lw	a0,96(s8)
    16a4:	00000000 	sll	zero,zero,0x0
    16a8:	00801021 	addu	v0,a0,zero
    16ac:	00451025 	or	v0,v0,a1
    16b0:	14400002 	bnez	v0,16bc <roundAndPackFloat64+0x320>
    16b4:	00000000 	sll	zero,zero,0x0
    zExp = 0;
    16b8:	afc0005c 	sw	zero,92(s8)
  return packFloat64 (zSign, zExp, zSig);
    16bc:	8fc30064 	lw	v1,100(s8)
    16c0:	8fc20060 	lw	v0,96(s8)
    16c4:	8fc40058 	lw	a0,88(s8)
    16c8:	8fc5005c 	lw	a1,92(s8)
    16cc:	00603821 	addu	a3,v1,zero
    16d0:	00403021 	addu	a2,v0,zero
    16d4:	0c000000 	jal	0 <shift64RightJamming>
    16d8:	00000000 	sll	zero,zero,0x0

}
    16dc:	03c0e821 	addu	sp,s8,zero
    16e0:	8fbf0054 	lw	ra,84(sp)
    16e4:	8fbe0050 	lw	s8,80(sp)
    16e8:	8fb7004c 	lw	s7,76(sp)
    16ec:	8fb60048 	lw	s6,72(sp)
    16f0:	8fb50044 	lw	s5,68(sp)
    16f4:	8fb40040 	lw	s4,64(sp)
    16f8:	8fb3003c 	lw	s3,60(sp)
    16fc:	8fb20038 	lw	s2,56(sp)
    1700:	8fb10034 	lw	s1,52(sp)
    1704:	8fb00030 	lw	s0,48(sp)
    1708:	27bd0058 	addiu	sp,sp,88
    170c:	03e00008 	jr	ra
    1710:	00000000 	sll	zero,zero,0x0

00001714 <normalizeRoundAndPackFloat64>:
| floating-point exponent.
*----------------------------------------------------------------------------*/

static float64
normalizeRoundAndPackFloat64 (flag zSign, int16 zExp, bits64 zSig)
{
    1714:	27bdffd8 	addiu	sp,sp,-40
    1718:	afbf0024 	sw	ra,36(sp)
    171c:	afbe0020 	sw	s8,32(sp)
    1720:	afb1001c 	sw	s1,28(sp)
    1724:	afb00018 	sw	s0,24(sp)
    1728:	03a0f021 	addu	s8,sp,zero
    172c:	afc40028 	sw	a0,40(s8)
    1730:	afc5002c 	sw	a1,44(s8)
    1734:	afc70034 	sw	a3,52(s8)
    1738:	afc60030 	sw	a2,48(s8)
  int8 shiftCount;

  shiftCount = countLeadingZeros64 (zSig) - 1;
    173c:	8fc50034 	lw	a1,52(s8)
    1740:	8fc40030 	lw	a0,48(s8)
    1744:	0c000382 	jal	e08 <countLeadingZeros64>
    1748:	00000000 	sll	zero,zero,0x0
    174c:	2442ffff 	addiu	v0,v0,-1
    1750:	afc20010 	sw	v0,16(s8)
  return roundAndPackFloat64 (zSign, zExp - shiftCount, zSig << shiftCount);
    1754:	8fc3002c 	lw	v1,44(s8)
    1758:	8fc20010 	lw	v0,16(s8)
    175c:	00000000 	sll	zero,zero,0x0
    1760:	00621023 	subu	v0,v1,v0
    1764:	8fc30010 	lw	v1,16(s8)
    1768:	00000000 	sll	zero,zero,0x0
    176c:	30630020 	andi	v1,v1,0x20
    1770:	10600008 	beqz	v1,1794 <normalizeRoundAndPackFloat64+0x80>
    1774:	00000000 	sll	zero,zero,0x0
    1778:	8fc40034 	lw	a0,52(s8)
    177c:	8fc30010 	lw	v1,16(s8)
    1780:	00000000 	sll	zero,zero,0x0
    1784:	00648004 	sllv	s0,a0,v1
    1788:	00008821 	addu	s1,zero,zero
    178c:	080005f5 	j	17d4 <normalizeRoundAndPackFloat64+0xc0>
    1790:	00000000 	sll	zero,zero,0x0
    1794:	8fc30034 	lw	v1,52(s8)
    1798:	00000000 	sll	zero,zero,0x0
    179c:	00032042 	srl	a0,v1,0x1
    17a0:	8fc50010 	lw	a1,16(s8)
    17a4:	2403ffff 	addiu	v1,zero,-1
    17a8:	00a31826 	xor	v1,a1,v1
    17ac:	00641806 	srlv	v1,a0,v1
    17b0:	8fc50030 	lw	a1,48(s8)
    17b4:	8fc40010 	lw	a0,16(s8)
    17b8:	00000000 	sll	zero,zero,0x0
    17bc:	00858004 	sllv	s0,a1,a0
    17c0:	00708025 	or	s0,v1,s0
    17c4:	8fc40034 	lw	a0,52(s8)
    17c8:	8fc30010 	lw	v1,16(s8)
    17cc:	00000000 	sll	zero,zero,0x0
    17d0:	00648804 	sllv	s1,a0,v1
    17d4:	8fc40028 	lw	a0,40(s8)
    17d8:	00402821 	addu	a1,v0,zero
    17dc:	02203821 	addu	a3,s1,zero
    17e0:	02003021 	addu	a2,s0,zero
    17e4:	0c0004e7 	jal	139c <roundAndPackFloat64>
    17e8:	00000000 	sll	zero,zero,0x0

}
    17ec:	03c0e821 	addu	sp,s8,zero
    17f0:	8fbf0024 	lw	ra,36(sp)
    17f4:	8fbe0020 	lw	s8,32(sp)
    17f8:	8fb1001c 	lw	s1,28(sp)
    17fc:	8fb00018 	lw	s0,24(sp)
    1800:	27bd0028 	addiu	sp,sp,40
    1804:	03e00008 	jr	ra
    1808:	00000000 	sll	zero,zero,0x0

0000180c <int32_to_float64>:
| according to the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
int32_to_float64 (int32 a)
{
    180c:	27bdffc8 	addiu	sp,sp,-56
    1810:	afbf0034 	sw	ra,52(sp)
    1814:	afbe0030 	sw	s8,48(sp)
    1818:	afb1002c 	sw	s1,44(sp)
    181c:	afb00028 	sw	s0,40(sp)
    1820:	03a0f021 	addu	s8,sp,zero
    1824:	afc40038 	sw	a0,56(s8)
  flag zSign;
  uint32 absA;
  int8 shiftCount;
  bits64 zSig;

  if (a == 0)
    1828:	8fc20038 	lw	v0,56(s8)
    182c:	00000000 	sll	zero,zero,0x0
    1830:	14400005 	bnez	v0,1848 <int32_to_float64+0x3c>
    1834:	00000000 	sll	zero,zero,0x0
    return 0;
    1838:	00001821 	addu	v1,zero,zero
    183c:	00001021 	addu	v0,zero,zero
    1840:	08000651 	j	1944 <int32_to_float64+0x138>
    1844:	00000000 	sll	zero,zero,0x0
  zSign = (a < 0);
    1848:	8fc20038 	lw	v0,56(s8)
    184c:	00000000 	sll	zero,zero,0x0
    1850:	000217c2 	srl	v0,v0,0x1f
    1854:	afc20010 	sw	v0,16(s8)
  absA = zSign ? -a : a;
    1858:	8fc20010 	lw	v0,16(s8)
    185c:	00000000 	sll	zero,zero,0x0
    1860:	10400006 	beqz	v0,187c <int32_to_float64+0x70>
    1864:	00000000 	sll	zero,zero,0x0
    1868:	8fc20038 	lw	v0,56(s8)
    186c:	00000000 	sll	zero,zero,0x0
    1870:	00021023 	negu	v0,v0
    1874:	08000621 	j	1884 <int32_to_float64+0x78>
    1878:	00000000 	sll	zero,zero,0x0
    187c:	8fc20038 	lw	v0,56(s8)
    1880:	00000000 	sll	zero,zero,0x0
    1884:	afc20014 	sw	v0,20(s8)
  shiftCount = countLeadingZeros32 (absA) + 21;
    1888:	8fc40014 	lw	a0,20(s8)
    188c:	0c000351 	jal	d44 <countLeadingZeros32>
    1890:	00000000 	sll	zero,zero,0x0
    1894:	24420015 	addiu	v0,v0,21
    1898:	afc20018 	sw	v0,24(s8)
  zSig = absA;
    189c:	8fc20014 	lw	v0,20(s8)
    18a0:	00000000 	sll	zero,zero,0x0
    18a4:	afc20024 	sw	v0,36(s8)
    18a8:	afc00020 	sw	zero,32(s8)
  return packFloat64 (zSign, 0x432 - shiftCount, zSig << shiftCount);
    18ac:	24030432 	addiu	v1,zero,1074
    18b0:	8fc20018 	lw	v0,24(s8)
    18b4:	00000000 	sll	zero,zero,0x0
    18b8:	00621023 	subu	v0,v1,v0
    18bc:	8fc30018 	lw	v1,24(s8)
    18c0:	00000000 	sll	zero,zero,0x0
    18c4:	30630020 	andi	v1,v1,0x20
    18c8:	10600008 	beqz	v1,18ec <int32_to_float64+0xe0>
    18cc:	00000000 	sll	zero,zero,0x0
    18d0:	8fc40024 	lw	a0,36(s8)
    18d4:	8fc30018 	lw	v1,24(s8)
    18d8:	00000000 	sll	zero,zero,0x0
    18dc:	00648004 	sllv	s0,a0,v1
    18e0:	00008821 	addu	s1,zero,zero
    18e4:	0800064b 	j	192c <int32_to_float64+0x120>
    18e8:	00000000 	sll	zero,zero,0x0
    18ec:	8fc30024 	lw	v1,36(s8)
    18f0:	00000000 	sll	zero,zero,0x0
    18f4:	00032042 	srl	a0,v1,0x1
    18f8:	8fc50018 	lw	a1,24(s8)
    18fc:	2403ffff 	addiu	v1,zero,-1
    1900:	00a31826 	xor	v1,a1,v1
    1904:	00641806 	srlv	v1,a0,v1
    1908:	8fc50020 	lw	a1,32(s8)
    190c:	8fc40018 	lw	a0,24(s8)
    1910:	00000000 	sll	zero,zero,0x0
    1914:	00858004 	sllv	s0,a1,a0
    1918:	00708025 	or	s0,v1,s0
    191c:	8fc40024 	lw	a0,36(s8)
    1920:	8fc30018 	lw	v1,24(s8)
    1924:	00000000 	sll	zero,zero,0x0
    1928:	00648804 	sllv	s1,a0,v1
    192c:	8fc40010 	lw	a0,16(s8)
    1930:	00402821 	addu	a1,v0,zero
    1934:	02203821 	addu	a3,s1,zero
    1938:	02003021 	addu	a2,s0,zero
    193c:	0c000000 	jal	0 <shift64RightJamming>
    1940:	00000000 	sll	zero,zero,0x0

}
    1944:	03c0e821 	addu	sp,s8,zero
    1948:	8fbf0034 	lw	ra,52(sp)
    194c:	8fbe0030 	lw	s8,48(sp)
    1950:	8fb1002c 	lw	s1,44(sp)
    1954:	8fb00028 	lw	s0,40(sp)
    1958:	27bd0038 	addiu	sp,sp,56
    195c:	03e00008 	jr	ra
    1960:	00000000 	sll	zero,zero,0x0

00001964 <addFloat64Sigs>:
| Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
addFloat64Sigs (float64 a, float64 b, flag zSign)
{
    1964:	27bdff80 	addiu	sp,sp,-128
    1968:	afbf007c 	sw	ra,124(sp)
    196c:	afbe0078 	sw	s8,120(sp)
    1970:	afb70074 	sw	s7,116(sp)
    1974:	afb60070 	sw	s6,112(sp)
    1978:	afb5006c 	sw	s5,108(sp)
    197c:	afb40068 	sw	s4,104(sp)
    1980:	afb30064 	sw	s3,100(sp)
    1984:	afb20060 	sw	s2,96(sp)
    1988:	afb1005c 	sw	s1,92(sp)
    198c:	afb00058 	sw	s0,88(sp)
    1990:	03a0f021 	addu	s8,sp,zero
    1994:	afc50084 	sw	a1,132(s8)
    1998:	afc40080 	sw	a0,128(s8)
    199c:	afc7008c 	sw	a3,140(s8)
    19a0:	afc60088 	sw	a2,136(s8)
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  int16 expDiff;

  aSig = extractFloat64Frac (a);
    19a4:	8fc50084 	lw	a1,132(s8)
    19a8:	8fc40080 	lw	a0,128(s8)
    19ac:	0c000000 	jal	0 <shift64RightJamming>
    19b0:	00000000 	sll	zero,zero,0x0
    19b4:	afc30034 	sw	v1,52(s8)
    19b8:	afc20030 	sw	v0,48(s8)
  aExp = extractFloat64Exp (a);
    19bc:	8fc50084 	lw	a1,132(s8)
    19c0:	8fc40080 	lw	a0,128(s8)
    19c4:	0c000000 	jal	0 <shift64RightJamming>
    19c8:	00000000 	sll	zero,zero,0x0
    19cc:	afc20024 	sw	v0,36(s8)
  bSig = extractFloat64Frac (b);
    19d0:	8fc5008c 	lw	a1,140(s8)
    19d4:	8fc40088 	lw	a0,136(s8)
    19d8:	0c000000 	jal	0 <shift64RightJamming>
    19dc:	00000000 	sll	zero,zero,0x0
    19e0:	afc3003c 	sw	v1,60(s8)
    19e4:	afc20038 	sw	v0,56(s8)
  bExp = extractFloat64Exp (b);
    19e8:	8fc5008c 	lw	a1,140(s8)
    19ec:	8fc40088 	lw	a0,136(s8)
    19f0:	0c000000 	jal	0 <shift64RightJamming>
    19f4:	00000000 	sll	zero,zero,0x0
    19f8:	afc20028 	sw	v0,40(s8)
  expDiff = aExp - bExp;
    19fc:	8fc30024 	lw	v1,36(s8)
    1a00:	8fc20028 	lw	v0,40(s8)
    1a04:	00000000 	sll	zero,zero,0x0
    1a08:	00621023 	subu	v0,v1,v0
    1a0c:	afc20020 	sw	v0,32(s8)
  aSig <<= 9;
    1a10:	8fc30034 	lw	v1,52(s8)
    1a14:	8fc20030 	lw	v0,48(s8)
    1a18:	000325c2 	srl	a0,v1,0x17
    1a1c:	0002a240 	sll	s4,v0,0x9
    1a20:	0094a025 	or	s4,a0,s4
    1a24:	0003aa40 	sll	s5,v1,0x9
    1a28:	afd50034 	sw	s5,52(s8)
    1a2c:	afd40030 	sw	s4,48(s8)
  bSig <<= 9;
    1a30:	8fc3003c 	lw	v1,60(s8)
    1a34:	8fc20038 	lw	v0,56(s8)
    1a38:	000325c2 	srl	a0,v1,0x17
    1a3c:	00029240 	sll	s2,v0,0x9
    1a40:	00929025 	or	s2,a0,s2
    1a44:	00039a40 	sll	s3,v1,0x9
    1a48:	afd3003c 	sw	s3,60(s8)
    1a4c:	afd20038 	sw	s2,56(s8)
  if (0 < expDiff)
    1a50:	8fc20020 	lw	v0,32(s8)
    1a54:	00000000 	sll	zero,zero,0x0
    1a58:	1840003a 	blez	v0,1b44 <addFloat64Sigs+0x1e0>
    1a5c:	00000000 	sll	zero,zero,0x0
    {
      if (aExp == 0x7FF)
    1a60:	8fc30024 	lw	v1,36(s8)
    1a64:	240207ff 	addiu	v0,zero,2047
    1a68:	14620014 	bne	v1,v0,1abc <addFloat64Sigs+0x158>
    1a6c:	00000000 	sll	zero,zero,0x0
	{
	  if (aSig)
    1a70:	8fc50034 	lw	a1,52(s8)
    1a74:	8fc40030 	lw	a0,48(s8)
    1a78:	00000000 	sll	zero,zero,0x0
    1a7c:	00801021 	addu	v0,a0,zero
    1a80:	00451025 	or	v0,v0,a1
    1a84:	10400009 	beqz	v0,1aac <addFloat64Sigs+0x148>
    1a88:	00000000 	sll	zero,zero,0x0
	    return propagateFloat64NaN (a, b);
    1a8c:	8fc50084 	lw	a1,132(s8)
    1a90:	8fc40080 	lw	a0,128(s8)
    1a94:	8fc7008c 	lw	a3,140(s8)
    1a98:	8fc60088 	lw	a2,136(s8)
    1a9c:	0c0003fb 	jal	fec <propagateFloat64NaN>
    1aa0:	00000000 	sll	zero,zero,0x0
    1aa4:	08000799 	j	1e64 <addFloat64Sigs+0x500>
    1aa8:	00000000 	sll	zero,zero,0x0
	  return a;
    1aac:	8fc30084 	lw	v1,132(s8)
    1ab0:	8fc20080 	lw	v0,128(s8)
    1ab4:	08000799 	j	1e64 <addFloat64Sigs+0x500>
    1ab8:	00000000 	sll	zero,zero,0x0
	}
      if (bExp == 0)
    1abc:	8fc20028 	lw	v0,40(s8)
    1ac0:	00000000 	sll	zero,zero,0x0
    1ac4:	14400007 	bnez	v0,1ae4 <addFloat64Sigs+0x180>
    1ac8:	00000000 	sll	zero,zero,0x0
	--expDiff;
    1acc:	8fc20020 	lw	v0,32(s8)
    1ad0:	00000000 	sll	zero,zero,0x0
    1ad4:	2442ffff 	addiu	v0,v0,-1
    1ad8:	afc20020 	sw	v0,32(s8)
    1adc:	080006c4 	j	1b10 <addFloat64Sigs+0x1ac>
    1ae0:	00000000 	sll	zero,zero,0x0
      else
	bSig |= LIT64 (0x2000000000000000);
    1ae4:	8fc3003c 	lw	v1,60(s8)
    1ae8:	8fc20038 	lw	v0,56(s8)
    1aec:	3c042000 	lui	a0,0x2000
    1af0:	00442025 	or	a0,v0,a0
    1af4:	afc40040 	sw	a0,64(s8)
    1af8:	34640000 	ori	a0,v1,0x0
    1afc:	afc40044 	sw	a0,68(s8)
    1b00:	8fc30044 	lw	v1,68(s8)
    1b04:	8fc20040 	lw	v0,64(s8)
    1b08:	afc3003c 	sw	v1,60(s8)
    1b0c:	afc20038 	sw	v0,56(s8)
      shift64RightJamming (bSig, expDiff, &bSig);
    1b10:	8fc3003c 	lw	v1,60(s8)
    1b14:	8fc20038 	lw	v0,56(s8)
    1b18:	27c70038 	addiu	a3,s8,56
    1b1c:	00602821 	addu	a1,v1,zero
    1b20:	00402021 	addu	a0,v0,zero
    1b24:	8fc60020 	lw	a2,32(s8)
    1b28:	0c000000 	jal	0 <shift64RightJamming>
    1b2c:	00000000 	sll	zero,zero,0x0
      zExp = aExp;
    1b30:	8fc20024 	lw	v0,36(s8)
    1b34:	00000000 	sll	zero,zero,0x0
    1b38:	afc20010 	sw	v0,16(s8)
    1b3c:	08000761 	j	1d84 <addFloat64Sigs+0x420>
    1b40:	00000000 	sll	zero,zero,0x0
    }
  else if (expDiff < 0)
    1b44:	8fc20020 	lw	v0,32(s8)
    1b48:	00000000 	sll	zero,zero,0x0
    1b4c:	04410040 	bgez	v0,1c50 <addFloat64Sigs+0x2ec>
    1b50:	00000000 	sll	zero,zero,0x0
    {
      if (bExp == 0x7FF)
    1b54:	8fc30028 	lw	v1,40(s8)
    1b58:	240207ff 	addiu	v0,zero,2047
    1b5c:	14620018 	bne	v1,v0,1bc0 <addFloat64Sigs+0x25c>
    1b60:	00000000 	sll	zero,zero,0x0
	{
	  if (bSig)
    1b64:	8fc5003c 	lw	a1,60(s8)
    1b68:	8fc40038 	lw	a0,56(s8)
    1b6c:	00000000 	sll	zero,zero,0x0
    1b70:	00801021 	addu	v0,a0,zero
    1b74:	00451025 	or	v0,v0,a1
    1b78:	10400009 	beqz	v0,1ba0 <addFloat64Sigs+0x23c>
    1b7c:	00000000 	sll	zero,zero,0x0
	    return propagateFloat64NaN (a, b);
    1b80:	8fc50084 	lw	a1,132(s8)
    1b84:	8fc40080 	lw	a0,128(s8)
    1b88:	8fc7008c 	lw	a3,140(s8)
    1b8c:	8fc60088 	lw	a2,136(s8)
    1b90:	0c0003fb 	jal	fec <propagateFloat64NaN>
    1b94:	00000000 	sll	zero,zero,0x0
    1b98:	08000799 	j	1e64 <addFloat64Sigs+0x500>
    1b9c:	00000000 	sll	zero,zero,0x0
	  return packFloat64 (zSign, 0x7FF, 0);
    1ba0:	8fc40090 	lw	a0,144(s8)
    1ba4:	240507ff 	addiu	a1,zero,2047
    1ba8:	00003821 	addu	a3,zero,zero
    1bac:	00003021 	addu	a2,zero,zero
    1bb0:	0c000000 	jal	0 <shift64RightJamming>
    1bb4:	00000000 	sll	zero,zero,0x0
    1bb8:	08000799 	j	1e64 <addFloat64Sigs+0x500>
    1bbc:	00000000 	sll	zero,zero,0x0
	}
      if (aExp == 0)
    1bc0:	8fc20024 	lw	v0,36(s8)
    1bc4:	00000000 	sll	zero,zero,0x0
    1bc8:	14400007 	bnez	v0,1be8 <addFloat64Sigs+0x284>
    1bcc:	00000000 	sll	zero,zero,0x0
	++expDiff;
    1bd0:	8fc20020 	lw	v0,32(s8)
    1bd4:	00000000 	sll	zero,zero,0x0
    1bd8:	24420001 	addiu	v0,v0,1
    1bdc:	afc20020 	sw	v0,32(s8)
    1be0:	08000705 	j	1c14 <addFloat64Sigs+0x2b0>
    1be4:	00000000 	sll	zero,zero,0x0
      else
	{
	  aSig |= LIT64 (0x2000000000000000);
    1be8:	8fc30034 	lw	v1,52(s8)
    1bec:	8fc20030 	lw	v0,48(s8)
    1bf0:	3c042000 	lui	a0,0x2000
    1bf4:	00442025 	or	a0,v0,a0
    1bf8:	afc40048 	sw	a0,72(s8)
    1bfc:	34640000 	ori	a0,v1,0x0
    1c00:	afc4004c 	sw	a0,76(s8)
    1c04:	8fc3004c 	lw	v1,76(s8)
    1c08:	8fc20048 	lw	v0,72(s8)
    1c0c:	afc30034 	sw	v1,52(s8)
    1c10:	afc20030 	sw	v0,48(s8)
	}
      shift64RightJamming (aSig, -expDiff, &aSig);
    1c14:	8fc30034 	lw	v1,52(s8)
    1c18:	8fc20030 	lw	v0,48(s8)
    1c1c:	8fc40020 	lw	a0,32(s8)
    1c20:	00000000 	sll	zero,zero,0x0
    1c24:	00043023 	negu	a2,a0
    1c28:	27c70030 	addiu	a3,s8,48
    1c2c:	00602821 	addu	a1,v1,zero
    1c30:	00402021 	addu	a0,v0,zero
    1c34:	0c000000 	jal	0 <shift64RightJamming>
    1c38:	00000000 	sll	zero,zero,0x0
      zExp = bExp;
    1c3c:	8fc20028 	lw	v0,40(s8)
    1c40:	00000000 	sll	zero,zero,0x0
    1c44:	afc20010 	sw	v0,16(s8)
    1c48:	08000761 	j	1d84 <addFloat64Sigs+0x420>
    1c4c:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      if (aExp == 0x7FF)
    1c50:	8fc30024 	lw	v1,36(s8)
    1c54:	240207ff 	addiu	v0,zero,2047
    1c58:	14620018 	bne	v1,v0,1cbc <addFloat64Sigs+0x358>
    1c5c:	00000000 	sll	zero,zero,0x0
	{
	  if (aSig | bSig)
    1c60:	8fc50034 	lw	a1,52(s8)
    1c64:	8fc40030 	lw	a0,48(s8)
    1c68:	8fc3003c 	lw	v1,60(s8)
    1c6c:	8fc20038 	lw	v0,56(s8)
    1c70:	00000000 	sll	zero,zero,0x0
    1c74:	0082b025 	or	s6,a0,v0
    1c78:	00a3b825 	or	s7,a1,v1
    1c7c:	02c01021 	addu	v0,s6,zero
    1c80:	00571025 	or	v0,v0,s7
    1c84:	10400009 	beqz	v0,1cac <addFloat64Sigs+0x348>
    1c88:	00000000 	sll	zero,zero,0x0
	    return propagateFloat64NaN (a, b);
    1c8c:	8fc50084 	lw	a1,132(s8)
    1c90:	8fc40080 	lw	a0,128(s8)
    1c94:	8fc7008c 	lw	a3,140(s8)
    1c98:	8fc60088 	lw	a2,136(s8)
    1c9c:	0c0003fb 	jal	fec <propagateFloat64NaN>
    1ca0:	00000000 	sll	zero,zero,0x0
    1ca4:	08000799 	j	1e64 <addFloat64Sigs+0x500>
    1ca8:	00000000 	sll	zero,zero,0x0
	  return a;
    1cac:	8fc30084 	lw	v1,132(s8)
    1cb0:	8fc20080 	lw	v0,128(s8)
    1cb4:	08000799 	j	1e64 <addFloat64Sigs+0x500>
    1cb8:	00000000 	sll	zero,zero,0x0
	}
      if (aExp == 0)
    1cbc:	8fc20024 	lw	v0,36(s8)
    1cc0:	00000000 	sll	zero,zero,0x0
    1cc4:	14400016 	bnez	v0,1d20 <addFloat64Sigs+0x3bc>
    1cc8:	00000000 	sll	zero,zero,0x0
	return packFloat64 (zSign, 0, (aSig + bSig) >> 9);
    1ccc:	8fc50034 	lw	a1,52(s8)
    1cd0:	8fc40030 	lw	a0,48(s8)
    1cd4:	8fc7003c 	lw	a3,60(s8)
    1cd8:	8fc60038 	lw	a2,56(s8)
    1cdc:	00a71821 	addu	v1,a1,a3
    1ce0:	0065402b 	sltu	t0,v1,a1
    1ce4:	00861021 	addu	v0,a0,a2
    1ce8:	01022021 	addu	a0,t0,v0
    1cec:	00801021 	addu	v0,a0,zero
    1cf0:	000225c0 	sll	a0,v0,0x17
    1cf4:	00038a42 	srl	s1,v1,0x9
    1cf8:	00918825 	or	s1,a0,s1
    1cfc:	00028242 	srl	s0,v0,0x9
    1d00:	8fc40090 	lw	a0,144(s8)
    1d04:	00002821 	addu	a1,zero,zero
    1d08:	02203821 	addu	a3,s1,zero
    1d0c:	02003021 	addu	a2,s0,zero
    1d10:	0c000000 	jal	0 <shift64RightJamming>
    1d14:	00000000 	sll	zero,zero,0x0
    1d18:	08000799 	j	1e64 <addFloat64Sigs+0x500>
    1d1c:	00000000 	sll	zero,zero,0x0
      zSig = LIT64 (0x4000000000000000) + aSig + bSig;
    1d20:	8fc50034 	lw	a1,52(s8)
    1d24:	8fc40030 	lw	a0,48(s8)
    1d28:	8fc7003c 	lw	a3,60(s8)
    1d2c:	8fc60038 	lw	a2,56(s8)
    1d30:	00a71821 	addu	v1,a1,a3
    1d34:	0065402b 	sltu	t0,v1,a1
    1d38:	00861021 	addu	v0,a0,a2
    1d3c:	01022021 	addu	a0,t0,v0
    1d40:	00801021 	addu	v0,a0,zero
    1d44:	00602821 	addu	a1,v1,zero
    1d48:	00402021 	addu	a0,v0,zero
    1d4c:	00003821 	addu	a3,zero,zero
    1d50:	3c064000 	lui	a2,0x4000
    1d54:	00a71821 	addu	v1,a1,a3
    1d58:	0065402b 	sltu	t0,v1,a1
    1d5c:	00861021 	addu	v0,a0,a2
    1d60:	01022021 	addu	a0,t0,v0
    1d64:	00801021 	addu	v0,a0,zero
    1d68:	afc3001c 	sw	v1,28(s8)
    1d6c:	afc20018 	sw	v0,24(s8)
      zExp = aExp;
    1d70:	8fc20024 	lw	v0,36(s8)
    1d74:	00000000 	sll	zero,zero,0x0
    1d78:	afc20010 	sw	v0,16(s8)
      goto roundAndPack;
    1d7c:	08000793 	j	1e4c <addFloat64Sigs+0x4e8>
    1d80:	00000000 	sll	zero,zero,0x0
    }
  aSig |= LIT64 (0x2000000000000000);
    1d84:	8fc30034 	lw	v1,52(s8)
    1d88:	8fc20030 	lw	v0,48(s8)
    1d8c:	3c042000 	lui	a0,0x2000
    1d90:	00442025 	or	a0,v0,a0
    1d94:	afc40050 	sw	a0,80(s8)
    1d98:	34640000 	ori	a0,v1,0x0
    1d9c:	afc40054 	sw	a0,84(s8)
    1da0:	8fc30054 	lw	v1,84(s8)
    1da4:	8fc20050 	lw	v0,80(s8)
    1da8:	afc30034 	sw	v1,52(s8)
    1dac:	afc20030 	sw	v0,48(s8)
  zSig = (aSig + bSig) << 1;
    1db0:	8fc50034 	lw	a1,52(s8)
    1db4:	8fc40030 	lw	a0,48(s8)
    1db8:	8fc7003c 	lw	a3,60(s8)
    1dbc:	8fc60038 	lw	a2,56(s8)
    1dc0:	00a71821 	addu	v1,a1,a3
    1dc4:	0065402b 	sltu	t0,v1,a1
    1dc8:	00861021 	addu	v0,a0,a2
    1dcc:	01022021 	addu	a0,t0,v0
    1dd0:	00801021 	addu	v0,a0,zero
    1dd4:	000327c2 	srl	a0,v1,0x1f
    1dd8:	00022840 	sll	a1,v0,0x1
    1ddc:	00a42025 	or	a0,a1,a0
    1de0:	afc40018 	sw	a0,24(s8)
    1de4:	00031040 	sll	v0,v1,0x1
    1de8:	afc2001c 	sw	v0,28(s8)
  --zExp;
    1dec:	8fc20010 	lw	v0,16(s8)
    1df0:	00000000 	sll	zero,zero,0x0
    1df4:	2442ffff 	addiu	v0,v0,-1
    1df8:	afc20010 	sw	v0,16(s8)
  if ((sbits64) zSig < 0)
    1dfc:	8fc3001c 	lw	v1,28(s8)
    1e00:	8fc20018 	lw	v0,24(s8)
    1e04:	00000000 	sll	zero,zero,0x0
    1e08:	04410010 	bgez	v0,1e4c <addFloat64Sigs+0x4e8>
    1e0c:	00000000 	sll	zero,zero,0x0
    {
      zSig = aSig + bSig;
    1e10:	8fc50034 	lw	a1,52(s8)
    1e14:	8fc40030 	lw	a0,48(s8)
    1e18:	8fc7003c 	lw	a3,60(s8)
    1e1c:	8fc60038 	lw	a2,56(s8)
    1e20:	00a71821 	addu	v1,a1,a3
    1e24:	0065402b 	sltu	t0,v1,a1
    1e28:	00861021 	addu	v0,a0,a2
    1e2c:	01022021 	addu	a0,t0,v0
    1e30:	00801021 	addu	v0,a0,zero
    1e34:	afc3001c 	sw	v1,28(s8)
    1e38:	afc20018 	sw	v0,24(s8)
      ++zExp;
    1e3c:	8fc20010 	lw	v0,16(s8)
    1e40:	00000000 	sll	zero,zero,0x0
    1e44:	24420001 	addiu	v0,v0,1
    1e48:	afc20010 	sw	v0,16(s8)
    }
roundAndPack:
  return roundAndPackFloat64 (zSign, zExp, zSig);
    1e4c:	8fc40090 	lw	a0,144(s8)
    1e50:	8fc50010 	lw	a1,16(s8)
    1e54:	8fc7001c 	lw	a3,28(s8)
    1e58:	8fc60018 	lw	a2,24(s8)
    1e5c:	0c0004e7 	jal	139c <roundAndPackFloat64>
    1e60:	00000000 	sll	zero,zero,0x0

}
    1e64:	03c0e821 	addu	sp,s8,zero
    1e68:	8fbf007c 	lw	ra,124(sp)
    1e6c:	8fbe0078 	lw	s8,120(sp)
    1e70:	8fb70074 	lw	s7,116(sp)
    1e74:	8fb60070 	lw	s6,112(sp)
    1e78:	8fb5006c 	lw	s5,108(sp)
    1e7c:	8fb40068 	lw	s4,104(sp)
    1e80:	8fb30064 	lw	s3,100(sp)
    1e84:	8fb20060 	lw	s2,96(sp)
    1e88:	8fb1005c 	lw	s1,92(sp)
    1e8c:	8fb00058 	lw	s0,88(sp)
    1e90:	27bd0080 	addiu	sp,sp,128
    1e94:	03e00008 	jr	ra
    1e98:	00000000 	sll	zero,zero,0x0

00001e9c <subFloat64Sigs>:
| Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

static float64
subFloat64Sigs (float64 a, float64 b, flag zSign)
{
    1e9c:	27bdff80 	addiu	sp,sp,-128
    1ea0:	afbf007c 	sw	ra,124(sp)
    1ea4:	afbe0078 	sw	s8,120(sp)
    1ea8:	afb70074 	sw	s7,116(sp)
    1eac:	afb60070 	sw	s6,112(sp)
    1eb0:	afb5006c 	sw	s5,108(sp)
    1eb4:	afb40068 	sw	s4,104(sp)
    1eb8:	afb30064 	sw	s3,100(sp)
    1ebc:	afb20060 	sw	s2,96(sp)
    1ec0:	afb1005c 	sw	s1,92(sp)
    1ec4:	afb00058 	sw	s0,88(sp)
    1ec8:	03a0f021 	addu	s8,sp,zero
    1ecc:	afc50084 	sw	a1,132(s8)
    1ed0:	afc40080 	sw	a0,128(s8)
    1ed4:	afc7008c 	sw	a3,140(s8)
    1ed8:	afc60088 	sw	a2,136(s8)
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  int16 expDiff;

  aSig = extractFloat64Frac (a);
    1edc:	8fc50084 	lw	a1,132(s8)
    1ee0:	8fc40080 	lw	a0,128(s8)
    1ee4:	0c000000 	jal	0 <shift64RightJamming>
    1ee8:	00000000 	sll	zero,zero,0x0
    1eec:	afc30034 	sw	v1,52(s8)
    1ef0:	afc20030 	sw	v0,48(s8)
  aExp = extractFloat64Exp (a);
    1ef4:	8fc50084 	lw	a1,132(s8)
    1ef8:	8fc40080 	lw	a0,128(s8)
    1efc:	0c000000 	jal	0 <shift64RightJamming>
    1f00:	00000000 	sll	zero,zero,0x0
    1f04:	afc20010 	sw	v0,16(s8)
  bSig = extractFloat64Frac (b);
    1f08:	8fc5008c 	lw	a1,140(s8)
    1f0c:	8fc40088 	lw	a0,136(s8)
    1f10:	0c000000 	jal	0 <shift64RightJamming>
    1f14:	00000000 	sll	zero,zero,0x0
    1f18:	afc3003c 	sw	v1,60(s8)
    1f1c:	afc20038 	sw	v0,56(s8)
  bExp = extractFloat64Exp (b);
    1f20:	8fc5008c 	lw	a1,140(s8)
    1f24:	8fc40088 	lw	a0,136(s8)
    1f28:	0c000000 	jal	0 <shift64RightJamming>
    1f2c:	00000000 	sll	zero,zero,0x0
    1f30:	afc20014 	sw	v0,20(s8)
  expDiff = aExp - bExp;
    1f34:	8fc30010 	lw	v1,16(s8)
    1f38:	8fc20014 	lw	v0,20(s8)
    1f3c:	00000000 	sll	zero,zero,0x0
    1f40:	00621023 	subu	v0,v1,v0
    1f44:	afc20028 	sw	v0,40(s8)
  aSig <<= 10;
    1f48:	8fc30034 	lw	v1,52(s8)
    1f4c:	8fc20030 	lw	v0,48(s8)
    1f50:	00032582 	srl	a0,v1,0x16
    1f54:	00029280 	sll	s2,v0,0xa
    1f58:	00929025 	or	s2,a0,s2
    1f5c:	00039a80 	sll	s3,v1,0xa
    1f60:	afd30034 	sw	s3,52(s8)
    1f64:	afd20030 	sw	s2,48(s8)
  bSig <<= 10;
    1f68:	8fc3003c 	lw	v1,60(s8)
    1f6c:	8fc20038 	lw	v0,56(s8)
    1f70:	00032582 	srl	a0,v1,0x16
    1f74:	00028280 	sll	s0,v0,0xa
    1f78:	00908025 	or	s0,a0,s0
    1f7c:	00038a80 	sll	s1,v1,0xa
    1f80:	afd1003c 	sw	s1,60(s8)
    1f84:	afd00038 	sw	s0,56(s8)
  if (0 < expDiff)
    1f88:	8fc20028 	lw	v0,40(s8)
    1f8c:	00000000 	sll	zero,zero,0x0
    1f90:	1c4000b7 	bgtz	v0,2270 <subFloat64Sigs+0x3d4>
    1f94:	00000000 	sll	zero,zero,0x0
    goto aExpBigger;
  if (expDiff < 0)
    1f98:	8fc20028 	lw	v0,40(s8)
    1f9c:	00000000 	sll	zero,zero,0x0
    1fa0:	04400050 	bltz	v0,20e4 <subFloat64Sigs+0x248>
    1fa4:	00000000 	sll	zero,zero,0x0
    goto bExpBigger;
  if (aExp == 0x7FF)
    1fa8:	8fc30010 	lw	v1,16(s8)
    1fac:	240207ff 	addiu	v0,zero,2047
    1fb0:	1462001c 	bne	v1,v0,2024 <subFloat64Sigs+0x188>
    1fb4:	00000000 	sll	zero,zero,0x0
    {
      if (aSig | bSig)
    1fb8:	8fc50034 	lw	a1,52(s8)
    1fbc:	8fc40030 	lw	a0,48(s8)
    1fc0:	8fc3003c 	lw	v1,60(s8)
    1fc4:	8fc20038 	lw	v0,56(s8)
    1fc8:	00000000 	sll	zero,zero,0x0
    1fcc:	0082a025 	or	s4,a0,v0
    1fd0:	00a3a825 	or	s5,a1,v1
    1fd4:	02801021 	addu	v0,s4,zero
    1fd8:	00551025 	or	v0,v0,s5
    1fdc:	10400009 	beqz	v0,2004 <subFloat64Sigs+0x168>
    1fe0:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    1fe4:	8fc50084 	lw	a1,132(s8)
    1fe8:	8fc40080 	lw	a0,128(s8)
    1fec:	8fc7008c 	lw	a3,140(s8)
    1ff0:	8fc60088 	lw	a2,136(s8)
    1ff4:	0c0003fb 	jal	fec <propagateFloat64NaN>
    1ff8:	00000000 	sll	zero,zero,0x0
    1ffc:	080008f6 	j	23d8 <subFloat64Sigs+0x53c>
    2000:	00000000 	sll	zero,zero,0x0
      float_raise (float_flag_invalid);
    2004:	24040010 	addiu	a0,zero,16
    2008:	0c000000 	jal	0 <shift64RightJamming>
    200c:	00000000 	sll	zero,zero,0x0
      return float64_default_nan;
    2010:	2403ffff 	addiu	v1,zero,-1
    2014:	3c027fff 	lui	v0,0x7fff
    2018:	3442ffff 	ori	v0,v0,0xffff
    201c:	080008f6 	j	23d8 <subFloat64Sigs+0x53c>
    2020:	00000000 	sll	zero,zero,0x0
    }
  if (aExp == 0)
    2024:	8fc20010 	lw	v0,16(s8)
    2028:	00000000 	sll	zero,zero,0x0
    202c:	14400005 	bnez	v0,2044 <subFloat64Sigs+0x1a8>
    2030:	00000000 	sll	zero,zero,0x0
    {
      aExp = 1;
    2034:	24020001 	addiu	v0,zero,1
    2038:	afc20010 	sw	v0,16(s8)
      bExp = 1;
    203c:	24020001 	addiu	v0,zero,1
    2040:	afc20014 	sw	v0,20(s8)
    }
  if (bSig < aSig)
    2044:	8fc3003c 	lw	v1,60(s8)
    2048:	8fc20038 	lw	v0,56(s8)
    204c:	8fc50034 	lw	a1,52(s8)
    2050:	8fc40030 	lw	a0,48(s8)
    2054:	00000000 	sll	zero,zero,0x0
    2058:	0044302b 	sltu	a2,v0,a0
    205c:	14c000c2 	bnez	a2,2368 <subFloat64Sigs+0x4cc>
    2060:	00000000 	sll	zero,zero,0x0
    2064:	00403021 	addu	a2,v0,zero
    2068:	14860004 	bne	a0,a2,207c <subFloat64Sigs+0x1e0>
    206c:	00000000 	sll	zero,zero,0x0
    2070:	0065102b 	sltu	v0,v1,a1
    2074:	144000bf 	bnez	v0,2374 <subFloat64Sigs+0x4d8>
    2078:	00000000 	sll	zero,zero,0x0
    goto aBigger;
  if (aSig < bSig)
    207c:	8fc30034 	lw	v1,52(s8)
    2080:	8fc20030 	lw	v0,48(s8)
    2084:	8fc5003c 	lw	a1,60(s8)
    2088:	8fc40038 	lw	a0,56(s8)
    208c:	00000000 	sll	zero,zero,0x0
    2090:	0044302b 	sltu	a2,v0,a0
    2094:	14c0005e 	bnez	a2,2210 <subFloat64Sigs+0x374>
    2098:	00000000 	sll	zero,zero,0x0
    209c:	00403021 	addu	a2,v0,zero
    20a0:	14860004 	bne	a0,a2,20b4 <subFloat64Sigs+0x218>
    20a4:	00000000 	sll	zero,zero,0x0
    20a8:	0065102b 	sltu	v0,v1,a1
    20ac:	1440005b 	bnez	v0,221c <subFloat64Sigs+0x380>
    20b0:	00000000 	sll	zero,zero,0x0
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
    20b4:	8f820000 	lw	v0,0(gp)
    20b8:	00000000 	sll	zero,zero,0x0
    20bc:	38420003 	xori	v0,v0,0x3
    20c0:	2c420001 	sltiu	v0,v0,1
    20c4:	00402021 	addu	a0,v0,zero
    20c8:	00002821 	addu	a1,zero,zero
    20cc:	00003821 	addu	a3,zero,zero
    20d0:	00003021 	addu	a2,zero,zero
    20d4:	0c000000 	jal	0 <shift64RightJamming>
    20d8:	00000000 	sll	zero,zero,0x0
    20dc:	080008f6 	j	23d8 <subFloat64Sigs+0x53c>
    20e0:	00000000 	sll	zero,zero,0x0
  aSig <<= 10;
  bSig <<= 10;
  if (0 < expDiff)
    goto aExpBigger;
  if (expDiff < 0)
    goto bExpBigger;
    20e4:	00000000 	sll	zero,zero,0x0
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
  return packFloat64 (float_rounding_mode == float_round_down, 0, 0);
bExpBigger:
  if (bExp == 0x7FF)
    20e8:	8fc30014 	lw	v1,20(s8)
    20ec:	240207ff 	addiu	v0,zero,2047
    20f0:	1462001b 	bne	v1,v0,2160 <subFloat64Sigs+0x2c4>
    20f4:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
    20f8:	8fc5003c 	lw	a1,60(s8)
    20fc:	8fc40038 	lw	a0,56(s8)
    2100:	00000000 	sll	zero,zero,0x0
    2104:	00801021 	addu	v0,a0,zero
    2108:	00451025 	or	v0,v0,a1
    210c:	10400009 	beqz	v0,2134 <subFloat64Sigs+0x298>
    2110:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    2114:	8fc50084 	lw	a1,132(s8)
    2118:	8fc40080 	lw	a0,128(s8)
    211c:	8fc7008c 	lw	a3,140(s8)
    2120:	8fc60088 	lw	a2,136(s8)
    2124:	0c0003fb 	jal	fec <propagateFloat64NaN>
    2128:	00000000 	sll	zero,zero,0x0
    212c:	080008f6 	j	23d8 <subFloat64Sigs+0x53c>
    2130:	00000000 	sll	zero,zero,0x0
      return packFloat64 (zSign ^ 1, 0x7FF, 0);
    2134:	8fc20090 	lw	v0,144(s8)
    2138:	00000000 	sll	zero,zero,0x0
    213c:	38420001 	xori	v0,v0,0x1
    2140:	00402021 	addu	a0,v0,zero
    2144:	240507ff 	addiu	a1,zero,2047
    2148:	00003821 	addu	a3,zero,zero
    214c:	00003021 	addu	a2,zero,zero
    2150:	0c000000 	jal	0 <shift64RightJamming>
    2154:	00000000 	sll	zero,zero,0x0
    2158:	080008f6 	j	23d8 <subFloat64Sigs+0x53c>
    215c:	00000000 	sll	zero,zero,0x0
    }
  if (aExp == 0)
    2160:	8fc20010 	lw	v0,16(s8)
    2164:	00000000 	sll	zero,zero,0x0
    2168:	14400007 	bnez	v0,2188 <subFloat64Sigs+0x2ec>
    216c:	00000000 	sll	zero,zero,0x0
    ++expDiff;
    2170:	8fc20028 	lw	v0,40(s8)
    2174:	00000000 	sll	zero,zero,0x0
    2178:	24420001 	addiu	v0,v0,1
    217c:	afc20028 	sw	v0,40(s8)
    2180:	0800086d 	j	21b4 <subFloat64Sigs+0x318>
    2184:	00000000 	sll	zero,zero,0x0
  else
    aSig |= LIT64 (0x4000000000000000);
    2188:	8fc30034 	lw	v1,52(s8)
    218c:	8fc20030 	lw	v0,48(s8)
    2190:	3c044000 	lui	a0,0x4000
    2194:	00442025 	or	a0,v0,a0
    2198:	afc40048 	sw	a0,72(s8)
    219c:	34640000 	ori	a0,v1,0x0
    21a0:	afc4004c 	sw	a0,76(s8)
    21a4:	8fc3004c 	lw	v1,76(s8)
    21a8:	8fc20048 	lw	v0,72(s8)
    21ac:	afc30034 	sw	v1,52(s8)
    21b0:	afc20030 	sw	v0,48(s8)
  shift64RightJamming (aSig, -expDiff, &aSig);
    21b4:	8fc30034 	lw	v1,52(s8)
    21b8:	8fc20030 	lw	v0,48(s8)
    21bc:	8fc40028 	lw	a0,40(s8)
    21c0:	00000000 	sll	zero,zero,0x0
    21c4:	00043023 	negu	a2,a0
    21c8:	27c70030 	addiu	a3,s8,48
    21cc:	00602821 	addu	a1,v1,zero
    21d0:	00402021 	addu	a0,v0,zero
    21d4:	0c000000 	jal	0 <shift64RightJamming>
    21d8:	00000000 	sll	zero,zero,0x0
  bSig |= LIT64 (0x4000000000000000);
    21dc:	8fc3003c 	lw	v1,60(s8)
    21e0:	8fc20038 	lw	v0,56(s8)
    21e4:	3c044000 	lui	a0,0x4000
    21e8:	00442025 	or	a0,v0,a0
    21ec:	afc40050 	sw	a0,80(s8)
    21f0:	34640000 	ori	a0,v1,0x0
    21f4:	afc40054 	sw	a0,84(s8)
    21f8:	8fc30054 	lw	v1,84(s8)
    21fc:	8fc20050 	lw	v0,80(s8)
    2200:	afc3003c 	sw	v1,60(s8)
    2204:	afc20038 	sw	v0,56(s8)
    2208:	08000888 	j	2220 <subFloat64Sigs+0x384>
    220c:	00000000 	sll	zero,zero,0x0
      bExp = 1;
    }
  if (bSig < aSig)
    goto aBigger;
  if (aSig < bSig)
    goto bBigger;
    2210:	00000000 	sll	zero,zero,0x0
    2214:	08000888 	j	2220 <subFloat64Sigs+0x384>
    2218:	00000000 	sll	zero,zero,0x0
    221c:	00000000 	sll	zero,zero,0x0
  else
    aSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (aSig, -expDiff, &aSig);
  bSig |= LIT64 (0x4000000000000000);
bBigger:
  zSig = bSig - aSig;
    2220:	8fc5003c 	lw	a1,60(s8)
    2224:	8fc40038 	lw	a0,56(s8)
    2228:	8fc70034 	lw	a3,52(s8)
    222c:	8fc60030 	lw	a2,48(s8)
    2230:	00a71823 	subu	v1,a1,a3
    2234:	00a3402b 	sltu	t0,a1,v1
    2238:	00861023 	subu	v0,a0,a2
    223c:	00482023 	subu	a0,v0,t0
    2240:	00801021 	addu	v0,a0,zero
    2244:	afc30024 	sw	v1,36(s8)
    2248:	afc20020 	sw	v0,32(s8)
  zExp = bExp;
    224c:	8fc20014 	lw	v0,20(s8)
    2250:	00000000 	sll	zero,zero,0x0
    2254:	afc20018 	sw	v0,24(s8)
  zSign ^= 1;
    2258:	8fc20090 	lw	v0,144(s8)
    225c:	00000000 	sll	zero,zero,0x0
    2260:	38420001 	xori	v0,v0,0x1
    2264:	afc20090 	sw	v0,144(s8)
  goto normalizeRoundAndPack;
    2268:	080008ec 	j	23b0 <subFloat64Sigs+0x514>
    226c:	00000000 	sll	zero,zero,0x0
  bExp = extractFloat64Exp (b);
  expDiff = aExp - bExp;
  aSig <<= 10;
  bSig <<= 10;
  if (0 < expDiff)
    goto aExpBigger;
    2270:	00000000 	sll	zero,zero,0x0
  zSig = bSig - aSig;
  zExp = bExp;
  zSign ^= 1;
  goto normalizeRoundAndPack;
aExpBigger:
  if (aExp == 0x7FF)
    2274:	8fc30010 	lw	v1,16(s8)
    2278:	240207ff 	addiu	v0,zero,2047
    227c:	14620014 	bne	v1,v0,22d0 <subFloat64Sigs+0x434>
    2280:	00000000 	sll	zero,zero,0x0
    {
      if (aSig)
    2284:	8fc50034 	lw	a1,52(s8)
    2288:	8fc40030 	lw	a0,48(s8)
    228c:	00000000 	sll	zero,zero,0x0
    2290:	00801021 	addu	v0,a0,zero
    2294:	00451025 	or	v0,v0,a1
    2298:	10400009 	beqz	v0,22c0 <subFloat64Sigs+0x424>
    229c:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    22a0:	8fc50084 	lw	a1,132(s8)
    22a4:	8fc40080 	lw	a0,128(s8)
    22a8:	8fc7008c 	lw	a3,140(s8)
    22ac:	8fc60088 	lw	a2,136(s8)
    22b0:	0c0003fb 	jal	fec <propagateFloat64NaN>
    22b4:	00000000 	sll	zero,zero,0x0
    22b8:	080008f6 	j	23d8 <subFloat64Sigs+0x53c>
    22bc:	00000000 	sll	zero,zero,0x0
      return a;
    22c0:	8fc30084 	lw	v1,132(s8)
    22c4:	8fc20080 	lw	v0,128(s8)
    22c8:	080008f6 	j	23d8 <subFloat64Sigs+0x53c>
    22cc:	00000000 	sll	zero,zero,0x0
    }
  if (bExp == 0)
    22d0:	8fc20014 	lw	v0,20(s8)
    22d4:	00000000 	sll	zero,zero,0x0
    22d8:	14400007 	bnez	v0,22f8 <subFloat64Sigs+0x45c>
    22dc:	00000000 	sll	zero,zero,0x0
    --expDiff;
    22e0:	8fc20028 	lw	v0,40(s8)
    22e4:	00000000 	sll	zero,zero,0x0
    22e8:	2442ffff 	addiu	v0,v0,-1
    22ec:	afc20028 	sw	v0,40(s8)
    22f0:	080008c9 	j	2324 <subFloat64Sigs+0x488>
    22f4:	00000000 	sll	zero,zero,0x0
  else
    bSig |= LIT64 (0x4000000000000000);
    22f8:	8fc3003c 	lw	v1,60(s8)
    22fc:	8fc20038 	lw	v0,56(s8)
    2300:	3c044000 	lui	a0,0x4000
    2304:	00442025 	or	a0,v0,a0
    2308:	afc40040 	sw	a0,64(s8)
    230c:	34640000 	ori	a0,v1,0x0
    2310:	afc40044 	sw	a0,68(s8)
    2314:	8fc30044 	lw	v1,68(s8)
    2318:	8fc20040 	lw	v0,64(s8)
    231c:	afc3003c 	sw	v1,60(s8)
    2320:	afc20038 	sw	v0,56(s8)
  shift64RightJamming (bSig, expDiff, &bSig);
    2324:	8fc3003c 	lw	v1,60(s8)
    2328:	8fc20038 	lw	v0,56(s8)
    232c:	27c70038 	addiu	a3,s8,56
    2330:	00602821 	addu	a1,v1,zero
    2334:	00402021 	addu	a0,v0,zero
    2338:	8fc60028 	lw	a2,40(s8)
    233c:	0c000000 	jal	0 <shift64RightJamming>
    2340:	00000000 	sll	zero,zero,0x0
  aSig |= LIT64 (0x4000000000000000);
    2344:	8fc30034 	lw	v1,52(s8)
    2348:	8fc20030 	lw	v0,48(s8)
    234c:	3c044000 	lui	a0,0x4000
    2350:	0044b025 	or	s6,v0,a0
    2354:	34770000 	ori	s7,v1,0x0
    2358:	afd70034 	sw	s7,52(s8)
    235c:	afd60030 	sw	s6,48(s8)
    2360:	080008de 	j	2378 <subFloat64Sigs+0x4dc>
    2364:	00000000 	sll	zero,zero,0x0
    {
      aExp = 1;
      bExp = 1;
    }
  if (bSig < aSig)
    goto aBigger;
    2368:	00000000 	sll	zero,zero,0x0
    236c:	080008de 	j	2378 <subFloat64Sigs+0x4dc>
    2370:	00000000 	sll	zero,zero,0x0
    2374:	00000000 	sll	zero,zero,0x0
  else
    bSig |= LIT64 (0x4000000000000000);
  shift64RightJamming (bSig, expDiff, &bSig);
  aSig |= LIT64 (0x4000000000000000);
aBigger:
  zSig = aSig - bSig;
    2378:	8fc50034 	lw	a1,52(s8)
    237c:	8fc40030 	lw	a0,48(s8)
    2380:	8fc7003c 	lw	a3,60(s8)
    2384:	8fc60038 	lw	a2,56(s8)
    2388:	00a71823 	subu	v1,a1,a3
    238c:	00a3402b 	sltu	t0,a1,v1
    2390:	00861023 	subu	v0,a0,a2
    2394:	00482023 	subu	a0,v0,t0
    2398:	00801021 	addu	v0,a0,zero
    239c:	afc30024 	sw	v1,36(s8)
    23a0:	afc20020 	sw	v0,32(s8)
  zExp = aExp;
    23a4:	8fc20010 	lw	v0,16(s8)
    23a8:	00000000 	sll	zero,zero,0x0
    23ac:	afc20018 	sw	v0,24(s8)
normalizeRoundAndPack:
  --zExp;
    23b0:	8fc20018 	lw	v0,24(s8)
    23b4:	00000000 	sll	zero,zero,0x0
    23b8:	2442ffff 	addiu	v0,v0,-1
    23bc:	afc20018 	sw	v0,24(s8)
  return normalizeRoundAndPackFloat64 (zSign, zExp, zSig);
    23c0:	8fc40090 	lw	a0,144(s8)
    23c4:	8fc50018 	lw	a1,24(s8)
    23c8:	8fc70024 	lw	a3,36(s8)
    23cc:	8fc60020 	lw	a2,32(s8)
    23d0:	0c0005c5 	jal	1714 <normalizeRoundAndPackFloat64>
    23d4:	00000000 	sll	zero,zero,0x0

}
    23d8:	03c0e821 	addu	sp,s8,zero
    23dc:	8fbf007c 	lw	ra,124(sp)
    23e0:	8fbe0078 	lw	s8,120(sp)
    23e4:	8fb70074 	lw	s7,116(sp)
    23e8:	8fb60070 	lw	s6,112(sp)
    23ec:	8fb5006c 	lw	s5,108(sp)
    23f0:	8fb40068 	lw	s4,104(sp)
    23f4:	8fb30064 	lw	s3,100(sp)
    23f8:	8fb20060 	lw	s2,96(sp)
    23fc:	8fb1005c 	lw	s1,92(sp)
    2400:	8fb00058 	lw	s0,88(sp)
    2404:	27bd0080 	addiu	sp,sp,128
    2408:	03e00008 	jr	ra
    240c:	00000000 	sll	zero,zero,0x0

00002410 <float64_add>:
| Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_add (float64 a, float64 b)
{
    2410:	27bdffd8 	addiu	sp,sp,-40
    2414:	afbf0024 	sw	ra,36(sp)
    2418:	afbe0020 	sw	s8,32(sp)
    241c:	03a0f021 	addu	s8,sp,zero
    2420:	afc5002c 	sw	a1,44(s8)
    2424:	afc40028 	sw	a0,40(s8)
    2428:	afc70034 	sw	a3,52(s8)
    242c:	afc60030 	sw	a2,48(s8)
  flag aSign, bSign;

  aSign = extractFloat64Sign (a);
    2430:	8fc5002c 	lw	a1,44(s8)
    2434:	8fc40028 	lw	a0,40(s8)
    2438:	0c000000 	jal	0 <shift64RightJamming>
    243c:	00000000 	sll	zero,zero,0x0
    2440:	afc20018 	sw	v0,24(s8)
  bSign = extractFloat64Sign (b);
    2444:	8fc50034 	lw	a1,52(s8)
    2448:	8fc40030 	lw	a0,48(s8)
    244c:	0c000000 	jal	0 <shift64RightJamming>
    2450:	00000000 	sll	zero,zero,0x0
    2454:	afc2001c 	sw	v0,28(s8)
  if (aSign == bSign)
    2458:	8fc30018 	lw	v1,24(s8)
    245c:	8fc2001c 	lw	v0,28(s8)
    2460:	00000000 	sll	zero,zero,0x0
    2464:	1462000c 	bne	v1,v0,2498 <float64_add+0x88>
    2468:	00000000 	sll	zero,zero,0x0
    return addFloat64Sigs (a, b, aSign);
    246c:	8fc20018 	lw	v0,24(s8)
    2470:	00000000 	sll	zero,zero,0x0
    2474:	afa20010 	sw	v0,16(sp)
    2478:	8fc5002c 	lw	a1,44(s8)
    247c:	8fc40028 	lw	a0,40(s8)
    2480:	8fc70034 	lw	a3,52(s8)
    2484:	8fc60030 	lw	a2,48(s8)
    2488:	0c000659 	jal	1964 <addFloat64Sigs>
    248c:	00000000 	sll	zero,zero,0x0
    2490:	0800092f 	j	24bc <float64_add+0xac>
    2494:	00000000 	sll	zero,zero,0x0
  else
    return subFloat64Sigs (a, b, aSign);
    2498:	8fc20018 	lw	v0,24(s8)
    249c:	00000000 	sll	zero,zero,0x0
    24a0:	afa20010 	sw	v0,16(sp)
    24a4:	8fc5002c 	lw	a1,44(s8)
    24a8:	8fc40028 	lw	a0,40(s8)
    24ac:	8fc70034 	lw	a3,52(s8)
    24b0:	8fc60030 	lw	a2,48(s8)
    24b4:	0c0007a7 	jal	1e9c <subFloat64Sigs>
    24b8:	00000000 	sll	zero,zero,0x0

}
    24bc:	03c0e821 	addu	sp,s8,zero
    24c0:	8fbf0024 	lw	ra,36(sp)
    24c4:	8fbe0020 	lw	s8,32(sp)
    24c8:	27bd0028 	addiu	sp,sp,40
    24cc:	03e00008 	jr	ra
    24d0:	00000000 	sll	zero,zero,0x0

000024d4 <float64_mul>:
| for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_mul (float64 a, float64 b)
{
    24d4:	27bdff48 	addiu	sp,sp,-184
    24d8:	afbf00b4 	sw	ra,180(sp)
    24dc:	afbe00b0 	sw	s8,176(sp)
    24e0:	afb700ac 	sw	s7,172(sp)
    24e4:	afb600a8 	sw	s6,168(sp)
    24e8:	afb500a4 	sw	s5,164(sp)
    24ec:	afb400a0 	sw	s4,160(sp)
    24f0:	afb3009c 	sw	s3,156(sp)
    24f4:	afb20098 	sw	s2,152(sp)
    24f8:	afb10094 	sw	s1,148(sp)
    24fc:	afb00090 	sw	s0,144(sp)
    2500:	03a0f021 	addu	s8,sp,zero
    2504:	afc500bc 	sw	a1,188(s8)
    2508:	afc400b8 	sw	a0,184(s8)
    250c:	afc700c4 	sw	a3,196(s8)
    2510:	afc600c0 	sw	a2,192(s8)
  flag aSign, bSign, zSign;
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig0, zSig1;

  aSig = extractFloat64Frac (a);
    2514:	8fc500bc 	lw	a1,188(s8)
    2518:	8fc400b8 	lw	a0,184(s8)
    251c:	0c000000 	jal	0 <shift64RightJamming>
    2520:	00000000 	sll	zero,zero,0x0
    2524:	afc30034 	sw	v1,52(s8)
    2528:	afc20030 	sw	v0,48(s8)
  aExp = extractFloat64Exp (a);
    252c:	8fc500bc 	lw	a1,188(s8)
    2530:	8fc400b8 	lw	a0,184(s8)
    2534:	0c000000 	jal	0 <shift64RightJamming>
    2538:	00000000 	sll	zero,zero,0x0
    253c:	afc20028 	sw	v0,40(s8)
  aSign = extractFloat64Sign (a);
    2540:	8fc500bc 	lw	a1,188(s8)
    2544:	8fc400b8 	lw	a0,184(s8)
    2548:	0c000000 	jal	0 <shift64RightJamming>
    254c:	00000000 	sll	zero,zero,0x0
    2550:	afc2001c 	sw	v0,28(s8)
  bSig = extractFloat64Frac (b);
    2554:	8fc500c4 	lw	a1,196(s8)
    2558:	8fc400c0 	lw	a0,192(s8)
    255c:	0c000000 	jal	0 <shift64RightJamming>
    2560:	00000000 	sll	zero,zero,0x0
    2564:	afc3003c 	sw	v1,60(s8)
    2568:	afc20038 	sw	v0,56(s8)
  bExp = extractFloat64Exp (b);
    256c:	8fc500c4 	lw	a1,196(s8)
    2570:	8fc400c0 	lw	a0,192(s8)
    2574:	0c000000 	jal	0 <shift64RightJamming>
    2578:	00000000 	sll	zero,zero,0x0
    257c:	afc2002c 	sw	v0,44(s8)
  bSign = extractFloat64Sign (b);
    2580:	8fc500c4 	lw	a1,196(s8)
    2584:	8fc400c0 	lw	a0,192(s8)
    2588:	0c000000 	jal	0 <shift64RightJamming>
    258c:	00000000 	sll	zero,zero,0x0
    2590:	afc20020 	sw	v0,32(s8)
  zSign = aSign ^ bSign;
    2594:	8fc3001c 	lw	v1,28(s8)
    2598:	8fc20020 	lw	v0,32(s8)
    259c:	00000000 	sll	zero,zero,0x0
    25a0:	00621026 	xor	v0,v1,v0
    25a4:	afc20024 	sw	v0,36(s8)
  if (aExp == 0x7FF)
    25a8:	8fc30028 	lw	v1,40(s8)
    25ac:	240207ff 	addiu	v0,zero,2047
    25b0:	14620041 	bne	v1,v0,26b8 <float64_mul+0x1e4>
    25b4:	00000000 	sll	zero,zero,0x0
    {
      if (aSig || ((bExp == 0x7FF) && bSig))
    25b8:	8fc50034 	lw	a1,52(s8)
    25bc:	8fc40030 	lw	a0,48(s8)
    25c0:	00000000 	sll	zero,zero,0x0
    25c4:	00801021 	addu	v0,a0,zero
    25c8:	00451025 	or	v0,v0,a1
    25cc:	1440000c 	bnez	v0,2600 <float64_mul+0x12c>
    25d0:	00000000 	sll	zero,zero,0x0
    25d4:	8fc3002c 	lw	v1,44(s8)
    25d8:	240207ff 	addiu	v0,zero,2047
    25dc:	14620010 	bne	v1,v0,2620 <float64_mul+0x14c>
    25e0:	00000000 	sll	zero,zero,0x0
    25e4:	8fc5003c 	lw	a1,60(s8)
    25e8:	8fc40038 	lw	a0,56(s8)
    25ec:	00000000 	sll	zero,zero,0x0
    25f0:	00801021 	addu	v0,a0,zero
    25f4:	00451025 	or	v0,v0,a1
    25f8:	10400009 	beqz	v0,2620 <float64_mul+0x14c>
    25fc:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    2600:	8fc500bc 	lw	a1,188(s8)
    2604:	8fc400b8 	lw	a0,184(s8)
    2608:	8fc700c4 	lw	a3,196(s8)
    260c:	8fc600c0 	lw	a2,192(s8)
    2610:	0c0003fb 	jal	fec <propagateFloat64NaN>
    2614:	00000000 	sll	zero,zero,0x0
    2618:	08000a88 	j	2a20 <float64_mul+0x54c>
    261c:	00000000 	sll	zero,zero,0x0
      if ((bExp | bSig) == 0)
    2620:	8fc2002c 	lw	v0,44(s8)
    2624:	00000000 	sll	zero,zero,0x0
    2628:	00401821 	addu	v1,v0,zero
    262c:	afc30054 	sw	v1,84(s8)
    2630:	000217c3 	sra	v0,v0,0x1f
    2634:	afc20050 	sw	v0,80(s8)
    2638:	8fc3003c 	lw	v1,60(s8)
    263c:	8fc20038 	lw	v0,56(s8)
    2640:	8fc40050 	lw	a0,80(s8)
    2644:	00000000 	sll	zero,zero,0x0
    2648:	00822025 	or	a0,a0,v0
    264c:	afc40058 	sw	a0,88(s8)
    2650:	8fc40054 	lw	a0,84(s8)
    2654:	00000000 	sll	zero,zero,0x0
    2658:	00832025 	or	a0,a0,v1
    265c:	afc4005c 	sw	a0,92(s8)
    2660:	8fc20058 	lw	v0,88(s8)
    2664:	8fc3005c 	lw	v1,92(s8)
    2668:	00000000 	sll	zero,zero,0x0
    266c:	00431025 	or	v0,v0,v1
    2670:	14400009 	bnez	v0,2698 <float64_mul+0x1c4>
    2674:	00000000 	sll	zero,zero,0x0
	{
	  float_raise (float_flag_invalid);
    2678:	24040010 	addiu	a0,zero,16
    267c:	0c000000 	jal	0 <shift64RightJamming>
    2680:	00000000 	sll	zero,zero,0x0
	  return float64_default_nan;
    2684:	2403ffff 	addiu	v1,zero,-1
    2688:	3c027fff 	lui	v0,0x7fff
    268c:	3442ffff 	ori	v0,v0,0xffff
    2690:	08000a88 	j	2a20 <float64_mul+0x54c>
    2694:	00000000 	sll	zero,zero,0x0
	}
      return packFloat64 (zSign, 0x7FF, 0);
    2698:	8fc40024 	lw	a0,36(s8)
    269c:	240507ff 	addiu	a1,zero,2047
    26a0:	00003821 	addu	a3,zero,zero
    26a4:	00003021 	addu	a2,zero,zero
    26a8:	0c000000 	jal	0 <shift64RightJamming>
    26ac:	00000000 	sll	zero,zero,0x0
    26b0:	08000a88 	j	2a20 <float64_mul+0x54c>
    26b4:	00000000 	sll	zero,zero,0x0
    }
  if (bExp == 0x7FF)
    26b8:	8fc3002c 	lw	v1,44(s8)
    26bc:	240207ff 	addiu	v0,zero,2047
    26c0:	14620036 	bne	v1,v0,279c <float64_mul+0x2c8>
    26c4:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
    26c8:	8fc5003c 	lw	a1,60(s8)
    26cc:	8fc40038 	lw	a0,56(s8)
    26d0:	00000000 	sll	zero,zero,0x0
    26d4:	00801021 	addu	v0,a0,zero
    26d8:	00451025 	or	v0,v0,a1
    26dc:	10400009 	beqz	v0,2704 <float64_mul+0x230>
    26e0:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    26e4:	8fc500bc 	lw	a1,188(s8)
    26e8:	8fc400b8 	lw	a0,184(s8)
    26ec:	8fc700c4 	lw	a3,196(s8)
    26f0:	8fc600c0 	lw	a2,192(s8)
    26f4:	0c0003fb 	jal	fec <propagateFloat64NaN>
    26f8:	00000000 	sll	zero,zero,0x0
    26fc:	08000a88 	j	2a20 <float64_mul+0x54c>
    2700:	00000000 	sll	zero,zero,0x0
      if ((aExp | aSig) == 0)
    2704:	8fc20028 	lw	v0,40(s8)
    2708:	00000000 	sll	zero,zero,0x0
    270c:	00402021 	addu	a0,v0,zero
    2710:	afc40064 	sw	a0,100(s8)
    2714:	000217c3 	sra	v0,v0,0x1f
    2718:	afc20060 	sw	v0,96(s8)
    271c:	8fc30034 	lw	v1,52(s8)
    2720:	8fc20030 	lw	v0,48(s8)
    2724:	8fc40060 	lw	a0,96(s8)
    2728:	00000000 	sll	zero,zero,0x0
    272c:	00822025 	or	a0,a0,v0
    2730:	afc40068 	sw	a0,104(s8)
    2734:	8fc40064 	lw	a0,100(s8)
    2738:	00000000 	sll	zero,zero,0x0
    273c:	00832025 	or	a0,a0,v1
    2740:	afc4006c 	sw	a0,108(s8)
    2744:	8fc20068 	lw	v0,104(s8)
    2748:	8fc3006c 	lw	v1,108(s8)
    274c:	00000000 	sll	zero,zero,0x0
    2750:	00431025 	or	v0,v0,v1
    2754:	14400009 	bnez	v0,277c <float64_mul+0x2a8>
    2758:	00000000 	sll	zero,zero,0x0
	{
	  float_raise (float_flag_invalid);
    275c:	24040010 	addiu	a0,zero,16
    2760:	0c000000 	jal	0 <shift64RightJamming>
    2764:	00000000 	sll	zero,zero,0x0
	  return float64_default_nan;
    2768:	2403ffff 	addiu	v1,zero,-1
    276c:	3c027fff 	lui	v0,0x7fff
    2770:	3442ffff 	ori	v0,v0,0xffff
    2774:	08000a88 	j	2a20 <float64_mul+0x54c>
    2778:	00000000 	sll	zero,zero,0x0
	}
      return packFloat64 (zSign, 0x7FF, 0);
    277c:	8fc40024 	lw	a0,36(s8)
    2780:	240507ff 	addiu	a1,zero,2047
    2784:	00003821 	addu	a3,zero,zero
    2788:	00003021 	addu	a2,zero,zero
    278c:	0c000000 	jal	0 <shift64RightJamming>
    2790:	00000000 	sll	zero,zero,0x0
    2794:	08000a88 	j	2a20 <float64_mul+0x54c>
    2798:	00000000 	sll	zero,zero,0x0
    }
  if (aExp == 0)
    279c:	8fc20028 	lw	v0,40(s8)
    27a0:	00000000 	sll	zero,zero,0x0
    27a4:	14400018 	bnez	v0,2808 <float64_mul+0x334>
    27a8:	00000000 	sll	zero,zero,0x0
    {
      if (aSig == 0)
    27ac:	8fc50034 	lw	a1,52(s8)
    27b0:	8fc40030 	lw	a0,48(s8)
    27b4:	00000000 	sll	zero,zero,0x0
    27b8:	00801021 	addu	v0,a0,zero
    27bc:	00451025 	or	v0,v0,a1
    27c0:	14400009 	bnez	v0,27e8 <float64_mul+0x314>
    27c4:	00000000 	sll	zero,zero,0x0
	return packFloat64 (zSign, 0, 0);
    27c8:	8fc40024 	lw	a0,36(s8)
    27cc:	00002821 	addu	a1,zero,zero
    27d0:	00003821 	addu	a3,zero,zero
    27d4:	00003021 	addu	a2,zero,zero
    27d8:	0c000000 	jal	0 <shift64RightJamming>
    27dc:	00000000 	sll	zero,zero,0x0
    27e0:	08000a88 	j	2a20 <float64_mul+0x54c>
    27e4:	00000000 	sll	zero,zero,0x0
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    27e8:	8fc30034 	lw	v1,52(s8)
    27ec:	8fc20030 	lw	v0,48(s8)
    27f0:	27c60028 	addiu	a2,s8,40
    27f4:	27c70030 	addiu	a3,s8,48
    27f8:	00602821 	addu	a1,v1,zero
    27fc:	00402021 	addu	a0,v0,zero
    2800:	0c000480 	jal	1200 <normalizeFloat64Subnormal>
    2804:	00000000 	sll	zero,zero,0x0
    }
  if (bExp == 0)
    2808:	8fc2002c 	lw	v0,44(s8)
    280c:	00000000 	sll	zero,zero,0x0
    2810:	14400018 	bnez	v0,2874 <float64_mul+0x3a0>
    2814:	00000000 	sll	zero,zero,0x0
    {
      if (bSig == 0)
    2818:	8fc5003c 	lw	a1,60(s8)
    281c:	8fc40038 	lw	a0,56(s8)
    2820:	00000000 	sll	zero,zero,0x0
    2824:	00801021 	addu	v0,a0,zero
    2828:	00451025 	or	v0,v0,a1
    282c:	14400009 	bnez	v0,2854 <float64_mul+0x380>
    2830:	00000000 	sll	zero,zero,0x0
	return packFloat64 (zSign, 0, 0);
    2834:	8fc40024 	lw	a0,36(s8)
    2838:	00002821 	addu	a1,zero,zero
    283c:	00003821 	addu	a3,zero,zero
    2840:	00003021 	addu	a2,zero,zero
    2844:	0c000000 	jal	0 <shift64RightJamming>
    2848:	00000000 	sll	zero,zero,0x0
    284c:	08000a88 	j	2a20 <float64_mul+0x54c>
    2850:	00000000 	sll	zero,zero,0x0
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    2854:	8fc3003c 	lw	v1,60(s8)
    2858:	8fc20038 	lw	v0,56(s8)
    285c:	27c6002c 	addiu	a2,s8,44
    2860:	27c70038 	addiu	a3,s8,56
    2864:	00602821 	addu	a1,v1,zero
    2868:	00402021 	addu	a0,v0,zero
    286c:	0c000480 	jal	1200 <normalizeFloat64Subnormal>
    2870:	00000000 	sll	zero,zero,0x0
    }
  zExp = aExp + bExp - 0x3FF;
    2874:	8fc30028 	lw	v1,40(s8)
    2878:	8fc2002c 	lw	v0,44(s8)
    287c:	00000000 	sll	zero,zero,0x0
    2880:	00621021 	addu	v0,v1,v0
    2884:	2442fc01 	addiu	v0,v0,-1023
    2888:	afc20018 	sw	v0,24(s8)
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    288c:	8fc30034 	lw	v1,52(s8)
    2890:	8fc20030 	lw	v0,48(s8)
    2894:	3c040010 	lui	a0,0x10
    2898:	00442025 	or	a0,v0,a0
    289c:	afc40070 	sw	a0,112(s8)
    28a0:	34640000 	ori	a0,v1,0x0
    28a4:	afc40074 	sw	a0,116(s8)
    28a8:	8fc30074 	lw	v1,116(s8)
    28ac:	00000000 	sll	zero,zero,0x0
    28b0:	00031582 	srl	v0,v1,0x16
    28b4:	8fc40070 	lw	a0,112(s8)
    28b8:	00000000 	sll	zero,zero,0x0
    28bc:	00042280 	sll	a0,a0,0xa
    28c0:	afc40078 	sw	a0,120(s8)
    28c4:	8fc30078 	lw	v1,120(s8)
    28c8:	00000000 	sll	zero,zero,0x0
    28cc:	00431825 	or	v1,v0,v1
    28d0:	afc30078 	sw	v1,120(s8)
    28d4:	8fc40074 	lw	a0,116(s8)
    28d8:	00000000 	sll	zero,zero,0x0
    28dc:	00042280 	sll	a0,a0,0xa
    28e0:	afc4007c 	sw	a0,124(s8)
    28e4:	8fc3007c 	lw	v1,124(s8)
    28e8:	8fc20078 	lw	v0,120(s8)
    28ec:	afc30034 	sw	v1,52(s8)
    28f0:	afc20030 	sw	v0,48(s8)
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    28f4:	8fc3003c 	lw	v1,60(s8)
    28f8:	8fc20038 	lw	v0,56(s8)
    28fc:	3c040010 	lui	a0,0x10
    2900:	0044b025 	or	s6,v0,a0
    2904:	34770000 	ori	s7,v1,0x0
    2908:	00171542 	srl	v0,s7,0x15
    290c:	0016a2c0 	sll	s4,s6,0xb
    2910:	0054a025 	or	s4,v0,s4
    2914:	0017aac0 	sll	s5,s7,0xb
    2918:	afd5003c 	sw	s5,60(s8)
    291c:	afd40038 	sw	s4,56(s8)
  mul64To128 (aSig, bSig, &zSig0, &zSig1);
    2920:	8fc50034 	lw	a1,52(s8)
    2924:	8fc40030 	lw	a0,48(s8)
    2928:	8fc3003c 	lw	v1,60(s8)
    292c:	8fc20038 	lw	v0,56(s8)
    2930:	27c60040 	addiu	a2,s8,64
    2934:	afa60010 	sw	a2,16(sp)
    2938:	27c60048 	addiu	a2,s8,72
    293c:	afa60014 	sw	a2,20(sp)
    2940:	00603821 	addu	a3,v1,zero
    2944:	00403021 	addu	a2,v0,zero
    2948:	0c000000 	jal	0 <shift64RightJamming>
    294c:	00000000 	sll	zero,zero,0x0
  zSig0 |= (zSig1 != 0);
    2950:	8fc3004c 	lw	v1,76(s8)
    2954:	8fc20048 	lw	v0,72(s8)
    2958:	00000000 	sll	zero,zero,0x0
    295c:	00431025 	or	v0,v0,v1
    2960:	0002102b 	sltu	v0,zero,v0
    2964:	afc20084 	sw	v0,132(s8)
    2968:	00001821 	addu	v1,zero,zero
    296c:	afc30080 	sw	v1,128(s8)
    2970:	8fc30044 	lw	v1,68(s8)
    2974:	8fc20040 	lw	v0,64(s8)
    2978:	8fc40080 	lw	a0,128(s8)
    297c:	00000000 	sll	zero,zero,0x0
    2980:	00822025 	or	a0,a0,v0
    2984:	afc40088 	sw	a0,136(s8)
    2988:	8fc40084 	lw	a0,132(s8)
    298c:	00000000 	sll	zero,zero,0x0
    2990:	00832025 	or	a0,a0,v1
    2994:	afc4008c 	sw	a0,140(s8)
    2998:	8fc3008c 	lw	v1,140(s8)
    299c:	8fc20088 	lw	v0,136(s8)
    29a0:	afc30044 	sw	v1,68(s8)
    29a4:	afc20040 	sw	v0,64(s8)
  if (0 <= (sbits64) (zSig0 << 1))
    29a8:	8fc30044 	lw	v1,68(s8)
    29ac:	8fc20040 	lw	v0,64(s8)
    29b0:	000327c2 	srl	a0,v1,0x1f
    29b4:	00029040 	sll	s2,v0,0x1
    29b8:	00929025 	or	s2,a0,s2
    29bc:	00039840 	sll	s3,v1,0x1
    29c0:	02601821 	addu	v1,s3,zero
    29c4:	02401021 	addu	v0,s2,zero
    29c8:	0440000d 	bltz	v0,2a00 <float64_mul+0x52c>
    29cc:	00000000 	sll	zero,zero,0x0
    {
      zSig0 <<= 1;
    29d0:	8fc30044 	lw	v1,68(s8)
    29d4:	8fc20040 	lw	v0,64(s8)
    29d8:	000327c2 	srl	a0,v1,0x1f
    29dc:	00028040 	sll	s0,v0,0x1
    29e0:	00908025 	or	s0,a0,s0
    29e4:	00038840 	sll	s1,v1,0x1
    29e8:	afd10044 	sw	s1,68(s8)
    29ec:	afd00040 	sw	s0,64(s8)
      --zExp;
    29f0:	8fc20018 	lw	v0,24(s8)
    29f4:	00000000 	sll	zero,zero,0x0
    29f8:	2442ffff 	addiu	v0,v0,-1
    29fc:	afc20018 	sw	v0,24(s8)
    }
  return roundAndPackFloat64 (zSign, zExp, zSig0);
    2a00:	8fc30044 	lw	v1,68(s8)
    2a04:	8fc20040 	lw	v0,64(s8)
    2a08:	8fc40024 	lw	a0,36(s8)
    2a0c:	8fc50018 	lw	a1,24(s8)
    2a10:	00603821 	addu	a3,v1,zero
    2a14:	00403021 	addu	a2,v0,zero
    2a18:	0c0004e7 	jal	139c <roundAndPackFloat64>
    2a1c:	00000000 	sll	zero,zero,0x0

}
    2a20:	03c0e821 	addu	sp,s8,zero
    2a24:	8fbf00b4 	lw	ra,180(sp)
    2a28:	8fbe00b0 	lw	s8,176(sp)
    2a2c:	8fb700ac 	lw	s7,172(sp)
    2a30:	8fb600a8 	lw	s6,168(sp)
    2a34:	8fb500a4 	lw	s5,164(sp)
    2a38:	8fb400a0 	lw	s4,160(sp)
    2a3c:	8fb3009c 	lw	s3,156(sp)
    2a40:	8fb20098 	lw	s2,152(sp)
    2a44:	8fb10094 	lw	s1,148(sp)
    2a48:	8fb00090 	lw	s0,144(sp)
    2a4c:	27bd00b8 	addiu	sp,sp,184
    2a50:	03e00008 	jr	ra
    2a54:	00000000 	sll	zero,zero,0x0

00002a58 <float64_div>:
| the IEC/IEEE Standard for Binary Floating-Point Arithmetic.
*----------------------------------------------------------------------------*/

float64
float64_div (float64 a, float64 b)
{
    2a58:	27bdff30 	addiu	sp,sp,-208
    2a5c:	afbf00cc 	sw	ra,204(sp)
    2a60:	afbe00c8 	sw	s8,200(sp)
    2a64:	afb700c4 	sw	s7,196(sp)
    2a68:	afb600c0 	sw	s6,192(sp)
    2a6c:	afb500bc 	sw	s5,188(sp)
    2a70:	afb400b8 	sw	s4,184(sp)
    2a74:	afb300b4 	sw	s3,180(sp)
    2a78:	afb200b0 	sw	s2,176(sp)
    2a7c:	afb100ac 	sw	s1,172(sp)
    2a80:	afb000a8 	sw	s0,168(sp)
    2a84:	03a0f021 	addu	s8,sp,zero
    2a88:	afc500d4 	sw	a1,212(s8)
    2a8c:	afc400d0 	sw	a0,208(s8)
    2a90:	afc700dc 	sw	a3,220(s8)
    2a94:	afc600d8 	sw	a2,216(s8)
  flag aSign, bSign, zSign;
  int16 aExp, bExp, zExp;
  bits64 aSig, bSig, zSig;
  bits64 rem0, rem1, term0, term1;

  aSig = extractFloat64Frac (a);
    2a98:	8fc500d4 	lw	a1,212(s8)
    2a9c:	8fc400d0 	lw	a0,208(s8)
    2aa0:	0c000000 	jal	0 <shift64RightJamming>
    2aa4:	00000000 	sll	zero,zero,0x0
    2aa8:	afc30054 	sw	v1,84(s8)
    2aac:	afc20050 	sw	v0,80(s8)
  aExp = extractFloat64Exp (a);
    2ab0:	8fc500d4 	lw	a1,212(s8)
    2ab4:	8fc400d0 	lw	a0,208(s8)
    2ab8:	0c000000 	jal	0 <shift64RightJamming>
    2abc:	00000000 	sll	zero,zero,0x0
    2ac0:	afc20044 	sw	v0,68(s8)
  aSign = extractFloat64Sign (a);
    2ac4:	8fc500d4 	lw	a1,212(s8)
    2ac8:	8fc400d0 	lw	a0,208(s8)
    2acc:	0c000000 	jal	0 <shift64RightJamming>
    2ad0:	00000000 	sll	zero,zero,0x0
    2ad4:	afc20038 	sw	v0,56(s8)
  bSig = extractFloat64Frac (b);
    2ad8:	8fc500dc 	lw	a1,220(s8)
    2adc:	8fc400d8 	lw	a0,216(s8)
    2ae0:	0c000000 	jal	0 <shift64RightJamming>
    2ae4:	00000000 	sll	zero,zero,0x0
    2ae8:	afc3005c 	sw	v1,92(s8)
    2aec:	afc20058 	sw	v0,88(s8)
  bExp = extractFloat64Exp (b);
    2af0:	8fc500dc 	lw	a1,220(s8)
    2af4:	8fc400d8 	lw	a0,216(s8)
    2af8:	0c000000 	jal	0 <shift64RightJamming>
    2afc:	00000000 	sll	zero,zero,0x0
    2b00:	afc20048 	sw	v0,72(s8)
  bSign = extractFloat64Sign (b);
    2b04:	8fc500dc 	lw	a1,220(s8)
    2b08:	8fc400d8 	lw	a0,216(s8)
    2b0c:	0c000000 	jal	0 <shift64RightJamming>
    2b10:	00000000 	sll	zero,zero,0x0
    2b14:	afc2003c 	sw	v0,60(s8)
  zSign = aSign ^ bSign;
    2b18:	8fc30038 	lw	v1,56(s8)
    2b1c:	8fc2003c 	lw	v0,60(s8)
    2b20:	00000000 	sll	zero,zero,0x0
    2b24:	00621026 	xor	v0,v1,v0
    2b28:	afc20040 	sw	v0,64(s8)
  if (aExp == 0x7FF)
    2b2c:	8fc30044 	lw	v1,68(s8)
    2b30:	240207ff 	addiu	v0,zero,2047
    2b34:	14620033 	bne	v1,v0,2c04 <float64_div+0x1ac>
    2b38:	00000000 	sll	zero,zero,0x0
    {
      if (aSig)
    2b3c:	8fc50054 	lw	a1,84(s8)
    2b40:	8fc40050 	lw	a0,80(s8)
    2b44:	00000000 	sll	zero,zero,0x0
    2b48:	00801021 	addu	v0,a0,zero
    2b4c:	00451025 	or	v0,v0,a1
    2b50:	10400009 	beqz	v0,2b78 <float64_div+0x120>
    2b54:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    2b58:	8fc500d4 	lw	a1,212(s8)
    2b5c:	8fc400d0 	lw	a0,208(s8)
    2b60:	8fc700dc 	lw	a3,220(s8)
    2b64:	8fc600d8 	lw	a2,216(s8)
    2b68:	0c0003fb 	jal	fec <propagateFloat64NaN>
    2b6c:	00000000 	sll	zero,zero,0x0
    2b70:	08000c39 	j	30e4 <float64_div+0x68c>
    2b74:	00000000 	sll	zero,zero,0x0
      if (bExp == 0x7FF)
    2b78:	8fc30048 	lw	v1,72(s8)
    2b7c:	240207ff 	addiu	v0,zero,2047
    2b80:	14620018 	bne	v1,v0,2be4 <float64_div+0x18c>
    2b84:	00000000 	sll	zero,zero,0x0
	{
	  if (bSig)
    2b88:	8fc5005c 	lw	a1,92(s8)
    2b8c:	8fc40058 	lw	a0,88(s8)
    2b90:	00000000 	sll	zero,zero,0x0
    2b94:	00801021 	addu	v0,a0,zero
    2b98:	00451025 	or	v0,v0,a1
    2b9c:	10400009 	beqz	v0,2bc4 <float64_div+0x16c>
    2ba0:	00000000 	sll	zero,zero,0x0
	    return propagateFloat64NaN (a, b);
    2ba4:	8fc500d4 	lw	a1,212(s8)
    2ba8:	8fc400d0 	lw	a0,208(s8)
    2bac:	8fc700dc 	lw	a3,220(s8)
    2bb0:	8fc600d8 	lw	a2,216(s8)
    2bb4:	0c0003fb 	jal	fec <propagateFloat64NaN>
    2bb8:	00000000 	sll	zero,zero,0x0
    2bbc:	08000c39 	j	30e4 <float64_div+0x68c>
    2bc0:	00000000 	sll	zero,zero,0x0
	  float_raise (float_flag_invalid);
    2bc4:	24040010 	addiu	a0,zero,16
    2bc8:	0c000000 	jal	0 <shift64RightJamming>
    2bcc:	00000000 	sll	zero,zero,0x0
	  return float64_default_nan;
    2bd0:	2403ffff 	addiu	v1,zero,-1
    2bd4:	3c027fff 	lui	v0,0x7fff
    2bd8:	3442ffff 	ori	v0,v0,0xffff
    2bdc:	08000c39 	j	30e4 <float64_div+0x68c>
    2be0:	00000000 	sll	zero,zero,0x0
	}
      return packFloat64 (zSign, 0x7FF, 0);
    2be4:	8fc40040 	lw	a0,64(s8)
    2be8:	240507ff 	addiu	a1,zero,2047
    2bec:	00003821 	addu	a3,zero,zero
    2bf0:	00003021 	addu	a2,zero,zero
    2bf4:	0c000000 	jal	0 <shift64RightJamming>
    2bf8:	00000000 	sll	zero,zero,0x0
    2bfc:	08000c39 	j	30e4 <float64_div+0x68c>
    2c00:	00000000 	sll	zero,zero,0x0
    }
  if (bExp == 0x7FF)
    2c04:	8fc30048 	lw	v1,72(s8)
    2c08:	240207ff 	addiu	v0,zero,2047
    2c0c:	14620018 	bne	v1,v0,2c70 <float64_div+0x218>
    2c10:	00000000 	sll	zero,zero,0x0
    {
      if (bSig)
    2c14:	8fc5005c 	lw	a1,92(s8)
    2c18:	8fc40058 	lw	a0,88(s8)
    2c1c:	00000000 	sll	zero,zero,0x0
    2c20:	00801021 	addu	v0,a0,zero
    2c24:	00451025 	or	v0,v0,a1
    2c28:	10400009 	beqz	v0,2c50 <float64_div+0x1f8>
    2c2c:	00000000 	sll	zero,zero,0x0
	return propagateFloat64NaN (a, b);
    2c30:	8fc500d4 	lw	a1,212(s8)
    2c34:	8fc400d0 	lw	a0,208(s8)
    2c38:	8fc700dc 	lw	a3,220(s8)
    2c3c:	8fc600d8 	lw	a2,216(s8)
    2c40:	0c0003fb 	jal	fec <propagateFloat64NaN>
    2c44:	00000000 	sll	zero,zero,0x0
    2c48:	08000c39 	j	30e4 <float64_div+0x68c>
    2c4c:	00000000 	sll	zero,zero,0x0
      return packFloat64 (zSign, 0, 0);
    2c50:	8fc40040 	lw	a0,64(s8)
    2c54:	00002821 	addu	a1,zero,zero
    2c58:	00003821 	addu	a3,zero,zero
    2c5c:	00003021 	addu	a2,zero,zero
    2c60:	0c000000 	jal	0 <shift64RightJamming>
    2c64:	00000000 	sll	zero,zero,0x0
    2c68:	08000c39 	j	30e4 <float64_div+0x68c>
    2c6c:	00000000 	sll	zero,zero,0x0
    }
  if (bExp == 0)
    2c70:	8fc20048 	lw	v0,72(s8)
    2c74:	00000000 	sll	zero,zero,0x0
    2c78:	14400039 	bnez	v0,2d60 <float64_div+0x308>
    2c7c:	00000000 	sll	zero,zero,0x0
    {
      if (bSig == 0)
    2c80:	8fc5005c 	lw	a1,92(s8)
    2c84:	8fc40058 	lw	a0,88(s8)
    2c88:	00000000 	sll	zero,zero,0x0
    2c8c:	00801021 	addu	v0,a0,zero
    2c90:	00451025 	or	v0,v0,a1
    2c94:	1440002a 	bnez	v0,2d40 <float64_div+0x2e8>
    2c98:	00000000 	sll	zero,zero,0x0
	{
	  if ((aExp | aSig) == 0)
    2c9c:	8fc20044 	lw	v0,68(s8)
    2ca0:	00000000 	sll	zero,zero,0x0
    2ca4:	00401821 	addu	v1,v0,zero
    2ca8:	afc30084 	sw	v1,132(s8)
    2cac:	000217c3 	sra	v0,v0,0x1f
    2cb0:	afc20080 	sw	v0,128(s8)
    2cb4:	8fc30054 	lw	v1,84(s8)
    2cb8:	8fc20050 	lw	v0,80(s8)
    2cbc:	8fc40080 	lw	a0,128(s8)
    2cc0:	00000000 	sll	zero,zero,0x0
    2cc4:	00822025 	or	a0,a0,v0
    2cc8:	afc40088 	sw	a0,136(s8)
    2ccc:	8fc80084 	lw	t0,132(s8)
    2cd0:	00000000 	sll	zero,zero,0x0
    2cd4:	01034025 	or	t0,t0,v1
    2cd8:	afc8008c 	sw	t0,140(s8)
    2cdc:	8fc20088 	lw	v0,136(s8)
    2ce0:	8fc9008c 	lw	t1,140(s8)
    2ce4:	00000000 	sll	zero,zero,0x0
    2ce8:	00491025 	or	v0,v0,t1
    2cec:	14400009 	bnez	v0,2d14 <float64_div+0x2bc>
    2cf0:	00000000 	sll	zero,zero,0x0
	    {
	      float_raise (float_flag_invalid);
    2cf4:	24040010 	addiu	a0,zero,16
    2cf8:	0c000000 	jal	0 <shift64RightJamming>
    2cfc:	00000000 	sll	zero,zero,0x0
	      return float64_default_nan;
    2d00:	2403ffff 	addiu	v1,zero,-1
    2d04:	3c027fff 	lui	v0,0x7fff
    2d08:	3442ffff 	ori	v0,v0,0xffff
    2d0c:	08000c39 	j	30e4 <float64_div+0x68c>
    2d10:	00000000 	sll	zero,zero,0x0
	    }
	  float_raise (float_flag_divbyzero);
    2d14:	24040002 	addiu	a0,zero,2
    2d18:	0c000000 	jal	0 <shift64RightJamming>
    2d1c:	00000000 	sll	zero,zero,0x0
	  return packFloat64 (zSign, 0x7FF, 0);
    2d20:	8fc40040 	lw	a0,64(s8)
    2d24:	240507ff 	addiu	a1,zero,2047
    2d28:	00003821 	addu	a3,zero,zero
    2d2c:	00003021 	addu	a2,zero,zero
    2d30:	0c000000 	jal	0 <shift64RightJamming>
    2d34:	00000000 	sll	zero,zero,0x0
    2d38:	08000c39 	j	30e4 <float64_div+0x68c>
    2d3c:	00000000 	sll	zero,zero,0x0
	}
      normalizeFloat64Subnormal (bSig, &bExp, &bSig);
    2d40:	8fc3005c 	lw	v1,92(s8)
    2d44:	8fc20058 	lw	v0,88(s8)
    2d48:	27c60048 	addiu	a2,s8,72
    2d4c:	27c70058 	addiu	a3,s8,88
    2d50:	00602821 	addu	a1,v1,zero
    2d54:	00402021 	addu	a0,v0,zero
    2d58:	0c000480 	jal	1200 <normalizeFloat64Subnormal>
    2d5c:	00000000 	sll	zero,zero,0x0
    }
  if (aExp == 0)
    2d60:	8fc20044 	lw	v0,68(s8)
    2d64:	00000000 	sll	zero,zero,0x0
    2d68:	14400018 	bnez	v0,2dcc <float64_div+0x374>
    2d6c:	00000000 	sll	zero,zero,0x0
    {
      if (aSig == 0)
    2d70:	8fc50054 	lw	a1,84(s8)
    2d74:	8fc40050 	lw	a0,80(s8)
    2d78:	00000000 	sll	zero,zero,0x0
    2d7c:	00801021 	addu	v0,a0,zero
    2d80:	00451025 	or	v0,v0,a1
    2d84:	14400009 	bnez	v0,2dac <float64_div+0x354>
    2d88:	00000000 	sll	zero,zero,0x0
	return packFloat64 (zSign, 0, 0);
    2d8c:	8fc40040 	lw	a0,64(s8)
    2d90:	00002821 	addu	a1,zero,zero
    2d94:	00003821 	addu	a3,zero,zero
    2d98:	00003021 	addu	a2,zero,zero
    2d9c:	0c000000 	jal	0 <shift64RightJamming>
    2da0:	00000000 	sll	zero,zero,0x0
    2da4:	08000c39 	j	30e4 <float64_div+0x68c>
    2da8:	00000000 	sll	zero,zero,0x0
      normalizeFloat64Subnormal (aSig, &aExp, &aSig);
    2dac:	8fc30054 	lw	v1,84(s8)
    2db0:	8fc20050 	lw	v0,80(s8)
    2db4:	27c60044 	addiu	a2,s8,68
    2db8:	27c70050 	addiu	a3,s8,80
    2dbc:	00602821 	addu	a1,v1,zero
    2dc0:	00402021 	addu	a0,v0,zero
    2dc4:	0c000480 	jal	1200 <normalizeFloat64Subnormal>
    2dc8:	00000000 	sll	zero,zero,0x0
    }
  zExp = aExp - bExp + 0x3FD;
    2dcc:	8fc30044 	lw	v1,68(s8)
    2dd0:	8fc20048 	lw	v0,72(s8)
    2dd4:	00000000 	sll	zero,zero,0x0
    2dd8:	00621023 	subu	v0,v1,v0
    2ddc:	244203fd 	addiu	v0,v0,1021
    2de0:	afc20028 	sw	v0,40(s8)
  aSig = (aSig | LIT64 (0x0010000000000000)) << 10;
    2de4:	8fc30054 	lw	v1,84(s8)
    2de8:	8fc20050 	lw	v0,80(s8)
    2dec:	3c040010 	lui	a0,0x10
    2df0:	00442025 	or	a0,v0,a0
    2df4:	afc40090 	sw	a0,144(s8)
    2df8:	34640000 	ori	a0,v1,0x0
    2dfc:	afc40094 	sw	a0,148(s8)
    2e00:	8fc80094 	lw	t0,148(s8)
    2e04:	00000000 	sll	zero,zero,0x0
    2e08:	00081582 	srl	v0,t0,0x16
    2e0c:	8fc90090 	lw	t1,144(s8)
    2e10:	00000000 	sll	zero,zero,0x0
    2e14:	00094a80 	sll	t1,t1,0xa
    2e18:	afc90098 	sw	t1,152(s8)
    2e1c:	8fc30098 	lw	v1,152(s8)
    2e20:	00000000 	sll	zero,zero,0x0
    2e24:	00431825 	or	v1,v0,v1
    2e28:	afc30098 	sw	v1,152(s8)
    2e2c:	8fc40094 	lw	a0,148(s8)
    2e30:	00000000 	sll	zero,zero,0x0
    2e34:	00042280 	sll	a0,a0,0xa
    2e38:	afc4009c 	sw	a0,156(s8)
    2e3c:	8fc9009c 	lw	t1,156(s8)
    2e40:	8fc80098 	lw	t0,152(s8)
    2e44:	afc90054 	sw	t1,84(s8)
    2e48:	afc80050 	sw	t0,80(s8)
  bSig = (bSig | LIT64 (0x0010000000000000)) << 11;
    2e4c:	8fc3005c 	lw	v1,92(s8)
    2e50:	8fc20058 	lw	v0,88(s8)
    2e54:	3c040010 	lui	a0,0x10
    2e58:	0044b025 	or	s6,v0,a0
    2e5c:	34770000 	ori	s7,v1,0x0
    2e60:	00171542 	srl	v0,s7,0x15
    2e64:	0016a2c0 	sll	s4,s6,0xb
    2e68:	0054a025 	or	s4,v0,s4
    2e6c:	0017aac0 	sll	s5,s7,0xb
    2e70:	afd5005c 	sw	s5,92(s8)
    2e74:	afd40058 	sw	s4,88(s8)
  if (bSig <= (aSig + aSig))
    2e78:	8fc50054 	lw	a1,84(s8)
    2e7c:	8fc40050 	lw	a0,80(s8)
    2e80:	8fc70054 	lw	a3,84(s8)
    2e84:	8fc60050 	lw	a2,80(s8)
    2e88:	00a71821 	addu	v1,a1,a3
    2e8c:	0065402b 	sltu	t0,v1,a1
    2e90:	00861021 	addu	v0,a0,a2
    2e94:	01022021 	addu	a0,t0,v0
    2e98:	00801021 	addu	v0,a0,zero
    2e9c:	8fc5005c 	lw	a1,92(s8)
    2ea0:	8fc40058 	lw	a0,88(s8)
    2ea4:	00000000 	sll	zero,zero,0x0
    2ea8:	0044302b 	sltu	a2,v0,a0
    2eac:	14c00014 	bnez	a2,2f00 <float64_div+0x4a8>
    2eb0:	00000000 	sll	zero,zero,0x0
    2eb4:	00403021 	addu	a2,v0,zero
    2eb8:	14860004 	bne	a0,a2,2ecc <float64_div+0x474>
    2ebc:	00000000 	sll	zero,zero,0x0
    2ec0:	0065102b 	sltu	v0,v1,a1
    2ec4:	1440000e 	bnez	v0,2f00 <float64_div+0x4a8>
    2ec8:	00000000 	sll	zero,zero,0x0
    {
      aSig >>= 1;
    2ecc:	8fc30054 	lw	v1,84(s8)
    2ed0:	8fc20050 	lw	v0,80(s8)
    2ed4:	00000000 	sll	zero,zero,0x0
    2ed8:	000227c0 	sll	a0,v0,0x1f
    2edc:	00039842 	srl	s3,v1,0x1
    2ee0:	00939825 	or	s3,a0,s3
    2ee4:	00029042 	srl	s2,v0,0x1
    2ee8:	afd30054 	sw	s3,84(s8)
    2eec:	afd20050 	sw	s2,80(s8)
      ++zExp;
    2ef0:	8fc20028 	lw	v0,40(s8)
    2ef4:	00000000 	sll	zero,zero,0x0
    2ef8:	24420001 	addiu	v0,v0,1
    2efc:	afc20028 	sw	v0,40(s8)
    }
  zSig = estimateDiv128To64 (aSig, 0, bSig);
    2f00:	8fc30054 	lw	v1,84(s8)
    2f04:	8fc20050 	lw	v0,80(s8)
    2f08:	8fc5005c 	lw	a1,92(s8)
    2f0c:	8fc40058 	lw	a0,88(s8)
    2f10:	afa50014 	sw	a1,20(sp)
    2f14:	afa40010 	sw	a0,16(sp)
    2f18:	00602821 	addu	a1,v1,zero
    2f1c:	00402021 	addu	a0,v0,zero
    2f20:	00003821 	addu	a3,zero,zero
    2f24:	00003021 	addu	a2,zero,zero
    2f28:	0c00027b 	jal	9ec <estimateDiv128To64>
    2f2c:	00000000 	sll	zero,zero,0x0
    2f30:	afc30034 	sw	v1,52(s8)
    2f34:	afc20030 	sw	v0,48(s8)
  if ((zSig & 0x1FF) <= 2)
    2f38:	8fc20030 	lw	v0,48(s8)
    2f3c:	00000000 	sll	zero,zero,0x0
    2f40:	30500000 	andi	s0,v0,0x0
    2f44:	8fc20034 	lw	v0,52(s8)
    2f48:	00000000 	sll	zero,zero,0x0
    2f4c:	305101ff 	andi	s1,v0,0x1ff
    2f50:	1600005e 	bnez	s0,30cc <float64_div+0x674>
    2f54:	00000000 	sll	zero,zero,0x0
    2f58:	16000004 	bnez	s0,2f6c <float64_div+0x514>
    2f5c:	00000000 	sll	zero,zero,0x0
    2f60:	2e220003 	sltiu	v0,s1,3
    2f64:	10400059 	beqz	v0,30cc <float64_div+0x674>
    2f68:	00000000 	sll	zero,zero,0x0
    {
      mul64To128 (bSig, zSig, &term0, &term1);
    2f6c:	8fc3005c 	lw	v1,92(s8)
    2f70:	8fc20058 	lw	v0,88(s8)
    2f74:	27c40070 	addiu	a0,s8,112
    2f78:	afa40010 	sw	a0,16(sp)
    2f7c:	27c40078 	addiu	a0,s8,120
    2f80:	afa40014 	sw	a0,20(sp)
    2f84:	00602821 	addu	a1,v1,zero
    2f88:	00402021 	addu	a0,v0,zero
    2f8c:	8fc70034 	lw	a3,52(s8)
    2f90:	8fc60030 	lw	a2,48(s8)
    2f94:	0c000000 	jal	0 <shift64RightJamming>
    2f98:	00000000 	sll	zero,zero,0x0
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
    2f9c:	8fc30054 	lw	v1,84(s8)
    2fa0:	8fc20050 	lw	v0,80(s8)
    2fa4:	8fc70074 	lw	a3,116(s8)
    2fa8:	8fc60070 	lw	a2,112(s8)
    2fac:	8fc5007c 	lw	a1,124(s8)
    2fb0:	8fc40078 	lw	a0,120(s8)
    2fb4:	afa70014 	sw	a3,20(sp)
    2fb8:	afa60010 	sw	a2,16(sp)
    2fbc:	afa5001c 	sw	a1,28(sp)
    2fc0:	afa40018 	sw	a0,24(sp)
    2fc4:	27c40060 	addiu	a0,s8,96
    2fc8:	afa40020 	sw	a0,32(sp)
    2fcc:	27c40068 	addiu	a0,s8,104
    2fd0:	afa40024 	sw	a0,36(sp)
    2fd4:	00602821 	addu	a1,v1,zero
    2fd8:	00402021 	addu	a0,v0,zero
    2fdc:	00003821 	addu	a3,zero,zero
    2fe0:	00003021 	addu	a2,zero,zero
    2fe4:	0c000000 	jal	0 <shift64RightJamming>
    2fe8:	00000000 	sll	zero,zero,0x0
      while ((sbits64) rem0 < 0)
    2fec:	08000c1c 	j	3070 <float64_div+0x618>
    2ff0:	00000000 	sll	zero,zero,0x0
	{
	  --zSig;
    2ff4:	8fc50034 	lw	a1,52(s8)
    2ff8:	8fc40030 	lw	a0,48(s8)
    2ffc:	2407ffff 	addiu	a3,zero,-1
    3000:	2406ffff 	addiu	a2,zero,-1
    3004:	00a71821 	addu	v1,a1,a3
    3008:	0065402b 	sltu	t0,v1,a1
    300c:	00861021 	addu	v0,a0,a2
    3010:	01022021 	addu	a0,t0,v0
    3014:	00801021 	addu	v0,a0,zero
    3018:	afc30034 	sw	v1,52(s8)
    301c:	afc20030 	sw	v0,48(s8)
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
    3020:	8fc50064 	lw	a1,100(s8)
    3024:	8fc40060 	lw	a0,96(s8)
    3028:	8fc3006c 	lw	v1,108(s8)
    302c:	8fc20068 	lw	v0,104(s8)
    3030:	8fc7005c 	lw	a3,92(s8)
    3034:	8fc60058 	lw	a2,88(s8)
    3038:	00004821 	addu	t1,zero,zero
    303c:	00004021 	addu	t0,zero,zero
    3040:	afa90014 	sw	t1,20(sp)
    3044:	afa80010 	sw	t0,16(sp)
    3048:	afa7001c 	sw	a3,28(sp)
    304c:	afa60018 	sw	a2,24(sp)
    3050:	27c60060 	addiu	a2,s8,96
    3054:	afa60020 	sw	a2,32(sp)
    3058:	27c60068 	addiu	a2,s8,104
    305c:	afa60024 	sw	a2,36(sp)
    3060:	00603821 	addu	a3,v1,zero
    3064:	00403021 	addu	a2,v0,zero
    3068:	0c000000 	jal	0 <shift64RightJamming>
    306c:	00000000 	sll	zero,zero,0x0
  zSig = estimateDiv128To64 (aSig, 0, bSig);
  if ((zSig & 0x1FF) <= 2)
    {
      mul64To128 (bSig, zSig, &term0, &term1);
      sub128 (aSig, 0, term0, term1, &rem0, &rem1);
      while ((sbits64) rem0 < 0)
    3070:	8fc30064 	lw	v1,100(s8)
    3074:	8fc20060 	lw	v0,96(s8)
    3078:	00000000 	sll	zero,zero,0x0
    307c:	0440ffdd 	bltz	v0,2ff4 <float64_div+0x59c>
    3080:	00000000 	sll	zero,zero,0x0
	{
	  --zSig;
	  add128 (rem0, rem1, 0, bSig, &rem0, &rem1);
	}
      zSig |= (rem1 != 0);
    3084:	8fc3006c 	lw	v1,108(s8)
    3088:	8fc20068 	lw	v0,104(s8)
    308c:	00000000 	sll	zero,zero,0x0
    3090:	00431025 	or	v0,v0,v1
    3094:	0002102b 	sltu	v0,zero,v0
    3098:	afc200a4 	sw	v0,164(s8)
    309c:	00004821 	addu	t1,zero,zero
    30a0:	afc900a0 	sw	t1,160(s8)
    30a4:	8fc20030 	lw	v0,48(s8)
    30a8:	8fc300a0 	lw	v1,160(s8)
    30ac:	00000000 	sll	zero,zero,0x0
    30b0:	00431025 	or	v0,v0,v1
    30b4:	afc20030 	sw	v0,48(s8)
    30b8:	8fc20034 	lw	v0,52(s8)
    30bc:	8fc400a4 	lw	a0,164(s8)
    30c0:	00000000 	sll	zero,zero,0x0
    30c4:	00441025 	or	v0,v0,a0
    30c8:	afc20034 	sw	v0,52(s8)
    }
  return roundAndPackFloat64 (zSign, zExp, zSig);
    30cc:	8fc40040 	lw	a0,64(s8)
    30d0:	8fc50028 	lw	a1,40(s8)
    30d4:	8fc70034 	lw	a3,52(s8)
    30d8:	8fc60030 	lw	a2,48(s8)
    30dc:	0c0004e7 	jal	139c <roundAndPackFloat64>
    30e0:	00000000 	sll	zero,zero,0x0

}
    30e4:	03c0e821 	addu	sp,s8,zero
    30e8:	8fbf00cc 	lw	ra,204(sp)
    30ec:	8fbe00c8 	lw	s8,200(sp)
    30f0:	8fb700c4 	lw	s7,196(sp)
    30f4:	8fb600c0 	lw	s6,192(sp)
    30f8:	8fb500bc 	lw	s5,188(sp)
    30fc:	8fb400b8 	lw	s4,184(sp)
    3100:	8fb300b4 	lw	s3,180(sp)
    3104:	8fb200b0 	lw	s2,176(sp)
    3108:	8fb100ac 	lw	s1,172(sp)
    310c:	8fb000a8 	lw	s0,168(sp)
    3110:	27bd00d0 	addiu	sp,sp,208
    3114:	03e00008 	jr	ra
    3118:	00000000 	sll	zero,zero,0x0

0000311c <float64_le>:
| Arithmetic.
*----------------------------------------------------------------------------*/

flag
float64_le (float64 a, float64 b)
{
    311c:	27bdffd0 	addiu	sp,sp,-48
    3120:	afbf002c 	sw	ra,44(sp)
    3124:	afbe0028 	sw	s8,40(sp)
    3128:	afb30024 	sw	s3,36(sp)
    312c:	afb20020 	sw	s2,32(sp)
    3130:	afb1001c 	sw	s1,28(sp)
    3134:	afb00018 	sw	s0,24(sp)
    3138:	03a0f021 	addu	s8,sp,zero
    313c:	afc50034 	sw	a1,52(s8)
    3140:	afc40030 	sw	a0,48(s8)
    3144:	afc7003c 	sw	a3,60(s8)
    3148:	afc60038 	sw	a2,56(s8)
  flag aSign, bSign;

  if (((extractFloat64Exp (a) == 0x7FF) && extractFloat64Frac (a))
    314c:	8fc50034 	lw	a1,52(s8)
    3150:	8fc40030 	lw	a0,48(s8)
    3154:	0c000000 	jal	0 <shift64RightJamming>
    3158:	00000000 	sll	zero,zero,0x0
    315c:	00401821 	addu	v1,v0,zero
    3160:	240207ff 	addiu	v0,zero,2047
    3164:	1462000b 	bne	v1,v0,3194 <float64_le+0x78>
    3168:	00000000 	sll	zero,zero,0x0
    316c:	8fc50034 	lw	a1,52(s8)
    3170:	8fc40030 	lw	a0,48(s8)
    3174:	0c000000 	jal	0 <shift64RightJamming>
    3178:	00000000 	sll	zero,zero,0x0
    317c:	00602821 	addu	a1,v1,zero
    3180:	00402021 	addu	a0,v0,zero
    3184:	00801021 	addu	v0,a0,zero
    3188:	00451025 	or	v0,v0,a1
    318c:	14400013 	bnez	v0,31dc <float64_le+0xc0>
    3190:	00000000 	sll	zero,zero,0x0
      || ((extractFloat64Exp (b) == 0x7FF) && extractFloat64Frac (b)))
    3194:	8fc5003c 	lw	a1,60(s8)
    3198:	8fc40038 	lw	a0,56(s8)
    319c:	0c000000 	jal	0 <shift64RightJamming>
    31a0:	00000000 	sll	zero,zero,0x0
    31a4:	00401821 	addu	v1,v0,zero
    31a8:	240207ff 	addiu	v0,zero,2047
    31ac:	14620011 	bne	v1,v0,31f4 <float64_le+0xd8>
    31b0:	00000000 	sll	zero,zero,0x0
    31b4:	8fc5003c 	lw	a1,60(s8)
    31b8:	8fc40038 	lw	a0,56(s8)
    31bc:	0c000000 	jal	0 <shift64RightJamming>
    31c0:	00000000 	sll	zero,zero,0x0
    31c4:	00602821 	addu	a1,v1,zero
    31c8:	00402021 	addu	a0,v0,zero
    31cc:	00801021 	addu	v0,a0,zero
    31d0:	00451025 	or	v0,v0,a1
    31d4:	10400007 	beqz	v0,31f4 <float64_le+0xd8>
    31d8:	00000000 	sll	zero,zero,0x0
    {
      float_raise (float_flag_invalid);
    31dc:	24040010 	addiu	a0,zero,16
    31e0:	0c000000 	jal	0 <shift64RightJamming>
    31e4:	00000000 	sll	zero,zero,0x0
      return 0;
    31e8:	00001021 	addu	v0,zero,zero
    31ec:	08000ccb 	j	332c <float64_le+0x210>
    31f0:	00000000 	sll	zero,zero,0x0
    }
  aSign = extractFloat64Sign (a);
    31f4:	8fc50034 	lw	a1,52(s8)
    31f8:	8fc40030 	lw	a0,48(s8)
    31fc:	0c000000 	jal	0 <shift64RightJamming>
    3200:	00000000 	sll	zero,zero,0x0
    3204:	afc20010 	sw	v0,16(s8)
  bSign = extractFloat64Sign (b);
    3208:	8fc5003c 	lw	a1,60(s8)
    320c:	8fc40038 	lw	a0,56(s8)
    3210:	0c000000 	jal	0 <shift64RightJamming>
    3214:	00000000 	sll	zero,zero,0x0
    3218:	afc20014 	sw	v0,20(s8)
  if (aSign != bSign)
    321c:	8fc30010 	lw	v1,16(s8)
    3220:	8fc20014 	lw	v0,20(s8)
    3224:	00000000 	sll	zero,zero,0x0
    3228:	1062001b 	beq	v1,v0,3298 <float64_le+0x17c>
    322c:	00000000 	sll	zero,zero,0x0
    return aSign || ((bits64) ((a | b) << 1) == 0);
    3230:	8fc20010 	lw	v0,16(s8)
    3234:	00000000 	sll	zero,zero,0x0
    3238:	14400011 	bnez	v0,3280 <float64_le+0x164>
    323c:	00000000 	sll	zero,zero,0x0
    3240:	8fc30030 	lw	v1,48(s8)
    3244:	8fc20038 	lw	v0,56(s8)
    3248:	00000000 	sll	zero,zero,0x0
    324c:	00629025 	or	s2,v1,v0
    3250:	8fc30034 	lw	v1,52(s8)
    3254:	8fc2003c 	lw	v0,60(s8)
    3258:	00000000 	sll	zero,zero,0x0
    325c:	00629825 	or	s3,v1,v0
    3260:	001317c2 	srl	v0,s3,0x1f
    3264:	00128040 	sll	s0,s2,0x1
    3268:	00508025 	or	s0,v0,s0
    326c:	00138840 	sll	s1,s3,0x1
    3270:	02001021 	addu	v0,s0,zero
    3274:	00511025 	or	v0,v0,s1
    3278:	14400004 	bnez	v0,328c <float64_le+0x170>
    327c:	00000000 	sll	zero,zero,0x0
    3280:	24020001 	addiu	v0,zero,1
    3284:	08000ca4 	j	3290 <float64_le+0x174>
    3288:	00000000 	sll	zero,zero,0x0
    328c:	00001021 	addu	v0,zero,zero
    3290:	08000ccb 	j	332c <float64_le+0x210>
    3294:	00000000 	sll	zero,zero,0x0
  return (a == b) || (aSign ^ (a < b));
    3298:	8fc30030 	lw	v1,48(s8)
    329c:	8fc20038 	lw	v0,56(s8)
    32a0:	00000000 	sll	zero,zero,0x0
    32a4:	14620006 	bne	v1,v0,32c0 <float64_le+0x1a4>
    32a8:	00000000 	sll	zero,zero,0x0
    32ac:	8fc30034 	lw	v1,52(s8)
    32b0:	8fc2003c 	lw	v0,60(s8)
    32b4:	00000000 	sll	zero,zero,0x0
    32b8:	10620018 	beq	v1,v0,331c <float64_le+0x200>
    32bc:	00000000 	sll	zero,zero,0x0
    32c0:	24020001 	addiu	v0,zero,1
    32c4:	8fc40038 	lw	a0,56(s8)
    32c8:	8fc30030 	lw	v1,48(s8)
    32cc:	00000000 	sll	zero,zero,0x0
    32d0:	0064182b 	sltu	v1,v1,a0
    32d4:	1460000d 	bnez	v1,330c <float64_le+0x1f0>
    32d8:	00000000 	sll	zero,zero,0x0
    32dc:	8fc40038 	lw	a0,56(s8)
    32e0:	8fc30030 	lw	v1,48(s8)
    32e4:	00000000 	sll	zero,zero,0x0
    32e8:	14830007 	bne	a0,v1,3308 <float64_le+0x1ec>
    32ec:	00000000 	sll	zero,zero,0x0
    32f0:	8fc4003c 	lw	a0,60(s8)
    32f4:	8fc30034 	lw	v1,52(s8)
    32f8:	00000000 	sll	zero,zero,0x0
    32fc:	0064182b 	sltu	v1,v1,a0
    3300:	14600002 	bnez	v1,330c <float64_le+0x1f0>
    3304:	00000000 	sll	zero,zero,0x0
    3308:	00001021 	addu	v0,zero,zero
    330c:	8fc30010 	lw	v1,16(s8)
    3310:	00000000 	sll	zero,zero,0x0
    3314:	10430004 	beq	v0,v1,3328 <float64_le+0x20c>
    3318:	00000000 	sll	zero,zero,0x0
    331c:	24020001 	addiu	v0,zero,1
    3320:	08000ccb 	j	332c <float64_le+0x210>
    3324:	00000000 	sll	zero,zero,0x0
    3328:	00001021 	addu	v0,zero,zero

}
    332c:	03c0e821 	addu	sp,s8,zero
    3330:	8fbf002c 	lw	ra,44(sp)
    3334:	8fbe0028 	lw	s8,40(sp)
    3338:	8fb30024 	lw	s3,36(sp)
    333c:	8fb20020 	lw	s2,32(sp)
    3340:	8fb1001c 	lw	s1,28(sp)
    3344:	8fb00018 	lw	s0,24(sp)
    3348:	27bd0030 	addiu	sp,sp,48
    334c:	03e00008 	jr	ra
    3350:	00000000 	sll	zero,zero,0x0

00003354 <float64_ge>:

flag
float64_ge (float64 a, float64 b)
{
    3354:	27bdffe8 	addiu	sp,sp,-24
    3358:	afbf0014 	sw	ra,20(sp)
    335c:	afbe0010 	sw	s8,16(sp)
    3360:	03a0f021 	addu	s8,sp,zero
    3364:	afc5001c 	sw	a1,28(s8)
    3368:	afc40018 	sw	a0,24(s8)
    336c:	afc70024 	sw	a3,36(s8)
    3370:	afc60020 	sw	a2,32(s8)
  return float64_le (b, a);
    3374:	8fc50024 	lw	a1,36(s8)
    3378:	8fc40020 	lw	a0,32(s8)
    337c:	8fc7001c 	lw	a3,28(s8)
    3380:	8fc60018 	lw	a2,24(s8)
    3384:	0c000000 	jal	0 <shift64RightJamming>
    3388:	00000000 	sll	zero,zero,0x0
}
    338c:	03c0e821 	addu	sp,s8,zero
    3390:	8fbf0014 	lw	ra,20(sp)
    3394:	8fbe0010 	lw	s8,16(sp)
    3398:	27bd0018 	addiu	sp,sp,24
    339c:	03e00008 	jr	ra
    33a0:	00000000 	sll	zero,zero,0x0

000033a4 <float64_neg>:

// added by hiroyuki@acm.org
float64
float64_neg (float64 x)
{
    33a4:	27bdfff8 	addiu	sp,sp,-8
    33a8:	afbe0004 	sw	s8,4(sp)
    33ac:	03a0f021 	addu	s8,sp,zero
    33b0:	afc5000c 	sw	a1,12(s8)
    33b4:	afc40008 	sw	a0,8(s8)
  return (((~x) & 0x8000000000000000ULL) | (x & 0x7fffffffffffffffULL));
    33b8:	8fc40008 	lw	a0,8(s8)
    33bc:	00000000 	sll	zero,zero,0x0
    33c0:	00044027 	nor	t0,zero,a0
    33c4:	8fc4000c 	lw	a0,12(s8)
    33c8:	00000000 	sll	zero,zero,0x0
    33cc:	00044827 	nor	t1,zero,a0
    33d0:	3c048000 	lui	a0,0x8000
    33d4:	01043024 	and	a2,t0,a0
    33d8:	31270000 	andi	a3,t1,0x0
    33dc:	8fc50008 	lw	a1,8(s8)
    33e0:	3c047fff 	lui	a0,0x7fff
    33e4:	3484ffff 	ori	a0,a0,0xffff
    33e8:	00a41024 	and	v0,a1,a0
    33ec:	8fc5000c 	lw	a1,12(s8)
    33f0:	2404ffff 	addiu	a0,zero,-1
    33f4:	00a41824 	and	v1,a1,a0
    33f8:	00c25025 	or	t2,a2,v0
    33fc:	00e35825 	or	t3,a3,v1
    3400:	01601821 	addu	v1,t3,zero
    3404:	01401021 	addu	v0,t2,zero
}
    3408:	03c0e821 	addu	sp,s8,zero
    340c:	8fbe0004 	lw	s8,4(sp)
    3410:	27bd0008 	addiu	sp,sp,8
    3414:	03e00008 	jr	ra
    3418:	00000000 	sll	zero,zero,0x0

0000341c <float64_abs>:
#include <stdio.h>
#include "softfloat.c"

float64
float64_abs (float64 x)
{
    341c:	27bdfff8 	addiu	sp,sp,-8
    3420:	afbe0004 	sw	s8,4(sp)
    3424:	03a0f021 	addu	s8,sp,zero
    3428:	afc5000c 	sw	a1,12(s8)
    342c:	afc40008 	sw	a0,8(s8)
  return (x & 0x7fffffffffffffffULL);
    3430:	8fc50008 	lw	a1,8(s8)
    3434:	3c047fff 	lui	a0,0x7fff
    3438:	3484ffff 	ori	a0,a0,0xffff
    343c:	00a41024 	and	v0,a1,a0
    3440:	8fc5000c 	lw	a1,12(s8)
    3444:	2404ffff 	addiu	a0,zero,-1
    3448:	00a41824 	and	v1,a1,a0
}
    344c:	03c0e821 	addu	sp,s8,zero
    3450:	8fbe0004 	lw	s8,4(sp)
    3454:	27bd0008 	addiu	sp,sp,8
    3458:	03e00008 	jr	ra
    345c:	00000000 	sll	zero,zero,0x0

00003460 <sin>:

float64
sin (float64 rad)
{
    3460:	27bdffc0 	addiu	sp,sp,-64
    3464:	afbf003c 	sw	ra,60(sp)
    3468:	afbe0038 	sw	s8,56(sp)
    346c:	afb10034 	sw	s1,52(sp)
    3470:	afb00030 	sw	s0,48(sp)
    3474:	03a0f021 	addu	s8,sp,zero
    3478:	afc50044 	sw	a1,68(s8)
    347c:	afc40040 	sw	a0,64(s8)
  float64 app;
  float64 diff;
  float64 m_rad2;
  int inc;

  app = diff = rad;
    3480:	8fc30044 	lw	v1,68(s8)
    3484:	8fc20040 	lw	v0,64(s8)
    3488:	afc3001c 	sw	v1,28(s8)
    348c:	afc20018 	sw	v0,24(s8)
    3490:	8fc3001c 	lw	v1,28(s8)
    3494:	8fc20018 	lw	v0,24(s8)
    3498:	afc30014 	sw	v1,20(s8)
    349c:	afc20010 	sw	v0,16(s8)
  inc = 1;
    34a0:	24020001 	addiu	v0,zero,1
    34a4:	afc20020 	sw	v0,32(s8)
  m_rad2 = float64_neg (float64_mul (rad, rad));
    34a8:	8fc50044 	lw	a1,68(s8)
    34ac:	8fc40040 	lw	a0,64(s8)
    34b0:	8fc70044 	lw	a3,68(s8)
    34b4:	8fc60040 	lw	a2,64(s8)
    34b8:	0c000000 	jal	0 <shift64RightJamming>
    34bc:	00000000 	sll	zero,zero,0x0
    34c0:	00602821 	addu	a1,v1,zero
    34c4:	00402021 	addu	a0,v0,zero
    34c8:	0c000000 	jal	0 <shift64RightJamming>
    34cc:	00000000 	sll	zero,zero,0x0
    34d0:	afc3002c 	sw	v1,44(s8)
    34d4:	afc20028 	sw	v0,40(s8)
  do
    {
      diff = float64_div (float64_mul (diff, m_rad2),
    34d8:	8fc5001c 	lw	a1,28(s8)
    34dc:	8fc40018 	lw	a0,24(s8)
    34e0:	8fc7002c 	lw	a3,44(s8)
    34e4:	8fc60028 	lw	a2,40(s8)
    34e8:	0c000000 	jal	0 <shift64RightJamming>
    34ec:	00000000 	sll	zero,zero,0x0
    34f0:	00608821 	addu	s1,v1,zero
    34f4:	00408021 	addu	s0,v0,zero
			  int32_to_float64 ((2 * inc) * (2 * inc + 1)));
    34f8:	8fc20020 	lw	v0,32(s8)
    34fc:	00000000 	sll	zero,zero,0x0
    3500:	00021840 	sll	v1,v0,0x1
    3504:	8fc20020 	lw	v0,32(s8)
    3508:	00000000 	sll	zero,zero,0x0
    350c:	00021040 	sll	v0,v0,0x1
    3510:	24420001 	addiu	v0,v0,1
  app = diff = rad;
  inc = 1;
  m_rad2 = float64_neg (float64_mul (rad, rad));
  do
    {
      diff = float64_div (float64_mul (diff, m_rad2),
    3514:	00620018 	mult	v1,v0
    3518:	00001012 	mflo	v0
    351c:	00402021 	addu	a0,v0,zero
    3520:	0c000000 	jal	0 <shift64RightJamming>
    3524:	00000000 	sll	zero,zero,0x0
    3528:	02202821 	addu	a1,s1,zero
    352c:	02002021 	addu	a0,s0,zero
    3530:	00603821 	addu	a3,v1,zero
    3534:	00403021 	addu	a2,v0,zero
    3538:	0c000000 	jal	0 <shift64RightJamming>
    353c:	00000000 	sll	zero,zero,0x0
    3540:	afc3001c 	sw	v1,28(s8)
    3544:	afc20018 	sw	v0,24(s8)
			  int32_to_float64 ((2 * inc) * (2 * inc + 1)));
      app = float64_add (app, diff);
    3548:	8fc50014 	lw	a1,20(s8)
    354c:	8fc40010 	lw	a0,16(s8)
    3550:	8fc7001c 	lw	a3,28(s8)
    3554:	8fc60018 	lw	a2,24(s8)
    3558:	0c000000 	jal	0 <shift64RightJamming>
    355c:	00000000 	sll	zero,zero,0x0
    3560:	afc30014 	sw	v1,20(s8)
    3564:	afc20010 	sw	v0,16(s8)
      inc++;
    3568:	8fc20020 	lw	v0,32(s8)
    356c:	00000000 	sll	zero,zero,0x0
    3570:	24420001 	addiu	v0,v0,1
    3574:	afc20020 	sw	v0,32(s8)
    }
  while (float64_ge (float64_abs (diff), 0x3ee4f8b588e368f1ULL));	/* 0.00001 */
    3578:	8fc5001c 	lw	a1,28(s8)
    357c:	8fc40018 	lw	a0,24(s8)
    3580:	0c000000 	jal	0 <shift64RightJamming>
    3584:	00000000 	sll	zero,zero,0x0
    3588:	00602821 	addu	a1,v1,zero
    358c:	00402021 	addu	a0,v0,zero
    3590:	3c0788e3 	lui	a3,0x88e3
    3594:	34e768f1 	ori	a3,a3,0x68f1
    3598:	3c063ee4 	lui	a2,0x3ee4
    359c:	34c6f8b5 	ori	a2,a2,0xf8b5
    35a0:	0c000000 	jal	0 <shift64RightJamming>
    35a4:	00000000 	sll	zero,zero,0x0
    35a8:	1440ffcb 	bnez	v0,34d8 <sin+0x78>
    35ac:	00000000 	sll	zero,zero,0x0
  return app;
    35b0:	8fc30014 	lw	v1,20(s8)
    35b4:	8fc20010 	lw	v0,16(s8)
}
    35b8:	03c0e821 	addu	sp,s8,zero
    35bc:	8fbf003c 	lw	ra,60(sp)
    35c0:	8fbe0038 	lw	s8,56(sp)
    35c4:	8fb10034 	lw	s1,52(sp)
    35c8:	8fb00030 	lw	s0,48(sp)
    35cc:	27bd0040 	addiu	sp,sp,64
    35d0:	03e00008 	jr	ra
    35d4:	00000000 	sll	zero,zero,0x0

000035d8 <ullong_to_double>:

double
ullong_to_double (unsigned long long x)
{
    35d8:	27bdfff0 	addiu	sp,sp,-16
    35dc:	afbe000c 	sw	s8,12(sp)
    35e0:	03a0f021 	addu	s8,sp,zero
    35e4:	afc50014 	sw	a1,20(s8)
    35e8:	afc40010 	sw	a0,16(s8)
  {
    double d;
    unsigned long long ll;
  } t;

  t.ll = x;
    35ec:	8fc30014 	lw	v1,20(s8)
    35f0:	8fc20010 	lw	v0,16(s8)
    35f4:	afc30004 	sw	v1,4(s8)
    35f8:	afc20000 	sw	v0,0(s8)
  return t.d;
    35fc:	c7c00004 	lwc1	$f0,4(s8)
    3600:	00000000 	sll	zero,zero,0x0
    3604:	c7c10000 	lwc1	$f1,0(s8)
}
    3608:	03c0e821 	addu	sp,s8,zero
    360c:	8fbe000c 	lw	s8,12(sp)
    3610:	27bd0010 	addiu	sp,sp,16
    3614:	03e00008 	jr	ra
    3618:	00000000 	sll	zero,zero,0x0

0000361c <main>:
  0xbfc63a23c48863ddULL
};				/* -0.173649 */

int
main ()
{
    361c:	27bdffa8 	addiu	sp,sp,-88
    3620:	afbf0054 	sw	ra,84(sp)
    3624:	afbe0050 	sw	s8,80(sp)
    3628:	afb5004c 	sw	s5,76(sp)
    362c:	afb40048 	sw	s4,72(sp)
    3630:	afb30044 	sw	s3,68(sp)
    3634:	afb20040 	sw	s2,64(sp)
    3638:	afb1003c 	sw	s1,60(sp)
    363c:	afb00038 	sw	s0,56(sp)
    3640:	03a0f021 	addu	s8,sp,zero
  int main_result;
  int i;
      main_result = 0;
    3644:	afc00028 	sw	zero,40(s8)
      for (i = 0; i < N; i++)
    3648:	afc0002c 	sw	zero,44(s8)
    364c:	08000ddd 	j	3774 <main+0x158>
    3650:	00000000 	sll	zero,zero,0x0
	{
	  float64 result;
	  result = sin (test_in[i]);
    3654:	3c020000 	lui	v0,0x0
    3658:	8fc3002c 	lw	v1,44(s8)
    365c:	00000000 	sll	zero,zero,0x0
    3660:	000318c0 	sll	v1,v1,0x3
    3664:	24420000 	addiu	v0,v0,0
    3668:	00621021 	addu	v0,v1,v0
    366c:	8c430004 	lw	v1,4(v0)
    3670:	8c420000 	lw	v0,0(v0)
    3674:	00602821 	addu	a1,v1,zero
    3678:	00402021 	addu	a0,v0,zero
    367c:	0c000000 	jal	0 <shift64RightJamming>
    3680:	00000000 	sll	zero,zero,0x0
    3684:	afc30034 	sw	v1,52(s8)
    3688:	afc20030 	sw	v0,48(s8)
	  main_result += (result != test_out[i]);
    368c:	3c020000 	lui	v0,0x0
    3690:	8fc3002c 	lw	v1,44(s8)
    3694:	00000000 	sll	zero,zero,0x0
    3698:	000318c0 	sll	v1,v1,0x3
    369c:	24420000 	addiu	v0,v0,0
    36a0:	00621021 	addu	v0,v1,v0
    36a4:	8c430004 	lw	v1,4(v0)
    36a8:	8c420000 	lw	v0,0(v0)
    36ac:	8fc40030 	lw	a0,48(s8)
    36b0:	00000000 	sll	zero,zero,0x0
    36b4:	00828026 	xor	s0,a0,v0
    36b8:	8fc40034 	lw	a0,52(s8)
    36bc:	00000000 	sll	zero,zero,0x0
    36c0:	00838826 	xor	s1,a0,v1
    36c4:	02111025 	or	v0,s0,s1
    36c8:	0002102b 	sltu	v0,zero,v0
    36cc:	8fc30028 	lw	v1,40(s8)
    36d0:	00000000 	sll	zero,zero,0x0
    36d4:	00621021 	addu	v0,v1,v0
    36d8:	afc20028 	sw	v0,40(s8)

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
    36dc:	3c020000 	lui	v0,0x0
    36e0:	8fc3002c 	lw	v1,44(s8)
    36e4:	00000000 	sll	zero,zero,0x0
    36e8:	000318c0 	sll	v1,v1,0x3
    36ec:	24420000 	addiu	v0,v0,0
    36f0:	00621021 	addu	v0,v1,v0
    36f4:	8c530004 	lw	s3,4(v0)
    36f8:	8c520000 	lw	s2,0(v0)
    36fc:	3c020000 	lui	v0,0x0
    3700:	8fc3002c 	lw	v1,44(s8)
    3704:	00000000 	sll	zero,zero,0x0
    3708:	000318c0 	sll	v1,v1,0x3
    370c:	24420000 	addiu	v0,v0,0
    3710:	00621021 	addu	v0,v1,v0
    3714:	8c550004 	lw	s5,4(v0)
    3718:	8c540000 	lw	s4,0(v0)
    371c:	8fc50034 	lw	a1,52(s8)
    3720:	8fc40030 	lw	a0,48(s8)
    3724:	0c000000 	jal	0 <shift64RightJamming>
    3728:	00000000 	sll	zero,zero,0x0
    372c:	afb50014 	sw	s5,20(sp)
    3730:	afb40010 	sw	s4,16(sp)
    3734:	8fc30034 	lw	v1,52(s8)
    3738:	8fc20030 	lw	v0,48(s8)
    373c:	afa3001c 	sw	v1,28(sp)
    3740:	afa20018 	sw	v0,24(sp)
    3744:	e7a00024 	swc1	$f0,36(sp)
    3748:	e7a10020 	swc1	$f1,32(sp)
    374c:	3c020000 	lui	v0,0x0
    3750:	24440240 	addiu	a0,v0,576
    3754:	02603821 	addu	a3,s3,zero
    3758:	02403021 	addu	a2,s2,zero
    375c:	0c000000 	jal	0 <shift64RightJamming>
    3760:	00000000 	sll	zero,zero,0x0
main ()
{
  int main_result;
  int i;
      main_result = 0;
      for (i = 0; i < N; i++)
    3764:	8fc2002c 	lw	v0,44(s8)
    3768:	00000000 	sll	zero,zero,0x0
    376c:	24420001 	addiu	v0,v0,1
    3770:	afc2002c 	sw	v0,44(s8)
    3774:	8fc2002c 	lw	v0,44(s8)
    3778:	00000000 	sll	zero,zero,0x0
    377c:	28420024 	slti	v0,v0,36
    3780:	1440ffb4 	bnez	v0,3654 <main+0x38>
    3784:	00000000 	sll	zero,zero,0x0

	  printf
	    ("input=%016llx expected=%016llx output=%016llx (%lf)\n",
	     test_in[i], test_out[i], result, ullong_to_double (result));
	}
      printf ("%d\n", main_result);
    3788:	3c020000 	lui	v0,0x0
    378c:	24440278 	addiu	a0,v0,632
    3790:	8fc50028 	lw	a1,40(s8)
    3794:	0c000000 	jal	0 <shift64RightJamming>
    3798:	00000000 	sll	zero,zero,0x0
      return main_result;
    379c:	8fc20028 	lw	v0,40(s8)
    }
    37a0:	03c0e821 	addu	sp,s8,zero
    37a4:	8fbf0054 	lw	ra,84(sp)
    37a8:	8fbe0050 	lw	s8,80(sp)
    37ac:	8fb5004c 	lw	s5,76(sp)
    37b0:	8fb40048 	lw	s4,72(sp)
    37b4:	8fb30044 	lw	s3,68(sp)
    37b8:	8fb20040 	lw	s2,64(sp)
    37bc:	8fb1003c 	lw	s1,60(sp)
    37c0:	8fb00038 	lw	s0,56(sp)
    37c4:	27bd0058 	addiu	sp,sp,88
    37c8:	03e00008 	jr	ra
    37cc:	00000000 	sll	zero,zero,0x0

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
 144:	16c242e3 	bne	s6,v0,10cd4 <main+0xd6b8>
 148:	3fe8836f 	0x3fe8836f
 14c:	672614a6 	0x672614a6
 150:	3febb67a 	0x3febb67a
 154:	c40b2bed 	lwc1	$f11,11245(zero)
 158:	3fee11f6 	0x3fee11f6
 15c:	127e28ad 	beq	s3,s8,a414 <main+0x6df8>
 160:	3fef838b 	0x3fef838b
 164:	6adffac0 	0x6adffac0
 168:	3fefffff 	0x3fefffff
 16c:	e1cbd7aa 	swc0	$11,-10326(t6)
 170:	3fef838b 	0x3fef838b
 174:	b0147989 	0xb0147989
 178:	3fee11f6 	0x3fee11f6
 17c:	92d962b4 	lbu	t9,25268(s6)
 180:	3febb67b 	0x3febb67b
 184:	77c0142d 	jalx	f0050b4 <main+0xf001a98>
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
 1e4:	740aae32 	jalx	2ab8c8 <main+0x2a82ac>
 1e8:	bfee11f5 	0xbfee11f5
 1ec:	912d2157 	lbu	t5,8535(t1)
 1f0:	bfef838b 	0xbfef838b
 1f4:	1ac64afc 	0x1ac64afc
 1f8:	bfefffff 	0xbfefffff
 1fc:	c2e5dc8f 	lwc0	$5,-9073(s7)
 200:	bfef838b 	0xbfef838b
 204:	5ea2e7ea 	0x5ea2e7ea
 208:	bfee11f7 	0xbfee11f7
 20c:	112dae27 	beq	t1,t5,fffebaac <main+0xfffe8490>
 210:	bfebb67c 	0xbfebb67c
 214:	2c31cb4a 	sltiu	s1,at,-13494
 218:	bfe88371 	0xbfe88371
 21c:	6e6fd781 	0x6e6fd781
 220:	bfe491b9 	0xbfe491b9
 224:	cd1b5d56 	lwc3	$27,23894(t0)
 228:	bfe00002 	0xbfe00002
 22c:	1d0ca30d 	0x1d0ca30d
 230:	bfd5e3ad 	0xbfd5e3ad
 234:	0a69caf7 	j	9a72bdc <main+0x9a6f5c0>
 238:	bfc63a23 	0xbfc63a23
 23c:	c48863dd 	lwc1	$f8,25565(a0)
 240:	696e7075 	0x696e7075
 244:	743d2530 	jalx	f494c0 <main+0xf45ea4>
 248:	31366c6c 	andi	s6,t1,0x6c6c
 24c:	78206578 	0x78206578
 250:	70656374 	0x70656374
 254:	65643d25 	0x65643d25
 258:	3031366c 	andi	s1,at,0x366c
 25c:	6c78206f 	0x6c78206f
 260:	75747075 	jalx	5d1c1d4 <main+0x5d18bb8>
 264:	743d2530 	jalx	f494c0 <main+0xf45ea4>
 268:	31366c6c 	andi	s6,t1,0x6c6c
 26c:	78202825 	0x78202825
 270:	6c66290a 	0x6c66290a
 274:	00000000 	sll	zero,zero,0x0
 278:	25640a00 	addiu	a0,t3,2560

0000027c <countLeadingZerosHigh.2208>:
 27c:	00000008 	jr	zero
 280:	00000007 	srav	zero,zero,zero
 284:	00000006 	srlv	zero,zero,zero
 288:	00000006 	srlv	zero,zero,zero
 28c:	00000005 	0x5
 290:	00000005 	0x5
 294:	00000005 	0x5
 298:	00000005 	0x5
 29c:	00000004 	sllv	zero,zero,zero
 2a0:	00000004 	sllv	zero,zero,zero
 2a4:	00000004 	sllv	zero,zero,zero
 2a8:	00000004 	sllv	zero,zero,zero
 2ac:	00000004 	sllv	zero,zero,zero
 2b0:	00000004 	sllv	zero,zero,zero
 2b4:	00000004 	sllv	zero,zero,zero
 2b8:	00000004 	sllv	zero,zero,zero
 2bc:	00000003 	sra	zero,zero,0x0
 2c0:	00000003 	sra	zero,zero,0x0
 2c4:	00000003 	sra	zero,zero,0x0
 2c8:	00000003 	sra	zero,zero,0x0
 2cc:	00000003 	sra	zero,zero,0x0
 2d0:	00000003 	sra	zero,zero,0x0
 2d4:	00000003 	sra	zero,zero,0x0
 2d8:	00000003 	sra	zero,zero,0x0
 2dc:	00000003 	sra	zero,zero,0x0
 2e0:	00000003 	sra	zero,zero,0x0
 2e4:	00000003 	sra	zero,zero,0x0
 2e8:	00000003 	sra	zero,zero,0x0
 2ec:	00000003 	sra	zero,zero,0x0
 2f0:	00000003 	sra	zero,zero,0x0
 2f4:	00000003 	sra	zero,zero,0x0
 2f8:	00000003 	sra	zero,zero,0x0
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
 35c:	00000002 	srl	zero,zero,0x0
 360:	00000002 	srl	zero,zero,0x0
 364:	00000002 	srl	zero,zero,0x0
 368:	00000002 	srl	zero,zero,0x0
 36c:	00000002 	srl	zero,zero,0x0
 370:	00000002 	srl	zero,zero,0x0
 374:	00000002 	srl	zero,zero,0x0
 378:	00000002 	srl	zero,zero,0x0
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
 45c:	00000001 	0x1
 460:	00000001 	0x1
 464:	00000001 	0x1
 468:	00000001 	0x1
 46c:	00000001 	0x1
 470:	00000001 	0x1
 474:	00000001 	0x1
 478:	00000001 	0x1
	...
