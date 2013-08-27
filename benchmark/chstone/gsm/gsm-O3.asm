
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
     1f0:	10800095 	beqz	a0,448 <gsm_div+0x264>
     1f4:	00052c03 	sra	a1,a1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     1f8:	00041840 	sll	v1,a0,0x1

      if (L_num >= L_denum)
     1fc:	0065102a 	slt	v0,v1,a1
     200:	1440008f 	bnez	v0,440 <gsm_div+0x25c>
     204:	00000000 	sll	zero,zero,0x0
	{
	  L_num -= L_denum;
     208:	00651823 	subu	v1,v1,a1
	  div++;
     20c:	24020001 	addiu	v0,zero,1
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     210:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     214:	00021040 	sll	v0,v0,0x1
     218:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     21c:	0065202a 	slt	a0,v1,a1
     220:	14800005 	bnez	a0,238 <gsm_div+0x54>
     224:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     228:	24420001 	addiu	v0,v0,1
     22c:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     230:	00651823 	subu	v1,v1,a1
	  div++;
     234:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     238:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     23c:	00021040 	sll	v0,v0,0x1
     240:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     244:	0065202a 	slt	a0,v1,a1
     248:	14800005 	bnez	a0,260 <gsm_div+0x7c>
     24c:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     250:	24420001 	addiu	v0,v0,1
     254:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     258:	00651823 	subu	v1,v1,a1
	  div++;
     25c:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     260:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     264:	00021040 	sll	v0,v0,0x1
     268:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     26c:	0065202a 	slt	a0,v1,a1
     270:	14800005 	bnez	a0,288 <gsm_div+0xa4>
     274:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     278:	24420001 	addiu	v0,v0,1
     27c:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     280:	00651823 	subu	v1,v1,a1
	  div++;
     284:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     288:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     28c:	00021040 	sll	v0,v0,0x1
     290:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     294:	0065202a 	slt	a0,v1,a1
     298:	14800005 	bnez	a0,2b0 <gsm_div+0xcc>
     29c:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     2a0:	24420001 	addiu	v0,v0,1
     2a4:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     2a8:	00651823 	subu	v1,v1,a1
	  div++;
     2ac:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     2b0:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     2b4:	00021040 	sll	v0,v0,0x1
     2b8:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     2bc:	0065202a 	slt	a0,v1,a1
     2c0:	14800005 	bnez	a0,2d8 <gsm_div+0xf4>
     2c4:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     2c8:	24420001 	addiu	v0,v0,1
     2cc:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     2d0:	00651823 	subu	v1,v1,a1
	  div++;
     2d4:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     2d8:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     2dc:	00021040 	sll	v0,v0,0x1
     2e0:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     2e4:	0065202a 	slt	a0,v1,a1
     2e8:	14800005 	bnez	a0,300 <gsm_div+0x11c>
     2ec:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     2f0:	24420001 	addiu	v0,v0,1
     2f4:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     2f8:	00651823 	subu	v1,v1,a1
	  div++;
     2fc:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     300:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     304:	00021040 	sll	v0,v0,0x1
     308:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     30c:	0065202a 	slt	a0,v1,a1
     310:	14800005 	bnez	a0,328 <gsm_div+0x144>
     314:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     318:	24420001 	addiu	v0,v0,1
     31c:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     320:	00651823 	subu	v1,v1,a1
	  div++;
     324:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     328:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     32c:	00021040 	sll	v0,v0,0x1
     330:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     334:	0065202a 	slt	a0,v1,a1
     338:	14800005 	bnez	a0,350 <gsm_div+0x16c>
     33c:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     340:	24420001 	addiu	v0,v0,1
     344:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     348:	00651823 	subu	v1,v1,a1
	  div++;
     34c:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     350:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     354:	00021040 	sll	v0,v0,0x1
     358:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     35c:	0065202a 	slt	a0,v1,a1
     360:	14800005 	bnez	a0,378 <gsm_div+0x194>
     364:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     368:	24420001 	addiu	v0,v0,1
     36c:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     370:	00651823 	subu	v1,v1,a1
	  div++;
     374:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     378:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     37c:	00021040 	sll	v0,v0,0x1
     380:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     384:	0065202a 	slt	a0,v1,a1
     388:	14800005 	bnez	a0,3a0 <gsm_div+0x1bc>
     38c:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     390:	24420001 	addiu	v0,v0,1
     394:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     398:	00651823 	subu	v1,v1,a1
	  div++;
     39c:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     3a0:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     3a4:	00021040 	sll	v0,v0,0x1
     3a8:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     3ac:	0065202a 	slt	a0,v1,a1
     3b0:	14800005 	bnez	a0,3c8 <gsm_div+0x1e4>
     3b4:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     3b8:	24420001 	addiu	v0,v0,1
     3bc:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     3c0:	00651823 	subu	v1,v1,a1
	  div++;
     3c4:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     3c8:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     3cc:	00021040 	sll	v0,v0,0x1
     3d0:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     3d4:	0065202a 	slt	a0,v1,a1
     3d8:	14800005 	bnez	a0,3f0 <gsm_div+0x20c>
     3dc:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     3e0:	24420001 	addiu	v0,v0,1
     3e4:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     3e8:	00651823 	subu	v1,v1,a1
	  div++;
     3ec:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     3f0:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     3f4:	00021040 	sll	v0,v0,0x1
     3f8:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     3fc:	0065202a 	slt	a0,v1,a1
     400:	14800005 	bnez	a0,418 <gsm_div+0x234>
     404:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     408:	24420001 	addiu	v0,v0,1
     40c:	00021400 	sll	v0,v0,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     410:	00651823 	subu	v1,v1,a1
	  div++;
     414:	00021403 	sra	v0,v0,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     418:	00031840 	sll	v1,v1,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     41c:	00021040 	sll	v0,v0,0x1
     420:	00021400 	sll	v0,v0,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     424:	0065282a 	slt	a1,v1,a1
     428:	14a00008 	bnez	a1,44c <gsm_div+0x268>
     42c:	00021403 	sra	v0,v0,0x10
	{
	  L_num -= L_denum;
	  div++;
     430:	24420001 	addiu	v0,v0,1
     434:	00021400 	sll	v0,v0,0x10
     438:	03e00008 	jr	ra
     43c:	00021403 	sra	v0,v0,0x10
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     440:	08000084 	j	210 <gsm_div+0x2c>
     444:	00001021 	addu	v0,zero,zero
   * Although this is explicitly guarded against in 4.2.5,
   * we assume that the result should then be zero as well.
   */

  if (num == 0)
    return 0;
     448:	00001021 	addu	v0,zero,zero
	  div++;
	}
    }

  return div;
}
     44c:	03e00008 	jr	ra
     450:	00000000 	sll	zero,zero,0x0

00000454 <Autocorrelation>:
		 longword * L_ACF /* [0..8]       OUT     */ )
/*
 *  The goal is to compute the array L_ACF[k].  The signal s[i] must
 *  be scaled in order to avoid an overflow situation.
 */
{
     454:	27bdff88 	addiu	sp,sp,-120
     458:	afbe0074 	sw	s8,116(sp)
     45c:	afb70070 	sw	s7,112(sp)
     460:	afb6006c 	sw	s6,108(sp)
     464:	afb50068 	sw	s5,104(sp)
     468:	afb40064 	sw	s4,100(sp)
     46c:	afb30060 	sw	s3,96(sp)
     470:	afb2005c 	sw	s2,92(sp)
     474:	afb10058 	sw	s1,88(sp)
     478:	afb00054 	sw	s0,84(sp)
     47c:	afa5007c 	sw	a1,124(sp)
     480:	00001021 	addu	v0,zero,zero
  word *sp;
  word sl;

  /*  Search for the maximum.
   */
  smax = 0;
     484:	00003821 	addu	a3,zero,zero
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
     488:	240a8000 	addiu	t2,zero,-32768
  for (k = 0; k <= 159; k++)
     48c:	24090140 	addiu	t1,zero,320

/* 4.2.4 */


void
Autocorrelation (word * s /* [0..159]     IN/OUT  */ ,
     490:	00821821 	addu	v1,a0,v0
  /*  Search for the maximum.
   */
  smax = 0;
  for (k = 0; k <= 159; k++)
    {
      temp = GSM_ABS (s[k]);
     494:	84630000 	lh	v1,0(v1)
     498:	00e02821 	addu	a1,a3,zero
     49c:	04600038 	bltz	v1,580 <Autocorrelation+0x12c>
     4a0:	00e3402a 	slt	t0,a3,v1
     4a4:	11000003 	beqz	t0,4b4 <Autocorrelation+0x60>
     4a8:	00a03821 	addu	a3,a1,zero
     4ac:	00602821 	addu	a1,v1,zero
     4b0:	00a03821 	addu	a3,a1,zero
     4b4:	24420002 	addiu	v0,v0,2
  word sl;

  /*  Search for the maximum.
   */
  smax = 0;
  for (k = 0; k <= 159; k++)
     4b8:	1449fff6 	bne	v0,t1,494 <Autocorrelation+0x40>
     4bc:	00821821 	addu	v1,a0,v0
	smax = temp;
    }

  /*  Computation of the scaling factor.
   */
  if (smax == 0)
     4c0:	10e0003a 	beqz	a3,5ac <Autocorrelation+0x158>
     4c4:	00000000 	sll	zero,zero,0x0
    scalauto = 0;
  else
    scalauto = 4 - gsm_norm ((longword) smax << 16);	/* sub(4,..) */
     4c8:	00073c00 	sll	a3,a3,0x10
 *
 * (That's 'ffs', only from the left, not the right..)
 */
{

  if (a < 0)
     4cc:	04e00177 	bltz	a3,aac <Autocorrelation+0x658>
     4d0:	3c02c000 	lui	v0,0xc000
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     4d4:	3c02ffff 	lui	v0,0xffff
     4d8:	00e21024 	and	v0,a3,v0
     4dc:	10400169 	beqz	v0,a84 <Autocorrelation+0x630>
     4e0:	30e2ff00 	andi	v0,a3,0xff00
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     4e4:	3c02ff00 	lui	v0,0xff00
     4e8:	00e21024 	and	v0,a3,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     4ec:	1440017c 	bnez	v0,ae0 <Autocorrelation+0x68c>
     4f0:	3c020000 	lui	v0,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
     4f4:	00073c03 	sra	a3,a3,0x10
     4f8:	30e700ff 	andi	a3,a3,0xff
     4fc:	24420000 	addiu	v0,v0,0
     500:	00e21021 	addu	v0,a3,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     504:	90420000 	lbu	v0,0(v0)
     508:	00000000 	sll	zero,zero,0x0
     50c:	24420007 	addiu	v0,v0,7
     510:	24030004 	addiu	v1,zero,4
     514:	00621023 	subu	v0,v1,v0
     518:	3042ffff 	andi	v0,v0,0xffff

  if (scalauto > 0 && scalauto <= 4)
     51c:	2443ffff 	addiu	v1,v0,-1
     520:	3063ffff 	andi	v1,v1,0xffff
  /*  Computation of the scaling factor.
   */
  if (smax == 0)
    scalauto = 0;
  else
    scalauto = 4 - gsm_norm ((longword) smax << 16);	/* sub(4,..) */
     524:	00021400 	sll	v0,v0,0x10
     528:	00021403 	sra	v0,v0,0x10

  if (scalauto > 0 && scalauto <= 4)
     52c:	2c630004 	sltiu	v1,v1,4
     530:	1060001f 	beqz	v1,5b0 <Autocorrelation+0x15c>
     534:	afa20014 	sw	v0,20(sp)
  /*   Rescaling of the array s[0..159]
   */
  if (scalauto > 0)
    for (k = 159; k >= 0; k--)
      *s++ <<= scalauto;
}
     538:	8fac0014 	lw	t4,20(sp)
     53c:	24064000 	addiu	a2,zero,16384
     540:	2582ffff 	addiu	v0,t4,-1
     544:	00463007 	srav	a2,a2,v0
 *
 * (That's 'ffs', only from the left, not the right..)
 */
{

  if (a < 0)
     548:	00001821 	addu	v1,zero,zero
     54c:	00801021 	addu	v0,a0,zero
    scalauto = 4 - gsm_norm ((longword) smax << 16);	/* sub(4,..) */

  if (scalauto > 0 && scalauto <= 4)
    {
      n = scalauto;
      for (k = 0; k <= 159; k++)
     550:	240500a0 	addiu	a1,zero,160
	s[k] = GSM_MULT_R (s[k], 16384 >> (n - 1));
     554:	84470000 	lh	a3,0(v0)
    scalauto = 4 - gsm_norm ((longword) smax << 16);	/* sub(4,..) */

  if (scalauto > 0 && scalauto <= 4)
    {
      n = scalauto;
      for (k = 0; k <= 159; k++)
     558:	24630001 	addiu	v1,v1,1
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
     55c:	00c70018 	mult	a2,a3
     560:	00003812 	mflo	a3
     564:	24e74000 	addiu	a3,a3,16384
      prod >>= 15;
     568:	00073bc3 	sra	a3,a3,0xf
      return prod & 0xFFFF;
     56c:	a4470000 	sh	a3,0(v0)
     570:	1465fff8 	bne	v1,a1,554 <Autocorrelation+0x100>
     574:	24420002 	addiu	v0,v0,2
     578:	0800016c 	j	5b0 <Autocorrelation+0x15c>
     57c:	00000000 	sll	zero,zero,0x0
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
     580:	00032823 	negu	a1,v1
     584:	00052c00 	sll	a1,a1,0x10
     588:	00052c03 	sra	a1,a1,0x10
     58c:	106a0005 	beq	v1,t2,5a4 <Autocorrelation+0x150>
     590:	00e5302a 	slt	a2,a3,a1
     594:	10c0ffc7 	beqz	a2,4b4 <Autocorrelation+0x60>
     598:	00000000 	sll	zero,zero,0x0
     59c:	0800012d 	j	4b4 <Autocorrelation+0x60>
     5a0:	00a03821 	addu	a3,a1,zero
     5a4:	0800012d 	j	4b4 <Autocorrelation+0x60>
     5a8:	24077fff 	addiu	a3,zero,32767
    }

  /*  Computation of the scaling factor.
   */
  if (smax == 0)
    scalauto = 0;
     5ac:	afa00014 	sw	zero,20(sp)

  /*  Compute the L_ACF[..].
   */
  {
    sp = s;
    sl = *sp;
     5b0:	84820000 	lh	v0,0(a0)
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
    NEXTI;
    STEP (0);
     5b4:	84960002 	lh	s6,2(a0)

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
     5b8:	00420018 	mult	v0,v0

  /*  Compute the L_ACF[..].
   */
  {
    sp = s;
    sl = *sp;
     5bc:	afa2000c 	sw	v0,12(sp)
    STEP (1);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    NEXTI;
     5c0:	24820006 	addiu	v0,a0,6
    STEP (0);
    STEP (1);
     5c4:	8452fffe 	lh	s2,-2(v0)
    STEP (2);
     5c8:	8453fffc 	lh	s3,-4(v0)
    STEP (3);
    NEXTI;
     5cc:	24820008 	addiu	v0,a0,8
    STEP (0);
    STEP (1);
     5d0:	8454fffe 	lh	s4,-2(v0)
    STEP (2);
     5d4:	8455fffc 	lh	s5,-4(v0)
    STEP (3);
     5d8:	8457fffa 	lh	s7,-6(v0)
    STEP (4);
    NEXTI;
     5dc:	2482000a 	addiu	v0,a0,10
    STEP (0);
    STEP (1);
    STEP (2);
     5e0:	8443fffc 	lh	v1,-4(v0)
    STEP (3);
     5e4:	8446fffa 	lh	a2,-6(v0)
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    NEXTI;
    STEP (0);
     5e8:	848b000a 	lh	t3,10(a0)

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
     5ec:	00008012 	mflo	s0
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    NEXTI;
    STEP (0);
     5f0:	848c0008 	lh	t4,8(a0)
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    NEXTI;
    STEP (0);
     5f4:	848d0006 	lh	t5,6(a0)
    STEP (0);
    NEXTI;
    STEP (0);
    STEP (1);
    NEXTI;
    STEP (0);
     5f8:	848e0004 	lh	t6,4(a0)
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
    NEXTI;
    STEP (0);
     5fc:	02d60018 	mult	s6,s6
    STEP (2);
    STEP (3);
    STEP (4);
    NEXTI;
    STEP (0);
    STEP (1);
     600:	845efffe 	lh	s8,-2(v0)
    STEP (2);
     604:	afa30000 	sw	v1,0(sp)
    STEP (3);
    STEP (4);
    STEP (5);
    NEXTI;
     608:	2483000c 	addiu	v1,a0,12
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     60c:	8442fff8 	lh	v0,-8(v0)
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
     610:	8471fffe 	lh	s1,-2(v1)
    STEP (4);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     614:	afa60010 	sw	a2,16(sp)
    STEP (4);
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     618:	8466fffc 	lh	a2,-4(v1)
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     61c:	afa20018 	sw	v0,24(sp)
    STEP (5);
    NEXTI;
    STEP (0);
     620:	8482000c 	lh	v0,12(a0)
    STEP (1);
     624:	afb1001c 	sw	s1,28(sp)
    STEP (2);
     628:	afa60020 	sw	a2,32(sp)
    STEP (3);
     62c:	8471fffa 	lh	s1,-6(v1)
    STEP (4);
     630:	8466fff8 	lh	a2,-8(v1)
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
    NEXTI;
    STEP (0);
     634:	00002812 	mflo	a1
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
     638:	8463fff6 	lh	v1,-10(v1)
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     63c:	afb10024 	sw	s1,36(sp)
    STEP (4);
    STEP (5);
     640:	afa3002c 	sw	v1,44(sp)
      L_ACF[k] = 0;

    STEP (0);
    NEXTI;
    STEP (0);
    STEP (1);
     644:	8fa3000c 	lw	v1,12(sp)
    NEXTI;
    STEP (0);
    STEP (1);
     648:	02c07821 	addu	t7,s6,zero
      L_ACF[k] = 0;

    STEP (0);
    NEXTI;
    STEP (0);
    STEP (1);
     64c:	02c30018 	mult	s6,v1
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
    NEXTI;
     650:	2483000e 	addiu	v1,a0,14
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     654:	afa60028 	sw	a2,40(sp)
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
     658:	8466fffe 	lh	a2,-2(v1)
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
     65c:	8498000e 	lh	t8,14(a0)
    STEP (1);
     660:	afa60030 	sw	a2,48(sp)
    STEP (2);
     664:	8466fffc 	lh	a2,-4(v1)
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;

    STEP (0);
    NEXTI;
    STEP (0);
     668:	02058021 	addu	s0,s0,a1
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     66c:	afa60034 	sw	a2,52(sp)
    STEP (3);
     670:	8466fffa 	lh	a2,-6(v1)

#define STEP(k)	 L_ACF[k] += ((longword)sl * sp[ -(k) ]);

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;
     674:	8fa5007c 	lw	a1,124(sp)
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     678:	afa60038 	sw	a2,56(sp)
    STEP (4);
     67c:	8466fff8 	lh	a2,-8(v1)
      L_ACF[k] = 0;

    STEP (0);
    NEXTI;
    STEP (0);
    STEP (1);
     680:	00008812 	mflo	s1
    STEP (7);

    for (i = 8; i <= 159; i++)
      {

	NEXTI;
     684:	01c05021 	addu	t2,t6,zero
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     688:	afa6003c 	sw	a2,60(sp)
    STEP (5);
     68c:	8466fff6 	lh	a2,-10(v1)
    STEP (0);
    NEXTI;
    STEP (0);
    STEP (1);
    NEXTI;
    STEP (0);
     690:	01ce0018 	mult	t6,t6
    STEP (7);

    for (i = 8; i <= 159; i++)
      {

	NEXTI;
     694:	01a04821 	addu	t1,t5,zero
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
     698:	afa60040 	sw	a2,64(sp)

#define STEP(k)	 L_ACF[k] += ((longword)sl * sp[ -(k) ]);

#define NEXTI	 sl = *++sp
    for (k = 8; k >= 0; k--)
      L_ACF[k] = 0;
     69c:	aca00020 	sw	zero,32(a1)
    STEP (7);

    for (i = 8; i <= 159; i++)
      {

	NEXTI;
     6a0:	afb60048 	sw	s6,72(sp)

/* 4.2.4 */


void
Autocorrelation (word * s /* [0..159]     IN/OUT  */ ,
     6a4:	2496013e 	addiu	s6,a0,318
     6a8:	afb60008 	sw	s6,8(sp)
    STEP (0);
    STEP (1);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     6ac:	8fb6000c 	lw	s6,12(sp)
    STEP (7);

    for (i = 8; i <= 159; i++)
      {

	NEXTI;
     6b0:	01804021 	addu	t0,t4,zero
     6b4:	01603821 	addu	a3,t3,zero
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
    STEP (7);
     6b8:	afa00004 	sw	zero,4(sp)

    for (i = 8; i <= 159; i++)
      {

	NEXTI;
     6bc:	00403021 	addu	a2,v0,zero
     6c0:	03002821 	addu	a1,t8,zero
    STEP (0);
    NEXTI;
    STEP (0);
    STEP (1);
    NEXTI;
    STEP (0);
     6c4:	0000c812 	mflo	t9
     6c8:	0219c821 	addu	t9,s0,t9
     6cc:	00000000 	sll	zero,zero,0x0
    STEP (1);
     6d0:	01ee0018 	mult	t7,t6
     6d4:	00007812 	mflo	t7
     6d8:	022f7821 	addu	t7,s1,t7
     6dc:	00000000 	sll	zero,zero,0x0
    STEP (2);
     6e0:	01d60018 	mult	t6,s6
     6e4:	00008012 	mflo	s0
	...
    NEXTI;
    STEP (0);
     6f0:	01ad0018 	mult	t5,t5
     6f4:	00007012 	mflo	t6
     6f8:	032ec821 	addu	t9,t9,t6
     6fc:	00000000 	sll	zero,zero,0x0
    STEP (1);
     700:	024d0018 	mult	s2,t5
     704:	00009012 	mflo	s2
     708:	01f27821 	addu	t7,t7,s2
     70c:	00000000 	sll	zero,zero,0x0
    STEP (2);
     710:	026d0018 	mult	s3,t5
     714:	00009812 	mflo	s3
     718:	02139821 	addu	s3,s0,s3
     71c:	00000000 	sll	zero,zero,0x0
    STEP (3);
     720:	01b60018 	mult	t5,s6
     724:	00008812 	mflo	s1
	...
    NEXTI;
    STEP (0);
     730:	018c0018 	mult	t4,t4
     734:	00007012 	mflo	t6
     738:	032ec821 	addu	t9,t9,t6
     73c:	00000000 	sll	zero,zero,0x0
    STEP (1);
     740:	028c0018 	mult	s4,t4
     744:	00006812 	mflo	t5
     748:	01ed7821 	addu	t7,t7,t5
     74c:	00000000 	sll	zero,zero,0x0
    STEP (2);
     750:	02ac0018 	mult	s5,t4
     754:	00007012 	mflo	t6
     758:	026e9821 	addu	s3,s3,t6
     75c:	00000000 	sll	zero,zero,0x0
    STEP (3);
     760:	02ec0018 	mult	s7,t4
     764:	00006812 	mflo	t5
     768:	022d6821 	addu	t5,s1,t5
    STEP (4);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     76c:	8fb10000 	lw	s1,0(sp)
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     770:	01960018 	mult	t4,s6
     774:	00008012 	mflo	s0
	...
    NEXTI;
    STEP (0);
     780:	016b0018 	mult	t3,t3
     784:	00007012 	mflo	t6
     788:	032ec821 	addu	t9,t9,t6
     78c:	00000000 	sll	zero,zero,0x0
    STEP (1);
     790:	03cb0018 	mult	s8,t3
     794:	00006012 	mflo	t4
     798:	01ec9021 	addu	s2,t7,t4
    STEP (2);
    STEP (3);
     79c:	8faf0010 	lw	t7,16(sp)
    STEP (3);
    STEP (4);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     7a0:	022b0018 	mult	s1,t3
    STEP (3);
    STEP (4);
     7a4:	8fb10018 	lw	s1,24(sp)
    STEP (3);
    STEP (4);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     7a8:	00007012 	mflo	t6
     7ac:	026e7021 	addu	t6,s3,t6
     7b0:	00000000 	sll	zero,zero,0x0
    STEP (3);
     7b4:	01eb0018 	mult	t7,t3
     7b8:	00006012 	mflo	t4
     7bc:	01ac6821 	addu	t5,t5,t4
     7c0:	00000000 	sll	zero,zero,0x0
    STEP (4);
     7c4:	022b0018 	mult	s1,t3
     7c8:	00007812 	mflo	t7
     7cc:	020f7821 	addu	t7,s0,t7
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
     7d0:	8fb0001c 	lw	s0,28(sp)
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
     7d4:	01760018 	mult	t3,s6
     7d8:	00008812 	mflo	s1
	...
    NEXTI;
    STEP (0);
     7e4:	00420018 	mult	v0,v0
     7e8:	00006012 	mflo	t4
     7ec:	032cc821 	addu	t9,t9,t4
     7f0:	00000000 	sll	zero,zero,0x0
    STEP (1);
     7f4:	02020018 	mult	s0,v0
    STEP (2);
     7f8:	8fb00020 	lw	s0,32(sp)
    STEP (3);
    STEP (4);
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
     7fc:	00005812 	mflo	t3
     800:	024b9021 	addu	s2,s2,t3
     804:	00000000 	sll	zero,zero,0x0
    STEP (2);
     808:	02020018 	mult	s0,v0
    STEP (3);
     80c:	8fb00024 	lw	s0,36(sp)
    STEP (4);
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     810:	00006012 	mflo	t4
     814:	01cc7021 	addu	t6,t6,t4
     818:	00000000 	sll	zero,zero,0x0
    STEP (3);
     81c:	02020018 	mult	s0,v0
    STEP (4);
     820:	8fb00028 	lw	s0,40(sp)
    STEP (5);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     824:	00005812 	mflo	t3
     828:	01ab6821 	addu	t5,t5,t3
     82c:	00000000 	sll	zero,zero,0x0
    STEP (4);
     830:	02020018 	mult	s0,v0
    STEP (5);
     834:	8fb0002c 	lw	s0,44(sp)
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     838:	00006012 	mflo	t4
     83c:	01ec7821 	addu	t7,t7,t4
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
     840:	8fac0030 	lw	t4,48(sp)
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
     844:	02020018 	mult	s0,v0
    STEP (6);
    NEXTI;
    STEP (0);
     848:	8fb0007c 	lw	s0,124(sp)
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
     84c:	00005812 	mflo	t3
     850:	022b5821 	addu	t3,s1,t3
     854:	00000000 	sll	zero,zero,0x0
    STEP (6);
    NEXTI;
    STEP (0);
     858:	03180018 	mult	t8,t8
     85c:	0000a812 	mflo	s5
     860:	0335a821 	addu	s5,t9,s5
     864:	ae150000 	sw	s5,0(s0)
    STEP (1);
     868:	01980018 	mult	t4,t8
    STEP (2);
     86c:	8fac0034 	lw	t4,52(sp)
    STEP (4);
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
     870:	0000a012 	mflo	s4
     874:	0254a021 	addu	s4,s2,s4
     878:	ae140004 	sw	s4,4(s0)
    STEP (2);
     87c:	01980018 	mult	t4,t8
    STEP (3);
     880:	8fac0038 	lw	t4,56(sp)
    STEP (5);
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
     884:	00009812 	mflo	s3
     888:	01d39821 	addu	s3,t6,s3
     88c:	ae130008 	sw	s3,8(s0)
    STEP (3);
     890:	01980018 	mult	t4,t8
    STEP (4);
     894:	8fac003c 	lw	t4,60(sp)
     898:	8fae007c 	lw	t6,124(sp)
    STEP (6);
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
     89c:	00009012 	mflo	s2
     8a0:	01b29021 	addu	s2,t5,s2
     8a4:	ae12000c 	sw	s2,12(s0)
    STEP (4);
     8a8:	01980018 	mult	t4,t8
    STEP (5);
     8ac:	8fac0040 	lw	t4,64(sp)
    NEXTI;
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
     8b0:	00008812 	mflo	s1
     8b4:	01f18821 	addu	s1,t7,s1
     8b8:	add10010 	sw	s1,16(t6)
    STEP (5);
     8bc:	01980018 	mult	t4,t8
    STEP (6);
     8c0:	8479fff4 	lh	t9,-12(v1)
    STEP (0);
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
     8c4:	00008012 	mflo	s0
     8c8:	01708021 	addu	s0,t3,s0
     8cc:	add00014 	sw	s0,20(t6)
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
     8d0:	00560018 	mult	v0,s6
     8d4:	00001012 	mflo	v0
	...
    STEP (1);
    STEP (2);
    STEP (3);
    STEP (4);
    STEP (5);
    STEP (6);
     8e0:	03380018 	mult	t9,t8
     8e4:	0000c812 	mflo	t9
     8e8:	0059c821 	addu	t9,v0,t9
     8ec:	add90018 	sw	t9,24(t6)
    STEP (7);
     8f0:	03160018 	mult	t8,s6
     8f4:	8fb60048 	lw	s6,72(sp)
     8f8:	0000c012 	mflo	t8
     8fc:	add8001c 	sw	t8,28(t6)
     900:	08000243 	j	90c <Autocorrelation+0x4b8>
     904:	afa40010 	sw	a0,16(sp)
	STEP (3);
	STEP (4);
	STEP (5);
	STEP (6);
	STEP (7);
	STEP (8);
     908:	afa20004 	sw	v0,4(sp)
    STEP (7);

    for (i = 8; i <= 159; i++)
      {

	NEXTI;
     90c:	24630002 	addiu	v1,v1,2
     910:	84620000 	lh	v0,0(v1)
	STEP (3);
	STEP (4);
	STEP (5);
	STEP (6);
	STEP (7);
	STEP (8);
     914:	8464fff0 	lh	a0,-16(v1)
      {

	NEXTI;

	STEP (0);
	STEP (1);
     918:	00a20018 	mult	a1,v0
     91c:	00005812 	mflo	t3
     920:	0174a021 	addu	s4,t3,s4
     924:	afb40000 	sw	s4,0(sp)
	STEP (2);
     928:	00c20018 	mult	a2,v0
     92c:	0000f012 	mflo	s8
     930:	03d3f021 	addu	s8,s8,s3
     934:	03c09821 	addu	s3,s8,zero
	STEP (3);
     938:	00e20018 	mult	a3,v0
     93c:	00005812 	mflo	t3
     940:	01725821 	addu	t3,t3,s2
     944:	01609021 	addu	s2,t3,zero
	STEP (4);
     948:	01020018 	mult	t0,v0
     94c:	00006012 	mflo	t4
     950:	01916021 	addu	t4,t4,s1
     954:	01808821 	addu	s1,t4,zero
	STEP (5);
     958:	01220018 	mult	t1,v0
     95c:	00006812 	mflo	t5
     960:	01b06821 	addu	t5,t5,s0
     964:	01a08021 	addu	s0,t5,zero
	STEP (6);
     968:	01420018 	mult	t2,v0
     96c:	00007012 	mflo	t6
     970:	01d97021 	addu	t6,t6,t9
     974:	01c0c821 	addu	t9,t6,zero
	STEP (7);
     978:	02c20018 	mult	s6,v0
    STEP (4);
    STEP (5);
    STEP (6);
    STEP (7);

    for (i = 8; i <= 159; i++)
     97c:	0140b021 	addu	s6,t2,zero
     980:	01205021 	addu	t2,t1,zero
     984:	01004821 	addu	t1,t0,zero
     988:	00e04021 	addu	t0,a3,zero
     98c:	00c03821 	addu	a3,a2,zero
     990:	00a03021 	addu	a2,a1,zero
     994:	00402821 	addu	a1,v0,zero
	STEP (2);
	STEP (3);
	STEP (4);
	STEP (5);
	STEP (6);
	STEP (7);
     998:	00007812 	mflo	t7
     99c:	01f87821 	addu	t7,t7,t8
     9a0:	01e0c021 	addu	t8,t7,zero
    for (i = 8; i <= 159; i++)
      {

	NEXTI;

	STEP (0);
     9a4:	00420018 	mult	v0,v0
     9a8:	0000b812 	mflo	s7
     9ac:	02f5b821 	addu	s7,s7,s5
     9b0:	00000000 	sll	zero,zero,0x0
	STEP (3);
	STEP (4);
	STEP (5);
	STEP (6);
	STEP (7);
	STEP (8);
     9b4:	00820018 	mult	a0,v0
     9b8:	8fa40004 	lw	a0,4(sp)
     9bc:	00001012 	mflo	v0
     9c0:	00441021 	addu	v0,v0,a0
    STEP (4);
    STEP (5);
    STEP (6);
    STEP (7);

    for (i = 8; i <= 159; i++)
     9c4:	8fa40008 	lw	a0,8(sp)
     9c8:	00000000 	sll	zero,zero,0x0
     9cc:	1464ffce 	bne	v1,a0,908 <Autocorrelation+0x4b4>
     9d0:	02e0a821 	addu	s5,s7,zero
	STEP (7);
	STEP (8);
      }

    for (k = 8; k >= 0; k--)
      L_ACF[k] <<= 1;
     9d4:	8fa5007c 	lw	a1,124(sp)

  }
  /*   Rescaling of the array s[0..159]
   */
  if (scalauto > 0)
     9d8:	8fa60014 	lw	a2,20(sp)
	STEP (7);
	STEP (8);
      }

    for (k = 8; k >= 0; k--)
      L_ACF[k] <<= 1;
     9dc:	00021040 	sll	v0,v0,0x1
     9e0:	000f7840 	sll	t7,t7,0x1
     9e4:	000e7040 	sll	t6,t6,0x1
     9e8:	000d6840 	sll	t5,t5,0x1
     9ec:	000c6040 	sll	t4,t4,0x1
     9f0:	000b5840 	sll	t3,t3,0x1
     9f4:	001ef040 	sll	s8,s8,0x1
     9f8:	00141840 	sll	v1,s4,0x1
     9fc:	0017b840 	sll	s7,s7,0x1
     a00:	8fa40010 	lw	a0,16(sp)
     a04:	aca20020 	sw	v0,32(a1)
     a08:	acaf001c 	sw	t7,28(a1)
     a0c:	acae0018 	sw	t6,24(a1)
     a10:	acad0014 	sw	t5,20(a1)
     a14:	acac0010 	sw	t4,16(a1)
     a18:	acab000c 	sw	t3,12(a1)
     a1c:	acbe0008 	sw	s8,8(a1)
     a20:	aca30004 	sw	v1,4(a1)

  }
  /*   Rescaling of the array s[0..159]
   */
  if (scalauto > 0)
     a24:	18c0000c 	blez	a2,a58 <Autocorrelation+0x604>
     a28:	acb70000 	sw	s7,0(a1)
     a2c:	240200a0 	addiu	v0,zero,160
     a30:	8fa3000c 	lw	v1,12(sp)
     a34:	08000291 	j	a44 <Autocorrelation+0x5f0>
     a38:	00c02821 	addu	a1,a2,zero
     a3c:	84830000 	lh	v1,0(a0)
     a40:	00000000 	sll	zero,zero,0x0
    for (k = 159; k >= 0; k--)
      *s++ <<= scalauto;
     a44:	00a31804 	sllv	v1,v1,a1
     a48:	2442ffff 	addiu	v0,v0,-1
     a4c:	a4830000 	sh	v1,0(a0)

  }
  /*   Rescaling of the array s[0..159]
   */
  if (scalauto > 0)
    for (k = 159; k >= 0; k--)
     a50:	1440fffa 	bnez	v0,a3c <Autocorrelation+0x5e8>
     a54:	24840002 	addiu	a0,a0,2
      *s++ <<= scalauto;
}
     a58:	8fbe0074 	lw	s8,116(sp)
     a5c:	8fb70070 	lw	s7,112(sp)
     a60:	8fb6006c 	lw	s6,108(sp)
     a64:	8fb50068 	lw	s5,104(sp)
     a68:	8fb40064 	lw	s4,100(sp)
     a6c:	8fb30060 	lw	s3,96(sp)
     a70:	8fb2005c 	lw	s2,92(sp)
     a74:	8fb10058 	lw	s1,88(sp)
     a78:	8fb00054 	lw	s0,84(sp)
     a7c:	03e00008 	jr	ra
     a80:	27bd0078 	addiu	sp,sp,120
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     a84:	1040000f 	beqz	v0,ac4 <Autocorrelation+0x670>
     a88:	00000000 	sll	zero,zero,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
     a8c:	00073a03 	sra	a3,a3,0x8
     a90:	3c020000 	lui	v0,0x0
     a94:	30e700ff 	andi	a3,a3,0xff
     a98:	24420000 	addiu	v0,v0,0
     a9c:	00e21021 	addu	v0,a3,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     aa0:	90420000 	lbu	v0,0(v0)
     aa4:	08000144 	j	510 <Autocorrelation+0xbc>
     aa8:	2442000f 	addiu	v0,v0,15
 */
{

  if (a < 0)
    {
      if (a <= -1073741824)
     aac:	24420001 	addiu	v0,v0,1
     ab0:	00e2102a 	slt	v0,a3,v0
     ab4:	14400013 	bnez	v0,b04 <Autocorrelation+0x6b0>
     ab8:	00073827 	nor	a3,zero,a3
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     abc:	08000136 	j	4d8 <Autocorrelation+0x84>
     ac0:	3c02ffff 	lui	v0,0xffff
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
     ac4:	3c020000 	lui	v0,0x0
     ac8:	24420000 	addiu	v0,v0,0
     acc:	30e700ff 	andi	a3,a3,0xff
     ad0:	00e23821 	addu	a3,a3,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     ad4:	90e20000 	lbu	v0,0(a3)
     ad8:	08000144 	j	510 <Autocorrelation+0xbc>
     adc:	24420017 	addiu	v0,v0,23
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     ae0:	24420000 	addiu	v0,v0,0
     ae4:	00073e02 	srl	a3,a3,0x18
     ae8:	00e23821 	addu	a3,a3,v0
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     aec:	90e20000 	lbu	v0,0(a3)
     af0:	00000000 	sll	zero,zero,0x0
     af4:	2442ffff 	addiu	v0,v0,-1
     af8:	00021400 	sll	v0,v0,0x10
     afc:	08000144 	j	510 <Autocorrelation+0xbc>
     b00:	00021403 	sra	v0,v0,0x10
  /*  Computation of the scaling factor.
   */
  if (smax == 0)
    scalauto = 0;
  else
    scalauto = 4 - gsm_norm ((longword) smax << 16);	/* sub(4,..) */
     b04:	240b0004 	addiu	t3,zero,4
     b08:	0800014e 	j	538 <Autocorrelation+0xe4>
     b0c:	afab0014 	sw	t3,20(sp)

00000b10 <Reflection_coefficients>:
  word K[9];			/* 2..8 */

  /*  Schur recursion with 16 bits arithmetic.
   */

  if (L_ACF[0] == 0)
     b10:	8c820000 	lw	v0,0(a0)
     b14:	00000000 	sll	zero,zero,0x0
     b18:	1440001f 	bnez	v0,b98 <Reflection_coefficients+0x88>
     b1c:	27bdffc0 	addiu	sp,sp,-64
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     b20:	30a40003 	andi	a0,a1,0x3
  word K[9];			/* 2..8 */

  /*  Schur recursion with 16 bits arithmetic.
   */

  if (L_ACF[0] == 0)
     b24:	00042042 	srl	a0,a0,0x1
     b28:	108001dd 	beqz	a0,12a0 <Reflection_coefficients+0x790>
     b2c:	00a01821 	addu	v1,a1,zero
    {
      for (i = 8; i > 0; i--)
	*r++ = 0;
     b30:	a4a00000 	sh	zero,0(a1)
     b34:	24a30002 	addiu	v1,a1,2
     b38:	24020007 	addiu	v0,zero,7
     b3c:	24090008 	addiu	t1,zero,8
     b40:	01244823 	subu	t1,t1,a0
     b44:	00093842 	srl	a3,t1,0x1
     b48:	00074040 	sll	t0,a3,0x1
     b4c:	1100000c 	beqz	t0,b80 <Reflection_coefficients+0x70>
     b50:	00042040 	sll	a0,a0,0x1
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     b54:	00a42821 	addu	a1,a1,a0
     b58:	00002021 	addu	a0,zero,zero
   */

  if (L_ACF[0] == 0)
    {
      for (i = 8; i > 0; i--)
	*r++ = 0;
     b5c:	24840001 	addiu	a0,a0,1
     b60:	0087302b 	sltu	a2,a0,a3
     b64:	aca00000 	sw	zero,0(a1)
     b68:	14c0fffc 	bnez	a2,b5c <Reflection_coefficients+0x4c>
     b6c:	24a50004 	addiu	a1,a1,4
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     b70:	00082040 	sll	a0,t0,0x1
   */

  if (L_ACF[0] == 0)
    {
      for (i = 8; i > 0; i--)
	*r++ = 0;
     b74:	00641821 	addu	v1,v1,a0
     b78:	11280005 	beq	t1,t0,b90 <Reflection_coefficients+0x80>
     b7c:	00481023 	subu	v0,v0,t0
     b80:	2442ffff 	addiu	v0,v0,-1
     b84:	a4600000 	sh	zero,0(v1)
  /*  Schur recursion with 16 bits arithmetic.
   */

  if (L_ACF[0] == 0)
    {
      for (i = 8; i > 0; i--)
     b88:	1440fffd 	bnez	v0,b80 <Reflection_coefficients+0x70>
     b8c:	24630002 	addiu	v1,v1,2

	  temp = GSM_MULT_R (P[m + 1], *r);
	  K[m] = GSM_ADD (K[m], temp);
	}
    }
}
     b90:	03e00008 	jr	ra
     b94:	27bd0040 	addiu	sp,sp,64
 *
 * (That's 'ffs', only from the left, not the right..)
 */
{

  if (a < 0)
     b98:	04400130 	bltz	v0,105c <Reflection_coefficients+0x54c>
     b9c:	00401821 	addu	v1,v0,zero
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     ba0:	3c06ffff 	lui	a2,0xffff
     ba4:	00663024 	and	a2,v1,a2
     ba8:	10c00123 	beqz	a2,1038 <Reflection_coefficients+0x528>
     bac:	3066ff00 	andi	a2,v1,0xff00
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     bb0:	3c06ff00 	lui	a2,0xff00
     bb4:	00663024 	and	a2,v1,a2
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     bb8:	14c0012f 	bnez	a2,1078 <Reflection_coefficients+0x568>
     bbc:	3c060000 	lui	a2,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
     bc0:	00031c03 	sra	v1,v1,0x10
     bc4:	306300ff 	andi	v1,v1,0xff
     bc8:	24c60000 	addiu	a2,a2,0
     bcc:	00661821 	addu	v1,v1,a2
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
     bd0:	90630000 	lbu	v1,0(v1)
     bd4:	00000000 	sll	zero,zero,0x0
     bd8:	24630007 	addiu	v1,v1,7
      return;
    }

  temp = gsm_norm (L_ACF[0]);
  for (i = 0; i <= 8; i++)
    ACF[i] = SASR (L_ACF[i] << temp, 16);
     bdc:	8c870004 	lw	a3,4(a0)
     be0:	8c8b0010 	lw	t3,16(a0)
     be4:	8c8a0014 	lw	t2,20(a0)
     be8:	00621004 	sllv	v0,v0,v1
     bec:	00673804 	sllv	a3,a3,v1
     bf0:	8c8d0008 	lw	t5,8(a0)
     bf4:	8c8c000c 	lw	t4,12(a0)
     bf8:	8c890018 	lw	t1,24(a0)
     bfc:	8c86001c 	lw	a2,28(a0)
     c00:	00073c03 	sra	a3,a3,0x10
     c04:	006b5804 	sllv	t3,t3,v1
     c08:	006a5004 	sllv	t2,t2,v1
     c0c:	00021403 	sra	v0,v0,0x10
     c10:	8c880020 	lw	t0,32(a0)
     c14:	000b5c03 	sra	t3,t3,0x10
     c18:	000a5403 	sra	t2,t2,0x10
     c1c:	a7a20000 	sh	v0,0(sp)
     c20:	a7a70002 	sh	a3,2(sp)
     c24:	006d6804 	sllv	t5,t5,v1
     c28:	006c6004 	sllv	t4,t4,v1
     c2c:	00694804 	sllv	t1,t1,v1
     c30:	00663004 	sllv	a2,a2,v1
     c34:	a7ab0008 	sh	t3,8(sp)
     c38:	a7aa000a 	sh	t2,10(sp)

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
     c3c:	a7a7002a 	sh	a3,42(sp)
  for (i = 0; i <= 8; i++)
    P[i] = ACF[i];
     c40:	8fa70000 	lw	a3,0(sp)

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
     c44:	8fa40008 	lw	a0,8(sp)
      return;
    }

  temp = gsm_norm (L_ACF[0]);
  for (i = 0; i <= 8; i++)
    ACF[i] = SASR (L_ACF[i] << temp, 16);
     c48:	000d6c03 	sra	t5,t5,0x10
     c4c:	000c6403 	sra	t4,t4,0x10
     c50:	00094c03 	sra	t1,t1,0x10
     c54:	00063403 	sra	a2,a2,0x10
     c58:	a7ad0004 	sh	t5,4(sp)
     c5c:	a7ac0006 	sh	t4,6(sp)
     c60:	a7a9000c 	sh	t1,12(sp)
     c64:	a7a6000e 	sh	a2,14(sp)
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
  for (i = 0; i <= 8; i++)
    P[i] = ACF[i];
     c68:	afa70014 	sw	a3,20(sp)

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
     c6c:	8fa60004 	lw	a2,4(sp)
     c70:	8fa2000c 	lw	v0,12(sp)
      return;
    }

  temp = gsm_norm (L_ACF[0]);
  for (i = 0; i <= 8; i++)
    ACF[i] = SASR (L_ACF[i] << temp, 16);
     c74:	00681804 	sllv	v1,t0,v1

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
     c78:	afa40030 	sw	a0,48(sp)
  for (i = 0; i <= 8; i++)
    P[i] = ACF[i];
     c7c:	afa4001c 	sw	a0,28(sp)
  /*   Compute reflection coefficients
   */
  for (n = 1; n <= 8; n++, r++)
    {

      temp = P[1];
     c80:	87a40016 	lh	a0,22(sp)
      return;
    }

  temp = gsm_norm (L_ACF[0]);
  for (i = 0; i <= 8; i++)
    ACF[i] = SASR (L_ACF[i] << temp, 16);
     c84:	00031c03 	sra	v1,v1,0x10
     c88:	a7a30010 	sh	v1,16(sp)

  /*   Initialize array P[..] and K[..] for the recursion.
   */

  for (i = 1; i <= 7; i++)
    K[i] = ACF[i];
     c8c:	afa6002c 	sw	a2,44(sp)
     c90:	afa20034 	sw	v0,52(sp)
     c94:	27af0014 	addiu	t7,sp,20
  for (i = 0; i <= 8; i++)
    P[i] = ACF[i];
     c98:	afa60018 	sw	a2,24(sp)
     c9c:	afa20020 	sw	v0,32(sp)
     ca0:	a7a30024 	sh	v1,36(sp)
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
     ca4:	27a90022 	addiu	t1,sp,34
     ca8:	240c0001 	addiu	t4,zero,1
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
     cac:	240b8000 	addiu	t3,zero,-32768

      *r = gsm_div (temp, P[0]);

      if (P[1] > 0)
	*r = -*r;		/* r[n] = sub(0, r[n]) */
      if (n == 8)
     cb0:	240d0008 	addiu	t5,zero,8
word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
  return saturate (sum);
     cb4:	340a8000 	ori	t2,zero,0x8000
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
     cb8:	048000d9 	bltz	a0,1020 <Reflection_coefficients+0x510>
     cbc:	240e0009 	addiu	t6,zero,9
     cc0:	00801821 	addu	v1,a0,zero
  for (n = 1; n <= 8; n++, r++)
    {

      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
     cc4:	87a20014 	lh	v0,20(sp)
     cc8:	00000000 	sll	zero,zero,0x0
     ccc:	0043302a 	slt	a2,v0,v1
     cd0:	14c00143 	bnez	a2,11e0 <Reflection_coefficients+0x6d0>
     cd4:	00000000 	sll	zero,zero,0x0
  /* The parameter num sometimes becomes zero.
   * Although this is explicitly guarded against in 4.2.5,
   * we assume that the result should then be zero as well.
   */

  if (num == 0)
     cd8:	106000fa 	beqz	v1,10c4 <Reflection_coefficients+0x5b4>
     cdc:	00033040 	sll	a2,v1,0x1
  while (k--)
    {
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
     ce0:	00c2182a 	slt	v1,a2,v0
     ce4:	146000f9 	bnez	v1,10cc <Reflection_coefficients+0x5bc>
     ce8:	00001821 	addu	v1,zero,zero
	{
	  L_num -= L_denum;
     cec:	00c23023 	subu	a2,a2,v0
     cf0:	24030004 	addiu	v1,zero,4
     cf4:	24080003 	addiu	t0,zero,3
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     cf8:	00063040 	sll	a2,a2,0x1

      if (L_num >= L_denum)
     cfc:	00c2382a 	slt	a3,a2,v0
     d00:	14e00003 	bnez	a3,d10 <Reflection_coefficients+0x200>
     d04:	00000000 	sll	zero,zero,0x0
	{
	  L_num -= L_denum;
     d08:	00c23023 	subu	a2,a2,v0
     d0c:	00081840 	sll	v1,t0,0x1
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     d10:	00063040 	sll	a2,a2,0x1

      if (L_num >= L_denum)
     d14:	00c2382a 	slt	a3,a2,v0
     d18:	14e00005 	bnez	a3,d30 <Reflection_coefficients+0x220>
     d1c:	00000000 	sll	zero,zero,0x0
	{
	  L_num -= L_denum;
	  div++;
     d20:	24630001 	addiu	v1,v1,1
     d24:	00031c00 	sll	v1,v1,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     d28:	00c23023 	subu	a2,a2,v0
	  div++;
     d2c:	00031c03 	sra	v1,v1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     d30:	00063040 	sll	a2,a2,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     d34:	00031840 	sll	v1,v1,0x1
     d38:	00031c00 	sll	v1,v1,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     d3c:	00c2382a 	slt	a3,a2,v0
     d40:	14e00005 	bnez	a3,d58 <Reflection_coefficients+0x248>
     d44:	00031c03 	sra	v1,v1,0x10
	{
	  L_num -= L_denum;
	  div++;
     d48:	24630001 	addiu	v1,v1,1
     d4c:	00031c00 	sll	v1,v1,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     d50:	00c23023 	subu	a2,a2,v0
	  div++;
     d54:	00031c03 	sra	v1,v1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     d58:	00063040 	sll	a2,a2,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     d5c:	00031840 	sll	v1,v1,0x1
     d60:	00031c00 	sll	v1,v1,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     d64:	00c2382a 	slt	a3,a2,v0
     d68:	14e00005 	bnez	a3,d80 <Reflection_coefficients+0x270>
     d6c:	00031c03 	sra	v1,v1,0x10
	{
	  L_num -= L_denum;
	  div++;
     d70:	24630001 	addiu	v1,v1,1
     d74:	00031c00 	sll	v1,v1,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     d78:	00c23023 	subu	a2,a2,v0
	  div++;
     d7c:	00031c03 	sra	v1,v1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     d80:	00063040 	sll	a2,a2,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     d84:	00031840 	sll	v1,v1,0x1
     d88:	00031c00 	sll	v1,v1,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     d8c:	00c2382a 	slt	a3,a2,v0
     d90:	14e00005 	bnez	a3,da8 <Reflection_coefficients+0x298>
     d94:	00031c03 	sra	v1,v1,0x10
	{
	  L_num -= L_denum;
	  div++;
     d98:	24630001 	addiu	v1,v1,1
     d9c:	00031c00 	sll	v1,v1,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     da0:	00c23023 	subu	a2,a2,v0
	  div++;
     da4:	00031c03 	sra	v1,v1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     da8:	00063040 	sll	a2,a2,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     dac:	00031840 	sll	v1,v1,0x1
     db0:	00031c00 	sll	v1,v1,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     db4:	00c2382a 	slt	a3,a2,v0
     db8:	14e00005 	bnez	a3,dd0 <Reflection_coefficients+0x2c0>
     dbc:	00031c03 	sra	v1,v1,0x10
	{
	  L_num -= L_denum;
	  div++;
     dc0:	24630001 	addiu	v1,v1,1
     dc4:	00031c00 	sll	v1,v1,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     dc8:	00c23023 	subu	a2,a2,v0
	  div++;
     dcc:	00031c03 	sra	v1,v1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     dd0:	00063040 	sll	a2,a2,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     dd4:	00031840 	sll	v1,v1,0x1
     dd8:	00031c00 	sll	v1,v1,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     ddc:	00c2382a 	slt	a3,a2,v0
     de0:	14e00005 	bnez	a3,df8 <Reflection_coefficients+0x2e8>
     de4:	00031c03 	sra	v1,v1,0x10
	{
	  L_num -= L_denum;
	  div++;
     de8:	24630001 	addiu	v1,v1,1
     dec:	00031c00 	sll	v1,v1,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     df0:	00c23023 	subu	a2,a2,v0
	  div++;
     df4:	00031c03 	sra	v1,v1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     df8:	00063040 	sll	a2,a2,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     dfc:	00031840 	sll	v1,v1,0x1
     e00:	00031c00 	sll	v1,v1,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     e04:	00c2382a 	slt	a3,a2,v0
     e08:	14e00005 	bnez	a3,e20 <Reflection_coefficients+0x310>
     e0c:	00031c03 	sra	v1,v1,0x10
	{
	  L_num -= L_denum;
	  div++;
     e10:	24630001 	addiu	v1,v1,1
     e14:	00031c00 	sll	v1,v1,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     e18:	00c23023 	subu	a2,a2,v0
	  div++;
     e1c:	00031c03 	sra	v1,v1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     e20:	00063040 	sll	a2,a2,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     e24:	00031840 	sll	v1,v1,0x1
     e28:	00031c00 	sll	v1,v1,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     e2c:	00c2382a 	slt	a3,a2,v0
     e30:	14e00005 	bnez	a3,e48 <Reflection_coefficients+0x338>
     e34:	00031c03 	sra	v1,v1,0x10
	{
	  L_num -= L_denum;
	  div++;
     e38:	24630001 	addiu	v1,v1,1
     e3c:	00031c00 	sll	v1,v1,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     e40:	00c23023 	subu	a2,a2,v0
	  div++;
     e44:	00031c03 	sra	v1,v1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     e48:	00063040 	sll	a2,a2,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     e4c:	00031840 	sll	v1,v1,0x1
     e50:	00031c00 	sll	v1,v1,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     e54:	00c2382a 	slt	a3,a2,v0
     e58:	14e00005 	bnez	a3,e70 <Reflection_coefficients+0x360>
     e5c:	00031c03 	sra	v1,v1,0x10
	{
	  L_num -= L_denum;
	  div++;
     e60:	24630001 	addiu	v1,v1,1
     e64:	00031c00 	sll	v1,v1,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     e68:	00c23023 	subu	a2,a2,v0
	  div++;
     e6c:	00031c03 	sra	v1,v1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     e70:	00063040 	sll	a2,a2,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     e74:	00031840 	sll	v1,v1,0x1
     e78:	00031c00 	sll	v1,v1,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     e7c:	00c2382a 	slt	a3,a2,v0
     e80:	14e00005 	bnez	a3,e98 <Reflection_coefficients+0x388>
     e84:	00031c03 	sra	v1,v1,0x10
	{
	  L_num -= L_denum;
	  div++;
     e88:	24630001 	addiu	v1,v1,1
     e8c:	00031c00 	sll	v1,v1,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     e90:	00c23023 	subu	a2,a2,v0
	  div++;
     e94:	00031c03 	sra	v1,v1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     e98:	00063040 	sll	a2,a2,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     e9c:	00031840 	sll	v1,v1,0x1
     ea0:	00031c00 	sll	v1,v1,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     ea4:	00c2382a 	slt	a3,a2,v0
     ea8:	14e00005 	bnez	a3,ec0 <Reflection_coefficients+0x3b0>
     eac:	00031c03 	sra	v1,v1,0x10
	{
	  L_num -= L_denum;
	  div++;
     eb0:	24630001 	addiu	v1,v1,1
     eb4:	00031c00 	sll	v1,v1,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     eb8:	00c23023 	subu	a2,a2,v0
	  div++;
     ebc:	00031c03 	sra	v1,v1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     ec0:	00063040 	sll	a2,a2,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     ec4:	00031840 	sll	v1,v1,0x1
     ec8:	00031c00 	sll	v1,v1,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     ecc:	00c2382a 	slt	a3,a2,v0
     ed0:	14e00005 	bnez	a3,ee8 <Reflection_coefficients+0x3d8>
     ed4:	00031c03 	sra	v1,v1,0x10
	{
	  L_num -= L_denum;
	  div++;
     ed8:	24630001 	addiu	v1,v1,1
     edc:	00031c00 	sll	v1,v1,0x10
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
	{
	  L_num -= L_denum;
     ee0:	00c23023 	subu	a2,a2,v0
	  div++;
     ee4:	00031c03 	sra	v1,v1,0x10
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;
     ee8:	00063040 	sll	a2,a2,0x1
  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
     eec:	00031840 	sll	v1,v1,0x1
     ef0:	00031c00 	sll	v1,v1,0x10
      L_num <<= 1;

      if (L_num >= L_denum)
     ef4:	00c2302a 	slt	a2,a2,v0
     ef8:	14c00004 	bnez	a2,f0c <Reflection_coefficients+0x3fc>
     efc:	00031c03 	sra	v1,v1,0x10
	{
	  L_num -= L_denum;
	  div++;
     f00:	24630001 	addiu	v1,v1,1
     f04:	00031c00 	sll	v1,v1,0x10
     f08:	00031c03 	sra	v1,v1,0x10
	  return;
	}

      *r = gsm_div (temp, P[0]);

      if (P[1] > 0)
     f0c:	18800005 	blez	a0,f24 <Reflection_coefficients+0x414>
     f10:	a4a30000 	sh	v1,0(a1)
	*r = -*r;		/* r[n] = sub(0, r[n]) */
     f14:	00031823 	negu	v1,v1
     f18:	00031c00 	sll	v1,v1,0x10
     f1c:	00031c03 	sra	v1,v1,0x10
     f20:	a4a30000 	sh	v1,0(a1)
      if (n == 8)
     f24:	118dff1a 	beq	t4,t5,b90 <Reflection_coefficients+0x80>
     f28:	00000000 	sll	zero,zero,0x0

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
     f2c:	106b0069 	beq	v1,t3,10d4 <Reflection_coefficients+0x5c4>
     f30:	00640018 	mult	v1,a0
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
     f34:	00002012 	mflo	a0
     f38:	24844000 	addiu	a0,a0,16384
      prod >>= 15;
     f3c:	000423c3 	sra	a0,a0,0xf
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
     f40:	00042400 	sll	a0,a0,0x10
     f44:	00042403 	sra	a0,a0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     f48:	00821021 	addu	v0,a0,v0
  return saturate (sum);
     f4c:	004a202a 	slt	a0,v0,t2
     f50:	14800002 	bnez	a0,f5c <Reflection_coefficients+0x44c>
     f54:	01ac2023 	subu	a0,t5,t4
     f58:	24027fff 	addiu	v0,zero,32767
      /*  Schur recursion
       */
      temp = GSM_MULT_R (P[1], *r);
      P[0] = GSM_ADD (P[0], temp);

      for (m = 1; m <= 8 - n; m++)
     f5c:	18800029 	blez	a0,1004 <Reflection_coefficients+0x4f4>
     f60:	a7a20014 	sh	v0,20(sp)
     f64:	106b005f 	beq	v1,t3,10e4 <Reflection_coefficients+0x5d4>
     f68:	27a4002a 	addiu	a0,sp,42
     f6c:	01e01021 	addu	v0,t7,zero
	{
	  temp = GSM_MULT_R (K[m], *r);
     f70:	84860000 	lh	a2,0(a0)
	  P[m] = GSM_ADD (P[m + 1], temp);
     f74:	84470004 	lh	a3,4(v0)
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
     f78:	00660018 	mult	v1,a2
     f7c:	00004012 	mflo	t0
     f80:	25084000 	addiu	t0,t0,16384
      prod >>= 15;
     f84:	000843c3 	sra	t0,t0,0xf

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     f88:	00084400 	sll	t0,t0,0x10
     f8c:	00084403 	sra	t0,t0,0x10
     f90:	01074021 	addu	t0,t0,a3
  return saturate (sum);
     f94:	29188000 	slti	t8,t0,-32768
     f98:	17000048 	bnez	t8,10bc <Reflection_coefficients+0x5ac>
     f9c:	010ac02a 	slt	t8,t0,t2
     fa0:	17000003 	bnez	t8,fb0 <Reflection_coefficients+0x4a0>
     fa4:	00084400 	sll	t0,t0,0x10
     fa8:	24087fff 	addiu	t0,zero,32767
     fac:	00084400 	sll	t0,t0,0x10
     fb0:	00084403 	sra	t0,t0,0x10
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
     fb4:	00670018 	mult	v1,a3
     fb8:	00003812 	mflo	a3
     fbc:	24e74000 	addiu	a3,a3,16384
      prod >>= 15;
     fc0:	00073bc3 	sra	a3,a3,0xf

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
     fc4:	00073c00 	sll	a3,a3,0x10
     fc8:	00073c03 	sra	a3,a3,0x10
     fcc:	00e63021 	addu	a2,a3,a2
  return saturate (sum);
     fd0:	28c78000 	slti	a3,a2,-32768
     fd4:	14e00037 	bnez	a3,10b4 <Reflection_coefficients+0x5a4>
     fd8:	a4480002 	sh	t0,2(v0)
     fdc:	00ca382a 	slt	a3,a2,t2
     fe0:	14e00003 	bnez	a3,ff0 <Reflection_coefficients+0x4e0>
     fe4:	00063400 	sll	a2,a2,0x10
     fe8:	24067fff 	addiu	a2,zero,32767
     fec:	00063400 	sll	a2,a2,0x10
     ff0:	00063403 	sra	a2,a2,0x10

	  temp = GSM_MULT_R (P[m + 1], *r);
	  K[m] = GSM_ADD (K[m], temp);
     ff4:	24420002 	addiu	v0,v0,2
     ff8:	a4860000 	sh	a2,0(a0)
      /*  Schur recursion
       */
      temp = GSM_MULT_R (P[1], *r);
      P[0] = GSM_ADD (P[0], temp);

      for (m = 1; m <= 8 - n; m++)
     ffc:	1522ffdc 	bne	t1,v0,f70 <Reflection_coefficients+0x460>
    1000:	24840002 	addiu	a0,a0,2
  for (i = 0; i <= 8; i++)
    P[i] = ACF[i];

  /*   Compute reflection coefficients
   */
  for (n = 1; n <= 8; n++, r++)
    1004:	258c0001 	addiu	t4,t4,1
    1008:	118efee1 	beq	t4,t6,b90 <Reflection_coefficients+0x80>
    100c:	2529fffe 	addiu	t1,t1,-2
    {

      temp = P[1];
    1010:	87a40016 	lh	a0,22(sp)
    1014:	00000000 	sll	zero,zero,0x0
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
    1018:	0481ff29 	bgez	a0,cc0 <Reflection_coefficients+0x1b0>
    101c:	24a50002 	addiu	a1,a1,2
    1020:	108b006d 	beq	a0,t3,11d8 <Reflection_coefficients+0x6c8>
    1024:	00000000 	sll	zero,zero,0x0
    1028:	00041823 	negu	v1,a0
    102c:	00031c00 	sll	v1,v1,0x10
    1030:	08000331 	j	cc4 <Reflection_coefficients+0x1b4>
    1034:	00031c03 	sra	v1,v1,0x10
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
    1038:	10c00018 	beqz	a2,109c <Reflection_coefficients+0x58c>
    103c:	3c060000 	lui	a2,0x0
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
    1040:	00031a03 	sra	v1,v1,0x8
    1044:	306300ff 	andi	v1,v1,0xff
    1048:	24c60000 	addiu	a2,a2,0
    104c:	00661821 	addu	v1,v1,a2
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
    1050:	90630000 	lbu	v1,0(v1)
    1054:	080002f7 	j	bdc <Reflection_coefficients+0xcc>
    1058:	2463000f 	addiu	v1,v1,15
 */
{

  if (a < 0)
    {
      if (a <= -1073741824)
    105c:	3c03c000 	lui	v1,0xc000
    1060:	24630001 	addiu	v1,v1,1
    1064:	0043182a 	slt	v1,v0,v1
    1068:	14600089 	bnez	v1,1290 <Reflection_coefficients+0x780>
    106c:	00000000 	sll	zero,zero,0x0
	return 0;
      a = ~a;
    1070:	080002e8 	j	ba0 <Reflection_coefficients+0x90>
    1074:	00021827 	nor	v1,zero,v0
    }

  return a & 0xffff0000 ?
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
    1078:	00031e02 	srl	v1,v1,0x18
    107c:	24c60000 	addiu	a2,a2,0
    1080:	00661821 	addu	v1,v1,a2
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
    1084:	90630000 	lbu	v1,0(v1)
    1088:	00000000 	sll	zero,zero,0x0
    108c:	2463ffff 	addiu	v1,v1,-1
    1090:	00031c00 	sll	v1,v1,0x10
    1094:	080002f7 	j	bdc <Reflection_coefficients+0xcc>
    1098:	00031c03 	sra	v1,v1,0x10
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
    109c:	306300ff 	andi	v1,v1,0xff
    10a0:	24c60000 	addiu	a2,a2,0
    10a4:	00661821 	addu	v1,v1,a2
      if (a <= -1073741824)
	return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
    10a8:	90630000 	lbu	v1,0(v1)
    10ac:	080002f7 	j	bdc <Reflection_coefficients+0xcc>
    10b0:	24630017 	addiu	v1,v1,23
word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
  return saturate (sum);
    10b4:	080003fd 	j	ff4 <Reflection_coefficients+0x4e4>
    10b8:	24068000 	addiu	a2,zero,-32768
    10bc:	080003ed 	j	fb4 <Reflection_coefficients+0x4a4>
    10c0:	24088000 	addiu	t0,zero,-32768
   * Although this is explicitly guarded against in 4.2.5,
   * we assume that the result should then be zero as well.
   */

  if (num == 0)
    return 0;
    10c4:	080003c3 	j	f0c <Reflection_coefficients+0x3fc>
    10c8:	00001821 	addu	v1,zero,zero
  while (k--)
    {
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
    10cc:	0800033e 	j	cf8 <Reflection_coefficients+0x1e8>
    10d0:	24080001 	addiu	t0,zero,1

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    10d4:	1483ff97 	bne	a0,v1,f34 <Reflection_coefficients+0x424>
    10d8:	00000000 	sll	zero,zero,0x0
    10dc:	080003d2 	j	f48 <Reflection_coefficients+0x438>
    10e0:	24047fff 	addiu	a0,zero,32767
      temp = GSM_MULT_R (P[1], *r);
      P[0] = GSM_ADD (P[0], temp);

      for (m = 1; m <= 8 - n; m++)
	{
	  temp = GSM_MULT_R (K[m], *r);
    10e4:	84860000 	lh	a2,0(a0)
    10e8:	00000000 	sll	zero,zero,0x0
    10ec:	10cb002a 	beq	a2,t3,1198 <Reflection_coefficients+0x688>
    10f0:	01e01021 	addu	v0,t7,zero
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
    10f4:	00660018 	mult	v1,a2
	  P[m] = GSM_ADD (P[m + 1], temp);
    10f8:	84470004 	lh	a3,4(v0)
    10fc:	00004012 	mflo	t0
    1100:	25084000 	addiu	t0,t0,16384
      prod >>= 15;
    1104:	000843c3 	sra	t0,t0,0xf
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
    1108:	00084400 	sll	t0,t0,0x10
    110c:	00084403 	sra	t0,t0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    1110:	01074021 	addu	t0,t0,a3
  return saturate (sum);
    1114:	29188000 	slti	t8,t0,-32768
    1118:	17000025 	bnez	t8,11b0 <Reflection_coefficients+0x6a0>
    111c:	010ac02a 	slt	t8,t0,t2
    1120:	17000003 	bnez	t8,1130 <Reflection_coefficients+0x620>
    1124:	00084400 	sll	t0,t0,0x10
    1128:	24087fff 	addiu	t0,zero,32767
    112c:	00084400 	sll	t0,t0,0x10
    1130:	00084403 	sra	t0,t0,0x10

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    1134:	10eb0021 	beq	a3,t3,11bc <Reflection_coefficients+0x6ac>
    1138:	a4480002 	sh	t0,2(v0)
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
    113c:	00670018 	mult	v1,a3
    1140:	00003812 	mflo	a3
    1144:	24e74000 	addiu	a3,a3,16384
      prod >>= 15;
    1148:	00073bc3 	sra	a3,a3,0xf
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    return MAX_WORD;
  else
    {
      prod = (longword) a *(longword) b + 16384;
    114c:	00073c00 	sll	a3,a3,0x10
    1150:	00073c03 	sra	a3,a3,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    1154:	00e63021 	addu	a2,a3,a2
  return saturate (sum);
    1158:	28c78000 	slti	a3,a2,-32768
    115c:	14e0001c 	bnez	a3,11d0 <Reflection_coefficients+0x6c0>
    1160:	00ca382a 	slt	a3,a2,t2
    1164:	14e00003 	bnez	a3,1174 <Reflection_coefficients+0x664>
    1168:	00063400 	sll	a2,a2,0x10
    116c:	24067fff 	addiu	a2,zero,32767
    1170:	00063400 	sll	a2,a2,0x10
    1174:	00063403 	sra	a2,a2,0x10

	  temp = GSM_MULT_R (P[m + 1], *r);
	  K[m] = GSM_ADD (K[m], temp);
    1178:	24420002 	addiu	v0,v0,2
    117c:	a4860000 	sh	a2,0(a0)
      /*  Schur recursion
       */
      temp = GSM_MULT_R (P[1], *r);
      P[0] = GSM_ADD (P[0], temp);

      for (m = 1; m <= 8 - n; m++)
    1180:	1122ffa0 	beq	t1,v0,1004 <Reflection_coefficients+0x4f4>
    1184:	24840002 	addiu	a0,a0,2
	{
	  temp = GSM_MULT_R (K[m], *r);
    1188:	84860000 	lh	a2,0(a0)
    118c:	00000000 	sll	zero,zero,0x0

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    1190:	14cbffd9 	bne	a2,t3,10f8 <Reflection_coefficients+0x5e8>
    1194:	00660018 	mult	v1,a2
	  P[m] = GSM_ADD (P[m + 1], temp);
    1198:	84470004 	lh	a3,4(v0)
    119c:	24087fff 	addiu	t0,zero,32767

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    11a0:	01074021 	addu	t0,t0,a3
  return saturate (sum);
    11a4:	29188000 	slti	t8,t0,-32768
    11a8:	1300ffdd 	beqz	t8,1120 <Reflection_coefficients+0x610>
    11ac:	010ac02a 	slt	t8,t0,t2
    11b0:	24088000 	addiu	t0,zero,-32768

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == MIN_WORD && a == MIN_WORD)
    11b4:	14ebffe1 	bne	a3,t3,113c <Reflection_coefficients+0x62c>
    11b8:	a4480002 	sh	t0,2(v0)
    11bc:	24077fff 	addiu	a3,zero,32767

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    11c0:	00e63021 	addu	a2,a3,a2
  return saturate (sum);
    11c4:	28c78000 	slti	a3,a2,-32768
    11c8:	10e0ffe6 	beqz	a3,1164 <Reflection_coefficients+0x654>
    11cc:	00ca382a 	slt	a3,a2,t2
    11d0:	0800045e 	j	1178 <Reflection_coefficients+0x668>
    11d4:	24068000 	addiu	a2,zero,-32768
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
    11d8:	08000331 	j	cc4 <Reflection_coefficients+0x1b4>
    11dc:	24037fff 	addiu	v1,zero,32767

      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
    11e0:	29820009 	slti	v0,t4,9
    11e4:	1040fe6a 	beqz	v0,b90 <Reflection_coefficients+0x80>
    11e8:	00a01821 	addu	v1,a1,zero
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
    11ec:	000c2027 	nor	a0,zero,t4
    11f0:	30a20003 	andi	v0,a1,0x3

      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
    11f4:	2484000a 	addiu	a0,a0,10
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
    11f8:	00021042 	srl	v0,v0,0x1

      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
    11fc:	0082302b 	sltu	a2,a0,v0
    1200:	14c00025 	bnez	a2,1298 <Reflection_coefficients+0x788>
    1204:	00000000 	sll	zero,zero,0x0
    1208:	10400006 	beqz	v0,1224 <Reflection_coefficients+0x714>
    120c:	00824023 	subu	t0,a0,v0
	    *r++ = 0;
    1210:	a4a00000 	sh	zero,0(a1)

      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
    1214:	258c0001 	addiu	t4,t4,1
    1218:	1082fe5d 	beq	a0,v0,b90 <Reflection_coefficients+0x80>
    121c:	24a50002 	addiu	a1,a1,2
    1220:	00824023 	subu	t0,a0,v0
    1224:	00083042 	srl	a2,t0,0x1
    1228:	00063840 	sll	a3,a2,0x1
    122c:	10e0000c 	beqz	a3,1260 <Reflection_coefficients+0x750>
    1230:	00021040 	sll	v0,v0,0x1
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
    1234:	00621821 	addu	v1,v1,v0
    1238:	00001021 	addu	v0,zero,zero
      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
	    *r++ = 0;
    123c:	24420001 	addiu	v0,v0,1
    1240:	0046202b 	sltu	a0,v0,a2
    1244:	ac600000 	sw	zero,0(v1)
    1248:	1480fffc 	bnez	a0,123c <Reflection_coefficients+0x72c>
    124c:	24630004 	addiu	v1,v1,4
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
    1250:	00071040 	sll	v0,a3,0x1
      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
	    *r++ = 0;
    1254:	00a22821 	addu	a1,a1,v0
    1258:	1107fe4d 	beq	t0,a3,b90 <Reflection_coefficients+0x80>
    125c:	01876021 	addu	t4,t4,a3

      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
    1260:	258c0001 	addiu	t4,t4,1
    1264:	29820009 	slti	v0,t4,9
	    *r++ = 0;
    1268:	a4a00000 	sh	zero,0(a1)

      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
    126c:	1040fe48 	beqz	v0,b90 <Reflection_coefficients+0x80>
    1270:	24a50002 	addiu	a1,a1,2
    1274:	258c0001 	addiu	t4,t4,1
    1278:	29820009 	slti	v0,t4,9
	    *r++ = 0;
    127c:	a4a00000 	sh	zero,0(a1)

      temp = P[1];
      temp = GSM_ABS (temp);
      if (P[0] < temp)
	{
	  for (i = n; i <= 8; i++)
    1280:	1440fff7 	bnez	v0,1260 <Reflection_coefficients+0x750>
    1284:	24a50002 	addiu	a1,a1,2
    1288:	080002e4 	j	b90 <Reflection_coefficients+0x80>
    128c:	00000000 	sll	zero,zero,0x0
 */
{

  if (a < 0)
    {
      if (a <= -1073741824)
    1290:	080002f7 	j	bdc <Reflection_coefficients+0xcc>
    1294:	00001821 	addu	v1,zero,zero
    1298:	08000482 	j	1208 <Reflection_coefficients+0x6f8>
    129c:	00801021 	addu	v0,a0,zero
}

/* 4.2.5 */

void
Reflection_coefficients (longword * L_ACF /* 0...8        IN      */ ,
    12a0:	080002cf 	j	b3c <Reflection_coefficients+0x2c>
    12a4:	24020008 	addiu	v0,zero,8

000012a8 <Transformation_to_Log_Area_Ratios>:
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    12a8:	84820000 	lh	v0,0(a0)
    12ac:	00000000 	sll	zero,zero,0x0
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
    12b0:	04400107 	bltz	v0,16d0 <Transformation_to_Log_Area_Ratios+0x428>
    12b4:	00401821 	addu	v1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    12b8:	28655666 	slti	a1,v1,22118
    12bc:	10a00059 	beqz	a1,1424 <Transformation_to_Log_Area_Ratios+0x17c>
    12c0:	2865799a 	slti	a1,v1,31130
	{
	  temp >>= 1;
    12c4:	00031843 	sra	v1,v1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    12c8:	0440005c 	bltz	v0,143c <Transformation_to_Log_Area_Ratios+0x194>
    12cc:	00000000 	sll	zero,zero,0x0
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    12d0:	84820002 	lh	v0,2(a0)
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    12d4:	a4830000 	sh	v1,0(a0)
    12d8:	0440005f 	bltz	v0,1458 <Transformation_to_Log_Area_Ratios+0x1b0>
    12dc:	24830002 	addiu	v1,a0,2
    12e0:	00402821 	addu	a1,v0,zero
    {

      temp = *r;
      temp = GSM_ABS (temp);

      if (temp < 22118)
    12e4:	28a65666 	slti	a2,a1,22118
    12e8:	10c00064 	beqz	a2,147c <Transformation_to_Log_Area_Ratios+0x1d4>
    12ec:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
    12f0:	00052843 	sra	a1,a1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    12f4:	04400067 	bltz	v0,1494 <Transformation_to_Log_Area_Ratios+0x1ec>
    12f8:	00000000 	sll	zero,zero,0x0
    12fc:	a4850002 	sh	a1,2(a0)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1300:	84620002 	lh	v0,2(v1)
    1304:	00000000 	sll	zero,zero,0x0
    1308:	0440006a 	bltz	v0,14b4 <Transformation_to_Log_Area_Ratios+0x20c>
    130c:	24640002 	addiu	a0,v1,2
    1310:	00402821 	addu	a1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1314:	28a65666 	slti	a2,a1,22118
    1318:	10c0006f 	beqz	a2,14d8 <Transformation_to_Log_Area_Ratios+0x230>
    131c:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
    1320:	00052843 	sra	a1,a1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1324:	04400072 	bltz	v0,14f0 <Transformation_to_Log_Area_Ratios+0x248>
    1328:	00000000 	sll	zero,zero,0x0
    132c:	a4650002 	sh	a1,2(v1)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1330:	84820002 	lh	v0,2(a0)
    1334:	00000000 	sll	zero,zero,0x0
    1338:	04400075 	bltz	v0,1510 <Transformation_to_Log_Area_Ratios+0x268>
    133c:	24830002 	addiu	v1,a0,2
    1340:	00402821 	addu	a1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1344:	28a65666 	slti	a2,a1,22118
    1348:	10c0007a 	beqz	a2,1534 <Transformation_to_Log_Area_Ratios+0x28c>
    134c:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
    1350:	00052843 	sra	a1,a1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1354:	0440007d 	bltz	v0,154c <Transformation_to_Log_Area_Ratios+0x2a4>
    1358:	00000000 	sll	zero,zero,0x0
    135c:	a4850002 	sh	a1,2(a0)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1360:	84620002 	lh	v0,2(v1)
    1364:	00000000 	sll	zero,zero,0x0
    1368:	04400080 	bltz	v0,156c <Transformation_to_Log_Area_Ratios+0x2c4>
    136c:	24640002 	addiu	a0,v1,2
    1370:	00402821 	addu	a1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1374:	28a65666 	slti	a2,a1,22118
    1378:	10c00085 	beqz	a2,1590 <Transformation_to_Log_Area_Ratios+0x2e8>
    137c:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
    1380:	00052843 	sra	a1,a1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1384:	04400088 	bltz	v0,15a8 <Transformation_to_Log_Area_Ratios+0x300>
    1388:	00000000 	sll	zero,zero,0x0
    138c:	a4650002 	sh	a1,2(v1)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1390:	84820002 	lh	v0,2(a0)
    1394:	00000000 	sll	zero,zero,0x0
    1398:	0440008b 	bltz	v0,15c8 <Transformation_to_Log_Area_Ratios+0x320>
    139c:	24830002 	addiu	v1,a0,2
    13a0:	00402821 	addu	a1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    13a4:	28a65666 	slti	a2,a1,22118
    13a8:	10c00090 	beqz	a2,15ec <Transformation_to_Log_Area_Ratios+0x344>
    13ac:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
    13b0:	00052843 	sra	a1,a1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    13b4:	04400093 	bltz	v0,1604 <Transformation_to_Log_Area_Ratios+0x35c>
    13b8:	00000000 	sll	zero,zero,0x0
    13bc:	a4850002 	sh	a1,2(a0)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    13c0:	84620002 	lh	v0,2(v1)
    13c4:	00000000 	sll	zero,zero,0x0
    13c8:	04400096 	bltz	v0,1624 <Transformation_to_Log_Area_Ratios+0x37c>
    13cc:	24650002 	addiu	a1,v1,2
    13d0:	00402021 	addu	a0,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    13d4:	28865666 	slti	a2,a0,22118
    13d8:	10c0009b 	beqz	a2,1648 <Transformation_to_Log_Area_Ratios+0x3a0>
    13dc:	2886799a 	slti	a2,a0,31130
	{
	  temp >>= 1;
    13e0:	00042043 	sra	a0,a0,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    13e4:	0440009e 	bltz	v0,1660 <Transformation_to_Log_Area_Ratios+0x3b8>
    13e8:	00000000 	sll	zero,zero,0x0
    13ec:	a4640002 	sh	a0,2(v1)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    13f0:	84a20002 	lh	v0,2(a1)
    13f4:	00000000 	sll	zero,zero,0x0
    13f8:	044000a2 	bltz	v0,1684 <Transformation_to_Log_Area_Ratios+0x3dc>
    13fc:	24038000 	addiu	v1,zero,-32768
    1400:	00401821 	addu	v1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1404:	28645666 	slti	a0,v1,22118
    1408:	108000a6 	beqz	a0,16a4 <Transformation_to_Log_Area_Ratios+0x3fc>
    140c:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
    1410:	00031843 	sra	v1,v1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1414:	044000a9 	bltz	v0,16bc <Transformation_to_Log_Area_Ratios+0x414>
    1418:	00000000 	sll	zero,zero,0x0
    }
}
    141c:	03e00008 	jr	ra
    1420:	a4a30002 	sh	v1,2(a1)

      if (temp < 22118)
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    1424:	10a000ba 	beqz	a1,1710 <Transformation_to_Log_Area_Ratios+0x468>
    1428:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    142c:	2463d4cd 	addiu	v1,v1,-11059
    1430:	00031c00 	sll	v1,v1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1434:	0441ffa6 	bgez	v0,12d0 <Transformation_to_Log_Area_Ratios+0x28>
    1438:	00031c03 	sra	v1,v1,0x10
    143c:	00031823 	negu	v1,v1
    1440:	00031c00 	sll	v1,v1,0x10
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1444:	84820002 	lh	v0,2(a0)
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1448:	00031c03 	sra	v1,v1,0x10
    144c:	a4830000 	sh	v1,0(a0)
    1450:	0441ffa3 	bgez	v0,12e0 <Transformation_to_Log_Area_Ratios+0x38>
    1454:	24830002 	addiu	v1,a0,2
    1458:	24058000 	addiu	a1,zero,-32768
    145c:	1045ffa5 	beq	v0,a1,12f4 <Transformation_to_Log_Area_Ratios+0x4c>
    1460:	240567fc 	addiu	a1,zero,26620
    1464:	00022823 	negu	a1,v0
    1468:	00052c00 	sll	a1,a1,0x10
    146c:	00052c03 	sra	a1,a1,0x10
    {

      temp = *r;
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1470:	28a65666 	slti	a2,a1,22118
    1474:	14c0ff9e 	bnez	a2,12f0 <Transformation_to_Log_Area_Ratios+0x48>
    1478:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    147c:	10c0009d 	beqz	a2,16f4 <Transformation_to_Log_Area_Ratios+0x44c>
    1480:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    1484:	24a5d4cd 	addiu	a1,a1,-11059
    1488:	00052c00 	sll	a1,a1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    148c:	0441ff9b 	bgez	v0,12fc <Transformation_to_Log_Area_Ratios+0x54>
    1490:	00052c03 	sra	a1,a1,0x10
    1494:	00052823 	negu	a1,a1
    1498:	00052c00 	sll	a1,a1,0x10
    149c:	00052c03 	sra	a1,a1,0x10
    14a0:	a4850002 	sh	a1,2(a0)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    14a4:	84620002 	lh	v0,2(v1)
    14a8:	00000000 	sll	zero,zero,0x0
    14ac:	0441ff98 	bgez	v0,1310 <Transformation_to_Log_Area_Ratios+0x68>
    14b0:	24640002 	addiu	a0,v1,2
    14b4:	24058000 	addiu	a1,zero,-32768
    14b8:	1045ff9a 	beq	v0,a1,1324 <Transformation_to_Log_Area_Ratios+0x7c>
    14bc:	240567fc 	addiu	a1,zero,26620
    14c0:	00022823 	negu	a1,v0
    14c4:	00052c00 	sll	a1,a1,0x10
    14c8:	00052c03 	sra	a1,a1,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
    14cc:	28a65666 	slti	a2,a1,22118
    14d0:	14c0ff93 	bnez	a2,1320 <Transformation_to_Log_Area_Ratios+0x78>
    14d4:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    14d8:	10c000a2 	beqz	a2,1764 <Transformation_to_Log_Area_Ratios+0x4bc>
    14dc:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    14e0:	24a5d4cd 	addiu	a1,a1,-11059
    14e4:	00052c00 	sll	a1,a1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    14e8:	0441ff90 	bgez	v0,132c <Transformation_to_Log_Area_Ratios+0x84>
    14ec:	00052c03 	sra	a1,a1,0x10
    14f0:	00052823 	negu	a1,a1
    14f4:	00052c00 	sll	a1,a1,0x10
    14f8:	00052c03 	sra	a1,a1,0x10
    14fc:	a4650002 	sh	a1,2(v1)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1500:	84820002 	lh	v0,2(a0)
    1504:	00000000 	sll	zero,zero,0x0
    1508:	0441ff8d 	bgez	v0,1340 <Transformation_to_Log_Area_Ratios+0x98>
    150c:	24830002 	addiu	v1,a0,2
    1510:	24058000 	addiu	a1,zero,-32768
    1514:	1045ff8f 	beq	v0,a1,1354 <Transformation_to_Log_Area_Ratios+0xac>
    1518:	240567fc 	addiu	a1,zero,26620
    151c:	00022823 	negu	a1,v0
    1520:	00052c00 	sll	a1,a1,0x10
    1524:	00052c03 	sra	a1,a1,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1528:	28a65666 	slti	a2,a1,22118
    152c:	14c0ff88 	bnez	a2,1350 <Transformation_to_Log_Area_Ratios+0xa8>
    1530:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    1534:	10c00092 	beqz	a2,1780 <Transformation_to_Log_Area_Ratios+0x4d8>
    1538:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    153c:	24a5d4cd 	addiu	a1,a1,-11059
    1540:	00052c00 	sll	a1,a1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1544:	0441ff85 	bgez	v0,135c <Transformation_to_Log_Area_Ratios+0xb4>
    1548:	00052c03 	sra	a1,a1,0x10
    154c:	00052823 	negu	a1,a1
    1550:	00052c00 	sll	a1,a1,0x10
    1554:	00052c03 	sra	a1,a1,0x10
    1558:	a4850002 	sh	a1,2(a0)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    155c:	84620002 	lh	v0,2(v1)
    1560:	00000000 	sll	zero,zero,0x0
    1564:	0441ff82 	bgez	v0,1370 <Transformation_to_Log_Area_Ratios+0xc8>
    1568:	24640002 	addiu	a0,v1,2
    156c:	24058000 	addiu	a1,zero,-32768
    1570:	1045ff84 	beq	v0,a1,1384 <Transformation_to_Log_Area_Ratios+0xdc>
    1574:	240567fc 	addiu	a1,zero,26620
    1578:	00022823 	negu	a1,v0
    157c:	00052c00 	sll	a1,a1,0x10
    1580:	00052c03 	sra	a1,a1,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1584:	28a65666 	slti	a2,a1,22118
    1588:	14c0ff7d 	bnez	a2,1380 <Transformation_to_Log_Area_Ratios+0xd8>
    158c:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    1590:	10c00082 	beqz	a2,179c <Transformation_to_Log_Area_Ratios+0x4f4>
    1594:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    1598:	24a5d4cd 	addiu	a1,a1,-11059
    159c:	00052c00 	sll	a1,a1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    15a0:	0441ff7a 	bgez	v0,138c <Transformation_to_Log_Area_Ratios+0xe4>
    15a4:	00052c03 	sra	a1,a1,0x10
    15a8:	00052823 	negu	a1,a1
    15ac:	00052c00 	sll	a1,a1,0x10
    15b0:	00052c03 	sra	a1,a1,0x10
    15b4:	a4650002 	sh	a1,2(v1)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    15b8:	84820002 	lh	v0,2(a0)
    15bc:	00000000 	sll	zero,zero,0x0
    15c0:	0441ff77 	bgez	v0,13a0 <Transformation_to_Log_Area_Ratios+0xf8>
    15c4:	24830002 	addiu	v1,a0,2
    15c8:	24058000 	addiu	a1,zero,-32768
    15cc:	1045ff79 	beq	v0,a1,13b4 <Transformation_to_Log_Area_Ratios+0x10c>
    15d0:	240567fc 	addiu	a1,zero,26620
    15d4:	00022823 	negu	a1,v0
    15d8:	00052c00 	sll	a1,a1,0x10
    15dc:	00052c03 	sra	a1,a1,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
    15e0:	28a65666 	slti	a2,a1,22118
    15e4:	14c0ff72 	bnez	a2,13b0 <Transformation_to_Log_Area_Ratios+0x108>
    15e8:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    15ec:	10c00072 	beqz	a2,17b8 <Transformation_to_Log_Area_Ratios+0x510>
    15f0:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    15f4:	24a5d4cd 	addiu	a1,a1,-11059
    15f8:	00052c00 	sll	a1,a1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    15fc:	0441ff6f 	bgez	v0,13bc <Transformation_to_Log_Area_Ratios+0x114>
    1600:	00052c03 	sra	a1,a1,0x10
    1604:	00052823 	negu	a1,a1
    1608:	00052c00 	sll	a1,a1,0x10
    160c:	00052c03 	sra	a1,a1,0x10
    1610:	a4850002 	sh	a1,2(a0)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1614:	84620002 	lh	v0,2(v1)
    1618:	00000000 	sll	zero,zero,0x0
    161c:	0441ff6c 	bgez	v0,13d0 <Transformation_to_Log_Area_Ratios+0x128>
    1620:	24650002 	addiu	a1,v1,2
    1624:	24048000 	addiu	a0,zero,-32768
    1628:	1044ff6e 	beq	v0,a0,13e4 <Transformation_to_Log_Area_Ratios+0x13c>
    162c:	240467fc 	addiu	a0,zero,26620
    1630:	00022023 	negu	a0,v0
    1634:	00042400 	sll	a0,a0,0x10
    1638:	00042403 	sra	a0,a0,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
    163c:	28865666 	slti	a2,a0,22118
    1640:	14c0ff67 	bnez	a2,13e0 <Transformation_to_Log_Area_Ratios+0x138>
    1644:	2886799a 	slti	a2,a0,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    1648:	10c00038 	beqz	a2,172c <Transformation_to_Log_Area_Ratios+0x484>
    164c:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    1650:	2484d4cd 	addiu	a0,a0,-11059
    1654:	00042400 	sll	a0,a0,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1658:	0441ff64 	bgez	v0,13ec <Transformation_to_Log_Area_Ratios+0x144>
    165c:	00042403 	sra	a0,a0,0x10
    1660:	00042023 	negu	a0,a0
    1664:	00042400 	sll	a0,a0,0x10
    1668:	00042403 	sra	a0,a0,0x10
    166c:	a4640002 	sh	a0,2(v1)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1670:	84a20002 	lh	v0,2(a1)
    1674:	00000000 	sll	zero,zero,0x0
    1678:	0441ff62 	bgez	v0,1404 <Transformation_to_Log_Area_Ratios+0x15c>
    167c:	00401821 	addu	v1,v0,zero
    1680:	24038000 	addiu	v1,zero,-32768
    1684:	1043ff63 	beq	v0,v1,1414 <Transformation_to_Log_Area_Ratios+0x16c>
    1688:	240367fc 	addiu	v1,zero,26620
    168c:	00021823 	negu	v1,v0
    1690:	00031c00 	sll	v1,v1,0x10
    1694:	00031c03 	sra	v1,v1,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1698:	28645666 	slti	a0,v1,22118
    169c:	1480ff5c 	bnez	a0,1410 <Transformation_to_Log_Area_Ratios+0x168>
    16a0:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    16a4:	10800028 	beqz	a0,1748 <Transformation_to_Log_Area_Ratios+0x4a0>
    16a8:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    16ac:	2463d4cd 	addiu	v1,v1,-11059
    16b0:	00031c00 	sll	v1,v1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    16b4:	0441ff59 	bgez	v0,141c <Transformation_to_Log_Area_Ratios+0x174>
    16b8:	00031c03 	sra	v1,v1,0x10
    16bc:	00031823 	negu	v1,v1
    16c0:	00031c00 	sll	v1,v1,0x10
    16c4:	00031c03 	sra	v1,v1,0x10
    }
}
    16c8:	03e00008 	jr	ra
    16cc:	a4a30002 	sh	v1,2(a1)
    16d0:	24038000 	addiu	v1,zero,-32768
    16d4:	10430005 	beq	v0,v1,16ec <Transformation_to_Log_Area_Ratios+0x444>
    16d8:	00000000 	sll	zero,zero,0x0
    16dc:	00021823 	negu	v1,v0
    16e0:	00031c00 	sll	v1,v1,0x10
    16e4:	080004ae 	j	12b8 <Transformation_to_Log_Area_Ratios+0x10>
    16e8:	00031c03 	sra	v1,v1,0x10
    16ec:	080004b2 	j	12c8 <Transformation_to_Log_Area_Ratios+0x20>
    16f0:	240367fc 	addiu	v1,zero,26620

      if (temp < 22118)
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    16f4:	24a59a00 	addiu	a1,a1,-26112
    16f8:	00052c00 	sll	a1,a1,0x10
    16fc:	00052c03 	sra	a1,a1,0x10
    1700:	00052880 	sll	a1,a1,0x2
    1704:	00052c00 	sll	a1,a1,0x10
    1708:	080004bd 	j	12f4 <Transformation_to_Log_Area_Ratios+0x4c>
    170c:	00052c03 	sra	a1,a1,0x10
    1710:	24639a00 	addiu	v1,v1,-26112
    1714:	00031c00 	sll	v1,v1,0x10
    1718:	00031c03 	sra	v1,v1,0x10
    171c:	00031880 	sll	v1,v1,0x2
    1720:	00031c00 	sll	v1,v1,0x10
    1724:	080004b2 	j	12c8 <Transformation_to_Log_Area_Ratios+0x20>
    1728:	00031c03 	sra	v1,v1,0x10
    172c:	24849a00 	addiu	a0,a0,-26112
    1730:	00042400 	sll	a0,a0,0x10
    1734:	00042403 	sra	a0,a0,0x10
    1738:	00042080 	sll	a0,a0,0x2
    173c:	00042400 	sll	a0,a0,0x10
    1740:	080004f9 	j	13e4 <Transformation_to_Log_Area_Ratios+0x13c>
    1744:	00042403 	sra	a0,a0,0x10
    1748:	24639a00 	addiu	v1,v1,-26112
    174c:	00031c00 	sll	v1,v1,0x10
    1750:	00031c03 	sra	v1,v1,0x10
    1754:	00031880 	sll	v1,v1,0x2
    1758:	00031c00 	sll	v1,v1,0x10
    175c:	08000505 	j	1414 <Transformation_to_Log_Area_Ratios+0x16c>
    1760:	00031c03 	sra	v1,v1,0x10
    1764:	24a59a00 	addiu	a1,a1,-26112
    1768:	00052c00 	sll	a1,a1,0x10
    176c:	00052c03 	sra	a1,a1,0x10
    1770:	00052880 	sll	a1,a1,0x2
    1774:	00052c00 	sll	a1,a1,0x10
    1778:	080004c9 	j	1324 <Transformation_to_Log_Area_Ratios+0x7c>
    177c:	00052c03 	sra	a1,a1,0x10
    1780:	24a59a00 	addiu	a1,a1,-26112
    1784:	00052c00 	sll	a1,a1,0x10
    1788:	00052c03 	sra	a1,a1,0x10
    178c:	00052880 	sll	a1,a1,0x2
    1790:	00052c00 	sll	a1,a1,0x10
    1794:	080004d5 	j	1354 <Transformation_to_Log_Area_Ratios+0xac>
    1798:	00052c03 	sra	a1,a1,0x10
    179c:	24a59a00 	addiu	a1,a1,-26112
    17a0:	00052c00 	sll	a1,a1,0x10
    17a4:	00052c03 	sra	a1,a1,0x10
    17a8:	00052880 	sll	a1,a1,0x2
    17ac:	00052c00 	sll	a1,a1,0x10
    17b0:	080004e1 	j	1384 <Transformation_to_Log_Area_Ratios+0xdc>
    17b4:	00052c03 	sra	a1,a1,0x10
    17b8:	24a59a00 	addiu	a1,a1,-26112
    17bc:	00052c00 	sll	a1,a1,0x10
    17c0:	00052c03 	sra	a1,a1,0x10
    17c4:	00052880 	sll	a1,a1,0x2
    17c8:	00052c00 	sll	a1,a1,0x10
    17cc:	080004ed 	j	13b4 <Transformation_to_Log_Area_Ratios+0x10c>
    17d0:	00052c03 	sra	a1,a1,0x10

000017d4 <Quantization_and_coding>:
		temp = GSM_ADD(  temp, 256 );	\
		temp = SASR(     temp,   9 );	\
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
    17d4:	84830000 	lh	v1,0(a0)
    17d8:	00000000 	sll	zero,zero,0x0
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
    17dc:	00031300 	sll	v0,v1,0xc
    17e0:	00031b80 	sll	v1,v1,0xe
    17e4:	00431021 	addu	v0,v0,v1
    17e8:	000213c3 	sra	v0,v0,0xf

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    17ec:	24420100 	addiu	v0,v0,256
  return saturate (sum);
    17f0:	34038000 	ori	v1,zero,0x8000
    17f4:	0043182a 	slt	v1,v0,v1
    17f8:	14600003 	bnez	v1,1808 <Quantization_and_coding+0x34>
    17fc:	00021400 	sll	v0,v0,0x10
    1800:	24027fff 	addiu	v0,zero,32767
    1804:	00021400 	sll	v0,v0,0x10
    1808:	00021403 	sra	v0,v0,0x10
    180c:	00021243 	sra	v0,v0,0x9
    1810:	28430020 	slti	v1,v0,32
    1814:	146000f7 	bnez	v1,1bf4 <Quantization_and_coding+0x420>
    1818:	2405003f 	addiu	a1,zero,63
  STEP (20480, 0, 31, -32);
    181c:	84830002 	lh	v1,2(a0)
    1820:	34068000 	ori	a2,zero,0x8000
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
    1824:	00031300 	sll	v0,v1,0xc
    1828:	00031b80 	sll	v1,v1,0xe
    182c:	00431021 	addu	v0,v0,v1
    1830:	000213c3 	sra	v0,v0,0xf

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    1834:	24420100 	addiu	v0,v0,256
  return saturate (sum);
    1838:	0046302a 	slt	a2,v0,a2
		temp = GSM_ADD(  temp, 256 );	\
		temp = SASR(     temp,   9 );	\
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
    183c:	a4850000 	sh	a1,0(a0)
    1840:	14c00002 	bnez	a2,184c <Quantization_and_coding+0x78>
    1844:	24830002 	addiu	v1,a0,2
    1848:	24027fff 	addiu	v0,zero,32767
    184c:	00021400 	sll	v0,v0,0x10
    1850:	00021403 	sra	v0,v0,0x10
  STEP (20480, 0, 31, -32);
    1854:	00021243 	sra	v0,v0,0x9
    1858:	28450020 	slti	a1,v0,32
    185c:	14a000df 	bnez	a1,1bdc <Quantization_and_coding+0x408>
    1860:	2845ffe0 	slti	a1,v0,-32
    1864:	2402003f 	addiu	v0,zero,63
    1868:	a4820002 	sh	v0,2(a0)
  STEP (20480, 2048, 15, -16);
    186c:	84620002 	lh	v0,2(v1)
    1870:	34058000 	ori	a1,zero,0x8000
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
    1874:	00022300 	sll	a0,v0,0xc
    1878:	00021380 	sll	v0,v0,0xe
    187c:	00822021 	addu	a0,a0,v0
    1880:	000423c3 	sra	a0,a0,0xf

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    1884:	24840800 	addiu	a0,a0,2048
  return saturate (sum);
    1888:	0085282a 	slt	a1,a0,a1
    188c:	14a00002 	bnez	a1,1898 <Quantization_and_coding+0xc4>
    1890:	24620002 	addiu	v0,v1,2
    1894:	24047fff 	addiu	a0,zero,32767
    1898:	00042400 	sll	a0,a0,0x10
    189c:	00042403 	sra	a0,a0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    18a0:	24840100 	addiu	a0,a0,256
  return saturate (sum);
    18a4:	34058000 	ori	a1,zero,0x8000
    18a8:	0085282a 	slt	a1,a0,a1
    18ac:	14a00003 	bnez	a1,18bc <Quantization_and_coding+0xe8>
    18b0:	00042400 	sll	a0,a0,0x10
    18b4:	24047fff 	addiu	a0,zero,32767
    18b8:	00042400 	sll	a0,a0,0x10
    18bc:	00042403 	sra	a0,a0,0x10
    18c0:	00042243 	sra	a0,a0,0x9
    18c4:	28850010 	slti	a1,a0,16
    18c8:	14a000be 	bnez	a1,1bc4 <Quantization_and_coding+0x3f0>
    18cc:	2885fff0 	slti	a1,a0,-16
    18d0:	2404001f 	addiu	a0,zero,31
    18d4:	a4640002 	sh	a0,2(v1)
  STEP (20480, -2560, 15, -16);
    18d8:	84440002 	lh	a0,2(v0)
    18dc:	34058000 	ori	a1,zero,0x8000
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
    18e0:	00041b00 	sll	v1,a0,0xc
    18e4:	00042380 	sll	a0,a0,0xe
    18e8:	00641821 	addu	v1,v1,a0
    18ec:	00031bc3 	sra	v1,v1,0xf

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    18f0:	2463f600 	addiu	v1,v1,-2560
  return saturate (sum);
    18f4:	0065282a 	slt	a1,v1,a1
    18f8:	14a00002 	bnez	a1,1904 <Quantization_and_coding+0x130>
    18fc:	24440002 	addiu	a0,v0,2
    1900:	24037fff 	addiu	v1,zero,32767
    1904:	00031c00 	sll	v1,v1,0x10
    1908:	00031c03 	sra	v1,v1,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    190c:	24630100 	addiu	v1,v1,256
  return saturate (sum);
    1910:	34058000 	ori	a1,zero,0x8000
    1914:	0065282a 	slt	a1,v1,a1
    1918:	14a00003 	bnez	a1,1928 <Quantization_and_coding+0x154>
    191c:	00031c00 	sll	v1,v1,0x10
    1920:	24037fff 	addiu	v1,zero,32767
    1924:	00031c00 	sll	v1,v1,0x10
    1928:	00031c03 	sra	v1,v1,0x10
    192c:	00031a43 	sra	v1,v1,0x9
    1930:	28650010 	slti	a1,v1,16
    1934:	14a0009d 	bnez	a1,1bac <Quantization_and_coding+0x3d8>
    1938:	2865fff0 	slti	a1,v1,-16
    193c:	2403001f 	addiu	v1,zero,31
    1940:	a4430002 	sh	v1,2(v0)

  STEP (13964, 94, 7, -8);
    1944:	84820002 	lh	v0,2(a0)
    1948:	00000000 	sll	zero,zero,0x0
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
    194c:	000229c0 	sll	a1,v0,0x7
    1950:	00021940 	sll	v1,v0,0x5
    1954:	00a31823 	subu	v1,a1,v1
    1958:	00621821 	addu	v1,v1,v0
    195c:	000328c0 	sll	a1,v1,0x3
    1960:	00651821 	addu	v1,v1,a1
    1964:	00031880 	sll	v1,v1,0x2
    1968:	00621023 	subu	v0,v1,v0
    196c:	000210c0 	sll	v0,v0,0x3
    1970:	00021403 	sra	v0,v0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    1974:	2442005e 	addiu	v0,v0,94
  return saturate (sum);
    1978:	34058000 	ori	a1,zero,0x8000
    197c:	0045282a 	slt	a1,v0,a1
    1980:	14a00002 	bnez	a1,198c <Quantization_and_coding+0x1b8>
    1984:	24830002 	addiu	v1,a0,2
    1988:	24027fff 	addiu	v0,zero,32767
    198c:	00021400 	sll	v0,v0,0x10
    1990:	00021403 	sra	v0,v0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    1994:	24420100 	addiu	v0,v0,256
  return saturate (sum);
    1998:	34058000 	ori	a1,zero,0x8000
    199c:	0045282a 	slt	a1,v0,a1
    19a0:	14a00003 	bnez	a1,19b0 <Quantization_and_coding+0x1dc>
    19a4:	00021400 	sll	v0,v0,0x10
    19a8:	24027fff 	addiu	v0,zero,32767
    19ac:	00021400 	sll	v0,v0,0x10
    19b0:	00021403 	sra	v0,v0,0x10
    19b4:	00021243 	sra	v0,v0,0x9
    19b8:	28450008 	slti	a1,v0,8
    19bc:	14a00075 	bnez	a1,1b94 <Quantization_and_coding+0x3c0>
    19c0:	2845fff8 	slti	a1,v0,-8
    19c4:	2402000f 	addiu	v0,zero,15
    19c8:	a4820002 	sh	v0,2(a0)
  STEP (15360, -1792, 7, -8);
    19cc:	84620002 	lh	v0,2(v1)
    19d0:	00000000 	sll	zero,zero,0x0
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
    19d4:	00022a80 	sll	a1,v0,0xa
    19d8:	00022380 	sll	a0,v0,0xe
    19dc:	00852023 	subu	a0,a0,a1
    19e0:	000423c3 	sra	a0,a0,0xf

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    19e4:	2484f900 	addiu	a0,a0,-1792
  return saturate (sum);
    19e8:	34058000 	ori	a1,zero,0x8000
    19ec:	0085282a 	slt	a1,a0,a1
    19f0:	14a00002 	bnez	a1,19fc <Quantization_and_coding+0x228>
    19f4:	24620002 	addiu	v0,v1,2
    19f8:	24047fff 	addiu	a0,zero,32767
    19fc:	00042400 	sll	a0,a0,0x10
    1a00:	00042403 	sra	a0,a0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    1a04:	24840100 	addiu	a0,a0,256
  return saturate (sum);
    1a08:	34058000 	ori	a1,zero,0x8000
    1a0c:	0085282a 	slt	a1,a0,a1
    1a10:	14a00003 	bnez	a1,1a20 <Quantization_and_coding+0x24c>
    1a14:	00042400 	sll	a0,a0,0x10
    1a18:	24047fff 	addiu	a0,zero,32767
    1a1c:	00042400 	sll	a0,a0,0x10
    1a20:	00042403 	sra	a0,a0,0x10
    1a24:	00042243 	sra	a0,a0,0x9
    1a28:	28850008 	slti	a1,a0,8
    1a2c:	14a00053 	bnez	a1,1b7c <Quantization_and_coding+0x3a8>
    1a30:	2885fff8 	slti	a1,a0,-8
    1a34:	2404000f 	addiu	a0,zero,15
    1a38:	a4640002 	sh	a0,2(v1)
  STEP (8534, -341, 3, -4);
    1a3c:	84430002 	lh	v1,2(v0)
    1a40:	00000000 	sll	zero,zero,0x0
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
    1a44:	00032a00 	sll	a1,v1,0x8
    1a48:	00032080 	sll	a0,v1,0x2
    1a4c:	00a42023 	subu	a0,a1,a0
    1a50:	00831823 	subu	v1,a0,v1
    1a54:	00032100 	sll	a0,v1,0x4
    1a58:	00641821 	addu	v1,v1,a0
    1a5c:	00031b83 	sra	v1,v1,0xe
    1a60:	00031c00 	sll	v1,v1,0x10
    1a64:	00031c03 	sra	v1,v1,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    1a68:	2463feab 	addiu	v1,v1,-341
  return saturate (sum);
    1a6c:	34058000 	ori	a1,zero,0x8000
    1a70:	0065282a 	slt	a1,v1,a1
    1a74:	14a00002 	bnez	a1,1a80 <Quantization_and_coding+0x2ac>
    1a78:	24440002 	addiu	a0,v0,2
    1a7c:	24037fff 	addiu	v1,zero,32767
    1a80:	00031c00 	sll	v1,v1,0x10
    1a84:	00031c03 	sra	v1,v1,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    1a88:	24630100 	addiu	v1,v1,256
  return saturate (sum);
    1a8c:	34058000 	ori	a1,zero,0x8000
    1a90:	0065282a 	slt	a1,v1,a1
    1a94:	14a00003 	bnez	a1,1aa4 <Quantization_and_coding+0x2d0>
    1a98:	00031c00 	sll	v1,v1,0x10
    1a9c:	24037fff 	addiu	v1,zero,32767
    1aa0:	00031c00 	sll	v1,v1,0x10
    1aa4:	00031c03 	sra	v1,v1,0x10
    1aa8:	00031a43 	sra	v1,v1,0x9
    1aac:	28650004 	slti	a1,v1,4
    1ab0:	14a0002c 	bnez	a1,1b64 <Quantization_and_coding+0x390>
    1ab4:	2865fffc 	slti	a1,v1,-4
    1ab8:	24030007 	addiu	v1,zero,7
    1abc:	a4430002 	sh	v1,2(v0)
  STEP (9036, -1144, 3, -4);
    1ac0:	84820002 	lh	v0,2(a0)
    1ac4:	00000000 	sll	zero,zero,0x0
gsm_mult (word a, word b)
{
  if (a == MIN_WORD && b == MIN_WORD)
    return MAX_WORD;
  else
    return SASR ((longword) a * (longword) b, 15);
    1ac8:	00021880 	sll	v1,v0,0x2
    1acc:	00022a00 	sll	a1,v0,0x8
    1ad0:	00a31823 	subu	v1,a1,v1
    1ad4:	00621023 	subu	v0,v1,v0
    1ad8:	000218c0 	sll	v1,v0,0x3
    1adc:	00431021 	addu	v0,v0,v1
    1ae0:	00021343 	sra	v0,v0,0xd
    1ae4:	00021400 	sll	v0,v0,0x10
    1ae8:	00021403 	sra	v0,v0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    1aec:	2442fb88 	addiu	v0,v0,-1144
  return saturate (sum);
    1af0:	34038000 	ori	v1,zero,0x8000
    1af4:	0043182a 	slt	v1,v0,v1
    1af8:	14600003 	bnez	v1,1b08 <Quantization_and_coding+0x334>
    1afc:	00021400 	sll	v0,v0,0x10
    1b00:	24027fff 	addiu	v0,zero,32767
    1b04:	00021400 	sll	v0,v0,0x10
    1b08:	00021403 	sra	v0,v0,0x10

word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
    1b0c:	24420100 	addiu	v0,v0,256
  return saturate (sum);
    1b10:	34038000 	ori	v1,zero,0x8000
    1b14:	0043182a 	slt	v1,v0,v1
    1b18:	14600003 	bnez	v1,1b28 <Quantization_and_coding+0x354>
    1b1c:	00021400 	sll	v0,v0,0x10
    1b20:	24027fff 	addiu	v0,zero,32767
    1b24:	00021400 	sll	v0,v0,0x10
    1b28:	00021403 	sra	v0,v0,0x10
    1b2c:	00021243 	sra	v0,v0,0x9
    1b30:	28430004 	slti	v1,v0,4
    1b34:	14600004 	bnez	v1,1b48 <Quantization_and_coding+0x374>
    1b38:	00000000 	sll	zero,zero,0x0
    1b3c:	24020007 	addiu	v0,zero,7

#	undef	STEP
}
    1b40:	03e00008 	jr	ra
    1b44:	a4820002 	sh	v0,2(a0)
  STEP (20480, -2560, 15, -16);

  STEP (13964, 94, 7, -8);
  STEP (15360, -1792, 7, -8);
  STEP (8534, -341, 3, -4);
  STEP (9036, -1144, 3, -4);
    1b48:	2843fffc 	slti	v1,v0,-4
    1b4c:	1460002f 	bnez	v1,1c0c <Quantization_and_coding+0x438>
    1b50:	24420004 	addiu	v0,v0,4
    1b54:	00021400 	sll	v0,v0,0x10
    1b58:	00021403 	sra	v0,v0,0x10

#	undef	STEP
}
    1b5c:	03e00008 	jr	ra
    1b60:	a4820002 	sh	v0,2(a0)
  STEP (20480, 2048, 15, -16);
  STEP (20480, -2560, 15, -16);

  STEP (13964, 94, 7, -8);
  STEP (15360, -1792, 7, -8);
  STEP (8534, -341, 3, -4);
    1b64:	14a00038 	bnez	a1,1c48 <Quantization_and_coding+0x474>
    1b68:	00000000 	sll	zero,zero,0x0
    1b6c:	24630004 	addiu	v1,v1,4
    1b70:	00031c00 	sll	v1,v1,0x10
    1b74:	080006af 	j	1abc <Quantization_and_coding+0x2e8>
    1b78:	00031c03 	sra	v1,v1,0x10
  STEP (20480, 0, 31, -32);
  STEP (20480, 2048, 15, -16);
  STEP (20480, -2560, 15, -16);

  STEP (13964, 94, 7, -8);
  STEP (15360, -1792, 7, -8);
    1b7c:	14a00030 	bnez	a1,1c40 <Quantization_and_coding+0x46c>
    1b80:	00000000 	sll	zero,zero,0x0
    1b84:	24840008 	addiu	a0,a0,8
    1b88:	00042400 	sll	a0,a0,0x10
    1b8c:	0800068e 	j	1a38 <Quantization_and_coding+0x264>
    1b90:	00042403 	sra	a0,a0,0x10
  STEP (20480, 0, 31, -32);
  STEP (20480, 0, 31, -32);
  STEP (20480, 2048, 15, -16);
  STEP (20480, -2560, 15, -16);

  STEP (13964, 94, 7, -8);
    1b94:	14a00028 	bnez	a1,1c38 <Quantization_and_coding+0x464>
    1b98:	00000000 	sll	zero,zero,0x0
    1b9c:	24420008 	addiu	v0,v0,8
    1ba0:	00021400 	sll	v0,v0,0x10
    1ba4:	08000672 	j	19c8 <Quantization_and_coding+0x1f4>
    1ba8:	00021403 	sra	v0,v0,0x10
		LAR++;

  STEP (20480, 0, 31, -32);
  STEP (20480, 0, 31, -32);
  STEP (20480, 2048, 15, -16);
  STEP (20480, -2560, 15, -16);
    1bac:	14a00020 	bnez	a1,1c30 <Quantization_and_coding+0x45c>
    1bb0:	00000000 	sll	zero,zero,0x0
    1bb4:	24630010 	addiu	v1,v1,16
    1bb8:	00031c00 	sll	v1,v1,0x10
    1bbc:	08000650 	j	1940 <Quantization_and_coding+0x16c>
    1bc0:	00031c03 	sra	v1,v1,0x10
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
  STEP (20480, 0, 31, -32);
  STEP (20480, 2048, 15, -16);
    1bc4:	14a00018 	bnez	a1,1c28 <Quantization_and_coding+0x454>
    1bc8:	00000000 	sll	zero,zero,0x0
    1bcc:	24840010 	addiu	a0,a0,16
    1bd0:	00042400 	sll	a0,a0,0x10
    1bd4:	08000635 	j	18d4 <Quantization_and_coding+0x100>
    1bd8:	00042403 	sra	a0,a0,0x10
		temp = SASR(     temp,   9 );	\
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
  STEP (20480, 0, 31, -32);
    1bdc:	14a00010 	bnez	a1,1c20 <Quantization_and_coding+0x44c>
    1be0:	00000000 	sll	zero,zero,0x0
    1be4:	24420020 	addiu	v0,v0,32
    1be8:	00021400 	sll	v0,v0,0x10
    1bec:	0800061a 	j	1868 <Quantization_and_coding+0x94>
    1bf0:	00021403 	sra	v0,v0,0x10
		temp = GSM_ADD(  temp, 256 );	\
		temp = SASR(     temp,   9 );	\
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
    1bf4:	2843ffe0 	slti	v1,v0,-32
    1bf8:	14600007 	bnez	v1,1c18 <Quantization_and_coding+0x444>
    1bfc:	24420020 	addiu	v0,v0,32
    1c00:	00022c00 	sll	a1,v0,0x10
    1c04:	08000607 	j	181c <Quantization_and_coding+0x48>
    1c08:	00052c03 	sra	a1,a1,0x10
  STEP (20480, -2560, 15, -16);

  STEP (13964, 94, 7, -8);
  STEP (15360, -1792, 7, -8);
  STEP (8534, -341, 3, -4);
  STEP (9036, -1144, 3, -4);
    1c0c:	00001021 	addu	v0,zero,zero

#	undef	STEP
}
    1c10:	03e00008 	jr	ra
    1c14:	a4820002 	sh	v0,2(a0)
		temp = GSM_ADD(  temp, 256 );	\
		temp = SASR(     temp,   9 );	\
		*LAR  =  temp>MAC ? MAC - MIC : (temp<MIC ? 0 : temp - MIC); \
		LAR++;

  STEP (20480, 0, 31, -32);
    1c18:	08000607 	j	181c <Quantization_and_coding+0x48>
    1c1c:	00002821 	addu	a1,zero,zero
  STEP (20480, 0, 31, -32);
    1c20:	0800061a 	j	1868 <Quantization_and_coding+0x94>
    1c24:	00001021 	addu	v0,zero,zero
  STEP (20480, 2048, 15, -16);
    1c28:	08000635 	j	18d4 <Quantization_and_coding+0x100>
    1c2c:	00002021 	addu	a0,zero,zero
  STEP (20480, -2560, 15, -16);
    1c30:	08000650 	j	1940 <Quantization_and_coding+0x16c>
    1c34:	00001821 	addu	v1,zero,zero

  STEP (13964, 94, 7, -8);
    1c38:	08000672 	j	19c8 <Quantization_and_coding+0x1f4>
    1c3c:	00001021 	addu	v0,zero,zero
  STEP (15360, -1792, 7, -8);
    1c40:	0800068e 	j	1a38 <Quantization_and_coding+0x264>
    1c44:	00002021 	addu	a0,zero,zero
  STEP (8534, -341, 3, -4);
    1c48:	080006af 	j	1abc <Quantization_and_coding+0x2e8>
    1c4c:	00001821 	addu	v1,zero,zero

00001c50 <Gsm_LPC_Analysis>:
}

void
Gsm_LPC_Analysis (word * s /* 0..159 signals       IN/OUT  */ ,
		  word * LARc /* 0..7   LARc's        OUT     */ )
{
    1c50:	27bdffb8 	addiu	sp,sp,-72
    1c54:	afb10040 	sw	s1,64(sp)
  longword L_ACF[9];

  Autocorrelation (s, L_ACF);
    1c58:	27b10010 	addiu	s1,sp,16
}

void
Gsm_LPC_Analysis (word * s /* 0..159 signals       IN/OUT  */ ,
		  word * LARc /* 0..7   LARc's        OUT     */ )
{
    1c5c:	afb0003c 	sw	s0,60(sp)
    1c60:	00a08021 	addu	s0,a1,zero
    1c64:	afbf0044 	sw	ra,68(sp)
  longword L_ACF[9];

  Autocorrelation (s, L_ACF);
    1c68:	0c000000 	jal	0 <gsm_add>
    1c6c:	02202821 	addu	a1,s1,zero
  Reflection_coefficients (L_ACF, LARc);
    1c70:	02202021 	addu	a0,s1,zero
    1c74:	0c000000 	jal	0 <gsm_add>
    1c78:	02002821 	addu	a1,s0,zero
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1c7c:	86020000 	lh	v0,0(s0)
    1c80:	00000000 	sll	zero,zero,0x0
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == MIN_WORD ? MAX_WORD : -a) : a;
    1c84:	04400113 	bltz	v0,20d4 <Gsm_LPC_Analysis+0x484>
    1c88:	00401821 	addu	v1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1c8c:	28645666 	slti	a0,v1,22118
    1c90:	1080005f 	beqz	a0,1e10 <Gsm_LPC_Analysis+0x1c0>
    1c94:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
    1c98:	00031843 	sra	v1,v1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1c9c:	04400062 	bltz	v0,1e28 <Gsm_LPC_Analysis+0x1d8>
    1ca0:	00000000 	sll	zero,zero,0x0
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1ca4:	86020002 	lh	v0,2(s0)
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1ca8:	a6030000 	sh	v1,0(s0)
    1cac:	04400065 	bltz	v0,1e44 <Gsm_LPC_Analysis+0x1f4>
    1cb0:	26030002 	addiu	v1,s0,2
    1cb4:	00402021 	addu	a0,v0,zero
    {

      temp = *r;
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1cb8:	28855666 	slti	a1,a0,22118
    1cbc:	10a0006a 	beqz	a1,1e68 <Gsm_LPC_Analysis+0x218>
    1cc0:	2885799a 	slti	a1,a0,31130
	{
	  temp >>= 1;
    1cc4:	00042043 	sra	a0,a0,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1cc8:	0440006d 	bltz	v0,1e80 <Gsm_LPC_Analysis+0x230>
    1ccc:	00000000 	sll	zero,zero,0x0
    1cd0:	a6040002 	sh	a0,2(s0)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1cd4:	84620002 	lh	v0,2(v1)
    1cd8:	00000000 	sll	zero,zero,0x0
    1cdc:	04400070 	bltz	v0,1ea0 <Gsm_LPC_Analysis+0x250>
    1ce0:	24640002 	addiu	a0,v1,2
    1ce4:	00402821 	addu	a1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1ce8:	28a65666 	slti	a2,a1,22118
    1cec:	10c00075 	beqz	a2,1ec4 <Gsm_LPC_Analysis+0x274>
    1cf0:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
    1cf4:	00052843 	sra	a1,a1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1cf8:	04400078 	bltz	v0,1edc <Gsm_LPC_Analysis+0x28c>
    1cfc:	00000000 	sll	zero,zero,0x0
    1d00:	a4650002 	sh	a1,2(v1)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1d04:	84820002 	lh	v0,2(a0)
    1d08:	00000000 	sll	zero,zero,0x0
    1d0c:	0440007b 	bltz	v0,1efc <Gsm_LPC_Analysis+0x2ac>
    1d10:	24830002 	addiu	v1,a0,2
    1d14:	00402821 	addu	a1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1d18:	28a65666 	slti	a2,a1,22118
    1d1c:	10c00080 	beqz	a2,1f20 <Gsm_LPC_Analysis+0x2d0>
    1d20:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
    1d24:	00052843 	sra	a1,a1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1d28:	04400083 	bltz	v0,1f38 <Gsm_LPC_Analysis+0x2e8>
    1d2c:	00000000 	sll	zero,zero,0x0
    1d30:	a4850002 	sh	a1,2(a0)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1d34:	84620002 	lh	v0,2(v1)
    1d38:	00000000 	sll	zero,zero,0x0
    1d3c:	04400086 	bltz	v0,1f58 <Gsm_LPC_Analysis+0x308>
    1d40:	24640002 	addiu	a0,v1,2
    1d44:	00402821 	addu	a1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1d48:	28a65666 	slti	a2,a1,22118
    1d4c:	10c0008b 	beqz	a2,1f7c <Gsm_LPC_Analysis+0x32c>
    1d50:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
    1d54:	00052843 	sra	a1,a1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1d58:	0440008e 	bltz	v0,1f94 <Gsm_LPC_Analysis+0x344>
    1d5c:	00000000 	sll	zero,zero,0x0
    1d60:	a4650002 	sh	a1,2(v1)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1d64:	84820002 	lh	v0,2(a0)
    1d68:	00000000 	sll	zero,zero,0x0
    1d6c:	04400091 	bltz	v0,1fb4 <Gsm_LPC_Analysis+0x364>
    1d70:	24830002 	addiu	v1,a0,2
    1d74:	00402821 	addu	a1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1d78:	28a65666 	slti	a2,a1,22118
    1d7c:	10c00096 	beqz	a2,1fd8 <Gsm_LPC_Analysis+0x388>
    1d80:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
    1d84:	00052843 	sra	a1,a1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1d88:	04400099 	bltz	v0,1ff0 <Gsm_LPC_Analysis+0x3a0>
    1d8c:	00000000 	sll	zero,zero,0x0
    1d90:	a4850002 	sh	a1,2(a0)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1d94:	84620002 	lh	v0,2(v1)
    1d98:	00000000 	sll	zero,zero,0x0
    1d9c:	0440009c 	bltz	v0,2010 <Gsm_LPC_Analysis+0x3c0>
    1da0:	24650002 	addiu	a1,v1,2
    1da4:	00402021 	addu	a0,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1da8:	28865666 	slti	a2,a0,22118
    1dac:	10c000a1 	beqz	a2,2034 <Gsm_LPC_Analysis+0x3e4>
    1db0:	2886799a 	slti	a2,a0,31130
	{
	  temp >>= 1;
    1db4:	00042043 	sra	a0,a0,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1db8:	044000a4 	bltz	v0,204c <Gsm_LPC_Analysis+0x3fc>
    1dbc:	00000000 	sll	zero,zero,0x0
    1dc0:	a4640002 	sh	a0,2(v1)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1dc4:	84a20002 	lh	v0,2(a1)
    1dc8:	00000000 	sll	zero,zero,0x0
    1dcc:	044000a8 	bltz	v0,2070 <Gsm_LPC_Analysis+0x420>
    1dd0:	24038000 	addiu	v1,zero,-32768
    1dd4:	00401821 	addu	v1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1dd8:	28645666 	slti	a0,v1,22118
    1ddc:	108000ac 	beqz	a0,2090 <Gsm_LPC_Analysis+0x440>
    1de0:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
    1de4:	00031843 	sra	v1,v1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1de8:	044000af 	bltz	v0,20a8 <Gsm_LPC_Analysis+0x458>
    1dec:	00000000 	sll	zero,zero,0x0
  longword L_ACF[9];

  Autocorrelation (s, L_ACF);
  Reflection_coefficients (L_ACF, LARc);
  Transformation_to_Log_Area_Ratios (LARc);
  Quantization_and_coding (LARc);
    1df0:	02002021 	addu	a0,s0,zero
    1df4:	0c000000 	jal	0 <gsm_add>
    1df8:	a4a30002 	sh	v1,2(a1)
}
    1dfc:	8fbf0044 	lw	ra,68(sp)
    1e00:	8fb10040 	lw	s1,64(sp)
    1e04:	8fb0003c 	lw	s0,60(sp)
    1e08:	03e00008 	jr	ra
    1e0c:	27bd0048 	addiu	sp,sp,72

      if (temp < 22118)
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    1e10:	108000c0 	beqz	a0,2114 <Gsm_LPC_Analysis+0x4c4>
    1e14:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    1e18:	2463d4cd 	addiu	v1,v1,-11059
    1e1c:	00031c00 	sll	v1,v1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1e20:	0441ffa0 	bgez	v0,1ca4 <Gsm_LPC_Analysis+0x54>
    1e24:	00031c03 	sra	v1,v1,0x10
    1e28:	00031823 	negu	v1,v1
    1e2c:	00031c00 	sll	v1,v1,0x10
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1e30:	86020002 	lh	v0,2(s0)
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1e34:	00031c03 	sra	v1,v1,0x10
    1e38:	a6030000 	sh	v1,0(s0)
    1e3c:	0441ff9d 	bgez	v0,1cb4 <Gsm_LPC_Analysis+0x64>
    1e40:	26030002 	addiu	v1,s0,2
    1e44:	24048000 	addiu	a0,zero,-32768
    1e48:	1044ff9f 	beq	v0,a0,1cc8 <Gsm_LPC_Analysis+0x78>
    1e4c:	240467fc 	addiu	a0,zero,26620
    1e50:	00022023 	negu	a0,v0
    1e54:	00042400 	sll	a0,a0,0x10
    1e58:	00042403 	sra	a0,a0,0x10
    {

      temp = *r;
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1e5c:	28855666 	slti	a1,a0,22118
    1e60:	14a0ff98 	bnez	a1,1cc4 <Gsm_LPC_Analysis+0x74>
    1e64:	2885799a 	slti	a1,a0,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    1e68:	10a000a3 	beqz	a1,20f8 <Gsm_LPC_Analysis+0x4a8>
    1e6c:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    1e70:	2484d4cd 	addiu	a0,a0,-11059
    1e74:	00042400 	sll	a0,a0,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1e78:	0441ff95 	bgez	v0,1cd0 <Gsm_LPC_Analysis+0x80>
    1e7c:	00042403 	sra	a0,a0,0x10
    1e80:	00042023 	negu	a0,a0
    1e84:	00042400 	sll	a0,a0,0x10
    1e88:	00042403 	sra	a0,a0,0x10
    1e8c:	a6040002 	sh	a0,2(s0)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1e90:	84620002 	lh	v0,2(v1)
    1e94:	00000000 	sll	zero,zero,0x0
    1e98:	0441ff92 	bgez	v0,1ce4 <Gsm_LPC_Analysis+0x94>
    1e9c:	24640002 	addiu	a0,v1,2
    1ea0:	24058000 	addiu	a1,zero,-32768
    1ea4:	1045ff94 	beq	v0,a1,1cf8 <Gsm_LPC_Analysis+0xa8>
    1ea8:	240567fc 	addiu	a1,zero,26620
    1eac:	00022823 	negu	a1,v0
    1eb0:	00052c00 	sll	a1,a1,0x10
    1eb4:	00052c03 	sra	a1,a1,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1eb8:	28a65666 	slti	a2,a1,22118
    1ebc:	14c0ff8d 	bnez	a2,1cf4 <Gsm_LPC_Analysis+0xa4>
    1ec0:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    1ec4:	10c000a8 	beqz	a2,2168 <Gsm_LPC_Analysis+0x518>
    1ec8:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    1ecc:	24a5d4cd 	addiu	a1,a1,-11059
    1ed0:	00052c00 	sll	a1,a1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1ed4:	0441ff8a 	bgez	v0,1d00 <Gsm_LPC_Analysis+0xb0>
    1ed8:	00052c03 	sra	a1,a1,0x10
    1edc:	00052823 	negu	a1,a1
    1ee0:	00052c00 	sll	a1,a1,0x10
    1ee4:	00052c03 	sra	a1,a1,0x10
    1ee8:	a4650002 	sh	a1,2(v1)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1eec:	84820002 	lh	v0,2(a0)
    1ef0:	00000000 	sll	zero,zero,0x0
    1ef4:	0441ff87 	bgez	v0,1d14 <Gsm_LPC_Analysis+0xc4>
    1ef8:	24830002 	addiu	v1,a0,2
    1efc:	24058000 	addiu	a1,zero,-32768
    1f00:	1045ff89 	beq	v0,a1,1d28 <Gsm_LPC_Analysis+0xd8>
    1f04:	240567fc 	addiu	a1,zero,26620
    1f08:	00022823 	negu	a1,v0
    1f0c:	00052c00 	sll	a1,a1,0x10
    1f10:	00052c03 	sra	a1,a1,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1f14:	28a65666 	slti	a2,a1,22118
    1f18:	14c0ff82 	bnez	a2,1d24 <Gsm_LPC_Analysis+0xd4>
    1f1c:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    1f20:	10c00098 	beqz	a2,2184 <Gsm_LPC_Analysis+0x534>
    1f24:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    1f28:	24a5d4cd 	addiu	a1,a1,-11059
    1f2c:	00052c00 	sll	a1,a1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1f30:	0441ff7f 	bgez	v0,1d30 <Gsm_LPC_Analysis+0xe0>
    1f34:	00052c03 	sra	a1,a1,0x10
    1f38:	00052823 	negu	a1,a1
    1f3c:	00052c00 	sll	a1,a1,0x10
    1f40:	00052c03 	sra	a1,a1,0x10
    1f44:	a4850002 	sh	a1,2(a0)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1f48:	84620002 	lh	v0,2(v1)
    1f4c:	00000000 	sll	zero,zero,0x0
    1f50:	0441ff7c 	bgez	v0,1d44 <Gsm_LPC_Analysis+0xf4>
    1f54:	24640002 	addiu	a0,v1,2
    1f58:	24058000 	addiu	a1,zero,-32768
    1f5c:	1045ff7e 	beq	v0,a1,1d58 <Gsm_LPC_Analysis+0x108>
    1f60:	240567fc 	addiu	a1,zero,26620
    1f64:	00022823 	negu	a1,v0
    1f68:	00052c00 	sll	a1,a1,0x10
    1f6c:	00052c03 	sra	a1,a1,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1f70:	28a65666 	slti	a2,a1,22118
    1f74:	14c0ff77 	bnez	a2,1d54 <Gsm_LPC_Analysis+0x104>
    1f78:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    1f7c:	10c00088 	beqz	a2,21a0 <Gsm_LPC_Analysis+0x550>
    1f80:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    1f84:	24a5d4cd 	addiu	a1,a1,-11059
    1f88:	00052c00 	sll	a1,a1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1f8c:	0441ff74 	bgez	v0,1d60 <Gsm_LPC_Analysis+0x110>
    1f90:	00052c03 	sra	a1,a1,0x10
    1f94:	00052823 	negu	a1,a1
    1f98:	00052c00 	sll	a1,a1,0x10
    1f9c:	00052c03 	sra	a1,a1,0x10
    1fa0:	a4650002 	sh	a1,2(v1)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    1fa4:	84820002 	lh	v0,2(a0)
    1fa8:	00000000 	sll	zero,zero,0x0
    1fac:	0441ff71 	bgez	v0,1d74 <Gsm_LPC_Analysis+0x124>
    1fb0:	24830002 	addiu	v1,a0,2
    1fb4:	24058000 	addiu	a1,zero,-32768
    1fb8:	1045ff73 	beq	v0,a1,1d88 <Gsm_LPC_Analysis+0x138>
    1fbc:	240567fc 	addiu	a1,zero,26620
    1fc0:	00022823 	negu	a1,v0
    1fc4:	00052c00 	sll	a1,a1,0x10
    1fc8:	00052c03 	sra	a1,a1,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
    1fcc:	28a65666 	slti	a2,a1,22118
    1fd0:	14c0ff6c 	bnez	a2,1d84 <Gsm_LPC_Analysis+0x134>
    1fd4:	28a6799a 	slti	a2,a1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    1fd8:	10c00078 	beqz	a2,21bc <Gsm_LPC_Analysis+0x56c>
    1fdc:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    1fe0:	24a5d4cd 	addiu	a1,a1,-11059
    1fe4:	00052c00 	sll	a1,a1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    1fe8:	0441ff69 	bgez	v0,1d90 <Gsm_LPC_Analysis+0x140>
    1fec:	00052c03 	sra	a1,a1,0x10
    1ff0:	00052823 	negu	a1,a1
    1ff4:	00052c00 	sll	a1,a1,0x10
    1ff8:	00052c03 	sra	a1,a1,0x10
    1ffc:	a4850002 	sh	a1,2(a0)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    2000:	84620002 	lh	v0,2(v1)
    2004:	00000000 	sll	zero,zero,0x0
    2008:	0441ff66 	bgez	v0,1da4 <Gsm_LPC_Analysis+0x154>
    200c:	24650002 	addiu	a1,v1,2
    2010:	24048000 	addiu	a0,zero,-32768
    2014:	1044ff68 	beq	v0,a0,1db8 <Gsm_LPC_Analysis+0x168>
    2018:	240467fc 	addiu	a0,zero,26620
    201c:	00022023 	negu	a0,v0
    2020:	00042400 	sll	a0,a0,0x10
    2024:	00042403 	sra	a0,a0,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
    2028:	28865666 	slti	a2,a0,22118
    202c:	14c0ff61 	bnez	a2,1db4 <Gsm_LPC_Analysis+0x164>
    2030:	2886799a 	slti	a2,a0,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    2034:	10c0003e 	beqz	a2,2130 <Gsm_LPC_Analysis+0x4e0>
    2038:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    203c:	2484d4cd 	addiu	a0,a0,-11059
    2040:	00042400 	sll	a0,a0,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    2044:	0441ff5e 	bgez	v0,1dc0 <Gsm_LPC_Analysis+0x170>
    2048:	00042403 	sra	a0,a0,0x10
    204c:	00042023 	negu	a0,a0
    2050:	00042400 	sll	a0,a0,0x10
    2054:	00042403 	sra	a0,a0,0x10
    2058:	a4640002 	sh	a0,2(v1)
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    205c:	84a20002 	lh	v0,2(a1)
    2060:	00000000 	sll	zero,zero,0x0
    2064:	0441ff5c 	bgez	v0,1dd8 <Gsm_LPC_Analysis+0x188>
    2068:	00401821 	addu	v1,v0,zero
    206c:	24038000 	addiu	v1,zero,-32768
    2070:	1043ff5d 	beq	v0,v1,1de8 <Gsm_LPC_Analysis+0x198>
    2074:	240367fc 	addiu	v1,zero,26620
    2078:	00021823 	negu	v1,v0
    207c:	00031c00 	sll	v1,v1,0x10
    2080:	00031c03 	sra	v1,v1,0x10
      temp = GSM_ABS (temp);

      if (temp < 22118)
    2084:	28645666 	slti	a0,v1,22118
    2088:	1480ff56 	bnez	a0,1de4 <Gsm_LPC_Analysis+0x194>
    208c:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    2090:	1080002e 	beqz	a0,214c <Gsm_LPC_Analysis+0x4fc>
    2094:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    2098:	2463d4cd 	addiu	v1,v1,-11059
    209c:	00031c00 	sll	v1,v1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    20a0:	0441ff53 	bgez	v0,1df0 <Gsm_LPC_Analysis+0x1a0>
    20a4:	00031c03 	sra	v1,v1,0x10
    20a8:	00031823 	negu	v1,v1
    20ac:	00031c00 	sll	v1,v1,0x10
    20b0:	00031c03 	sra	v1,v1,0x10
  longword L_ACF[9];

  Autocorrelation (s, L_ACF);
  Reflection_coefficients (L_ACF, LARc);
  Transformation_to_Log_Area_Ratios (LARc);
  Quantization_and_coding (LARc);
    20b4:	02002021 	addu	a0,s0,zero
    20b8:	0c000000 	jal	0 <gsm_add>
    20bc:	a4a30002 	sh	v1,2(a1)
}
    20c0:	8fbf0044 	lw	ra,68(sp)
    20c4:	8fb10040 	lw	s1,64(sp)
    20c8:	8fb0003c 	lw	s0,60(sp)
    20cc:	03e00008 	jr	ra
    20d0:	27bd0048 	addiu	sp,sp,72
    20d4:	24038000 	addiu	v1,zero,-32768
    20d8:	10430005 	beq	v0,v1,20f0 <Gsm_LPC_Analysis+0x4a0>
    20dc:	00000000 	sll	zero,zero,0x0
    20e0:	00021823 	negu	v1,v0
    20e4:	00031c00 	sll	v1,v1,0x10
    20e8:	08000723 	j	1c8c <Gsm_LPC_Analysis+0x3c>
    20ec:	00031c03 	sra	v1,v1,0x10
    20f0:	08000727 	j	1c9c <Gsm_LPC_Analysis+0x4c>
    20f4:	240367fc 	addiu	v1,zero,26620

      if (temp < 22118)
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    20f8:	24849a00 	addiu	a0,a0,-26112
    20fc:	00042400 	sll	a0,a0,0x10
    2100:	00042403 	sra	a0,a0,0x10
    2104:	00042080 	sll	a0,a0,0x2
    2108:	00042400 	sll	a0,a0,0x10
    210c:	08000732 	j	1cc8 <Gsm_LPC_Analysis+0x78>
    2110:	00042403 	sra	a0,a0,0x10
    2114:	24639a00 	addiu	v1,v1,-26112
    2118:	00031c00 	sll	v1,v1,0x10
    211c:	00031c03 	sra	v1,v1,0x10
    2120:	00031880 	sll	v1,v1,0x2
    2124:	00031c00 	sll	v1,v1,0x10
    2128:	08000727 	j	1c9c <Gsm_LPC_Analysis+0x4c>
    212c:	00031c03 	sra	v1,v1,0x10
    2130:	24849a00 	addiu	a0,a0,-26112
    2134:	00042400 	sll	a0,a0,0x10
    2138:	00042403 	sra	a0,a0,0x10
    213c:	00042080 	sll	a0,a0,0x2
    2140:	00042400 	sll	a0,a0,0x10
    2144:	0800076e 	j	1db8 <Gsm_LPC_Analysis+0x168>
    2148:	00042403 	sra	a0,a0,0x10
    214c:	24639a00 	addiu	v1,v1,-26112
    2150:	00031c00 	sll	v1,v1,0x10
    2154:	00031c03 	sra	v1,v1,0x10
    2158:	00031880 	sll	v1,v1,0x2
    215c:	00031c00 	sll	v1,v1,0x10
    2160:	0800077a 	j	1de8 <Gsm_LPC_Analysis+0x198>
    2164:	00031c03 	sra	v1,v1,0x10
    2168:	24a59a00 	addiu	a1,a1,-26112
    216c:	00052c00 	sll	a1,a1,0x10
    2170:	00052c03 	sra	a1,a1,0x10
    2174:	00052880 	sll	a1,a1,0x2
    2178:	00052c00 	sll	a1,a1,0x10
    217c:	0800073e 	j	1cf8 <Gsm_LPC_Analysis+0xa8>
    2180:	00052c03 	sra	a1,a1,0x10
    2184:	24a59a00 	addiu	a1,a1,-26112
    2188:	00052c00 	sll	a1,a1,0x10
    218c:	00052c03 	sra	a1,a1,0x10
    2190:	00052880 	sll	a1,a1,0x2
    2194:	00052c00 	sll	a1,a1,0x10
    2198:	0800074a 	j	1d28 <Gsm_LPC_Analysis+0xd8>
    219c:	00052c03 	sra	a1,a1,0x10
    21a0:	24a59a00 	addiu	a1,a1,-26112
    21a4:	00052c00 	sll	a1,a1,0x10
    21a8:	00052c03 	sra	a1,a1,0x10
    21ac:	00052880 	sll	a1,a1,0x2
    21b0:	00052c00 	sll	a1,a1,0x10
    21b4:	08000756 	j	1d58 <Gsm_LPC_Analysis+0x108>
    21b8:	00052c03 	sra	a1,a1,0x10
    21bc:	24a59a00 	addiu	a1,a1,-26112
    21c0:	00052c00 	sll	a1,a1,0x10
    21c4:	00052c03 	sra	a1,a1,0x10
    21c8:	00052880 	sll	a1,a1,0x2
    21cc:	00052c00 	sll	a1,a1,0x10
    21d0:	08000762 	j	1d88 <Gsm_LPC_Analysis+0x138>
    21d4:	00052c03 	sra	a1,a1,0x10

000021d8 <main>:
const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
{
    21d8:	27bdfe68 	addiu	sp,sp,-408
    21dc:	3c060000 	lui	a2,0x0
    21e0:	afb00188 	sw	s0,392(sp)
    21e4:	afbf0194 	sw	ra,404(sp)
    21e8:	afb20190 	sw	s2,400(sp)
    21ec:	afb1018c 	sw	s1,396(sp)
    21f0:	00001021 	addu	v0,zero,zero
    21f4:	27b00044 	addiu	s0,sp,68
    21f8:	24c60000 	addiu	a2,a2,0
  word so[N];
  word LARc[M];
      main_result = 0;

      for (i = 0; i < N; i++)
	so[i] = inData[i];
    21fc:	24050140 	addiu	a1,zero,320

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
    2200:	00c21821 	addu	v1,a2,v0
  word so[N];
  word LARc[M];
      main_result = 0;

      for (i = 0; i < N; i++)
	so[i] = inData[i];
    2204:	8c640000 	lw	a0,0(v1)

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
    2208:	02021821 	addu	v1,s0,v0
  word so[N];
  word LARc[M];
      main_result = 0;

      for (i = 0; i < N; i++)
	so[i] = inData[i];
    220c:	24420004 	addiu	v0,v0,4
    2210:	1445fffb 	bne	v0,a1,2200 <main+0x28>
    2214:	ac640000 	sw	a0,0(v1)
Gsm_LPC_Analysis (word * s /* 0..159 signals       IN/OUT  */ ,
		  word * LARc /* 0..7   LARc's        OUT     */ )
{
  longword L_ACF[9];

  Autocorrelation (s, L_ACF);
    2218:	27b20020 	addiu	s2,sp,32
    221c:	02402821 	addu	a1,s2,zero
    2220:	02002021 	addu	a0,s0,zero
    2224:	0c000000 	jal	0 <gsm_add>
    2228:	27b10010 	addiu	s1,sp,16
  Reflection_coefficients (L_ACF, LARc);
    222c:	02402021 	addu	a0,s2,zero
    2230:	0c000000 	jal	0 <gsm_add>
    2234:	02202821 	addu	a1,s1,zero
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    2238:	87a20010 	lh	v0,16(sp)
    223c:	00000000 	sll	zero,zero,0x0
    2240:	0440012d 	bltz	v0,26f8 <main+0x520>
    2244:	00401821 	addu	v1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    2248:	28645666 	slti	a0,v1,22118
    224c:	1080008d 	beqz	a0,2484 <main+0x2ac>
    2250:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
    2254:	00031843 	sra	v1,v1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    2258:	04400090 	bltz	v0,249c <main+0x2c4>
    225c:	00000000 	sll	zero,zero,0x0
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    2260:	87a20012 	lh	v0,18(sp)
    2264:	00000000 	sll	zero,zero,0x0
    2268:	04400092 	bltz	v0,24b4 <main+0x2dc>
    226c:	a7a30010 	sh	v1,16(sp)
    2270:	00401821 	addu	v1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    2274:	28645666 	slti	a0,v1,22118
    2278:	10800097 	beqz	a0,24d8 <main+0x300>
    227c:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
    2280:	00031843 	sra	v1,v1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    2284:	0440009a 	bltz	v0,24f0 <main+0x318>
    2288:	00000000 	sll	zero,zero,0x0
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    228c:	87a20014 	lh	v0,20(sp)
    2290:	00000000 	sll	zero,zero,0x0
    2294:	0440009c 	bltz	v0,2508 <main+0x330>
    2298:	a7a30012 	sh	v1,18(sp)
    229c:	00401821 	addu	v1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    22a0:	28645666 	slti	a0,v1,22118
    22a4:	108000a1 	beqz	a0,252c <main+0x354>
    22a8:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
    22ac:	00031843 	sra	v1,v1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    22b0:	044000a4 	bltz	v0,2544 <main+0x36c>
    22b4:	00000000 	sll	zero,zero,0x0
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    22b8:	87a20016 	lh	v0,22(sp)
    22bc:	00000000 	sll	zero,zero,0x0
    22c0:	044000a6 	bltz	v0,255c <main+0x384>
    22c4:	a7a30014 	sh	v1,20(sp)
    22c8:	00401821 	addu	v1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    22cc:	28645666 	slti	a0,v1,22118
    22d0:	108000ab 	beqz	a0,2580 <main+0x3a8>
    22d4:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
    22d8:	00031843 	sra	v1,v1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    22dc:	044000ae 	bltz	v0,2598 <main+0x3c0>
    22e0:	00000000 	sll	zero,zero,0x0
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    22e4:	87a20018 	lh	v0,24(sp)
    22e8:	00000000 	sll	zero,zero,0x0
    22ec:	044000b0 	bltz	v0,25b0 <main+0x3d8>
    22f0:	a7a30016 	sh	v1,22(sp)
    22f4:	00401821 	addu	v1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    22f8:	28645666 	slti	a0,v1,22118
    22fc:	108000b5 	beqz	a0,25d4 <main+0x3fc>
    2300:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
    2304:	00031843 	sra	v1,v1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    2308:	044000b8 	bltz	v0,25ec <main+0x414>
    230c:	00000000 	sll	zero,zero,0x0
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    2310:	87a2001a 	lh	v0,26(sp)
    2314:	00000000 	sll	zero,zero,0x0
    2318:	044000ba 	bltz	v0,2604 <main+0x42c>
    231c:	a7a30018 	sh	v1,24(sp)
    2320:	00401821 	addu	v1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    2324:	28645666 	slti	a0,v1,22118
    2328:	108000bf 	beqz	a0,2628 <main+0x450>
    232c:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
    2330:	00031843 	sra	v1,v1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    2334:	044000c2 	bltz	v0,2640 <main+0x468>
    2338:	00000000 	sll	zero,zero,0x0
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    233c:	87a2001c 	lh	v0,28(sp)
    2340:	00000000 	sll	zero,zero,0x0
    2344:	044000c4 	bltz	v0,2658 <main+0x480>
    2348:	a7a3001a 	sh	v1,26(sp)
    234c:	00401821 	addu	v1,v0,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    2350:	28645666 	slti	a0,v1,22118
    2354:	108000c9 	beqz	a0,267c <main+0x4a4>
    2358:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
    235c:	00032043 	sra	a0,v1,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    2360:	044000cc 	bltz	v0,2694 <main+0x4bc>
    2364:	00000000 	sll	zero,zero,0x0
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    2368:	87a3001e 	lh	v1,30(sp)
    236c:	00000000 	sll	zero,zero,0x0
    2370:	046000ce 	bltz	v1,26ac <main+0x4d4>
    2374:	a7a4001c 	sh	a0,28(sp)
    2378:	00601021 	addu	v0,v1,zero
      temp = GSM_ABS (temp);

      if (temp < 22118)
    237c:	28445666 	slti	a0,v0,22118
    2380:	108000d3 	beqz	a0,26d0 <main+0x4f8>
    2384:	2844799a 	slti	a0,v0,31130
	{
	  temp >>= 1;
    2388:	00021043 	sra	v0,v0,0x1
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    238c:	046000d6 	bltz	v1,26e8 <main+0x510>
    2390:	00000000 	sll	zero,zero,0x0
  longword L_ACF[9];

  Autocorrelation (s, L_ACF);
  Reflection_coefficients (L_ACF, LARc);
  Transformation_to_Log_Area_Ratios (LARc);
  Quantization_and_coding (LARc);
    2394:	02202021 	addu	a0,s1,zero
    2398:	0c000000 	jal	0 <gsm_add>
    239c:	a7a2001e 	sh	v0,30(sp)
    23a0:	3c070000 	lui	a3,0x0
    23a4:	00001021 	addu	v0,zero,zero
{
  int i;
  int main_result;
  word so[N];
  word LARc[M];
      main_result = 0;
    23a8:	00001821 	addu	v1,zero,zero
    23ac:	24e70000 	addiu	a3,a3,0
      for (i = 0; i < N; i++)
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
    23b0:	24060140 	addiu	a2,zero,320

const word outLARc[M] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
main ()
    23b4:	02022821 	addu	a1,s0,v0
    23b8:	00e22021 	addu	a0,a3,v0
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
	main_result += (so[i] != outData[i]);
    23bc:	84a50000 	lh	a1,0(a1)
    23c0:	84840000 	lh	a0,0(a0)
    23c4:	24420002 	addiu	v0,v0,2
    23c8:	00a42026 	xor	a0,a1,a0
    23cc:	0004202b 	sltu	a0,zero,a0
      for (i = 0; i < N; i++)
	so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < N; i++)
    23d0:	1446fff8 	bne	v0,a2,23b4 <main+0x1dc>
    23d4:	00641821 	addu	v1,v1,a0
	main_result += (so[i] != outData[i]);
      for (i = 0; i < M; i++)
	main_result += (LARc[i] != outLARc[i]);
    23d8:	87a70012 	lh	a3,18(sp)
    23dc:	87a40010 	lh	a0,16(sp)
    23e0:	87a20014 	lh	v0,20(sp)
    23e4:	87a60016 	lh	a2,22(sp)
    23e8:	38e70021 	xori	a3,a3,0x21
    23ec:	38840020 	xori	a0,a0,0x20
    23f0:	87a50018 	lh	a1,24(sp)
    23f4:	0004202b 	sltu	a0,zero,a0
    23f8:	0007382b 	sltu	a3,zero,a3
    23fc:	38420016 	xori	v0,v0,0x16
    2400:	00e43821 	addu	a3,a3,a0
    2404:	0002102b 	sltu	v0,zero,v0
    2408:	87a4001a 	lh	a0,26(sp)
    240c:	38c6000d 	xori	a2,a2,0xd
    2410:	00e23821 	addu	a3,a3,v0
    2414:	0006302b 	sltu	a2,zero,a2
    2418:	87a2001c 	lh	v0,28(sp)
    241c:	38a50007 	xori	a1,a1,0x7
    2420:	00e63021 	addu	a2,a3,a2
    2424:	0005282b 	sltu	a1,zero,a1
    2428:	38840005 	xori	a0,a0,0x5
    242c:	00c52821 	addu	a1,a2,a1
    2430:	87b0001e 	lh	s0,30(sp)
    2434:	0004202b 	sltu	a0,zero,a0
    2438:	38420003 	xori	v0,v0,0x3
    243c:	00a42021 	addu	a0,a1,a0
    2440:	0002102b 	sltu	v0,zero,v0
    2444:	00821021 	addu	v0,a0,v0
    2448:	3a100002 	xori	s0,s0,0x2
    244c:	00431821 	addu	v1,v0,v1
    2450:	0010802b 	sltu	s0,zero,s0
    2454:	02038021 	addu	s0,s0,v1

      printf ("%d\n", main_result);
    2458:	3c040000 	lui	a0,0x0
    245c:	02002821 	addu	a1,s0,zero
    2460:	0c000000 	jal	0 <gsm_add>
    2464:	24840000 	addiu	a0,a0,0
      return main_result;
    }
    2468:	8fbf0194 	lw	ra,404(sp)
    246c:	02001021 	addu	v0,s0,zero
    2470:	8fb20190 	lw	s2,400(sp)
    2474:	8fb1018c 	lw	s1,396(sp)
    2478:	8fb00188 	lw	s0,392(sp)
    247c:	03e00008 	jr	ra
    2480:	27bd0198 	addiu	sp,sp,408

      if (temp < 22118)
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    2484:	108000d8 	beqz	a0,27e8 <main+0x610>
    2488:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    248c:	2463d4cd 	addiu	v1,v1,-11059
    2490:	00031c00 	sll	v1,v1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    2494:	0441ff72 	bgez	v0,2260 <main+0x88>
    2498:	00031c03 	sra	v1,v1,0x10
    249c:	00031823 	negu	v1,v1
    24a0:	00031c00 	sll	v1,v1,0x10
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    24a4:	87a20012 	lh	v0,18(sp)
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    24a8:	00031c03 	sra	v1,v1,0x10
    24ac:	0441ff70 	bgez	v0,2270 <main+0x98>
    24b0:	a7a30010 	sh	v1,16(sp)
    24b4:	24038000 	addiu	v1,zero,-32768
    24b8:	1043ff72 	beq	v0,v1,2284 <main+0xac>
    24bc:	240367fc 	addiu	v1,zero,26620
    24c0:	00021823 	negu	v1,v0
    24c4:	00031c00 	sll	v1,v1,0x10
    24c8:	00031c03 	sra	v1,v1,0x10
    {

      temp = *r;
      temp = GSM_ABS (temp);

      if (temp < 22118)
    24cc:	28645666 	slti	a0,v1,22118
    24d0:	1480ff6b 	bnez	a0,2280 <main+0xa8>
    24d4:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    24d8:	10800092 	beqz	a0,2724 <main+0x54c>
    24dc:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    24e0:	2463d4cd 	addiu	v1,v1,-11059
    24e4:	00031c00 	sll	v1,v1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    24e8:	0441ff68 	bgez	v0,228c <main+0xb4>
    24ec:	00031c03 	sra	v1,v1,0x10
    24f0:	00031823 	negu	v1,v1
    24f4:	00031c00 	sll	v1,v1,0x10
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    24f8:	87a20014 	lh	v0,20(sp)
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    24fc:	00031c03 	sra	v1,v1,0x10
    2500:	0441ff66 	bgez	v0,229c <main+0xc4>
    2504:	a7a30012 	sh	v1,18(sp)
    2508:	24038000 	addiu	v1,zero,-32768
    250c:	1043ff68 	beq	v0,v1,22b0 <main+0xd8>
    2510:	240367fc 	addiu	v1,zero,26620
    2514:	00021823 	negu	v1,v0
    2518:	00031c00 	sll	v1,v1,0x10
    251c:	00031c03 	sra	v1,v1,0x10
    {

      temp = *r;
      temp = GSM_ABS (temp);

      if (temp < 22118)
    2520:	28645666 	slti	a0,v1,22118
    2524:	1480ff61 	bnez	a0,22ac <main+0xd4>
    2528:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    252c:	10800084 	beqz	a0,2740 <main+0x568>
    2530:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    2534:	2463d4cd 	addiu	v1,v1,-11059
    2538:	00031c00 	sll	v1,v1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    253c:	0441ff5e 	bgez	v0,22b8 <main+0xe0>
    2540:	00031c03 	sra	v1,v1,0x10
    2544:	00031823 	negu	v1,v1
    2548:	00031c00 	sll	v1,v1,0x10
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    254c:	87a20016 	lh	v0,22(sp)
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    2550:	00031c03 	sra	v1,v1,0x10
    2554:	0441ff5c 	bgez	v0,22c8 <main+0xf0>
    2558:	a7a30014 	sh	v1,20(sp)
    255c:	24038000 	addiu	v1,zero,-32768
    2560:	1043ff5e 	beq	v0,v1,22dc <main+0x104>
    2564:	240367fc 	addiu	v1,zero,26620
    2568:	00021823 	negu	v1,v0
    256c:	00031c00 	sll	v1,v1,0x10
    2570:	00031c03 	sra	v1,v1,0x10
    {

      temp = *r;
      temp = GSM_ABS (temp);

      if (temp < 22118)
    2574:	28645666 	slti	a0,v1,22118
    2578:	1480ff57 	bnez	a0,22d8 <main+0x100>
    257c:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    2580:	10800076 	beqz	a0,275c <main+0x584>
    2584:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    2588:	2463d4cd 	addiu	v1,v1,-11059
    258c:	00031c00 	sll	v1,v1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    2590:	0441ff54 	bgez	v0,22e4 <main+0x10c>
    2594:	00031c03 	sra	v1,v1,0x10
    2598:	00031823 	negu	v1,v1
    259c:	00031c00 	sll	v1,v1,0x10
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    25a0:	87a20018 	lh	v0,24(sp)
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    25a4:	00031c03 	sra	v1,v1,0x10
    25a8:	0441ff52 	bgez	v0,22f4 <main+0x11c>
    25ac:	a7a30016 	sh	v1,22(sp)
    25b0:	24038000 	addiu	v1,zero,-32768
    25b4:	1043ff54 	beq	v0,v1,2308 <main+0x130>
    25b8:	240367fc 	addiu	v1,zero,26620
    25bc:	00021823 	negu	v1,v0
    25c0:	00031c00 	sll	v1,v1,0x10
    25c4:	00031c03 	sra	v1,v1,0x10
    {

      temp = *r;
      temp = GSM_ABS (temp);

      if (temp < 22118)
    25c8:	28645666 	slti	a0,v1,22118
    25cc:	1480ff4d 	bnez	a0,2304 <main+0x12c>
    25d0:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    25d4:	10800068 	beqz	a0,2778 <main+0x5a0>
    25d8:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    25dc:	2463d4cd 	addiu	v1,v1,-11059
    25e0:	00031c00 	sll	v1,v1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    25e4:	0441ff4a 	bgez	v0,2310 <main+0x138>
    25e8:	00031c03 	sra	v1,v1,0x10
    25ec:	00031823 	negu	v1,v1
    25f0:	00031c00 	sll	v1,v1,0x10
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    25f4:	87a2001a 	lh	v0,26(sp)
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    25f8:	00031c03 	sra	v1,v1,0x10
    25fc:	0441ff48 	bgez	v0,2320 <main+0x148>
    2600:	a7a30018 	sh	v1,24(sp)
    2604:	24038000 	addiu	v1,zero,-32768
    2608:	1043ff4a 	beq	v0,v1,2334 <main+0x15c>
    260c:	240367fc 	addiu	v1,zero,26620
    2610:	00021823 	negu	v1,v0
    2614:	00031c00 	sll	v1,v1,0x10
    2618:	00031c03 	sra	v1,v1,0x10
    {

      temp = *r;
      temp = GSM_ABS (temp);

      if (temp < 22118)
    261c:	28645666 	slti	a0,v1,22118
    2620:	1480ff43 	bnez	a0,2330 <main+0x158>
    2624:	2864799a 	slti	a0,v1,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    2628:	1080005a 	beqz	a0,2794 <main+0x5bc>
    262c:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    2630:	2463d4cd 	addiu	v1,v1,-11059
    2634:	00031c00 	sll	v1,v1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    2638:	0441ff40 	bgez	v0,233c <main+0x164>
    263c:	00031c03 	sra	v1,v1,0x10
    2640:	00031823 	negu	v1,v1
    2644:	00031c00 	sll	v1,v1,0x10
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    2648:	87a2001c 	lh	v0,28(sp)
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    264c:	00031c03 	sra	v1,v1,0x10
    2650:	0441ff3e 	bgez	v0,234c <main+0x174>
    2654:	a7a3001a 	sh	v1,26(sp)
    2658:	24038000 	addiu	v1,zero,-32768
    265c:	1043002d 	beq	v0,v1,2714 <main+0x53c>
    2660:	00021823 	negu	v1,v0
    2664:	00031c00 	sll	v1,v1,0x10
    2668:	00031c03 	sra	v1,v1,0x10
    {

      temp = *r;
      temp = GSM_ABS (temp);

      if (temp < 22118)
    266c:	28645666 	slti	a0,v1,22118
    2670:	1480ff3b 	bnez	a0,2360 <main+0x188>
    2674:	00032043 	sra	a0,v1,0x1
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    2678:	2864799a 	slti	a0,v1,31130
    267c:	1080004c 	beqz	a0,27b0 <main+0x5d8>
    2680:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    2684:	2463d4cd 	addiu	v1,v1,-11059
    2688:	00032400 	sll	a0,v1,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    268c:	0441ff36 	bgez	v0,2368 <main+0x190>
    2690:	00042403 	sra	a0,a0,0x10
    2694:	00042023 	negu	a0,a0
    2698:	00042400 	sll	a0,a0,0x10
  /* Computation of the LAR[0..7] from the r[0..7]
   */
  for (i = 1; i <= 8; i++, r++)
    {

      temp = *r;
    269c:	87a3001e 	lh	v1,30(sp)
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    26a0:	00042403 	sra	a0,a0,0x10
    26a4:	0461ff34 	bgez	v1,2378 <main+0x1a0>
    26a8:	a7a4001c 	sh	a0,28(sp)
    26ac:	24028000 	addiu	v0,zero,-32768
    26b0:	1062ff36 	beq	v1,v0,238c <main+0x1b4>
    26b4:	240267fc 	addiu	v0,zero,26620
    26b8:	00031023 	negu	v0,v1
    26bc:	00021400 	sll	v0,v0,0x10
    26c0:	00021403 	sra	v0,v0,0x10
    {

      temp = *r;
      temp = GSM_ABS (temp);

      if (temp < 22118)
    26c4:	28445666 	slti	a0,v0,22118
    26c8:	1480ff2f 	bnez	a0,2388 <main+0x1b0>
    26cc:	2844799a 	slti	a0,v0,31130
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    26d0:	1080003e 	beqz	a0,27cc <main+0x5f4>
    26d4:	00000000 	sll	zero,zero,0x0
	{
	  temp -= 11059;
    26d8:	2442d4cd 	addiu	v0,v0,-11059
    26dc:	00021400 	sll	v0,v0,0x10
	{
	  temp -= 26112;
	  temp <<= 2;
	}

      *r = *r < 0 ? -temp : temp;
    26e0:	0461ff2c 	bgez	v1,2394 <main+0x1bc>
    26e4:	00021403 	sra	v0,v0,0x10
    26e8:	00021023 	negu	v0,v0
    26ec:	00021400 	sll	v0,v0,0x10
    26f0:	080008e5 	j	2394 <main+0x1bc>
    26f4:	00021403 	sra	v0,v0,0x10
    26f8:	24038000 	addiu	v1,zero,-32768
    26fc:	10430007 	beq	v0,v1,271c <main+0x544>
    2700:	00000000 	sll	zero,zero,0x0
    2704:	00021823 	negu	v1,v0
    2708:	00031c00 	sll	v1,v1,0x10
    270c:	08000892 	j	2248 <main+0x70>
    2710:	00031c03 	sra	v1,v1,0x10
    2714:	080008d8 	j	2360 <main+0x188>
    2718:	240467fc 	addiu	a0,zero,26620
    271c:	08000896 	j	2258 <main+0x80>
    2720:	240367fc 	addiu	v1,zero,26620

      if (temp < 22118)
	{
	  temp >>= 1;
	}
      else if (temp < 31130)
    2724:	24639a00 	addiu	v1,v1,-26112
    2728:	00031c00 	sll	v1,v1,0x10
    272c:	00031c03 	sra	v1,v1,0x10
    2730:	00031880 	sll	v1,v1,0x2
    2734:	00031c00 	sll	v1,v1,0x10
    2738:	080008a1 	j	2284 <main+0xac>
    273c:	00031c03 	sra	v1,v1,0x10
    2740:	24639a00 	addiu	v1,v1,-26112
    2744:	00031c00 	sll	v1,v1,0x10
    2748:	00031c03 	sra	v1,v1,0x10
    274c:	00031880 	sll	v1,v1,0x2
    2750:	00031c00 	sll	v1,v1,0x10
    2754:	080008ac 	j	22b0 <main+0xd8>
    2758:	00031c03 	sra	v1,v1,0x10
    275c:	24639a00 	addiu	v1,v1,-26112
    2760:	00031c00 	sll	v1,v1,0x10
    2764:	00031c03 	sra	v1,v1,0x10
    2768:	00031880 	sll	v1,v1,0x2
    276c:	00031c00 	sll	v1,v1,0x10
    2770:	080008b7 	j	22dc <main+0x104>
    2774:	00031c03 	sra	v1,v1,0x10
    2778:	24639a00 	addiu	v1,v1,-26112
    277c:	00031c00 	sll	v1,v1,0x10
    2780:	00031c03 	sra	v1,v1,0x10
    2784:	00031880 	sll	v1,v1,0x2
    2788:	00031c00 	sll	v1,v1,0x10
    278c:	080008c2 	j	2308 <main+0x130>
    2790:	00031c03 	sra	v1,v1,0x10
    2794:	24639a00 	addiu	v1,v1,-26112
    2798:	00031c00 	sll	v1,v1,0x10
    279c:	00031c03 	sra	v1,v1,0x10
    27a0:	00031880 	sll	v1,v1,0x2
    27a4:	00031c00 	sll	v1,v1,0x10
    27a8:	080008cd 	j	2334 <main+0x15c>
    27ac:	00031c03 	sra	v1,v1,0x10
    27b0:	24649a00 	addiu	a0,v1,-26112
    27b4:	00042400 	sll	a0,a0,0x10
    27b8:	00042403 	sra	a0,a0,0x10
    27bc:	00042080 	sll	a0,a0,0x2
    27c0:	00042400 	sll	a0,a0,0x10
    27c4:	080008d8 	j	2360 <main+0x188>
    27c8:	00042403 	sra	a0,a0,0x10
    27cc:	24429a00 	addiu	v0,v0,-26112
    27d0:	00021400 	sll	v0,v0,0x10
    27d4:	00021403 	sra	v0,v0,0x10
    27d8:	00021080 	sll	v0,v0,0x2
    27dc:	00021400 	sll	v0,v0,0x10
    27e0:	080008e3 	j	238c <main+0x1b4>
    27e4:	00021403 	sra	v0,v0,0x10
    27e8:	24639a00 	addiu	v1,v1,-26112
    27ec:	00031c00 	sll	v1,v1,0x10
    27f0:	00031c03 	sra	v1,v1,0x10
    27f4:	00031880 	sll	v1,v1,0x2
    27f8:	00031c00 	sll	v1,v1,0x10
    27fc:	08000896 	j	2258 <main+0x80>
    2800:	00031c03 	sra	v1,v1,0x10

Disassembly of section .rodata:

00000000 <bitoff>:
   0:	08070606 	j	1c1818 <main+0x1bf640>
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
 124:	0eebc06f 	jal	baf01bc <main+0xbaedfe4>
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
 15c:	0e1f5673 	jal	87d59cc <main+0x87d37f4>
 160:	ea3cb172 	swc2	$28,-20110(s1)
 164:	306323d9 	andi	v1,v1,0x23d9
 168:	a02030c0 	sb	zero,12480(at)
 16c:	542aba4e 	0x542aba4e
 170:	cab34f35 	lwc2	$19,20277(s5)
 174:	270344f4 	addiu	v1,t8,17652
 178:	d338bc52 	0xd338bc52
 17c:	d6c89624 	0xd6c89624
 180:	00cf6bdc 	0xcf6bdc
 184:	09d51bff 	j	7546ffc <main+0x7544e24>
 188:	8bdaa857 	lwl	k0,-22441(s8)
 18c:	7557f6c0 	jalx	55fdb00 <main+0x55fb928>
 190:	320d012c 	andi	t5,s0,0x12c
 194:	9c2d237f 	0x9c2d237f
 198:	715ee661 	0x715ee661
 19c:	b0a9c7f5 	0xb0a9c7f5
 1a0:	e27dab33 	swc0	$29,-21709(s3)
 1a4:	f1a48a7e 	0xf1a48a7e
 1a8:	f38a86fd 	0xf38a86fd
 1ac:	218469f6 	addi	a0,t4,27126
 1b0:	0d56ee05 	jal	55bb814 <main+0x55b963c>
 1b4:	a8e1bd09 	swl	at,-17143(a3)
 1b8:	35dcfbb8 	ori	gp,t6,0xfbb8
 1bc:	c6e75637 	lwc1	$f7,22071(s7)
 1c0:	cb107f86 	lwc2	$16,32646(t8)
 1c4:	4131dee7 	0x4131dee7
 1c8:	ce432907 	lwc3	$3,10503(s2)
 1cc:	51091a28 	0x51091a28
 1d0:	972686d9 	lhu	a2,-31015(t9)
 1d4:	0ed0b268 	jal	b42c9a0 <main+0xb42a7c8>
 1d8:	b031899d 	0xb031899d
 1dc:	7ea5cc4b 	0x7ea5cc4b
 1e0:	232e4749 	addi	t6,t9,18249
 1e4:	0963e0c4 	j	58f8310 <main+0x58f6138>
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
 224:	0c6972e4 	jal	1a5cb90 <main+0x1a5a9b8>
 228:	b100f528 	0xb100f528
 22c:	5e14e0e5 	0x5e14e0e5
 230:	d73ad15e 	0xd73ad15e
 234:	c60fe5fe 	lwc1	$f15,-6658(s0)
 238:	7d3a0fb4 	0x7d3a0fb4
 23c:	28dd3b37 	slti	sp,a2,15159

00000240 <outData>:
 240:	00502a60 	0x502a60
 244:	0760d7d0 	bltz	k1,ffff6188 <main+0xffff3fb0>
 248:	1dc07410 	bgtz	t6,1d28c <main+0x1b0b4>
 24c:	50008de0 	0x50008de0
 250:	b6008b90 	0xb6008b90
 254:	82f00640 	lb	s0,1600(s7)
 258:	3d80f3f0 	0x3d80f3f0
 25c:	bc00a990 	0xbc00a990
 260:	1a90cc20 	0x1a90cc20
 264:	0ef0c070 	jal	bc301c0 <main+0xbc2dfe8>
 268:	f9e0cf10 	0xf9e0cf10
 26c:	9620ff40 	lhu	zero,-192(s1)
 270:	9c101260 	0x9c101260
 274:	89203ba0 	lwl	zero,15264(t1)
 278:	fa902ca0 	0xfa902ca0
 27c:	2c701380 	sltiu	s0,v1,4992
 280:	1ec0f890 	bgtz	s6,ffffe4c4 <main+0xffffc2ec>
 284:	23a08410 	addi	zero,sp,-31728
 288:	9d70c8b0 	0x9d70c8b0
 28c:	46407eb0 	c1	0x407eb0
 290:	cf70c1c0 	lwc3	$16,-15936(k1)
 294:	ab901ee0 	swl	s0,7904(gp)
 298:	06a06dd0 	bltz	s5,1b9dc <main+0x19804>
 29c:	0e205670 	jal	88159c0 <main+0x88137e8>
 2a0:	ea40b170 	swc2	$0,-20112(s2)
 2a4:	306023e0 	andi	zero,v1,0x23e0
 2a8:	a02030c0 	sb	zero,12480(at)
 2ac:	5430ba50 	0x5430ba50
 2b0:	cab04f30 	lwc2	$16,20272(s5)
 2b4:	270044f0 	addiu	zero,t8,17648
 2b8:	d340bc50 	0xd340bc50
 2bc:	d6d09620 	0xd6d09620
 2c0:	00d06be0 	0xd06be0
 2c4:	09d01c00 	j	7407000 <main+0x7404e28>
 2c8:	8be0a850 	lwl	zero,-22448(ra)
 2cc:	7550f6c0 	jalx	543db00 <main+0x543b928>
 2d0:	32100130 	andi	s0,s0,0x130
 2d4:	9c302380 	0x9c302380
 2d8:	7160e660 	0x7160e660
 2dc:	b0b0c7f0 	0xb0b0c7f0
 2e0:	e280ab30 	swc0	$0,-21712(s4)
 2e4:	f1a08a80 	0xf1a08a80
 2e8:	f3908700 	0xf3908700
 2ec:	218069f0 	addi	zero,t4,27120
 2f0:	0d50ee00 	jal	543b800 <main+0x5439628>
 2f4:	a8e0bd10 	swl	zero,-17136(a3)
 2f8:	35e0fbc0 	ori	zero,t7,0xfbc0
 2fc:	c6e05630 	lwc1	$f0,22064(s7)
 300:	cb107f80 	lwc2	$16,32640(t8)
 304:	4130dee0 	0x4130dee0
 308:	ce402900 	lwc3	$0,10496(s2)
 30c:	51101a30 	0x51101a30
 310:	972086e0 	lhu	zero,-31008(t9)
 314:	0ed0b270 	jal	b42c9c0 <main+0xb42a7e8>
 318:	b03089a0 	0xb03089a0
 31c:	7ea0cc50 	0x7ea0cc50
 320:	23304750 	addi	s0,t9,18256
 324:	0960e0c0 	j	5838300 <main+0x5836128>
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
 360:	1ee009b0 	bgtz	s7,2a24 <main+0x84c>
 364:	0c7072e0 	jal	1c1cb80 <main+0x1c1a9a8>
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
