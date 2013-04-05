
gsm.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <gsm_add>:
#define	saturate(x) 	\
	((x) < MIN_WORD ? MIN_WORD : (x) > MAX_WORD ? MAX_WORD: (x))

word
gsm_add (word a, word b)
{
       0:	00042400 	sll	a0,a0,0x10
       4:	00052c00 	sll	a1,a1,0x10
       8:	00042403 	sra	a0,a0,0x10
       c:	00052c03 	sra	a1,a1,0x10
  longword sum;
  sum = (longword) a + (longword) b;
      10:	00a42021 	addu	a0,a1,a0
  return saturate (sum);
      14:	28828000 	slti	v0,a0,-32768
      18:	1440000c 	bnez	v0,4c <gsm_add+0x4c>
      1c:	00000000 	sll	zero,zero,0x0
      20:	34028000 	ori	v0,zero,0x8000
      24:	0082102a 	slt	v0,a0,v0
      28:	10400004 	beqz	v0,3c <gsm_add+0x3c>
      2c:	00000000 	sll	zero,zero,0x0
      30:	00041400 	sll	v0,a0,0x10
      34:	03e00008 	jr	ra
      38:	00021403 	sra	v0,v0,0x10
      3c:	24047fff 	addiu	a0,zero,32767
      40:	00041400 	sll	v0,a0,0x10
      44:	03e00008 	jr	ra
      48:	00021403 	sra	v0,v0,0x10
}
      4c:	03e00008 	jr	ra
      50:	24028000 	addiu	v0,zero,-32768

00000054 <gsm_mult>:

word
gsm_mult (word a, word b)
{
      54:	00042400 	sll	a0,a0,0x10
      58:	00052c00 	sll	a1,a1,0x10
      5c:	00042403 	sra	a0,a0,0x10
  if (a == MIN_WORD && b == MIN_WORD)
      60:	24028000 	addiu	v0,zero,-32768
      64:	10820007 	beq	a0,v0,84 <gsm_mult+0x30>
      68:	00052c03 	sra	a1,a1,0x10
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
      6c:	00a40018 	mult	a1,a0
      70:	00001012 	mflo	v0
      74:	000213c3 	sra	v0,v0,0xf
      78:	00021400 	sll	v0,v0,0x10
      7c:	03e00008 	jr	ra
      80:	00021403 	sra	v0,v0,0x10
}

word
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
      84:	14a4fffa 	bne	a1,a0,70 <gsm_mult+0x1c>
      88:	00a40018 	mult	a1,a0
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
}
      8c:	03e00008 	jr	ra
      90:	24027fff 	addiu	v0,zero,32767

00000094 <gsm_mult_r>:

word
gsm_mult_r (word a, word b)
{
      94:	00052c00 	sll	a1,a1,0x10
      98:	00042400 	sll	a0,a0,0x10
      9c:	00052c03 	sra	a1,a1,0x10
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
      a0:	24028000 	addiu	v0,zero,-32768
      a4:	10a20008 	beq	a1,v0,c8 <gsm_mult_r+0x34>
      a8:	00042403 	sra	a0,a0,0x10
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
      ac:	00a40018 	mult	a1,a0
      b0:	00001012 	mflo	v0
      b4:	24424000 	addiu	v0,v0,16384
      prod >>= 15;
      b8:	000213c3 	sra	v0,v0,0xf
      return prod & 0xFFFF;
      bc:	00021400 	sll	v0,v0,0x10
      c0:	03e00008 	jr	ra
      c4:	00021403 	sra	v0,v0,0x10

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
      c8:	1485fff9 	bne	a0,a1,b0 <gsm_mult_r+0x1c>
      cc:	00a40018 	mult	a1,a0
    {
      prod = (longword) a *(longword) b + 16384;
      prod >>= 15;
      return prod & 0xFFFF;
    }
}
      d0:	03e00008 	jr	ra
      d4:	24027fff 	addiu	v0,zero,32767

000000d8 <gsm_abs>:

word
gsm_abs (word a)
{
      d8:	00041400 	sll	v0,a0,0x10
      dc:	00021403 	sra	v0,v0,0x10
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
      e0:	04400003 	bltz	v0,f0 <gsm_abs+0x18>
      e4:	24038000 	addiu	v1,zero,-32768
}
      e8:	03e00008 	jr	ra
      ec:	00000000 	sll	zero,zero,0x0
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
      f0:	10430005 	beq	v0,v1,108 <gsm_abs+0x30>
      f4:	00000000 	sll	zero,zero,0x0
      f8:	00021023 	negu	v0,v0
      fc:	00021400 	sll	v0,v0,0x10
     100:	03e00008 	jr	ra
     104:	00021403 	sra	v0,v0,0x10
}
     108:	03e00008 	jr	ra
     10c:	24027fff 	addiu	v0,zero,32767

00000110 <gsm_norm>:
 *
 * (That's 'ffs', only from the left, not the right..)
 */
{

  if (a < 0)
     110:	0480001d 	bltz	a0,188 <gsm_norm+0x78>
     114:	3c02c000 	lui	v0,0xc000
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     118:	3c02ffff 	lui	v0,0xffff
     11c:	00821024 	and	v0,a0,v0
     120:	1040000f 	beqz	v0,160 <gsm_norm+0x50>
     124:	3082ff00 	andi	v0,a0,0xff00
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     128:	3c02ff00 	lui	v0,0xff00
     12c:	00821024 	and	v0,a0,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     130:	10400022 	beqz	v0,1bc <gsm_norm+0xac>
     134:	00000000 	sll	zero,zero,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     138:	3c020000 	lui	v0,0x0
     13c:	24420000 	addiu	v0,v0,0
     140:	00042602 	srl	a0,a0,0x18
     144:	00822021 	addu	a0,a0,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     148:	90820000 	lbu	v0,0(a0)
     14c:	00000000 	sll	zero,zero,0x0
     150:	2442ffff 	addiu	v0,v0,-1
     154:	00021400 	sll	v0,v0,0x10
     158:	03e00008 	jr	ra
     15c:	00021403 	sra	v0,v0,0x10
     160:	1040000f 	beqz	v0,1a0 <gsm_norm+0x90>
     164:	00000000 	sll	zero,zero,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
     168:	00042203 	sra	a0,a0,0x8
     16c:	3c020000 	lui	v0,0x0
     170:	24420000 	addiu	v0,v0,0
     174:	308400ff 	andi	a0,a0,0xff
     178:	00822021 	addu	a0,a0,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     17c:	90820000 	lbu	v0,0(a0)
     180:	03e00008 	jr	ra
     184:	2442000f 	addiu	v0,v0,15
 */
{

  if (a < 0)
    {
      if (a <= -1073741824)
     188:	24420001 	addiu	v0,v0,1
     18c:	0082102a 	slt	v0,a0,v0
     190:	14400012 	bnez	v0,1dc <gsm_norm+0xcc>
     194:	00042027 	nor	a0,zero,a0
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     198:	08000047 	j	11c <gsm_norm+0xc>
     19c:	3c02ffff 	lui	v0,0xffff
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
     1a0:	3c020000 	lui	v0,0x0
     1a4:	24420000 	addiu	v0,v0,0
     1a8:	308400ff 	andi	a0,a0,0xff
     1ac:	00822021 	addu	a0,a0,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     1b0:	90820000 	lbu	v0,0(a0)
     1b4:	03e00008 	jr	ra
     1b8:	24420017 	addiu	v0,v0,23
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
     1bc:	00042403 	sra	a0,a0,0x10
     1c0:	3c020000 	lui	v0,0x0
     1c4:	24420000 	addiu	v0,v0,0
     1c8:	308400ff 	andi	a0,a0,0xff
     1cc:	00822021 	addu	a0,a0,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     1d0:	90820000 	lbu	v0,0(a0)
     1d4:	03e00008 	jr	ra
     1d8:	24420007 	addiu	v0,v0,7
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
}
     1dc:	03e00008 	jr	ra
     1e0:	00001021 	addu	v0,zero,zero

000001e4 <gsm_div>:

word
gsm_div (word num, word denum)
{
     1e4:	00042400 	sll	a0,a0,0x10
     1e8:	00052c00 	sll	a1,a1,0x10
     1ec:	00042403 	sra	a0,a0,0x10
  /* The parameter num sometimes becomes zero.
   * Although this is explicitly guarded against in 4.2.5,
   * we assume that the result should then be zero as well.
   */

  if (num == 0)
     1f0:	10800012 	beqz	a0,23c <gsm_div+0x58>
     1f4:	00052c03 	sra	a1,a1,0x10
  longword L_num;
  longword L_denum;
  word div;
  int k;

  L_num = num;
     1f8:	2403000f 	addiu	v1,zero,15
     1fc:	00001021 	addu	v0,zero,zero
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     200:	00021040 	sll	v0,v0,0x1
      L_num <<= 1;
     204:	00042040 	sll	a0,a0,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     208:	00021400 	sll	v0,v0,0x10
     20c:	00021403 	sra	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     210:	0085302a 	slt	a2,a0,a1
	{
	  L_num -= L_denum;
	  div++;
     214:	2463ffff 	addiu	v1,v1,-1
  while (k--)
    {
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
     218:	14c00004 	bnez	a2,22c <gsm_div+0x48>
     21c:	24470001 	addiu	a3,v0,1
	{
	  L_num -= L_denum;
	  div++;
     220:	00071400 	sll	v0,a3,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     224:	00852023 	subu	a0,a0,a1
	  div++;
     228:	00021403 	sra	v0,v0,0x10
   */

  if (num == 0)
    return 0;

  while (k--)
     22c:	1460fff4 	bnez	v1,200 <gsm_div+0x1c>
     230:	00000000 	sll	zero,zero,0x0
     234:	03e00008 	jr	ra
     238:	00000000 	sll	zero,zero,0x0
	  div++;
	}
    }

  return div;
}
     23c:	03e00008 	jr	ra
     240:	00001021 	addu	v0,zero,zero

00000244 <Autocorrelation>:
		 longword * L_ACF /* [0..8]       OUT     */ )
/*
 *  The goal is to compute the array L_ACF[k].  The signal s[i] must
 *  be scaled in order to avoid an overflow situation.
 */
{
     244:	27bdff88 	addiu	sp,sp,-120
     248:	afb00050 	sw	s0,80(sp)
     24c:	afbf0074 	sw	ra,116(sp)
     250:	00808021 	addu	s0,a0,zero
     254:	afbe0070 	sw	s8,112(sp)
     258:	afb7006c 	sw	s7,108(sp)
     25c:	afb60068 	sw	s6,104(sp)
     260:	afb50064 	sw	s5,100(sp)
     264:	afb40060 	sw	s4,96(sp)
     268:	afb3005c 	sw	s3,92(sp)
     26c:	afb20058 	sw	s2,88(sp)
     270:	afb10054 	sw	s1,84(sp)
     274:	afa5007c 	sw	a1,124(sp)
     278:	00001021 	addu	v0,zero,zero
  word *sp;
  word sl;

  /*  Search for the maximum.
   */
  smax = 0;
     27c:	00002021 	addu	a0,zero,zero
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
     280:	24098000 	addiu	t1,zero,-32768
  for (k = 0; k <= 159; k++)
     284:	24080140 	addiu	t0,zero,320

/* 4.2.4 */


void
Autocorrelation (word * s /* [0..159]     IN/OUT  */ ,
     288:	02021821 	addu	v1,s0,v0
  /*  Search for the maximum.
   */
  smax = 0;
  for (k = 0; k <= 159; k++)
    {
      temp = GSM_ABS (s[k]);
     28c:	84630000 	lh	v1,0(v1)
     290:	00802821 	addu	a1,a0,zero
     294:	04600162 	bltz	v1,820 <Autocorrelation+0x5dc>
     298:	0083382a 	slt	a3,a0,v1
     29c:	10e00003 	beqz	a3,2ac <Autocorrelation+0x68>
     2a0:	00a02021 	addu	a0,a1,zero
     2a4:	00602821 	addu	a1,v1,zero
     2a8:	00a02021 	addu	a0,a1,zero
     2ac:	24420002 	addiu	v0,v0,2
  word sl;

  /*  Search for the maximum.
   */
  smax = 0;
  for (k = 0; k <= 159; k++)
     2b0:	1448fff6 	bne	v0,t0,28c <Autocorrelation+0x48>
     2b4:	02021821 	addu	v1,s0,v0
	smax = temp;
    }

  /*  Computation of the scaling factor.
   */
  if (smax == 0)
     2b8:	10800164 	beqz	a0,84c <Autocorrelation+0x608>
     2bc:	00000000 	sll	zero,zero,0x0
    scalauto = 0;
  else
    scalauto = 4 - gsm_norm ((longword) smax << 16);	/* sub(4,..) */
     2c0:	0c000000 	jal	0 <gsm_add>
     2c4:	00042400 	sll	a0,a0,0x10
     2c8:	24030004 	addiu	v1,zero,4
     2cc:	0062f023 	subu	s8,v1,v0
     2d0:	33deffff 	andi	s8,s8,0xffff

  if (scalauto > 0 && scalauto <= 4)
     2d4:	27c2ffff 	addiu	v0,s8,-1
     2d8:	3042ffff 	andi	v0,v0,0xffff
  /*  Computation of the scaling factor.
   */
  if (smax == 0)
    scalauto = 0;
  else
    scalauto = 4 - gsm_norm ((longword) smax << 16);	/* sub(4,..) */
     2dc:	001ef400 	sll	s8,s8,0x10

  if (scalauto > 0 && scalauto <= 4)
     2e0:	2c420004 	sltiu	v0,v0,4
     2e4:	10400010 	beqz	v0,328 <Autocorrelation+0xe4>
     2e8:	001ef403 	sra	s8,s8,0x10
     2ec:	27c2ffff 	addiu	v0,s8,-1
     2f0:	24054000 	addiu	a1,zero,16384
     2f4:	00452807 	srav	a1,a1,v0
     2f8:	00001821 	addu	v1,zero,zero
     2fc:	02001021 	addu	v0,s0,zero
    {
      n = scalauto;
      for (k = 0; k <= 159; k++)
     300:	240400a0 	addiu	a0,zero,160
	s[k] = GSM_MULT_R (s[k], 16384 >> (n - 1));
     304:	84460000 	lh	a2,0(v0)
    scalauto = 4 - gsm_norm ((longword) smax << 16);	/* sub(4,..) */

  if (scalauto > 0 && scalauto <= 4)
    {
      n = scalauto;
      for (k = 0; k <= 159; k++)
     308:	24630001 	addiu	v1,v1,1
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
     30c:	00a60018 	mult	a1,a2
     310:	00003012 	mflo	a2
     314:	24c64000 	addiu	a2,a2,16384
      prod >>= 15;
     318:	000633c3 	sra	a2,a2,0xf
      return prod & 0xFFFF;
     31c:	a4460000 	sh	a2,0(v0)
     320:	1464fff8 	bne	v1,a0,304 <Autocorrelation+0xc0>
     324:	24420002 	addiu	v0,v0,2

  /*  Compute the L_ACF[..].
   */
  {
    sp = s;
    sl = *sp;
     328:	86160000 	lh	s6,0(s0)

#define STEP(k)	 L_ACF[k] += ((longword)sl * sp[ -(k) ]);

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
     32c:	8fa5007c 	lw	a1,124(sp)

  /*  Compute the L_ACF[..].
   */
  {
    sp = s;
    sl = *sp;
     330:	00001021 	addu	v0,zero,zero

#define STEP(k)	 L_ACF[k] += ((longword)sl * sp[ -(k) ]);

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
     334:	2404ffdc 	addiu	a0,zero,-36

/* 4.2.4 */


void
Autocorrelation (word * s /* [0..159]     IN/OUT  */ ,
     338:	00a21821 	addu	v1,a1,v0

#define STEP(k)	 L_ACF[k] += ((longword)sl * sp[ -(k) ]);

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;
     33c:	2442fffc 	addiu	v0,v0,-4
    sl = *sp;

#define STEP(k)	 L_ACF[k] += ((longword)sl * sp[ -(k) ]);

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
     340:	1444fffd 	bne	v0,a0,338 <Autocorrelation+0xf4>
     344:	ac600020 	sw	zero,32(v1)
      L_ACF[k] = 0;

    STEP (0);
     348:	02d60018 	mult	s6,s6
    NEXTI;
    STEP (0);
     34c:	860c0002 	lh	t4,2(s0)
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
    NEXTI;
     350:	2603000e 	addiu	v1,s0,14
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
    NEXTI;
     354:	2608000c 	addiu	t0,s0,12
    STEP (0);
    STEP (1);
    STEP (2);
     358:	8504fffc 	lh	a0,-4(t0)
    STEP (4);
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
     35c:	8477fffe 	lh	s7,-2(v1)
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    NEXTI;
     360:	260a000a 	addiu	t2,s0,10
    STEP (1);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    NEXTI;
     364:	26020006 	addiu	v0,s0,6
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    NEXTI;
     368:	260b0008 	addiu	t3,s0,8
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    NEXTI;
    STEP (0);
     36c:	8605000a 	lh	a1,10(s0)
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    NEXTI;
    STEP (0);
     370:	86060008 	lh	a2,8(s0)
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    NEXTI;
    STEP (0);
     374:	86070006 	lh	a3,6(s0)
    STEP (0);
    NEXTI;
    STEP (0);
    STEP (1);
    NEXTI;
    STEP (0);
     378:	86090004 	lh	t1,4(s0)

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
     37c:	00009812 	mflo	s3
    STEP (0);
    STEP (1);
    STEP (2);
    NEXTI;
    STEP (0);
    STEP (1);
     380:	8459fffe 	lh	t9,-2(v0)
    STEP (2);
     384:	8458fffc 	lh	t8,-4(v0)
    STEP (3);
    NEXTI;
    STEP (0);
    STEP (1);
     388:	856ffffe 	lh	t7,-2(t3)
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
    NEXTI;
    STEP (0);
     38c:	018c0018 	mult	t4,t4
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
    NEXTI;
    STEP (0);
     390:	8602000c 	lh	v0,12(s0)
    STEP (2);
    STEP (3);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     394:	856efffc 	lh	t6,-4(t3)
    STEP (3);
    STEP (4);
    NEXTI;
    STEP (0);
    STEP (1);
     398:	854dfffe 	lh	t5,-2(t2)
    STEP (2);
     39c:	8554fffc 	lh	s4,-4(t2)
    STEP (3);
    STEP (4);
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
     3a0:	8515fffe 	lh	s5,-2(t0)
    STEP (2);
     3a4:	afa40018 	sw	a0,24(sp)
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
    NEXTI;
     3a8:	8604000e 	lh	a0,14(s0)
    STEP (0);
    STEP (1);
     3ac:	afb70028 	sw	s7,40(sp)
    STEP (2);
     3b0:	8477fffc 	lh	s7,-4(v1)
    NEXTI;
    STEP (0);
    STEP (1);
    NEXTI;
    STEP (0);
    STEP (1);
     3b4:	01808821 	addu	s1,t4,zero
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     3b8:	afb7002c 	sw	s7,44(sp)

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
     3bc:	8fb7007c 	lw	s7,124(sp)
    NEXTI;
    STEP (0);
     3c0:	00009012 	mflo	s2
    STEP (3);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     3c4:	856bfffa 	lh	t3,-6(t3)

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
     3c8:	8ef70000 	lw	s7,0(s7)
    NEXTI;
    STEP (0);
    STEP (1);
     3cc:	01960018 	mult	t4,s6

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
     3d0:	afb70048 	sw	s7,72(sp)
    NEXTI;
    STEP (0);
    STEP (1);
     3d4:	8fb7007c 	lw	s7,124(sp)
     3d8:	00000000 	sll	zero,zero,0x0
     3dc:	8ef70004 	lw	s7,4(s7)
     3e0:	00000000 	sll	zero,zero,0x0
     3e4:	afb70030 	sw	s7,48(sp)
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     3e8:	8fb7007c 	lw	s7,124(sp)
     3ec:	00000000 	sll	zero,zero,0x0
     3f0:	8ef70008 	lw	s7,8(s7)
     3f4:	00000000 	sll	zero,zero,0x0
     3f8:	afb70034 	sw	s7,52(sp)

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
     3fc:	8fb70048 	lw	s7,72(sp)
    NEXTI;
    STEP (0);
    STEP (1);
     400:	00006012 	mflo	t4

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
     404:	02779821 	addu	s3,s3,s7
    NEXTI;
    STEP (0);
     408:	02729021 	addu	s2,s3,s2
    STEP (1);
    NEXTI;
    STEP (0);
     40c:	01290018 	mult	t1,t1
    STEP (4);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     410:	8553fffa 	lh	s3,-6(t2)
    STEP (4);
     414:	854afff8 	lh	t2,-8(t2)
    STEP (4);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     418:	afb30010 	sw	s3,16(sp)
    STEP (4);
     41c:	afaa0014 	sw	t2,20(sp)
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     420:	8517fffa 	lh	s7,-6(t0)
    STEP (4);
     424:	850afff8 	lh	t2,-8(t0)
    STEP (5);
     428:	8508fff6 	lh	t0,-10(t0)
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     42c:	afaa0020 	sw	t2,32(sp)
    STEP (5);
     430:	afa80024 	sw	t0,36(sp)
      L_ACF[k] = 0;

    STEP (0);
    NEXTI;
    STEP (0);
    STEP (1);
     434:	8faa0030 	lw	t2,48(sp)
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     438:	afb7001c 	sw	s7,28(sp)
      L_ACF[k] = 0;

    STEP (0);
    NEXTI;
    STEP (0);
    STEP (1);
     43c:	014c6021 	addu	t4,t2,t4
    NEXTI;
    STEP (0);
     440:	00004012 	mflo	t0
    STEP (1);
    STEP (2);
     444:	8faa0034 	lw	t2,52(sp)
    STEP (0);
    NEXTI;
    STEP (0);
    STEP (1);
    NEXTI;
    STEP (0);
     448:	02489021 	addu	s2,s2,t0
    STEP (2);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     44c:	8fb3007c 	lw	s3,124(sp)
    NEXTI;
    STEP (0);
    STEP (1);
    NEXTI;
    STEP (0);
    STEP (1);
     450:	02290018 	mult	s1,t1
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     454:	8fb7007c 	lw	s7,124(sp)
    STEP (2);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     458:	8e73000c 	lw	s3,12(s3)
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     45c:	8ef70010 	lw	s7,16(s7)
    STEP (2);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     460:	afb30038 	sw	s3,56(sp)
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     464:	afb7003c 	sw	s7,60(sp)
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
     468:	8fb3007c 	lw	s3,124(sp)
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
     46c:	8fb7007c 	lw	s7,124(sp)
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
     470:	8e730014 	lw	s3,20(s3)
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
     474:	8ef70018 	lw	s7,24(s7)
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
     478:	afb30040 	sw	s3,64(sp)
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
     47c:	afb70044 	sw	s7,68(sp)

/* 4.2.4 */


void
Autocorrelation (word * s /* [0..159]     IN/OUT  */ ,
     480:	2617013e 	addiu	s7,s0,318
    NEXTI;
    STEP (0);
    STEP (1);
    NEXTI;
    STEP (0);
    STEP (1);
     484:	00008812 	mflo	s1
     488:	01916021 	addu	t4,t4,s1
     48c:	00000000 	sll	zero,zero,0x0
    STEP (2);
     490:	01360018 	mult	t1,s6
     494:	00004812 	mflo	t1
     498:	01494821 	addu	t1,t2,t1
     49c:	00000000 	sll	zero,zero,0x0
    NEXTI;
    STEP (0);
     4a0:	00e70018 	mult	a3,a3
     4a4:	00004012 	mflo	t0
     4a8:	02484021 	addu	t0,s2,t0
     4ac:	00000000 	sll	zero,zero,0x0
    STEP (1);
     4b0:	03270018 	mult	t9,a3
     4b4:	0000c812 	mflo	t9
     4b8:	01996021 	addu	t4,t4,t9
     4bc:	00000000 	sll	zero,zero,0x0
    STEP (2);
     4c0:	03070018 	mult	t8,a3
     4c4:	0000c012 	mflo	t8
     4c8:	01384821 	addu	t1,t1,t8
     4cc:	00000000 	sll	zero,zero,0x0
    STEP (3);
    NEXTI;
    STEP (0);
     4d0:	00c60018 	mult	a2,a2
     4d4:	00005012 	mflo	t2
     4d8:	010a4021 	addu	t0,t0,t2
     4dc:	00000000 	sll	zero,zero,0x0
    STEP (1);
     4e0:	01e60018 	mult	t7,a2
     4e4:	00007812 	mflo	t7
     4e8:	018f6021 	addu	t4,t4,t7
     4ec:	00000000 	sll	zero,zero,0x0
    STEP (2);
     4f0:	01c60018 	mult	t6,a2
     4f4:	00007012 	mflo	t6
     4f8:	012e4821 	addu	t1,t1,t6
    STEP (3);
    STEP (4);
     4fc:	8fae003c 	lw	t6,60(sp)
    NEXTI;
    STEP (0);
     500:	00a50018 	mult	a1,a1
     504:	00005012 	mflo	t2
     508:	010a4021 	addu	t0,t0,t2
     50c:	00000000 	sll	zero,zero,0x0
    STEP (1);
     510:	01a50018 	mult	t5,a1
     514:	00006812 	mflo	t5
     518:	018d6021 	addu	t4,t4,t5
    STEP (4);
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     51c:	8fad0018 	lw	t5,24(sp)
    STEP (3);
    STEP (4);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     520:	02850018 	mult	s4,a1
     524:	0000a012 	mflo	s4
     528:	01344821 	addu	t1,t1,s4
     52c:	00000000 	sll	zero,zero,0x0
    STEP (3);
    STEP (4);
    STEP (5);
    NEXTI;
    STEP (0);
     530:	00420018 	mult	v0,v0
     534:	00005012 	mflo	t2
     538:	010a4021 	addu	t0,t0,t2
     53c:	00000000 	sll	zero,zero,0x0
    STEP (1);
     540:	02a20018 	mult	s5,v0
     544:	0000a812 	mflo	s5
     548:	01956021 	addu	t4,t4,s5
     54c:	00000000 	sll	zero,zero,0x0
    STEP (2);
     550:	01a20018 	mult	t5,v0
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
     554:	8fad007c 	lw	t5,124(sp)
     558:	00000000 	sll	zero,zero,0x0
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
    STEP (7);
     55c:	8db4001c 	lw	s4,28(t5)
     560:	8db30020 	lw	s3,32(t5)
    STEP (4);
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     564:	00005012 	mflo	t2
     568:	012a4821 	addu	t1,t1,t2
    STEP (4);
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
     56c:	8faa0028 	lw	t2,40(sp)
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
     570:	00840018 	mult	a0,a0
     574:	00009012 	mflo	s2
     578:	01129021 	addu	s2,t0,s2
    STEP (1);
    STEP (2);
     57c:	8fa8002c 	lw	t0,44(sp)
    STEP (4);
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
     580:	01440018 	mult	t2,a0
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
     584:	adb20000 	sw	s2,0(t5)
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     588:	846afff8 	lh	t2,-8(v1)
    STEP (4);
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
     58c:	00008812 	mflo	s1
     590:	01918821 	addu	s1,t4,s1
     594:	adb10004 	sw	s1,4(t5)
    STEP (2);
     598:	01040018 	mult	t0,a0
    STEP (3);
     59c:	846cfffa 	lh	t4,-6(v1)
    STEP (4);
    STEP (5);
    STEP (6);
     5a0:	8468fff4 	lh	t0,-12(v1)
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     5a4:	0000c812 	mflo	t9
     5a8:	0139c821 	addu	t9,t1,t9
     5ac:	adb90008 	sw	t9,8(t5)
    STEP (2);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     5b0:	00f60018 	mult	a3,s6
     5b4:	8fad0038 	lw	t5,56(sp)
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
     5b8:	8469fff6 	lh	t1,-10(v1)
    STEP (2);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     5bc:	00003812 	mflo	a3
     5c0:	01a73821 	addu	a3,t5,a3
    STEP (4);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     5c4:	8fad0010 	lw	t5,16(sp)
    STEP (3);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     5c8:	01660018 	mult	t3,a2
     5cc:	00005812 	mflo	t3
     5d0:	00eb3821 	addu	a3,a3,t3
     5d4:	00000000 	sll	zero,zero,0x0
    STEP (4);
     5d8:	00d60018 	mult	a2,s6
     5dc:	00003012 	mflo	a2
     5e0:	01c63021 	addu	a2,t6,a2
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     5e4:	8fae0014 	lw	t6,20(sp)
    STEP (4);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     5e8:	01a50018 	mult	t5,a1
     5ec:	00005812 	mflo	t3
     5f0:	00eb3821 	addu	a3,a3,t3
     5f4:	00000000 	sll	zero,zero,0x0
    STEP (4);
     5f8:	01c50018 	mult	t6,a1
    STEP (5);
     5fc:	8fae0040 	lw	t6,64(sp)
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     600:	00006812 	mflo	t5
     604:	00cd3021 	addu	a2,a2,t5
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     608:	8fad001c 	lw	t5,28(sp)
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
     60c:	00b60018 	mult	a1,s6
     610:	00002812 	mflo	a1
     614:	01c52821 	addu	a1,t6,a1
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     618:	8fae0020 	lw	t6,32(sp)
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     61c:	01a20018 	mult	t5,v0
     620:	00005812 	mflo	t3
     624:	00eb3821 	addu	a3,a3,t3
     628:	00000000 	sll	zero,zero,0x0
    STEP (4);
     62c:	01c20018 	mult	t6,v0
    STEP (5);
     630:	8fae0024 	lw	t6,36(sp)
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     634:	00006812 	mflo	t5
     638:	00cd3021 	addu	a2,a2,t5
     63c:	00000000 	sll	zero,zero,0x0
    STEP (5);
     640:	01c20018 	mult	t6,v0
     644:	00005812 	mflo	t3
     648:	00ab2821 	addu	a1,a1,t3
    STEP (6);
     64c:	8fab0044 	lw	t3,68(sp)
     650:	00560018 	mult	v0,s6
     654:	00001012 	mflo	v0
     658:	01621021 	addu	v0,t3,v0
     65c:	00000000 	sll	zero,zero,0x0
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     660:	01840018 	mult	t4,a0
     664:	00006012 	mflo	t4
     668:	00ecc021 	addu	t8,a3,t4
     66c:	8fa7007c 	lw	a3,124(sp)
    STEP (4);
     670:	01440018 	mult	t2,a0
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     674:	acf8000c 	sw	t8,12(a3)
    STEP (4);
     678:	00005012 	mflo	t2
     67c:	00ca7821 	addu	t7,a2,t2
     680:	acef0010 	sw	t7,16(a3)
    STEP (5);
     684:	01240018 	mult	t1,a0
     688:	00004812 	mflo	t1
     68c:	00a97021 	addu	t6,a1,t1
     690:	acee0014 	sw	t6,20(a3)
    STEP (6);
     694:	01040018 	mult	t0,a0
     698:	00004012 	mflo	t0
     69c:	00486821 	addu	t5,v0,t0
     6a0:	aced0018 	sw	t5,24(a3)
    STEP (7);
     6a4:	00960018 	mult	a0,s6
     6a8:	00006012 	mflo	t4
     6ac:	01946021 	addu	t4,t4,s4
     6b0:	acec001c 	sw	t4,28(a3)

    for (i = 8; i <= 159; i++)
      {

	NEXTI;
     6b4:	24630002 	addiu	v1,v1,2
     6b8:	84620000 	lh	v0,0(v1)

	STEP (0);
	STEP (1);
	STEP (2);
     6bc:	8469fffc 	lh	t1,-4(v1)
      {

	NEXTI;

	STEP (0);
	STEP (1);
     6c0:	00820018 	mult	a0,v0
	STEP (2);
	STEP (3);
     6c4:	8468fffa 	lh	t0,-6(v1)
	STEP (4);
     6c8:	8467fff8 	lh	a3,-8(v1)
	STEP (5);
     6cc:	8466fff6 	lh	a2,-10(v1)
	STEP (6);
     6d0:	8465fff4 	lh	a1,-12(v1)
	STEP (7);
     6d4:	8474fff2 	lh	s4,-14(v1)
	STEP (8);
     6d8:	8475fff0 	lh	s5,-16(v1)
    STEP (4);
    STEP (5);
    STEP (6);
    STEP (7);

    for (i = 8; i <= 159; i++)
     6dc:	00402021 	addu	a0,v0,zero
      {

	NEXTI;

	STEP (0);
	STEP (1);
     6e0:	00005012 	mflo	t2
     6e4:	01515021 	addu	t2,t2,s1
     6e8:	01408821 	addu	s1,t2,zero
    for (i = 8; i <= 159; i++)
      {

	NEXTI;

	STEP (0);
     6ec:	00420018 	mult	v0,v0
     6f0:	00005812 	mflo	t3
     6f4:	01725821 	addu	t3,t3,s2
     6f8:	01609021 	addu	s2,t3,zero
	STEP (1);
	STEP (2);
     6fc:	01220018 	mult	t1,v0
     700:	00004812 	mflo	t1
     704:	01394821 	addu	t1,t1,t9
     708:	0120c821 	addu	t9,t1,zero
	STEP (3);
     70c:	01020018 	mult	t0,v0
     710:	00004012 	mflo	t0
     714:	01184021 	addu	t0,t0,t8
     718:	0100c021 	addu	t8,t0,zero
	STEP (4);
     71c:	00e20018 	mult	a3,v0
     720:	00003812 	mflo	a3
     724:	00ef3821 	addu	a3,a3,t7
     728:	00e07821 	addu	t7,a3,zero
	STEP (5);
     72c:	00c20018 	mult	a2,v0
     730:	00003012 	mflo	a2
     734:	00ce3021 	addu	a2,a2,t6
     738:	00c07021 	addu	t6,a2,zero
	STEP (6);
     73c:	00a20018 	mult	a1,v0
     740:	00002812 	mflo	a1
     744:	00ad2821 	addu	a1,a1,t5
     748:	00a06821 	addu	t5,a1,zero
	STEP (7);
     74c:	02820018 	mult	s4,v0
     750:	0000a012 	mflo	s4
     754:	028ca021 	addu	s4,s4,t4
     758:	02806021 	addu	t4,s4,zero
	STEP (8);
     75c:	02a20018 	mult	s5,v0
     760:	00001012 	mflo	v0
    STEP (4);
    STEP (5);
    STEP (6);
    STEP (7);

    for (i = 8; i <= 159; i++)
     764:	1477ffd3 	bne	v1,s7,6b4 <Autocorrelation+0x470>
     768:	00539821 	addu	s3,v0,s3
     76c:	8fa2007c 	lw	v0,124(sp)
     770:	24040008 	addiu	a0,zero,8
     774:	ac4b0000 	sw	t3,0(v0)
     778:	ac4a0004 	sw	t2,4(v0)
     77c:	ac490008 	sw	t1,8(v0)
     780:	ac48000c 	sw	t0,12(v0)
     784:	ac470010 	sw	a3,16(v0)
     788:	ac460014 	sw	a2,20(v0)
     78c:	ac450018 	sw	a1,24(v0)
     790:	ac54001c 	sw	s4,28(v0)
     794:	ac530020 	sw	s3,32(v0)
     798:	00401821 	addu	v1,v0,zero
	STEP (6);
	STEP (7);
	STEP (8);
      }

    for (k = 8; k >= 0; k--)
     79c:	080001eb 	j	7ac <Autocorrelation+0x568>
     7a0:	2402ffff 	addiu	v0,zero,-1
     7a4:	8c730020 	lw	s3,32(v1)
     7a8:	00000000 	sll	zero,zero,0x0
      L_ACF[k] <<= 1;
     7ac:	00139840 	sll	s3,s3,0x1
	STEP (6);
	STEP (7);
	STEP (8);
      }

    for (k = 8; k >= 0; k--)
     7b0:	2484ffff 	addiu	a0,a0,-1
      L_ACF[k] <<= 1;
     7b4:	ac730020 	sw	s3,32(v1)
	STEP (6);
	STEP (7);
	STEP (8);
      }

    for (k = 8; k >= 0; k--)
     7b8:	1482fffa 	bne	a0,v0,7a4 <Autocorrelation+0x560>
     7bc:	2463fffc 	addiu	v1,v1,-4
      L_ACF[k] <<= 1;

  }
  /*   Rescaling of the array s[0..159]
   */
  if (scalauto > 0)
     7c0:	1bc0000b 	blez	s8,7f0 <Autocorrelation+0x5ac>
     7c4:	00000000 	sll	zero,zero,0x0
     7c8:	2402009f 	addiu	v0,zero,159
    for (k = 159; k >= 0; k--)
     7cc:	080001f7 	j	7dc <Autocorrelation+0x598>
     7d0:	2403ffff 	addiu	v1,zero,-1
      *s++ <<= scalauto;
     7d4:	86160000 	lh	s6,0(s0)
     7d8:	00000000 	sll	zero,zero,0x0
     7dc:	03d6b004 	sllv	s6,s6,s8

  }
  /*   Rescaling of the array s[0..159]
   */
  if (scalauto > 0)
    for (k = 159; k >= 0; k--)
     7e0:	2442ffff 	addiu	v0,v0,-1
      *s++ <<= scalauto;
     7e4:	a6160000 	sh	s6,0(s0)

  }
  /*   Rescaling of the array s[0..159]
   */
  if (scalauto > 0)
    for (k = 159; k >= 0; k--)
     7e8:	1443fffa 	bne	v0,v1,7d4 <Autocorrelation+0x590>
     7ec:	26100002 	addiu	s0,s0,2
      *s++ <<= scalauto;
}
     7f0:	8fbf0074 	lw	ra,116(sp)
     7f4:	8fbe0070 	lw	s8,112(sp)
     7f8:	8fb7006c 	lw	s7,108(sp)
     7fc:	8fb60068 	lw	s6,104(sp)
     800:	8fb50064 	lw	s5,100(sp)
     804:	8fb40060 	lw	s4,96(sp)
     808:	8fb3005c 	lw	s3,92(sp)
     80c:	8fb20058 	lw	s2,88(sp)
     810:	8fb10054 	lw	s1,84(sp)
     814:	8fb00050 	lw	s0,80(sp)
     818:	03e00008 	jr	ra
     81c:	27bd0078 	addiu	sp,sp,120
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
     820:	00032823 	negu	a1,v1
     824:	00052c00 	sll	a1,a1,0x10
     828:	00052c03 	sra	a1,a1,0x10
     82c:	10690005 	beq	v1,t1,844 <Autocorrelation+0x600>
     830:	0085302a 	slt	a2,a0,a1
     834:	10c0fe9d 	beqz	a2,2ac <Autocorrelation+0x68>
     838:	00000000 	sll	zero,zero,0x0
     83c:	080000ab 	j	2ac <Autocorrelation+0x68>
     840:	00a02021 	addu	a0,a1,zero
     844:	080000ab 	j	2ac <Autocorrelation+0x68>
     848:	24047fff 	addiu	a0,zero,32767
    }

  /*  Computation of the scaling factor.
   */
  if (smax == 0)
    scalauto = 0;
     84c:	080000ca 	j	328 <Autocorrelation+0xe4>
     850:	0000f021 	addu	s8,zero,zero

00000854 <Reflection_coefficients>:
/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
			 register word * r /* 0...7        OUT     */ )
{
     854:	27bdffa0 	addiu	sp,sp,-96
     858:	afb00058 	sw	s0,88(sp)
     85c:	00808021 	addu	s0,a0,zero
  word K[9];			/* 2..8 */

  /*  Schur recursion with 16 bits arithmetic.
   */

  if (L_ACF[0] == 0)
     860:	8c840000 	lw	a0,0(a0)
     864:	00000000 	sll	zero,zero,0x0
     868:	1480000a 	bnez	a0,894 <Reflection_coefficients+0x40>
     86c:	afbf005c 	sw	ra,92(sp)
     870:	24020008 	addiu	v0,zero,8
    {
      for (i = 8; i > 0; i--)
     874:	2442ffff 	addiu	v0,v0,-1
	*r++ = 0;
     878:	a4a00000 	sh	zero,0(a1)
  /*  Schur recursion with 16 bits arithmetic.
   */

  if (L_ACF[0] == 0)
    {
      for (i = 8; i > 0; i--)
     87c:	1440fffd 	bnez	v0,874 <Reflection_coefficients+0x20>
     880:	24a50002 	addiu	a1,a1,2

	  temp = GSM_MULT_R (P[m + 1], *r);
	  K[m] = GSM_ADD (K[m], temp);
	}
    }
}
     884:	8fbf005c 	lw	ra,92(sp)
     888:	8fb00058 	lw	s0,88(sp)
     88c:	03e00008 	jr	ra
     890:	27bd0060 	addiu	sp,sp,96
      for (i = 8; i > 0; i--)
	*r++ = 0;
      return;
    }

  temp = gsm_norm (L_ACF[0]);
     894:	0c000000 	jal	0 <gsm_add>
     898:	afa50050 	sw	a1,80(sp)
     89c:	27a60010 	addiu	a2,sp,16
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     8a0:	8fa50050 	lw	a1,80(sp)
      for (i = 8; i > 0; i--)
	*r++ = 0;
      return;
    }

  temp = gsm_norm (L_ACF[0]);
     8a4:	00c01821 	addu	v1,a2,zero
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     8a8:	27a70022 	addiu	a3,sp,34
      return;
    }

  temp = gsm_norm (L_ACF[0]);
  for (i = 0; i <= 8; i++)
    ACF[i] = SASR (L_ACF[i] << temp, 16);
     8ac:	8e040000 	lw	a0,0(s0)
     8b0:	00000000 	sll	zero,zero,0x0
     8b4:	00442004 	sllv	a0,a0,v0
     8b8:	00042403 	sra	a0,a0,0x10
     8bc:	a4640000 	sh	a0,0(v1)
     8c0:	24630002 	addiu	v1,v1,2
	*r++ = 0;
      return;
    }

  temp = gsm_norm (L_ACF[0]);
  for (i = 0; i <= 8; i++)
     8c4:	1467fff9 	bne	v1,a3,8ac <Reflection_coefficients+0x58>
     8c8:	26100004 	addiu	s0,s0,4
     8cc:	00001021 	addu	v0,zero,zero
     8d0:	27ab0038 	addiu	t3,sp,56
    ACF[i] = SASR (L_ACF[i] << temp, 16);

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
     8d4:	2407000e 	addiu	a3,zero,14
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     8d8:	00c21821 	addu	v1,a2,v0

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
     8dc:	94640002 	lhu	a0,2(v1)
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     8e0:	01621821 	addu	v1,t3,v0

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
     8e4:	24420002 	addiu	v0,v0,2
    ACF[i] = SASR (L_ACF[i] << temp, 16);

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
     8e8:	1447fffb 	bne	v0,a3,8d8 <Reflection_coefficients+0x84>
     8ec:	a4640002 	sh	a0,2(v1)
     8f0:	00001021 	addu	v0,zero,zero
     8f4:	27a80024 	addiu	t0,sp,36
    K[i] = ACF[i];
  for (i = 0; i <= 8; i++)
     8f8:	24070012 	addiu	a3,zero,18
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     8fc:	00c21821 	addu	v1,a2,v0
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
  for (i = 0; i <= 8; i++)
    P[i] = ACF[i];
     900:	94640000 	lhu	a0,0(v1)
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     904:	01021821 	addu	v1,t0,v0
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
  for (i = 0; i <= 8; i++)
    P[i] = ACF[i];
     908:	24420002 	addiu	v0,v0,2
  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
  for (i = 0; i <= 8; i++)
     90c:	1447fffb 	bne	v0,a3,8fc <Reflection_coefficients+0xa8>
     910:	a4640000 	sh	a0,0(v1)
  /*   Compute reflection coefficients
   */
  for (n = 1; n <= 8; n++, r++)
    {

      temp = P[1];
     914:	87b80026 	lh	t8,38(sp)
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     918:	27a80046 	addiu	t0,sp,70
     91c:	240a0001 	addiu	t2,zero,1
     920:	24078000 	addiu	a3,zero,-32768

      *r = gsm_div (temp, P[0]);

      if (P[1] > 0)
	*r = -*r;		/* r[n] = sub(0, r[n]) */
      if (n == 8)
     924:	240c0008 	addiu	t4,zero,8
word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
  return saturate (sum);
     928:	34098000 	ori	t1,zero,0x8000
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
     92c:	0700005d 	bltz	t8,aa4 <Reflection_coefficients+0x250>
     930:	240d0009 	addiu	t5,zero,9
     934:	03001821 	addu	v1,t8,zero
  for (n = 1; n <= 8; n++, r++)
    {

      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
     938:	87a20024 	lh	v0,36(sp)
     93c:	00000000 	sll	zero,zero,0x0
     940:	0043202a 	slt	a0,v0,v1
     944:	14800073 	bnez	a0,b14 <Reflection_coefficients+0x2c0>
     948:	00000000 	sll	zero,zero,0x0
  /* The parameter num sometimes becomes zero.
   * Although this is explicitly guarded against in 4.2.5,
   * we assume that the result should then be zero as well.
   */

  if (num == 0)
     94c:	1060000e 	beqz	v1,988 <Reflection_coefficients+0x134>
     950:	00002021 	addu	a0,zero,zero
    return 0;

  while (k--)
     954:	2406000e 	addiu	a2,zero,14
    {
      div <<= 1;
     958:	00042040 	sll	a0,a0,0x1
      L_num <<= 1;
     95c:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     960:	00042400 	sll	a0,a0,0x10
     964:	00042403 	sra	a0,a0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     968:	0062702a 	slt	t6,v1,v0
     96c:	15c00004 	bnez	t6,980 <Reflection_coefficients+0x12c>
     970:	248f0001 	addiu	t7,a0,1
	{
	  L_num -= L_denum;
	  div++;
     974:	000f2400 	sll	a0,t7,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     978:	00621823 	subu	v1,v1,v0
	  div++;
     97c:	00042403 	sra	a0,a0,0x10
   */

  if (num == 0)
    return 0;

  while (k--)
     980:	14c0fff5 	bnez	a2,958 <Reflection_coefficients+0x104>
     984:	24c6ffff 	addiu	a2,a2,-1
	  return;
	}

      *r = gsm_div (temp, P[0]);

      if (P[1] > 0)
     988:	1b000003 	blez	t8,998 <Reflection_coefficients+0x144>
     98c:	a4a40000 	sh	a0,0(a1)
	*r = -*r;		/* r[n] = sub(0, r[n]) */
     990:	00042023 	negu	a0,a0
     994:	a4a40000 	sh	a0,0(a1)
      if (n == 8)
     998:	114cffba 	beq	t2,t4,884 <Reflection_coefficients+0x30>
     99c:	00000000 	sll	zero,zero,0x0
	return;

      /*  Schur recursion
       */
      temp = GSM_MULT_R (P[1], *r);
     9a0:	84a30000 	lh	v1,0(a1)
     9a4:	00000000 	sll	zero,zero,0x0

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
     9a8:	10670054 	beq	v1,a3,afc <Reflection_coefficients+0x2a8>
     9ac:	00780018 	mult	v1,t8
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
     9b0:	0000c012 	mflo	t8
     9b4:	27184000 	addiu	t8,t8,16384
      prod >>= 15;
     9b8:	0018c3c3 	sra	t8,t8,0xf
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
     9bc:	0018c400 	sll	t8,t8,0x10
     9c0:	0018c403 	sra	t8,t8,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     9c4:	03021021 	addu	v0,t8,v0
  return saturate (sum);
     9c8:	0049202a 	slt	a0,v0,t1
     9cc:	14800002 	bnez	a0,9d8 <Reflection_coefficients+0x184>
     9d0:	018a2023 	subu	a0,t4,t2
     9d4:	24027fff 	addiu	v0,zero,32767
      P[0] = GSM_ADD (P[0], temp);

      for (m = 1; m <= 8 - n; m++)
     9d8:	1880002b 	blez	a0,a88 <Reflection_coefficients+0x234>
     9dc:	a7a20024 	sh	v0,36(sp)
     9e0:	27a40028 	addiu	a0,sp,40
     9e4:	01601021 	addu	v0,t3,zero
	{
	  temp = GSM_MULT_R (K[m], *r);
     9e8:	84460002 	lh	a2,2(v0)

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
     9ec:	1067003f 	beq	v1,a3,aec <Reflection_coefficients+0x298>
     9f0:	00c30018 	mult	a2,v1
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
     9f4:	00007812 	mflo	t7
     9f8:	25ef4000 	addiu	t7,t7,16384
      prod >>= 15;
     9fc:	000f7bc3 	sra	t7,t7,0xf
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
     a00:	000f7c00 	sll	t7,t7,0x10
     a04:	000f7c03 	sra	t7,t7,0x10
	  P[m] = GSM_ADD (P[m + 1], temp);
     a08:	848e0000 	lh	t6,0(a0)
     a0c:	00000000 	sll	zero,zero,0x0

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     a10:	01ee7821 	addu	t7,t7,t6
  return saturate (sum);
     a14:	29f88000 	slti	t8,t7,-32768
     a18:	17000028 	bnez	t8,abc <Reflection_coefficients+0x268>
     a1c:	01e9c02a 	slt	t8,t7,t1
     a20:	17000003 	bnez	t8,a30 <Reflection_coefficients+0x1dc>
     a24:	000f7c00 	sll	t7,t7,0x10
     a28:	240f7fff 	addiu	t7,zero,32767
     a2c:	000f7c00 	sll	t7,t7,0x10
     a30:	000f7c03 	sra	t7,t7,0x10

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
     a34:	10670024 	beq	v1,a3,ac8 <Reflection_coefficients+0x274>
     a38:	a48ffffe 	sh	t7,-2(a0)
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
     a3c:	01c30018 	mult	t6,v1
     a40:	00007012 	mflo	t6
     a44:	25ce4000 	addiu	t6,t6,16384
      prod >>= 15;
     a48:	000e73c3 	sra	t6,t6,0xf
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
     a4c:	000e7400 	sll	t6,t6,0x10
     a50:	000e7403 	sra	t6,t6,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     a54:	01c63021 	addu	a2,t6,a2
  return saturate (sum);
     a58:	28ce8000 	slti	t6,a2,-32768
     a5c:	15c00021 	bnez	t6,ae4 <Reflection_coefficients+0x290>
     a60:	00c9702a 	slt	t6,a2,t1
     a64:	15c00003 	bnez	t6,a74 <Reflection_coefficients+0x220>
     a68:	00063400 	sll	a2,a2,0x10
     a6c:	24067fff 	addiu	a2,zero,32767
     a70:	00063400 	sll	a2,a2,0x10
     a74:	00063403 	sra	a2,a2,0x10

	  temp = GSM_MULT_R (P[m + 1], *r);
	  K[m] = GSM_ADD (K[m], temp);
     a78:	a4460002 	sh	a2,2(v0)
     a7c:	24420002 	addiu	v0,v0,2
      /*  Schur recursion
       */
      temp = GSM_MULT_R (P[1], *r);
      P[0] = GSM_ADD (P[0], temp);

      for (m = 1; m <= 8 - n; m++)
     a80:	1502ffd9 	bne	t0,v0,9e8 <Reflection_coefficients+0x194>
     a84:	24840002 	addiu	a0,a0,2
  for (i = 0; i <= 8; i++)
    P[i] = ACF[i];

  /*   Compute reflection coefficients
   */
  for (n = 1; n <= 8; n++, r++)
     a88:	254a0001 	addiu	t2,t2,1
     a8c:	114dff7d 	beq	t2,t5,884 <Reflection_coefficients+0x30>
     a90:	2508fffe 	addiu	t0,t0,-2
    {

      temp = P[1];
     a94:	87b80026 	lh	t8,38(sp)
     a98:	00000000 	sll	zero,zero,0x0
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
     a9c:	0701ffa5 	bgez	t8,934 <Reflection_coefficients+0xe0>
     aa0:	24a50002 	addiu	a1,a1,2
     aa4:	13070019 	beq	t8,a3,b0c <Reflection_coefficients+0x2b8>
     aa8:	00000000 	sll	zero,zero,0x0
     aac:	00181823 	negu	v1,t8
     ab0:	00031c00 	sll	v1,v1,0x10
     ab4:	0800024e 	j	938 <Reflection_coefficients+0xe4>
     ab8:	00031c03 	sra	v1,v1,0x10
word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
  return saturate (sum);
     abc:	240f8000 	addiu	t7,zero,-32768

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
     ac0:	1467ffde 	bne	v1,a3,a3c <Reflection_coefficients+0x1e8>
     ac4:	a48ffffe 	sh	t7,-2(a0)
     ac8:	15c3ffdd 	bne	t6,v1,a40 <Reflection_coefficients+0x1ec>
     acc:	01c30018 	mult	t6,v1
     ad0:	240e7fff 	addiu	t6,zero,32767

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     ad4:	01c63021 	addu	a2,t6,a2
  return saturate (sum);
     ad8:	28ce8000 	slti	t6,a2,-32768
     adc:	11c0ffe1 	beqz	t6,a64 <Reflection_coefficients+0x210>
     ae0:	00c9702a 	slt	t6,a2,t1
     ae4:	0800029e 	j	a78 <Reflection_coefficients+0x224>
     ae8:	24068000 	addiu	a2,zero,-32768

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
     aec:	14c3ffc1 	bne	a2,v1,9f4 <Reflection_coefficients+0x1a0>
     af0:	00000000 	sll	zero,zero,0x0
     af4:	08000282 	j	a08 <Reflection_coefficients+0x1b4>
     af8:	240f7fff 	addiu	t7,zero,32767
     afc:	1707ffac 	bne	t8,a3,9b0 <Reflection_coefficients+0x15c>
     b00:	00000000 	sll	zero,zero,0x0
     b04:	08000271 	j	9c4 <Reflection_coefficients+0x170>
     b08:	24187fff 	addiu	t8,zero,32767
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
     b0c:	0800024e 	j	938 <Reflection_coefficients+0xe4>
     b10:	24037fff 	addiu	v1,zero,32767
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
     b14:	29420009 	slti	v0,t2,9
     b18:	1040ff5a 	beqz	v0,884 <Reflection_coefficients+0x30>
     b1c:	00000000 	sll	zero,zero,0x0
     b20:	24020009 	addiu	v0,zero,9
     b24:	254a0001 	addiu	t2,t2,1
	    *r++ = 0;
     b28:	a4a00000 	sh	zero,0(a1)

      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
     b2c:	1542fffd 	bne	t2,v0,b24 <Reflection_coefficients+0x2d0>
     b30:	24a50002 	addiu	a1,a1,2
     b34:	08000221 	j	884 <Reflection_coefficients+0x30>
     b38:	00000000 	sll	zero,zero,0x0

00000b3c <Transformation_to_Log_Area_Ratios>:
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
     b3c:	84820000 	lh	v0,0(a0)
  register int i;


  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
     b40:	24050001 	addiu	a1,zero,1
     b44:	24088000 	addiu	t0,zero,-32768
     b48:	04400010 	bltz	v0,b8c <Transformation_to_Log_Area_Ratios+0x50>
     b4c:	24070009 	addiu	a3,zero,9
     b50:	00401821 	addu	v1,v0,zero
    {

      temp = *r;
      temp = GSM_ABS (temp);

      if (temp < 22118)
     b54:	28665666 	slti	a2,v1,22118
     b58:	10c00014 	beqz	a2,bac <Transformation_to_Log_Area_Ratios+0x70>
     b5c:	2866799a 	slti	a2,v1,31130
	{
	  temp >>= 1;
     b60:	00031843 	sra	v1,v1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
     b64:	04400017 	bltz	v0,bc4 <Transformation_to_Log_Area_Ratios+0x88>
     b68:	00000000 	sll	zero,zero,0x0
  register int i;


  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
     b6c:	24a50001 	addiu	a1,a1,1
     b70:	10a7001a 	beq	a1,a3,bdc <Transformation_to_Log_Area_Ratios+0xa0>
     b74:	a4830000 	sh	v1,0(a0)
     b78:	24840002 	addiu	a0,a0,2
    {

      temp = *r;
     b7c:	84820000 	lh	v0,0(a0)
     b80:	00000000 	sll	zero,zero,0x0
     b84:	0441fff3 	bgez	v0,b54 <Transformation_to_Log_Area_Ratios+0x18>
     b88:	00401821 	addu	v1,v0,zero
     b8c:	1048fff5 	beq	v0,t0,b64 <Transformation_to_Log_Area_Ratios+0x28>
     b90:	240367fc 	addiu	v1,zero,26620
     b94:	00021823 	negu	v1,v0
     b98:	00031c00 	sll	v1,v1,0x10
     b9c:	00031c03 	sra	v1,v1,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
     ba0:	28665666 	slti	a2,v1,22118
     ba4:	14c0ffee 	bnez	a2,b60 <Transformation_to_Log_Area_Ratios+0x24>
     ba8:	2866799a 	slti	a2,v1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
     bac:	10c0000d 	beqz	a2,be4 <Transformation_to_Log_Area_Ratios+0xa8>
     bb0:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
     bb4:	2463d4cd 	addiu	v1,v1,-11059
     bb8:	00031c00 	sll	v1,v1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
     bbc:	0441ffeb 	bgez	v0,b6c <Transformation_to_Log_Area_Ratios+0x30>
     bc0:	00031c03 	sra	v1,v1,0x10
     bc4:	00031823 	negu	v1,v1
     bc8:	00031c00 	sll	v1,v1,0x10
     bcc:	00031c03 	sra	v1,v1,0x10
  register int i;


  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
     bd0:	24a50001 	addiu	a1,a1,1
     bd4:	14a7ffe8 	bne	a1,a3,b78 <Transformation_to_Log_Area_Ratios+0x3c>
     bd8:	a4830000 	sh	v1,0(a0)
     bdc:	03e00008 	jr	ra
     be0:	00000000 	sll	zero,zero,0x0

      if (temp < 22118)
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
     be4:	24639a00 	addiu	v1,v1,-26112
     be8:	00031c00 	sll	v1,v1,0x10
     bec:	00031c03 	sra	v1,v1,0x10
     bf0:	00031880 	sll	v1,v1,0x2
     bf4:	00031c00 	sll	v1,v1,0x10
     bf8:	080002d9 	j	b64 <Transformation_to_Log_Area_Ratios+0x28>
     bfc:	00031c03 	sra	v1,v1,0x10

00000c00 <Quantization_and_coding>:
		temp = GSM_ADD(  temp, 256 );	\
		temp = SASR(     temp,   9 );	\
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
     c00:	84830000 	lh	v1,0(a0)
     c04:	00000000 	sll	zero,zero,0x0
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
     c08:	00031300 	sll	v0,v1,0xc
     c0c:	00031b80 	sll	v1,v1,0xe
     c10:	00431021 	addu	v0,v0,v1
     c14:	000213c3 	sra	v0,v0,0xf

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     c18:	24420100 	addiu	v0,v0,256
  return saturate (sum);
     c1c:	34038000 	ori	v1,zero,0x8000
     c20:	0043182a 	slt	v1,v0,v1
     c24:	14600003 	bnez	v1,c34 <Quantization_and_coding+0x34>
     c28:	00021400 	sll	v0,v0,0x10
     c2c:	24027fff 	addiu	v0,zero,32767
     c30:	00021400 	sll	v0,v0,0x10
     c34:	00021403 	sra	v0,v0,0x10
     c38:	00021243 	sra	v0,v0,0x9
     c3c:	28430020 	slti	v1,v0,32
     c40:	146000f7 	bnez	v1,1020 <Quantization_and_coding+0x420>
     c44:	2405003f 	addiu	a1,zero,63
  STEP (20480, 0, 31, -32);
     c48:	84830002 	lh	v1,2(a0)
     c4c:	34068000 	ori	a2,zero,0x8000
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
     c50:	00031300 	sll	v0,v1,0xc
     c54:	00031b80 	sll	v1,v1,0xe
     c58:	00431021 	addu	v0,v0,v1
     c5c:	000213c3 	sra	v0,v0,0xf

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     c60:	24420100 	addiu	v0,v0,256
  return saturate (sum);
     c64:	0046302a 	slt	a2,v0,a2
		temp = GSM_ADD(  temp, 256 );	\
		temp = SASR(     temp,   9 );	\
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
     c68:	a4850000 	sh	a1,0(a0)
     c6c:	14c00002 	bnez	a2,c78 <Quantization_and_coding+0x78>
     c70:	24830002 	addiu	v1,a0,2
     c74:	24027fff 	addiu	v0,zero,32767
     c78:	00021400 	sll	v0,v0,0x10
     c7c:	00021403 	sra	v0,v0,0x10
  STEP (20480, 0, 31, -32);
     c80:	00021243 	sra	v0,v0,0x9
     c84:	28450020 	slti	a1,v0,32
     c88:	14a000df 	bnez	a1,1008 <Quantization_and_coding+0x408>
     c8c:	2845ffe0 	slti	a1,v0,-32
     c90:	2402003f 	addiu	v0,zero,63
     c94:	a4820002 	sh	v0,2(a0)
  STEP (20480, 2048, 15, -16);
     c98:	84620002 	lh	v0,2(v1)
     c9c:	34058000 	ori	a1,zero,0x8000
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
     ca0:	00022300 	sll	a0,v0,0xc
     ca4:	00021380 	sll	v0,v0,0xe
     ca8:	00822021 	addu	a0,a0,v0
     cac:	000423c3 	sra	a0,a0,0xf

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     cb0:	24840800 	addiu	a0,a0,2048
  return saturate (sum);
     cb4:	0085282a 	slt	a1,a0,a1
     cb8:	14a00002 	bnez	a1,cc4 <Quantization_and_coding+0xc4>
     cbc:	24620002 	addiu	v0,v1,2
     cc0:	24047fff 	addiu	a0,zero,32767
     cc4:	00042400 	sll	a0,a0,0x10
     cc8:	00042403 	sra	a0,a0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     ccc:	24840100 	addiu	a0,a0,256
  return saturate (sum);
     cd0:	34058000 	ori	a1,zero,0x8000
     cd4:	0085282a 	slt	a1,a0,a1
     cd8:	14a00003 	bnez	a1,ce8 <Quantization_and_coding+0xe8>
     cdc:	00042400 	sll	a0,a0,0x10
     ce0:	24047fff 	addiu	a0,zero,32767
     ce4:	00042400 	sll	a0,a0,0x10
     ce8:	00042403 	sra	a0,a0,0x10
     cec:	00042243 	sra	a0,a0,0x9
     cf0:	28850010 	slti	a1,a0,16
     cf4:	14a000be 	bnez	a1,ff0 <Quantization_and_coding+0x3f0>
     cf8:	2885fff0 	slti	a1,a0,-16
     cfc:	2404001f 	addiu	a0,zero,31
     d00:	a4640002 	sh	a0,2(v1)
  STEP (20480, -2560, 15, -16);
     d04:	84440002 	lh	a0,2(v0)
     d08:	34058000 	ori	a1,zero,0x8000
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
     d0c:	00041b00 	sll	v1,a0,0xc
     d10:	00042380 	sll	a0,a0,0xe
     d14:	00641821 	addu	v1,v1,a0
     d18:	00031bc3 	sra	v1,v1,0xf

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     d1c:	2463f600 	addiu	v1,v1,-2560
  return saturate (sum);
     d20:	0065282a 	slt	a1,v1,a1
     d24:	14a00002 	bnez	a1,d30 <Quantization_and_coding+0x130>
     d28:	24440002 	addiu	a0,v0,2
     d2c:	24037fff 	addiu	v1,zero,32767
     d30:	00031c00 	sll	v1,v1,0x10
     d34:	00031c03 	sra	v1,v1,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     d38:	24630100 	addiu	v1,v1,256
  return saturate (sum);
     d3c:	34058000 	ori	a1,zero,0x8000
     d40:	0065282a 	slt	a1,v1,a1
     d44:	14a00003 	bnez	a1,d54 <Quantization_and_coding+0x154>
     d48:	00031c00 	sll	v1,v1,0x10
     d4c:	24037fff 	addiu	v1,zero,32767
     d50:	00031c00 	sll	v1,v1,0x10
     d54:	00031c03 	sra	v1,v1,0x10
     d58:	00031a43 	sra	v1,v1,0x9
     d5c:	28650010 	slti	a1,v1,16
     d60:	14a0009d 	bnez	a1,fd8 <Quantization_and_coding+0x3d8>
     d64:	2865fff0 	slti	a1,v1,-16
     d68:	2403001f 	addiu	v1,zero,31
     d6c:	a4430002 	sh	v1,2(v0)

  STEP (13964, 94, 7, -8);
     d70:	84820002 	lh	v0,2(a0)
     d74:	00000000 	sll	zero,zero,0x0
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
     d78:	000229c0 	sll	a1,v0,0x7
     d7c:	00021940 	sll	v1,v0,0x5
     d80:	00a31823 	subu	v1,a1,v1
     d84:	00621821 	addu	v1,v1,v0
     d88:	000328c0 	sll	a1,v1,0x3
     d8c:	00651821 	addu	v1,v1,a1
     d90:	00031880 	sll	v1,v1,0x2
     d94:	00621023 	subu	v0,v1,v0
     d98:	000210c0 	sll	v0,v0,0x3
     d9c:	00021403 	sra	v0,v0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     da0:	2442005e 	addiu	v0,v0,94
  return saturate (sum);
     da4:	34058000 	ori	a1,zero,0x8000
     da8:	0045282a 	slt	a1,v0,a1
     dac:	14a00002 	bnez	a1,db8 <Quantization_and_coding+0x1b8>
     db0:	24830002 	addiu	v1,a0,2
     db4:	24027fff 	addiu	v0,zero,32767
     db8:	00021400 	sll	v0,v0,0x10
     dbc:	00021403 	sra	v0,v0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     dc0:	24420100 	addiu	v0,v0,256
  return saturate (sum);
     dc4:	34058000 	ori	a1,zero,0x8000
     dc8:	0045282a 	slt	a1,v0,a1
     dcc:	14a00003 	bnez	a1,ddc <Quantization_and_coding+0x1dc>
     dd0:	00021400 	sll	v0,v0,0x10
     dd4:	24027fff 	addiu	v0,zero,32767
     dd8:	00021400 	sll	v0,v0,0x10
     ddc:	00021403 	sra	v0,v0,0x10
     de0:	00021243 	sra	v0,v0,0x9
     de4:	28450008 	slti	a1,v0,8
     de8:	14a00075 	bnez	a1,fc0 <Quantization_and_coding+0x3c0>
     dec:	2845fff8 	slti	a1,v0,-8
     df0:	2402000f 	addiu	v0,zero,15
     df4:	a4820002 	sh	v0,2(a0)
  STEP (15360, -1792, 7, -8);
     df8:	84620002 	lh	v0,2(v1)
     dfc:	00000000 	sll	zero,zero,0x0
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
     e00:	00022a80 	sll	a1,v0,0xa
     e04:	00022380 	sll	a0,v0,0xe
     e08:	00852023 	subu	a0,a0,a1
     e0c:	000423c3 	sra	a0,a0,0xf

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     e10:	2484f900 	addiu	a0,a0,-1792
  return saturate (sum);
     e14:	34058000 	ori	a1,zero,0x8000
     e18:	0085282a 	slt	a1,a0,a1
     e1c:	14a00002 	bnez	a1,e28 <Quantization_and_coding+0x228>
     e20:	24620002 	addiu	v0,v1,2
     e24:	24047fff 	addiu	a0,zero,32767
     e28:	00042400 	sll	a0,a0,0x10
     e2c:	00042403 	sra	a0,a0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     e30:	24840100 	addiu	a0,a0,256
  return saturate (sum);
     e34:	34058000 	ori	a1,zero,0x8000
     e38:	0085282a 	slt	a1,a0,a1
     e3c:	14a00003 	bnez	a1,e4c <Quantization_and_coding+0x24c>
     e40:	00042400 	sll	a0,a0,0x10
     e44:	24047fff 	addiu	a0,zero,32767
     e48:	00042400 	sll	a0,a0,0x10
     e4c:	00042403 	sra	a0,a0,0x10
     e50:	00042243 	sra	a0,a0,0x9
     e54:	28850008 	slti	a1,a0,8
     e58:	14a00053 	bnez	a1,fa8 <Quantization_and_coding+0x3a8>
     e5c:	2885fff8 	slti	a1,a0,-8
     e60:	2404000f 	addiu	a0,zero,15
     e64:	a4640002 	sh	a0,2(v1)
  STEP (8534, -341, 3, -4);
     e68:	84430002 	lh	v1,2(v0)
     e6c:	00000000 	sll	zero,zero,0x0
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
     e70:	00032a00 	sll	a1,v1,0x8
     e74:	00032080 	sll	a0,v1,0x2
     e78:	00a42023 	subu	a0,a1,a0
     e7c:	00831823 	subu	v1,a0,v1
     e80:	00032100 	sll	a0,v1,0x4
     e84:	00641821 	addu	v1,v1,a0
     e88:	00031b83 	sra	v1,v1,0xe
     e8c:	00031c00 	sll	v1,v1,0x10
     e90:	00031c03 	sra	v1,v1,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     e94:	2463feab 	addiu	v1,v1,-341
  return saturate (sum);
     e98:	34058000 	ori	a1,zero,0x8000
     e9c:	0065282a 	slt	a1,v1,a1
     ea0:	14a00002 	bnez	a1,eac <Quantization_and_coding+0x2ac>
     ea4:	24440002 	addiu	a0,v0,2
     ea8:	24037fff 	addiu	v1,zero,32767
     eac:	00031c00 	sll	v1,v1,0x10
     eb0:	00031c03 	sra	v1,v1,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     eb4:	24630100 	addiu	v1,v1,256
  return saturate (sum);
     eb8:	34058000 	ori	a1,zero,0x8000
     ebc:	0065282a 	slt	a1,v1,a1
     ec0:	14a00003 	bnez	a1,ed0 <Quantization_and_coding+0x2d0>
     ec4:	00031c00 	sll	v1,v1,0x10
     ec8:	24037fff 	addiu	v1,zero,32767
     ecc:	00031c00 	sll	v1,v1,0x10
     ed0:	00031c03 	sra	v1,v1,0x10
     ed4:	00031a43 	sra	v1,v1,0x9
     ed8:	28650004 	slti	a1,v1,4
     edc:	14a0002c 	bnez	a1,f90 <Quantization_and_coding+0x390>
     ee0:	2865fffc 	slti	a1,v1,-4
     ee4:	24030007 	addiu	v1,zero,7
     ee8:	a4430002 	sh	v1,2(v0)
  STEP (9036, -1144, 3, -4);
     eec:	84820002 	lh	v0,2(a0)
     ef0:	00000000 	sll	zero,zero,0x0
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
     ef4:	00021880 	sll	v1,v0,0x2
     ef8:	00022a00 	sll	a1,v0,0x8
     efc:	00a31823 	subu	v1,a1,v1
     f00:	00621023 	subu	v0,v1,v0
     f04:	000218c0 	sll	v1,v0,0x3
     f08:	00431021 	addu	v0,v0,v1
     f0c:	00021343 	sra	v0,v0,0xd
     f10:	00021400 	sll	v0,v0,0x10
     f14:	00021403 	sra	v0,v0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     f18:	2442fb88 	addiu	v0,v0,-1144
  return saturate (sum);
     f1c:	34038000 	ori	v1,zero,0x8000
     f20:	0043182a 	slt	v1,v0,v1
     f24:	14600003 	bnez	v1,f34 <Quantization_and_coding+0x334>
     f28:	00021400 	sll	v0,v0,0x10
     f2c:	24027fff 	addiu	v0,zero,32767
     f30:	00021400 	sll	v0,v0,0x10
     f34:	00021403 	sra	v0,v0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     f38:	24420100 	addiu	v0,v0,256
  return saturate (sum);
     f3c:	34038000 	ori	v1,zero,0x8000
     f40:	0043182a 	slt	v1,v0,v1
     f44:	14600003 	bnez	v1,f54 <Quantization_and_coding+0x354>
     f48:	00021400 	sll	v0,v0,0x10
     f4c:	24027fff 	addiu	v0,zero,32767
     f50:	00021400 	sll	v0,v0,0x10
     f54:	00021403 	sra	v0,v0,0x10
     f58:	00021243 	sra	v0,v0,0x9
     f5c:	28430004 	slti	v1,v0,4
     f60:	14600004 	bnez	v1,f74 <Quantization_and_coding+0x374>
     f64:	00000000 	sll	zero,zero,0x0
     f68:	24020007 	addiu	v0,zero,7

#	undef	STEP
}
     f6c:	03e00008 	jr	ra
     f70:	a4820002 	sh	v0,2(a0)
  STEP (20480, -2560, 15, -16);

  STEP (13964, 94, 7, -8);
  STEP (15360, -1792, 7, -8);
  STEP (8534, -341, 3, -4);
  STEP (9036, -1144, 3, -4);
     f74:	2843fffc 	slti	v1,v0,-4
     f78:	1460002f 	bnez	v1,1038 <Quantization_and_coding+0x438>
     f7c:	24420004 	addiu	v0,v0,4
     f80:	00021400 	sll	v0,v0,0x10
     f84:	00021403 	sra	v0,v0,0x10

#	undef	STEP
}
     f88:	03e00008 	jr	ra
     f8c:	a4820002 	sh	v0,2(a0)
  STEP (20480, 2048, 15, -16);
  STEP (20480, -2560, 15, -16);

  STEP (13964, 94, 7, -8);
  STEP (15360, -1792, 7, -8);
  STEP (8534, -341, 3, -4);
     f90:	14a00038 	bnez	a1,1074 <Quantization_and_coding+0x474>
     f94:	00000000 	sll	zero,zero,0x0
     f98:	24630004 	addiu	v1,v1,4
     f9c:	00031c00 	sll	v1,v1,0x10
     fa0:	080003ba 	j	ee8 <Quantization_and_coding+0x2e8>
     fa4:	00031c03 	sra	v1,v1,0x10
  STEP (20480, 0, 31, -32);
  STEP (20480, 2048, 15, -16);
  STEP (20480, -2560, 15, -16);

  STEP (13964, 94, 7, -8);
  STEP (15360, -1792, 7, -8);
     fa8:	14a00030 	bnez	a1,106c <Quantization_and_coding+0x46c>
     fac:	00000000 	sll	zero,zero,0x0
     fb0:	24840008 	addiu	a0,a0,8
     fb4:	00042400 	sll	a0,a0,0x10
     fb8:	08000399 	j	e64 <Quantization_and_coding+0x264>
     fbc:	00042403 	sra	a0,a0,0x10
  STEP (20480, 0, 31, -32);
  STEP (20480, 0, 31, -32);
  STEP (20480, 2048, 15, -16);
  STEP (20480, -2560, 15, -16);

  STEP (13964, 94, 7, -8);
     fc0:	14a00028 	bnez	a1,1064 <Quantization_and_coding+0x464>
     fc4:	00000000 	sll	zero,zero,0x0
     fc8:	24420008 	addiu	v0,v0,8
     fcc:	00021400 	sll	v0,v0,0x10
     fd0:	0800037d 	j	df4 <Quantization_and_coding+0x1f4>
     fd4:	00021403 	sra	v0,v0,0x10
		LAR++;

  STEP (20480, 0, 31, -32);
  STEP (20480, 0, 31, -32);
  STEP (20480, 2048, 15, -16);
  STEP (20480, -2560, 15, -16);
     fd8:	14a00020 	bnez	a1,105c <Quantization_and_coding+0x45c>
     fdc:	00000000 	sll	zero,zero,0x0
     fe0:	24630010 	addiu	v1,v1,16
     fe4:	00031c00 	sll	v1,v1,0x10
     fe8:	0800035b 	j	d6c <Quantization_and_coding+0x16c>
     fec:	00031c03 	sra	v1,v1,0x10
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
  STEP (20480, 0, 31, -32);
  STEP (20480, 2048, 15, -16);
     ff0:	14a00018 	bnez	a1,1054 <Quantization_and_coding+0x454>
     ff4:	00000000 	sll	zero,zero,0x0
     ff8:	24840010 	addiu	a0,a0,16
     ffc:	00042400 	sll	a0,a0,0x10
    1000:	08000340 	j	d00 <Quantization_and_coding+0x100>
    1004:	00042403 	sra	a0,a0,0x10
		temp = SASR(     temp,   9 );	\
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
  STEP (20480, 0, 31, -32);
    1008:	14a00010 	bnez	a1,104c <Quantization_and_coding+0x44c>
    100c:	00000000 	sll	zero,zero,0x0
    1010:	24420020 	addiu	v0,v0,32
    1014:	00021400 	sll	v0,v0,0x10
    1018:	08000325 	j	c94 <Quantization_and_coding+0x94>
    101c:	00021403 	sra	v0,v0,0x10
		temp = GSM_ADD(  temp, 256 );	\
		temp = SASR(     temp,   9 );	\
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
    1020:	2843ffe0 	slti	v1,v0,-32
    1024:	14600007 	bnez	v1,1044 <Quantization_and_coding+0x444>
    1028:	24420020 	addiu	v0,v0,32
    102c:	00022c00 	sll	a1,v0,0x10
    1030:	08000312 	j	c48 <Quantization_and_coding+0x48>
    1034:	00052c03 	sra	a1,a1,0x10
  STEP (20480, -2560, 15, -16);

  STEP (13964, 94, 7, -8);
  STEP (15360, -1792, 7, -8);
  STEP (8534, -341, 3, -4);
  STEP (9036, -1144, 3, -4);
    1038:	00001021 	addu	v0,zero,zero

#	undef	STEP
}
    103c:	03e00008 	jr	ra
    1040:	a4820002 	sh	v0,2(a0)
		temp = GSM_ADD(  temp, 256 );	\
		temp = SASR(     temp,   9 );	\
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
    1044:	08000312 	j	c48 <Quantization_and_coding+0x48>
    1048:	00002821 	addu	a1,zero,zero
  STEP (20480, 0, 31, -32);
    104c:	08000325 	j	c94 <Quantization_and_coding+0x94>
    1050:	00001021 	addu	v0,zero,zero
  STEP (20480, 2048, 15, -16);
    1054:	08000340 	j	d00 <Quantization_and_coding+0x100>
    1058:	00002021 	addu	a0,zero,zero
  STEP (20480, -2560, 15, -16);
    105c:	0800035b 	j	d6c <Quantization_and_coding+0x16c>
    1060:	00001821 	addu	v1,zero,zero

  STEP (13964, 94, 7, -8);
    1064:	0800037d 	j	df4 <Quantization_and_coding+0x1f4>
    1068:	00001021 	addu	v0,zero,zero
  STEP (15360, -1792, 7, -8);
    106c:	08000399 	j	e64 <Quantization_and_coding+0x264>
    1070:	00002021 	addu	a0,zero,zero
  STEP (8534, -341, 3, -4);
    1074:	080003ba 	j	ee8 <Quantization_and_coding+0x2e8>
    1078:	00001821 	addu	v1,zero,zero

0000107c <Gsm_LPC_Analysis>:
}

void
Gsm_LPC_Analysis (word * s /* 0..159 signals       IN/OUT  */ ,
		  word * LARc /* 0..7   LARc's        OUT     */ )
{
    107c:	27bdffb8 	addiu	sp,sp,-72
    1080:	afb10040 	sw	s1,64(sp)
  longword L_ACF[9];

  Autocorrelation (s, L_ACF);
    1084:	27b10010 	addiu	s1,sp,16
}

void
Gsm_LPC_Analysis (word * s /* 0..159 signals       IN/OUT  */ ,
		  word * LARc /* 0..7   LARc's        OUT     */ )
{
    1088:	afb0003c 	sw	s0,60(sp)
    108c:	00a08021 	addu	s0,a1,zero
    1090:	afbf0044 	sw	ra,68(sp)
  longword L_ACF[9];

  Autocorrelation (s, L_ACF);
    1094:	0c000000 	jal	0 <gsm_add>
    1098:	02202821 	addu	a1,s1,zero
  Reflection_coefficients (L_ACF, LARc);
    109c:	02002821 	addu	a1,s0,zero
    10a0:	0c000000 	jal	0 <gsm_add>
    10a4:	02202021 	addu	a0,s1,zero
  Transformation_to_Log_Area_Ratios (LARc);
    10a8:	0c000000 	jal	0 <gsm_add>
    10ac:	02002021 	addu	a0,s0,zero
  Quantization_and_coding (LARc);
    10b0:	0c000000 	jal	0 <gsm_add>
    10b4:	02002021 	addu	a0,s0,zero
}
    10b8:	8fbf0044 	lw	ra,68(sp)
    10bc:	8fb10040 	lw	s1,64(sp)
    10c0:	8fb0003c 	lw	s0,60(sp)
    10c4:	03e00008 	jr	ra
    10c8:	27bd0048 	addiu	sp,sp,72

000010cc <main>:
const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
{
    10cc:	27bdfe90 	addiu	sp,sp,-368
    10d0:	3c060000 	lui	a2,0x0
    10d4:	afb10164 	sw	s1,356(sp)
    10d8:	afbf016c 	sw	ra,364(sp)
    10dc:	afb20168 	sw	s2,360(sp)
    10e0:	afb00160 	sw	s0,352(sp)
    10e4:	00001021 	addu	v0,zero,zero
    10e8:	27b10020 	addiu	s1,sp,32
    10ec:	24c60000 	addiu	a2,a2,0
  int main_result;
  word so[N];
  word LARc[M];
      main_result = 0;

      for (i = 0; i < N; i++)
    10f0:	24050140 	addiu	a1,zero,320

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
    10f4:	00c21821 	addu	v1,a2,v0
  word so[N];
  word LARc[M];
      main_result = 0;

      for (i = 0; i < N; i++)
	so[i] = inData[i];
    10f8:	94640000 	lhu	a0,0(v1)

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
    10fc:	02221821 	addu	v1,s1,v0
  word so[N];
  word LARc[M];
      main_result = 0;

      for (i = 0; i < N; i++)
	so[i] = inData[i];
    1100:	24420002 	addiu	v0,v0,2
  int main_result;
  word so[N];
  word LARc[M];
      main_result = 0;

      for (i = 0; i < N; i++)
    1104:	1445fffb 	bne	v0,a1,10f4 <main+0x28>
    1108:	a4640000 	sh	a0,0(v1)
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);
    110c:	27b20010 	addiu	s2,sp,16
    1110:	02402821 	addu	a1,s2,zero
    1114:	0c000000 	jal	0 <gsm_add>
    1118:	02202021 	addu	a0,s1,zero
    111c:	3c060000 	lui	a2,0x0
    1120:	00001021 	addu	v0,zero,zero
{
  int i;
  int main_result;
  word so[N];
  word LARc[M];
      main_result = 0;
    1124:	00008021 	addu	s0,zero,zero
    1128:	24c60000 	addiu	a2,a2,0
      for (i = 0; i < N; i++)
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
    112c:	24050140 	addiu	a1,zero,320

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
    1130:	02222021 	addu	a0,s1,v0
    1134:	00c21821 	addu	v1,a2,v0
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
	main_result += (so[i] != outData[i]);
    1138:	84840000 	lh	a0,0(a0)
    113c:	84630000 	lh	v1,0(v1)
    1140:	24420002 	addiu	v0,v0,2
    1144:	00831826 	xor	v1,a0,v1
    1148:	0003182b 	sltu	v1,zero,v1
      for (i = 0; i < N; i++)
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
    114c:	1445fff8 	bne	v0,a1,1130 <main+0x64>
    1150:	02038021 	addu	s0,s0,v1
    1154:	3c060000 	lui	a2,0x0
    1158:	00001021 	addu	v0,zero,zero
    115c:	24c60000 	addiu	a2,a2,0
	main_result += (so[i] != outData[i]);
      for (i = 0; i < M; i++)
    1160:	24050010 	addiu	a1,zero,16

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
    1164:	02422021 	addu	a0,s2,v0
    1168:	00c21821 	addu	v1,a2,v0
      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
	main_result += (so[i] != outData[i]);
      for (i = 0; i < M; i++)
	main_result += (LARc[i] != outLARc[i]);
    116c:	84840000 	lh	a0,0(a0)
    1170:	84630000 	lh	v1,0(v1)
    1174:	24420002 	addiu	v0,v0,2
    1178:	00831826 	xor	v1,a0,v1
    117c:	0003182b 	sltu	v1,zero,v1

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
	main_result += (so[i] != outData[i]);
      for (i = 0; i < M; i++)
    1180:	1445fff8 	bne	v0,a1,1164 <main+0x98>
    1184:	02038021 	addu	s0,s0,v1
	main_result += (LARc[i] != outLARc[i]);

      printf ("%d\n", main_result);
    1188:	3c040000 	lui	a0,0x0
    118c:	02002821 	addu	a1,s0,zero
    1190:	0c000000 	jal	0 <gsm_add>
    1194:	24840000 	addiu	a0,a0,0
      return main_result;
    }
    1198:	8fbf016c 	lw	ra,364(sp)
    119c:	02001021 	addu	v0,s0,zero
    11a0:	8fb20168 	lw	s2,360(sp)
    11a4:	8fb10164 	lw	s1,356(sp)
    11a8:	8fb00160 	lw	s0,352(sp)
    11ac:	03e00008 	jr	ra
    11b0:	27bd0170 	addiu	sp,sp,368

Disassembly of section .rodata:

00000000 <bitoff>:
   0:	08070606 	j	1c1818 <main+0x1c074c>
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
 124:	0eebc06f 	jal	baf01bc <main+0xbaef0f0>
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
 15c:	0e1f5673 	jal	87d59cc <main+0x87d4900>
 160:	ea3cb172 	swc2	$28,-20110(s1)
 164:	306323d9 	andi	v1,v1,0x23d9
 168:	a02030c0 	sb	zero,12480(at)
 16c:	542aba4e 	0x542aba4e
 170:	cab34f35 	lwc2	$19,20277(s5)
 174:	270344f4 	addiu	v1,t8,17652
 178:	d338bc52 	0xd338bc52
 17c:	d6c89624 	0xd6c89624
 180:	00cf6bdc 	0xcf6bdc
 184:	09d51bff 	j	7546ffc <main+0x7545f30>
 188:	8bdaa857 	lwl	k0,-22441(s8)
 18c:	7557f6c0 	jalx	55fdb00 <main+0x55fca34>
 190:	320d012c 	andi	t5,s0,0x12c
 194:	9c2d237f 	0x9c2d237f
 198:	715ee661 	0x715ee661
 19c:	b0a9c7f5 	0xb0a9c7f5
 1a0:	e27dab33 	swc0	$29,-21709(s3)
 1a4:	f1a48a7e 	0xf1a48a7e
 1a8:	f38a86fd 	0xf38a86fd
 1ac:	218469f6 	addi	a0,t4,27126
 1b0:	0d56ee05 	jal	55bb814 <main+0x55ba748>
 1b4:	a8e1bd09 	swl	at,-17143(a3)
 1b8:	35dcfbb8 	ori	gp,t6,0xfbb8
 1bc:	c6e75637 	lwc1	$f7,22071(s7)
 1c0:	cb107f86 	lwc2	$16,32646(t8)
 1c4:	4131dee7 	0x4131dee7
 1c8:	ce432907 	lwc3	$3,10503(s2)
 1cc:	51091a28 	0x51091a28
 1d0:	972686d9 	lhu	a2,-31015(t9)
 1d4:	0ed0b268 	jal	b42c9a0 <main+0xb42b8d4>
 1d8:	b031899d 	0xb031899d
 1dc:	7ea5cc4b 	0x7ea5cc4b
 1e0:	232e4749 	addi	t6,t9,18249
 1e4:	0963e0c4 	j	58f8310 <main+0x58f7244>
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
 224:	0c6972e4 	jal	1a5cb90 <main+0x1a5bac4>
 228:	b100f528 	0xb100f528
 22c:	5e14e0e5 	0x5e14e0e5
 230:	d73ad15e 	0xd73ad15e
 234:	c60fe5fe 	lwc1	$f15,-6658(s0)
 238:	7d3a0fb4 	0x7d3a0fb4
 23c:	28dd3b37 	slti	sp,a2,15159

00000240 <outData>:
 240:	00502a60 	0x502a60
 244:	0760d7d0 	bltz	k1,ffff6188 <main+0xffff50bc>
 248:	1dc07410 	bgtz	t6,1d28c <main+0x1c1c0>
 24c:	50008de0 	0x50008de0
 250:	b6008b90 	0xb6008b90
 254:	82f00640 	lb	s0,1600(s7)
 258:	3d80f3f0 	0x3d80f3f0
 25c:	bc00a990 	0xbc00a990
 260:	1a90cc20 	0x1a90cc20
 264:	0ef0c070 	jal	bc301c0 <main+0xbc2f0f4>
 268:	f9e0cf10 	0xf9e0cf10
 26c:	9620ff40 	lhu	zero,-192(s1)
 270:	9c101260 	0x9c101260
 274:	89203ba0 	lwl	zero,15264(t1)
 278:	fa902ca0 	0xfa902ca0
 27c:	2c701380 	sltiu	s0,v1,4992
 280:	1ec0f890 	bgtz	s6,ffffe4c4 <main+0xffffd3f8>
 284:	23a08410 	addi	zero,sp,-31728
 288:	9d70c8b0 	0x9d70c8b0
 28c:	46407eb0 	c1	0x407eb0
 290:	cf70c1c0 	lwc3	$16,-15936(k1)
 294:	ab901ee0 	swl	s0,7904(gp)
 298:	06a06dd0 	bltz	s5,1b9dc <main+0x1a910>
 29c:	0e205670 	jal	88159c0 <main+0x88148f4>
 2a0:	ea40b170 	swc2	$0,-20112(s2)
 2a4:	306023e0 	andi	zero,v1,0x23e0
 2a8:	a02030c0 	sb	zero,12480(at)
 2ac:	5430ba50 	0x5430ba50
 2b0:	cab04f30 	lwc2	$16,20272(s5)
 2b4:	270044f0 	addiu	zero,t8,17648
 2b8:	d340bc50 	0xd340bc50
 2bc:	d6d09620 	0xd6d09620
 2c0:	00d06be0 	0xd06be0
 2c4:	09d01c00 	j	7407000 <main+0x7405f34>
 2c8:	8be0a850 	lwl	zero,-22448(ra)
 2cc:	7550f6c0 	jalx	543db00 <main+0x543ca34>
 2d0:	32100130 	andi	s0,s0,0x130
 2d4:	9c302380 	0x9c302380
 2d8:	7160e660 	0x7160e660
 2dc:	b0b0c7f0 	0xb0b0c7f0
 2e0:	e280ab30 	swc0	$0,-21712(s4)
 2e4:	f1a08a80 	0xf1a08a80
 2e8:	f3908700 	0xf3908700
 2ec:	218069f0 	addi	zero,t4,27120
 2f0:	0d50ee00 	jal	543b800 <main+0x543a734>
 2f4:	a8e0bd10 	swl	zero,-17136(a3)
 2f8:	35e0fbc0 	ori	zero,t7,0xfbc0
 2fc:	c6e05630 	lwc1	$f0,22064(s7)
 300:	cb107f80 	lwc2	$16,32640(t8)
 304:	4130dee0 	0x4130dee0
 308:	ce402900 	lwc3	$0,10496(s2)
 30c:	51101a30 	0x51101a30
 310:	972086e0 	lhu	zero,-31008(t9)
 314:	0ed0b270 	jal	b42c9c0 <main+0xb42b8f4>
 318:	b03089a0 	0xb03089a0
 31c:	7ea0cc50 	0x7ea0cc50
 320:	23304750 	addi	s0,t9,18256
 324:	0960e0c0 	j	5838300 <main+0x5837234>
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
 360:	1ee009b0 	bgtz	s7,2a24 <main+0x1958>
 364:	0c7072e0 	jal	1c1cb80 <main+0x1c1bab4>
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
