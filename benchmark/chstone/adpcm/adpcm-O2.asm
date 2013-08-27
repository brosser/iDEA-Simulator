
adpcm.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <abs>:
/* put input samples in xin1 = first value, xin2 = second value */
/* returns il and ih stored together */

int
abs (int n)
{
       0:	04800003 	bltz	a0,10 <abs+0x10>
       4:	00801021 	addu	v0,a0,zero
  if (n >= 0)
    m = n;
  else
    m = -n;
  return m;
}
       8:	03e00008 	jr	ra
       c:	00000000 	sll	zero,zero,0x0
      10:	03e00008 	jr	ra
      14:	00041023 	negu	v0,a0

00000018 <reset>:
reset ()
{
  int i;

  detl = dec_detl = 32;		/* reset to min scale factor */
  deth = dec_deth = 8;
      18:	24020008 	addiu	v0,zero,8
void
reset ()
{
  int i;

  detl = dec_detl = 32;		/* reset to min scale factor */
      1c:	24030020 	addiu	v1,zero,32
      20:	3c0b0000 	lui	t3,0x0
      24:	3c0a0000 	lui	t2,0x0
      28:	3c090000 	lui	t1,0x0
      2c:	3c080000 	lui	t0,0x0
  deth = dec_deth = 8;
      30:	af820000 	sw	v0,0(gp)
      34:	af820000 	sw	v0,0(gp)
void
reset ()
{
  int i;

  detl = dec_detl = 32;		/* reset to min scale factor */
      38:	af830000 	sw	v1,0(gp)
      3c:	af830000 	sw	v1,0(gp)
  deth = dec_deth = 8;
  nbl = al1 = al2 = plt1 = plt2 = rlt1 = rlt2 = 0;
      40:	af800000 	sw	zero,0(gp)
      44:	af800000 	sw	zero,0(gp)
      48:	af800000 	sw	zero,0(gp)
      4c:	af800000 	sw	zero,0(gp)
      50:	af800000 	sw	zero,0(gp)
      54:	af800000 	sw	zero,0(gp)
      58:	af800000 	sw	zero,0(gp)
  nbh = ah1 = ah2 = ph1 = ph2 = rh1 = rh2 = 0;
      5c:	af800000 	sw	zero,0(gp)
      60:	af800000 	sw	zero,0(gp)
      64:	af800000 	sw	zero,0(gp)
      68:	af800000 	sw	zero,0(gp)
      6c:	af800000 	sw	zero,0(gp)
      70:	af800000 	sw	zero,0(gp)
      74:	af800000 	sw	zero,0(gp)
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
      78:	af800000 	sw	zero,0(gp)
      7c:	af800000 	sw	zero,0(gp)
      80:	af800000 	sw	zero,0(gp)
      84:	af800000 	sw	zero,0(gp)
      88:	af800000 	sw	zero,0(gp)
      8c:	af800000 	sw	zero,0(gp)
      90:	af800000 	sw	zero,0(gp)
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;
      94:	af800000 	sw	zero,0(gp)
      98:	af800000 	sw	zero,0(gp)
      9c:	af800000 	sw	zero,0(gp)
      a0:	af800000 	sw	zero,0(gp)
      a4:	af800000 	sw	zero,0(gp)
      a8:	af800000 	sw	zero,0(gp)
      ac:	af800000 	sw	zero,0(gp)
      b0:	00001021 	addu	v0,zero,zero
      b4:	256b0000 	addiu	t3,t3,0
      b8:	254a0000 	addiu	t2,t2,0
      bc:	25290000 	addiu	t1,t1,0
      c0:	25080000 	addiu	t0,t0,0

  for (i = 0; i < 6; i++)
      c4:	24070018 	addiu	a3,zero,24
}

/* clear all storage locations */

void
reset ()
      c8:	01623021 	addu	a2,t3,v0
      cc:	01422821 	addu	a1,t2,v0
      d0:	01222021 	addu	a0,t1,v0
      d4:	01021821 	addu	v1,t0,v0
  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
      delay_dhx[i] = 0;
      dec_del_dltx[i] = 0;
      dec_del_dhx[i] = 0;
      d8:	24420004 	addiu	v0,v0,4
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
      dc:	acc00000 	sw	zero,0(a2)
      delay_dhx[i] = 0;
      e0:	aca00000 	sw	zero,0(a1)
      dec_del_dltx[i] = 0;
      e4:	ac800000 	sw	zero,0(a0)
  nbl = al1 = al2 = plt1 = plt2 = rlt1 = rlt2 = 0;
  nbh = ah1 = ah2 = ph1 = ph2 = rh1 = rh2 = 0;
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
      e8:	1447fff7 	bne	v0,a3,c8 <reset+0xb0>
      ec:	ac600000 	sw	zero,0(v1)
      f0:	3c0b0000 	lui	t3,0x0
      f4:	3c0a0000 	lui	t2,0x0
      f8:	3c090000 	lui	t1,0x0
      fc:	3c080000 	lui	t0,0x0
     100:	00001021 	addu	v0,zero,zero
     104:	256b0000 	addiu	t3,t3,0
     108:	254a0000 	addiu	t2,t2,0
     10c:	25290000 	addiu	t1,t1,0
     110:	25080000 	addiu	t0,t0,0
      delay_dhx[i] = 0;
      dec_del_dltx[i] = 0;
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
     114:	24070018 	addiu	a3,zero,24
}

/* clear all storage locations */

void
reset ()
     118:	01623021 	addu	a2,t3,v0
     11c:	01422821 	addu	a1,t2,v0
     120:	01222021 	addu	a0,t1,v0
     124:	01021821 	addu	v1,t0,v0
  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
      delay_bph[i] = 0;
      dec_del_bpl[i] = 0;
      dec_del_bph[i] = 0;
     128:	24420004 	addiu	v0,v0,4
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
     12c:	acc00000 	sw	zero,0(a2)
      delay_bph[i] = 0;
     130:	aca00000 	sw	zero,0(a1)
      dec_del_bpl[i] = 0;
     134:	ac800000 	sw	zero,0(a0)
      delay_dhx[i] = 0;
      dec_del_dltx[i] = 0;
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
     138:	1447fff7 	bne	v0,a3,118 <reset+0x100>
     13c:	ac600000 	sw	zero,0(v1)
     140:	3c020000 	lui	v0,0x0
     144:	24420000 	addiu	v0,v0,0
}

/* clear all storage locations */

void
reset ()
     148:	24430060 	addiu	v1,v0,96
      dec_del_bpl[i] = 0;
      dec_del_bph[i] = 0;
    }

  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23
     14c:	ac400000 	sw	zero,0(v0)
     150:	24420004 	addiu	v0,v0,4
      delay_bph[i] = 0;
      dec_del_bpl[i] = 0;
      dec_del_bph[i] = 0;
    }

  for (i = 0; i < 24; i++)
     154:	1443fffd 	bne	v0,v1,14c <reset+0x134>
     158:	3c060000 	lui	a2,0x0
     15c:	3c070000 	lui	a3,0x0
     160:	00001021 	addu	v0,zero,zero
     164:	24e70000 	addiu	a3,a3,0
     168:	24c60000 	addiu	a2,a2,0
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
     16c:	2405002c 	addiu	a1,zero,44
}

/* clear all storage locations */

void
reset ()
     170:	00e22021 	addu	a0,a3,v0
     174:	00c21821 	addu	v1,a2,v0
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
      accumd[i] = 0;
     178:	24420004 	addiu	v0,v0,4
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
     17c:	ac800000 	sw	zero,0(a0)
    }

  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
     180:	1445fffb 	bne	v0,a1,170 <reset+0x158>
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
     190:	8ca60000 	lw	a2,0(a1)
     194:	8c820000 	lw	v0,0(a0)
     198:	00001821 	addu	v1,zero,zero
     19c:	00c20018 	mult	a2,v0
  for (i = 1; i < 6; i++)
     1a0:	24060014 	addiu	a2,zero,20
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
     1a4:	00001012 	mflo	v0

/* filtez - compute predictor output signal (zero section) */
/* input: bpl1-6 and dlt1-6, output: szl */

int
filtez (int *bpl, int *dlt)
     1a8:	00a34021 	addu	t0,a1,v1
     1ac:	00833821 	addu	a3,a0,v1
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     1b0:	8ce70004 	lw	a3,4(a3)
     1b4:	8d080004 	lw	t0,4(t0)
     1b8:	24630004 	addiu	v1,v1,4
     1bc:	01070018 	mult	t0,a3
     1c0:	00003812 	mflo	a3
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
     1c4:	1466fff8 	bne	v1,a2,1a8 <filtez+0x18>
     1c8:	00471021 	addu	v0,v0,a3
    zl += (long) (*bpl++) * (*dlt++);

  return ((int) (zl >> 14));	/* x2 here */
}
     1cc:	03e00008 	jr	ra
     1d0:	00021383 	sra	v0,v0,0xe

000001d4 <filtep>:
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     1d4:	00e60018 	mult	a3,a2
     1d8:	00003012 	mflo	a2
	...
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     1e4:	00a40018 	mult	a1,a0
     1e8:	00002012 	mflo	a0
/* filtep - compute predictor output signal (pole section) */
/* input rlt1-2 and al1-2, output spl */

int
filtep (int rlt1, int al1, int rlt2, int al2)
{
     1ec:	00c43021 	addu	a2,a2,a0
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
     1f0:	00061040 	sll	v0,a2,0x1
}
     1f4:	03e00008 	jr	ra
     1f8:	000213c3 	sra	v0,v0,0xf

000001fc <quantl>:
{
  int ril, mil;
  long int wd, decis;

/* abs of difference signal */
  wd = abs (el);
     1fc:	04800021 	bltz	a0,284 <quantl+0x88>
     200:	00803021 	addu	a2,a0,zero
     204:	3c020000 	lui	v0,0x0
     208:	24420000 	addiu	v0,v0,0
/* determine mil based on decision levels and detl gain */
  for (mil = 0; mil < 30; mil++)
     20c:	00001821 	addu	v1,zero,zero
     210:	08000089 	j	224 <quantl+0x28>
     214:	2407001e 	addiu	a3,zero,30
     218:	24630001 	addiu	v1,v1,1
     21c:	10670009 	beq	v1,a3,244 <quantl+0x48>
     220:	00000000 	sll	zero,zero,0x0
    {
      decis = (decis_levl[mil] * (long) detl) >> 15L;
     224:	8c480000 	lw	t0,0(v0)
     228:	00000000 	sll	zero,zero,0x0
     22c:	00a80018 	mult	a1,t0
     230:	00004012 	mflo	t0
     234:	000843c3 	sra	t0,t0,0xf
      if (wd <= decis)
     238:	0106402a 	slt	t0,t0,a2
     23c:	1500fff6 	bnez	t0,218 <quantl+0x1c>
     240:	24420004 	addiu	v0,v0,4
	break;
    }
/* if mil=30 then wd is less than all decision levels */
  if (el >= 0)
     244:	04800008 	bltz	a0,268 <quantl+0x6c>
     248:	00000000 	sll	zero,zero,0x0
    ril = quant26bt_pos[mil];
     24c:	3c020000 	lui	v0,0x0
     250:	24420000 	addiu	v0,v0,0
     254:	00031880 	sll	v1,v1,0x2
     258:	00621821 	addu	v1,v1,v0
     25c:	8c620000 	lw	v0,0(v1)
     260:	03e00008 	jr	ra
     264:	00000000 	sll	zero,zero,0x0
  else
    ril = quant26bt_neg[mil];
     268:	3c020000 	lui	v0,0x0
     26c:	24420000 	addiu	v0,v0,0
     270:	00031880 	sll	v1,v1,0x2
     274:	00621821 	addu	v1,v1,v0
     278:	8c620000 	lw	v0,0(v1)
  return (ril);
}
     27c:	03e00008 	jr	ra
     280:	00000000 	sll	zero,zero,0x0
{
  int ril, mil;
  long int wd, decis;

/* abs of difference signal */
  wd = abs (el);
     284:	08000081 	j	204 <quantl+0x8>
     288:	00043023 	negu	a2,a0

0000028c <logscl>:
int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
     28c:	00042083 	sra	a0,a0,0x2
     290:	3c030000 	lui	v1,0x0
     294:	24630000 	addiu	v1,v1,0
     298:	00042080 	sll	a0,a0,0x2

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     29c:	000511c0 	sll	v0,a1,0x7
  nbl = (int) wd + wl_code_table[il >> 2];
     2a0:	00832021 	addu	a0,a0,v1

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     2a4:	00451023 	subu	v0,v0,a1
  nbl = (int) wd + wl_code_table[il >> 2];
     2a8:	8c830000 	lw	v1,0(a0)

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     2ac:	000211c3 	sra	v0,v0,0x7
  nbl = (int) wd + wl_code_table[il >> 2];
     2b0:	00431021 	addu	v0,v0,v1
  if (nbl < 0)
     2b4:	04400005 	bltz	v0,2cc <logscl+0x40>
     2b8:	28434801 	slti	v1,v0,18433
    nbl = 0;
  if (nbl > 18432)
     2bc:	14600005 	bnez	v1,2d4 <logscl+0x48>
     2c0:	00000000 	sll	zero,zero,0x0
    nbl = 18432;
  return (nbl);
}
     2c4:	03e00008 	jr	ra
     2c8:	24024800 	addiu	v0,zero,18432
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
  if (nbl < 0)
    nbl = 0;
     2cc:	03e00008 	jr	ra
     2d0:	00001021 	addu	v0,zero,zero
     2d4:	03e00008 	jr	ra
     2d8:	00000000 	sll	zero,zero,0x0

000002dc <scalel>:

int
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
     2dc:	00041902 	srl	v1,a0,0x4
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     2e0:	3c020000 	lui	v0,0x0
     2e4:	24420000 	addiu	v0,v0,0
     2e8:	3063007c 	andi	v1,v1,0x7c
     2ec:	00621821 	addu	v1,v1,v0
     2f0:	24a50001 	addiu	a1,a1,1
     2f4:	8c620000 	lw	v0,0(v1)
int
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
     2f8:	000422c3 	sra	a0,a0,0xb
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     2fc:	00a42023 	subu	a0,a1,a0
     300:	00821007 	srav	v0,v0,a0
  return (wd3 << 3);
}
     304:	03e00008 	jr	ra
     308:	000210c0 	sll	v0,v0,0x3

0000030c <upzero>:
void
upzero (int dlt, int *dlti, int *bli)
{
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
     30c:	14800014 	bnez	a0,360 <upzero+0x54>
     310:	00001021 	addu	v0,zero,zero
    {
      for (i = 0; i < 6; i++)
     314:	24080006 	addiu	t0,zero,6
	{
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     318:	8cc30000 	lw	v1,0(a2)
{
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
    {
      for (i = 0; i < 6; i++)
     31c:	24420001 	addiu	v0,v0,1
	{
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     320:	00033a00 	sll	a3,v1,0x8
     324:	00e31823 	subu	v1,a3,v1
     328:	00031a03 	sra	v1,v1,0x8
     32c:	acc30000 	sw	v1,0(a2)
{
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
    {
      for (i = 0; i < 6; i++)
     330:	1448fff9 	bne	v0,t0,318 <upzero+0xc>
     334:	24c60004 	addiu	a2,a2,4
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
     338:	8ca70010 	lw	a3,16(a1)
  dlti[4] = dlti[3];
     33c:	8ca6000c 	lw	a2,12(a1)
  dlti[3] = dlti[2];
  dlti[1] = dlti[0];
     340:	8ca20000 	lw	v0,0(a1)
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
  dlti[4] = dlti[3];
  dlti[3] = dlti[2];
     344:	8ca30008 	lw	v1,8(a1)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
     348:	aca70014 	sw	a3,20(a1)
  dlti[4] = dlti[3];
     34c:	aca60010 	sw	a2,16(a1)
  dlti[3] = dlti[2];
     350:	aca3000c 	sw	v1,12(a1)
  dlti[1] = dlti[0];
     354:	aca20004 	sw	v0,4(a1)
  dlti[0] = dlt;
}
     358:	03e00008 	jr	ra
     35c:	aca40000 	sw	a0,0(a1)
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	}
    }
  else
    {
      for (i = 0; i < 6; i++)
     360:	080000e3 	j	38c <upzero+0x80>
     364:	24070018 	addiu	a3,zero,24
	{
	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     368:	8cc80000 	lw	t0,0(a2)
	  bli[i] = wd2 + wd3;
     36c:	24420004 	addiu	v0,v0,4
	{
	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     370:	00084a00 	sll	t1,t0,0x8
     374:	01284023 	subu	t0,t1,t0
     378:	00084203 	sra	t0,t0,0x8
	  bli[i] = wd2 + wd3;
     37c:	00681821 	addu	v1,v1,t0
     380:	acc30000 	sw	v1,0(a2)
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	}
    }
  else
    {
      for (i = 0; i < 6; i++)
     384:	1047ffec 	beq	v0,a3,338 <upzero+0x2c>
     388:	24c60004 	addiu	a2,a2,4

/* upzero - inputs: dlt, dlti[0-5], bli[0-5], outputs: updated bli[0-5] */
/* also implements delay of bli and update of dlti from dlt */

void
upzero (int dlt, int *dlti, int *bli)
     38c:	00a21821 	addu	v1,a1,v0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     390:	8c680000 	lw	t0,0(v1)
     394:	00000000 	sll	zero,zero,0x0
     398:	00880018 	mult	a0,t0
     39c:	00004012 	mflo	t0
     3a0:	0501fff1 	bgez	t0,368 <upzero+0x5c>
     3a4:	24030080 	addiu	v1,zero,128
	    wd2 = 128;
	  else
	    wd2 = -128;
     3a8:	080000da 	j	368 <upzero+0x5c>
     3ac:	2403ff80 	addiu	v1,zero,-128

000003b0 <uppol2>:
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
     3b0:	00e60018 	mult	a3,a2
     3b4:	00003812 	mflo	a3
     3b8:	04e00002 	bltz	a3,3c4 <uppol2+0x14>
     3bc:	00042080 	sll	a0,a0,0x2
    wd2 = -wd2;			/* check same sign */
     3c0:	00042023 	negu	a0,a0
  wd2 = wd2 >> 7;		/* gain of 1/128 */
  if ((long) plt * plt2 >= 0L)
     3c4:	8fa20010 	lw	v0,16(sp)
     3c8:	00000000 	sll	zero,zero,0x0
     3cc:	00460018 	mult	v0,a2
     3d0:	00003012 	mflo	a2
     3d4:	04c0000f 	bltz	a2,414 <uppol2+0x64>
     3d8:	000411c3 	sra	v0,a0,0x7
    {
      wd4 = wd2 + 128;		/* same sign case */
     3dc:	24420080 	addiu	v0,v0,128
    }
  else
    {
      wd4 = wd2 - 128;
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */
     3e0:	000519c0 	sll	v1,a1,0x7
     3e4:	00652823 	subu	a1,v1,a1
     3e8:	000529c3 	sra	a1,a1,0x7
     3ec:	00451021 	addu	v0,v0,a1

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
     3f0:	28433001 	slti	v1,v0,12289
     3f4:	10600005 	beqz	v1,40c <uppol2+0x5c>
     3f8:	2843d000 	slti	v1,v0,-12288
    apl2 = 12288;
  if (apl2 < -12288)
     3fc:	14600007 	bnez	v1,41c <uppol2+0x6c>
     400:	00000000 	sll	zero,zero,0x0
    apl2 = -12288;
  return (apl2);
}
     404:	03e00008 	jr	ra
     408:	00000000 	sll	zero,zero,0x0
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    apl2 = 12288;
     40c:	03e00008 	jr	ra
     410:	24023000 	addiu	v0,zero,12288
    {
      wd4 = wd2 + 128;		/* same sign case */
    }
  else
    {
      wd4 = wd2 - 128;
     414:	080000f8 	j	3e0 <uppol2+0x30>
     418:	2442ff80 	addiu	v0,v0,-128
  if (apl2 > 12288)
    apl2 = 12288;
  if (apl2 < -12288)
    apl2 = -12288;
  return (apl2);
}
     41c:	03e00008 	jr	ra
     420:	2402d000 	addiu	v0,zero,-12288

00000424 <decode>:

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
     424:	27bdffd0 	addiu	sp,sp,-48
     428:	afb1001c 	sw	s1,28(sp)
     42c:	afb00018 	sw	s0,24(sp)
  ih = input >> 6;

/* LOWER SUB_BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);
     430:	3c110000 	lui	s1,0x0
     434:	3c100000 	lui	s0,0x0
  const int *h_ptr;
  int *ac_ptr, *ac_ptr1, *ad_ptr, *ad_ptr1;

/* split transmitted word from input into ilr and ih */
  ilr = input & 0x3f;
  ih = input >> 6;
     438:	00041183 	sra	v0,a0,0x6

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
     43c:	afb20020 	sw	s2,32(sp)
  ih = input >> 6;

/* LOWER SUB_BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);
     440:	26250000 	addiu	a1,s1,0
  long int xa1, xa2;		/* qmf accumulators */
  const int *h_ptr;
  int *ac_ptr, *ac_ptr1, *ad_ptr, *ad_ptr1;

/* split transmitted word from input into ilr and ih */
  ilr = input & 0x3f;
     444:	3092003f 	andi	s2,a0,0x3f
  ih = input >> 6;

/* LOWER SUB_BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);
     448:	26040000 	addiu	a0,s0,0
  long int xa1, xa2;		/* qmf accumulators */
  const int *h_ptr;
  int *ac_ptr, *ac_ptr1, *ad_ptr, *ad_ptr1;

/* split transmitted word from input into ilr and ih */
  ilr = input & 0x3f;
     44c:	af920000 	sw	s2,0(gp)

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
     450:	afbf002c 	sw	ra,44(sp)
     454:	afb40028 	sw	s4,40(sp)
     458:	afb30024 	sw	s3,36(sp)
  ih = input >> 6;

/* LOWER SUB_BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);
     45c:	0c000000 	jal	0 <abs>
     460:	af820000 	sw	v0,0(gp)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     464:	8f830000 	lw	v1,0(gp)
     468:	8f880000 	lw	t0,0(gp)

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     46c:	8f850000 	lw	a1,0(gp)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     470:	01030018 	mult	t0,v1

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     474:	3c030000 	lui	v1,0x0
     478:	24630000 	addiu	v1,v1,0
     47c:	00052880 	sll	a1,a1,0x2
     480:	00a32821 	addu	a1,a1,v1
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
     484:	3c030000 	lui	v1,0x0
     488:	3252003c 	andi	s2,s2,0x3c
     48c:	24630000 	addiu	v1,v1,0
     490:	02431821 	addu	v1,s2,v1

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     494:	8ca60000 	lw	a2,0(a1)
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
     498:	8c670000 	lw	a3,0(v1)
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     49c:	8f850000 	lw	a1,0(gp)
     4a0:	8f830000 	lw	v1,0(gp)
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     4a4:	00004012 	mflo	t0
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
     4a8:	8f840000 	lw	a0,0(gp)
int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
     4ac:	3c090000 	lui	t1,0x0
     4b0:	25290000 	addiu	t1,t1,0
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     4b4:	00a30018 	mult	a1,v1

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     4b8:	8f830000 	lw	v1,0(gp)
  nbl = (int) wd + wl_code_table[il >> 2];
     4bc:	02499021 	addu	s2,s2,t1

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     4c0:	000349c0 	sll	t1,v1,0x7
     4c4:	01231823 	subu	v1,t1,v1
  nbl = (int) wd + wl_code_table[il >> 2];
     4c8:	8e490000 	lw	t1,0(s2)

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     4cc:	000319c3 	sra	v1,v1,0x7
  nbl = (int) wd + wl_code_table[il >> 2];
     4d0:	00691821 	addu	v1,v1,t1
  ih = input >> 6;

/* LOWER SUB_BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);
     4d4:	af820000 	sw	v0,0(gp)
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     4d8:	00002812 	mflo	a1
  ih = input >> 6;

/* LOWER SUB_BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);
     4dc:	01054021 	addu	t0,t0,a1
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
     4e0:	00084040 	sll	t0,t0,0x1

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     4e4:	00860018 	mult	a0,a2
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
     4e8:	000843c3 	sra	t0,t0,0xf
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);

/* filtep: compute predictor output signal for pole section */
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;
     4ec:	00482821 	addu	a1,v0,t0
     4f0:	af850000 	sw	a1,0(gp)

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);

/* filtep: compute predictor output signal for pole section */
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);
     4f4:	af880000 	sw	t0,0(gp)

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     4f8:	00003012 	mflo	a2
     4fc:	000633c3 	sra	a2,a2,0xf

  rl = dl + dec_sl;
     500:	00a62821 	addu	a1,a1,a2
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
     504:	00870018 	mult	a0,a3

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     508:	af860000 	sw	a2,0(gp)

  rl = dl + dec_sl;
     50c:	af850000 	sw	a1,0(gp)
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
     510:	00002012 	mflo	a0
     514:	000423c3 	sra	a0,a0,0xf
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
  if (nbl < 0)
     518:	046000ef 	bltz	v1,8d8 <decode+0x4b4>
     51c:	af840000 	sw	a0,0(gp)
    nbl = 0;
  if (nbl > 18432)
     520:	28654801 	slti	a1,v1,18433
     524:	14a000ee 	bnez	a1,8e0 <decode+0x4bc>
     528:	00032983 	sra	a1,v1,0x6
     52c:	00003821 	addu	a3,zero,zero
     530:	00002821 	addu	a1,zero,zero
    nbl = 18432;
     534:	24034800 	addiu	v1,zero,18432
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     538:	3c130000 	lui	s3,0x0
     53c:	00052880 	sll	a1,a1,0x2
     540:	26730000 	addiu	s3,s3,0
     544:	02652821 	addu	a1,s3,a1
     548:	8ca50000 	lw	a1,0(a1)
/* scalel: computes quantizer scale factor in the lower sub band */
  dec_detl = scalel (dec_nbl, 8);

/* parrec - add pole predictor output to quantized diff. signal */
/* for partially reconstructed signal */
  dec_plt = dec_dlt + dec_szl;
     54c:	00441021 	addu	v0,v0,a0
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     550:	00e53807 	srav	a3,a1,a3
  return (wd3 << 3);
     554:	000738c0 	sll	a3,a3,0x3
/* parrec - add pole predictor output to quantized diff. signal */
/* for partially reconstructed signal */
  dec_plt = dec_dlt + dec_szl;

/* upzero: update zero section predictor coefficients */
  upzero (dec_dlt, dec_del_dltx, dec_del_bpl);
     558:	26250000 	addiu	a1,s1,0
     55c:	26060000 	addiu	a2,s0,0
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;

  rl = dl + dec_sl;

/* logscl: quantizer scale factor adaptation in the lower sub-band */
  dec_nbl = logscl (ilr, dec_nbl);
     560:	af830000 	sw	v1,0(gp)

/* scalel: computes quantizer scale factor in the lower sub band */
  dec_detl = scalel (dec_nbl, 8);
     564:	af870000 	sw	a3,0(gp)
/* parrec - add pole predictor output to quantized diff. signal */
/* for partially reconstructed signal */
  dec_plt = dec_dlt + dec_szl;

/* upzero: update zero section predictor coefficients */
  upzero (dec_dlt, dec_del_dltx, dec_del_bpl);
     568:	0c000000 	jal	0 <abs>
     56c:	af820000 	sw	v0,0(gp)

/* uppol2: update second predictor coefficient apl2 and delay it as al2 */
  dec_al2 = uppol2 (dec_al1, dec_al2, dec_plt, dec_plt1, dec_plt2);
     570:	8f920000 	lw	s2,0(gp)
     574:	8f900000 	lw	s0,0(gp)
     578:	8f910000 	lw	s1,0(gp)
     57c:	8f820000 	lw	v0,0(gp)
     580:	8f850000 	lw	a1,0(gp)
     584:	02402021 	addu	a0,s2,zero
     588:	afa20010 	sw	v0,16(sp)
     58c:	02003021 	addu	a2,s0,zero
     590:	0c000000 	jal	0 <abs>
     594:	02203821 	addu	a3,s1,zero
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
     598:	02300018 	mult	s1,s0
int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
     59c:	00121a00 	sll	v1,s2,0x8
     5a0:	00721823 	subu	v1,v1,s2

/* upzero: update zero section predictor coefficients */
  upzero (dec_dlt, dec_del_dltx, dec_del_bpl);

/* uppol2: update second predictor coefficient apl2 and delay it as al2 */
  dec_al2 = uppol2 (dec_al1, dec_al2, dec_plt, dec_plt1, dec_plt2);
     5a4:	af820000 	sw	v0,0(gp)
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
     5a8:	00002012 	mflo	a0
     5ac:	048000d3 	bltz	a0,8fc <decode+0x4d8>
     5b0:	00031a03 	sra	v1,v1,0x8
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
     5b4:	246300c0 	addiu	v1,v1,192
  else
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
     5b8:	24043c00 	addiu	a0,zero,15360
     5bc:	00821023 	subu	v0,a0,v0
     5c0:	0043202a 	slt	a0,v0,v1
     5c4:	10800002 	beqz	a0,5d0 <decode+0x1ac>
     5c8:	00000000 	sll	zero,zero,0x0
     5cc:	00401821 	addu	v1,v0,zero
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
     5d0:	00021023 	negu	v0,v0

/* uppol2: update second predictor coefficient apl2 and delay it as al2 */
  dec_al2 = uppol2 (dec_al1, dec_al2, dec_plt, dec_plt1, dec_plt2);

/* uppol1: update first predictor coef. (pole setion) */
  dec_al1 = uppol1 (dec_al1, dec_al2, dec_plt, dec_plt1);
     5d4:	0062202a 	slt	a0,v1,v0
     5d8:	10800002 	beqz	a0,5e4 <decode+0x1c0>
     5dc:	00000000 	sll	zero,zero,0x0
     5e0:	00401821 	addu	v1,v0,zero

/* recons : compute recontructed signal for adaptive predictor */
  dec_rlt = dec_sl + dec_dlt;
     5e4:	8f840000 	lw	a0,0(gp)
     5e8:	8f820000 	lw	v0,0(gp)

/* uppol2: update second predictor coefficient apl2 and delay it as al2 */
  dec_al2 = uppol2 (dec_al1, dec_al2, dec_plt, dec_plt1, dec_plt2);

/* uppol1: update first predictor coef. (pole setion) */
  dec_al1 = uppol1 (dec_al1, dec_al2, dec_plt, dec_plt1);
     5ec:	af830000 	sw	v1,0(gp)
  dec_plt1 = dec_plt;

/* HIGH SUB-BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);
     5f0:	3c120000 	lui	s2,0x0

/* recons : compute recontructed signal for adaptive predictor */
  dec_rlt = dec_sl + dec_dlt;

/* done with lower sub band decoder, implement delays for next time */
  dec_rlt2 = dec_rlt1;
     5f4:	8f830000 	lw	v1,0(gp)
  dec_plt1 = dec_plt;

/* HIGH SUB-BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);
     5f8:	3c140000 	lui	s4,0x0

/* uppol1: update first predictor coef. (pole setion) */
  dec_al1 = uppol1 (dec_al1, dec_al2, dec_plt, dec_plt1);

/* recons : compute recontructed signal for adaptive predictor */
  dec_rlt = dec_sl + dec_dlt;
     5fc:	00821021 	addu	v0,a0,v0
  dec_plt1 = dec_plt;

/* HIGH SUB-BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);
     600:	26850000 	addiu	a1,s4,0
     604:	26440000 	addiu	a0,s2,0

/* recons : compute recontructed signal for adaptive predictor */
  dec_rlt = dec_sl + dec_dlt;

/* done with lower sub band decoder, implement delays for next time */
  dec_rlt2 = dec_rlt1;
     608:	af830000 	sw	v1,0(gp)

/* uppol1: update first predictor coef. (pole setion) */
  dec_al1 = uppol1 (dec_al1, dec_al2, dec_plt, dec_plt1);

/* recons : compute recontructed signal for adaptive predictor */
  dec_rlt = dec_sl + dec_dlt;
     60c:	af820000 	sw	v0,0(gp)

/* done with lower sub band decoder, implement delays for next time */
  dec_rlt2 = dec_rlt1;
  dec_rlt1 = dec_rlt;
     610:	af820000 	sw	v0,0(gp)
  dec_plt2 = dec_plt1;
     614:	af910000 	sw	s1,0(gp)
  dec_plt1 = dec_plt;

/* HIGH SUB-BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);
     618:	0c000000 	jal	0 <abs>
     61c:	af900000 	sw	s0,0(gp)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     620:	8f830000 	lw	v1,0(gp)
     624:	8f860000 	lw	a2,0(gp)

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
     628:	8f850000 	lw	a1,0(gp)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     62c:	00c30018 	mult	a2,v1
int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
     630:	3c070000 	lui	a3,0x0

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
     634:	3c030000 	lui	v1,0x0
     638:	00052880 	sll	a1,a1,0x2
     63c:	24630000 	addiu	v1,v1,0
int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
     640:	24e70000 	addiu	a3,a3,0

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
     644:	00a31821 	addu	v1,a1,v1
int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
     648:	00a73821 	addu	a3,a1,a3
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     64c:	8f890000 	lw	t1,0(gp)
     650:	8f850000 	lw	a1,0(gp)

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
     654:	8c640000 	lw	a0,0(v1)

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
     658:	8f830000 	lw	v1,0(gp)
  nbh = wd + wh_code_table[ih];
     65c:	8ce70000 	lw	a3,0(a3)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     660:	00003012 	mflo	a2

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
     664:	000341c0 	sll	t0,v1,0x7
     668:	01031823 	subu	v1,t0,v1
     66c:	000319c3 	sra	v1,v1,0x7
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     670:	01250018 	mult	t1,a1
int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
     674:	00671821 	addu	v1,v1,a3

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
     678:	8f870000 	lw	a3,0(gp)
  dec_plt1 = dec_plt;

/* HIGH SUB-BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);
     67c:	af820000 	sw	v0,0(gp)
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     680:	00002812 	mflo	a1
  dec_plt1 = dec_plt;

/* HIGH SUB-BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);
     684:	00c52821 	addu	a1,a2,a1
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
     688:	00052840 	sll	a1,a1,0x1

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
     68c:	00870018 	mult	a0,a3
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
     690:	00052bc3 	sra	a1,a1,0xf

/* filtep: compute predictor output signal for pole section */
  dec_sph = filtep (dec_rh1, dec_ah1, dec_rh2, dec_ah2);

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;
     694:	00453021 	addu	a2,v0,a1

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);

/* filtep: compute predictor output signal for pole section */
  dec_sph = filtep (dec_rh1, dec_ah1, dec_rh2, dec_ah2);
     698:	af850000 	sw	a1,0(gp)

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;
     69c:	af860000 	sw	a2,0(gp)

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
     6a0:	00002012 	mflo	a0
     6a4:	000423c3 	sra	a0,a0,0xf
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
  if (nbh < 0)
     6a8:	04600084 	bltz	v1,8bc <decode+0x498>
     6ac:	af840000 	sw	a0,0(gp)
    nbh = 0;
  if (nbh > 22528)
     6b0:	28655801 	slti	a1,v1,22529
     6b4:	14a00083 	bnez	a1,8c4 <decode+0x4a0>
     6b8:	00032983 	sra	a1,v1,0x6
     6bc:	00003821 	addu	a3,zero,zero
     6c0:	00002821 	addu	a1,zero,zero
    nbh = 22528;
     6c4:	24035800 	addiu	v1,zero,22528
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     6c8:	00052880 	sll	a1,a1,0x2
     6cc:	02659821 	addu	s3,s3,a1
     6d0:	8e650000 	lw	a1,0(s3)

/* scalel: compute the quantizer scale factor in the higher sub band */
  dec_deth = scalel (dec_nbh, 10);

/* parrec: compute partially recontructed signal */
  dec_ph = dec_dh + dec_szh;
     6d4:	00441021 	addu	v0,v0,a0
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     6d8:	00e53807 	srav	a3,a1,a3
  return (wd3 << 3);
     6dc:	000738c0 	sll	a3,a3,0x3

/* parrec: compute partially recontructed signal */
  dec_ph = dec_dh + dec_szh;

/* upzero: update zero section predictor coefficients */
  upzero (dec_dh, dec_del_dhx, dec_del_bph);
     6e0:	26460000 	addiu	a2,s2,0
     6e4:	26850000 	addiu	a1,s4,0

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;

/* logsch: update logarithmic quantizer scale factor in hi sub band */
  dec_nbh = logsch (ih, dec_nbh);
     6e8:	af830000 	sw	v1,0(gp)

/* scalel: compute the quantizer scale factor in the higher sub band */
  dec_deth = scalel (dec_nbh, 10);
     6ec:	af870000 	sw	a3,0(gp)

/* parrec: compute partially recontructed signal */
  dec_ph = dec_dh + dec_szh;

/* upzero: update zero section predictor coefficients */
  upzero (dec_dh, dec_del_dhx, dec_del_bph);
     6f0:	0c000000 	jal	0 <abs>
     6f4:	af820000 	sw	v0,0(gp)

/* uppol2: update second predictor coefficient aph2 and delay it as ah2 */
  dec_ah2 = uppol2 (dec_ah1, dec_ah2, dec_ph, dec_ph1, dec_ph2);
     6f8:	8f920000 	lw	s2,0(gp)
     6fc:	8f900000 	lw	s0,0(gp)
     700:	8f910000 	lw	s1,0(gp)
     704:	8f820000 	lw	v0,0(gp)
     708:	8f850000 	lw	a1,0(gp)
     70c:	02402021 	addu	a0,s2,zero
     710:	afa20010 	sw	v0,16(sp)
     714:	02003021 	addu	a2,s0,zero
     718:	0c000000 	jal	0 <abs>
     71c:	02203821 	addu	a3,s1,zero
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
     720:	02300018 	mult	s1,s0
int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
     724:	00121a00 	sll	v1,s2,0x8
     728:	00729023 	subu	s2,v1,s2

/* upzero: update zero section predictor coefficients */
  upzero (dec_dh, dec_del_dhx, dec_del_bph);

/* uppol2: update second predictor coefficient aph2 and delay it as ah2 */
  dec_ah2 = uppol2 (dec_ah1, dec_ah2, dec_ph, dec_ph1, dec_ph2);
     72c:	af820000 	sw	v0,0(gp)
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
     730:	00001812 	mflo	v1
     734:	0460006f 	bltz	v1,8f4 <decode+0x4d0>
     738:	00129203 	sra	s2,s2,0x8
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
     73c:	265200c0 	addiu	s2,s2,192
  else
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
     740:	24033c00 	addiu	v1,zero,15360
     744:	00621023 	subu	v0,v1,v0
     748:	0052182a 	slt	v1,v0,s2
     74c:	10600002 	beqz	v1,758 <decode+0x334>
     750:	00000000 	sll	zero,zero,0x0
     754:	00409021 	addu	s2,v0,zero
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
     758:	00021023 	negu	v0,v0

/* uppol2: update second predictor coefficient aph2 and delay it as ah2 */
  dec_ah2 = uppol2 (dec_ah1, dec_ah2, dec_ph, dec_ph1, dec_ph2);

/* uppol1: update first predictor coef. (pole setion) */
  dec_ah1 = uppol1 (dec_ah1, dec_ah2, dec_ph, dec_ph1);
     75c:	0242182a 	slt	v1,s2,v0
     760:	10600002 	beqz	v1,76c <decode+0x348>
     764:	00000000 	sll	zero,zero,0x0
     768:	00409021 	addu	s2,v0,zero

/* recons : compute recontructed signal for adaptive predictor */
  rh = dec_sh + dec_dh;
     76c:	8f820000 	lw	v0,0(gp)
     770:	8f830000 	lw	v1,0(gp)
  dec_ph1 = dec_ph;

/* end of higher sub_band decoder */

/* end with receive quadrature mirror filters */
  xd = rl - rh;
     774:	8f8f0000 	lw	t7,0(gp)

/* uppol1: update first predictor coef. (pole setion) */
  dec_ah1 = uppol1 (dec_ah1, dec_ah2, dec_ph, dec_ph1);

/* recons : compute recontructed signal for adaptive predictor */
  rh = dec_sh + dec_dh;
     778:	00621821 	addu	v1,v1,v0

/* end of higher sub_band decoder */

/* end with receive quadrature mirror filters */
  xd = rl - rh;
  xs = rl + rh;
     77c:	006f7021 	addu	t6,v1,t7
/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
     780:	000e1080 	sll	v0,t6,0x2
     784:	000e4900 	sll	t1,t6,0x4
}

/* decode function, result in xout1 and xout2 */

void
decode (int input)
     788:	3c0c0000 	lui	t4,0x0
  dec_ph1 = dec_ph;

/* end of higher sub_band decoder */

/* end with receive quadrature mirror filters */
  xd = rl - rh;
     78c:	01e37823 	subu	t7,t7,v1
}

/* decode function, result in xout1 and xout2 */

void
decode (int input)
     790:	258c0000 	addiu	t4,t4,0
/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
     794:	01224823 	subu	t1,t1,v0

/* recons : compute recontructed signal for adaptive predictor */
  rh = dec_sh + dec_dh;

/* done with high band decode, implementing delays for next time here */
  dec_rh2 = dec_rh1;
     798:	8f850000 	lw	a1,0(gp)
  xd = rl - rh;
  xs = rl + rh;

/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
     79c:	3c180000 	lui	t8,0x0
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
     7a0:	000f2080 	sll	a0,t7,0x2
     7a4:	000f4100 	sll	t0,t7,0x4
  xa2 = (long) xs *(*h_ptr++);
     7a8:	01c94823 	subu	t1,t6,t1
}

/* decode function, result in xout1 and xout2 */

void
decode (int input)
     7ac:	25820028 	addiu	v0,t4,40
  xd = rl - rh;
  xs = rl + rh;

/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
     7b0:	27190000 	addiu	t9,t8,0

/* uppol1: update first predictor coef. (pole setion) */
  dec_ah1 = uppol1 (dec_ah1, dec_ah2, dec_ph, dec_ph1);

/* recons : compute recontructed signal for adaptive predictor */
  rh = dec_sh + dec_dh;
     7b4:	af830000 	sw	v1,0(gp)

/* done with high band decode, implementing delays for next time here */
  dec_rh2 = dec_rh1;
  dec_rh1 = rh;
     7b8:	af830000 	sw	v1,0(gp)
/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
     7bc:	3c030000 	lui	v1,0x0

/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
     7c0:	01044023 	subu	t0,t0,a0

/* uppol2: update second predictor coefficient aph2 and delay it as ah2 */
  dec_ah2 = uppol2 (dec_ah1, dec_ah2, dec_ph, dec_ph1, dec_ph2);

/* uppol1: update first predictor coef. (pole setion) */
  dec_ah1 = uppol1 (dec_ah1, dec_ah2, dec_ph, dec_ph1);
     7c4:	af920000 	sw	s2,0(gp)

/* recons : compute recontructed signal for adaptive predictor */
  rh = dec_sh + dec_dh;

/* done with high band decode, implementing delays for next time here */
  dec_rh2 = dec_rh1;
     7c8:	af850000 	sw	a1,0(gp)
  dec_rh1 = rh;
  dec_ph2 = dec_ph1;
     7cc:	af910000 	sw	s1,0(gp)
  dec_ph1 = dec_ph;
     7d0:	af900000 	sw	s0,0(gp)

/* end of higher sub_band decoder */

/* end with receive quadrature mirror filters */
  xd = rl - rh;
     7d4:	af8f0000 	sw	t7,0(gp)
  xs = rl + rh;
     7d8:	af8e0000 	sw	t6,0(gp)
/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
     7dc:	00094880 	sll	t1,t1,0x2
}

/* decode function, result in xout1 and xout2 */

void
decode (int input)
     7e0:	00406821 	addu	t5,v0,zero
  xs = rl + rh;

/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
     7e4:	01802021 	addu	a0,t4,zero
  xd = rl - rh;
  xs = rl + rh;

/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
     7e8:	03203821 	addu	a3,t9,zero
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
     7ec:	24630008 	addiu	v1,v1,8
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
     7f0:	8c6a0000 	lw	t2,0(v1)
     7f4:	8ce50000 	lw	a1,0(a3)
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
     7f8:	8c6b0004 	lw	t3,4(v1)
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
     7fc:	00aa0018 	mult	a1,t2
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
     800:	8c860000 	lw	a2,0(a0)
     804:	24840004 	addiu	a0,a0,4
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
     808:	24e70004 	addiu	a3,a3,4
}

/* decode function, result in xout1 and xout2 */

void
decode (int input)
     80c:	24630008 	addiu	v1,v1,8
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
     810:	00005012 	mflo	t2
     814:	010a4021 	addu	t0,t0,t2
     818:	00000000 	sll	zero,zero,0x0
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
     81c:	00cb0018 	mult	a2,t3
     820:	00005812 	mflo	t3
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
     824:	148dfff2 	bne	a0,t5,7f0 <decode+0x3cc>
     828:	012b4821 	addu	t1,t1,t3
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
  xa2 += (long) (*ad_ptr) * (*h_ptr++);
     82c:	8d840028 	lw	a0,40(t4)
     830:	2403000c 	addiu	v1,zero,12
     834:	00830018 	mult	a0,v1
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
     838:	8f270028 	lw	a3,40(t9)
     83c:	240affd4 	addiu	t2,zero,-44
/* scale by 2^14 */
  xout1 = xa1 >> 14;
  xout2 = xa2 >> 14;

/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
     840:	3c030000 	lui	v1,0x0
     844:	24630024 	addiu	v1,v1,36
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
  xa2 += (long) (*ad_ptr) * (*h_ptr++);
     848:	00002012 	mflo	a0
     84c:	01242021 	addu	a0,t1,a0

/* scale by 2^14 */
  xout1 = xa1 >> 14;
  xout2 = xa2 >> 14;
     850:	00042383 	sra	a0,a0,0xe
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
     854:	00ea0018 	mult	a3,t2
  xa2 += (long) (*ad_ptr) * (*h_ptr++);

/* scale by 2^14 */
  xout1 = xa1 >> 14;
  xout2 = xa2 >> 14;
     858:	af840000 	sw	a0,0(gp)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
     85c:	00003812 	mflo	a3
     860:	01074021 	addu	t0,t0,a3
  xa2 += (long) (*ad_ptr) * (*h_ptr++);

/* scale by 2^14 */
  xout1 = xa1 >> 14;
     864:	00084383 	sra	t0,t0,0xe
     868:	0800021f 	j	87c <decode+0x458>
     86c:	af880000 	sw	t0,0(gp)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
     870:	8c650000 	lw	a1,0(v1)
     874:	8c46fffc 	lw	a2,-4(v0)
     878:	00000000 	sll	zero,zero,0x0
      *ad_ptr-- = *ad_ptr1--;
     87c:	ac460000 	sw	a2,0(v0)
     880:	2442fffc 	addiu	v0,v0,-4
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
     884:	ac650004 	sw	a1,4(v1)
  xout2 = xa2 >> 14;

/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
     888:	144cfff9 	bne	v0,t4,870 <decode+0x44c>
     88c:	2463fffc 	addiu	v1,v1,-4
      *ac_ptr-- = *ac_ptr1--;
      *ad_ptr-- = *ad_ptr1--;
    }
  *ac_ptr = xd;
  *ad_ptr = xs;
}
     890:	8fbf002c 	lw	ra,44(sp)
    {
      *ac_ptr-- = *ac_ptr1--;
      *ad_ptr-- = *ad_ptr1--;
    }
  *ac_ptr = xd;
  *ad_ptr = xs;
     894:	3c020000 	lui	v0,0x0
}
     898:	8fb40028 	lw	s4,40(sp)
     89c:	8fb30024 	lw	s3,36(sp)
     8a0:	8fb20020 	lw	s2,32(sp)
     8a4:	8fb1001c 	lw	s1,28(sp)
     8a8:	8fb00018 	lw	s0,24(sp)
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
      *ad_ptr-- = *ad_ptr1--;
    }
  *ac_ptr = xd;
     8ac:	af0f0000 	sw	t7,0(t8)
  *ad_ptr = xs;
     8b0:	ac4e0000 	sw	t6,0(v0)
}
     8b4:	03e00008 	jr	ra
     8b8:	27bd0030 	addiu	sp,sp,48
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
  if (nbh < 0)
    nbh = 0;
     8bc:	00001821 	addu	v1,zero,zero
  if (nbh > 22528)
     8c0:	00032983 	sra	a1,v1,0x6
     8c4:	000332c3 	sra	a2,v1,0xb
     8c8:	2407000b 	addiu	a3,zero,11
     8cc:	30a5001f 	andi	a1,a1,0x1f
     8d0:	080001b2 	j	6c8 <decode+0x2a4>
     8d4:	00e63823 	subu	a3,a3,a2
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
  if (nbl < 0)
    nbl = 0;
     8d8:	00001821 	addu	v1,zero,zero
  if (nbl > 18432)
     8dc:	00032983 	sra	a1,v1,0x6
     8e0:	000332c3 	sra	a2,v1,0xb
     8e4:	24070009 	addiu	a3,zero,9
     8e8:	30a5001f 	andi	a1,a1,0x1f
     8ec:	0800014e 	j	538 <decode+0x114>
     8f0:	00e63823 	subu	a3,a3,a2
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    }
  else
    {
      apl1 = (int) wd2 - 192;
     8f4:	080001d0 	j	740 <decode+0x31c>
     8f8:	2652ff40 	addiu	s2,s2,-192
     8fc:	0800016e 	j	5b8 <decode+0x194>
     900:	2463ff40 	addiu	v1,v1,-192

00000904 <encode>:
  int decis;

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
     904:	3c030000 	lui	v1,0x0
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
     908:	24620000 	addiu	v0,v1,0
     90c:	8c460004 	lw	a2,4(v0)
  int decis;

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
     910:	8c670000 	lw	a3,0(v1)
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
     914:	00064080 	sll	t0,a2,0x2
     918:	00064900 	sll	t1,a2,0x4
     91c:	01284823 	subu	t1,t1,t0
  return m;
}

int
encode (int xin1, int xin2)
{
     920:	27bdffd0 	addiu	sp,sp,-48
  int decis;

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
     924:	00074080 	sll	t0,a3,0x2
     928:	00075100 	sll	t2,a3,0x4
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
     92c:	00c94823 	subu	t1,a2,t1
  return m;
}

int
encode (int xin1, int xin2)
{
     930:	00803821 	addu	a3,a0,zero
     934:	00a03021 	addu	a2,a1,zero

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
     938:	3c040000 	lui	a0,0x0
     93c:	3c050000 	lui	a1,0x0
  return m;
}

int
encode (int xin1, int xin2)
{
     940:	afbf002c 	sw	ra,44(sp)
     944:	afb40028 	sw	s4,40(sp)
     948:	afb30024 	sw	s3,36(sp)
     94c:	afb20020 	sw	s2,32(sp)
     950:	afb1001c 	sw	s1,28(sp)
     954:	afb00018 	sw	s0,24(sp)
  int decis;

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
     958:	01484023 	subu	t0,t2,t0
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
     95c:	00407021 	addu	t6,v0,zero
     960:	00094880 	sll	t1,t1,0x2
    m = -n;
  return m;
}

int
encode (int xin1, int xin2)
     964:	244d0058 	addiu	t5,v0,88

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
     968:	24840008 	addiu	a0,a0,8
     96c:	24a50008 	addiu	a1,a1,8
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     970:	8c8a0000 	lw	t2,0(a0)
     974:	8caf0000 	lw	t7,0(a1)
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     978:	8c8b0004 	lw	t3,4(a0)
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     97c:	01ea0018 	mult	t7,t2
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     980:	8cac0004 	lw	t4,4(a1)
    m = -n;
  return m;
}

int
encode (int xin1, int xin2)
     984:	24840008 	addiu	a0,a0,8
     988:	24a50008 	addiu	a1,a1,8
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     98c:	00005012 	mflo	t2
     990:	010a4021 	addu	t0,t0,t2
     994:	00000000 	sll	zero,zero,0x0
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     998:	018b0018 	mult	t4,t3
     99c:	00005812 	mflo	t3
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
     9a0:	148dfff3 	bne	a0,t5,970 <encode+0x6c>
     9a4:	012b4821 	addu	t1,t1,t3
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     9a8:	8c4a0058 	lw	t2,88(v0)
     9ac:	2404ffd4 	addiu	a0,zero,-44
     9b0:	01440018 	mult	t2,a0
  xb += (long) (*tqmf_ptr) * (*h_ptr++);
     9b4:	8c4b005c 	lw	t3,92(v0)
     9b8:	240c000c 	addiu	t4,zero,12
    m = -n;
  return m;
}

int
encode (int xin1, int xin2)
     9bc:	3c040000 	lui	a0,0x0
     9c0:	25c50004 	addiu	a1,t6,4
     9c4:	2484005c 	addiu	a0,a0,92
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     9c8:	00005012 	mflo	t2
     9cc:	010a4021 	addu	t0,t0,t2
     9d0:	00000000 	sll	zero,zero,0x0
  xb += (long) (*tqmf_ptr) * (*h_ptr++);
     9d4:	016c0018 	mult	t3,t4
     9d8:	00005812 	mflo	t3
     9dc:	012b4821 	addu	t1,t1,t3

/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
  for (i = 0; i < 22; i++)
    *tqmf_ptr-- = *tqmf_ptr1--;
     9e0:	8c8cfff8 	lw	t4,-8(a0)
     9e4:	00000000 	sll	zero,zero,0x0
     9e8:	ac8c0000 	sw	t4,0(a0)
     9ec:	2484fffc 	addiu	a0,a0,-4
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
  xb += (long) (*tqmf_ptr) * (*h_ptr++);

/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
  for (i = 0; i < 22; i++)
     9f0:	1485fffb 	bne	a0,a1,9e0 <encode+0xdc>
     9f4:	0128a021 	addu	s4,t1,t0
/* end of quadrature mirror filter code */

/* starting with lower sub band encoder */

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);
     9f8:	3c110000 	lui	s1,0x0
  *tqmf_ptr-- = xin1;
  *tqmf_ptr = xin2;

/* scale outputs */
  xl = (xa + xb) >> 15;
  xh = (xa - xb) >> 15;
     9fc:	01094023 	subu	t0,t0,t1
/* end of quadrature mirror filter code */

/* starting with lower sub band encoder */

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);
     a00:	3c120000 	lui	s2,0x0
  *tqmf_ptr-- = xin1;
  *tqmf_ptr = xin2;

/* scale outputs */
  xl = (xa + xb) >> 15;
  xh = (xa - xb) >> 15;
     a04:	000843c3 	sra	t0,t0,0xf
    *tqmf_ptr-- = *tqmf_ptr1--;
  *tqmf_ptr-- = xin1;
  *tqmf_ptr = xin2;

/* scale outputs */
  xl = (xa + xb) >> 15;
     a08:	0014a3c3 	sra	s4,s4,0xf
/* end of quadrature mirror filter code */

/* starting with lower sub band encoder */

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);
     a0c:	26240000 	addiu	a0,s1,0
     a10:	26450000 	addiu	a1,s2,0

/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
  for (i = 0; i < 22; i++)
    *tqmf_ptr-- = *tqmf_ptr1--;
  *tqmf_ptr-- = xin1;
     a14:	ac470004 	sw	a3,4(v0)
  *tqmf_ptr = xin2;
     a18:	ac660000 	sw	a2,0(v1)

/* scale outputs */
  xl = (xa + xb) >> 15;
     a1c:	af940000 	sw	s4,0(gp)
/* end of quadrature mirror filter code */

/* starting with lower sub band encoder */

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);
     a20:	0c000000 	jal	0 <abs>
     a24:	af880000 	sw	t0,0(gp)
     a28:	00408021 	addu	s0,v0,zero
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     a2c:	8f830000 	lw	v1,0(gp)
     a30:	8f820000 	lw	v0,0(gp)
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     a34:	8f840000 	lw	a0,0(gp)
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     a38:	00620018 	mult	v1,v0
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     a3c:	8f830000 	lw	v1,0(gp)
/* compute the predictor output value in the lower sub_band encoder */
  sl = szl + spl;
  el = xl - sl;

/* quantl: quantize the difference signal */
  il = quantl (el, detl);
     a40:	8f930000 	lw	s3,0(gp)
/* end of quadrature mirror filter code */

/* starting with lower sub band encoder */

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);
     a44:	af900000 	sw	s0,0(gp)
/* compute the predictor output value in the lower sub_band encoder */
  sl = szl + spl;
  el = xl - sl;

/* quantl: quantize the difference signal */
  il = quantl (el, detl);
     a48:	02602821 	addu	a1,s3,zero
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     a4c:	00001012 	mflo	v0
	...
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     a58:	00830018 	mult	a0,v1
     a5c:	00001812 	mflo	v1
/* end of quadrature mirror filter code */

/* starting with lower sub band encoder */

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);
     a60:	00431821 	addu	v1,v0,v1
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
     a64:	00031840 	sll	v1,v1,0x1
     a68:	00031bc3 	sra	v1,v1,0xf

/* filtep - compute predictor output signal (pole section) */
  spl = filtep (rlt1, al1, rlt2, al2);

/* compute the predictor output value in the lower sub_band encoder */
  sl = szl + spl;
     a6c:	02031021 	addu	v0,s0,v1
  el = xl - sl;
     a70:	0282a023 	subu	s4,s4,v0

/* quantl: quantize the difference signal */
  il = quantl (el, detl);
     a74:	02802021 	addu	a0,s4,zero

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);

/* filtep - compute predictor output signal (pole section) */
  spl = filtep (rlt1, al1, rlt2, al2);
     a78:	af830000 	sw	v1,0(gp)

/* compute the predictor output value in the lower sub_band encoder */
  sl = szl + spl;
     a7c:	af820000 	sw	v0,0(gp)
  el = xl - sl;

/* quantl: quantize the difference signal */
  il = quantl (el, detl);
     a80:	0c000000 	jal	0 <abs>
     a84:	af940000 	sw	s4,0(gp)

/* computes quantized difference signal */
/* for invqbl, truncate by 2 lsbs, so mode = 3 */
  dlt = ((long) detl * qq4_code4_table[il >> 2]) >> 15;
     a88:	00022883 	sra	a1,v0,0x2
     a8c:	3c030000 	lui	v1,0x0
     a90:	00052880 	sll	a1,a1,0x2
     a94:	24630000 	addiu	v1,v1,0
     a98:	00a31821 	addu	v1,a1,v1
     a9c:	8c640000 	lw	a0,0(v1)

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     aa0:	8f830000 	lw	v1,0(gp)
/* quantl: quantize the difference signal */
  il = quantl (el, detl);

/* computes quantized difference signal */
/* for invqbl, truncate by 2 lsbs, so mode = 3 */
  dlt = ((long) detl * qq4_code4_table[il >> 2]) >> 15;
     aa4:	02640018 	mult	s3,a0
int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
     aa8:	3c040000 	lui	a0,0x0
     aac:	24840000 	addiu	a0,a0,0
     ab0:	00a42821 	addu	a1,a1,a0

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     ab4:	000321c0 	sll	a0,v1,0x7
     ab8:	00831823 	subu	v1,a0,v1
  nbl = (int) wd + wl_code_table[il >> 2];
     abc:	8ca40000 	lw	a0,0(a1)

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     ac0:	000319c3 	sra	v1,v1,0x7
  nbl = (int) wd + wl_code_table[il >> 2];
     ac4:	00641821 	addu	v1,v1,a0
/* compute the predictor output value in the lower sub_band encoder */
  sl = szl + spl;
  el = xl - sl;

/* quantl: quantize the difference signal */
  il = quantl (el, detl);
     ac8:	af820000 	sw	v0,0(gp)

/* computes quantized difference signal */
/* for invqbl, truncate by 2 lsbs, so mode = 3 */
  dlt = ((long) detl * qq4_code4_table[il >> 2]) >> 15;
     acc:	00009812 	mflo	s3
     ad0:	001323c3 	sra	a0,s3,0xf
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
  if (nbl < 0)
     ad4:	046000c6 	bltz	v1,df0 <encode+0x4ec>
     ad8:	af840000 	sw	a0,0(gp)
    nbl = 0;
  if (nbl > 18432)
     adc:	28624801 	slti	v0,v1,18433
     ae0:	144000c5 	bnez	v0,df8 <encode+0x4f4>
     ae4:	00032983 	sra	a1,v1,0x6
     ae8:	00003021 	addu	a2,zero,zero
     aec:	00002821 	addu	a1,zero,zero
    nbl = 18432;
     af0:	24034800 	addiu	v1,zero,18432
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     af4:	3c130000 	lui	s3,0x0
     af8:	00052880 	sll	a1,a1,0x2
     afc:	26730000 	addiu	s3,s3,0
     b00:	02652821 	addu	a1,s3,a1
     b04:	8ca20000 	lw	v0,0(a1)
/* scalel: compute the quantizer scale factor in the lower sub band */
/* calling parameters nbl and 8 (constant such that scalel can be scaleh) */
  detl = scalel (nbl, 8);

/* parrec - simple addition to compute recontructed signal for adaptive pred */
  plt = dlt + szl;
     b08:	00908021 	addu	s0,a0,s0
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     b0c:	00c21007 	srav	v0,v0,a2
  return (wd3 << 3);
     b10:	000210c0 	sll	v0,v0,0x3

/* upzero: update zero section predictor coefficients (sixth order)*/
/* calling parameters: dlt, dlt1, dlt2, ..., dlt6 from dlt */
/*  bpli (linear_buffer in which all six values are delayed */
/* return params:      updated bpli, delayed dltx */
  upzero (dlt, delay_dltx, delay_bpl);
     b14:	26450000 	addiu	a1,s2,0
     b18:	26260000 	addiu	a2,s1,0
/* computes quantized difference signal */
/* for invqbl, truncate by 2 lsbs, so mode = 3 */
  dlt = ((long) detl * qq4_code4_table[il >> 2]) >> 15;

/* logscl: updates logarithmic quant. scale factor in low sub band */
  nbl = logscl (il, nbl);
     b1c:	af830000 	sw	v1,0(gp)

/* scalel: compute the quantizer scale factor in the lower sub band */
/* calling parameters nbl and 8 (constant such that scalel can be scaleh) */
  detl = scalel (nbl, 8);
     b20:	af820000 	sw	v0,0(gp)

/* upzero: update zero section predictor coefficients (sixth order)*/
/* calling parameters: dlt, dlt1, dlt2, ..., dlt6 from dlt */
/*  bpli (linear_buffer in which all six values are delayed */
/* return params:      updated bpli, delayed dltx */
  upzero (dlt, delay_dltx, delay_bpl);
     b24:	0c000000 	jal	0 <abs>
     b28:	af900000 	sw	s0,0(gp)

/* uppol2- update second predictor coefficient apl2 and delay it as al2 */
/* calling parameters: al1, al2, plt, plt1, plt2 */
  al2 = uppol2 (al1, al2, plt, plt1, plt2);
     b2c:	8f920000 	lw	s2,0(gp)
     b30:	8f900000 	lw	s0,0(gp)
     b34:	8f910000 	lw	s1,0(gp)
     b38:	8f820000 	lw	v0,0(gp)
     b3c:	8f850000 	lw	a1,0(gp)
     b40:	02402021 	addu	a0,s2,zero
     b44:	afa20010 	sw	v0,16(sp)
     b48:	02003021 	addu	a2,s0,zero
     b4c:	0c000000 	jal	0 <abs>
     b50:	02203821 	addu	a3,s1,zero
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
     b54:	02300018 	mult	s1,s0
int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
     b58:	00121a00 	sll	v1,s2,0x8
     b5c:	00729023 	subu	s2,v1,s2
/* return params:      updated bpli, delayed dltx */
  upzero (dlt, delay_dltx, delay_bpl);

/* uppol2- update second predictor coefficient apl2 and delay it as al2 */
/* calling parameters: al1, al2, plt, plt1, plt2 */
  al2 = uppol2 (al1, al2, plt, plt1, plt2);
     b60:	af820000 	sw	v0,0(gp)
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
     b64:	00001812 	mflo	v1
     b68:	046000b9 	bltz	v1,e50 <encode+0x54c>
     b6c:	00129203 	sra	s2,s2,0x8
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
     b70:	264300c0 	addiu	v1,s2,192
  else
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
     b74:	24043c00 	addiu	a0,zero,15360
     b78:	00821023 	subu	v0,a0,v0
     b7c:	0043202a 	slt	a0,v0,v1
     b80:	10800002 	beqz	a0,b8c <encode+0x288>
     b84:	00000000 	sll	zero,zero,0x0
     b88:	00401821 	addu	v1,v0,zero
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
     b8c:	00021023 	negu	v0,v0
/* calling parameters: al1, al2, plt, plt1, plt2 */
  al2 = uppol2 (al1, al2, plt, plt1, plt2);

/* uppol1 :update first predictor coefficient apl1 and delay it as al1 */
/* calling parameters: al1, apl2, plt, plt1 */
  al1 = uppol1 (al1, al2, plt, plt1);
     b90:	0062202a 	slt	a0,v1,v0
     b94:	10800002 	beqz	a0,ba0 <encode+0x29c>
     b98:	00000000 	sll	zero,zero,0x0
     b9c:	00401821 	addu	v1,v0,zero

/* recons : compute recontructed signal for adaptive predictor */
  rlt = sl + dlt;
     ba0:	8f840000 	lw	a0,0(gp)
     ba4:	8f820000 	lw	v0,0(gp)
/* calling parameters: al1, al2, plt, plt1, plt2 */
  al2 = uppol2 (al1, al2, plt, plt1, plt2);

/* uppol1 :update first predictor coefficient apl1 and delay it as al1 */
/* calling parameters: al1, apl2, plt, plt1 */
  al1 = uppol1 (al1, al2, plt, plt1);
     ba8:	af830000 	sw	v1,0(gp)
  plt2 = plt1;
  plt1 = plt;

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);
     bac:	3c120000 	lui	s2,0x0

/* recons : compute recontructed signal for adaptive predictor */
  rlt = sl + dlt;

/* done with lower sub_band encoder; now implement delays for next time*/
  rlt2 = rlt1;
     bb0:	8f830000 	lw	v1,0(gp)
  plt2 = plt1;
  plt1 = plt;

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);
     bb4:	3c140000 	lui	s4,0x0
/* uppol1 :update first predictor coefficient apl1 and delay it as al1 */
/* calling parameters: al1, apl2, plt, plt1 */
  al1 = uppol1 (al1, al2, plt, plt1);

/* recons : compute recontructed signal for adaptive predictor */
  rlt = sl + dlt;
     bb8:	00821021 	addu	v0,a0,v0
  plt2 = plt1;
  plt1 = plt;

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);
     bbc:	26850000 	addiu	a1,s4,0
     bc0:	26440000 	addiu	a0,s2,0

/* recons : compute recontructed signal for adaptive predictor */
  rlt = sl + dlt;

/* done with lower sub_band encoder; now implement delays for next time*/
  rlt2 = rlt1;
     bc4:	af830000 	sw	v1,0(gp)
/* uppol1 :update first predictor coefficient apl1 and delay it as al1 */
/* calling parameters: al1, apl2, plt, plt1 */
  al1 = uppol1 (al1, al2, plt, plt1);

/* recons : compute recontructed signal for adaptive predictor */
  rlt = sl + dlt;
     bc8:	af820000 	sw	v0,0(gp)

/* done with lower sub_band encoder; now implement delays for next time*/
  rlt2 = rlt1;
  rlt1 = rlt;
     bcc:	af820000 	sw	v0,0(gp)
  plt2 = plt1;
     bd0:	af910000 	sw	s1,0(gp)
  plt1 = plt;

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);
     bd4:	0c000000 	jal	0 <abs>
     bd8:	af900000 	sw	s0,0(gp)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     bdc:	8f830000 	lw	v1,0(gp)
     be0:	8f840000 	lw	a0,0(gp)
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     be4:	8f850000 	lw	a1,0(gp)
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     be8:	00830018 	mult	a0,v1
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     bec:	8f840000 	lw	a0,0(gp)
  sph = filtep (rh1, ah1, rh2, ah2);

/* predic: sh = sph + szh */
  sh = sph + szh;
/* subtra: eh = xh - sh */
  eh = xh - sh;
     bf0:	8f860000 	lw	a2,0(gp)
  plt2 = plt1;
  plt1 = plt;

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);
     bf4:	af820000 	sw	v0,0(gp)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     bf8:	00001812 	mflo	v1
	...
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     c04:	00a40018 	mult	a1,a0
  plt2 = plt1;
  plt1 = plt;

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);
     c08:	00002012 	mflo	a0
     c0c:	00641821 	addu	v1,v1,a0
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
     c10:	00031840 	sll	v1,v1,0x1
     c14:	00031bc3 	sra	v1,v1,0xf
  szh = filtez (delay_bph, delay_dhx);

  sph = filtep (rh1, ah1, rh2, ah2);

/* predic: sh = sph + szh */
  sh = sph + szh;
     c18:	00432021 	addu	a0,v0,v1
/* subtra: eh = xh - sh */
  eh = xh - sh;
     c1c:	00c43023 	subu	a2,a2,a0

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);

  sph = filtep (rh1, ah1, rh2, ah2);
     c20:	af830000 	sw	v1,0(gp)

/* predic: sh = sph + szh */
  sh = sph + szh;
     c24:	af840000 	sw	a0,0(gp)
/* subtra: eh = xh - sh */
  eh = xh - sh;

/* quanth - quantization of difference signal for higher sub-band */
/* quanth: in-place for speed params: eh, deth (has init. value) */
  if (eh >= 0)
     c28:	04c0007a 	bltz	a2,e14 <encode+0x510>
     c2c:	af860000 	sw	a2,0(gp)
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
    }
  decis = (564L * (long) deth) >> 12L;
     c30:	8f840000 	lw	a0,0(gp)

/* quanth - quantization of difference signal for higher sub-band */
/* quanth: in-place for speed params: eh, deth (has init. value) */
  if (eh >= 0)
    {
      ih = 3;			/* 2,3 are pos codes */
     c34:	24030003 	addiu	v1,zero,3
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
    }
  decis = (564L * (long) deth) >> 12L;
     c38:	00043880 	sll	a3,a0,0x2

/* quanth - quantization of difference signal for higher sub-band */
/* quanth: in-place for speed params: eh, deth (has init. value) */
  if (eh >= 0)
    {
      ih = 3;			/* 2,3 are pos codes */
     c3c:	af830000 	sw	v1,0(gp)
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
    }
  decis = (564L * (long) deth) >> 12L;
     c40:	00041900 	sll	v1,a0,0x4
     c44:	00e31821 	addu	v1,a3,v1
     c48:	000338c0 	sll	a3,v1,0x3
     c4c:	00e31823 	subu	v1,a3,v1
     c50:	00641821 	addu	v1,v1,a0
     c54:	00031880 	sll	v1,v1,0x2

/* quanth - quantization of difference signal for higher sub-band */
/* quanth: in-place for speed params: eh, deth (has init. value) */
  if (eh >= 0)
    {
      ih = 3;			/* 2,3 are pos codes */
     c58:	24050003 	addiu	a1,zero,3
  else
    {
      ih = 1;			/* 0,1 are neg codes */
    }
  decis = (564L * (long) deth) >> 12L;
  if (abs (eh) > decis)
     c5c:	04c0007a 	bltz	a2,e48 <encode+0x544>
     c60:	00031b03 	sra	v1,v1,0xc
     c64:	0066302a 	slt	a2,v1,a2
     c68:	10c00003 	beqz	a2,c78 <encode+0x374>
     c6c:	3c030000 	lui	v1,0x0
    ih--;			/* mih = 2 case */
     c70:	24a5ffff 	addiu	a1,a1,-1
     c74:	af850000 	sw	a1,0(gp)

/* compute the quantized difference signal, higher sub-band*/
  dh = ((long) deth * qq2_code2_table[ih]) >> 15L;
     c78:	00052880 	sll	a1,a1,0x2
     c7c:	24630000 	addiu	v1,v1,0
     c80:	00a31821 	addu	v1,a1,v1
     c84:	8c660000 	lw	a2,0(v1)

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
     c88:	8f830000 	lw	v1,0(gp)
  decis = (564L * (long) deth) >> 12L;
  if (abs (eh) > decis)
    ih--;			/* mih = 2 case */

/* compute the quantized difference signal, higher sub-band*/
  dh = ((long) deth * qq2_code2_table[ih]) >> 15L;
     c8c:	00860018 	mult	a0,a2
int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
     c90:	3c060000 	lui	a2,0x0
     c94:	24c60000 	addiu	a2,a2,0
     c98:	00a62821 	addu	a1,a1,a2

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
     c9c:	000331c0 	sll	a2,v1,0x7
     ca0:	00c31823 	subu	v1,a2,v1
  nbh = wd + wh_code_table[ih];
     ca4:	8ca50000 	lw	a1,0(a1)

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
     ca8:	000319c3 	sra	v1,v1,0x7
  nbh = wd + wh_code_table[ih];
     cac:	00651821 	addu	v1,v1,a1
  decis = (564L * (long) deth) >> 12L;
  if (abs (eh) > decis)
    ih--;			/* mih = 2 case */

/* compute the quantized difference signal, higher sub-band*/
  dh = ((long) deth * qq2_code2_table[ih]) >> 15L;
     cb0:	00002012 	mflo	a0
     cb4:	000423c3 	sra	a0,a0,0xf
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
  if (nbh < 0)
     cb8:	04600046 	bltz	v1,dd4 <encode+0x4d0>
     cbc:	af840000 	sw	a0,0(gp)
    nbh = 0;
  if (nbh > 22528)
     cc0:	28655801 	slti	a1,v1,22529
     cc4:	14a00045 	bnez	a1,ddc <encode+0x4d8>
     cc8:	00032983 	sra	a1,v1,0x6
     ccc:	00003821 	addu	a3,zero,zero
     cd0:	00002821 	addu	a1,zero,zero
    nbh = 22528;
     cd4:	24035800 	addiu	v1,zero,22528
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     cd8:	00052880 	sll	a1,a1,0x2
     cdc:	02659821 	addu	s3,s3,a1
     ce0:	8e650000 	lw	a1,0(s3)

/* note : scalel and scaleh use same code, different parameters */
  deth = scalel (nbh, 10);

/* parrec - add pole predictor output to quantized diff. signal */
  ph = dh + szh;
     ce4:	00821021 	addu	v0,a0,v0
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     ce8:	00e53807 	srav	a3,a1,a3
  return (wd3 << 3);
     cec:	000738c0 	sll	a3,a3,0x3
  ph = dh + szh;

/* upzero: update zero section predictor coefficients (sixth order) */
/* calling parameters: dh, dhi, bphi */
/* return params: updated bphi, delayed dhx */
  upzero (dh, delay_dhx, delay_bph);
     cf0:	26460000 	addiu	a2,s2,0
     cf4:	26850000 	addiu	a1,s4,0

/* compute the quantized difference signal, higher sub-band*/
  dh = ((long) deth * qq2_code2_table[ih]) >> 15L;

/* logsch: update logarithmic quantizer scale factor in hi sub-band*/
  nbh = logsch (ih, nbh);
     cf8:	af830000 	sw	v1,0(gp)

/* note : scalel and scaleh use same code, different parameters */
  deth = scalel (nbh, 10);
     cfc:	af870000 	sw	a3,0(gp)
  ph = dh + szh;

/* upzero: update zero section predictor coefficients (sixth order) */
/* calling parameters: dh, dhi, bphi */
/* return params: updated bphi, delayed dhx */
  upzero (dh, delay_dhx, delay_bph);
     d00:	0c000000 	jal	0 <abs>
     d04:	af820000 	sw	v0,0(gp)

/* uppol2: update second predictor coef aph2 and delay as ah2 */
/* calling params: ah1, ah2, ph, ph1, ph2 */
  ah2 = uppol2 (ah1, ah2, ph, ph1, ph2);
     d08:	8f920000 	lw	s2,0(gp)
     d0c:	8f900000 	lw	s0,0(gp)
     d10:	8f910000 	lw	s1,0(gp)
     d14:	8f820000 	lw	v0,0(gp)
     d18:	8f850000 	lw	a1,0(gp)
     d1c:	02402021 	addu	a0,s2,zero
     d20:	afa20010 	sw	v0,16(sp)
     d24:	02003021 	addu	a2,s0,zero
     d28:	0c000000 	jal	0 <abs>
     d2c:	02203821 	addu	a3,s1,zero
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
     d30:	02300018 	mult	s1,s0
int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
     d34:	00121a00 	sll	v1,s2,0x8
     d38:	00729023 	subu	s2,v1,s2
/* return params: updated bphi, delayed dhx */
  upzero (dh, delay_dhx, delay_bph);

/* uppol2: update second predictor coef aph2 and delay as ah2 */
/* calling params: ah1, ah2, ph, ph1, ph2 */
  ah2 = uppol2 (ah1, ah2, ph, ph1, ph2);
     d3c:	af820000 	sw	v0,0(gp)
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
     d40:	00001812 	mflo	v1
     d44:	04600031 	bltz	v1,e0c <encode+0x508>
     d48:	00129203 	sra	s2,s2,0x8
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
     d4c:	265200c0 	addiu	s2,s2,192
  else
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
     d50:	24033c00 	addiu	v1,zero,15360
     d54:	00621023 	subu	v0,v1,v0
     d58:	0052182a 	slt	v1,v0,s2
     d5c:	10600002 	beqz	v1,d68 <encode+0x464>
     d60:	00000000 	sll	zero,zero,0x0
     d64:	00409021 	addu	s2,v0,zero
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
     d68:	00021023 	negu	v0,v0
/* uppol2: update second predictor coef aph2 and delay as ah2 */
/* calling params: ah1, ah2, ph, ph1, ph2 */
  ah2 = uppol2 (ah1, ah2, ph, ph1, ph2);

/* uppol1:  update first predictor coef. aph2 and delay it as ah1 */
  ah1 = uppol1 (ah1, ah2, ph, ph1);
     d6c:	0242182a 	slt	v1,s2,v0
     d70:	10600002 	beqz	v1,d7c <encode+0x478>
     d74:	00000000 	sll	zero,zero,0x0
     d78:	00409021 	addu	s2,v0,zero

/* recons for higher sub-band */
  yh = sh + dh;
     d7c:	8f820000 	lw	v0,0(gp)
     d80:	8f830000 	lw	v1,0(gp)
  rh1 = yh;
  ph2 = ph1;
  ph1 = ph;

/* multiplex ih and il to get signals together */
  return (il | (ih << 6));
     d84:	8f840000 	lw	a0,0(gp)

/* uppol1:  update first predictor coef. aph2 and delay it as ah1 */
  ah1 = uppol1 (ah1, ah2, ph, ph1);

/* recons for higher sub-band */
  yh = sh + dh;
     d88:	00621821 	addu	v1,v1,v0

/* done with higher sub-band encoder, now Delay for next time */
  rh2 = rh1;
     d8c:	8f820000 	lw	v0,0(gp)
  ph2 = ph1;
  ph1 = ph;

/* multiplex ih and il to get signals together */
  return (il | (ih << 6));
}
     d90:	8fbf002c 	lw	ra,44(sp)

/* recons for higher sub-band */
  yh = sh + dh;

/* done with higher sub-band encoder, now Delay for next time */
  rh2 = rh1;
     d94:	af820000 	sw	v0,0(gp)
  ph2 = ph1;
  ph1 = ph;

/* multiplex ih and il to get signals together */
  return (il | (ih << 6));
}
     d98:	8f820000 	lw	v0,0(gp)
  rh1 = yh;
  ph2 = ph1;
  ph1 = ph;

/* multiplex ih and il to get signals together */
  return (il | (ih << 6));
     d9c:	00042180 	sll	a0,a0,0x6
/* uppol2: update second predictor coef aph2 and delay as ah2 */
/* calling params: ah1, ah2, ph, ph1, ph2 */
  ah2 = uppol2 (ah1, ah2, ph, ph1, ph2);

/* uppol1:  update first predictor coef. aph2 and delay it as ah1 */
  ah1 = uppol1 (ah1, ah2, ph, ph1);
     da0:	af920000 	sw	s2,0(gp)
  yh = sh + dh;

/* done with higher sub-band encoder, now Delay for next time */
  rh2 = rh1;
  rh1 = yh;
  ph2 = ph1;
     da4:	af910000 	sw	s1,0(gp)
  ph1 = ph;
     da8:	af900000 	sw	s0,0(gp)

/* multiplex ih and il to get signals together */
  return (il | (ih << 6));
}
     dac:	00821025 	or	v0,a0,v0
     db0:	8fb40028 	lw	s4,40(sp)
     db4:	8fb30024 	lw	s3,36(sp)
     db8:	8fb20020 	lw	s2,32(sp)
     dbc:	8fb1001c 	lw	s1,28(sp)
     dc0:	8fb00018 	lw	s0,24(sp)

/* uppol1:  update first predictor coef. aph2 and delay it as ah1 */
  ah1 = uppol1 (ah1, ah2, ph, ph1);

/* recons for higher sub-band */
  yh = sh + dh;
     dc4:	af830000 	sw	v1,0(gp)

/* done with higher sub-band encoder, now Delay for next time */
  rh2 = rh1;
  rh1 = yh;
     dc8:	af830000 	sw	v1,0(gp)
  ph2 = ph1;
  ph1 = ph;

/* multiplex ih and il to get signals together */
  return (il | (ih << 6));
}
     dcc:	03e00008 	jr	ra
     dd0:	27bd0030 	addiu	sp,sp,48
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
  if (nbh < 0)
    nbh = 0;
     dd4:	00001821 	addu	v1,zero,zero
  if (nbh > 22528)
     dd8:	00032983 	sra	a1,v1,0x6
     ddc:	000332c3 	sra	a2,v1,0xb
     de0:	2407000b 	addiu	a3,zero,11
     de4:	30a5001f 	andi	a1,a1,0x1f
     de8:	08000336 	j	cd8 <encode+0x3d4>
     dec:	00e63823 	subu	a3,a3,a2
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
  if (nbl < 0)
    nbl = 0;
     df0:	00001821 	addu	v1,zero,zero
  if (nbl > 18432)
     df4:	00032983 	sra	a1,v1,0x6
     df8:	000312c3 	sra	v0,v1,0xb
     dfc:	24060009 	addiu	a2,zero,9
     e00:	30a5001f 	andi	a1,a1,0x1f
     e04:	080002bd 	j	af4 <encode+0x1f0>
     e08:	00c23023 	subu	a2,a2,v0
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    }
  else
    {
      apl1 = (int) wd2 - 192;
     e0c:	08000354 	j	d50 <encode+0x44c>
     e10:	2652ff40 	addiu	s2,s2,-192
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
    }
  decis = (564L * (long) deth) >> 12L;
     e14:	8f840000 	lw	a0,0(gp)
    {
      ih = 3;			/* 2,3 are pos codes */
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
     e18:	24030001 	addiu	v1,zero,1
    }
  decis = (564L * (long) deth) >> 12L;
     e1c:	00043880 	sll	a3,a0,0x2
    {
      ih = 3;			/* 2,3 are pos codes */
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
     e20:	af830000 	sw	v1,0(gp)
    }
  decis = (564L * (long) deth) >> 12L;
     e24:	00041900 	sll	v1,a0,0x4
     e28:	00e31821 	addu	v1,a3,v1
     e2c:	000338c0 	sll	a3,v1,0x3
     e30:	00e31823 	subu	v1,a3,v1
     e34:	00641821 	addu	v1,v1,a0
     e38:	00031880 	sll	v1,v1,0x2
    {
      ih = 3;			/* 2,3 are pos codes */
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
     e3c:	24050001 	addiu	a1,zero,1
    }
  decis = (564L * (long) deth) >> 12L;
  if (abs (eh) > decis)
     e40:	04c1ff88 	bgez	a2,c64 <encode+0x360>
     e44:	00031b03 	sra	v1,v1,0xc
     e48:	08000319 	j	c64 <encode+0x360>
     e4c:	00063023 	negu	a2,a2
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    }
  else
    {
      apl1 = (int) wd2 - 192;
     e50:	080002dd 	j	b74 <encode+0x270>
     e54:	2643ff40 	addiu	v1,s2,-192

00000e58 <uppol1>:
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
     e58:	00e60018 	mult	a3,a2
int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
     e5c:	00041200 	sll	v0,a0,0x8
     e60:	00441023 	subu	v0,v0,a0
  if ((long) plt * plt1 >= 0L)
     e64:	00003012 	mflo	a2
     e68:	04c0000f 	bltz	a2,ea8 <uppol1+0x50>
     e6c:	00021203 	sra	v0,v0,0x8
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
     e70:	244200c0 	addiu	v0,v0,192
  else
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
     e74:	24033c00 	addiu	v1,zero,15360
     e78:	00652823 	subu	a1,v1,a1
     e7c:	00a2182a 	slt	v1,a1,v0
     e80:	10600002 	beqz	v1,e8c <uppol1+0x34>
     e84:	00000000 	sll	zero,zero,0x0
     e88:	00a01021 	addu	v0,a1,zero
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
     e8c:	00052823 	negu	a1,a1
  else
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
     e90:	0045182a 	slt	v1,v0,a1
     e94:	10600002 	beqz	v1,ea0 <uppol1+0x48>
     e98:	00000000 	sll	zero,zero,0x0
     e9c:	00a01021 	addu	v0,a1,zero
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
    apl1 = -wd3;
  return (apl1);
}
     ea0:	03e00008 	jr	ra
     ea4:	00000000 	sll	zero,zero,0x0
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    }
  else
    {
      apl1 = (int) wd2 - 192;
     ea8:	0800039d 	j	e74 <uppol1+0x1c>
     eac:	2442ff40 	addiu	v0,v0,-192

00000eb0 <logsch>:
int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
     eb0:	3c030000 	lui	v1,0x0
     eb4:	24630000 	addiu	v1,v1,0
     eb8:	00042080 	sll	a0,a0,0x2

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
     ebc:	000511c0 	sll	v0,a1,0x7
  nbh = wd + wh_code_table[ih];
     ec0:	00832021 	addu	a0,a0,v1

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
     ec4:	00451023 	subu	v0,v0,a1
  nbh = wd + wh_code_table[ih];
     ec8:	8c830000 	lw	v1,0(a0)

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
     ecc:	000211c3 	sra	v0,v0,0x7
  nbh = wd + wh_code_table[ih];
     ed0:	00431021 	addu	v0,v0,v1
  if (nbh < 0)
     ed4:	04400005 	bltz	v0,eec <logsch+0x3c>
     ed8:	28435801 	slti	v1,v0,22529
    nbh = 0;
  if (nbh > 22528)
     edc:	14600005 	bnez	v1,ef4 <logsch+0x44>
     ee0:	00000000 	sll	zero,zero,0x0
    nbh = 22528;
  return (nbh);
}
     ee4:	03e00008 	jr	ra
     ee8:	24025800 	addiu	v0,zero,22528
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
  if (nbh < 0)
    nbh = 0;
     eec:	03e00008 	jr	ra
     ef0:	00001021 	addu	v0,zero,zero
     ef4:	03e00008 	jr	ra
     ef8:	00000000 	sll	zero,zero,0x0

00000efc <adpcm_main>:
  58, 60, 54, 55, 57
};

void
adpcm_main ()
{
     efc:	27bdffd8 	addiu	sp,sp,-40
     f00:	afb2001c 	sw	s2,28(sp)
     f04:	afb10018 	sw	s1,24(sp)
     f08:	3c120000 	lui	s2,0x0
  int i, j;

/* reset, initialize required memory */
  reset ();
     f0c:	3c110000 	lui	s1,0x0
  58, 60, 54, 55, 57
};

void
adpcm_main ()
{
     f10:	afb30020 	sw	s3,32(sp)
     f14:	afb00014 	sw	s0,20(sp)
     f18:	afbf0024 	sw	ra,36(sp)
  int i, j;

/* reset, initialize required memory */
  reset ();
     f1c:	0c000000 	jal	0 <abs>
     f20:	26310000 	addiu	s1,s1,0

  j = 10;

  for (i = 0; i < IN_END; i += 2)
     f24:	00008021 	addu	s0,zero,zero
     f28:	26520000 	addiu	s2,s2,0
     f2c:	24130064 	addiu	s3,zero,100
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
     f30:	8e240000 	lw	a0,0(s1)
     f34:	8e250004 	lw	a1,4(s1)
     f38:	0c000000 	jal	0 <abs>
     f3c:	26310008 	addiu	s1,s1,8
     f40:	00101843 	sra	v1,s0,0x1
     f44:	00031880 	sll	v1,v1,0x2
     f48:	02431821 	addu	v1,s2,v1
/* reset, initialize required memory */
  reset ();

  j = 10;

  for (i = 0; i < IN_END; i += 2)
     f4c:	26100002 	addiu	s0,s0,2
     f50:	1613fff7 	bne	s0,s3,f30 <adpcm_main+0x34>
     f54:	ac620000 	sw	v0,0(v1)
     f58:	3c110000 	lui	s1,0x0
     f5c:	26310000 	addiu	s1,s1,0
     f60:	00008021 	addu	s0,zero,zero
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
     f64:	24130064 	addiu	s3,zero,100
    {
      decode (compressed[i / 2]);
     f68:	00101043 	sra	v0,s0,0x1
     f6c:	00021080 	sll	v0,v0,0x2
     f70:	02421021 	addu	v0,s2,v0
     f74:	8c440000 	lw	a0,0(v0)
     f78:	0c000000 	jal	0 <abs>
     f7c:	26100002 	addiu	s0,s0,2
      result[i] = xout1;
     f80:	8f820000 	lw	v0,0(gp)
     f84:	00000000 	sll	zero,zero,0x0
     f88:	ae220000 	sw	v0,0(s1)
      result[i + 1] = xout2;
     f8c:	8f820000 	lw	v0,0(gp)
     f90:	00000000 	sll	zero,zero,0x0
     f94:	ae220004 	sw	v0,4(s1)

  for (i = 0; i < IN_END; i += 2)
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
     f98:	1613fff3 	bne	s0,s3,f68 <adpcm_main+0x6c>
     f9c:	26310008 	addiu	s1,s1,8
    {
      decode (compressed[i / 2]);
      result[i] = xout1;
      result[i + 1] = xout2;
    }
}
     fa0:	8fbf0024 	lw	ra,36(sp)
     fa4:	8fb30020 	lw	s3,32(sp)
     fa8:	8fb2001c 	lw	s2,28(sp)
     fac:	8fb10018 	lw	s1,24(sp)
     fb0:	8fb00014 	lw	s0,20(sp)
     fb4:	03e00008 	jr	ra
     fb8:	27bd0028 	addiu	sp,sp,40

00000fbc <main>:

int
main ()
{
     fbc:	27bdffe8 	addiu	sp,sp,-24
     fc0:	afb00010 	sw	s0,16(sp)
     fc4:	afbf0014 	sw	ra,20(sp)
  int i;
  int main_result;

      main_result = 0;
      adpcm_main ();
     fc8:	0c000000 	jal	0 <abs>
     fcc:	00008021 	addu	s0,zero,zero
     fd0:	3c070000 	lui	a3,0x0
     fd4:	3c060000 	lui	a2,0x0
     fd8:	00001021 	addu	v0,zero,zero
     fdc:	24e70000 	addiu	a3,a3,0
     fe0:	24c60000 	addiu	a2,a2,0
      for (i = 0; i < IN_END / 2; i++)
     fe4:	240500c8 	addiu	a1,zero,200
      result[i + 1] = xout2;
    }
}

int
main ()
     fe8:	00e22021 	addu	a0,a3,v0
     fec:	00c21821 	addu	v1,a2,v0

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
	{
	  if (compressed[i] != test_compressed[i])
     ff0:	8c840000 	lw	a0,0(a0)
     ff4:	8c630000 	lw	v1,0(v1)
     ff8:	00000000 	sll	zero,zero,0x0
     ffc:	10830002 	beq	a0,v1,1008 <main+0x4c>
    1000:	24420004 	addiu	v0,v0,4
	    {
	      main_result = 1;
    1004:	24100001 	addiu	s0,zero,1
  int i;
  int main_result;

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
    1008:	1445fff8 	bne	v0,a1,fec <main+0x30>
    100c:	00e22021 	addu	a0,a3,v0
    1010:	3c070000 	lui	a3,0x0
    1014:	3c060000 	lui	a2,0x0
    1018:	00001021 	addu	v0,zero,zero
    101c:	24e70000 	addiu	a3,a3,0
    1020:	24c60000 	addiu	a2,a2,0
	  if (compressed[i] != test_compressed[i])
	    {
	      main_result = 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
    1024:	24050190 	addiu	a1,zero,400
      result[i + 1] = xout2;
    }
}

int
main ()
    1028:	00e22021 	addu	a0,a3,v0
    102c:	00c21821 	addu	v1,a2,v0
	      main_result = 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
	{
	  if (result[i] != test_result[i])
    1030:	8c840000 	lw	a0,0(a0)
    1034:	8c630000 	lw	v1,0(v1)
    1038:	00000000 	sll	zero,zero,0x0
    103c:	10830002 	beq	a0,v1,1048 <main+0x8c>
    1040:	24420004 	addiu	v0,v0,4
	    {
	      main_result = 1;
    1044:	24100001 	addiu	s0,zero,1
	  if (compressed[i] != test_compressed[i])
	    {
	      main_result = 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
    1048:	1445fff7 	bne	v0,a1,1028 <main+0x6c>
    104c:	3c040000 	lui	a0,0x0
	  if (result[i] != test_result[i])
	    {
	      main_result = 1;
	    }
	}
      printf ("%d\n", main_result);
    1050:	02002821 	addu	a1,s0,zero
    1054:	0c000000 	jal	0 <abs>
    1058:	24840000 	addiu	a0,a0,0
      return main_result;
    }
    105c:	8fbf0014 	lw	ra,20(sp)
    1060:	02001021 	addu	v0,s0,zero
    1064:	8fb00010 	lw	s0,16(sp)
    1068:	03e00008 	jr	ra
    106c:	27bd0018 	addiu	sp,sp,24

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
