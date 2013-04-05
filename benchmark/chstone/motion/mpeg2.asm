
mpeg2.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <read>:
  
p1 = s1;
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
   0:	18c00027 	blez	a2,a0 <read+0xa0>
   4:	00c01021 	move	v0,a2
 */


/* initialize buffer, call once before first getbits or showbits */
int
read (unsigned char *s1, const unsigned char *s2, int n)
   8:	00065882 	srl	t3,a2,0x2
   c:	000b6080 	sll	t4,t3,0x2
  10:	1180001c 	beqz	t4,84 <read+0x84>
  14:	24c3ffff 	addiu	v1,a2,-1
  18:	00a43825 	or	a3,a1,a0
  1c:	2cc90004 	sltiu	t1,a2,4
  20:	30e70003 	andi	a3,a3,0x3
  24:	24a60004 	addiu	a2,a1,4
  28:	24880004 	addiu	t0,a0,4
  2c:	39290001 	xori	t1,t1,0x1
  30:	2ce70001 	sltiu	a3,a3,1
  34:	00c4302b 	sltu	a2,a2,a0
  38:	0105402b 	sltu	t0,t0,a1
  3c:	01273824 	and	a3,t1,a3
  40:	00c83025 	or	a2,a2,t0
  44:	00e63024 	and	a2,a3,a2
  48:	10c0000e 	beqz	a2,84 <read+0x84>
  4c:	00803821 	move	a3,a0
  50:	00a04021 	move	t0,a1
  54:	00003021 	move	a2,zero
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
    {
      *p1 = *p2;
  58:	8d0a0000 	lw	t2,0(t0)
  5c:	24c60001 	addiu	a2,a2,1
  60:	00cb482b 	sltu	t1,a2,t3
  64:	acea0000 	sw	t2,0(a3)
  68:	25080004 	addiu	t0,t0,4
  6c:	1520fffa 	bnez	t1,58 <read+0x58>
  70:	24e70004 	addiu	a3,a3,4
  74:	008c2021 	addu	a0,a0,t4
  78:	00ac2821 	addu	a1,a1,t4
  7c:	104c0008 	beq	v0,t4,a0 <read+0xa0>
  80:	006c1823 	subu	v1,v1,t4
  84:	90a70000 	lbu	a3,0(a1)
  
p1 = s1;
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
  88:	2463ffff 	addiu	v1,v1,-1
 */


/* initialize buffer, call once before first getbits or showbits */
int
read (unsigned char *s1, const unsigned char *s2, int n)
  8c:	24660001 	addiu	a2,v1,1
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
    {
      *p1 = *p2;
  90:	a0870000 	sb	a3,0(a0)
      
p1++;
      
p2++;
  94:	24a50001 	addiu	a1,a1,1
  
p1 = s1;
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
  98:	1cc0fffa 	bgtz	a2,84 <read+0x84>
  9c:	24840001 	addiu	a0,a0,1
p2++;
    
}
  
return n;
}
  a0:	03e00008 	jr	ra
  a4:	00000000 	nop

000000a8 <Fill_Buffer>:
void
Fill_Buffer ()
{
  int Buffer_Level;
  a8:	3c050000 	lui	a1,0x0
  ac:	3c070000 	lui	a3,0x0
  b0:	00001021 	move	v0,zero
  b4:	24a50000 	addiu	a1,a1,0
  b8:	24e70000 	addiu	a3,a3,0
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
    {
      *p1 = *p2;
  bc:	24060800 	li	a2,2048
  
return n;
}
void
Fill_Buffer ()
{
  c0:	00e21821 	addu	v1,a3,v0
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
    {
      *p1 = *p2;
  c4:	8c640000 	lw	a0,0(v1)
  
return n;
}
void
Fill_Buffer ()
{
  c8:	00a21821 	addu	v1,a1,v0
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
    {
      *p1 = *p2;
  cc:	24420004 	addiu	v0,v0,4
  d0:	1446fffb 	bne	v0,a2,c0 <Fill_Buffer+0x18>
  d4:	ac640000 	sw	a0,0(v1)

  Buffer_Level = read (ld_Rdbfr, inRdbfr, 2048);
  ld_Rdptr = ld_Rdbfr;

  if (System_Stream_Flag)
    ld_Rdmax -= 2048;
  d8:	8f820000 	lw	v0,0(gp)
  dc:	00000000 	nop
  e0:	10400005 	beqz	v0,f8 <Fill_Buffer+0x50>
  e4:	af850000 	sw	a1,0(gp)

  e8:	8f820000 	lw	v0,0(gp)
  ec:	00000000 	nop
  f0:	2442f800 	addiu	v0,v0,-2048
  f4:	af820000 	sw	v0,0(gp)
  f8:	03e00008 	jr	ra
  fc:	00000000 	nop

00000100 <Show_Bits>:
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}

 100:	8f820000 	lw	v0,0(gp)
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 104:	00042023 	negu	a0,a0

 108:	03e00008 	jr	ra
 10c:	00821006 	srlv	v0,v0,a0

00000110 <Flush_Buffer>:
  int Incnt;

  ld_Bfr <<= N;

  Incnt = ld_Incnt -= N;

 110:	8f890000 	lw	t1,0(gp)
     int N;
{
  int Incnt;

  ld_Bfr <<= N;

 114:	8f820000 	lw	v0,0(gp)
  Incnt = ld_Incnt -= N;

 118:	01244823 	subu	t1,t1,a0
     int N;
{
  int Incnt;

  ld_Bfr <<= N;

 11c:	00822004 	sllv	a0,v0,a0
  Incnt = ld_Incnt -= N;

  if (Incnt <= 24)
    {
 120:	29220019 	slti	v0,t1,25
     int N;
{
  int Incnt;

  ld_Bfr <<= N;

 124:	af840000 	sw	a0,0(gp)
  Incnt = ld_Incnt -= N;

  if (Incnt <= 24)
    {
 128:	1040003d 	beqz	v0,220 <Flush_Buffer+0x110>
 12c:	af890000 	sw	t1,0(gp)
      if (ld_Rdptr < ld_Rdbfr + 2044)
	{
 130:	8f820000 	lw	v0,0(gp)
 134:	3c030000 	lui	v1,0x0
 138:	246307fc 	addiu	v1,v1,2044
 13c:	0043182b 	sltu	v1,v0,v1
 140:	14600039 	bnez	v1,228 <Flush_Buffer+0x118>
 144:	24030018 	li	v1,24

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 148:	24080018 	li	t0,24
 14c:	01094023 	subu	t0,t0,t1
 150:	000878c2 	srl	t7,t0,0x3
 154:	00095823 	negu	t3,t1
 158:	3c050000 	lui	a1,0x0
 15c:	256b0010 	addiu	t3,t3,16
 160:	000f78c0 	sll	t7,t7,0x3
 164:	24a50000 	addiu	a1,a1,0
 168:	3c0a0000 	lui	t2,0x0
 16c:	3c070000 	lui	a3,0x0

  Buffer_Level = read (ld_Rdbfr, inRdbfr, 2048);
  ld_Rdptr = ld_Rdbfr;

  if (System_Stream_Flag)
    ld_Rdmax -= 2048;
 170:	8f8d0000 	lw	t5,0(gp)

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 174:	016f5823 	subu	t3,t3,t7
 178:	254a0800 	addiu	t2,t2,2048
 17c:	24e70000 	addiu	a3,a3,0
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
    {
      *p1 = *p2;
 180:	24060800 	li	a2,2048

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 184:	00a06021 	move	t4,a1
  Buffer_Level = read (ld_Rdbfr, inRdbfr, 2048);
  ld_Rdptr = ld_Rdbfr;

  if (System_Stream_Flag)
    ld_Rdmax -= 2048;

 188:	0800006c 	j	1b0 <Flush_Buffer+0xa0>
 18c:	3c0e0000 	lui	t6,0x0
      else
	{
	  do
	    {
	      if (ld_Rdptr >= ld_Rdbfr + 2048)
		Fill_Buffer ();
 190:	24420001 	addiu	v0,v0,1
	      ld_Bfr |= *ld_Rdptr++ << (24 - Incnt);
	      Incnt += 8;
 194:	90630000 	lbu	v1,0(v1)
 198:	af820000 	sw	v0,0(gp)
 19c:	01031804 	sllv	v1,v1,t0
 1a0:	00832025 	or	a0,a0,v1
 1a4:	2508fff8 	addiu	t0,t0,-8
	    }
	  while (Incnt <= 24);
	}
 1a8:	110b001a 	beq	t0,t3,214 <Flush_Buffer+0x104>
 1ac:	af840000 	sw	a0,0(gp)
      else
	{
	  do
	    {
	      if (ld_Rdptr >= ld_Rdbfr + 2048)
		Fill_Buffer ();
 1b0:	004a182b 	sltu	v1,v0,t2
 1b4:	1460fff6 	bnez	v1,190 <Flush_Buffer+0x80>
 1b8:	00401821 	move	v1,v0
 1bc:	00001021 	move	v0,zero

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 1c0:	00e21821 	addu	v1,a3,v0
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
    {
      *p1 = *p2;
 1c4:	8c640000 	lw	a0,0(v1)

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 1c8:	00a21821 	addu	v1,a1,v0
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
    {
      *p1 = *p2;
 1cc:	24420004 	addiu	v0,v0,4
 1d0:	1446fffb 	bne	v0,a2,1c0 <Flush_Buffer+0xb0>
 1d4:	ac640000 	sw	a0,0(v1)

  Buffer_Level = read (ld_Rdbfr, inRdbfr, 2048);
  ld_Rdptr = ld_Rdbfr;

  if (System_Stream_Flag)
    ld_Rdmax -= 2048;
 1d8:	11a00025 	beqz	t5,270 <Flush_Buffer+0x160>
 1dc:	af8c0000 	sw	t4,0(gp)

 1e0:	8f820000 	lw	v0,0(gp)
 1e4:	01801821 	move	v1,t4
 1e8:	2442f800 	addiu	v0,v0,-2048
 1ec:	af820000 	sw	v0,0(gp)
	  do
	    {
	      if (ld_Rdptr >= ld_Rdbfr + 2048)
		Fill_Buffer ();
	      ld_Bfr |= *ld_Rdptr++ << (24 - Incnt);
	      Incnt += 8;
 1f0:	90630000 	lbu	v1,0(v1)
  Buffer_Level = read (ld_Rdbfr, inRdbfr, 2048);
  ld_Rdptr = ld_Rdbfr;

  if (System_Stream_Flag)
    ld_Rdmax -= 2048;

 1f4:	8f840000 	lw	a0,0(gp)
	  do
	    {
	      if (ld_Rdptr >= ld_Rdbfr + 2048)
		Fill_Buffer ();
	      ld_Bfr |= *ld_Rdptr++ << (24 - Incnt);
	      Incnt += 8;
 1f8:	01031804 	sllv	v1,v1,t0
  Buffer_Level = read (ld_Rdbfr, inRdbfr, 2048);
  ld_Rdptr = ld_Rdbfr;

  if (System_Stream_Flag)
    ld_Rdmax -= 2048;

 1fc:	25c20001 	addiu	v0,t6,1
	  do
	    {
	      if (ld_Rdptr >= ld_Rdbfr + 2048)
		Fill_Buffer ();
	      ld_Bfr |= *ld_Rdptr++ << (24 - Incnt);
	      Incnt += 8;
 200:	00832025 	or	a0,a0,v1
 204:	2508fff8 	addiu	t0,t0,-8
 208:	af820000 	sw	v0,0(gp)
	    }
	  while (Incnt <= 24);
	}
 20c:	150bffe8 	bne	t0,t3,1b0 <Flush_Buffer+0xa0>
 210:	af840000 	sw	a0,0(gp)

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 214:	25290008 	addiu	t1,t1,8
 218:	012f4821 	addu	t1,t1,t7
	      Incnt += 8;
	    }
	  while (Incnt <= 24);
	}
      ld_Incnt = Incnt;
    }
 21c:	af890000 	sw	t1,0(gp)
 220:	03e00008 	jr	ra
 224:	00000000 	nop

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 228:	00691823 	subu	v1,v1,t1
 22c:	000338c2 	srl	a3,v1,0x3
 230:	00093023 	negu	a2,t1
 234:	24c60010 	addiu	a2,a2,16
 238:	000738c0 	sll	a3,a3,0x3
 23c:	00c73023 	subu	a2,a2,a3
      if (ld_Rdptr < ld_Rdbfr + 2044)
	{
	  do
	    {
	      ld_Bfr |= *ld_Rdptr++ << (24 - Incnt);
	      Incnt += 8;
 240:	90450000 	lbu	a1,0(v0)
 244:	24420001 	addiu	v0,v0,1
 248:	00652804 	sllv	a1,a1,v1
 24c:	00852025 	or	a0,a0,a1
 250:	2463fff8 	addiu	v1,v1,-8
 254:	af840000 	sw	a0,0(gp)
	    }
	  while (Incnt <= 24);
	}
 258:	1466fff9 	bne	v1,a2,240 <Flush_Buffer+0x130>
 25c:	af820000 	sw	v0,0(gp)

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 260:	25290008 	addiu	t1,t1,8
 264:	01274821 	addu	t1,t1,a3
	      Incnt += 8;
	    }
	  while (Incnt <= 24);
	}
      ld_Incnt = Incnt;
    }
 268:	03e00008 	jr	ra
 26c:	af890000 	sw	t1,0(gp)

  Buffer_Level = read (ld_Rdbfr, inRdbfr, 2048);
  ld_Rdptr = ld_Rdbfr;

  if (System_Stream_Flag)
    ld_Rdmax -= 2048;
 270:	8f840000 	lw	a0,0(gp)
 274:	25c20001 	addiu	v0,t6,1
 278:	08000065 	j	194 <Flush_Buffer+0x84>
 27c:	01801821 	move	v1,t4

00000280 <Get_Bits1>:
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 280:	8f820000 	lw	v0,0(gp)
/* return next bit (could be made faster than Get_Bits(1)) */

unsigned int
Get_Bits1 ()
{
  return Get_Bits (1);
 284:	27bdffe0 	addiu	sp,sp,-32
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 288:	000217c2 	srl	v0,v0,0x1f
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 28c:	24040001 	li	a0,1
/* return next bit (could be made faster than Get_Bits(1)) */

unsigned int
Get_Bits1 ()
{
  return Get_Bits (1);
 290:	afbf001c 	sw	ra,28(sp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 294:	0c000000 	jal	0 <read>
 298:	afa20010 	sw	v0,16(sp)
unsigned int
Get_Bits1 ()
{
  return Get_Bits (1);
}

 29c:	8fbf001c 	lw	ra,28(sp)
 2a0:	8fa20010 	lw	v0,16(sp)
 2a4:	03e00008 	jr	ra
 2a8:	27bd0020 	addiu	sp,sp,32

000002ac <Get_Bits>:
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 2ac:	8f830000 	lw	v1,0(gp)
 2b0:	00041023 	negu	v0,a0

unsigned int
Get_Bits (N)
     int N;
{
  unsigned int Val;
 2b4:	27bdffe0 	addiu	sp,sp,-32
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 2b8:	00431006 	srlv	v0,v1,v0

unsigned int
Get_Bits (N)
     int N;
{
  unsigned int Val;
 2bc:	afbf001c 	sw	ra,28(sp)

  Val = Show_Bits (N);
  Flush_Buffer (N);

 2c0:	0c000000 	jal	0 <read>
 2c4:	afa20010 	sw	v0,16(sp)
  return Val;
}
 2c8:	8fbf001c 	lw	ra,28(sp)
 2cc:	8fa20010 	lw	v0,16(sp)
 2d0:	03e00008 	jr	ra
 2d4:	27bd0020 	addiu	sp,sp,32

000002d8 <Get_motion_code>:
 *
 */

int
Get_motion_code ()
{
 2d8:	27bdffe0 	addiu	sp,sp,-32
 2dc:	afb00014 	sw	s0,20(sp)
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 2e0:	8f900000 	lw	s0,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 2e4:	24040001 	li	a0,1
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 2e8:	001087c2 	srl	s0,s0,0x1f
 2ec:	afbf001c 	sw	ra,28(sp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 2f0:	0c000000 	jal	0 <read>
 2f4:	afb10018 	sw	s1,24(sp)
  int code;

  if (Get_Bits1 ())
 2f8:	1600001f 	bnez	s0,378 <Get_motion_code+0xa0>
 2fc:	00000000 	nop
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 300:	8f900000 	lw	s0,0(gp)
 304:	00000000 	nop
 308:	001085c2 	srl	s0,s0,0x17
    {
      return 0;
    }

  if ((code = Show_Bits (9)) >= 64)
 30c:	2a020040 	slti	v0,s0,64
 310:	1040001f 	beqz	v0,390 <Get_motion_code+0xb8>
 314:	2a020018 	slti	v0,s0,24
      Flush_Buffer (MVtab0[code][1]);

      return Get_Bits1 ()? -MVtab0[code][0] : MVtab0[code][0];
    }

  if (code >= 24)
 318:	10400031 	beqz	v0,3e0 <Get_motion_code+0x108>
 31c:	3c020000 	lui	v0,0x0
      Flush_Buffer (MVtab1[code][1]);

      return Get_Bits1 ()? -MVtab1[code][0] : MVtab1[code][0];
    }

  if ((code -= 12) < 0)
 320:	2610fff4 	addiu	s0,s0,-12
 324:	06000014 	bltz	s0,378 <Get_motion_code+0xa0>
 328:	3c020000 	lui	v0,0x0
    return 0;

  Flush_Buffer (MVtab2[code][1]);
 32c:	00108040 	sll	s0,s0,0x1
 330:	24420000 	addiu	v0,v0,0
 334:	02028021 	addu	s0,s0,v0
 338:	82040001 	lb	a0,1(s0)
 33c:	0c000000 	jal	0 <read>
 340:	00000000 	nop
 344:	8f910000 	lw	s1,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 348:	24040001 	li	a0,1
 34c:	0c000000 	jal	0 <read>
 350:	00118fc2 	srl	s1,s1,0x1f
  return Get_Bits1 ()? -MVtab2[code][0] : MVtab2[code][0];
 354:	1220001c 	beqz	s1,3c8 <Get_motion_code+0xf0>
 358:	00000000 	nop
 35c:	82020000 	lb	v0,0(s0)
}
 360:	8fbf001c 	lw	ra,28(sp)

  if ((code -= 12) < 0)
    return 0;

  Flush_Buffer (MVtab2[code][1]);
  return Get_Bits1 ()? -MVtab2[code][0] : MVtab2[code][0];
 364:	00021023 	negu	v0,v0
}
 368:	8fb10018 	lw	s1,24(sp)
 36c:	8fb00014 	lw	s0,20(sp)
 370:	03e00008 	jr	ra
 374:	27bd0020 	addiu	sp,sp,32
 378:	8fbf001c 	lw	ra,28(sp)

      return Get_Bits1 ()? -MVtab1[code][0] : MVtab1[code][0];
    }

  if ((code -= 12) < 0)
    return 0;
 37c:	00001021 	move	v0,zero

  Flush_Buffer (MVtab2[code][1]);
  return Get_Bits1 ()? -MVtab2[code][0] : MVtab2[code][0];
}
 380:	8fb10018 	lw	s1,24(sp)
 384:	8fb00014 	lw	s0,20(sp)
 388:	03e00008 	jr	ra
 38c:	27bd0020 	addiu	sp,sp,32
      return 0;
    }

  if ((code = Show_Bits (9)) >= 64)
    {
      code >>= 6;
 390:	00108183 	sra	s0,s0,0x6
      Flush_Buffer (MVtab0[code][1]);
 394:	3c020000 	lui	v0,0x0
 398:	24420000 	addiu	v0,v0,0
 39c:	00108040 	sll	s0,s0,0x1
    }

  if ((code -= 12) < 0)
    return 0;

  Flush_Buffer (MVtab2[code][1]);
 3a0:	02028021 	addu	s0,s0,v0
 3a4:	82040001 	lb	a0,1(s0)
 3a8:	0c000000 	jal	0 <read>
 3ac:	00000000 	nop
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 3b0:	8f910000 	lw	s1,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 3b4:	24040001 	li	a0,1
 3b8:	0c000000 	jal	0 <read>
 3bc:	00118fc2 	srl	s1,s1,0x1f
  return Get_Bits1 ()? -MVtab2[code][0] : MVtab2[code][0];
 3c0:	1620ffe6 	bnez	s1,35c <Get_motion_code+0x84>
 3c4:	00000000 	nop
}
 3c8:	8fbf001c 	lw	ra,28(sp)

  if ((code -= 12) < 0)
    return 0;

  Flush_Buffer (MVtab2[code][1]);
  return Get_Bits1 ()? -MVtab2[code][0] : MVtab2[code][0];
 3cc:	82020000 	lb	v0,0(s0)
}
 3d0:	8fb10018 	lw	s1,24(sp)
 3d4:	8fb00014 	lw	s0,20(sp)
 3d8:	03e00008 	jr	ra
 3dc:	27bd0020 	addiu	sp,sp,32
      return Get_Bits1 ()? -MVtab0[code][0] : MVtab0[code][0];
    }

  if (code >= 24)
    {
      code >>= 3;
 3e0:	001080c3 	sra	s0,s0,0x3
      Flush_Buffer (MVtab1[code][1]);
 3e4:	00108040 	sll	s0,s0,0x1
 3e8:	080000cd 	j	334 <Get_motion_code+0x5c>
 3ec:	24420000 	addiu	v0,v0,0

000003f0 <motion_vector.clone.1>:
}

/* get and decode motion vector and differential motion vector 
   for one prediction */
void
motion_vector (PMV, dmvector, h_r_size, v_r_size, dmv, mvscale,
 3f0:	27bdffd8 	addiu	sp,sp,-40
 3f4:	afb0001c 	sw	s0,28(sp)
 3f8:	afbf0024 	sw	ra,36(sp)
 3fc:	afb10020 	sw	s1,32(sp)
  int motion_code;
  int motion_residual;

  /* horizontal component */
  /* ISO/IEC 13818-2 Table B-10 */
  motion_code = Get_motion_code ();
 400:	0c000000 	jal	0 <read>
 404:	00808021 	move	s0,a0

  motion_residual = (h_r_size != 0
		     && motion_code != 0) ? Get_Bits (h_r_size) : 0;
 408:	14400011 	bnez	v0,450 <motion_vector.clone.1+0x60>
 40c:	00000000 	nop
{
  int lim, vec;

  r_size = r_size % 32;
  lim = 16 << r_size;
  vec = full_pel_vector ? (*pred >> 1) : (*pred);
 410:	8e020000 	lw	v0,0(s0)
  if (dmv)
    dmvector[0] = Get_dmvector ();


  /* vertical component */
  motion_code = Get_motion_code ();
 414:	0c000000 	jal	0 <read>
 418:	ae020000 	sw	v0,0(s0)
  motion_residual = (v_r_size != 0
		     && motion_code != 0) ? Get_Bits (v_r_size) : 0;
 41c:	14400021 	bnez	v0,4a4 <motion_vector.clone.1+0xb4>
 420:	00000000 	nop

  if (mvscale)
    PMV[1] >>= 1;		/* DIV 2 */
 424:	8e020004 	lw	v0,4(s0)
 428:	26030004 	addiu	v1,s0,4
 42c:	00021043 	sra	v0,v0,0x1
 430:	ae020004 	sw	v0,4(s0)
    PMV[1] <<= 1;

  if (dmv)
    dmvector[1] = Get_dmvector ();

}
 434:	8fbf0024 	lw	ra,36(sp)

  decode_motion_vector (&PMV[1], v_r_size, motion_code, motion_residual,
			full_pel_vector);

  if (mvscale)
    PMV[1] <<= 1;
 438:	00021040 	sll	v0,v0,0x1

  if (dmv)
    dmvector[1] = Get_dmvector ();

}
 43c:	8fb10020 	lw	s1,32(sp)
 440:	8fb0001c 	lw	s0,28(sp)

  decode_motion_vector (&PMV[1], v_r_size, motion_code, motion_residual,
			full_pel_vector);

  if (mvscale)
    PMV[1] <<= 1;
 444:	ac620000 	sw	v0,0(v1)

  if (dmv)
    dmvector[1] = Get_dmvector ();

}
 448:	03e00008 	jr	ra
 44c:	27bd0028 	addiu	sp,sp,40
 450:	afa20010 	sw	v0,16(sp)
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 454:	93910000 	lbu	s1,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 458:	0c000000 	jal	0 <read>
 45c:	240400c8 	li	a0,200

  r_size = r_size % 32;
  lim = 16 << r_size;
  vec = full_pel_vector ? (*pred >> 1) : (*pred);

  if (motion_code > 0)
 460:	8fa20010 	lw	v0,16(sp)
{
  int lim, vec;

  r_size = r_size % 32;
  lim = 16 << r_size;
  vec = full_pel_vector ? (*pred >> 1) : (*pred);
 464:	8e030000 	lw	v1,0(s0)

  if (motion_code > 0)
 468:	18400028 	blez	v0,50c <motion_vector.clone.1+0x11c>
 46c:	00000000 	nop
    {
      vec += ((motion_code - 1) << r_size) + motion_residual + 1;
 470:	26310001 	addiu	s1,s1,1
 474:	2442ffff 	addiu	v0,v0,-1
 478:	02238821 	addu	s1,s1,v1
 47c:	00021200 	sll	v0,v0,0x8
 480:	02221021 	addu	v0,s1,v0
      if (vec >= lim)
 484:	28431000 	slti	v1,v0,4096
 488:	1460ffe2 	bnez	v1,414 <motion_vector.clone.1+0x24>
 48c:	00000000 	nop
	vec -= lim + lim;
 490:	2442e000 	addiu	v0,v0,-8192
  if (dmv)
    dmvector[0] = Get_dmvector ();


  /* vertical component */
  motion_code = Get_motion_code ();
 494:	0c000000 	jal	0 <read>
 498:	ae020000 	sw	v0,0(s0)
  motion_residual = (v_r_size != 0
		     && motion_code != 0) ? Get_Bits (v_r_size) : 0;
 49c:	1040ffe1 	beqz	v0,424 <motion_vector.clone.1+0x34>
 4a0:	00000000 	nop
 4a4:	afa20010 	sw	v0,16(sp)
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 4a8:	93910000 	lbu	s1,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 4ac:	0c000000 	jal	0 <read>
 4b0:	240400c8 	li	a0,200

  if (mvscale)
    PMV[1] >>= 1;		/* DIV 2 */
 4b4:	8e040004 	lw	a0,4(s0)

  r_size = r_size % 32;
  lim = 16 << r_size;
  vec = full_pel_vector ? (*pred >> 1) : (*pred);

  if (motion_code > 0)
 4b8:	8fa20010 	lw	v0,16(sp)
  motion_code = Get_motion_code ();
  motion_residual = (v_r_size != 0
		     && motion_code != 0) ? Get_Bits (v_r_size) : 0;

  if (mvscale)
    PMV[1] >>= 1;		/* DIV 2 */
 4bc:	00042043 	sra	a0,a0,0x1
 4c0:	26030004 	addiu	v1,s0,4

  r_size = r_size % 32;
  lim = 16 << r_size;
  vec = full_pel_vector ? (*pred >> 1) : (*pred);

  if (motion_code > 0)
 4c4:	1840001b 	blez	v0,534 <motion_vector.clone.1+0x144>
 4c8:	ae040004 	sw	a0,4(s0)
    {
      vec += ((motion_code - 1) << r_size) + motion_residual + 1;
 4cc:	26310001 	addiu	s1,s1,1
 4d0:	2442ffff 	addiu	v0,v0,-1
 4d4:	02248821 	addu	s1,s1,a0
 4d8:	00021200 	sll	v0,v0,0x8
 4dc:	02221021 	addu	v0,s1,v0
      if (vec >= lim)
 4e0:	28441000 	slti	a0,v0,4096
 4e4:	1480ffd3 	bnez	a0,434 <motion_vector.clone.1+0x44>
 4e8:	00000000 	nop
	vec -= lim + lim;
 4ec:	2442e000 	addiu	v0,v0,-8192
    PMV[1] <<= 1;

  if (dmv)
    dmvector[1] = Get_dmvector ();

}
 4f0:	8fbf0024 	lw	ra,36(sp)

  decode_motion_vector (&PMV[1], v_r_size, motion_code, motion_residual,
			full_pel_vector);

  if (mvscale)
    PMV[1] <<= 1;
 4f4:	00021040 	sll	v0,v0,0x1

  if (dmv)
    dmvector[1] = Get_dmvector ();

}
 4f8:	8fb10020 	lw	s1,32(sp)
 4fc:	8fb0001c 	lw	s0,28(sp)

  decode_motion_vector (&PMV[1], v_r_size, motion_code, motion_residual,
			full_pel_vector);

  if (mvscale)
    PMV[1] <<= 1;
 500:	ac620000 	sw	v0,0(v1)

  if (dmv)
    dmvector[1] = Get_dmvector ();

}
 504:	03e00008 	jr	ra
 508:	27bd0028 	addiu	sp,sp,40
      if (vec >= lim)
	vec -= lim + lim;
    }
  else if (motion_code < 0)
    {
      vec -= ((-motion_code - 1) << r_size) + motion_residual + 1;
 50c:	00021027 	nor	v0,zero,v0
 510:	00021200 	sll	v0,v0,0x8
 514:	00511021 	addu	v0,v0,s1
 518:	00021027 	nor	v0,zero,v0
 51c:	00431021 	addu	v0,v0,v1
      if (vec < -lim)
 520:	2843f000 	slti	v1,v0,-4096
 524:	1060ffbb 	beqz	v1,414 <motion_vector.clone.1+0x24>
 528:	00000000 	nop
	vec += lim + lim;
 52c:	08000105 	j	414 <motion_vector.clone.1+0x24>
 530:	24422000 	addiu	v0,v0,8192
      if (vec >= lim)
	vec -= lim + lim;
    }
  else if (motion_code < 0)
    {
      vec -= ((-motion_code - 1) << r_size) + motion_residual + 1;
 534:	00021027 	nor	v0,zero,v0
 538:	00021200 	sll	v0,v0,0x8
 53c:	00511021 	addu	v0,v0,s1
 540:	00021027 	nor	v0,zero,v0
 544:	00441021 	addu	v0,v0,a0
      if (vec < -lim)
 548:	2844f000 	slti	a0,v0,-4096
 54c:	1080ffb9 	beqz	a0,434 <motion_vector.clone.1+0x44>
 550:	00000000 	nop
	vec += lim + lim;
 554:	0800010d 	j	434 <motion_vector.clone.1+0x44>
 558:	24422000 	addiu	v0,v0,8192

0000055c <Get_dmvector>:
}

/* get differential motion vector (for dual prime prediction) */
int
Get_dmvector ()
{
 55c:	27bdffe8 	addiu	sp,sp,-24
 560:	afb00010 	sw	s0,16(sp)
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 564:	8f900000 	lw	s0,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 568:	24040001 	li	a0,1
 56c:	afbf0014 	sw	ra,20(sp)
 570:	0c000000 	jal	0 <read>
 574:	001087c2 	srl	s0,s0,0x1f

  if (Get_Bits (1))
 578:	16000005 	bnez	s0,590 <Get_dmvector+0x34>
 57c:	00001021 	move	v0,zero
    }
  else
    {
      return 0;
    }
}
 580:	8fbf0014 	lw	ra,20(sp)
 584:	8fb00010 	lw	s0,16(sp)
 588:	03e00008 	jr	ra
 58c:	27bd0018 	addiu	sp,sp,24
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 590:	8f900000 	lw	s0,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 594:	24040001 	li	a0,1
 598:	0c000000 	jal	0 <read>
 59c:	001087c2 	srl	s0,s0,0x1f
Get_dmvector ()
{

  if (Get_Bits (1))
    {
      return Get_Bits (1) ? -1 : 1;
 5a0:	12000006 	beqz	s0,5bc <Get_dmvector+0x60>
 5a4:	24020001 	li	v0,1
    }
  else
    {
      return 0;
    }
}
 5a8:	8fbf0014 	lw	ra,20(sp)
Get_dmvector ()
{

  if (Get_Bits (1))
    {
      return Get_Bits (1) ? -1 : 1;
 5ac:	2402ffff 	li	v0,-1
    }
  else
    {
      return 0;
    }
}
 5b0:	8fb00010 	lw	s0,16(sp)
 5b4:	03e00008 	jr	ra
 5b8:	27bd0018 	addiu	sp,sp,24
 5bc:	8fbf0014 	lw	ra,20(sp)
 5c0:	8fb00010 	lw	s0,16(sp)
 5c4:	03e00008 	jr	ra
 5c8:	27bd0018 	addiu	sp,sp,24

000005cc <motion_vector>:
     int h_r_size;
     int v_r_size;
     int dmv;			/* MPEG-2 only: get differential motion vectors */
     int mvscale;		/* MPEG-2 only: field vector in frame pic */
     int full_pel_vector;	/* MPEG-1 only */
{
 5cc:	27bdffc8 	addiu	sp,sp,-56
 5d0:	afb5002c 	sw	s5,44(sp)
 5d4:	afb40028 	sw	s4,40(sp)
 5d8:	afb30024 	sw	s3,36(sp)
 5dc:	afb20020 	sw	s2,32(sp)
 5e0:	afb1001c 	sw	s1,28(sp)
 5e4:	afb00018 	sw	s0,24(sp)
  int motion_code;
  int motion_residual;

  /* horizontal component */
  /* ISO/IEC 13818-2 Table B-10 */
  motion_code = Get_motion_code ();
 5e8:	afa60014 	sw	a2,20(sp)
     int h_r_size;
     int v_r_size;
     int dmv;			/* MPEG-2 only: get differential motion vectors */
     int mvscale;		/* MPEG-2 only: field vector in frame pic */
     int full_pel_vector;	/* MPEG-1 only */
{
 5ec:	afbf0034 	sw	ra,52(sp)
 5f0:	afb60030 	sw	s6,48(sp)
 5f4:	00808021 	move	s0,a0
 5f8:	00a08821 	move	s1,a1
 5fc:	8fb40048 	lw	s4,72(sp)
 600:	8fb5004c 	lw	s5,76(sp)
 604:	8fb20050 	lw	s2,80(sp)
  int motion_code;
  int motion_residual;

  /* horizontal component */
  /* ISO/IEC 13818-2 Table B-10 */
  motion_code = Get_motion_code ();
 608:	0c000000 	jal	0 <read>
 60c:	00e09821 	move	s3,a3

  motion_residual = (h_r_size != 0
 610:	8fa60014 	lw	a2,20(sp)
 614:	00000000 	nop
 618:	10c00003 	beqz	a2,628 <motion_vector+0x5c>
 61c:	00000000 	nop
		     && motion_code != 0) ? Get_Bits (h_r_size) : 0;
 620:	1440008e 	bnez	v0,85c <motion_vector+0x290>
 624:	00061823 	negu	v1,a2

  /* horizontal component */
  /* ISO/IEC 13818-2 Table B-10 */
  motion_code = Get_motion_code ();

  motion_residual = (h_r_size != 0
 628:	0000b021 	move	s6,zero
     int r_size, motion_code, motion_residual;
     int full_pel_vector;	/* MPEG-1 (ISO/IEC 11172-1) support */
{
  int lim, vec;

  r_size = r_size % 32;
 62c:	3c038000 	lui	v1,0x8000
 630:	2463001f 	addiu	v1,v1,31
 634:	00c33024 	and	a2,a2,v1
 638:	04c00084 	bltz	a2,84c <motion_vector+0x280>
 63c:	2403ffe0 	li	v1,-32
  lim = 16 << r_size;
 640:	24040010 	li	a0,16
  vec = full_pel_vector ? (*pred >> 1) : (*pred);
 644:	1240005c 	beqz	s2,7b8 <motion_vector+0x1ec>
 648:	00c42004 	sllv	a0,a0,a2
 64c:	8e030000 	lw	v1,0(s0)

  if (motion_code > 0)
 650:	1840005c 	blez	v0,7c4 <motion_vector+0x1f8>
 654:	00031843 	sra	v1,v1,0x1
    {
      vec += ((motion_code - 1) << r_size) + motion_residual + 1;
 658:	2442ffff 	addiu	v0,v0,-1
 65c:	00c23004 	sllv	a2,v0,a2
 660:	24c60001 	addiu	a2,a2,1
 664:	00d6b021 	addu	s6,a2,s6
 668:	00761821 	addu	v1,v1,s6
      if (vec >= lim)
 66c:	0064102a 	slt	v0,v1,a0
 670:	10400064 	beqz	v0,804 <motion_vector+0x238>
 674:	00000000 	nop
    {
      vec -= ((-motion_code - 1) << r_size) + motion_residual + 1;
      if (vec < -lim)
	vec += lim + lim;
    }
  *pred = full_pel_vector ? (vec << 1) : vec;
 678:	12400002 	beqz	s2,684 <motion_vector+0xb8>
 67c:	00000000 	nop
 680:	00031840 	sll	v1,v1,0x1
		     && motion_code != 0) ? Get_Bits (h_r_size) : 0;

  decode_motion_vector (&PMV[0], h_r_size, motion_code, motion_residual,
			full_pel_vector);

  if (dmv)
 684:	16800069 	bnez	s4,82c <motion_vector+0x260>
 688:	ae030000 	sw	v1,0(s0)
    dmvector[0] = Get_dmvector ();


  /* vertical component */
  motion_code = Get_motion_code ();
 68c:	0c000000 	jal	0 <read>
 690:	00000000 	nop
  motion_residual = (v_r_size != 0
 694:	12600003 	beqz	s3,6a4 <motion_vector+0xd8>
 698:	0000b021 	move	s6,zero
		     && motion_code != 0) ? Get_Bits (v_r_size) : 0;
 69c:	14400078 	bnez	v0,880 <motion_vector+0x2b4>
 6a0:	00131823 	negu	v1,s3

  if (mvscale)
 6a4:	16a00036 	bnez	s5,780 <motion_vector+0x1b4>
 6a8:	3c038000 	lui	v1,0x8000
     int r_size, motion_code, motion_residual;
     int full_pel_vector;	/* MPEG-1 (ISO/IEC 11172-1) support */
{
  int lim, vec;

  r_size = r_size % 32;
 6ac:	2463001f 	addiu	v1,v1,31
 6b0:	02639824 	and	s3,s3,v1
 6b4:	0660003b 	bltz	s3,7a4 <motion_vector+0x1d8>
 6b8:	26040004 	addiu	a0,s0,4
  lim = 16 << r_size;
 6bc:	24050010 	li	a1,16
  vec = full_pel_vector ? (*pred >> 1) : (*pred);
 6c0:	1240001f 	beqz	s2,740 <motion_vector+0x174>
 6c4:	02652804 	sllv	a1,a1,s3
 6c8:	8c830000 	lw	v1,0(a0)

  if (motion_code > 0)
 6cc:	1840001f 	blez	v0,74c <motion_vector+0x180>
 6d0:	00031843 	sra	v1,v1,0x1
    {
      vec += ((motion_code - 1) << r_size) + motion_residual + 1;
 6d4:	2442ffff 	addiu	v0,v0,-1
 6d8:	02629804 	sllv	s3,v0,s3
 6dc:	26730001 	addiu	s3,s3,1
 6e0:	0276b021 	addu	s6,s3,s6
 6e4:	00761821 	addu	v1,v1,s6
      if (vec >= lim)
 6e8:	0065102a 	slt	v0,v1,a1
 6ec:	10400042 	beqz	v0,7f8 <motion_vector+0x22c>
 6f0:	00000000 	nop
    {
      vec -= ((-motion_code - 1) << r_size) + motion_residual + 1;
      if (vec < -lim)
	vec += lim + lim;
    }
  *pred = full_pel_vector ? (vec << 1) : vec;
 6f4:	12400002 	beqz	s2,700 <motion_vector+0x134>
 6f8:	00000000 	nop
 6fc:	00031840 	sll	v1,v1,0x1
    PMV[1] >>= 1;		/* DIV 2 */

  decode_motion_vector (&PMV[1], v_r_size, motion_code, motion_residual,
			full_pel_vector);

  if (mvscale)
 700:	12a00003 	beqz	s5,710 <motion_vector+0x144>
 704:	ac830000 	sw	v1,0(a0)
    PMV[1] <<= 1;
 708:	00031840 	sll	v1,v1,0x1
 70c:	ac830000 	sw	v1,0(a0)

  if (dmv)
 710:	1680003f 	bnez	s4,810 <motion_vector+0x244>
 714:	24040001 	li	a0,1
    dmvector[1] = Get_dmvector ();

}
 718:	8fbf0034 	lw	ra,52(sp)
 71c:	8fb60030 	lw	s6,48(sp)
 720:	8fb5002c 	lw	s5,44(sp)
 724:	8fb40028 	lw	s4,40(sp)
 728:	8fb30024 	lw	s3,36(sp)
 72c:	8fb20020 	lw	s2,32(sp)
 730:	8fb1001c 	lw	s1,28(sp)
 734:	8fb00018 	lw	s0,24(sp)
 738:	03e00008 	jr	ra
 73c:	27bd0038 	addiu	sp,sp,56
{
  int lim, vec;

  r_size = r_size % 32;
  lim = 16 << r_size;
  vec = full_pel_vector ? (*pred >> 1) : (*pred);
 740:	8c830000 	lw	v1,0(a0)

  if (motion_code > 0)
 744:	1c40ffe3 	bgtz	v0,6d4 <motion_vector+0x108>
 748:	00000000 	nop
    {
      vec += ((motion_code - 1) << r_size) + motion_residual + 1;
      if (vec >= lim)
	vec -= lim + lim;
    }
  else if (motion_code < 0)
 74c:	1040ffe9 	beqz	v0,6f4 <motion_vector+0x128>
 750:	00021027 	nor	v0,zero,v0
    {
      vec -= ((-motion_code - 1) << r_size) + motion_residual + 1;
 754:	02629804 	sllv	s3,v0,s3
 758:	02d3b021 	addu	s6,s6,s3
 75c:	0016b027 	nor	s6,zero,s6
 760:	00761821 	addu	v1,v1,s6
      if (vec < -lim)
 764:	00051023 	negu	v0,a1
 768:	0062102a 	slt	v0,v1,v0
 76c:	1040ffe1 	beqz	v0,6f4 <motion_vector+0x128>
 770:	00000000 	nop
	vec += lim + lim;
 774:	00052840 	sll	a1,a1,0x1
 778:	080001bd 	j	6f4 <motion_vector+0x128>
 77c:	00651821 	addu	v1,v1,a1
  motion_code = Get_motion_code ();
  motion_residual = (v_r_size != 0
		     && motion_code != 0) ? Get_Bits (v_r_size) : 0;

  if (mvscale)
    PMV[1] >>= 1;		/* DIV 2 */
 780:	8e030004 	lw	v1,4(s0)
 784:	00000000 	nop
 788:	00031843 	sra	v1,v1,0x1
 78c:	ae030004 	sw	v1,4(s0)
     int r_size, motion_code, motion_residual;
     int full_pel_vector;	/* MPEG-1 (ISO/IEC 11172-1) support */
{
  int lim, vec;

  r_size = r_size % 32;
 790:	3c038000 	lui	v1,0x8000
 794:	2463001f 	addiu	v1,v1,31
 798:	02639824 	and	s3,s3,v1
 79c:	0661ffc7 	bgez	s3,6bc <motion_vector+0xf0>
 7a0:	26040004 	addiu	a0,s0,4
 7a4:	2673ffff 	addiu	s3,s3,-1
 7a8:	2403ffe0 	li	v1,-32
 7ac:	02639825 	or	s3,s3,v1
 7b0:	080001af 	j	6bc <motion_vector+0xf0>
 7b4:	26730001 	addiu	s3,s3,1
  lim = 16 << r_size;
  vec = full_pel_vector ? (*pred >> 1) : (*pred);
 7b8:	8e030000 	lw	v1,0(s0)

  if (motion_code > 0)
 7bc:	1c40ffa6 	bgtz	v0,658 <motion_vector+0x8c>
 7c0:	00000000 	nop
    {
      vec += ((motion_code - 1) << r_size) + motion_residual + 1;
      if (vec >= lim)
	vec -= lim + lim;
    }
  else if (motion_code < 0)
 7c4:	1040ffac 	beqz	v0,678 <motion_vector+0xac>
 7c8:	00021027 	nor	v0,zero,v0
    {
      vec -= ((-motion_code - 1) << r_size) + motion_residual + 1;
 7cc:	00c23004 	sllv	a2,v0,a2
 7d0:	02c6b021 	addu	s6,s6,a2
 7d4:	0016b027 	nor	s6,zero,s6
 7d8:	00761821 	addu	v1,v1,s6
      if (vec < -lim)
 7dc:	00041023 	negu	v0,a0
 7e0:	0062102a 	slt	v0,v1,v0
 7e4:	1040ffa4 	beqz	v0,678 <motion_vector+0xac>
 7e8:	00000000 	nop
	vec += lim + lim;
 7ec:	00042040 	sll	a0,a0,0x1
 7f0:	0800019e 	j	678 <motion_vector+0xac>
 7f4:	00641821 	addu	v1,v1,a0

  if (motion_code > 0)
    {
      vec += ((motion_code - 1) << r_size) + motion_residual + 1;
      if (vec >= lim)
	vec -= lim + lim;
 7f8:	00052840 	sll	a1,a1,0x1
 7fc:	080001bd 	j	6f4 <motion_vector+0x128>
 800:	00651823 	subu	v1,v1,a1
 804:	00042040 	sll	a0,a0,0x1
 808:	0800019e 	j	678 <motion_vector+0xac>
 80c:	00641823 	subu	v1,v1,a0
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 810:	8f900000 	lw	s0,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 814:	0c000000 	jal	0 <read>
 818:	001087c2 	srl	s0,s0,0x1f
/* get differential motion vector (for dual prime prediction) */
int
Get_dmvector ()
{

  if (Get_Bits (1))
 81c:	16000029 	bnez	s0,8c4 <motion_vector+0x2f8>
 820:	00001021 	move	v0,zero

  if (mvscale)
    PMV[1] <<= 1;

  if (dmv)
    dmvector[1] = Get_dmvector ();
 824:	080001c6 	j	718 <motion_vector+0x14c>
 828:	ae220004 	sw	v0,4(s1)
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 82c:	8f960000 	lw	s6,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 830:	24040001 	li	a0,1
 834:	0c000000 	jal	0 <read>
 838:	0016b7c2 	srl	s6,s6,0x1f
 83c:	16c00018 	bnez	s6,8a0 <motion_vector+0x2d4>
 840:	00001021 	move	v0,zero

  decode_motion_vector (&PMV[0], h_r_size, motion_code, motion_residual,
			full_pel_vector);

  if (dmv)
    dmvector[0] = Get_dmvector ();
 844:	080001a3 	j	68c <motion_vector+0xc0>
 848:	ae220000 	sw	v0,0(s1)
     int r_size, motion_code, motion_residual;
     int full_pel_vector;	/* MPEG-1 (ISO/IEC 11172-1) support */
{
  int lim, vec;

  r_size = r_size % 32;
 84c:	24c6ffff 	addiu	a2,a2,-1
 850:	00c33025 	or	a2,a2,v1
 854:	08000190 	j	640 <motion_vector+0x74>
 858:	24c60001 	addiu	a2,a2,1
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 85c:	8f960000 	lw	s6,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 860:	00c02021 	move	a0,a2
 864:	afa20010 	sw	v0,16(sp)
 868:	0c000000 	jal	0 <read>
 86c:	0076b006 	srlv	s6,s6,v1

  /* horizontal component */
  /* ISO/IEC 13818-2 Table B-10 */
  motion_code = Get_motion_code ();

  motion_residual = (h_r_size != 0
 870:	8fa20010 	lw	v0,16(sp)
 874:	8fa60014 	lw	a2,20(sp)
 878:	0800018c 	j	630 <motion_vector+0x64>
 87c:	3c038000 	lui	v1,0x8000
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 880:	8f960000 	lw	s6,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 884:	02602021 	move	a0,s3
 888:	afa20010 	sw	v0,16(sp)
 88c:	0c000000 	jal	0 <read>
 890:	0076b006 	srlv	s6,s6,v1
    dmvector[0] = Get_dmvector ();


  /* vertical component */
  motion_code = Get_motion_code ();
  motion_residual = (v_r_size != 0
 894:	8fa20010 	lw	v0,16(sp)
 898:	080001a9 	j	6a4 <motion_vector+0xd8>
 89c:	00000000 	nop
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 8a0:	8f960000 	lw	s6,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 8a4:	24040001 	li	a0,1
 8a8:	0c000000 	jal	0 <read>
 8ac:	0016b7c2 	srl	s6,s6,0x1f
    {
      return Get_Bits (1) ? -1 : 1;
 8b0:	12c0000f 	beqz	s6,8f0 <motion_vector+0x324>
 8b4:	24020001 	li	v0,1
 8b8:	2402ffff 	li	v0,-1

  decode_motion_vector (&PMV[0], h_r_size, motion_code, motion_residual,
			full_pel_vector);

  if (dmv)
    dmvector[0] = Get_dmvector ();
 8bc:	080001a3 	j	68c <motion_vector+0xc0>
 8c0:	ae220000 	sw	v0,0(s1)
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 8c4:	8f900000 	lw	s0,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 8c8:	24040001 	li	a0,1
 8cc:	0c000000 	jal	0 <read>
 8d0:	001087c2 	srl	s0,s0,0x1f
 8d4:	12000004 	beqz	s0,8e8 <motion_vector+0x31c>
 8d8:	24020001 	li	v0,1
 8dc:	2402ffff 	li	v0,-1

  if (mvscale)
    PMV[1] <<= 1;

  if (dmv)
    dmvector[1] = Get_dmvector ();
 8e0:	080001c6 	j	718 <motion_vector+0x14c>
 8e4:	ae220004 	sw	v0,4(s1)
 8e8:	080001c6 	j	718 <motion_vector+0x14c>
 8ec:	ae220004 	sw	v0,4(s1)

  decode_motion_vector (&PMV[0], h_r_size, motion_code, motion_residual,
			full_pel_vector);

  if (dmv)
    dmvector[0] = Get_dmvector ();
 8f0:	080001a3 	j	68c <motion_vector+0xc0>
 8f4:	ae220000 	sw	v0,0(s1)

000008f8 <motion_vectors>:
		mvscale)
     int PMV[2][2][2];
     int dmvector[2];
     int motion_vertical_field_select[2][2];
     int s, motion_vector_count, mv_format, h_r_size, v_r_size, dmv, mvscale;
{
 8f8:	27bdffb0 	addiu	sp,sp,-80
  if (motion_vector_count == 1)
 8fc:	8fa30060 	lw	v1,96(sp)
 900:	24020001 	li	v0,1
		mvscale)
     int PMV[2][2][2];
     int dmvector[2];
     int motion_vertical_field_select[2][2];
     int s, motion_vector_count, mv_format, h_r_size, v_r_size, dmv, mvscale;
{
 904:	afb60040 	sw	s6,64(sp)
 908:	afb5003c 	sw	s5,60(sp)
 90c:	afb40038 	sw	s4,56(sp)
 910:	afb30034 	sw	s3,52(sp)
 914:	afb20030 	sw	s2,48(sp)
 918:	afb1002c 	sw	s1,44(sp)
 91c:	afb00028 	sw	s0,40(sp)
 920:	00808821 	move	s1,a0
 924:	afbf004c 	sw	ra,76(sp)
 928:	afbe0048 	sw	s8,72(sp)
 92c:	afb70044 	sw	s7,68(sp)
 930:	00a0b021 	move	s6,a1
 934:	8fa40064 	lw	a0,100(sp)
 938:	8fb50068 	lw	s5,104(sp)
 93c:	8fb4006c 	lw	s4,108(sp)
 940:	8fb20070 	lw	s2,112(sp)
 944:	8fb30074 	lw	s3,116(sp)
  if (motion_vector_count == 1)
 948:	1062002d 	beq	v1,v0,a00 <motion_vectors+0x108>
 94c:	00e08021 	move	s0,a3
 950:	afa60020 	sw	a2,32(sp)
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 954:	8f9e0000 	lw	s8,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 958:	0c000000 	jal	0 <read>
 95c:	24040001 	li	a0,1
      PMV[1][s][0] = PMV[0][s][0];
      PMV[1][s][1] = PMV[0][s][1];
    }
  else
    {
      motion_vertical_field_select[0][s] = Get_Bits (1);
 960:	8fa60020 	lw	a2,32(sp)
 964:	0010b880 	sll	s7,s0,0x2
 968:	00d7b821 	addu	s7,a2,s7
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 96c:	001ef7c2 	srl	s8,s8,0x1f

      motion_vector (PMV[0][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
 970:	001020c0 	sll	a0,s0,0x3
      PMV[1][s][0] = PMV[0][s][0];
      PMV[1][s][1] = PMV[0][s][1];
    }
  else
    {
      motion_vertical_field_select[0][s] = Get_Bits (1);
 974:	aefe0000 	sw	s8,0(s7)

      motion_vector (PMV[0][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
 978:	02c02821 	move	a1,s6
 97c:	02a03021 	move	a2,s5
 980:	02803821 	move	a3,s4
 984:	02242021 	addu	a0,s1,a0
 988:	afb20010 	sw	s2,16(sp)
 98c:	afb30014 	sw	s3,20(sp)
 990:	0c000000 	jal	0 <read>
 994:	afa00018 	sw	zero,24(sp)
 998:	8f9e0000 	lw	s8,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 99c:	24040001 	li	a0,1
 9a0:	0c000000 	jal	0 <read>
 9a4:	26100002 	addiu	s0,s0,2
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 9a8:	001ef7c2 	srl	s8,s8,0x1f
		     0);

      motion_vertical_field_select[1][s] = Get_Bits (1);

      motion_vector (PMV[1][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
 9ac:	001020c0 	sll	a0,s0,0x3
      motion_vertical_field_select[0][s] = Get_Bits (1);

      motion_vector (PMV[0][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
		     0);

      motion_vertical_field_select[1][s] = Get_Bits (1);
 9b0:	aefe0008 	sw	s8,8(s7)

      motion_vector (PMV[1][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
 9b4:	02242021 	addu	a0,s1,a0
 9b8:	afb20060 	sw	s2,96(sp)
 9bc:	afb30064 	sw	s3,100(sp)
 9c0:	02c02821 	move	a1,s6
 9c4:	02a03021 	move	a2,s5
 9c8:	02803821 	move	a3,s4
 9cc:	afa00068 	sw	zero,104(sp)
		     0);
    }
}
 9d0:	8fbf004c 	lw	ra,76(sp)
 9d4:	8fbe0048 	lw	s8,72(sp)
 9d8:	8fb70044 	lw	s7,68(sp)
 9dc:	8fb60040 	lw	s6,64(sp)
 9e0:	8fb5003c 	lw	s5,60(sp)
 9e4:	8fb40038 	lw	s4,56(sp)
 9e8:	8fb30034 	lw	s3,52(sp)
 9ec:	8fb20030 	lw	s2,48(sp)
 9f0:	8fb1002c 	lw	s1,44(sp)
 9f4:	8fb00028 	lw	s0,40(sp)
      motion_vector (PMV[0][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
		     0);

      motion_vertical_field_select[1][s] = Get_Bits (1);

      motion_vector (PMV[1][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
 9f8:	08000000 	j	0 <read>
 9fc:	27bd0050 	addiu	sp,sp,80
     int motion_vertical_field_select[2][2];
     int s, motion_vector_count, mv_format, h_r_size, v_r_size, dmv, mvscale;
{
  if (motion_vector_count == 1)
    {
      if (mv_format == MV_FIELD && !dmv)
 a00:	14800003 	bnez	a0,a10 <motion_vectors+0x118>
 a04:	00000000 	nop
 a08:	1240001d 	beqz	s2,a80 <motion_vectors+0x188>
 a0c:	24040001 	li	a0,1
	{
	  motion_vertical_field_select[1][s] =
	    motion_vertical_field_select[0][s] = Get_Bits (1);
	}

      motion_vector (PMV[0][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
 a10:	001080c0 	sll	s0,s0,0x3
 a14:	0230b821 	addu	s7,s1,s0
 a18:	02e02021 	move	a0,s7
 a1c:	02c02821 	move	a1,s6
 a20:	02a03021 	move	a2,s5
 a24:	02803821 	move	a3,s4
 a28:	afb20010 	sw	s2,16(sp)
 a2c:	afb30014 	sw	s3,20(sp)
 a30:	afa00018 	sw	zero,24(sp)
 a34:	0c000000 	jal	0 <read>
 a38:	26310010 	addiu	s1,s1,16
		     0);

      /* update other motion vector predictors */
      PMV[1][s][0] = PMV[0][s][0];
 a3c:	8ee20000 	lw	v0,0(s7)
 a40:	02308021 	addu	s0,s1,s0
 a44:	ae020000 	sw	v0,0(s0)
      PMV[1][s][1] = PMV[0][s][1];
 a48:	8ee20004 	lw	v0,4(s7)
      motion_vertical_field_select[1][s] = Get_Bits (1);

      motion_vector (PMV[1][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
		     0);
    }
}
 a4c:	8fbf004c 	lw	ra,76(sp)
      motion_vector (PMV[0][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
		     0);

      /* update other motion vector predictors */
      PMV[1][s][0] = PMV[0][s][0];
      PMV[1][s][1] = PMV[0][s][1];
 a50:	ae020004 	sw	v0,4(s0)
      motion_vertical_field_select[1][s] = Get_Bits (1);

      motion_vector (PMV[1][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
		     0);
    }
}
 a54:	8fbe0048 	lw	s8,72(sp)
 a58:	8fb70044 	lw	s7,68(sp)
 a5c:	8fb60040 	lw	s6,64(sp)
 a60:	8fb5003c 	lw	s5,60(sp)
 a64:	8fb40038 	lw	s4,56(sp)
 a68:	8fb30034 	lw	s3,52(sp)
 a6c:	8fb20030 	lw	s2,48(sp)
 a70:	8fb1002c 	lw	s1,44(sp)
 a74:	8fb00028 	lw	s0,40(sp)
 a78:	03e00008 	jr	ra
 a7c:	27bd0050 	addiu	sp,sp,80
 a80:	8f9e0000 	lw	s8,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 a84:	0c000000 	jal	0 <read>
 a88:	afa60020 	sw	a2,32(sp)
  if (motion_vector_count == 1)
    {
      if (mv_format == MV_FIELD && !dmv)
	{
	  motion_vertical_field_select[1][s] =
	    motion_vertical_field_select[0][s] = Get_Bits (1);
 a8c:	8fa60020 	lw	a2,32(sp)
 a90:	0010b880 	sll	s7,s0,0x2
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 a94:	001ef7c2 	srl	s8,s8,0x1f
 a98:	00d73021 	addu	a2,a2,s7
 a9c:	acde0000 	sw	s8,0(a2)
{
  if (motion_vector_count == 1)
    {
      if (mv_format == MV_FIELD && !dmv)
	{
	  motion_vertical_field_select[1][s] =
 aa0:	08000284 	j	a10 <motion_vectors+0x118>
 aa4:	acde0008 	sw	s8,8(a2)

00000aa8 <Initialize_Buffer>:

void
Initialize_Buffer ()
{
  ld_Incnt = 0;
  ld_Rdptr = ld_Rdbfr + 2048;
 aa8:	3c020000 	lui	v0,0x0
 aac:	24420800 	addiu	v0,v0,2048
 ab0:	af820000 	sw	v0,0(gp)
  ld_Rdmax = ld_Rdptr;
 ab4:	af820000 	sw	v0,0(gp)
  ld_Bfr = 68157440;
  Flush_Buffer (0);		/* fills valid data into bfr */
 ab8:	00002021 	move	a0,zero
Initialize_Buffer ()
{
  ld_Incnt = 0;
  ld_Rdptr = ld_Rdbfr + 2048;
  ld_Rdmax = ld_Rdptr;
  ld_Bfr = 68157440;
 abc:	3c020410 	lui	v0,0x410
#include "motion.c"

void
Initialize_Buffer ()
{
  ld_Incnt = 0;
 ac0:	af800000 	sw	zero,0(gp)
  ld_Rdptr = ld_Rdbfr + 2048;
  ld_Rdmax = ld_Rdptr;
  ld_Bfr = 68157440;
  Flush_Buffer (0);		/* fills valid data into bfr */
 ac4:	08000000 	j	0 <read>
 ac8:	af820000 	sw	v0,0(gp)

00000acc <main>:
}

int
main ()
{
 acc:	27bdffc0 	addiu	sp,sp,-64
	  dmvector[i] = 0;
	  for (j = 0; j < 2; j++)
	    {
	      motion_vertical_field_select[i][j] = inmvfs[i][j];
	      for (k = 0; k < 2; k++)
		PMV[i][j][k] = inPMV[i][j][k];
 ad0:	2403002d 	li	v1,45
 ad4:	afa30018 	sw	v1,24(sp)
 ad8:	240300cf 	li	v1,207
 adc:	afa3001c 	sw	v1,28(sp)
 ae0:	24030046 	li	v1,70
 ae4:	afa30020 	sw	v1,32(sp)
 ae8:	24030029 	li	v1,41
 aec:	afa30024 	sw	v1,36(sp)
 af0:	24030004 	li	v1,4
 af4:	afa30028 	sw	v1,40(sp)

void
Initialize_Buffer ()
{
  ld_Incnt = 0;
  ld_Rdptr = ld_Rdbfr + 2048;
 af8:	3c020000 	lui	v0,0x0
	  dmvector[i] = 0;
	  for (j = 0; j < 2; j++)
	    {
	      motion_vertical_field_select[i][j] = inmvfs[i][j];
	      for (k = 0; k < 2; k++)
		PMV[i][j][k] = inPMV[i][j][k];
 afc:	240300b4 	li	v1,180

void
Initialize_Buffer ()
{
  ld_Incnt = 0;
  ld_Rdptr = ld_Rdbfr + 2048;
 b00:	24420800 	addiu	v0,v0,2048
	  dmvector[i] = 0;
	  for (j = 0; j < 2; j++)
	    {
	      motion_vertical_field_select[i][j] = inmvfs[i][j];
	      for (k = 0; k < 2; k++)
		PMV[i][j][k] = inPMV[i][j][k];
 b04:	afa3002c 	sw	v1,44(sp)
 b08:	24030078 	li	v1,120
 b0c:	afa30030 	sw	v1,48(sp)
{
  ld_Incnt = 0;
  ld_Rdptr = ld_Rdbfr + 2048;
  ld_Rdmax = ld_Rdptr;
  ld_Bfr = 68157440;
  Flush_Buffer (0);		/* fills valid data into bfr */
 b10:	00002021 	move	a0,zero
	  dmvector[i] = 0;
	  for (j = 0; j < 2; j++)
	    {
	      motion_vertical_field_select[i][j] = inmvfs[i][j];
	      for (k = 0; k < 2; k++)
		PMV[i][j][k] = inPMV[i][j][k];
 b14:	240300d8 	li	v1,216

void
Initialize_Buffer ()
{
  ld_Incnt = 0;
  ld_Rdptr = ld_Rdbfr + 2048;
 b18:	af820000 	sw	v0,0(gp)
  ld_Rdmax = ld_Rdptr;
 b1c:	af820000 	sw	v0,0(gp)
  ld_Bfr = 68157440;
 b20:	3c020410 	lui	v0,0x410
  Flush_Buffer (0);		/* fills valid data into bfr */
}

int
main ()
{
 b24:	afbf003c 	sw	ra,60(sp)
	  dmvector[i] = 0;
	  for (j = 0; j < 2; j++)
	    {
	      motion_vertical_field_select[i][j] = inmvfs[i][j];
	      for (k = 0; k < 2; k++)
		PMV[i][j][k] = inPMV[i][j][k];
 b28:	afa30034 	sw	v1,52(sp)
Initialize_Buffer ()
{
  ld_Incnt = 0;
  ld_Rdptr = ld_Rdbfr + 2048;
  ld_Rdmax = ld_Rdptr;
  ld_Bfr = 68157440;
 b2c:	af820000 	sw	v0,0(gp)
  Flush_Buffer (0);		/* fills valid data into bfr */
}

int
main ()
{
 b30:	afb00038 	sw	s0,56(sp)
      v_r_size = 200;
      dmv = 0;
      mvscale = 1;
      for (i = 0; i < 2; i++)
	{
	  dmvector[i] = 0;
 b34:	afa00010 	sw	zero,16(sp)
 b38:	afa00014 	sw	zero,20(sp)
  int dmvector[2];
  int motion_vertical_field_select[2][2];
  int s, motion_vector_count, mv_format, h_r_size, v_r_size, dmv, mvscale;

      main_result = 0;
      evalue = 0;
 b3c:	af800000 	sw	zero,0(gp)
      System_Stream_Flag = 0;
 b40:	af800000 	sw	zero,0(gp)
{
  ld_Incnt = 0;
  ld_Rdptr = ld_Rdbfr + 2048;
  ld_Rdmax = ld_Rdptr;
  ld_Bfr = 68157440;
  Flush_Buffer (0);		/* fills valid data into bfr */
 b44:	0c000000 	jal	0 <read>
 b48:	af800000 	sw	zero,0(gp)
 b4c:	8f900000 	lw	s0,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 b50:	0c000000 	jal	0 <read>
 b54:	24040001 	li	a0,1
	    motion_vertical_field_select[0][s] = Get_Bits (1);
	}

      motion_vector (PMV[0][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
 b58:	27a40018 	addiu	a0,sp,24
 b5c:	0c0000fc 	jal	3f0 <motion_vector.clone.1>
 b60:	27a50010 	addiu	a1,sp,16
	for (j = 0; j < 2; j++)
	  {
	    main_result +=
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
	    for (k = 0; k < 2; k++)
	      main_result += (PMV[i][j][k] != outPMV[i][j][k]);
 b64:	8fa30018 	lw	v1,24(sp)
 b68:	8fa2001c 	lw	v0,28(sp)
 b6c:	3863061e 	xori	v1,v1,0x61e
 b70:	384200ce 	xori	v0,v0,0xce
 b74:	0003182b 	sltu	v1,zero,v1
 b78:	8fa40020 	lw	a0,32(sp)
 b7c:	0002102b 	sltu	v0,zero,v0
 b80:	00431021 	addu	v0,v0,v1
 b84:	8fa30024 	lw	v1,36(sp)
 b88:	38840046 	xori	a0,a0,0x46
 b8c:	0004202b 	sltu	a0,zero,a0
 b90:	00021040 	sll	v0,v0,0x1
 b94:	38630029 	xori	v1,v1,0x29
 b98:	00441021 	addu	v0,v0,a0
 b9c:	0003182b 	sltu	v1,zero,v1
 ba0:	8fa40030 	lw	a0,48(sp)
		      mvscale);

      for (i = 0; i < 2; i++)
	for (j = 0; j < 2; j++)
	  {
	    main_result +=
 ba4:	00431021 	addu	v0,v0,v1
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
	    for (k = 0; k < 2; k++)
	      main_result += (PMV[i][j][k] != outPMV[i][j][k]);
 ba8:	8fa30034 	lw	v1,52(sp)
 bac:	38840078 	xori	a0,a0,0x78
 bb0:	0004202b 	sltu	a0,zero,a0
 bb4:	386300d8 	xori	v1,v1,0xd8
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 bb8:	001087c2 	srl	s0,s0,0x1f
 bbc:	00441021 	addu	v0,v0,a0
 bc0:	0003182b 	sltu	v1,zero,v1

  
    //printf ("%d\n", main_result);
  return main_result;

}
 bc4:	8fbf003c 	lw	ra,60(sp)
	for (j = 0; j < 2; j++)
	  {
	    main_result +=
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
	    for (k = 0; k < 2; k++)
	      main_result += (PMV[i][j][k] != outPMV[i][j][k]);
 bc8:	00108040 	sll	s0,s0,0x1
 bcc:	00431021 	addu	v0,v0,v1

  
    //printf ("%d\n", main_result);
  return main_result;

}
 bd0:	02021021 	addu	v0,s0,v0
 bd4:	8fb00038 	lw	s0,56(sp)
 bd8:	03e00008 	jr	ra
 bdc:	27bd0040 	addiu	sp,sp,64
