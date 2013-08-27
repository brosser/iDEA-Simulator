
adpcm.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <abs>:
/* put input samples in xin1 = first value, xin2 = second value */
/* returns il and ih stored together */

int
abs (int n)
{
   0:	04810002 	bgez	a0,c <abs+0xc>
   4:	00801021 	addu	v0,a0,zero
   8:	00041023 	negu	v0,a0
  if (n >= 0)
    m = n;
  else
    m = -n;
  return m;
}
   c:	03e00008 	jr	ra
  10:	00000000 	sll	zero,zero,0x0

00000014 <reset>:
void
reset ()
{
  int i;

  detl = dec_detl = 32;		/* reset to min scale factor */
  14:	24020020 	addiu	v0,zero,32
  18:	af820000 	sw	v0,0(gp)
  1c:	af820000 	sw	v0,0(gp)
  deth = dec_deth = 8;
  20:	24020008 	addiu	v0,zero,8
  24:	af820000 	sw	v0,0(gp)
  28:	af820000 	sw	v0,0(gp)
  nbl = al1 = al2 = plt1 = plt2 = rlt1 = rlt2 = 0;
  2c:	af800000 	sw	zero,0(gp)
  30:	af800000 	sw	zero,0(gp)
  34:	af800000 	sw	zero,0(gp)
  38:	af800000 	sw	zero,0(gp)
  3c:	af800000 	sw	zero,0(gp)
  40:	af800000 	sw	zero,0(gp)
  44:	af800000 	sw	zero,0(gp)
  nbh = ah1 = ah2 = ph1 = ph2 = rh1 = rh2 = 0;
  48:	af800000 	sw	zero,0(gp)
  4c:	af800000 	sw	zero,0(gp)
  50:	af800000 	sw	zero,0(gp)
  54:	af800000 	sw	zero,0(gp)
  58:	af800000 	sw	zero,0(gp)
  5c:	af800000 	sw	zero,0(gp)
  60:	af800000 	sw	zero,0(gp)
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  64:	af800000 	sw	zero,0(gp)
  68:	af800000 	sw	zero,0(gp)
  6c:	af800000 	sw	zero,0(gp)
  70:	af800000 	sw	zero,0(gp)
  74:	af800000 	sw	zero,0(gp)
  78:	af800000 	sw	zero,0(gp)
  7c:	af800000 	sw	zero,0(gp)
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;
  80:	af800000 	sw	zero,0(gp)
  84:	af800000 	sw	zero,0(gp)
  88:	af800000 	sw	zero,0(gp)
  8c:	af800000 	sw	zero,0(gp)
  90:	af800000 	sw	zero,0(gp)
  94:	af800000 	sw	zero,0(gp)
  98:	af800000 	sw	zero,0(gp)
  9c:	00001021 	addu	v0,zero,zero
}

/* clear all storage locations */

void
reset ()
  a0:	3c080000 	lui	t0,0x0
  a4:	25080000 	addiu	t0,t0,0
  a8:	3c070000 	lui	a3,0x0
  ac:	24e70000 	addiu	a3,a3,0
  b0:	3c060000 	lui	a2,0x0
  b4:	24c60000 	addiu	a2,a2,0
  b8:	3c050000 	lui	a1,0x0
  bc:	24a50000 	addiu	a1,a1,0
  nbl = al1 = al2 = plt1 = plt2 = rlt1 = rlt2 = 0;
  nbh = ah1 = ah2 = ph1 = ph2 = rh1 = rh2 = 0;
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
  c0:	24040018 	addiu	a0,zero,24
}

/* clear all storage locations */

void
reset ()
  c4:	01021821 	addu	v1,t0,v0
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
  c8:	ac600000 	sw	zero,0(v1)
}

/* clear all storage locations */

void
reset ()
  cc:	00e21821 	addu	v1,a3,v0
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
      delay_dhx[i] = 0;
  d0:	ac600000 	sw	zero,0(v1)
}

/* clear all storage locations */

void
reset ()
  d4:	00c21821 	addu	v1,a2,v0

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
      delay_dhx[i] = 0;
      dec_del_dltx[i] = 0;
  d8:	ac600000 	sw	zero,0(v1)
}

/* clear all storage locations */

void
reset ()
  dc:	00a21821 	addu	v1,a1,v0
  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
      delay_dhx[i] = 0;
      dec_del_dltx[i] = 0;
      dec_del_dhx[i] = 0;
  e0:	24420004 	addiu	v0,v0,4
  nbl = al1 = al2 = plt1 = plt2 = rlt1 = rlt2 = 0;
  nbh = ah1 = ah2 = ph1 = ph2 = rh1 = rh2 = 0;
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
  e4:	1444fff7 	bne	v0,a0,c4 <reset+0xb0>
  e8:	ac600000 	sw	zero,0(v1)
  ec:	00001021 	addu	v0,zero,zero
}

/* clear all storage locations */

void
reset ()
  f0:	3c080000 	lui	t0,0x0
  f4:	25080000 	addiu	t0,t0,0
  f8:	3c070000 	lui	a3,0x0
  fc:	24e70000 	addiu	a3,a3,0
 100:	3c060000 	lui	a2,0x0
 104:	24c60000 	addiu	a2,a2,0
 108:	3c050000 	lui	a1,0x0
 10c:	24a50000 	addiu	a1,a1,0
      delay_dhx[i] = 0;
      dec_del_dltx[i] = 0;
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
 110:	24040018 	addiu	a0,zero,24
}

/* clear all storage locations */

void
reset ()
 114:	01021821 	addu	v1,t0,v0
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
 118:	ac600000 	sw	zero,0(v1)
}

/* clear all storage locations */

void
reset ()
 11c:	00e21821 	addu	v1,a3,v0
    }

  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
      delay_bph[i] = 0;
 120:	ac600000 	sw	zero,0(v1)
}

/* clear all storage locations */

void
reset ()
 124:	00c21821 	addu	v1,a2,v0

  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
      delay_bph[i] = 0;
      dec_del_bpl[i] = 0;
 128:	ac600000 	sw	zero,0(v1)
}

/* clear all storage locations */

void
reset ()
 12c:	00a21821 	addu	v1,a1,v0
  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
      delay_bph[i] = 0;
      dec_del_bpl[i] = 0;
      dec_del_bph[i] = 0;
 130:	24420004 	addiu	v0,v0,4
      delay_dhx[i] = 0;
      dec_del_dltx[i] = 0;
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
 134:	1444fff7 	bne	v0,a0,114 <reset+0x100>
 138:	ac600000 	sw	zero,0(v1)
 13c:	3c020000 	lui	v0,0x0
 140:	24420000 	addiu	v0,v0,0
}

/* clear all storage locations */

void
reset ()
 144:	24430060 	addiu	v1,v0,96
      dec_del_bpl[i] = 0;
      dec_del_bph[i] = 0;
    }

  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23
 148:	ac400000 	sw	zero,0(v0)
 14c:	24420004 	addiu	v0,v0,4
      delay_bph[i] = 0;
      dec_del_bpl[i] = 0;
      dec_del_bph[i] = 0;
    }

  for (i = 0; i < 24; i++)
 150:	1443fffd 	bne	v0,v1,148 <reset+0x134>
 154:	00000000 	sll	zero,zero,0x0
 158:	00001021 	addu	v0,zero,zero
}

/* clear all storage locations */

void
reset ()
 15c:	3c060000 	lui	a2,0x0
 160:	24c60000 	addiu	a2,a2,0
 164:	3c050000 	lui	a1,0x0
 168:	24a50000 	addiu	a1,a1,0
    }

  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
 16c:	2404002c 	addiu	a0,zero,44
}

/* clear all storage locations */

void
reset ()
 170:	00c21821 	addu	v1,a2,v0
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
 174:	ac600000 	sw	zero,0(v1)
}

/* clear all storage locations */

void
reset ()
 178:	00a21821 	addu	v1,a1,v0
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
      accumd[i] = 0;
 17c:	24420004 	addiu	v0,v0,4
    }

  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
 180:	1444fffb 	bne	v0,a0,170 <reset+0x15c>
 184:	ac600000 	sw	zero,0(v1)
    {
      accumc[i] = 0;
      accumd[i] = 0;
    }
}
 188:	03e00008 	jr	ra
 18c:	00000000 	sll	zero,zero,0x0

00000190 <filtez>:
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
 190:	8ca30000 	lw	v1,0(a1)
 194:	8c820000 	lw	v0,0(a0)
 198:	00000000 	sll	zero,zero,0x0
 19c:	00620018 	mult	v1,v0
 1a0:	00001012 	mflo	v0
 1a4:	00001821 	addu	v1,zero,zero
  for (i = 1; i < 6; i++)
 1a8:	24060014 	addiu	a2,zero,20

/* filtez - compute predictor output signal (zero section) */
/* input: bpl1-6 and dlt1-6, output: szl */

int
filtez (int *bpl, int *dlt)
 1ac:	00a34021 	addu	t0,a1,v1
 1b0:	00833821 	addu	a3,a0,v1
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
 1b4:	8d080004 	lw	t0,4(t0)
 1b8:	8ce70004 	lw	a3,4(a3)
 1bc:	00000000 	sll	zero,zero,0x0
 1c0:	01070018 	mult	t0,a3
 1c4:	00003812 	mflo	a3
 1c8:	24630004 	addiu	v1,v1,4
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
 1cc:	1466fff7 	bne	v1,a2,1ac <filtez+0x1c>
 1d0:	00471021 	addu	v0,v0,a3
    zl += (long) (*bpl++) * (*dlt++);

  return ((int) (zl >> 14));	/* x2 here */
}
 1d4:	03e00008 	jr	ra
 1d8:	00021383 	sra	v0,v0,0xe

000001dc <filtep>:
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
 1dc:	00e60018 	mult	a3,a2
 1e0:	00003012 	mflo	a2
	...
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
 1ec:	00a40018 	mult	a1,a0
 1f0:	00002012 	mflo	a0
/* filtep - compute predictor output signal (pole section) */
/* input rlt1-2 and al1-2, output spl */

int
filtep (int rlt1, int al1, int rlt2, int al2)
{
 1f4:	00c43021 	addu	a2,a2,a0
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
 1f8:	00061040 	sll	v0,a2,0x1
}
 1fc:	03e00008 	jr	ra
 200:	000213c3 	sra	v0,v0,0xf

00000204 <quantl>:
{
  int ril, mil;
  long int wd, decis;

/* abs of difference signal */
  wd = abs (el);
 204:	04810002 	bgez	a0,210 <quantl+0xc>
 208:	00801021 	addu	v0,a0,zero
 20c:	00041023 	negu	v0,a0
 210:	00403021 	addu	a2,v0,zero
/* determine mil based on decision levels and detl gain */
  for (mil = 0; mil < 30; mil++)
    {
      decis = (decis_levl[mil] * (long) detl) >> 15L;
 214:	000538c0 	sll	a3,a1,0x3
 218:	00051940 	sll	v1,a1,0x5
 21c:	00e31821 	addu	v1,a3,v1
 220:	000338c0 	sll	a3,v1,0x3
 224:	00e31823 	subu	v1,a3,v1
 228:	00031bc3 	sra	v1,v1,0xf
      if (wd <= decis)
 22c:	0062102a 	slt	v0,v1,v0
 230:	10400011 	beqz	v0,278 <quantl+0x74>
 234:	3c030000 	lui	v1,0x0
 238:	24630004 	addiu	v1,v1,4
  long int wd, decis;

/* abs of difference signal */
  wd = abs (el);
/* determine mil based on decision levels and detl gain */
  for (mil = 0; mil < 30; mil++)
 23c:	24020001 	addiu	v0,zero,1
 240:	2407001e 	addiu	a3,zero,30
    {
      decis = (decis_levl[mil] * (long) detl) >> 15L;
 244:	8c680000 	lw	t0,0(v1)
 248:	00000000 	sll	zero,zero,0x0
 24c:	00a80018 	mult	a1,t0
 250:	00004012 	mflo	t0
 254:	000843c3 	sra	t0,t0,0xf
      if (wd <= decis)
 258:	0106402a 	slt	t0,t0,a2
 25c:	11000007 	beqz	t0,27c <quantl+0x78>
 260:	00000000 	sll	zero,zero,0x0
  long int wd, decis;

/* abs of difference signal */
  wd = abs (el);
/* determine mil based on decision levels and detl gain */
  for (mil = 0; mil < 30; mil++)
 264:	24420001 	addiu	v0,v0,1
 268:	1447fff6 	bne	v0,a3,244 <quantl+0x40>
 26c:	24630004 	addiu	v1,v1,4
 270:	0800009f 	j	27c <quantl+0x78>
 274:	00000000 	sll	zero,zero,0x0
 278:	00001021 	addu	v0,zero,zero
      decis = (decis_levl[mil] * (long) detl) >> 15L;
      if (wd <= decis)
	break;
    }
/* if mil=30 then wd is less than all decision levels */
  if (el >= 0)
 27c:	04800007 	bltz	a0,29c <quantl+0x98>
 280:	3c030000 	lui	v1,0x0
    ril = quant26bt_pos[mil];
 284:	00021080 	sll	v0,v0,0x2
 288:	24630000 	addiu	v1,v1,0
 28c:	00431021 	addu	v0,v0,v1
 290:	8c420000 	lw	v0,0(v0)
 294:	03e00008 	jr	ra
 298:	00000000 	sll	zero,zero,0x0
  else
    ril = quant26bt_neg[mil];
 29c:	00021080 	sll	v0,v0,0x2
 2a0:	3c030000 	lui	v1,0x0
 2a4:	24630000 	addiu	v1,v1,0
 2a8:	00431021 	addu	v0,v0,v1
 2ac:	8c420000 	lw	v0,0(v0)
  return (ril);
}
 2b0:	03e00008 	jr	ra
 2b4:	00000000 	sll	zero,zero,0x0

000002b8 <logscl>:

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
 2b8:	000511c0 	sll	v0,a1,0x7
 2bc:	00451023 	subu	v0,v0,a1
 2c0:	000211c3 	sra	v0,v0,0x7
  nbl = (int) wd + wl_code_table[il >> 2];
 2c4:	00042083 	sra	a0,a0,0x2
 2c8:	00042080 	sll	a0,a0,0x2
 2cc:	3c030000 	lui	v1,0x0
 2d0:	24630000 	addiu	v1,v1,0
 2d4:	00832021 	addu	a0,a0,v1
 2d8:	8c830000 	lw	v1,0(a0)
 2dc:	00000000 	sll	zero,zero,0x0
 2e0:	00431821 	addu	v1,v0,v1
 2e4:	04610003 	bgez	v1,2f4 <logscl+0x3c>
 2e8:	00601021 	addu	v0,v1,zero
 2ec:	00001821 	addu	v1,zero,zero
 2f0:	00601021 	addu	v0,v1,zero
 2f4:	28634801 	slti	v1,v1,18433
 2f8:	14600002 	bnez	v1,304 <logscl+0x4c>
 2fc:	00000000 	sll	zero,zero,0x0
 300:	24024800 	addiu	v0,zero,18432
  if (nbl < 0)
    nbl = 0;
  if (nbl > 18432)
    nbl = 18432;
  return (nbl);
}
 304:	03e00008 	jr	ra
 308:	00000000 	sll	zero,zero,0x0

0000030c <scalel>:

int
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
 30c:	00041902 	srl	v1,a0,0x4
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
 310:	3063007c 	andi	v1,v1,0x7c
 314:	3c020000 	lui	v0,0x0
 318:	24420000 	addiu	v0,v0,0
 31c:	00621821 	addu	v1,v1,v0
 320:	24a50001 	addiu	a1,a1,1
int
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
 324:	000422c3 	sra	a0,a0,0xb
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
 328:	00a42023 	subu	a0,a1,a0
 32c:	8c620000 	lw	v0,0(v1)
 330:	00000000 	sll	zero,zero,0x0
 334:	00821007 	srav	v0,v0,a0
  return (wd3 << 3);
}
 338:	03e00008 	jr	ra
 33c:	000210c0 	sll	v0,v0,0x3

00000340 <upzero>:
void
upzero (int dlt, int *dlti, int *bli)
{
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
 340:	1480000d 	bnez	a0,378 <upzero+0x38>
 344:	00001021 	addu	v0,zero,zero
 348:	24020006 	addiu	v0,zero,6
    {
      for (i = 0; i < 6; i++)
	{
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
 34c:	8cc30000 	lw	v1,0(a2)
 350:	00000000 	sll	zero,zero,0x0
 354:	00033a00 	sll	a3,v1,0x8
 358:	00e31823 	subu	v1,a3,v1
 35c:	00031a03 	sra	v1,v1,0x8
 360:	acc30000 	sw	v1,0(a2)
 364:	2442ffff 	addiu	v0,v0,-1
{
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
    {
      for (i = 0; i < 6; i++)
 368:	1440fff8 	bnez	v0,34c <upzero+0xc>
 36c:	24c60004 	addiu	a2,a2,4
 370:	080000f1 	j	3c4 <upzero+0x84>
 374:	00000000 	sll	zero,zero,0x0
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	}
    }
  else
    {
      for (i = 0; i < 6; i++)
 378:	24030018 	addiu	v1,zero,24

/* upzero - inputs: dlt, dlti[0-5], bli[0-5], outputs: updated bli[0-5] */
/* also implements delay of bli and update of dlti from dlt */

void
upzero (int dlt, int *dlti, int *bli)
 37c:	00a23821 	addu	a3,a1,v0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
 380:	8ce70000 	lw	a3,0(a3)
 384:	00000000 	sll	zero,zero,0x0
 388:	00870018 	mult	a0,a3
 38c:	00003812 	mflo	a3
 390:	04e10002 	bgez	a3,39c <upzero+0x5c>
 394:	24090080 	addiu	t1,zero,128
	    wd2 = 128;
	  else
	    wd2 = -128;
 398:	2409ff80 	addiu	t1,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
 39c:	8cc70000 	lw	a3,0(a2)
 3a0:	00000000 	sll	zero,zero,0x0
 3a4:	00074200 	sll	t0,a3,0x8
 3a8:	01073823 	subu	a3,t0,a3
 3ac:	00073a03 	sra	a3,a3,0x8
	  bli[i] = wd2 + wd3;
 3b0:	01273821 	addu	a3,t1,a3
 3b4:	acc70000 	sw	a3,0(a2)
 3b8:	24420004 	addiu	v0,v0,4
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	}
    }
  else
    {
      for (i = 0; i < 6; i++)
 3bc:	1443ffef 	bne	v0,v1,37c <upzero+0x3c>
 3c0:	24c60004 	addiu	a2,a2,4
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
 3c4:	8ca20010 	lw	v0,16(a1)
 3c8:	00000000 	sll	zero,zero,0x0
 3cc:	aca20014 	sw	v0,20(a1)
  dlti[4] = dlti[3];
 3d0:	8ca2000c 	lw	v0,12(a1)
 3d4:	00000000 	sll	zero,zero,0x0
 3d8:	aca20010 	sw	v0,16(a1)
  dlti[3] = dlti[2];
 3dc:	8ca20008 	lw	v0,8(a1)
 3e0:	00000000 	sll	zero,zero,0x0
 3e4:	aca2000c 	sw	v0,12(a1)
  dlti[1] = dlti[0];
 3e8:	8ca20000 	lw	v0,0(a1)
 3ec:	00000000 	sll	zero,zero,0x0
 3f0:	aca20004 	sw	v0,4(a1)
  dlti[0] = dlt;
}
 3f4:	03e00008 	jr	ra
 3f8:	aca40000 	sw	a0,0(a1)

000003fc <uppol2>:
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
 3fc:	00e60018 	mult	a3,a2
 400:	00003812 	mflo	a3
 404:	04e00002 	bltz	a3,410 <uppol2+0x14>
 408:	00042080 	sll	a0,a0,0x2
    wd2 = -wd2;			/* check same sign */
 40c:	00042023 	negu	a0,a0
  wd2 = wd2 >> 7;		/* gain of 1/128 */
  if ((long) plt * plt2 >= 0L)
 410:	8fa20010 	lw	v0,16(sp)
 414:	00000000 	sll	zero,zero,0x0
 418:	00460018 	mult	v0,a2
 41c:	00003012 	mflo	a2
 420:	04c00003 	bltz	a2,430 <uppol2+0x34>
 424:	000421c3 	sra	a0,a0,0x7
    {
      wd4 = wd2 + 128;		/* same sign case */
 428:	0800010d 	j	434 <uppol2+0x38>
 42c:	24840080 	addiu	a0,a0,128
    }
  else
    {
      wd4 = wd2 - 128;
 430:	2484ff80 	addiu	a0,a0,-128
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */
 434:	000511c0 	sll	v0,a1,0x7
 438:	00452823 	subu	a1,v0,a1
 43c:	000529c3 	sra	a1,a1,0x7
 440:	00852021 	addu	a0,a0,a1
 444:	28823001 	slti	v0,a0,12289
 448:	14400003 	bnez	v0,458 <uppol2+0x5c>
 44c:	00801021 	addu	v0,a0,zero
 450:	24043000 	addiu	a0,zero,12288
 454:	00801021 	addu	v0,a0,zero
 458:	2884d000 	slti	a0,a0,-12288
 45c:	10800002 	beqz	a0,468 <uppol2+0x6c>
 460:	00000000 	sll	zero,zero,0x0
 464:	2402d000 	addiu	v0,zero,-12288
  if (apl2 > 12288)
    apl2 = 12288;
  if (apl2 < -12288)
    apl2 = -12288;
  return (apl2);
}
 468:	03e00008 	jr	ra
 46c:	00000000 	sll	zero,zero,0x0

00000470 <uppol1>:
int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
 470:	00041200 	sll	v0,a0,0x8
 474:	00442023 	subu	a0,v0,a0
  if ((long) plt * plt1 >= 0L)
 478:	00e60018 	mult	a3,a2
 47c:	00003012 	mflo	a2
 480:	04c00003 	bltz	a2,490 <uppol1+0x20>
 484:	00042203 	sra	a0,a0,0x8
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
 488:	08000125 	j	494 <uppol1+0x24>
 48c:	248400c0 	addiu	a0,a0,192
    }
  else
    {
      apl1 = (int) wd2 - 192;
 490:	2484ff40 	addiu	a0,a0,-192
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
 494:	24023c00 	addiu	v0,zero,15360
 498:	00452823 	subu	a1,v0,a1
 49c:	00801821 	addu	v1,a0,zero
 4a0:	00a4202a 	slt	a0,a1,a0
 4a4:	10800002 	beqz	a0,4b0 <uppol1+0x40>
 4a8:	00000000 	sll	zero,zero,0x0
 4ac:	00a01821 	addu	v1,a1,zero
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
 4b0:	00052823 	negu	a1,a1
  else
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
 4b4:	00601021 	addu	v0,v1,zero
 4b8:	0065182a 	slt	v1,v1,a1
 4bc:	10600002 	beqz	v1,4c8 <uppol1+0x58>
 4c0:	00000000 	sll	zero,zero,0x0
 4c4:	00a01021 	addu	v0,a1,zero
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
    apl1 = -wd3;
  return (apl1);
}
 4c8:	03e00008 	jr	ra
 4cc:	00000000 	sll	zero,zero,0x0

000004d0 <logsch>:

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
 4d0:	000511c0 	sll	v0,a1,0x7
 4d4:	00451023 	subu	v0,v0,a1
 4d8:	000211c3 	sra	v0,v0,0x7
  nbh = wd + wh_code_table[ih];
 4dc:	00042080 	sll	a0,a0,0x2
 4e0:	3c030000 	lui	v1,0x0
 4e4:	24630000 	addiu	v1,v1,0
 4e8:	00832021 	addu	a0,a0,v1
 4ec:	8c830000 	lw	v1,0(a0)
 4f0:	00000000 	sll	zero,zero,0x0
 4f4:	00431821 	addu	v1,v0,v1
 4f8:	04610003 	bgez	v1,508 <logsch+0x38>
 4fc:	00601021 	addu	v0,v1,zero
 500:	00001821 	addu	v1,zero,zero
 504:	00601021 	addu	v0,v1,zero
 508:	28635801 	slti	v1,v1,22529
 50c:	14600002 	bnez	v1,518 <logsch+0x48>
 510:	00000000 	sll	zero,zero,0x0
 514:	24025800 	addiu	v0,zero,22528
  if (nbh < 0)
    nbh = 0;
  if (nbh > 22528)
    nbh = 22528;
  return (nbh);
}
 518:	03e00008 	jr	ra
 51c:	00000000 	sll	zero,zero,0x0

00000520 <decode>:

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
 520:	27bdffd0 	addiu	sp,sp,-48
 524:	afbf002c 	sw	ra,44(sp)
 528:	afb40028 	sw	s4,40(sp)
 52c:	afb30024 	sw	s3,36(sp)
 530:	afb20020 	sw	s2,32(sp)
 534:	afb1001c 	sw	s1,28(sp)
 538:	afb00018 	sw	s0,24(sp)
  long int xa1, xa2;		/* qmf accumulators */
  const int *h_ptr;
  int *ac_ptr, *ac_ptr1, *ad_ptr, *ad_ptr1;

/* split transmitted word from input into ilr and ih */
  ilr = input & 0x3f;
 53c:	3090003f 	andi	s0,a0,0x3f
 540:	af900000 	sw	s0,0(gp)
  ih = input >> 6;
 544:	00042183 	sra	a0,a0,0x6
 548:	af840000 	sw	a0,0(gp)

/* LOWER SUB_BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);
 54c:	3c140000 	lui	s4,0x0
 550:	26840000 	addiu	a0,s4,0
 554:	3c130000 	lui	s3,0x0
 558:	0c000000 	jal	0 <abs>
 55c:	26650000 	addiu	a1,s3,0
 560:	af820000 	sw	v0,0(gp)

/* filtep: compute predictor output signal for pole section */
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);
 564:	8f840000 	lw	a0,0(gp)
 568:	8f850000 	lw	a1,0(gp)
 56c:	8f860000 	lw	a2,0(gp)
 570:	8f870000 	lw	a3,0(gp)
 574:	0c000000 	jal	0 <abs>
 578:	00409021 	addu	s2,v0,zero
 57c:	af820000 	sw	v0,0(gp)

  dec_sl = dec_spl + dec_szl;
 580:	00521021 	addu	v0,v0,s2
 584:	af820000 	sw	v0,0(gp)

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
 588:	8f830000 	lw	v1,0(gp)
 58c:	3205003c 	andi	a1,s0,0x3c
 590:	3c040000 	lui	a0,0x0
 594:	24840000 	addiu	a0,a0,0
 598:	00a42021 	addu	a0,a1,a0
 59c:	8c910000 	lw	s1,0(a0)
 5a0:	00000000 	sll	zero,zero,0x0
 5a4:	00710018 	mult	v1,s1
 5a8:	00008812 	mflo	s1
 5ac:	00118bc3 	sra	s1,s1,0xf
 5b0:	af910000 	sw	s1,0(gp)

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
 5b4:	8f850000 	lw	a1,0(gp)
 5b8:	00000000 	sll	zero,zero,0x0
 5bc:	00052880 	sll	a1,a1,0x2
 5c0:	3c040000 	lui	a0,0x0
 5c4:	24840000 	addiu	a0,a0,0
 5c8:	00a42021 	addu	a0,a1,a0
 5cc:	8c840000 	lw	a0,0(a0)
 5d0:	00000000 	sll	zero,zero,0x0
 5d4:	00640018 	mult	v1,a0
 5d8:	00001812 	mflo	v1
 5dc:	00031bc3 	sra	v1,v1,0xf
 5e0:	af830000 	sw	v1,0(gp)

  rl = dl + dec_sl;
 5e4:	00431021 	addu	v0,v0,v1
 5e8:	af820000 	sw	v0,0(gp)

/* logscl: quantizer scale factor adaptation in the lower sub-band */
  dec_nbl = logscl (ilr, dec_nbl);
 5ec:	8f850000 	lw	a1,0(gp)
 5f0:	0c000000 	jal	0 <abs>
 5f4:	02002021 	addu	a0,s0,zero
 5f8:	af820000 	sw	v0,0(gp)

/* scalel: computes quantizer scale factor in the lower sub band */
  dec_detl = scalel (dec_nbl, 8);
 5fc:	00402021 	addu	a0,v0,zero
 600:	0c000000 	jal	0 <abs>
 604:	24050008 	addiu	a1,zero,8
 608:	af820000 	sw	v0,0(gp)

/* parrec - add pole predictor output to quantized diff. signal */
/* for partially reconstructed signal */
  dec_plt = dec_dlt + dec_szl;
 60c:	02519021 	addu	s2,s2,s1
 610:	af920000 	sw	s2,0(gp)

/* upzero: update zero section predictor coefficients */
  upzero (dec_dlt, dec_del_dltx, dec_del_bpl);
 614:	02202021 	addu	a0,s1,zero
 618:	26650000 	addiu	a1,s3,0
 61c:	0c000000 	jal	0 <abs>
 620:	26860000 	addiu	a2,s4,0

/* uppol2: update second predictor coefficient apl2 and delay it as al2 */
  dec_al2 = uppol2 (dec_al1, dec_al2, dec_plt, dec_plt1, dec_plt2);
 624:	8f900000 	lw	s0,0(gp)
 628:	8f920000 	lw	s2,0(gp)
 62c:	8f910000 	lw	s1,0(gp)
 630:	8f820000 	lw	v0,0(gp)
 634:	00000000 	sll	zero,zero,0x0
 638:	afa20010 	sw	v0,16(sp)
 63c:	02002021 	addu	a0,s0,zero
 640:	8f850000 	lw	a1,0(gp)
 644:	02403021 	addu	a2,s2,zero
 648:	0c000000 	jal	0 <abs>
 64c:	02203821 	addu	a3,s1,zero
 650:	af820000 	sw	v0,0(gp)

/* uppol1: update first predictor coef. (pole setion) */
  dec_al1 = uppol1 (dec_al1, dec_al2, dec_plt, dec_plt1);
 654:	02002021 	addu	a0,s0,zero
 658:	00402821 	addu	a1,v0,zero
 65c:	02403021 	addu	a2,s2,zero
 660:	0c000000 	jal	0 <abs>
 664:	02203821 	addu	a3,s1,zero
 668:	af820000 	sw	v0,0(gp)

/* recons : compute recontructed signal for adaptive predictor */
  dec_rlt = dec_sl + dec_dlt;
 66c:	8f820000 	lw	v0,0(gp)
 670:	8f830000 	lw	v1,0(gp)
 674:	00000000 	sll	zero,zero,0x0
 678:	00621021 	addu	v0,v1,v0
 67c:	af820000 	sw	v0,0(gp)

/* done with lower sub band decoder, implement delays for next time */
  dec_rlt2 = dec_rlt1;
 680:	8f830000 	lw	v1,0(gp)
 684:	00000000 	sll	zero,zero,0x0
 688:	af830000 	sw	v1,0(gp)
  dec_rlt1 = dec_rlt;
 68c:	af820000 	sw	v0,0(gp)
  dec_plt2 = dec_plt1;
 690:	af910000 	sw	s1,0(gp)
  dec_plt1 = dec_plt;
 694:	af920000 	sw	s2,0(gp)

/* HIGH SUB-BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);
 698:	3c130000 	lui	s3,0x0
 69c:	26640000 	addiu	a0,s3,0
 6a0:	3c120000 	lui	s2,0x0
 6a4:	0c000000 	jal	0 <abs>
 6a8:	26450000 	addiu	a1,s2,0
 6ac:	af820000 	sw	v0,0(gp)

/* filtep: compute predictor output signal for pole section */
  dec_sph = filtep (dec_rh1, dec_ah1, dec_rh2, dec_ah2);
 6b0:	8f840000 	lw	a0,0(gp)
 6b4:	8f850000 	lw	a1,0(gp)
 6b8:	8f860000 	lw	a2,0(gp)
 6bc:	8f870000 	lw	a3,0(gp)
 6c0:	0c000000 	jal	0 <abs>
 6c4:	00408821 	addu	s1,v0,zero
 6c8:	af820000 	sw	v0,0(gp)

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;
 6cc:	00511021 	addu	v0,v0,s1
 6d0:	af820000 	sw	v0,0(gp)

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
 6d4:	8f840000 	lw	a0,0(gp)
 6d8:	00000000 	sll	zero,zero,0x0
 6dc:	00041880 	sll	v1,a0,0x2
 6e0:	3c020000 	lui	v0,0x0
 6e4:	24420000 	addiu	v0,v0,0
 6e8:	00621021 	addu	v0,v1,v0
 6ec:	8c500000 	lw	s0,0(v0)
 6f0:	8f820000 	lw	v0,0(gp)
 6f4:	00000000 	sll	zero,zero,0x0
 6f8:	02020018 	mult	s0,v0
 6fc:	00008012 	mflo	s0
 700:	001083c3 	sra	s0,s0,0xf
 704:	af900000 	sw	s0,0(gp)

/* logsch: update logarithmic quantizer scale factor in hi sub band */
  dec_nbh = logsch (ih, dec_nbh);
 708:	8f850000 	lw	a1,0(gp)
 70c:	0c000000 	jal	0 <abs>
 710:	02308821 	addu	s1,s1,s0
 714:	af820000 	sw	v0,0(gp)

/* scalel: compute the quantizer scale factor in the higher sub band */
  dec_deth = scalel (dec_nbh, 10);
 718:	00402021 	addu	a0,v0,zero
 71c:	0c000000 	jal	0 <abs>
 720:	2405000a 	addiu	a1,zero,10
 724:	af820000 	sw	v0,0(gp)

/* parrec: compute partially recontructed signal */
  dec_ph = dec_dh + dec_szh;
 728:	af910000 	sw	s1,0(gp)

/* upzero: update zero section predictor coefficients */
  upzero (dec_dh, dec_del_dhx, dec_del_bph);
 72c:	02002021 	addu	a0,s0,zero
 730:	26450000 	addiu	a1,s2,0
 734:	0c000000 	jal	0 <abs>
 738:	26660000 	addiu	a2,s3,0

/* uppol2: update second predictor coefficient aph2 and delay it as ah2 */
  dec_ah2 = uppol2 (dec_ah1, dec_ah2, dec_ph, dec_ph1, dec_ph2);
 73c:	8f900000 	lw	s0,0(gp)
 740:	8f920000 	lw	s2,0(gp)
 744:	8f910000 	lw	s1,0(gp)
 748:	8f820000 	lw	v0,0(gp)
 74c:	00000000 	sll	zero,zero,0x0
 750:	afa20010 	sw	v0,16(sp)
 754:	02002021 	addu	a0,s0,zero
 758:	8f850000 	lw	a1,0(gp)
 75c:	02403021 	addu	a2,s2,zero
 760:	0c000000 	jal	0 <abs>
 764:	02203821 	addu	a3,s1,zero
 768:	af820000 	sw	v0,0(gp)

/* uppol1: update first predictor coef. (pole setion) */
  dec_ah1 = uppol1 (dec_ah1, dec_ah2, dec_ph, dec_ph1);
 76c:	02002021 	addu	a0,s0,zero
 770:	00402821 	addu	a1,v0,zero
 774:	02403021 	addu	a2,s2,zero
 778:	0c000000 	jal	0 <abs>
 77c:	02203821 	addu	a3,s1,zero
 780:	af820000 	sw	v0,0(gp)

/* recons : compute recontructed signal for adaptive predictor */
  rh = dec_sh + dec_dh;
 784:	8f820000 	lw	v0,0(gp)
 788:	8f880000 	lw	t0,0(gp)
 78c:	00000000 	sll	zero,zero,0x0
 790:	01024021 	addu	t0,t0,v0
 794:	af880000 	sw	t0,0(gp)

/* done with high band decode, implementing delays for next time here */
  dec_rh2 = dec_rh1;
 798:	8f820000 	lw	v0,0(gp)
 79c:	00000000 	sll	zero,zero,0x0
 7a0:	af820000 	sw	v0,0(gp)
  dec_rh1 = rh;
 7a4:	af880000 	sw	t0,0(gp)
  dec_ph2 = dec_ph1;
 7a8:	af910000 	sw	s1,0(gp)
  dec_ph1 = dec_ph;
 7ac:	af920000 	sw	s2,0(gp)

/* end of higher sub_band decoder */

/* end with receive quadrature mirror filters */
  xd = rl - rh;
 7b0:	8f820000 	lw	v0,0(gp)
 7b4:	00000000 	sll	zero,zero,0x0
 7b8:	00484823 	subu	t1,v0,t0
 7bc:	af890000 	sw	t1,0(gp)
  xs = rl + rh;
 7c0:	01024021 	addu	t0,t0,v0
 7c4:	af880000 	sw	t0,0(gp)

/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
 7c8:	00091080 	sll	v0,t1,0x2
 7cc:	00092900 	sll	a1,t1,0x4
 7d0:	00a22823 	subu	a1,a1,v0
  xa2 = (long) xs *(*h_ptr++);
 7d4:	00081080 	sll	v0,t0,0x2
 7d8:	00083100 	sll	a2,t0,0x4
 7dc:	00c23023 	subu	a2,a2,v0
 7e0:	01063023 	subu	a2,t0,a2
 7e4:	00063080 	sll	a2,a2,0x2
}

/* decode function, result in xout1 and xout2 */

void
decode (int input)
 7e8:	3c070000 	lui	a3,0x0
 7ec:	24e70058 	addiu	a3,a3,88
  xs = rl + rh;

/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
 7f0:	3c040000 	lui	a0,0x0
 7f4:	24840000 	addiu	a0,a0,0
  xd = rl - rh;
  xs = rl + rh;

/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
 7f8:	3c030000 	lui	v1,0x0
 7fc:	24630000 	addiu	v1,v1,0
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
 800:	3c020000 	lui	v0,0x0
 804:	24420008 	addiu	v0,v0,8
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
 808:	8c4b0000 	lw	t3,0(v0)
 80c:	8c6a0000 	lw	t2,0(v1)
 810:	00000000 	sll	zero,zero,0x0
 814:	016a0018 	mult	t3,t2
 818:	00005012 	mflo	t2
 81c:	00aa2821 	addu	a1,a1,t2
 820:	24630004 	addiu	v1,v1,4
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
 824:	8c4b0004 	lw	t3,4(v0)
 828:	8c8a0000 	lw	t2,0(a0)
 82c:	00000000 	sll	zero,zero,0x0
 830:	016a0018 	mult	t3,t2
 834:	00005012 	mflo	t2
 838:	00ca3021 	addu	a2,a2,t2
}

/* decode function, result in xout1 and xout2 */

void
decode (int input)
 83c:	24420008 	addiu	v0,v0,8
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
 840:	14e2fff1 	bne	a3,v0,808 <decode+0x2e8>
 844:	24840004 	addiu	a0,a0,4
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
  xa2 += (long) (*ad_ptr) * (*h_ptr++);
 848:	3c020000 	lui	v0,0x0
 84c:	8c430028 	lw	v1,40(v0)
 850:	2402000c 	addiu	v0,zero,12
 854:	00620018 	mult	v1,v0
 858:	00001012 	mflo	v0
 85c:	00c23021 	addu	a2,a2,v0
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
 860:	3c020000 	lui	v0,0x0
 864:	8c430028 	lw	v1,40(v0)
 868:	2402ffd4 	addiu	v0,zero,-44
 86c:	00620018 	mult	v1,v0
 870:	00005012 	mflo	t2
 874:	00aa2821 	addu	a1,a1,t2
  xa2 += (long) (*ad_ptr) * (*h_ptr++);

/* scale by 2^14 */
  xout1 = xa1 >> 14;
 878:	00052b83 	sra	a1,a1,0xe
 87c:	af850000 	sw	a1,0(gp)
  xout2 = xa2 >> 14;
 880:	00063383 	sra	a2,a2,0xe
 884:	af860000 	sw	a2,0(gp)
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
 888:	3c030000 	lui	v1,0x0
 88c:	24630028 	addiu	v1,v1,40
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
 890:	3c020000 	lui	v0,0x0
 894:	24420028 	addiu	v0,v0,40
  xout2 = xa2 >> 14;

/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
 898:	3c050000 	lui	a1,0x0
 89c:	24a50000 	addiu	a1,a1,0
    {
      *ac_ptr-- = *ac_ptr1--;
 8a0:	8c44fffc 	lw	a0,-4(v0)
 8a4:	00000000 	sll	zero,zero,0x0
 8a8:	ac440000 	sw	a0,0(v0)
 8ac:	2442fffc 	addiu	v0,v0,-4
      *ad_ptr-- = *ad_ptr1--;
 8b0:	8c64fffc 	lw	a0,-4(v1)
 8b4:	00000000 	sll	zero,zero,0x0
 8b8:	ac640000 	sw	a0,0(v1)
  xout2 = xa2 >> 14;

/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
 8bc:	1445fff8 	bne	v0,a1,8a0 <decode+0x380>
 8c0:	2463fffc 	addiu	v1,v1,-4
    {
      *ac_ptr-- = *ac_ptr1--;
      *ad_ptr-- = *ad_ptr1--;
    }
  *ac_ptr = xd;
 8c4:	3c020000 	lui	v0,0x0
 8c8:	ac490000 	sw	t1,0(v0)
  *ad_ptr = xs;
 8cc:	3c020000 	lui	v0,0x0
 8d0:	ac480000 	sw	t0,0(v0)
}
 8d4:	8fbf002c 	lw	ra,44(sp)
 8d8:	8fb40028 	lw	s4,40(sp)
 8dc:	8fb30024 	lw	s3,36(sp)
 8e0:	8fb20020 	lw	s2,32(sp)
 8e4:	8fb1001c 	lw	s1,28(sp)
 8e8:	8fb00018 	lw	s0,24(sp)
 8ec:	03e00008 	jr	ra
 8f0:	27bd0030 	addiu	sp,sp,48

000008f4 <encode>:
  return m;
}

int
encode (int xin1, int xin2)
{
 8f4:	27bdffd0 	addiu	sp,sp,-48
 8f8:	afbf002c 	sw	ra,44(sp)
 8fc:	afb40028 	sw	s4,40(sp)
 900:	afb30024 	sw	s3,36(sp)
 904:	afb20020 	sw	s2,32(sp)
 908:	afb1001c 	sw	s1,28(sp)
 90c:	afb00018 	sw	s0,24(sp)
  int decis;

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
 910:	3c020000 	lui	v0,0x0
 914:	8c430000 	lw	v1,0(v0)
 918:	00000000 	sll	zero,zero,0x0
 91c:	00033080 	sll	a2,v1,0x2
 920:	00033900 	sll	a3,v1,0x4
 924:	00e63823 	subu	a3,a3,a2
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
 928:	24420000 	addiu	v0,v0,0
 92c:	8c420004 	lw	v0,4(v0)
 930:	00000000 	sll	zero,zero,0x0
 934:	00021880 	sll	v1,v0,0x2
 938:	00023100 	sll	a2,v0,0x4
 93c:	00c33023 	subu	a2,a2,v1
 940:	00463023 	subu	a2,v0,a2
 944:	00063080 	sll	a2,a2,0x2
    m = -n;
  return m;
}

int
encode (int xin1, int xin2)
 948:	3c080000 	lui	t0,0x0
 94c:	25080058 	addiu	t0,t0,88

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
 950:	3c030000 	lui	v1,0x0
 954:	24630008 	addiu	v1,v1,8
 958:	3c020000 	lui	v0,0x0
 95c:	24420008 	addiu	v0,v0,8
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
 960:	8c4a0000 	lw	t2,0(v0)
 964:	8c690000 	lw	t1,0(v1)
 968:	00000000 	sll	zero,zero,0x0
 96c:	01490018 	mult	t2,t1
 970:	00004812 	mflo	t1
 974:	00e93821 	addu	a3,a3,t1
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
 978:	8c4a0004 	lw	t2,4(v0)
 97c:	8c690004 	lw	t1,4(v1)
 980:	00000000 	sll	zero,zero,0x0
 984:	01490018 	mult	t2,t1
 988:	00004812 	mflo	t1
 98c:	00c93021 	addu	a2,a2,t1
    m = -n;
  return m;
}

int
encode (int xin1, int xin2)
 990:	24420008 	addiu	v0,v0,8
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
 994:	1448fff2 	bne	v0,t0,960 <encode+0x6c>
 998:	24630008 	addiu	v1,v1,8
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
 99c:	3c020000 	lui	v0,0x0
 9a0:	24420000 	addiu	v0,v0,0
 9a4:	8c480058 	lw	t0,88(v0)
 9a8:	2403ffd4 	addiu	v1,zero,-44
 9ac:	01030018 	mult	t0,v1
 9b0:	00001812 	mflo	v1
 9b4:	00e33821 	addu	a3,a3,v1
  xb += (long) (*tqmf_ptr) * (*h_ptr++);
 9b8:	8c48005c 	lw	t0,92(v0)
 9bc:	2403000c 	addiu	v1,zero,12
 9c0:	01030018 	mult	t0,v1
 9c4:	00004812 	mflo	t1
 9c8:	00c93021 	addu	a2,a2,t1
    m = -n;
  return m;
}

int
encode (int xin1, int xin2)
 9cc:	24420004 	addiu	v0,v0,4
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
 9d0:	3c030000 	lui	v1,0x0
 9d4:	2463005c 	addiu	v1,v1,92
  xb += (long) (*tqmf_ptr) * (*h_ptr++);

/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
  for (i = 0; i < 22; i++)
    *tqmf_ptr-- = *tqmf_ptr1--;
 9d8:	8c68fff8 	lw	t0,-8(v1)
 9dc:	00000000 	sll	zero,zero,0x0
 9e0:	ac680000 	sw	t0,0(v1)
 9e4:	2463fffc 	addiu	v1,v1,-4
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
  xb += (long) (*tqmf_ptr) * (*h_ptr++);

/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
  for (i = 0; i < 22; i++)
 9e8:	1462fffb 	bne	v1,v0,9d8 <encode+0xe4>
 9ec:	00c78021 	addu	s0,a2,a3
    *tqmf_ptr-- = *tqmf_ptr1--;
  *tqmf_ptr-- = xin1;
 9f0:	3c020000 	lui	v0,0x0
 9f4:	24430000 	addiu	v1,v0,0
 9f8:	ac640004 	sw	a0,4(v1)
  *tqmf_ptr = xin2;
 9fc:	ac450000 	sw	a1,0(v0)

/* scale outputs */
  xl = (xa + xb) >> 15;
 a00:	001083c3 	sra	s0,s0,0xf
 a04:	af900000 	sw	s0,0(gp)
  xh = (xa - xb) >> 15;
 a08:	00e63023 	subu	a2,a3,a2
 a0c:	000633c3 	sra	a2,a2,0xf
 a10:	af860000 	sw	a2,0(gp)
/* end of quadrature mirror filter code */

/* starting with lower sub band encoder */

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);
 a14:	3c130000 	lui	s3,0x0
 a18:	26640000 	addiu	a0,s3,0
 a1c:	3c120000 	lui	s2,0x0
 a20:	0c000000 	jal	0 <abs>
 a24:	26450000 	addiu	a1,s2,0
 a28:	af820000 	sw	v0,0(gp)

/* filtep - compute predictor output signal (pole section) */
  spl = filtep (rlt1, al1, rlt2, al2);
 a2c:	8f840000 	lw	a0,0(gp)
 a30:	8f850000 	lw	a1,0(gp)
 a34:	8f860000 	lw	a2,0(gp)
 a38:	8f870000 	lw	a3,0(gp)
 a3c:	0c000000 	jal	0 <abs>
 a40:	00408821 	addu	s1,v0,zero
 a44:	af820000 	sw	v0,0(gp)

/* compute the predictor output value in the lower sub_band encoder */
  sl = szl + spl;
 a48:	00512021 	addu	a0,v0,s1
 a4c:	af840000 	sw	a0,0(gp)
  el = xl - sl;
 a50:	02042023 	subu	a0,s0,a0
 a54:	af840000 	sw	a0,0(gp)

/* quantl: quantize the difference signal */
  il = quantl (el, detl);
 a58:	8f940000 	lw	s4,0(gp)
 a5c:	0c000000 	jal	0 <abs>
 a60:	02802821 	addu	a1,s4,zero
 a64:	af820000 	sw	v0,0(gp)

/* computes quantized difference signal */
/* for invqbl, truncate by 2 lsbs, so mode = 3 */
  dlt = ((long) detl * qq4_code4_table[il >> 2]) >> 15;
 a68:	00022083 	sra	a0,v0,0x2
 a6c:	00042080 	sll	a0,a0,0x2
 a70:	3c030000 	lui	v1,0x0
 a74:	24630000 	addiu	v1,v1,0
 a78:	00831821 	addu	v1,a0,v1
 a7c:	8c700000 	lw	s0,0(v1)
 a80:	00000000 	sll	zero,zero,0x0
 a84:	02900018 	mult	s4,s0
 a88:	00008012 	mflo	s0
 a8c:	001083c3 	sra	s0,s0,0xf
 a90:	af900000 	sw	s0,0(gp)

/* logscl: updates logarithmic quant. scale factor in low sub band */
  nbl = logscl (il, nbl);
 a94:	8f850000 	lw	a1,0(gp)
 a98:	0c000000 	jal	0 <abs>
 a9c:	00402021 	addu	a0,v0,zero
 aa0:	af820000 	sw	v0,0(gp)

/* scalel: compute the quantizer scale factor in the lower sub band */
/* calling parameters nbl and 8 (constant such that scalel can be scaleh) */
  detl = scalel (nbl, 8);
 aa4:	00402021 	addu	a0,v0,zero
 aa8:	0c000000 	jal	0 <abs>
 aac:	24050008 	addiu	a1,zero,8
 ab0:	af820000 	sw	v0,0(gp)

/* parrec - simple addition to compute recontructed signal for adaptive pred */
  plt = dlt + szl;
 ab4:	02118821 	addu	s1,s0,s1
 ab8:	af910000 	sw	s1,0(gp)

/* upzero: update zero section predictor coefficients (sixth order)*/
/* calling parameters: dlt, dlt1, dlt2, ..., dlt6 from dlt */
/*  bpli (linear_buffer in which all six values are delayed */
/* return params:      updated bpli, delayed dltx */
  upzero (dlt, delay_dltx, delay_bpl);
 abc:	02002021 	addu	a0,s0,zero
 ac0:	26450000 	addiu	a1,s2,0
 ac4:	0c000000 	jal	0 <abs>
 ac8:	26660000 	addiu	a2,s3,0

/* uppol2- update second predictor coefficient apl2 and delay it as al2 */
/* calling parameters: al1, al2, plt, plt1, plt2 */
  al2 = uppol2 (al1, al2, plt, plt1, plt2);
 acc:	8f900000 	lw	s0,0(gp)
 ad0:	8f920000 	lw	s2,0(gp)
 ad4:	8f910000 	lw	s1,0(gp)
 ad8:	8f820000 	lw	v0,0(gp)
 adc:	00000000 	sll	zero,zero,0x0
 ae0:	afa20010 	sw	v0,16(sp)
 ae4:	02002021 	addu	a0,s0,zero
 ae8:	8f850000 	lw	a1,0(gp)
 aec:	02403021 	addu	a2,s2,zero
 af0:	0c000000 	jal	0 <abs>
 af4:	02203821 	addu	a3,s1,zero
 af8:	af820000 	sw	v0,0(gp)

/* uppol1 :update first predictor coefficient apl1 and delay it as al1 */
/* calling parameters: al1, apl2, plt, plt1 */
  al1 = uppol1 (al1, al2, plt, plt1);
 afc:	02002021 	addu	a0,s0,zero
 b00:	00402821 	addu	a1,v0,zero
 b04:	02403021 	addu	a2,s2,zero
 b08:	0c000000 	jal	0 <abs>
 b0c:	02203821 	addu	a3,s1,zero
 b10:	af820000 	sw	v0,0(gp)

/* recons : compute recontructed signal for adaptive predictor */
  rlt = sl + dlt;
 b14:	8f820000 	lw	v0,0(gp)
 b18:	8f830000 	lw	v1,0(gp)
 b1c:	00000000 	sll	zero,zero,0x0
 b20:	00621021 	addu	v0,v1,v0
 b24:	af820000 	sw	v0,0(gp)

/* done with lower sub_band encoder; now implement delays for next time*/
  rlt2 = rlt1;
 b28:	8f830000 	lw	v1,0(gp)
 b2c:	00000000 	sll	zero,zero,0x0
 b30:	af830000 	sw	v1,0(gp)
  rlt1 = rlt;
 b34:	af820000 	sw	v0,0(gp)
  plt2 = plt1;
 b38:	af910000 	sw	s1,0(gp)
  plt1 = plt;
 b3c:	af920000 	sw	s2,0(gp)

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);
 b40:	3c040000 	lui	a0,0x0
 b44:	24840000 	addiu	a0,a0,0
 b48:	3c050000 	lui	a1,0x0
 b4c:	0c000000 	jal	0 <abs>
 b50:	24a50000 	addiu	a1,a1,0
 b54:	af820000 	sw	v0,0(gp)

  sph = filtep (rh1, ah1, rh2, ah2);
 b58:	8f840000 	lw	a0,0(gp)
 b5c:	8f850000 	lw	a1,0(gp)
 b60:	8f860000 	lw	a2,0(gp)
 b64:	8f870000 	lw	a3,0(gp)
 b68:	0c000000 	jal	0 <abs>
 b6c:	00408821 	addu	s1,v0,zero
 b70:	af820000 	sw	v0,0(gp)

/* predic: sh = sph + szh */
  sh = sph + szh;
 b74:	00511021 	addu	v0,v0,s1
 b78:	af820000 	sw	v0,0(gp)
/* subtra: eh = xh - sh */
  eh = xh - sh;
 b7c:	8f830000 	lw	v1,0(gp)
 b80:	00000000 	sll	zero,zero,0x0
 b84:	00621023 	subu	v0,v1,v0

/* quanth - quantization of difference signal for higher sub-band */
/* quanth: in-place for speed params: eh, deth (has init. value) */
  if (eh >= 0)
 b88:	04400004 	bltz	v0,b9c <encode+0x2a8>
 b8c:	af820000 	sw	v0,0(gp)
    {
      ih = 3;			/* 2,3 are pos codes */
 b90:	24030003 	addiu	v1,zero,3
 b94:	080002e9 	j	ba4 <encode+0x2b0>
 b98:	af830000 	sw	v1,0(gp)
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
 b9c:	24030001 	addiu	v1,zero,1
 ba0:	af830000 	sw	v1,0(gp)
    }
  decis = (564L * (long) deth) >> 12L;
 ba4:	8f830000 	lw	v1,0(gp)
 ba8:	00000000 	sll	zero,zero,0x0
 bac:	00032880 	sll	a1,v1,0x2
 bb0:	00032100 	sll	a0,v1,0x4
 bb4:	00a42021 	addu	a0,a1,a0
 bb8:	000428c0 	sll	a1,a0,0x3
 bbc:	00a42823 	subu	a1,a1,a0
 bc0:	00a32821 	addu	a1,a1,v1
 bc4:	00052880 	sll	a1,a1,0x2
 bc8:	00052b03 	sra	a1,a1,0xc
  if (abs (eh) > decis)
 bcc:	04410002 	bgez	v0,bd8 <encode+0x2e4>
 bd0:	00402021 	addu	a0,v0,zero
 bd4:	00022023 	negu	a0,v0
 bd8:	00a4202a 	slt	a0,a1,a0
 bdc:	10800005 	beqz	a0,bf4 <encode+0x300>
 be0:	00000000 	sll	zero,zero,0x0
    ih--;			/* mih = 2 case */
 be4:	8f820000 	lw	v0,0(gp)
 be8:	00000000 	sll	zero,zero,0x0
 bec:	2442ffff 	addiu	v0,v0,-1
 bf0:	af820000 	sw	v0,0(gp)

/* compute the quantized difference signal, higher sub-band*/
  dh = ((long) deth * qq2_code2_table[ih]) >> 15L;
 bf4:	8f840000 	lw	a0,0(gp)
 bf8:	00000000 	sll	zero,zero,0x0
 bfc:	00042880 	sll	a1,a0,0x2
 c00:	3c020000 	lui	v0,0x0
 c04:	24420000 	addiu	v0,v0,0
 c08:	00a21021 	addu	v0,a1,v0
 c0c:	8c500000 	lw	s0,0(v0)
 c10:	00000000 	sll	zero,zero,0x0
 c14:	00700018 	mult	v1,s0
 c18:	00008012 	mflo	s0
 c1c:	001083c3 	sra	s0,s0,0xf
 c20:	af900000 	sw	s0,0(gp)

/* logsch: update logarithmic quantizer scale factor in hi sub-band*/
  nbh = logsch (ih, nbh);
 c24:	8f850000 	lw	a1,0(gp)
 c28:	0c000000 	jal	0 <abs>
 c2c:	02308821 	addu	s1,s1,s0
 c30:	af820000 	sw	v0,0(gp)

/* note : scalel and scaleh use same code, different parameters */
  deth = scalel (nbh, 10);
 c34:	00402021 	addu	a0,v0,zero
 c38:	0c000000 	jal	0 <abs>
 c3c:	2405000a 	addiu	a1,zero,10
 c40:	af820000 	sw	v0,0(gp)

/* parrec - add pole predictor output to quantized diff. signal */
  ph = dh + szh;
 c44:	af910000 	sw	s1,0(gp)

/* upzero: update zero section predictor coefficients (sixth order) */
/* calling parameters: dh, dhi, bphi */
/* return params: updated bphi, delayed dhx */
  upzero (dh, delay_dhx, delay_bph);
 c48:	02002021 	addu	a0,s0,zero
 c4c:	3c050000 	lui	a1,0x0
 c50:	24a50000 	addiu	a1,a1,0
 c54:	3c060000 	lui	a2,0x0
 c58:	0c000000 	jal	0 <abs>
 c5c:	24c60000 	addiu	a2,a2,0

/* uppol2: update second predictor coef aph2 and delay as ah2 */
/* calling params: ah1, ah2, ph, ph1, ph2 */
  ah2 = uppol2 (ah1, ah2, ph, ph1, ph2);
 c60:	8f900000 	lw	s0,0(gp)
 c64:	8f920000 	lw	s2,0(gp)
 c68:	8f910000 	lw	s1,0(gp)
 c6c:	8f820000 	lw	v0,0(gp)
 c70:	00000000 	sll	zero,zero,0x0
 c74:	afa20010 	sw	v0,16(sp)
 c78:	02002021 	addu	a0,s0,zero
 c7c:	8f850000 	lw	a1,0(gp)
 c80:	02403021 	addu	a2,s2,zero
 c84:	0c000000 	jal	0 <abs>
 c88:	02203821 	addu	a3,s1,zero
 c8c:	af820000 	sw	v0,0(gp)

/* uppol1:  update first predictor coef. aph2 and delay it as ah1 */
  ah1 = uppol1 (ah1, ah2, ph, ph1);
 c90:	02002021 	addu	a0,s0,zero
 c94:	00402821 	addu	a1,v0,zero
 c98:	02403021 	addu	a2,s2,zero
 c9c:	0c000000 	jal	0 <abs>
 ca0:	02203821 	addu	a3,s1,zero
 ca4:	af820000 	sw	v0,0(gp)

/* recons for higher sub-band */
  yh = sh + dh;
 ca8:	8f820000 	lw	v0,0(gp)
 cac:	8f830000 	lw	v1,0(gp)
 cb0:	00000000 	sll	zero,zero,0x0
 cb4:	00621021 	addu	v0,v1,v0
 cb8:	af820000 	sw	v0,0(gp)

/* done with higher sub-band encoder, now Delay for next time */
  rh2 = rh1;
 cbc:	8f830000 	lw	v1,0(gp)
 cc0:	00000000 	sll	zero,zero,0x0
 cc4:	af830000 	sw	v1,0(gp)
  rh1 = yh;
 cc8:	af820000 	sw	v0,0(gp)
  ph2 = ph1;
 ccc:	af910000 	sw	s1,0(gp)
  ph1 = ph;
 cd0:	af920000 	sw	s2,0(gp)

/* multiplex ih and il to get signals together */
  return (il | (ih << 6));
 cd4:	8f830000 	lw	v1,0(gp)
 cd8:	00000000 	sll	zero,zero,0x0
 cdc:	00031980 	sll	v1,v1,0x6
}
 ce0:	8f820000 	lw	v0,0(gp)
 ce4:	00000000 	sll	zero,zero,0x0
 ce8:	00621025 	or	v0,v1,v0
 cec:	8fbf002c 	lw	ra,44(sp)
 cf0:	8fb40028 	lw	s4,40(sp)
 cf4:	8fb30024 	lw	s3,36(sp)
 cf8:	8fb20020 	lw	s2,32(sp)
 cfc:	8fb1001c 	lw	s1,28(sp)
 d00:	8fb00018 	lw	s0,24(sp)
 d04:	03e00008 	jr	ra
 d08:	27bd0030 	addiu	sp,sp,48

00000d0c <adpcm_main>:
  58, 60, 54, 55, 57
};

void
adpcm_main ()
{
 d0c:	27bdffd8 	addiu	sp,sp,-40
 d10:	afbf0024 	sw	ra,36(sp)
 d14:	afb30020 	sw	s3,32(sp)
 d18:	afb2001c 	sw	s2,28(sp)
 d1c:	afb10018 	sw	s1,24(sp)
  int i, j;

/* reset, initialize required memory */
  reset ();
 d20:	0c000000 	jal	0 <abs>
 d24:	afb00014 	sw	s0,20(sp)
 d28:	3c110000 	lui	s1,0x0
 d2c:	26310000 	addiu	s1,s1,0

  j = 10;

  for (i = 0; i < IN_END; i += 2)
 d30:	00008021 	addu	s0,zero,zero
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
 d34:	3c120000 	lui	s2,0x0
 d38:	26520000 	addiu	s2,s2,0
/* reset, initialize required memory */
  reset ();

  j = 10;

  for (i = 0; i < IN_END; i += 2)
 d3c:	24130064 	addiu	s3,zero,100
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
 d40:	8e240000 	lw	a0,0(s1)
 d44:	8e250004 	lw	a1,4(s1)
 d48:	0c000000 	jal	0 <abs>
 d4c:	26310008 	addiu	s1,s1,8
 d50:	00101fc2 	srl	v1,s0,0x1f
 d54:	00701821 	addu	v1,v1,s0
 d58:	00031843 	sra	v1,v1,0x1
 d5c:	00031880 	sll	v1,v1,0x2
 d60:	00721821 	addu	v1,v1,s2
/* reset, initialize required memory */
  reset ();

  j = 10;

  for (i = 0; i < IN_END; i += 2)
 d64:	26100002 	addiu	s0,s0,2
 d68:	1613fff5 	bne	s0,s3,d40 <adpcm_main+0x34>
 d6c:	ac620000 	sw	v0,0(v1)
 d70:	3c110000 	lui	s1,0x0
 d74:	26310000 	addiu	s1,s1,0
 d78:	00008021 	addu	s0,zero,zero
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
    {
      decode (compressed[i / 2]);
 d7c:	3c120000 	lui	s2,0x0
 d80:	26520000 	addiu	s2,s2,0

  for (i = 0; i < IN_END; i += 2)
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
 d84:	24130064 	addiu	s3,zero,100
    {
      decode (compressed[i / 2]);
 d88:	001017c2 	srl	v0,s0,0x1f
 d8c:	00501021 	addu	v0,v0,s0
 d90:	00021043 	sra	v0,v0,0x1
 d94:	00021080 	sll	v0,v0,0x2
 d98:	00521021 	addu	v0,v0,s2
 d9c:	8c440000 	lw	a0,0(v0)
 da0:	0c000000 	jal	0 <abs>
 da4:	26100002 	addiu	s0,s0,2
      result[i] = xout1;
 da8:	8f820000 	lw	v0,0(gp)
 dac:	00000000 	sll	zero,zero,0x0
 db0:	ae220000 	sw	v0,0(s1)
      result[i + 1] = xout2;
 db4:	8f820000 	lw	v0,0(gp)
 db8:	00000000 	sll	zero,zero,0x0
 dbc:	ae220004 	sw	v0,4(s1)

  for (i = 0; i < IN_END; i += 2)
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
 dc0:	1613fff1 	bne	s0,s3,d88 <adpcm_main+0x7c>
 dc4:	26310008 	addiu	s1,s1,8
    {
      decode (compressed[i / 2]);
      result[i] = xout1;
      result[i + 1] = xout2;
    }
}
 dc8:	8fbf0024 	lw	ra,36(sp)
 dcc:	8fb30020 	lw	s3,32(sp)
 dd0:	8fb2001c 	lw	s2,28(sp)
 dd4:	8fb10018 	lw	s1,24(sp)
 dd8:	8fb00014 	lw	s0,20(sp)
 ddc:	03e00008 	jr	ra
 de0:	27bd0028 	addiu	sp,sp,40

00000de4 <main>:

int
main ()
{
 de4:	27bdffe8 	addiu	sp,sp,-24
 de8:	afbf0014 	sw	ra,20(sp)
  int i;
  int main_result;

      main_result = 0;
      adpcm_main ();
 dec:	0c000000 	jal	0 <abs>
 df0:	afb00010 	sw	s0,16(sp)
 df4:	00001021 	addu	v0,zero,zero
main ()
{
  int i;
  int main_result;

      main_result = 0;
 df8:	00008021 	addu	s0,zero,zero
      result[i + 1] = xout2;
    }
}

int
main ()
 dfc:	3c070000 	lui	a3,0x0
 e00:	24e70000 	addiu	a3,a3,0
 e04:	3c060000 	lui	a2,0x0
 e08:	24c60000 	addiu	a2,a2,0
  int i;
  int main_result;

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
 e0c:	240500c8 	addiu	a1,zero,200
      result[i + 1] = xout2;
    }
}

int
main ()
 e10:	00e22021 	addu	a0,a3,v0
 e14:	00c21821 	addu	v1,a2,v0

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
	{
	  if (compressed[i] != test_compressed[i])
 e18:	8c840000 	lw	a0,0(a0)
 e1c:	8c630000 	lw	v1,0(v1)
 e20:	00000000 	sll	zero,zero,0x0
 e24:	10830002 	beq	a0,v1,e30 <main+0x4c>
 e28:	00000000 	sll	zero,zero,0x0
	    {
	      main_result = 1;
 e2c:	24100001 	addiu	s0,zero,1

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
	{
	  if (compressed[i] != test_compressed[i])
 e30:	24420004 	addiu	v0,v0,4
  int i;
  int main_result;

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
 e34:	1445fff7 	bne	v0,a1,e14 <main+0x30>
 e38:	00e22021 	addu	a0,a3,v0
 e3c:	00001021 	addu	v0,zero,zero
      result[i + 1] = xout2;
    }
}

int
main ()
 e40:	3c070000 	lui	a3,0x0
 e44:	24e70000 	addiu	a3,a3,0
 e48:	3c060000 	lui	a2,0x0
 e4c:	24c60000 	addiu	a2,a2,0
	  if (compressed[i] != test_compressed[i])
	    {
	      main_result = 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
 e50:	24050190 	addiu	a1,zero,400
      result[i + 1] = xout2;
    }
}

int
main ()
 e54:	00e22021 	addu	a0,a3,v0
 e58:	00c21821 	addu	v1,a2,v0
	      main_result = 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
	{
	  if (result[i] != test_result[i])
 e5c:	8c840000 	lw	a0,0(a0)
 e60:	8c630000 	lw	v1,0(v1)
 e64:	00000000 	sll	zero,zero,0x0
 e68:	10830002 	beq	a0,v1,e74 <main+0x90>
 e6c:	00000000 	sll	zero,zero,0x0
	    {
	      main_result = 1;
 e70:	24100001 	addiu	s0,zero,1
	      main_result = 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
	{
	  if (result[i] != test_result[i])
 e74:	24420004 	addiu	v0,v0,4
	  if (compressed[i] != test_compressed[i])
	    {
	      main_result = 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
 e78:	1445fff7 	bne	v0,a1,e58 <main+0x74>
 e7c:	00e22021 	addu	a0,a3,v0
	  if (result[i] != test_result[i])
	    {
	      main_result = 1;
	    }
	}
      printf ("%d\n", main_result);
 e80:	3c040000 	lui	a0,0x0
 e84:	24840000 	addiu	a0,a0,0
 e88:	0c000000 	jal	0 <abs>
 e8c:	02002821 	addu	a1,s0,zero
      return main_result;
    }
 e90:	02001021 	addu	v0,s0,zero
 e94:	8fbf0014 	lw	ra,20(sp)
 e98:	8fb00010 	lw	s0,16(sp)
 e9c:	03e00008 	jr	ra
 ea0:	27bd0018 	addiu	sp,sp,24

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
