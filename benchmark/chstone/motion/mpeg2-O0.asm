
mpeg2.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <read>:


/* initialize buffer, call once before first getbits or showbits */
int
read (unsigned char *s1, const unsigned char *s2, int n)
{
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbe0014 	sw	s8,20(sp)
       8:	03a0f021 	addu	s8,sp,zero
       c:	afc40018 	sw	a0,24(s8)
      10:	afc5001c 	sw	a1,28(s8)
      14:	afc60020 	sw	a2,32(s8)
  unsigned char *p1;
  const unsigned char *p2;
  int n_tmp;
  
p1 = s1;
      18:	8fc20018 	lw	v0,24(s8)
      1c:	00000000 	sll	zero,zero,0x0
      20:	afc20000 	sw	v0,0(s8)
  p2 = s2;
      24:	8fc2001c 	lw	v0,28(s8)
      28:	00000000 	sll	zero,zero,0x0
      2c:	afc20004 	sw	v0,4(s8)
  n_tmp = n;
      30:	8fc20020 	lw	v0,32(s8)
      34:	00000000 	sll	zero,zero,0x0
      38:	afc20008 	sw	v0,8(s8)
  
while (n_tmp-- > 0)
      3c:	0800001f 	j	7c <read+0x7c>
      40:	00000000 	sll	zero,zero,0x0
    {
      *p1 = *p2;
      44:	8fc20004 	lw	v0,4(s8)
      48:	00000000 	sll	zero,zero,0x0
      4c:	90430000 	lbu	v1,0(v0)
      50:	8fc20000 	lw	v0,0(s8)
      54:	00000000 	sll	zero,zero,0x0
      58:	a0430000 	sb	v1,0(v0)
      
p1++;
      5c:	8fc20000 	lw	v0,0(s8)
      60:	00000000 	sll	zero,zero,0x0
      64:	24420001 	addiu	v0,v0,1
      68:	afc20000 	sw	v0,0(s8)
      
p2++;
      6c:	8fc20004 	lw	v0,4(s8)
      70:	00000000 	sll	zero,zero,0x0
      74:	24420001 	addiu	v0,v0,1
      78:	afc20004 	sw	v0,4(s8)
  
p1 = s1;
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
      7c:	8fc20008 	lw	v0,8(s8)
      80:	00000000 	sll	zero,zero,0x0
      84:	0002102a 	slt	v0,zero,v0
      88:	304200ff 	andi	v0,v0,0xff
      8c:	8fc30008 	lw	v1,8(s8)
      90:	00000000 	sll	zero,zero,0x0
      94:	2463ffff 	addiu	v1,v1,-1
      98:	afc30008 	sw	v1,8(s8)
      9c:	1440ffe9 	bnez	v0,44 <read+0x44>
      a0:	00000000 	sll	zero,zero,0x0
      
p2++;
    
}
  
return n;
      a4:	8fc20020 	lw	v0,32(s8)
}
      a8:	03c0e821 	addu	sp,s8,zero
      ac:	8fbe0014 	lw	s8,20(sp)
      b0:	27bd0018 	addiu	sp,sp,24
      b4:	03e00008 	jr	ra
      b8:	00000000 	sll	zero,zero,0x0

000000bc <Fill_Buffer>:
void
Fill_Buffer ()
{
  int Buffer_Level;
      bc:	27bdffe0 	addiu	sp,sp,-32
      c0:	afbf001c 	sw	ra,28(sp)
      c4:	afbe0018 	sw	s8,24(sp)
      c8:	03a0f021 	addu	s8,sp,zero
  unsigned char *p;
  p = ld_Rdbfr;

      cc:	3c020000 	lui	v0,0x0
      d0:	24420000 	addiu	v0,v0,0
      d4:	afc20014 	sw	v0,20(s8)

  Buffer_Level = read (ld_Rdbfr, inRdbfr, 2048);
  ld_Rdptr = ld_Rdbfr;
      d8:	3c020000 	lui	v0,0x0
      dc:	24440000 	addiu	a0,v0,0
      e0:	3c020000 	lui	v0,0x0
      e4:	24450000 	addiu	a1,v0,0
      e8:	24060800 	addiu	a2,zero,2048
      ec:	0c000000 	jal	0 <read>
      f0:	00000000 	sll	zero,zero,0x0
      f4:	afc20010 	sw	v0,16(s8)

      f8:	3c020000 	lui	v0,0x0
      fc:	24420000 	addiu	v0,v0,0
     100:	af820000 	sw	v0,0(gp)
  if (System_Stream_Flag)
    ld_Rdmax -= 2048;
     104:	8f820000 	lw	v0,0(gp)
     108:	00000000 	sll	zero,zero,0x0
     10c:	10400005 	beqz	v0,124 <Fill_Buffer+0x68>
     110:	00000000 	sll	zero,zero,0x0

     114:	8f820000 	lw	v0,0(gp)
     118:	00000000 	sll	zero,zero,0x0
     11c:	2442f800 	addiu	v0,v0,-2048
     120:	af820000 	sw	v0,0(gp)

  /* end of the bitstream file */
  if (Buffer_Level < 2048)
    {
     124:	8fc20010 	lw	v0,16(s8)
     128:	00000000 	sll	zero,zero,0x0
     12c:	28420800 	slti	v0,v0,2048
     130:	1040004b 	beqz	v0,260 <Fill_Buffer+0x1a4>
     134:	00000000 	sll	zero,zero,0x0
      /* just to be safe */
      if (Buffer_Level < 0)
	Buffer_Level = 0;
     138:	8fc20010 	lw	v0,16(s8)
     13c:	00000000 	sll	zero,zero,0x0
     140:	04410010 	bgez	v0,184 <Fill_Buffer+0xc8>
     144:	00000000 	sll	zero,zero,0x0

     148:	afc00010 	sw	zero,16(s8)
      /* pad until the next to the next 32-bit word boundary */
      while (Buffer_Level & 3)
	ld_Rdbfr[Buffer_Level++] = 0;
     14c:	08000062 	j	188 <Fill_Buffer+0xcc>
     150:	00000000 	sll	zero,zero,0x0

     154:	3c020000 	lui	v0,0x0
     158:	24430000 	addiu	v1,v0,0
     15c:	8fc20010 	lw	v0,16(s8)
     160:	00000000 	sll	zero,zero,0x0
     164:	00621021 	addu	v0,v1,v0
     168:	a0400000 	sb	zero,0(v0)
     16c:	8fc20010 	lw	v0,16(s8)
     170:	00000000 	sll	zero,zero,0x0
     174:	24420001 	addiu	v0,v0,1
     178:	afc20010 	sw	v0,16(s8)
     17c:	08000062 	j	188 <Fill_Buffer+0xcc>
     180:	00000000 	sll	zero,zero,0x0
      if (Buffer_Level < 0)
	Buffer_Level = 0;

      /* pad until the next to the next 32-bit word boundary */
      while (Buffer_Level & 3)
	ld_Rdbfr[Buffer_Level++] = 0;
     184:	00000000 	sll	zero,zero,0x0
     188:	8fc20010 	lw	v0,16(s8)
     18c:	00000000 	sll	zero,zero,0x0
     190:	30420003 	andi	v0,v0,0x3
     194:	1440ffef 	bnez	v0,154 <Fill_Buffer+0x98>
     198:	00000000 	sll	zero,zero,0x0

      /* pad the buffer with sequence end codes */
      while (Buffer_Level < 2048)
	{
     19c:	08000093 	j	24c <Fill_Buffer+0x190>
     1a0:	00000000 	sll	zero,zero,0x0
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE >> 24;
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE >> 16;
     1a4:	3c020000 	lui	v0,0x0
     1a8:	24430000 	addiu	v1,v0,0
     1ac:	8fc20010 	lw	v0,16(s8)
     1b0:	00000000 	sll	zero,zero,0x0
     1b4:	00621021 	addu	v0,v1,v0
     1b8:	a0400000 	sb	zero,0(v0)
     1bc:	8fc20010 	lw	v0,16(s8)
     1c0:	00000000 	sll	zero,zero,0x0
     1c4:	24420001 	addiu	v0,v0,1
     1c8:	afc20010 	sw	v0,16(s8)
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE >> 8;
     1cc:	3c020000 	lui	v0,0x0
     1d0:	24430000 	addiu	v1,v0,0
     1d4:	8fc20010 	lw	v0,16(s8)
     1d8:	00000000 	sll	zero,zero,0x0
     1dc:	00621021 	addu	v0,v1,v0
     1e0:	a0400000 	sb	zero,0(v0)
     1e4:	8fc20010 	lw	v0,16(s8)
     1e8:	00000000 	sll	zero,zero,0x0
     1ec:	24420001 	addiu	v0,v0,1
     1f0:	afc20010 	sw	v0,16(s8)
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE & 0xff;
     1f4:	3c020000 	lui	v0,0x0
     1f8:	24430000 	addiu	v1,v0,0
     1fc:	8fc20010 	lw	v0,16(s8)
     200:	00000000 	sll	zero,zero,0x0
     204:	00621021 	addu	v0,v1,v0
     208:	24030001 	addiu	v1,zero,1
     20c:	a0430000 	sb	v1,0(v0)
     210:	8fc20010 	lw	v0,16(s8)
     214:	00000000 	sll	zero,zero,0x0
     218:	24420001 	addiu	v0,v0,1
     21c:	afc20010 	sw	v0,16(s8)
	}
     220:	3c020000 	lui	v0,0x0
     224:	24430000 	addiu	v1,v0,0
     228:	8fc20010 	lw	v0,16(s8)
     22c:	00000000 	sll	zero,zero,0x0
     230:	00621021 	addu	v0,v1,v0
     234:	2403ffb7 	addiu	v1,zero,-73
     238:	a0430000 	sb	v1,0(v0)
     23c:	8fc20010 	lw	v0,16(s8)
     240:	00000000 	sll	zero,zero,0x0
     244:	24420001 	addiu	v0,v0,1
     248:	afc20010 	sw	v0,16(s8)
      while (Buffer_Level & 3)
	ld_Rdbfr[Buffer_Level++] = 0;

      /* pad the buffer with sequence end codes */
      while (Buffer_Level < 2048)
	{
     24c:	8fc20010 	lw	v0,16(s8)
     250:	00000000 	sll	zero,zero,0x0
     254:	28420800 	slti	v0,v0,2048
     258:	1440ffd2 	bnez	v0,1a4 <Fill_Buffer+0xe8>
     25c:	00000000 	sll	zero,zero,0x0
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE >> 8;
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE & 0xff;
	}
    }
}

     260:	03c0e821 	addu	sp,s8,zero
     264:	8fbf001c 	lw	ra,28(sp)
     268:	8fbe0018 	lw	s8,24(sp)
     26c:	27bd0020 	addiu	sp,sp,32
     270:	03e00008 	jr	ra
     274:	00000000 	sll	zero,zero,0x0

00000278 <Show_Bits>:
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
     278:	27bdfff8 	addiu	sp,sp,-8
     27c:	afbe0004 	sw	s8,4(sp)
     280:	03a0f021 	addu	s8,sp,zero
     284:	afc40008 	sw	a0,8(s8)
}
     288:	8f830000 	lw	v1,0(gp)
     28c:	24040020 	addiu	a0,zero,32
     290:	8fc20008 	lw	v0,8(s8)
     294:	00000000 	sll	zero,zero,0x0
     298:	00821023 	subu	v0,a0,v0
     29c:	3042001f 	andi	v0,v0,0x1f
     2a0:	00431006 	srlv	v0,v1,v0

     2a4:	03c0e821 	addu	sp,s8,zero
     2a8:	8fbe0004 	lw	s8,4(sp)
     2ac:	27bd0008 	addiu	sp,sp,8
     2b0:	03e00008 	jr	ra
     2b4:	00000000 	sll	zero,zero,0x0

000002b8 <Get_Bits1>:
/* return next bit (could be made faster than Get_Bits(1)) */

unsigned int
Get_Bits1 ()
{
  return Get_Bits (1);
     2b8:	27bdffe8 	addiu	sp,sp,-24
     2bc:	afbf0014 	sw	ra,20(sp)
     2c0:	afbe0010 	sw	s8,16(sp)
     2c4:	03a0f021 	addu	s8,sp,zero
}
     2c8:	24040001 	addiu	a0,zero,1
     2cc:	0c000000 	jal	0 <read>
     2d0:	00000000 	sll	zero,zero,0x0

     2d4:	03c0e821 	addu	sp,s8,zero
     2d8:	8fbf0014 	lw	ra,20(sp)
     2dc:	8fbe0010 	lw	s8,16(sp)
     2e0:	27bd0018 	addiu	sp,sp,24
     2e4:	03e00008 	jr	ra
     2e8:	00000000 	sll	zero,zero,0x0

000002ec <Flush_Buffer>:

void
Flush_Buffer (N)
     int N;
{
  int Incnt;
     2ec:	27bdffe0 	addiu	sp,sp,-32
     2f0:	afbf001c 	sw	ra,28(sp)
     2f4:	afbe0018 	sw	s8,24(sp)
     2f8:	03a0f021 	addu	s8,sp,zero
     2fc:	afc40020 	sw	a0,32(s8)

  ld_Bfr <<= N;

     300:	8f830000 	lw	v1,0(gp)
     304:	8fc20020 	lw	v0,32(s8)
     308:	00000000 	sll	zero,zero,0x0
     30c:	00431004 	sllv	v0,v1,v0
     310:	af820000 	sw	v0,0(gp)
  Incnt = ld_Incnt -= N;

     314:	8f830000 	lw	v1,0(gp)
     318:	8fc20020 	lw	v0,32(s8)
     31c:	00000000 	sll	zero,zero,0x0
     320:	00621023 	subu	v0,v1,v0
     324:	af820000 	sw	v0,0(gp)
     328:	8f820000 	lw	v0,0(gp)
     32c:	00000000 	sll	zero,zero,0x0
     330:	afc20010 	sw	v0,16(s8)
  if (Incnt <= 24)
    {
     334:	8fc20010 	lw	v0,16(s8)
     338:	00000000 	sll	zero,zero,0x0
     33c:	28420019 	slti	v0,v0,25
     340:	10400048 	beqz	v0,464 <Flush_Buffer+0x178>
     344:	00000000 	sll	zero,zero,0x0
      if (ld_Rdptr < ld_Rdbfr + 2044)
	{
     348:	8f830000 	lw	v1,0(gp)
     34c:	3c020000 	lui	v0,0x0
     350:	244207fc 	addiu	v0,v0,2044
     354:	0062102b 	sltu	v0,v1,v0
     358:	1040001d 	beqz	v0,3d0 <Flush_Buffer+0xe4>
     35c:	00000000 	sll	zero,zero,0x0
	  do
	    {
	      ld_Bfr |= *ld_Rdptr++ << (24 - Incnt);
	      Incnt += 8;
     360:	8f820000 	lw	v0,0(gp)
     364:	00000000 	sll	zero,zero,0x0
     368:	90430000 	lbu	v1,0(v0)
     36c:	00000000 	sll	zero,zero,0x0
     370:	00602021 	addu	a0,v1,zero
     374:	24050018 	addiu	a1,zero,24
     378:	8fc30010 	lw	v1,16(s8)
     37c:	00000000 	sll	zero,zero,0x0
     380:	00a31823 	subu	v1,a1,v1
     384:	00641804 	sllv	v1,a0,v1
     388:	00602021 	addu	a0,v1,zero
     38c:	8f830000 	lw	v1,0(gp)
     390:	00000000 	sll	zero,zero,0x0
     394:	00831825 	or	v1,a0,v1
     398:	af830000 	sw	v1,0(gp)
     39c:	24420001 	addiu	v0,v0,1
     3a0:	af820000 	sw	v0,0(gp)
	    }
     3a4:	8fc20010 	lw	v0,16(s8)
     3a8:	00000000 	sll	zero,zero,0x0
     3ac:	24420008 	addiu	v0,v0,8
     3b0:	afc20010 	sw	v0,16(s8)
	  while (Incnt <= 24);
	}
     3b4:	8fc20010 	lw	v0,16(s8)
     3b8:	00000000 	sll	zero,zero,0x0
     3bc:	28420019 	slti	v0,v0,25
     3c0:	1440ffe7 	bnez	v0,360 <Flush_Buffer+0x74>
     3c4:	00000000 	sll	zero,zero,0x0
     3c8:	08000116 	j	458 <Flush_Buffer+0x16c>
     3cc:	00000000 	sll	zero,zero,0x0
      else
	{
	  do
	    {
	      if (ld_Rdptr >= ld_Rdbfr + 2048)
		Fill_Buffer ();
     3d0:	8f830000 	lw	v1,0(gp)
     3d4:	3c020000 	lui	v0,0x0
     3d8:	24420800 	addiu	v0,v0,2048
     3dc:	0062102b 	sltu	v0,v1,v0
     3e0:	14400003 	bnez	v0,3f0 <Flush_Buffer+0x104>
     3e4:	00000000 	sll	zero,zero,0x0
	      ld_Bfr |= *ld_Rdptr++ << (24 - Incnt);
     3e8:	0c000000 	jal	0 <read>
     3ec:	00000000 	sll	zero,zero,0x0
	      Incnt += 8;
     3f0:	8f820000 	lw	v0,0(gp)
     3f4:	00000000 	sll	zero,zero,0x0
     3f8:	90430000 	lbu	v1,0(v0)
     3fc:	00000000 	sll	zero,zero,0x0
     400:	00602021 	addu	a0,v1,zero
     404:	24050018 	addiu	a1,zero,24
     408:	8fc30010 	lw	v1,16(s8)
     40c:	00000000 	sll	zero,zero,0x0
     410:	00a31823 	subu	v1,a1,v1
     414:	00641804 	sllv	v1,a0,v1
     418:	00602021 	addu	a0,v1,zero
     41c:	8f830000 	lw	v1,0(gp)
     420:	00000000 	sll	zero,zero,0x0
     424:	00831825 	or	v1,a0,v1
     428:	af830000 	sw	v1,0(gp)
     42c:	24420001 	addiu	v0,v0,1
     430:	af820000 	sw	v0,0(gp)
	    }
     434:	8fc20010 	lw	v0,16(s8)
     438:	00000000 	sll	zero,zero,0x0
     43c:	24420008 	addiu	v0,v0,8
     440:	afc20010 	sw	v0,16(s8)
	  while (Incnt <= 24);
	}
     444:	8fc20010 	lw	v0,16(s8)
     448:	00000000 	sll	zero,zero,0x0
     44c:	28420019 	slti	v0,v0,25
     450:	1440ffdf 	bnez	v0,3d0 <Flush_Buffer+0xe4>
     454:	00000000 	sll	zero,zero,0x0
      ld_Incnt = Incnt;
    }
     458:	8fc20010 	lw	v0,16(s8)
     45c:	00000000 	sll	zero,zero,0x0
     460:	af820000 	sw	v0,0(gp)
}

     464:	03c0e821 	addu	sp,s8,zero
     468:	8fbf001c 	lw	ra,28(sp)
     46c:	8fbe0018 	lw	s8,24(sp)
     470:	27bd0020 	addiu	sp,sp,32
     474:	03e00008 	jr	ra
     478:	00000000 	sll	zero,zero,0x0

0000047c <Get_Bits>:

unsigned int
Get_Bits (N)
     int N;
{
  unsigned int Val;
     47c:	27bdffe0 	addiu	sp,sp,-32
     480:	afbf001c 	sw	ra,28(sp)
     484:	afbe0018 	sw	s8,24(sp)
     488:	03a0f021 	addu	s8,sp,zero
     48c:	afc40020 	sw	a0,32(s8)

  Val = Show_Bits (N);
  Flush_Buffer (N);
     490:	8fc40020 	lw	a0,32(s8)
     494:	0c000000 	jal	0 <read>
     498:	00000000 	sll	zero,zero,0x0
     49c:	afc20010 	sw	v0,16(s8)

     4a0:	8fc40020 	lw	a0,32(s8)
     4a4:	0c000000 	jal	0 <read>
     4a8:	00000000 	sll	zero,zero,0x0
  return Val;
}
     4ac:	8fc20010 	lw	v0,16(s8)
     4b0:	03c0e821 	addu	sp,s8,zero
     4b4:	8fbf001c 	lw	ra,28(sp)
     4b8:	8fbe0018 	lw	s8,24(sp)
     4bc:	27bd0020 	addiu	sp,sp,32
     4c0:	03e00008 	jr	ra
     4c4:	00000000 	sll	zero,zero,0x0

000004c8 <Get_motion_code>:
 *
 */

int
Get_motion_code ()
{
     4c8:	27bdffe0 	addiu	sp,sp,-32
     4cc:	afbf001c 	sw	ra,28(sp)
     4d0:	afbe0018 	sw	s8,24(sp)
     4d4:	03a0f021 	addu	s8,sp,zero
  int code;

  if (Get_Bits1 ())
     4d8:	0c000000 	jal	0 <read>
     4dc:	00000000 	sll	zero,zero,0x0
     4e0:	10400004 	beqz	v0,4f4 <Get_motion_code+0x2c>
     4e4:	00000000 	sll	zero,zero,0x0
    {
      return 0;
     4e8:	00001021 	addu	v0,zero,zero
     4ec:	080001c5 	j	714 <Get_motion_code+0x24c>
     4f0:	00000000 	sll	zero,zero,0x0
    }

  if ((code = Show_Bits (9)) >= 64)
     4f4:	24040009 	addiu	a0,zero,9
     4f8:	0c000000 	jal	0 <read>
     4fc:	00000000 	sll	zero,zero,0x0
     500:	afc20010 	sw	v0,16(s8)
     504:	8fc20010 	lw	v0,16(s8)
     508:	00000000 	sll	zero,zero,0x0
     50c:	28420040 	slti	v0,v0,64
     510:	14400028 	bnez	v0,5b4 <Get_motion_code+0xec>
     514:	00000000 	sll	zero,zero,0x0
    {
      code >>= 6;
     518:	8fc20010 	lw	v0,16(s8)
     51c:	00000000 	sll	zero,zero,0x0
     520:	00021183 	sra	v0,v0,0x6
     524:	afc20010 	sw	v0,16(s8)
      Flush_Buffer (MVtab0[code][1]);
     528:	3c020000 	lui	v0,0x0
     52c:	8fc30010 	lw	v1,16(s8)
     530:	00000000 	sll	zero,zero,0x0
     534:	00031840 	sll	v1,v1,0x1
     538:	24420000 	addiu	v0,v0,0
     53c:	00621021 	addu	v0,v1,v0
     540:	80420001 	lb	v0,1(v0)
     544:	00000000 	sll	zero,zero,0x0
     548:	00402021 	addu	a0,v0,zero
     54c:	0c000000 	jal	0 <read>
     550:	00000000 	sll	zero,zero,0x0

      return Get_Bits1 ()? -MVtab0[code][0] : MVtab0[code][0];
     554:	0c000000 	jal	0 <read>
     558:	00000000 	sll	zero,zero,0x0
     55c:	1040000c 	beqz	v0,590 <Get_motion_code+0xc8>
     560:	00000000 	sll	zero,zero,0x0
     564:	3c020000 	lui	v0,0x0
     568:	8fc30010 	lw	v1,16(s8)
     56c:	00000000 	sll	zero,zero,0x0
     570:	00031840 	sll	v1,v1,0x1
     574:	24420000 	addiu	v0,v0,0
     578:	00621021 	addu	v0,v1,v0
     57c:	80420000 	lb	v0,0(v0)
     580:	00000000 	sll	zero,zero,0x0
     584:	00021023 	negu	v0,v0
     588:	0800016b 	j	5ac <Get_motion_code+0xe4>
     58c:	00000000 	sll	zero,zero,0x0
     590:	3c020000 	lui	v0,0x0
     594:	8fc30010 	lw	v1,16(s8)
     598:	00000000 	sll	zero,zero,0x0
     59c:	00031840 	sll	v1,v1,0x1
     5a0:	24420000 	addiu	v0,v0,0
     5a4:	00621021 	addu	v0,v1,v0
     5a8:	80420000 	lb	v0,0(v0)
     5ac:	080001c5 	j	714 <Get_motion_code+0x24c>
     5b0:	00000000 	sll	zero,zero,0x0
    }

  if (code >= 24)
     5b4:	8fc20010 	lw	v0,16(s8)
     5b8:	00000000 	sll	zero,zero,0x0
     5bc:	28420018 	slti	v0,v0,24
     5c0:	14400028 	bnez	v0,664 <Get_motion_code+0x19c>
     5c4:	00000000 	sll	zero,zero,0x0
    {
      code >>= 3;
     5c8:	8fc20010 	lw	v0,16(s8)
     5cc:	00000000 	sll	zero,zero,0x0
     5d0:	000210c3 	sra	v0,v0,0x3
     5d4:	afc20010 	sw	v0,16(s8)
      Flush_Buffer (MVtab1[code][1]);
     5d8:	3c020000 	lui	v0,0x0
     5dc:	8fc30010 	lw	v1,16(s8)
     5e0:	00000000 	sll	zero,zero,0x0
     5e4:	00031840 	sll	v1,v1,0x1
     5e8:	24420000 	addiu	v0,v0,0
     5ec:	00621021 	addu	v0,v1,v0
     5f0:	80420001 	lb	v0,1(v0)
     5f4:	00000000 	sll	zero,zero,0x0
     5f8:	00402021 	addu	a0,v0,zero
     5fc:	0c000000 	jal	0 <read>
     600:	00000000 	sll	zero,zero,0x0

      return Get_Bits1 ()? -MVtab1[code][0] : MVtab1[code][0];
     604:	0c000000 	jal	0 <read>
     608:	00000000 	sll	zero,zero,0x0
     60c:	1040000c 	beqz	v0,640 <Get_motion_code+0x178>
     610:	00000000 	sll	zero,zero,0x0
     614:	3c020000 	lui	v0,0x0
     618:	8fc30010 	lw	v1,16(s8)
     61c:	00000000 	sll	zero,zero,0x0
     620:	00031840 	sll	v1,v1,0x1
     624:	24420000 	addiu	v0,v0,0
     628:	00621021 	addu	v0,v1,v0
     62c:	80420000 	lb	v0,0(v0)
     630:	00000000 	sll	zero,zero,0x0
     634:	00021023 	negu	v0,v0
     638:	08000197 	j	65c <Get_motion_code+0x194>
     63c:	00000000 	sll	zero,zero,0x0
     640:	3c020000 	lui	v0,0x0
     644:	8fc30010 	lw	v1,16(s8)
     648:	00000000 	sll	zero,zero,0x0
     64c:	00031840 	sll	v1,v1,0x1
     650:	24420000 	addiu	v0,v0,0
     654:	00621021 	addu	v0,v1,v0
     658:	80420000 	lb	v0,0(v0)
     65c:	080001c5 	j	714 <Get_motion_code+0x24c>
     660:	00000000 	sll	zero,zero,0x0
    }

  if ((code -= 12) < 0)
     664:	8fc20010 	lw	v0,16(s8)
     668:	00000000 	sll	zero,zero,0x0
     66c:	2442fff4 	addiu	v0,v0,-12
     670:	afc20010 	sw	v0,16(s8)
     674:	8fc20010 	lw	v0,16(s8)
     678:	00000000 	sll	zero,zero,0x0
     67c:	04410004 	bgez	v0,690 <Get_motion_code+0x1c8>
     680:	00000000 	sll	zero,zero,0x0
    return 0;
     684:	00001021 	addu	v0,zero,zero
     688:	080001c5 	j	714 <Get_motion_code+0x24c>
     68c:	00000000 	sll	zero,zero,0x0

  Flush_Buffer (MVtab2[code][1]);
     690:	3c020000 	lui	v0,0x0
     694:	8fc30010 	lw	v1,16(s8)
     698:	00000000 	sll	zero,zero,0x0
     69c:	00031840 	sll	v1,v1,0x1
     6a0:	24420000 	addiu	v0,v0,0
     6a4:	00621021 	addu	v0,v1,v0
     6a8:	80420001 	lb	v0,1(v0)
     6ac:	00000000 	sll	zero,zero,0x0
     6b0:	00402021 	addu	a0,v0,zero
     6b4:	0c000000 	jal	0 <read>
     6b8:	00000000 	sll	zero,zero,0x0
  return Get_Bits1 ()? -MVtab2[code][0] : MVtab2[code][0];
     6bc:	0c000000 	jal	0 <read>
     6c0:	00000000 	sll	zero,zero,0x0
     6c4:	1040000c 	beqz	v0,6f8 <Get_motion_code+0x230>
     6c8:	00000000 	sll	zero,zero,0x0
     6cc:	3c020000 	lui	v0,0x0
     6d0:	8fc30010 	lw	v1,16(s8)
     6d4:	00000000 	sll	zero,zero,0x0
     6d8:	00031840 	sll	v1,v1,0x1
     6dc:	24420000 	addiu	v0,v0,0
     6e0:	00621021 	addu	v0,v1,v0
     6e4:	80420000 	lb	v0,0(v0)
     6e8:	00000000 	sll	zero,zero,0x0
     6ec:	00021023 	negu	v0,v0
     6f0:	080001c5 	j	714 <Get_motion_code+0x24c>
     6f4:	00000000 	sll	zero,zero,0x0
     6f8:	3c020000 	lui	v0,0x0
     6fc:	8fc30010 	lw	v1,16(s8)
     700:	00000000 	sll	zero,zero,0x0
     704:	00031840 	sll	v1,v1,0x1
     708:	24420000 	addiu	v0,v0,0
     70c:	00621021 	addu	v0,v1,v0
     710:	80420000 	lb	v0,0(v0)
}
     714:	03c0e821 	addu	sp,s8,zero
     718:	8fbf001c 	lw	ra,28(sp)
     71c:	8fbe0018 	lw	s8,24(sp)
     720:	27bd0020 	addiu	sp,sp,32
     724:	03e00008 	jr	ra
     728:	00000000 	sll	zero,zero,0x0

0000072c <Get_dmvector>:

/* get differential motion vector (for dual prime prediction) */
int
Get_dmvector ()
{
     72c:	27bdffe8 	addiu	sp,sp,-24
     730:	afbf0014 	sw	ra,20(sp)
     734:	afbe0010 	sw	s8,16(sp)
     738:	03a0f021 	addu	s8,sp,zero

  if (Get_Bits (1))
     73c:	24040001 	addiu	a0,zero,1
     740:	0c000000 	jal	0 <read>
     744:	00000000 	sll	zero,zero,0x0
     748:	1040000c 	beqz	v0,77c <Get_dmvector+0x50>
     74c:	00000000 	sll	zero,zero,0x0
    {
      return Get_Bits (1) ? -1 : 1;
     750:	24040001 	addiu	a0,zero,1
     754:	0c000000 	jal	0 <read>
     758:	00000000 	sll	zero,zero,0x0
     75c:	10400004 	beqz	v0,770 <Get_dmvector+0x44>
     760:	00000000 	sll	zero,zero,0x0
     764:	2402ffff 	addiu	v0,zero,-1
     768:	080001dd 	j	774 <Get_dmvector+0x48>
     76c:	00000000 	sll	zero,zero,0x0
     770:	24020001 	addiu	v0,zero,1
     774:	080001e0 	j	780 <Get_dmvector+0x54>
     778:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      return 0;
     77c:	00001021 	addu	v0,zero,zero
    }
}
     780:	03c0e821 	addu	sp,s8,zero
     784:	8fbf0014 	lw	ra,20(sp)
     788:	8fbe0010 	lw	s8,16(sp)
     78c:	27bd0018 	addiu	sp,sp,24
     790:	03e00008 	jr	ra
     794:	00000000 	sll	zero,zero,0x0

00000798 <motion_vectors>:
		mvscale)
     int PMV[2][2][2];
     int dmvector[2];
     int motion_vertical_field_select[2][2];
     int s, motion_vector_count, mv_format, h_r_size, v_r_size, dmv, mvscale;
{
     798:	27bdffd0 	addiu	sp,sp,-48
     79c:	afbf002c 	sw	ra,44(sp)
     7a0:	afbe0028 	sw	s8,40(sp)
     7a4:	afb00024 	sw	s0,36(sp)
     7a8:	03a0f021 	addu	s8,sp,zero
     7ac:	afc40030 	sw	a0,48(s8)
     7b0:	afc50034 	sw	a1,52(s8)
     7b4:	afc60038 	sw	a2,56(s8)
     7b8:	afc7003c 	sw	a3,60(s8)
  if (motion_vector_count == 1)
     7bc:	8fc30040 	lw	v1,64(s8)
     7c0:	24020001 	addiu	v0,zero,1
     7c4:	14620051 	bne	v1,v0,90c <motion_vectors+0x174>
     7c8:	00000000 	sll	zero,zero,0x0
    {
      if (mv_format == MV_FIELD && !dmv)
     7cc:	8fc20044 	lw	v0,68(s8)
     7d0:	00000000 	sll	zero,zero,0x0
     7d4:	1440001d 	bnez	v0,84c <motion_vectors+0xb4>
     7d8:	00000000 	sll	zero,zero,0x0
     7dc:	8fc20050 	lw	v0,80(s8)
     7e0:	00000000 	sll	zero,zero,0x0
     7e4:	14400019 	bnez	v0,84c <motion_vectors+0xb4>
     7e8:	00000000 	sll	zero,zero,0x0
	{
	  motion_vertical_field_select[1][s] =
     7ec:	8fc20038 	lw	v0,56(s8)
     7f0:	00000000 	sll	zero,zero,0x0
     7f4:	24500008 	addiu	s0,v0,8
	    motion_vertical_field_select[0][s] = Get_Bits (1);
     7f8:	24040001 	addiu	a0,zero,1
     7fc:	0c000000 	jal	0 <read>
     800:	00000000 	sll	zero,zero,0x0
     804:	00401821 	addu	v1,v0,zero
     808:	8fc40038 	lw	a0,56(s8)
     80c:	8fc2003c 	lw	v0,60(s8)
     810:	00000000 	sll	zero,zero,0x0
     814:	00021080 	sll	v0,v0,0x2
     818:	00821021 	addu	v0,a0,v0
     81c:	ac430000 	sw	v1,0(v0)
     820:	8fc30038 	lw	v1,56(s8)
     824:	8fc2003c 	lw	v0,60(s8)
     828:	00000000 	sll	zero,zero,0x0
     82c:	00021080 	sll	v0,v0,0x2
     830:	00621021 	addu	v0,v1,v0
     834:	8c430000 	lw	v1,0(v0)
{
  if (motion_vector_count == 1)
    {
      if (mv_format == MV_FIELD && !dmv)
	{
	  motion_vertical_field_select[1][s] =
     838:	8fc2003c 	lw	v0,60(s8)
     83c:	00000000 	sll	zero,zero,0x0
     840:	00021080 	sll	v0,v0,0x2
     844:	02021021 	addu	v0,s0,v0
     848:	ac430000 	sw	v1,0(v0)
	    motion_vertical_field_select[0][s] = Get_Bits (1);
	}

      motion_vector (PMV[0][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
     84c:	8fc30030 	lw	v1,48(s8)
     850:	8fc2003c 	lw	v0,60(s8)
     854:	00000000 	sll	zero,zero,0x0
     858:	000210c0 	sll	v0,v0,0x3
     85c:	00621021 	addu	v0,v1,v0
     860:	8fc30050 	lw	v1,80(s8)
     864:	00000000 	sll	zero,zero,0x0
     868:	afa30010 	sw	v1,16(sp)
     86c:	8fc30054 	lw	v1,84(s8)
     870:	00000000 	sll	zero,zero,0x0
     874:	afa30014 	sw	v1,20(sp)
     878:	afa00018 	sw	zero,24(sp)
     87c:	00402021 	addu	a0,v0,zero
     880:	8fc50034 	lw	a1,52(s8)
     884:	8fc60048 	lw	a2,72(s8)
     888:	8fc7004c 	lw	a3,76(s8)
     88c:	0c000000 	jal	0 <read>
     890:	00000000 	sll	zero,zero,0x0
		     0);

      /* update other motion vector predictors */
      PMV[1][s][0] = PMV[0][s][0];
     894:	8fc20030 	lw	v0,48(s8)
     898:	00000000 	sll	zero,zero,0x0
     89c:	24440010 	addiu	a0,v0,16
     8a0:	8fc30030 	lw	v1,48(s8)
     8a4:	8fc2003c 	lw	v0,60(s8)
     8a8:	00000000 	sll	zero,zero,0x0
     8ac:	000210c0 	sll	v0,v0,0x3
     8b0:	00621021 	addu	v0,v1,v0
     8b4:	8c430000 	lw	v1,0(v0)
     8b8:	8fc2003c 	lw	v0,60(s8)
     8bc:	00000000 	sll	zero,zero,0x0
     8c0:	000210c0 	sll	v0,v0,0x3
     8c4:	00821021 	addu	v0,a0,v0
     8c8:	ac430000 	sw	v1,0(v0)
      PMV[1][s][1] = PMV[0][s][1];
     8cc:	8fc20030 	lw	v0,48(s8)
     8d0:	00000000 	sll	zero,zero,0x0
     8d4:	24440010 	addiu	a0,v0,16
     8d8:	8fc30030 	lw	v1,48(s8)
     8dc:	8fc2003c 	lw	v0,60(s8)
     8e0:	00000000 	sll	zero,zero,0x0
     8e4:	000210c0 	sll	v0,v0,0x3
     8e8:	00621021 	addu	v0,v1,v0
     8ec:	8c430004 	lw	v1,4(v0)
     8f0:	8fc2003c 	lw	v0,60(s8)
     8f4:	00000000 	sll	zero,zero,0x0
     8f8:	000210c0 	sll	v0,v0,0x3
     8fc:	00821021 	addu	v0,a0,v0
     900:	ac430004 	sw	v1,4(v0)
     904:	0800027e 	j	9f8 <motion_vectors+0x260>
     908:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      motion_vertical_field_select[0][s] = Get_Bits (1);
     90c:	24040001 	addiu	a0,zero,1
     910:	0c000000 	jal	0 <read>
     914:	00000000 	sll	zero,zero,0x0
     918:	00401821 	addu	v1,v0,zero
     91c:	8fc40038 	lw	a0,56(s8)
     920:	8fc2003c 	lw	v0,60(s8)
     924:	00000000 	sll	zero,zero,0x0
     928:	00021080 	sll	v0,v0,0x2
     92c:	00821021 	addu	v0,a0,v0
     930:	ac430000 	sw	v1,0(v0)

      motion_vector (PMV[0][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
     934:	8fc30030 	lw	v1,48(s8)
     938:	8fc2003c 	lw	v0,60(s8)
     93c:	00000000 	sll	zero,zero,0x0
     940:	000210c0 	sll	v0,v0,0x3
     944:	00621021 	addu	v0,v1,v0
     948:	8fc30050 	lw	v1,80(s8)
     94c:	00000000 	sll	zero,zero,0x0
     950:	afa30010 	sw	v1,16(sp)
     954:	8fc30054 	lw	v1,84(s8)
     958:	00000000 	sll	zero,zero,0x0
     95c:	afa30014 	sw	v1,20(sp)
     960:	afa00018 	sw	zero,24(sp)
     964:	00402021 	addu	a0,v0,zero
     968:	8fc50034 	lw	a1,52(s8)
     96c:	8fc60048 	lw	a2,72(s8)
     970:	8fc7004c 	lw	a3,76(s8)
     974:	0c000000 	jal	0 <read>
     978:	00000000 	sll	zero,zero,0x0
		     0);

      motion_vertical_field_select[1][s] = Get_Bits (1);
     97c:	8fc20038 	lw	v0,56(s8)
     980:	00000000 	sll	zero,zero,0x0
     984:	24500008 	addiu	s0,v0,8
     988:	24040001 	addiu	a0,zero,1
     98c:	0c000000 	jal	0 <read>
     990:	00000000 	sll	zero,zero,0x0
     994:	00401821 	addu	v1,v0,zero
     998:	8fc2003c 	lw	v0,60(s8)
     99c:	00000000 	sll	zero,zero,0x0
     9a0:	00021080 	sll	v0,v0,0x2
     9a4:	02021021 	addu	v0,s0,v0
     9a8:	ac430000 	sw	v1,0(v0)

      motion_vector (PMV[1][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
     9ac:	8fc30030 	lw	v1,48(s8)
     9b0:	8fc2003c 	lw	v0,60(s8)
     9b4:	00000000 	sll	zero,zero,0x0
     9b8:	24420002 	addiu	v0,v0,2
     9bc:	000210c0 	sll	v0,v0,0x3
     9c0:	00621021 	addu	v0,v1,v0
     9c4:	8fc30050 	lw	v1,80(s8)
     9c8:	00000000 	sll	zero,zero,0x0
     9cc:	afa30010 	sw	v1,16(sp)
     9d0:	8fc30054 	lw	v1,84(s8)
     9d4:	00000000 	sll	zero,zero,0x0
     9d8:	afa30014 	sw	v1,20(sp)
     9dc:	afa00018 	sw	zero,24(sp)
     9e0:	00402021 	addu	a0,v0,zero
     9e4:	8fc50034 	lw	a1,52(s8)
     9e8:	8fc60048 	lw	a2,72(s8)
     9ec:	8fc7004c 	lw	a3,76(s8)
     9f0:	0c000000 	jal	0 <read>
     9f4:	00000000 	sll	zero,zero,0x0
		     0);
    }
}
     9f8:	03c0e821 	addu	sp,s8,zero
     9fc:	8fbf002c 	lw	ra,44(sp)
     a00:	8fbe0028 	lw	s8,40(sp)
     a04:	8fb00024 	lw	s0,36(sp)
     a08:	27bd0030 	addiu	sp,sp,48
     a0c:	03e00008 	jr	ra
     a10:	00000000 	sll	zero,zero,0x0

00000a14 <motion_vector>:
     int h_r_size;
     int v_r_size;
     int dmv;			/* MPEG-2 only: get differential motion vectors */
     int mvscale;		/* MPEG-2 only: field vector in frame pic */
     int full_pel_vector;	/* MPEG-1 only */
{
     a14:	27bdffd0 	addiu	sp,sp,-48
     a18:	afbf002c 	sw	ra,44(sp)
     a1c:	afbe0028 	sw	s8,40(sp)
     a20:	afb00024 	sw	s0,36(sp)
     a24:	03a0f021 	addu	s8,sp,zero
     a28:	afc40030 	sw	a0,48(s8)
     a2c:	afc50034 	sw	a1,52(s8)
     a30:	afc60038 	sw	a2,56(s8)
     a34:	afc7003c 	sw	a3,60(s8)
  int motion_code;
  int motion_residual;

  /* horizontal component */
  /* ISO/IEC 13818-2 Table B-10 */
  motion_code = Get_motion_code ();
     a38:	0c000000 	jal	0 <read>
     a3c:	00000000 	sll	zero,zero,0x0
     a40:	afc20018 	sw	v0,24(s8)

  motion_residual = (h_r_size != 0
     a44:	8fc20038 	lw	v0,56(s8)
     a48:	00000000 	sll	zero,zero,0x0
     a4c:	1040000a 	beqz	v0,a78 <motion_vector+0x64>
     a50:	00000000 	sll	zero,zero,0x0
		     && motion_code != 0) ? Get_Bits (h_r_size) : 0;
     a54:	8fc20018 	lw	v0,24(s8)
     a58:	00000000 	sll	zero,zero,0x0
     a5c:	10400006 	beqz	v0,a78 <motion_vector+0x64>
     a60:	00000000 	sll	zero,zero,0x0
     a64:	8fc40038 	lw	a0,56(s8)
     a68:	0c000000 	jal	0 <read>
     a6c:	00000000 	sll	zero,zero,0x0

  /* horizontal component */
  /* ISO/IEC 13818-2 Table B-10 */
  motion_code = Get_motion_code ();

  motion_residual = (h_r_size != 0
     a70:	0800029f 	j	a7c <motion_vector+0x68>
     a74:	00000000 	sll	zero,zero,0x0
     a78:	00001021 	addu	v0,zero,zero
     a7c:	afc2001c 	sw	v0,28(s8)
		     && motion_code != 0) ? Get_Bits (h_r_size) : 0;

  decode_motion_vector (&PMV[0], h_r_size, motion_code, motion_residual,
     a80:	8fc20048 	lw	v0,72(s8)
     a84:	00000000 	sll	zero,zero,0x0
     a88:	afa20010 	sw	v0,16(sp)
     a8c:	8fc40030 	lw	a0,48(s8)
     a90:	8fc50038 	lw	a1,56(s8)
     a94:	8fc60018 	lw	a2,24(s8)
     a98:	8fc7001c 	lw	a3,28(s8)
     a9c:	0c0002fe 	jal	bf8 <decode_motion_vector>
     aa0:	00000000 	sll	zero,zero,0x0
			full_pel_vector);

  if (dmv)
     aa4:	8fc20040 	lw	v0,64(s8)
     aa8:	00000000 	sll	zero,zero,0x0
     aac:	10400007 	beqz	v0,acc <motion_vector+0xb8>
     ab0:	00000000 	sll	zero,zero,0x0
    dmvector[0] = Get_dmvector ();
     ab4:	0c000000 	jal	0 <read>
     ab8:	00000000 	sll	zero,zero,0x0
     abc:	00401821 	addu	v1,v0,zero
     ac0:	8fc20034 	lw	v0,52(s8)
     ac4:	00000000 	sll	zero,zero,0x0
     ac8:	ac430000 	sw	v1,0(v0)


  /* vertical component */
  motion_code = Get_motion_code ();
     acc:	0c000000 	jal	0 <read>
     ad0:	00000000 	sll	zero,zero,0x0
     ad4:	afc20018 	sw	v0,24(s8)
  motion_residual = (v_r_size != 0
     ad8:	8fc2003c 	lw	v0,60(s8)
     adc:	00000000 	sll	zero,zero,0x0
     ae0:	1040000a 	beqz	v0,b0c <motion_vector+0xf8>
     ae4:	00000000 	sll	zero,zero,0x0
		     && motion_code != 0) ? Get_Bits (v_r_size) : 0;
     ae8:	8fc20018 	lw	v0,24(s8)
     aec:	00000000 	sll	zero,zero,0x0
     af0:	10400006 	beqz	v0,b0c <motion_vector+0xf8>
     af4:	00000000 	sll	zero,zero,0x0
     af8:	8fc4003c 	lw	a0,60(s8)
     afc:	0c000000 	jal	0 <read>
     b00:	00000000 	sll	zero,zero,0x0
    dmvector[0] = Get_dmvector ();


  /* vertical component */
  motion_code = Get_motion_code ();
  motion_residual = (v_r_size != 0
     b04:	080002c4 	j	b10 <motion_vector+0xfc>
     b08:	00000000 	sll	zero,zero,0x0
     b0c:	00001021 	addu	v0,zero,zero
     b10:	afc2001c 	sw	v0,28(s8)
		     && motion_code != 0) ? Get_Bits (v_r_size) : 0;

  if (mvscale)
     b14:	8fc20044 	lw	v0,68(s8)
     b18:	00000000 	sll	zero,zero,0x0
     b1c:	1040000b 	beqz	v0,b4c <motion_vector+0x138>
     b20:	00000000 	sll	zero,zero,0x0
    PMV[1] >>= 1;		/* DIV 2 */
     b24:	8fc20030 	lw	v0,48(s8)
     b28:	00000000 	sll	zero,zero,0x0
     b2c:	24420004 	addiu	v0,v0,4
     b30:	8fc30030 	lw	v1,48(s8)
     b34:	00000000 	sll	zero,zero,0x0
     b38:	24630004 	addiu	v1,v1,4
     b3c:	8c630000 	lw	v1,0(v1)
     b40:	00000000 	sll	zero,zero,0x0
     b44:	00031843 	sra	v1,v1,0x1
     b48:	ac430000 	sw	v1,0(v0)

  decode_motion_vector (&PMV[1], v_r_size, motion_code, motion_residual,
     b4c:	8fc20030 	lw	v0,48(s8)
     b50:	00000000 	sll	zero,zero,0x0
     b54:	24420004 	addiu	v0,v0,4
     b58:	8fc30048 	lw	v1,72(s8)
     b5c:	00000000 	sll	zero,zero,0x0
     b60:	afa30010 	sw	v1,16(sp)
     b64:	00402021 	addu	a0,v0,zero
     b68:	8fc5003c 	lw	a1,60(s8)
     b6c:	8fc60018 	lw	a2,24(s8)
     b70:	8fc7001c 	lw	a3,28(s8)
     b74:	0c0002fe 	jal	bf8 <decode_motion_vector>
     b78:	00000000 	sll	zero,zero,0x0
			full_pel_vector);

  if (mvscale)
     b7c:	8fc20044 	lw	v0,68(s8)
     b80:	00000000 	sll	zero,zero,0x0
     b84:	1040000b 	beqz	v0,bb4 <motion_vector+0x1a0>
     b88:	00000000 	sll	zero,zero,0x0
    PMV[1] <<= 1;
     b8c:	8fc20030 	lw	v0,48(s8)
     b90:	00000000 	sll	zero,zero,0x0
     b94:	24420004 	addiu	v0,v0,4
     b98:	8fc30030 	lw	v1,48(s8)
     b9c:	00000000 	sll	zero,zero,0x0
     ba0:	24630004 	addiu	v1,v1,4
     ba4:	8c630000 	lw	v1,0(v1)
     ba8:	00000000 	sll	zero,zero,0x0
     bac:	00031840 	sll	v1,v1,0x1
     bb0:	ac430000 	sw	v1,0(v0)

  if (dmv)
     bb4:	8fc20040 	lw	v0,64(s8)
     bb8:	00000000 	sll	zero,zero,0x0
     bbc:	10400007 	beqz	v0,bdc <motion_vector+0x1c8>
     bc0:	00000000 	sll	zero,zero,0x0
    dmvector[1] = Get_dmvector ();
     bc4:	8fc20034 	lw	v0,52(s8)
     bc8:	00000000 	sll	zero,zero,0x0
     bcc:	24500004 	addiu	s0,v0,4
     bd0:	0c000000 	jal	0 <read>
     bd4:	00000000 	sll	zero,zero,0x0
     bd8:	ae020000 	sw	v0,0(s0)

}
     bdc:	03c0e821 	addu	sp,s8,zero
     be0:	8fbf002c 	lw	ra,44(sp)
     be4:	8fbe0028 	lw	s8,40(sp)
     be8:	8fb00024 	lw	s0,36(sp)
     bec:	27bd0030 	addiu	sp,sp,48
     bf0:	03e00008 	jr	ra
     bf4:	00000000 	sll	zero,zero,0x0

00000bf8 <decode_motion_vector>:
decode_motion_vector (pred, r_size, motion_code, motion_residual,
		      full_pel_vector)
     int *pred;
     int r_size, motion_code, motion_residual;
     int full_pel_vector;	/* MPEG-1 (ISO/IEC 11172-1) support */
{
     bf8:	27bdfff0 	addiu	sp,sp,-16
     bfc:	afbe000c 	sw	s8,12(sp)
     c00:	03a0f021 	addu	s8,sp,zero
     c04:	afc40010 	sw	a0,16(s8)
     c08:	afc50014 	sw	a1,20(s8)
     c0c:	afc60018 	sw	a2,24(s8)
     c10:	afc7001c 	sw	a3,28(s8)
  int lim, vec;

  r_size = r_size % 32;
     c14:	8fc30014 	lw	v1,20(s8)
     c18:	3c028000 	lui	v0,0x8000
     c1c:	3442001f 	ori	v0,v0,0x1f
     c20:	00621024 	and	v0,v1,v0
     c24:	04410005 	bgez	v0,c3c <decode_motion_vector+0x44>
     c28:	00000000 	sll	zero,zero,0x0
     c2c:	2442ffff 	addiu	v0,v0,-1
     c30:	2403ffe0 	addiu	v1,zero,-32
     c34:	00431025 	or	v0,v0,v1
     c38:	24420001 	addiu	v0,v0,1
     c3c:	afc20014 	sw	v0,20(s8)
  lim = 16 << r_size;
     c40:	24030010 	addiu	v1,zero,16
     c44:	8fc20014 	lw	v0,20(s8)
     c48:	00000000 	sll	zero,zero,0x0
     c4c:	00431004 	sllv	v0,v1,v0
     c50:	afc20004 	sw	v0,4(s8)
  vec = full_pel_vector ? (*pred >> 1) : (*pred);
     c54:	8fc20020 	lw	v0,32(s8)
     c58:	00000000 	sll	zero,zero,0x0
     c5c:	10400008 	beqz	v0,c80 <decode_motion_vector+0x88>
     c60:	00000000 	sll	zero,zero,0x0
     c64:	8fc20010 	lw	v0,16(s8)
     c68:	00000000 	sll	zero,zero,0x0
     c6c:	8c420000 	lw	v0,0(v0)
     c70:	00000000 	sll	zero,zero,0x0
     c74:	00021043 	sra	v0,v0,0x1
     c78:	08000324 	j	c90 <decode_motion_vector+0x98>
     c7c:	00000000 	sll	zero,zero,0x0
     c80:	8fc20010 	lw	v0,16(s8)
     c84:	00000000 	sll	zero,zero,0x0
     c88:	8c420000 	lw	v0,0(v0)
     c8c:	00000000 	sll	zero,zero,0x0
     c90:	afc20000 	sw	v0,0(s8)

  if (motion_code > 0)
     c94:	8fc20018 	lw	v0,24(s8)
     c98:	00000000 	sll	zero,zero,0x0
     c9c:	1840001f 	blez	v0,d1c <decode_motion_vector+0x124>
     ca0:	00000000 	sll	zero,zero,0x0
    {
      vec += ((motion_code - 1) << r_size) + motion_residual + 1;
     ca4:	8fc20018 	lw	v0,24(s8)
     ca8:	00000000 	sll	zero,zero,0x0
     cac:	2443ffff 	addiu	v1,v0,-1
     cb0:	8fc20014 	lw	v0,20(s8)
     cb4:	00000000 	sll	zero,zero,0x0
     cb8:	00431804 	sllv	v1,v1,v0
     cbc:	8fc2001c 	lw	v0,28(s8)
     cc0:	00000000 	sll	zero,zero,0x0
     cc4:	00621021 	addu	v0,v1,v0
     cc8:	24420001 	addiu	v0,v0,1
     ccc:	8fc30000 	lw	v1,0(s8)
     cd0:	00000000 	sll	zero,zero,0x0
     cd4:	00621021 	addu	v0,v1,v0
     cd8:	afc20000 	sw	v0,0(s8)
      if (vec >= lim)
     cdc:	8fc30000 	lw	v1,0(s8)
     ce0:	8fc20004 	lw	v0,4(s8)
     ce4:	00000000 	sll	zero,zero,0x0
     ce8:	0062102a 	slt	v0,v1,v0
     cec:	1440002d 	bnez	v0,da4 <decode_motion_vector+0x1ac>
     cf0:	00000000 	sll	zero,zero,0x0
	vec -= lim + lim;
     cf4:	8fc30004 	lw	v1,4(s8)
     cf8:	8fc20004 	lw	v0,4(s8)
     cfc:	00000000 	sll	zero,zero,0x0
     d00:	00621021 	addu	v0,v1,v0
     d04:	8fc30000 	lw	v1,0(s8)
     d08:	00000000 	sll	zero,zero,0x0
     d0c:	00621023 	subu	v0,v1,v0
     d10:	afc20000 	sw	v0,0(s8)
     d14:	08000369 	j	da4 <decode_motion_vector+0x1ac>
     d18:	00000000 	sll	zero,zero,0x0
    }
  else if (motion_code < 0)
     d1c:	8fc20018 	lw	v0,24(s8)
     d20:	00000000 	sll	zero,zero,0x0
     d24:	0441001f 	bgez	v0,da4 <decode_motion_vector+0x1ac>
     d28:	00000000 	sll	zero,zero,0x0
    {
      vec -= ((-motion_code - 1) << r_size) + motion_residual + 1;
     d2c:	8fc20018 	lw	v0,24(s8)
     d30:	00000000 	sll	zero,zero,0x0
     d34:	00021827 	nor	v1,zero,v0
     d38:	8fc20014 	lw	v0,20(s8)
     d3c:	00000000 	sll	zero,zero,0x0
     d40:	00431804 	sllv	v1,v1,v0
     d44:	8fc2001c 	lw	v0,28(s8)
     d48:	00000000 	sll	zero,zero,0x0
     d4c:	00621021 	addu	v0,v1,v0
     d50:	00021027 	nor	v0,zero,v0
     d54:	8fc30000 	lw	v1,0(s8)
     d58:	00000000 	sll	zero,zero,0x0
     d5c:	00621021 	addu	v0,v1,v0
     d60:	afc20000 	sw	v0,0(s8)
      if (vec < -lim)
     d64:	8fc20004 	lw	v0,4(s8)
     d68:	00000000 	sll	zero,zero,0x0
     d6c:	00021823 	negu	v1,v0
     d70:	8fc20000 	lw	v0,0(s8)
     d74:	00000000 	sll	zero,zero,0x0
     d78:	0043102a 	slt	v0,v0,v1
     d7c:	10400009 	beqz	v0,da4 <decode_motion_vector+0x1ac>
     d80:	00000000 	sll	zero,zero,0x0
	vec += lim + lim;
     d84:	8fc30004 	lw	v1,4(s8)
     d88:	8fc20004 	lw	v0,4(s8)
     d8c:	00000000 	sll	zero,zero,0x0
     d90:	00621021 	addu	v0,v1,v0
     d94:	8fc30000 	lw	v1,0(s8)
     d98:	00000000 	sll	zero,zero,0x0
     d9c:	00621021 	addu	v0,v1,v0
     da0:	afc20000 	sw	v0,0(s8)
    }
  *pred = full_pel_vector ? (vec << 1) : vec;
     da4:	8fc20020 	lw	v0,32(s8)
     da8:	00000000 	sll	zero,zero,0x0
     dac:	10400006 	beqz	v0,dc8 <decode_motion_vector+0x1d0>
     db0:	00000000 	sll	zero,zero,0x0
     db4:	8fc20000 	lw	v0,0(s8)
     db8:	00000000 	sll	zero,zero,0x0
     dbc:	00021040 	sll	v0,v0,0x1
     dc0:	08000373 	j	dcc <decode_motion_vector+0x1d4>
     dc4:	00000000 	sll	zero,zero,0x0
     dc8:	8fc20000 	lw	v0,0(s8)
     dcc:	8fc30010 	lw	v1,16(s8)
     dd0:	00000000 	sll	zero,zero,0x0
     dd4:	ac620000 	sw	v0,0(v1)
}
     dd8:	03c0e821 	addu	sp,s8,zero
     ddc:	8fbe000c 	lw	s8,12(sp)
     de0:	27bd0010 	addiu	sp,sp,16
     de4:	03e00008 	jr	ra
     de8:	00000000 	sll	zero,zero,0x0

00000dec <Initialize_Buffer>:
#include "getvlc.c"
#include "motion.c"

void
Initialize_Buffer ()
{
     dec:	27bdffe8 	addiu	sp,sp,-24
     df0:	afbf0014 	sw	ra,20(sp)
     df4:	afbe0010 	sw	s8,16(sp)
     df8:	03a0f021 	addu	s8,sp,zero
  ld_Incnt = 0;
     dfc:	af800000 	sw	zero,0(gp)
  ld_Rdptr = ld_Rdbfr + 2048;
     e00:	3c020000 	lui	v0,0x0
     e04:	24420800 	addiu	v0,v0,2048
     e08:	af820000 	sw	v0,0(gp)
  ld_Rdmax = ld_Rdptr;
     e0c:	8f820000 	lw	v0,0(gp)
     e10:	00000000 	sll	zero,zero,0x0
     e14:	af820000 	sw	v0,0(gp)
  ld_Bfr = 68157440;
     e18:	3c020410 	lui	v0,0x410
     e1c:	af820000 	sw	v0,0(gp)
  Flush_Buffer (0);		/* fills valid data into bfr */
     e20:	00002021 	addu	a0,zero,zero
     e24:	0c000000 	jal	0 <read>
     e28:	00000000 	sll	zero,zero,0x0
}
     e2c:	03c0e821 	addu	sp,s8,zero
     e30:	8fbf0014 	lw	ra,20(sp)
     e34:	8fbe0010 	lw	s8,16(sp)
     e38:	27bd0018 	addiu	sp,sp,24
     e3c:	03e00008 	jr	ra
     e40:	00000000 	sll	zero,zero,0x0

00000e44 <main>:

int
main ()
{
     e44:	27bdff68 	addiu	sp,sp,-152
     e48:	afbf0094 	sw	ra,148(sp)
     e4c:	afbe0090 	sw	s8,144(sp)
     e50:	03a0f021 	addu	s8,sp,zero
  int PMV[2][2][2];
  int dmvector[2];
  int motion_vertical_field_select[2][2];
  int s, motion_vector_count, mv_format, h_r_size, v_r_size, dmv, mvscale;

      main_result = 0;
     e54:	afc00034 	sw	zero,52(s8)
      evalue = 0;
     e58:	af800000 	sw	zero,0(gp)
      System_Stream_Flag = 0;
     e5c:	af800000 	sw	zero,0(gp)
      s = 0;
     e60:	afc00038 	sw	zero,56(s8)
      motion_vector_count = 1;
     e64:	24020001 	addiu	v0,zero,1
     e68:	afc2003c 	sw	v0,60(s8)
      mv_format = 0;
     e6c:	afc00040 	sw	zero,64(s8)
      h_r_size = 200;
     e70:	240200c8 	addiu	v0,zero,200
     e74:	afc20044 	sw	v0,68(s8)
      v_r_size = 200;
     e78:	240200c8 	addiu	v0,zero,200
     e7c:	afc20048 	sw	v0,72(s8)
      dmv = 0;
     e80:	afc0004c 	sw	zero,76(s8)
      mvscale = 1;
     e84:	24020001 	addiu	v0,zero,1
     e88:	afc20050 	sw	v0,80(s8)
      for (i = 0; i < 2; i++)
     e8c:	afc00028 	sw	zero,40(s8)
     e90:	080003fa 	j	fe8 <main+0x1a4>
     e94:	00000000 	sll	zero,zero,0x0
	{
	  dmvector[i] = 0;
     e98:	8fc20028 	lw	v0,40(s8)
     e9c:	00000000 	sll	zero,zero,0x0
     ea0:	00021080 	sll	v0,v0,0x2
     ea4:	27c30028 	addiu	v1,s8,40
     ea8:	00621021 	addu	v0,v1,v0
     eac:	ac40004c 	sw	zero,76(v0)
	  for (j = 0; j < 2; j++)
     eb0:	afc0002c 	sw	zero,44(s8)
     eb4:	080003f1 	j	fc4 <main+0x180>
     eb8:	00000000 	sll	zero,zero,0x0
	    {
	      motion_vertical_field_select[i][j] = inmvfs[i][j];
     ebc:	3c020000 	lui	v0,0x0
     ec0:	8fc30028 	lw	v1,40(s8)
     ec4:	00000000 	sll	zero,zero,0x0
     ec8:	00032040 	sll	a0,v1,0x1
     ecc:	8fc3002c 	lw	v1,44(s8)
     ed0:	00000000 	sll	zero,zero,0x0
     ed4:	00831821 	addu	v1,a0,v1
     ed8:	00031880 	sll	v1,v1,0x2
     edc:	24420000 	addiu	v0,v0,0
     ee0:	00621021 	addu	v0,v1,v0
     ee4:	8c430000 	lw	v1,0(v0)
     ee8:	8fc20028 	lw	v0,40(s8)
     eec:	00000000 	sll	zero,zero,0x0
     ef0:	00022040 	sll	a0,v0,0x1
     ef4:	8fc2002c 	lw	v0,44(s8)
     ef8:	00000000 	sll	zero,zero,0x0
     efc:	00821021 	addu	v0,a0,v0
     f00:	00021080 	sll	v0,v0,0x2
     f04:	27c40028 	addiu	a0,s8,40
     f08:	00821021 	addu	v0,a0,v0
     f0c:	ac430054 	sw	v1,84(v0)
	      for (k = 0; k < 2; k++)
     f10:	afc00030 	sw	zero,48(s8)
     f14:	080003e8 	j	fa0 <main+0x15c>
     f18:	00000000 	sll	zero,zero,0x0
		PMV[i][j][k] = inPMV[i][j][k];
     f1c:	3c020000 	lui	v0,0x0
     f20:	8fc30028 	lw	v1,40(s8)
     f24:	00000000 	sll	zero,zero,0x0
     f28:	00032040 	sll	a0,v1,0x1
     f2c:	8fc3002c 	lw	v1,44(s8)
     f30:	00000000 	sll	zero,zero,0x0
     f34:	00831821 	addu	v1,a0,v1
     f38:	00032040 	sll	a0,v1,0x1
     f3c:	8fc30030 	lw	v1,48(s8)
     f40:	00000000 	sll	zero,zero,0x0
     f44:	00831821 	addu	v1,a0,v1
     f48:	00031880 	sll	v1,v1,0x2
     f4c:	24420000 	addiu	v0,v0,0
     f50:	00621021 	addu	v0,v1,v0
     f54:	8c430000 	lw	v1,0(v0)
     f58:	8fc20028 	lw	v0,40(s8)
     f5c:	00000000 	sll	zero,zero,0x0
     f60:	00022040 	sll	a0,v0,0x1
     f64:	8fc2002c 	lw	v0,44(s8)
     f68:	00000000 	sll	zero,zero,0x0
     f6c:	00821021 	addu	v0,a0,v0
     f70:	00022040 	sll	a0,v0,0x1
     f74:	8fc20030 	lw	v0,48(s8)
     f78:	00000000 	sll	zero,zero,0x0
     f7c:	00821021 	addu	v0,a0,v0
     f80:	00021080 	sll	v0,v0,0x2
     f84:	27c40028 	addiu	a0,s8,40
     f88:	00821021 	addu	v0,a0,v0
     f8c:	ac43002c 	sw	v1,44(v0)
	{
	  dmvector[i] = 0;
	  for (j = 0; j < 2; j++)
	    {
	      motion_vertical_field_select[i][j] = inmvfs[i][j];
	      for (k = 0; k < 2; k++)
     f90:	8fc20030 	lw	v0,48(s8)
     f94:	00000000 	sll	zero,zero,0x0
     f98:	24420001 	addiu	v0,v0,1
     f9c:	afc20030 	sw	v0,48(s8)
     fa0:	8fc20030 	lw	v0,48(s8)
     fa4:	00000000 	sll	zero,zero,0x0
     fa8:	28420002 	slti	v0,v0,2
     fac:	1440ffdb 	bnez	v0,f1c <main+0xd8>
     fb0:	00000000 	sll	zero,zero,0x0
      dmv = 0;
      mvscale = 1;
      for (i = 0; i < 2; i++)
	{
	  dmvector[i] = 0;
	  for (j = 0; j < 2; j++)
     fb4:	8fc2002c 	lw	v0,44(s8)
     fb8:	00000000 	sll	zero,zero,0x0
     fbc:	24420001 	addiu	v0,v0,1
     fc0:	afc2002c 	sw	v0,44(s8)
     fc4:	8fc2002c 	lw	v0,44(s8)
     fc8:	00000000 	sll	zero,zero,0x0
     fcc:	28420002 	slti	v0,v0,2
     fd0:	1440ffba 	bnez	v0,ebc <main+0x78>
     fd4:	00000000 	sll	zero,zero,0x0
      mv_format = 0;
      h_r_size = 200;
      v_r_size = 200;
      dmv = 0;
      mvscale = 1;
      for (i = 0; i < 2; i++)
     fd8:	8fc20028 	lw	v0,40(s8)
     fdc:	00000000 	sll	zero,zero,0x0
     fe0:	24420001 	addiu	v0,v0,1
     fe4:	afc20028 	sw	v0,40(s8)
     fe8:	8fc20028 	lw	v0,40(s8)
     fec:	00000000 	sll	zero,zero,0x0
     ff0:	28420002 	slti	v0,v0,2
     ff4:	1440ffa8 	bnez	v0,e98 <main+0x54>
     ff8:	00000000 	sll	zero,zero,0x0
	      for (k = 0; k < 2; k++)
		PMV[i][j][k] = inPMV[i][j][k];
	    }
	}

      Initialize_Buffer ();
     ffc:	0c000000 	jal	0 <read>
    1000:	00000000 	sll	zero,zero,0x0
      motion_vectors (PMV, dmvector, motion_vertical_field_select, s,
    1004:	27c40054 	addiu	a0,s8,84
    1008:	27c30074 	addiu	v1,s8,116
    100c:	27c2007c 	addiu	v0,s8,124
    1010:	8fc5003c 	lw	a1,60(s8)
    1014:	00000000 	sll	zero,zero,0x0
    1018:	afa50010 	sw	a1,16(sp)
    101c:	8fc50040 	lw	a1,64(s8)
    1020:	00000000 	sll	zero,zero,0x0
    1024:	afa50014 	sw	a1,20(sp)
    1028:	8fc50044 	lw	a1,68(s8)
    102c:	00000000 	sll	zero,zero,0x0
    1030:	afa50018 	sw	a1,24(sp)
    1034:	8fc50048 	lw	a1,72(s8)
    1038:	00000000 	sll	zero,zero,0x0
    103c:	afa5001c 	sw	a1,28(sp)
    1040:	8fc5004c 	lw	a1,76(s8)
    1044:	00000000 	sll	zero,zero,0x0
    1048:	afa50020 	sw	a1,32(sp)
    104c:	8fc50050 	lw	a1,80(s8)
    1050:	00000000 	sll	zero,zero,0x0
    1054:	afa50024 	sw	a1,36(sp)
    1058:	00602821 	addu	a1,v1,zero
    105c:	00403021 	addu	a2,v0,zero
    1060:	8fc70038 	lw	a3,56(s8)
    1064:	0c000000 	jal	0 <read>
    1068:	00000000 	sll	zero,zero,0x0
		      motion_vector_count, mv_format, h_r_size, v_r_size, dmv,
		      mvscale);

      for (i = 0; i < 2; i++)
    106c:	afc00028 	sw	zero,40(s8)
    1070:	0800047a 	j	11e8 <main+0x3a4>
    1074:	00000000 	sll	zero,zero,0x0
	for (j = 0; j < 2; j++)
    1078:	afc0002c 	sw	zero,44(s8)
    107c:	08000471 	j	11c4 <main+0x380>
    1080:	00000000 	sll	zero,zero,0x0
	  {
	    main_result +=
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
    1084:	8fc20028 	lw	v0,40(s8)
    1088:	00000000 	sll	zero,zero,0x0
    108c:	00021840 	sll	v1,v0,0x1
    1090:	8fc2002c 	lw	v0,44(s8)
    1094:	00000000 	sll	zero,zero,0x0
    1098:	00621021 	addu	v0,v1,v0
    109c:	00021080 	sll	v0,v0,0x2
    10a0:	27c30028 	addiu	v1,s8,40
    10a4:	00621021 	addu	v0,v1,v0
    10a8:	8c430054 	lw	v1,84(v0)
    10ac:	3c020000 	lui	v0,0x0
    10b0:	8fc40028 	lw	a0,40(s8)
    10b4:	00000000 	sll	zero,zero,0x0
    10b8:	00042840 	sll	a1,a0,0x1
    10bc:	8fc4002c 	lw	a0,44(s8)
    10c0:	00000000 	sll	zero,zero,0x0
    10c4:	00a42021 	addu	a0,a1,a0
    10c8:	00042080 	sll	a0,a0,0x2
    10cc:	24420000 	addiu	v0,v0,0
    10d0:	00821021 	addu	v0,a0,v0
    10d4:	8c420000 	lw	v0,0(v0)
    10d8:	00000000 	sll	zero,zero,0x0
    10dc:	00621026 	xor	v0,v1,v0
    10e0:	0002102b 	sltu	v0,zero,v0
		      mvscale);

      for (i = 0; i < 2; i++)
	for (j = 0; j < 2; j++)
	  {
	    main_result +=
    10e4:	8fc30034 	lw	v1,52(s8)
    10e8:	00000000 	sll	zero,zero,0x0
    10ec:	00621021 	addu	v0,v1,v0
    10f0:	afc20034 	sw	v0,52(s8)
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
	    for (k = 0; k < 2; k++)
    10f4:	afc00030 	sw	zero,48(s8)
    10f8:	08000468 	j	11a0 <main+0x35c>
    10fc:	00000000 	sll	zero,zero,0x0
	      main_result += (PMV[i][j][k] != outPMV[i][j][k]);
    1100:	8fc20028 	lw	v0,40(s8)
    1104:	00000000 	sll	zero,zero,0x0
    1108:	00021840 	sll	v1,v0,0x1
    110c:	8fc2002c 	lw	v0,44(s8)
    1110:	00000000 	sll	zero,zero,0x0
    1114:	00621021 	addu	v0,v1,v0
    1118:	00021840 	sll	v1,v0,0x1
    111c:	8fc20030 	lw	v0,48(s8)
    1120:	00000000 	sll	zero,zero,0x0
    1124:	00621021 	addu	v0,v1,v0
    1128:	00021080 	sll	v0,v0,0x2
    112c:	27c30028 	addiu	v1,s8,40
    1130:	00621021 	addu	v0,v1,v0
    1134:	8c43002c 	lw	v1,44(v0)
    1138:	3c020000 	lui	v0,0x0
    113c:	8fc40028 	lw	a0,40(s8)
    1140:	00000000 	sll	zero,zero,0x0
    1144:	00042840 	sll	a1,a0,0x1
    1148:	8fc4002c 	lw	a0,44(s8)
    114c:	00000000 	sll	zero,zero,0x0
    1150:	00a42021 	addu	a0,a1,a0
    1154:	00042840 	sll	a1,a0,0x1
    1158:	8fc40030 	lw	a0,48(s8)
    115c:	00000000 	sll	zero,zero,0x0
    1160:	00a42021 	addu	a0,a1,a0
    1164:	00042080 	sll	a0,a0,0x2
    1168:	24420000 	addiu	v0,v0,0
    116c:	00821021 	addu	v0,a0,v0
    1170:	8c420000 	lw	v0,0(v0)
    1174:	00000000 	sll	zero,zero,0x0
    1178:	00621026 	xor	v0,v1,v0
    117c:	0002102b 	sltu	v0,zero,v0
    1180:	8fc30034 	lw	v1,52(s8)
    1184:	00000000 	sll	zero,zero,0x0
    1188:	00621021 	addu	v0,v1,v0
    118c:	afc20034 	sw	v0,52(s8)
      for (i = 0; i < 2; i++)
	for (j = 0; j < 2; j++)
	  {
	    main_result +=
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
	    for (k = 0; k < 2; k++)
    1190:	8fc20030 	lw	v0,48(s8)
    1194:	00000000 	sll	zero,zero,0x0
    1198:	24420001 	addiu	v0,v0,1
    119c:	afc20030 	sw	v0,48(s8)
    11a0:	8fc20030 	lw	v0,48(s8)
    11a4:	00000000 	sll	zero,zero,0x0
    11a8:	28420002 	slti	v0,v0,2
    11ac:	1440ffd4 	bnez	v0,1100 <main+0x2bc>
    11b0:	00000000 	sll	zero,zero,0x0
      motion_vectors (PMV, dmvector, motion_vertical_field_select, s,
		      motion_vector_count, mv_format, h_r_size, v_r_size, dmv,
		      mvscale);

      for (i = 0; i < 2; i++)
	for (j = 0; j < 2; j++)
    11b4:	8fc2002c 	lw	v0,44(s8)
    11b8:	00000000 	sll	zero,zero,0x0
    11bc:	24420001 	addiu	v0,v0,1
    11c0:	afc2002c 	sw	v0,44(s8)
    11c4:	8fc2002c 	lw	v0,44(s8)
    11c8:	00000000 	sll	zero,zero,0x0
    11cc:	28420002 	slti	v0,v0,2
    11d0:	1440ffac 	bnez	v0,1084 <main+0x240>
    11d4:	00000000 	sll	zero,zero,0x0
      Initialize_Buffer ();
      motion_vectors (PMV, dmvector, motion_vertical_field_select, s,
		      motion_vector_count, mv_format, h_r_size, v_r_size, dmv,
		      mvscale);

      for (i = 0; i < 2; i++)
    11d8:	8fc20028 	lw	v0,40(s8)
    11dc:	00000000 	sll	zero,zero,0x0
    11e0:	24420001 	addiu	v0,v0,1
    11e4:	afc20028 	sw	v0,40(s8)
    11e8:	8fc20028 	lw	v0,40(s8)
    11ec:	00000000 	sll	zero,zero,0x0
    11f0:	28420002 	slti	v0,v0,2
    11f4:	1440ffa0 	bnez	v0,1078 <main+0x234>
    11f8:	00000000 	sll	zero,zero,0x0
	      main_result += (PMV[i][j][k] != outPMV[i][j][k]);
	  }

  
    //printf ("%d\n", main_result);
  return main_result;
    11fc:	8fc20034 	lw	v0,52(s8)

}
    1200:	03c0e821 	addu	sp,s8,zero
    1204:	8fbf0094 	lw	ra,148(sp)
    1208:	8fbe0090 	lw	s8,144(sp)
    120c:	27bd0098 	addiu	sp,sp,152
    1210:	03e00008 	jr	ra
    1214:	00000000 	sll	zero,zero,0x0

Disassembly of section .rodata:

00000000 <inRdbfr>:
       0:	00687830 	0x687830
       4:	4820a0c0 	0x4820a0c0
       8:	c04038f8 	lwc0	$0,14584(v0)
       c:	f85888e0 	0xf85888e0
      10:	c8d0b048 	lwc2	$16,-20408(a2)
      14:	6028b8a0 	0x6028b8a0
      18:	202078a8 	addi	zero,at,30888
      1c:	402048b8 	0x402048b8
      20:	d8f000d8 	0xd8f000d8
      24:	c0407030 	lwc0	$0,28720(v0)
      28:	a09828b0 	sb	t8,10416(a0)
      2c:	2020f8c8 	addi	zero,at,-1848
      30:	6818d8f0 	0x6818d8f0
      34:	80b048e8 	lb	s0,18664(a1)
      38:	f0b83078 	0xf0b83078
      3c:	30c040a8 	andi	zero,a2,0x40a8
      40:	a080a0a0 	sb	zero,-24416(a0)
      44:	e8d06878 	swc2	$16,26744(a2)
      48:	e87808b8 	swc2	$24,2232(v1)
      4c:	78c840a0 	0x78c840a0
      50:	c8e040a8 	lwc2	$0,16552(a3)
      54:	28785068 	slti	t8,v1,20584
      58:	10000878 	beqz	zero,223c <MVtab2+0x11bc>
      5c:	90885090 	lbu	t0,20624(a0)
      60:	481880d8 	0x481880d8
      64:	d8185010 	0xd8185010
      68:	4020c870 	0x4020c870
      6c:	80905818 	lb	s0,22552(a0)
      70:	70782068 	0x70782068
      74:	48b01810 	0x48b01810
      78:	b83818c8 	swr	t8,6344(at)
      7c:	98983030 	lwr	t8,12336(a0)
      80:	8850f008 	lwl	s0,-4088(v0)
      84:	d8c8f020 	0xd8c8f020
      88:	a8703038 	swl	s0,12344(v1)
      8c:	28c0e820 	slti	zero,a2,-6112
      90:	30e8e820 	andi	t0,a3,0xe820
      94:	0058d018 	0x58d018
      98:	f0487860 	0xf0487860
      9c:	f888e0d0 	0xf888e0d0
      a0:	08b8c090 	j	2e30240 <MVtab2+0x2e2f1c0>
      a4:	58309088 	0x58309088
      a8:	70c060f0 	0x70c060f0
      ac:	c8a0b8a0 	lwc2	$0,-18272(a1)
      b0:	1830d098 	0x1830d098
      b4:	80b8b890 	lb	t8,-18288(a1)
      b8:	90a8f090 	lbu	t0,-3952(a1)
      bc:	a0a83030 	sb	t0,12336(a1)
      c0:	18c89078 	0x18c89078
      c4:	d0386048 	0xd0386048
      c8:	305850c8 	andi	t8,v0,0x50c8
      cc:	f8d0f828 	0xf8d0f828
      d0:	88702008 	lwl	s0,8200(v1)
      d4:	0850c028 	j	14300a0 <MVtab2+0x142f020>
      d8:	20e038c0 	addi	zero,a3,14528
      dc:	c83838e8 	lwc2	$24,14568(at)
      e0:	c8507808 	lwc2	$16,30728(v0)
      e4:	b8d8e850 	swr	t8,-6064(a2)
      e8:	a88020d8 	swl	zero,8408(a0)
      ec:	8868f8a8 	lwl	t0,-1880(v1)
      f0:	f808c0a8 	0xf808c0a8
      f4:	c038f0c0 	lwc0	$24,-3904(at)
      f8:	d0887830 	0xd0887830
      fc:	e070a850 	swc0	$16,-22448(v1)
     100:	c0605078 	lwc0	$0,20600(v1)
     104:	78107830 	0x78107830
     108:	a8a8a0e0 	swl	t0,-24352(a1)
     10c:	80184818 	lb	t8,18456(zero)
     110:	f8f098a0 	0xf8f098a0
     114:	d038c038 	0xd038c038
     118:	5880c088 	0x5880c088
     11c:	80d07028 	lb	s0,28712(a2)
     120:	40c020b0 	0x40c020b0
     124:	5038a8d0 	0x5038a8d0
     128:	18a8a8f8 	0x18a8a8f8
     12c:	f0886020 	0xf0886020
     130:	38b80888 	xori	t8,a1,0x888
     134:	1000b028 	beqz	zero,fffec1d8 <MVtab2+0xfffeb158>
     138:	002068a0 	0x2068a0
     13c:	3858e838 	xori	t8,v0,0xe838
     140:	00f0b8e8 	0xf0b8e8
     144:	5820b000 	0x5820b000
     148:	d8f8b828 	0xd8f8b828
     14c:	105008d0 	beq	v0,s0,2490 <MVtab2+0x1410>
     150:	40e04828 	0x40e04828
     154:	48489050 	0x48489050
     158:	90788840 	lbu	t8,-30656(v1)
     15c:	b8a08810 	swr	zero,-30704(a1)
     160:	3068e868 	andi	t0,v1,0xe868
     164:	6848d048 	0x6848d048
     168:	c0b82838 	lwc0	$24,10296(a1)
     16c:	e848a050 	swc2	$8,-24496(v0)
     170:	98e8f820 	lwr	t0,-2016(a3)
     174:	e02800a8 	swc0	$8,168(at)
     178:	186070a0 	blez	v1,1c3fc <MVtab2+0x1b37c>
     17c:	980820a0 	lwr	t0,8352(zero)
     180:	68d02018 	0x68d02018
     184:	f808f890 	0xf808f890
     188:	7810c058 	0x7810c058
     18c:	98b0c8a0 	lwr	s0,-14176(a1)
     190:	98a060a8 	lwr	zero,24744(a1)
     194:	f010f8b0 	0xf010f8b0
     198:	18d80038 	0x18d80038
     19c:	50f86008 	0x50f86008
     1a0:	8020c068 	lb	zero,-16280(at)
     1a4:	30d0f0b8 	andi	s0,a2,0xf0b8
     1a8:	805038c0 	lb	s0,14528(v0)
     1ac:	0070b030 	0x70b030
     1b0:	60381838 	0x60381838
     1b4:	18201860 	blez	at,6338 <MVtab2+0x52b8>
     1b8:	50004070 	0x50004070
     1bc:	30185838 	andi	t8,zero,0x5838
     1c0:	98e0a0c0 	lwr	zero,-24384(a3)
     1c4:	b848f880 	swr	t0,-1920(v0)
     1c8:	08086868 	j	21a1a0 <MVtab2+0x219120>
     1cc:	c8308888 	lwc2	$16,-30584(at)
     1d0:	d0905028 	0xd0905028
     1d4:	886008d0 	lwl	zero,2256(v1)
     1d8:	a068a050 	sb	t0,-24496(v1)
     1dc:	4060b090 	0x4060b090
     1e0:	08385858 	j	e16160 <MVtab2+0xe150e0>
     1e4:	d07830f0 	0xd07830f0
     1e8:	f060f8c0 	0xf060f8c0
     1ec:	6880f818 	0x6880f818
     1f0:	68484078 	0x68484078
     1f4:	f8c030c0 	0xf8c030c0
     1f8:	20509010 	addi	s0,v0,-28656
     1fc:	506070b8 	0x506070b8
     200:	3850f8e8 	xori	s0,v0,0xf8e8
     204:	0028f838 	0x28f838
     208:	c020c060 	lwc0	$0,-16288(at)
     20c:	f83088e0 	0xf83088e0
     210:	5000c080 	0x5000c080
     214:	6878d080 	0x6878d080
     218:	00b0d808 	0xb0d808
     21c:	c0601028 	lwc0	$0,4136(v1)
     220:	b8602048 	swr	zero,8264(v1)
     224:	50c06868 	0x50c06868
     228:	880010a0 	lwl	zero,4256(zero)
     22c:	18683008 	0x18683008
     230:	18987880 	0x18987880
     234:	4820b070 	0x4820b070
     238:	68781020 	0x68781020
     23c:	90a038f0 	lbu	zero,14576(a1)
     240:	00e8b818 	0xe8b818
     244:	10d0c8f0 	beq	a2,s0,ffff2608 <MVtab2+0xffff1588>
     248:	c8c86870 	lwc2	$8,26736(a2)
     24c:	18d080a8 	0x18d080a8
     250:	f8409878 	0xf8409878
     254:	40e080d0 	0x40e080d0
     258:	78d81098 	0x78d81098
     25c:	3090f050 	andi	s0,a0,0xf050
     260:	90e030a0 	lbu	zero,12448(a3)
     264:	c0f80080 	lwc0	$24,128(a3)
     268:	7880a0e8 	0x7880a0e8
     26c:	a8d07070 	swl	s0,28784(a2)
     270:	68b808c0 	0x68b808c0
     274:	38b02860 	xori	s0,a1,0x2860
     278:	404868d8 	0x404868d8
     27c:	98d85098 	lwr	t8,20632(a2)
     280:	b8d82038 	swr	t8,8248(a2)
     284:	2040f098 	addi	zero,v0,-3944
     288:	f0a88808 	0xf0a88808
     28c:	e8a88058 	swc2	$8,-32680(a1)
     290:	488008c0 	0x488008c0
     294:	30787020 	andi	t8,v1,0x7020
     298:	90d0c0d8 	lbu	s0,-16168(a2)
     29c:	10b0a8a0 	beq	a1,s0,fffea520 <MVtab2+0xfffe94a0>
     2a0:	a8588838 	swl	t8,-30664(v0)
     2a4:	08400050 	j	1000140 <MVtab2+0xfff0c0>
     2a8:	d8684050 	0xd8684050
     2ac:	58d04050 	0x58d04050
     2b0:	c81878a0 	lwc2	$24,30880(zero)
     2b4:	504838d8 	0x504838d8
     2b8:	18384828 	0x18384828
     2bc:	48003888 	0x48003888
     2c0:	38c84888 	xori	t0,a2,0x4888
     2c4:	584888f0 	0x584888f0
     2c8:	00b0b098 	0xb0b098
     2cc:	c0f8e0f0 	lwc0	$24,-7952(a3)
     2d0:	480870e8 	0x480870e8
     2d4:	c8781000 	lwc2	$24,4096(v1)
     2d8:	28304048 	slti	s0,at,16456
     2dc:	20886898 	addi	t0,a0,26776
     2e0:	10f0b850 	beq	a3,s0,fffee424 <MVtab2+0xfffed3a4>
     2e4:	009820b0 	0x9820b0
     2e8:	807800a0 	lb	t8,160(v1)
     2ec:	28407028 	slti	zero,v0,28712
     2f0:	50309060 	0x50309060
     2f4:	a8009848 	swl	zero,-26552(zero)
     2f8:	b8885898 	swr	t0,22680(a0)
     2fc:	b8305898 	swr	s0,22680(at)
     300:	60d8f0b8 	0x60d8f0b8
     304:	c8884068 	lwc2	$8,16488(a0)
     308:	70e800d0 	0x70e800d0
     30c:	b08070f8 	0xb08070f8
     310:	90f87870 	lbu	t8,30832(a3)
     314:	0078f058 	0x78f058
     318:	585808f8 	0x585808f8
     31c:	500840d8 	0x500840d8
     320:	f0383890 	0xf0383890
     324:	70d09048 	0x70d09048
     328:	10a088d8 	beqz	a1,fffe268c <MVtab2+0xfffe160c>
     32c:	b0703808 	0xb0703808
     330:	a8684828 	swl	t0,18472(v1)
     334:	b0582878 	0xb0582878
     338:	18283868 	0x18283868
     33c:	28a0e8a0 	slti	zero,a1,-5984
     340:	189090e8 	0x189090e8
     344:	78907060 	0x78907060
     348:	88b00880 	lwl	s0,2176(a1)
     34c:	70b86078 	0x70b86078
     350:	407000b8 	0x407000b8
     354:	5048b850 	0x5048b850
     358:	904878c8 	lbu	t0,30920(v0)
     35c:	a8201800 	swl	zero,6144(at)
     360:	904818f8 	lbu	t0,6392(v0)
     364:	18984880 	0x18984880
     368:	0008e020 	add	gp,zero,t0
     36c:	48483070 	0x48483070
     370:	e810f018 	swc2	$16,-4072(zero)
     374:	4020e878 	0x4020e878
     378:	a8c89870 	swl	t0,-26512(a2)
     37c:	08900078 	j	24001e0 <MVtab2+0x23ff160>
     380:	70007090 	0x70007090
     384:	48a018d8 	0x48a018d8
     388:	7080e098 	0x7080e098
     38c:	68882800 	0x68882800
     390:	109030f8 	beq	a0,s0,c774 <MVtab2+0xb6f4>
     394:	88304058 	lwl	s0,16472(at)
     398:	98d0f810 	lwr	s0,-2032(a2)
     39c:	70e0b8a8 	0x70e0b8a8
     3a0:	28a840f8 	slti	t0,a1,16632
     3a4:	9068c890 	lbu	t0,-14192(v1)
     3a8:	9810a8c0 	lwr	s0,-22336(zero)
     3ac:	f0604888 	0xf0604888
     3b0:	d8880020 	0xd8880020
     3b4:	c070f0a0 	lwc0	$16,-3936(v1)
     3b8:	f8b81030 	0xf8b81030
     3bc:	e858a010 	swc2	$24,-24560(v0)
     3c0:	68b09088 	0x68b09088
     3c4:	18f0b8a0 	0x18f0b8a0
     3c8:	08102038 	j	4080e0 <MVtab2+0x407060>
     3cc:	b090a8a8 	0xb090a8a8
     3d0:	38585868 	xori	t8,v0,0x5868
     3d4:	f8b86020 	0xf8b86020
     3d8:	8058e0f0 	lb	t8,-7952(v0)
     3dc:	2078d888 	addi	t8,v1,-10104
     3e0:	08485068 	j	12141a0 <MVtab2+0x1213120>
     3e4:	78982060 	0x78982060
     3e8:	e850e818 	swc2	$16,-6120(v0)
     3ec:	50c8d0d8 	0x50c8d0d8
     3f0:	b8103828 	swr	s0,14376(zero)
     3f4:	d8d08078 	0xd8d08078
     3f8:	101050c8 	beq	zero,s0,1471c <MVtab2+0x1369c>
     3fc:	9068a048 	lbu	t0,-24504(v1)
     400:	1888b020 	0x1888b020
     404:	c0788850 	lwc0	$24,-30640(v1)
     408:	1058d0a0 	beq	v0,t8,ffff468c <MVtab2+0xffff360c>
     40c:	10e82818 	beq	a3,t0,a470 <MVtab2+0x93f0>
     410:	90d02010 	lbu	s0,8208(a2)
     414:	58c030b0 	0x58c030b0
     418:	9818a020 	lwr	t8,-24544(zero)
     41c:	5018f050 	0x5018f050
     420:	a098a080 	sb	t8,-24448(a0)
     424:	505828b8 	0x505828b8
     428:	d09030c8 	0xd09030c8
     42c:	c8307090 	lwc2	$16,28816(at)
     430:	68e090e0 	0x68e090e0
     434:	c808e0f0 	lwc2	$8,-7952(zero)
     438:	2098e810 	addi	t8,a0,-6128
     43c:	0850b828 	j	142e0a0 <MVtab2+0x142d020>
     440:	b8f84008 	swr	t8,16392(a3)
     444:	e8105858 	swc2	$16,22616(zero)
     448:	08788030 	j	1e200c0 <MVtab2+0x1e1f040>
     44c:	f0584068 	0xf0584068
     450:	68f860f0 	0x68f860f0
     454:	c098d038 	lwc0	$24,-12232(a0)
     458:	98f08808 	lwr	s0,-30712(a3)
     45c:	d81870a8 	0xd81870a8
     460:	588850e0 	0x588850e0
     464:	88982818 	lwl	t8,10264(a0)
     468:	f8d89888 	0xf8d89888
     46c:	60e04050 	0x60e04050
     470:	38384808 	xori	t8,at,0x4808
     474:	18409018 	blez	v0,fffe44d8 <MVtab2+0xfffe3458>
     478:	d0d88078 	0xd0d88078
     47c:	60a87898 	0x60a87898
     480:	70e88850 	0x70e88850
     484:	486098d0 	0x486098d0
     488:	48d84078 	0x48d84078
     48c:	7830e848 	0x7830e848
     490:	b8b030e8 	swr	s0,12520(a1)
     494:	c8b87848 	lwc2	$24,30792(a1)
     498:	7080f8a0 	0x7080f8a0
     49c:	a8d89850 	swl	t8,-26544(a2)
     4a0:	b0703098 	0xb0703098
     4a4:	704028c8 	0x704028c8
     4a8:	e850a038 	swc2	$16,-24520(v0)
     4ac:	d8c0a848 	0xd8c0a848
     4b0:	2840d020 	slti	zero,v0,-12256
     4b4:	e0f01868 	swc0	$16,6248(a3)
     4b8:	e8f0a818 	swc2	$16,-22504(a3)
     4bc:	f8205098 	0xf8205098
     4c0:	90a07078 	lbu	zero,28792(a1)
     4c4:	60f040a0 	0x60f040a0
     4c8:	f8f89830 	0xf8f89830
     4cc:	705880e8 	0x705880e8
     4d0:	f0f0e8a8 	0xf0f0e8a8
     4d4:	782098b0 	0x782098b0
     4d8:	68105098 	0x68105098
     4dc:	f0e08010 	0xf0e08010
     4e0:	3020d808 	andi	zero,at,0xd808
     4e4:	68f8b8d0 	0x68f8b8d0
     4e8:	d87850d0 	0xd87850d0
     4ec:	80387028 	lb	t8,28712(at)
     4f0:	b810e0a8 	swr	s0,-8024(zero)
     4f4:	98f83890 	lwr	t8,14480(a3)
     4f8:	a8e008a8 	swl	zero,2216(a3)
     4fc:	50889830 	0x50889830
     500:	6000b858 	0x6000b858
     504:	c0181080 	lwc0	$24,4224(zero)
     508:	00b09828 	0xb09828
     50c:	6048c000 	0x6048c000
     510:	208018f0 	addi	zero,a0,6384
     514:	30f8b078 	andi	t8,a3,0xb078
     518:	10a8e048 	beq	a1,t0,ffff863c <MVtab2+0xffff75bc>
     51c:	08c830b0 	j	320c2c0 <MVtab2+0x320b240>
     520:	70e0a008 	0x70e0a008
     524:	98401010 	lwr	zero,4112(v0)
     528:	f0e04090 	0xf0e04090
     52c:	8050b828 	lb	s0,-18392(v0)
     530:	e8c870f8 	swc2	$8,28920(a2)
     534:	1870b080 	0x1870b080
     538:	80382898 	lb	t8,10392(at)
     53c:	18b87868 	0x18b87868
     540:	4840c830 	0x4840c830
     544:	e00038e8 	swc0	$0,14568(zero)
     548:	20f0b868 	addi	s0,a3,-18328
     54c:	6820c0c8 	0x6820c0c8
     550:	c8409848 	lwc2	$0,-26552(v0)
     554:	d8d85000 	0xd8d85000
     558:	500000a0 	0x500000a0
     55c:	782888f0 	0x782888f0
     560:	207898d8 	addi	t8,v1,-26408
     564:	38701018 	xori	s0,v1,0x1018
     568:	087868c0 	j	1e1a300 <MVtab2+0x1e19280>
     56c:	90b00810 	lbu	s0,2064(a1)
     570:	6068a850 	0x6068a850
     574:	c0e87070 	lwc0	$8,28784(a3)
     578:	3858b0f0 	xori	t8,v0,0xb0f0
     57c:	20b0f850 	addi	s0,a1,-1968
     580:	b018e0c0 	0xb018e0c0
     584:	08b0a810 	j	2c2a040 <MVtab2+0x2c28fc0>
     588:	e8f81010 	swc2	$24,4112(a3)
     58c:	6880e800 	0x6880e800
     590:	20f07020 	addi	s0,a3,28704
     594:	b8b838e8 	swr	t8,14568(a1)
     598:	50901048 	0x50901048
     59c:	f0d040b0 	0xf0d040b0
     5a0:	f0108810 	0xf0108810
     5a4:	50c01848 	0x50c01848
     5a8:	d83850d8 	0xd83850d8
     5ac:	20904818 	addi	s0,a0,18456
     5b0:	40f800e0 	0x40f800e0
     5b4:	482088e8 	0x482088e8
     5b8:	f0482058 	0xf0482058
     5bc:	80681008 	lb	t0,4104(v1)
     5c0:	20c0e008 	addi	zero,a2,-8184
     5c4:	98f8e000 	lwr	t8,-8192(a3)
     5c8:	b0301068 	0xb0301068
     5cc:	d8b018f0 	0xd8b018f0
     5d0:	c850f8d0 	lwc2	$16,-1840(v0)
     5d4:	80c84808 	lb	t0,18440(a2)
     5d8:	98805078 	lwr	zero,20600(a0)
     5dc:	5098e8c8 	0x5098e8c8
     5e0:	a85810b0 	swl	t8,4272(v0)
     5e4:	e82848d0 	swc2	$8,18640(at)
     5e8:	e870f070 	swc2	$16,-3984(v1)
     5ec:	50b0b010 	0x50b0b010
     5f0:	487820b8 	0x487820b8
     5f4:	e05018b0 	swc0	$16,6320(v0)
     5f8:	00d01038 	0xd01038
     5fc:	701078a0 	0x701078a0
     600:	18d88088 	0x18d88088
     604:	c098f878 	lwc0	$24,-1928(a0)
     608:	a038c0e0 	sb	t8,-16160(at)
     60c:	00887070 	0x887070
     610:	0808b8a8 	j	22e2a0 <MVtab2+0x22d220>
     614:	58a078a0 	0x58a078a0
     618:	f0a82028 	0xf0a82028
     61c:	a8580810 	swl	t8,2064(v0)
     620:	18686830 	0x18686830
     624:	f8884890 	0xf8884890
     628:	80a0d858 	lb	zero,-10152(a1)
     62c:	f078e848 	0xf078e848
     630:	c0c8f8c0 	lwc0	$8,-1856(a2)
     634:	30f068d0 	andi	s0,a3,0x68d0
     638:	28681080 	slti	t0,v1,4224
     63c:	50e0e038 	0x50e0e038
     640:	38782818 	xori	t8,v1,0x2818
     644:	b010b818 	0xb010b818
     648:	b0e0a810 	0xb0e0a810
     64c:	b86888c8 	swr	t0,-30520(v1)
     650:	a8d078c8 	swl	s0,30920(a2)
     654:	e028d010 	swc0	$8,-12272(at)
     658:	70a0c0e0 	0x70a0c0e0
     65c:	4028e878 	0x4028e878
     660:	18e8a850 	0x18e8a850
     664:	58906848 	0x58906848
     668:	c0700070 	lwc0	$16,112(v1)
     66c:	68e0e8a0 	0x68e0e8a0
     670:	70d0b0d8 	0x70d0b0d8
     674:	38e0e0a0 	xori	zero,a3,0xe0a0
     678:	6838b0d8 	0x6838b0d8
     67c:	c018d008 	lwc0	$24,-12280(zero)
     680:	2838f808 	slti	t8,at,-2040
     684:	78b88028 	0x78b88028
     688:	a838b8c0 	swl	t8,-18240(at)
     68c:	886048d8 	lwl	zero,18648(v1)
     690:	08404838 	j	10120e0 <MVtab2+0x1011060>
     694:	10b09010 	beq	a1,s0,fffe46d8 <MVtab2+0xfffe3658>
     698:	80b088d0 	lb	s0,-30512(a1)
     69c:	7810b8e0 	0x7810b8e0
     6a0:	a0d89058 	sb	t8,-28584(a2)
     6a4:	d0c89060 	0xd0c89060
     6a8:	98c8e0d0 	lwr	t0,-7984(a2)
     6ac:	f0780868 	0xf0780868
     6b0:	b870a8c8 	swr	s0,-22328(v1)
     6b4:	704800c0 	0x704800c0
     6b8:	00287888 	0x287888
     6bc:	70289838 	0x70289838
     6c0:	9020e0f0 	lbu	zero,-7952(at)
     6c4:	20c038c8 	addi	zero,a2,14536
     6c8:	108868c0 	beq	a0,t0,1a9cc <MVtab2+0x1994c>
     6cc:	c0000000 	lwc0	$0,0(zero)
     6d0:	08e868f0 	j	3a1a3c0 <MVtab2+0x3a19340>
     6d4:	58c008a8 	0x58c008a8
     6d8:	d8d0b8e0 	0xd8d0b8e0
     6dc:	f0489848 	0xf0489848
     6e0:	a8b8b0d8 	swl	t8,-20264(a1)
     6e4:	30905020 	andi	s0,a0,0x5020
     6e8:	b8d070a0 	swr	s0,28832(a2)
     6ec:	58580890 	0x58580890
     6f0:	90789830 	lbu	t8,-26576(v1)
     6f4:	c8a87008 	lwc2	$8,28680(a1)
     6f8:	a0d8f080 	sb	t8,-3968(a2)
     6fc:	688090f8 	0x688090f8
     700:	40a888f0 	0x40a888f0
     704:	a03888d8 	sb	t8,-30504(at)
     708:	5038c020 	0x5038c020
     70c:	40805020 	0x40805020
     710:	206058c8 	addi	zero,v1,22728
     714:	9848a010 	lwr	t0,-24560(v0)
     718:	80c8a090 	lb	t0,-24432(a2)
     71c:	70107098 	0x70107098
     720:	388838d8 	xori	t0,a0,0x38d8
     724:	0818c090 	j	630240 <MVtab2+0x62f1c0>
     728:	b0c83048 	0xb0c83048
     72c:	2848f078 	slti	t0,v0,-3976
     730:	78a05098 	0x78a05098
     734:	90d8e098 	lbu	t8,-8040(a2)
     738:	2890a058 	slti	s0,a0,-24488
     73c:	b8b8c080 	swr	t8,-16256(a1)
     740:	00c84870 	0xc84870
     744:	d0f89800 	0xd0f89800
     748:	98082810 	lwr	t0,10256(zero)
     74c:	a89840b0 	swl	t8,16560(a0)
     750:	5818e888 	0x5818e888
     754:	2098e8d0 	addi	t8,a0,-5936
     758:	c0f08800 	lwc0	$16,-30720(a3)
     75c:	e8c808d8 	swc2	$8,2264(a2)
     760:	68b840c0 	0x68b840c0
     764:	0860b878 	j	182e1e0 <MVtab2+0x182d160>
     768:	d0501040 	0xd0501040
     76c:	88884808 	lwl	t0,18440(a0)
     770:	70b8f878 	0x70b8f878
     774:	880838e8 	lwl	t0,14568(zero)
     778:	d0601040 	0xd0601040
     77c:	a8703020 	swl	s0,12320(v1)
     780:	b8e04858 	swr	zero,18520(a3)
     784:	80b848a8 	lb	t8,18600(a1)
     788:	e0d8a0e8 	swc0	$24,-24344(a2)
     78c:	40a83098 	0x40a83098
     790:	409810c8 	0x409810c8
     794:	a83890c0 	swl	t8,-28480(at)
     798:	4078a808 	0x4078a808
     79c:	80d81008 	lb	t8,4104(a2)
     7a0:	68208060 	0x68208060
     7a4:	a0588860 	sb	t8,-30624(v0)
     7a8:	38108038 	xori	s0,zero,0x8038
     7ac:	5810d0c8 	0x5810d0c8
     7b0:	1860f020 	blez	v1,ffffc834 <MVtab2+0xffffb7b4>
     7b4:	e8c068a8 	swc2	$0,26792(a2)
     7b8:	2800c028 	slti	zero,zero,-16344
     7bc:	c860b808 	lwc2	$0,-18424(v1)
     7c0:	48d868e8 	0x48d868e8
     7c4:	70f80808 	0x70f80808
     7c8:	f8c09820 	0xf8c09820
     7cc:	00a8e850 	0xa8e850
     7d0:	f8400818 	0xf8400818
     7d4:	502060f0 	0x502060f0
     7d8:	e8305010 	swc2	$16,20496(at)
     7dc:	90c81030 	lbu	t0,4144(a2)
     7e0:	582870e8 	0x582870e8
     7e4:	58a838a0 	0x58a838a0
     7e8:	e81080f8 	swc2	$16,-32520(zero)
     7ec:	3050c8a8 	andi	s0,v0,0xc8a8
     7f0:	9848d8e0 	lwr	t0,-10016(v0)
     7f4:	48d098c0 	0x48d098c0
     7f8:	00e03088 	0xe03088
     7fc:	a8601098 	swl	zero,4248(v1)

00000800 <out_ld_Rdptr>:
     800:	48b8d8f0 	0x48b8d8f0
     804:	00d8c040 	0xd8c040
     808:	7030a098 	0x7030a098
     80c:	28b02020 	slti	s0,a1,8224
     810:	f8c86818 	0xf8c86818
     814:	d8f080b0 	0xd8f080b0
     818:	48e8f0b8 	0x48e8f0b8
     81c:	307830c0 	andi	t8,v1,0x30c0
     820:	40a8a080 	0x40a8a080
     824:	a0a0e8d0 	sb	zero,-5936(a1)
     828:	6878e878 	0x6878e878
     82c:	08b878c8 	j	2e1e320 <MVtab2+0x2e1d2a0>
     830:	40a0c8e0 	0x40a0c8e0
     834:	40a82878 	0x40a82878
     838:	50681000 	0x50681000
     83c:	08789088 	j	1e24220 <MVtab2+0x1e231a0>
     840:	50904818 	0x50904818
     844:	80d8d818 	lb	t8,-10216(a2)
     848:	50104020 	0x50104020
     84c:	c8708090 	lwc2	$16,-32624(v1)
     850:	58187078 	0x58187078
     854:	206848b0 	addi	t0,v1,18608
     858:	1810b838 	0x1810b838
     85c:	18c89898 	0x18c89898
     860:	30308850 	andi	s0,at,0x8850
     864:	f008d8c8 	0xf008d8c8
     868:	f020a870 	0xf020a870
     86c:	303828c0 	andi	t8,at,0x28c0
     870:	e82030e8 	swc2	$0,12520(at)
     874:	e8200058 	swc2	$0,88(at)
     878:	d018f048 	0xd018f048
     87c:	7860f888 	0x7860f888
     880:	e0d008b8 	swc0	$16,2232(a2)
     884:	c0905830 	lwc0	$16,22576(a0)
     888:	908870c0 	lbu	t0,28864(a0)
     88c:	60f0c8a0 	0x60f0c8a0
     890:	b8a01830 	swr	zero,6192(a1)
     894:	d09880b8 	0xd09880b8
     898:	b89090a8 	swr	s0,-28504(a0)
     89c:	f090a0a8 	0xf090a0a8
     8a0:	303018c8 	andi	s0,at,0x18c8
     8a4:	9078d038 	lbu	t8,-12232(v1)
     8a8:	60483058 	0x60483058
     8ac:	50c8f8d0 	0x50c8f8d0
     8b0:	f8288870 	0xf8288870
     8b4:	20080850 	addi	t0,zero,2128
     8b8:	c02820e0 	lwc0	$8,8416(at)
     8bc:	38c0c838 	xori	zero,a2,0xc838
     8c0:	38e8c850 	xori	t0,a3,0xc850
     8c4:	7808b8d8 	0x7808b8d8
     8c8:	e850a880 	swc2	$16,-22400(v0)
     8cc:	20d88868 	addi	t8,a2,-30616
     8d0:	f8a8f808 	0xf8a8f808
     8d4:	c0a8c038 	lwc0	$8,-16328(a1)
     8d8:	f0c0d088 	0xf0c0d088
     8dc:	7830e070 	0x7830e070
     8e0:	a850c060 	swl	s0,-16288(v0)
     8e4:	50787810 	0x50787810
     8e8:	7830a8a8 	0x7830a8a8
     8ec:	a0e08018 	sb	zero,-32744(a3)
     8f0:	4818f8f0 	0x4818f8f0
     8f4:	98a0d038 	lwr	zero,-12232(a1)
     8f8:	c0385880 	lwc0	$24,22656(at)
     8fc:	c08880d0 	lwc0	$8,-32560(a0)
     900:	702840c0 	0x702840c0
     904:	20b05038 	addi	s0,a1,20536
     908:	a8d018a8 	swl	s0,6312(a2)
     90c:	a8f8f088 	swl	t8,-3960(a3)
     910:	602038b8 	0x602038b8
     914:	08881000 	j	2204000 <MVtab2+0x2202f80>
     918:	b0280020 	0xb0280020
     91c:	68a03858 	0x68a03858
     920:	e83800f0 	swc2	$24,240(at)
     924:	b8e85820 	swr	t0,22560(a3)
     928:	b000d8f8 	0xb000d8f8
     92c:	b8281050 	swr	t0,4176(at)
     930:	08d040e0 	j	3410380 <MVtab2+0x340f300>
     934:	48284848 	0x48284848
     938:	90509078 	lbu	s0,-28552(v0)
     93c:	8840b8a0 	lwl	zero,-18272(v0)
     940:	88103068 	lwl	s0,12392(zero)
     944:	e8686848 	swc2	$8,26696(v1)
     948:	d048c0b8 	0xd048c0b8
     94c:	2838e848 	slti	t8,at,-6072
     950:	a05098e8 	sb	s0,-26392(v0)
     954:	f820e028 	0xf820e028
     958:	00a81860 	0xa81860
     95c:	70a09808 	0x70a09808
     960:	20a068d0 	addi	zero,a1,26832
     964:	2018f808 	addi	t8,zero,-2040
     968:	f8907810 	0xf8907810
     96c:	c05898b0 	lwc0	$24,-26448(v0)
     970:	c8a098a0 	lwc2	$0,-26464(a1)
     974:	60a8f010 	0x60a8f010
     978:	f8b018d8 	0xf8b018d8
     97c:	003850f8 	0x3850f8
     980:	60088020 	0x60088020
     984:	c06830d0 	lwc0	$8,12496(v1)
     988:	f0b88050 	0xf0b88050
     98c:	38c00070 	xori	zero,a2,0x70
     990:	b0306038 	0xb0306038
     994:	18381820 	0x18381820
     998:	18605000 	blez	v1,1499c <MVtab2+0x1391c>
     99c:	40703018 	0x40703018
     9a0:	583898e0 	0x583898e0
     9a4:	a0c0b848 	sb	zero,-18360(a2)
     9a8:	f8800808 	0xf8800808
     9ac:	6868c830 	0x6868c830
     9b0:	8888d090 	lwl	t0,-12144(a0)
     9b4:	50288860 	0x50288860
     9b8:	08d0a068 	j	34281a0 <MVtab2+0x3427120>
     9bc:	a0504060 	sb	s0,16480(v0)
     9c0:	b0900838 	0xb0900838
     9c4:	5858d078 	0x5858d078
     9c8:	30f0f060 	andi	s0,a3,0xf060
     9cc:	f8c06880 	0xf8c06880
     9d0:	f8186848 	0xf8186848
     9d4:	4078f8c0 	0x4078f8c0
     9d8:	30c02050 	andi	zero,a2,0x2050
     9dc:	90105060 	lbu	s0,20576(zero)
     9e0:	70b83850 	0x70b83850
     9e4:	f8e80028 	0xf8e80028
     9e8:	f838c020 	0xf838c020
     9ec:	c060f830 	lwc0	$0,-2000(v1)
     9f0:	88e05000 	lwl	zero,20480(a3)
     9f4:	c0806878 	lwc0	$0,26744(a0)
     9f8:	d08000b0 	0xd08000b0
     9fc:	d808c060 	0xd808c060
     a00:	1028b860 	beq	at,t0,fffeeb84 <MVtab2+0xfffedb04>
     a04:	204850c0 	addi	t0,v0,20672
     a08:	68688800 	0x68688800
     a0c:	10a01868 	beqz	a1,6bb0 <MVtab2+0x5b30>
     a10:	30081898 	andi	t0,zero,0x1898
     a14:	78804820 	0x78804820
     a18:	b0706878 	0xb0706878
     a1c:	102090a0 	beqz	at,fffe4ca0 <MVtab2+0xfffe3c20>
     a20:	38f000e8 	xori	s0,a3,0xe8
     a24:	b81810d0 	swr	t8,4304(zero)
     a28:	c8f0c8c8 	lwc2	$16,-14136(a3)
     a2c:	687018d0 	0x687018d0
     a30:	80a8f840 	lb	t0,-1984(a1)
     a34:	987840e0 	lwr	t8,16608(v1)
     a38:	80d078d8 	lb	s0,30936(a2)
     a3c:	10983090 	beq	a0,t8,cc80 <MVtab2+0xbc00>
     a40:	f05090e0 	0xf05090e0
     a44:	30a0c0f8 	andi	zero,a1,0xc0f8
     a48:	00807880 	0x807880
     a4c:	a0e8a8d0 	sb	t0,-22320(a3)
     a50:	707068b8 	0x707068b8
     a54:	08c038b0 	j	300e2c0 <MVtab2+0x300d240>
     a58:	28604048 	slti	zero,v1,16456
     a5c:	68d898d8 	0x68d898d8
     a60:	5098b8d8 	0x5098b8d8
     a64:	20382040 	addi	t8,at,8256
     a68:	f098f0a8 	0xf098f0a8
     a6c:	8808e8a8 	lwl	t0,-5976(zero)
     a70:	80584880 	lb	t8,18560(v0)
     a74:	08c03078 	j	300c1e0 <MVtab2+0x300b160>
     a78:	702090d0 	0x702090d0
     a7c:	c0d810b0 	lwc0	$24,4272(a2)
     a80:	a8a0a858 	swl	zero,-22440(a1)
     a84:	88380840 	lwl	t8,2112(at)
     a88:	0050d868 	0x50d868
     a8c:	405058d0 	0x405058d0
     a90:	4050c818 	0x4050c818
     a94:	78a05048 	0x78a05048
     a98:	38d81838 	xori	t8,a2,0x1838
     a9c:	48284800 	0x48284800
     aa0:	388838c8 	xori	t0,a0,0x38c8
     aa4:	48885848 	0x48885848
     aa8:	88f000b0 	lwl	s0,176(a3)
     aac:	b098c0f8 	0xb098c0f8
     ab0:	e0f04808 	swc0	$16,18440(a3)
     ab4:	70e8c878 	0x70e8c878
     ab8:	10002830 	beqz	zero,ab7c <MVtab2+0x9afc>
     abc:	40482088 	0x40482088
     ac0:	689810f0 	0x689810f0
     ac4:	b8500098 	swr	s0,152(v0)
     ac8:	20b08078 	addi	s0,a1,-32648
     acc:	00a02840 	0xa02840
     ad0:	70285030 	0x70285030
     ad4:	9060a800 	lbu	zero,-22528(v1)
     ad8:	9848b888 	lwr	t0,-18296(v0)
     adc:	5898b830 	0x5898b830
     ae0:	589860d8 	0x589860d8
     ae4:	f0b8c888 	0xf0b8c888
     ae8:	406870e8 	0x406870e8
     aec:	00d0b080 	0xd0b080
     af0:	70f890f8 	0x70f890f8
     af4:	78700078 	0x78700078
     af8:	f0585858 	0xf0585858
     afc:	08f85008 	j	3e14020 <MVtab2+0x3e12fa0>
     b00:	40d8f038 	0x40d8f038
     b04:	389070d0 	xori	s0,a0,0x70d0
     b08:	904810a0 	lbu	t0,4256(v0)
     b0c:	88d8b070 	lwl	t8,-20368(a2)
     b10:	3808a868 	xori	t0,zero,0xa868
     b14:	4828b058 	0x4828b058
     b18:	28781828 	slti	t8,v1,6184
     b1c:	386828a0 	xori	t0,v1,0x28a0
     b20:	e8a01890 	swc2	$0,6288(a1)
     b24:	90e87890 	lbu	t0,30864(a3)
     b28:	706088b0 	0x706088b0
     b2c:	088070b8 	j	201c2e0 <MVtab2+0x201b260>
     b30:	60784070 	0x60784070
     b34:	00b85048 	0xb85048
     b38:	b8509048 	swr	s0,-28600(v0)
     b3c:	78c8a820 	0x78c8a820
     b40:	18009048 	blez	zero,fffe4c64 <MVtab2+0xfffe3be4>
     b44:	18f81898 	0x18f81898
     b48:	48800008 	0x48800008
     b4c:	e0204848 	swc0	$0,18504(at)
     b50:	3070e810 	andi	s0,v1,0xe810
     b54:	f0184020 	0xf0184020
     b58:	e878a8c8 	swc2	$24,-22328(v1)
     b5c:	98700890 	lwr	s0,2192(v1)
     b60:	00787000 	0x787000
     b64:	709048a0 	0x709048a0
     b68:	18d87080 	0x18d87080
     b6c:	e0986888 	swc0	$24,26760(a0)
     b70:	28001090 	slti	zero,zero,4240
     b74:	30f88830 	andi	t8,a3,0x8830
     b78:	405898d0 	0x405898d0
     b7c:	f81070e0 	0xf81070e0
     b80:	b8a828a8 	swr	t0,10408(a1)
     b84:	40f89068 	0x40f89068
     b88:	c8909810 	lwc2	$16,-26608(a0)
     b8c:	a8c0f060 	swl	zero,-4000(a2)
     b90:	4888d888 	0x4888d888
     b94:	0020c070 	0x20c070
     b98:	f0a0f8b8 	0xf0a0f8b8
     b9c:	1030e858 	beq	at,s0,ffffad00 <MVtab2+0xffff9c80>
     ba0:	a01068b0 	sb	s0,26800(zero)
     ba4:	908818f0 	lbu	t0,6384(a0)
     ba8:	b8a00810 	swr	zero,2064(a1)
     bac:	2038b090 	addi	t8,at,-20336
     bb0:	a8a83858 	swl	t0,14424(a1)
     bb4:	5868f8b8 	0x5868f8b8
     bb8:	60208058 	0x60208058
     bbc:	e0f02078 	swc0	$16,8312(a3)
     bc0:	d8880848 	0xd8880848
     bc4:	50687898 	0x50687898
     bc8:	2060e850 	addi	zero,v1,-6064
     bcc:	e81850c8 	swc2	$24,20680(zero)
     bd0:	d0d8b810 	0xd0d8b810
     bd4:	3828d8d0 	xori	t0,at,0xd8d0
     bd8:	80781010 	lb	t8,4112(v1)
     bdc:	50c89068 	0x50c89068
     be0:	a0481888 	sb	t0,6280(v0)
     be4:	b020c078 	0xb020c078
     be8:	88501058 	lwl	s0,4184(v0)
     bec:	d0a010e8 	0xd0a010e8
     bf0:	281890d0 	slti	t8,zero,-28464
     bf4:	201058c0 	addi	s0,zero,22720
     bf8:	30b09818 	andi	s0,a1,0x9818
     bfc:	a0205018 	sb	zero,20504(at)
     c00:	f050a098 	0xf050a098
     c04:	a0805058 	sb	zero,20568(a0)
     c08:	28b8d090 	slti	t8,a1,-12144
     c0c:	30c8c830 	andi	t0,a2,0xc830
     c10:	709068e0 	0x709068e0
     c14:	90e0c808 	lbu	zero,-14328(a3)
     c18:	e0f02098 	swc0	$16,8344(a3)
     c1c:	e8100850 	swc2	$16,2128(zero)
     c20:	b828b8f8 	swr	t0,-18184(at)
     c24:	4008e810 	0x4008e810
     c28:	58580878 	0x58580878
     c2c:	8030f058 	lb	s0,-4008(at)
     c30:	406868f8 	0x406868f8
     c34:	60f0c098 	0x60f0c098
     c38:	d03898f0 	0xd03898f0
     c3c:	8808d818 	lwl	t0,-10216(zero)
     c40:	70a85888 	0x70a85888
     c44:	50e08898 	0x50e08898
     c48:	2818f8d8 	slti	t8,zero,-1832
     c4c:	988860e0 	lwr	t0,24800(a0)
     c50:	40503838 	0x40503838
     c54:	48081840 	0x48081840
     c58:	9018d0d8 	lbu	t8,-12072(zero)
     c5c:	807860a8 	lb	t8,24744(v1)
     c60:	789870e8 	0x789870e8
     c64:	88504860 	lwl	s0,18528(v0)
     c68:	98d048d8 	lwr	s0,18648(a2)
     c6c:	40787830 	0x40787830
     c70:	e848b8b0 	swc2	$8,-18256(v0)
     c74:	30e8c8b8 	andi	t0,a3,0xc8b8
     c78:	78487080 	0x78487080
     c7c:	f8a0a8d8 	0xf8a0a8d8
     c80:	9850b070 	lwr	s0,-20368(v0)
     c84:	30987040 	andi	t8,a0,0x7040
     c88:	28c8e850 	slti	t0,a2,-6064
     c8c:	a038d8c0 	sb	t8,-10048(at)
     c90:	a8482840 	swl	t0,10304(v0)
     c94:	d020e0f0 	0xd020e0f0
     c98:	1868e8f0 	0x1868e8f0
     c9c:	a818f820 	swl	t8,-2016(zero)
     ca0:	509890a0 	0x509890a0
     ca4:	707860f0 	0x707860f0
     ca8:	40a0f8f8 	0x40a0f8f8
     cac:	98307058 	lwr	s0,28760(at)
     cb0:	80e8f0f0 	lb	t0,-3856(a3)
     cb4:	e8a87820 	swc2	$8,30752(a1)
     cb8:	98b06810 	lwr	s0,26640(a1)
     cbc:	5098f0e0 	0x5098f0e0
     cc0:	80103020 	lb	s0,12320(zero)
     cc4:	d80868f8 	0xd80868f8
     cc8:	b8d0d878 	swr	s0,-10120(a2)
     ccc:	50d08038 	0x50d08038
     cd0:	7028b810 	0x7028b810
     cd4:	e0a898f8 	swc0	$8,-26376(a1)
     cd8:	3890a8e0 	xori	s0,a0,0xa8e0
     cdc:	08a85088 	j	2a14220 <MVtab2+0x2a131a0>
     ce0:	98306000 	lwr	s0,24576(at)
     ce4:	b858c018 	swr	t8,-16360(v0)
     ce8:	108000b0 	beqz	a0,fac <out_ld_Rdptr+0x7ac>
     cec:	98286048 	lwr	t0,24648(at)
     cf0:	c0002080 	lwc0	$0,8320(zero)
     cf4:	18f030f8 	0x18f030f8
     cf8:	b07810a8 	0xb07810a8
     cfc:	e04808c8 	swc0	$8,2248(v0)
     d00:	30b070e0 	andi	s0,a1,0x70e0
     d04:	a0089840 	sb	t0,-26560(zero)
     d08:	1010f0e0 	beq	zero,s0,ffffd08c <MVtab2+0xffffc00c>
     d0c:	40908050 	0x40908050
     d10:	b828e8c8 	swr	t0,-5944(at)
     d14:	70f81870 	0x70f81870
     d18:	b0808038 	0xb0808038
     d1c:	289818b8 	slti	t8,a0,6328
     d20:	78684840 	0x78684840
     d24:	c830e000 	lwc2	$16,-8192(at)
     d28:	38e820f0 	xori	t0,a3,0x20f0
     d2c:	b8686820 	swr	t0,26656(v1)
     d30:	c0c8c840 	lwc0	$8,-14272(a2)
     d34:	9848d8d8 	lwr	t0,-10024(v0)
     d38:	50005000 	0x50005000
     d3c:	00a07828 	0xa07828
     d40:	88f02078 	lwl	s0,8312(a3)
     d44:	98d83870 	lwr	t8,14448(a2)
     d48:	10180878 	beq	zero,t8,2f2c <MVtab2+0x1eac>
     d4c:	68c090b0 	0x68c090b0
     d50:	08106068 	j	4181a0 <MVtab2+0x417120>
     d54:	a850c0e8 	swl	s0,-16152(v0)
     d58:	70703858 	0x70703858
     d5c:	b0f020b0 	0xb0f020b0
     d60:	f850b018 	0xf850b018
     d64:	e0c008b0 	swc0	$0,2224(a2)
     d68:	a810e8f8 	swl	s0,-5896(zero)
     d6c:	10106880 	beq	zero,s0,1af70 <MVtab2+0x19ef0>
     d70:	e80020f0 	swc2	$0,8432(zero)
     d74:	7020b8b8 	0x7020b8b8
     d78:	38e85090 	xori	t0,a3,0x5090
     d7c:	1048f0d0 	beq	v0,t0,ffffd0c0 <MVtab2+0xffffc040>
     d80:	40b0f010 	0x40b0f010
     d84:	881050c0 	lwl	s0,20672(zero)
     d88:	1848d838 	0x1848d838
     d8c:	50d82090 	0x50d82090
     d90:	481840f8 	0x481840f8
     d94:	00e04820 	add	t1,a3,zero
     d98:	88e8f048 	lwl	t0,-4024(a3)
     d9c:	20588068 	addi	t8,v0,-32664
     da0:	100820c0 	beq	zero,t0,90a4 <MVtab2+0x8024>
     da4:	e00898f8 	swc0	$8,-26376(zero)
     da8:	e000b030 	swc0	$0,-20432(zero)
     dac:	1068d8b0 	beq	v1,t0,ffff7070 <MVtab2+0xffff5ff0>
     db0:	18f0c850 	0x18f0c850
     db4:	f8d080c8 	0xf8d080c8
     db8:	48089880 	0x48089880
     dbc:	50785098 	0x50785098
     dc0:	e8c8a858 	swc2	$8,-22440(a2)
     dc4:	10b0e828 	beq	a1,s0,ffffae68 <MVtab2+0xffff9de8>
     dc8:	48d0e870 	0x48d0e870
     dcc:	f07050b0 	0xf07050b0
     dd0:	b0104878 	0xb0104878
     dd4:	20b8e050 	addi	t8,a1,-8112
     dd8:	18b000d0 	0x18b000d0
     ddc:	10387010 	beq	at,t8,1ce20 <MVtab2+0x1bda0>
     de0:	78a018d8 	0x78a018d8
     de4:	8088c098 	lb	t0,-16232(a0)
     de8:	f878a038 	0xf878a038
     dec:	c0e00088 	lwc0	$0,136(a3)
     df0:	70700808 	0x70700808
     df4:	b8a858a0 	swr	t0,22688(a1)
     df8:	78a0f0a8 	0x78a0f0a8
     dfc:	2028a858 	addi	t0,at,-22440
     e00:	08101868 	j	4061a0 <MVtab2+0x405120>
     e04:	6830f888 	0x6830f888
     e08:	489080a0 	0x489080a0
     e0c:	d858f078 	0xd858f078
     e10:	e848c0c8 	swc2	$8,-16184(v0)
     e14:	f8c030f0 	0xf8c030f0
     e18:	68d02868 	0x68d02868
     e1c:	108050e0 	beqz	a0,151a0 <MVtab2+0x14120>
     e20:	e0383878 	swc0	$24,14456(at)
     e24:	2818b010 	slti	t8,zero,-20464
     e28:	b818b0e0 	swr	t8,-20256(zero)
     e2c:	a810b868 	swl	s0,-18328(zero)
     e30:	88c8a8d0 	lwl	t0,-22320(a2)
     e34:	78c8e028 	0x78c8e028
     e38:	d01070a0 	0xd01070a0
     e3c:	c0e04028 	lwc0	$0,16424(a3)
     e40:	e87818e8 	swc2	$24,6376(v1)
     e44:	a8505890 	swl	s0,22672(v0)
     e48:	6848c070 	0x6848c070
     e4c:	007068e0 	0x7068e0
     e50:	e8a070d0 	swc2	$0,28880(a1)
     e54:	b0d838e0 	0xb0d838e0
     e58:	e0a06838 	swc0	$0,26680(a1)
     e5c:	b0d8c018 	0xb0d8c018
     e60:	d0082838 	0xd0082838
     e64:	f80878b8 	0xf80878b8
     e68:	8028a838 	lb	t0,-22472(at)
     e6c:	b8c08860 	swr	zero,-30624(a2)
     e70:	48d80840 	0x48d80840
     e74:	483810b0 	0x483810b0
     e78:	901080b0 	lbu	s0,-32592(zero)
     e7c:	88d07810 	lwl	s0,30736(a2)
     e80:	b8e0a0d8 	swr	zero,-24360(a3)
     e84:	9058d0c8 	lbu	t8,-12088(v0)
     e88:	906098c8 	lbu	zero,-26424(v1)
     e8c:	e0d0f078 	swc0	$16,-3976(a2)
     e90:	0868b870 	j	1a2e1c0 <MVtab2+0x1a2d140>
     e94:	a8c87048 	swl	t0,28744(a2)
     e98:	00c00028 	0xc00028
     e9c:	78887028 	0x78887028
     ea0:	98389020 	lwr	t8,-28640(at)
     ea4:	e0f020c0 	swc0	$16,8384(a3)
     ea8:	38c81088 	xori	t0,a2,0x1088
     eac:	68c0c000 	0x68c0c000
     eb0:	000008e8 	0x8e8
     eb4:	68f058c0 	0x68f058c0
     eb8:	08a8d8d0 	j	2a36340 <MVtab2+0x2a352c0>
     ebc:	b8e0f048 	swr	zero,-4024(a3)
     ec0:	9848a8b8 	lwr	t0,-22344(v0)
     ec4:	b0d83090 	0xb0d83090
     ec8:	5020b8d0 	0x5020b8d0
     ecc:	70a05858 	0x70a05858
     ed0:	08909078 	j	24241e0 <MVtab2+0x2423160>
     ed4:	9830c8a8 	lwr	s0,-14168(at)
     ed8:	7008a0d8 	0x7008a0d8
     edc:	f0806880 	0xf0806880
     ee0:	90f840a8 	lbu	t8,16552(a3)
     ee4:	88f0a038 	lwl	s0,-24520(a3)
     ee8:	88d85038 	lwl	t8,20536(a2)
     eec:	c0204080 	lwc0	$0,16512(at)
     ef0:	50202060 	0x50202060
     ef4:	58c89848 	0x58c89848
     ef8:	a01080c8 	sb	s0,-32568(zero)
     efc:	a0907010 	sb	s0,28688(a0)
     f00:	70983888 	0x70983888
     f04:	38d80818 	xori	t8,a2,0x818
     f08:	c090b0c8 	lwc0	$16,-20280(a0)
     f0c:	30482848 	andi	t0,v0,0x2848
     f10:	f07878a0 	0xf07878a0
     f14:	509890d8 	0x509890d8
     f18:	e0982890 	swc0	$24,10384(a0)
     f1c:	a058b8b8 	sb	t8,-18248(v0)
     f20:	c08000c8 	lwc0	$0,200(a0)
     f24:	4870d0f8 	0x4870d0f8
     f28:	98009808 	lwr	zero,-26616(zero)
     f2c:	2810a898 	slti	s0,zero,-22376
     f30:	40b05818 	0x40b05818
     f34:	e8882098 	swc2	$8,8344(a0)
     f38:	e8d0c0f0 	swc2	$16,-16144(a2)
     f3c:	8800e8c8 	lwl	zero,-5944(zero)
     f40:	08d868b8 	j	361a2e0 <MVtab2+0x3619260>
     f44:	40c00860 	0x40c00860
     f48:	b878d050 	swr	t8,-12208(v1)
     f4c:	10408888 	beqz	v0,fffe3170 <MVtab2+0xfffe20f0>
     f50:	480870b8 	0x480870b8
     f54:	f8788808 	0xf8788808
     f58:	38e8d060 	xori	t0,a3,0xd060
     f5c:	1040a870 	beqz	v0,fffeb120 <MVtab2+0xfffea0a0>
     f60:	3020b8e0 	andi	zero,at,0xb8e0
     f64:	485880b8 	0x485880b8
     f68:	48a8e0d8 	0x48a8e0d8
     f6c:	a0e840a8 	sb	t0,16552(a3)
     f70:	30984098 	andi	t8,a0,0x4098
     f74:	10c8a838 	beq	a2,t0,fffeb058 <MVtab2+0xfffe9fd8>
     f78:	90c04078 	lbu	zero,16504(a2)
     f7c:	a80880d8 	swl	t0,-32552(zero)
     f80:	10086820 	beq	zero,t0,1b004 <MVtab2+0x19f84>
     f84:	8060a058 	lb	zero,-24488(v1)
     f88:	88603810 	lwl	zero,14352(v1)
     f8c:	80385810 	lb	t8,22544(at)
     f90:	d0c81860 	0xd0c81860
     f94:	f020e8c0 	0xf020e8c0
     f98:	68a82800 	0x68a82800
     f9c:	c028c860 	lwc0	$8,-14240(at)
     fa0:	b80848d8 	swr	t0,18648(zero)
     fa4:	68e870f8 	0x68e870f8
     fa8:	0808f8c0 	j	23e300 <MVtab2+0x23d280>
     fac:	982000a8 	lwr	zero,168(at)
     fb0:	e850f840 	swc2	$16,-1984(v0)
     fb4:	08185020 	j	614080 <MVtab2+0x613000>
     fb8:	60f0e830 	0x60f0e830
     fbc:	501090c8 	0x501090c8
     fc0:	10305828 	beq	at,s0,17064 <MVtab2+0x15fe4>
     fc4:	70e858a8 	0x70e858a8
     fc8:	38a0e810 	xori	zero,a1,0xe810
     fcc:	80f83050 	lb	t8,12368(a3)
     fd0:	c8a89848 	lwc2	$8,-26552(a1)
     fd4:	d8e048d0 	0xd8e048d0
     fd8:	98c000e0 	lwr	zero,224(a2)
     fdc:	3088a860 	andi	t0,a0,0xa860
     fe0:	10980000 	beq	a0,t8,fe4 <out_ld_Rdptr+0x7e4>
     fe4:	00000000 	sll	zero,zero,0x0
	...
     ff0:	0000e0e3 	0xe0e3
     ff4:	e3e30000 	swc0	$3,0(ra)
	...

00001000 <inPMV>:
    1000:	0000002d 	0x2d
    1004:	000000cf 	0xcf
    1008:	00000046 	0x46
    100c:	00000029 	0x29
    1010:	00000004 	sllv	zero,zero,zero
    1014:	000000b4 	0xb4
    1018:	00000078 	0x78
    101c:	000000d8 	0xd8

00001020 <inmvfs>:
    1020:	000000e8 	0xe8
    1024:	000000c8 	0xc8
    1028:	00000020 	add	zero,zero,zero
    102c:	000000f0 	0xf0

00001030 <outPMV>:
    1030:	0000061e 	0x61e
    1034:	000000ce 	0xce
    1038:	00000046 	0x46
    103c:	00000029 	0x29
    1040:	0000061e 	0x61e
    1044:	000000ce 	0xce
    1048:	00000078 	0x78
    104c:	000000d8 	0xd8

00001050 <outmvfs>:
    1050:	00000000 	sll	zero,zero,0x0
    1054:	000000c8 	0xc8
    1058:	00000000 	sll	zero,zero,0x0
    105c:	000000f0 	0xf0

00001060 <MVtab0>:
    1060:	ff000303 	0xff000303
    1064:	02020202 	0x2020202
    1068:	01010101 	0x1010101
    106c:	01010101 	0x1010101

00001070 <MVtab1>:
    1070:	ff00ff00 	0xff00ff00
    1074:	ff000706 	0xff000706
    1078:	06060506 	0x6060506
    107c:	04050405 	0x4050405

00001080 <MVtab2>:
    1080:	10090f09 	beq	zero,t1,4ca8 <MVtab2+0x3c28>
    1084:	0e090d09 	jal	8243424 <MVtab2+0x82423a4>
    1088:	0c090b09 	jal	242c24 <MVtab2+0x241ba4>
    108c:	0a080a08 	j	8202820 <MVtab2+0x82017a0>
    1090:	09080908 	j	4202420 <MVtab2+0x42013a0>
    1094:	08080808 	j	202020 <MVtab2+0x200fa0>
