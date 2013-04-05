
gsm.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <gsm_add>:
#define	saturate(x) 	\
	((x) < MIN_WORD ? MIN_WORD : (x) > MAX_WORD ? MAX_WORD: (x))

word
gsm_add (word a, word b)
{
       0:	00042400 	sll	a0,a0,0x10
       4:	00042403 	sra	a0,a0,0x10
       8:	00052c00 	sll	a1,a1,0x10
       c:	00052c03 	sra	a1,a1,0x10
  longword sum;
  sum = (longword) a + (longword) b;
      10:	00a42021 	addu	a0,a1,a0
  return saturate (sum);
      14:	28828000 	slti	v0,a0,-32768
      18:	14400009 	bnez	v0,40 <gsm_add+0x40>
      1c:	34038000 	ori	v1,zero,0x8000
      20:	00801021 	addu	v0,a0,zero
      24:	0083202a 	slt	a0,a0,v1
      28:	14800002 	bnez	a0,34 <gsm_add+0x34>
      2c:	00000000 	sll	zero,zero,0x0
      30:	24027fff 	addiu	v0,zero,32767
      34:	00021400 	sll	v0,v0,0x10
      38:	03e00008 	jr	ra
      3c:	00021403 	sra	v0,v0,0x10
}
      40:	03e00008 	jr	ra
      44:	24028000 	addiu	v0,zero,-32768

00000048 <gsm_mult>:

word
gsm_mult (word a, word b)
{
      48:	00042400 	sll	a0,a0,0x10
      4c:	00042403 	sra	a0,a0,0x10
      50:	00052c00 	sll	a1,a1,0x10
  if (a == MIN_WORD && b == MIN_WORD)
      54:	24028000 	addiu	v0,zero,-32768
      58:	14820003 	bne	a0,v0,68 <gsm_mult+0x20>
      5c:	00052c03 	sra	a1,a1,0x10
      60:	10a20007 	beq	a1,v0,80 <gsm_mult+0x38>
      64:	00000000 	sll	zero,zero,0x0
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
      68:	00a40018 	mult	a1,a0
      6c:	00001012 	mflo	v0
      70:	000213c3 	sra	v0,v0,0xf
      74:	00021400 	sll	v0,v0,0x10
      78:	03e00008 	jr	ra
      7c:	00021403 	sra	v0,v0,0x10
}
      80:	03e00008 	jr	ra
      84:	24027fff 	addiu	v0,zero,32767

00000088 <gsm_mult_r>:

word
gsm_mult_r (word a, word b)
{
      88:	00042400 	sll	a0,a0,0x10
      8c:	00052c00 	sll	a1,a1,0x10
      90:	00052c03 	sra	a1,a1,0x10
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
      94:	24028000 	addiu	v0,zero,-32768
      98:	14a20003 	bne	a1,v0,a8 <gsm_mult_r+0x20>
      9c:	00042403 	sra	a0,a0,0x10
      a0:	10820008 	beq	a0,v0,c4 <gsm_mult_r+0x3c>
      a4:	00000000 	sll	zero,zero,0x0
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
      a8:	00a40018 	mult	a1,a0
      ac:	00001012 	mflo	v0
      b0:	24424000 	addiu	v0,v0,16384
      prod >>= 15;
      b4:	000213c3 	sra	v0,v0,0xf
      return prod & 0xFFFF;
      b8:	00021400 	sll	v0,v0,0x10
      bc:	03e00008 	jr	ra
      c0:	00021403 	sra	v0,v0,0x10
    }
}
      c4:	03e00008 	jr	ra
      c8:	24027fff 	addiu	v0,zero,32767

000000cc <gsm_abs>:

word
gsm_abs (word a)
{
      cc:	00041400 	sll	v0,a0,0x10
      d0:	00021403 	sra	v0,v0,0x10
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
      d4:	04410008 	bgez	v0,f8 <gsm_abs+0x2c>
      d8:	24038000 	addiu	v1,zero,-32768
      dc:	10430005 	beq	v0,v1,f4 <gsm_abs+0x28>
      e0:	00000000 	sll	zero,zero,0x0
      e4:	00021023 	negu	v0,v0
      e8:	00021400 	sll	v0,v0,0x10
      ec:	03e00008 	jr	ra
      f0:	00021403 	sra	v0,v0,0x10
      f4:	24027fff 	addiu	v0,zero,32767
}
      f8:	03e00008 	jr	ra
      fc:	00000000 	sll	zero,zero,0x0

00000100 <gsm_norm>:
 *
 * (That's 'ffs', only from the left, not the right..)
 */
{

  if (a < 0)
     100:	04810007 	bgez	a0,120 <gsm_norm+0x20>
     104:	3c02ffff 	lui	v0,0xffff
    {
      if (a <= -1073741824)
     108:	3c02c000 	lui	v0,0xc000
     10c:	24420001 	addiu	v0,v0,1
     110:	0082102a 	slt	v0,a0,v0
     114:	14400034 	bnez	v0,1e8 <gsm_norm+0xe8>
     118:	00042027 	nor	a0,zero,a0
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     11c:	3c02ffff 	lui	v0,0xffff
     120:	00821024 	and	v0,a0,v0
     124:	10400019 	beqz	v0,18c <gsm_norm+0x8c>
     128:	3082ff00 	andi	v0,a0,0xff00
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     12c:	3c02ff00 	lui	v0,0xff00
     130:	00821024 	and	v0,a0,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     134:	1040000a 	beqz	v0,160 <gsm_norm+0x60>
     138:	00041e02 	srl	v1,a0,0x18
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     13c:	3c020000 	lui	v0,0x0
     140:	24420000 	addiu	v0,v0,0
     144:	00621821 	addu	v1,v1,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     148:	90620000 	lbu	v0,0(v1)
     14c:	00000000 	sll	zero,zero,0x0
     150:	2442ffff 	addiu	v0,v0,-1
     154:	00021400 	sll	v0,v0,0x10
     158:	03e00008 	jr	ra
     15c:	00021403 	sra	v0,v0,0x10
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
     160:	00042403 	sra	a0,a0,0x10
     164:	308400ff 	andi	a0,a0,0xff
     168:	3c020000 	lui	v0,0x0
     16c:	24420000 	addiu	v0,v0,0
     170:	00822021 	addu	a0,a0,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     174:	90820000 	lbu	v0,0(a0)
     178:	00000000 	sll	zero,zero,0x0
     17c:	24420007 	addiu	v0,v0,7
     180:	00021400 	sll	v0,v0,0x10
     184:	03e00008 	jr	ra
     188:	00021403 	sra	v0,v0,0x10
     18c:	1040000c 	beqz	v0,1c0 <gsm_norm+0xc0>
     190:	00000000 	sll	zero,zero,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
     194:	00042203 	sra	a0,a0,0x8
     198:	308400ff 	andi	a0,a0,0xff
     19c:	3c020000 	lui	v0,0x0
     1a0:	24420000 	addiu	v0,v0,0
     1a4:	00822021 	addu	a0,a0,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     1a8:	90820000 	lbu	v0,0(a0)
     1ac:	00000000 	sll	zero,zero,0x0
     1b0:	2442000f 	addiu	v0,v0,15
     1b4:	00021400 	sll	v0,v0,0x10
     1b8:	03e00008 	jr	ra
     1bc:	00021403 	sra	v0,v0,0x10
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
     1c0:	308400ff 	andi	a0,a0,0xff
     1c4:	3c020000 	lui	v0,0x0
     1c8:	24420000 	addiu	v0,v0,0
     1cc:	00822021 	addu	a0,a0,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     1d0:	90820000 	lbu	v0,0(a0)
     1d4:	00000000 	sll	zero,zero,0x0
     1d8:	24420017 	addiu	v0,v0,23
     1dc:	00021400 	sll	v0,v0,0x10
     1e0:	03e00008 	jr	ra
     1e4:	00021403 	sra	v0,v0,0x10
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
}
     1e8:	03e00008 	jr	ra
     1ec:	00001021 	addu	v0,zero,zero

000001f0 <gsm_div>:

word
gsm_div (word num, word denum)
{
     1f0:	00042400 	sll	a0,a0,0x10
     1f4:	00042403 	sra	a0,a0,0x10
     1f8:	00052c00 	sll	a1,a1,0x10
  /* The parameter num sometimes becomes zero.
   * Although this is explicitly guarded against in 4.2.5,
   * we assume that the result should then be zero as well.
   */

  if (num == 0)
     1fc:	10800012 	beqz	a0,248 <gsm_div+0x58>
     200:	00052c03 	sra	a1,a1,0x10
  longword L_num;
  longword L_denum;
  word div;
  int k;

  L_num = num;
     204:	2403000f 	addiu	v1,zero,15
     208:	00001021 	addu	v0,zero,zero
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     20c:	00021040 	sll	v0,v0,0x1
     210:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;
     214:	00042040 	sll	a0,a0,0x1

      if (L_num >= L_denum)
     218:	0085302a 	slt	a2,a0,a1
     21c:	14c00005 	bnez	a2,234 <gsm_div+0x44>
     220:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
     224:	00852023 	subu	a0,a0,a1
	  div++;
     228:	24420001 	addiu	v0,v0,1
     22c:	00021400 	sll	v0,v0,0x10
     230:	00021403 	sra	v0,v0,0x10
     234:	2463ffff 	addiu	v1,v1,-1
   */

  if (num == 0)
    return 0;

  while (k--)
     238:	1460fff4 	bnez	v1,20c <gsm_div+0x1c>
     23c:	00000000 	sll	zero,zero,0x0
     240:	03e00008 	jr	ra
     244:	00000000 	sll	zero,zero,0x0
	  div++;
	}
    }

  return div;
}
     248:	03e00008 	jr	ra
     24c:	00001021 	addu	v0,zero,zero

00000250 <Autocorrelation>:
		 longword * L_ACF /* [0..8]       OUT     */ )
/*
 *  The goal is to compute the array L_ACF[k].  The signal s[i] must
 *  be scaled in order to avoid an overflow situation.
 */
{
     250:	27bdffd0 	addiu	sp,sp,-48
     254:	afbf002c 	sw	ra,44(sp)
     258:	afb50028 	sw	s5,40(sp)
     25c:	afb40024 	sw	s4,36(sp)
     260:	afb30020 	sw	s3,32(sp)
     264:	afb2001c 	sw	s2,28(sp)
     268:	afb10018 	sw	s1,24(sp)
     26c:	afb00014 	sw	s0,20(sp)
     270:	00808821 	addu	s1,a0,zero
     274:	00a08021 	addu	s0,a1,zero
     278:	00009021 	addu	s2,zero,zero
  word *sp;
  word sl;

  /*  Search for the maximum.
   */
  smax = 0;
     27c:	00009821 	addu	s3,zero,zero
  for (k = 0; k <= 159; k++)
     280:	24140140 	addiu	s4,zero,320

/* 4.2.4 */


void
Autocorrelation (word * s /* [0..159]     IN/OUT  */ ,
     284:	02321021 	addu	v0,s1,s2
  /*  Search for the maximum.
   */
  smax = 0;
  for (k = 0; k <= 159; k++)
    {
      temp = GSM_ABS (s[k]);
     288:	84440000 	lh	a0,0(v0)
     28c:	0c000000 	jal	0 <gsm_add>
     290:	00000000 	sll	zero,zero,0x0
     294:	02601821 	addu	v1,s3,zero
     298:	00022400 	sll	a0,v0,0x10
     29c:	00042403 	sra	a0,a0,0x10
     2a0:	0264982a 	slt	s3,s3,a0
     2a4:	12600003 	beqz	s3,2b4 <Autocorrelation+0x64>
     2a8:	00039c00 	sll	s3,v1,0x10
     2ac:	00401821 	addu	v1,v0,zero
     2b0:	00039c00 	sll	s3,v1,0x10
     2b4:	26520002 	addiu	s2,s2,2
  word sl;

  /*  Search for the maximum.
   */
  smax = 0;
  for (k = 0; k <= 159; k++)
     2b8:	1654fff2 	bne	s2,s4,284 <Autocorrelation+0x34>
     2bc:	00139c03 	sra	s3,s3,0x10
	smax = temp;
    }

  /*  Computation of the scaling factor.
   */
  if (smax == 0)
     2c0:	12600017 	beqz	s3,320 <Autocorrelation+0xd0>
     2c4:	0000a021 	addu	s4,zero,zero
    scalauto = 0;
  else
    scalauto = 4 - gsm_norm ((longword) smax << 16);	/* sub(4,..) */
     2c8:	0c000000 	jal	0 <gsm_add>
     2cc:	00132400 	sll	a0,s3,0x10
     2d0:	24140004 	addiu	s4,zero,4
     2d4:	0282a023 	subu	s4,s4,v0
     2d8:	0014a400 	sll	s4,s4,0x10
     2dc:	0014a403 	sra	s4,s4,0x10

  if (scalauto > 0 && scalauto <= 4)
     2e0:	2682ffff 	addiu	v0,s4,-1
     2e4:	3042ffff 	andi	v0,v0,0xffff
     2e8:	2c420004 	sltiu	v0,v0,4
     2ec:	1040000c 	beqz	v0,320 <Autocorrelation+0xd0>
     2f0:	2682ffff 	addiu	v0,s4,-1
    {
      n = scalauto;
      for (k = 0; k <= 159; k++)
	s[k] = GSM_MULT_R (s[k], 16384 >> (n - 1));
     2f4:	24154000 	addiu	s5,zero,16384
     2f8:	0055a807 	srav	s5,s5,v0
     2fc:	02209021 	addu	s2,s1,zero
     300:	241300a0 	addiu	s3,zero,160
     304:	86440000 	lh	a0,0(s2)
     308:	0c000000 	jal	0 <gsm_add>
     30c:	02a02821 	addu	a1,s5,zero
     310:	a6420000 	sh	v0,0(s2)
     314:	2673ffff 	addiu	s3,s3,-1
    scalauto = 4 - gsm_norm ((longword) smax << 16);	/* sub(4,..) */

  if (scalauto > 0 && scalauto <= 4)
    {
      n = scalauto;
      for (k = 0; k <= 159; k++)
     318:	1660fffa 	bnez	s3,304 <Autocorrelation+0xb4>
     31c:	26520002 	addiu	s2,s2,2

  /*  Compute the L_ACF[..].
   */
  {
    sp = s;
    sl = *sp;
     320:	86230000 	lh	v1,0(s1)
     324:	00001021 	addu	v0,zero,zero

#define STEP(k)	 L_ACF[k] += ((longword)sl * sp[ -(k) ]);

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
     328:	2405ffdc 	addiu	a1,zero,-36

/* 4.2.4 */


void
Autocorrelation (word * s /* [0..159]     IN/OUT  */ ,
     32c:	02022021 	addu	a0,s0,v0

#define STEP(k)	 L_ACF[k] += ((longword)sl * sp[ -(k) ]);

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;
     330:	2442fffc 	addiu	v0,v0,-4
    sl = *sp;

#define STEP(k)	 L_ACF[k] += ((longword)sl * sp[ -(k) ]);

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
     334:	1445fffd 	bne	v0,a1,32c <Autocorrelation+0xdc>
     338:	ac800020 	sw	zero,32(a0)
      L_ACF[k] = 0;

    STEP (0);
     33c:	86220000 	lh	v0,0(s1)
     340:	00000000 	sll	zero,zero,0x0
     344:	00430018 	mult	v0,v1
     348:	00001812 	mflo	v1
     34c:	8e020000 	lw	v0,0(s0)
     350:	00000000 	sll	zero,zero,0x0
     354:	00621821 	addu	v1,v1,v0
     358:	ae030000 	sw	v1,0(s0)
    NEXTI;
    STEP (0);
     35c:	86220002 	lh	v0,2(s1)
     360:	00000000 	sll	zero,zero,0x0
     364:	00420018 	mult	v0,v0
     368:	00002012 	mflo	a0
     36c:	00831821 	addu	v1,a0,v1
     370:	ae030000 	sw	v1,0(s0)
    STEP (1);
     374:	260a0004 	addiu	t2,s0,4
     378:	86230000 	lh	v1,0(s1)
     37c:	00000000 	sll	zero,zero,0x0
     380:	00430018 	mult	v0,v1
     384:	00001012 	mflo	v0
     388:	8e030004 	lw	v1,4(s0)
     38c:	00000000 	sll	zero,zero,0x0
     390:	00621021 	addu	v0,v1,v0
     394:	ae020004 	sw	v0,4(s0)
    NEXTI;
    STEP (0);
     398:	86220004 	lh	v0,4(s1)
     39c:	00000000 	sll	zero,zero,0x0
     3a0:	00420018 	mult	v0,v0
     3a4:	8e030000 	lw	v1,0(s0)
     3a8:	00002012 	mflo	a0
     3ac:	00641821 	addu	v1,v1,a0
     3b0:	ae030000 	sw	v1,0(s0)
    STEP (1);
     3b4:	86230002 	lh	v1,2(s1)
     3b8:	00000000 	sll	zero,zero,0x0
     3bc:	00620018 	mult	v1,v0
     3c0:	8e030004 	lw	v1,4(s0)
     3c4:	00002812 	mflo	a1
     3c8:	00651821 	addu	v1,v1,a1
     3cc:	ae030004 	sw	v1,4(s0)
    STEP (2);
     3d0:	26090008 	addiu	t1,s0,8
     3d4:	86230000 	lh	v1,0(s1)
     3d8:	00000000 	sll	zero,zero,0x0
     3dc:	00430018 	mult	v0,v1
     3e0:	00001012 	mflo	v0
     3e4:	8e030008 	lw	v1,8(s0)
     3e8:	00000000 	sll	zero,zero,0x0
     3ec:	00621021 	addu	v0,v1,v0
     3f0:	ae020008 	sw	v0,8(s0)
    NEXTI;
     3f4:	26230006 	addiu	v1,s1,6
    STEP (0);
     3f8:	86220006 	lh	v0,6(s1)
     3fc:	00000000 	sll	zero,zero,0x0
     400:	00420018 	mult	v0,v0
     404:	8e040000 	lw	a0,0(s0)
     408:	00002812 	mflo	a1
     40c:	00852021 	addu	a0,a0,a1
     410:	ae040000 	sw	a0,0(s0)
    STEP (1);
     414:	8464fffe 	lh	a0,-2(v1)
     418:	00000000 	sll	zero,zero,0x0
     41c:	00820018 	mult	a0,v0
     420:	8e040004 	lw	a0,4(s0)
     424:	00005812 	mflo	t3
     428:	008b2021 	addu	a0,a0,t3
     42c:	ae040004 	sw	a0,4(s0)
    STEP (2);
     430:	8463fffc 	lh	v1,-4(v1)
     434:	00000000 	sll	zero,zero,0x0
     438:	00620018 	mult	v1,v0
     43c:	8e030008 	lw	v1,8(s0)
     440:	00006812 	mflo	t5
     444:	006d1821 	addu	v1,v1,t5
     448:	ae030008 	sw	v1,8(s0)
    STEP (3);
     44c:	2608000c 	addiu	t0,s0,12
     450:	86230000 	lh	v1,0(s1)
     454:	00000000 	sll	zero,zero,0x0
     458:	00430018 	mult	v0,v1
     45c:	00001012 	mflo	v0
     460:	8e03000c 	lw	v1,12(s0)
     464:	00000000 	sll	zero,zero,0x0
     468:	00621021 	addu	v0,v1,v0
     46c:	ae02000c 	sw	v0,12(s0)
    NEXTI;
     470:	26230008 	addiu	v1,s1,8
    STEP (0);
     474:	86220008 	lh	v0,8(s1)
     478:	00000000 	sll	zero,zero,0x0
     47c:	00420018 	mult	v0,v0
     480:	8e040000 	lw	a0,0(s0)
     484:	00002812 	mflo	a1
     488:	00852021 	addu	a0,a0,a1
     48c:	ae040000 	sw	a0,0(s0)
    STEP (1);
     490:	8464fffe 	lh	a0,-2(v1)
     494:	00000000 	sll	zero,zero,0x0
     498:	00820018 	mult	a0,v0
     49c:	8e040004 	lw	a0,4(s0)
     4a0:	00005812 	mflo	t3
     4a4:	008b2021 	addu	a0,a0,t3
     4a8:	ae040004 	sw	a0,4(s0)
    STEP (2);
     4ac:	8464fffc 	lh	a0,-4(v1)
     4b0:	00000000 	sll	zero,zero,0x0
     4b4:	00820018 	mult	a0,v0
     4b8:	8e040008 	lw	a0,8(s0)
     4bc:	00006812 	mflo	t5
     4c0:	008d2021 	addu	a0,a0,t5
     4c4:	ae040008 	sw	a0,8(s0)
    STEP (3);
     4c8:	8463fffa 	lh	v1,-6(v1)
     4cc:	00000000 	sll	zero,zero,0x0
     4d0:	00620018 	mult	v1,v0
     4d4:	8e03000c 	lw	v1,12(s0)
     4d8:	00002012 	mflo	a0
     4dc:	00641821 	addu	v1,v1,a0
     4e0:	ae03000c 	sw	v1,12(s0)
    STEP (4);
     4e4:	26070010 	addiu	a3,s0,16
     4e8:	86230000 	lh	v1,0(s1)
     4ec:	00000000 	sll	zero,zero,0x0
     4f0:	00430018 	mult	v0,v1
     4f4:	00001012 	mflo	v0
     4f8:	8e030010 	lw	v1,16(s0)
     4fc:	00000000 	sll	zero,zero,0x0
     500:	00621021 	addu	v0,v1,v0
     504:	ae020010 	sw	v0,16(s0)
    NEXTI;
     508:	2623000a 	addiu	v1,s1,10
    STEP (0);
     50c:	8622000a 	lh	v0,10(s1)
     510:	00000000 	sll	zero,zero,0x0
     514:	00420018 	mult	v0,v0
     518:	8e040000 	lw	a0,0(s0)
     51c:	00002812 	mflo	a1
     520:	00852021 	addu	a0,a0,a1
     524:	ae040000 	sw	a0,0(s0)
    STEP (1);
     528:	8464fffe 	lh	a0,-2(v1)
     52c:	00000000 	sll	zero,zero,0x0
     530:	00820018 	mult	a0,v0
     534:	8e040004 	lw	a0,4(s0)
     538:	00005812 	mflo	t3
     53c:	008b2021 	addu	a0,a0,t3
     540:	ae040004 	sw	a0,4(s0)
    STEP (2);
     544:	8464fffc 	lh	a0,-4(v1)
     548:	00000000 	sll	zero,zero,0x0
     54c:	00820018 	mult	a0,v0
     550:	8e040008 	lw	a0,8(s0)
     554:	00006812 	mflo	t5
     558:	008d2021 	addu	a0,a0,t5
     55c:	ae040008 	sw	a0,8(s0)
    STEP (3);
     560:	8464fffa 	lh	a0,-6(v1)
     564:	00000000 	sll	zero,zero,0x0
     568:	00820018 	mult	a0,v0
     56c:	8e04000c 	lw	a0,12(s0)
     570:	00002812 	mflo	a1
     574:	00852021 	addu	a0,a0,a1
     578:	ae04000c 	sw	a0,12(s0)
    STEP (4);
     57c:	8463fff8 	lh	v1,-8(v1)
     580:	00000000 	sll	zero,zero,0x0
     584:	00620018 	mult	v1,v0
     588:	8e030010 	lw	v1,16(s0)
     58c:	00005812 	mflo	t3
     590:	006b1821 	addu	v1,v1,t3
     594:	ae030010 	sw	v1,16(s0)
    STEP (5);
     598:	26060014 	addiu	a2,s0,20
     59c:	86230000 	lh	v1,0(s1)
     5a0:	00000000 	sll	zero,zero,0x0
     5a4:	00430018 	mult	v0,v1
     5a8:	00001012 	mflo	v0
     5ac:	8e030014 	lw	v1,20(s0)
     5b0:	00000000 	sll	zero,zero,0x0
     5b4:	00621021 	addu	v0,v1,v0
     5b8:	ae020014 	sw	v0,20(s0)
    NEXTI;
     5bc:	2623000c 	addiu	v1,s1,12
    STEP (0);
     5c0:	8622000c 	lh	v0,12(s1)
     5c4:	00000000 	sll	zero,zero,0x0
     5c8:	00420018 	mult	v0,v0
     5cc:	8e040000 	lw	a0,0(s0)
     5d0:	00002812 	mflo	a1
     5d4:	00852021 	addu	a0,a0,a1
     5d8:	ae040000 	sw	a0,0(s0)
    STEP (1);
     5dc:	8464fffe 	lh	a0,-2(v1)
     5e0:	00000000 	sll	zero,zero,0x0
     5e4:	00820018 	mult	a0,v0
     5e8:	8e040004 	lw	a0,4(s0)
     5ec:	00005812 	mflo	t3
     5f0:	008b2021 	addu	a0,a0,t3
     5f4:	ae040004 	sw	a0,4(s0)
    STEP (2);
     5f8:	8464fffc 	lh	a0,-4(v1)
     5fc:	00000000 	sll	zero,zero,0x0
     600:	00820018 	mult	a0,v0
     604:	8e040008 	lw	a0,8(s0)
     608:	00006812 	mflo	t5
     60c:	008d2021 	addu	a0,a0,t5
     610:	ae040008 	sw	a0,8(s0)
    STEP (3);
     614:	8464fffa 	lh	a0,-6(v1)
     618:	00000000 	sll	zero,zero,0x0
     61c:	00820018 	mult	a0,v0
     620:	8e04000c 	lw	a0,12(s0)
     624:	00002812 	mflo	a1
     628:	00852021 	addu	a0,a0,a1
     62c:	ae04000c 	sw	a0,12(s0)
    STEP (4);
     630:	8464fff8 	lh	a0,-8(v1)
     634:	00000000 	sll	zero,zero,0x0
     638:	00820018 	mult	a0,v0
     63c:	8e040010 	lw	a0,16(s0)
     640:	00005812 	mflo	t3
     644:	008b2021 	addu	a0,a0,t3
     648:	ae040010 	sw	a0,16(s0)
    STEP (5);
     64c:	8463fff6 	lh	v1,-10(v1)
     650:	00000000 	sll	zero,zero,0x0
     654:	00620018 	mult	v1,v0
     658:	8e030014 	lw	v1,20(s0)
     65c:	00006812 	mflo	t5
     660:	006d1821 	addu	v1,v1,t5
     664:	ae030014 	sw	v1,20(s0)
    STEP (6);
     668:	26050018 	addiu	a1,s0,24
     66c:	86230000 	lh	v1,0(s1)
     670:	00000000 	sll	zero,zero,0x0
     674:	00430018 	mult	v0,v1
     678:	00001012 	mflo	v0
     67c:	8e030018 	lw	v1,24(s0)
     680:	00000000 	sll	zero,zero,0x0
     684:	00621021 	addu	v0,v1,v0
     688:	ae020018 	sw	v0,24(s0)
    NEXTI;
     68c:	2622000e 	addiu	v0,s1,14
    STEP (0);
     690:	8623000e 	lh	v1,14(s1)
     694:	00000000 	sll	zero,zero,0x0
     698:	00630018 	mult	v1,v1
     69c:	8e040000 	lw	a0,0(s0)
     6a0:	00005812 	mflo	t3
     6a4:	008b2021 	addu	a0,a0,t3
     6a8:	ae040000 	sw	a0,0(s0)
    STEP (1);
     6ac:	8444fffe 	lh	a0,-2(v0)
     6b0:	00000000 	sll	zero,zero,0x0
     6b4:	00830018 	mult	a0,v1
     6b8:	8e040004 	lw	a0,4(s0)
     6bc:	00006812 	mflo	t5
     6c0:	008d2021 	addu	a0,a0,t5
     6c4:	ae040004 	sw	a0,4(s0)
    STEP (2);
     6c8:	8444fffc 	lh	a0,-4(v0)
     6cc:	00000000 	sll	zero,zero,0x0
     6d0:	00830018 	mult	a0,v1
     6d4:	8e040008 	lw	a0,8(s0)
     6d8:	00005812 	mflo	t3
     6dc:	008b2021 	addu	a0,a0,t3
     6e0:	ae040008 	sw	a0,8(s0)
    STEP (3);
     6e4:	8444fffa 	lh	a0,-6(v0)
     6e8:	00000000 	sll	zero,zero,0x0
     6ec:	00830018 	mult	a0,v1
     6f0:	8e04000c 	lw	a0,12(s0)
     6f4:	00006812 	mflo	t5
     6f8:	008d2021 	addu	a0,a0,t5
     6fc:	ae04000c 	sw	a0,12(s0)
    STEP (4);
     700:	8444fff8 	lh	a0,-8(v0)
     704:	00000000 	sll	zero,zero,0x0
     708:	00830018 	mult	a0,v1
     70c:	8e040010 	lw	a0,16(s0)
     710:	00005812 	mflo	t3
     714:	008b2021 	addu	a0,a0,t3
     718:	ae040010 	sw	a0,16(s0)
    STEP (5);
     71c:	8444fff6 	lh	a0,-10(v0)
     720:	00000000 	sll	zero,zero,0x0
     724:	00830018 	mult	a0,v1
     728:	8e040014 	lw	a0,20(s0)
     72c:	00006812 	mflo	t5
     730:	008d2021 	addu	a0,a0,t5
     734:	ae040014 	sw	a0,20(s0)
    STEP (6);
     738:	8444fff4 	lh	a0,-12(v0)
     73c:	00000000 	sll	zero,zero,0x0
     740:	00830018 	mult	a0,v1
     744:	8e040018 	lw	a0,24(s0)
     748:	00005812 	mflo	t3
     74c:	008b2021 	addu	a0,a0,t3
     750:	ae040018 	sw	a0,24(s0)
    STEP (7);
     754:	2604001c 	addiu	a0,s0,28
     758:	862b0000 	lh	t3,0(s1)
     75c:	00000000 	sll	zero,zero,0x0
     760:	006b0018 	mult	v1,t3
     764:	00001812 	mflo	v1
     768:	8e0b001c 	lw	t3,28(s0)
     76c:	00000000 	sll	zero,zero,0x0
     770:	01631821 	addu	v1,t3,v1
     774:	ae03001c 	sw	v1,28(s0)

/* 4.2.4 */


void
Autocorrelation (word * s /* [0..159]     IN/OUT  */ ,
     778:	262b013e 	addiu	t3,s1,318
    STEP (7);

    for (i = 8; i <= 159; i++)
      {

	NEXTI;
     77c:	24420002 	addiu	v0,v0,2

	STEP (0);
     780:	84430000 	lh	v1,0(v0)
     784:	00000000 	sll	zero,zero,0x0
     788:	00630018 	mult	v1,v1
     78c:	8e0c0000 	lw	t4,0(s0)
     790:	00006812 	mflo	t5
     794:	018d6021 	addu	t4,t4,t5
     798:	ae0c0000 	sw	t4,0(s0)
	STEP (1);
     79c:	844cfffe 	lh	t4,-2(v0)
     7a0:	00000000 	sll	zero,zero,0x0
     7a4:	01830018 	mult	t4,v1
     7a8:	00006012 	mflo	t4
     7ac:	8d4d0000 	lw	t5,0(t2)
     7b0:	00000000 	sll	zero,zero,0x0
     7b4:	01ac6021 	addu	t4,t5,t4
     7b8:	ad4c0000 	sw	t4,0(t2)
	STEP (2);
     7bc:	844cfffc 	lh	t4,-4(v0)
     7c0:	00000000 	sll	zero,zero,0x0
     7c4:	01830018 	mult	t4,v1
     7c8:	00006012 	mflo	t4
     7cc:	8d2d0000 	lw	t5,0(t1)
     7d0:	00000000 	sll	zero,zero,0x0
     7d4:	01ac6021 	addu	t4,t5,t4
     7d8:	ad2c0000 	sw	t4,0(t1)
	STEP (3);
     7dc:	844cfffa 	lh	t4,-6(v0)
     7e0:	00000000 	sll	zero,zero,0x0
     7e4:	01830018 	mult	t4,v1
     7e8:	00006012 	mflo	t4
     7ec:	8d0d0000 	lw	t5,0(t0)
     7f0:	00000000 	sll	zero,zero,0x0
     7f4:	01ac6021 	addu	t4,t5,t4
     7f8:	ad0c0000 	sw	t4,0(t0)
	STEP (4);
     7fc:	844cfff8 	lh	t4,-8(v0)
     800:	00000000 	sll	zero,zero,0x0
     804:	01830018 	mult	t4,v1
     808:	00006012 	mflo	t4
     80c:	8ced0000 	lw	t5,0(a3)
     810:	00000000 	sll	zero,zero,0x0
     814:	01ac6021 	addu	t4,t5,t4
     818:	acec0000 	sw	t4,0(a3)
	STEP (5);
     81c:	844cfff6 	lh	t4,-10(v0)
     820:	00000000 	sll	zero,zero,0x0
     824:	01830018 	mult	t4,v1
     828:	00006012 	mflo	t4
     82c:	8ccd0000 	lw	t5,0(a2)
     830:	00000000 	sll	zero,zero,0x0
     834:	01ac6021 	addu	t4,t5,t4
     838:	accc0000 	sw	t4,0(a2)
	STEP (6);
     83c:	844cfff4 	lh	t4,-12(v0)
     840:	00000000 	sll	zero,zero,0x0
     844:	01830018 	mult	t4,v1
     848:	00006012 	mflo	t4
     84c:	8cad0000 	lw	t5,0(a1)
     850:	00000000 	sll	zero,zero,0x0
     854:	01ac6021 	addu	t4,t5,t4
     858:	acac0000 	sw	t4,0(a1)
	STEP (7);
     85c:	844cfff2 	lh	t4,-14(v0)
     860:	00000000 	sll	zero,zero,0x0
     864:	01830018 	mult	t4,v1
     868:	00006012 	mflo	t4
     86c:	8c8d0000 	lw	t5,0(a0)
     870:	00000000 	sll	zero,zero,0x0
     874:	01ac6021 	addu	t4,t5,t4
     878:	ac8c0000 	sw	t4,0(a0)
	STEP (8);
     87c:	844cfff0 	lh	t4,-16(v0)
     880:	00000000 	sll	zero,zero,0x0
     884:	01830018 	mult	t4,v1
     888:	00001812 	mflo	v1
     88c:	8e0c0020 	lw	t4,32(s0)
     890:	00000000 	sll	zero,zero,0x0
     894:	01831821 	addu	v1,t4,v1
    STEP (4);
    STEP (5);
    STEP (6);
    STEP (7);

    for (i = 8; i <= 159; i++)
     898:	144bffb8 	bne	v0,t3,77c <Autocorrelation+0x52c>
     89c:	ae030020 	sw	v1,32(s0)
     8a0:	24020009 	addiu	v0,zero,9
	STEP (7);
	STEP (8);
      }

    for (k = 8; k >= 0; k--)
      L_ACF[k] <<= 1;
     8a4:	8e030020 	lw	v1,32(s0)
     8a8:	00000000 	sll	zero,zero,0x0
     8ac:	00031840 	sll	v1,v1,0x1
     8b0:	ae030020 	sw	v1,32(s0)
     8b4:	2442ffff 	addiu	v0,v0,-1
	STEP (6);
	STEP (7);
	STEP (8);
      }

    for (k = 8; k >= 0; k--)
     8b8:	1440fffa 	bnez	v0,8a4 <Autocorrelation+0x654>
     8bc:	2610fffc 	addiu	s0,s0,-4
      L_ACF[k] <<= 1;

  }
  /*   Rescaling of the array s[0..159]
   */
  if (scalauto > 0)
     8c0:	1a800009 	blez	s4,8e8 <Autocorrelation+0x698>
     8c4:	00000000 	sll	zero,zero,0x0
     8c8:	240200a0 	addiu	v0,zero,160
    for (k = 159; k >= 0; k--)
      *s++ <<= scalauto;
     8cc:	86230000 	lh	v1,0(s1)
     8d0:	00000000 	sll	zero,zero,0x0
     8d4:	02831804 	sllv	v1,v1,s4
     8d8:	a6230000 	sh	v1,0(s1)
     8dc:	2442ffff 	addiu	v0,v0,-1

  }
  /*   Rescaling of the array s[0..159]
   */
  if (scalauto > 0)
    for (k = 159; k >= 0; k--)
     8e0:	1440fffa 	bnez	v0,8cc <Autocorrelation+0x67c>
     8e4:	26310002 	addiu	s1,s1,2
      *s++ <<= scalauto;
}
     8e8:	8fbf002c 	lw	ra,44(sp)
     8ec:	8fb50028 	lw	s5,40(sp)
     8f0:	8fb40024 	lw	s4,36(sp)
     8f4:	8fb30020 	lw	s3,32(sp)
     8f8:	8fb2001c 	lw	s2,28(sp)
     8fc:	8fb10018 	lw	s1,24(sp)
     900:	8fb00014 	lw	s0,20(sp)
     904:	03e00008 	jr	ra
     908:	27bd0030 	addiu	sp,sp,48

0000090c <Reflection_coefficients>:
/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
			 register word * r /* 0...7        OUT     */ )
{
     90c:	27bdff88 	addiu	sp,sp,-120
     910:	afbf0074 	sw	ra,116(sp)
     914:	afbe0070 	sw	s8,112(sp)
     918:	afb7006c 	sw	s7,108(sp)
     91c:	afb60068 	sw	s6,104(sp)
     920:	afb50064 	sw	s5,100(sp)
     924:	afb40060 	sw	s4,96(sp)
     928:	afb3005c 	sw	s3,92(sp)
     92c:	afb20058 	sw	s2,88(sp)
     930:	afb10054 	sw	s1,84(sp)
     934:	afb00050 	sw	s0,80(sp)
     938:	00808021 	addu	s0,a0,zero
  word K[9];			/* 2..8 */

  /*  Schur recursion with 16 bits arithmetic.
   */

  if (L_ACF[0] == 0)
     93c:	8c840000 	lw	a0,0(a0)
     940:	00000000 	sll	zero,zero,0x0
     944:	14800008 	bnez	a0,968 <Reflection_coefficients+0x5c>
     948:	00a0b021 	addu	s6,a1,zero
     94c:	24020008 	addiu	v0,zero,8
    {
      for (i = 8; i > 0; i--)
	*r++ = 0;
     950:	a6c00000 	sh	zero,0(s6)
  /*  Schur recursion with 16 bits arithmetic.
   */

  if (L_ACF[0] == 0)
    {
      for (i = 8; i > 0; i--)
     954:	2442ffff 	addiu	v0,v0,-1
     958:	1440fffd 	bnez	v0,950 <Reflection_coefficients+0x44>
     95c:	26d60002 	addiu	s6,s6,2
     960:	080002be 	j	af8 <Reflection_coefficients+0x1ec>
     964:	00000000 	sll	zero,zero,0x0
	*r++ = 0;
      return;
    }

  temp = gsm_norm (L_ACF[0]);
     968:	0c000000 	jal	0 <gsm_add>
     96c:	00000000 	sll	zero,zero,0x0
     970:	27a30010 	addiu	v1,sp,16
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     974:	27a50022 	addiu	a1,sp,34
      return;
    }

  temp = gsm_norm (L_ACF[0]);
  for (i = 0; i <= 8; i++)
    ACF[i] = SASR (L_ACF[i] << temp, 16);
     978:	8e040000 	lw	a0,0(s0)
     97c:	00000000 	sll	zero,zero,0x0
     980:	00442004 	sllv	a0,a0,v0
     984:	00042403 	sra	a0,a0,0x10
     988:	a4640000 	sh	a0,0(v1)
     98c:	24630002 	addiu	v1,v1,2
	*r++ = 0;
      return;
    }

  temp = gsm_norm (L_ACF[0]);
  for (i = 0; i <= 8; i++)
     990:	1465fff9 	bne	v1,a1,978 <Reflection_coefficients+0x6c>
     994:	26100004 	addiu	s0,s0,4
     998:	00001021 	addu	v0,zero,zero
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     99c:	27a70038 	addiu	a3,sp,56
     9a0:	27a60010 	addiu	a2,sp,16
    ACF[i] = SASR (L_ACF[i] << temp, 16);

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
     9a4:	2405000e 	addiu	a1,zero,14
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     9a8:	00e21821 	addu	v1,a3,v0
     9ac:	00c22021 	addu	a0,a2,v0

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
     9b0:	94840002 	lhu	a0,2(a0)
     9b4:	24420002 	addiu	v0,v0,2
    ACF[i] = SASR (L_ACF[i] << temp, 16);

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
     9b8:	1445fffb 	bne	v0,a1,9a8 <Reflection_coefficients+0x9c>
     9bc:	a4640002 	sh	a0,2(v1)
     9c0:	00001021 	addu	v0,zero,zero
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     9c4:	27a70024 	addiu	a3,sp,36
     9c8:	27a60010 	addiu	a2,sp,16
  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
  for (i = 0; i <= 8; i++)
     9cc:	24050012 	addiu	a1,zero,18
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     9d0:	00e21821 	addu	v1,a3,v0
     9d4:	00c22021 	addu	a0,a2,v0
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
  for (i = 0; i <= 8; i++)
    P[i] = ACF[i];
     9d8:	94840000 	lhu	a0,0(a0)
     9dc:	24420002 	addiu	v0,v0,2
  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
  for (i = 0; i <= 8; i++)
     9e0:	1445fffb 	bne	v0,a1,9d0 <Reflection_coefficients+0xc4>
     9e4:	a4640000 	sh	a0,0(v1)
     9e8:	241e0007 	addiu	s8,zero,7
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     9ec:	24020008 	addiu	v0,zero,8
     9f0:	005e9023 	subu	s2,v0,s8
  /*   Compute reflection coefficients
   */
  for (n = 1; n <= 8; n++, r++)
    {

      temp = P[1];
     9f4:	87b00026 	lh	s0,38(sp)
      temp = GSM_ABS (temp);
     9f8:	0c000000 	jal	0 <gsm_add>
     9fc:	02002021 	addu	a0,s0,zero
      if (P[0] < temp)
     a00:	87b10024 	lh	s1,36(sp)
     a04:	00000000 	sll	zero,zero,0x0
     a08:	0222182a 	slt	v1,s1,v0
     a0c:	1060000a 	beqz	v1,a38 <Reflection_coefficients+0x12c>
     a10:	00000000 	sll	zero,zero,0x0
	{
	  for (i = n; i <= 8; i++)
     a14:	2a420009 	slti	v0,s2,9
     a18:	10400037 	beqz	v0,af8 <Reflection_coefficients+0x1ec>
     a1c:	24020009 	addiu	v0,zero,9
	    *r++ = 0;
     a20:	a6c00000 	sh	zero,0(s6)

      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
     a24:	26520001 	addiu	s2,s2,1
     a28:	1642fffd 	bne	s2,v0,a20 <Reflection_coefficients+0x114>
     a2c:	26d60002 	addiu	s6,s6,2
     a30:	080002be 	j	af8 <Reflection_coefficients+0x1ec>
     a34:	00000000 	sll	zero,zero,0x0
	    *r++ = 0;
	  return;
	}

      *r = gsm_div (temp, P[0]);
     a38:	00402021 	addu	a0,v0,zero
     a3c:	0c000000 	jal	0 <gsm_add>
     a40:	02202821 	addu	a1,s1,zero

      if (P[1] > 0)
     a44:	1a000003 	blez	s0,a54 <Reflection_coefficients+0x148>
     a48:	a6c20000 	sh	v0,0(s6)
	*r = -*r;		/* r[n] = sub(0, r[n]) */
     a4c:	00021023 	negu	v0,v0
     a50:	a6c20000 	sh	v0,0(s6)
      if (n == 8)
     a54:	13c00028 	beqz	s8,af8 <Reflection_coefficients+0x1ec>
     a58:	02002021 	addu	a0,s0,zero
	return;

      /*  Schur recursion
       */
      temp = GSM_MULT_R (P[1], *r);
     a5c:	86d50000 	lh	s5,0(s6)
     a60:	0c000000 	jal	0 <gsm_add>
     a64:	02a02821 	addu	a1,s5,zero
      P[0] = GSM_ADD (P[0], temp);
     a68:	02202021 	addu	a0,s1,zero
     a6c:	0c000000 	jal	0 <gsm_add>
     a70:	00402821 	addu	a1,v0,zero
     a74:	a7a20024 	sh	v0,36(sp)

      for (m = 1; m <= 8 - n; m++)
     a78:	1bc0001b 	blez	s8,ae8 <Reflection_coefficients+0x1dc>
     a7c:	03c0b821 	addu	s7,s8,zero
     a80:	27b2003a 	addiu	s2,sp,58
     a84:	27b30028 	addiu	s3,sp,40
     a88:	24140001 	addiu	s4,zero,1
	{
	  temp = GSM_MULT_R (K[m], *r);
     a8c:	86510000 	lh	s1,0(s2)
     a90:	00000000 	sll	zero,zero,0x0
     a94:	02202021 	addu	a0,s1,zero
     a98:	0c000000 	jal	0 <gsm_add>
     a9c:	02a02821 	addu	a1,s5,zero
	  P[m] = GSM_ADD (P[m + 1], temp);
     aa0:	26940001 	addiu	s4,s4,1
     aa4:	86700000 	lh	s0,0(s3)
     aa8:	00000000 	sll	zero,zero,0x0
     aac:	02002021 	addu	a0,s0,zero
     ab0:	0c000000 	jal	0 <gsm_add>
     ab4:	00402821 	addu	a1,v0,zero
     ab8:	a662fffe 	sh	v0,-2(s3)

	  temp = GSM_MULT_R (P[m + 1], *r);
     abc:	02002021 	addu	a0,s0,zero
     ac0:	0c000000 	jal	0 <gsm_add>
     ac4:	02a02821 	addu	a1,s5,zero
	  K[m] = GSM_ADD (K[m], temp);
     ac8:	02202021 	addu	a0,s1,zero
     acc:	0c000000 	jal	0 <gsm_add>
     ad0:	00402821 	addu	a1,v0,zero
     ad4:	a6420000 	sh	v0,0(s2)
     ad8:	26520002 	addiu	s2,s2,2
      /*  Schur recursion
       */
      temp = GSM_MULT_R (P[1], *r);
      P[0] = GSM_ADD (P[0], temp);

      for (m = 1; m <= 8 - n; m++)
     adc:	02f4102a 	slt	v0,s7,s4
     ae0:	1040ffea 	beqz	v0,a8c <Reflection_coefficients+0x180>
     ae4:	26730002 	addiu	s3,s3,2
     ae8:	27deffff 	addiu	s8,s8,-1
  for (i = 0; i <= 8; i++)
    P[i] = ACF[i];

  /*   Compute reflection coefficients
   */
  for (n = 1; n <= 8; n++, r++)
     aec:	2402ffff 	addiu	v0,zero,-1
     af0:	17c2ffbe 	bne	s8,v0,9ec <Reflection_coefficients+0xe0>
     af4:	26d60002 	addiu	s6,s6,2

	  temp = GSM_MULT_R (P[m + 1], *r);
	  K[m] = GSM_ADD (K[m], temp);
	}
    }
}
     af8:	8fbf0074 	lw	ra,116(sp)
     afc:	8fbe0070 	lw	s8,112(sp)
     b00:	8fb7006c 	lw	s7,108(sp)
     b04:	8fb60068 	lw	s6,104(sp)
     b08:	8fb50064 	lw	s5,100(sp)
     b0c:	8fb40060 	lw	s4,96(sp)
     b10:	8fb3005c 	lw	s3,92(sp)
     b14:	8fb20058 	lw	s2,88(sp)
     b18:	8fb10054 	lw	s1,84(sp)
     b1c:	8fb00050 	lw	s0,80(sp)
     b20:	03e00008 	jr	ra
     b24:	27bd0078 	addiu	sp,sp,120

00000b28 <Transformation_to_Log_Area_Ratios>:
 *
 *  r[..]   = integer( real_r[..]*32768. ); -1 <= real_r < 1.
 *  LAR[..] = integer( real_LAR[..] * 16384 );
 *  with -1.625 <= real_LAR <= 1.625
 */
{
     b28:	27bdffe0 	addiu	sp,sp,-32
     b2c:	afbf001c 	sw	ra,28(sp)
     b30:	afb20018 	sw	s2,24(sp)
     b34:	afb10014 	sw	s1,20(sp)
     b38:	afb00010 	sw	s0,16(sp)
     b3c:	00808021 	addu	s0,a0,zero
     b40:	24110008 	addiu	s1,zero,8
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
     b44:	86120000 	lh	s2,0(s0)
      temp = GSM_ABS (temp);
     b48:	0c000000 	jal	0 <gsm_add>
     b4c:	02402021 	addu	a0,s2,zero

      if (temp < 22118)
     b50:	28435666 	slti	v1,v0,22118
     b54:	10600005 	beqz	v1,b6c <Transformation_to_Log_Area_Ratios+0x44>
     b58:	2843799a 	slti	v1,v0,31130
	{
	  temp >>= 1;
     b5c:	00021043 	sra	v0,v0,0x1
     b60:	00021400 	sll	v0,v0,0x10
     b64:	080002e7 	j	b9c <Transformation_to_Log_Area_Ratios+0x74>
     b68:	00021403 	sra	v0,v0,0x10
	}
      else if (temp < 31130)
     b6c:	10600005 	beqz	v1,b84 <Transformation_to_Log_Area_Ratios+0x5c>
     b70:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
     b74:	2442d4cd 	addiu	v0,v0,-11059
     b78:	00021400 	sll	v0,v0,0x10
     b7c:	080002e7 	j	b9c <Transformation_to_Log_Area_Ratios+0x74>
     b80:	00021403 	sra	v0,v0,0x10
	}
      else
	{
	  temp -= 26112;
     b84:	24429a00 	addiu	v0,v0,-26112
	  temp <<= 2;
     b88:	00021400 	sll	v0,v0,0x10
     b8c:	00021403 	sra	v0,v0,0x10
     b90:	00021080 	sll	v0,v0,0x2
     b94:	00021400 	sll	v0,v0,0x10
     b98:	00021403 	sra	v0,v0,0x10
	}

      *r = *r < 0 ? -temp : temp;
     b9c:	06410004 	bgez	s2,bb0 <Transformation_to_Log_Area_Ratios+0x88>
     ba0:	00000000 	sll	zero,zero,0x0
     ba4:	00021023 	negu	v0,v0
     ba8:	00021400 	sll	v0,v0,0x10
     bac:	00021403 	sra	v0,v0,0x10
     bb0:	2631ffff 	addiu	s1,s1,-1
  register int i;


  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
     bb4:	12200003 	beqz	s1,bc4 <Transformation_to_Log_Area_Ratios+0x9c>
     bb8:	a6020000 	sh	v0,0(s0)
     bbc:	080002d1 	j	b44 <Transformation_to_Log_Area_Ratios+0x1c>
     bc0:	26100002 	addiu	s0,s0,2
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    }
}
     bc4:	8fbf001c 	lw	ra,28(sp)
     bc8:	8fb20018 	lw	s2,24(sp)
     bcc:	8fb10014 	lw	s1,20(sp)
     bd0:	8fb00010 	lw	s0,16(sp)
     bd4:	03e00008 	jr	ra
     bd8:	27bd0020 	addiu	sp,sp,32

00000bdc <Quantization_and_coding>:

/* 4.2.7 */

void
Quantization_and_coding (register word * LAR /* [0..7]       IN/OUT  */ )
{
     bdc:	27bdffe0 	addiu	sp,sp,-32
     be0:	afbf001c 	sw	ra,28(sp)
     be4:	afb20018 	sw	s2,24(sp)
     be8:	afb10014 	sw	s1,20(sp)
     bec:	afb00010 	sw	s0,16(sp)
     bf0:	00808021 	addu	s0,a0,zero
		temp = GSM_ADD(  temp, 256 );	\
		temp = SASR(     temp,   9 );	\
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
     bf4:	86050000 	lh	a1,0(s0)
     bf8:	0c000000 	jal	0 <gsm_add>
     bfc:	24045000 	addiu	a0,zero,20480
     c00:	00402021 	addu	a0,v0,zero
     c04:	0c000000 	jal	0 <gsm_add>
     c08:	00002821 	addu	a1,zero,zero
     c0c:	00402021 	addu	a0,v0,zero
     c10:	0c000000 	jal	0 <gsm_add>
     c14:	24050100 	addiu	a1,zero,256
     c18:	00021243 	sra	v0,v0,0x9
     c1c:	00021400 	sll	v0,v0,0x10
     c20:	00021403 	sra	v0,v0,0x10
     c24:	28430020 	slti	v1,v0,32
     c28:	10600006 	beqz	v1,c44 <Quantization_and_coding+0x68>
     c2c:	2843ffe0 	slti	v1,v0,-32
     c30:	14600006 	bnez	v1,c4c <Quantization_and_coding+0x70>
     c34:	24420020 	addiu	v0,v0,32
     c38:	00021400 	sll	v0,v0,0x10
     c3c:	08000314 	j	c50 <Quantization_and_coding+0x74>
     c40:	00021403 	sra	v0,v0,0x10
     c44:	08000314 	j	c50 <Quantization_and_coding+0x74>
     c48:	2402003f 	addiu	v0,zero,63
     c4c:	00001021 	addu	v0,zero,zero
     c50:	a6020000 	sh	v0,0(s0)
     c54:	26110002 	addiu	s1,s0,2
  STEP (20480, 0, 31, -32);
     c58:	86050002 	lh	a1,2(s0)
     c5c:	0c000000 	jal	0 <gsm_add>
     c60:	24045000 	addiu	a0,zero,20480
     c64:	00402021 	addu	a0,v0,zero
     c68:	0c000000 	jal	0 <gsm_add>
     c6c:	00002821 	addu	a1,zero,zero
     c70:	00402021 	addu	a0,v0,zero
     c74:	0c000000 	jal	0 <gsm_add>
     c78:	24050100 	addiu	a1,zero,256
     c7c:	00021243 	sra	v0,v0,0x9
     c80:	00021400 	sll	v0,v0,0x10
     c84:	00021403 	sra	v0,v0,0x10
     c88:	28430020 	slti	v1,v0,32
     c8c:	10600006 	beqz	v1,ca8 <Quantization_and_coding+0xcc>
     c90:	2843ffe0 	slti	v1,v0,-32
     c94:	14600006 	bnez	v1,cb0 <Quantization_and_coding+0xd4>
     c98:	24420020 	addiu	v0,v0,32
     c9c:	00021400 	sll	v0,v0,0x10
     ca0:	0800032d 	j	cb4 <Quantization_and_coding+0xd8>
     ca4:	00021403 	sra	v0,v0,0x10
     ca8:	0800032d 	j	cb4 <Quantization_and_coding+0xd8>
     cac:	2402003f 	addiu	v0,zero,63
     cb0:	00001021 	addu	v0,zero,zero
     cb4:	a6020002 	sh	v0,2(s0)
     cb8:	26320002 	addiu	s2,s1,2
  STEP (20480, 2048, 15, -16);
     cbc:	86250002 	lh	a1,2(s1)
     cc0:	0c000000 	jal	0 <gsm_add>
     cc4:	24045000 	addiu	a0,zero,20480
     cc8:	00402021 	addu	a0,v0,zero
     ccc:	0c000000 	jal	0 <gsm_add>
     cd0:	24050800 	addiu	a1,zero,2048
     cd4:	00402021 	addu	a0,v0,zero
     cd8:	0c000000 	jal	0 <gsm_add>
     cdc:	24050100 	addiu	a1,zero,256
     ce0:	00021243 	sra	v0,v0,0x9
     ce4:	00021400 	sll	v0,v0,0x10
     ce8:	00021403 	sra	v0,v0,0x10
     cec:	28430010 	slti	v1,v0,16
     cf0:	10600006 	beqz	v1,d0c <Quantization_and_coding+0x130>
     cf4:	2843fff0 	slti	v1,v0,-16
     cf8:	14600006 	bnez	v1,d14 <Quantization_and_coding+0x138>
     cfc:	24420010 	addiu	v0,v0,16
     d00:	00021400 	sll	v0,v0,0x10
     d04:	08000346 	j	d18 <Quantization_and_coding+0x13c>
     d08:	00021403 	sra	v0,v0,0x10
     d0c:	08000346 	j	d18 <Quantization_and_coding+0x13c>
     d10:	2402001f 	addiu	v0,zero,31
     d14:	00001021 	addu	v0,zero,zero
     d18:	a6220002 	sh	v0,2(s1)
     d1c:	26500002 	addiu	s0,s2,2
  STEP (20480, -2560, 15, -16);
     d20:	86450002 	lh	a1,2(s2)
     d24:	0c000000 	jal	0 <gsm_add>
     d28:	24045000 	addiu	a0,zero,20480
     d2c:	00402021 	addu	a0,v0,zero
     d30:	0c000000 	jal	0 <gsm_add>
     d34:	2405f600 	addiu	a1,zero,-2560
     d38:	00402021 	addu	a0,v0,zero
     d3c:	0c000000 	jal	0 <gsm_add>
     d40:	24050100 	addiu	a1,zero,256
     d44:	00021243 	sra	v0,v0,0x9
     d48:	00021400 	sll	v0,v0,0x10
     d4c:	00021403 	sra	v0,v0,0x10
     d50:	28430010 	slti	v1,v0,16
     d54:	10600006 	beqz	v1,d70 <Quantization_and_coding+0x194>
     d58:	2843fff0 	slti	v1,v0,-16
     d5c:	14600006 	bnez	v1,d78 <Quantization_and_coding+0x19c>
     d60:	24420010 	addiu	v0,v0,16
     d64:	00021400 	sll	v0,v0,0x10
     d68:	0800035f 	j	d7c <Quantization_and_coding+0x1a0>
     d6c:	00021403 	sra	v0,v0,0x10
     d70:	0800035f 	j	d7c <Quantization_and_coding+0x1a0>
     d74:	2402001f 	addiu	v0,zero,31
     d78:	00001021 	addu	v0,zero,zero
     d7c:	a6420002 	sh	v0,2(s2)
     d80:	26110002 	addiu	s1,s0,2

  STEP (13964, 94, 7, -8);
     d84:	86050002 	lh	a1,2(s0)
     d88:	0c000000 	jal	0 <gsm_add>
     d8c:	2404368c 	addiu	a0,zero,13964
     d90:	00402021 	addu	a0,v0,zero
     d94:	0c000000 	jal	0 <gsm_add>
     d98:	2405005e 	addiu	a1,zero,94
     d9c:	00402021 	addu	a0,v0,zero
     da0:	0c000000 	jal	0 <gsm_add>
     da4:	24050100 	addiu	a1,zero,256
     da8:	00021243 	sra	v0,v0,0x9
     dac:	00021400 	sll	v0,v0,0x10
     db0:	00021403 	sra	v0,v0,0x10
     db4:	28430008 	slti	v1,v0,8
     db8:	10600006 	beqz	v1,dd4 <Quantization_and_coding+0x1f8>
     dbc:	2843fff8 	slti	v1,v0,-8
     dc0:	14600006 	bnez	v1,ddc <Quantization_and_coding+0x200>
     dc4:	24420008 	addiu	v0,v0,8
     dc8:	00021400 	sll	v0,v0,0x10
     dcc:	08000378 	j	de0 <Quantization_and_coding+0x204>
     dd0:	00021403 	sra	v0,v0,0x10
     dd4:	08000378 	j	de0 <Quantization_and_coding+0x204>
     dd8:	2402000f 	addiu	v0,zero,15
     ddc:	00001021 	addu	v0,zero,zero
     de0:	a6020002 	sh	v0,2(s0)
     de4:	26300002 	addiu	s0,s1,2
  STEP (15360, -1792, 7, -8);
     de8:	86250002 	lh	a1,2(s1)
     dec:	0c000000 	jal	0 <gsm_add>
     df0:	24043c00 	addiu	a0,zero,15360
     df4:	00402021 	addu	a0,v0,zero
     df8:	0c000000 	jal	0 <gsm_add>
     dfc:	2405f900 	addiu	a1,zero,-1792
     e00:	00402021 	addu	a0,v0,zero
     e04:	0c000000 	jal	0 <gsm_add>
     e08:	24050100 	addiu	a1,zero,256
     e0c:	00021243 	sra	v0,v0,0x9
     e10:	00021400 	sll	v0,v0,0x10
     e14:	00021403 	sra	v0,v0,0x10
     e18:	28430008 	slti	v1,v0,8
     e1c:	10600006 	beqz	v1,e38 <Quantization_and_coding+0x25c>
     e20:	2843fff8 	slti	v1,v0,-8
     e24:	14600006 	bnez	v1,e40 <Quantization_and_coding+0x264>
     e28:	24420008 	addiu	v0,v0,8
     e2c:	00021400 	sll	v0,v0,0x10
     e30:	08000391 	j	e44 <Quantization_and_coding+0x268>
     e34:	00021403 	sra	v0,v0,0x10
     e38:	08000391 	j	e44 <Quantization_and_coding+0x268>
     e3c:	2402000f 	addiu	v0,zero,15
     e40:	00001021 	addu	v0,zero,zero
     e44:	a6220002 	sh	v0,2(s1)
     e48:	26110002 	addiu	s1,s0,2
  STEP (8534, -341, 3, -4);
     e4c:	86050002 	lh	a1,2(s0)
     e50:	0c000000 	jal	0 <gsm_add>
     e54:	24042156 	addiu	a0,zero,8534
     e58:	00402021 	addu	a0,v0,zero
     e5c:	0c000000 	jal	0 <gsm_add>
     e60:	2405feab 	addiu	a1,zero,-341
     e64:	00402021 	addu	a0,v0,zero
     e68:	0c000000 	jal	0 <gsm_add>
     e6c:	24050100 	addiu	a1,zero,256
     e70:	00021243 	sra	v0,v0,0x9
     e74:	00021400 	sll	v0,v0,0x10
     e78:	00021403 	sra	v0,v0,0x10
     e7c:	28430004 	slti	v1,v0,4
     e80:	10600006 	beqz	v1,e9c <Quantization_and_coding+0x2c0>
     e84:	2843fffc 	slti	v1,v0,-4
     e88:	14600006 	bnez	v1,ea4 <Quantization_and_coding+0x2c8>
     e8c:	24420004 	addiu	v0,v0,4
     e90:	00021400 	sll	v0,v0,0x10
     e94:	080003aa 	j	ea8 <Quantization_and_coding+0x2cc>
     e98:	00021403 	sra	v0,v0,0x10
     e9c:	080003aa 	j	ea8 <Quantization_and_coding+0x2cc>
     ea0:	24020007 	addiu	v0,zero,7
     ea4:	00001021 	addu	v0,zero,zero
     ea8:	a6020002 	sh	v0,2(s0)
  STEP (9036, -1144, 3, -4);
     eac:	86250002 	lh	a1,2(s1)
     eb0:	0c000000 	jal	0 <gsm_add>
     eb4:	2404234c 	addiu	a0,zero,9036
     eb8:	00402021 	addu	a0,v0,zero
     ebc:	0c000000 	jal	0 <gsm_add>
     ec0:	2405fb88 	addiu	a1,zero,-1144
     ec4:	00402021 	addu	a0,v0,zero
     ec8:	0c000000 	jal	0 <gsm_add>
     ecc:	24050100 	addiu	a1,zero,256
     ed0:	00021243 	sra	v0,v0,0x9
     ed4:	00021400 	sll	v0,v0,0x10
     ed8:	00021403 	sra	v0,v0,0x10
     edc:	28430004 	slti	v1,v0,4
     ee0:	10600006 	beqz	v1,efc <Quantization_and_coding+0x320>
     ee4:	2843fffc 	slti	v1,v0,-4
     ee8:	14600006 	bnez	v1,f04 <Quantization_and_coding+0x328>
     eec:	24420004 	addiu	v0,v0,4
     ef0:	00021400 	sll	v0,v0,0x10
     ef4:	080003c2 	j	f08 <Quantization_and_coding+0x32c>
     ef8:	00021403 	sra	v0,v0,0x10
     efc:	080003c2 	j	f08 <Quantization_and_coding+0x32c>
     f00:	24020007 	addiu	v0,zero,7
     f04:	00001021 	addu	v0,zero,zero
     f08:	a6220002 	sh	v0,2(s1)

#	undef	STEP
}
     f0c:	8fbf001c 	lw	ra,28(sp)
     f10:	8fb20018 	lw	s2,24(sp)
     f14:	8fb10014 	lw	s1,20(sp)
     f18:	8fb00010 	lw	s0,16(sp)
     f1c:	03e00008 	jr	ra
     f20:	27bd0020 	addiu	sp,sp,32

00000f24 <Gsm_LPC_Analysis>:

void
Gsm_LPC_Analysis (word * s /* 0..159 signals       IN/OUT  */ ,
		  word * LARc /* 0..7   LARc's        OUT     */ )
{
     f24:	27bdffb8 	addiu	sp,sp,-72
     f28:	afbf0044 	sw	ra,68(sp)
     f2c:	afb10040 	sw	s1,64(sp)
     f30:	afb0003c 	sw	s0,60(sp)
     f34:	00a08821 	addu	s1,a1,zero
  longword L_ACF[9];

  Autocorrelation (s, L_ACF);
     f38:	27b00010 	addiu	s0,sp,16
     f3c:	0c000000 	jal	0 <gsm_add>
     f40:	02002821 	addu	a1,s0,zero
  Reflection_coefficients (L_ACF, LARc);
     f44:	02002021 	addu	a0,s0,zero
     f48:	0c000000 	jal	0 <gsm_add>
     f4c:	02202821 	addu	a1,s1,zero
  Transformation_to_Log_Area_Ratios (LARc);
     f50:	0c000000 	jal	0 <gsm_add>
     f54:	02202021 	addu	a0,s1,zero
  Quantization_and_coding (LARc);
     f58:	0c000000 	jal	0 <gsm_add>
     f5c:	02202021 	addu	a0,s1,zero
}
     f60:	8fbf0044 	lw	ra,68(sp)
     f64:	8fb10040 	lw	s1,64(sp)
     f68:	8fb0003c 	lw	s0,60(sp)
     f6c:	03e00008 	jr	ra
     f70:	27bd0048 	addiu	sp,sp,72

00000f74 <main>:
const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
{
     f74:	27bdfe98 	addiu	sp,sp,-360
     f78:	afbf0164 	sw	ra,356(sp)
     f7c:	afb00160 	sw	s0,352(sp)
     f80:	00001021 	addu	v0,zero,zero

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
     f84:	27a70010 	addiu	a3,sp,16
     f88:	3c060000 	lui	a2,0x0
     f8c:	24c60000 	addiu	a2,a2,0
  int main_result;
  word so[N];
  word LARc[M];
      main_result = 0;

      for (i = 0; i < N; i++)
     f90:	24050140 	addiu	a1,zero,320

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
     f94:	00e21821 	addu	v1,a3,v0
     f98:	00c22021 	addu	a0,a2,v0
  word so[N];
  word LARc[M];
      main_result = 0;

      for (i = 0; i < N; i++)
	so[i] = inData[i];
     f9c:	94840000 	lhu	a0,0(a0)
     fa0:	24420002 	addiu	v0,v0,2
  int main_result;
  word so[N];
  word LARc[M];
      main_result = 0;

      for (i = 0; i < N; i++)
     fa4:	1445fffb 	bne	v0,a1,f94 <main+0x20>
     fa8:	a4640000 	sh	a0,0(v1)
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);
     fac:	27a40010 	addiu	a0,sp,16
     fb0:	0c000000 	jal	0 <gsm_add>
     fb4:	27a50150 	addiu	a1,sp,336
     fb8:	00001021 	addu	v0,zero,zero
{
  int i;
  int main_result;
  word so[N];
  word LARc[M];
      main_result = 0;
     fbc:	00008021 	addu	s0,zero,zero

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
     fc0:	27a70010 	addiu	a3,sp,16
     fc4:	3c060000 	lui	a2,0x0
     fc8:	24c60000 	addiu	a2,a2,0
      for (i = 0; i < N; i++)
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
     fcc:	24050140 	addiu	a1,zero,320

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
     fd0:	00e22021 	addu	a0,a3,v0
     fd4:	00c21821 	addu	v1,a2,v0
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
	main_result += (so[i] != outData[i]);
     fd8:	84840000 	lh	a0,0(a0)
     fdc:	84630000 	lh	v1,0(v1)
     fe0:	00000000 	sll	zero,zero,0x0
     fe4:	00831826 	xor	v1,a0,v1
     fe8:	0003182b 	sltu	v1,zero,v1
     fec:	24420002 	addiu	v0,v0,2
      for (i = 0; i < N; i++)
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
     ff0:	1445fff7 	bne	v0,a1,fd0 <main+0x5c>
     ff4:	02038021 	addu	s0,s0,v1
     ff8:	00001021 	addu	v0,zero,zero

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
     ffc:	27a70150 	addiu	a3,sp,336
    1000:	3c060000 	lui	a2,0x0
    1004:	24c60000 	addiu	a2,a2,0

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
	main_result += (so[i] != outData[i]);
      for (i = 0; i < M; i++)
    1008:	24050010 	addiu	a1,zero,16

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
    100c:	00e22021 	addu	a0,a3,v0
    1010:	00c21821 	addu	v1,a2,v0
      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
	main_result += (so[i] != outData[i]);
      for (i = 0; i < M; i++)
	main_result += (LARc[i] != outLARc[i]);
    1014:	84840000 	lh	a0,0(a0)
    1018:	84630000 	lh	v1,0(v1)
    101c:	00000000 	sll	zero,zero,0x0
    1020:	00831826 	xor	v1,a0,v1
    1024:	0003182b 	sltu	v1,zero,v1
    1028:	24420002 	addiu	v0,v0,2

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
	main_result += (so[i] != outData[i]);
      for (i = 0; i < M; i++)
    102c:	1445fff7 	bne	v0,a1,100c <main+0x98>
    1030:	02038021 	addu	s0,s0,v1
	main_result += (LARc[i] != outLARc[i]);

      printf ("%d\n", main_result);
    1034:	3c040000 	lui	a0,0x0
    1038:	24840000 	addiu	a0,a0,0
    103c:	0c000000 	jal	0 <gsm_add>
    1040:	02002821 	addu	a1,s0,zero
      return main_result;
    }
    1044:	02001021 	addu	v0,s0,zero
    1048:	8fbf0164 	lw	ra,356(sp)
    104c:	8fb00160 	lw	s0,352(sp)
    1050:	03e00008 	jr	ra
    1054:	27bd0168 	addiu	sp,sp,360

Disassembly of section .rodata:

00000000 <bitoff>:
   0:	08070606 	j	1c1818 <main+0x1c08a4>
   4:	05050505 	0x5050505
   8:	04040404 	0x4040404
   c:	04040404 	0x4040404
  10:	03030303 	0x3030303
  14:	03030303 	0x3030303
  18:	03030303 	0x3030303
  1c:	03030303 	0x3030303
  20:	02020202 	0x2020202
  24:	02020202 	0x2020202
  28:	02020202 	0x2020202
  2c:	02020202 	0x2020202
  30:	02020202 	0x2020202
  34:	02020202 	0x2020202
  38:	02020202 	0x2020202
  3c:	02020202 	0x2020202
  40:	01010101 	0x1010101
  44:	01010101 	0x1010101
  48:	01010101 	0x1010101
  4c:	01010101 	0x1010101
  50:	01010101 	0x1010101
  54:	01010101 	0x1010101
  58:	01010101 	0x1010101
  5c:	01010101 	0x1010101
  60:	01010101 	0x1010101
  64:	01010101 	0x1010101
  68:	01010101 	0x1010101
  6c:	01010101 	0x1010101
  70:	01010101 	0x1010101
  74:	01010101 	0x1010101
  78:	01010101 	0x1010101
  7c:	01010101 	0x1010101
	...

00000100 <inData>:
 100:	00512a66 	0x512a66
 104:	0765d7cd 	0x765d7cd
 108:	1dbe7416 	0x1dbe7416
 10c:	4ffb8de1 	c3	0x1fb8de1
 110:	b5fb8b92 	0xb5fb8b92
 114:	82ef063c 	lb	t7,1596(s7)
 118:	3d80f3f0 	0x3d80f3f0
 11c:	bbfba995 	swr	k1,-22123(ra)
 120:	1a8ecc24 	0x1a8ecc24
 124:	0eebc06f 	jal	baf01bc <main+0xbaef248>
 128:	f9dbcf15 	0xf9dbcf15
 12c:	9621ff3f 	lhu	at,-193(s1)
 130:	9c0c125a 	0x9c0c125a
 134:	891c3ba0 	lwl	gp,15264(t0)
 138:	fa8f2c9a 	0xfa8f2c9a
 13c:	2c6a137a 	sltiu	t2,v1,4986
 140:	1ebdf891 	0x1ebdf891
 144:	23a38412 	addi	v1,sp,-31726
 148:	9d6bc8b5 	0x9d6bc8b5
 14c:	463e7eab 	c1	0x3e7eab
 150:	cf69c1c5 	lwc3	$9,-15931(k1)
 154:	ab8a1ed8 	swl	t2,7896(gp)
 158:	06996dd1 	0x6996dd1
 15c:	0e1f5673 	jal	87d59cc <main+0x87d4a58>
 160:	ea3cb172 	swc2	$28,-20110(s1)
 164:	306323d9 	andi	v1,v1,0x23d9
 168:	a02030c0 	sb	zero,12480(at)
 16c:	542aba4e 	0x542aba4e
 170:	cab34f35 	lwc2	$19,20277(s5)
 174:	270344f4 	addiu	v1,t8,17652
 178:	d338bc52 	0xd338bc52
 17c:	d6c89624 	0xd6c89624
 180:	00cf6bdc 	0xcf6bdc
 184:	09d51bff 	j	7546ffc <main+0x7546088>
 188:	8bdaa857 	lwl	k0,-22441(s8)
 18c:	7557f6c0 	jalx	55fdb00 <main+0x55fcb8c>
 190:	320d012c 	andi	t5,s0,0x12c
 194:	9c2d237f 	0x9c2d237f
 198:	715ee661 	0x715ee661
 19c:	b0a9c7f5 	0xb0a9c7f5
 1a0:	e27dab33 	swc0	$29,-21709(s3)
 1a4:	f1a48a7e 	0xf1a48a7e
 1a8:	f38a86fd 	0xf38a86fd
 1ac:	218469f6 	addi	a0,t4,27126
 1b0:	0d56ee05 	jal	55bb814 <main+0x55ba8a0>
 1b4:	a8e1bd09 	swl	at,-17143(a3)
 1b8:	35dcfbb8 	ori	gp,t6,0xfbb8
 1bc:	c6e75637 	lwc1	$f7,22071(s7)
 1c0:	cb107f86 	lwc2	$16,32646(t8)
 1c4:	4131dee7 	0x4131dee7
 1c8:	ce432907 	lwc3	$3,10503(s2)
 1cc:	51091a28 	0x51091a28
 1d0:	972686d9 	lhu	a2,-31015(t9)
 1d4:	0ed0b268 	jal	b42c9a0 <main+0xb42ba2c>
 1d8:	b031899d 	0xb031899d
 1dc:	7ea5cc4b 	0x7ea5cc4b
 1e0:	232e4749 	addi	t6,t9,18249
 1e4:	0963e0c4 	j	58f8310 <main+0x58f739c>
 1e8:	c615e91c 	lwc1	$f21,-5860(s0)
 1ec:	1bd27479 	0x1bd27479
 1f0:	836a4623 	lb	t2,17955(k1)
 1f4:	70a485bf 	0x70a485bf
 1f8:	7c4d9492 	0x7c4d9492
 1fc:	2ff4ea2d 	sltiu	s4,ra,-5587
 200:	a9a723e8 	swl	a3,9192(t5)
 204:	a7eb3d3b 	sh	t3,15675(ra)
 208:	d0171c2c 	0xd0171c2c
 20c:	a33bcdc8 	sb	k1,-12856(t9)
 210:	e91f1d61 	swc2	$31,7521(t0)
 214:	43c535cd 	c0	0x1c535cd
 218:	f3edba6c 	0xf3edba6c
 21c:	da49682b 	0xda49682b
 220:	1ede09b7 	0x1ede09b7
 224:	0c6972e4 	jal	1a5cb90 <main+0x1a5bc1c>
 228:	b100f528 	0xb100f528
 22c:	5e14e0e5 	0x5e14e0e5
 230:	d73ad15e 	0xd73ad15e
 234:	c60fe5fe 	lwc1	$f15,-6658(s0)
 238:	7d3a0fb4 	0x7d3a0fb4
 23c:	28dd3b37 	slti	sp,a2,15159

00000240 <outData>:
 240:	00502a60 	0x502a60
 244:	0760d7d0 	bltz	k1,ffff6188 <main+0xffff5214>
 248:	1dc07410 	bgtz	t6,1d28c <main+0x1c318>
 24c:	50008de0 	0x50008de0
 250:	b6008b90 	0xb6008b90
 254:	82f00640 	lb	s0,1600(s7)
 258:	3d80f3f0 	0x3d80f3f0
 25c:	bc00a990 	0xbc00a990
 260:	1a90cc20 	0x1a90cc20
 264:	0ef0c070 	jal	bc301c0 <main+0xbc2f24c>
 268:	f9e0cf10 	0xf9e0cf10
 26c:	9620ff40 	lhu	zero,-192(s1)
 270:	9c101260 	0x9c101260
 274:	89203ba0 	lwl	zero,15264(t1)
 278:	fa902ca0 	0xfa902ca0
 27c:	2c701380 	sltiu	s0,v1,4992
 280:	1ec0f890 	bgtz	s6,ffffe4c4 <main+0xffffd550>
 284:	23a08410 	addi	zero,sp,-31728
 288:	9d70c8b0 	0x9d70c8b0
 28c:	46407eb0 	c1	0x407eb0
 290:	cf70c1c0 	lwc3	$16,-15936(k1)
 294:	ab901ee0 	swl	s0,7904(gp)
 298:	06a06dd0 	bltz	s5,1b9dc <main+0x1aa68>
 29c:	0e205670 	jal	88159c0 <main+0x8814a4c>
 2a0:	ea40b170 	swc2	$0,-20112(s2)
 2a4:	306023e0 	andi	zero,v1,0x23e0
 2a8:	a02030c0 	sb	zero,12480(at)
 2ac:	5430ba50 	0x5430ba50
 2b0:	cab04f30 	lwc2	$16,20272(s5)
 2b4:	270044f0 	addiu	zero,t8,17648
 2b8:	d340bc50 	0xd340bc50
 2bc:	d6d09620 	0xd6d09620
 2c0:	00d06be0 	0xd06be0
 2c4:	09d01c00 	j	7407000 <main+0x740608c>
 2c8:	8be0a850 	lwl	zero,-22448(ra)
 2cc:	7550f6c0 	jalx	543db00 <main+0x543cb8c>
 2d0:	32100130 	andi	s0,s0,0x130
 2d4:	9c302380 	0x9c302380
 2d8:	7160e660 	0x7160e660
 2dc:	b0b0c7f0 	0xb0b0c7f0
 2e0:	e280ab30 	swc0	$0,-21712(s4)
 2e4:	f1a08a80 	0xf1a08a80
 2e8:	f3908700 	0xf3908700
 2ec:	218069f0 	addi	zero,t4,27120
 2f0:	0d50ee00 	jal	543b800 <main+0x543a88c>
 2f4:	a8e0bd10 	swl	zero,-17136(a3)
 2f8:	35e0fbc0 	ori	zero,t7,0xfbc0
 2fc:	c6e05630 	lwc1	$f0,22064(s7)
 300:	cb107f80 	lwc2	$16,32640(t8)
 304:	4130dee0 	0x4130dee0
 308:	ce402900 	lwc3	$0,10496(s2)
 30c:	51101a30 	0x51101a30
 310:	972086e0 	lhu	zero,-31008(t9)
 314:	0ed0b270 	jal	b42c9c0 <main+0xb42ba4c>
 318:	b03089a0 	0xb03089a0
 31c:	7ea0cc50 	0x7ea0cc50
 320:	23304750 	addi	s0,t9,18256
 324:	0960e0c0 	j	5838300 <main+0x583738c>
 328:	c610e920 	lwc1	$f16,-5856(s0)
 32c:	1bd07480 	0x1bd07480
 330:	83704620 	lb	s0,17952(k1)
 334:	70a085c0 	0x70a085c0
 338:	7c509490 	0x7c509490
 33c:	2ff0ea30 	sltiu	s0,ra,-5584
 340:	a9a023f0 	swl	zero,9200(t5)
 344:	a7f03d40 	sh	s0,15680(ra)
 348:	d0101c30 	0xd0101c30
 34c:	a340cdd0 	sb	zero,-12848(k0)
 350:	e9201d60 	swc2	$0,7520(t1)
 354:	43c035d0 	c0	0x1c035d0
 358:	f3f0ba70 	0xf3f0ba70
 35c:	da506830 	0xda506830
 360:	1ee009b0 	bgtz	s7,2a24 <main+0x1ab0>
 364:	0c7072e0 	jal	1c1cb80 <main+0x1c1bc0c>
 368:	b100f530 	0xb100f530
 36c:	5e10e0e0 	0x5e10e0e0
 370:	d740d160 	0xd740d160
 374:	c610e600 	lwc1	$f16,-6656(s0)
 378:	7d400fb0 	0x7d400fb0
 37c:	28e03b30 	slti	zero,a3,15152

00000380 <outLARc>:
 380:	00200021 	addu	zero,at,zero
 384:	0016000d 	break	0x16
 388:	00070005 	0x70005
 38c:	00030002 	srl	zero,v1,0x0
