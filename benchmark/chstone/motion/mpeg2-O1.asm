
mpeg2.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <decode_motion_vector>:
decode_motion_vector (pred, r_size, motion_code, motion_residual,
		      full_pel_vector)
     int *pred;
     int r_size, motion_code, motion_residual;
     int full_pel_vector;	/* MPEG-1 (ISO/IEC 11172-1) support */
{
   0:	8fa20010 	lw	v0,16(sp)
  int lim, vec;

  r_size = r_size % 32;
   4:	3c038000 	lui	v1,0x8000
   8:	2463001f 	addiu	v1,v1,31
   c:	00a31824 	and	v1,a1,v1
  10:	04610006 	bgez	v1,2c <decode_motion_vector+0x2c>
  14:	00604821 	addu	t1,v1,zero
  18:	2463ffff 	addiu	v1,v1,-1
  1c:	2405ffe0 	addiu	a1,zero,-32
  20:	00651825 	or	v1,v1,a1
  24:	24630001 	addiu	v1,v1,1
  28:	00604821 	addu	t1,v1,zero
  lim = 16 << r_size;
  2c:	24050010 	addiu	a1,zero,16
  vec = full_pel_vector ? (*pred >> 1) : (*pred);
  30:	10400004 	beqz	v0,44 <decode_motion_vector+0x44>
  34:	00651804 	sllv	v1,a1,v1
  38:	8c880000 	lw	t0,0(a0)
  3c:	08000012 	j	48 <decode_motion_vector+0x48>
  40:	00084043 	sra	t0,t0,0x1
  44:	8c880000 	lw	t0,0(a0)

  if (motion_code > 0)
  48:	18c0000b 	blez	a2,78 <decode_motion_vector+0x78>
  4c:	00000000 	sll	zero,zero,0x0
    {
      vec += ((motion_code - 1) << r_size) + motion_residual + 1;
  50:	24e70001 	addiu	a3,a3,1
  54:	24c6ffff 	addiu	a2,a2,-1
  58:	01264804 	sllv	t1,a2,t1
  5c:	00e93821 	addu	a3,a3,t1
  60:	01074021 	addu	t0,t0,a3
      if (vec >= lim)
  64:	0103282a 	slt	a1,t0,v1
  68:	14a0000e 	bnez	a1,a4 <decode_motion_vector+0xa4>
  6c:	00031840 	sll	v1,v1,0x1
	vec -= lim + lim;
  70:	08000029 	j	a4 <decode_motion_vector+0xa4>
  74:	01034023 	subu	t0,t0,v1
    }
  else if (motion_code < 0)
  78:	04c1000a 	bgez	a2,a4 <decode_motion_vector+0xa4>
  7c:	00063027 	nor	a2,zero,a2
    {
      vec -= ((-motion_code - 1) << r_size) + motion_residual + 1;
  80:	01264804 	sllv	t1,a2,t1
  84:	01273821 	addu	a3,t1,a3
  88:	00073827 	nor	a3,zero,a3
  8c:	01074021 	addu	t0,t0,a3
      if (vec < -lim)
  90:	00032823 	negu	a1,v1
  94:	0105282a 	slt	a1,t0,a1
  98:	10a00002 	beqz	a1,a4 <decode_motion_vector+0xa4>
  9c:	00031840 	sll	v1,v1,0x1
	vec += lim + lim;
  a0:	01034021 	addu	t0,t0,v1
    }
  *pred = full_pel_vector ? (vec << 1) : vec;
  a4:	10400002 	beqz	v0,b0 <decode_motion_vector+0xb0>
  a8:	00000000 	sll	zero,zero,0x0
  ac:	00084040 	sll	t0,t0,0x1
}
  b0:	03e00008 	jr	ra
  b4:	ac880000 	sw	t0,0(a0)

000000b8 <read>:
  
p1 = s1;
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
  b8:	18c0000a 	blez	a2,e4 <read+0x2c>
  bc:	00c01021 	addu	v0,a2,zero
  c0:	24c3ffff 	addiu	v1,a2,-1
  c4:	2408ffff 	addiu	t0,zero,-1
    {
      *p1 = *p2;
  c8:	90a70000 	lbu	a3,0(a1)
  cc:	00000000 	sll	zero,zero,0x0
  d0:	a0870000 	sb	a3,0(a0)
      
p1++;
  d4:	24840001 	addiu	a0,a0,1
  
p1 = s1;
  p2 = s2;
  n_tmp = n;
  
while (n_tmp-- > 0)
  d8:	2463ffff 	addiu	v1,v1,-1
  dc:	1468fffa 	bne	v1,t0,c8 <read+0x10>
  e0:	24a50001 	addiu	a1,a1,1
p2++;
    
}
  
return n;
}
  e4:	03e00008 	jr	ra
  e8:	00000000 	sll	zero,zero,0x0

000000ec <Fill_Buffer>:
void
Fill_Buffer ()
{
  int Buffer_Level;
  ec:	27bdffe8 	addiu	sp,sp,-24
  f0:	afbf0014 	sw	ra,20(sp)
  f4:	afb00010 	sw	s0,16(sp)
  unsigned char *p;
  p = ld_Rdbfr;


  Buffer_Level = read (ld_Rdbfr, inRdbfr, 2048);
  ld_Rdptr = ld_Rdbfr;
  f8:	3c100000 	lui	s0,0x0
  fc:	26040000 	addiu	a0,s0,0
 100:	3c050000 	lui	a1,0x0
 104:	24a50000 	addiu	a1,a1,0
 108:	0c000000 	jal	0 <decode_motion_vector>
 10c:	24060800 	addiu	a2,zero,2048

 110:	26100000 	addiu	s0,s0,0
 114:	af900000 	sw	s0,0(gp)
  if (System_Stream_Flag)
    ld_Rdmax -= 2048;
 118:	8f830000 	lw	v1,0(gp)
 11c:	00000000 	sll	zero,zero,0x0
 120:	10600006 	beqz	v1,13c <Fill_Buffer+0x50>
 124:	28430800 	slti	v1,v0,2048

 128:	8f830000 	lw	v1,0(gp)
 12c:	00000000 	sll	zero,zero,0x0
 130:	2463f800 	addiu	v1,v1,-2048
 134:	af830000 	sw	v1,0(gp)

  /* end of the bitstream file */
  if (Buffer_Level < 2048)
    {
 138:	28430800 	slti	v1,v0,2048
 13c:	10600021 	beqz	v1,1c4 <Fill_Buffer+0xd8>
 140:	00000000 	sll	zero,zero,0x0
      /* just to be safe */
      if (Buffer_Level < 0)
	Buffer_Level = 0;
 144:	0440001d 	bltz	v0,1bc <Fill_Buffer+0xd0>
 148:	00000000 	sll	zero,zero,0x0

      /* pad until the next to the next 32-bit word boundary */
      while (Buffer_Level & 3)
	ld_Rdbfr[Buffer_Level++] = 0;
 14c:	30430003 	andi	v1,v0,0x3
 150:	1060000b 	beqz	v1,180 <Fill_Buffer+0x94>
 154:	3c040000 	lui	a0,0x0
  
return n;
}
void
Fill_Buffer ()
{
 158:	24840000 	addiu	a0,a0,0
 15c:	00821821 	addu	v1,a0,v0
	Buffer_Level = 0;

      /* pad until the next to the next 32-bit word boundary */
      while (Buffer_Level & 3)
	ld_Rdbfr[Buffer_Level++] = 0;

 160:	a0600000 	sb	zero,0(v1)
 164:	24420001 	addiu	v0,v0,1
      if (Buffer_Level < 0)
	Buffer_Level = 0;

      /* pad until the next to the next 32-bit word boundary */
      while (Buffer_Level & 3)
	ld_Rdbfr[Buffer_Level++] = 0;
 168:	30430003 	andi	v1,v0,0x3
 16c:	1460fffc 	bnez	v1,160 <Fill_Buffer+0x74>
 170:	00821821 	addu	v1,a0,v0

      /* pad the buffer with sequence end codes */
      while (Buffer_Level < 2048)
	{
 174:	28430800 	slti	v1,v0,2048
 178:	10600012 	beqz	v1,1c4 <Fill_Buffer+0xd8>
 17c:	00000000 	sll	zero,zero,0x0
  
return n;
}
void
Fill_Buffer ()
{
 180:	3c030000 	lui	v1,0x0
 184:	24630000 	addiu	v1,v1,0
 188:	00621821 	addu	v1,v1,v0
      while (Buffer_Level < 2048)
	{
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE >> 24;
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE >> 16;
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE >> 8;
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE & 0xff;
 18c:	24060001 	addiu	a2,zero,1
	}
 190:	2405ffb7 	addiu	a1,zero,-73

      /* pad the buffer with sequence end codes */
      while (Buffer_Level < 2048)
	{
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE >> 24;
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE >> 16;
 194:	a0600000 	sb	zero,0(v1)
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE >> 8;
 198:	a0600001 	sb	zero,1(v1)
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE & 0xff;
 19c:	a0660002 	sb	a2,2(v1)
	}
 1a0:	a0650003 	sb	a1,3(v1)
  
return n;
}
void
Fill_Buffer ()
{
 1a4:	24420004 	addiu	v0,v0,4
      while (Buffer_Level & 3)
	ld_Rdbfr[Buffer_Level++] = 0;

      /* pad the buffer with sequence end codes */
      while (Buffer_Level < 2048)
	{
 1a8:	28440800 	slti	a0,v0,2048
 1ac:	1480fff9 	bnez	a0,194 <Fill_Buffer+0xa8>
 1b0:	24630004 	addiu	v1,v1,4
 1b4:	08000071 	j	1c4 <Fill_Buffer+0xd8>
 1b8:	00000000 	sll	zero,zero,0x0
  if (Buffer_Level < 2048)
    {
      /* just to be safe */
      if (Buffer_Level < 0)
	Buffer_Level = 0;

 1bc:	08000060 	j	180 <Fill_Buffer+0x94>
 1c0:	00001021 	addu	v0,zero,zero
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE >> 8;
	  ld_Rdbfr[Buffer_Level++] = SEQUENCE_END_CODE & 0xff;
	}
    }
}

 1c4:	8fbf0014 	lw	ra,20(sp)
 1c8:	8fb00010 	lw	s0,16(sp)
 1cc:	03e00008 	jr	ra
 1d0:	27bd0018 	addiu	sp,sp,24

000001d4 <Show_Bits>:
unsigned int
Show_Bits (N)
     int N;
{
  return ld_Bfr >> (unsigned)(32-N)%32;
}
 1d4:	00042023 	negu	a0,a0

 1d8:	8f820000 	lw	v0,0(gp)
 1dc:	03e00008 	jr	ra
 1e0:	00821006 	srlv	v0,v0,a0

000001e4 <Flush_Buffer>:

void
Flush_Buffer (N)
     int N;
{
  int Incnt;
 1e4:	27bdffd8 	addiu	sp,sp,-40
 1e8:	afbf0024 	sw	ra,36(sp)
 1ec:	afb30020 	sw	s3,32(sp)
 1f0:	afb2001c 	sw	s2,28(sp)
 1f4:	afb10018 	sw	s1,24(sp)
 1f8:	afb00014 	sw	s0,20(sp)

  ld_Bfr <<= N;

 1fc:	8f820000 	lw	v0,0(gp)
 200:	00000000 	sll	zero,zero,0x0
 204:	00821004 	sllv	v0,v0,a0
 208:	af820000 	sw	v0,0(gp)
  Incnt = ld_Incnt -= N;

 20c:	8f920000 	lw	s2,0(gp)
 210:	00000000 	sll	zero,zero,0x0
 214:	02449023 	subu	s2,s2,a0
  if (Incnt <= 24)
    {
 218:	2a420019 	slti	v0,s2,25
 21c:	10400041 	beqz	v0,324 <Flush_Buffer+0x140>
 220:	af920000 	sw	s2,0(gp)
      if (ld_Rdptr < ld_Rdbfr + 2044)
	{
 224:	3c020000 	lui	v0,0x0
 228:	244207fc 	addiu	v0,v0,2044
 22c:	8f830000 	lw	v1,0(gp)
 230:	00000000 	sll	zero,zero,0x0
 234:	0062102b 	sltu	v0,v1,v0
 238:	10400019 	beqz	v0,2a0 <Flush_Buffer+0xbc>
 23c:	24100018 	addiu	s0,zero,24

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 240:	24020018 	addiu	v0,zero,24
 244:	00521023 	subu	v0,v0,s2
 248:	000238c2 	srl	a3,v0,0x3
 24c:	00123023 	negu	a2,s2
 250:	24c60010 	addiu	a2,a2,16
 254:	000718c0 	sll	v1,a3,0x3
 258:	00c33023 	subu	a2,a2,v1
      if (ld_Rdptr < ld_Rdbfr + 2044)
	{
	  do
	    {
	      ld_Bfr |= *ld_Rdptr++ << (24 - Incnt);
	      Incnt += 8;
 25c:	8f830000 	lw	v1,0(gp)
 260:	00000000 	sll	zero,zero,0x0
 264:	90640000 	lbu	a0,0(v1)
 268:	00000000 	sll	zero,zero,0x0
 26c:	00442004 	sllv	a0,a0,v0
 270:	8f850000 	lw	a1,0(gp)
 274:	00000000 	sll	zero,zero,0x0
 278:	00a42025 	or	a0,a1,a0
 27c:	af840000 	sw	a0,0(gp)
 280:	24630001 	addiu	v1,v1,1
 284:	2442fff8 	addiu	v0,v0,-8
	    }
	  while (Incnt <= 24);
	}
 288:	1446fff4 	bne	v0,a2,25c <Flush_Buffer+0x78>
 28c:	af830000 	sw	v1,0(gp)

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 290:	26520008 	addiu	s2,s2,8
 294:	000738c0 	sll	a3,a3,0x3
 298:	080000c8 	j	320 <Flush_Buffer+0x13c>
 29c:	02479021 	addu	s2,s2,a3
 2a0:	02128023 	subu	s0,s0,s2
 2a4:	02408821 	addu	s1,s2,zero
      else
	{
	  do
	    {
	      if (ld_Rdptr >= ld_Rdbfr + 2048)
		Fill_Buffer ();
 2a8:	3c130000 	lui	s3,0x0
 2ac:	26730800 	addiu	s3,s3,2048
 2b0:	8f820000 	lw	v0,0(gp)
 2b4:	00000000 	sll	zero,zero,0x0
 2b8:	0053102b 	sltu	v0,v0,s3
 2bc:	14400003 	bnez	v0,2cc <Flush_Buffer+0xe8>
 2c0:	00000000 	sll	zero,zero,0x0
	      ld_Bfr |= *ld_Rdptr++ << (24 - Incnt);
 2c4:	0c000000 	jal	0 <decode_motion_vector>
 2c8:	00000000 	sll	zero,zero,0x0
	      Incnt += 8;
 2cc:	8f820000 	lw	v0,0(gp)
 2d0:	00000000 	sll	zero,zero,0x0
 2d4:	90430000 	lbu	v1,0(v0)
 2d8:	00000000 	sll	zero,zero,0x0
 2dc:	02031804 	sllv	v1,v1,s0
 2e0:	8f840000 	lw	a0,0(gp)
 2e4:	00000000 	sll	zero,zero,0x0
 2e8:	00831825 	or	v1,a0,v1
 2ec:	af830000 	sw	v1,0(gp)
 2f0:	24420001 	addiu	v0,v0,1
 2f4:	af820000 	sw	v0,0(gp)
	    }
 2f8:	26310008 	addiu	s1,s1,8
	  while (Incnt <= 24);
	}
 2fc:	2a220019 	slti	v0,s1,25
 300:	1440ffeb 	bnez	v0,2b0 <Flush_Buffer+0xcc>
 304:	2610fff8 	addiu	s0,s0,-8

/* advance by n bits */

void
Flush_Buffer (N)
     int N;
 308:	26420008 	addiu	v0,s2,8
 30c:	24030018 	addiu	v1,zero,24
 310:	00729023 	subu	s2,v1,s2
 314:	001290c2 	srl	s2,s2,0x3
 318:	001290c0 	sll	s2,s2,0x3
 31c:	00529021 	addu	s2,v0,s2
	      Incnt += 8;
	    }
	  while (Incnt <= 24);
	}
      ld_Incnt = Incnt;
    }
 320:	af920000 	sw	s2,0(gp)
}

 324:	8fbf0024 	lw	ra,36(sp)
 328:	8fb30020 	lw	s3,32(sp)
 32c:	8fb2001c 	lw	s2,28(sp)
 330:	8fb10018 	lw	s1,24(sp)
 334:	8fb00014 	lw	s0,20(sp)
 338:	03e00008 	jr	ra
 33c:	27bd0028 	addiu	sp,sp,40

00000340 <Get_Bits>:

unsigned int
Get_Bits (N)
     int N;
{
  unsigned int Val;
 340:	27bdffe0 	addiu	sp,sp,-32
 344:	afbf001c 	sw	ra,28(sp)
 348:	afb10018 	sw	s1,24(sp)
 34c:	afb00014 	sw	s0,20(sp)

  Val = Show_Bits (N);
  Flush_Buffer (N);
 350:	0c000000 	jal	0 <decode_motion_vector>
 354:	00808821 	addu	s1,a0,zero
 358:	00408021 	addu	s0,v0,zero

 35c:	0c000000 	jal	0 <decode_motion_vector>
 360:	02202021 	addu	a0,s1,zero
  return Val;
}
 364:	02001021 	addu	v0,s0,zero
 368:	8fbf001c 	lw	ra,28(sp)
 36c:	8fb10018 	lw	s1,24(sp)
 370:	8fb00014 	lw	s0,20(sp)
 374:	03e00008 	jr	ra
 378:	27bd0020 	addiu	sp,sp,32

0000037c <Get_Bits1>:
/* return next bit (could be made faster than Get_Bits(1)) */

unsigned int
Get_Bits1 ()
{
  return Get_Bits (1);
 37c:	27bdffe8 	addiu	sp,sp,-24
 380:	afbf0014 	sw	ra,20(sp)
}
 384:	0c000000 	jal	0 <decode_motion_vector>
 388:	24040001 	addiu	a0,zero,1

 38c:	8fbf0014 	lw	ra,20(sp)
 390:	00000000 	sll	zero,zero,0x0
 394:	03e00008 	jr	ra
 398:	27bd0018 	addiu	sp,sp,24

0000039c <Get_motion_code>:
 *
 */

int
Get_motion_code ()
{
 39c:	27bdffe8 	addiu	sp,sp,-24
 3a0:	afbf0014 	sw	ra,20(sp)
  int code;

  if (Get_Bits1 ())
 3a4:	0c000000 	jal	0 <decode_motion_vector>
 3a8:	afb00010 	sw	s0,16(sp)
 3ac:	14400057 	bnez	v0,50c <Get_motion_code+0x170>
 3b0:	00001021 	addu	v0,zero,zero
    {
      return 0;
    }

  if ((code = Show_Bits (9)) >= 64)
 3b4:	0c000000 	jal	0 <decode_motion_vector>
 3b8:	24040009 	addiu	a0,zero,9
 3bc:	28430040 	slti	v1,v0,64
 3c0:	1460001b 	bnez	v1,430 <Get_motion_code+0x94>
 3c4:	28430018 	slti	v1,v0,24
    {
      code >>= 6;
 3c8:	00028183 	sra	s0,v0,0x6
      Flush_Buffer (MVtab0[code][1]);
 3cc:	00101840 	sll	v1,s0,0x1
 3d0:	3c020000 	lui	v0,0x0
 3d4:	24420000 	addiu	v0,v0,0
 3d8:	00621021 	addu	v0,v1,v0
 3dc:	80440001 	lb	a0,1(v0)
 3e0:	0c000000 	jal	0 <decode_motion_vector>
 3e4:	00000000 	sll	zero,zero,0x0

      return Get_Bits1 ()? -MVtab0[code][0] : MVtab0[code][0];
 3e8:	0c000000 	jal	0 <decode_motion_vector>
 3ec:	00000000 	sll	zero,zero,0x0
 3f0:	10400008 	beqz	v0,414 <Get_motion_code+0x78>
 3f4:	00000000 	sll	zero,zero,0x0
 3f8:	00108040 	sll	s0,s0,0x1
 3fc:	3c020000 	lui	v0,0x0
 400:	24420000 	addiu	v0,v0,0
 404:	02028021 	addu	s0,s0,v0
 408:	82020000 	lb	v0,0(s0)
 40c:	08000143 	j	50c <Get_motion_code+0x170>
 410:	00021023 	negu	v0,v0
 414:	00108040 	sll	s0,s0,0x1
 418:	3c020000 	lui	v0,0x0
 41c:	24420000 	addiu	v0,v0,0
 420:	02028021 	addu	s0,s0,v0
 424:	82020000 	lb	v0,0(s0)
 428:	08000143 	j	50c <Get_motion_code+0x170>
 42c:	00000000 	sll	zero,zero,0x0
    }

  if (code >= 24)
 430:	1460001b 	bnez	v1,4a0 <Get_motion_code+0x104>
 434:	2450fff4 	addiu	s0,v0,-12
    {
      code >>= 3;
 438:	000280c3 	sra	s0,v0,0x3
      Flush_Buffer (MVtab1[code][1]);
 43c:	00101840 	sll	v1,s0,0x1
 440:	3c020000 	lui	v0,0x0
 444:	24420000 	addiu	v0,v0,0
 448:	00621021 	addu	v0,v1,v0
 44c:	80440001 	lb	a0,1(v0)
 450:	0c000000 	jal	0 <decode_motion_vector>
 454:	00000000 	sll	zero,zero,0x0

      return Get_Bits1 ()? -MVtab1[code][0] : MVtab1[code][0];
 458:	0c000000 	jal	0 <decode_motion_vector>
 45c:	00000000 	sll	zero,zero,0x0
 460:	10400008 	beqz	v0,484 <Get_motion_code+0xe8>
 464:	00000000 	sll	zero,zero,0x0
 468:	00108040 	sll	s0,s0,0x1
 46c:	3c020000 	lui	v0,0x0
 470:	24420000 	addiu	v0,v0,0
 474:	02028021 	addu	s0,s0,v0
 478:	82020000 	lb	v0,0(s0)
 47c:	08000143 	j	50c <Get_motion_code+0x170>
 480:	00021023 	negu	v0,v0
 484:	00108040 	sll	s0,s0,0x1
 488:	3c020000 	lui	v0,0x0
 48c:	24420000 	addiu	v0,v0,0
 490:	02028021 	addu	s0,s0,v0
 494:	82020000 	lb	v0,0(s0)
 498:	08000143 	j	50c <Get_motion_code+0x170>
 49c:	00000000 	sll	zero,zero,0x0
    }

  if ((code -= 12) < 0)
 4a0:	06000019 	bltz	s0,508 <Get_motion_code+0x16c>
 4a4:	00101840 	sll	v1,s0,0x1
    return 0;

  Flush_Buffer (MVtab2[code][1]);
 4a8:	3c020000 	lui	v0,0x0
 4ac:	24420000 	addiu	v0,v0,0
 4b0:	00621021 	addu	v0,v1,v0
 4b4:	80440001 	lb	a0,1(v0)
 4b8:	0c000000 	jal	0 <decode_motion_vector>
 4bc:	00000000 	sll	zero,zero,0x0
  return Get_Bits1 ()? -MVtab2[code][0] : MVtab2[code][0];
 4c0:	0c000000 	jal	0 <decode_motion_vector>
 4c4:	00000000 	sll	zero,zero,0x0
 4c8:	10400008 	beqz	v0,4ec <Get_motion_code+0x150>
 4cc:	00000000 	sll	zero,zero,0x0
 4d0:	00108040 	sll	s0,s0,0x1
 4d4:	3c020000 	lui	v0,0x0
 4d8:	24420000 	addiu	v0,v0,0
 4dc:	02028021 	addu	s0,s0,v0
 4e0:	82020000 	lb	v0,0(s0)
 4e4:	08000143 	j	50c <Get_motion_code+0x170>
 4e8:	00021023 	negu	v0,v0
 4ec:	00108040 	sll	s0,s0,0x1
 4f0:	3c020000 	lui	v0,0x0
 4f4:	24420000 	addiu	v0,v0,0
 4f8:	02028021 	addu	s0,s0,v0
 4fc:	82020000 	lb	v0,0(s0)
 500:	08000143 	j	50c <Get_motion_code+0x170>
 504:	00000000 	sll	zero,zero,0x0

      return Get_Bits1 ()? -MVtab1[code][0] : MVtab1[code][0];
    }

  if ((code -= 12) < 0)
    return 0;
 508:	00001021 	addu	v0,zero,zero

  Flush_Buffer (MVtab2[code][1]);
  return Get_Bits1 ()? -MVtab2[code][0] : MVtab2[code][0];
}
 50c:	8fbf0014 	lw	ra,20(sp)
 510:	8fb00010 	lw	s0,16(sp)
 514:	03e00008 	jr	ra
 518:	27bd0018 	addiu	sp,sp,24

0000051c <Get_dmvector>:

/* get differential motion vector (for dual prime prediction) */
int
Get_dmvector ()
{
 51c:	27bdffe8 	addiu	sp,sp,-24
 520:	afbf0014 	sw	ra,20(sp)

  if (Get_Bits (1))
 524:	0c000000 	jal	0 <decode_motion_vector>
 528:	24040001 	addiu	a0,zero,1
 52c:	10400006 	beqz	v0,548 <Get_dmvector+0x2c>
 530:	00001021 	addu	v0,zero,zero
    {
      return Get_Bits (1) ? -1 : 1;
 534:	0c000000 	jal	0 <decode_motion_vector>
 538:	24040001 	addiu	a0,zero,1
 53c:	14400002 	bnez	v0,548 <Get_dmvector+0x2c>
 540:	2402ffff 	addiu	v0,zero,-1
 544:	24020001 	addiu	v0,zero,1
    }
  else
    {
      return 0;
    }
}
 548:	8fbf0014 	lw	ra,20(sp)
 54c:	00000000 	sll	zero,zero,0x0
 550:	03e00008 	jr	ra
 554:	27bd0018 	addiu	sp,sp,24

00000558 <motion_vector>:
     int h_r_size;
     int v_r_size;
     int dmv;			/* MPEG-2 only: get differential motion vectors */
     int mvscale;		/* MPEG-2 only: field vector in frame pic */
     int full_pel_vector;	/* MPEG-1 only */
{
 558:	27bdffc8 	addiu	sp,sp,-56
 55c:	afbf0034 	sw	ra,52(sp)
 560:	afb60030 	sw	s6,48(sp)
 564:	afb5002c 	sw	s5,44(sp)
 568:	afb40028 	sw	s4,40(sp)
 56c:	afb30024 	sw	s3,36(sp)
 570:	afb20020 	sw	s2,32(sp)
 574:	afb1001c 	sw	s1,28(sp)
 578:	afb00018 	sw	s0,24(sp)
 57c:	00808021 	addu	s0,a0,zero
 580:	00a0b021 	addu	s6,a1,zero
 584:	00c09021 	addu	s2,a2,zero
 588:	8fb50048 	lw	s5,72(sp)
 58c:	8fb40050 	lw	s4,80(sp)
  int motion_code;
  int motion_residual;

  /* horizontal component */
  /* ISO/IEC 13818-2 Table B-10 */
  motion_code = Get_motion_code ();
 590:	0c000000 	jal	0 <decode_motion_vector>
 594:	00e09821 	addu	s3,a3,zero

  motion_residual = (h_r_size != 0
 598:	12400007 	beqz	s2,5b8 <motion_vector+0x60>
 59c:	00408821 	addu	s1,v0,zero
		     && motion_code != 0) ? Get_Bits (h_r_size) : 0;
 5a0:	10400007 	beqz	v0,5c0 <motion_vector+0x68>
 5a4:	00000000 	sll	zero,zero,0x0
 5a8:	0c000000 	jal	0 <decode_motion_vector>
 5ac:	02402021 	addu	a0,s2,zero

  /* horizontal component */
  /* ISO/IEC 13818-2 Table B-10 */
  motion_code = Get_motion_code ();

  motion_residual = (h_r_size != 0
 5b0:	08000171 	j	5c4 <motion_vector+0x6c>
 5b4:	00403821 	addu	a3,v0,zero
 5b8:	08000171 	j	5c4 <motion_vector+0x6c>
 5bc:	00003821 	addu	a3,zero,zero
 5c0:	00003821 	addu	a3,zero,zero
		     && motion_code != 0) ? Get_Bits (h_r_size) : 0;

  decode_motion_vector (&PMV[0], h_r_size, motion_code, motion_residual,
 5c4:	afb40010 	sw	s4,16(sp)
 5c8:	02002021 	addu	a0,s0,zero
 5cc:	02402821 	addu	a1,s2,zero
 5d0:	0c000000 	jal	0 <decode_motion_vector>
 5d4:	02203021 	addu	a2,s1,zero
			full_pel_vector);

  if (dmv)
 5d8:	12a00004 	beqz	s5,5ec <motion_vector+0x94>
 5dc:	00000000 	sll	zero,zero,0x0
    dmvector[0] = Get_dmvector ();
 5e0:	0c000000 	jal	0 <decode_motion_vector>
 5e4:	00000000 	sll	zero,zero,0x0
 5e8:	aec20000 	sw	v0,0(s6)


  /* vertical component */
  motion_code = Get_motion_code ();
 5ec:	0c000000 	jal	0 <decode_motion_vector>
 5f0:	00000000 	sll	zero,zero,0x0
  motion_residual = (v_r_size != 0
 5f4:	12600007 	beqz	s3,614 <motion_vector+0xbc>
 5f8:	00408821 	addu	s1,v0,zero
		     && motion_code != 0) ? Get_Bits (v_r_size) : 0;
 5fc:	10400007 	beqz	v0,61c <motion_vector+0xc4>
 600:	00000000 	sll	zero,zero,0x0
 604:	0c000000 	jal	0 <decode_motion_vector>
 608:	02602021 	addu	a0,s3,zero
    dmvector[0] = Get_dmvector ();


  /* vertical component */
  motion_code = Get_motion_code ();
  motion_residual = (v_r_size != 0
 60c:	08000188 	j	620 <motion_vector+0xc8>
 610:	00403821 	addu	a3,v0,zero
 614:	08000188 	j	620 <motion_vector+0xc8>
 618:	00003821 	addu	a3,zero,zero
 61c:	00003821 	addu	a3,zero,zero
		     && motion_code != 0) ? Get_Bits (v_r_size) : 0;

  if (mvscale)
 620:	8fa2004c 	lw	v0,76(sp)
 624:	00000000 	sll	zero,zero,0x0
 628:	1040000e 	beqz	v0,664 <motion_vector+0x10c>
 62c:	26040004 	addiu	a0,s0,4
    PMV[1] >>= 1;		/* DIV 2 */
 630:	8e020004 	lw	v0,4(s0)
 634:	00000000 	sll	zero,zero,0x0
 638:	00021043 	sra	v0,v0,0x1
 63c:	ae020004 	sw	v0,4(s0)

  decode_motion_vector (&PMV[1], v_r_size, motion_code, motion_residual,
 640:	afb40010 	sw	s4,16(sp)
 644:	02602821 	addu	a1,s3,zero
 648:	0c000000 	jal	0 <decode_motion_vector>
 64c:	02203021 	addu	a2,s1,zero
			full_pel_vector);

  if (mvscale)
    PMV[1] <<= 1;
 650:	8e020004 	lw	v0,4(s0)
 654:	00000000 	sll	zero,zero,0x0
 658:	00021040 	sll	v0,v0,0x1
 65c:	0800019d 	j	674 <motion_vector+0x11c>
 660:	ae020004 	sw	v0,4(s0)
		     && motion_code != 0) ? Get_Bits (v_r_size) : 0;

  if (mvscale)
    PMV[1] >>= 1;		/* DIV 2 */

  decode_motion_vector (&PMV[1], v_r_size, motion_code, motion_residual,
 664:	afb40010 	sw	s4,16(sp)
 668:	02602821 	addu	a1,s3,zero
 66c:	0c000000 	jal	0 <decode_motion_vector>
 670:	02203021 	addu	a2,s1,zero
			full_pel_vector);

  if (mvscale)
    PMV[1] <<= 1;

  if (dmv)
 674:	12a00004 	beqz	s5,688 <motion_vector+0x130>
 678:	00000000 	sll	zero,zero,0x0
    dmvector[1] = Get_dmvector ();
 67c:	0c000000 	jal	0 <decode_motion_vector>
 680:	00000000 	sll	zero,zero,0x0
 684:	aec20004 	sw	v0,4(s6)

}
 688:	8fbf0034 	lw	ra,52(sp)
 68c:	8fb60030 	lw	s6,48(sp)
 690:	8fb5002c 	lw	s5,44(sp)
 694:	8fb40028 	lw	s4,40(sp)
 698:	8fb30024 	lw	s3,36(sp)
 69c:	8fb20020 	lw	s2,32(sp)
 6a0:	8fb1001c 	lw	s1,28(sp)
 6a4:	8fb00018 	lw	s0,24(sp)
 6a8:	03e00008 	jr	ra
 6ac:	27bd0038 	addiu	sp,sp,56

000006b0 <motion_vectors>:
		mvscale)
     int PMV[2][2][2];
     int dmvector[2];
     int motion_vertical_field_select[2][2];
     int s, motion_vector_count, mv_format, h_r_size, v_r_size, dmv, mvscale;
{
 6b0:	27bdffb8 	addiu	sp,sp,-72
 6b4:	afbf0044 	sw	ra,68(sp)
 6b8:	afb70040 	sw	s7,64(sp)
 6bc:	afb6003c 	sw	s6,60(sp)
 6c0:	afb50038 	sw	s5,56(sp)
 6c4:	afb40034 	sw	s4,52(sp)
 6c8:	afb30030 	sw	s3,48(sp)
 6cc:	afb2002c 	sw	s2,44(sp)
 6d0:	afb10028 	sw	s1,40(sp)
 6d4:	afb00024 	sw	s0,36(sp)
 6d8:	00809821 	addu	s3,a0,zero
 6dc:	00a08021 	addu	s0,a1,zero
 6e0:	00c09021 	addu	s2,a2,zero
 6e4:	8fb40060 	lw	s4,96(sp)
 6e8:	8fb50064 	lw	s5,100(sp)
 6ec:	8fb60068 	lw	s6,104(sp)
 6f0:	8fb7006c 	lw	s7,108(sp)
  if (motion_vector_count == 1)
 6f4:	24020001 	addiu	v0,zero,1
 6f8:	8fa30058 	lw	v1,88(sp)
 6fc:	00000000 	sll	zero,zero,0x0
 700:	1462001f 	bne	v1,v0,780 <motion_vectors+0xd0>
 704:	00e08821 	addu	s1,a3,zero
    {
      if (mv_format == MV_FIELD && !dmv)
 708:	8fa2005c 	lw	v0,92(sp)
 70c:	00000000 	sll	zero,zero,0x0
 710:	14400009 	bnez	v0,738 <motion_vectors+0x88>
 714:	00000000 	sll	zero,zero,0x0
 718:	16c00007 	bnez	s6,738 <motion_vectors+0x88>
 71c:	00000000 	sll	zero,zero,0x0
	{
	  motion_vertical_field_select[1][s] =
	    motion_vertical_field_select[0][s] = Get_Bits (1);
 720:	0c000000 	jal	0 <decode_motion_vector>
 724:	24040001 	addiu	a0,zero,1
 728:	00111880 	sll	v1,s1,0x2
 72c:	02439021 	addu	s2,s2,v1
 730:	ae420000 	sw	v0,0(s2)
{
  if (motion_vector_count == 1)
    {
      if (mv_format == MV_FIELD && !dmv)
	{
	  motion_vertical_field_select[1][s] =
 734:	ae420008 	sw	v0,8(s2)
	    motion_vertical_field_select[0][s] = Get_Bits (1);
	}

      motion_vector (PMV[0][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
 738:	001188c0 	sll	s1,s1,0x3
 73c:	02719021 	addu	s2,s3,s1
 740:	afb60010 	sw	s6,16(sp)
 744:	afb70014 	sw	s7,20(sp)
 748:	afa00018 	sw	zero,24(sp)
 74c:	02402021 	addu	a0,s2,zero
 750:	02002821 	addu	a1,s0,zero
 754:	02803021 	addu	a2,s4,zero
 758:	0c000000 	jal	0 <decode_motion_vector>
 75c:	02a03821 	addu	a3,s5,zero
		     0);

      /* update other motion vector predictors */
      PMV[1][s][0] = PMV[0][s][0];
 760:	26730010 	addiu	s3,s3,16
 764:	02718821 	addu	s1,s3,s1
 768:	8e420000 	lw	v0,0(s2)
 76c:	00000000 	sll	zero,zero,0x0
 770:	ae220000 	sw	v0,0(s1)
      PMV[1][s][1] = PMV[0][s][1];
 774:	8e420004 	lw	v0,4(s2)
 778:	080001fb 	j	7ec <motion_vectors+0x13c>
 77c:	ae220004 	sw	v0,4(s1)
    }
  else
    {
      motion_vertical_field_select[0][s] = Get_Bits (1);
 780:	0c000000 	jal	0 <decode_motion_vector>
 784:	24040001 	addiu	a0,zero,1
 788:	00111880 	sll	v1,s1,0x2
 78c:	02439021 	addu	s2,s2,v1
 790:	ae420000 	sw	v0,0(s2)

      motion_vector (PMV[0][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
 794:	001120c0 	sll	a0,s1,0x3
 798:	afb60010 	sw	s6,16(sp)
 79c:	afb70014 	sw	s7,20(sp)
 7a0:	afa00018 	sw	zero,24(sp)
 7a4:	02642021 	addu	a0,s3,a0
 7a8:	02002821 	addu	a1,s0,zero
 7ac:	02803021 	addu	a2,s4,zero
 7b0:	0c000000 	jal	0 <decode_motion_vector>
 7b4:	02a03821 	addu	a3,s5,zero
		     0);

      motion_vertical_field_select[1][s] = Get_Bits (1);
 7b8:	0c000000 	jal	0 <decode_motion_vector>
 7bc:	24040001 	addiu	a0,zero,1
 7c0:	ae420008 	sw	v0,8(s2)

      motion_vector (PMV[1][s], dmvector, h_r_size, v_r_size, dmv, mvscale,
 7c4:	26310002 	addiu	s1,s1,2
 7c8:	001120c0 	sll	a0,s1,0x3
 7cc:	afb60010 	sw	s6,16(sp)
 7d0:	afb70014 	sw	s7,20(sp)
 7d4:	afa00018 	sw	zero,24(sp)
 7d8:	02642021 	addu	a0,s3,a0
 7dc:	02002821 	addu	a1,s0,zero
 7e0:	02803021 	addu	a2,s4,zero
 7e4:	0c000000 	jal	0 <decode_motion_vector>
 7e8:	02a03821 	addu	a3,s5,zero
		     0);
    }
}
 7ec:	8fbf0044 	lw	ra,68(sp)
 7f0:	8fb70040 	lw	s7,64(sp)
 7f4:	8fb6003c 	lw	s6,60(sp)
 7f8:	8fb50038 	lw	s5,56(sp)
 7fc:	8fb40034 	lw	s4,52(sp)
 800:	8fb30030 	lw	s3,48(sp)
 804:	8fb2002c 	lw	s2,44(sp)
 808:	8fb10028 	lw	s1,40(sp)
 80c:	8fb00024 	lw	s0,36(sp)
 810:	03e00008 	jr	ra
 814:	27bd0048 	addiu	sp,sp,72

00000818 <Initialize_Buffer>:
#include "getvlc.c"
#include "motion.c"

void
Initialize_Buffer ()
{
 818:	27bdffe8 	addiu	sp,sp,-24
 81c:	afbf0014 	sw	ra,20(sp)
  ld_Incnt = 0;
 820:	af800000 	sw	zero,0(gp)
  ld_Rdptr = ld_Rdbfr + 2048;
 824:	3c020000 	lui	v0,0x0
 828:	24420800 	addiu	v0,v0,2048
 82c:	af820000 	sw	v0,0(gp)
  ld_Rdmax = ld_Rdptr;
 830:	af820000 	sw	v0,0(gp)
  ld_Bfr = 68157440;
 834:	3c020410 	lui	v0,0x410
 838:	af820000 	sw	v0,0(gp)
  Flush_Buffer (0);		/* fills valid data into bfr */
 83c:	0c000000 	jal	0 <decode_motion_vector>
 840:	00002021 	addu	a0,zero,zero
}
 844:	8fbf0014 	lw	ra,20(sp)
 848:	00000000 	sll	zero,zero,0x0
 84c:	03e00008 	jr	ra
 850:	27bd0018 	addiu	sp,sp,24

00000854 <main>:

int
main ()
{
 854:	27bdff98 	addiu	sp,sp,-104
 858:	afbf0064 	sw	ra,100(sp)
  int dmvector[2];
  int motion_vertical_field_select[2][2];
  int s, motion_vector_count, mv_format, h_r_size, v_r_size, dmv, mvscale;

      main_result = 0;
      evalue = 0;
 85c:	af800000 	sw	zero,0(gp)
      System_Stream_Flag = 0;
 860:	af800000 	sw	zero,0(gp)
      v_r_size = 200;
      dmv = 0;
      mvscale = 1;
      for (i = 0; i < 2; i++)
	{
	  dmvector[i] = 0;
 864:	afa00048 	sw	zero,72(sp)
	  for (j = 0; j < 2; j++)
	    {
	      motion_vertical_field_select[i][j] = inmvfs[i][j];
 868:	3c030000 	lui	v1,0x0
 86c:	8c620000 	lw	v0,0(v1)
 870:	00000000 	sll	zero,zero,0x0
 874:	afa20050 	sw	v0,80(sp)
	      for (k = 0; k < 2; k++)
		PMV[i][j][k] = inPMV[i][j][k];
 878:	3c020000 	lui	v0,0x0
 87c:	8c440000 	lw	a0,0(v0)
 880:	00000000 	sll	zero,zero,0x0
 884:	afa40028 	sw	a0,40(sp)
 888:	24420000 	addiu	v0,v0,0
 88c:	8c440004 	lw	a0,4(v0)
 890:	00000000 	sll	zero,zero,0x0
 894:	afa4002c 	sw	a0,44(sp)
      for (i = 0; i < 2; i++)
	{
	  dmvector[i] = 0;
	  for (j = 0; j < 2; j++)
	    {
	      motion_vertical_field_select[i][j] = inmvfs[i][j];
 898:	24630000 	addiu	v1,v1,0
 89c:	8c640004 	lw	a0,4(v1)
 8a0:	00000000 	sll	zero,zero,0x0
 8a4:	afa40054 	sw	a0,84(sp)
	      for (k = 0; k < 2; k++)
		PMV[i][j][k] = inPMV[i][j][k];
 8a8:	8c440008 	lw	a0,8(v0)
 8ac:	00000000 	sll	zero,zero,0x0
 8b0:	afa40030 	sw	a0,48(sp)
 8b4:	8c44000c 	lw	a0,12(v0)
 8b8:	00000000 	sll	zero,zero,0x0
 8bc:	afa40034 	sw	a0,52(sp)
      v_r_size = 200;
      dmv = 0;
      mvscale = 1;
      for (i = 0; i < 2; i++)
	{
	  dmvector[i] = 0;
 8c0:	afa0004c 	sw	zero,76(sp)
	  for (j = 0; j < 2; j++)
	    {
	      motion_vertical_field_select[i][j] = inmvfs[i][j];
 8c4:	8c640008 	lw	a0,8(v1)
 8c8:	00000000 	sll	zero,zero,0x0
 8cc:	afa40058 	sw	a0,88(sp)
	      for (k = 0; k < 2; k++)
		PMV[i][j][k] = inPMV[i][j][k];
 8d0:	8c440010 	lw	a0,16(v0)
 8d4:	00000000 	sll	zero,zero,0x0
 8d8:	afa40038 	sw	a0,56(sp)
 8dc:	8c440014 	lw	a0,20(v0)
 8e0:	00000000 	sll	zero,zero,0x0
 8e4:	afa4003c 	sw	a0,60(sp)
      for (i = 0; i < 2; i++)
	{
	  dmvector[i] = 0;
	  for (j = 0; j < 2; j++)
	    {
	      motion_vertical_field_select[i][j] = inmvfs[i][j];
 8e8:	8c63000c 	lw	v1,12(v1)
 8ec:	00000000 	sll	zero,zero,0x0
 8f0:	afa3005c 	sw	v1,92(sp)
	      for (k = 0; k < 2; k++)
		PMV[i][j][k] = inPMV[i][j][k];
 8f4:	8c430018 	lw	v1,24(v0)
 8f8:	00000000 	sll	zero,zero,0x0
 8fc:	afa30040 	sw	v1,64(sp)
 900:	8c42001c 	lw	v0,28(v0)
	    }
	}

      Initialize_Buffer ();
 904:	0c000000 	jal	0 <decode_motion_vector>
 908:	afa20044 	sw	v0,68(sp)
      motion_vectors (PMV, dmvector, motion_vertical_field_select, s,
 90c:	24020001 	addiu	v0,zero,1
 910:	afa20010 	sw	v0,16(sp)
 914:	afa00014 	sw	zero,20(sp)
 918:	240300c8 	addiu	v1,zero,200
 91c:	afa30018 	sw	v1,24(sp)
 920:	afa3001c 	sw	v1,28(sp)
 924:	afa00020 	sw	zero,32(sp)
 928:	afa20024 	sw	v0,36(sp)
 92c:	27a40028 	addiu	a0,sp,40
 930:	27a50048 	addiu	a1,sp,72
 934:	27a60050 	addiu	a2,sp,80
 938:	0c000000 	jal	0 <decode_motion_vector>
 93c:	00003821 	addu	a3,zero,zero

      for (i = 0; i < 2; i++)
	for (j = 0; j < 2; j++)
	  {
	    main_result +=
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
 940:	3c020000 	lui	v0,0x0
 944:	8c430000 	lw	v1,0(v0)
 948:	8fa50050 	lw	a1,80(sp)
 94c:	00000000 	sll	zero,zero,0x0
 950:	00a32826 	xor	a1,a1,v1
 954:	0005282b 	sltu	a1,zero,a1
	    for (k = 0; k < 2; k++)
	      main_result += (PMV[i][j][k] != outPMV[i][j][k]);
 958:	3c030000 	lui	v1,0x0
 95c:	8c640000 	lw	a0,0(v1)
 960:	8fa60028 	lw	a2,40(sp)
 964:	00000000 	sll	zero,zero,0x0
 968:	00c42026 	xor	a0,a2,a0
 96c:	0004202b 	sltu	a0,zero,a0
 970:	00a42821 	addu	a1,a1,a0
 974:	24630000 	addiu	v1,v1,0
 978:	8c640004 	lw	a0,4(v1)
 97c:	8fa6002c 	lw	a2,44(sp)
 980:	00000000 	sll	zero,zero,0x0
 984:	00c42026 	xor	a0,a2,a0
 988:	0004202b 	sltu	a0,zero,a0
 98c:	00a42821 	addu	a1,a1,a0

      for (i = 0; i < 2; i++)
	for (j = 0; j < 2; j++)
	  {
	    main_result +=
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
 990:	24420000 	addiu	v0,v0,0
 994:	8c440004 	lw	a0,4(v0)
 998:	8fa60054 	lw	a2,84(sp)
 99c:	00000000 	sll	zero,zero,0x0
 9a0:	00c43026 	xor	a2,a2,a0
 9a4:	0006302b 	sltu	a2,zero,a2
	    for (k = 0; k < 2; k++)
	      main_result += (PMV[i][j][k] != outPMV[i][j][k]);
 9a8:	8c640008 	lw	a0,8(v1)
 9ac:	8fa70030 	lw	a3,48(sp)
 9b0:	00000000 	sll	zero,zero,0x0
 9b4:	00e42026 	xor	a0,a3,a0
 9b8:	0004202b 	sltu	a0,zero,a0
		      mvscale);

      for (i = 0; i < 2; i++)
	for (j = 0; j < 2; j++)
	  {
	    main_result +=
 9bc:	00c42021 	addu	a0,a2,a0
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
	    for (k = 0; k < 2; k++)
	      main_result += (PMV[i][j][k] != outPMV[i][j][k]);
 9c0:	00a42821 	addu	a1,a1,a0
 9c4:	8c64000c 	lw	a0,12(v1)
 9c8:	8fa60034 	lw	a2,52(sp)
 9cc:	00000000 	sll	zero,zero,0x0
 9d0:	00c42026 	xor	a0,a2,a0
 9d4:	0004202b 	sltu	a0,zero,a0
 9d8:	00a42821 	addu	a1,a1,a0
 9dc:	8c640010 	lw	a0,16(v1)
 9e0:	8fa60038 	lw	a2,56(sp)
 9e4:	00000000 	sll	zero,zero,0x0
 9e8:	00c43026 	xor	a2,a2,a0
 9ec:	0006302b 	sltu	a2,zero,a2

      for (i = 0; i < 2; i++)
	for (j = 0; j < 2; j++)
	  {
	    main_result +=
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
 9f0:	8c440008 	lw	a0,8(v0)
 9f4:	8fa70058 	lw	a3,88(sp)
 9f8:	00000000 	sll	zero,zero,0x0
 9fc:	00e42026 	xor	a0,a3,a0
 a00:	0004202b 	sltu	a0,zero,a0
		      mvscale);

      for (i = 0; i < 2; i++)
	for (j = 0; j < 2; j++)
	  {
	    main_result +=
 a04:	00c42021 	addu	a0,a2,a0
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
	    for (k = 0; k < 2; k++)
	      main_result += (PMV[i][j][k] != outPMV[i][j][k]);
 a08:	00852021 	addu	a0,a0,a1
 a0c:	8c650014 	lw	a1,20(v1)
 a10:	8fa6003c 	lw	a2,60(sp)
 a14:	00000000 	sll	zero,zero,0x0
 a18:	00c52826 	xor	a1,a2,a1
 a1c:	0005282b 	sltu	a1,zero,a1
 a20:	00852021 	addu	a0,a0,a1

      for (i = 0; i < 2; i++)
	for (j = 0; j < 2; j++)
	  {
	    main_result +=
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
 a24:	8c42000c 	lw	v0,12(v0)
 a28:	8fa5005c 	lw	a1,92(sp)
 a2c:	00000000 	sll	zero,zero,0x0
 a30:	00a22826 	xor	a1,a1,v0
 a34:	0005282b 	sltu	a1,zero,a1
	    for (k = 0; k < 2; k++)
	      main_result += (PMV[i][j][k] != outPMV[i][j][k]);
 a38:	8c620018 	lw	v0,24(v1)
 a3c:	8fa60040 	lw	a2,64(sp)
 a40:	00000000 	sll	zero,zero,0x0
 a44:	00c21026 	xor	v0,a2,v0
 a48:	0002102b 	sltu	v0,zero,v0
		      mvscale);

      for (i = 0; i < 2; i++)
	for (j = 0; j < 2; j++)
	  {
	    main_result +=
 a4c:	00a21021 	addu	v0,a1,v0
	      (motion_vertical_field_select[i][j] != outmvfs[i][j]);
	    for (k = 0; k < 2; k++)
	      main_result += (PMV[i][j][k] != outPMV[i][j][k]);
 a50:	00441021 	addu	v0,v0,a0
 a54:	8c63001c 	lw	v1,28(v1)
 a58:	8fa40044 	lw	a0,68(sp)
 a5c:	00000000 	sll	zero,zero,0x0
 a60:	00831826 	xor	v1,a0,v1
 a64:	0003182b 	sltu	v1,zero,v1

  
    //printf ("%d\n", main_result);
  return main_result;

}
 a68:	00621021 	addu	v0,v1,v0
 a6c:	8fbf0064 	lw	ra,100(sp)
 a70:	00000000 	sll	zero,zero,0x0
 a74:	03e00008 	jr	ra
 a78:	27bd0068 	addiu	sp,sp,104

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
