
gsm.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <gsm_add>:
#define	saturate(x) 	\
	((x) < MIN_WORD ? MIN_WORD : (x) > MAX_WORD ? MAX_WORD: (x))

word
gsm_add (word a, word b)
{
       0:	27bdfff0 	addiu	sp,sp,-16
       4:	afbe000c 	sw	s8,12(sp)
       8:	03a0f021 	addu	s8,sp,zero
       c:	00801821 	addu	v1,a0,zero
      10:	00a01021 	addu	v0,a1,zero
      14:	a7c30010 	sh	v1,16(s8)
      18:	a7c20014 	sh	v0,20(s8)
  longword sum;
  sum = (longword) a + (longword) b;
      1c:	87c30010 	lh	v1,16(s8)
      20:	87c20014 	lh	v0,20(s8)
      24:	00000000 	sll	zero,zero,0x0
      28:	00621021 	addu	v0,v1,v0
      2c:	afc20000 	sw	v0,0(s8)
  return saturate (sum);
      30:	8fc20000 	lw	v0,0(s8)
      34:	00000000 	sll	zero,zero,0x0
      38:	28428000 	slti	v0,v0,-32768
      3c:	1440000b 	bnez	v0,6c <gsm_add+0x6c>
      40:	00000000 	sll	zero,zero,0x0
      44:	8fc20000 	lw	v0,0(s8)
      48:	34038000 	ori	v1,zero,0x8000
      4c:	0043182a 	slt	v1,v0,v1
      50:	14600002 	bnez	v1,5c <gsm_add+0x5c>
      54:	00000000 	sll	zero,zero,0x0
      58:	24027fff 	addiu	v0,zero,32767
      5c:	00021400 	sll	v0,v0,0x10
      60:	00021403 	sra	v0,v0,0x10
      64:	0800001c 	j	70 <gsm_add+0x70>
      68:	00000000 	sll	zero,zero,0x0
      6c:	24028000 	addiu	v0,zero,-32768
}
      70:	03c0e821 	addu	sp,s8,zero
      74:	8fbe000c 	lw	s8,12(sp)
      78:	27bd0010 	addiu	sp,sp,16
      7c:	03e00008 	jr	ra
      80:	00000000 	sll	zero,zero,0x0

00000084 <gsm_mult>:

word
gsm_mult (word a, word b)
{
      84:	27bdfff8 	addiu	sp,sp,-8
      88:	afbe0004 	sw	s8,4(sp)
      8c:	03a0f021 	addu	s8,sp,zero
      90:	00801821 	addu	v1,a0,zero
      94:	00a01021 	addu	v0,a1,zero
      98:	a7c30008 	sh	v1,8(s8)
      9c:	a7c2000c 	sh	v0,12(s8)
  if (a == MIN_WORD && b == MIN_WORD)
      a0:	87c30008 	lh	v1,8(s8)
      a4:	24028000 	addiu	v0,zero,-32768
      a8:	14620008 	bne	v1,v0,cc <gsm_mult+0x48>
      ac:	00000000 	sll	zero,zero,0x0
      b0:	87c3000c 	lh	v1,12(s8)
      b4:	24028000 	addiu	v0,zero,-32768
      b8:	14620004 	bne	v1,v0,cc <gsm_mult+0x48>
      bc:	00000000 	sll	zero,zero,0x0
    return MAX_WORD;
      c0:	24027fff 	addiu	v0,zero,32767
      c4:	0800003b 	j	ec <gsm_mult+0x68>
      c8:	00000000 	sll	zero,zero,0x0
  else
    return SASR ((longword) a * (longword) b, 15);
      cc:	87c30008 	lh	v1,8(s8)
      d0:	87c2000c 	lh	v0,12(s8)
      d4:	00000000 	sll	zero,zero,0x0
      d8:	00620018 	mult	v1,v0
      dc:	00001012 	mflo	v0
      e0:	000213c3 	sra	v0,v0,0xf
      e4:	00021400 	sll	v0,v0,0x10
      e8:	00021403 	sra	v0,v0,0x10
}
      ec:	03c0e821 	addu	sp,s8,zero
      f0:	8fbe0004 	lw	s8,4(sp)
      f4:	27bd0008 	addiu	sp,sp,8
      f8:	03e00008 	jr	ra
      fc:	00000000 	sll	zero,zero,0x0

00000100 <gsm_mult_r>:

word
gsm_mult_r (word a, word b)
{
     100:	27bdfff0 	addiu	sp,sp,-16
     104:	afbe000c 	sw	s8,12(sp)
     108:	03a0f021 	addu	s8,sp,zero
     10c:	00801821 	addu	v1,a0,zero
     110:	00a01021 	addu	v0,a1,zero
     114:	a7c30010 	sh	v1,16(s8)
     118:	a7c20014 	sh	v0,20(s8)
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
     11c:	87c30014 	lh	v1,20(s8)
     120:	24028000 	addiu	v0,zero,-32768
     124:	14620008 	bne	v1,v0,148 <gsm_mult_r+0x48>
     128:	00000000 	sll	zero,zero,0x0
     12c:	87c30010 	lh	v1,16(s8)
     130:	24028000 	addiu	v0,zero,-32768
     134:	14620004 	bne	v1,v0,148 <gsm_mult_r+0x48>
     138:	00000000 	sll	zero,zero,0x0
    return MAX_WORD;
     13c:	24027fff 	addiu	v0,zero,32767
     140:	08000061 	j	184 <gsm_mult_r+0x84>
     144:	00000000 	sll	zero,zero,0x0
  else
    {
      prod = (longword) a *(longword) b + 16384;
     148:	87c30010 	lh	v1,16(s8)
     14c:	87c20014 	lh	v0,20(s8)
     150:	00000000 	sll	zero,zero,0x0
     154:	00620018 	mult	v1,v0
     158:	00001012 	mflo	v0
     15c:	24424000 	addiu	v0,v0,16384
     160:	afc20000 	sw	v0,0(s8)
      prod >>= 15;
     164:	8fc20000 	lw	v0,0(s8)
     168:	00000000 	sll	zero,zero,0x0
     16c:	000213c3 	sra	v0,v0,0xf
     170:	afc20000 	sw	v0,0(s8)
      return prod & 0xFFFF;
     174:	8fc20000 	lw	v0,0(s8)
     178:	00000000 	sll	zero,zero,0x0
     17c:	00021400 	sll	v0,v0,0x10
     180:	00021403 	sra	v0,v0,0x10
    }
}
     184:	03c0e821 	addu	sp,s8,zero
     188:	8fbe000c 	lw	s8,12(sp)
     18c:	27bd0010 	addiu	sp,sp,16
     190:	03e00008 	jr	ra
     194:	00000000 	sll	zero,zero,0x0

00000198 <gsm_abs>:

word
gsm_abs (word a)
{
     198:	27bdfff8 	addiu	sp,sp,-8
     19c:	afbe0004 	sw	s8,4(sp)
     1a0:	03a0f021 	addu	s8,sp,zero
     1a4:	00801021 	addu	v0,a0,zero
     1a8:	a7c20008 	sh	v0,8(s8)
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
     1ac:	87c20008 	lh	v0,8(s8)
     1b0:	00000000 	sll	zero,zero,0x0
     1b4:	04410010 	bgez	v0,1f8 <gsm_abs+0x60>
     1b8:	00000000 	sll	zero,zero,0x0
     1bc:	87c30008 	lh	v1,8(s8)
     1c0:	24028000 	addiu	v0,zero,-32768
     1c4:	10620009 	beq	v1,v0,1ec <gsm_abs+0x54>
     1c8:	00000000 	sll	zero,zero,0x0
     1cc:	97c20008 	lhu	v0,8(s8)
     1d0:	00000000 	sll	zero,zero,0x0
     1d4:	00021023 	negu	v0,v0
     1d8:	3042ffff 	andi	v0,v0,0xffff
     1dc:	00021400 	sll	v0,v0,0x10
     1e0:	00021403 	sra	v0,v0,0x10
     1e4:	0800007c 	j	1f0 <gsm_abs+0x58>
     1e8:	00000000 	sll	zero,zero,0x0
     1ec:	24027fff 	addiu	v0,zero,32767
     1f0:	0800007f 	j	1fc <gsm_abs+0x64>
     1f4:	00000000 	sll	zero,zero,0x0
     1f8:	87c20008 	lh	v0,8(s8)
}
     1fc:	03c0e821 	addu	sp,s8,zero
     200:	8fbe0004 	lw	s8,4(sp)
     204:	27bd0008 	addiu	sp,sp,8
     208:	03e00008 	jr	ra
     20c:	00000000 	sll	zero,zero,0x0

00000210 <gsm_norm>:
 * in order to normalize the result, the following
 * operation must be done: L_norm_var1 = L_var1 << norm( L_var1 );
 *
 * (That's 'ffs', only from the left, not the right..)
 */
{
     210:	27bdfff8 	addiu	sp,sp,-8
     214:	afbe0004 	sw	s8,4(sp)
     218:	03a0f021 	addu	s8,sp,zero
     21c:	afc40008 	sw	a0,8(s8)

  if (a < 0)
     220:	8fc20008 	lw	v0,8(s8)
     224:	00000000 	sll	zero,zero,0x0
     228:	0441000e 	bgez	v0,264 <gsm_norm+0x54>
     22c:	00000000 	sll	zero,zero,0x0
    {
      if (a <= -1073741824)
     230:	8fc30008 	lw	v1,8(s8)
     234:	3c02c000 	lui	v0,0xc000
     238:	34420001 	ori	v0,v0,0x1
     23c:	0062102a 	slt	v0,v1,v0
     240:	10400004 	beqz	v0,254 <gsm_norm+0x44>
     244:	00000000 	sll	zero,zero,0x0
	return 0;
     248:	00001021 	addu	v0,zero,zero
     24c:	080000e1 	j	384 <gsm_norm+0x174>
     250:	00000000 	sll	zero,zero,0x0
      a = ~a;
     254:	8fc20008 	lw	v0,8(s8)
     258:	00000000 	sll	zero,zero,0x0
     25c:	00021027 	nor	v0,zero,v0
     260:	afc20008 	sw	v0,8(s8)
    }

  return a & 0xffff0000 ?
     264:	8fc30008 	lw	v1,8(s8)
     268:	3c02ffff 	lui	v0,0xffff
     26c:	00621024 	and	v0,v1,v0
     270:	10400024 	beqz	v0,304 <gsm_norm+0xf4>
     274:	00000000 	sll	zero,zero,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     278:	8fc30008 	lw	v1,8(s8)
     27c:	3c02ff00 	lui	v0,0xff00
     280:	00621024 	and	v0,v1,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     284:	10400010 	beqz	v0,2c8 <gsm_norm+0xb8>
     288:	00000000 	sll	zero,zero,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     28c:	8fc20008 	lw	v0,8(s8)
     290:	00000000 	sll	zero,zero,0x0
     294:	00021602 	srl	v0,v0,0x18
     298:	00401821 	addu	v1,v0,zero
     29c:	3c020000 	lui	v0,0x0
     2a0:	24420000 	addiu	v0,v0,0
     2a4:	00621021 	addu	v0,v1,v0
     2a8:	90420000 	lbu	v0,0(v0)
     2ac:	00000000 	sll	zero,zero,0x0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     2b0:	2442ffff 	addiu	v0,v0,-1
     2b4:	3042ffff 	andi	v0,v0,0xffff
     2b8:	00021400 	sll	v0,v0,0x10
     2bc:	00021403 	sra	v0,v0,0x10
     2c0:	080000bf 	j	2fc <gsm_norm+0xec>
     2c4:	00000000 	sll	zero,zero,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
     2c8:	8fc20008 	lw	v0,8(s8)
     2cc:	00000000 	sll	zero,zero,0x0
     2d0:	00021403 	sra	v0,v0,0x10
     2d4:	304300ff 	andi	v1,v0,0xff
     2d8:	3c020000 	lui	v0,0x0
     2dc:	24420000 	addiu	v0,v0,0
     2e0:	00621021 	addu	v0,v1,v0
     2e4:	90420000 	lbu	v0,0(v0)
     2e8:	00000000 	sll	zero,zero,0x0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     2ec:	24420007 	addiu	v0,v0,7
     2f0:	3042ffff 	andi	v0,v0,0xffff
     2f4:	00021400 	sll	v0,v0,0x10
     2f8:	00021403 	sra	v0,v0,0x10
     2fc:	080000e1 	j	384 <gsm_norm+0x174>
     300:	00000000 	sll	zero,zero,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
     304:	8fc20008 	lw	v0,8(s8)
     308:	00000000 	sll	zero,zero,0x0
     30c:	3042ff00 	andi	v0,v0,0xff00
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     310:	10400010 	beqz	v0,354 <gsm_norm+0x144>
     314:	00000000 	sll	zero,zero,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
     318:	8fc20008 	lw	v0,8(s8)
     31c:	00000000 	sll	zero,zero,0x0
     320:	00021203 	sra	v0,v0,0x8
     324:	304300ff 	andi	v1,v0,0xff
     328:	3c020000 	lui	v0,0x0
     32c:	24420000 	addiu	v0,v0,0
     330:	00621021 	addu	v0,v1,v0
     334:	90420000 	lbu	v0,0(v0)
     338:	00000000 	sll	zero,zero,0x0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     33c:	2442000f 	addiu	v0,v0,15
     340:	3042ffff 	andi	v0,v0,0xffff
     344:	00021400 	sll	v0,v0,0x10
     348:	00021403 	sra	v0,v0,0x10
     34c:	080000e1 	j	384 <gsm_norm+0x174>
     350:	00000000 	sll	zero,zero,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
     354:	8fc20008 	lw	v0,8(s8)
     358:	00000000 	sll	zero,zero,0x0
     35c:	304300ff 	andi	v1,v0,0xff
     360:	3c020000 	lui	v0,0x0
     364:	24420000 	addiu	v0,v0,0
     368:	00621021 	addu	v0,v1,v0
     36c:	90420000 	lbu	v0,0(v0)
     370:	00000000 	sll	zero,zero,0x0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     374:	24420017 	addiu	v0,v0,23
     378:	3042ffff 	andi	v0,v0,0xffff
     37c:	00021400 	sll	v0,v0,0x10
     380:	00021403 	sra	v0,v0,0x10
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
}
     384:	03c0e821 	addu	sp,s8,zero
     388:	8fbe0004 	lw	s8,4(sp)
     38c:	27bd0008 	addiu	sp,sp,8
     390:	03e00008 	jr	ra
     394:	00000000 	sll	zero,zero,0x0

00000398 <gsm_div>:

word
gsm_div (word num, word denum)
{
     398:	27bdffe8 	addiu	sp,sp,-24
     39c:	afbe0014 	sw	s8,20(sp)
     3a0:	03a0f021 	addu	s8,sp,zero
     3a4:	00801821 	addu	v1,a0,zero
     3a8:	00a01021 	addu	v0,a1,zero
     3ac:	a7c30018 	sh	v1,24(s8)
     3b0:	a7c2001c 	sh	v0,28(s8)
  longword L_num;
  longword L_denum;
  word div;
  int k;

  L_num = num;
     3b4:	87c20018 	lh	v0,24(s8)
     3b8:	00000000 	sll	zero,zero,0x0
     3bc:	afc20000 	sw	v0,0(s8)
  L_denum = denum;
     3c0:	87c2001c 	lh	v0,28(s8)
     3c4:	00000000 	sll	zero,zero,0x0
     3c8:	afc2000c 	sw	v0,12(s8)
  div = 0;
     3cc:	a7c00004 	sh	zero,4(s8)
  k = 15;
     3d0:	2402000f 	addiu	v0,zero,15
     3d4:	afc20008 	sw	v0,8(s8)
  /* The parameter num sometimes becomes zero.
   * Although this is explicitly guarded against in 4.2.5,
   * we assume that the result should then be zero as well.
   */

  if (num == 0)
     3d8:	87c20018 	lh	v0,24(s8)
     3dc:	00000000 	sll	zero,zero,0x0
     3e0:	1440001d 	bnez	v0,458 <gsm_div+0xc0>
     3e4:	00000000 	sll	zero,zero,0x0
    return 0;
     3e8:	00001021 	addu	v0,zero,zero
     3ec:	08000122 	j	488 <gsm_div+0xf0>
     3f0:	00000000 	sll	zero,zero,0x0

  while (k--)
    {
      div <<= 1;
     3f4:	87c20004 	lh	v0,4(s8)
     3f8:	00000000 	sll	zero,zero,0x0
     3fc:	00021040 	sll	v0,v0,0x1
     400:	a7c20004 	sh	v0,4(s8)
      L_num <<= 1;
     404:	8fc20000 	lw	v0,0(s8)
     408:	00000000 	sll	zero,zero,0x0
     40c:	00021040 	sll	v0,v0,0x1
     410:	afc20000 	sw	v0,0(s8)

      if (L_num >= L_denum)
     414:	8fc30000 	lw	v1,0(s8)
     418:	8fc2000c 	lw	v0,12(s8)
     41c:	00000000 	sll	zero,zero,0x0
     420:	0062102a 	slt	v0,v1,v0
     424:	1440000d 	bnez	v0,45c <gsm_div+0xc4>
     428:	00000000 	sll	zero,zero,0x0
	{
	  L_num -= L_denum;
     42c:	8fc30000 	lw	v1,0(s8)
     430:	8fc2000c 	lw	v0,12(s8)
     434:	00000000 	sll	zero,zero,0x0
     438:	00621023 	subu	v0,v1,v0
     43c:	afc20000 	sw	v0,0(s8)
	  div++;
     440:	97c20004 	lhu	v0,4(s8)
     444:	00000000 	sll	zero,zero,0x0
     448:	24420001 	addiu	v0,v0,1
     44c:	a7c20004 	sh	v0,4(s8)
     450:	08000117 	j	45c <gsm_div+0xc4>
     454:	00000000 	sll	zero,zero,0x0
   */

  if (num == 0)
    return 0;

  while (k--)
     458:	00000000 	sll	zero,zero,0x0
     45c:	8fc20008 	lw	v0,8(s8)
     460:	00000000 	sll	zero,zero,0x0
     464:	0002102b 	sltu	v0,zero,v0
     468:	304200ff 	andi	v0,v0,0xff
     46c:	8fc30008 	lw	v1,8(s8)
     470:	00000000 	sll	zero,zero,0x0
     474:	2463ffff 	addiu	v1,v1,-1
     478:	afc30008 	sw	v1,8(s8)
     47c:	1440ffdd 	bnez	v0,3f4 <gsm_div+0x5c>
     480:	00000000 	sll	zero,zero,0x0
	  L_num -= L_denum;
	  div++;
	}
    }

  return div;
     484:	87c20004 	lh	v0,4(s8)
}
     488:	03c0e821 	addu	sp,s8,zero
     48c:	8fbe0014 	lw	s8,20(sp)
     490:	27bd0018 	addiu	sp,sp,24
     494:	03e00008 	jr	ra
     498:	00000000 	sll	zero,zero,0x0

0000049c <Autocorrelation>:
		 longword * L_ACF /* [0..8]       OUT     */ )
/*
 *  The goal is to compute the array L_ACF[k].  The signal s[i] must
 *  be scaled in order to avoid an overflow situation.
 */
{
     49c:	27bdffd0 	addiu	sp,sp,-48
     4a0:	afbf002c 	sw	ra,44(sp)
     4a4:	afbe0028 	sw	s8,40(sp)
     4a8:	afb10024 	sw	s1,36(sp)
     4ac:	afb00020 	sw	s0,32(sp)
     4b0:	03a0f021 	addu	s8,sp,zero
     4b4:	afc40030 	sw	a0,48(s8)
     4b8:	afc50034 	sw	a1,52(s8)
  word *sp;
  word sl;

  /*  Search for the maximum.
   */
  smax = 0;
     4bc:	a7c00010 	sh	zero,16(s8)
  for (k = 0; k <= 159; k++)
     4c0:	00008021 	addu	s0,zero,zero
     4c4:	08000148 	j	520 <Autocorrelation+0x84>
     4c8:	00000000 	sll	zero,zero,0x0
    {
      temp = GSM_ABS (s[k]);
     4cc:	02001021 	addu	v0,s0,zero
     4d0:	00021040 	sll	v0,v0,0x1
     4d4:	8fc30030 	lw	v1,48(s8)
     4d8:	00000000 	sll	zero,zero,0x0
     4dc:	00621021 	addu	v0,v1,v0
     4e0:	84420000 	lh	v0,0(v0)
     4e4:	00000000 	sll	zero,zero,0x0
     4e8:	00402021 	addu	a0,v0,zero
     4ec:	0c000000 	jal	0 <gsm_add>
     4f0:	00000000 	sll	zero,zero,0x0
     4f4:	a7c20018 	sh	v0,24(s8)
      if (temp > smax)
     4f8:	87c30018 	lh	v1,24(s8)
     4fc:	87c20010 	lh	v0,16(s8)
     500:	00000000 	sll	zero,zero,0x0
     504:	0043102a 	slt	v0,v0,v1
     508:	10400004 	beqz	v0,51c <Autocorrelation+0x80>
     50c:	00000000 	sll	zero,zero,0x0
	smax = temp;
     510:	97c20018 	lhu	v0,24(s8)
     514:	00000000 	sll	zero,zero,0x0
     518:	a7c20010 	sh	v0,16(s8)
  word sl;

  /*  Search for the maximum.
   */
  smax = 0;
  for (k = 0; k <= 159; k++)
     51c:	26100001 	addiu	s0,s0,1
     520:	2a0200a0 	slti	v0,s0,160
     524:	1440ffe9 	bnez	v0,4cc <Autocorrelation+0x30>
     528:	00000000 	sll	zero,zero,0x0
	smax = temp;
    }

  /*  Computation of the scaling factor.
   */
  if (smax == 0)
     52c:	87c20010 	lh	v0,16(s8)
     530:	00000000 	sll	zero,zero,0x0
     534:	14400004 	bnez	v0,548 <Autocorrelation+0xac>
     538:	00000000 	sll	zero,zero,0x0
    scalauto = 0;
     53c:	a7c00012 	sh	zero,18(s8)
     540:	0800015d 	j	574 <Autocorrelation+0xd8>
     544:	00000000 	sll	zero,zero,0x0
  else
    scalauto = 4 - gsm_norm ((longword) smax << 16);	/* sub(4,..) */
     548:	87c20010 	lh	v0,16(s8)
     54c:	00000000 	sll	zero,zero,0x0
     550:	00021400 	sll	v0,v0,0x10
     554:	00402021 	addu	a0,v0,zero
     558:	0c000000 	jal	0 <gsm_add>
     55c:	00000000 	sll	zero,zero,0x0
     560:	3042ffff 	andi	v0,v0,0xffff
     564:	24030004 	addiu	v1,zero,4
     568:	00621023 	subu	v0,v1,v0
     56c:	3042ffff 	andi	v0,v0,0xffff
     570:	a7c20012 	sh	v0,18(s8)

  if (scalauto > 0 && scalauto <= 4)
     574:	87c20012 	lh	v0,18(s8)
     578:	00000000 	sll	zero,zero,0x0
     57c:	18400029 	blez	v0,624 <Autocorrelation+0x188>
     580:	00000000 	sll	zero,zero,0x0
     584:	87c20012 	lh	v0,18(s8)
     588:	00000000 	sll	zero,zero,0x0
     58c:	28420005 	slti	v0,v0,5
     590:	10400024 	beqz	v0,624 <Autocorrelation+0x188>
     594:	00000000 	sll	zero,zero,0x0
    {
      n = scalauto;
     598:	97c20012 	lhu	v0,18(s8)
     59c:	00000000 	sll	zero,zero,0x0
     5a0:	a7c2001a 	sh	v0,26(s8)
      for (k = 0; k <= 159; k++)
     5a4:	00008021 	addu	s0,zero,zero
     5a8:	08000186 	j	618 <Autocorrelation+0x17c>
     5ac:	00000000 	sll	zero,zero,0x0
	s[k] = GSM_MULT_R (s[k], 16384 >> (n - 1));
     5b0:	02001021 	addu	v0,s0,zero
     5b4:	00021040 	sll	v0,v0,0x1
     5b8:	8fc30030 	lw	v1,48(s8)
     5bc:	00000000 	sll	zero,zero,0x0
     5c0:	00628821 	addu	s1,v1,v0
     5c4:	02001021 	addu	v0,s0,zero
     5c8:	00021040 	sll	v0,v0,0x1
     5cc:	8fc30030 	lw	v1,48(s8)
     5d0:	00000000 	sll	zero,zero,0x0
     5d4:	00621021 	addu	v0,v1,v0
     5d8:	84420000 	lh	v0,0(v0)
     5dc:	00000000 	sll	zero,zero,0x0
     5e0:	00401821 	addu	v1,v0,zero
     5e4:	87c2001a 	lh	v0,26(s8)
     5e8:	00000000 	sll	zero,zero,0x0
     5ec:	2442ffff 	addiu	v0,v0,-1
     5f0:	24044000 	addiu	a0,zero,16384
     5f4:	00441007 	srav	v0,a0,v0
     5f8:	00021400 	sll	v0,v0,0x10
     5fc:	00021403 	sra	v0,v0,0x10
     600:	00602021 	addu	a0,v1,zero
     604:	00402821 	addu	a1,v0,zero
     608:	0c000000 	jal	0 <gsm_add>
     60c:	00000000 	sll	zero,zero,0x0
     610:	a6220000 	sh	v0,0(s1)
    scalauto = 4 - gsm_norm ((longword) smax << 16);	/* sub(4,..) */

  if (scalauto > 0 && scalauto <= 4)
    {
      n = scalauto;
      for (k = 0; k <= 159; k++)
     614:	26100001 	addiu	s0,s0,1
     618:	2a0200a0 	slti	v0,s0,160
     61c:	1440ffe4 	bnez	v0,5b0 <Autocorrelation+0x114>
     620:	00000000 	sll	zero,zero,0x0
    }

  /*  Compute the L_ACF[..].
   */
  {
    sp = s;
     624:	8fc20030 	lw	v0,48(s8)
     628:	00000000 	sll	zero,zero,0x0
     62c:	afc20014 	sw	v0,20(s8)
    sl = *sp;
     630:	8fc20014 	lw	v0,20(s8)
     634:	00000000 	sll	zero,zero,0x0
     638:	94420000 	lhu	v0,0(v0)
     63c:	00000000 	sll	zero,zero,0x0
     640:	a7c2001c 	sh	v0,28(s8)

#define STEP(k)	 L_ACF[k] += ((longword)sl * sp[ -(k) ]);

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
     644:	24100008 	addiu	s0,zero,8
     648:	0800019b 	j	66c <Autocorrelation+0x1d0>
     64c:	00000000 	sll	zero,zero,0x0
      L_ACF[k] = 0;
     650:	02001021 	addu	v0,s0,zero
     654:	00021080 	sll	v0,v0,0x2
     658:	8fc30034 	lw	v1,52(s8)
     65c:	00000000 	sll	zero,zero,0x0
     660:	00621021 	addu	v0,v1,v0
     664:	ac400000 	sw	zero,0(v0)
    sl = *sp;

#define STEP(k)	 L_ACF[k] += ((longword)sl * sp[ -(k) ]);

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
     668:	2610ffff 	addiu	s0,s0,-1
     66c:	0601fff8 	bgez	s0,650 <Autocorrelation+0x1b4>
     670:	00000000 	sll	zero,zero,0x0
      L_ACF[k] = 0;

    STEP (0);
     674:	8fc20034 	lw	v0,52(s8)
     678:	00000000 	sll	zero,zero,0x0
     67c:	8c420000 	lw	v0,0(v0)
     680:	87c4001c 	lh	a0,28(s8)
     684:	8fc30014 	lw	v1,20(s8)
     688:	00000000 	sll	zero,zero,0x0
     68c:	84630000 	lh	v1,0(v1)
     690:	00000000 	sll	zero,zero,0x0
     694:	00830018 	mult	a0,v1
     698:	00001812 	mflo	v1
     69c:	00431821 	addu	v1,v0,v1
     6a0:	8fc20034 	lw	v0,52(s8)
     6a4:	00000000 	sll	zero,zero,0x0
     6a8:	ac430000 	sw	v1,0(v0)
    NEXTI;
     6ac:	8fc20014 	lw	v0,20(s8)
     6b0:	00000000 	sll	zero,zero,0x0
     6b4:	24420002 	addiu	v0,v0,2
     6b8:	afc20014 	sw	v0,20(s8)
     6bc:	8fc20014 	lw	v0,20(s8)
     6c0:	00000000 	sll	zero,zero,0x0
     6c4:	94420000 	lhu	v0,0(v0)
     6c8:	00000000 	sll	zero,zero,0x0
     6cc:	a7c2001c 	sh	v0,28(s8)
    STEP (0);
     6d0:	8fc20034 	lw	v0,52(s8)
     6d4:	00000000 	sll	zero,zero,0x0
     6d8:	8c420000 	lw	v0,0(v0)
     6dc:	87c4001c 	lh	a0,28(s8)
     6e0:	8fc30014 	lw	v1,20(s8)
     6e4:	00000000 	sll	zero,zero,0x0
     6e8:	84630000 	lh	v1,0(v1)
     6ec:	00000000 	sll	zero,zero,0x0
     6f0:	00830018 	mult	a0,v1
     6f4:	00001812 	mflo	v1
     6f8:	00431821 	addu	v1,v0,v1
     6fc:	8fc20034 	lw	v0,52(s8)
     700:	00000000 	sll	zero,zero,0x0
     704:	ac430000 	sw	v1,0(v0)
    STEP (1);
     708:	8fc20034 	lw	v0,52(s8)
     70c:	00000000 	sll	zero,zero,0x0
     710:	24420004 	addiu	v0,v0,4
     714:	8fc30034 	lw	v1,52(s8)
     718:	00000000 	sll	zero,zero,0x0
     71c:	24630004 	addiu	v1,v1,4
     720:	8c630000 	lw	v1,0(v1)
     724:	87c5001c 	lh	a1,28(s8)
     728:	8fc40014 	lw	a0,20(s8)
     72c:	00000000 	sll	zero,zero,0x0
     730:	2484fffe 	addiu	a0,a0,-2
     734:	84840000 	lh	a0,0(a0)
     738:	00000000 	sll	zero,zero,0x0
     73c:	00a40018 	mult	a1,a0
     740:	00002012 	mflo	a0
     744:	00641821 	addu	v1,v1,a0
     748:	ac430000 	sw	v1,0(v0)
    NEXTI;
     74c:	8fc20014 	lw	v0,20(s8)
     750:	00000000 	sll	zero,zero,0x0
     754:	24420002 	addiu	v0,v0,2
     758:	afc20014 	sw	v0,20(s8)
     75c:	8fc20014 	lw	v0,20(s8)
     760:	00000000 	sll	zero,zero,0x0
     764:	94420000 	lhu	v0,0(v0)
     768:	00000000 	sll	zero,zero,0x0
     76c:	a7c2001c 	sh	v0,28(s8)
    STEP (0);
     770:	8fc20034 	lw	v0,52(s8)
     774:	00000000 	sll	zero,zero,0x0
     778:	8c420000 	lw	v0,0(v0)
     77c:	87c4001c 	lh	a0,28(s8)
     780:	8fc30014 	lw	v1,20(s8)
     784:	00000000 	sll	zero,zero,0x0
     788:	84630000 	lh	v1,0(v1)
     78c:	00000000 	sll	zero,zero,0x0
     790:	00830018 	mult	a0,v1
     794:	00001812 	mflo	v1
     798:	00431821 	addu	v1,v0,v1
     79c:	8fc20034 	lw	v0,52(s8)
     7a0:	00000000 	sll	zero,zero,0x0
     7a4:	ac430000 	sw	v1,0(v0)
    STEP (1);
     7a8:	8fc20034 	lw	v0,52(s8)
     7ac:	00000000 	sll	zero,zero,0x0
     7b0:	24420004 	addiu	v0,v0,4
     7b4:	8fc30034 	lw	v1,52(s8)
     7b8:	00000000 	sll	zero,zero,0x0
     7bc:	24630004 	addiu	v1,v1,4
     7c0:	8c630000 	lw	v1,0(v1)
     7c4:	87c5001c 	lh	a1,28(s8)
     7c8:	8fc40014 	lw	a0,20(s8)
     7cc:	00000000 	sll	zero,zero,0x0
     7d0:	2484fffe 	addiu	a0,a0,-2
     7d4:	84840000 	lh	a0,0(a0)
     7d8:	00000000 	sll	zero,zero,0x0
     7dc:	00a40018 	mult	a1,a0
     7e0:	00002012 	mflo	a0
     7e4:	00641821 	addu	v1,v1,a0
     7e8:	ac430000 	sw	v1,0(v0)
    STEP (2);
     7ec:	8fc20034 	lw	v0,52(s8)
     7f0:	00000000 	sll	zero,zero,0x0
     7f4:	24420008 	addiu	v0,v0,8
     7f8:	8fc30034 	lw	v1,52(s8)
     7fc:	00000000 	sll	zero,zero,0x0
     800:	24630008 	addiu	v1,v1,8
     804:	8c630000 	lw	v1,0(v1)
     808:	87c5001c 	lh	a1,28(s8)
     80c:	8fc40014 	lw	a0,20(s8)
     810:	00000000 	sll	zero,zero,0x0
     814:	2484fffc 	addiu	a0,a0,-4
     818:	84840000 	lh	a0,0(a0)
     81c:	00000000 	sll	zero,zero,0x0
     820:	00a40018 	mult	a1,a0
     824:	00002012 	mflo	a0
     828:	00641821 	addu	v1,v1,a0
     82c:	ac430000 	sw	v1,0(v0)
    NEXTI;
     830:	8fc20014 	lw	v0,20(s8)
     834:	00000000 	sll	zero,zero,0x0
     838:	24420002 	addiu	v0,v0,2
     83c:	afc20014 	sw	v0,20(s8)
     840:	8fc20014 	lw	v0,20(s8)
     844:	00000000 	sll	zero,zero,0x0
     848:	94420000 	lhu	v0,0(v0)
     84c:	00000000 	sll	zero,zero,0x0
     850:	a7c2001c 	sh	v0,28(s8)
    STEP (0);
     854:	8fc20034 	lw	v0,52(s8)
     858:	00000000 	sll	zero,zero,0x0
     85c:	8c420000 	lw	v0,0(v0)
     860:	87c4001c 	lh	a0,28(s8)
     864:	8fc30014 	lw	v1,20(s8)
     868:	00000000 	sll	zero,zero,0x0
     86c:	84630000 	lh	v1,0(v1)
     870:	00000000 	sll	zero,zero,0x0
     874:	00830018 	mult	a0,v1
     878:	00001812 	mflo	v1
     87c:	00431821 	addu	v1,v0,v1
     880:	8fc20034 	lw	v0,52(s8)
     884:	00000000 	sll	zero,zero,0x0
     888:	ac430000 	sw	v1,0(v0)
    STEP (1);
     88c:	8fc20034 	lw	v0,52(s8)
     890:	00000000 	sll	zero,zero,0x0
     894:	24420004 	addiu	v0,v0,4
     898:	8fc30034 	lw	v1,52(s8)
     89c:	00000000 	sll	zero,zero,0x0
     8a0:	24630004 	addiu	v1,v1,4
     8a4:	8c630000 	lw	v1,0(v1)
     8a8:	87c5001c 	lh	a1,28(s8)
     8ac:	8fc40014 	lw	a0,20(s8)
     8b0:	00000000 	sll	zero,zero,0x0
     8b4:	2484fffe 	addiu	a0,a0,-2
     8b8:	84840000 	lh	a0,0(a0)
     8bc:	00000000 	sll	zero,zero,0x0
     8c0:	00a40018 	mult	a1,a0
     8c4:	00002012 	mflo	a0
     8c8:	00641821 	addu	v1,v1,a0
     8cc:	ac430000 	sw	v1,0(v0)
    STEP (2);
     8d0:	8fc20034 	lw	v0,52(s8)
     8d4:	00000000 	sll	zero,zero,0x0
     8d8:	24420008 	addiu	v0,v0,8
     8dc:	8fc30034 	lw	v1,52(s8)
     8e0:	00000000 	sll	zero,zero,0x0
     8e4:	24630008 	addiu	v1,v1,8
     8e8:	8c630000 	lw	v1,0(v1)
     8ec:	87c5001c 	lh	a1,28(s8)
     8f0:	8fc40014 	lw	a0,20(s8)
     8f4:	00000000 	sll	zero,zero,0x0
     8f8:	2484fffc 	addiu	a0,a0,-4
     8fc:	84840000 	lh	a0,0(a0)
     900:	00000000 	sll	zero,zero,0x0
     904:	00a40018 	mult	a1,a0
     908:	00002012 	mflo	a0
     90c:	00641821 	addu	v1,v1,a0
     910:	ac430000 	sw	v1,0(v0)
    STEP (3);
     914:	8fc20034 	lw	v0,52(s8)
     918:	00000000 	sll	zero,zero,0x0
     91c:	2442000c 	addiu	v0,v0,12
     920:	8fc30034 	lw	v1,52(s8)
     924:	00000000 	sll	zero,zero,0x0
     928:	2463000c 	addiu	v1,v1,12
     92c:	8c630000 	lw	v1,0(v1)
     930:	87c5001c 	lh	a1,28(s8)
     934:	8fc40014 	lw	a0,20(s8)
     938:	00000000 	sll	zero,zero,0x0
     93c:	2484fffa 	addiu	a0,a0,-6
     940:	84840000 	lh	a0,0(a0)
     944:	00000000 	sll	zero,zero,0x0
     948:	00a40018 	mult	a1,a0
     94c:	00002012 	mflo	a0
     950:	00641821 	addu	v1,v1,a0
     954:	ac430000 	sw	v1,0(v0)
    NEXTI;
     958:	8fc20014 	lw	v0,20(s8)
     95c:	00000000 	sll	zero,zero,0x0
     960:	24420002 	addiu	v0,v0,2
     964:	afc20014 	sw	v0,20(s8)
     968:	8fc20014 	lw	v0,20(s8)
     96c:	00000000 	sll	zero,zero,0x0
     970:	94420000 	lhu	v0,0(v0)
     974:	00000000 	sll	zero,zero,0x0
     978:	a7c2001c 	sh	v0,28(s8)
    STEP (0);
     97c:	8fc20034 	lw	v0,52(s8)
     980:	00000000 	sll	zero,zero,0x0
     984:	8c420000 	lw	v0,0(v0)
     988:	87c4001c 	lh	a0,28(s8)
     98c:	8fc30014 	lw	v1,20(s8)
     990:	00000000 	sll	zero,zero,0x0
     994:	84630000 	lh	v1,0(v1)
     998:	00000000 	sll	zero,zero,0x0
     99c:	00830018 	mult	a0,v1
     9a0:	00001812 	mflo	v1
     9a4:	00431821 	addu	v1,v0,v1
     9a8:	8fc20034 	lw	v0,52(s8)
     9ac:	00000000 	sll	zero,zero,0x0
     9b0:	ac430000 	sw	v1,0(v0)
    STEP (1);
     9b4:	8fc20034 	lw	v0,52(s8)
     9b8:	00000000 	sll	zero,zero,0x0
     9bc:	24420004 	addiu	v0,v0,4
     9c0:	8fc30034 	lw	v1,52(s8)
     9c4:	00000000 	sll	zero,zero,0x0
     9c8:	24630004 	addiu	v1,v1,4
     9cc:	8c630000 	lw	v1,0(v1)
     9d0:	87c5001c 	lh	a1,28(s8)
     9d4:	8fc40014 	lw	a0,20(s8)
     9d8:	00000000 	sll	zero,zero,0x0
     9dc:	2484fffe 	addiu	a0,a0,-2
     9e0:	84840000 	lh	a0,0(a0)
     9e4:	00000000 	sll	zero,zero,0x0
     9e8:	00a40018 	mult	a1,a0
     9ec:	00002012 	mflo	a0
     9f0:	00641821 	addu	v1,v1,a0
     9f4:	ac430000 	sw	v1,0(v0)
    STEP (2);
     9f8:	8fc20034 	lw	v0,52(s8)
     9fc:	00000000 	sll	zero,zero,0x0
     a00:	24420008 	addiu	v0,v0,8
     a04:	8fc30034 	lw	v1,52(s8)
     a08:	00000000 	sll	zero,zero,0x0
     a0c:	24630008 	addiu	v1,v1,8
     a10:	8c630000 	lw	v1,0(v1)
     a14:	87c5001c 	lh	a1,28(s8)
     a18:	8fc40014 	lw	a0,20(s8)
     a1c:	00000000 	sll	zero,zero,0x0
     a20:	2484fffc 	addiu	a0,a0,-4
     a24:	84840000 	lh	a0,0(a0)
     a28:	00000000 	sll	zero,zero,0x0
     a2c:	00a40018 	mult	a1,a0
     a30:	00002012 	mflo	a0
     a34:	00641821 	addu	v1,v1,a0
     a38:	ac430000 	sw	v1,0(v0)
    STEP (3);
     a3c:	8fc20034 	lw	v0,52(s8)
     a40:	00000000 	sll	zero,zero,0x0
     a44:	2442000c 	addiu	v0,v0,12
     a48:	8fc30034 	lw	v1,52(s8)
     a4c:	00000000 	sll	zero,zero,0x0
     a50:	2463000c 	addiu	v1,v1,12
     a54:	8c630000 	lw	v1,0(v1)
     a58:	87c5001c 	lh	a1,28(s8)
     a5c:	8fc40014 	lw	a0,20(s8)
     a60:	00000000 	sll	zero,zero,0x0
     a64:	2484fffa 	addiu	a0,a0,-6
     a68:	84840000 	lh	a0,0(a0)
     a6c:	00000000 	sll	zero,zero,0x0
     a70:	00a40018 	mult	a1,a0
     a74:	00002012 	mflo	a0
     a78:	00641821 	addu	v1,v1,a0
     a7c:	ac430000 	sw	v1,0(v0)
    STEP (4);
     a80:	8fc20034 	lw	v0,52(s8)
     a84:	00000000 	sll	zero,zero,0x0
     a88:	24420010 	addiu	v0,v0,16
     a8c:	8fc30034 	lw	v1,52(s8)
     a90:	00000000 	sll	zero,zero,0x0
     a94:	24630010 	addiu	v1,v1,16
     a98:	8c630000 	lw	v1,0(v1)
     a9c:	87c5001c 	lh	a1,28(s8)
     aa0:	8fc40014 	lw	a0,20(s8)
     aa4:	00000000 	sll	zero,zero,0x0
     aa8:	2484fff8 	addiu	a0,a0,-8
     aac:	84840000 	lh	a0,0(a0)
     ab0:	00000000 	sll	zero,zero,0x0
     ab4:	00a40018 	mult	a1,a0
     ab8:	00002012 	mflo	a0
     abc:	00641821 	addu	v1,v1,a0
     ac0:	ac430000 	sw	v1,0(v0)
    NEXTI;
     ac4:	8fc20014 	lw	v0,20(s8)
     ac8:	00000000 	sll	zero,zero,0x0
     acc:	24420002 	addiu	v0,v0,2
     ad0:	afc20014 	sw	v0,20(s8)
     ad4:	8fc20014 	lw	v0,20(s8)
     ad8:	00000000 	sll	zero,zero,0x0
     adc:	94420000 	lhu	v0,0(v0)
     ae0:	00000000 	sll	zero,zero,0x0
     ae4:	a7c2001c 	sh	v0,28(s8)
    STEP (0);
     ae8:	8fc20034 	lw	v0,52(s8)
     aec:	00000000 	sll	zero,zero,0x0
     af0:	8c420000 	lw	v0,0(v0)
     af4:	87c4001c 	lh	a0,28(s8)
     af8:	8fc30014 	lw	v1,20(s8)
     afc:	00000000 	sll	zero,zero,0x0
     b00:	84630000 	lh	v1,0(v1)
     b04:	00000000 	sll	zero,zero,0x0
     b08:	00830018 	mult	a0,v1
     b0c:	00001812 	mflo	v1
     b10:	00431821 	addu	v1,v0,v1
     b14:	8fc20034 	lw	v0,52(s8)
     b18:	00000000 	sll	zero,zero,0x0
     b1c:	ac430000 	sw	v1,0(v0)
    STEP (1);
     b20:	8fc20034 	lw	v0,52(s8)
     b24:	00000000 	sll	zero,zero,0x0
     b28:	24420004 	addiu	v0,v0,4
     b2c:	8fc30034 	lw	v1,52(s8)
     b30:	00000000 	sll	zero,zero,0x0
     b34:	24630004 	addiu	v1,v1,4
     b38:	8c630000 	lw	v1,0(v1)
     b3c:	87c5001c 	lh	a1,28(s8)
     b40:	8fc40014 	lw	a0,20(s8)
     b44:	00000000 	sll	zero,zero,0x0
     b48:	2484fffe 	addiu	a0,a0,-2
     b4c:	84840000 	lh	a0,0(a0)
     b50:	00000000 	sll	zero,zero,0x0
     b54:	00a40018 	mult	a1,a0
     b58:	00002012 	mflo	a0
     b5c:	00641821 	addu	v1,v1,a0
     b60:	ac430000 	sw	v1,0(v0)
    STEP (2);
     b64:	8fc20034 	lw	v0,52(s8)
     b68:	00000000 	sll	zero,zero,0x0
     b6c:	24420008 	addiu	v0,v0,8
     b70:	8fc30034 	lw	v1,52(s8)
     b74:	00000000 	sll	zero,zero,0x0
     b78:	24630008 	addiu	v1,v1,8
     b7c:	8c630000 	lw	v1,0(v1)
     b80:	87c5001c 	lh	a1,28(s8)
     b84:	8fc40014 	lw	a0,20(s8)
     b88:	00000000 	sll	zero,zero,0x0
     b8c:	2484fffc 	addiu	a0,a0,-4
     b90:	84840000 	lh	a0,0(a0)
     b94:	00000000 	sll	zero,zero,0x0
     b98:	00a40018 	mult	a1,a0
     b9c:	00002012 	mflo	a0
     ba0:	00641821 	addu	v1,v1,a0
     ba4:	ac430000 	sw	v1,0(v0)
    STEP (3);
     ba8:	8fc20034 	lw	v0,52(s8)
     bac:	00000000 	sll	zero,zero,0x0
     bb0:	2442000c 	addiu	v0,v0,12
     bb4:	8fc30034 	lw	v1,52(s8)
     bb8:	00000000 	sll	zero,zero,0x0
     bbc:	2463000c 	addiu	v1,v1,12
     bc0:	8c630000 	lw	v1,0(v1)
     bc4:	87c5001c 	lh	a1,28(s8)
     bc8:	8fc40014 	lw	a0,20(s8)
     bcc:	00000000 	sll	zero,zero,0x0
     bd0:	2484fffa 	addiu	a0,a0,-6
     bd4:	84840000 	lh	a0,0(a0)
     bd8:	00000000 	sll	zero,zero,0x0
     bdc:	00a40018 	mult	a1,a0
     be0:	00002012 	mflo	a0
     be4:	00641821 	addu	v1,v1,a0
     be8:	ac430000 	sw	v1,0(v0)
    STEP (4);
     bec:	8fc20034 	lw	v0,52(s8)
     bf0:	00000000 	sll	zero,zero,0x0
     bf4:	24420010 	addiu	v0,v0,16
     bf8:	8fc30034 	lw	v1,52(s8)
     bfc:	00000000 	sll	zero,zero,0x0
     c00:	24630010 	addiu	v1,v1,16
     c04:	8c630000 	lw	v1,0(v1)
     c08:	87c5001c 	lh	a1,28(s8)
     c0c:	8fc40014 	lw	a0,20(s8)
     c10:	00000000 	sll	zero,zero,0x0
     c14:	2484fff8 	addiu	a0,a0,-8
     c18:	84840000 	lh	a0,0(a0)
     c1c:	00000000 	sll	zero,zero,0x0
     c20:	00a40018 	mult	a1,a0
     c24:	00002012 	mflo	a0
     c28:	00641821 	addu	v1,v1,a0
     c2c:	ac430000 	sw	v1,0(v0)
    STEP (5);
     c30:	8fc20034 	lw	v0,52(s8)
     c34:	00000000 	sll	zero,zero,0x0
     c38:	24420014 	addiu	v0,v0,20
     c3c:	8fc30034 	lw	v1,52(s8)
     c40:	00000000 	sll	zero,zero,0x0
     c44:	24630014 	addiu	v1,v1,20
     c48:	8c630000 	lw	v1,0(v1)
     c4c:	87c5001c 	lh	a1,28(s8)
     c50:	8fc40014 	lw	a0,20(s8)
     c54:	00000000 	sll	zero,zero,0x0
     c58:	2484fff6 	addiu	a0,a0,-10
     c5c:	84840000 	lh	a0,0(a0)
     c60:	00000000 	sll	zero,zero,0x0
     c64:	00a40018 	mult	a1,a0
     c68:	00002012 	mflo	a0
     c6c:	00641821 	addu	v1,v1,a0
     c70:	ac430000 	sw	v1,0(v0)
    NEXTI;
     c74:	8fc20014 	lw	v0,20(s8)
     c78:	00000000 	sll	zero,zero,0x0
     c7c:	24420002 	addiu	v0,v0,2
     c80:	afc20014 	sw	v0,20(s8)
     c84:	8fc20014 	lw	v0,20(s8)
     c88:	00000000 	sll	zero,zero,0x0
     c8c:	94420000 	lhu	v0,0(v0)
     c90:	00000000 	sll	zero,zero,0x0
     c94:	a7c2001c 	sh	v0,28(s8)
    STEP (0);
     c98:	8fc20034 	lw	v0,52(s8)
     c9c:	00000000 	sll	zero,zero,0x0
     ca0:	8c420000 	lw	v0,0(v0)
     ca4:	87c4001c 	lh	a0,28(s8)
     ca8:	8fc30014 	lw	v1,20(s8)
     cac:	00000000 	sll	zero,zero,0x0
     cb0:	84630000 	lh	v1,0(v1)
     cb4:	00000000 	sll	zero,zero,0x0
     cb8:	00830018 	mult	a0,v1
     cbc:	00001812 	mflo	v1
     cc0:	00431821 	addu	v1,v0,v1
     cc4:	8fc20034 	lw	v0,52(s8)
     cc8:	00000000 	sll	zero,zero,0x0
     ccc:	ac430000 	sw	v1,0(v0)
    STEP (1);
     cd0:	8fc20034 	lw	v0,52(s8)
     cd4:	00000000 	sll	zero,zero,0x0
     cd8:	24420004 	addiu	v0,v0,4
     cdc:	8fc30034 	lw	v1,52(s8)
     ce0:	00000000 	sll	zero,zero,0x0
     ce4:	24630004 	addiu	v1,v1,4
     ce8:	8c630000 	lw	v1,0(v1)
     cec:	87c5001c 	lh	a1,28(s8)
     cf0:	8fc40014 	lw	a0,20(s8)
     cf4:	00000000 	sll	zero,zero,0x0
     cf8:	2484fffe 	addiu	a0,a0,-2
     cfc:	84840000 	lh	a0,0(a0)
     d00:	00000000 	sll	zero,zero,0x0
     d04:	00a40018 	mult	a1,a0
     d08:	00002012 	mflo	a0
     d0c:	00641821 	addu	v1,v1,a0
     d10:	ac430000 	sw	v1,0(v0)
    STEP (2);
     d14:	8fc20034 	lw	v0,52(s8)
     d18:	00000000 	sll	zero,zero,0x0
     d1c:	24420008 	addiu	v0,v0,8
     d20:	8fc30034 	lw	v1,52(s8)
     d24:	00000000 	sll	zero,zero,0x0
     d28:	24630008 	addiu	v1,v1,8
     d2c:	8c630000 	lw	v1,0(v1)
     d30:	87c5001c 	lh	a1,28(s8)
     d34:	8fc40014 	lw	a0,20(s8)
     d38:	00000000 	sll	zero,zero,0x0
     d3c:	2484fffc 	addiu	a0,a0,-4
     d40:	84840000 	lh	a0,0(a0)
     d44:	00000000 	sll	zero,zero,0x0
     d48:	00a40018 	mult	a1,a0
     d4c:	00002012 	mflo	a0
     d50:	00641821 	addu	v1,v1,a0
     d54:	ac430000 	sw	v1,0(v0)
    STEP (3);
     d58:	8fc20034 	lw	v0,52(s8)
     d5c:	00000000 	sll	zero,zero,0x0
     d60:	2442000c 	addiu	v0,v0,12
     d64:	8fc30034 	lw	v1,52(s8)
     d68:	00000000 	sll	zero,zero,0x0
     d6c:	2463000c 	addiu	v1,v1,12
     d70:	8c630000 	lw	v1,0(v1)
     d74:	87c5001c 	lh	a1,28(s8)
     d78:	8fc40014 	lw	a0,20(s8)
     d7c:	00000000 	sll	zero,zero,0x0
     d80:	2484fffa 	addiu	a0,a0,-6
     d84:	84840000 	lh	a0,0(a0)
     d88:	00000000 	sll	zero,zero,0x0
     d8c:	00a40018 	mult	a1,a0
     d90:	00002012 	mflo	a0
     d94:	00641821 	addu	v1,v1,a0
     d98:	ac430000 	sw	v1,0(v0)
    STEP (4);
     d9c:	8fc20034 	lw	v0,52(s8)
     da0:	00000000 	sll	zero,zero,0x0
     da4:	24420010 	addiu	v0,v0,16
     da8:	8fc30034 	lw	v1,52(s8)
     dac:	00000000 	sll	zero,zero,0x0
     db0:	24630010 	addiu	v1,v1,16
     db4:	8c630000 	lw	v1,0(v1)
     db8:	87c5001c 	lh	a1,28(s8)
     dbc:	8fc40014 	lw	a0,20(s8)
     dc0:	00000000 	sll	zero,zero,0x0
     dc4:	2484fff8 	addiu	a0,a0,-8
     dc8:	84840000 	lh	a0,0(a0)
     dcc:	00000000 	sll	zero,zero,0x0
     dd0:	00a40018 	mult	a1,a0
     dd4:	00002012 	mflo	a0
     dd8:	00641821 	addu	v1,v1,a0
     ddc:	ac430000 	sw	v1,0(v0)
    STEP (5);
     de0:	8fc20034 	lw	v0,52(s8)
     de4:	00000000 	sll	zero,zero,0x0
     de8:	24420014 	addiu	v0,v0,20
     dec:	8fc30034 	lw	v1,52(s8)
     df0:	00000000 	sll	zero,zero,0x0
     df4:	24630014 	addiu	v1,v1,20
     df8:	8c630000 	lw	v1,0(v1)
     dfc:	87c5001c 	lh	a1,28(s8)
     e00:	8fc40014 	lw	a0,20(s8)
     e04:	00000000 	sll	zero,zero,0x0
     e08:	2484fff6 	addiu	a0,a0,-10
     e0c:	84840000 	lh	a0,0(a0)
     e10:	00000000 	sll	zero,zero,0x0
     e14:	00a40018 	mult	a1,a0
     e18:	00002012 	mflo	a0
     e1c:	00641821 	addu	v1,v1,a0
     e20:	ac430000 	sw	v1,0(v0)
    STEP (6);
     e24:	8fc20034 	lw	v0,52(s8)
     e28:	00000000 	sll	zero,zero,0x0
     e2c:	24420018 	addiu	v0,v0,24
     e30:	8fc30034 	lw	v1,52(s8)
     e34:	00000000 	sll	zero,zero,0x0
     e38:	24630018 	addiu	v1,v1,24
     e3c:	8c630000 	lw	v1,0(v1)
     e40:	87c5001c 	lh	a1,28(s8)
     e44:	8fc40014 	lw	a0,20(s8)
     e48:	00000000 	sll	zero,zero,0x0
     e4c:	2484fff4 	addiu	a0,a0,-12
     e50:	84840000 	lh	a0,0(a0)
     e54:	00000000 	sll	zero,zero,0x0
     e58:	00a40018 	mult	a1,a0
     e5c:	00002012 	mflo	a0
     e60:	00641821 	addu	v1,v1,a0
     e64:	ac430000 	sw	v1,0(v0)
    NEXTI;
     e68:	8fc20014 	lw	v0,20(s8)
     e6c:	00000000 	sll	zero,zero,0x0
     e70:	24420002 	addiu	v0,v0,2
     e74:	afc20014 	sw	v0,20(s8)
     e78:	8fc20014 	lw	v0,20(s8)
     e7c:	00000000 	sll	zero,zero,0x0
     e80:	94420000 	lhu	v0,0(v0)
     e84:	00000000 	sll	zero,zero,0x0
     e88:	a7c2001c 	sh	v0,28(s8)
    STEP (0);
     e8c:	8fc20034 	lw	v0,52(s8)
     e90:	00000000 	sll	zero,zero,0x0
     e94:	8c420000 	lw	v0,0(v0)
     e98:	87c4001c 	lh	a0,28(s8)
     e9c:	8fc30014 	lw	v1,20(s8)
     ea0:	00000000 	sll	zero,zero,0x0
     ea4:	84630000 	lh	v1,0(v1)
     ea8:	00000000 	sll	zero,zero,0x0
     eac:	00830018 	mult	a0,v1
     eb0:	00001812 	mflo	v1
     eb4:	00431821 	addu	v1,v0,v1
     eb8:	8fc20034 	lw	v0,52(s8)
     ebc:	00000000 	sll	zero,zero,0x0
     ec0:	ac430000 	sw	v1,0(v0)
    STEP (1);
     ec4:	8fc20034 	lw	v0,52(s8)
     ec8:	00000000 	sll	zero,zero,0x0
     ecc:	24420004 	addiu	v0,v0,4
     ed0:	8fc30034 	lw	v1,52(s8)
     ed4:	00000000 	sll	zero,zero,0x0
     ed8:	24630004 	addiu	v1,v1,4
     edc:	8c630000 	lw	v1,0(v1)
     ee0:	87c5001c 	lh	a1,28(s8)
     ee4:	8fc40014 	lw	a0,20(s8)
     ee8:	00000000 	sll	zero,zero,0x0
     eec:	2484fffe 	addiu	a0,a0,-2
     ef0:	84840000 	lh	a0,0(a0)
     ef4:	00000000 	sll	zero,zero,0x0
     ef8:	00a40018 	mult	a1,a0
     efc:	00002012 	mflo	a0
     f00:	00641821 	addu	v1,v1,a0
     f04:	ac430000 	sw	v1,0(v0)
    STEP (2);
     f08:	8fc20034 	lw	v0,52(s8)
     f0c:	00000000 	sll	zero,zero,0x0
     f10:	24420008 	addiu	v0,v0,8
     f14:	8fc30034 	lw	v1,52(s8)
     f18:	00000000 	sll	zero,zero,0x0
     f1c:	24630008 	addiu	v1,v1,8
     f20:	8c630000 	lw	v1,0(v1)
     f24:	87c5001c 	lh	a1,28(s8)
     f28:	8fc40014 	lw	a0,20(s8)
     f2c:	00000000 	sll	zero,zero,0x0
     f30:	2484fffc 	addiu	a0,a0,-4
     f34:	84840000 	lh	a0,0(a0)
     f38:	00000000 	sll	zero,zero,0x0
     f3c:	00a40018 	mult	a1,a0
     f40:	00002012 	mflo	a0
     f44:	00641821 	addu	v1,v1,a0
     f48:	ac430000 	sw	v1,0(v0)
    STEP (3);
     f4c:	8fc20034 	lw	v0,52(s8)
     f50:	00000000 	sll	zero,zero,0x0
     f54:	2442000c 	addiu	v0,v0,12
     f58:	8fc30034 	lw	v1,52(s8)
     f5c:	00000000 	sll	zero,zero,0x0
     f60:	2463000c 	addiu	v1,v1,12
     f64:	8c630000 	lw	v1,0(v1)
     f68:	87c5001c 	lh	a1,28(s8)
     f6c:	8fc40014 	lw	a0,20(s8)
     f70:	00000000 	sll	zero,zero,0x0
     f74:	2484fffa 	addiu	a0,a0,-6
     f78:	84840000 	lh	a0,0(a0)
     f7c:	00000000 	sll	zero,zero,0x0
     f80:	00a40018 	mult	a1,a0
     f84:	00002012 	mflo	a0
     f88:	00641821 	addu	v1,v1,a0
     f8c:	ac430000 	sw	v1,0(v0)
    STEP (4);
     f90:	8fc20034 	lw	v0,52(s8)
     f94:	00000000 	sll	zero,zero,0x0
     f98:	24420010 	addiu	v0,v0,16
     f9c:	8fc30034 	lw	v1,52(s8)
     fa0:	00000000 	sll	zero,zero,0x0
     fa4:	24630010 	addiu	v1,v1,16
     fa8:	8c630000 	lw	v1,0(v1)
     fac:	87c5001c 	lh	a1,28(s8)
     fb0:	8fc40014 	lw	a0,20(s8)
     fb4:	00000000 	sll	zero,zero,0x0
     fb8:	2484fff8 	addiu	a0,a0,-8
     fbc:	84840000 	lh	a0,0(a0)
     fc0:	00000000 	sll	zero,zero,0x0
     fc4:	00a40018 	mult	a1,a0
     fc8:	00002012 	mflo	a0
     fcc:	00641821 	addu	v1,v1,a0
     fd0:	ac430000 	sw	v1,0(v0)
    STEP (5);
     fd4:	8fc20034 	lw	v0,52(s8)
     fd8:	00000000 	sll	zero,zero,0x0
     fdc:	24420014 	addiu	v0,v0,20
     fe0:	8fc30034 	lw	v1,52(s8)
     fe4:	00000000 	sll	zero,zero,0x0
     fe8:	24630014 	addiu	v1,v1,20
     fec:	8c630000 	lw	v1,0(v1)
     ff0:	87c5001c 	lh	a1,28(s8)
     ff4:	8fc40014 	lw	a0,20(s8)
     ff8:	00000000 	sll	zero,zero,0x0
     ffc:	2484fff6 	addiu	a0,a0,-10
    1000:	84840000 	lh	a0,0(a0)
    1004:	00000000 	sll	zero,zero,0x0
    1008:	00a40018 	mult	a1,a0
    100c:	00002012 	mflo	a0
    1010:	00641821 	addu	v1,v1,a0
    1014:	ac430000 	sw	v1,0(v0)
    STEP (6);
    1018:	8fc20034 	lw	v0,52(s8)
    101c:	00000000 	sll	zero,zero,0x0
    1020:	24420018 	addiu	v0,v0,24
    1024:	8fc30034 	lw	v1,52(s8)
    1028:	00000000 	sll	zero,zero,0x0
    102c:	24630018 	addiu	v1,v1,24
    1030:	8c630000 	lw	v1,0(v1)
    1034:	87c5001c 	lh	a1,28(s8)
    1038:	8fc40014 	lw	a0,20(s8)
    103c:	00000000 	sll	zero,zero,0x0
    1040:	2484fff4 	addiu	a0,a0,-12
    1044:	84840000 	lh	a0,0(a0)
    1048:	00000000 	sll	zero,zero,0x0
    104c:	00a40018 	mult	a1,a0
    1050:	00002012 	mflo	a0
    1054:	00641821 	addu	v1,v1,a0
    1058:	ac430000 	sw	v1,0(v0)
    STEP (7);
    105c:	8fc20034 	lw	v0,52(s8)
    1060:	00000000 	sll	zero,zero,0x0
    1064:	2442001c 	addiu	v0,v0,28
    1068:	8fc30034 	lw	v1,52(s8)
    106c:	00000000 	sll	zero,zero,0x0
    1070:	2463001c 	addiu	v1,v1,28
    1074:	8c630000 	lw	v1,0(v1)
    1078:	87c5001c 	lh	a1,28(s8)
    107c:	8fc40014 	lw	a0,20(s8)
    1080:	00000000 	sll	zero,zero,0x0
    1084:	2484fff2 	addiu	a0,a0,-14
    1088:	84840000 	lh	a0,0(a0)
    108c:	00000000 	sll	zero,zero,0x0
    1090:	00a40018 	mult	a1,a0
    1094:	00002012 	mflo	a0
    1098:	00641821 	addu	v1,v1,a0
    109c:	ac430000 	sw	v1,0(v0)

    for (i = 8; i <= 159; i++)
    10a0:	24100008 	addiu	s0,zero,8
    10a4:	080004cb 	j	132c <Autocorrelation+0xe90>
    10a8:	00000000 	sll	zero,zero,0x0
      {

	NEXTI;
    10ac:	8fc20014 	lw	v0,20(s8)
    10b0:	00000000 	sll	zero,zero,0x0
    10b4:	24420002 	addiu	v0,v0,2
    10b8:	afc20014 	sw	v0,20(s8)
    10bc:	8fc20014 	lw	v0,20(s8)
    10c0:	00000000 	sll	zero,zero,0x0
    10c4:	94420000 	lhu	v0,0(v0)
    10c8:	00000000 	sll	zero,zero,0x0
    10cc:	a7c2001c 	sh	v0,28(s8)

	STEP (0);
    10d0:	8fc20034 	lw	v0,52(s8)
    10d4:	00000000 	sll	zero,zero,0x0
    10d8:	8c420000 	lw	v0,0(v0)
    10dc:	87c4001c 	lh	a0,28(s8)
    10e0:	8fc30014 	lw	v1,20(s8)
    10e4:	00000000 	sll	zero,zero,0x0
    10e8:	84630000 	lh	v1,0(v1)
    10ec:	00000000 	sll	zero,zero,0x0
    10f0:	00830018 	mult	a0,v1
    10f4:	00001812 	mflo	v1
    10f8:	00431821 	addu	v1,v0,v1
    10fc:	8fc20034 	lw	v0,52(s8)
    1100:	00000000 	sll	zero,zero,0x0
    1104:	ac430000 	sw	v1,0(v0)
	STEP (1);
    1108:	8fc20034 	lw	v0,52(s8)
    110c:	00000000 	sll	zero,zero,0x0
    1110:	24420004 	addiu	v0,v0,4
    1114:	8fc30034 	lw	v1,52(s8)
    1118:	00000000 	sll	zero,zero,0x0
    111c:	24630004 	addiu	v1,v1,4
    1120:	8c630000 	lw	v1,0(v1)
    1124:	87c5001c 	lh	a1,28(s8)
    1128:	8fc40014 	lw	a0,20(s8)
    112c:	00000000 	sll	zero,zero,0x0
    1130:	2484fffe 	addiu	a0,a0,-2
    1134:	84840000 	lh	a0,0(a0)
    1138:	00000000 	sll	zero,zero,0x0
    113c:	00a40018 	mult	a1,a0
    1140:	00002012 	mflo	a0
    1144:	00641821 	addu	v1,v1,a0
    1148:	ac430000 	sw	v1,0(v0)
	STEP (2);
    114c:	8fc20034 	lw	v0,52(s8)
    1150:	00000000 	sll	zero,zero,0x0
    1154:	24420008 	addiu	v0,v0,8
    1158:	8fc30034 	lw	v1,52(s8)
    115c:	00000000 	sll	zero,zero,0x0
    1160:	24630008 	addiu	v1,v1,8
    1164:	8c630000 	lw	v1,0(v1)
    1168:	87c5001c 	lh	a1,28(s8)
    116c:	8fc40014 	lw	a0,20(s8)
    1170:	00000000 	sll	zero,zero,0x0
    1174:	2484fffc 	addiu	a0,a0,-4
    1178:	84840000 	lh	a0,0(a0)
    117c:	00000000 	sll	zero,zero,0x0
    1180:	00a40018 	mult	a1,a0
    1184:	00002012 	mflo	a0
    1188:	00641821 	addu	v1,v1,a0
    118c:	ac430000 	sw	v1,0(v0)
	STEP (3);
    1190:	8fc20034 	lw	v0,52(s8)
    1194:	00000000 	sll	zero,zero,0x0
    1198:	2442000c 	addiu	v0,v0,12
    119c:	8fc30034 	lw	v1,52(s8)
    11a0:	00000000 	sll	zero,zero,0x0
    11a4:	2463000c 	addiu	v1,v1,12
    11a8:	8c630000 	lw	v1,0(v1)
    11ac:	87c5001c 	lh	a1,28(s8)
    11b0:	8fc40014 	lw	a0,20(s8)
    11b4:	00000000 	sll	zero,zero,0x0
    11b8:	2484fffa 	addiu	a0,a0,-6
    11bc:	84840000 	lh	a0,0(a0)
    11c0:	00000000 	sll	zero,zero,0x0
    11c4:	00a40018 	mult	a1,a0
    11c8:	00002012 	mflo	a0
    11cc:	00641821 	addu	v1,v1,a0
    11d0:	ac430000 	sw	v1,0(v0)
	STEP (4);
    11d4:	8fc20034 	lw	v0,52(s8)
    11d8:	00000000 	sll	zero,zero,0x0
    11dc:	24420010 	addiu	v0,v0,16
    11e0:	8fc30034 	lw	v1,52(s8)
    11e4:	00000000 	sll	zero,zero,0x0
    11e8:	24630010 	addiu	v1,v1,16
    11ec:	8c630000 	lw	v1,0(v1)
    11f0:	87c5001c 	lh	a1,28(s8)
    11f4:	8fc40014 	lw	a0,20(s8)
    11f8:	00000000 	sll	zero,zero,0x0
    11fc:	2484fff8 	addiu	a0,a0,-8
    1200:	84840000 	lh	a0,0(a0)
    1204:	00000000 	sll	zero,zero,0x0
    1208:	00a40018 	mult	a1,a0
    120c:	00002012 	mflo	a0
    1210:	00641821 	addu	v1,v1,a0
    1214:	ac430000 	sw	v1,0(v0)
	STEP (5);
    1218:	8fc20034 	lw	v0,52(s8)
    121c:	00000000 	sll	zero,zero,0x0
    1220:	24420014 	addiu	v0,v0,20
    1224:	8fc30034 	lw	v1,52(s8)
    1228:	00000000 	sll	zero,zero,0x0
    122c:	24630014 	addiu	v1,v1,20
    1230:	8c630000 	lw	v1,0(v1)
    1234:	87c5001c 	lh	a1,28(s8)
    1238:	8fc40014 	lw	a0,20(s8)
    123c:	00000000 	sll	zero,zero,0x0
    1240:	2484fff6 	addiu	a0,a0,-10
    1244:	84840000 	lh	a0,0(a0)
    1248:	00000000 	sll	zero,zero,0x0
    124c:	00a40018 	mult	a1,a0
    1250:	00002012 	mflo	a0
    1254:	00641821 	addu	v1,v1,a0
    1258:	ac430000 	sw	v1,0(v0)
	STEP (6);
    125c:	8fc20034 	lw	v0,52(s8)
    1260:	00000000 	sll	zero,zero,0x0
    1264:	24420018 	addiu	v0,v0,24
    1268:	8fc30034 	lw	v1,52(s8)
    126c:	00000000 	sll	zero,zero,0x0
    1270:	24630018 	addiu	v1,v1,24
    1274:	8c630000 	lw	v1,0(v1)
    1278:	87c5001c 	lh	a1,28(s8)
    127c:	8fc40014 	lw	a0,20(s8)
    1280:	00000000 	sll	zero,zero,0x0
    1284:	2484fff4 	addiu	a0,a0,-12
    1288:	84840000 	lh	a0,0(a0)
    128c:	00000000 	sll	zero,zero,0x0
    1290:	00a40018 	mult	a1,a0
    1294:	00002012 	mflo	a0
    1298:	00641821 	addu	v1,v1,a0
    129c:	ac430000 	sw	v1,0(v0)
	STEP (7);
    12a0:	8fc20034 	lw	v0,52(s8)
    12a4:	00000000 	sll	zero,zero,0x0
    12a8:	2442001c 	addiu	v0,v0,28
    12ac:	8fc30034 	lw	v1,52(s8)
    12b0:	00000000 	sll	zero,zero,0x0
    12b4:	2463001c 	addiu	v1,v1,28
    12b8:	8c630000 	lw	v1,0(v1)
    12bc:	87c5001c 	lh	a1,28(s8)
    12c0:	8fc40014 	lw	a0,20(s8)
    12c4:	00000000 	sll	zero,zero,0x0
    12c8:	2484fff2 	addiu	a0,a0,-14
    12cc:	84840000 	lh	a0,0(a0)
    12d0:	00000000 	sll	zero,zero,0x0
    12d4:	00a40018 	mult	a1,a0
    12d8:	00002012 	mflo	a0
    12dc:	00641821 	addu	v1,v1,a0
    12e0:	ac430000 	sw	v1,0(v0)
	STEP (8);
    12e4:	8fc20034 	lw	v0,52(s8)
    12e8:	00000000 	sll	zero,zero,0x0
    12ec:	24420020 	addiu	v0,v0,32
    12f0:	8fc30034 	lw	v1,52(s8)
    12f4:	00000000 	sll	zero,zero,0x0
    12f8:	24630020 	addiu	v1,v1,32
    12fc:	8c630000 	lw	v1,0(v1)
    1300:	87c5001c 	lh	a1,28(s8)
    1304:	8fc40014 	lw	a0,20(s8)
    1308:	00000000 	sll	zero,zero,0x0
    130c:	2484fff0 	addiu	a0,a0,-16
    1310:	84840000 	lh	a0,0(a0)
    1314:	00000000 	sll	zero,zero,0x0
    1318:	00a40018 	mult	a1,a0
    131c:	00002012 	mflo	a0
    1320:	00641821 	addu	v1,v1,a0
    1324:	ac430000 	sw	v1,0(v0)
    STEP (4);
    STEP (5);
    STEP (6);
    STEP (7);

    for (i = 8; i <= 159; i++)
    1328:	26100001 	addiu	s0,s0,1
    132c:	2a0200a0 	slti	v0,s0,160
    1330:	1440ff5e 	bnez	v0,10ac <Autocorrelation+0xc10>
    1334:	00000000 	sll	zero,zero,0x0
	STEP (6);
	STEP (7);
	STEP (8);
      }

    for (k = 8; k >= 0; k--)
    1338:	24100008 	addiu	s0,zero,8
    133c:	080004e0 	j	1380 <Autocorrelation+0xee4>
    1340:	00000000 	sll	zero,zero,0x0
      L_ACF[k] <<= 1;
    1344:	02001021 	addu	v0,s0,zero
    1348:	00021080 	sll	v0,v0,0x2
    134c:	8fc30034 	lw	v1,52(s8)
    1350:	00000000 	sll	zero,zero,0x0
    1354:	00621021 	addu	v0,v1,v0
    1358:	02001821 	addu	v1,s0,zero
    135c:	00031880 	sll	v1,v1,0x2
    1360:	8fc40034 	lw	a0,52(s8)
    1364:	00000000 	sll	zero,zero,0x0
    1368:	00831821 	addu	v1,a0,v1
    136c:	8c630000 	lw	v1,0(v1)
    1370:	00000000 	sll	zero,zero,0x0
    1374:	00031840 	sll	v1,v1,0x1
    1378:	ac430000 	sw	v1,0(v0)
	STEP (6);
	STEP (7);
	STEP (8);
      }

    for (k = 8; k >= 0; k--)
    137c:	2610ffff 	addiu	s0,s0,-1
    1380:	0601fff0 	bgez	s0,1344 <Autocorrelation+0xea8>
    1384:	00000000 	sll	zero,zero,0x0
      L_ACF[k] <<= 1;

  }
  /*   Rescaling of the array s[0..159]
   */
  if (scalauto > 0)
    1388:	87c20012 	lh	v0,18(s8)
    138c:	00000000 	sll	zero,zero,0x0
    1390:	18400016 	blez	v0,13ec <Autocorrelation+0xf50>
    1394:	00000000 	sll	zero,zero,0x0
    for (k = 159; k >= 0; k--)
    1398:	2410009f 	addiu	s0,zero,159
    139c:	080004f9 	j	13e4 <Autocorrelation+0xf48>
    13a0:	00000000 	sll	zero,zero,0x0
      *s++ <<= scalauto;
    13a4:	8fc20030 	lw	v0,48(s8)
    13a8:	00000000 	sll	zero,zero,0x0
    13ac:	84430000 	lh	v1,0(v0)
    13b0:	00000000 	sll	zero,zero,0x0
    13b4:	00602021 	addu	a0,v1,zero
    13b8:	87c30012 	lh	v1,18(s8)
    13bc:	00000000 	sll	zero,zero,0x0
    13c0:	00641804 	sllv	v1,a0,v1
    13c4:	00031c00 	sll	v1,v1,0x10
    13c8:	00031c03 	sra	v1,v1,0x10
    13cc:	a4430000 	sh	v1,0(v0)
    13d0:	8fc20030 	lw	v0,48(s8)
    13d4:	00000000 	sll	zero,zero,0x0
    13d8:	24420002 	addiu	v0,v0,2
    13dc:	afc20030 	sw	v0,48(s8)

  }
  /*   Rescaling of the array s[0..159]
   */
  if (scalauto > 0)
    for (k = 159; k >= 0; k--)
    13e0:	2610ffff 	addiu	s0,s0,-1
    13e4:	0601ffef 	bgez	s0,13a4 <Autocorrelation+0xf08>
    13e8:	00000000 	sll	zero,zero,0x0
      *s++ <<= scalauto;
}
    13ec:	03c0e821 	addu	sp,s8,zero
    13f0:	8fbf002c 	lw	ra,44(sp)
    13f4:	8fbe0028 	lw	s8,40(sp)
    13f8:	8fb10024 	lw	s1,36(sp)
    13fc:	8fb00020 	lw	s0,32(sp)
    1400:	27bd0030 	addiu	sp,sp,48
    1404:	03e00008 	jr	ra
    1408:	00000000 	sll	zero,zero,0x0

0000140c <Reflection_coefficients>:
/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
			 register word * r /* 0...7        OUT     */ )
{
    140c:	27bdff98 	addiu	sp,sp,-104
    1410:	afbf0064 	sw	ra,100(sp)
    1414:	afbe0060 	sw	s8,96(sp)
    1418:	afb3005c 	sw	s3,92(sp)
    141c:	afb20058 	sw	s2,88(sp)
    1420:	afb10054 	sw	s1,84(sp)
    1424:	afb00050 	sw	s0,80(sp)
    1428:	03a0f021 	addu	s8,sp,zero
    142c:	afc40068 	sw	a0,104(s8)
    1430:	00a08821 	addu	s1,a1,zero
  word K[9];			/* 2..8 */

  /*  Schur recursion with 16 bits arithmetic.
   */

  if (L_ACF[0] == 0)
    1434:	8fc20068 	lw	v0,104(s8)
    1438:	00000000 	sll	zero,zero,0x0
    143c:	8c420000 	lw	v0,0(v0)
    1440:	00000000 	sll	zero,zero,0x0
    1444:	1440000b 	bnez	v0,1474 <Reflection_coefficients+0x68>
    1448:	00000000 	sll	zero,zero,0x0
    {
      for (i = 8; i > 0; i--)
    144c:	24100008 	addiu	s0,zero,8
    1450:	08000519 	j	1464 <Reflection_coefficients+0x58>
    1454:	00000000 	sll	zero,zero,0x0
	*r++ = 0;
    1458:	a6200000 	sh	zero,0(s1)
    145c:	26310002 	addiu	s1,s1,2
  /*  Schur recursion with 16 bits arithmetic.
   */

  if (L_ACF[0] == 0)
    {
      for (i = 8; i > 0; i--)
    1460:	2610ffff 	addiu	s0,s0,-1
    1464:	1e00fffc 	bgtz	s0,1458 <Reflection_coefficients+0x4c>
    1468:	00000000 	sll	zero,zero,0x0
	*r++ = 0;
      return;
    146c:	080005e6 	j	1798 <Reflection_coefficients+0x38c>
    1470:	00000000 	sll	zero,zero,0x0
    }

  temp = gsm_norm (L_ACF[0]);
    1474:	8fc20068 	lw	v0,104(s8)
    1478:	00000000 	sll	zero,zero,0x0
    147c:	8c420000 	lw	v0,0(v0)
    1480:	00000000 	sll	zero,zero,0x0
    1484:	00402021 	addu	a0,v0,zero
    1488:	0c000000 	jal	0 <gsm_add>
    148c:	00000000 	sll	zero,zero,0x0
    1490:	00409021 	addu	s2,v0,zero
  for (i = 0; i <= 8; i++)
    1494:	00008021 	addu	s0,zero,zero
    1498:	08000538 	j	14e0 <Reflection_coefficients+0xd4>
    149c:	00000000 	sll	zero,zero,0x0
    ACF[i] = SASR (L_ACF[i] << temp, 16);
    14a0:	02001021 	addu	v0,s0,zero
    14a4:	00021080 	sll	v0,v0,0x2
    14a8:	8fc30068 	lw	v1,104(s8)
    14ac:	00000000 	sll	zero,zero,0x0
    14b0:	00621021 	addu	v0,v1,v0
    14b4:	8c430000 	lw	v1,0(v0)
    14b8:	02401021 	addu	v0,s2,zero
    14bc:	00431004 	sllv	v0,v1,v0
    14c0:	00021403 	sra	v0,v0,0x10
    14c4:	00021c00 	sll	v1,v0,0x10
    14c8:	00031c03 	sra	v1,v1,0x10
    14cc:	00101040 	sll	v0,s0,0x1
    14d0:	27c40010 	addiu	a0,s8,16
    14d4:	00821021 	addu	v0,a0,v0
    14d8:	a4430000 	sh	v1,0(v0)
	*r++ = 0;
      return;
    }

  temp = gsm_norm (L_ACF[0]);
  for (i = 0; i <= 8; i++)
    14dc:	26100001 	addiu	s0,s0,1
    14e0:	2a020009 	slti	v0,s0,9
    14e4:	1440ffee 	bnez	v0,14a0 <Reflection_coefficients+0x94>
    14e8:	00000000 	sll	zero,zero,0x0
    ACF[i] = SASR (L_ACF[i] << temp, 16);

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    14ec:	24100001 	addiu	s0,zero,1
    14f0:	08000547 	j	151c <Reflection_coefficients+0x110>
    14f4:	00000000 	sll	zero,zero,0x0
    K[i] = ACF[i];
    14f8:	00101040 	sll	v0,s0,0x1
    14fc:	27c30010 	addiu	v1,s8,16
    1500:	00621021 	addu	v0,v1,v0
    1504:	84430000 	lh	v1,0(v0)
    1508:	00101040 	sll	v0,s0,0x1
    150c:	27c40010 	addiu	a0,s8,16
    1510:	00821021 	addu	v0,a0,v0
    1514:	a4430028 	sh	v1,40(v0)
    ACF[i] = SASR (L_ACF[i] << temp, 16);

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    1518:	26100001 	addiu	s0,s0,1
    151c:	2a020008 	slti	v0,s0,8
    1520:	1440fff5 	bnez	v0,14f8 <Reflection_coefficients+0xec>
    1524:	00000000 	sll	zero,zero,0x0
    K[i] = ACF[i];
  for (i = 0; i <= 8; i++)
    1528:	00008021 	addu	s0,zero,zero
    152c:	08000556 	j	1558 <Reflection_coefficients+0x14c>
    1530:	00000000 	sll	zero,zero,0x0
    P[i] = ACF[i];
    1534:	00101040 	sll	v0,s0,0x1
    1538:	27c30010 	addiu	v1,s8,16
    153c:	00621021 	addu	v0,v1,v0
    1540:	84430000 	lh	v1,0(v0)
    1544:	00101040 	sll	v0,s0,0x1
    1548:	27c40010 	addiu	a0,s8,16
    154c:	00821021 	addu	v0,a0,v0
    1550:	a4430014 	sh	v1,20(v0)
  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
  for (i = 0; i <= 8; i++)
    1554:	26100001 	addiu	s0,s0,1
    1558:	2a020009 	slti	v0,s0,9
    155c:	1440fff5 	bnez	v0,1534 <Reflection_coefficients+0x128>
    1560:	00000000 	sll	zero,zero,0x0
    P[i] = ACF[i];

  /*   Compute reflection coefficients
   */
  for (n = 1; n <= 8; n++, r++)
    1564:	24130001 	addiu	s3,zero,1
    1568:	080005e0 	j	1780 <Reflection_coefficients+0x374>
    156c:	00000000 	sll	zero,zero,0x0
    {

      temp = P[1];
    1570:	87d20026 	lh	s2,38(s8)
    1574:	00000000 	sll	zero,zero,0x0
      temp = GSM_ABS (temp);
    1578:	02401021 	addu	v0,s2,zero
    157c:	00402021 	addu	a0,v0,zero
    1580:	0c000000 	jal	0 <gsm_add>
    1584:	00000000 	sll	zero,zero,0x0
    1588:	00409021 	addu	s2,v0,zero
      if (P[0] < temp)
    158c:	87c20024 	lh	v0,36(s8)
    1590:	00000000 	sll	zero,zero,0x0
    1594:	0052102a 	slt	v0,v0,s2
    1598:	1040000c 	beqz	v0,15cc <Reflection_coefficients+0x1c0>
    159c:	00000000 	sll	zero,zero,0x0
	{
	  for (i = n; i <= 8; i++)
    15a0:	02608021 	addu	s0,s3,zero
    15a4:	0800056e 	j	15b8 <Reflection_coefficients+0x1ac>
    15a8:	00000000 	sll	zero,zero,0x0
	    *r++ = 0;
    15ac:	a6200000 	sh	zero,0(s1)
    15b0:	26310002 	addiu	s1,s1,2

      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
    15b4:	26100001 	addiu	s0,s0,1
    15b8:	2a020009 	slti	v0,s0,9
    15bc:	1440fffb 	bnez	v0,15ac <Reflection_coefficients+0x1a0>
    15c0:	00000000 	sll	zero,zero,0x0
	    *r++ = 0;
	  return;
    15c4:	080005e6 	j	1798 <Reflection_coefficients+0x38c>
    15c8:	00000000 	sll	zero,zero,0x0
	}

      *r = gsm_div (temp, P[0]);
    15cc:	02401821 	addu	v1,s2,zero
    15d0:	87c20024 	lh	v0,36(s8)
    15d4:	00602021 	addu	a0,v1,zero
    15d8:	00402821 	addu	a1,v0,zero
    15dc:	0c000000 	jal	0 <gsm_add>
    15e0:	00000000 	sll	zero,zero,0x0
    15e4:	a6220000 	sh	v0,0(s1)

      if (P[1] > 0)
    15e8:	87c20026 	lh	v0,38(s8)
    15ec:	00000000 	sll	zero,zero,0x0
    15f0:	18400009 	blez	v0,1618 <Reflection_coefficients+0x20c>
    15f4:	00000000 	sll	zero,zero,0x0
	*r = -*r;		/* r[n] = sub(0, r[n]) */
    15f8:	86220000 	lh	v0,0(s1)
    15fc:	00000000 	sll	zero,zero,0x0
    1600:	3042ffff 	andi	v0,v0,0xffff
    1604:	00021023 	negu	v0,v0
    1608:	3042ffff 	andi	v0,v0,0xffff
    160c:	00021400 	sll	v0,v0,0x10
    1610:	00021403 	sra	v0,v0,0x10
    1614:	a6220000 	sh	v0,0(s1)
      if (n == 8)
    1618:	24020008 	addiu	v0,zero,8
    161c:	1262005d 	beq	s3,v0,1794 <Reflection_coefficients+0x388>
    1620:	00000000 	sll	zero,zero,0x0
	return;

      /*  Schur recursion
       */
      temp = GSM_MULT_R (P[1], *r);
    1624:	87c20026 	lh	v0,38(s8)
    1628:	00000000 	sll	zero,zero,0x0
    162c:	00401821 	addu	v1,v0,zero
    1630:	86220000 	lh	v0,0(s1)
    1634:	00602021 	addu	a0,v1,zero
    1638:	00402821 	addu	a1,v0,zero
    163c:	0c000000 	jal	0 <gsm_add>
    1640:	00000000 	sll	zero,zero,0x0
    1644:	00409021 	addu	s2,v0,zero
      P[0] = GSM_ADD (P[0], temp);
    1648:	87c20024 	lh	v0,36(s8)
    164c:	00000000 	sll	zero,zero,0x0
    1650:	00401821 	addu	v1,v0,zero
    1654:	02401021 	addu	v0,s2,zero
    1658:	00602021 	addu	a0,v1,zero
    165c:	00402821 	addu	a1,v0,zero
    1660:	0c000000 	jal	0 <gsm_add>
    1664:	00000000 	sll	zero,zero,0x0
    1668:	a7c20024 	sh	v0,36(s8)

      for (m = 1; m <= 8 - n; m++)
    166c:	24100001 	addiu	s0,zero,1
    1670:	080005d9 	j	1764 <Reflection_coefficients+0x358>
    1674:	00000000 	sll	zero,zero,0x0
	{
	  temp = GSM_MULT_R (K[m], *r);
    1678:	00101040 	sll	v0,s0,0x1
    167c:	27c30010 	addiu	v1,s8,16
    1680:	00621021 	addu	v0,v1,v0
    1684:	84420028 	lh	v0,40(v0)
    1688:	00000000 	sll	zero,zero,0x0
    168c:	00401821 	addu	v1,v0,zero
    1690:	86220000 	lh	v0,0(s1)
    1694:	00602021 	addu	a0,v1,zero
    1698:	00402821 	addu	a1,v0,zero
    169c:	0c000000 	jal	0 <gsm_add>
    16a0:	00000000 	sll	zero,zero,0x0
    16a4:	00409021 	addu	s2,v0,zero
	  P[m] = GSM_ADD (P[m + 1], temp);
    16a8:	26020001 	addiu	v0,s0,1
    16ac:	00021040 	sll	v0,v0,0x1
    16b0:	27c30010 	addiu	v1,s8,16
    16b4:	00621021 	addu	v0,v1,v0
    16b8:	84420014 	lh	v0,20(v0)
    16bc:	00000000 	sll	zero,zero,0x0
    16c0:	00401821 	addu	v1,v0,zero
    16c4:	02401021 	addu	v0,s2,zero
    16c8:	00602021 	addu	a0,v1,zero
    16cc:	00402821 	addu	a1,v0,zero
    16d0:	0c000000 	jal	0 <gsm_add>
    16d4:	00000000 	sll	zero,zero,0x0
    16d8:	00401821 	addu	v1,v0,zero
    16dc:	00101040 	sll	v0,s0,0x1
    16e0:	27c40010 	addiu	a0,s8,16
    16e4:	00821021 	addu	v0,a0,v0
    16e8:	a4430014 	sh	v1,20(v0)

	  temp = GSM_MULT_R (P[m + 1], *r);
    16ec:	26020001 	addiu	v0,s0,1
    16f0:	00021040 	sll	v0,v0,0x1
    16f4:	27c30010 	addiu	v1,s8,16
    16f8:	00621021 	addu	v0,v1,v0
    16fc:	84420014 	lh	v0,20(v0)
    1700:	00000000 	sll	zero,zero,0x0
    1704:	00401821 	addu	v1,v0,zero
    1708:	86220000 	lh	v0,0(s1)
    170c:	00602021 	addu	a0,v1,zero
    1710:	00402821 	addu	a1,v0,zero
    1714:	0c000000 	jal	0 <gsm_add>
    1718:	00000000 	sll	zero,zero,0x0
    171c:	00409021 	addu	s2,v0,zero
	  K[m] = GSM_ADD (K[m], temp);
    1720:	00101040 	sll	v0,s0,0x1
    1724:	27c30010 	addiu	v1,s8,16
    1728:	00621021 	addu	v0,v1,v0
    172c:	84420028 	lh	v0,40(v0)
    1730:	00000000 	sll	zero,zero,0x0
    1734:	00401821 	addu	v1,v0,zero
    1738:	02401021 	addu	v0,s2,zero
    173c:	00602021 	addu	a0,v1,zero
    1740:	00402821 	addu	a1,v0,zero
    1744:	0c000000 	jal	0 <gsm_add>
    1748:	00000000 	sll	zero,zero,0x0
    174c:	00401821 	addu	v1,v0,zero
    1750:	00101040 	sll	v0,s0,0x1
    1754:	27c40010 	addiu	a0,s8,16
    1758:	00821021 	addu	v0,a0,v0
    175c:	a4430028 	sh	v1,40(v0)
      /*  Schur recursion
       */
      temp = GSM_MULT_R (P[1], *r);
      P[0] = GSM_ADD (P[0], temp);

      for (m = 1; m <= 8 - n; m++)
    1760:	26100001 	addiu	s0,s0,1
    1764:	24020008 	addiu	v0,zero,8
    1768:	00531023 	subu	v0,v0,s3
    176c:	0050102a 	slt	v0,v0,s0
    1770:	1040ffc1 	beqz	v0,1678 <Reflection_coefficients+0x26c>
    1774:	00000000 	sll	zero,zero,0x0
  for (i = 0; i <= 8; i++)
    P[i] = ACF[i];

  /*   Compute reflection coefficients
   */
  for (n = 1; n <= 8; n++, r++)
    1778:	26730001 	addiu	s3,s3,1
    177c:	26310002 	addiu	s1,s1,2
    1780:	2a620009 	slti	v0,s3,9
    1784:	1440ff7a 	bnez	v0,1570 <Reflection_coefficients+0x164>
    1788:	00000000 	sll	zero,zero,0x0
    178c:	080005e6 	j	1798 <Reflection_coefficients+0x38c>
    1790:	00000000 	sll	zero,zero,0x0
      *r = gsm_div (temp, P[0]);

      if (P[1] > 0)
	*r = -*r;		/* r[n] = sub(0, r[n]) */
      if (n == 8)
	return;
    1794:	00000000 	sll	zero,zero,0x0

	  temp = GSM_MULT_R (P[m + 1], *r);
	  K[m] = GSM_ADD (K[m], temp);
	}
    }
}
    1798:	03c0e821 	addu	sp,s8,zero
    179c:	8fbf0064 	lw	ra,100(sp)
    17a0:	8fbe0060 	lw	s8,96(sp)
    17a4:	8fb3005c 	lw	s3,92(sp)
    17a8:	8fb20058 	lw	s2,88(sp)
    17ac:	8fb10054 	lw	s1,84(sp)
    17b0:	8fb00050 	lw	s0,80(sp)
    17b4:	27bd0068 	addiu	sp,sp,104
    17b8:	03e00008 	jr	ra
    17bc:	00000000 	sll	zero,zero,0x0

000017c0 <Transformation_to_Log_Area_Ratios>:
 *
 *  r[..]   = integer( real_r[..]*32768. ); -1 <= real_r < 1.
 *  LAR[..] = integer( real_LAR[..] * 16384 );
 *  with -1.625 <= real_LAR <= 1.625
 */
{
    17c0:	27bdffd8 	addiu	sp,sp,-40
    17c4:	afbf0024 	sw	ra,36(sp)
    17c8:	afbe0020 	sw	s8,32(sp)
    17cc:	afb2001c 	sw	s2,28(sp)
    17d0:	afb10018 	sw	s1,24(sp)
    17d4:	afb00014 	sw	s0,20(sp)
    17d8:	03a0f021 	addu	s8,sp,zero
    17dc:	00808821 	addu	s1,a0,zero
  register int i;


  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    17e0:	24120001 	addiu	s2,zero,1
    17e4:	0800062c 	j	18b0 <Transformation_to_Log_Area_Ratios+0xf0>
    17e8:	00000000 	sll	zero,zero,0x0
    {

      temp = *r;
    17ec:	86300000 	lh	s0,0(s1)
    17f0:	00000000 	sll	zero,zero,0x0
      temp = GSM_ABS (temp);
    17f4:	02001021 	addu	v0,s0,zero
    17f8:	00402021 	addu	a0,v0,zero
    17fc:	0c000000 	jal	0 <gsm_add>
    1800:	00000000 	sll	zero,zero,0x0
    1804:	00408021 	addu	s0,v0,zero

      if (temp < 22118)
    1808:	2a025666 	slti	v0,s0,22118
    180c:	10400006 	beqz	v0,1828 <Transformation_to_Log_Area_Ratios+0x68>
    1810:	00000000 	sll	zero,zero,0x0
	{
	  temp >>= 1;
    1814:	00101043 	sra	v0,s0,0x1
    1818:	00028400 	sll	s0,v0,0x10
    181c:	00108403 	sra	s0,s0,0x10
    1820:	0800061d 	j	1874 <Transformation_to_Log_Area_Ratios+0xb4>
    1824:	00000000 	sll	zero,zero,0x0
	}
      else if (temp < 31130)
    1828:	2a02799a 	slti	v0,s0,31130
    182c:	10400008 	beqz	v0,1850 <Transformation_to_Log_Area_Ratios+0x90>
    1830:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    1834:	3202ffff 	andi	v0,s0,0xffff
    1838:	2442d4cd 	addiu	v0,v0,-11059
    183c:	3042ffff 	andi	v0,v0,0xffff
    1840:	00028400 	sll	s0,v0,0x10
    1844:	00108403 	sra	s0,s0,0x10
    1848:	0800061d 	j	1874 <Transformation_to_Log_Area_Ratios+0xb4>
    184c:	00000000 	sll	zero,zero,0x0
	}
      else
	{
	  temp -= 26112;
    1850:	3202ffff 	andi	v0,s0,0xffff
    1854:	24429a00 	addiu	v0,v0,-26112
    1858:	3042ffff 	andi	v0,v0,0xffff
    185c:	00028400 	sll	s0,v0,0x10
    1860:	00108403 	sra	s0,s0,0x10
	  temp <<= 2;
    1864:	02001021 	addu	v0,s0,zero
    1868:	00021080 	sll	v0,v0,0x2
    186c:	00028400 	sll	s0,v0,0x10
    1870:	00108403 	sra	s0,s0,0x10
	}

      *r = *r < 0 ? -temp : temp;
    1874:	86220000 	lh	v0,0(s1)
    1878:	00000000 	sll	zero,zero,0x0
    187c:	04410008 	bgez	v0,18a0 <Transformation_to_Log_Area_Ratios+0xe0>
    1880:	00000000 	sll	zero,zero,0x0
    1884:	3202ffff 	andi	v0,s0,0xffff
    1888:	00021023 	negu	v0,v0
    188c:	3042ffff 	andi	v0,v0,0xffff
    1890:	00021400 	sll	v0,v0,0x10
    1894:	00021403 	sra	v0,v0,0x10
    1898:	08000629 	j	18a4 <Transformation_to_Log_Area_Ratios+0xe4>
    189c:	00000000 	sll	zero,zero,0x0
    18a0:	02001021 	addu	v0,s0,zero
    18a4:	a6220000 	sh	v0,0(s1)
  register int i;


  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    18a8:	26520001 	addiu	s2,s2,1
    18ac:	26310002 	addiu	s1,s1,2
    18b0:	2a420009 	slti	v0,s2,9
    18b4:	1440ffcd 	bnez	v0,17ec <Transformation_to_Log_Area_Ratios+0x2c>
    18b8:	00000000 	sll	zero,zero,0x0
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    }
}
    18bc:	03c0e821 	addu	sp,s8,zero
    18c0:	8fbf0024 	lw	ra,36(sp)
    18c4:	8fbe0020 	lw	s8,32(sp)
    18c8:	8fb2001c 	lw	s2,28(sp)
    18cc:	8fb10018 	lw	s1,24(sp)
    18d0:	8fb00014 	lw	s0,20(sp)
    18d4:	27bd0028 	addiu	sp,sp,40
    18d8:	03e00008 	jr	ra
    18dc:	00000000 	sll	zero,zero,0x0

000018e0 <Quantization_and_coding>:

/* 4.2.7 */

void
Quantization_and_coding (register word * LAR /* [0..7]       IN/OUT  */ )
{
    18e0:	27bdffe0 	addiu	sp,sp,-32
    18e4:	afbf001c 	sw	ra,28(sp)
    18e8:	afbe0018 	sw	s8,24(sp)
    18ec:	afb10014 	sw	s1,20(sp)
    18f0:	afb00010 	sw	s0,16(sp)
    18f4:	03a0f021 	addu	s8,sp,zero
    18f8:	00808821 	addu	s1,a0,zero
		temp = GSM_ADD(  temp, 256 );	\
		temp = SASR(     temp,   9 );	\
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
    18fc:	86220000 	lh	v0,0(s1)
    1900:	24045000 	addiu	a0,zero,20480
    1904:	00402821 	addu	a1,v0,zero
    1908:	0c000000 	jal	0 <gsm_add>
    190c:	00000000 	sll	zero,zero,0x0
    1910:	00408021 	addu	s0,v0,zero
    1914:	02001021 	addu	v0,s0,zero
    1918:	00402021 	addu	a0,v0,zero
    191c:	00002821 	addu	a1,zero,zero
    1920:	0c000000 	jal	0 <gsm_add>
    1924:	00000000 	sll	zero,zero,0x0
    1928:	00408021 	addu	s0,v0,zero
    192c:	02001021 	addu	v0,s0,zero
    1930:	00402021 	addu	a0,v0,zero
    1934:	24050100 	addiu	a1,zero,256
    1938:	0c000000 	jal	0 <gsm_add>
    193c:	00000000 	sll	zero,zero,0x0
    1940:	00408021 	addu	s0,v0,zero
    1944:	00101243 	sra	v0,s0,0x9
    1948:	00028400 	sll	s0,v0,0x10
    194c:	00108403 	sra	s0,s0,0x10
    1950:	2a020020 	slti	v0,s0,32
    1954:	1040000e 	beqz	v0,1990 <Quantization_and_coding+0xb0>
    1958:	00000000 	sll	zero,zero,0x0
    195c:	2a02ffe0 	slti	v0,s0,-32
    1960:	14400008 	bnez	v0,1984 <Quantization_and_coding+0xa4>
    1964:	00000000 	sll	zero,zero,0x0
    1968:	3202ffff 	andi	v0,s0,0xffff
    196c:	24420020 	addiu	v0,v0,32
    1970:	3042ffff 	andi	v0,v0,0xffff
    1974:	00021400 	sll	v0,v0,0x10
    1978:	00021403 	sra	v0,v0,0x10
    197c:	08000662 	j	1988 <Quantization_and_coding+0xa8>
    1980:	00000000 	sll	zero,zero,0x0
    1984:	00001021 	addu	v0,zero,zero
    1988:	08000665 	j	1994 <Quantization_and_coding+0xb4>
    198c:	00000000 	sll	zero,zero,0x0
    1990:	2402003f 	addiu	v0,zero,63
    1994:	a6220000 	sh	v0,0(s1)
    1998:	26310002 	addiu	s1,s1,2
  STEP (20480, 0, 31, -32);
    199c:	86220000 	lh	v0,0(s1)
    19a0:	24045000 	addiu	a0,zero,20480
    19a4:	00402821 	addu	a1,v0,zero
    19a8:	0c000000 	jal	0 <gsm_add>
    19ac:	00000000 	sll	zero,zero,0x0
    19b0:	00408021 	addu	s0,v0,zero
    19b4:	02001021 	addu	v0,s0,zero
    19b8:	00402021 	addu	a0,v0,zero
    19bc:	00002821 	addu	a1,zero,zero
    19c0:	0c000000 	jal	0 <gsm_add>
    19c4:	00000000 	sll	zero,zero,0x0
    19c8:	00408021 	addu	s0,v0,zero
    19cc:	02001021 	addu	v0,s0,zero
    19d0:	00402021 	addu	a0,v0,zero
    19d4:	24050100 	addiu	a1,zero,256
    19d8:	0c000000 	jal	0 <gsm_add>
    19dc:	00000000 	sll	zero,zero,0x0
    19e0:	00408021 	addu	s0,v0,zero
    19e4:	00101243 	sra	v0,s0,0x9
    19e8:	00028400 	sll	s0,v0,0x10
    19ec:	00108403 	sra	s0,s0,0x10
    19f0:	2a020020 	slti	v0,s0,32
    19f4:	1040000e 	beqz	v0,1a30 <Quantization_and_coding+0x150>
    19f8:	00000000 	sll	zero,zero,0x0
    19fc:	2a02ffe0 	slti	v0,s0,-32
    1a00:	14400008 	bnez	v0,1a24 <Quantization_and_coding+0x144>
    1a04:	00000000 	sll	zero,zero,0x0
    1a08:	3202ffff 	andi	v0,s0,0xffff
    1a0c:	24420020 	addiu	v0,v0,32
    1a10:	3042ffff 	andi	v0,v0,0xffff
    1a14:	00021400 	sll	v0,v0,0x10
    1a18:	00021403 	sra	v0,v0,0x10
    1a1c:	0800068a 	j	1a28 <Quantization_and_coding+0x148>
    1a20:	00000000 	sll	zero,zero,0x0
    1a24:	00001021 	addu	v0,zero,zero
    1a28:	0800068d 	j	1a34 <Quantization_and_coding+0x154>
    1a2c:	00000000 	sll	zero,zero,0x0
    1a30:	2402003f 	addiu	v0,zero,63
    1a34:	a6220000 	sh	v0,0(s1)
    1a38:	26310002 	addiu	s1,s1,2
  STEP (20480, 2048, 15, -16);
    1a3c:	86220000 	lh	v0,0(s1)
    1a40:	24045000 	addiu	a0,zero,20480
    1a44:	00402821 	addu	a1,v0,zero
    1a48:	0c000000 	jal	0 <gsm_add>
    1a4c:	00000000 	sll	zero,zero,0x0
    1a50:	00408021 	addu	s0,v0,zero
    1a54:	02001021 	addu	v0,s0,zero
    1a58:	00402021 	addu	a0,v0,zero
    1a5c:	24050800 	addiu	a1,zero,2048
    1a60:	0c000000 	jal	0 <gsm_add>
    1a64:	00000000 	sll	zero,zero,0x0
    1a68:	00408021 	addu	s0,v0,zero
    1a6c:	02001021 	addu	v0,s0,zero
    1a70:	00402021 	addu	a0,v0,zero
    1a74:	24050100 	addiu	a1,zero,256
    1a78:	0c000000 	jal	0 <gsm_add>
    1a7c:	00000000 	sll	zero,zero,0x0
    1a80:	00408021 	addu	s0,v0,zero
    1a84:	00101243 	sra	v0,s0,0x9
    1a88:	00028400 	sll	s0,v0,0x10
    1a8c:	00108403 	sra	s0,s0,0x10
    1a90:	2a020010 	slti	v0,s0,16
    1a94:	1040000e 	beqz	v0,1ad0 <Quantization_and_coding+0x1f0>
    1a98:	00000000 	sll	zero,zero,0x0
    1a9c:	2a02fff0 	slti	v0,s0,-16
    1aa0:	14400008 	bnez	v0,1ac4 <Quantization_and_coding+0x1e4>
    1aa4:	00000000 	sll	zero,zero,0x0
    1aa8:	3202ffff 	andi	v0,s0,0xffff
    1aac:	24420010 	addiu	v0,v0,16
    1ab0:	3042ffff 	andi	v0,v0,0xffff
    1ab4:	00021400 	sll	v0,v0,0x10
    1ab8:	00021403 	sra	v0,v0,0x10
    1abc:	080006b2 	j	1ac8 <Quantization_and_coding+0x1e8>
    1ac0:	00000000 	sll	zero,zero,0x0
    1ac4:	00001021 	addu	v0,zero,zero
    1ac8:	080006b5 	j	1ad4 <Quantization_and_coding+0x1f4>
    1acc:	00000000 	sll	zero,zero,0x0
    1ad0:	2402001f 	addiu	v0,zero,31
    1ad4:	a6220000 	sh	v0,0(s1)
    1ad8:	26310002 	addiu	s1,s1,2
  STEP (20480, -2560, 15, -16);
    1adc:	86220000 	lh	v0,0(s1)
    1ae0:	24045000 	addiu	a0,zero,20480
    1ae4:	00402821 	addu	a1,v0,zero
    1ae8:	0c000000 	jal	0 <gsm_add>
    1aec:	00000000 	sll	zero,zero,0x0
    1af0:	00408021 	addu	s0,v0,zero
    1af4:	02001021 	addu	v0,s0,zero
    1af8:	00402021 	addu	a0,v0,zero
    1afc:	2405f600 	addiu	a1,zero,-2560
    1b00:	0c000000 	jal	0 <gsm_add>
    1b04:	00000000 	sll	zero,zero,0x0
    1b08:	00408021 	addu	s0,v0,zero
    1b0c:	02001021 	addu	v0,s0,zero
    1b10:	00402021 	addu	a0,v0,zero
    1b14:	24050100 	addiu	a1,zero,256
    1b18:	0c000000 	jal	0 <gsm_add>
    1b1c:	00000000 	sll	zero,zero,0x0
    1b20:	00408021 	addu	s0,v0,zero
    1b24:	00101243 	sra	v0,s0,0x9
    1b28:	00028400 	sll	s0,v0,0x10
    1b2c:	00108403 	sra	s0,s0,0x10
    1b30:	2a020010 	slti	v0,s0,16
    1b34:	1040000e 	beqz	v0,1b70 <Quantization_and_coding+0x290>
    1b38:	00000000 	sll	zero,zero,0x0
    1b3c:	2a02fff0 	slti	v0,s0,-16
    1b40:	14400008 	bnez	v0,1b64 <Quantization_and_coding+0x284>
    1b44:	00000000 	sll	zero,zero,0x0
    1b48:	3202ffff 	andi	v0,s0,0xffff
    1b4c:	24420010 	addiu	v0,v0,16
    1b50:	3042ffff 	andi	v0,v0,0xffff
    1b54:	00021400 	sll	v0,v0,0x10
    1b58:	00021403 	sra	v0,v0,0x10
    1b5c:	080006da 	j	1b68 <Quantization_and_coding+0x288>
    1b60:	00000000 	sll	zero,zero,0x0
    1b64:	00001021 	addu	v0,zero,zero
    1b68:	080006dd 	j	1b74 <Quantization_and_coding+0x294>
    1b6c:	00000000 	sll	zero,zero,0x0
    1b70:	2402001f 	addiu	v0,zero,31
    1b74:	a6220000 	sh	v0,0(s1)
    1b78:	26310002 	addiu	s1,s1,2

  STEP (13964, 94, 7, -8);
    1b7c:	86220000 	lh	v0,0(s1)
    1b80:	2404368c 	addiu	a0,zero,13964
    1b84:	00402821 	addu	a1,v0,zero
    1b88:	0c000000 	jal	0 <gsm_add>
    1b8c:	00000000 	sll	zero,zero,0x0
    1b90:	00408021 	addu	s0,v0,zero
    1b94:	02001021 	addu	v0,s0,zero
    1b98:	00402021 	addu	a0,v0,zero
    1b9c:	2405005e 	addiu	a1,zero,94
    1ba0:	0c000000 	jal	0 <gsm_add>
    1ba4:	00000000 	sll	zero,zero,0x0
    1ba8:	00408021 	addu	s0,v0,zero
    1bac:	02001021 	addu	v0,s0,zero
    1bb0:	00402021 	addu	a0,v0,zero
    1bb4:	24050100 	addiu	a1,zero,256
    1bb8:	0c000000 	jal	0 <gsm_add>
    1bbc:	00000000 	sll	zero,zero,0x0
    1bc0:	00408021 	addu	s0,v0,zero
    1bc4:	00101243 	sra	v0,s0,0x9
    1bc8:	00028400 	sll	s0,v0,0x10
    1bcc:	00108403 	sra	s0,s0,0x10
    1bd0:	2a020008 	slti	v0,s0,8
    1bd4:	1040000e 	beqz	v0,1c10 <Quantization_and_coding+0x330>
    1bd8:	00000000 	sll	zero,zero,0x0
    1bdc:	2a02fff8 	slti	v0,s0,-8
    1be0:	14400008 	bnez	v0,1c04 <Quantization_and_coding+0x324>
    1be4:	00000000 	sll	zero,zero,0x0
    1be8:	3202ffff 	andi	v0,s0,0xffff
    1bec:	24420008 	addiu	v0,v0,8
    1bf0:	3042ffff 	andi	v0,v0,0xffff
    1bf4:	00021400 	sll	v0,v0,0x10
    1bf8:	00021403 	sra	v0,v0,0x10
    1bfc:	08000702 	j	1c08 <Quantization_and_coding+0x328>
    1c00:	00000000 	sll	zero,zero,0x0
    1c04:	00001021 	addu	v0,zero,zero
    1c08:	08000705 	j	1c14 <Quantization_and_coding+0x334>
    1c0c:	00000000 	sll	zero,zero,0x0
    1c10:	2402000f 	addiu	v0,zero,15
    1c14:	a6220000 	sh	v0,0(s1)
    1c18:	26310002 	addiu	s1,s1,2
  STEP (15360, -1792, 7, -8);
    1c1c:	86220000 	lh	v0,0(s1)
    1c20:	24043c00 	addiu	a0,zero,15360
    1c24:	00402821 	addu	a1,v0,zero
    1c28:	0c000000 	jal	0 <gsm_add>
    1c2c:	00000000 	sll	zero,zero,0x0
    1c30:	00408021 	addu	s0,v0,zero
    1c34:	02001021 	addu	v0,s0,zero
    1c38:	00402021 	addu	a0,v0,zero
    1c3c:	2405f900 	addiu	a1,zero,-1792
    1c40:	0c000000 	jal	0 <gsm_add>
    1c44:	00000000 	sll	zero,zero,0x0
    1c48:	00408021 	addu	s0,v0,zero
    1c4c:	02001021 	addu	v0,s0,zero
    1c50:	00402021 	addu	a0,v0,zero
    1c54:	24050100 	addiu	a1,zero,256
    1c58:	0c000000 	jal	0 <gsm_add>
    1c5c:	00000000 	sll	zero,zero,0x0
    1c60:	00408021 	addu	s0,v0,zero
    1c64:	00101243 	sra	v0,s0,0x9
    1c68:	00028400 	sll	s0,v0,0x10
    1c6c:	00108403 	sra	s0,s0,0x10
    1c70:	2a020008 	slti	v0,s0,8
    1c74:	1040000e 	beqz	v0,1cb0 <Quantization_and_coding+0x3d0>
    1c78:	00000000 	sll	zero,zero,0x0
    1c7c:	2a02fff8 	slti	v0,s0,-8
    1c80:	14400008 	bnez	v0,1ca4 <Quantization_and_coding+0x3c4>
    1c84:	00000000 	sll	zero,zero,0x0
    1c88:	3202ffff 	andi	v0,s0,0xffff
    1c8c:	24420008 	addiu	v0,v0,8
    1c90:	3042ffff 	andi	v0,v0,0xffff
    1c94:	00021400 	sll	v0,v0,0x10
    1c98:	00021403 	sra	v0,v0,0x10
    1c9c:	0800072a 	j	1ca8 <Quantization_and_coding+0x3c8>
    1ca0:	00000000 	sll	zero,zero,0x0
    1ca4:	00001021 	addu	v0,zero,zero
    1ca8:	0800072d 	j	1cb4 <Quantization_and_coding+0x3d4>
    1cac:	00000000 	sll	zero,zero,0x0
    1cb0:	2402000f 	addiu	v0,zero,15
    1cb4:	a6220000 	sh	v0,0(s1)
    1cb8:	26310002 	addiu	s1,s1,2
  STEP (8534, -341, 3, -4);
    1cbc:	86220000 	lh	v0,0(s1)
    1cc0:	24042156 	addiu	a0,zero,8534
    1cc4:	00402821 	addu	a1,v0,zero
    1cc8:	0c000000 	jal	0 <gsm_add>
    1ccc:	00000000 	sll	zero,zero,0x0
    1cd0:	00408021 	addu	s0,v0,zero
    1cd4:	02001021 	addu	v0,s0,zero
    1cd8:	00402021 	addu	a0,v0,zero
    1cdc:	2405feab 	addiu	a1,zero,-341
    1ce0:	0c000000 	jal	0 <gsm_add>
    1ce4:	00000000 	sll	zero,zero,0x0
    1ce8:	00408021 	addu	s0,v0,zero
    1cec:	02001021 	addu	v0,s0,zero
    1cf0:	00402021 	addu	a0,v0,zero
    1cf4:	24050100 	addiu	a1,zero,256
    1cf8:	0c000000 	jal	0 <gsm_add>
    1cfc:	00000000 	sll	zero,zero,0x0
    1d00:	00408021 	addu	s0,v0,zero
    1d04:	00101243 	sra	v0,s0,0x9
    1d08:	00028400 	sll	s0,v0,0x10
    1d0c:	00108403 	sra	s0,s0,0x10
    1d10:	2a020004 	slti	v0,s0,4
    1d14:	1040000e 	beqz	v0,1d50 <Quantization_and_coding+0x470>
    1d18:	00000000 	sll	zero,zero,0x0
    1d1c:	2a02fffc 	slti	v0,s0,-4
    1d20:	14400008 	bnez	v0,1d44 <Quantization_and_coding+0x464>
    1d24:	00000000 	sll	zero,zero,0x0
    1d28:	3202ffff 	andi	v0,s0,0xffff
    1d2c:	24420004 	addiu	v0,v0,4
    1d30:	3042ffff 	andi	v0,v0,0xffff
    1d34:	00021400 	sll	v0,v0,0x10
    1d38:	00021403 	sra	v0,v0,0x10
    1d3c:	08000752 	j	1d48 <Quantization_and_coding+0x468>
    1d40:	00000000 	sll	zero,zero,0x0
    1d44:	00001021 	addu	v0,zero,zero
    1d48:	08000755 	j	1d54 <Quantization_and_coding+0x474>
    1d4c:	00000000 	sll	zero,zero,0x0
    1d50:	24020007 	addiu	v0,zero,7
    1d54:	a6220000 	sh	v0,0(s1)
    1d58:	26310002 	addiu	s1,s1,2
  STEP (9036, -1144, 3, -4);
    1d5c:	86220000 	lh	v0,0(s1)
    1d60:	2404234c 	addiu	a0,zero,9036
    1d64:	00402821 	addu	a1,v0,zero
    1d68:	0c000000 	jal	0 <gsm_add>
    1d6c:	00000000 	sll	zero,zero,0x0
    1d70:	00408021 	addu	s0,v0,zero
    1d74:	02001021 	addu	v0,s0,zero
    1d78:	00402021 	addu	a0,v0,zero
    1d7c:	2405fb88 	addiu	a1,zero,-1144
    1d80:	0c000000 	jal	0 <gsm_add>
    1d84:	00000000 	sll	zero,zero,0x0
    1d88:	00408021 	addu	s0,v0,zero
    1d8c:	02001021 	addu	v0,s0,zero
    1d90:	00402021 	addu	a0,v0,zero
    1d94:	24050100 	addiu	a1,zero,256
    1d98:	0c000000 	jal	0 <gsm_add>
    1d9c:	00000000 	sll	zero,zero,0x0
    1da0:	00408021 	addu	s0,v0,zero
    1da4:	00101243 	sra	v0,s0,0x9
    1da8:	00028400 	sll	s0,v0,0x10
    1dac:	00108403 	sra	s0,s0,0x10
    1db0:	2a020004 	slti	v0,s0,4
    1db4:	1040000e 	beqz	v0,1df0 <Quantization_and_coding+0x510>
    1db8:	00000000 	sll	zero,zero,0x0
    1dbc:	2a02fffc 	slti	v0,s0,-4
    1dc0:	14400008 	bnez	v0,1de4 <Quantization_and_coding+0x504>
    1dc4:	00000000 	sll	zero,zero,0x0
    1dc8:	3202ffff 	andi	v0,s0,0xffff
    1dcc:	24420004 	addiu	v0,v0,4
    1dd0:	3042ffff 	andi	v0,v0,0xffff
    1dd4:	00021400 	sll	v0,v0,0x10
    1dd8:	00021403 	sra	v0,v0,0x10
    1ddc:	0800077a 	j	1de8 <Quantization_and_coding+0x508>
    1de0:	00000000 	sll	zero,zero,0x0
    1de4:	00001021 	addu	v0,zero,zero
    1de8:	0800077d 	j	1df4 <Quantization_and_coding+0x514>
    1dec:	00000000 	sll	zero,zero,0x0
    1df0:	24020007 	addiu	v0,zero,7
    1df4:	a6220000 	sh	v0,0(s1)
    1df8:	26310002 	addiu	s1,s1,2

#	undef	STEP
}
    1dfc:	03c0e821 	addu	sp,s8,zero
    1e00:	8fbf001c 	lw	ra,28(sp)
    1e04:	8fbe0018 	lw	s8,24(sp)
    1e08:	8fb10014 	lw	s1,20(sp)
    1e0c:	8fb00010 	lw	s0,16(sp)
    1e10:	27bd0020 	addiu	sp,sp,32
    1e14:	03e00008 	jr	ra
    1e18:	00000000 	sll	zero,zero,0x0

00001e1c <Gsm_LPC_Analysis>:

void
Gsm_LPC_Analysis (word * s /* 0..159 signals       IN/OUT  */ ,
		  word * LARc /* 0..7   LARc's        OUT     */ )
{
    1e1c:	27bdffc0 	addiu	sp,sp,-64
    1e20:	afbf003c 	sw	ra,60(sp)
    1e24:	afbe0038 	sw	s8,56(sp)
    1e28:	03a0f021 	addu	s8,sp,zero
    1e2c:	afc40040 	sw	a0,64(s8)
    1e30:	afc50044 	sw	a1,68(s8)
  longword L_ACF[9];

  Autocorrelation (s, L_ACF);
    1e34:	8fc40040 	lw	a0,64(s8)
    1e38:	27c20010 	addiu	v0,s8,16
    1e3c:	00402821 	addu	a1,v0,zero
    1e40:	0c000000 	jal	0 <gsm_add>
    1e44:	00000000 	sll	zero,zero,0x0
  Reflection_coefficients (L_ACF, LARc);
    1e48:	27c20010 	addiu	v0,s8,16
    1e4c:	00402021 	addu	a0,v0,zero
    1e50:	8fc50044 	lw	a1,68(s8)
    1e54:	0c000000 	jal	0 <gsm_add>
    1e58:	00000000 	sll	zero,zero,0x0
  Transformation_to_Log_Area_Ratios (LARc);
    1e5c:	8fc40044 	lw	a0,68(s8)
    1e60:	0c000000 	jal	0 <gsm_add>
    1e64:	00000000 	sll	zero,zero,0x0
  Quantization_and_coding (LARc);
    1e68:	8fc40044 	lw	a0,68(s8)
    1e6c:	0c000000 	jal	0 <gsm_add>
    1e70:	00000000 	sll	zero,zero,0x0
}
    1e74:	03c0e821 	addu	sp,s8,zero
    1e78:	8fbf003c 	lw	ra,60(sp)
    1e7c:	8fbe0038 	lw	s8,56(sp)
    1e80:	27bd0040 	addiu	sp,sp,64
    1e84:	03e00008 	jr	ra
    1e88:	00000000 	sll	zero,zero,0x0

00001e8c <main>:
const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
{
    1e8c:	27bdfe90 	addiu	sp,sp,-368
    1e90:	afbf016c 	sw	ra,364(sp)
    1e94:	afbe0168 	sw	s8,360(sp)
    1e98:	03a0f021 	addu	s8,sp,zero
  int i;
  int main_result;
  word so[N];
  word LARc[M];
      main_result = 0;
    1e9c:	afc00014 	sw	zero,20(s8)

      for (i = 0; i < N; i++)
    1ea0:	afc00010 	sw	zero,16(s8)
    1ea4:	080007bc 	j	1ef0 <main+0x64>
    1ea8:	00000000 	sll	zero,zero,0x0
	so[i] = inData[i];
    1eac:	3c020000 	lui	v0,0x0
    1eb0:	8fc30010 	lw	v1,16(s8)
    1eb4:	00000000 	sll	zero,zero,0x0
    1eb8:	00031840 	sll	v1,v1,0x1
    1ebc:	24420000 	addiu	v0,v0,0
    1ec0:	00621021 	addu	v0,v1,v0
    1ec4:	84430000 	lh	v1,0(v0)
    1ec8:	8fc20010 	lw	v0,16(s8)
    1ecc:	00000000 	sll	zero,zero,0x0
    1ed0:	00021040 	sll	v0,v0,0x1
    1ed4:	27c40010 	addiu	a0,s8,16
    1ed8:	00821021 	addu	v0,a0,v0
    1edc:	a4430008 	sh	v1,8(v0)
  int main_result;
  word so[N];
  word LARc[M];
      main_result = 0;

      for (i = 0; i < N; i++)
    1ee0:	8fc20010 	lw	v0,16(s8)
    1ee4:	00000000 	sll	zero,zero,0x0
    1ee8:	24420001 	addiu	v0,v0,1
    1eec:	afc20010 	sw	v0,16(s8)
    1ef0:	8fc20010 	lw	v0,16(s8)
    1ef4:	00000000 	sll	zero,zero,0x0
    1ef8:	284200a0 	slti	v0,v0,160
    1efc:	1440ffeb 	bnez	v0,1eac <main+0x20>
    1f00:	00000000 	sll	zero,zero,0x0
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);
    1f04:	27c30018 	addiu	v1,s8,24
    1f08:	27c20158 	addiu	v0,s8,344
    1f0c:	00602021 	addu	a0,v1,zero
    1f10:	00402821 	addu	a1,v0,zero
    1f14:	0c000000 	jal	0 <gsm_add>
    1f18:	00000000 	sll	zero,zero,0x0

      for (i = 0; i < N; i++)
    1f1c:	afc00010 	sw	zero,16(s8)
    1f20:	080007e2 	j	1f88 <main+0xfc>
    1f24:	00000000 	sll	zero,zero,0x0
	main_result += (so[i] != outData[i]);
    1f28:	8fc20010 	lw	v0,16(s8)
    1f2c:	00000000 	sll	zero,zero,0x0
    1f30:	00021040 	sll	v0,v0,0x1
    1f34:	27c30010 	addiu	v1,s8,16
    1f38:	00621021 	addu	v0,v1,v0
    1f3c:	84430008 	lh	v1,8(v0)
    1f40:	3c020000 	lui	v0,0x0
    1f44:	8fc40010 	lw	a0,16(s8)
    1f48:	00000000 	sll	zero,zero,0x0
    1f4c:	00042040 	sll	a0,a0,0x1
    1f50:	24420000 	addiu	v0,v0,0
    1f54:	00821021 	addu	v0,a0,v0
    1f58:	84420000 	lh	v0,0(v0)
    1f5c:	00000000 	sll	zero,zero,0x0
    1f60:	00621026 	xor	v0,v1,v0
    1f64:	0002102b 	sltu	v0,zero,v0
    1f68:	8fc30014 	lw	v1,20(s8)
    1f6c:	00000000 	sll	zero,zero,0x0
    1f70:	00621021 	addu	v0,v1,v0
    1f74:	afc20014 	sw	v0,20(s8)
      for (i = 0; i < N; i++)
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
    1f78:	8fc20010 	lw	v0,16(s8)
    1f7c:	00000000 	sll	zero,zero,0x0
    1f80:	24420001 	addiu	v0,v0,1
    1f84:	afc20010 	sw	v0,16(s8)
    1f88:	8fc20010 	lw	v0,16(s8)
    1f8c:	00000000 	sll	zero,zero,0x0
    1f90:	284200a0 	slti	v0,v0,160
    1f94:	1440ffe4 	bnez	v0,1f28 <main+0x9c>
    1f98:	00000000 	sll	zero,zero,0x0
	main_result += (so[i] != outData[i]);
      for (i = 0; i < M; i++)
    1f9c:	afc00010 	sw	zero,16(s8)
    1fa0:	08000802 	j	2008 <main+0x17c>
    1fa4:	00000000 	sll	zero,zero,0x0
	main_result += (LARc[i] != outLARc[i]);
    1fa8:	8fc20010 	lw	v0,16(s8)
    1fac:	00000000 	sll	zero,zero,0x0
    1fb0:	00021040 	sll	v0,v0,0x1
    1fb4:	27c30010 	addiu	v1,s8,16
    1fb8:	00621021 	addu	v0,v1,v0
    1fbc:	84430148 	lh	v1,328(v0)
    1fc0:	3c020000 	lui	v0,0x0
    1fc4:	8fc40010 	lw	a0,16(s8)
    1fc8:	00000000 	sll	zero,zero,0x0
    1fcc:	00042040 	sll	a0,a0,0x1
    1fd0:	24420000 	addiu	v0,v0,0
    1fd4:	00821021 	addu	v0,a0,v0
    1fd8:	84420000 	lh	v0,0(v0)
    1fdc:	00000000 	sll	zero,zero,0x0
    1fe0:	00621026 	xor	v0,v1,v0
    1fe4:	0002102b 	sltu	v0,zero,v0
    1fe8:	8fc30014 	lw	v1,20(s8)
    1fec:	00000000 	sll	zero,zero,0x0
    1ff0:	00621021 	addu	v0,v1,v0
    1ff4:	afc20014 	sw	v0,20(s8)

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
	main_result += (so[i] != outData[i]);
      for (i = 0; i < M; i++)
    1ff8:	8fc20010 	lw	v0,16(s8)
    1ffc:	00000000 	sll	zero,zero,0x0
    2000:	24420001 	addiu	v0,v0,1
    2004:	afc20010 	sw	v0,16(s8)
    2008:	8fc20010 	lw	v0,16(s8)
    200c:	00000000 	sll	zero,zero,0x0
    2010:	28420008 	slti	v0,v0,8
    2014:	1440ffe4 	bnez	v0,1fa8 <main+0x11c>
    2018:	00000000 	sll	zero,zero,0x0
	main_result += (LARc[i] != outLARc[i]);

      printf ("%d\n", main_result);
    201c:	3c020000 	lui	v0,0x0
    2020:	24440390 	addiu	a0,v0,912
    2024:	8fc50014 	lw	a1,20(s8)
    2028:	0c000000 	jal	0 <gsm_add>
    202c:	00000000 	sll	zero,zero,0x0
      return main_result;
    2030:	8fc20014 	lw	v0,20(s8)
    }
    2034:	03c0e821 	addu	sp,s8,zero
    2038:	8fbf016c 	lw	ra,364(sp)
    203c:	8fbe0168 	lw	s8,360(sp)
    2040:	27bd0170 	addiu	sp,sp,368
    2044:	03e00008 	jr	ra
    2048:	00000000 	sll	zero,zero,0x0

Disassembly of section .rodata:

00000000 <bitoff>:
   0:	08070606 	j	1c1818 <main+0x1bf98c>
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
 124:	0eebc06f 	jal	baf01bc <main+0xbaee330>
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
 15c:	0e1f5673 	jal	87d59cc <main+0x87d3b40>
 160:	ea3cb172 	swc2	$28,-20110(s1)
 164:	306323d9 	andi	v1,v1,0x23d9
 168:	a02030c0 	sb	zero,12480(at)
 16c:	542aba4e 	0x542aba4e
 170:	cab34f35 	lwc2	$19,20277(s5)
 174:	270344f4 	addiu	v1,t8,17652
 178:	d338bc52 	0xd338bc52
 17c:	d6c89624 	0xd6c89624
 180:	00cf6bdc 	0xcf6bdc
 184:	09d51bff 	j	7546ffc <main+0x7545170>
 188:	8bdaa857 	lwl	k0,-22441(s8)
 18c:	7557f6c0 	jalx	55fdb00 <main+0x55fbc74>
 190:	320d012c 	andi	t5,s0,0x12c
 194:	9c2d237f 	0x9c2d237f
 198:	715ee661 	0x715ee661
 19c:	b0a9c7f5 	0xb0a9c7f5
 1a0:	e27dab33 	swc0	$29,-21709(s3)
 1a4:	f1a48a7e 	0xf1a48a7e
 1a8:	f38a86fd 	0xf38a86fd
 1ac:	218469f6 	addi	a0,t4,27126
 1b0:	0d56ee05 	jal	55bb814 <main+0x55b9988>
 1b4:	a8e1bd09 	swl	at,-17143(a3)
 1b8:	35dcfbb8 	ori	gp,t6,0xfbb8
 1bc:	c6e75637 	lwc1	$f7,22071(s7)
 1c0:	cb107f86 	lwc2	$16,32646(t8)
 1c4:	4131dee7 	0x4131dee7
 1c8:	ce432907 	lwc3	$3,10503(s2)
 1cc:	51091a28 	0x51091a28
 1d0:	972686d9 	lhu	a2,-31015(t9)
 1d4:	0ed0b268 	jal	b42c9a0 <main+0xb42ab14>
 1d8:	b031899d 	0xb031899d
 1dc:	7ea5cc4b 	0x7ea5cc4b
 1e0:	232e4749 	addi	t6,t9,18249
 1e4:	0963e0c4 	j	58f8310 <main+0x58f6484>
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
 224:	0c6972e4 	jal	1a5cb90 <main+0x1a5ad04>
 228:	b100f528 	0xb100f528
 22c:	5e14e0e5 	0x5e14e0e5
 230:	d73ad15e 	0xd73ad15e
 234:	c60fe5fe 	lwc1	$f15,-6658(s0)
 238:	7d3a0fb4 	0x7d3a0fb4
 23c:	28dd3b37 	slti	sp,a2,15159

00000240 <outData>:
 240:	00502a60 	0x502a60
 244:	0760d7d0 	bltz	k1,ffff6188 <main+0xffff42fc>
 248:	1dc07410 	bgtz	t6,1d28c <main+0x1b400>
 24c:	50008de0 	0x50008de0
 250:	b6008b90 	0xb6008b90
 254:	82f00640 	lb	s0,1600(s7)
 258:	3d80f3f0 	0x3d80f3f0
 25c:	bc00a990 	0xbc00a990
 260:	1a90cc20 	0x1a90cc20
 264:	0ef0c070 	jal	bc301c0 <main+0xbc2e334>
 268:	f9e0cf10 	0xf9e0cf10
 26c:	9620ff40 	lhu	zero,-192(s1)
 270:	9c101260 	0x9c101260
 274:	89203ba0 	lwl	zero,15264(t1)
 278:	fa902ca0 	0xfa902ca0
 27c:	2c701380 	sltiu	s0,v1,4992
 280:	1ec0f890 	bgtz	s6,ffffe4c4 <main+0xffffc638>
 284:	23a08410 	addi	zero,sp,-31728
 288:	9d70c8b0 	0x9d70c8b0
 28c:	46407eb0 	c1	0x407eb0
 290:	cf70c1c0 	lwc3	$16,-15936(k1)
 294:	ab901ee0 	swl	s0,7904(gp)
 298:	06a06dd0 	bltz	s5,1b9dc <main+0x19b50>
 29c:	0e205670 	jal	88159c0 <main+0x8813b34>
 2a0:	ea40b170 	swc2	$0,-20112(s2)
 2a4:	306023e0 	andi	zero,v1,0x23e0
 2a8:	a02030c0 	sb	zero,12480(at)
 2ac:	5430ba50 	0x5430ba50
 2b0:	cab04f30 	lwc2	$16,20272(s5)
 2b4:	270044f0 	addiu	zero,t8,17648
 2b8:	d340bc50 	0xd340bc50
 2bc:	d6d09620 	0xd6d09620
 2c0:	00d06be0 	0xd06be0
 2c4:	09d01c00 	j	7407000 <main+0x7405174>
 2c8:	8be0a850 	lwl	zero,-22448(ra)
 2cc:	7550f6c0 	jalx	543db00 <main+0x543bc74>
 2d0:	32100130 	andi	s0,s0,0x130
 2d4:	9c302380 	0x9c302380
 2d8:	7160e660 	0x7160e660
 2dc:	b0b0c7f0 	0xb0b0c7f0
 2e0:	e280ab30 	swc0	$0,-21712(s4)
 2e4:	f1a08a80 	0xf1a08a80
 2e8:	f3908700 	0xf3908700
 2ec:	218069f0 	addi	zero,t4,27120
 2f0:	0d50ee00 	jal	543b800 <main+0x5439974>
 2f4:	a8e0bd10 	swl	zero,-17136(a3)
 2f8:	35e0fbc0 	ori	zero,t7,0xfbc0
 2fc:	c6e05630 	lwc1	$f0,22064(s7)
 300:	cb107f80 	lwc2	$16,32640(t8)
 304:	4130dee0 	0x4130dee0
 308:	ce402900 	lwc3	$0,10496(s2)
 30c:	51101a30 	0x51101a30
 310:	972086e0 	lhu	zero,-31008(t9)
 314:	0ed0b270 	jal	b42c9c0 <main+0xb42ab34>
 318:	b03089a0 	0xb03089a0
 31c:	7ea0cc50 	0x7ea0cc50
 320:	23304750 	addi	s0,t9,18256
 324:	0960e0c0 	j	5838300 <main+0x5836474>
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
 360:	1ee009b0 	bgtz	s7,2a24 <main+0xb98>
 364:	0c7072e0 	jal	1c1cb80 <main+0x1c1acf4>
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
 390:	25640a00 	addiu	a0,t3,2560
