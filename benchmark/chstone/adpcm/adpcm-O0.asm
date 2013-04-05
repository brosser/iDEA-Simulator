
adpcm.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <abs>:
/* put input samples in xin1 = first value, xin2 = second value */
/* returns il and ih stored together */

int
abs (int n)
{
       0:	27bdfff0 	addiu	sp,sp,-16
       4:	afbe000c 	sw	s8,12(sp)
       8:	03a0f021 	addu	s8,sp,zero
       c:	afc40010 	sw	a0,16(s8)
  int m;

  if (n >= 0)
      10:	8fc20010 	lw	v0,16(s8)
      14:	00000000 	sll	zero,zero,0x0
      18:	04400006 	bltz	v0,34 <abs+0x34>
      1c:	00000000 	sll	zero,zero,0x0
    m = n;
      20:	8fc20010 	lw	v0,16(s8)
      24:	00000000 	sll	zero,zero,0x0
      28:	afc20000 	sw	v0,0(s8)
      2c:	08000011 	j	44 <abs+0x44>
      30:	00000000 	sll	zero,zero,0x0
  else
    m = -n;
      34:	8fc20010 	lw	v0,16(s8)
      38:	00000000 	sll	zero,zero,0x0
      3c:	00021023 	negu	v0,v0
      40:	afc20000 	sw	v0,0(s8)
  return m;
      44:	8fc20000 	lw	v0,0(s8)
}
      48:	03c0e821 	addu	sp,s8,zero
      4c:	8fbe000c 	lw	s8,12(sp)
      50:	27bd0010 	addiu	sp,sp,16
      54:	03e00008 	jr	ra
      58:	00000000 	sll	zero,zero,0x0

0000005c <encode>:

int
encode (int xin1, int xin2)
{
      5c:	27bdffc0 	addiu	sp,sp,-64
      60:	afbf003c 	sw	ra,60(sp)
      64:	afbe0038 	sw	s8,56(sp)
      68:	03a0f021 	addu	s8,sp,zero
      6c:	afc40040 	sw	a0,64(s8)
      70:	afc50044 	sw	a1,68(s8)
  int *tqmf_ptr, *tqmf_ptr1;
  long int xa, xb;
  int decis;

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
      74:	3c020000 	lui	v0,0x0
      78:	24420000 	addiu	v0,v0,0
      7c:	afc2001c 	sw	v0,28(s8)
  tqmf_ptr = tqmf;
      80:	3c020000 	lui	v0,0x0
      84:	24420000 	addiu	v0,v0,0
      88:	afc20020 	sw	v0,32(s8)
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
      8c:	8fc20020 	lw	v0,32(s8)
      90:	00000000 	sll	zero,zero,0x0
      94:	8c430000 	lw	v1,0(v0)
      98:	8fc2001c 	lw	v0,28(s8)
      9c:	00000000 	sll	zero,zero,0x0
      a0:	8c420000 	lw	v0,0(v0)
      a4:	00000000 	sll	zero,zero,0x0
      a8:	00620018 	mult	v1,v0
      ac:	00001012 	mflo	v0
      b0:	afc20028 	sw	v0,40(s8)
      b4:	8fc20020 	lw	v0,32(s8)
      b8:	00000000 	sll	zero,zero,0x0
      bc:	24420004 	addiu	v0,v0,4
      c0:	afc20020 	sw	v0,32(s8)
      c4:	8fc2001c 	lw	v0,28(s8)
      c8:	00000000 	sll	zero,zero,0x0
      cc:	24420004 	addiu	v0,v0,4
      d0:	afc2001c 	sw	v0,28(s8)
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
      d4:	8fc20020 	lw	v0,32(s8)
      d8:	00000000 	sll	zero,zero,0x0
      dc:	8c430000 	lw	v1,0(v0)
      e0:	8fc2001c 	lw	v0,28(s8)
      e4:	00000000 	sll	zero,zero,0x0
      e8:	8c420000 	lw	v0,0(v0)
      ec:	00000000 	sll	zero,zero,0x0
      f0:	00620018 	mult	v1,v0
      f4:	00001012 	mflo	v0
      f8:	afc2002c 	sw	v0,44(s8)
      fc:	8fc20020 	lw	v0,32(s8)
     100:	00000000 	sll	zero,zero,0x0
     104:	24420004 	addiu	v0,v0,4
     108:	afc20020 	sw	v0,32(s8)
     10c:	8fc2001c 	lw	v0,28(s8)
     110:	00000000 	sll	zero,zero,0x0
     114:	24420004 	addiu	v0,v0,4
     118:	afc2001c 	sw	v0,28(s8)
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
     11c:	afc00018 	sw	zero,24(s8)
     120:	08000078 	j	1e0 <encode+0x184>
     124:	00000000 	sll	zero,zero,0x0
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     128:	8fc20020 	lw	v0,32(s8)
     12c:	00000000 	sll	zero,zero,0x0
     130:	8c430000 	lw	v1,0(v0)
     134:	8fc2001c 	lw	v0,28(s8)
     138:	00000000 	sll	zero,zero,0x0
     13c:	8c420000 	lw	v0,0(v0)
     140:	00000000 	sll	zero,zero,0x0
     144:	00620018 	mult	v1,v0
     148:	00001812 	mflo	v1
     14c:	8fc20028 	lw	v0,40(s8)
     150:	00000000 	sll	zero,zero,0x0
     154:	00431021 	addu	v0,v0,v1
     158:	afc20028 	sw	v0,40(s8)
     15c:	8fc20020 	lw	v0,32(s8)
     160:	00000000 	sll	zero,zero,0x0
     164:	24420004 	addiu	v0,v0,4
     168:	afc20020 	sw	v0,32(s8)
     16c:	8fc2001c 	lw	v0,28(s8)
     170:	00000000 	sll	zero,zero,0x0
     174:	24420004 	addiu	v0,v0,4
     178:	afc2001c 	sw	v0,28(s8)
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     17c:	8fc20020 	lw	v0,32(s8)
     180:	00000000 	sll	zero,zero,0x0
     184:	8c430000 	lw	v1,0(v0)
     188:	8fc2001c 	lw	v0,28(s8)
     18c:	00000000 	sll	zero,zero,0x0
     190:	8c420000 	lw	v0,0(v0)
     194:	00000000 	sll	zero,zero,0x0
     198:	00620018 	mult	v1,v0
     19c:	00001812 	mflo	v1
     1a0:	8fc2002c 	lw	v0,44(s8)
     1a4:	00000000 	sll	zero,zero,0x0
     1a8:	00431021 	addu	v0,v0,v1
     1ac:	afc2002c 	sw	v0,44(s8)
     1b0:	8fc20020 	lw	v0,32(s8)
     1b4:	00000000 	sll	zero,zero,0x0
     1b8:	24420004 	addiu	v0,v0,4
     1bc:	afc20020 	sw	v0,32(s8)
     1c0:	8fc2001c 	lw	v0,28(s8)
     1c4:	00000000 	sll	zero,zero,0x0
     1c8:	24420004 	addiu	v0,v0,4
     1cc:	afc2001c 	sw	v0,28(s8)
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
     1d0:	8fc20018 	lw	v0,24(s8)
     1d4:	00000000 	sll	zero,zero,0x0
     1d8:	24420001 	addiu	v0,v0,1
     1dc:	afc20018 	sw	v0,24(s8)
     1e0:	8fc20018 	lw	v0,24(s8)
     1e4:	00000000 	sll	zero,zero,0x0
     1e8:	2842000a 	slti	v0,v0,10
     1ec:	1440ffce 	bnez	v0,128 <encode+0xcc>
     1f0:	00000000 	sll	zero,zero,0x0
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     1f4:	8fc20020 	lw	v0,32(s8)
     1f8:	00000000 	sll	zero,zero,0x0
     1fc:	8c430000 	lw	v1,0(v0)
     200:	8fc2001c 	lw	v0,28(s8)
     204:	00000000 	sll	zero,zero,0x0
     208:	8c420000 	lw	v0,0(v0)
     20c:	00000000 	sll	zero,zero,0x0
     210:	00620018 	mult	v1,v0
     214:	00001812 	mflo	v1
     218:	8fc20028 	lw	v0,40(s8)
     21c:	00000000 	sll	zero,zero,0x0
     220:	00431021 	addu	v0,v0,v1
     224:	afc20028 	sw	v0,40(s8)
     228:	8fc20020 	lw	v0,32(s8)
     22c:	00000000 	sll	zero,zero,0x0
     230:	24420004 	addiu	v0,v0,4
     234:	afc20020 	sw	v0,32(s8)
     238:	8fc2001c 	lw	v0,28(s8)
     23c:	00000000 	sll	zero,zero,0x0
     240:	24420004 	addiu	v0,v0,4
     244:	afc2001c 	sw	v0,28(s8)
  xb += (long) (*tqmf_ptr) * (*h_ptr++);
     248:	8fc20020 	lw	v0,32(s8)
     24c:	00000000 	sll	zero,zero,0x0
     250:	8c430000 	lw	v1,0(v0)
     254:	8fc2001c 	lw	v0,28(s8)
     258:	00000000 	sll	zero,zero,0x0
     25c:	8c420000 	lw	v0,0(v0)
     260:	00000000 	sll	zero,zero,0x0
     264:	00620018 	mult	v1,v0
     268:	00001812 	mflo	v1
     26c:	8fc2002c 	lw	v0,44(s8)
     270:	00000000 	sll	zero,zero,0x0
     274:	00431021 	addu	v0,v0,v1
     278:	afc2002c 	sw	v0,44(s8)
     27c:	8fc2001c 	lw	v0,28(s8)
     280:	00000000 	sll	zero,zero,0x0
     284:	24420004 	addiu	v0,v0,4
     288:	afc2001c 	sw	v0,28(s8)

/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
     28c:	8fc20020 	lw	v0,32(s8)
     290:	00000000 	sll	zero,zero,0x0
     294:	2442fff8 	addiu	v0,v0,-8
     298:	afc20024 	sw	v0,36(s8)
  for (i = 0; i < 22; i++)
     29c:	afc00018 	sw	zero,24(s8)
     2a0:	080000bc 	j	2f0 <encode+0x294>
     2a4:	00000000 	sll	zero,zero,0x0
    *tqmf_ptr-- = *tqmf_ptr1--;
     2a8:	8fc20024 	lw	v0,36(s8)
     2ac:	00000000 	sll	zero,zero,0x0
     2b0:	8c430000 	lw	v1,0(v0)
     2b4:	8fc20020 	lw	v0,32(s8)
     2b8:	00000000 	sll	zero,zero,0x0
     2bc:	ac430000 	sw	v1,0(v0)
     2c0:	8fc20020 	lw	v0,32(s8)
     2c4:	00000000 	sll	zero,zero,0x0
     2c8:	2442fffc 	addiu	v0,v0,-4
     2cc:	afc20020 	sw	v0,32(s8)
     2d0:	8fc20024 	lw	v0,36(s8)
     2d4:	00000000 	sll	zero,zero,0x0
     2d8:	2442fffc 	addiu	v0,v0,-4
     2dc:	afc20024 	sw	v0,36(s8)
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
  xb += (long) (*tqmf_ptr) * (*h_ptr++);

/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
  for (i = 0; i < 22; i++)
     2e0:	8fc20018 	lw	v0,24(s8)
     2e4:	00000000 	sll	zero,zero,0x0
     2e8:	24420001 	addiu	v0,v0,1
     2ec:	afc20018 	sw	v0,24(s8)
     2f0:	8fc20018 	lw	v0,24(s8)
     2f4:	00000000 	sll	zero,zero,0x0
     2f8:	28420016 	slti	v0,v0,22
     2fc:	1440ffea 	bnez	v0,2a8 <encode+0x24c>
     300:	00000000 	sll	zero,zero,0x0
    *tqmf_ptr-- = *tqmf_ptr1--;
  *tqmf_ptr-- = xin1;
     304:	8fc20020 	lw	v0,32(s8)
     308:	8fc30040 	lw	v1,64(s8)
     30c:	00000000 	sll	zero,zero,0x0
     310:	ac430000 	sw	v1,0(v0)
     314:	8fc20020 	lw	v0,32(s8)
     318:	00000000 	sll	zero,zero,0x0
     31c:	2442fffc 	addiu	v0,v0,-4
     320:	afc20020 	sw	v0,32(s8)
  *tqmf_ptr = xin2;
     324:	8fc20020 	lw	v0,32(s8)
     328:	8fc30044 	lw	v1,68(s8)
     32c:	00000000 	sll	zero,zero,0x0
     330:	ac430000 	sw	v1,0(v0)

/* scale outputs */
  xl = (xa + xb) >> 15;
     334:	8fc30028 	lw	v1,40(s8)
     338:	8fc2002c 	lw	v0,44(s8)
     33c:	00000000 	sll	zero,zero,0x0
     340:	00621021 	addu	v0,v1,v0
     344:	000213c3 	sra	v0,v0,0xf
     348:	af820000 	sw	v0,0(gp)
  xh = (xa - xb) >> 15;
     34c:	8fc30028 	lw	v1,40(s8)
     350:	8fc2002c 	lw	v0,44(s8)
     354:	00000000 	sll	zero,zero,0x0
     358:	00621023 	subu	v0,v1,v0
     35c:	000213c3 	sra	v0,v0,0xf
     360:	af820000 	sw	v0,0(gp)
/* end of quadrature mirror filter code */

/* starting with lower sub band encoder */

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);
     364:	3c020000 	lui	v0,0x0
     368:	24440000 	addiu	a0,v0,0
     36c:	3c020000 	lui	v0,0x0
     370:	24450000 	addiu	a1,v0,0
     374:	0c000000 	jal	0 <abs>
     378:	00000000 	sll	zero,zero,0x0
     37c:	af820000 	sw	v0,0(gp)

/* filtep - compute predictor output signal (pole section) */
  spl = filtep (rlt1, al1, rlt2, al2);
     380:	8f840000 	lw	a0,0(gp)
     384:	8f850000 	lw	a1,0(gp)
     388:	8f830000 	lw	v1,0(gp)
     38c:	8f820000 	lw	v0,0(gp)
     390:	00603021 	addu	a2,v1,zero
     394:	00403821 	addu	a3,v0,zero
     398:	0c000000 	jal	0 <abs>
     39c:	00000000 	sll	zero,zero,0x0
     3a0:	af820000 	sw	v0,0(gp)

/* compute the predictor output value in the lower sub_band encoder */
  sl = szl + spl;
     3a4:	8f830000 	lw	v1,0(gp)
     3a8:	8f820000 	lw	v0,0(gp)
     3ac:	00000000 	sll	zero,zero,0x0
     3b0:	00621021 	addu	v0,v1,v0
     3b4:	af820000 	sw	v0,0(gp)
  el = xl - sl;
     3b8:	8f830000 	lw	v1,0(gp)
     3bc:	8f820000 	lw	v0,0(gp)
     3c0:	00000000 	sll	zero,zero,0x0
     3c4:	00621023 	subu	v0,v1,v0
     3c8:	af820000 	sw	v0,0(gp)

/* quantl: quantize the difference signal */
  il = quantl (el, detl);
     3cc:	8f830000 	lw	v1,0(gp)
     3d0:	8f820000 	lw	v0,0(gp)
     3d4:	00602021 	addu	a0,v1,zero
     3d8:	00402821 	addu	a1,v0,zero
     3dc:	0c000000 	jal	0 <abs>
     3e0:	00000000 	sll	zero,zero,0x0
     3e4:	af820000 	sw	v0,0(gp)

/* computes quantized difference signal */
/* for invqbl, truncate by 2 lsbs, so mode = 3 */
  dlt = ((long) detl * qq4_code4_table[il >> 2]) >> 15;
     3e8:	8f820000 	lw	v0,0(gp)
     3ec:	00000000 	sll	zero,zero,0x0
     3f0:	00021883 	sra	v1,v0,0x2
     3f4:	3c020000 	lui	v0,0x0
     3f8:	00031880 	sll	v1,v1,0x2
     3fc:	24420000 	addiu	v0,v0,0
     400:	00621021 	addu	v0,v1,v0
     404:	8c430000 	lw	v1,0(v0)
     408:	8f820000 	lw	v0,0(gp)
     40c:	00000000 	sll	zero,zero,0x0
     410:	00620018 	mult	v1,v0
     414:	00001012 	mflo	v0
     418:	000213c3 	sra	v0,v0,0xf
     41c:	af820000 	sw	v0,0(gp)

/* logscl: updates logarithmic quant. scale factor in low sub band */
  nbl = logscl (il, nbl);
     420:	8f830000 	lw	v1,0(gp)
     424:	8f820000 	lw	v0,0(gp)
     428:	00602021 	addu	a0,v1,zero
     42c:	00402821 	addu	a1,v0,zero
     430:	0c000000 	jal	0 <abs>
     434:	00000000 	sll	zero,zero,0x0
     438:	af820000 	sw	v0,0(gp)

/* scalel: compute the quantizer scale factor in the lower sub band */
/* calling parameters nbl and 8 (constant such that scalel can be scaleh) */
  detl = scalel (nbl, 8);
     43c:	8f820000 	lw	v0,0(gp)
     440:	00000000 	sll	zero,zero,0x0
     444:	00402021 	addu	a0,v0,zero
     448:	24050008 	addiu	a1,zero,8
     44c:	0c000000 	jal	0 <abs>
     450:	00000000 	sll	zero,zero,0x0
     454:	af820000 	sw	v0,0(gp)

/* parrec - simple addition to compute recontructed signal for adaptive pred */
  plt = dlt + szl;
     458:	8f830000 	lw	v1,0(gp)
     45c:	8f820000 	lw	v0,0(gp)
     460:	00000000 	sll	zero,zero,0x0
     464:	00621021 	addu	v0,v1,v0
     468:	af820000 	sw	v0,0(gp)

/* upzero: update zero section predictor coefficients (sixth order)*/
/* calling parameters: dlt, dlt1, dlt2, ..., dlt6 from dlt */
/*  bpli (linear_buffer in which all six values are delayed */
/* return params:      updated bpli, delayed dltx */
  upzero (dlt, delay_dltx, delay_bpl);
     46c:	8f820000 	lw	v0,0(gp)
     470:	00000000 	sll	zero,zero,0x0
     474:	00402021 	addu	a0,v0,zero
     478:	3c020000 	lui	v0,0x0
     47c:	24450000 	addiu	a1,v0,0
     480:	3c020000 	lui	v0,0x0
     484:	24460000 	addiu	a2,v0,0
     488:	0c000000 	jal	0 <abs>
     48c:	00000000 	sll	zero,zero,0x0

/* uppol2- update second predictor coefficient apl2 and delay it as al2 */
/* calling parameters: al1, al2, plt, plt1, plt2 */
  al2 = uppol2 (al1, al2, plt, plt1, plt2);
     490:	8f840000 	lw	a0,0(gp)
     494:	8f850000 	lw	a1,0(gp)
     498:	8f830000 	lw	v1,0(gp)
     49c:	8f820000 	lw	v0,0(gp)
     4a0:	8f860000 	lw	a2,0(gp)
     4a4:	00000000 	sll	zero,zero,0x0
     4a8:	afa60010 	sw	a2,16(sp)
     4ac:	00603021 	addu	a2,v1,zero
     4b0:	00403821 	addu	a3,v0,zero
     4b4:	0c000000 	jal	0 <abs>
     4b8:	00000000 	sll	zero,zero,0x0
     4bc:	af820000 	sw	v0,0(gp)

/* uppol1 :update first predictor coefficient apl1 and delay it as al1 */
/* calling parameters: al1, apl2, plt, plt1 */
  al1 = uppol1 (al1, al2, plt, plt1);
     4c0:	8f840000 	lw	a0,0(gp)
     4c4:	8f850000 	lw	a1,0(gp)
     4c8:	8f830000 	lw	v1,0(gp)
     4cc:	8f820000 	lw	v0,0(gp)
     4d0:	00603021 	addu	a2,v1,zero
     4d4:	00403821 	addu	a3,v0,zero
     4d8:	0c000000 	jal	0 <abs>
     4dc:	00000000 	sll	zero,zero,0x0
     4e0:	af820000 	sw	v0,0(gp)

/* recons : compute recontructed signal for adaptive predictor */
  rlt = sl + dlt;
     4e4:	8f830000 	lw	v1,0(gp)
     4e8:	8f820000 	lw	v0,0(gp)
     4ec:	00000000 	sll	zero,zero,0x0
     4f0:	00621021 	addu	v0,v1,v0
     4f4:	af820000 	sw	v0,0(gp)

/* done with lower sub_band encoder; now implement delays for next time*/
  rlt2 = rlt1;
     4f8:	8f820000 	lw	v0,0(gp)
     4fc:	00000000 	sll	zero,zero,0x0
     500:	af820000 	sw	v0,0(gp)
  rlt1 = rlt;
     504:	8f820000 	lw	v0,0(gp)
     508:	00000000 	sll	zero,zero,0x0
     50c:	af820000 	sw	v0,0(gp)
  plt2 = plt1;
     510:	8f820000 	lw	v0,0(gp)
     514:	00000000 	sll	zero,zero,0x0
     518:	af820000 	sw	v0,0(gp)
  plt1 = plt;
     51c:	8f820000 	lw	v0,0(gp)
     520:	00000000 	sll	zero,zero,0x0
     524:	af820000 	sw	v0,0(gp)

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);
     528:	3c020000 	lui	v0,0x0
     52c:	24440000 	addiu	a0,v0,0
     530:	3c020000 	lui	v0,0x0
     534:	24450000 	addiu	a1,v0,0
     538:	0c000000 	jal	0 <abs>
     53c:	00000000 	sll	zero,zero,0x0
     540:	af820000 	sw	v0,0(gp)

  sph = filtep (rh1, ah1, rh2, ah2);
     544:	8f840000 	lw	a0,0(gp)
     548:	8f850000 	lw	a1,0(gp)
     54c:	8f830000 	lw	v1,0(gp)
     550:	8f820000 	lw	v0,0(gp)
     554:	00603021 	addu	a2,v1,zero
     558:	00403821 	addu	a3,v0,zero
     55c:	0c000000 	jal	0 <abs>
     560:	00000000 	sll	zero,zero,0x0
     564:	af820000 	sw	v0,0(gp)

/* predic: sh = sph + szh */
  sh = sph + szh;
     568:	8f830000 	lw	v1,0(gp)
     56c:	8f820000 	lw	v0,0(gp)
     570:	00000000 	sll	zero,zero,0x0
     574:	00621021 	addu	v0,v1,v0
     578:	af820000 	sw	v0,0(gp)
/* subtra: eh = xh - sh */
  eh = xh - sh;
     57c:	8f830000 	lw	v1,0(gp)
     580:	8f820000 	lw	v0,0(gp)
     584:	00000000 	sll	zero,zero,0x0
     588:	00621023 	subu	v0,v1,v0
     58c:	af820000 	sw	v0,0(gp)

/* quanth - quantization of difference signal for higher sub-band */
/* quanth: in-place for speed params: eh, deth (has init. value) */
  if (eh >= 0)
     590:	8f820000 	lw	v0,0(gp)
     594:	00000000 	sll	zero,zero,0x0
     598:	04400005 	bltz	v0,5b0 <encode+0x554>
     59c:	00000000 	sll	zero,zero,0x0
    {
      ih = 3;			/* 2,3 are pos codes */
     5a0:	24020003 	addiu	v0,zero,3
     5a4:	af820000 	sw	v0,0(gp)
     5a8:	0800016e 	j	5b8 <encode+0x55c>
     5ac:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
     5b0:	24020001 	addiu	v0,zero,1
     5b4:	af820000 	sw	v0,0(gp)
    }
  decis = (564L * (long) deth) >> 12L;
     5b8:	8f840000 	lw	a0,0(gp)
     5bc:	00000000 	sll	zero,zero,0x0
     5c0:	00801821 	addu	v1,a0,zero
     5c4:	00031080 	sll	v0,v1,0x2
     5c8:	00401821 	addu	v1,v0,zero
     5cc:	00031080 	sll	v0,v1,0x2
     5d0:	00621821 	addu	v1,v1,v0
     5d4:	000310c0 	sll	v0,v1,0x3
     5d8:	00431023 	subu	v0,v0,v1
     5dc:	00441021 	addu	v0,v0,a0
     5e0:	00021080 	sll	v0,v0,0x2
     5e4:	00021303 	sra	v0,v0,0xc
     5e8:	afc20030 	sw	v0,48(s8)
  if (abs (eh) > decis)
     5ec:	8f820000 	lw	v0,0(gp)
     5f0:	00000000 	sll	zero,zero,0x0
     5f4:	04410002 	bgez	v0,600 <encode+0x5a4>
     5f8:	00000000 	sll	zero,zero,0x0
     5fc:	00021023 	negu	v0,v0
     600:	00401821 	addu	v1,v0,zero
     604:	8fc20030 	lw	v0,48(s8)
     608:	00000000 	sll	zero,zero,0x0
     60c:	0043102a 	slt	v0,v0,v1
     610:	10400005 	beqz	v0,628 <encode+0x5cc>
     614:	00000000 	sll	zero,zero,0x0
    ih--;			/* mih = 2 case */
     618:	8f820000 	lw	v0,0(gp)
     61c:	00000000 	sll	zero,zero,0x0
     620:	2442ffff 	addiu	v0,v0,-1
     624:	af820000 	sw	v0,0(gp)

/* compute the quantized difference signal, higher sub-band*/
  dh = ((long) deth * qq2_code2_table[ih]) >> 15L;
     628:	8f830000 	lw	v1,0(gp)
     62c:	3c020000 	lui	v0,0x0
     630:	00031880 	sll	v1,v1,0x2
     634:	24420000 	addiu	v0,v0,0
     638:	00621021 	addu	v0,v1,v0
     63c:	8c430000 	lw	v1,0(v0)
     640:	8f820000 	lw	v0,0(gp)
     644:	00000000 	sll	zero,zero,0x0
     648:	00620018 	mult	v1,v0
     64c:	00001012 	mflo	v0
     650:	000213c3 	sra	v0,v0,0xf
     654:	af820000 	sw	v0,0(gp)

/* logsch: update logarithmic quantizer scale factor in hi sub-band*/
  nbh = logsch (ih, nbh);
     658:	8f830000 	lw	v1,0(gp)
     65c:	8f820000 	lw	v0,0(gp)
     660:	00602021 	addu	a0,v1,zero
     664:	00402821 	addu	a1,v0,zero
     668:	0c000000 	jal	0 <abs>
     66c:	00000000 	sll	zero,zero,0x0
     670:	af820000 	sw	v0,0(gp)

/* note : scalel and scaleh use same code, different parameters */
  deth = scalel (nbh, 10);
     674:	8f820000 	lw	v0,0(gp)
     678:	00000000 	sll	zero,zero,0x0
     67c:	00402021 	addu	a0,v0,zero
     680:	2405000a 	addiu	a1,zero,10
     684:	0c000000 	jal	0 <abs>
     688:	00000000 	sll	zero,zero,0x0
     68c:	af820000 	sw	v0,0(gp)

/* parrec - add pole predictor output to quantized diff. signal */
  ph = dh + szh;
     690:	8f830000 	lw	v1,0(gp)
     694:	8f820000 	lw	v0,0(gp)
     698:	00000000 	sll	zero,zero,0x0
     69c:	00621021 	addu	v0,v1,v0
     6a0:	af820000 	sw	v0,0(gp)

/* upzero: update zero section predictor coefficients (sixth order) */
/* calling parameters: dh, dhi, bphi */
/* return params: updated bphi, delayed dhx */
  upzero (dh, delay_dhx, delay_bph);
     6a4:	8f820000 	lw	v0,0(gp)
     6a8:	00000000 	sll	zero,zero,0x0
     6ac:	00402021 	addu	a0,v0,zero
     6b0:	3c020000 	lui	v0,0x0
     6b4:	24450000 	addiu	a1,v0,0
     6b8:	3c020000 	lui	v0,0x0
     6bc:	24460000 	addiu	a2,v0,0
     6c0:	0c000000 	jal	0 <abs>
     6c4:	00000000 	sll	zero,zero,0x0

/* uppol2: update second predictor coef aph2 and delay as ah2 */
/* calling params: ah1, ah2, ph, ph1, ph2 */
  ah2 = uppol2 (ah1, ah2, ph, ph1, ph2);
     6c8:	8f840000 	lw	a0,0(gp)
     6cc:	8f850000 	lw	a1,0(gp)
     6d0:	8f830000 	lw	v1,0(gp)
     6d4:	8f820000 	lw	v0,0(gp)
     6d8:	8f860000 	lw	a2,0(gp)
     6dc:	00000000 	sll	zero,zero,0x0
     6e0:	afa60010 	sw	a2,16(sp)
     6e4:	00603021 	addu	a2,v1,zero
     6e8:	00403821 	addu	a3,v0,zero
     6ec:	0c000000 	jal	0 <abs>
     6f0:	00000000 	sll	zero,zero,0x0
     6f4:	af820000 	sw	v0,0(gp)

/* uppol1:  update first predictor coef. aph2 and delay it as ah1 */
  ah1 = uppol1 (ah1, ah2, ph, ph1);
     6f8:	8f840000 	lw	a0,0(gp)
     6fc:	8f850000 	lw	a1,0(gp)
     700:	8f830000 	lw	v1,0(gp)
     704:	8f820000 	lw	v0,0(gp)
     708:	00603021 	addu	a2,v1,zero
     70c:	00403821 	addu	a3,v0,zero
     710:	0c000000 	jal	0 <abs>
     714:	00000000 	sll	zero,zero,0x0
     718:	af820000 	sw	v0,0(gp)

/* recons for higher sub-band */
  yh = sh + dh;
     71c:	8f830000 	lw	v1,0(gp)
     720:	8f820000 	lw	v0,0(gp)
     724:	00000000 	sll	zero,zero,0x0
     728:	00621021 	addu	v0,v1,v0
     72c:	af820000 	sw	v0,0(gp)

/* done with higher sub-band encoder, now Delay for next time */
  rh2 = rh1;
     730:	8f820000 	lw	v0,0(gp)
     734:	00000000 	sll	zero,zero,0x0
     738:	af820000 	sw	v0,0(gp)
  rh1 = yh;
     73c:	8f820000 	lw	v0,0(gp)
     740:	00000000 	sll	zero,zero,0x0
     744:	af820000 	sw	v0,0(gp)
  ph2 = ph1;
     748:	8f820000 	lw	v0,0(gp)
     74c:	00000000 	sll	zero,zero,0x0
     750:	af820000 	sw	v0,0(gp)
  ph1 = ph;
     754:	8f820000 	lw	v0,0(gp)
     758:	00000000 	sll	zero,zero,0x0
     75c:	af820000 	sw	v0,0(gp)

/* multiplex ih and il to get signals together */
  return (il | (ih << 6));
     760:	8f820000 	lw	v0,0(gp)
     764:	00000000 	sll	zero,zero,0x0
     768:	00021980 	sll	v1,v0,0x6
     76c:	8f820000 	lw	v0,0(gp)
     770:	00000000 	sll	zero,zero,0x0
     774:	00621025 	or	v0,v1,v0
}
     778:	03c0e821 	addu	sp,s8,zero
     77c:	8fbf003c 	lw	ra,60(sp)
     780:	8fbe0038 	lw	s8,56(sp)
     784:	27bd0040 	addiu	sp,sp,64
     788:	03e00008 	jr	ra
     78c:	00000000 	sll	zero,zero,0x0

00000790 <decode>:

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
     790:	27bdffc0 	addiu	sp,sp,-64
     794:	afbf003c 	sw	ra,60(sp)
     798:	afbe0038 	sw	s8,56(sp)
     79c:	03a0f021 	addu	s8,sp,zero
     7a0:	afc40040 	sw	a0,64(s8)
  long int xa1, xa2;		/* qmf accumulators */
  const int *h_ptr;
  int *ac_ptr, *ac_ptr1, *ad_ptr, *ad_ptr1;

/* split transmitted word from input into ilr and ih */
  ilr = input & 0x3f;
     7a4:	8fc20040 	lw	v0,64(s8)
     7a8:	00000000 	sll	zero,zero,0x0
     7ac:	3042003f 	andi	v0,v0,0x3f
     7b0:	af820000 	sw	v0,0(gp)
  ih = input >> 6;
     7b4:	8fc20040 	lw	v0,64(s8)
     7b8:	00000000 	sll	zero,zero,0x0
     7bc:	00021183 	sra	v0,v0,0x6
     7c0:	af820000 	sw	v0,0(gp)

/* LOWER SUB_BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);
     7c4:	3c020000 	lui	v0,0x0
     7c8:	24440000 	addiu	a0,v0,0
     7cc:	3c020000 	lui	v0,0x0
     7d0:	24450000 	addiu	a1,v0,0
     7d4:	0c000000 	jal	0 <abs>
     7d8:	00000000 	sll	zero,zero,0x0
     7dc:	af820000 	sw	v0,0(gp)

/* filtep: compute predictor output signal for pole section */
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);
     7e0:	8f840000 	lw	a0,0(gp)
     7e4:	8f850000 	lw	a1,0(gp)
     7e8:	8f830000 	lw	v1,0(gp)
     7ec:	8f820000 	lw	v0,0(gp)
     7f0:	00603021 	addu	a2,v1,zero
     7f4:	00403821 	addu	a3,v0,zero
     7f8:	0c000000 	jal	0 <abs>
     7fc:	00000000 	sll	zero,zero,0x0
     800:	af820000 	sw	v0,0(gp)

  dec_sl = dec_spl + dec_szl;
     804:	8f830000 	lw	v1,0(gp)
     808:	8f820000 	lw	v0,0(gp)
     80c:	00000000 	sll	zero,zero,0x0
     810:	00621021 	addu	v0,v1,v0
     814:	af820000 	sw	v0,0(gp)

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
     818:	8f820000 	lw	v0,0(gp)
     81c:	00000000 	sll	zero,zero,0x0
     820:	00021883 	sra	v1,v0,0x2
     824:	3c020000 	lui	v0,0x0
     828:	00031880 	sll	v1,v1,0x2
     82c:	24420000 	addiu	v0,v0,0
     830:	00621021 	addu	v0,v1,v0
     834:	8c430000 	lw	v1,0(v0)
     838:	8f820000 	lw	v0,0(gp)
     83c:	00000000 	sll	zero,zero,0x0
     840:	00620018 	mult	v1,v0
     844:	00001012 	mflo	v0
     848:	000213c3 	sra	v0,v0,0xf
     84c:	af820000 	sw	v0,0(gp)

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     850:	8f830000 	lw	v1,0(gp)
     854:	3c020000 	lui	v0,0x0
     858:	00031880 	sll	v1,v1,0x2
     85c:	24420000 	addiu	v0,v0,0
     860:	00621021 	addu	v0,v1,v0
     864:	8c430000 	lw	v1,0(v0)
     868:	8f820000 	lw	v0,0(gp)
     86c:	00000000 	sll	zero,zero,0x0
     870:	00620018 	mult	v1,v0
     874:	00001012 	mflo	v0
     878:	000213c3 	sra	v0,v0,0xf
     87c:	af820000 	sw	v0,0(gp)

  rl = dl + dec_sl;
     880:	8f830000 	lw	v1,0(gp)
     884:	8f820000 	lw	v0,0(gp)
     888:	00000000 	sll	zero,zero,0x0
     88c:	00621021 	addu	v0,v1,v0
     890:	af820000 	sw	v0,0(gp)

/* logscl: quantizer scale factor adaptation in the lower sub-band */
  dec_nbl = logscl (ilr, dec_nbl);
     894:	8f830000 	lw	v1,0(gp)
     898:	8f820000 	lw	v0,0(gp)
     89c:	00602021 	addu	a0,v1,zero
     8a0:	00402821 	addu	a1,v0,zero
     8a4:	0c000000 	jal	0 <abs>
     8a8:	00000000 	sll	zero,zero,0x0
     8ac:	af820000 	sw	v0,0(gp)

/* scalel: computes quantizer scale factor in the lower sub band */
  dec_detl = scalel (dec_nbl, 8);
     8b0:	8f820000 	lw	v0,0(gp)
     8b4:	00000000 	sll	zero,zero,0x0
     8b8:	00402021 	addu	a0,v0,zero
     8bc:	24050008 	addiu	a1,zero,8
     8c0:	0c000000 	jal	0 <abs>
     8c4:	00000000 	sll	zero,zero,0x0
     8c8:	af820000 	sw	v0,0(gp)

/* parrec - add pole predictor output to quantized diff. signal */
/* for partially reconstructed signal */
  dec_plt = dec_dlt + dec_szl;
     8cc:	8f830000 	lw	v1,0(gp)
     8d0:	8f820000 	lw	v0,0(gp)
     8d4:	00000000 	sll	zero,zero,0x0
     8d8:	00621021 	addu	v0,v1,v0
     8dc:	af820000 	sw	v0,0(gp)

/* upzero: update zero section predictor coefficients */
  upzero (dec_dlt, dec_del_dltx, dec_del_bpl);
     8e0:	8f820000 	lw	v0,0(gp)
     8e4:	00000000 	sll	zero,zero,0x0
     8e8:	00402021 	addu	a0,v0,zero
     8ec:	3c020000 	lui	v0,0x0
     8f0:	24450000 	addiu	a1,v0,0
     8f4:	3c020000 	lui	v0,0x0
     8f8:	24460000 	addiu	a2,v0,0
     8fc:	0c000000 	jal	0 <abs>
     900:	00000000 	sll	zero,zero,0x0

/* uppol2: update second predictor coefficient apl2 and delay it as al2 */
  dec_al2 = uppol2 (dec_al1, dec_al2, dec_plt, dec_plt1, dec_plt2);
     904:	8f840000 	lw	a0,0(gp)
     908:	8f850000 	lw	a1,0(gp)
     90c:	8f830000 	lw	v1,0(gp)
     910:	8f820000 	lw	v0,0(gp)
     914:	8f860000 	lw	a2,0(gp)
     918:	00000000 	sll	zero,zero,0x0
     91c:	afa60010 	sw	a2,16(sp)
     920:	00603021 	addu	a2,v1,zero
     924:	00403821 	addu	a3,v0,zero
     928:	0c000000 	jal	0 <abs>
     92c:	00000000 	sll	zero,zero,0x0
     930:	af820000 	sw	v0,0(gp)

/* uppol1: update first predictor coef. (pole setion) */
  dec_al1 = uppol1 (dec_al1, dec_al2, dec_plt, dec_plt1);
     934:	8f840000 	lw	a0,0(gp)
     938:	8f850000 	lw	a1,0(gp)
     93c:	8f830000 	lw	v1,0(gp)
     940:	8f820000 	lw	v0,0(gp)
     944:	00603021 	addu	a2,v1,zero
     948:	00403821 	addu	a3,v0,zero
     94c:	0c000000 	jal	0 <abs>
     950:	00000000 	sll	zero,zero,0x0
     954:	af820000 	sw	v0,0(gp)

/* recons : compute recontructed signal for adaptive predictor */
  dec_rlt = dec_sl + dec_dlt;
     958:	8f830000 	lw	v1,0(gp)
     95c:	8f820000 	lw	v0,0(gp)
     960:	00000000 	sll	zero,zero,0x0
     964:	00621021 	addu	v0,v1,v0
     968:	af820000 	sw	v0,0(gp)

/* done with lower sub band decoder, implement delays for next time */
  dec_rlt2 = dec_rlt1;
     96c:	8f820000 	lw	v0,0(gp)
     970:	00000000 	sll	zero,zero,0x0
     974:	af820000 	sw	v0,0(gp)
  dec_rlt1 = dec_rlt;
     978:	8f820000 	lw	v0,0(gp)
     97c:	00000000 	sll	zero,zero,0x0
     980:	af820000 	sw	v0,0(gp)
  dec_plt2 = dec_plt1;
     984:	8f820000 	lw	v0,0(gp)
     988:	00000000 	sll	zero,zero,0x0
     98c:	af820000 	sw	v0,0(gp)
  dec_plt1 = dec_plt;
     990:	8f820000 	lw	v0,0(gp)
     994:	00000000 	sll	zero,zero,0x0
     998:	af820000 	sw	v0,0(gp)

/* HIGH SUB-BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);
     99c:	3c020000 	lui	v0,0x0
     9a0:	24440000 	addiu	a0,v0,0
     9a4:	3c020000 	lui	v0,0x0
     9a8:	24450000 	addiu	a1,v0,0
     9ac:	0c000000 	jal	0 <abs>
     9b0:	00000000 	sll	zero,zero,0x0
     9b4:	af820000 	sw	v0,0(gp)

/* filtep: compute predictor output signal for pole section */
  dec_sph = filtep (dec_rh1, dec_ah1, dec_rh2, dec_ah2);
     9b8:	8f840000 	lw	a0,0(gp)
     9bc:	8f850000 	lw	a1,0(gp)
     9c0:	8f830000 	lw	v1,0(gp)
     9c4:	8f820000 	lw	v0,0(gp)
     9c8:	00603021 	addu	a2,v1,zero
     9cc:	00403821 	addu	a3,v0,zero
     9d0:	0c000000 	jal	0 <abs>
     9d4:	00000000 	sll	zero,zero,0x0
     9d8:	af820000 	sw	v0,0(gp)

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;
     9dc:	8f830000 	lw	v1,0(gp)
     9e0:	8f820000 	lw	v0,0(gp)
     9e4:	00000000 	sll	zero,zero,0x0
     9e8:	00621021 	addu	v0,v1,v0
     9ec:	af820000 	sw	v0,0(gp)

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
     9f0:	8f830000 	lw	v1,0(gp)
     9f4:	3c020000 	lui	v0,0x0
     9f8:	00031880 	sll	v1,v1,0x2
     9fc:	24420000 	addiu	v0,v0,0
     a00:	00621021 	addu	v0,v1,v0
     a04:	8c430000 	lw	v1,0(v0)
     a08:	8f820000 	lw	v0,0(gp)
     a0c:	00000000 	sll	zero,zero,0x0
     a10:	00620018 	mult	v1,v0
     a14:	00001012 	mflo	v0
     a18:	000213c3 	sra	v0,v0,0xf
     a1c:	af820000 	sw	v0,0(gp)

/* logsch: update logarithmic quantizer scale factor in hi sub band */
  dec_nbh = logsch (ih, dec_nbh);
     a20:	8f830000 	lw	v1,0(gp)
     a24:	8f820000 	lw	v0,0(gp)
     a28:	00602021 	addu	a0,v1,zero
     a2c:	00402821 	addu	a1,v0,zero
     a30:	0c000000 	jal	0 <abs>
     a34:	00000000 	sll	zero,zero,0x0
     a38:	af820000 	sw	v0,0(gp)

/* scalel: compute the quantizer scale factor in the higher sub band */
  dec_deth = scalel (dec_nbh, 10);
     a3c:	8f820000 	lw	v0,0(gp)
     a40:	00000000 	sll	zero,zero,0x0
     a44:	00402021 	addu	a0,v0,zero
     a48:	2405000a 	addiu	a1,zero,10
     a4c:	0c000000 	jal	0 <abs>
     a50:	00000000 	sll	zero,zero,0x0
     a54:	af820000 	sw	v0,0(gp)

/* parrec: compute partially recontructed signal */
  dec_ph = dec_dh + dec_szh;
     a58:	8f830000 	lw	v1,0(gp)
     a5c:	8f820000 	lw	v0,0(gp)
     a60:	00000000 	sll	zero,zero,0x0
     a64:	00621021 	addu	v0,v1,v0
     a68:	af820000 	sw	v0,0(gp)

/* upzero: update zero section predictor coefficients */
  upzero (dec_dh, dec_del_dhx, dec_del_bph);
     a6c:	8f820000 	lw	v0,0(gp)
     a70:	00000000 	sll	zero,zero,0x0
     a74:	00402021 	addu	a0,v0,zero
     a78:	3c020000 	lui	v0,0x0
     a7c:	24450000 	addiu	a1,v0,0
     a80:	3c020000 	lui	v0,0x0
     a84:	24460000 	addiu	a2,v0,0
     a88:	0c000000 	jal	0 <abs>
     a8c:	00000000 	sll	zero,zero,0x0

/* uppol2: update second predictor coefficient aph2 and delay it as ah2 */
  dec_ah2 = uppol2 (dec_ah1, dec_ah2, dec_ph, dec_ph1, dec_ph2);
     a90:	8f840000 	lw	a0,0(gp)
     a94:	8f850000 	lw	a1,0(gp)
     a98:	8f830000 	lw	v1,0(gp)
     a9c:	8f820000 	lw	v0,0(gp)
     aa0:	8f860000 	lw	a2,0(gp)
     aa4:	00000000 	sll	zero,zero,0x0
     aa8:	afa60010 	sw	a2,16(sp)
     aac:	00603021 	addu	a2,v1,zero
     ab0:	00403821 	addu	a3,v0,zero
     ab4:	0c000000 	jal	0 <abs>
     ab8:	00000000 	sll	zero,zero,0x0
     abc:	af820000 	sw	v0,0(gp)

/* uppol1: update first predictor coef. (pole setion) */
  dec_ah1 = uppol1 (dec_ah1, dec_ah2, dec_ph, dec_ph1);
     ac0:	8f840000 	lw	a0,0(gp)
     ac4:	8f850000 	lw	a1,0(gp)
     ac8:	8f830000 	lw	v1,0(gp)
     acc:	8f820000 	lw	v0,0(gp)
     ad0:	00603021 	addu	a2,v1,zero
     ad4:	00403821 	addu	a3,v0,zero
     ad8:	0c000000 	jal	0 <abs>
     adc:	00000000 	sll	zero,zero,0x0
     ae0:	af820000 	sw	v0,0(gp)

/* recons : compute recontructed signal for adaptive predictor */
  rh = dec_sh + dec_dh;
     ae4:	8f830000 	lw	v1,0(gp)
     ae8:	8f820000 	lw	v0,0(gp)
     aec:	00000000 	sll	zero,zero,0x0
     af0:	00621021 	addu	v0,v1,v0
     af4:	af820000 	sw	v0,0(gp)

/* done with high band decode, implementing delays for next time here */
  dec_rh2 = dec_rh1;
     af8:	8f820000 	lw	v0,0(gp)
     afc:	00000000 	sll	zero,zero,0x0
     b00:	af820000 	sw	v0,0(gp)
  dec_rh1 = rh;
     b04:	8f820000 	lw	v0,0(gp)
     b08:	00000000 	sll	zero,zero,0x0
     b0c:	af820000 	sw	v0,0(gp)
  dec_ph2 = dec_ph1;
     b10:	8f820000 	lw	v0,0(gp)
     b14:	00000000 	sll	zero,zero,0x0
     b18:	af820000 	sw	v0,0(gp)
  dec_ph1 = dec_ph;
     b1c:	8f820000 	lw	v0,0(gp)
     b20:	00000000 	sll	zero,zero,0x0
     b24:	af820000 	sw	v0,0(gp)

/* end of higher sub_band decoder */

/* end with receive quadrature mirror filters */
  xd = rl - rh;
     b28:	8f830000 	lw	v1,0(gp)
     b2c:	8f820000 	lw	v0,0(gp)
     b30:	00000000 	sll	zero,zero,0x0
     b34:	00621023 	subu	v0,v1,v0
     b38:	af820000 	sw	v0,0(gp)
  xs = rl + rh;
     b3c:	8f830000 	lw	v1,0(gp)
     b40:	8f820000 	lw	v0,0(gp)
     b44:	00000000 	sll	zero,zero,0x0
     b48:	00621021 	addu	v0,v1,v0
     b4c:	af820000 	sw	v0,0(gp)

/* receive quadrature mirror filters implemented here */
  h_ptr = h;
     b50:	3c020000 	lui	v0,0x0
     b54:	24420000 	addiu	v0,v0,0
     b58:	afc20024 	sw	v0,36(s8)
  ac_ptr = accumc;
     b5c:	3c020000 	lui	v0,0x0
     b60:	24420000 	addiu	v0,v0,0
     b64:	afc20028 	sw	v0,40(s8)
  ad_ptr = accumd;
     b68:	3c020000 	lui	v0,0x0
     b6c:	24420000 	addiu	v0,v0,0
     b70:	afc20030 	sw	v0,48(s8)
  xa1 = (long) xd *(*h_ptr++);
     b74:	8fc20024 	lw	v0,36(s8)
     b78:	00000000 	sll	zero,zero,0x0
     b7c:	8c430000 	lw	v1,0(v0)
     b80:	8f820000 	lw	v0,0(gp)
     b84:	00000000 	sll	zero,zero,0x0
     b88:	00620018 	mult	v1,v0
     b8c:	00001012 	mflo	v0
     b90:	afc2001c 	sw	v0,28(s8)
     b94:	8fc20024 	lw	v0,36(s8)
     b98:	00000000 	sll	zero,zero,0x0
     b9c:	24420004 	addiu	v0,v0,4
     ba0:	afc20024 	sw	v0,36(s8)
  xa2 = (long) xs *(*h_ptr++);
     ba4:	8fc20024 	lw	v0,36(s8)
     ba8:	00000000 	sll	zero,zero,0x0
     bac:	8c430000 	lw	v1,0(v0)
     bb0:	8f820000 	lw	v0,0(gp)
     bb4:	00000000 	sll	zero,zero,0x0
     bb8:	00620018 	mult	v1,v0
     bbc:	00001012 	mflo	v0
     bc0:	afc20020 	sw	v0,32(s8)
     bc4:	8fc20024 	lw	v0,36(s8)
     bc8:	00000000 	sll	zero,zero,0x0
     bcc:	24420004 	addiu	v0,v0,4
     bd0:	afc20024 	sw	v0,36(s8)
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
     bd4:	afc00018 	sw	zero,24(s8)
     bd8:	08000326 	j	c98 <decode+0x508>
     bdc:	00000000 	sll	zero,zero,0x0
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
     be0:	8fc20028 	lw	v0,40(s8)
     be4:	00000000 	sll	zero,zero,0x0
     be8:	8c430000 	lw	v1,0(v0)
     bec:	8fc20024 	lw	v0,36(s8)
     bf0:	00000000 	sll	zero,zero,0x0
     bf4:	8c420000 	lw	v0,0(v0)
     bf8:	00000000 	sll	zero,zero,0x0
     bfc:	00620018 	mult	v1,v0
     c00:	00001812 	mflo	v1
     c04:	8fc2001c 	lw	v0,28(s8)
     c08:	00000000 	sll	zero,zero,0x0
     c0c:	00431021 	addu	v0,v0,v1
     c10:	afc2001c 	sw	v0,28(s8)
     c14:	8fc20028 	lw	v0,40(s8)
     c18:	00000000 	sll	zero,zero,0x0
     c1c:	24420004 	addiu	v0,v0,4
     c20:	afc20028 	sw	v0,40(s8)
     c24:	8fc20024 	lw	v0,36(s8)
     c28:	00000000 	sll	zero,zero,0x0
     c2c:	24420004 	addiu	v0,v0,4
     c30:	afc20024 	sw	v0,36(s8)
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
     c34:	8fc20030 	lw	v0,48(s8)
     c38:	00000000 	sll	zero,zero,0x0
     c3c:	8c430000 	lw	v1,0(v0)
     c40:	8fc20024 	lw	v0,36(s8)
     c44:	00000000 	sll	zero,zero,0x0
     c48:	8c420000 	lw	v0,0(v0)
     c4c:	00000000 	sll	zero,zero,0x0
     c50:	00620018 	mult	v1,v0
     c54:	00001812 	mflo	v1
     c58:	8fc20020 	lw	v0,32(s8)
     c5c:	00000000 	sll	zero,zero,0x0
     c60:	00431021 	addu	v0,v0,v1
     c64:	afc20020 	sw	v0,32(s8)
     c68:	8fc20030 	lw	v0,48(s8)
     c6c:	00000000 	sll	zero,zero,0x0
     c70:	24420004 	addiu	v0,v0,4
     c74:	afc20030 	sw	v0,48(s8)
     c78:	8fc20024 	lw	v0,36(s8)
     c7c:	00000000 	sll	zero,zero,0x0
     c80:	24420004 	addiu	v0,v0,4
     c84:	afc20024 	sw	v0,36(s8)
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
     c88:	8fc20018 	lw	v0,24(s8)
     c8c:	00000000 	sll	zero,zero,0x0
     c90:	24420001 	addiu	v0,v0,1
     c94:	afc20018 	sw	v0,24(s8)
     c98:	8fc20018 	lw	v0,24(s8)
     c9c:	00000000 	sll	zero,zero,0x0
     ca0:	2842000a 	slti	v0,v0,10
     ca4:	1440ffce 	bnez	v0,be0 <decode+0x450>
     ca8:	00000000 	sll	zero,zero,0x0
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
     cac:	8fc20028 	lw	v0,40(s8)
     cb0:	00000000 	sll	zero,zero,0x0
     cb4:	8c430000 	lw	v1,0(v0)
     cb8:	8fc20024 	lw	v0,36(s8)
     cbc:	00000000 	sll	zero,zero,0x0
     cc0:	8c420000 	lw	v0,0(v0)
     cc4:	00000000 	sll	zero,zero,0x0
     cc8:	00620018 	mult	v1,v0
     ccc:	00001812 	mflo	v1
     cd0:	8fc2001c 	lw	v0,28(s8)
     cd4:	00000000 	sll	zero,zero,0x0
     cd8:	00431021 	addu	v0,v0,v1
     cdc:	afc2001c 	sw	v0,28(s8)
     ce0:	8fc20024 	lw	v0,36(s8)
     ce4:	00000000 	sll	zero,zero,0x0
     ce8:	24420004 	addiu	v0,v0,4
     cec:	afc20024 	sw	v0,36(s8)
  xa2 += (long) (*ad_ptr) * (*h_ptr++);
     cf0:	8fc20030 	lw	v0,48(s8)
     cf4:	00000000 	sll	zero,zero,0x0
     cf8:	8c430000 	lw	v1,0(v0)
     cfc:	8fc20024 	lw	v0,36(s8)
     d00:	00000000 	sll	zero,zero,0x0
     d04:	8c420000 	lw	v0,0(v0)
     d08:	00000000 	sll	zero,zero,0x0
     d0c:	00620018 	mult	v1,v0
     d10:	00001812 	mflo	v1
     d14:	8fc20020 	lw	v0,32(s8)
     d18:	00000000 	sll	zero,zero,0x0
     d1c:	00431021 	addu	v0,v0,v1
     d20:	afc20020 	sw	v0,32(s8)
     d24:	8fc20024 	lw	v0,36(s8)
     d28:	00000000 	sll	zero,zero,0x0
     d2c:	24420004 	addiu	v0,v0,4
     d30:	afc20024 	sw	v0,36(s8)

/* scale by 2^14 */
  xout1 = xa1 >> 14;
     d34:	8fc2001c 	lw	v0,28(s8)
     d38:	00000000 	sll	zero,zero,0x0
     d3c:	00021383 	sra	v0,v0,0xe
     d40:	af820000 	sw	v0,0(gp)
  xout2 = xa2 >> 14;
     d44:	8fc20020 	lw	v0,32(s8)
     d48:	00000000 	sll	zero,zero,0x0
     d4c:	00021383 	sra	v0,v0,0xe
     d50:	af820000 	sw	v0,0(gp)

/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
     d54:	8fc20028 	lw	v0,40(s8)
     d58:	00000000 	sll	zero,zero,0x0
     d5c:	2442fffc 	addiu	v0,v0,-4
     d60:	afc2002c 	sw	v0,44(s8)
  ad_ptr1 = ad_ptr - 1;
     d64:	8fc20030 	lw	v0,48(s8)
     d68:	00000000 	sll	zero,zero,0x0
     d6c:	2442fffc 	addiu	v0,v0,-4
     d70:	afc20034 	sw	v0,52(s8)
  for (i = 0; i < 10; i++)
     d74:	afc00018 	sw	zero,24(s8)
     d78:	08000380 	j	e00 <decode+0x670>
     d7c:	00000000 	sll	zero,zero,0x0
    {
      *ac_ptr-- = *ac_ptr1--;
     d80:	8fc2002c 	lw	v0,44(s8)
     d84:	00000000 	sll	zero,zero,0x0
     d88:	8c430000 	lw	v1,0(v0)
     d8c:	8fc20028 	lw	v0,40(s8)
     d90:	00000000 	sll	zero,zero,0x0
     d94:	ac430000 	sw	v1,0(v0)
     d98:	8fc20028 	lw	v0,40(s8)
     d9c:	00000000 	sll	zero,zero,0x0
     da0:	2442fffc 	addiu	v0,v0,-4
     da4:	afc20028 	sw	v0,40(s8)
     da8:	8fc2002c 	lw	v0,44(s8)
     dac:	00000000 	sll	zero,zero,0x0
     db0:	2442fffc 	addiu	v0,v0,-4
     db4:	afc2002c 	sw	v0,44(s8)
      *ad_ptr-- = *ad_ptr1--;
     db8:	8fc20034 	lw	v0,52(s8)
     dbc:	00000000 	sll	zero,zero,0x0
     dc0:	8c430000 	lw	v1,0(v0)
     dc4:	8fc20030 	lw	v0,48(s8)
     dc8:	00000000 	sll	zero,zero,0x0
     dcc:	ac430000 	sw	v1,0(v0)
     dd0:	8fc20030 	lw	v0,48(s8)
     dd4:	00000000 	sll	zero,zero,0x0
     dd8:	2442fffc 	addiu	v0,v0,-4
     ddc:	afc20030 	sw	v0,48(s8)
     de0:	8fc20034 	lw	v0,52(s8)
     de4:	00000000 	sll	zero,zero,0x0
     de8:	2442fffc 	addiu	v0,v0,-4
     dec:	afc20034 	sw	v0,52(s8)
  xout2 = xa2 >> 14;

/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
     df0:	8fc20018 	lw	v0,24(s8)
     df4:	00000000 	sll	zero,zero,0x0
     df8:	24420001 	addiu	v0,v0,1
     dfc:	afc20018 	sw	v0,24(s8)
     e00:	8fc20018 	lw	v0,24(s8)
     e04:	00000000 	sll	zero,zero,0x0
     e08:	2842000a 	slti	v0,v0,10
     e0c:	1440ffdc 	bnez	v0,d80 <decode+0x5f0>
     e10:	00000000 	sll	zero,zero,0x0
    {
      *ac_ptr-- = *ac_ptr1--;
      *ad_ptr-- = *ad_ptr1--;
    }
  *ac_ptr = xd;
     e14:	8f830000 	lw	v1,0(gp)
     e18:	8fc20028 	lw	v0,40(s8)
     e1c:	00000000 	sll	zero,zero,0x0
     e20:	ac430000 	sw	v1,0(v0)
  *ad_ptr = xs;
     e24:	8f830000 	lw	v1,0(gp)
     e28:	8fc20030 	lw	v0,48(s8)
     e2c:	00000000 	sll	zero,zero,0x0
     e30:	ac430000 	sw	v1,0(v0)
}
     e34:	03c0e821 	addu	sp,s8,zero
     e38:	8fbf003c 	lw	ra,60(sp)
     e3c:	8fbe0038 	lw	s8,56(sp)
     e40:	27bd0040 	addiu	sp,sp,64
     e44:	03e00008 	jr	ra
     e48:	00000000 	sll	zero,zero,0x0

00000e4c <reset>:

/* clear all storage locations */

void
reset ()
{
     e4c:	27bdfff0 	addiu	sp,sp,-16
     e50:	afbe000c 	sw	s8,12(sp)
     e54:	03a0f021 	addu	s8,sp,zero
  int i;

  detl = dec_detl = 32;		/* reset to min scale factor */
     e58:	24020020 	addiu	v0,zero,32
     e5c:	af820000 	sw	v0,0(gp)
     e60:	8f820000 	lw	v0,0(gp)
     e64:	00000000 	sll	zero,zero,0x0
     e68:	af820000 	sw	v0,0(gp)
  deth = dec_deth = 8;
     e6c:	24020008 	addiu	v0,zero,8
     e70:	af820000 	sw	v0,0(gp)
     e74:	8f820000 	lw	v0,0(gp)
     e78:	00000000 	sll	zero,zero,0x0
     e7c:	af820000 	sw	v0,0(gp)
  nbl = al1 = al2 = plt1 = plt2 = rlt1 = rlt2 = 0;
     e80:	af800000 	sw	zero,0(gp)
     e84:	8f820000 	lw	v0,0(gp)
     e88:	00000000 	sll	zero,zero,0x0
     e8c:	af820000 	sw	v0,0(gp)
     e90:	8f820000 	lw	v0,0(gp)
     e94:	00000000 	sll	zero,zero,0x0
     e98:	af820000 	sw	v0,0(gp)
     e9c:	8f820000 	lw	v0,0(gp)
     ea0:	00000000 	sll	zero,zero,0x0
     ea4:	af820000 	sw	v0,0(gp)
     ea8:	8f820000 	lw	v0,0(gp)
     eac:	00000000 	sll	zero,zero,0x0
     eb0:	af820000 	sw	v0,0(gp)
     eb4:	8f820000 	lw	v0,0(gp)
     eb8:	00000000 	sll	zero,zero,0x0
     ebc:	af820000 	sw	v0,0(gp)
     ec0:	8f820000 	lw	v0,0(gp)
     ec4:	00000000 	sll	zero,zero,0x0
     ec8:	af820000 	sw	v0,0(gp)
  nbh = ah1 = ah2 = ph1 = ph2 = rh1 = rh2 = 0;
     ecc:	af800000 	sw	zero,0(gp)
     ed0:	8f820000 	lw	v0,0(gp)
     ed4:	00000000 	sll	zero,zero,0x0
     ed8:	af820000 	sw	v0,0(gp)
     edc:	8f820000 	lw	v0,0(gp)
     ee0:	00000000 	sll	zero,zero,0x0
     ee4:	af820000 	sw	v0,0(gp)
     ee8:	8f820000 	lw	v0,0(gp)
     eec:	00000000 	sll	zero,zero,0x0
     ef0:	af820000 	sw	v0,0(gp)
     ef4:	8f820000 	lw	v0,0(gp)
     ef8:	00000000 	sll	zero,zero,0x0
     efc:	af820000 	sw	v0,0(gp)
     f00:	8f820000 	lw	v0,0(gp)
     f04:	00000000 	sll	zero,zero,0x0
     f08:	af820000 	sw	v0,0(gp)
     f0c:	8f820000 	lw	v0,0(gp)
     f10:	00000000 	sll	zero,zero,0x0
     f14:	af820000 	sw	v0,0(gp)
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
     f18:	af800000 	sw	zero,0(gp)
     f1c:	8f820000 	lw	v0,0(gp)
     f20:	00000000 	sll	zero,zero,0x0
     f24:	af820000 	sw	v0,0(gp)
     f28:	8f820000 	lw	v0,0(gp)
     f2c:	00000000 	sll	zero,zero,0x0
     f30:	af820000 	sw	v0,0(gp)
     f34:	8f820000 	lw	v0,0(gp)
     f38:	00000000 	sll	zero,zero,0x0
     f3c:	af820000 	sw	v0,0(gp)
     f40:	8f820000 	lw	v0,0(gp)
     f44:	00000000 	sll	zero,zero,0x0
     f48:	af820000 	sw	v0,0(gp)
     f4c:	8f820000 	lw	v0,0(gp)
     f50:	00000000 	sll	zero,zero,0x0
     f54:	af820000 	sw	v0,0(gp)
     f58:	8f820000 	lw	v0,0(gp)
     f5c:	00000000 	sll	zero,zero,0x0
     f60:	af820000 	sw	v0,0(gp)
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;
     f64:	af800000 	sw	zero,0(gp)
     f68:	8f820000 	lw	v0,0(gp)
     f6c:	00000000 	sll	zero,zero,0x0
     f70:	af820000 	sw	v0,0(gp)
     f74:	8f820000 	lw	v0,0(gp)
     f78:	00000000 	sll	zero,zero,0x0
     f7c:	af820000 	sw	v0,0(gp)
     f80:	8f820000 	lw	v0,0(gp)
     f84:	00000000 	sll	zero,zero,0x0
     f88:	af820000 	sw	v0,0(gp)
     f8c:	8f820000 	lw	v0,0(gp)
     f90:	00000000 	sll	zero,zero,0x0
     f94:	af820000 	sw	v0,0(gp)
     f98:	8f820000 	lw	v0,0(gp)
     f9c:	00000000 	sll	zero,zero,0x0
     fa0:	af820000 	sw	v0,0(gp)
     fa4:	8f820000 	lw	v0,0(gp)
     fa8:	00000000 	sll	zero,zero,0x0
     fac:	af820000 	sw	v0,0(gp)

  for (i = 0; i < 6; i++)
     fb0:	afc00000 	sw	zero,0(s8)
     fb4:	0800040f 	j	103c <reset+0x1f0>
     fb8:	00000000 	sll	zero,zero,0x0
    {
      delay_dltx[i] = 0;
     fbc:	3c020000 	lui	v0,0x0
     fc0:	8fc30000 	lw	v1,0(s8)
     fc4:	00000000 	sll	zero,zero,0x0
     fc8:	00031880 	sll	v1,v1,0x2
     fcc:	24420000 	addiu	v0,v0,0
     fd0:	00621021 	addu	v0,v1,v0
     fd4:	ac400000 	sw	zero,0(v0)
      delay_dhx[i] = 0;
     fd8:	3c020000 	lui	v0,0x0
     fdc:	8fc30000 	lw	v1,0(s8)
     fe0:	00000000 	sll	zero,zero,0x0
     fe4:	00031880 	sll	v1,v1,0x2
     fe8:	24420000 	addiu	v0,v0,0
     fec:	00621021 	addu	v0,v1,v0
     ff0:	ac400000 	sw	zero,0(v0)
      dec_del_dltx[i] = 0;
     ff4:	3c020000 	lui	v0,0x0
     ff8:	8fc30000 	lw	v1,0(s8)
     ffc:	00000000 	sll	zero,zero,0x0
    1000:	00031880 	sll	v1,v1,0x2
    1004:	24420000 	addiu	v0,v0,0
    1008:	00621021 	addu	v0,v1,v0
    100c:	ac400000 	sw	zero,0(v0)
      dec_del_dhx[i] = 0;
    1010:	3c020000 	lui	v0,0x0
    1014:	8fc30000 	lw	v1,0(s8)
    1018:	00000000 	sll	zero,zero,0x0
    101c:	00031880 	sll	v1,v1,0x2
    1020:	24420000 	addiu	v0,v0,0
    1024:	00621021 	addu	v0,v1,v0
    1028:	ac400000 	sw	zero,0(v0)
  nbl = al1 = al2 = plt1 = plt2 = rlt1 = rlt2 = 0;
  nbh = ah1 = ah2 = ph1 = ph2 = rh1 = rh2 = 0;
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
    102c:	8fc20000 	lw	v0,0(s8)
    1030:	00000000 	sll	zero,zero,0x0
    1034:	24420001 	addiu	v0,v0,1
    1038:	afc20000 	sw	v0,0(s8)
    103c:	8fc20000 	lw	v0,0(s8)
    1040:	00000000 	sll	zero,zero,0x0
    1044:	28420006 	slti	v0,v0,6
    1048:	1440ffdc 	bnez	v0,fbc <reset+0x170>
    104c:	00000000 	sll	zero,zero,0x0
      delay_dhx[i] = 0;
      dec_del_dltx[i] = 0;
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
    1050:	afc00000 	sw	zero,0(s8)
    1054:	08000437 	j	10dc <reset+0x290>
    1058:	00000000 	sll	zero,zero,0x0
    {
      delay_bpl[i] = 0;
    105c:	3c020000 	lui	v0,0x0
    1060:	8fc30000 	lw	v1,0(s8)
    1064:	00000000 	sll	zero,zero,0x0
    1068:	00031880 	sll	v1,v1,0x2
    106c:	24420000 	addiu	v0,v0,0
    1070:	00621021 	addu	v0,v1,v0
    1074:	ac400000 	sw	zero,0(v0)
      delay_bph[i] = 0;
    1078:	3c020000 	lui	v0,0x0
    107c:	8fc30000 	lw	v1,0(s8)
    1080:	00000000 	sll	zero,zero,0x0
    1084:	00031880 	sll	v1,v1,0x2
    1088:	24420000 	addiu	v0,v0,0
    108c:	00621021 	addu	v0,v1,v0
    1090:	ac400000 	sw	zero,0(v0)
      dec_del_bpl[i] = 0;
    1094:	3c020000 	lui	v0,0x0
    1098:	8fc30000 	lw	v1,0(s8)
    109c:	00000000 	sll	zero,zero,0x0
    10a0:	00031880 	sll	v1,v1,0x2
    10a4:	24420000 	addiu	v0,v0,0
    10a8:	00621021 	addu	v0,v1,v0
    10ac:	ac400000 	sw	zero,0(v0)
      dec_del_bph[i] = 0;
    10b0:	3c020000 	lui	v0,0x0
    10b4:	8fc30000 	lw	v1,0(s8)
    10b8:	00000000 	sll	zero,zero,0x0
    10bc:	00031880 	sll	v1,v1,0x2
    10c0:	24420000 	addiu	v0,v0,0
    10c4:	00621021 	addu	v0,v1,v0
    10c8:	ac400000 	sw	zero,0(v0)
      delay_dhx[i] = 0;
      dec_del_dltx[i] = 0;
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
    10cc:	8fc20000 	lw	v0,0(s8)
    10d0:	00000000 	sll	zero,zero,0x0
    10d4:	24420001 	addiu	v0,v0,1
    10d8:	afc20000 	sw	v0,0(s8)
    10dc:	8fc20000 	lw	v0,0(s8)
    10e0:	00000000 	sll	zero,zero,0x0
    10e4:	28420006 	slti	v0,v0,6
    10e8:	1440ffdc 	bnez	v0,105c <reset+0x210>
    10ec:	00000000 	sll	zero,zero,0x0
      delay_bph[i] = 0;
      dec_del_bpl[i] = 0;
      dec_del_bph[i] = 0;
    }

  for (i = 0; i < 24; i++)
    10f0:	afc00000 	sw	zero,0(s8)
    10f4:	0800044a 	j	1128 <reset+0x2dc>
    10f8:	00000000 	sll	zero,zero,0x0
    tqmf[i] = 0;		// i<23
    10fc:	3c020000 	lui	v0,0x0
    1100:	8fc30000 	lw	v1,0(s8)
    1104:	00000000 	sll	zero,zero,0x0
    1108:	00031880 	sll	v1,v1,0x2
    110c:	24420000 	addiu	v0,v0,0
    1110:	00621021 	addu	v0,v1,v0
    1114:	ac400000 	sw	zero,0(v0)
      delay_bph[i] = 0;
      dec_del_bpl[i] = 0;
      dec_del_bph[i] = 0;
    }

  for (i = 0; i < 24; i++)
    1118:	8fc20000 	lw	v0,0(s8)
    111c:	00000000 	sll	zero,zero,0x0
    1120:	24420001 	addiu	v0,v0,1
    1124:	afc20000 	sw	v0,0(s8)
    1128:	8fc20000 	lw	v0,0(s8)
    112c:	00000000 	sll	zero,zero,0x0
    1130:	28420018 	slti	v0,v0,24
    1134:	1440fff1 	bnez	v0,10fc <reset+0x2b0>
    1138:	00000000 	sll	zero,zero,0x0
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    113c:	afc00000 	sw	zero,0(s8)
    1140:	08000464 	j	1190 <reset+0x344>
    1144:	00000000 	sll	zero,zero,0x0
    {
      accumc[i] = 0;
    1148:	3c020000 	lui	v0,0x0
    114c:	8fc30000 	lw	v1,0(s8)
    1150:	00000000 	sll	zero,zero,0x0
    1154:	00031880 	sll	v1,v1,0x2
    1158:	24420000 	addiu	v0,v0,0
    115c:	00621021 	addu	v0,v1,v0
    1160:	ac400000 	sw	zero,0(v0)
      accumd[i] = 0;
    1164:	3c020000 	lui	v0,0x0
    1168:	8fc30000 	lw	v1,0(s8)
    116c:	00000000 	sll	zero,zero,0x0
    1170:	00031880 	sll	v1,v1,0x2
    1174:	24420000 	addiu	v0,v0,0
    1178:	00621021 	addu	v0,v1,v0
    117c:	ac400000 	sw	zero,0(v0)
    }

  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    1180:	8fc20000 	lw	v0,0(s8)
    1184:	00000000 	sll	zero,zero,0x0
    1188:	24420001 	addiu	v0,v0,1
    118c:	afc20000 	sw	v0,0(s8)
    1190:	8fc20000 	lw	v0,0(s8)
    1194:	00000000 	sll	zero,zero,0x0
    1198:	2842000b 	slti	v0,v0,11
    119c:	1440ffea 	bnez	v0,1148 <reset+0x2fc>
    11a0:	00000000 	sll	zero,zero,0x0
    {
      accumc[i] = 0;
      accumd[i] = 0;
    }
}
    11a4:	03c0e821 	addu	sp,s8,zero
    11a8:	8fbe000c 	lw	s8,12(sp)
    11ac:	27bd0010 	addiu	sp,sp,16
    11b0:	03e00008 	jr	ra
    11b4:	00000000 	sll	zero,zero,0x0

000011b8 <filtez>:
/* filtez - compute predictor output signal (zero section) */
/* input: bpl1-6 and dlt1-6, output: szl */

int
filtez (int *bpl, int *dlt)
{
    11b8:	27bdfff0 	addiu	sp,sp,-16
    11bc:	afbe000c 	sw	s8,12(sp)
    11c0:	03a0f021 	addu	s8,sp,zero
    11c4:	afc40010 	sw	a0,16(s8)
    11c8:	afc50014 	sw	a1,20(s8)
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
    11cc:	8fc20010 	lw	v0,16(s8)
    11d0:	00000000 	sll	zero,zero,0x0
    11d4:	8c430000 	lw	v1,0(v0)
    11d8:	8fc20014 	lw	v0,20(s8)
    11dc:	00000000 	sll	zero,zero,0x0
    11e0:	8c420000 	lw	v0,0(v0)
    11e4:	00000000 	sll	zero,zero,0x0
    11e8:	00620018 	mult	v1,v0
    11ec:	00001012 	mflo	v0
    11f0:	afc20004 	sw	v0,4(s8)
    11f4:	8fc20010 	lw	v0,16(s8)
    11f8:	00000000 	sll	zero,zero,0x0
    11fc:	24420004 	addiu	v0,v0,4
    1200:	afc20010 	sw	v0,16(s8)
    1204:	8fc20014 	lw	v0,20(s8)
    1208:	00000000 	sll	zero,zero,0x0
    120c:	24420004 	addiu	v0,v0,4
    1210:	afc20014 	sw	v0,20(s8)
  for (i = 1; i < 6; i++)
    1214:	24020001 	addiu	v0,zero,1
    1218:	afc20000 	sw	v0,0(s8)
    121c:	080004a2 	j	1288 <filtez+0xd0>
    1220:	00000000 	sll	zero,zero,0x0
    zl += (long) (*bpl++) * (*dlt++);
    1224:	8fc20010 	lw	v0,16(s8)
    1228:	00000000 	sll	zero,zero,0x0
    122c:	8c430000 	lw	v1,0(v0)
    1230:	8fc20014 	lw	v0,20(s8)
    1234:	00000000 	sll	zero,zero,0x0
    1238:	8c420000 	lw	v0,0(v0)
    123c:	00000000 	sll	zero,zero,0x0
    1240:	00620018 	mult	v1,v0
    1244:	00001812 	mflo	v1
    1248:	8fc20004 	lw	v0,4(s8)
    124c:	00000000 	sll	zero,zero,0x0
    1250:	00431021 	addu	v0,v0,v1
    1254:	afc20004 	sw	v0,4(s8)
    1258:	8fc20010 	lw	v0,16(s8)
    125c:	00000000 	sll	zero,zero,0x0
    1260:	24420004 	addiu	v0,v0,4
    1264:	afc20010 	sw	v0,16(s8)
    1268:	8fc20014 	lw	v0,20(s8)
    126c:	00000000 	sll	zero,zero,0x0
    1270:	24420004 	addiu	v0,v0,4
    1274:	afc20014 	sw	v0,20(s8)
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    1278:	8fc20000 	lw	v0,0(s8)
    127c:	00000000 	sll	zero,zero,0x0
    1280:	24420001 	addiu	v0,v0,1
    1284:	afc20000 	sw	v0,0(s8)
    1288:	8fc20000 	lw	v0,0(s8)
    128c:	00000000 	sll	zero,zero,0x0
    1290:	28420006 	slti	v0,v0,6
    1294:	1440ffe3 	bnez	v0,1224 <filtez+0x6c>
    1298:	00000000 	sll	zero,zero,0x0
    zl += (long) (*bpl++) * (*dlt++);

  return ((int) (zl >> 14));	/* x2 here */
    129c:	8fc20004 	lw	v0,4(s8)
    12a0:	00000000 	sll	zero,zero,0x0
    12a4:	00021383 	sra	v0,v0,0xe
}
    12a8:	03c0e821 	addu	sp,s8,zero
    12ac:	8fbe000c 	lw	s8,12(sp)
    12b0:	27bd0010 	addiu	sp,sp,16
    12b4:	03e00008 	jr	ra
    12b8:	00000000 	sll	zero,zero,0x0

000012bc <filtep>:
/* filtep - compute predictor output signal (pole section) */
/* input rlt1-2 and al1-2, output spl */

int
filtep (int rlt1, int al1, int rlt2, int al2)
{
    12bc:	27bdfff0 	addiu	sp,sp,-16
    12c0:	afbe000c 	sw	s8,12(sp)
    12c4:	03a0f021 	addu	s8,sp,zero
    12c8:	afc40010 	sw	a0,16(s8)
    12cc:	afc50014 	sw	a1,20(s8)
    12d0:	afc60018 	sw	a2,24(s8)
    12d4:	afc7001c 	sw	a3,28(s8)
  long int pl, pl2;
  pl = 2 * rlt1;
    12d8:	8fc20010 	lw	v0,16(s8)
    12dc:	00000000 	sll	zero,zero,0x0
    12e0:	00021040 	sll	v0,v0,0x1
    12e4:	afc20000 	sw	v0,0(s8)
  pl = (long) al1 *pl;
    12e8:	8fc30000 	lw	v1,0(s8)
    12ec:	8fc20014 	lw	v0,20(s8)
    12f0:	00000000 	sll	zero,zero,0x0
    12f4:	00620018 	mult	v1,v0
    12f8:	00001012 	mflo	v0
    12fc:	afc20000 	sw	v0,0(s8)
  pl2 = 2 * rlt2;
    1300:	8fc20018 	lw	v0,24(s8)
    1304:	00000000 	sll	zero,zero,0x0
    1308:	00021040 	sll	v0,v0,0x1
    130c:	afc20004 	sw	v0,4(s8)
  pl += (long) al2 *pl2;
    1310:	8fc3001c 	lw	v1,28(s8)
    1314:	8fc20004 	lw	v0,4(s8)
    1318:	00000000 	sll	zero,zero,0x0
    131c:	00620018 	mult	v1,v0
    1320:	00001812 	mflo	v1
    1324:	8fc20000 	lw	v0,0(s8)
    1328:	00000000 	sll	zero,zero,0x0
    132c:	00431021 	addu	v0,v0,v1
    1330:	afc20000 	sw	v0,0(s8)
  return ((int) (pl >> 15));
    1334:	8fc20000 	lw	v0,0(s8)
    1338:	00000000 	sll	zero,zero,0x0
    133c:	000213c3 	sra	v0,v0,0xf
}
    1340:	03c0e821 	addu	sp,s8,zero
    1344:	8fbe000c 	lw	s8,12(sp)
    1348:	27bd0010 	addiu	sp,sp,16
    134c:	03e00008 	jr	ra
    1350:	00000000 	sll	zero,zero,0x0

00001354 <quantl>:

/* quantl - quantize the difference signal in the lower sub-band */
int
quantl (int el, int detl)
{
    1354:	27bdffe8 	addiu	sp,sp,-24
    1358:	afbe0014 	sw	s8,20(sp)
    135c:	03a0f021 	addu	s8,sp,zero
    1360:	afc40018 	sw	a0,24(s8)
    1364:	afc5001c 	sw	a1,28(s8)
  int ril, mil;
  long int wd, decis;

/* abs of difference signal */
  wd = abs (el);
    1368:	8fc20018 	lw	v0,24(s8)
    136c:	00000000 	sll	zero,zero,0x0
    1370:	04410002 	bgez	v0,137c <quantl+0x28>
    1374:	00000000 	sll	zero,zero,0x0
    1378:	00021023 	negu	v0,v0
    137c:	afc20008 	sw	v0,8(s8)
/* determine mil based on decision levels and detl gain */
  for (mil = 0; mil < 30; mil++)
    1380:	afc00004 	sw	zero,4(s8)
    1384:	080004fa 	j	13e8 <quantl+0x94>
    1388:	00000000 	sll	zero,zero,0x0
    {
      decis = (decis_levl[mil] * (long) detl) >> 15L;
    138c:	3c020000 	lui	v0,0x0
    1390:	8fc30004 	lw	v1,4(s8)
    1394:	00000000 	sll	zero,zero,0x0
    1398:	00031880 	sll	v1,v1,0x2
    139c:	24420000 	addiu	v0,v0,0
    13a0:	00621021 	addu	v0,v1,v0
    13a4:	8c430000 	lw	v1,0(v0)
    13a8:	8fc2001c 	lw	v0,28(s8)
    13ac:	00000000 	sll	zero,zero,0x0
    13b0:	00620018 	mult	v1,v0
    13b4:	00001012 	mflo	v0
    13b8:	000213c3 	sra	v0,v0,0xf
    13bc:	afc2000c 	sw	v0,12(s8)
      if (wd <= decis)
    13c0:	8fc30008 	lw	v1,8(s8)
    13c4:	8fc2000c 	lw	v0,12(s8)
    13c8:	00000000 	sll	zero,zero,0x0
    13cc:	0043102a 	slt	v0,v0,v1
    13d0:	1040000c 	beqz	v0,1404 <quantl+0xb0>
    13d4:	00000000 	sll	zero,zero,0x0
  long int wd, decis;

/* abs of difference signal */
  wd = abs (el);
/* determine mil based on decision levels and detl gain */
  for (mil = 0; mil < 30; mil++)
    13d8:	8fc20004 	lw	v0,4(s8)
    13dc:	00000000 	sll	zero,zero,0x0
    13e0:	24420001 	addiu	v0,v0,1
    13e4:	afc20004 	sw	v0,4(s8)
    13e8:	8fc20004 	lw	v0,4(s8)
    13ec:	00000000 	sll	zero,zero,0x0
    13f0:	2842001e 	slti	v0,v0,30
    13f4:	1440ffe5 	bnez	v0,138c <quantl+0x38>
    13f8:	00000000 	sll	zero,zero,0x0
    13fc:	08000502 	j	1408 <quantl+0xb4>
    1400:	00000000 	sll	zero,zero,0x0
    {
      decis = (decis_levl[mil] * (long) detl) >> 15L;
      if (wd <= decis)
	break;
    1404:	00000000 	sll	zero,zero,0x0
    }
/* if mil=30 then wd is less than all decision levels */
  if (el >= 0)
    1408:	8fc20018 	lw	v0,24(s8)
    140c:	00000000 	sll	zero,zero,0x0
    1410:	0440000c 	bltz	v0,1444 <quantl+0xf0>
    1414:	00000000 	sll	zero,zero,0x0
    ril = quant26bt_pos[mil];
    1418:	3c020000 	lui	v0,0x0
    141c:	8fc30004 	lw	v1,4(s8)
    1420:	00000000 	sll	zero,zero,0x0
    1424:	00031880 	sll	v1,v1,0x2
    1428:	24420000 	addiu	v0,v0,0
    142c:	00621021 	addu	v0,v1,v0
    1430:	8c420000 	lw	v0,0(v0)
    1434:	00000000 	sll	zero,zero,0x0
    1438:	afc20000 	sw	v0,0(s8)
    143c:	0800051a 	j	1468 <quantl+0x114>
    1440:	00000000 	sll	zero,zero,0x0
  else
    ril = quant26bt_neg[mil];
    1444:	3c020000 	lui	v0,0x0
    1448:	8fc30004 	lw	v1,4(s8)
    144c:	00000000 	sll	zero,zero,0x0
    1450:	00031880 	sll	v1,v1,0x2
    1454:	24420000 	addiu	v0,v0,0
    1458:	00621021 	addu	v0,v1,v0
    145c:	8c420000 	lw	v0,0(v0)
    1460:	00000000 	sll	zero,zero,0x0
    1464:	afc20000 	sw	v0,0(s8)
  return (ril);
    1468:	8fc20000 	lw	v0,0(s8)
}
    146c:	03c0e821 	addu	sp,s8,zero
    1470:	8fbe0014 	lw	s8,20(sp)
    1474:	27bd0018 	addiu	sp,sp,24
    1478:	03e00008 	jr	ra
    147c:	00000000 	sll	zero,zero,0x0

00001480 <logscl>:
/* logscl - update log quantizer scale factor in lower sub-band */
/* note that nbl is passed and returned */

int
logscl (int il, int nbl)
{
    1480:	27bdfff0 	addiu	sp,sp,-16
    1484:	afbe000c 	sw	s8,12(sp)
    1488:	03a0f021 	addu	s8,sp,zero
    148c:	afc40010 	sw	a0,16(s8)
    1490:	afc50014 	sw	a1,20(s8)
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
    1494:	8fc30014 	lw	v1,20(s8)
    1498:	00000000 	sll	zero,zero,0x0
    149c:	00601021 	addu	v0,v1,zero
    14a0:	000211c0 	sll	v0,v0,0x7
    14a4:	00431023 	subu	v0,v0,v1
    14a8:	000211c3 	sra	v0,v0,0x7
    14ac:	afc20000 	sw	v0,0(s8)
  nbl = (int) wd + wl_code_table[il >> 2];
    14b0:	8fc20010 	lw	v0,16(s8)
    14b4:	00000000 	sll	zero,zero,0x0
    14b8:	00021883 	sra	v1,v0,0x2
    14bc:	3c020000 	lui	v0,0x0
    14c0:	00031880 	sll	v1,v1,0x2
    14c4:	24420000 	addiu	v0,v0,0
    14c8:	00621021 	addu	v0,v1,v0
    14cc:	8c430000 	lw	v1,0(v0)
    14d0:	8fc20000 	lw	v0,0(s8)
    14d4:	00000000 	sll	zero,zero,0x0
    14d8:	00621021 	addu	v0,v1,v0
    14dc:	afc20014 	sw	v0,20(s8)
  if (nbl < 0)
    14e0:	8fc20014 	lw	v0,20(s8)
    14e4:	00000000 	sll	zero,zero,0x0
    14e8:	04410002 	bgez	v0,14f4 <logscl+0x74>
    14ec:	00000000 	sll	zero,zero,0x0
    nbl = 0;
    14f0:	afc00014 	sw	zero,20(s8)
  if (nbl > 18432)
    14f4:	8fc20014 	lw	v0,20(s8)
    14f8:	00000000 	sll	zero,zero,0x0
    14fc:	28424801 	slti	v0,v0,18433
    1500:	14400003 	bnez	v0,1510 <logscl+0x90>
    1504:	00000000 	sll	zero,zero,0x0
    nbl = 18432;
    1508:	24024800 	addiu	v0,zero,18432
    150c:	afc20014 	sw	v0,20(s8)
  return (nbl);
    1510:	8fc20014 	lw	v0,20(s8)
}
    1514:	03c0e821 	addu	sp,s8,zero
    1518:	8fbe000c 	lw	s8,12(sp)
    151c:	27bd0010 	addiu	sp,sp,16
    1520:	03e00008 	jr	ra
    1524:	00000000 	sll	zero,zero,0x0

00001528 <scalel>:

/* scalel: compute quantizer scale factor in lower or upper sub-band*/

int
scalel (int nbl, int shift_constant)
{
    1528:	27bdffe8 	addiu	sp,sp,-24
    152c:	afbe0014 	sw	s8,20(sp)
    1530:	03a0f021 	addu	s8,sp,zero
    1534:	afc40018 	sw	a0,24(s8)
    1538:	afc5001c 	sw	a1,28(s8)
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
    153c:	8fc20018 	lw	v0,24(s8)
    1540:	00000000 	sll	zero,zero,0x0
    1544:	00021183 	sra	v0,v0,0x6
    1548:	3042001f 	andi	v0,v0,0x1f
    154c:	afc20000 	sw	v0,0(s8)
  wd2 = nbl >> 11;
    1550:	8fc20018 	lw	v0,24(s8)
    1554:	00000000 	sll	zero,zero,0x0
    1558:	000212c3 	sra	v0,v0,0xb
    155c:	afc20004 	sw	v0,4(s8)
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
    1560:	3c020000 	lui	v0,0x0
    1564:	8fc30000 	lw	v1,0(s8)
    1568:	00000000 	sll	zero,zero,0x0
    156c:	00031880 	sll	v1,v1,0x2
    1570:	24420000 	addiu	v0,v0,0
    1574:	00621021 	addu	v0,v1,v0
    1578:	8c430000 	lw	v1,0(v0)
    157c:	8fc2001c 	lw	v0,28(s8)
    1580:	00000000 	sll	zero,zero,0x0
    1584:	24440001 	addiu	a0,v0,1
    1588:	8fc20004 	lw	v0,4(s8)
    158c:	00000000 	sll	zero,zero,0x0
    1590:	00821023 	subu	v0,a0,v0
    1594:	00431007 	srav	v0,v1,v0
    1598:	afc20008 	sw	v0,8(s8)
  return (wd3 << 3);
    159c:	8fc20008 	lw	v0,8(s8)
    15a0:	00000000 	sll	zero,zero,0x0
    15a4:	000210c0 	sll	v0,v0,0x3
}
    15a8:	03c0e821 	addu	sp,s8,zero
    15ac:	8fbe0014 	lw	s8,20(sp)
    15b0:	27bd0018 	addiu	sp,sp,24
    15b4:	03e00008 	jr	ra
    15b8:	00000000 	sll	zero,zero,0x0

000015bc <upzero>:
/* upzero - inputs: dlt, dlti[0-5], bli[0-5], outputs: updated bli[0-5] */
/* also implements delay of bli and update of dlti from dlt */

void
upzero (int dlt, int *dlti, int *bli)
{
    15bc:	27bdffe8 	addiu	sp,sp,-24
    15c0:	afbe0014 	sw	s8,20(sp)
    15c4:	03a0f021 	addu	s8,sp,zero
    15c8:	afc40018 	sw	a0,24(s8)
    15cc:	afc5001c 	sw	a1,28(s8)
    15d0:	afc60020 	sw	a2,32(s8)
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
    15d4:	8fc20018 	lw	v0,24(s8)
    15d8:	00000000 	sll	zero,zero,0x0
    15dc:	14400022 	bnez	v0,1668 <upzero+0xac>
    15e0:	00000000 	sll	zero,zero,0x0
    {
      for (i = 0; i < 6; i++)
    15e4:	afc00000 	sw	zero,0(s8)
    15e8:	08000593 	j	164c <upzero+0x90>
    15ec:	00000000 	sll	zero,zero,0x0
	{
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    15f0:	8fc20000 	lw	v0,0(s8)
    15f4:	00000000 	sll	zero,zero,0x0
    15f8:	00021080 	sll	v0,v0,0x2
    15fc:	8fc30020 	lw	v1,32(s8)
    1600:	00000000 	sll	zero,zero,0x0
    1604:	00622021 	addu	a0,v1,v0
    1608:	8fc20000 	lw	v0,0(s8)
    160c:	00000000 	sll	zero,zero,0x0
    1610:	00021080 	sll	v0,v0,0x2
    1614:	8fc30020 	lw	v1,32(s8)
    1618:	00000000 	sll	zero,zero,0x0
    161c:	00621021 	addu	v0,v1,v0
    1620:	8c430000 	lw	v1,0(v0)
    1624:	00000000 	sll	zero,zero,0x0
    1628:	00601021 	addu	v0,v1,zero
    162c:	00021200 	sll	v0,v0,0x8
    1630:	00431023 	subu	v0,v0,v1
    1634:	00021203 	sra	v0,v0,0x8
    1638:	ac820000 	sw	v0,0(a0)
{
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
    {
      for (i = 0; i < 6; i++)
    163c:	8fc20000 	lw	v0,0(s8)
    1640:	00000000 	sll	zero,zero,0x0
    1644:	24420001 	addiu	v0,v0,1
    1648:	afc20000 	sw	v0,0(s8)
    164c:	8fc20000 	lw	v0,0(s8)
    1650:	00000000 	sll	zero,zero,0x0
    1654:	28420006 	slti	v0,v0,6
    1658:	1440ffe5 	bnez	v0,15f0 <upzero+0x34>
    165c:	00000000 	sll	zero,zero,0x0
    1660:	080005d1 	j	1744 <upzero+0x188>
    1664:	00000000 	sll	zero,zero,0x0
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	}
    }
  else
    {
      for (i = 0; i < 6; i++)
    1668:	afc00000 	sw	zero,0(s8)
    166c:	080005cc 	j	1730 <upzero+0x174>
    1670:	00000000 	sll	zero,zero,0x0
	{
	  if ((long) dlt * dlti[i] >= 0)
    1674:	8fc20000 	lw	v0,0(s8)
    1678:	00000000 	sll	zero,zero,0x0
    167c:	00021080 	sll	v0,v0,0x2
    1680:	8fc3001c 	lw	v1,28(s8)
    1684:	00000000 	sll	zero,zero,0x0
    1688:	00621021 	addu	v0,v1,v0
    168c:	8c430000 	lw	v1,0(v0)
    1690:	8fc20018 	lw	v0,24(s8)
    1694:	00000000 	sll	zero,zero,0x0
    1698:	00620018 	mult	v1,v0
    169c:	00001012 	mflo	v0
    16a0:	04400005 	bltz	v0,16b8 <upzero+0xfc>
    16a4:	00000000 	sll	zero,zero,0x0
	    wd2 = 128;
    16a8:	24020080 	addiu	v0,zero,128
    16ac:	afc20004 	sw	v0,4(s8)
    16b0:	080005b0 	j	16c0 <upzero+0x104>
    16b4:	00000000 	sll	zero,zero,0x0
	  else
	    wd2 = -128;
    16b8:	2402ff80 	addiu	v0,zero,-128
    16bc:	afc20004 	sw	v0,4(s8)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    16c0:	8fc20000 	lw	v0,0(s8)
    16c4:	00000000 	sll	zero,zero,0x0
    16c8:	00021080 	sll	v0,v0,0x2
    16cc:	8fc30020 	lw	v1,32(s8)
    16d0:	00000000 	sll	zero,zero,0x0
    16d4:	00621021 	addu	v0,v1,v0
    16d8:	8c430000 	lw	v1,0(v0)
    16dc:	00000000 	sll	zero,zero,0x0
    16e0:	00601021 	addu	v0,v1,zero
    16e4:	00021200 	sll	v0,v0,0x8
    16e8:	00431023 	subu	v0,v0,v1
    16ec:	00021203 	sra	v0,v0,0x8
    16f0:	afc20008 	sw	v0,8(s8)
	  bli[i] = wd2 + wd3;
    16f4:	8fc20000 	lw	v0,0(s8)
    16f8:	00000000 	sll	zero,zero,0x0
    16fc:	00021080 	sll	v0,v0,0x2
    1700:	8fc30020 	lw	v1,32(s8)
    1704:	00000000 	sll	zero,zero,0x0
    1708:	00621021 	addu	v0,v1,v0
    170c:	8fc40004 	lw	a0,4(s8)
    1710:	8fc30008 	lw	v1,8(s8)
    1714:	00000000 	sll	zero,zero,0x0
    1718:	00831821 	addu	v1,a0,v1
    171c:	ac430000 	sw	v1,0(v0)
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	}
    }
  else
    {
      for (i = 0; i < 6; i++)
    1720:	8fc20000 	lw	v0,0(s8)
    1724:	00000000 	sll	zero,zero,0x0
    1728:	24420001 	addiu	v0,v0,1
    172c:	afc20000 	sw	v0,0(s8)
    1730:	8fc20000 	lw	v0,0(s8)
    1734:	00000000 	sll	zero,zero,0x0
    1738:	28420006 	slti	v0,v0,6
    173c:	1440ffcd 	bnez	v0,1674 <upzero+0xb8>
    1740:	00000000 	sll	zero,zero,0x0
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
    1744:	8fc2001c 	lw	v0,28(s8)
    1748:	00000000 	sll	zero,zero,0x0
    174c:	24420014 	addiu	v0,v0,20
    1750:	8fc3001c 	lw	v1,28(s8)
    1754:	00000000 	sll	zero,zero,0x0
    1758:	24630010 	addiu	v1,v1,16
    175c:	8c630000 	lw	v1,0(v1)
    1760:	00000000 	sll	zero,zero,0x0
    1764:	ac430000 	sw	v1,0(v0)
  dlti[4] = dlti[3];
    1768:	8fc2001c 	lw	v0,28(s8)
    176c:	00000000 	sll	zero,zero,0x0
    1770:	24420010 	addiu	v0,v0,16
    1774:	8fc3001c 	lw	v1,28(s8)
    1778:	00000000 	sll	zero,zero,0x0
    177c:	2463000c 	addiu	v1,v1,12
    1780:	8c630000 	lw	v1,0(v1)
    1784:	00000000 	sll	zero,zero,0x0
    1788:	ac430000 	sw	v1,0(v0)
  dlti[3] = dlti[2];
    178c:	8fc2001c 	lw	v0,28(s8)
    1790:	00000000 	sll	zero,zero,0x0
    1794:	2442000c 	addiu	v0,v0,12
    1798:	8fc3001c 	lw	v1,28(s8)
    179c:	00000000 	sll	zero,zero,0x0
    17a0:	24630008 	addiu	v1,v1,8
    17a4:	8c630000 	lw	v1,0(v1)
    17a8:	00000000 	sll	zero,zero,0x0
    17ac:	ac430000 	sw	v1,0(v0)
  dlti[1] = dlti[0];
    17b0:	8fc2001c 	lw	v0,28(s8)
    17b4:	00000000 	sll	zero,zero,0x0
    17b8:	24420004 	addiu	v0,v0,4
    17bc:	8fc3001c 	lw	v1,28(s8)
    17c0:	00000000 	sll	zero,zero,0x0
    17c4:	8c630000 	lw	v1,0(v1)
    17c8:	00000000 	sll	zero,zero,0x0
    17cc:	ac430000 	sw	v1,0(v0)
  dlti[0] = dlt;
    17d0:	8fc2001c 	lw	v0,28(s8)
    17d4:	8fc30018 	lw	v1,24(s8)
    17d8:	00000000 	sll	zero,zero,0x0
    17dc:	ac430000 	sw	v1,0(v0)
}
    17e0:	03c0e821 	addu	sp,s8,zero
    17e4:	8fbe0014 	lw	s8,20(sp)
    17e8:	27bd0018 	addiu	sp,sp,24
    17ec:	03e00008 	jr	ra
    17f0:	00000000 	sll	zero,zero,0x0

000017f4 <uppol2>:
/* uppol2 - update second predictor coefficient (pole section) */
/* inputs: al1, al2, plt, plt1, plt2. outputs: apl2 */

int
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
    17f4:	27bdffe8 	addiu	sp,sp,-24
    17f8:	afbe0014 	sw	s8,20(sp)
    17fc:	03a0f021 	addu	s8,sp,zero
    1800:	afc40018 	sw	a0,24(s8)
    1804:	afc5001c 	sw	a1,28(s8)
    1808:	afc60020 	sw	a2,32(s8)
    180c:	afc70024 	sw	a3,36(s8)
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
    1810:	8fc20018 	lw	v0,24(s8)
    1814:	00000000 	sll	zero,zero,0x0
    1818:	00021080 	sll	v0,v0,0x2
    181c:	afc20000 	sw	v0,0(s8)
  if ((long) plt * plt1 >= 0L)
    1820:	8fc30020 	lw	v1,32(s8)
    1824:	8fc20024 	lw	v0,36(s8)
    1828:	00000000 	sll	zero,zero,0x0
    182c:	00620018 	mult	v1,v0
    1830:	00001012 	mflo	v0
    1834:	04400005 	bltz	v0,184c <uppol2+0x58>
    1838:	00000000 	sll	zero,zero,0x0
    wd2 = -wd2;			/* check same sign */
    183c:	8fc20000 	lw	v0,0(s8)
    1840:	00000000 	sll	zero,zero,0x0
    1844:	00021023 	negu	v0,v0
    1848:	afc20000 	sw	v0,0(s8)
  wd2 = wd2 >> 7;		/* gain of 1/128 */
    184c:	8fc20000 	lw	v0,0(s8)
    1850:	00000000 	sll	zero,zero,0x0
    1854:	000211c3 	sra	v0,v0,0x7
    1858:	afc20000 	sw	v0,0(s8)
  if ((long) plt * plt2 >= 0L)
    185c:	8fc30020 	lw	v1,32(s8)
    1860:	8fc20028 	lw	v0,40(s8)
    1864:	00000000 	sll	zero,zero,0x0
    1868:	00620018 	mult	v1,v0
    186c:	00001012 	mflo	v0
    1870:	04400007 	bltz	v0,1890 <uppol2+0x9c>
    1874:	00000000 	sll	zero,zero,0x0
    {
      wd4 = wd2 + 128;		/* same sign case */
    1878:	8fc20000 	lw	v0,0(s8)
    187c:	00000000 	sll	zero,zero,0x0
    1880:	24420080 	addiu	v0,v0,128
    1884:	afc20004 	sw	v0,4(s8)
    1888:	08000628 	j	18a0 <uppol2+0xac>
    188c:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      wd4 = wd2 - 128;
    1890:	8fc20000 	lw	v0,0(s8)
    1894:	00000000 	sll	zero,zero,0x0
    1898:	2442ff80 	addiu	v0,v0,-128
    189c:	afc20004 	sw	v0,4(s8)
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */
    18a0:	8fc3001c 	lw	v1,28(s8)
    18a4:	00000000 	sll	zero,zero,0x0
    18a8:	00601021 	addu	v0,v1,zero
    18ac:	000211c0 	sll	v0,v0,0x7
    18b0:	00431023 	subu	v0,v0,v1
    18b4:	000219c3 	sra	v1,v0,0x7
    18b8:	8fc20004 	lw	v0,4(s8)
    18bc:	00000000 	sll	zero,zero,0x0
    18c0:	00621021 	addu	v0,v1,v0
    18c4:	afc20008 	sw	v0,8(s8)

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    18c8:	8fc20008 	lw	v0,8(s8)
    18cc:	00000000 	sll	zero,zero,0x0
    18d0:	28423001 	slti	v0,v0,12289
    18d4:	14400003 	bnez	v0,18e4 <uppol2+0xf0>
    18d8:	00000000 	sll	zero,zero,0x0
    apl2 = 12288;
    18dc:	24023000 	addiu	v0,zero,12288
    18e0:	afc20008 	sw	v0,8(s8)
  if (apl2 < -12288)
    18e4:	8fc20008 	lw	v0,8(s8)
    18e8:	00000000 	sll	zero,zero,0x0
    18ec:	2842d000 	slti	v0,v0,-12288
    18f0:	10400003 	beqz	v0,1900 <uppol2+0x10c>
    18f4:	00000000 	sll	zero,zero,0x0
    apl2 = -12288;
    18f8:	2402d000 	addiu	v0,zero,-12288
    18fc:	afc20008 	sw	v0,8(s8)
  return (apl2);
    1900:	8fc20008 	lw	v0,8(s8)
}
    1904:	03c0e821 	addu	sp,s8,zero
    1908:	8fbe0014 	lw	s8,20(sp)
    190c:	27bd0018 	addiu	sp,sp,24
    1910:	03e00008 	jr	ra
    1914:	00000000 	sll	zero,zero,0x0

00001918 <uppol1>:
/* uppol1 - update first predictor coefficient (pole section) */
/* inputs: al1, apl2, plt, plt1. outputs: apl1 */

int
uppol1 (int al1, int apl2, int plt, int plt1)
{
    1918:	27bdffe8 	addiu	sp,sp,-24
    191c:	afbe0014 	sw	s8,20(sp)
    1920:	03a0f021 	addu	s8,sp,zero
    1924:	afc40018 	sw	a0,24(s8)
    1928:	afc5001c 	sw	a1,28(s8)
    192c:	afc60020 	sw	a2,32(s8)
    1930:	afc70024 	sw	a3,36(s8)
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
    1934:	8fc30018 	lw	v1,24(s8)
    1938:	00000000 	sll	zero,zero,0x0
    193c:	00601021 	addu	v0,v1,zero
    1940:	00021200 	sll	v0,v0,0x8
    1944:	00431023 	subu	v0,v0,v1
    1948:	00021203 	sra	v0,v0,0x8
    194c:	afc20004 	sw	v0,4(s8)
  if ((long) plt * plt1 >= 0L)
    1950:	8fc30020 	lw	v1,32(s8)
    1954:	8fc20024 	lw	v0,36(s8)
    1958:	00000000 	sll	zero,zero,0x0
    195c:	00620018 	mult	v1,v0
    1960:	00001012 	mflo	v0
    1964:	04400007 	bltz	v0,1984 <uppol1+0x6c>
    1968:	00000000 	sll	zero,zero,0x0
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    196c:	8fc20004 	lw	v0,4(s8)
    1970:	00000000 	sll	zero,zero,0x0
    1974:	244200c0 	addiu	v0,v0,192
    1978:	afc20000 	sw	v0,0(s8)
    197c:	08000665 	j	1994 <uppol1+0x7c>
    1980:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      apl1 = (int) wd2 - 192;
    1984:	8fc20004 	lw	v0,4(s8)
    1988:	00000000 	sll	zero,zero,0x0
    198c:	2442ff40 	addiu	v0,v0,-192
    1990:	afc20000 	sw	v0,0(s8)
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
    1994:	24033c00 	addiu	v1,zero,15360
    1998:	8fc2001c 	lw	v0,28(s8)
    199c:	00000000 	sll	zero,zero,0x0
    19a0:	00621023 	subu	v0,v1,v0
    19a4:	afc20008 	sw	v0,8(s8)
  if (apl1 > wd3)
    19a8:	8fc30000 	lw	v1,0(s8)
    19ac:	8fc20008 	lw	v0,8(s8)
    19b0:	00000000 	sll	zero,zero,0x0
    19b4:	0043102a 	slt	v0,v0,v1
    19b8:	10400004 	beqz	v0,19cc <uppol1+0xb4>
    19bc:	00000000 	sll	zero,zero,0x0
    apl1 = wd3;
    19c0:	8fc20008 	lw	v0,8(s8)
    19c4:	00000000 	sll	zero,zero,0x0
    19c8:	afc20000 	sw	v0,0(s8)
  if (apl1 < -wd3)
    19cc:	8fc20008 	lw	v0,8(s8)
    19d0:	00000000 	sll	zero,zero,0x0
    19d4:	00021823 	negu	v1,v0
    19d8:	8fc20000 	lw	v0,0(s8)
    19dc:	00000000 	sll	zero,zero,0x0
    19e0:	0043102a 	slt	v0,v0,v1
    19e4:	10400005 	beqz	v0,19fc <uppol1+0xe4>
    19e8:	00000000 	sll	zero,zero,0x0
    apl1 = -wd3;
    19ec:	8fc20008 	lw	v0,8(s8)
    19f0:	00000000 	sll	zero,zero,0x0
    19f4:	00021023 	negu	v0,v0
    19f8:	afc20000 	sw	v0,0(s8)
  return (apl1);
    19fc:	8fc20000 	lw	v0,0(s8)
}
    1a00:	03c0e821 	addu	sp,s8,zero
    1a04:	8fbe0014 	lw	s8,20(sp)
    1a08:	27bd0018 	addiu	sp,sp,24
    1a0c:	03e00008 	jr	ra
    1a10:	00000000 	sll	zero,zero,0x0

00001a14 <logsch>:
/* logsch - update log quantizer scale factor in higher sub-band */
/* note that nbh is passed and returned */

int
logsch (int ih, int nbh)
{
    1a14:	27bdfff0 	addiu	sp,sp,-16
    1a18:	afbe000c 	sw	s8,12(sp)
    1a1c:	03a0f021 	addu	s8,sp,zero
    1a20:	afc40010 	sw	a0,16(s8)
    1a24:	afc50014 	sw	a1,20(s8)
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
    1a28:	8fc30014 	lw	v1,20(s8)
    1a2c:	00000000 	sll	zero,zero,0x0
    1a30:	00601021 	addu	v0,v1,zero
    1a34:	000211c0 	sll	v0,v0,0x7
    1a38:	00431023 	subu	v0,v0,v1
    1a3c:	000211c3 	sra	v0,v0,0x7
    1a40:	afc20000 	sw	v0,0(s8)
  nbh = wd + wh_code_table[ih];
    1a44:	3c020000 	lui	v0,0x0
    1a48:	8fc30010 	lw	v1,16(s8)
    1a4c:	00000000 	sll	zero,zero,0x0
    1a50:	00031880 	sll	v1,v1,0x2
    1a54:	24420000 	addiu	v0,v0,0
    1a58:	00621021 	addu	v0,v1,v0
    1a5c:	8c430000 	lw	v1,0(v0)
    1a60:	8fc20000 	lw	v0,0(s8)
    1a64:	00000000 	sll	zero,zero,0x0
    1a68:	00621021 	addu	v0,v1,v0
    1a6c:	afc20014 	sw	v0,20(s8)
  if (nbh < 0)
    1a70:	8fc20014 	lw	v0,20(s8)
    1a74:	00000000 	sll	zero,zero,0x0
    1a78:	04410002 	bgez	v0,1a84 <logsch+0x70>
    1a7c:	00000000 	sll	zero,zero,0x0
    nbh = 0;
    1a80:	afc00014 	sw	zero,20(s8)
  if (nbh > 22528)
    1a84:	8fc20014 	lw	v0,20(s8)
    1a88:	00000000 	sll	zero,zero,0x0
    1a8c:	28425801 	slti	v0,v0,22529
    1a90:	14400003 	bnez	v0,1aa0 <logsch+0x8c>
    1a94:	00000000 	sll	zero,zero,0x0
    nbh = 22528;
    1a98:	24025800 	addiu	v0,zero,22528
    1a9c:	afc20014 	sw	v0,20(s8)
  return (nbh);
    1aa0:	8fc20014 	lw	v0,20(s8)
}
    1aa4:	03c0e821 	addu	sp,s8,zero
    1aa8:	8fbe000c 	lw	s8,12(sp)
    1aac:	27bd0010 	addiu	sp,sp,16
    1ab0:	03e00008 	jr	ra
    1ab4:	00000000 	sll	zero,zero,0x0

00001ab8 <adpcm_main>:
  58, 60, 54, 55, 57
};

void
adpcm_main ()
{
    1ab8:	27bdffd8 	addiu	sp,sp,-40
    1abc:	afbf0024 	sw	ra,36(sp)
    1ac0:	afbe0020 	sw	s8,32(sp)
    1ac4:	afb0001c 	sw	s0,28(sp)
    1ac8:	03a0f021 	addu	s8,sp,zero
  int i, j;

/* reset, initialize required memory */
  reset ();
    1acc:	0c000000 	jal	0 <abs>
    1ad0:	00000000 	sll	zero,zero,0x0

  j = 10;
    1ad4:	2402000a 	addiu	v0,zero,10
    1ad8:	afc20014 	sw	v0,20(s8)

  for (i = 0; i < IN_END; i += 2)
    1adc:	afc00010 	sw	zero,16(s8)
    1ae0:	080006dd 	j	1b74 <adpcm_main+0xbc>
    1ae4:	00000000 	sll	zero,zero,0x0
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    1ae8:	8fc20010 	lw	v0,16(s8)
    1aec:	00000000 	sll	zero,zero,0x0
    1af0:	00021fc2 	srl	v1,v0,0x1f
    1af4:	00621021 	addu	v0,v1,v0
    1af8:	00021043 	sra	v0,v0,0x1
    1afc:	00408021 	addu	s0,v0,zero
    1b00:	3c020000 	lui	v0,0x0
    1b04:	8fc30010 	lw	v1,16(s8)
    1b08:	00000000 	sll	zero,zero,0x0
    1b0c:	00031880 	sll	v1,v1,0x2
    1b10:	24420000 	addiu	v0,v0,0
    1b14:	00621021 	addu	v0,v1,v0
    1b18:	8c430000 	lw	v1,0(v0)
    1b1c:	8fc20010 	lw	v0,16(s8)
    1b20:	00000000 	sll	zero,zero,0x0
    1b24:	24440001 	addiu	a0,v0,1
    1b28:	3c020000 	lui	v0,0x0
    1b2c:	00042080 	sll	a0,a0,0x2
    1b30:	24420000 	addiu	v0,v0,0
    1b34:	00821021 	addu	v0,a0,v0
    1b38:	8c420000 	lw	v0,0(v0)
    1b3c:	00602021 	addu	a0,v1,zero
    1b40:	00402821 	addu	a1,v0,zero
    1b44:	0c000000 	jal	0 <abs>
    1b48:	00000000 	sll	zero,zero,0x0
    1b4c:	00401821 	addu	v1,v0,zero
    1b50:	3c020000 	lui	v0,0x0
    1b54:	00102080 	sll	a0,s0,0x2
    1b58:	24420000 	addiu	v0,v0,0
    1b5c:	00821021 	addu	v0,a0,v0
    1b60:	ac430000 	sw	v1,0(v0)
/* reset, initialize required memory */
  reset ();

  j = 10;

  for (i = 0; i < IN_END; i += 2)
    1b64:	8fc20010 	lw	v0,16(s8)
    1b68:	00000000 	sll	zero,zero,0x0
    1b6c:	24420002 	addiu	v0,v0,2
    1b70:	afc20010 	sw	v0,16(s8)
    1b74:	8fc20010 	lw	v0,16(s8)
    1b78:	00000000 	sll	zero,zero,0x0
    1b7c:	28420064 	slti	v0,v0,100
    1b80:	1440ffd9 	bnez	v0,1ae8 <adpcm_main+0x30>
    1b84:	00000000 	sll	zero,zero,0x0
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
    1b88:	afc00010 	sw	zero,16(s8)
    1b8c:	08000709 	j	1c24 <adpcm_main+0x16c>
    1b90:	00000000 	sll	zero,zero,0x0
    {
      decode (compressed[i / 2]);
    1b94:	8fc20010 	lw	v0,16(s8)
    1b98:	00000000 	sll	zero,zero,0x0
    1b9c:	00021fc2 	srl	v1,v0,0x1f
    1ba0:	00621021 	addu	v0,v1,v0
    1ba4:	00021043 	sra	v0,v0,0x1
    1ba8:	00401821 	addu	v1,v0,zero
    1bac:	3c020000 	lui	v0,0x0
    1bb0:	00031880 	sll	v1,v1,0x2
    1bb4:	24420000 	addiu	v0,v0,0
    1bb8:	00621021 	addu	v0,v1,v0
    1bbc:	8c420000 	lw	v0,0(v0)
    1bc0:	00000000 	sll	zero,zero,0x0
    1bc4:	00402021 	addu	a0,v0,zero
    1bc8:	0c000000 	jal	0 <abs>
    1bcc:	00000000 	sll	zero,zero,0x0
      result[i] = xout1;
    1bd0:	8f830000 	lw	v1,0(gp)
    1bd4:	3c020000 	lui	v0,0x0
    1bd8:	8fc40010 	lw	a0,16(s8)
    1bdc:	00000000 	sll	zero,zero,0x0
    1be0:	00042080 	sll	a0,a0,0x2
    1be4:	24420000 	addiu	v0,v0,0
    1be8:	00821021 	addu	v0,a0,v0
    1bec:	ac430000 	sw	v1,0(v0)
      result[i + 1] = xout2;
    1bf0:	8fc20010 	lw	v0,16(s8)
    1bf4:	00000000 	sll	zero,zero,0x0
    1bf8:	24440001 	addiu	a0,v0,1
    1bfc:	8f830000 	lw	v1,0(gp)
    1c00:	3c020000 	lui	v0,0x0
    1c04:	00042080 	sll	a0,a0,0x2
    1c08:	24420000 	addiu	v0,v0,0
    1c0c:	00821021 	addu	v0,a0,v0
    1c10:	ac430000 	sw	v1,0(v0)

  for (i = 0; i < IN_END; i += 2)
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
    1c14:	8fc20010 	lw	v0,16(s8)
    1c18:	00000000 	sll	zero,zero,0x0
    1c1c:	24420002 	addiu	v0,v0,2
    1c20:	afc20010 	sw	v0,16(s8)
    1c24:	8fc20010 	lw	v0,16(s8)
    1c28:	00000000 	sll	zero,zero,0x0
    1c2c:	28420064 	slti	v0,v0,100
    1c30:	1440ffd8 	bnez	v0,1b94 <adpcm_main+0xdc>
    1c34:	00000000 	sll	zero,zero,0x0
    {
      decode (compressed[i / 2]);
      result[i] = xout1;
      result[i + 1] = xout2;
    }
}
    1c38:	03c0e821 	addu	sp,s8,zero
    1c3c:	8fbf0024 	lw	ra,36(sp)
    1c40:	8fbe0020 	lw	s8,32(sp)
    1c44:	8fb0001c 	lw	s0,28(sp)
    1c48:	27bd0028 	addiu	sp,sp,40
    1c4c:	03e00008 	jr	ra
    1c50:	00000000 	sll	zero,zero,0x0

00001c54 <main>:

int
main ()
{
    1c54:	27bdffe0 	addiu	sp,sp,-32
    1c58:	afbf001c 	sw	ra,28(sp)
    1c5c:	afbe0018 	sw	s8,24(sp)
    1c60:	03a0f021 	addu	s8,sp,zero
  int i;
  int main_result;

      main_result = 0;
    1c64:	afc00014 	sw	zero,20(s8)
      adpcm_main ();
    1c68:	0c000000 	jal	0 <abs>
    1c6c:	00000000 	sll	zero,zero,0x0
      for (i = 0; i < IN_END / 2; i++)
    1c70:	afc00010 	sw	zero,16(s8)
    1c74:	08000736 	j	1cd8 <main+0x84>
    1c78:	00000000 	sll	zero,zero,0x0
	{
	  if (compressed[i] != test_compressed[i])
    1c7c:	3c020000 	lui	v0,0x0
    1c80:	8fc30010 	lw	v1,16(s8)
    1c84:	00000000 	sll	zero,zero,0x0
    1c88:	00031880 	sll	v1,v1,0x2
    1c8c:	24420000 	addiu	v0,v0,0
    1c90:	00621021 	addu	v0,v1,v0
    1c94:	8c430000 	lw	v1,0(v0)
    1c98:	3c020000 	lui	v0,0x0
    1c9c:	8fc40010 	lw	a0,16(s8)
    1ca0:	00000000 	sll	zero,zero,0x0
    1ca4:	00042080 	sll	a0,a0,0x2
    1ca8:	24420000 	addiu	v0,v0,0
    1cac:	00821021 	addu	v0,a0,v0
    1cb0:	8c420000 	lw	v0,0(v0)
    1cb4:	00000000 	sll	zero,zero,0x0
    1cb8:	10620003 	beq	v1,v0,1cc8 <main+0x74>
    1cbc:	00000000 	sll	zero,zero,0x0
	    {
	      main_result = 1;
    1cc0:	24020001 	addiu	v0,zero,1
    1cc4:	afc20014 	sw	v0,20(s8)
  int i;
  int main_result;

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
    1cc8:	8fc20010 	lw	v0,16(s8)
    1ccc:	00000000 	sll	zero,zero,0x0
    1cd0:	24420001 	addiu	v0,v0,1
    1cd4:	afc20010 	sw	v0,16(s8)
    1cd8:	8fc20010 	lw	v0,16(s8)
    1cdc:	00000000 	sll	zero,zero,0x0
    1ce0:	28420032 	slti	v0,v0,50
    1ce4:	1440ffe5 	bnez	v0,1c7c <main+0x28>
    1ce8:	00000000 	sll	zero,zero,0x0
	  if (compressed[i] != test_compressed[i])
	    {
	      main_result = 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
    1cec:	afc00010 	sw	zero,16(s8)
    1cf0:	08000755 	j	1d54 <main+0x100>
    1cf4:	00000000 	sll	zero,zero,0x0
	{
	  if (result[i] != test_result[i])
    1cf8:	3c020000 	lui	v0,0x0
    1cfc:	8fc30010 	lw	v1,16(s8)
    1d00:	00000000 	sll	zero,zero,0x0
    1d04:	00031880 	sll	v1,v1,0x2
    1d08:	24420000 	addiu	v0,v0,0
    1d0c:	00621021 	addu	v0,v1,v0
    1d10:	8c430000 	lw	v1,0(v0)
    1d14:	3c020000 	lui	v0,0x0
    1d18:	8fc40010 	lw	a0,16(s8)
    1d1c:	00000000 	sll	zero,zero,0x0
    1d20:	00042080 	sll	a0,a0,0x2
    1d24:	24420000 	addiu	v0,v0,0
    1d28:	00821021 	addu	v0,a0,v0
    1d2c:	8c420000 	lw	v0,0(v0)
    1d30:	00000000 	sll	zero,zero,0x0
    1d34:	10620003 	beq	v1,v0,1d44 <main+0xf0>
    1d38:	00000000 	sll	zero,zero,0x0
	    {
	      main_result = 1;
    1d3c:	24020001 	addiu	v0,zero,1
    1d40:	afc20014 	sw	v0,20(s8)
	  if (compressed[i] != test_compressed[i])
	    {
	      main_result = 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
    1d44:	8fc20010 	lw	v0,16(s8)
    1d48:	00000000 	sll	zero,zero,0x0
    1d4c:	24420001 	addiu	v0,v0,1
    1d50:	afc20010 	sw	v0,16(s8)
    1d54:	8fc20010 	lw	v0,16(s8)
    1d58:	00000000 	sll	zero,zero,0x0
    1d5c:	28420064 	slti	v0,v0,100
    1d60:	1440ffe5 	bnez	v0,1cf8 <main+0xa4>
    1d64:	00000000 	sll	zero,zero,0x0
	  if (result[i] != test_result[i])
	    {
	      main_result = 1;
	    }
	}
      printf ("%d\n", main_result);
    1d68:	3c020000 	lui	v0,0x0
    1d6c:	244408a0 	addiu	a0,v0,2208
    1d70:	8fc50014 	lw	a1,20(s8)
    1d74:	0c000000 	jal	0 <abs>
    1d78:	00000000 	sll	zero,zero,0x0
      return main_result;
    1d7c:	8fc20014 	lw	v0,20(s8)
    }
    1d80:	03c0e821 	addu	sp,s8,zero
    1d84:	8fbf001c 	lw	ra,28(sp)
    1d88:	8fbe0018 	lw	s8,24(sp)
    1d8c:	27bd0020 	addiu	sp,sp,32
    1d90:	03e00008 	jr	ra
    1d94:	00000000 	sll	zero,zero,0x0

Disassembly of section .rodata:

00000000 <h>:
   0:	0000000c 	syscall
   4:	ffffffd4 	0xffffffd4
   8:	ffffffd4 	0xffffffd4
   c:	000000d4 	0xd4
  10:	00000030 	0x30
  14:	fffffd90 	0xfffffd90
  18:	00000080 	sll	zero,zero,0x2
  1c:	000005a8 	0x5a8
  20:	fffffcb8 	0xfffffcb8
  24:	fffff36c 	0xfffff36c
  28:	00000edc 	0xedc
  2c:	00003c90 	0x3c90
  30:	00003c90 	0x3c90
  34:	00000edc 	0xedc
  38:	fffff36c 	0xfffff36c
  3c:	fffffcb8 	0xfffffcb8
  40:	000005a8 	0x5a8
  44:	00000080 	sll	zero,zero,0x2
  48:	fffffd90 	0xfffffd90
  4c:	00000030 	0x30
  50:	000000d4 	0xd4
  54:	ffffffd4 	0xffffffd4
  58:	ffffffd4 	0xffffffd4
  5c:	0000000c 	syscall

00000060 <qq4_code4_table>:
  60:	00000000 	sll	zero,zero,0x0
  64:	ffffb018 	0xffffb018
  68:	ffffcda0 	0xffffcda0
  6c:	ffffdcf8 	0xffffdcf8
  70:	ffffe770 	0xffffe770
  74:	ffffef70 	0xffffef70
  78:	fffff5e8 	0xfffff5e8
  7c:	fffffb50 	0xfffffb50
  80:	00004fe8 	0x4fe8
  84:	00003260 	0x3260
  88:	00002308 	0x2308
  8c:	00001890 	0x1890
  90:	00001090 	0x1090
  94:	00000a18 	0xa18
  98:	000004b0 	0x4b0
  9c:	00000000 	sll	zero,zero,0x0

000000a0 <qq6_code6_table>:
  a0:	ffffff78 	0xffffff78
  a4:	ffffff78 	0xffffff78
  a8:	ffffff78 	0xffffff78
  ac:	ffffff78 	0xffffff78
  b0:	ffff9f18 	0xffff9f18
  b4:	ffffaa70 	0xffffaa70
  b8:	ffffb5c0 	0xffffb5c0
  bc:	ffffbec0 	0xffffbec0
  c0:	ffffc578 	0xffffc578
  c4:	ffffcb38 	0xffffcb38
  c8:	ffffd008 	0xffffd008
  cc:	ffffd448 	0xffffd448
  d0:	ffffd808 	0xffffd808
  d4:	ffffdb70 	0xffffdb70
  d8:	ffffde80 	0xffffde80
  dc:	ffffe150 	0xffffe150
  e0:	ffffe3e8 	0xffffe3e8
  e4:	ffffe650 	0xffffe650
  e8:	ffffe890 	0xffffe890
  ec:	ffffeab0 	0xffffeab0
  f0:	ffffecb0 	0xffffecb0
  f4:	ffffee90 	0xffffee90
  f8:	fffff058 	0xfffff058
  fc:	fffff208 	0xfffff208
 100:	fffff3a0 	0xfffff3a0
 104:	fffff528 	0xfffff528
 108:	fffff6a0 	0xfffff6a0
 10c:	fffff810 	0xfffff810
 110:	fffff968 	0xfffff968
 114:	fffffab0 	0xfffffab0
 118:	fffffbf0 	0xfffffbf0
 11c:	fffffd28 	0xfffffd28
 120:	000060e8 	0x60e8
 124:	00005590 	0x5590
 128:	00004a40 	sll	t1,zero,0x9
 12c:	00004140 	sll	t0,zero,0x5
 130:	00003a88 	0x3a88
 134:	000034c8 	0x34c8
 138:	00002ff8 	0x2ff8
 13c:	00002bb8 	0x2bb8
 140:	000027f8 	0x27f8
 144:	00002490 	0x2490
 148:	00002180 	sll	a0,zero,0x6
 14c:	00001eb0 	0x1eb0
 150:	00001c18 	0x1c18
 154:	000019b0 	0x19b0
 158:	00001770 	0x1770
 15c:	00001550 	0x1550
 160:	00001350 	0x1350
 164:	00001170 	0x1170
 168:	00000fa8 	0xfa8
 16c:	00000df8 	0xdf8
 170:	00000c60 	0xc60
 174:	00000ad8 	0xad8
 178:	00000960 	0x960
 17c:	000007f0 	0x7f0
 180:	00000698 	0x698
 184:	00000550 	0x550
 188:	00000410 	0x410
 18c:	000002d8 	0x2d8
 190:	000001b0 	0x1b0
 194:	00000088 	0x88
 198:	fffffe50 	0xfffffe50
 19c:	ffffff78 	0xffffff78

000001a0 <wl_code_table>:
 1a0:	ffffffc4 	0xffffffc4
 1a4:	00000be2 	0xbe2
 1a8:	000004ae 	0x4ae
 1ac:	0000021a 	0x21a
 1b0:	0000014e 	0x14e
 1b4:	000000ac 	0xac
 1b8:	0000003a 	0x3a
 1bc:	ffffffe2 	0xffffffe2
 1c0:	00000be2 	0xbe2
 1c4:	000004ae 	0x4ae
 1c8:	0000021a 	0x21a
 1cc:	0000014e 	0x14e
 1d0:	000000ac 	0xac
 1d4:	0000003a 	0x3a
 1d8:	ffffffe2 	0xffffffe2
 1dc:	ffffffc4 	0xffffffc4

000001e0 <ilb_table>:
 1e0:	00000800 	sll	at,zero,0x0
 1e4:	0000082d 	0x82d
 1e8:	0000085b 	0x85b
 1ec:	0000088a 	0x88a
 1f0:	000008b9 	0x8b9
 1f4:	000008ea 	0x8ea
 1f8:	0000091c 	0x91c
 1fc:	0000094f 	0x94f
 200:	00000983 	sra	at,zero,0x6
 204:	000009b9 	0x9b9
 208:	000009ef 	0x9ef
 20c:	00000a27 	0xa27
 210:	00000a60 	0xa60
 214:	00000a9a 	0xa9a
 218:	00000ad6 	0xad6
 21c:	00000b12 	0xb12
 220:	00000b50 	0xb50
 224:	00000b90 	0xb90
 228:	00000bd1 	0xbd1
 22c:	00000c13 	0xc13
 230:	00000c56 	0xc56
 234:	00000c9c 	0xc9c
 238:	00000ce2 	0xce2
 23c:	00000d2b 	0xd2b
 240:	00000d74 	0xd74
 244:	00000dc0 	sll	at,zero,0x17
 248:	00000e0d 	break	0x0,0x38
 24c:	00000e5c 	0xe5c
 250:	00000eac 	0xeac
 254:	00000efe 	0xefe
 258:	00000f52 	0xf52
 25c:	00000fa8 	0xfa8

00000260 <decis_levl>:
 260:	00000118 	0x118
 264:	00000240 	sll	zero,zero,0x9
 268:	00000370 	0x370
 26c:	000004b0 	0x4b0
 270:	000005f0 	0x5f0
 274:	00000748 	0x748
 278:	000008a0 	0x8a0
 27c:	00000a18 	0xa18
 280:	00000b90 	0xb90
 284:	00000d30 	0xd30
 288:	00000ec8 	0xec8
 28c:	00001090 	0x1090
 290:	00001258 	0x1258
 294:	00001450 	0x1450
 298:	00001650 	0x1650
 29c:	00001890 	0x1890
 2a0:	00001ad0 	0x1ad0
 2a4:	00001d60 	0x1d60
 2a8:	00001ff8 	0x1ff8
 2ac:	00002308 	0x2308
 2b0:	00002618 	0x2618
 2b4:	000029d8 	0x29d8
 2b8:	00002d90 	0x2d90
 2bc:	00003260 	0x3260
 2c0:	00003728 	0x3728
 2c4:	00003de0 	0x3de0
 2c8:	00004498 	0x4498
 2cc:	00004fe8 	0x4fe8
 2d0:	00005b38 	0x5b38
 2d4:	00007fff 	0x7fff

000002d8 <quant26bt_pos>:
 2d8:	0000003d 	0x3d
 2dc:	0000003c 	0x3c
 2e0:	0000003b 	0x3b
 2e4:	0000003a 	0x3a
 2e8:	00000039 	0x39
 2ec:	00000038 	0x38
 2f0:	00000037 	0x37
 2f4:	00000036 	0x36
 2f8:	00000035 	0x35
 2fc:	00000034 	0x34
 300:	00000033 	0x33
 304:	00000032 	0x32
 308:	00000031 	0x31
 30c:	00000030 	0x30
 310:	0000002f 	0x2f
 314:	0000002e 	0x2e
 318:	0000002d 	0x2d
 31c:	0000002c 	0x2c
 320:	0000002b 	sltu	zero,zero,zero
 324:	0000002a 	slt	zero,zero,zero
 328:	00000029 	0x29
 32c:	00000028 	0x28
 330:	00000027 	nor	zero,zero,zero
 334:	00000026 	xor	zero,zero,zero
 338:	00000025 	or	zero,zero,zero
 33c:	00000024 	and	zero,zero,zero
 340:	00000023 	negu	zero,zero
 344:	00000022 	neg	zero,zero
 348:	00000021 	addu	zero,zero,zero
 34c:	00000020 	add	zero,zero,zero
 350:	00000020 	add	zero,zero,zero

00000354 <quant26bt_neg>:
 354:	0000003f 	0x3f
 358:	0000003e 	0x3e
 35c:	0000001f 	0x1f
 360:	0000001e 	0x1e
 364:	0000001d 	0x1d
 368:	0000001c 	0x1c
 36c:	0000001b 	divu	zero,zero,zero
 370:	0000001a 	div	zero,zero,zero
 374:	00000019 	multu	zero,zero
 378:	00000018 	mult	zero,zero
 37c:	00000017 	0x17
 380:	00000016 	0x16
 384:	00000015 	0x15
 388:	00000014 	0x14
 38c:	00000013 	mtlo	zero
 390:	00000012 	mflo	zero
 394:	00000011 	mthi	zero
 398:	00000010 	mfhi	zero
 39c:	0000000f 	0xf
 3a0:	0000000e 	0xe
 3a4:	0000000d 	break
 3a8:	0000000c 	syscall
 3ac:	0000000b 	0xb
 3b0:	0000000a 	0xa
 3b4:	00000009 	jalr	zero,zero
 3b8:	00000008 	jr	zero
 3bc:	00000007 	srav	zero,zero,zero
 3c0:	00000006 	srlv	zero,zero,zero
 3c4:	00000005 	0x5
 3c8:	00000004 	sllv	zero,zero,zero
 3cc:	00000004 	sllv	zero,zero,zero

000003d0 <qq2_code2_table>:
 3d0:	ffffe310 	0xffffe310
 3d4:	fffff9b0 	0xfffff9b0
 3d8:	00001cf0 	0x1cf0
 3dc:	00000650 	0x650

000003e0 <wh_code_table>:
 3e0:	0000031e 	0x31e
 3e4:	ffffff2a 	0xffffff2a
 3e8:	0000031e 	0x31e
 3ec:	ffffff2a 	0xffffff2a

000003f0 <test_data>:
 3f0:	00000044 	0x44
 3f4:	00000044 	0x44
 3f8:	00000044 	0x44
 3fc:	00000044 	0x44
 400:	00000044 	0x44
 404:	00000044 	0x44
 408:	00000044 	0x44
 40c:	00000044 	0x44
 410:	00000044 	0x44
 414:	00000044 	0x44
 418:	00000044 	0x44
 41c:	00000044 	0x44
 420:	00000044 	0x44
 424:	00000044 	0x44
 428:	00000044 	0x44
 42c:	00000044 	0x44
 430:	00000044 	0x44
 434:	00000043 	sra	zero,zero,0x1
 438:	00000043 	sra	zero,zero,0x1
 43c:	00000043 	sra	zero,zero,0x1
 440:	00000043 	sra	zero,zero,0x1
 444:	00000043 	sra	zero,zero,0x1
 448:	00000043 	sra	zero,zero,0x1
 44c:	00000043 	sra	zero,zero,0x1
 450:	00000042 	srl	zero,zero,0x1
 454:	00000042 	srl	zero,zero,0x1
 458:	00000042 	srl	zero,zero,0x1
 45c:	00000042 	srl	zero,zero,0x1
 460:	00000042 	srl	zero,zero,0x1
 464:	00000042 	srl	zero,zero,0x1
 468:	00000041 	0x41
 46c:	00000041 	0x41
 470:	00000041 	0x41
 474:	00000041 	0x41
 478:	00000041 	0x41
 47c:	00000040 	sll	zero,zero,0x1
 480:	00000040 	sll	zero,zero,0x1
 484:	00000040 	sll	zero,zero,0x1
 488:	00000040 	sll	zero,zero,0x1
 48c:	00000040 	sll	zero,zero,0x1
 490:	00000040 	sll	zero,zero,0x1
 494:	00000040 	sll	zero,zero,0x1
 498:	00000040 	sll	zero,zero,0x1
 49c:	0000003f 	0x3f
 4a0:	0000003f 	0x3f
 4a4:	0000003f 	0x3f
 4a8:	0000003f 	0x3f
 4ac:	0000003f 	0x3f
 4b0:	0000003e 	0x3e
 4b4:	0000003e 	0x3e
 4b8:	0000003e 	0x3e
 4bc:	0000003e 	0x3e
 4c0:	0000003e 	0x3e
 4c4:	0000003e 	0x3e
 4c8:	0000003d 	0x3d
 4cc:	0000003d 	0x3d
 4d0:	0000003d 	0x3d
 4d4:	0000003d 	0x3d
 4d8:	0000003d 	0x3d
 4dc:	0000003d 	0x3d
 4e0:	0000003c 	0x3c
 4e4:	0000003c 	0x3c
 4e8:	0000003c 	0x3c
 4ec:	0000003c 	0x3c
 4f0:	0000003c 	0x3c
 4f4:	0000003c 	0x3c
 4f8:	0000003c 	0x3c
 4fc:	0000003c 	0x3c
 500:	0000003c 	0x3c
 504:	0000003b 	0x3b
 508:	0000003b 	0x3b
 50c:	0000003b 	0x3b
 510:	0000003b 	0x3b
 514:	0000003b 	0x3b
 518:	0000003b 	0x3b
 51c:	0000003b 	0x3b
 520:	0000003b 	0x3b
 524:	0000003b 	0x3b
 528:	0000003b 	0x3b
 52c:	0000003b 	0x3b
 530:	0000003b 	0x3b
 534:	0000003b 	0x3b
 538:	0000003b 	0x3b
 53c:	0000003b 	0x3b
 540:	0000003b 	0x3b
 544:	0000003b 	0x3b
 548:	0000003b 	0x3b
 54c:	0000003b 	0x3b
 550:	0000003b 	0x3b
 554:	0000003b 	0x3b
 558:	0000003b 	0x3b
 55c:	0000003b 	0x3b
 560:	0000003c 	0x3c
 564:	0000003c 	0x3c
 568:	0000003c 	0x3c
 56c:	0000003c 	0x3c
 570:	0000003c 	0x3c
 574:	0000003c 	0x3c
 578:	0000003c 	0x3c
 57c:	0000003c 	0x3c

00000580 <test_compressed>:
 580:	000000fd 	0xfd
 584:	000000de 	0xde
 588:	00000077 	0x77
 58c:	000000ba 	0xba
 590:	000000f4 	0xf4
 594:	00000092 	0x92
 598:	00000020 	add	zero,zero,zero
 59c:	000000a0 	0xa0
 5a0:	000000ec 	0xec
 5a4:	000000ed 	0xed
 5a8:	000000ee 	0xee
 5ac:	000000f0 	0xf0
 5b0:	000000f1 	0xf1
 5b4:	000000f1 	0xf1
 5b8:	000000f2 	0xf2
 5bc:	000000f3 	0xf3
 5c0:	000000f4 	0xf4
 5c4:	000000f3 	0xf3
 5c8:	000000f4 	0xf4
 5cc:	000000f5 	0xf5
 5d0:	000000f4 	0xf4
 5d4:	000000f4 	0xf4
 5d8:	000000f5 	0xf5
 5dc:	000000f5 	0xf5
 5e0:	000000f5 	0xf5
 5e4:	000000f6 	0xf6
 5e8:	000000f6 	0xf6
 5ec:	000000f7 	0xf7
 5f0:	000000f7 	0xf7
 5f4:	000000f7 	0xf7
 5f8:	000000f7 	0xf7
 5fc:	000000f8 	0xf8
 600:	000000f6 	0xf6
 604:	000000f7 	0xf7
 608:	000000f9 	0xf9
 60c:	000000f7 	0xf7
 610:	000000f8 	0xf8
 614:	000000f7 	0xf7
 618:	000000f8 	0xf8
 61c:	000000f7 	0xf7
 620:	000000f8 	0xf8
 624:	000000f7 	0xf7
 628:	000000f8 	0xf8
 62c:	000000f7 	0xf7
 630:	000000f8 	0xf8
 634:	000000f8 	0xf8
 638:	000000f6 	0xf6
 63c:	000000f8 	0xf8
 640:	000000f7 	0xf7
 644:	000000f8 	0xf8
	...

00000710 <test_result>:
 710:	00000000 	sll	zero,zero,0x0
 714:	ffffffff 	0xffffffff
 718:	ffffffff 	0xffffffff
	...
 724:	ffffffff 	0xffffffff
	...
 730:	ffffffff 	0xffffffff
 734:	ffffffff 	0xffffffff
	...
 740:	00000001 	0x1
 744:	00000001 	0x1
 748:	00000000 	sll	zero,zero,0x0
 74c:	fffffffe 	0xfffffffe
 750:	ffffffff 	0xffffffff
 754:	fffffffe 	0xfffffffe
 758:	00000000 	sll	zero,zero,0x0
 75c:	fffffffd 	0xfffffffd
 760:	00000001 	0x1
	...
 76c:	fffffffc 	0xfffffffc
 770:	00000001 	0x1
 774:	00000001 	0x1
 778:	00000002 	srl	zero,zero,0x0
 77c:	0000000b 	0xb
 780:	00000014 	0x14
 784:	00000012 	mflo	zero
 788:	00000014 	0x14
 78c:	00000016 	0x16
 790:	0000001c 	0x1c
 794:	0000001b 	divu	zero,zero,zero
 798:	0000001f 	0x1f
 79c:	0000001f 	0x1f
 7a0:	00000022 	neg	zero,zero
 7a4:	0000001f 	0x1f
 7a8:	00000022 	neg	zero,zero
 7ac:	00000022 	neg	zero,zero
 7b0:	00000026 	xor	zero,zero,zero
 7b4:	00000025 	or	zero,zero,zero
 7b8:	0000002a 	slt	zero,zero,zero
 7bc:	0000002a 	slt	zero,zero,zero
 7c0:	0000002c 	0x2c
 7c4:	00000029 	0x29
 7c8:	0000002b 	sltu	zero,zero,zero
 7cc:	0000002a 	slt	zero,zero,zero
 7d0:	0000002f 	0x2f
 7d4:	0000002d 	0x2d
 7d8:	0000002f 	0x2f
 7dc:	0000002c 	0x2c
 7e0:	0000002d 	0x2d
 7e4:	0000002b 	sltu	zero,zero,zero
 7e8:	0000002e 	0x2e
 7ec:	0000002d 	0x2d
 7f0:	00000030 	0x30
 7f4:	0000002e 	0x2e
 7f8:	00000031 	0x31
 7fc:	00000030 	0x30
 800:	00000033 	0x33
 804:	00000031 	0x31
 808:	00000034 	0x34
 80c:	00000034 	0x34
 810:	00000037 	0x37
 814:	00000035 	0x35
 818:	00000038 	0x38
 81c:	00000037 	0x37
 820:	0000003a 	0x3a
 824:	00000039 	0x39
 828:	0000003b 	0x3b
 82c:	00000039 	0x39
 830:	0000003c 	0x3c
 834:	0000003c 	0x3c
 838:	0000003c 	0x3c
 83c:	00000036 	0x36
 840:	00000036 	0x36
 844:	00000035 	0x35
 848:	0000003c 	0x3c
 84c:	0000003e 	0x3e
 850:	0000003e 	0x3e
 854:	00000036 	0x36
 858:	00000037 	0x37
 85c:	00000038 	0x38
 860:	0000003b 	0x3b
 864:	00000035 	0x35
 868:	00000036 	0x36
 86c:	00000038 	0x38
 870:	0000003b 	0x3b
 874:	00000035 	0x35
 878:	00000038 	0x38
 87c:	0000003a 	0x3a
 880:	0000003b 	0x3b
 884:	00000035 	0x35
 888:	00000038 	0x38
 88c:	0000003a 	0x3a
 890:	0000003c 	0x3c
 894:	00000036 	0x36
 898:	00000037 	0x37
 89c:	00000039 	0x39
 8a0:	25640a00 	addiu	a0,t3,2560
