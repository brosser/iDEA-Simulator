
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

00000018 <encode>:
  int decis;

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
      18:	3c060000 	lui	a2,0x0
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
      1c:	24c20000 	addiu	v0,a2,0
  return m;
}

int
encode (int xin1, int xin2)
{
      20:	27bdffd8 	addiu	sp,sp,-40
      24:	afb00004 	sw	s0,4(sp)
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      28:	8c500008 	lw	s0,8(v0)
      2c:	2407ffd4 	addiu	a3,zero,-44
      30:	02070018 	mult	s0,a3
  return m;
}

int
encode (int xin1, int xin2)
{
      34:	afb50018 	sw	s5,24(sp)
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
      38:	8c550014 	lw	s5,20(v0)
      3c:	240bfd90 	addiu	t3,zero,-624
  return m;
}

int
encode (int xin1, int xin2)
{
      40:	afb70020 	sw	s7,32(sp)
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      44:	8c570028 	lw	s7,40(v0)
      48:	240c0edc 	addiu	t4,zero,3804
  return m;
}

int
encode (int xin1, int xin2)
{
      4c:	afbe0024 	sw	s8,36(sp)
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
      50:	8c5e002c 	lw	s8,44(v0)
      54:	24183c90 	addiu	t8,zero,15504

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
      58:	8c490004 	lw	t1,4(v0)
  return m;
}

int
encode (int xin1, int xin2)
{
      5c:	afb30010 	sw	s3,16(sp)
      60:	afb2000c 	sw	s2,12(sp)
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      64:	00008012 	mflo	s0

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
      68:	00099900 	sll	s3,t1,0x4
      6c:	00099080 	sll	s2,t1,0x2
      70:	02729023 	subu	s2,s3,s2
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
      74:	02ab0018 	mult	s5,t3

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
      78:	01329023 	subu	s2,t1,s2
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      7c:	8c490030 	lw	t1,48(v0)
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
      80:	8c43000c 	lw	v1,12(v0)
  return m;
}

int
encode (int xin1, int xin2)
{
      84:	afb10008 	sw	s1,8(sp)
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
      88:	00036880 	sll	t5,v1,0x2
      8c:	00038900 	sll	s1,v1,0x4
      90:	022d8823 	subu	s1,s1,t5
      94:	02238821 	addu	s1,s1,v1
      98:	00118880 	sll	s1,s1,0x2
      9c:	02238821 	addu	s1,s1,v1
      a0:	02329021 	addu	s2,s1,s2
      a4:	8c510034 	lw	s1,52(v0)
      a8:	0000a812 	mflo	s5
      ac:	8c48001c 	lw	t0,28(v0)
      b0:	8c4a0024 	lw	t2,36(v0)
      b4:	00086880 	sll	t5,t0,0x2
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      b8:	02ec0018 	mult	s7,t4
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
      bc:	00087100 	sll	t6,t0,0x4
      c0:	01cd7023 	subu	t6,t6,t5
      c4:	000e9900 	sll	s3,t6,0x4
      c8:	026e7023 	subu	t6,s3,t6
      cc:	01c87021 	addu	t6,t6,t0
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      d0:	8c480038 	lw	t0,56(v0)
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
      d4:	000a78c0 	sll	t7,t2,0x3
  return m;
}

int
encode (int xin1, int xin2)
{
      d8:	afb40014 	sw	s4,20(sp)
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
      dc:	000aa140 	sll	s4,t2,0x5
      e0:	028fa023 	subu	s4,s4,t7
  int decis;

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
      e4:	8cd90000 	lw	t9,0(a2)
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      e8:	8c4f0010 	lw	t7,16(v0)
      ec:	0000b812 	mflo	s7
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
      f0:	028a5023 	subu	t2,s4,t2
      f4:	000aa080 	sll	s4,t2,0x2
  return m;
}

int
encode (int xin1, int xin2)
{
      f8:	afb6001c 	sw	s6,28(sp)
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
      fc:	03d80018 	mult	s8,t8
  int decis;

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
     100:	0019b080 	sll	s6,t9,0x2
     104:	0019c900 	sll	t9,t9,0x4
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     108:	01545021 	addu	t2,t2,s4
  int decis;

/* transmit quadrature mirror filters implemented here */
  h_ptr = h;
  tqmf_ptr = tqmf;
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
     10c:	0336c823 	subu	t9,t9,s6
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     110:	000fa100 	sll	s4,t7,0x4
     114:	000f7980 	sll	t7,t7,0x6
     118:	0219c821 	addu	t9,s0,t9
     11c:	01f47823 	subu	t7,t7,s4
     120:	032fc821 	addu	t9,t9,t7
     124:	8c4d0020 	lw	t5,32(v0)
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     128:	00129080 	sll	s2,s2,0x2
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     12c:	000d18c0 	sll	v1,t5,0x3
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     130:	0000f012 	mflo	s8
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     134:	000d6980 	sll	t5,t5,0x6
     138:	01a36823 	subu	t5,t5,v1
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     13c:	000e70c0 	sll	t6,t6,0x3
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     140:	01380018 	mult	t1,t8
     144:	8c490018 	lw	t1,24(v0)
     148:	000d1900 	sll	v1,t5,0x4
     14c:	000949c0 	sll	t1,t1,0x7
     150:	0329c821 	addu	t9,t9,t1
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     154:	8c49003c 	lw	t1,60(v0)
     158:	02559021 	addu	s2,s2,s5
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     15c:	01a36823 	subu	t5,t5,v1
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     160:	024e9021 	addu	s2,s2,t6
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     164:	8c4e0040 	lw	t6,64(v0)
     168:	032dc821 	addu	t9,t9,t5
     16c:	240d05a8 	addiu	t5,zero,1448
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     170:	000ab0c0 	sll	s6,t2,0x3
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     174:	0000c012 	mflo	t8
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     178:	01565023 	subu	t2,t2,s6
     17c:	000a5080 	sll	t2,t2,0x2
     180:	024a9021 	addu	s2,s2,t2
     184:	022c0018 	mult	s1,t4
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     188:	2411f36c 	addiu	s1,zero,-3220
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     18c:	025ef021 	addu	s8,s2,s8
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     190:	0337b821 	addu	s7,t9,s7
     194:	02f8c021 	addu	t8,s7,t8
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     198:	8c430044 	lw	v1,68(v0)
    m = -n;
  return m;
}

int
encode (int xin1, int xin2)
     19c:	244afffc 	addiu	t2,v0,-4
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     1a0:	000319c0 	sll	v1,v1,0x7
     1a4:	00006012 	mflo	t4
     1a8:	03cc6021 	addu	t4,s8,t4
     1ac:	00000000 	sll	zero,zero,0x0
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     1b0:	01110018 	mult	t0,s1
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     1b4:	2408fcb8 	addiu	t0,zero,-840
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     1b8:	00008812 	mflo	s1
     1bc:	03118821 	addu	s1,t8,s1
     1c0:	00000000 	sll	zero,zero,0x0
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     1c4:	01280018 	mult	t1,t0
/* final mult/accumulate */
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
  xb += (long) (*tqmf_ptr) * (*h_ptr++);

/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
     1c8:	3c090000 	lui	t1,0x0
     1cc:	25290054 	addiu	t1,t1,84
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     1d0:	00004012 	mflo	t0
     1d4:	01886021 	addu	t4,t4,t0
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     1d8:	8c480048 	lw	t0,72(v0)
     1dc:	01cd0018 	mult	t6,t5
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     1e0:	01831821 	addu	v1,t4,v1
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     1e4:	00006812 	mflo	t5
     1e8:	022d8821 	addu	s1,s1,t5
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     1ec:	240d0030 	addiu	t5,zero,48
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     1f0:	010b0018 	mult	t0,t3
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     1f4:	8c48004c 	lw	t0,76(v0)
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     1f8:	00005812 	mflo	t3
     1fc:	022b8821 	addu	s1,s1,t3
     200:	240b00d4 	addiu	t3,zero,212
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     204:	010d0018 	mult	t0,t5
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     208:	8c480050 	lw	t0,80(v0)
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     20c:	00006812 	mflo	t5
     210:	006d1821 	addu	v1,v1,t5
     214:	00000000 	sll	zero,zero,0x0
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     218:	010b0018 	mult	t0,t3
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     21c:	8c480054 	lw	t0,84(v0)
  xa = (long) (*tqmf_ptr++) * (*h_ptr++);
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     220:	00005812 	mflo	t3
     224:	01715821 	addu	t3,t3,s1
     228:	00000000 	sll	zero,zero,0x0
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     22c:	01070018 	mult	t0,a3
    }
/* final mult/accumulate */
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     230:	8c480058 	lw	t0,88(v0)
  xb = (long) (*tqmf_ptr++) * (*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
     234:	0000c012 	mflo	t8
     238:	03031821 	addu	v1,t8,v1
    }
/* final mult/accumulate */
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
  xb += (long) (*tqmf_ptr) * (*h_ptr++);
     23c:	2418000c 	addiu	t8,zero,12
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     240:	01070018 	mult	t0,a3
  xb += (long) (*tqmf_ptr) * (*h_ptr++);
     244:	8c48005c 	lw	t0,92(v0)
    {
      xa += (long) (*tqmf_ptr++) * (*h_ptr++);
      xb += (long) (*tqmf_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
     248:	00003812 	mflo	a3
     24c:	01673821 	addu	a3,t3,a3
     250:	00000000 	sll	zero,zero,0x0
  xb += (long) (*tqmf_ptr) * (*h_ptr++);
     254:	01180018 	mult	t0,t8
     258:	0000c012 	mflo	t8
     25c:	0078c021 	addu	t8,v1,t8

/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
  for (i = 0; i < 22; i++)
    *tqmf_ptr-- = *tqmf_ptr1--;
     260:	8d230000 	lw	v1,0(t1)
     264:	00000000 	sll	zero,zero,0x0
     268:	ad230008 	sw	v1,8(t1)
     26c:	2529fffc 	addiu	t1,t1,-4
  xa += (long) (*tqmf_ptr++) * (*h_ptr++);
  xb += (long) (*tqmf_ptr) * (*h_ptr++);

/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
  for (i = 0; i < 22; i++)
     270:	152afffb 	bne	t1,t2,260 <encode+0x248>
     274:	3c0b0000 	lui	t3,0x0
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
     278:	3c0a0000 	lui	t2,0x0
     27c:	8d530000 	lw	s3,0(t2)
     280:	8d6e0000 	lw	t6,0(t3)
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     284:	25680000 	addiu	t0,t3,0
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
     288:	01d30018 	mult	t6,s3
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     28c:	25430000 	addiu	v1,t2,0
     290:	8d140004 	lw	s4,4(t0)
     294:	8c6f0004 	lw	t7,4(v1)
     298:	8c750008 	lw	s5,8(v1)
     29c:	8d160008 	lw	s6,8(t0)
     2a0:	8c71000c 	lw	s1,12(v1)
     2a4:	8d12000c 	lw	s2,12(t0)
     2a8:	8d100010 	lw	s0,16(t0)
     2ac:	8c790010 	lw	t9,16(v1)

/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
  for (i = 0; i < 22; i++)
    *tqmf_ptr-- = *tqmf_ptr1--;
  *tqmf_ptr-- = xin1;
     2b0:	ac440004 	sw	a0,4(v0)

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);

/* filtep - compute predictor output signal (pole section) */
  spl = filtep (rlt1, al1, rlt2, al2);
     2b4:	8f8c0000 	lw	t4,0(gp)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     2b8:	8f840000 	lw	a0,0(gp)
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
     2bc:	00009812 	mflo	s3

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);

/* filtep - compute predictor output signal (pole section) */
  spl = filtep (rlt1, al1, rlt2, al2);
     2c0:	8f890000 	lw	t1,0(gp)
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     2c4:	8f8d0000 	lw	t5,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     2c8:	8d1e0014 	lw	s8,20(t0)
     2cc:	028f0018 	mult	s4,t7
     2d0:	8c770014 	lw	s7,20(v1)
    *tqmf_ptr-- = *tqmf_ptr1--;
  *tqmf_ptr-- = xin1;
  *tqmf_ptr = xin2;

/* scale outputs */
  xl = (xa + xb) >> 15;
     2d4:	03077821 	addu	t7,t8,a3
/* update delay line tqmf */
  tqmf_ptr1 = tqmf_ptr - 2;
  for (i = 0; i < 22; i++)
    *tqmf_ptr-- = *tqmf_ptr1--;
  *tqmf_ptr-- = xin1;
  *tqmf_ptr = xin2;
     2d8:	acc50000 	sw	a1,0(a2)

/* scale outputs */
  xl = (xa + xb) >> 15;
  xh = (xa - xb) >> 15;
     2dc:	00f83823 	subu	a3,a3,t8
    *tqmf_ptr-- = *tqmf_ptr1--;
  *tqmf_ptr-- = xin1;
  *tqmf_ptr = xin2;

/* scale outputs */
  xl = (xa + xb) >> 15;
     2e0:	000f7bc3 	sra	t7,t7,0xf
  xh = (xa - xb) >> 15;
     2e4:	00073bc3 	sra	a3,a3,0xf
    *tqmf_ptr-- = *tqmf_ptr1--;
  *tqmf_ptr-- = xin1;
  *tqmf_ptr = xin2;

/* scale outputs */
  xl = (xa + xb) >> 15;
     2e8:	af8f0000 	sw	t7,0(gp)
  xh = (xa - xb) >> 15;
     2ec:	af870000 	sw	a3,0(gp)
/* compute the predictor output value in the lower sub_band encoder */
  sl = szl + spl;
  el = xl - sl;

/* quantl: quantize the difference signal */
  il = quantl (el, detl);
     2f0:	8f850000 	lw	a1,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     2f4:	0000a012 	mflo	s4
     2f8:	02939821 	addu	s3,s4,s3
     2fc:	00000000 	sll	zero,zero,0x0
     300:	02d50018 	mult	s6,s5
     304:	0000a812 	mflo	s5
     308:	02759821 	addu	s3,s3,s5
     30c:	00000000 	sll	zero,zero,0x0
     310:	02510018 	mult	s2,s1
     314:	00008812 	mflo	s1
	...
     320:	02190018 	mult	s0,t9
     324:	0271c821 	addu	t9,s3,s1
     328:	00008012 	mflo	s0
     32c:	0330c821 	addu	t9,t9,s0
     330:	00000000 	sll	zero,zero,0x0
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     334:	01840018 	mult	t4,a0
     338:	00002012 	mflo	a0
	...
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     344:	012d0018 	mult	t1,t5
     348:	00001012 	mflo	v0

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);

/* filtep - compute predictor output signal (pole section) */
  spl = filtep (rlt1, al1, rlt2, al2);
     34c:	0082c021 	addu	t8,a0,v0
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
     350:	0018c040 	sll	t8,t8,0x1
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     354:	03d70018 	mult	s8,s7
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
     358:	0018c3c3 	sra	t8,t8,0xf

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);

/* filtep - compute predictor output signal (pole section) */
  spl = filtep (rlt1, al1, rlt2, al2);
     35c:	af980000 	sw	t8,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     360:	00003012 	mflo	a2
     364:	00d93021 	addu	a2,a2,t9

  return ((int) (zl >> 14));	/* x2 here */
     368:	00063383 	sra	a2,a2,0xe

/* filtep - compute predictor output signal (pole section) */
  spl = filtep (rlt1, al1, rlt2, al2);

/* compute the predictor output value in the lower sub_band encoder */
  sl = szl + spl;
     36c:	00d8c021 	addu	t8,a2,t8
  el = xl - sl;
     370:	01f87823 	subu	t7,t7,t8
/* end of quadrature mirror filter code */

/* starting with lower sub band encoder */

/* filtez - compute predictor output section - zero section */
  szl = filtez (delay_bpl, delay_dltx);
     374:	af860000 	sw	a2,0(gp)

/* filtep - compute predictor output signal (pole section) */
  spl = filtep (rlt1, al1, rlt2, al2);

/* compute the predictor output value in the lower sub_band encoder */
  sl = szl + spl;
     378:	af980000 	sw	t8,0(gp)
  el = xl - sl;
     37c:	af8f0000 	sw	t7,0(gp)
{
  int ril, mil;
  long int wd, decis;

/* abs of difference signal */
  wd = abs (el);
     380:	05e00224 	bltz	t7,c14 <encode+0xbfc>
     384:	01e0c821 	addu	t9,t7,zero
     388:	3c040000 	lui	a0,0x0
     38c:	24840000 	addiu	a0,a0,0
/* determine mil based on decision levels and detl gain */
  for (mil = 0; mil < 30; mil++)
     390:	00001021 	addu	v0,zero,zero
     394:	080000ea 	j	3a8 <encode+0x390>
     398:	2410001e 	addiu	s0,zero,30
     39c:	24420001 	addiu	v0,v0,1
     3a0:	10500009 	beq	v0,s0,3c8 <encode+0x3b0>
     3a4:	00000000 	sll	zero,zero,0x0
    {
      decis = (decis_levl[mil] * (long) detl) >> 15L;
     3a8:	8c910000 	lw	s1,0(a0)
     3ac:	00000000 	sll	zero,zero,0x0
     3b0:	00b10018 	mult	a1,s1
     3b4:	00008812 	mflo	s1
     3b8:	00118bc3 	sra	s1,s1,0xf
      if (wd <= decis)
     3bc:	0239882a 	slt	s1,s1,t9
     3c0:	1620fff6 	bnez	s1,39c <encode+0x384>
     3c4:	24840004 	addiu	a0,a0,4
	break;
    }
/* if mil=30 then wd is less than all decision levels */
  if (el >= 0)
     3c8:	05e001f2 	bltz	t7,b94 <encode+0xb7c>
     3cc:	3c040000 	lui	a0,0x0
    ril = quant26bt_pos[mil];
     3d0:	00021080 	sll	v0,v0,0x2
     3d4:	24840000 	addiu	a0,a0,0
     3d8:	00441021 	addu	v0,v0,a0
     3dc:	8c590000 	lw	t9,0(v0)
     3e0:	00000000 	sll	zero,zero,0x0
/* quantl: quantize the difference signal */
  il = quantl (el, detl);

/* computes quantized difference signal */
/* for invqbl, truncate by 2 lsbs, so mode = 3 */
  dlt = ((long) detl * qq4_code4_table[il >> 2]) >> 15;
     3e4:	00197883 	sra	t7,t9,0x2
     3e8:	3c020000 	lui	v0,0x0
     3ec:	000f7880 	sll	t7,t7,0x2
     3f0:	24420000 	addiu	v0,v0,0
     3f4:	01e21021 	addu	v0,t7,v0
     3f8:	8c420000 	lw	v0,0(v0)

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     3fc:	8f840000 	lw	a0,0(gp)
/* quantl: quantize the difference signal */
  il = quantl (el, detl);

/* computes quantized difference signal */
/* for invqbl, truncate by 2 lsbs, so mode = 3 */
  dlt = ((long) detl * qq4_code4_table[il >> 2]) >> 15;
     400:	00a20018 	mult	a1,v0
int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
     404:	3c050000 	lui	a1,0x0
     408:	24a50000 	addiu	a1,a1,0
     40c:	01e57821 	addu	t7,t7,a1

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     410:	000429c0 	sll	a1,a0,0x7
     414:	00a42023 	subu	a0,a1,a0
  nbl = (int) wd + wl_code_table[il >> 2];
     418:	8de50000 	lw	a1,0(t7)

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     41c:	000421c3 	sra	a0,a0,0x7
  nbl = (int) wd + wl_code_table[il >> 2];
     420:	00852021 	addu	a0,a0,a1
/* compute the predictor output value in the lower sub_band encoder */
  sl = szl + spl;
  el = xl - sl;

/* quantl: quantize the difference signal */
  il = quantl (el, detl);
     424:	af990000 	sw	t9,0(gp)

/* computes quantized difference signal */
/* for invqbl, truncate by 2 lsbs, so mode = 3 */
  dlt = ((long) detl * qq4_code4_table[il >> 2]) >> 15;
     428:	00001012 	mflo	v0
     42c:	000213c3 	sra	v0,v0,0xf
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
  if (nbl < 0)
     430:	048001cd 	bltz	a0,b68 <encode+0xb50>
     434:	af820000 	sw	v0,0(gp)
    nbl = 0;
  if (nbl > 18432)
     438:	28854801 	slti	a1,a0,18433
     43c:	14a001cc 	bnez	a1,b70 <encode+0xb58>
     440:	0004c983 	sra	t9,a0,0x6
     444:	00008021 	addu	s0,zero,zero
     448:	0000c821 	addu	t9,zero,zero
    nbl = 18432;
     44c:	24044800 	addiu	a0,zero,18432
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     450:	3c0f0000 	lui	t7,0x0
     454:	0019c880 	sll	t9,t9,0x2
     458:	25ef0000 	addiu	t7,t7,0
     45c:	01f9c821 	addu	t9,t7,t9
     460:	8f250000 	lw	a1,0(t9)
/* scalel: compute the quantizer scale factor in the lower sub band */
/* calling parameters nbl and 8 (constant such that scalel can be scaleh) */
  detl = scalel (nbl, 8);

/* parrec - simple addition to compute recontructed signal for adaptive pred */
  plt = dlt + szl;
     464:	00463021 	addu	a2,v0,a2
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     468:	02052807 	srav	a1,a1,s0
  return (wd3 << 3);
     46c:	000528c0 	sll	a1,a1,0x3
/* computes quantized difference signal */
/* for invqbl, truncate by 2 lsbs, so mode = 3 */
  dlt = ((long) detl * qq4_code4_table[il >> 2]) >> 15;

/* logscl: updates logarithmic quant. scale factor in low sub band */
  nbl = logscl (il, nbl);
     470:	af840000 	sw	a0,0(gp)

/* scalel: compute the quantizer scale factor in the lower sub band */
/* calling parameters nbl and 8 (constant such that scalel can be scaleh) */
  detl = scalel (nbl, 8);
     474:	af850000 	sw	a1,0(gp)
void
upzero (int dlt, int *dlti, int *bli)
{
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
     478:	14400175 	bnez	v0,a50 <encode+0xa38>
     47c:	af860000 	sw	a2,0(gp)
    {
      for (i = 0; i < 6; i++)
	{
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     480:	8d520000 	lw	s2,0(t2)
     484:	8c710004 	lw	s1,4(v1)
     488:	8c700008 	lw	s0,8(v1)
     48c:	8c79000c 	lw	t9,12(v1)
     490:	8c650010 	lw	a1,16(v1)
     494:	8c640014 	lw	a0,20(v1)
     498:	0012f200 	sll	s8,s2,0x8
     49c:	0011ba00 	sll	s7,s1,0x8
     4a0:	0010b200 	sll	s6,s0,0x8
     4a4:	0019aa00 	sll	s5,t9,0x8
     4a8:	0005a200 	sll	s4,a1,0x8
     4ac:	00049a00 	sll	s3,a0,0x8
     4b0:	03d29023 	subu	s2,s8,s2
     4b4:	02f18823 	subu	s1,s7,s1
     4b8:	02d08023 	subu	s0,s6,s0
     4bc:	02b9c823 	subu	t9,s5,t9
     4c0:	02852823 	subu	a1,s4,a1
     4c4:	02642023 	subu	a0,s3,a0
     4c8:	00129203 	sra	s2,s2,0x8
     4cc:	00118a03 	sra	s1,s1,0x8
     4d0:	00108203 	sra	s0,s0,0x8
     4d4:	0019ca03 	sra	t9,t9,0x8
     4d8:	00052a03 	sra	a1,a1,0x8
     4dc:	00042203 	sra	a0,a0,0x8
     4e0:	ad520000 	sw	s2,0(t2)
     4e4:	ac710004 	sw	s1,4(v1)
     4e8:	ac700008 	sw	s0,8(v1)
     4ec:	ac79000c 	sw	t9,12(v1)
     4f0:	ac650010 	sw	a1,16(v1)
     4f4:	ac640014 	sw	a0,20(v1)
/* return params:      updated bpli, delayed dltx */
  upzero (dlt, delay_dltx, delay_bpl);

/* uppol2- update second predictor coefficient apl2 and delay it as al2 */
/* calling parameters: al1, al2, plt, plt1, plt2 */
  al2 = uppol2 (al1, al2, plt, plt1, plt2);
     4f8:	8f990000 	lw	t9,0(gp)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
     4fc:	8d030010 	lw	v1,16(t0)
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
     500:	00d90018 	mult	a2,t9
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
  dlti[4] = dlti[3];
     504:	8d0a000c 	lw	t2,12(t0)
  dlti[3] = dlti[2];
     508:	8d050008 	lw	a1,8(t0)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
     50c:	ad030014 	sw	v1,20(t0)
  dlti[4] = dlti[3];
  dlti[3] = dlti[2];
     510:	ad05000c 	sw	a1,12(t0)
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
  dlti[4] = dlti[3];
     514:	ad0a0010 	sw	t2,16(t0)
  dlti[3] = dlti[2];
  dlti[1] = dlti[0];
     518:	ad0e0004 	sw	t6,4(t0)
  dlti[0] = dlt;
     51c:	ad620000 	sw	v0,0(t3)
/* return params:      updated bpli, delayed dltx */
  upzero (dlt, delay_dltx, delay_bpl);

/* uppol2- update second predictor coefficient apl2 and delay it as al2 */
/* calling parameters: al1, al2, plt, plt1, plt2 */
  al2 = uppol2 (al1, al2, plt, plt1, plt2);
     520:	8f850000 	lw	a1,0(gp)
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
     524:	00002012 	mflo	a0
     528:	04800002 	bltz	a0,534 <encode+0x51c>
     52c:	00091880 	sll	v1,t1,0x2
    wd2 = -wd2;			/* check same sign */
     530:	00031823 	negu	v1,v1
  wd2 = wd2 >> 7;		/* gain of 1/128 */
  if ((long) plt * plt2 >= 0L)
     534:	00c50018 	mult	a2,a1
     538:	00002812 	mflo	a1
     53c:	04a0019e 	bltz	a1,bb8 <encode+0xba0>
     540:	000319c3 	sra	v1,v1,0x7
    {
      wd4 = wd2 + 128;		/* same sign case */
     544:	24630080 	addiu	v1,v1,128
    }
  else
    {
      wd4 = wd2 - 128;
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */
     548:	000c29c0 	sll	a1,t4,0x7
     54c:	00ac6023 	subu	t4,a1,t4
     550:	000c61c3 	sra	t4,t4,0x7
     554:	006c1821 	addu	v1,v1,t4

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
     558:	28653001 	slti	a1,v1,12289
     55c:	10a0013a 	beqz	a1,a48 <encode+0xa30>
     560:	2865d000 	slti	a1,v1,-12288
    apl2 = 12288;
  if (apl2 < -12288)
     564:	14a00224 	bnez	a1,df8 <encode+0xde0>
     568:	240a6c00 	addiu	t2,zero,27648
     56c:	240a3c00 	addiu	t2,zero,15360
     570:	01435023 	subu	t2,t2,v1
int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
     574:	00092a00 	sll	a1,t1,0x8
     578:	00a94823 	subu	t1,a1,t1
/* return params:      updated bpli, delayed dltx */
  upzero (dlt, delay_dltx, delay_bpl);

/* uppol2- update second predictor coefficient apl2 and delay it as al2 */
/* calling parameters: al1, al2, plt, plt1, plt2 */
  al2 = uppol2 (al1, al2, plt, plt1, plt2);
     57c:	af830000 	sw	v1,0(gp)
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
     580:	0480018f 	bltz	a0,bc0 <encode+0xba8>
     584:	00094a03 	sra	t1,t1,0x8
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
     588:	252900c0 	addiu	t1,t1,192
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
  if (apl1 > wd3)
     58c:	0149182a 	slt	v1,t2,t1
     590:	14600004 	bnez	v1,5a4 <encode+0x58c>
     594:	000a1823 	negu	v1,t2
    apl1 = wd3;
  if (apl1 < -wd3)
     598:	0123202a 	slt	a0,t1,v1
     59c:	1480017b 	bnez	a0,b8c <encode+0xb74>
     5a0:	01205021 	addu	t2,t1,zero
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
     5a4:	3c090000 	lui	t1,0x0
     5a8:	3c080000 	lui	t0,0x0
     5ac:	8d120000 	lw	s2,0(t0)
     5b0:	8d2e0000 	lw	t6,0(t1)
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     5b4:	25240000 	addiu	a0,t1,0
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
     5b8:	01d20018 	mult	t6,s2
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     5bc:	25030000 	addiu	v1,t0,0
     5c0:	8c750004 	lw	s5,4(v1)
     5c4:	8c960004 	lw	s6,4(a0)
     5c8:	8c730008 	lw	s3,8(v1)
     5cc:	8c940008 	lw	s4,8(a0)
     5d0:	8c91000c 	lw	s1,12(a0)
     5d4:	8c70000c 	lw	s0,12(v1)
/* uppol1 :update first predictor coefficient apl1 and delay it as al1 */
/* calling parameters: al1, apl2, plt, plt1 */
  al1 = uppol1 (al1, al2, plt, plt1);

/* recons : compute recontructed signal for adaptive predictor */
  rlt = sl + dlt;
     5d8:	00581021 	addu	v0,v0,t8
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     5dc:	8c970010 	lw	s7,16(a0)
/* uppol1 :update first predictor coefficient apl1 and delay it as al1 */
/* calling parameters: al1, apl2, plt, plt1 */
  al1 = uppol1 (al1, al2, plt, plt1);

/* recons : compute recontructed signal for adaptive predictor */
  rlt = sl + dlt;
     5e0:	af820000 	sw	v0,0(gp)

/* done with lower sub_band encoder; now implement delays for next time*/
  rlt2 = rlt1;
  rlt1 = rlt;
     5e4:	af820000 	sw	v0,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     5e8:	8c620010 	lw	v0,16(v1)
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
     5ec:	00009012 	mflo	s2

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);

  sph = filtep (rh1, ah1, rh2, ah2);
     5f0:	8f8b0000 	lw	t3,0(gp)

/* done with lower sub_band encoder; now implement delays for next time*/
  rlt2 = rlt1;
  rlt1 = rlt;
  plt2 = plt1;
  plt1 = plt;
     5f4:	af860000 	sw	a2,0(gp)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     5f8:	8f860000 	lw	a2,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     5fc:	02d50018 	mult	s6,s5

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);

  sph = filtep (rh1, ah1, rh2, ah2);
     600:	8f850000 	lw	a1,0(gp)
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     604:	8f8c0000 	lw	t4,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     608:	8c7e0014 	lw	s8,20(v1)
/* calling parameters: al1, al2, plt, plt1, plt2 */
  al2 = uppol2 (al1, al2, plt, plt1, plt2);

/* uppol1 :update first predictor coefficient apl1 and delay it as al1 */
/* calling parameters: al1, apl2, plt, plt1 */
  al1 = uppol1 (al1, al2, plt, plt1);
     60c:	af8a0000 	sw	t2,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     610:	8c8a0014 	lw	t2,20(a0)

/* recons : compute recontructed signal for adaptive predictor */
  rlt = sl + dlt;

/* done with lower sub_band encoder; now implement delays for next time*/
  rlt2 = rlt1;
     614:	af8d0000 	sw	t5,0(gp)
  rlt1 = rlt;
  plt2 = plt1;
     618:	af990000 	sw	t9,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     61c:	0000a812 	mflo	s5
     620:	02b2a821 	addu	s5,s5,s2
     624:	00000000 	sll	zero,zero,0x0
     628:	02930018 	mult	s4,s3
     62c:	00009812 	mflo	s3
	...
     638:	02300018 	mult	s1,s0
     63c:	02b38021 	addu	s0,s5,s3
     640:	00008812 	mflo	s1
     644:	02118021 	addu	s0,s0,s1
     648:	00000000 	sll	zero,zero,0x0
     64c:	02e20018 	mult	s7,v0
     650:	0000b812 	mflo	s7
     654:	0217b821 	addu	s7,s0,s7
     658:	00000000 	sll	zero,zero,0x0
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     65c:	01660018 	mult	t3,a2
     660:	00003012 	mflo	a2
	...
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     66c:	00ac0018 	mult	a1,t4
     670:	00001012 	mflo	v0
	...
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     67c:	015e0018 	mult	t2,s8

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);

  sph = filtep (rh1, ah1, rh2, ah2);
     680:	00c25021 	addu	t2,a2,v0
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
     684:	000a5040 	sll	t2,t2,0x1
     688:	000a53c3 	sra	t2,t2,0xf

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);

  sph = filtep (rh1, ah1, rh2, ah2);
     68c:	af8a0000 	sw	t2,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     690:	0000f012 	mflo	s8
     694:	03d7f021 	addu	s8,s8,s7

  return ((int) (zl >> 14));	/* x2 here */
     698:	001ef383 	sra	s8,s8,0xe
  szh = filtez (delay_bph, delay_dhx);

  sph = filtep (rh1, ah1, rh2, ah2);

/* predic: sh = sph + szh */
  sh = sph + szh;
     69c:	03ca5021 	addu	t2,s8,t2
/* subtra: eh = xh - sh */
  eh = xh - sh;
     6a0:	00ea3823 	subu	a3,a3,t2
  plt2 = plt1;
  plt1 = plt;

/* high band encode */

  szh = filtez (delay_bph, delay_dhx);
     6a4:	af9e0000 	sw	s8,0(gp)

  sph = filtep (rh1, ah1, rh2, ah2);

/* predic: sh = sph + szh */
  sh = sph + szh;
     6a8:	af8a0000 	sw	t2,0(gp)
/* subtra: eh = xh - sh */
  eh = xh - sh;

/* quanth - quantization of difference signal for higher sub-band */
/* quanth: in-place for speed params: eh, deth (has init. value) */
  if (eh >= 0)
     6ac:	04e00148 	bltz	a3,bd0 <encode+0xbb8>
     6b0:	af870000 	sw	a3,0(gp)
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
    }
  decis = (564L * (long) deth) >> 12L;
     6b4:	8f860000 	lw	a2,0(gp)

/* quanth - quantization of difference signal for higher sub-band */
/* quanth: in-place for speed params: eh, deth (has init. value) */
  if (eh >= 0)
    {
      ih = 3;			/* 2,3 are pos codes */
     6b8:	24020003 	addiu	v0,zero,3
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
    }
  decis = (564L * (long) deth) >> 12L;
     6bc:	00068080 	sll	s0,a2,0x2
     6c0:	0006c100 	sll	t8,a2,0x4
     6c4:	0218c021 	addu	t8,s0,t8
     6c8:	001880c0 	sll	s0,t8,0x3
     6cc:	0218c023 	subu	t8,s0,t8
     6d0:	0306c021 	addu	t8,t8,a2
     6d4:	0018c080 	sll	t8,t8,0x2

/* quanth - quantization of difference signal for higher sub-band */
/* quanth: in-place for speed params: eh, deth (has init. value) */
  if (eh >= 0)
    {
      ih = 3;			/* 2,3 are pos codes */
     6d8:	af820000 	sw	v0,0(gp)
     6dc:	24190002 	addiu	t9,zero,2
     6e0:	240200c0 	addiu	v0,zero,192
     6e4:	240d0003 	addiu	t5,zero,3
  else
    {
      ih = 1;			/* 0,1 are neg codes */
    }
  decis = (564L * (long) deth) >> 12L;
  if (abs (eh) > decis)
     6e8:	04e00148 	bltz	a3,c0c <encode+0xbf4>
     6ec:	0018c303 	sra	t8,t8,0xc
     6f0:	0307382a 	slt	a3,t8,a3
     6f4:	10e00004 	beqz	a3,708 <encode+0x6f0>
     6f8:	3c070000 	lui	a3,0x0
    ih--;			/* mih = 2 case */
     6fc:	af990000 	sw	t9,0(gp)
     700:	00191180 	sll	v0,t9,0x6
     704:	03206821 	addu	t5,t9,zero

/* compute the quantized difference signal, higher sub-band*/
  dh = ((long) deth * qq2_code2_table[ih]) >> 15L;
     708:	000d6880 	sll	t5,t5,0x2
     70c:	24e70000 	addiu	a3,a3,0
     710:	01a73821 	addu	a3,t5,a3
     714:	8cf80000 	lw	t8,0(a3)

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
     718:	8f870000 	lw	a3,0(gp)
  decis = (564L * (long) deth) >> 12L;
  if (abs (eh) > decis)
    ih--;			/* mih = 2 case */

/* compute the quantized difference signal, higher sub-band*/
  dh = ((long) deth * qq2_code2_table[ih]) >> 15L;
     71c:	00d80018 	mult	a2,t8
int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
     720:	3c180000 	lui	t8,0x0
     724:	27180000 	addiu	t8,t8,0
     728:	01b86821 	addu	t5,t5,t8

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
     72c:	0007c1c0 	sll	t8,a3,0x7
     730:	03073823 	subu	a3,t8,a3
  nbh = wd + wh_code_table[ih];
     734:	8db80000 	lw	t8,0(t5)

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
     738:	000769c3 	sra	t5,a3,0x7
  nbh = wd + wh_code_table[ih];
     73c:	01b86821 	addu	t5,t5,t8
  decis = (564L * (long) deth) >> 12L;
  if (abs (eh) > decis)
    ih--;			/* mih = 2 case */

/* compute the quantized difference signal, higher sub-band*/
  dh = ((long) deth * qq2_code2_table[ih]) >> 15L;
     740:	00003012 	mflo	a2
     744:	000633c3 	sra	a2,a2,0xf
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
  if (nbh < 0)
     748:	05a000b8 	bltz	t5,a2c <encode+0xa14>
     74c:	af860000 	sw	a2,0(gp)
    nbh = 0;
  if (nbh > 22528)
     750:	29a75801 	slti	a3,t5,22529
     754:	14e000b7 	bnez	a3,a34 <encode+0xa1c>
     758:	000d3983 	sra	a3,t5,0x6
     75c:	0000c021 	addu	t8,zero,zero
     760:	00003821 	addu	a3,zero,zero
    nbh = 22528;
     764:	240d5800 	addiu	t5,zero,22528
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     768:	00073880 	sll	a3,a3,0x2
     76c:	01e73821 	addu	a3,t7,a3
     770:	8cef0000 	lw	t7,0(a3)

/* note : scalel and scaleh use same code, different parameters */
  deth = scalel (nbh, 10);

/* parrec - add pole predictor output to quantized diff. signal */
  ph = dh + szh;
     774:	00de3821 	addu	a3,a2,s8
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     778:	030f7807 	srav	t7,t7,t8
  return (wd3 << 3);
     77c:	000f78c0 	sll	t7,t7,0x3

/* compute the quantized difference signal, higher sub-band*/
  dh = ((long) deth * qq2_code2_table[ih]) >> 15L;

/* logsch: update logarithmic quantizer scale factor in hi sub-band*/
  nbh = logsch (ih, nbh);
     780:	af8d0000 	sw	t5,0(gp)

/* note : scalel and scaleh use same code, different parameters */
  deth = scalel (nbh, 10);
     784:	af8f0000 	sw	t7,0(gp)
void
upzero (int dlt, int *dlti, int *bli)
{
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
     788:	14c00061 	bnez	a2,910 <encode+0x8f8>
     78c:	af870000 	sw	a3,0(gp)
    {
      for (i = 0; i < 6; i++)
	{
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     790:	8d110000 	lw	s1,0(t0)
     794:	8c700004 	lw	s0,4(v1)
     798:	8c790008 	lw	t9,8(v1)
     79c:	8c78000c 	lw	t8,12(v1)
     7a0:	8c6f0010 	lw	t7,16(v1)
     7a4:	8c6d0014 	lw	t5,20(v1)
     7a8:	0011ba00 	sll	s7,s1,0x8
     7ac:	0010b200 	sll	s6,s0,0x8
     7b0:	0019aa00 	sll	s5,t9,0x8
     7b4:	0018a200 	sll	s4,t8,0x8
     7b8:	000f9a00 	sll	s3,t7,0x8
     7bc:	000d9200 	sll	s2,t5,0x8
     7c0:	02f18823 	subu	s1,s7,s1
     7c4:	02d08023 	subu	s0,s6,s0
     7c8:	02b9c823 	subu	t9,s5,t9
     7cc:	0298c023 	subu	t8,s4,t8
     7d0:	026f7823 	subu	t7,s3,t7
     7d4:	024d6823 	subu	t5,s2,t5
     7d8:	00118a03 	sra	s1,s1,0x8
     7dc:	00108203 	sra	s0,s0,0x8
     7e0:	0019ca03 	sra	t9,t9,0x8
     7e4:	0018c203 	sra	t8,t8,0x8
     7e8:	000f7a03 	sra	t7,t7,0x8
     7ec:	000d6a03 	sra	t5,t5,0x8
     7f0:	ad110000 	sw	s1,0(t0)
     7f4:	ac700004 	sw	s0,4(v1)
     7f8:	ac790008 	sw	t9,8(v1)
     7fc:	ac78000c 	sw	t8,12(v1)
     800:	ac6f0010 	sw	t7,16(v1)
     804:	ac6d0014 	sw	t5,20(v1)
/* return params: updated bphi, delayed dhx */
  upzero (dh, delay_dhx, delay_bph);

/* uppol2: update second predictor coef aph2 and delay as ah2 */
/* calling params: ah1, ah2, ph, ph1, ph2 */
  ah2 = uppol2 (ah1, ah2, ph, ph1, ph2);
     808:	8f880000 	lw	t0,0(gp)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
     80c:	8c830010 	lw	v1,16(a0)
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
     810:	00e80018 	mult	a3,t0
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
  dlti[4] = dlti[3];
     814:	8c98000c 	lw	t8,12(a0)
  dlti[3] = dlti[2];
     818:	8c8f0008 	lw	t7,8(a0)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
     81c:	ac830014 	sw	v1,20(a0)
  dlti[4] = dlti[3];
     820:	ac980010 	sw	t8,16(a0)
  dlti[3] = dlti[2];
     824:	ac8f000c 	sw	t7,12(a0)
  dlti[1] = dlti[0];
     828:	ac8e0004 	sw	t6,4(a0)
  dlti[0] = dlt;
     82c:	ad260000 	sw	a2,0(t1)
/* return params: updated bphi, delayed dhx */
  upzero (dh, delay_dhx, delay_bph);

/* uppol2: update second predictor coef aph2 and delay as ah2 */
/* calling params: ah1, ah2, ph, ph1, ph2 */
  ah2 = uppol2 (ah1, ah2, ph, ph1, ph2);
     830:	8f840000 	lw	a0,0(gp)
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
     834:	00006812 	mflo	t5
     838:	05a00002 	bltz	t5,844 <encode+0x82c>
     83c:	00051880 	sll	v1,a1,0x2
    wd2 = -wd2;			/* check same sign */
     840:	00031823 	negu	v1,v1
  wd2 = wd2 >> 7;		/* gain of 1/128 */
  if ((long) plt * plt2 >= 0L)
     844:	00e40018 	mult	a3,a0
     848:	00002012 	mflo	a0
     84c:	048000de 	bltz	a0,bc8 <encode+0xbb0>
     850:	000319c3 	sra	v1,v1,0x7
    {
      wd4 = wd2 + 128;		/* same sign case */
     854:	24630080 	addiu	v1,v1,128
    }
  else
    {
      wd4 = wd2 - 128;
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */
     858:	000b21c0 	sll	a0,t3,0x7
     85c:	008b5823 	subu	t3,a0,t3
     860:	000b59c3 	sra	t3,t3,0x7
     864:	006b1821 	addu	v1,v1,t3

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
     868:	28643001 	slti	a0,v1,12289
     86c:	10800026 	beqz	a0,908 <encode+0x8f0>
     870:	2864d000 	slti	a0,v1,-12288
    apl2 = 12288;
  if (apl2 < -12288)
     874:	1480015e 	bnez	a0,df0 <encode+0xdd8>
     878:	24046c00 	addiu	a0,zero,27648
     87c:	24043c00 	addiu	a0,zero,15360
     880:	00832023 	subu	a0,a0,v1
int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
     884:	00054a00 	sll	t1,a1,0x8
     888:	01252823 	subu	a1,t1,a1
/* return params: updated bphi, delayed dhx */
  upzero (dh, delay_dhx, delay_bph);

/* uppol2: update second predictor coef aph2 and delay as ah2 */
/* calling params: ah1, ah2, ph, ph1, ph2 */
  ah2 = uppol2 (ah1, ah2, ph, ph1, ph2);
     88c:	af830000 	sw	v1,0(gp)
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
     890:	05a000c7 	bltz	t5,bb0 <encode+0xb98>
     894:	00052a03 	sra	a1,a1,0x8
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
     898:	24a500c0 	addiu	a1,a1,192
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
  if (apl1 > wd3)
     89c:	0085182a 	slt	v1,a0,a1
     8a0:	14600005 	bnez	v1,8b8 <encode+0x8a0>
     8a4:	00041823 	negu	v1,a0
    apl1 = wd3;
  if (apl1 < -wd3)
     8a8:	00a02021 	addu	a0,a1,zero
     8ac:	00a3282a 	slt	a1,a1,v1
     8b0:	14a000b4 	bnez	a1,b84 <encode+0xb6c>
     8b4:	00000000 	sll	zero,zero,0x0
  ph2 = ph1;
  ph1 = ph;

/* multiplex ih and il to get signals together */
  return (il | (ih << 6));
}
     8b8:	8f830000 	lw	v1,0(gp)

/* uppol1:  update first predictor coef. aph2 and delay it as ah1 */
  ah1 = uppol1 (ah1, ah2, ph, ph1);

/* recons for higher sub-band */
  yh = sh + dh;
     8bc:	00ca3021 	addu	a2,a2,t2
  ph2 = ph1;
  ph1 = ph;

/* multiplex ih and il to get signals together */
  return (il | (ih << 6));
}
     8c0:	00431025 	or	v0,v0,v1
     8c4:	8fbe0024 	lw	s8,36(sp)
     8c8:	8fb70020 	lw	s7,32(sp)
     8cc:	8fb6001c 	lw	s6,28(sp)
     8d0:	8fb50018 	lw	s5,24(sp)
     8d4:	8fb40014 	lw	s4,20(sp)
     8d8:	8fb30010 	lw	s3,16(sp)
     8dc:	8fb2000c 	lw	s2,12(sp)
     8e0:	8fb10008 	lw	s1,8(sp)
     8e4:	8fb00004 	lw	s0,4(sp)
/* uppol2: update second predictor coef aph2 and delay as ah2 */
/* calling params: ah1, ah2, ph, ph1, ph2 */
  ah2 = uppol2 (ah1, ah2, ph, ph1, ph2);

/* uppol1:  update first predictor coef. aph2 and delay it as ah1 */
  ah1 = uppol1 (ah1, ah2, ph, ph1);
     8e8:	af840000 	sw	a0,0(gp)

/* recons for higher sub-band */
  yh = sh + dh;
     8ec:	af860000 	sw	a2,0(gp)

/* done with higher sub-band encoder, now Delay for next time */
  rh2 = rh1;
     8f0:	af8c0000 	sw	t4,0(gp)
  rh1 = yh;
     8f4:	af860000 	sw	a2,0(gp)
  ph2 = ph1;
     8f8:	af880000 	sw	t0,0(gp)
  ph1 = ph;
     8fc:	af870000 	sw	a3,0(gp)

/* multiplex ih and il to get signals together */
  return (il | (ih << 6));
}
     900:	03e00008 	jr	ra
     904:	27bd0028 	addiu	sp,sp,40
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    apl2 = 12288;
     908:	0800021f 	j	87c <encode+0x864>
     90c:	24033000 	addiu	v1,zero,12288
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     910:	8d2d0000 	lw	t5,0(t1)
     914:	00000000 	sll	zero,zero,0x0
     918:	00cd0018 	mult	a2,t5
     91c:	00006812 	mflo	t5
     920:	05a000be 	bltz	t5,c1c <encode+0xc04>
     924:	240f0080 	addiu	t7,zero,128
     928:	8c980004 	lw	t8,4(a0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     92c:	8d0d0000 	lw	t5,0(t0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     930:	00d80018 	mult	a2,t8
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     934:	000dc200 	sll	t8,t5,0x8
     938:	030d6823 	subu	t5,t8,t5
     93c:	000d6a03 	sra	t5,t5,0x8
	  bli[i] = wd2 + wd3;
     940:	01ed7821 	addu	t7,t7,t5
     944:	ad0f0000 	sw	t7,0(t0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     948:	00007812 	mflo	t7
     94c:	05e000bf 	bltz	t7,c4c <encode+0xc34>
     950:	00000000 	sll	zero,zero,0x0
     954:	8c8f0008 	lw	t7,8(a0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     958:	8c680004 	lw	t0,4(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     95c:	00cf0018 	mult	a2,t7
	    wd2 = 128;
     960:	240d0080 	addiu	t5,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     964:	00087a00 	sll	t7,t0,0x8
     968:	01e84023 	subu	t0,t7,t0
     96c:	00084203 	sra	t0,t0,0x8
	  bli[i] = wd2 + wd3;
     970:	01a86821 	addu	t5,t5,t0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     974:	00008812 	mflo	s1
     978:	062000bf 	bltz	s1,c78 <encode+0xc60>
     97c:	ac6d0004 	sw	t5,4(v1)
     980:	8c8f000c 	lw	t7,12(a0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     984:	8c680008 	lw	t0,8(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     988:	00cf0018 	mult	a2,t7
	    wd2 = 128;
     98c:	240d0080 	addiu	t5,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     990:	00087a00 	sll	t7,t0,0x8
     994:	01e84023 	subu	t0,t7,t0
     998:	00084203 	sra	t0,t0,0x8
	  bli[i] = wd2 + wd3;
     99c:	01a86821 	addu	t5,t5,t0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     9a0:	0000f012 	mflo	s8
     9a4:	07c000bf 	bltz	s8,ca4 <encode+0xc8c>
     9a8:	ac6d0008 	sw	t5,8(v1)
     9ac:	8c8f0010 	lw	t7,16(a0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     9b0:	8c68000c 	lw	t0,12(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     9b4:	00cf0018 	mult	a2,t7
	    wd2 = 128;
     9b8:	240d0080 	addiu	t5,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     9bc:	00087a00 	sll	t7,t0,0x8
     9c0:	01e84023 	subu	t0,t7,t0
     9c4:	00084203 	sra	t0,t0,0x8
	  bli[i] = wd2 + wd3;
     9c8:	01a86821 	addu	t5,t5,t0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     9cc:	00004012 	mflo	t0
     9d0:	050000bf 	bltz	t0,cd0 <encode+0xcb8>
     9d4:	ac6d000c 	sw	t5,12(v1)
     9d8:	8c8f0014 	lw	t7,20(a0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     9dc:	8c680010 	lw	t0,16(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     9e0:	00cf0018 	mult	a2,t7
	    wd2 = 128;
     9e4:	240d0080 	addiu	t5,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     9e8:	00087a00 	sll	t7,t0,0x8
     9ec:	01e84023 	subu	t0,t7,t0
     9f0:	00084203 	sra	t0,t0,0x8
	  bli[i] = wd2 + wd3;
     9f4:	01a86821 	addu	t5,t5,t0
     9f8:	ac6d0010 	sw	t5,16(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     9fc:	00006812 	mflo	t5
     a00:	05a00002 	bltz	t5,a0c <encode+0x9f4>
     a04:	240fff80 	addiu	t7,zero,-128
	    wd2 = 128;
     a08:	240f0080 	addiu	t7,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     a0c:	8c680014 	lw	t0,20(v1)
     a10:	00000000 	sll	zero,zero,0x0
     a14:	00086a00 	sll	t5,t0,0x8
     a18:	01a84023 	subu	t0,t5,t0
     a1c:	00084203 	sra	t0,t0,0x8
	  bli[i] = wd2 + wd3;
     a20:	01e84021 	addu	t0,t7,t0
     a24:	08000202 	j	808 <encode+0x7f0>
     a28:	ac680014 	sw	t0,20(v1)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
  if (nbh < 0)
    nbh = 0;
     a2c:	00006821 	addu	t5,zero,zero
  if (nbh > 22528)
     a30:	000d3983 	sra	a3,t5,0x6
     a34:	000dc2c3 	sra	t8,t5,0xb
     a38:	2419000b 	addiu	t9,zero,11
     a3c:	30e7001f 	andi	a3,a3,0x1f
     a40:	080001da 	j	768 <encode+0x750>
     a44:	0338c023 	subu	t8,t9,t8
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    apl2 = 12288;
     a48:	0800015b 	j	56c <encode+0x554>
     a4c:	24033000 	addiu	v1,zero,12288
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     a50:	8d640000 	lw	a0,0(t3)
     a54:	00000000 	sll	zero,zero,0x0
     a58:	00440018 	mult	v0,a0
     a5c:	00002012 	mflo	a0
     a60:	048000a9 	bltz	a0,d08 <encode+0xcf0>
     a64:	24050080 	addiu	a1,zero,128
     a68:	8d190004 	lw	t9,4(t0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     a6c:	8d440000 	lw	a0,0(t2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     a70:	00590018 	mult	v0,t9
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     a74:	0004ca00 	sll	t9,a0,0x8
     a78:	03242023 	subu	a0,t9,a0
     a7c:	00042203 	sra	a0,a0,0x8
	  bli[i] = wd2 + wd3;
     a80:	00a42821 	addu	a1,a1,a0
     a84:	ad450000 	sw	a1,0(t2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     a88:	00002812 	mflo	a1
     a8c:	04a000aa 	bltz	a1,d38 <encode+0xd20>
     a90:	00000000 	sll	zero,zero,0x0
     a94:	8d0a0008 	lw	t2,8(t0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     a98:	8c640004 	lw	a0,4(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     a9c:	004a0018 	mult	v0,t2
	    wd2 = 128;
     aa0:	24050080 	addiu	a1,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     aa4:	00045200 	sll	t2,a0,0x8
     aa8:	01442023 	subu	a0,t2,a0
     aac:	00042203 	sra	a0,a0,0x8
	  bli[i] = wd2 + wd3;
     ab0:	00a42821 	addu	a1,a1,a0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     ab4:	00005012 	mflo	t2
     ab8:	054000aa 	bltz	t2,d64 <encode+0xd4c>
     abc:	ac650004 	sw	a1,4(v1)
     ac0:	8d0a000c 	lw	t2,12(t0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     ac4:	8c640008 	lw	a0,8(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     ac8:	004a0018 	mult	v0,t2
	    wd2 = 128;
     acc:	24050080 	addiu	a1,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     ad0:	00045200 	sll	t2,a0,0x8
     ad4:	01442023 	subu	a0,t2,a0
     ad8:	00042203 	sra	a0,a0,0x8
	  bli[i] = wd2 + wd3;
     adc:	00a42821 	addu	a1,a1,a0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     ae0:	00008812 	mflo	s1
     ae4:	062000aa 	bltz	s1,d90 <encode+0xd78>
     ae8:	ac650008 	sw	a1,8(v1)
     aec:	8d0a0010 	lw	t2,16(t0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     af0:	8c64000c 	lw	a0,12(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     af4:	004a0018 	mult	v0,t2
	    wd2 = 128;
     af8:	24050080 	addiu	a1,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     afc:	00045200 	sll	t2,a0,0x8
     b00:	01442023 	subu	a0,t2,a0
     b04:	00042203 	sra	a0,a0,0x8
	  bli[i] = wd2 + wd3;
     b08:	00a42821 	addu	a1,a1,a0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     b0c:	0000f012 	mflo	s8
     b10:	07c000aa 	bltz	s8,dbc <encode+0xda4>
     b14:	ac65000c 	sw	a1,12(v1)
     b18:	8d0a0014 	lw	t2,20(t0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     b1c:	8c640010 	lw	a0,16(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     b20:	004a0018 	mult	v0,t2
	    wd2 = 128;
     b24:	24050080 	addiu	a1,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     b28:	00045200 	sll	t2,a0,0x8
     b2c:	01442023 	subu	a0,t2,a0
     b30:	00042203 	sra	a0,a0,0x8
	  bli[i] = wd2 + wd3;
     b34:	00a42821 	addu	a1,a1,a0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     b38:	00002012 	mflo	a0
     b3c:	048000aa 	bltz	a0,de8 <encode+0xdd0>
     b40:	ac650010 	sw	a1,16(v1)
	    wd2 = 128;
     b44:	240a0080 	addiu	t2,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     b48:	8c640014 	lw	a0,20(v1)
     b4c:	00000000 	sll	zero,zero,0x0
     b50:	00042a00 	sll	a1,a0,0x8
     b54:	00a42023 	subu	a0,a1,a0
     b58:	00042203 	sra	a0,a0,0x8
	  bli[i] = wd2 + wd3;
     b5c:	01442021 	addu	a0,t2,a0
     b60:	0800013e 	j	4f8 <encode+0x4e0>
     b64:	ac640014 	sw	a0,20(v1)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
  if (nbl < 0)
    nbl = 0;
     b68:	00002021 	addu	a0,zero,zero
  if (nbl > 18432)
     b6c:	0004c983 	sra	t9,a0,0x6
     b70:	00042ac3 	sra	a1,a0,0xb
     b74:	24100009 	addiu	s0,zero,9
     b78:	3339001f 	andi	t9,t9,0x1f
     b7c:	08000114 	j	450 <encode+0x438>
     b80:	02058023 	subu	s0,s0,a1
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
     b84:	0800022e 	j	8b8 <encode+0x8a0>
     b88:	00602021 	addu	a0,v1,zero
     b8c:	08000169 	j	5a4 <encode+0x58c>
     b90:	00605021 	addu	t2,v1,zero
    }
/* if mil=30 then wd is less than all decision levels */
  if (el >= 0)
    ril = quant26bt_pos[mil];
  else
    ril = quant26bt_neg[mil];
     b94:	3c040000 	lui	a0,0x0
     b98:	00021080 	sll	v0,v0,0x2
     b9c:	24840000 	addiu	a0,a0,0
     ba0:	00441021 	addu	v0,v0,a0
     ba4:	8c590000 	lw	t9,0(v0)
/* quantl: quantize the difference signal */
  il = quantl (el, detl);

/* computes quantized difference signal */
/* for invqbl, truncate by 2 lsbs, so mode = 3 */
  dlt = ((long) detl * qq4_code4_table[il >> 2]) >> 15;
     ba8:	080000fa 	j	3e8 <encode+0x3d0>
     bac:	00197883 	sra	t7,t9,0x2
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    }
  else
    {
      apl1 = (int) wd2 - 192;
     bb0:	08000227 	j	89c <encode+0x884>
     bb4:	24a5ff40 	addiu	a1,a1,-192
    {
      wd4 = wd2 + 128;		/* same sign case */
    }
  else
    {
      wd4 = wd2 - 128;
     bb8:	08000152 	j	548 <encode+0x530>
     bbc:	2463ff80 	addiu	v1,v1,-128
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    }
  else
    {
      apl1 = (int) wd2 - 192;
     bc0:	08000163 	j	58c <encode+0x574>
     bc4:	2529ff40 	addiu	t1,t1,-192
    {
      wd4 = wd2 + 128;		/* same sign case */
    }
  else
    {
      wd4 = wd2 - 128;
     bc8:	08000216 	j	858 <encode+0x840>
     bcc:	2463ff80 	addiu	v1,v1,-128
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
    }
  decis = (564L * (long) deth) >> 12L;
     bd0:	8f860000 	lw	a2,0(gp)
    {
      ih = 3;			/* 2,3 are pos codes */
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
     bd4:	24020001 	addiu	v0,zero,1
    }
  decis = (564L * (long) deth) >> 12L;
     bd8:	00068080 	sll	s0,a2,0x2
     bdc:	0006c100 	sll	t8,a2,0x4
     be0:	0218c021 	addu	t8,s0,t8
     be4:	001880c0 	sll	s0,t8,0x3
     be8:	0218c023 	subu	t8,s0,t8
     bec:	0306c021 	addu	t8,t8,a2
     bf0:	0018c080 	sll	t8,t8,0x2
    {
      ih = 3;			/* 2,3 are pos codes */
    }
  else
    {
      ih = 1;			/* 0,1 are neg codes */
     bf4:	af820000 	sw	v0,0(gp)
     bf8:	0000c821 	addu	t9,zero,zero
     bfc:	24020040 	addiu	v0,zero,64
     c00:	240d0001 	addiu	t5,zero,1
    }
  decis = (564L * (long) deth) >> 12L;
  if (abs (eh) > decis)
     c04:	04e1feba 	bgez	a3,6f0 <encode+0x6d8>
     c08:	0018c303 	sra	t8,t8,0xc
     c0c:	080001bc 	j	6f0 <encode+0x6d8>
     c10:	00073823 	negu	a3,a3
{
  int ril, mil;
  long int wd, decis;

/* abs of difference signal */
  wd = abs (el);
     c14:	080000e2 	j	388 <encode+0x370>
     c18:	000fc823 	negu	t9,t7
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     c1c:	8c980004 	lw	t8,4(a0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     c20:	8d0d0000 	lw	t5,0(t0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     c24:	00d80018 	mult	a2,t8
	    wd2 = 128;
	  else
	    wd2 = -128;
     c28:	240fff80 	addiu	t7,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     c2c:	000dc200 	sll	t8,t5,0x8
     c30:	030d6823 	subu	t5,t8,t5
     c34:	000d6a03 	sra	t5,t5,0x8
	  bli[i] = wd2 + wd3;
     c38:	01ed7821 	addu	t7,t7,t5
     c3c:	ad0f0000 	sw	t7,0(t0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     c40:	00007812 	mflo	t7
     c44:	05e1ff43 	bgez	t7,954 <encode+0x93c>
     c48:	00000000 	sll	zero,zero,0x0
     c4c:	8c8f0008 	lw	t7,8(a0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     c50:	8c680004 	lw	t0,4(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     c54:	00cf0018 	mult	a2,t7
	    wd2 = 128;
	  else
	    wd2 = -128;
     c58:	240dff80 	addiu	t5,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     c5c:	00087a00 	sll	t7,t0,0x8
     c60:	01e84023 	subu	t0,t7,t0
     c64:	00084203 	sra	t0,t0,0x8
	  bli[i] = wd2 + wd3;
     c68:	01a86821 	addu	t5,t5,t0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     c6c:	00008812 	mflo	s1
     c70:	0621ff43 	bgez	s1,980 <encode+0x968>
     c74:	ac6d0004 	sw	t5,4(v1)
     c78:	8c8f000c 	lw	t7,12(a0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     c7c:	8c680008 	lw	t0,8(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     c80:	00cf0018 	mult	a2,t7
	    wd2 = 128;
	  else
	    wd2 = -128;
     c84:	240dff80 	addiu	t5,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     c88:	00087a00 	sll	t7,t0,0x8
     c8c:	01e84023 	subu	t0,t7,t0
     c90:	00084203 	sra	t0,t0,0x8
	  bli[i] = wd2 + wd3;
     c94:	01a86821 	addu	t5,t5,t0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     c98:	0000f012 	mflo	s8
     c9c:	07c1ff43 	bgez	s8,9ac <encode+0x994>
     ca0:	ac6d0008 	sw	t5,8(v1)
     ca4:	8c8f0010 	lw	t7,16(a0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     ca8:	8c68000c 	lw	t0,12(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     cac:	00cf0018 	mult	a2,t7
	    wd2 = 128;
	  else
	    wd2 = -128;
     cb0:	240dff80 	addiu	t5,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     cb4:	00087a00 	sll	t7,t0,0x8
     cb8:	01e84023 	subu	t0,t7,t0
     cbc:	00084203 	sra	t0,t0,0x8
	  bli[i] = wd2 + wd3;
     cc0:	01a86821 	addu	t5,t5,t0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     cc4:	00004012 	mflo	t0
     cc8:	0501ff43 	bgez	t0,9d8 <encode+0x9c0>
     ccc:	ac6d000c 	sw	t5,12(v1)
     cd0:	8c8f0014 	lw	t7,20(a0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     cd4:	8c680010 	lw	t0,16(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     cd8:	00cf0018 	mult	a2,t7
	    wd2 = 128;
	  else
	    wd2 = -128;
     cdc:	240dff80 	addiu	t5,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     ce0:	00087a00 	sll	t7,t0,0x8
     ce4:	01e84023 	subu	t0,t7,t0
     ce8:	00084203 	sra	t0,t0,0x8
	  bli[i] = wd2 + wd3;
     cec:	01a86821 	addu	t5,t5,t0
     cf0:	ac6d0010 	sw	t5,16(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     cf4:	00006812 	mflo	t5
     cf8:	05a1ff43 	bgez	t5,a08 <encode+0x9f0>
     cfc:	240fff80 	addiu	t7,zero,-128
     d00:	08000283 	j	a0c <encode+0x9f4>
     d04:	00000000 	sll	zero,zero,0x0
     d08:	8d190004 	lw	t9,4(t0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     d0c:	8d440000 	lw	a0,0(t2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     d10:	00590018 	mult	v0,t9
	    wd2 = 128;
	  else
	    wd2 = -128;
     d14:	2405ff80 	addiu	a1,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     d18:	0004ca00 	sll	t9,a0,0x8
     d1c:	03242023 	subu	a0,t9,a0
     d20:	00042203 	sra	a0,a0,0x8
	  bli[i] = wd2 + wd3;
     d24:	00a42821 	addu	a1,a1,a0
     d28:	ad450000 	sw	a1,0(t2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     d2c:	00002812 	mflo	a1
     d30:	04a1ff58 	bgez	a1,a94 <encode+0xa7c>
     d34:	00000000 	sll	zero,zero,0x0
     d38:	8d0a0008 	lw	t2,8(t0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     d3c:	8c640004 	lw	a0,4(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     d40:	004a0018 	mult	v0,t2
	    wd2 = 128;
	  else
	    wd2 = -128;
     d44:	2405ff80 	addiu	a1,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     d48:	00045200 	sll	t2,a0,0x8
     d4c:	01442023 	subu	a0,t2,a0
     d50:	00042203 	sra	a0,a0,0x8
	  bli[i] = wd2 + wd3;
     d54:	00a42821 	addu	a1,a1,a0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     d58:	00005012 	mflo	t2
     d5c:	0541ff58 	bgez	t2,ac0 <encode+0xaa8>
     d60:	ac650004 	sw	a1,4(v1)
     d64:	8d0a000c 	lw	t2,12(t0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     d68:	8c640008 	lw	a0,8(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     d6c:	004a0018 	mult	v0,t2
	    wd2 = 128;
	  else
	    wd2 = -128;
     d70:	2405ff80 	addiu	a1,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     d74:	00045200 	sll	t2,a0,0x8
     d78:	01442023 	subu	a0,t2,a0
     d7c:	00042203 	sra	a0,a0,0x8
	  bli[i] = wd2 + wd3;
     d80:	00a42821 	addu	a1,a1,a0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     d84:	00008812 	mflo	s1
     d88:	0621ff58 	bgez	s1,aec <encode+0xad4>
     d8c:	ac650008 	sw	a1,8(v1)
     d90:	8d0a0010 	lw	t2,16(t0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     d94:	8c64000c 	lw	a0,12(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     d98:	004a0018 	mult	v0,t2
	    wd2 = 128;
	  else
	    wd2 = -128;
     d9c:	2405ff80 	addiu	a1,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     da0:	00045200 	sll	t2,a0,0x8
     da4:	01442023 	subu	a0,t2,a0
     da8:	00042203 	sra	a0,a0,0x8
	  bli[i] = wd2 + wd3;
     dac:	00a42821 	addu	a1,a1,a0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     db0:	0000f012 	mflo	s8
     db4:	07c1ff58 	bgez	s8,b18 <encode+0xb00>
     db8:	ac65000c 	sw	a1,12(v1)
     dbc:	8d0a0014 	lw	t2,20(t0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     dc0:	8c640010 	lw	a0,16(v1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     dc4:	004a0018 	mult	v0,t2
	    wd2 = 128;
	  else
	    wd2 = -128;
     dc8:	2405ff80 	addiu	a1,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     dcc:	00045200 	sll	t2,a0,0x8
     dd0:	01442023 	subu	a0,t2,a0
     dd4:	00042203 	sra	a0,a0,0x8
	  bli[i] = wd2 + wd3;
     dd8:	00a42821 	addu	a1,a1,a0
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
     ddc:	00002012 	mflo	a0
     de0:	0481ff58 	bgez	a0,b44 <encode+0xb2c>
     de4:	ac650010 	sw	a1,16(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
     de8:	080002d2 	j	b48 <encode+0xb30>
     dec:	240aff80 	addiu	t2,zero,-128

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    apl2 = 12288;
  if (apl2 < -12288)
    apl2 = -12288;
     df0:	08000221 	j	884 <encode+0x86c>
     df4:	2403d000 	addiu	v1,zero,-12288
     df8:	0800015d 	j	574 <encode+0x55c>
     dfc:	2403d000 	addiu	v1,zero,-12288

00000e00 <decode>:
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
     e00:	3c080000 	lui	t0,0x0
     e04:	3c070000 	lui	a3,0x0
     e08:	8cec0000 	lw	t4,0(a3)
     e0c:	8d090000 	lw	t1,0(t0)

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
     e10:	27bdffc8 	addiu	sp,sp,-56
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
     e14:	012c0018 	mult	t1,t4
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     e18:	25030000 	addiu	v1,t0,0
     e1c:	24e20000 	addiu	v0,a3,0
     e20:	8c450004 	lw	a1,4(v0)

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
     e24:	afb6002c 	sw	s6,44(sp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     e28:	8c760004 	lw	s6,4(v1)
     e2c:	8c4e0008 	lw	t6,8(v0)
     e30:	8c6d0008 	lw	t5,8(v1)
     e34:	8c4a000c 	lw	t2,12(v0)
     e38:	8c6b000c 	lw	t3,12(v1)
     e3c:	8c660010 	lw	a2,16(v1)

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
     e40:	afb50028 	sw	s5,40(sp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     e44:	8c550010 	lw	s5,16(v0)
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
     e48:	00006012 	mflo	t4
  long int xa1, xa2;		/* qmf accumulators */
  const int *h_ptr;
  int *ac_ptr, *ac_ptr1, *ad_ptr, *ad_ptr1;

/* split transmitted word from input into ilr and ih */
  ilr = input & 0x3f;
     e4c:	3098003f 	andi	t8,a0,0x3f

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
     e50:	afb2001c 	sw	s2,28(sp)
     e54:	afb10018 	sw	s1,24(sp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     e58:	02c50018 	mult	s6,a1
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
     e5c:	3312003c 	andi	s2,t8,0x3c

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);

/* filtep: compute predictor output signal for pole section */
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);
     e60:	8f910000 	lw	s1,0(gp)
  long int xa1, xa2;		/* qmf accumulators */
  const int *h_ptr;
  int *ac_ptr, *ac_ptr1, *ad_ptr, *ad_ptr1;

/* split transmitted word from input into ilr and ih */
  ilr = input & 0x3f;
     e64:	af980000 	sw	t8,0(gp)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     e68:	8f980000 	lw	t8,0(gp)

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
     e6c:	afb00014 	sw	s0,20(sp)
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     e70:	8f990000 	lw	t9,0(gp)

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);

/* filtep: compute predictor output signal for pole section */
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);
     e74:	8f900000 	lw	s0,0(gp)

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
     e78:	afbe0034 	sw	s8,52(sp)
     e7c:	afb40024 	sw	s4,36(sp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     e80:	8c5e0014 	lw	s8,20(v0)
     e84:	8c740014 	lw	s4,20(v1)

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     e88:	8f8f0000 	lw	t7,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     e8c:	0000b012 	mflo	s6

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     e90:	3c050000 	lui	a1,0x0
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     e94:	02cc6021 	addu	t4,s6,t4

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     e98:	000f7880 	sll	t7,t7,0x2
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     e9c:	01cd0018 	mult	t6,t5

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     ea0:	24a50000 	addiu	a1,a1,0
     ea4:	01e52821 	addu	a1,t7,a1

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
     ea8:	afb30020 	sw	s3,32(sp)
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
     eac:	8f8f0000 	lw	t7,0(gp)

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     eb0:	8cb30000 	lw	s3,0(a1)
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
     eb4:	3c0e0000 	lui	t6,0x0
     eb8:	25ce0000 	addiu	t6,t6,0
     ebc:	024e7021 	addu	t6,s2,t6
     ec0:	8dc50000 	lw	a1,0(t6)
int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
     ec4:	3c160000 	lui	s6,0x0

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     ec8:	8f8e0000 	lw	t6,0(gp)
  nbl = (int) wd + wl_code_table[il >> 2];
     ecc:	26d60000 	addiu	s6,s6,0
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     ed0:	00006812 	mflo	t5

/* decode function, result in xout1 and xout2 */

void
decode (int input)
{
     ed4:	afb70030 	sw	s7,48(sp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     ed8:	018d6821 	addu	t5,t4,t5
int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
     edc:	02569021 	addu	s2,s2,s6
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     ee0:	016a0018 	mult	t3,t2

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     ee4:	000eb9c0 	sll	s7,t6,0x7
  nbl = (int) wd + wl_code_table[il >> 2];
     ee8:	8e520000 	lw	s2,0(s2)

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     eec:	02eeb823 	subu	s7,s7,t6
  const int *h_ptr;
  int *ac_ptr, *ac_ptr1, *ad_ptr, *ad_ptr1;

/* split transmitted word from input into ilr and ih */
  ilr = input & 0x3f;
  ih = input >> 6;
     ef0:	00042183 	sra	a0,a0,0x6

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
     ef4:	0017b9c3 	sra	s7,s7,0x7
  const int *h_ptr;
  int *ac_ptr, *ac_ptr1, *ad_ptr, *ad_ptr1;

/* split transmitted word from input into ilr and ih */
  ilr = input & 0x3f;
  ih = input >> 6;
     ef8:	af840000 	sw	a0,0(gp)
int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
     efc:	02f29021 	addu	s2,s7,s2
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     f00:	00005012 	mflo	t2
     f04:	01aa5021 	addu	t2,t5,t2
     f08:	00000000 	sll	zero,zero,0x0
     f0c:	02a60018 	mult	s5,a2
     f10:	00003012 	mflo	a2
     f14:	01465021 	addu	t2,t2,a2
     f18:	00000000 	sll	zero,zero,0x0
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
     f1c:	02380018 	mult	s1,t8
     f20:	0000c012 	mflo	t8
	...
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
     f2c:	02190018 	mult	s0,t9
     f30:	00003012 	mflo	a2

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);

/* filtep: compute predictor output signal for pole section */
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);
     f34:	03066821 	addu	t5,t8,a2
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
     f38:	000d6840 	sll	t5,t5,0x1
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     f3c:	029e0018 	mult	s4,s8
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
     f40:	000d6bc3 	sra	t5,t5,0xf

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);

/* filtep: compute predictor output signal for pole section */
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);
     f44:	af8d0000 	sw	t5,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
     f48:	0000a012 	mflo	s4
     f4c:	028a3021 	addu	a2,s4,t2

  return ((int) (zl >> 14));	/* x2 here */
     f50:	00063383 	sra	a2,a2,0xe

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     f54:	01f30018 	mult	t7,s3
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);

/* filtep: compute predictor output signal for pole section */
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;
     f58:	00cd6821 	addu	t5,a2,t5
  ih = input >> 6;

/* LOWER SUB_BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szl = filtez (dec_del_bpl, dec_del_dltx);
     f5c:	af860000 	sw	a2,0(gp)

/* filtep: compute predictor output signal for pole section */
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;
     f60:	af8d0000 	sw	t5,0(gp)

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     f64:	00009812 	mflo	s3
     f68:	00139bc3 	sra	s3,s3,0xf

  rl = dl + dec_sl;
     f6c:	01b35021 	addu	t2,t5,s3
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
     f70:	01e50018 	mult	t7,a1

/* compute quantized difference signal for decoder output */
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;
     f74:	af930000 	sw	s3,0(gp)

  rl = dl + dec_sl;
     f78:	af8a0000 	sw	t2,0(gp)
  dec_spl = filtep (dec_rlt1, dec_al1, dec_rlt2, dec_al2);

  dec_sl = dec_spl + dec_szl;

/* compute quantized difference signal for adaptive predic */
  dec_dlt = ((long) dec_detl * qq4_code4_table[ilr >> 2]) >> 15;
     f7c:	00002812 	mflo	a1
     f80:	00052bc3 	sra	a1,a1,0xf
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
  if (nbl < 0)
     f84:	0640025f 	bltz	s2,1904 <decode+0xb04>
     f88:	af850000 	sw	a1,0(gp)
    nbl = 0;
  if (nbl > 18432)
     f8c:	2a4a4801 	slti	t2,s2,18433
     f90:	1540025e 	bnez	t2,190c <decode+0xb0c>
     f94:	00125983 	sra	t3,s2,0x6
     f98:	00005021 	addu	t2,zero,zero
     f9c:	00005821 	addu	t3,zero,zero
    nbl = 18432;
     fa0:	24124800 	addiu	s2,zero,18432
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     fa4:	3c0f0000 	lui	t7,0x0
     fa8:	000b5880 	sll	t3,t3,0x2
     fac:	25ef0000 	addiu	t7,t7,0
     fb0:	01eb5821 	addu	t3,t7,t3
     fb4:	8d6b0000 	lw	t3,0(t3)
/* scalel: computes quantizer scale factor in the lower sub band */
  dec_detl = scalel (dec_nbl, 8);

/* parrec - add pole predictor output to quantized diff. signal */
/* for partially reconstructed signal */
  dec_plt = dec_dlt + dec_szl;
     fb8:	00c53021 	addu	a2,a2,a1
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
     fbc:	014b5007 	srav	t2,t3,t2
  return (wd3 << 3);
     fc0:	000a50c0 	sll	t2,t2,0x3
  dl = ((long) dec_detl * qq6_code6_table[il]) >> 15;

  rl = dl + dec_sl;

/* logscl: quantizer scale factor adaptation in the lower sub-band */
  dec_nbl = logscl (ilr, dec_nbl);
     fc4:	af920000 	sw	s2,0(gp)

/* scalel: computes quantizer scale factor in the lower sub band */
  dec_detl = scalel (dec_nbl, 8);
     fc8:	af8a0000 	sw	t2,0(gp)
void
upzero (int dlt, int *dlti, int *bli)
{
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
     fcc:	14a00208 	bnez	a1,17f0 <decode+0x9f0>
     fd0:	af860000 	sw	a2,0(gp)
    {
      for (i = 0; i < 6; i++)
	{
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
     fd4:	8cf20000 	lw	s2,0(a3)
     fd8:	8c580004 	lw	t8,4(v0)
     fdc:	8c4e0008 	lw	t6,8(v0)
     fe0:	8c4c000c 	lw	t4,12(v0)
     fe4:	8c4b0010 	lw	t3,16(v0)
     fe8:	8c4a0014 	lw	t2,20(v0)
     fec:	0012f200 	sll	s8,s2,0x8
     ff0:	0018ba00 	sll	s7,t8,0x8
     ff4:	000eb200 	sll	s6,t6,0x8
     ff8:	000caa00 	sll	s5,t4,0x8
     ffc:	000ba200 	sll	s4,t3,0x8
    1000:	000a9a00 	sll	s3,t2,0x8
    1004:	03d29023 	subu	s2,s8,s2
    1008:	02f8c023 	subu	t8,s7,t8
    100c:	02ce7023 	subu	t6,s6,t6
    1010:	02ac6023 	subu	t4,s5,t4
    1014:	028b5823 	subu	t3,s4,t3
    1018:	026a5023 	subu	t2,s3,t2
    101c:	00129203 	sra	s2,s2,0x8
    1020:	0018c203 	sra	t8,t8,0x8
    1024:	000e7203 	sra	t6,t6,0x8
    1028:	000c6203 	sra	t4,t4,0x8
    102c:	000b5a03 	sra	t3,t3,0x8
    1030:	000a5203 	sra	t2,t2,0x8
    1034:	acf20000 	sw	s2,0(a3)
    1038:	ac580004 	sw	t8,4(v0)
    103c:	ac4e0008 	sw	t6,8(v0)
    1040:	ac4c000c 	sw	t4,12(v0)
    1044:	ac4b0010 	sw	t3,16(v0)
    1048:	ac4a0014 	sw	t2,20(v0)

/* upzero: update zero section predictor coefficients */
  upzero (dec_dlt, dec_del_dltx, dec_del_bpl);

/* uppol2: update second predictor coefficient apl2 and delay it as al2 */
  dec_al2 = uppol2 (dec_al1, dec_al2, dec_plt, dec_plt1, dec_plt2);
    104c:	8f980000 	lw	t8,0(gp)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
    1050:	8c620010 	lw	v0,16(v1)
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
    1054:	00d80018 	mult	a2,t8
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
  dlti[4] = dlti[3];
    1058:	8c6b000c 	lw	t3,12(v1)
  dlti[3] = dlti[2];
    105c:	8c6a0008 	lw	t2,8(v1)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
    1060:	ac620014 	sw	v0,20(v1)
  dlti[4] = dlti[3];
    1064:	ac6b0010 	sw	t3,16(v1)
  dlti[3] = dlti[2];
    1068:	ac6a000c 	sw	t2,12(v1)
  dlti[1] = dlti[0];
    106c:	ac690004 	sw	t1,4(v1)
  dlti[0] = dlt;
    1070:	ad050000 	sw	a1,0(t0)

/* upzero: update zero section predictor coefficients */
  upzero (dec_dlt, dec_del_dltx, dec_del_bpl);

/* uppol2: update second predictor coefficient apl2 and delay it as al2 */
  dec_al2 = uppol2 (dec_al1, dec_al2, dec_plt, dec_plt1, dec_plt2);
    1074:	8f830000 	lw	v1,0(gp)
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
    1078:	00003812 	mflo	a3
    107c:	04e00002 	bltz	a3,1088 <decode+0x288>
    1080:	00101080 	sll	v0,s0,0x2
    wd2 = -wd2;			/* check same sign */
    1084:	00021023 	negu	v0,v0
  wd2 = wd2 >> 7;		/* gain of 1/128 */
  if ((long) plt * plt2 >= 0L)
    1088:	00c30018 	mult	a2,v1
    108c:	00001812 	mflo	v1
    1090:	04600229 	bltz	v1,1938 <decode+0xb38>
    1094:	000211c3 	sra	v0,v0,0x7
    {
      wd4 = wd2 + 128;		/* same sign case */
    1098:	24420080 	addiu	v0,v0,128
    }
  else
    {
      wd4 = wd2 - 128;
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */
    109c:	001119c0 	sll	v1,s1,0x7
    10a0:	00718823 	subu	s1,v1,s1
    10a4:	001189c3 	sra	s1,s1,0x7
    10a8:	00511021 	addu	v0,v0,s1

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    10ac:	28433001 	slti	v1,v0,12289
    10b0:	106001cd 	beqz	v1,17e8 <decode+0x9e8>
    10b4:	2843d000 	slti	v1,v0,-12288
    apl2 = 12288;
  if (apl2 < -12288)
    10b8:	14600298 	bnez	v1,1b1c <decode+0xd1c>
    10bc:	240a6c00 	addiu	t2,zero,27648
    10c0:	240a3c00 	addiu	t2,zero,15360
    10c4:	01425023 	subu	t2,t2,v0
int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
    10c8:	00101a00 	sll	v1,s0,0x8
    10cc:	00708023 	subu	s0,v1,s0

/* upzero: update zero section predictor coefficients */
  upzero (dec_dlt, dec_del_dltx, dec_del_bpl);

/* uppol2: update second predictor coefficient apl2 and delay it as al2 */
  dec_al2 = uppol2 (dec_al1, dec_al2, dec_plt, dec_plt1, dec_plt2);
    10d0:	af820000 	sw	v0,0(gp)
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
    10d4:	04e00216 	bltz	a3,1930 <decode+0xb30>
    10d8:	00108203 	sra	s0,s0,0x8
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    10dc:	261000c0 	addiu	s0,s0,192
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
  if (apl1 > wd3)
    10e0:	0150102a 	slt	v0,t2,s0
    10e4:	14400006 	bnez	v0,1100 <decode+0x300>
    10e8:	3c0b0000 	lui	t3,0x0
    apl1 = wd3;
  if (apl1 < -wd3)
    10ec:	000a1023 	negu	v0,t2
    10f0:	0202182a 	slt	v1,s0,v0
    10f4:	1460020c 	bnez	v1,1928 <decode+0xb28>
    10f8:	02005021 	addu	t2,s0,zero
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
    10fc:	3c0b0000 	lui	t3,0x0
    1100:	3c080000 	lui	t0,0x0
    1104:	8d120000 	lw	s2,0(t0)
    1108:	8d6e0000 	lw	t6,0(t3)
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    110c:	25630000 	addiu	v1,t3,0
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
    1110:	01d20018 	mult	t6,s2
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    1114:	25020000 	addiu	v0,t0,0
    1118:	8c740004 	lw	s4,4(v1)
    111c:	8c470004 	lw	a3,4(v0)
    1120:	8c550008 	lw	s5,8(v0)
    1124:	8c760008 	lw	s6,8(v1)
    1128:	8c77000c 	lw	s7,12(v1)
    112c:	8c5e000c 	lw	s8,12(v0)

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
    1130:	00042080 	sll	a0,a0,0x2

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
    1134:	8f900000 	lw	s0,0(gp)

/* done with lower sub band decoder, implement delays for next time */
  dec_rlt2 = dec_rlt1;
  dec_rlt1 = dec_rlt;
  dec_plt2 = dec_plt1;
  dec_plt1 = dec_plt;
    1138:	af860000 	sw	a2,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    113c:	8c460010 	lw	a2,16(v0)

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);

/* filtep: compute predictor output signal for pole section */
  dec_sph = filtep (dec_rh1, dec_ah1, dec_rh2, dec_ah2);
    1140:	8f8c0000 	lw	t4,0(gp)
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
    1144:	00009012 	mflo	s2

/* uppol1: update first predictor coef. (pole setion) */
  dec_al1 = uppol1 (dec_al1, dec_al2, dec_plt, dec_plt1);

/* recons : compute recontructed signal for adaptive predictor */
  dec_rlt = dec_sl + dec_dlt;
    1148:	01a52821 	addu	a1,t5,a1
    114c:	af850000 	sw	a1,0(gp)

/* done with lower sub band decoder, implement delays for next time */
  dec_rlt2 = dec_rlt1;
  dec_rlt1 = dec_rlt;
    1150:	af850000 	sw	a1,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    1154:	02870018 	mult	s4,a3

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
    1158:	3c070000 	lui	a3,0x0
    115c:	24e70000 	addiu	a3,a3,0
    1160:	00873821 	addu	a3,a0,a3
    1164:	8cf10000 	lw	s1,0(a3)
int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
    1168:	3c070000 	lui	a3,0x0
    116c:	24e70000 	addiu	a3,a3,0
    1170:	00872021 	addu	a0,a0,a3

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
    1174:	001039c0 	sll	a3,s0,0x7
    1178:	00f03823 	subu	a3,a3,s0
  nbh = wd + wh_code_table[ih];
    117c:	8c840000 	lw	a0,0(a0)

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
    1180:	000781c3 	sra	s0,a3,0x7
  nbh = wd + wh_code_table[ih];
    1184:	02048021 	addu	s0,s0,a0
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    1188:	0000a012 	mflo	s4
    118c:	8c640010 	lw	a0,16(v1)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
    1190:	8f870000 	lw	a3,0(gp)

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);

/* filtep: compute predictor output signal for pole section */
  dec_sph = filtep (dec_rh1, dec_ah1, dec_rh2, dec_ah2);
    1194:	8f890000 	lw	t1,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    1198:	02d50018 	mult	s6,s5
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
    119c:	8f930000 	lw	s3,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    11a0:	02929021 	addu	s2,s4,s2

/* uppol2: update second predictor coefficient apl2 and delay it as al2 */
  dec_al2 = uppol2 (dec_al1, dec_al2, dec_plt, dec_plt1, dec_plt2);

/* uppol1: update first predictor coef. (pole setion) */
  dec_al1 = uppol1 (dec_al1, dec_al2, dec_plt, dec_plt1);
    11a4:	af8a0000 	sw	t2,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    11a8:	8c4a0014 	lw	t2,20(v0)

/* recons : compute recontructed signal for adaptive predictor */
  dec_rlt = dec_sl + dec_dlt;

/* done with lower sub band decoder, implement delays for next time */
  dec_rlt2 = dec_rlt1;
    11ac:	af990000 	sw	t9,0(gp)
  dec_rlt1 = dec_rlt;
  dec_plt2 = dec_plt1;
    11b0:	af980000 	sw	t8,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    11b4:	0000a812 	mflo	s5
    11b8:	02559021 	addu	s2,s2,s5
    11bc:	00000000 	sll	zero,zero,0x0
    11c0:	02fe0018 	mult	s7,s8
    11c4:	0000b812 	mflo	s7
    11c8:	02579021 	addu	s2,s2,s7
    11cc:	00000000 	sll	zero,zero,0x0
    11d0:	00860018 	mult	a0,a2
    11d4:	00002812 	mflo	a1
    11d8:	02459021 	addu	s2,s2,a1
    11dc:	8c650014 	lw	a1,20(v1)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
    11e0:	01870018 	mult	t4,a3
    11e4:	00003812 	mflo	a3
	...
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
    11f0:	01330018 	mult	t1,s3
    11f4:	00002012 	mflo	a0

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);

/* filtep: compute predictor output signal for pole section */
  dec_sph = filtep (dec_rh1, dec_ah1, dec_rh2, dec_ah2);
    11f8:	00e43821 	addu	a3,a3,a0

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
    11fc:	8f840000 	lw	a0,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    1200:	00aa0018 	mult	a1,t2
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
    1204:	00073840 	sll	a3,a3,0x1
    1208:	00073bc3 	sra	a3,a3,0xf

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);

/* filtep: compute predictor output signal for pole section */
  dec_sph = filtep (dec_rh1, dec_ah1, dec_rh2, dec_ah2);
    120c:	af870000 	sw	a3,0(gp)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    1210:	00003012 	mflo	a2
    1214:	00d23021 	addu	a2,a2,s2

  return ((int) (zl >> 14));	/* x2 here */
    1218:	00063383 	sra	a2,a2,0xe

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
    121c:	02240018 	mult	s1,a0

/* filtep: compute predictor output signal for pole section */
  dec_sph = filtep (dec_rh1, dec_ah1, dec_rh2, dec_ah2);

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;
    1220:	00c73821 	addu	a3,a2,a3
  dec_plt1 = dec_plt;

/* HIGH SUB-BAND DECODER */

/* filtez: compute predictor output for zero section */
  dec_szh = filtez (dec_del_bph, dec_del_dhx);
    1224:	af860000 	sw	a2,0(gp)

/* filtep: compute predictor output signal for pole section */
  dec_sph = filtep (dec_rh1, dec_ah1, dec_rh2, dec_ah2);

/* predic:compute the predictor output value in the higher sub_band decoder */
  dec_sh = dec_sph + dec_szh;
    1228:	af870000 	sw	a3,0(gp)

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;
    122c:	00002012 	mflo	a0
    1230:	000423c3 	sra	a0,a0,0xf
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
  if (nbh < 0)
    1234:	06000165 	bltz	s0,17cc <decode+0x9cc>
    1238:	af840000 	sw	a0,0(gp)
    nbh = 0;
  if (nbh > 22528)
    123c:	2a055801 	slti	a1,s0,22529
    1240:	14a00164 	bnez	a1,17d4 <decode+0x9d4>
    1244:	00105183 	sra	t2,s0,0x6
    1248:	00002821 	addu	a1,zero,zero
    124c:	00005021 	addu	t2,zero,zero
    nbh = 22528;
    1250:	24105800 	addiu	s0,zero,22528
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
    1254:	000a5080 	sll	t2,t2,0x2
    1258:	01ea7821 	addu	t7,t7,t2
    125c:	8dea0000 	lw	t2,0(t7)

/* scalel: compute the quantizer scale factor in the higher sub band */
  dec_deth = scalel (dec_nbh, 10);

/* parrec: compute partially recontructed signal */
  dec_ph = dec_dh + dec_szh;
    1260:	00c43021 	addu	a2,a2,a0
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
    1264:	00aa2807 	srav	a1,t2,a1
  return (wd3 << 3);
    1268:	000528c0 	sll	a1,a1,0x3

/* in-place compute the quantized difference signal */
  dec_dh = ((long) dec_deth * qq2_code2_table[ih]) >> 15L;

/* logsch: update logarithmic quantizer scale factor in hi sub band */
  dec_nbh = logsch (ih, dec_nbh);
    126c:	af900000 	sw	s0,0(gp)

/* scalel: compute the quantizer scale factor in the higher sub band */
  dec_deth = scalel (dec_nbh, 10);
    1270:	af850000 	sw	a1,0(gp)
void
upzero (int dlt, int *dlti, int *bli)
{
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
    1274:	1480010f 	bnez	a0,16b4 <decode+0x8b4>
    1278:	af860000 	sw	a2,0(gp)
    {
      for (i = 0; i < 6; i++)
	{
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    127c:	8d190000 	lw	t9,0(t0)
    1280:	8c580004 	lw	t8,4(v0)
    1284:	8c4f0008 	lw	t7,8(v0)
    1288:	8c4d000c 	lw	t5,12(v0)
    128c:	8c4a0010 	lw	t2,16(v0)
    1290:	8c450014 	lw	a1,20(v0)
    1294:	0019b200 	sll	s6,t9,0x8
    1298:	0018aa00 	sll	s5,t8,0x8
    129c:	000fa200 	sll	s4,t7,0x8
    12a0:	000d9200 	sll	s2,t5,0x8
    12a4:	000a8a00 	sll	s1,t2,0x8
    12a8:	00058200 	sll	s0,a1,0x8
    12ac:	02d9c823 	subu	t9,s6,t9
    12b0:	02b8c023 	subu	t8,s5,t8
    12b4:	028f7823 	subu	t7,s4,t7
    12b8:	024d6823 	subu	t5,s2,t5
    12bc:	022a5023 	subu	t2,s1,t2
    12c0:	02052823 	subu	a1,s0,a1
    12c4:	0019ca03 	sra	t9,t9,0x8
    12c8:	0018c203 	sra	t8,t8,0x8
    12cc:	000f7a03 	sra	t7,t7,0x8
    12d0:	000d6a03 	sra	t5,t5,0x8
    12d4:	000a5203 	sra	t2,t2,0x8
    12d8:	00052a03 	sra	a1,a1,0x8
    12dc:	ad190000 	sw	t9,0(t0)
    12e0:	ac580004 	sw	t8,4(v0)
    12e4:	ac4f0008 	sw	t7,8(v0)
    12e8:	ac4d000c 	sw	t5,12(v0)
    12ec:	ac4a0010 	sw	t2,16(v0)
    12f0:	ac450014 	sw	a1,20(v0)

/* upzero: update zero section predictor coefficients */
  upzero (dec_dh, dec_del_dhx, dec_del_bph);

/* uppol2: update second predictor coefficient aph2 and delay it as ah2 */
  dec_ah2 = uppol2 (dec_ah1, dec_ah2, dec_ph, dec_ph1, dec_ph2);
    12f4:	8f920000 	lw	s2,0(gp)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
    12f8:	8c620010 	lw	v0,16(v1)
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
    12fc:	00d20018 	mult	a2,s2
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
  dlti[4] = dlti[3];
    1300:	8c6a000c 	lw	t2,12(v1)
  dlti[3] = dlti[2];
    1304:	8c680008 	lw	t0,8(v1)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
    1308:	ac620014 	sw	v0,20(v1)
  dlti[4] = dlti[3];
    130c:	ac6a0010 	sw	t2,16(v1)
  dlti[3] = dlti[2];
    1310:	ac68000c 	sw	t0,12(v1)
  dlti[1] = dlti[0];
    1314:	ac6e0004 	sw	t6,4(v1)
  dlti[0] = dlt;
    1318:	ad640000 	sw	a0,0(t3)

/* upzero: update zero section predictor coefficients */
  upzero (dec_dh, dec_del_dhx, dec_del_bph);

/* uppol2: update second predictor coefficient aph2 and delay it as ah2 */
  dec_ah2 = uppol2 (dec_ah1, dec_ah2, dec_ph, dec_ph1, dec_ph2);
    131c:	8f830000 	lw	v1,0(gp)
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
    1320:	00002812 	mflo	a1
    1324:	04a00002 	bltz	a1,1330 <decode+0x530>
    1328:	00091080 	sll	v0,t1,0x2
    wd2 = -wd2;			/* check same sign */
    132c:	00021023 	negu	v0,v0
  wd2 = wd2 >> 7;		/* gain of 1/128 */
  if ((long) plt * plt2 >= 0L)
    1330:	00c30018 	mult	a2,v1
    1334:	00001812 	mflo	v1
    1338:	04600183 	bltz	v1,1948 <decode+0xb48>
    133c:	000211c3 	sra	v0,v0,0x7
    {
      wd4 = wd2 + 128;		/* same sign case */
    1340:	24420080 	addiu	v0,v0,128
    }
  else
    {
      wd4 = wd2 - 128;
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */
    1344:	000c19c0 	sll	v1,t4,0x7
    1348:	006c6023 	subu	t4,v1,t4
    134c:	000c61c3 	sra	t4,t4,0x7
    1350:	004c1021 	addu	v0,v0,t4

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    1354:	28433001 	slti	v1,v0,12289
    1358:	106000d4 	beqz	v1,16ac <decode+0x8ac>
    135c:	2843d000 	slti	v1,v0,-12288
    apl2 = 12288;
  if (apl2 < -12288)
    1360:	146001f0 	bnez	v1,1b24 <decode+0xd24>
    1364:	24086c00 	addiu	t0,zero,27648
    1368:	24083c00 	addiu	t0,zero,15360
    136c:	01024023 	subu	t0,t0,v0
int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
    1370:	00091a00 	sll	v1,t1,0x8
    1374:	00694823 	subu	t1,v1,t1

/* upzero: update zero section predictor coefficients */
  upzero (dec_dh, dec_del_dhx, dec_del_bph);

/* uppol2: update second predictor coefficient aph2 and delay it as ah2 */
  dec_ah2 = uppol2 (dec_ah1, dec_ah2, dec_ph, dec_ph1, dec_ph2);
    1378:	af820000 	sw	v0,0(gp)
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
    137c:	04a00170 	bltz	a1,1940 <decode+0xb40>
    1380:	00094a03 	sra	t1,t1,0x8
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    1384:	252900c0 	addiu	t1,t1,192
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
  if (apl1 > wd3)
    1388:	0109102a 	slt	v0,t0,t1
    138c:	14400006 	bnez	v0,13a8 <decode+0x5a8>
    1390:	3c0a0000 	lui	t2,0x0
    apl1 = wd3;
  if (apl1 < -wd3)
    1394:	00081023 	negu	v0,t0
    1398:	0122182a 	slt	v1,t1,v0
    139c:	14600160 	bnez	v1,1920 <decode+0xb20>
    13a0:	01204021 	addu	t0,t1,zero
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    13a4:	3c0a0000 	lui	t2,0x0
    13a8:	8d450000 	lw	a1,0(t2)
    13ac:	240bffd4 	addiu	t3,zero,-44
    13b0:	00ab0018 	mult	a1,t3
    13b4:	25430000 	addiu	v1,t2,0
    13b8:	8c650004 	lw	a1,4(v1)
    13bc:	240d0030 	addiu	t5,zero,48
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    13c0:	3c090000 	lui	t1,0x0
    13c4:	25220000 	addiu	v0,t1,0
    13c8:	240efd90 	addiu	t6,zero,-624
    13cc:	240c00d4 	addiu	t4,zero,212

/* uppol2: update second predictor coefficient aph2 and delay it as ah2 */
  dec_ah2 = uppol2 (dec_ah1, dec_ah2, dec_ph, dec_ph1, dec_ph2);

/* uppol1: update first predictor coef. (pole setion) */
  dec_ah1 = uppol1 (dec_ah1, dec_ah2, dec_ph, dec_ph1);
    13d0:	af880000 	sw	t0,0(gp)
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    13d4:	8c480008 	lw	t0,8(v0)
    13d8:	240f05a8 	addiu	t7,zero,1448

/* uppol1: update first predictor coef. (pole setion) */
  dec_ah1 = uppol1 (dec_ah1, dec_ah2, dec_ph, dec_ph1);

/* recons : compute recontructed signal for adaptive predictor */
  rh = dec_sh + dec_dh;
    13dc:	00e43821 	addu	a3,a3,a0
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    13e0:	8c56001c 	lw	s6,28(v0)
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    13e4:	0000a012 	mflo	s4
    13e8:	2418fcb8 	addiu	t8,zero,-840

/* uppol1: update first predictor coef. (pole setion) */
  dec_ah1 = uppol1 (dec_ah1, dec_ah2, dec_ph, dec_ph1);

/* recons : compute recontructed signal for adaptive predictor */
  rh = dec_sh + dec_dh;
    13ec:	af870000 	sw	a3,0(gp)

/* done with high band decode, implementing delays for next time here */
  dec_rh2 = dec_rh1;
  dec_rh1 = rh;
    13f0:	af870000 	sw	a3,0(gp)
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    13f4:	00ad0018 	mult	a1,t5
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    13f8:	8c450004 	lw	a1,4(v0)
    13fc:	2419f36c 	addiu	t9,zero,-3220

/* done with high band decode, implementing delays for next time here */
  dec_rh2 = dec_rh1;
  dec_rh1 = rh;
  dec_ph2 = dec_ph1;
  dec_ph1 = dec_ph;
    1400:	af860000 	sw	a2,0(gp)
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    1404:	24100edc 	addiu	s0,zero,3804
    1408:	24113c90 	addiu	s1,zero,15504
  rh = dec_sh + dec_dh;

/* done with high band decode, implementing delays for next time here */
  dec_rh2 = dec_rh1;
  dec_rh1 = rh;
  dec_ph2 = dec_ph1;
    140c:	af920000 	sw	s2,0(gp)

/* recons : compute recontructed signal for adaptive predictor */
  rh = dec_sh + dec_dh;

/* done with high band decode, implementing delays for next time here */
  dec_rh2 = dec_rh1;
    1410:	af930000 	sw	s3,0(gp)
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    1414:	0000a812 	mflo	s5
    1418:	02b4a821 	addu	s5,s5,s4
    141c:	8c740008 	lw	s4,8(v1)
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1420:	00ae0018 	mult	a1,t6
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    1424:	0014f1c0 	sll	s8,s4,0x7
    1428:	02bef021 	addu	s8,s5,s8
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    142c:	8d350000 	lw	s5,0(t1)
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    1430:	afbe0000 	sw	s8,0(sp)
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1434:	00002812 	mflo	a1
    1438:	afa50008 	sw	a1,8(sp)
  dec_ph1 = dec_ph;

/* end of higher sub_band decoder */

/* end with receive quadrature mirror filters */
  xd = rl - rh;
    143c:	8f850000 	lw	a1,0(gp)
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1440:	02ac0018 	mult	s5,t4

/* end of higher sub_band decoder */

/* end with receive quadrature mirror filters */
  xd = rl - rh;
  xs = rl + rh;
    1444:	00e52021 	addu	a0,a3,a1
/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
    1448:	0004b880 	sll	s7,a0,0x2
  dec_ph1 = dec_ph;

/* end of higher sub_band decoder */

/* end with receive quadrature mirror filters */
  xd = rl - rh;
    144c:	00a72823 	subu	a1,a1,a3
/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
    1450:	0004a100 	sll	s4,a0,0x4
    1454:	0297a023 	subu	s4,s4,s7

/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
    1458:	0005a880 	sll	s5,a1,0x2
    145c:	0005b900 	sll	s7,a1,0x4
    1460:	02f5a823 	subu	s5,s7,s5
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1464:	0016b9c0 	sll	s7,s6,0x7
/* receive quadrature mirror filters implemented here */
  h_ptr = h;
  ac_ptr = accumc;
  ad_ptr = accumd;
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
    1468:	0094a023 	subu	s4,a0,s4
    146c:	0014a080 	sll	s4,s4,0x2
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1470:	0000f012 	mflo	s8
  dec_ph1 = dec_ph;

/* end of higher sub_band decoder */

/* end with receive quadrature mirror filters */
  xd = rl - rh;
    1474:	af850000 	sw	a1,0(gp)
  xs = rl + rh;
    1478:	af840000 	sw	a0,0(gp)
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    147c:	010f0018 	mult	t0,t7
    1480:	8fa80008 	lw	t0,8(sp)
    1484:	00000000 	sll	zero,zero,0x0
    1488:	011eb021 	addu	s6,t0,s8
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    148c:	8c68000c 	lw	t0,12(v1)
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1490:	00003812 	mflo	a3
    1494:	02c7b021 	addu	s6,s6,a3
    1498:	8c47000c 	lw	a3,12(v0)
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    149c:	01180018 	mult	t0,t8
    14a0:	00003012 	mflo	a2
	...
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    14ac:	00f90018 	mult	a3,t9
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    14b0:	8fa70000 	lw	a3,0(sp)
    14b4:	00000000 	sll	zero,zero,0x0
    14b8:	00e63021 	addu	a2,a3,a2
    14bc:	8c670010 	lw	a3,16(v1)
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    14c0:	00004012 	mflo	t0
    14c4:	02c8b021 	addu	s6,s6,t0
    14c8:	00000000 	sll	zero,zero,0x0
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    14cc:	00f00018 	mult	a3,s0
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    14d0:	8c470010 	lw	a3,16(v0)
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    14d4:	00009012 	mflo	s2
    14d8:	00d23021 	addu	a2,a2,s2
    14dc:	00000000 	sll	zero,zero,0x0
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    14e0:	00f10018 	mult	a3,s1
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    14e4:	8c670014 	lw	a3,20(v1)
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    14e8:	00009812 	mflo	s3
    14ec:	02d3b021 	addu	s6,s6,s3
    14f0:	00000000 	sll	zero,zero,0x0
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    14f4:	00f10018 	mult	a3,s1
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    14f8:	8c470014 	lw	a3,20(v0)
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    14fc:	00008812 	mflo	s1
    1500:	00d13021 	addu	a2,a2,s1
    1504:	00d5a821 	addu	s5,a2,s5
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1508:	00f00018 	mult	a3,s0
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    150c:	8c660018 	lw	a2,24(v1)
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
  xa2 += (long) (*ad_ptr) * (*h_ptr++);
    1510:	8c470028 	lw	a3,40(v0)
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1514:	00008012 	mflo	s0
    1518:	02d0b021 	addu	s6,s6,s0
    151c:	02d4a021 	addu	s4,s6,s4
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    1520:	00d90018 	mult	a2,t9
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1524:	8c460018 	lw	a2,24(v0)
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    1528:	0000c812 	mflo	t9
    152c:	02b9a821 	addu	s5,s5,t9
    1530:	00000000 	sll	zero,zero,0x0
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1534:	00d80018 	mult	a2,t8
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    1538:	8c66001c 	lw	a2,28(v1)
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    153c:	0000c012 	mflo	t8
    1540:	0298a021 	addu	s4,s4,t8
    1544:	0297b821 	addu	s7,s4,s7
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    1548:	00cf0018 	mult	a2,t7
    154c:	8c660020 	lw	a2,32(v1)
    1550:	00007812 	mflo	t7
    1554:	02afa821 	addu	s5,s5,t7
    1558:	00000000 	sll	zero,zero,0x0
    155c:	00ce0018 	mult	a2,t6
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1560:	8c460020 	lw	a2,32(v0)
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    1564:	00007012 	mflo	t6
    1568:	02aea821 	addu	s5,s5,t6
    156c:	00000000 	sll	zero,zero,0x0
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1570:	00cd0018 	mult	a2,t5
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    1574:	8c660024 	lw	a2,36(v1)
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1578:	00006812 	mflo	t5
    157c:	02edb821 	addu	s7,s7,t5
    1580:	00000000 	sll	zero,zero,0x0
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    1584:	00cc0018 	mult	a2,t4
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1588:	8c460024 	lw	a2,36(v0)
  xa1 = (long) xd *(*h_ptr++);
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
    158c:	00006012 	mflo	t4
    1590:	0195a821 	addu	s5,t4,s5
    1594:	00000000 	sll	zero,zero,0x0
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    1598:	00cb0018 	mult	a2,t3
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
  xa2 += (long) (*ad_ptr) * (*h_ptr++);
    159c:	2406000c 	addiu	a2,zero,12
  xa2 = (long) xs *(*h_ptr++);
/* main multiply accumulate loop for samples and coefficients */
  for (i = 0; i < 10; i++)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    15a0:	00006812 	mflo	t5
    15a4:	01b7b821 	addu	s7,t5,s7
    15a8:	00000000 	sll	zero,zero,0x0
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
  xa2 += (long) (*ad_ptr) * (*h_ptr++);
    15ac:	00e60018 	mult	a3,a2
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
    15b0:	8c670028 	lw	a3,40(v1)
  xa2 += (long) (*ad_ptr) * (*h_ptr++);
    15b4:	00003012 	mflo	a2
    15b8:	02e6b821 	addu	s7,s7,a2

/* scale by 2^14 */
  xout1 = xa1 >> 14;
  xout2 = xa2 >> 14;
    15bc:	0017bb83 	sra	s7,s7,0xe
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
    15c0:	00eb0018 	mult	a3,t3
  xa2 += (long) (*ad_ptr) * (*h_ptr++);

/* scale by 2^14 */
  xout1 = xa1 >> 14;
  xout2 = xa2 >> 14;
    15c4:	af970000 	sw	s7,0(gp)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    15c8:	8c680024 	lw	t0,36(v1)
      *ad_ptr-- = *ad_ptr1--;
    15cc:	8c540024 	lw	s4,36(v0)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    15d0:	8c77001c 	lw	s7,28(v1)
    15d4:	8c670018 	lw	a3,24(v1)
      *ad_ptr-- = *ad_ptr1--;
    15d8:	8c560020 	lw	s6,32(v0)
    15dc:	8c46001c 	lw	a2,28(v0)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    15e0:	ac680028 	sw	t0,40(v1)
      *ad_ptr-- = *ad_ptr1--;
    15e4:	ac540028 	sw	s4,40(v0)
    15e8:	8c480018 	lw	t0,24(v0)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    15ec:	8c740014 	lw	s4,20(v1)
    15f0:	ac67001c 	sw	a3,28(v1)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
    15f4:	00005812 	mflo	t3
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    15f8:	ac740018 	sw	s4,24(v1)
    {
      xa1 += (long) (*ac_ptr++) * (*h_ptr++);
      xa2 += (long) (*ad_ptr++) * (*h_ptr++);
    }
/* final mult/accumulate */
  xa1 += (long) (*ac_ptr) * (*h_ptr++);
    15fc:	02aba821 	addu	s5,s5,t3
  xa2 += (long) (*ad_ptr) * (*h_ptr++);

/* scale by 2^14 */
  xout1 = xa1 >> 14;
    1600:	0015ab83 	sra	s5,s5,0xe
    1604:	af950000 	sw	s5,0(gp)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    1608:	8c750020 	lw	s5,32(v1)
      *ad_ptr-- = *ad_ptr1--;
    160c:	8c47000c 	lw	a3,12(v0)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    1610:	ac750024 	sw	s5,36(v1)
      *ad_ptr-- = *ad_ptr1--;
    1614:	8c550014 	lw	s5,20(v0)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    1618:	ac770020 	sw	s7,32(v1)
      *ad_ptr-- = *ad_ptr1--;
    161c:	8c540008 	lw	s4,8(v0)
    1620:	8c570010 	lw	s7,16(v0)
    1624:	ac560024 	sw	s6,36(v0)
    1628:	ac460020 	sw	a2,32(v0)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    162c:	8c760010 	lw	s6,16(v1)
    1630:	8c66000c 	lw	a2,12(v1)
      *ad_ptr-- = *ad_ptr1--;
    1634:	ac48001c 	sw	t0,28(v0)
    1638:	ac550018 	sw	s5,24(v0)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    163c:	8c680008 	lw	t0,8(v1)
    1640:	8c750004 	lw	s5,4(v1)
    1644:	ac760014 	sw	s6,20(v1)
      *ad_ptr-- = *ad_ptr1--;
    1648:	ac570014 	sw	s7,20(v0)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    164c:	ac660010 	sw	a2,16(v1)
    1650:	ac68000c 	sw	t0,12(v1)
      *ad_ptr-- = *ad_ptr1--;
    1654:	ac54000c 	sw	s4,12(v0)
    1658:	ac470010 	sw	a3,16(v0)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    165c:	ac750008 	sw	s5,8(v1)
    1660:	8d570000 	lw	s7,0(t2)
      *ad_ptr-- = *ad_ptr1--;
    1664:	8c560004 	lw	s6,4(v0)
/* update delay lines */
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
    1668:	ac770004 	sw	s7,4(v1)
      *ad_ptr-- = *ad_ptr1--;
    166c:	8d230000 	lw	v1,0(t1)
    1670:	ac560008 	sw	s6,8(v0)
    }
  *ac_ptr = xd;
  *ad_ptr = xs;
}
    1674:	8fbe0034 	lw	s8,52(sp)
    1678:	8fb70030 	lw	s7,48(sp)
    167c:	8fb6002c 	lw	s6,44(sp)
    1680:	8fb50028 	lw	s5,40(sp)
    1684:	8fb40024 	lw	s4,36(sp)
    1688:	8fb30020 	lw	s3,32(sp)
    168c:	8fb2001c 	lw	s2,28(sp)
    1690:	8fb10018 	lw	s1,24(sp)
    1694:	8fb00014 	lw	s0,20(sp)
  ac_ptr1 = ac_ptr - 1;
  ad_ptr1 = ad_ptr - 1;
  for (i = 0; i < 10; i++)
    {
      *ac_ptr-- = *ac_ptr1--;
      *ad_ptr-- = *ad_ptr1--;
    1698:	ac430004 	sw	v1,4(v0)
    }
  *ac_ptr = xd;
    169c:	ad450000 	sw	a1,0(t2)
  *ad_ptr = xs;
    16a0:	ad240000 	sw	a0,0(t1)
}
    16a4:	03e00008 	jr	ra
    16a8:	27bd0038 	addiu	sp,sp,56
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    apl2 = 12288;
    16ac:	080004da 	j	1368 <decode+0x568>
    16b0:	24023000 	addiu	v0,zero,12288
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    16b4:	8d650000 	lw	a1,0(t3)
    16b8:	00000000 	sll	zero,zero,0x0
    16bc:	00850018 	mult	a0,a1
    16c0:	00002812 	mflo	a1
    16c4:	04a000a2 	bltz	a1,1950 <decode+0xb50>
    16c8:	240a0080 	addiu	t2,zero,128
    16cc:	8c6d0004 	lw	t5,4(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    16d0:	8d050000 	lw	a1,0(t0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    16d4:	008d0018 	mult	a0,t5
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    16d8:	00056a00 	sll	t5,a1,0x8
    16dc:	01a52823 	subu	a1,t5,a1
    16e0:	00052a03 	sra	a1,a1,0x8
	  bli[i] = wd2 + wd3;
    16e4:	01455021 	addu	t2,t2,a1
    16e8:	ad0a0000 	sw	t2,0(t0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    16ec:	00004012 	mflo	t0
    16f0:	050000a3 	bltz	t0,1980 <decode+0xb80>
    16f4:	00000000 	sll	zero,zero,0x0
    16f8:	8c6a0008 	lw	t2,8(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    16fc:	8c450004 	lw	a1,4(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1700:	008a0018 	mult	a0,t2
	    wd2 = 128;
    1704:	24080080 	addiu	t0,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1708:	00055200 	sll	t2,a1,0x8
    170c:	01452823 	subu	a1,t2,a1
    1710:	00052a03 	sra	a1,a1,0x8
	  bli[i] = wd2 + wd3;
    1714:	01054021 	addu	t0,t0,a1
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1718:	00005012 	mflo	t2
    171c:	054000a3 	bltz	t2,19ac <decode+0xbac>
    1720:	ac480004 	sw	t0,4(v0)
    1724:	8c6a000c 	lw	t2,12(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1728:	8c450008 	lw	a1,8(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    172c:	008a0018 	mult	a0,t2
	    wd2 = 128;
    1730:	24080080 	addiu	t0,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1734:	00055200 	sll	t2,a1,0x8
    1738:	01452823 	subu	a1,t2,a1
    173c:	00052a03 	sra	a1,a1,0x8
	  bli[i] = wd2 + wd3;
    1740:	01054021 	addu	t0,t0,a1
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1744:	0000a012 	mflo	s4
    1748:	068000a3 	bltz	s4,19d8 <decode+0xbd8>
    174c:	ac480008 	sw	t0,8(v0)
    1750:	8c6a0010 	lw	t2,16(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1754:	8c45000c 	lw	a1,12(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1758:	008a0018 	mult	a0,t2
	    wd2 = 128;
    175c:	24080080 	addiu	t0,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1760:	00055200 	sll	t2,a1,0x8
    1764:	01452823 	subu	a1,t2,a1
    1768:	00052a03 	sra	a1,a1,0x8
	  bli[i] = wd2 + wd3;
    176c:	01054021 	addu	t0,t0,a1
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1770:	0000a812 	mflo	s5
    1774:	06a000a3 	bltz	s5,1a04 <decode+0xc04>
    1778:	ac48000c 	sw	t0,12(v0)
    177c:	8c6a0014 	lw	t2,20(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1780:	8c450010 	lw	a1,16(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1784:	008a0018 	mult	a0,t2
	    wd2 = 128;
    1788:	24080080 	addiu	t0,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    178c:	00055200 	sll	t2,a1,0x8
    1790:	01452823 	subu	a1,t2,a1
    1794:	00052a03 	sra	a1,a1,0x8
	  bli[i] = wd2 + wd3;
    1798:	01054021 	addu	t0,t0,a1
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    179c:	0000b012 	mflo	s6
    17a0:	06c000a3 	bltz	s6,1a30 <decode+0xc30>
    17a4:	ac480010 	sw	t0,16(v0)
	    wd2 = 128;
    17a8:	24080080 	addiu	t0,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    17ac:	8c450014 	lw	a1,20(v0)
    17b0:	00000000 	sll	zero,zero,0x0
    17b4:	00055200 	sll	t2,a1,0x8
    17b8:	01452823 	subu	a1,t2,a1
    17bc:	00052a03 	sra	a1,a1,0x8
	  bli[i] = wd2 + wd3;
    17c0:	01052821 	addu	a1,t0,a1
    17c4:	080004bd 	j	12f4 <decode+0x4f4>
    17c8:	ac450014 	sw	a1,20(v0)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
  if (nbh < 0)
    nbh = 0;
    17cc:	00008021 	addu	s0,zero,zero
  if (nbh > 22528)
    17d0:	00105183 	sra	t2,s0,0x6
    17d4:	00102ac3 	sra	a1,s0,0xb
    17d8:	240d000b 	addiu	t5,zero,11
    17dc:	314a001f 	andi	t2,t2,0x1f
    17e0:	08000495 	j	1254 <decode+0x454>
    17e4:	01a52823 	subu	a1,t5,a1
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    apl2 = 12288;
    17e8:	08000430 	j	10c0 <decode+0x2c0>
    17ec:	24023000 	addiu	v0,zero,12288
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    17f0:	8d0a0000 	lw	t2,0(t0)
    17f4:	00000000 	sll	zero,zero,0x0
    17f8:	00aa0018 	mult	a1,t2
    17fc:	00005012 	mflo	t2
    1800:	0540008d 	bltz	t2,1a38 <decode+0xc38>
    1804:	240b0080 	addiu	t3,zero,128
    1808:	8c6c0004 	lw	t4,4(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    180c:	8cea0000 	lw	t2,0(a3)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1810:	00ac0018 	mult	a1,t4
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1814:	000a6200 	sll	t4,t2,0x8
    1818:	018a5023 	subu	t2,t4,t2
    181c:	000a5203 	sra	t2,t2,0x8
	  bli[i] = wd2 + wd3;
    1820:	016a5821 	addu	t3,t3,t2
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1824:	0000a012 	mflo	s4
    1828:	0680008e 	bltz	s4,1a64 <decode+0xc64>
    182c:	aceb0000 	sw	t3,0(a3)
    1830:	8c6b0008 	lw	t3,8(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1834:	8c470004 	lw	a3,4(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1838:	00ab0018 	mult	a1,t3
	    wd2 = 128;
    183c:	240a0080 	addiu	t2,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1840:	00075a00 	sll	t3,a3,0x8
    1844:	01673823 	subu	a3,t3,a3
    1848:	00073a03 	sra	a3,a3,0x8
	  bli[i] = wd2 + wd3;
    184c:	01475021 	addu	t2,t2,a3
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1850:	0000a812 	mflo	s5
    1854:	06a0008e 	bltz	s5,1a90 <decode+0xc90>
    1858:	ac4a0004 	sw	t2,4(v0)
    185c:	8c6b000c 	lw	t3,12(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1860:	8c470008 	lw	a3,8(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1864:	00ab0018 	mult	a1,t3
	    wd2 = 128;
    1868:	240a0080 	addiu	t2,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    186c:	00075a00 	sll	t3,a3,0x8
    1870:	01673823 	subu	a3,t3,a3
    1874:	00073a03 	sra	a3,a3,0x8
	  bli[i] = wd2 + wd3;
    1878:	01475021 	addu	t2,t2,a3
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    187c:	0000b012 	mflo	s6
    1880:	06c0008e 	bltz	s6,1abc <decode+0xcbc>
    1884:	ac4a0008 	sw	t2,8(v0)
    1888:	8c6b0010 	lw	t3,16(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    188c:	8c47000c 	lw	a3,12(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1890:	00ab0018 	mult	a1,t3
	    wd2 = 128;
    1894:	240a0080 	addiu	t2,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1898:	00075a00 	sll	t3,a3,0x8
    189c:	01673823 	subu	a3,t3,a3
    18a0:	00073a03 	sra	a3,a3,0x8
	  bli[i] = wd2 + wd3;
    18a4:	01475021 	addu	t2,t2,a3
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    18a8:	0000b812 	mflo	s7
    18ac:	06e0008e 	bltz	s7,1ae8 <decode+0xce8>
    18b0:	ac4a000c 	sw	t2,12(v0)
    18b4:	8c6b0014 	lw	t3,20(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    18b8:	8c470010 	lw	a3,16(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    18bc:	00ab0018 	mult	a1,t3
	    wd2 = 128;
    18c0:	240a0080 	addiu	t2,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    18c4:	00075a00 	sll	t3,a3,0x8
    18c8:	01673823 	subu	a3,t3,a3
    18cc:	00073a03 	sra	a3,a3,0x8
	  bli[i] = wd2 + wd3;
    18d0:	01475021 	addu	t2,t2,a3
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    18d4:	00003812 	mflo	a3
    18d8:	04e0008e 	bltz	a3,1b14 <decode+0xd14>
    18dc:	ac4a0010 	sw	t2,16(v0)
	    wd2 = 128;
    18e0:	240a0080 	addiu	t2,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    18e4:	8c470014 	lw	a3,20(v0)
    18e8:	00000000 	sll	zero,zero,0x0
    18ec:	00075a00 	sll	t3,a3,0x8
    18f0:	01673823 	subu	a3,t3,a3
    18f4:	00073a03 	sra	a3,a3,0x8
	  bli[i] = wd2 + wd3;
    18f8:	01473821 	addu	a3,t2,a3
    18fc:	08000413 	j	104c <decode+0x24c>
    1900:	ac470014 	sw	a3,20(v0)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
  if (nbl < 0)
    nbl = 0;
    1904:	00009021 	addu	s2,zero,zero
  if (nbl > 18432)
    1908:	00125983 	sra	t3,s2,0x6
    190c:	001252c3 	sra	t2,s2,0xb
    1910:	240c0009 	addiu	t4,zero,9
    1914:	316b001f 	andi	t3,t3,0x1f
    1918:	080003e9 	j	fa4 <decode+0x1a4>
    191c:	018a5023 	subu	t2,t4,t2
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
    1920:	080004e9 	j	13a4 <decode+0x5a4>
    1924:	00404021 	addu	t0,v0,zero
    1928:	0800043f 	j	10fc <decode+0x2fc>
    192c:	00405021 	addu	t2,v0,zero
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    }
  else
    {
      apl1 = (int) wd2 - 192;
    1930:	08000438 	j	10e0 <decode+0x2e0>
    1934:	2610ff40 	addiu	s0,s0,-192
    {
      wd4 = wd2 + 128;		/* same sign case */
    }
  else
    {
      wd4 = wd2 - 128;
    1938:	08000427 	j	109c <decode+0x29c>
    193c:	2442ff80 	addiu	v0,v0,-128
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    }
  else
    {
      apl1 = (int) wd2 - 192;
    1940:	080004e2 	j	1388 <decode+0x588>
    1944:	2529ff40 	addiu	t1,t1,-192
    {
      wd4 = wd2 + 128;		/* same sign case */
    }
  else
    {
      wd4 = wd2 - 128;
    1948:	080004d1 	j	1344 <decode+0x544>
    194c:	2442ff80 	addiu	v0,v0,-128
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1950:	8c6d0004 	lw	t5,4(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1954:	8d050000 	lw	a1,0(t0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1958:	008d0018 	mult	a0,t5
	    wd2 = 128;
	  else
	    wd2 = -128;
    195c:	240aff80 	addiu	t2,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1960:	00056a00 	sll	t5,a1,0x8
    1964:	01a52823 	subu	a1,t5,a1
    1968:	00052a03 	sra	a1,a1,0x8
	  bli[i] = wd2 + wd3;
    196c:	01455021 	addu	t2,t2,a1
    1970:	ad0a0000 	sw	t2,0(t0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1974:	00004012 	mflo	t0
    1978:	0501ff5f 	bgez	t0,16f8 <decode+0x8f8>
    197c:	00000000 	sll	zero,zero,0x0
    1980:	8c6a0008 	lw	t2,8(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1984:	8c450004 	lw	a1,4(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1988:	008a0018 	mult	a0,t2
	    wd2 = 128;
	  else
	    wd2 = -128;
    198c:	2408ff80 	addiu	t0,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1990:	00055200 	sll	t2,a1,0x8
    1994:	01452823 	subu	a1,t2,a1
    1998:	00052a03 	sra	a1,a1,0x8
	  bli[i] = wd2 + wd3;
    199c:	01054021 	addu	t0,t0,a1
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    19a0:	00005012 	mflo	t2
    19a4:	0541ff5f 	bgez	t2,1724 <decode+0x924>
    19a8:	ac480004 	sw	t0,4(v0)
    19ac:	8c6a000c 	lw	t2,12(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    19b0:	8c450008 	lw	a1,8(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    19b4:	008a0018 	mult	a0,t2
	    wd2 = 128;
	  else
	    wd2 = -128;
    19b8:	2408ff80 	addiu	t0,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    19bc:	00055200 	sll	t2,a1,0x8
    19c0:	01452823 	subu	a1,t2,a1
    19c4:	00052a03 	sra	a1,a1,0x8
	  bli[i] = wd2 + wd3;
    19c8:	01054021 	addu	t0,t0,a1
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    19cc:	0000a012 	mflo	s4
    19d0:	0681ff5f 	bgez	s4,1750 <decode+0x950>
    19d4:	ac480008 	sw	t0,8(v0)
    19d8:	8c6a0010 	lw	t2,16(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    19dc:	8c45000c 	lw	a1,12(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    19e0:	008a0018 	mult	a0,t2
	    wd2 = 128;
	  else
	    wd2 = -128;
    19e4:	2408ff80 	addiu	t0,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    19e8:	00055200 	sll	t2,a1,0x8
    19ec:	01452823 	subu	a1,t2,a1
    19f0:	00052a03 	sra	a1,a1,0x8
	  bli[i] = wd2 + wd3;
    19f4:	01054021 	addu	t0,t0,a1
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    19f8:	0000a812 	mflo	s5
    19fc:	06a1ff5f 	bgez	s5,177c <decode+0x97c>
    1a00:	ac48000c 	sw	t0,12(v0)
    1a04:	8c6a0014 	lw	t2,20(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1a08:	8c450010 	lw	a1,16(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1a0c:	008a0018 	mult	a0,t2
	    wd2 = 128;
	  else
	    wd2 = -128;
    1a10:	2408ff80 	addiu	t0,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1a14:	00055200 	sll	t2,a1,0x8
    1a18:	01452823 	subu	a1,t2,a1
    1a1c:	00052a03 	sra	a1,a1,0x8
	  bli[i] = wd2 + wd3;
    1a20:	01054021 	addu	t0,t0,a1
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1a24:	0000b012 	mflo	s6
    1a28:	06c1ff5f 	bgez	s6,17a8 <decode+0x9a8>
    1a2c:	ac480010 	sw	t0,16(v0)
	    wd2 = 128;
	  else
	    wd2 = -128;
    1a30:	080005eb 	j	17ac <decode+0x9ac>
    1a34:	2408ff80 	addiu	t0,zero,-128
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1a38:	8c6c0004 	lw	t4,4(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1a3c:	8cea0000 	lw	t2,0(a3)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1a40:	00ac0018 	mult	a1,t4
	    wd2 = 128;
	  else
	    wd2 = -128;
    1a44:	240bff80 	addiu	t3,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1a48:	000a6200 	sll	t4,t2,0x8
    1a4c:	018a5023 	subu	t2,t4,t2
    1a50:	000a5203 	sra	t2,t2,0x8
	  bli[i] = wd2 + wd3;
    1a54:	016a5821 	addu	t3,t3,t2
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1a58:	0000a012 	mflo	s4
    1a5c:	0681ff74 	bgez	s4,1830 <decode+0xa30>
    1a60:	aceb0000 	sw	t3,0(a3)
    1a64:	8c6b0008 	lw	t3,8(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1a68:	8c470004 	lw	a3,4(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1a6c:	00ab0018 	mult	a1,t3
	    wd2 = 128;
	  else
	    wd2 = -128;
    1a70:	240aff80 	addiu	t2,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1a74:	00075a00 	sll	t3,a3,0x8
    1a78:	01673823 	subu	a3,t3,a3
    1a7c:	00073a03 	sra	a3,a3,0x8
	  bli[i] = wd2 + wd3;
    1a80:	01475021 	addu	t2,t2,a3
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1a84:	0000a812 	mflo	s5
    1a88:	06a1ff74 	bgez	s5,185c <decode+0xa5c>
    1a8c:	ac4a0004 	sw	t2,4(v0)
    1a90:	8c6b000c 	lw	t3,12(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1a94:	8c470008 	lw	a3,8(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1a98:	00ab0018 	mult	a1,t3
	    wd2 = 128;
	  else
	    wd2 = -128;
    1a9c:	240aff80 	addiu	t2,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1aa0:	00075a00 	sll	t3,a3,0x8
    1aa4:	01673823 	subu	a3,t3,a3
    1aa8:	00073a03 	sra	a3,a3,0x8
	  bli[i] = wd2 + wd3;
    1aac:	01475021 	addu	t2,t2,a3
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1ab0:	0000b012 	mflo	s6
    1ab4:	06c1ff74 	bgez	s6,1888 <decode+0xa88>
    1ab8:	ac4a0008 	sw	t2,8(v0)
    1abc:	8c6b0010 	lw	t3,16(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1ac0:	8c47000c 	lw	a3,12(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1ac4:	00ab0018 	mult	a1,t3
	    wd2 = 128;
	  else
	    wd2 = -128;
    1ac8:	240aff80 	addiu	t2,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1acc:	00075a00 	sll	t3,a3,0x8
    1ad0:	01673823 	subu	a3,t3,a3
    1ad4:	00073a03 	sra	a3,a3,0x8
	  bli[i] = wd2 + wd3;
    1ad8:	01475021 	addu	t2,t2,a3
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1adc:	0000b812 	mflo	s7
    1ae0:	06e1ff74 	bgez	s7,18b4 <decode+0xab4>
    1ae4:	ac4a000c 	sw	t2,12(v0)
    1ae8:	8c6b0014 	lw	t3,20(v1)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1aec:	8c470010 	lw	a3,16(v0)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1af0:	00ab0018 	mult	a1,t3
	    wd2 = 128;
	  else
	    wd2 = -128;
    1af4:	240aff80 	addiu	t2,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1af8:	00075a00 	sll	t3,a3,0x8
    1afc:	01673823 	subu	a3,t3,a3
    1b00:	00073a03 	sra	a3,a3,0x8
	  bli[i] = wd2 + wd3;
    1b04:	01475021 	addu	t2,t2,a3
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1b08:	00003812 	mflo	a3
    1b0c:	04e1ff74 	bgez	a3,18e0 <decode+0xae0>
    1b10:	ac4a0010 	sw	t2,16(v0)
	    wd2 = 128;
	  else
	    wd2 = -128;
    1b14:	08000639 	j	18e4 <decode+0xae4>
    1b18:	240aff80 	addiu	t2,zero,-128

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    apl2 = 12288;
  if (apl2 < -12288)
    apl2 = -12288;
    1b1c:	08000432 	j	10c8 <decode+0x2c8>
    1b20:	2402d000 	addiu	v0,zero,-12288
    1b24:	080004dc 	j	1370 <decode+0x570>
    1b28:	2402d000 	addiu	v0,zero,-12288

00001b2c <reset>:

/* clear all storage locations */

void
reset ()
{
    1b2c:	27bdfff0 	addiu	sp,sp,-16
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
    1b30:	3c030000 	lui	v1,0x0

/* clear all storage locations */

void
reset ()
{
    1b34:	afb00004 	sw	s0,4(sp)

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
      delay_dhx[i] = 0;
      dec_del_dltx[i] = 0;
    1b38:	3c190000 	lui	t9,0x0
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
      delay_dhx[i] = 0;
    1b3c:	3c100000 	lui	s0,0x0
      dec_del_dltx[i] = 0;
      dec_del_dhx[i] = 0;
    1b40:	3c180000 	lui	t8,0x0
    }

  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
    1b44:	3c0f0000 	lui	t7,0x0
      delay_bph[i] = 0;
    1b48:	3c0e0000 	lui	t6,0x0
      dec_del_bpl[i] = 0;
    1b4c:	3c0d0000 	lui	t5,0x0
      dec_del_bph[i] = 0;
    1b50:	3c0c0000 	lui	t4,0x0
    1b54:	3c020000 	lui	v0,0x0
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
    1b58:	246b0000 	addiu	t3,v1,0
      delay_dhx[i] = 0;
    1b5c:	260a0000 	addiu	t2,s0,0
      dec_del_dltx[i] = 0;
    1b60:	27290000 	addiu	t1,t9,0
      dec_del_dhx[i] = 0;
    1b64:	27080000 	addiu	t0,t8,0
    }

  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
    1b68:	25e70000 	addiu	a3,t7,0
      delay_bph[i] = 0;
    1b6c:	25c60000 	addiu	a2,t6,0
      dec_del_bpl[i] = 0;
    1b70:	25a50000 	addiu	a1,t5,0
      dec_del_bph[i] = 0;
    1b74:	25840000 	addiu	a0,t4,0

/* clear all storage locations */

void
reset ()
{
    1b78:	afb2000c 	sw	s2,12(sp)
    1b7c:	afb10008 	sw	s1,8(sp)
  int i;

  detl = dec_detl = 32;		/* reset to min scale factor */
    1b80:	24120020 	addiu	s2,zero,32
  deth = dec_deth = 8;
    1b84:	24110008 	addiu	s1,zero,8
  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
      delay_bph[i] = 0;
      dec_del_bpl[i] = 0;
      dec_del_bph[i] = 0;
    1b88:	24420000 	addiu	v0,v0,0
void
reset ()
{
  int i;

  detl = dec_detl = 32;		/* reset to min scale factor */
    1b8c:	af920000 	sw	s2,0(gp)
    1b90:	af920000 	sw	s2,0(gp)
  deth = dec_deth = 8;
    1b94:	af910000 	sw	s1,0(gp)
    1b98:	af910000 	sw	s1,0(gp)
  nbl = al1 = al2 = plt1 = plt2 = rlt1 = rlt2 = 0;
    1b9c:	af800000 	sw	zero,0(gp)
    1ba0:	af800000 	sw	zero,0(gp)
    1ba4:	af800000 	sw	zero,0(gp)
    1ba8:	af800000 	sw	zero,0(gp)
    1bac:	af800000 	sw	zero,0(gp)
    1bb0:	af800000 	sw	zero,0(gp)
    1bb4:	af800000 	sw	zero,0(gp)
  nbh = ah1 = ah2 = ph1 = ph2 = rh1 = rh2 = 0;
    1bb8:	af800000 	sw	zero,0(gp)
    1bbc:	af800000 	sw	zero,0(gp)
    1bc0:	af800000 	sw	zero,0(gp)
    1bc4:	af800000 	sw	zero,0(gp)
    1bc8:	af800000 	sw	zero,0(gp)
    1bcc:	af800000 	sw	zero,0(gp)
    1bd0:	af800000 	sw	zero,0(gp)
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
    1bd4:	af800000 	sw	zero,0(gp)
    1bd8:	af800000 	sw	zero,0(gp)
    1bdc:	af800000 	sw	zero,0(gp)
    1be0:	af800000 	sw	zero,0(gp)
    1be4:	af800000 	sw	zero,0(gp)
    1be8:	af800000 	sw	zero,0(gp)
    1bec:	af800000 	sw	zero,0(gp)
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;
    1bf0:	af800000 	sw	zero,0(gp)
    1bf4:	af800000 	sw	zero,0(gp)
    1bf8:	af800000 	sw	zero,0(gp)
    1bfc:	af800000 	sw	zero,0(gp)
    1c00:	af800000 	sw	zero,0(gp)
    1c04:	af800000 	sw	zero,0(gp)

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
    1c08:	ac600000 	sw	zero,0(v1)
  detl = dec_detl = 32;		/* reset to min scale factor */
  deth = dec_deth = 8;
  nbl = al1 = al2 = plt1 = plt2 = rlt1 = rlt2 = 0;
  nbh = ah1 = ah2 = ph1 = ph2 = rh1 = rh2 = 0;
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;
    1c0c:	af800000 	sw	zero,0(gp)

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
      delay_dhx[i] = 0;
    1c10:	ae000000 	sw	zero,0(s0)
      dec_del_dltx[i] = 0;
    1c14:	af200000 	sw	zero,0(t9)
      dec_del_dhx[i] = 0;
    1c18:	af000000 	sw	zero,0(t8)
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
    1c1c:	ad600004 	sw	zero,4(t3)
      delay_dhx[i] = 0;
    1c20:	ad400004 	sw	zero,4(t2)
      dec_del_dltx[i] = 0;
    1c24:	ad200004 	sw	zero,4(t1)
      dec_del_dhx[i] = 0;
    1c28:	ad000004 	sw	zero,4(t0)
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
    1c2c:	ad600008 	sw	zero,8(t3)
      delay_dhx[i] = 0;
    1c30:	ad400008 	sw	zero,8(t2)
      dec_del_dltx[i] = 0;
    1c34:	ad200008 	sw	zero,8(t1)
      dec_del_dhx[i] = 0;
    1c38:	ad000008 	sw	zero,8(t0)
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
    1c3c:	ad60000c 	sw	zero,12(t3)
      delay_dhx[i] = 0;
    1c40:	ad40000c 	sw	zero,12(t2)
      dec_del_dltx[i] = 0;
    1c44:	ad20000c 	sw	zero,12(t1)
      dec_del_dhx[i] = 0;
    1c48:	ad00000c 	sw	zero,12(t0)
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
    1c4c:	ad600010 	sw	zero,16(t3)
      delay_dhx[i] = 0;
    1c50:	ad400010 	sw	zero,16(t2)
      dec_del_dltx[i] = 0;
    1c54:	ad200010 	sw	zero,16(t1)
      dec_del_dhx[i] = 0;
    1c58:	ad000010 	sw	zero,16(t0)
  dec_nbl = dec_al1 = dec_al2 = dec_plt1 = dec_plt2 = dec_rlt1 = dec_rlt2 = 0;
  dec_nbh = dec_ah1 = dec_ah2 = dec_ph1 = dec_ph2 = dec_rh1 = dec_rh2 = 0;

  for (i = 0; i < 6; i++)
    {
      delay_dltx[i] = 0;
    1c5c:	ad600014 	sw	zero,20(t3)
      delay_dhx[i] = 0;
    1c60:	ad400014 	sw	zero,20(t2)
      dec_del_dltx[i] = 0;
    1c64:	ad200014 	sw	zero,20(t1)
      dec_del_dhx[i] = 0;
    1c68:	ad000014 	sw	zero,20(t0)
    }

  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
    1c6c:	ade00000 	sw	zero,0(t7)
      delay_bph[i] = 0;
    1c70:	adc00000 	sw	zero,0(t6)
      dec_del_bpl[i] = 0;
    1c74:	ada00000 	sw	zero,0(t5)
      dec_del_bph[i] = 0;
    1c78:	ad800000 	sw	zero,0(t4)
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
    1c7c:	ace00004 	sw	zero,4(a3)
      delay_bph[i] = 0;
    1c80:	acc00004 	sw	zero,4(a2)
      dec_del_bpl[i] = 0;
    1c84:	aca00004 	sw	zero,4(a1)
      dec_del_bph[i] = 0;
    1c88:	ac800004 	sw	zero,4(a0)
}

/* clear all storage locations */

void
reset ()
    1c8c:	24430060 	addiu	v1,v0,96
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
    1c90:	ace00008 	sw	zero,8(a3)
      delay_bph[i] = 0;
    1c94:	acc00008 	sw	zero,8(a2)
      dec_del_bpl[i] = 0;
    1c98:	aca00008 	sw	zero,8(a1)
      dec_del_bph[i] = 0;
    1c9c:	ac800008 	sw	zero,8(a0)
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
    1ca0:	ace0000c 	sw	zero,12(a3)
      delay_bph[i] = 0;
    1ca4:	acc0000c 	sw	zero,12(a2)
      dec_del_bpl[i] = 0;
    1ca8:	aca0000c 	sw	zero,12(a1)
      dec_del_bph[i] = 0;
    1cac:	ac80000c 	sw	zero,12(a0)
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
    1cb0:	ace00010 	sw	zero,16(a3)
      delay_bph[i] = 0;
    1cb4:	acc00010 	sw	zero,16(a2)
      dec_del_bpl[i] = 0;
    1cb8:	aca00010 	sw	zero,16(a1)
      dec_del_bph[i] = 0;
    1cbc:	ac800010 	sw	zero,16(a0)
      dec_del_dhx[i] = 0;
    }

  for (i = 0; i < 6; i++)
    {
      delay_bpl[i] = 0;
    1cc0:	ace00014 	sw	zero,20(a3)
      delay_bph[i] = 0;
    1cc4:	acc00014 	sw	zero,20(a2)
      dec_del_bpl[i] = 0;
    1cc8:	aca00014 	sw	zero,20(a1)
      dec_del_bph[i] = 0;
    1ccc:	ac800014 	sw	zero,20(a0)
    }

  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23
    1cd0:	ac400000 	sw	zero,0(v0)
    1cd4:	24420004 	addiu	v0,v0,4
      delay_bph[i] = 0;
      dec_del_bpl[i] = 0;
      dec_del_bph[i] = 0;
    }

  for (i = 0; i < 24; i++)
    1cd8:	1443fffd 	bne	v0,v1,1cd0 <reset+0x1a4>
    1cdc:	3c050000 	lui	a1,0x0
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
      accumd[i] = 0;
    1ce0:	3c040000 	lui	a0,0x0
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
    1ce4:	24a30000 	addiu	v1,a1,0
      accumd[i] = 0;
    1ce8:	24820000 	addiu	v0,a0,0
    }
}
    1cec:	8fb2000c 	lw	s2,12(sp)
    1cf0:	8fb10008 	lw	s1,8(sp)
    1cf4:	8fb00004 	lw	s0,4(sp)
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
    1cf8:	aca00000 	sw	zero,0(a1)
      accumd[i] = 0;
    1cfc:	ac800000 	sw	zero,0(a0)
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
    1d00:	ac600004 	sw	zero,4(v1)
      accumd[i] = 0;
    1d04:	ac400004 	sw	zero,4(v0)
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
    1d08:	ac600008 	sw	zero,8(v1)
      accumd[i] = 0;
    1d0c:	ac400008 	sw	zero,8(v0)
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
    1d10:	ac60000c 	sw	zero,12(v1)
      accumd[i] = 0;
    1d14:	ac40000c 	sw	zero,12(v0)
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
    1d18:	ac600010 	sw	zero,16(v1)
      accumd[i] = 0;
    1d1c:	ac400010 	sw	zero,16(v0)
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
    1d20:	ac600014 	sw	zero,20(v1)
      accumd[i] = 0;
    1d24:	ac400014 	sw	zero,20(v0)
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
    1d28:	ac600018 	sw	zero,24(v1)
      accumd[i] = 0;
    1d2c:	ac400018 	sw	zero,24(v0)
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
    1d30:	ac60001c 	sw	zero,28(v1)
      accumd[i] = 0;
    1d34:	ac40001c 	sw	zero,28(v0)
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
    1d38:	ac600020 	sw	zero,32(v1)
      accumd[i] = 0;
    1d3c:	ac400020 	sw	zero,32(v0)
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
    1d40:	ac600024 	sw	zero,36(v1)
      accumd[i] = 0;
    1d44:	ac400024 	sw	zero,36(v0)
  for (i = 0; i < 24; i++)
    tqmf[i] = 0;		// i<23

  for (i = 0; i < 11; i++)
    {
      accumc[i] = 0;
    1d48:	ac600028 	sw	zero,40(v1)
      accumd[i] = 0;
    1d4c:	ac400028 	sw	zero,40(v0)
    }
}
    1d50:	03e00008 	jr	ra
    1d54:	27bd0010 	addiu	sp,sp,16

00001d58 <filtez>:
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
    1d58:	8caa0000 	lw	t2,0(a1)
    1d5c:	8c820000 	lw	v0,0(a0)
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    1d60:	8cad0004 	lw	t5,4(a1)
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
    1d64:	01420018 	mult	t2,v0
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    1d68:	8c8c0004 	lw	t4,4(a0)
    1d6c:	8c880008 	lw	t0,8(a0)
    1d70:	8cab0008 	lw	t3,8(a1)
    1d74:	8c86000c 	lw	a2,12(a0)
    1d78:	8c820014 	lw	v0,20(a0)
    1d7c:	8c870010 	lw	a3,16(a0)
    1d80:	8ca9000c 	lw	t1,12(a1)
    1d84:	8ca30010 	lw	v1,16(a1)
    1d88:	8ca50014 	lw	a1,20(a1)
int
filtez (int *bpl, int *dlt)
{
  int i;
  long int zl;
  zl = (long) (*bpl++) * (*dlt++);
    1d8c:	00005012 	mflo	t2
	...
  for (i = 1; i < 6; i++)
    zl += (long) (*bpl++) * (*dlt++);
    1d98:	01ac0018 	mult	t5,t4
    1d9c:	00002012 	mflo	a0
    1da0:	008a2021 	addu	a0,a0,t2
    1da4:	00000000 	sll	zero,zero,0x0
    1da8:	01680018 	mult	t3,t0
    1dac:	00004012 	mflo	t0
    1db0:	00882021 	addu	a0,a0,t0
    1db4:	00000000 	sll	zero,zero,0x0
    1db8:	01260018 	mult	t1,a2
    1dbc:	00003012 	mflo	a2
    1dc0:	00862021 	addu	a0,a0,a2
    1dc4:	00000000 	sll	zero,zero,0x0
    1dc8:	00670018 	mult	v1,a3
    1dcc:	00001812 	mflo	v1
    1dd0:	00831821 	addu	v1,a0,v1
    1dd4:	00000000 	sll	zero,zero,0x0
    1dd8:	00a20018 	mult	a1,v0
    1ddc:	00001012 	mflo	v0
    1de0:	00431021 	addu	v0,v0,v1

  return ((int) (zl >> 14));	/* x2 here */
}
    1de4:	03e00008 	jr	ra
    1de8:	00021383 	sra	v0,v0,0xe

00001dec <filtep>:
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
    1dec:	00e60018 	mult	a3,a2
    1df0:	00003012 	mflo	a2
	...
int
filtep (int rlt1, int al1, int rlt2, int al2)
{
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
    1dfc:	00a40018 	mult	a1,a0
    1e00:	00002012 	mflo	a0
/* filtep - compute predictor output signal (pole section) */
/* input rlt1-2 and al1-2, output spl */

int
filtep (int rlt1, int al1, int rlt2, int al2)
{
    1e04:	00c43021 	addu	a2,a2,a0
  long int pl, pl2;
  pl = 2 * rlt1;
  pl = (long) al1 *pl;
  pl2 = 2 * rlt2;
  pl += (long) al2 *pl2;
  return ((int) (pl >> 15));
    1e08:	00061040 	sll	v0,a2,0x1
}
    1e0c:	03e00008 	jr	ra
    1e10:	000213c3 	sra	v0,v0,0xf

00001e14 <quantl>:
{
  int ril, mil;
  long int wd, decis;

/* abs of difference signal */
  wd = abs (el);
    1e14:	04800021 	bltz	a0,1e9c <quantl+0x88>
    1e18:	00803021 	addu	a2,a0,zero
    1e1c:	3c020000 	lui	v0,0x0
    1e20:	24420000 	addiu	v0,v0,0
/* determine mil based on decision levels and detl gain */
  for (mil = 0; mil < 30; mil++)
    1e24:	00001821 	addu	v1,zero,zero
    1e28:	0800078f 	j	1e3c <quantl+0x28>
    1e2c:	2407001e 	addiu	a3,zero,30
    1e30:	24630001 	addiu	v1,v1,1
    1e34:	10670009 	beq	v1,a3,1e5c <quantl+0x48>
    1e38:	00000000 	sll	zero,zero,0x0
    {
      decis = (decis_levl[mil] * (long) detl) >> 15L;
    1e3c:	8c480000 	lw	t0,0(v0)
    1e40:	00000000 	sll	zero,zero,0x0
    1e44:	00a80018 	mult	a1,t0
    1e48:	00004012 	mflo	t0
    1e4c:	000843c3 	sra	t0,t0,0xf
      if (wd <= decis)
    1e50:	0106402a 	slt	t0,t0,a2
    1e54:	1500fff6 	bnez	t0,1e30 <quantl+0x1c>
    1e58:	24420004 	addiu	v0,v0,4
	break;
    }
/* if mil=30 then wd is less than all decision levels */
  if (el >= 0)
    1e5c:	04800008 	bltz	a0,1e80 <quantl+0x6c>
    1e60:	00000000 	sll	zero,zero,0x0
    ril = quant26bt_pos[mil];
    1e64:	3c020000 	lui	v0,0x0
    1e68:	24420000 	addiu	v0,v0,0
    1e6c:	00031880 	sll	v1,v1,0x2
    1e70:	00621821 	addu	v1,v1,v0
    1e74:	8c620000 	lw	v0,0(v1)
    1e78:	03e00008 	jr	ra
    1e7c:	00000000 	sll	zero,zero,0x0
  else
    ril = quant26bt_neg[mil];
    1e80:	3c020000 	lui	v0,0x0
    1e84:	24420000 	addiu	v0,v0,0
    1e88:	00031880 	sll	v1,v1,0x2
    1e8c:	00621821 	addu	v1,v1,v0
    1e90:	8c620000 	lw	v0,0(v1)
  return (ril);
}
    1e94:	03e00008 	jr	ra
    1e98:	00000000 	sll	zero,zero,0x0
{
  int ril, mil;
  long int wd, decis;

/* abs of difference signal */
  wd = abs (el);
    1e9c:	08000787 	j	1e1c <quantl+0x8>
    1ea0:	00043023 	negu	a2,a0

00001ea4 <logscl>:
int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
    1ea4:	00042083 	sra	a0,a0,0x2
    1ea8:	3c030000 	lui	v1,0x0
    1eac:	24630000 	addiu	v1,v1,0
    1eb0:	00042080 	sll	a0,a0,0x2

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
    1eb4:	000511c0 	sll	v0,a1,0x7
  nbl = (int) wd + wl_code_table[il >> 2];
    1eb8:	00832021 	addu	a0,a0,v1

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
    1ebc:	00451023 	subu	v0,v0,a1
  nbl = (int) wd + wl_code_table[il >> 2];
    1ec0:	8c830000 	lw	v1,0(a0)

int
logscl (int il, int nbl)
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
    1ec4:	000211c3 	sra	v0,v0,0x7
  nbl = (int) wd + wl_code_table[il >> 2];
    1ec8:	00431021 	addu	v0,v0,v1
  if (nbl < 0)
    1ecc:	04400005 	bltz	v0,1ee4 <logscl+0x40>
    1ed0:	28434801 	slti	v1,v0,18433
    nbl = 0;
  if (nbl > 18432)
    1ed4:	14600005 	bnez	v1,1eec <logscl+0x48>
    1ed8:	00000000 	sll	zero,zero,0x0
    nbl = 18432;
  return (nbl);
}
    1edc:	03e00008 	jr	ra
    1ee0:	24024800 	addiu	v0,zero,18432
{
  long int wd;
  wd = ((long) nbl * 127L) >> 7L;	/* leak factor 127/128 */
  nbl = (int) wd + wl_code_table[il >> 2];
  if (nbl < 0)
    nbl = 0;
    1ee4:	03e00008 	jr	ra
    1ee8:	00001021 	addu	v0,zero,zero
    1eec:	03e00008 	jr	ra
    1ef0:	00000000 	sll	zero,zero,0x0

00001ef4 <scalel>:

int
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
    1ef4:	00041902 	srl	v1,a0,0x4
  wd2 = nbl >> 11;
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
    1ef8:	3c020000 	lui	v0,0x0
    1efc:	24420000 	addiu	v0,v0,0
    1f00:	3063007c 	andi	v1,v1,0x7c
    1f04:	00621821 	addu	v1,v1,v0
    1f08:	24a50001 	addiu	a1,a1,1
    1f0c:	8c620000 	lw	v0,0(v1)
int
scalel (int nbl, int shift_constant)
{
  int wd1, wd2, wd3;
  wd1 = (nbl >> 6) & 31;
  wd2 = nbl >> 11;
    1f10:	000422c3 	sra	a0,a0,0xb
  wd3 = ilb_table[wd1] >> (shift_constant + 1 - wd2);
    1f14:	00a42023 	subu	a0,a1,a0
    1f18:	00821007 	srav	v0,v0,a0
  return (wd3 << 3);
}
    1f1c:	03e00008 	jr	ra
    1f20:	000210c0 	sll	v0,v0,0x3

00001f24 <upzero>:
void
upzero (int dlt, int *dlti, int *bli)
{
  int i, wd2, wd3;
/*if dlt is zero, then no sum into bli */
  if (dlt == 0)
    1f24:	14800029 	bnez	a0,1fcc <upzero+0xa8>
    1f28:	00000000 	sll	zero,zero,0x0
    {
      for (i = 0; i < 6; i++)
	{
	  bli[i] = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1f2c:	8cca0000 	lw	t2,0(a2)
    1f30:	8cc90004 	lw	t1,4(a2)
    1f34:	8cc80008 	lw	t0,8(a2)
    1f38:	8cc7000c 	lw	a3,12(a2)
    1f3c:	8cc30010 	lw	v1,16(a2)
    1f40:	8cc20014 	lw	v0,20(a2)
    1f44:	000ac200 	sll	t8,t2,0x8
    1f48:	00097a00 	sll	t7,t1,0x8
    1f4c:	00087200 	sll	t6,t0,0x8
    1f50:	00076a00 	sll	t5,a3,0x8
    1f54:	00036200 	sll	t4,v1,0x8
    1f58:	00025a00 	sll	t3,v0,0x8
    1f5c:	030a5023 	subu	t2,t8,t2
    1f60:	01e94823 	subu	t1,t7,t1
    1f64:	01c84023 	subu	t0,t6,t0
    1f68:	01a73823 	subu	a3,t5,a3
    1f6c:	01831823 	subu	v1,t4,v1
    1f70:	01621023 	subu	v0,t3,v0
    1f74:	00073a03 	sra	a3,a3,0x8
    1f78:	00031a03 	sra	v1,v1,0x8
    1f7c:	00021203 	sra	v0,v0,0x8
    1f80:	000a5203 	sra	t2,t2,0x8
    1f84:	00094a03 	sra	t1,t1,0x8
    1f88:	00084203 	sra	t0,t0,0x8
    1f8c:	acca0000 	sw	t2,0(a2)
    1f90:	acc90004 	sw	t1,4(a2)
    1f94:	acc80008 	sw	t0,8(a2)
    1f98:	acc7000c 	sw	a3,12(a2)
    1f9c:	acc30010 	sw	v1,16(a2)
    1fa0:	acc20014 	sw	v0,20(a2)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
    1fa4:	8ca70010 	lw	a3,16(a1)
  dlti[4] = dlti[3];
    1fa8:	8ca6000c 	lw	a2,12(a1)
  dlti[3] = dlti[2];
  dlti[1] = dlti[0];
    1fac:	8ca20000 	lw	v0,0(a1)
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
  dlti[4] = dlti[3];
  dlti[3] = dlti[2];
    1fb0:	8ca30008 	lw	v1,8(a1)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
    1fb4:	aca70014 	sw	a3,20(a1)
  dlti[4] = dlti[3];
    1fb8:	aca60010 	sw	a2,16(a1)
  dlti[3] = dlti[2];
    1fbc:	aca3000c 	sw	v1,12(a1)
  dlti[1] = dlti[0];
    1fc0:	aca20004 	sw	v0,4(a1)
  dlti[0] = dlt;
}
    1fc4:	03e00008 	jr	ra
    1fc8:	aca40000 	sw	a0,0(a1)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    1fcc:	8ca20000 	lw	v0,0(a1)
    1fd0:	00000000 	sll	zero,zero,0x0
    1fd4:	00820018 	mult	a0,v0
    1fd8:	00001012 	mflo	v0
    1fdc:	04400054 	bltz	v0,2130 <upzero+0x20c>
    1fe0:	24070080 	addiu	a3,zero,128
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    1fe4:	8cc20000 	lw	v0,0(a2)
    1fe8:	00000000 	sll	zero,zero,0x0
    1fec:	00021a00 	sll	v1,v0,0x8
    1ff0:	00621023 	subu	v0,v1,v0
    1ff4:	00021203 	sra	v0,v0,0x8
	  bli[i] = wd2 + wd3;
    1ff8:	00e21021 	addu	v0,a3,v0
    1ffc:	acc20000 	sw	v0,0(a2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    2000:	8ca20004 	lw	v0,4(a1)
    2004:	00000000 	sll	zero,zero,0x0
    2008:	00820018 	mult	a0,v0
    200c:	00001012 	mflo	v0
    2010:	04400054 	bltz	v0,2164 <upzero+0x240>
    2014:	00000000 	sll	zero,zero,0x0
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    2018:	8cc20004 	lw	v0,4(a2)
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
    201c:	24070080 	addiu	a3,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    2020:	00021a00 	sll	v1,v0,0x8
    2024:	00621023 	subu	v0,v1,v0
    2028:	00021203 	sra	v0,v0,0x8
	  bli[i] = wd2 + wd3;
    202c:	00e21021 	addu	v0,a3,v0
    2030:	acc20004 	sw	v0,4(a2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    2034:	8ca20008 	lw	v0,8(a1)
    2038:	00000000 	sll	zero,zero,0x0
    203c:	00820018 	mult	a0,v0
    2040:	00001012 	mflo	v0
    2044:	04400054 	bltz	v0,2198 <upzero+0x274>
    2048:	00000000 	sll	zero,zero,0x0
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    204c:	8cc20008 	lw	v0,8(a2)
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
    2050:	24070080 	addiu	a3,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    2054:	00021a00 	sll	v1,v0,0x8
    2058:	00621023 	subu	v0,v1,v0
    205c:	00021203 	sra	v0,v0,0x8
	  bli[i] = wd2 + wd3;
    2060:	00e21021 	addu	v0,a3,v0
    2064:	acc20008 	sw	v0,8(a2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    2068:	8ca2000c 	lw	v0,12(a1)
    206c:	00000000 	sll	zero,zero,0x0
    2070:	00820018 	mult	a0,v0
    2074:	00001012 	mflo	v0
    2078:	04400054 	bltz	v0,21cc <upzero+0x2a8>
    207c:	00000000 	sll	zero,zero,0x0
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    2080:	8cc2000c 	lw	v0,12(a2)
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
    2084:	24070080 	addiu	a3,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    2088:	00021a00 	sll	v1,v0,0x8
    208c:	00621023 	subu	v0,v1,v0
    2090:	00021203 	sra	v0,v0,0x8
	  bli[i] = wd2 + wd3;
    2094:	00e21021 	addu	v0,a3,v0
    2098:	acc2000c 	sw	v0,12(a2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    209c:	8ca20010 	lw	v0,16(a1)
    20a0:	00000000 	sll	zero,zero,0x0
    20a4:	00820018 	mult	a0,v0
    20a8:	00001012 	mflo	v0
    20ac:	04400054 	bltz	v0,2200 <upzero+0x2dc>
    20b0:	00000000 	sll	zero,zero,0x0
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    20b4:	8cc20010 	lw	v0,16(a2)
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
    20b8:	24070080 	addiu	a3,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    20bc:	00021a00 	sll	v1,v0,0x8
    20c0:	00621023 	subu	v0,v1,v0
    20c4:	00021203 	sra	v0,v0,0x8
	  bli[i] = wd2 + wd3;
    20c8:	00e21021 	addu	v0,a3,v0
    20cc:	acc20010 	sw	v0,16(a2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    20d0:	8ca20014 	lw	v0,20(a1)
    20d4:	00000000 	sll	zero,zero,0x0
    20d8:	00820018 	mult	a0,v0
    20dc:	00001012 	mflo	v0
    20e0:	04400002 	bltz	v0,20ec <upzero+0x1c8>
    20e4:	2407ff80 	addiu	a3,zero,-128
	    wd2 = 128;
    20e8:	24070080 	addiu	a3,zero,128
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    20ec:	8cc20014 	lw	v0,20(a2)
    20f0:	00000000 	sll	zero,zero,0x0
    20f4:	00021a00 	sll	v1,v0,0x8
    20f8:	00621023 	subu	v0,v1,v0
    20fc:	00021203 	sra	v0,v0,0x8
	  bli[i] = wd2 + wd3;
    2100:	00e21021 	addu	v0,a3,v0
    2104:	acc20014 	sw	v0,20(a2)
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
    2108:	8ca70010 	lw	a3,16(a1)
  dlti[4] = dlti[3];
    210c:	8ca6000c 	lw	a2,12(a1)
  dlti[3] = dlti[2];
  dlti[1] = dlti[0];
    2110:	8ca20000 	lw	v0,0(a1)
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
  dlti[4] = dlti[3];
  dlti[3] = dlti[2];
    2114:	8ca30008 	lw	v1,8(a1)
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
	  bli[i] = wd2 + wd3;
	}
    }
/* implement delay line for dlt */
  dlti[5] = dlti[4];
    2118:	aca70014 	sw	a3,20(a1)
  dlti[4] = dlti[3];
    211c:	aca60010 	sw	a2,16(a1)
  dlti[3] = dlti[2];
    2120:	aca3000c 	sw	v1,12(a1)
  dlti[1] = dlti[0];
    2124:	aca20004 	sw	v0,4(a1)
  dlti[0] = dlt;
}
    2128:	03e00008 	jr	ra
    212c:	aca40000 	sw	a0,0(a1)
	{
	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    2130:	8cc20000 	lw	v0,0(a2)
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
	  else
	    wd2 = -128;
    2134:	2407ff80 	addiu	a3,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    2138:	00021a00 	sll	v1,v0,0x8
    213c:	00621023 	subu	v0,v1,v0
    2140:	00021203 	sra	v0,v0,0x8
	  bli[i] = wd2 + wd3;
    2144:	00e21021 	addu	v0,a3,v0
    2148:	acc20000 	sw	v0,0(a2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    214c:	8ca20004 	lw	v0,4(a1)
    2150:	00000000 	sll	zero,zero,0x0
    2154:	00820018 	mult	a0,v0
    2158:	00001012 	mflo	v0
    215c:	0441ffae 	bgez	v0,2018 <upzero+0xf4>
    2160:	00000000 	sll	zero,zero,0x0
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    2164:	8cc20004 	lw	v0,4(a2)
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
	  else
	    wd2 = -128;
    2168:	2407ff80 	addiu	a3,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    216c:	00021a00 	sll	v1,v0,0x8
    2170:	00621023 	subu	v0,v1,v0
    2174:	00021203 	sra	v0,v0,0x8
	  bli[i] = wd2 + wd3;
    2178:	00e21021 	addu	v0,a3,v0
    217c:	acc20004 	sw	v0,4(a2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    2180:	8ca20008 	lw	v0,8(a1)
    2184:	00000000 	sll	zero,zero,0x0
    2188:	00820018 	mult	a0,v0
    218c:	00001012 	mflo	v0
    2190:	0441ffae 	bgez	v0,204c <upzero+0x128>
    2194:	00000000 	sll	zero,zero,0x0
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    2198:	8cc20008 	lw	v0,8(a2)
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
	  else
	    wd2 = -128;
    219c:	2407ff80 	addiu	a3,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    21a0:	00021a00 	sll	v1,v0,0x8
    21a4:	00621023 	subu	v0,v1,v0
    21a8:	00021203 	sra	v0,v0,0x8
	  bli[i] = wd2 + wd3;
    21ac:	00e21021 	addu	v0,a3,v0
    21b0:	acc20008 	sw	v0,8(a2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    21b4:	8ca2000c 	lw	v0,12(a1)
    21b8:	00000000 	sll	zero,zero,0x0
    21bc:	00820018 	mult	a0,v0
    21c0:	00001012 	mflo	v0
    21c4:	0441ffae 	bgez	v0,2080 <upzero+0x15c>
    21c8:	00000000 	sll	zero,zero,0x0
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    21cc:	8cc2000c 	lw	v0,12(a2)
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
	  else
	    wd2 = -128;
    21d0:	2407ff80 	addiu	a3,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    21d4:	00021a00 	sll	v1,v0,0x8
    21d8:	00621023 	subu	v0,v1,v0
    21dc:	00021203 	sra	v0,v0,0x8
	  bli[i] = wd2 + wd3;
    21e0:	00e21021 	addu	v0,a3,v0
    21e4:	acc2000c 	sw	v0,12(a2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    21e8:	8ca20010 	lw	v0,16(a1)
    21ec:	00000000 	sll	zero,zero,0x0
    21f0:	00820018 	mult	a0,v0
    21f4:	00001012 	mflo	v0
    21f8:	0441ffae 	bgez	v0,20b4 <upzero+0x190>
    21fc:	00000000 	sll	zero,zero,0x0
	    wd2 = 128;
	  else
	    wd2 = -128;
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    2200:	8cc20010 	lw	v0,16(a2)
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
	    wd2 = 128;
	  else
	    wd2 = -128;
    2204:	2407ff80 	addiu	a3,zero,-128
	  wd3 = (int) ((255L * bli[i]) >> 8L);	/* leak factor of 255/256 */
    2208:	00021a00 	sll	v1,v0,0x8
    220c:	00621023 	subu	v0,v1,v0
    2210:	00021203 	sra	v0,v0,0x8
	  bli[i] = wd2 + wd3;
    2214:	00e21021 	addu	v0,a3,v0
    2218:	acc20010 	sw	v0,16(a2)
    }
  else
    {
      for (i = 0; i < 6; i++)
	{
	  if ((long) dlt * dlti[i] >= 0)
    221c:	8ca20014 	lw	v0,20(a1)
    2220:	00000000 	sll	zero,zero,0x0
    2224:	00820018 	mult	a0,v0
    2228:	00001012 	mflo	v0
    222c:	0441ffae 	bgez	v0,20e8 <upzero+0x1c4>
    2230:	00000000 	sll	zero,zero,0x0
    2234:	0800083b 	j	20ec <upzero+0x1c8>
    2238:	00000000 	sll	zero,zero,0x0

0000223c <uppol2>:
uppol2 (int al1, int al2, int plt, int plt1, int plt2)
{
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
    223c:	00e60018 	mult	a3,a2
    2240:	00003812 	mflo	a3
    2244:	04e00002 	bltz	a3,2250 <uppol2+0x14>
    2248:	00042080 	sll	a0,a0,0x2
    wd2 = -wd2;			/* check same sign */
    224c:	00042023 	negu	a0,a0
  wd2 = wd2 >> 7;		/* gain of 1/128 */
  if ((long) plt * plt2 >= 0L)
    2250:	8fa20010 	lw	v0,16(sp)
    2254:	00000000 	sll	zero,zero,0x0
    2258:	00460018 	mult	v0,a2
    225c:	00003012 	mflo	a2
    2260:	04c0000f 	bltz	a2,22a0 <uppol2+0x64>
    2264:	000411c3 	sra	v0,a0,0x7
    {
      wd4 = wd2 + 128;		/* same sign case */
    2268:	24420080 	addiu	v0,v0,128
    }
  else
    {
      wd4 = wd2 - 128;
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */
    226c:	000519c0 	sll	v1,a1,0x7
    2270:	00652823 	subu	a1,v1,a1
    2274:	000529c3 	sra	a1,a1,0x7
    2278:	00451021 	addu	v0,v0,a1

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    227c:	28433001 	slti	v1,v0,12289
    2280:	10600005 	beqz	v1,2298 <uppol2+0x5c>
    2284:	2843d000 	slti	v1,v0,-12288
    apl2 = 12288;
  if (apl2 < -12288)
    2288:	14600007 	bnez	v1,22a8 <uppol2+0x6c>
    228c:	00000000 	sll	zero,zero,0x0
    apl2 = -12288;
  return (apl2);
}
    2290:	03e00008 	jr	ra
    2294:	00000000 	sll	zero,zero,0x0
    }
  apl2 = wd4 + (127L * (long) al2 >> 7L);	/* leak factor of 127/128 */

/* apl2 is limited to +-.75 */
  if (apl2 > 12288)
    apl2 = 12288;
    2298:	03e00008 	jr	ra
    229c:	24023000 	addiu	v0,zero,12288
    {
      wd4 = wd2 + 128;		/* same sign case */
    }
  else
    {
      wd4 = wd2 - 128;
    22a0:	0800089b 	j	226c <uppol2+0x30>
    22a4:	2442ff80 	addiu	v0,v0,-128
  if (apl2 > 12288)
    apl2 = 12288;
  if (apl2 < -12288)
    apl2 = -12288;
  return (apl2);
}
    22a8:	03e00008 	jr	ra
    22ac:	2402d000 	addiu	v0,zero,-12288

000022b0 <uppol1>:
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
  if ((long) plt * plt1 >= 0L)
    22b0:	00e60018 	mult	a3,a2
int
uppol1 (int al1, int apl2, int plt, int plt1)
{
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;	/* leak factor of 255/256 */
    22b4:	00041200 	sll	v0,a0,0x8
    22b8:	00441023 	subu	v0,v0,a0
  if ((long) plt * plt1 >= 0L)
    22bc:	00003012 	mflo	a2
    22c0:	04c0000f 	bltz	a2,2300 <uppol1+0x50>
    22c4:	00021203 	sra	v0,v0,0x8
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    22c8:	244200c0 	addiu	v0,v0,192
  else
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
    22cc:	24033c00 	addiu	v1,zero,15360
    22d0:	00652823 	subu	a1,v1,a1
    22d4:	00a2182a 	slt	v1,a1,v0
    22d8:	10600002 	beqz	v1,22e4 <uppol1+0x34>
    22dc:	00000000 	sll	zero,zero,0x0
    22e0:	00a01021 	addu	v0,a1,zero
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
    22e4:	00052823 	negu	a1,a1
  else
    {
      apl1 = (int) wd2 - 192;
    }
/* note: wd3= .9375-.75 is always positive */
  wd3 = 15360 - apl2;		/* limit value */
    22e8:	0045182a 	slt	v1,v0,a1
    22ec:	10600002 	beqz	v1,22f8 <uppol1+0x48>
    22f0:	00000000 	sll	zero,zero,0x0
    22f4:	00a01021 	addu	v0,a1,zero
  if (apl1 > wd3)
    apl1 = wd3;
  if (apl1 < -wd3)
    apl1 = -wd3;
  return (apl1);
}
    22f8:	03e00008 	jr	ra
    22fc:	00000000 	sll	zero,zero,0x0
    {
      apl1 = (int) wd2 + 192;	/* same sign case */
    }
  else
    {
      apl1 = (int) wd2 - 192;
    2300:	080008b3 	j	22cc <uppol1+0x1c>
    2304:	2442ff40 	addiu	v0,v0,-192

00002308 <logsch>:
int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
    2308:	3c030000 	lui	v1,0x0
    230c:	24630000 	addiu	v1,v1,0
    2310:	00042080 	sll	a0,a0,0x2

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
    2314:	000511c0 	sll	v0,a1,0x7
  nbh = wd + wh_code_table[ih];
    2318:	00832021 	addu	a0,a0,v1

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
    231c:	00451023 	subu	v0,v0,a1
  nbh = wd + wh_code_table[ih];
    2320:	8c830000 	lw	v1,0(a0)

int
logsch (int ih, int nbh)
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
    2324:	000211c3 	sra	v0,v0,0x7
  nbh = wd + wh_code_table[ih];
    2328:	00431021 	addu	v0,v0,v1
  if (nbh < 0)
    232c:	04400005 	bltz	v0,2344 <logsch+0x3c>
    2330:	28435801 	slti	v1,v0,22529
    nbh = 0;
  if (nbh > 22528)
    2334:	14600005 	bnez	v1,234c <logsch+0x44>
    2338:	00000000 	sll	zero,zero,0x0
    nbh = 22528;
  return (nbh);
}
    233c:	03e00008 	jr	ra
    2340:	24025800 	addiu	v0,zero,22528
{
  int wd;
  wd = ((long) nbh * 127L) >> 7L;	/* leak factor 127/128 */
  nbh = wd + wh_code_table[ih];
  if (nbh < 0)
    nbh = 0;
    2344:	03e00008 	jr	ra
    2348:	00001021 	addu	v0,zero,zero
    234c:	03e00008 	jr	ra
    2350:	00000000 	sll	zero,zero,0x0

00002354 <adpcm_main>:
  58, 60, 54, 55, 57
};

void
adpcm_main ()
{
    2354:	27bdffd8 	addiu	sp,sp,-40
    2358:	afb2001c 	sw	s2,28(sp)
    235c:	afb10018 	sw	s1,24(sp)
    2360:	3c120000 	lui	s2,0x0
  int i, j;

/* reset, initialize required memory */
  reset ();
    2364:	3c110000 	lui	s1,0x0
  58, 60, 54, 55, 57
};

void
adpcm_main ()
{
    2368:	afb30020 	sw	s3,32(sp)
    236c:	afb00014 	sw	s0,20(sp)
    2370:	afbf0024 	sw	ra,36(sp)
  int i, j;

/* reset, initialize required memory */
  reset ();
    2374:	0c000000 	jal	0 <abs>
    2378:	26310000 	addiu	s1,s1,0

  j = 10;

  for (i = 0; i < IN_END; i += 2)
    237c:	00008021 	addu	s0,zero,zero
    2380:	26520000 	addiu	s2,s2,0
    2384:	24130064 	addiu	s3,zero,100
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    2388:	8e240000 	lw	a0,0(s1)
    238c:	8e250004 	lw	a1,4(s1)
    2390:	0c000000 	jal	0 <abs>
    2394:	26310008 	addiu	s1,s1,8
    2398:	00101843 	sra	v1,s0,0x1
    239c:	00031880 	sll	v1,v1,0x2
    23a0:	02431821 	addu	v1,s2,v1
/* reset, initialize required memory */
  reset ();

  j = 10;

  for (i = 0; i < IN_END; i += 2)
    23a4:	26100002 	addiu	s0,s0,2
    23a8:	1613fff7 	bne	s0,s3,2388 <adpcm_main+0x34>
    23ac:	ac620000 	sw	v0,0(v1)
    23b0:	3c110000 	lui	s1,0x0
    23b4:	26310000 	addiu	s1,s1,0
    23b8:	00008021 	addu	s0,zero,zero
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
    23bc:	24130064 	addiu	s3,zero,100
    {
      decode (compressed[i / 2]);
    23c0:	00101043 	sra	v0,s0,0x1
    23c4:	00021080 	sll	v0,v0,0x2
    23c8:	02421021 	addu	v0,s2,v0
    23cc:	8c440000 	lw	a0,0(v0)
    23d0:	0c000000 	jal	0 <abs>
    23d4:	26100002 	addiu	s0,s0,2
      result[i] = xout1;
    23d8:	8f820000 	lw	v0,0(gp)
    23dc:	00000000 	sll	zero,zero,0x0
    23e0:	ae220000 	sw	v0,0(s1)
      result[i + 1] = xout2;
    23e4:	8f820000 	lw	v0,0(gp)
    23e8:	00000000 	sll	zero,zero,0x0
    23ec:	ae220004 	sw	v0,4(s1)

  for (i = 0; i < IN_END; i += 2)
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
    23f0:	1613fff3 	bne	s0,s3,23c0 <adpcm_main+0x6c>
    23f4:	26310008 	addiu	s1,s1,8
    {
      decode (compressed[i / 2]);
      result[i] = xout1;
      result[i + 1] = xout2;
    }
}
    23f8:	8fbf0024 	lw	ra,36(sp)
    23fc:	8fb30020 	lw	s3,32(sp)
    2400:	8fb2001c 	lw	s2,28(sp)
    2404:	8fb10018 	lw	s1,24(sp)
    2408:	8fb00014 	lw	s0,20(sp)
    240c:	03e00008 	jr	ra
    2410:	27bd0028 	addiu	sp,sp,40

00002414 <main>:

int
main ()
{
    2414:	27bdffd8 	addiu	sp,sp,-40
    2418:	afb20018 	sw	s2,24(sp)
    241c:	afb10014 	sw	s1,20(sp)
    2420:	3c120000 	lui	s2,0x0
adpcm_main ()
{
  int i, j;

/* reset, initialize required memory */
  reset ();
    2424:	3c110000 	lui	s1,0x0
    }
}

int
main ()
{
    2428:	afb3001c 	sw	s3,28(sp)
    242c:	afb00010 	sw	s0,16(sp)
    2430:	afbf0024 	sw	ra,36(sp)
    2434:	afb40020 	sw	s4,32(sp)
adpcm_main ()
{
  int i, j;

/* reset, initialize required memory */
  reset ();
    2438:	0c000000 	jal	0 <abs>
    243c:	26310000 	addiu	s1,s1,0

  j = 10;

  for (i = 0; i < IN_END; i += 2)
    2440:	00008021 	addu	s0,zero,zero
    2444:	26520000 	addiu	s2,s2,0
    2448:	24130064 	addiu	s3,zero,100
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    244c:	8e240000 	lw	a0,0(s1)
    2450:	8e250004 	lw	a1,4(s1)
    2454:	0c000000 	jal	0 <abs>
    2458:	26310008 	addiu	s1,s1,8
    245c:	00101843 	sra	v1,s0,0x1
    2460:	00031880 	sll	v1,v1,0x2
    2464:	02431821 	addu	v1,s2,v1
/* reset, initialize required memory */
  reset ();

  j = 10;

  for (i = 0; i < IN_END; i += 2)
    2468:	26100002 	addiu	s0,s0,2
    246c:	1613fff7 	bne	s0,s3,244c <main+0x38>
    2470:	ac620000 	sw	v0,0(v1)
    2474:	3c130000 	lui	s3,0x0
    2478:	26730000 	addiu	s3,s3,0
    247c:	02608821 	addu	s1,s3,zero
    2480:	00008021 	addu	s0,zero,zero
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
    2484:	24140064 	addiu	s4,zero,100
    {
      decode (compressed[i / 2]);
    2488:	00101043 	sra	v0,s0,0x1
    248c:	00021080 	sll	v0,v0,0x2
    2490:	02421021 	addu	v0,s2,v0
    2494:	8c440000 	lw	a0,0(v0)
    2498:	0c000000 	jal	0 <abs>
    249c:	26100002 	addiu	s0,s0,2
      result[i] = xout1;
    24a0:	8f820000 	lw	v0,0(gp)
    24a4:	00000000 	sll	zero,zero,0x0
    24a8:	ae220000 	sw	v0,0(s1)
      result[i + 1] = xout2;
    24ac:	8f820000 	lw	v0,0(gp)
    24b0:	00000000 	sll	zero,zero,0x0
    24b4:	ae220004 	sw	v0,4(s1)

  for (i = 0; i < IN_END; i += 2)
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
    24b8:	1614fff3 	bne	s0,s4,2488 <main+0x74>
    24bc:	26310008 	addiu	s1,s1,8
    24c0:	3c080000 	lui	t0,0x0
    24c4:	00001021 	addu	v0,zero,zero
    24c8:	00002821 	addu	a1,zero,zero
    24cc:	25080000 	addiu	t0,t0,0
  int i;
  int main_result;

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
    24d0:	08000939 	j	24e4 <main+0xd0>
    24d4:	240700c8 	addiu	a3,zero,200

  for (i = 0; i < IN_END; i += 2)
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
    24d8:	24420004 	addiu	v0,v0,4
  int i;
  int main_result;

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
    24dc:	1047000c 	beq	v0,a3,2510 <main+0xfc>
    24e0:	00602821 	addu	a1,v1,zero
      result[i + 1] = xout2;
    }
}

int
main ()
    24e4:	02422021 	addu	a0,s2,v0
    24e8:	01021821 	addu	v1,t0,v0

  for (i = 0; i < IN_END; i += 2)
    {
      compressed[i / 2] = encode (test_data[i], test_data[i + 1]);
    }
  for (i = 0; i < IN_END; i += 2)
    24ec:	8c860000 	lw	a2,0(a0)
    24f0:	8c640000 	lw	a0,0(v1)
    24f4:	00000000 	sll	zero,zero,0x0
    24f8:	14c4fff7 	bne	a2,a0,24d8 <main+0xc4>
    24fc:	24030001 	addiu	v1,zero,1
    2500:	00a01821 	addu	v1,a1,zero
    2504:	24420004 	addiu	v0,v0,4
  int i;
  int main_result;

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
    2508:	1447fff6 	bne	v0,a3,24e4 <main+0xd0>
    250c:	00602821 	addu	a1,v1,zero
    2510:	3c070000 	lui	a3,0x0
    2514:	00001021 	addu	v0,zero,zero
    2518:	24e70000 	addiu	a3,a3,0
	  if (compressed[i] != test_compressed[i])
	    {
	      main_result = 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
    251c:	0800094c 	j	2530 <main+0x11c>
    2520:	24060190 	addiu	a2,zero,400
  int i;
  int main_result;

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
    2524:	24420004 	addiu	v0,v0,4
	  if (compressed[i] != test_compressed[i])
	    {
	      main_result = 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
    2528:	1046000c 	beq	v0,a2,255c <main+0x148>
    252c:	02002821 	addu	a1,s0,zero
      result[i + 1] = xout2;
    }
}

int
main ()
    2530:	02622021 	addu	a0,s3,v0
    2534:	00e21821 	addu	v1,a3,v0
  int i;
  int main_result;

      main_result = 0;
      adpcm_main ();
      for (i = 0; i < IN_END / 2; i++)
    2538:	8c840000 	lw	a0,0(a0)
    253c:	8c630000 	lw	v1,0(v1)
    2540:	00000000 	sll	zero,zero,0x0
    2544:	1483fff7 	bne	a0,v1,2524 <main+0x110>
    2548:	24100001 	addiu	s0,zero,1
    254c:	00a08021 	addu	s0,a1,zero
    2550:	24420004 	addiu	v0,v0,4
	  if (compressed[i] != test_compressed[i])
	    {
	      main_result = 1;
	    }
	}
      for (i = 0; i < IN_END; i++)
    2554:	1446fff6 	bne	v0,a2,2530 <main+0x11c>
    2558:	02002821 	addu	a1,s0,zero
	  if (result[i] != test_result[i])
	    {
	      main_result = 1;
	    }
	}
      printf ("%d\n", main_result);
    255c:	3c040000 	lui	a0,0x0
    2560:	0c000000 	jal	0 <abs>
    2564:	24840000 	addiu	a0,a0,0
      return main_result;
    }
    2568:	8fbf0024 	lw	ra,36(sp)
    256c:	02001021 	addu	v0,s0,zero
    2570:	8fb40020 	lw	s4,32(sp)
    2574:	8fb3001c 	lw	s3,28(sp)
    2578:	8fb20018 	lw	s2,24(sp)
    257c:	8fb10014 	lw	s1,20(sp)
    2580:	8fb00010 	lw	s0,16(sp)
    2584:	03e00008 	jr	ra
    2588:	27bd0028 	addiu	sp,sp,40

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
