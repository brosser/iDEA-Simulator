
mpeg2.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <read>:
  
p1 = s1;
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
   0:	18c00027 	blez	a2,a0 <read+0xa0>
   4:	00c01021 	addu	v0,a2,zero
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
  4c:	00803821 	addu	a3,a0,zero
  50:	00a04021 	addu	t0,a1,zero
  54:	00003021 	addu	a2,zero,zero
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
  a4:	00000000 	sll	zero,zero,0x0

000000a8 <Fill_Buffer>:
void
Fill_Buffer ()
{
  int Buffer_Level;
  a8:	3c050000 	lui	a1,0x0
  ac:	3c070000 	lui	a3,0x0
  b0:	00001021 	addu	v0,zero,zero
  b4:	24a50000 	addiu	a1,a1,0
  b8:	24e70000 	addiu	a3,a3,0
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
    {
      *p1 = *p2;
  bc:	24060800 	addiu	a2,zero,2048
  
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
  dc:	00000000 	sll	zero,zero,0x0
  e0:	10400005 	beqz	v0,f8 <Fill_Buffer+0x50>
  e4:	af850000 	sw	a1,0(gp)

  e8:	8f820000 	lw	v0,0(gp)
  ec:	00000000 	sll	zero,zero,0x0
  f0:	2442f800 	addiu	v0,v0,-2048
  f4:	af820000 	sw	v0,0(gp)
  f8:	03e00008 	jr	ra
  fc:	00000000 	sll	zero,zero,0x0

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
 144:	24030018 	addiu	v1,zero,24

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 148:	24080018 	addiu	t0,zero,24
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
 180:	24060800 	addiu	a2,zero,2048

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 184:	00a06021 	addu	t4,a1,zero
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
 1b8:	00401821 	addu	v1,v0,zero
 1bc:	00001021 	addu	v0,zero,zero

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
 1e4:	01801821 	addu	v1,t4,zero
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
 224:	00000000 	sll	zero,zero,0x0

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
 27c:	01801821 	addu	v1,t4,zero

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

 28c:	24040001 	addiu	a0,zero,1
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

 2e4:	24040001 	addiu	a0,zero,1
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
 2fc:	00000000 	sll	zero,zero,0x0
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 300:	8f900000 	lw	s0,0(gp)
 304:	00000000 	sll	zero,zero,0x0
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
 340:	00000000 	sll	zero,zero,0x0
 344:	8f910000 	lw	s1,0(gp)
{
  unsigned int Val;

  Val = Show_Bits (N);
  Flush_Buffer (N);

 348:	24040001 	addiu	a0,zero,1
 34c:	0c000000 	jal	0 <read>
 350:	00118fc2 	srl	s1,s1,0x1f
  return Get_Bits1 ()? -MVtab2[code][0] : MVtab2[code][0];
 354:	1220001c 	beqz	s1,3c8 <Get_motion_code+0xf0>
 358:	00000000 	sll	zero,zero,0x0
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
 37c:	00001021 	addu	v0,zero,zero

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
 3ac:	00000000 	sll	zero,zero,0x0
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

 3b4:	24040001 	addiu	a0,zero,1
 3b8:	0c000000 	jal	0 <read>
 3bc:	00118fc2 	srl	s1,s1,0x1f
  return Get_Bits1 ()? -MVtab2[code][0] : MVtab2[code][0];
 3c0:	1620ffe6 	bnez	s1,35c <Get_motion_code+0x84>
 3c4:	00000000 	sll	zero,zero,0x0
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
 404:	00808021 	addu	s0,a0,zero

  motion_residual = (h_r_size != 0
		     && motion_code != 0) ? Get_Bits (h_r_size) : 0;
 408:	14400011 	bnez	v0,450 <motion_vector.clone.1+0x60>
 40c:	00000000 	sll	zero,zero,0x0
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
 420:	00000000 	sll	zero,zero,0x0

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
 45c:	240400c8 	addiu	a0,zero,200

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
 46c:	00000000 	sll	zero,zero,0x0
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
 48c:	00000000 	sll	zero,zero,0x0
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
 4a0:	00000000 	sll	zero,zero,0x0
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
 4b0:	240400c8 	addiu	a0,zero,200

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
 4e8:	00000000 	sll	zero,zero,0x0
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
 528:	00000000 	sll	zero,zero,0x0
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
 550:	00000000 	sll	zero,zero,0x0
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

 568:	24040001 	addiu	a0,zero,1
 56c:	afbf0014 	sw	ra,20(sp)
 570:	0c000000 	jal	0 <read>
 574:	001087c2 	srl	s0,s0,0x1f

  if (Get_Bits (1))
 578:	16000005 	bnez	s0,590 <Get_dmvector+0x34>
 57c:	00001021 	addu	v0,zero,zero
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

 594:	24040001 	addiu	a0,zero,1
 598:	0c000000 	jal	0 <read>
 59c:	001087c2 	srl	s0,s0,0x1f
Get_dmvector ()
{

  if (Get_Bits (1))
    {
      return Get_Bits (1) ? -1 : 1;
 5a0:	12000006 	beqz	s0,5bc <Get_dmvector+0x60>
 5a4:	24020001 	addiu	v0,zero,1
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
 5ac:	2402ffff 	addiu	v0,zero,-1
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
 5f4:	00808021 	addu	s0,a0,zero
 5f8:	00a08821 	addu	s1,a1,zero
 5fc:	8fb40048 	lw	s4,72(sp)
 600:	8fb5004c 	lw	s5,76(sp)
 604:	8fb20050 	lw	s2,80(sp)
  int motion_code;
  int motion_residual;

  /* horizontal component */
  /* ISO/IEC 13818-2 Table B-10 */
  motion_code = Get_motion_code ();
 608:	0c000000 	jal	0 <read>
 60c:	00e09821 	addu	s3,a3,zero

  motion_residual = (h_r_size != 0
 610:	8fa60014 	lw	a2,20(sp)
 614:	00000000 	sll	zero,zero,0x0
 618:	10c00003 	beqz	a2,628 <motion_vector+0x5c>
 61c:	00000000 	sll	zero,zero,0x0
		     && motion_code != 0) ? Get_Bits (h_r_size) : 0;
 620:	1440008e 	bnez	v0,85c <motion_vector+0x290>
 624:	00061823 	negu	v1,a2

  /* horizontal component */
  /* ISO/IEC 13818-2 Table B-10 */
  motion_code = Get_motion_code ();

  motion_residual = (h_r_size != 0
 628:	0000b021 	addu	s6,zero,zero
     int r_size, motion_code, motion_residual;
     int full_pel_vector;	/* MPEG-1 (ISO/IEC 11172-1) support */
{
  int lim, vec;

  r_size = r_size % 32;
 62c:	3c038000 	lui	v1,0x8000
 630:	2463001f 	addiu	v1,v1,31
 634:	00c33024 	and	a2,a2,v1
 638:	04c00084 	bltz	a2,84c <motion_vector+0x280>
 63c:	2403ffe0 	addiu	v1,zero,-32
  lim = 16 << r_size;
 640:	24040010 	addiu	a0,zero,16
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
 674:	00000000 	sll	zero,zero,0x0
    {
      vec -= ((-motion_code - 1) << r_size) + motion_residual + 1;
      if (vec < -lim)
	vec += lim + lim;
    }
  *pred = full_pel_vector ? (vec << 1) : vec;
 678:	12400002 	beqz	s2,684 <motion_vector+0xb8>
 67c:	00000000 	sll	zero,zero,0x0
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
 690:	00000000 	sll	zero,zero,0x0
  motion_residual = (v_r_size != 0
 694:	12600003 	beqz	s3,6a4 <motion_vector+0xd8>
 698:	0000b021 	addu	s6,zero,zero
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
 6bc:	24050010 	addiu	a1,zero,16
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
 6f0:	00000000 	sll	zero,zero,0x0
    {
      vec -= ((-motion_code - 1) << r_size) + motion_residual + 1;
      if (vec < -lim)
	vec += lim + lim;
    }
  *pred = full_pel_vector ? (vec << 1) : vec;
 6f4:	12400002 	beqz	s2,700 <motion_vector+0x134>
 6f8:	00000000 	sll	zero,zero,0x0
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
 714:	24040001 	addiu	a0,zero,1
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
 748:	00000000 	sll	zero,zero,0x0
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
 770:	00000000 	sll	zero,zero,0x0
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
 784:	00000000 	sll	zero,zero,0x0
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
 7a8:	2403ffe0 	addiu	v1,zero,-32
 7ac:	02639825 	or	s3,s3,v1
 7b0:	080001af 	j	6bc <motion_vector+0xf0>
 7b4:	26730001 	addiu	s3,s3,1
  lim = 16 << r_size;
  vec = full_pel_vector ? (*pred >> 1) : (*pred);
 7b8:	8e030000 	lw	v1,0(s0)

  if (motion_code > 0)
 7bc:	1c40ffa6 	bgtz	v0,658 <motion_vector+0x8c>
 7c0:	00000000 	sll	zero,zero,0x0
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
 7e8:	00000000 	sll	zero,zero,0x0
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
 820:	00001021 	addu	v0,zero,zero

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

 830:	24040001 	addiu	a0,zero,1
 834:	0c000000 	jal	0 <read>
 838:	0016b7c2 	srl	s6,s6,0x1f
 83c:	16c00018 	bnez	s6,8a0 <motion_vector+0x2d4>
 840:	00001021 	addu	v0,zero,zero

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

 860:	00c02021 	addu	a0,a2,zero
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

 884:	02602021 	addu	a0,s3,zero
 888:	afa20010 	sw	v0,16(sp)
 88c:	0c000000 	jal	0 <read>
 890:	0076b006 	srlv	s6,s6,v1
    dmvector[0] = Get_dmvector ();


  /* vertical component */
  motion_code = Get_motion_code ();
  motion_residual = (v_r_size != 0
 894:	8fa20010 	lw	v0,16(sp)
 898:	080001a9 	j	6a4 <motion_vector+0xd8>
 89c:	00000000 	sll	zero,zero,0x0
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

 8a4:	24040001 	addiu	a0,zero,1
 8a8:	0c000000 	jal	0 <read>
 8ac:	0016b7c2 	srl	s6,s6,0x1f
    {
      return Get_Bits (1) ? -1 : 1;
 8b0:	12c0000f 	beqz	s6,8f0 <motion_vector+0x324>
 8b4:	24020001 	addiu	v0,zero,1
 8b8:	2402ffff 	addiu	v0,zero,-1

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

 8c8:	24040001 	addiu	a0,zero,1
 8cc:	0c000000 	jal	0 <read>
 8d0:	001087c2 	srl	s0,s0,0x1f
 8d4:	12000004 	beqz	s0,8e8 <motion_vector+0x31c>
 8d8:	24020001 	addiu	v0,zero,1
 8dc:	2402ffff 	addiu	v0,zero,-1

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
 900:	24020001 	addiu	v0,zero,1
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
 920:	00808821 	addu	s1,a0,zero
 924:	afbf004c 	sw	ra,76(sp)
 928:	afbe0048 	sw	s8,72(sp)
 92c:	afb70044 	sw	s7,68(sp)
 930:	00a0b021 	addu	s6,a1,zero
 934:	8fa40064 	lw	a0,100(sp)
 938:	8fb50068 	lw	s5,104(sp)
 93c:	8fb4006c 	lw	s4,108(sp)
 940:	8fb20070 	lw	s2,112(sp)
 944:	8fb30074 	lw	s3,116(sp)
  if (motion_vector_count == 1)
 948:	1062002d 	beq	v1,v0,a00 <motion_vectors+0x108>
 94c:	00e08021 	addu	s0,a3,zero
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
 95c:	24040001 	addiu	a0,zero,1
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
 978:	02c02821 	addu	a1,s6,zero
 97c:	02a03021 	addu	a2,s5,zero
 980:	02803821 	addu	a3,s4,zero
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

 99c:	24040001 	addiu	a0,zero,1
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
 9c0:	02c02821 	addu	a1,s6,zero
 9c4:	02a03021 	addu	a2,s5,zero
 9c8:	02803821 	addu	a3,s4,zero
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
 a04:	00000000 	sll	zero,zero,0x0
 a08:	1240001d 	beqz	s2,a80 <motion_vectors+0x188>
 a0c:	24040001 	addiu	a0,zero,1
	{
	  motion_vertical_field_select[1][s] =
	    motion_vertical_field_select[0][s] = Get_Bits (1);
	}

      motion_vector (PMV[0][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
 a10:	001080c0 	sll	s0,s0,0x3
 a14:	0230b821 	addu	s7,s1,s0
 a18:	02e02021 	addu	a0,s7,zero
 a1c:	02c02821 	addu	a1,s6,zero
 a20:	02a03021 	addu	a2,s5,zero
 a24:	02803821 	addu	a3,s4,zero
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
 ab8:	00002021 	addu	a0,zero,zero
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
 ad0:	2403002d 	addiu	v1,zero,45
 ad4:	afa30018 	sw	v1,24(sp)
 ad8:	240300cf 	addiu	v1,zero,207
 adc:	afa3001c 	sw	v1,28(sp)
 ae0:	24030046 	addiu	v1,zero,70
 ae4:	afa30020 	sw	v1,32(sp)
 ae8:	24030029 	addiu	v1,zero,41
 aec:	afa30024 	sw	v1,36(sp)
 af0:	24030004 	addiu	v1,zero,4
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
 afc:	240300b4 	addiu	v1,zero,180

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
 b08:	24030078 	addiu	v1,zero,120
 b0c:	afa30030 	sw	v1,48(sp)
{
  ld_Incnt = 0;
  ld_Rdptr = ld_Rdbfr + 2048;
  ld_Rdmax = ld_Rdptr;
  ld_Bfr = 68157440;
  Flush_Buffer (0);		/* fills valid data into bfr */
 b10:	00002021 	addu	a0,zero,zero
	  dmvector[i] = 0;
	  for (j = 0; j < 2; j++)
	    {
	      motion_vertical_field_select[i][j] = inmvfs[i][j];
	      for (k = 0; k < 2; k++)
		PMV[i][j][k] = inPMV[i][j][k];
 b14:	240300d8 	addiu	v1,zero,216

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
 b54:	24040001 	addiu	a0,zero,1
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
