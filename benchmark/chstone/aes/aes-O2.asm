
aes.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <KeySchedule>:
KeySchedule (int type, int key[32])
{
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
       0:	3c020002 	lui	v0,0x2
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
{
       4:	27bdffe0 	addiu	sp,sp,-32
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
       8:	3443eec0 	ori	v1,v0,0xeec0
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
{
       c:	afb3001c 	sw	s3,28(sp)
      10:	afb20018 	sw	s2,24(sp)
      14:	afb10014 	sw	s1,20(sp)
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
      18:	10830121 	beq	a0,v1,4a0 <KeySchedule+0x4a0>
      1c:	afb00010 	sw	s0,16(sp)
      20:	24660001 	addiu	a2,v1,1
      24:	0086302a 	slt	a2,a0,a2
      28:	14c00015 	bnez	a2,80 <KeySchedule+0x80>
      2c:	2446f4c0 	addiu	a2,v0,-2880
      30:	3c020003 	lui	v0,0x3
      34:	3442e880 	ori	v0,v0,0xe880
      38:	1082011d 	beq	a0,v0,4b0 <KeySchedule+0x4b0>
      3c:	240b000e 	addiu	t3,zero,14
      40:	24460001 	addiu	a2,v0,1
      44:	0086302a 	slt	a2,a0,a2
      48:	14c0001c 	bnez	a2,bc <KeySchedule+0xbc>
      4c:	24630040 	addiu	v1,v1,64
      50:	24430040 	addiu	v1,v0,64
      54:	1083010c 	beq	a0,v1,488 <KeySchedule+0x488>
      58:	24420080 	addiu	v0,v0,128
      5c:	108200c7 	beq	a0,v0,37c <KeySchedule+0x37c>
      60:	240c0008 	addiu	t4,zero,8
      nk = 8;
      nb = 8;
      round = 14;
      break;
    default:
      return -1;
      64:	2402ffff 	addiu	v0,zero,-1
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
    }
  return 0;
}
      68:	8fb3001c 	lw	s3,28(sp)
      6c:	8fb20018 	lw	s2,24(sp)
      70:	8fb10014 	lw	s1,20(sp)
      74:	8fb00010 	lw	s0,16(sp)
      78:	03e00008 	jr	ra
      7c:	27bd0020 	addiu	sp,sp,32
KeySchedule (int type, int key[32])
{
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
      80:	10860104 	beq	a0,a2,494 <KeySchedule+0x494>
      84:	240b000c 	addiu	t3,zero,12
      88:	2446f4c1 	addiu	a2,v0,-2879
      8c:	0086302a 	slt	a2,a0,a2
      90:	14c00097 	bnez	a2,2f0 <KeySchedule+0x2f0>
      94:	00000000 	sll	zero,zero,0x0
      98:	2442f500 	addiu	v0,v0,-2816
      9c:	10820107 	beq	a0,v0,4bc <KeySchedule+0x4bc>
      a0:	2463ffc0 	addiu	v1,v1,-64
      a4:	1483fff0 	bne	a0,v1,68 <KeySchedule+0x68>
      a8:	2402ffff 	addiu	v0,zero,-1
      round = 14;
      break;
    case 192128:
      nk = 6;
      nb = 4;
      round = 12;
      ac:	240b000c 	addiu	t3,zero,12
      nb = 8;
      round = 14;
      break;
    case 192128:
      nk = 6;
      nb = 4;
      b0:	240c0004 	addiu	t4,zero,4
      round = 12;
      break;
      b4:	08000034 	j	d0 <KeySchedule+0xd0>
      b8:	24060006 	addiu	a2,zero,6
KeySchedule (int type, int key[32])
{
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
      bc:	1483ffea 	bne	a0,v1,68 <KeySchedule+0x68>
      c0:	2402ffff 	addiu	v0,zero,-1
      round = 12;
      break;
    case 192256:
      nk = 6;
      nb = 8;
      round = 14;
      c4:	240b000e 	addiu	t3,zero,14
      nb = 6;
      round = 12;
      break;
    case 192256:
      nk = 6;
      nb = 8;
      c8:	240c0008 	addiu	t4,zero,8
      nk = 6;
      nb = 6;
      round = 12;
      break;
    case 192256:
      nk = 6;
      cc:	24060006 	addiu	a2,zero,6
      d0:	3c070000 	lui	a3,0x0
      round = 14;
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
      d4:	00005021 	addu	t2,zero,zero
      d8:	24e70000 	addiu	a3,a3,0
    for (i = 0; i < 4; ++i)
      dc:	24090004 	addiu	t1,zero,4
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
      e0:	000a2080 	sll	a0,t2,0x2
      e4:	00e42021 	addu	a0,a3,a0
      e8:	00a01821 	addu	v1,a1,zero
      ec:	00001021 	addu	v0,zero,zero
      return -1;
    }
  for (j = 0; j < nk; ++j)
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];
      f0:	8c680000 	lw	t0,0(v1)
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
    for (i = 0; i < 4; ++i)
      f4:	24420001 	addiu	v0,v0,1
/* 0 word */
      word[i][j] = key[i + j * 4];
      f8:	ac880000 	sw	t0,0(a0)
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
    for (i = 0; i < 4; ++i)
      fc:	24630004 	addiu	v1,v1,4
     100:	1449fffb 	bne	v0,t1,f0 <KeySchedule+0xf0>
     104:	248401e0 	addiu	a0,a0,480
      round = 14;
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
     108:	254a0001 	addiu	t2,t2,1
     10c:	0146102a 	slt	v0,t2,a2
     110:	1440fff3 	bnez	v0,e0 <KeySchedule+0xe0>
     114:	24a50010 	addiu	a1,a1,16
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];

/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
     118:	256b0001 	addiu	t3,t3,1
     11c:	016c0018 	mult	t3,t4
     120:	00005812 	mflo	t3
     124:	00cb102a 	slt	v0,a2,t3
     128:	1040006a 	beqz	v0,2d4 <KeySchedule+0x2d4>
     12c:	00c01021 	addu	v0,a2,zero
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
     130:	24c30077 	addiu	v1,a2,119
     134:	00031880 	sll	v1,v1,0x2
     138:	27a40010 	addiu	a0,sp,16
    {

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     13c:	3c190000 	lui	t9,0x0
}

int
SubByte (int in)
{
  return Sbox[(in / 16)][(in % 16)];
     140:	3c098000 	lui	t1,0x8000
     144:	3c080000 	lui	t0,0x0
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
     148:	00e31821 	addu	v1,a3,v1
     14c:	00002821 	addu	a1,zero,zero
     150:	28cd0007 	slti	t5,a2,7
     154:	27ac0004 	addiu	t4,sp,4
    {

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     158:	27390000 	addiu	t9,t9,0
     15c:	2529000f 	addiu	t1,t1,15
     160:	25080000 	addiu	t0,t0,0
     164:	240ffff0 	addiu	t7,zero,-16
	  temp[0] = word[0][j - 1];
	  temp[1] = word[1][j - 1];
	  temp[2] = word[2][j - 1];
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
     168:	24180004 	addiu	t8,zero,4
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
     16c:	00807021 	addu	t6,a0,zero
/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
    {

/* RotByte */
      if ((j % nk) == 0)
     170:	14c00002 	bnez	a2,17c <KeySchedule+0x17c>
     174:	0046001a 	div	zero,v0,a2
     178:	0007000d 	break	0x7
     17c:	00005010 	mfhi	t2
     180:	15400080 	bnez	t2,384 <KeySchedule+0x384>
     184:	00000000 	sll	zero,zero,0x0
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     188:	00008812 	mflo	s1
     18c:	8c700000 	lw	s0,0(v1)
     190:	2632ffff 	addiu	s2,s1,-1
     194:	00129080 	sll	s2,s2,0x2
     198:	02599021 	addu	s2,s2,t9
     19c:	060000b8 	bltz	s0,480 <KeySchedule+0x480>
     1a0:	02008821 	addu	s1,s0,zero
     1a4:	02098024 	and	s0,s0,t1
     1a8:	0600007f 	bltz	s0,3a8 <KeySchedule+0x3a8>
     1ac:	00118903 	sra	s1,s1,0x4
     1b0:	00118900 	sll	s1,s1,0x4
     1b4:	02308021 	addu	s0,s1,s0
     1b8:	00108080 	sll	s0,s0,0x2
     1bc:	01108021 	addu	s0,t0,s0
     1c0:	8e110000 	lw	s1,0(s0)
     1c4:	8e520000 	lw	s2,0(s2)
	  temp[1] = SubByte (word[2][j - 1]);
     1c8:	8c7001e0 	lw	s0,480(v1)
    {

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     1cc:	02519026 	xor	s2,s2,s1
     1d0:	afb20000 	sw	s2,0(sp)
     1d4:	06000082 	bltz	s0,3e0 <KeySchedule+0x3e0>
     1d8:	02008821 	addu	s1,s0,zero
     1dc:	02098024 	and	s0,s0,t1
     1e0:	06000083 	bltz	s0,3f0 <KeySchedule+0x3f0>
     1e4:	00118903 	sra	s1,s1,0x4
     1e8:	00118900 	sll	s1,s1,0x4
     1ec:	02308021 	addu	s0,s1,s0
     1f0:	00108080 	sll	s0,s0,0x2
     1f4:	01108021 	addu	s0,t0,s0
	  temp[1] = SubByte (word[2][j - 1]);
     1f8:	8e110000 	lw	s1,0(s0)
	  temp[2] = SubByte (word[3][j - 1]);
     1fc:	8c7003c0 	lw	s0,960(v1)

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
	  temp[1] = SubByte (word[2][j - 1]);
     200:	afb10004 	sw	s1,4(sp)
     204:	06000086 	bltz	s0,420 <KeySchedule+0x420>
     208:	02008821 	addu	s1,s0,zero
     20c:	02098024 	and	s0,s0,t1
     210:	06000087 	bltz	s0,430 <KeySchedule+0x430>
     214:	00118903 	sra	s1,s1,0x4
     218:	00118900 	sll	s1,s1,0x4
     21c:	02308021 	addu	s0,s1,s0
     220:	00108080 	sll	s0,s0,0x2
     224:	01108021 	addu	s0,t0,s0
	  temp[2] = SubByte (word[3][j - 1]);
     228:	8e110000 	lw	s1,0(s0)
	  temp[3] = SubByte (word[0][j - 1]);
     22c:	8c70fe20 	lw	s0,-480(v1)
/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
	  temp[1] = SubByte (word[2][j - 1]);
	  temp[2] = SubByte (word[3][j - 1]);
     230:	afb10008 	sw	s1,8(sp)
     234:	0600008a 	bltz	s0,460 <KeySchedule+0x460>
     238:	02008821 	addu	s1,s0,zero
     23c:	02098024 	and	s0,s0,t1
     240:	0600008b 	bltz	s0,470 <KeySchedule+0x470>
     244:	00118903 	sra	s1,s1,0x4
     248:	00118900 	sll	s1,s1,0x4
     24c:	02308021 	addu	s0,s1,s0
     250:	00108080 	sll	s0,s0,0x2
     254:	01108021 	addu	s0,t0,s0
	  temp[3] = SubByte (word[0][j - 1]);
     258:	8e100000 	lw	s0,0(s0)
     25c:	00000000 	sll	zero,zero,0x0
     260:	afb0000c 	sw	s0,12(sp)
	  temp[0] = word[0][j - 1];
	  temp[1] = word[1][j - 1];
	  temp[2] = word[2][j - 1];
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
     264:	15a00005 	bnez	t5,27c <KeySchedule+0x27c>
     268:	00058880 	sll	s1,a1,0x2
     26c:	11580027 	beq	t2,t8,30c <KeySchedule+0x30c>
     270:	03a05021 	addu	t2,sp,zero
	for (i = 0; i < 4; ++i)
     274:	8fb20000 	lw	s2,0(sp)
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
     278:	00058880 	sll	s1,a1,0x2
     27c:	00f18821 	addu	s1,a3,s1
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
     280:	8e330000 	lw	s3,0(s1)
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
     284:	00028080 	sll	s0,v0,0x2
     288:	00f08021 	addu	s0,a3,s0
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
     28c:	02539026 	xor	s2,s2,s3
	  temp[1] = word[1][j - 1];
	  temp[2] = word[2][j - 1];
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
     290:	01805021 	addu	t2,t4,zero
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
     294:	ae120000 	sw	s2,0(s0)
     298:	263101e0 	addiu	s1,s1,480
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
     29c:	108a0009 	beq	a0,t2,2c4 <KeySchedule+0x2c4>
     2a0:	261001e0 	addiu	s0,s0,480
	word[i][j] = word[i][j - nk] ^ temp[i];
     2a4:	8e330000 	lw	s3,0(s1)
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
     2a8:	8d520000 	lw	s2,0(t2)
     2ac:	254a0004 	addiu	t2,t2,4
	word[i][j] = word[i][j - nk] ^ temp[i];
     2b0:	02539026 	xor	s2,s2,s3
     2b4:	ae120000 	sw	s2,0(s0)
     2b8:	263101e0 	addiu	s1,s1,480
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
     2bc:	148afff9 	bne	a0,t2,2a4 <KeySchedule+0x2a4>
     2c0:	261001e0 	addiu	s0,s0,480
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];

/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
     2c4:	24420001 	addiu	v0,v0,1
     2c8:	24a50001 	addiu	a1,a1,1
     2cc:	144bffa8 	bne	v0,t3,170 <KeySchedule+0x170>
     2d0:	24630004 	addiu	v1,v1,4
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
    }
  return 0;
     2d4:	00001021 	addu	v0,zero,zero
}
     2d8:	8fb3001c 	lw	s3,28(sp)
     2dc:	8fb20018 	lw	s2,24(sp)
     2e0:	8fb10014 	lw	s1,20(sp)
     2e4:	8fb00010 	lw	s0,16(sp)
     2e8:	03e00008 	jr	ra
     2ec:	27bd0020 	addiu	sp,sp,32
KeySchedule (int type, int key[32])
{
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
     2f0:	2442f480 	addiu	v0,v0,-2944
     2f4:	1482ff5c 	bne	a0,v0,68 <KeySchedule+0x68>
     2f8:	2402ffff 	addiu	v0,zero,-1
    {
    case 128128:
      nk = 4;
      nb = 4;
      round = 10;
     2fc:	240b000a 	addiu	t3,zero,10

  switch (type)
    {
    case 128128:
      nk = 4;
      nb = 4;
     300:	240c0004 	addiu	t4,zero,4
  int i, j, temp[4];

  switch (type)
    {
    case 128128:
      nk = 4;
     304:	08000034 	j	d0 <KeySchedule+0xd0>
     308:	24060004 	addiu	a2,zero,4
     30c:	02498024 	and	s0,s2,t1
     310:	06400012 	bltz	s2,35c <KeySchedule+0x35c>
     314:	02408821 	addu	s1,s2,zero
     318:	00118903 	sra	s1,s1,0x4
     31c:	06000013 	bltz	s0,36c <KeySchedule+0x36c>
     320:	00118900 	sll	s1,s1,0x4
     324:	02308021 	addu	s0,s1,s0
     328:	00108080 	sll	s0,s0,0x2
     32c:	01108021 	addu	s0,t0,s0
	  temp[2] = word[2][j - 1];
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
     330:	8e100000 	lw	s0,0(s0)
     334:	00000000 	sll	zero,zero,0x0
     338:	ad500000 	sw	s0,0(t2)
     33c:	254a0004 	addiu	t2,t2,4
	  temp[1] = word[1][j - 1];
	  temp[2] = word[2][j - 1];
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
     340:	114effcc 	beq	t2,t6,274 <KeySchedule+0x274>
     344:	00000000 	sll	zero,zero,0x0
     348:	8d520000 	lw	s2,0(t2)
     34c:	00000000 	sll	zero,zero,0x0
     350:	02498024 	and	s0,s2,t1
     354:	0641fff0 	bgez	s2,318 <KeySchedule+0x318>
     358:	02408821 	addu	s1,s2,zero
     35c:	2651000f 	addiu	s1,s2,15
     360:	00118903 	sra	s1,s1,0x4
     364:	0601ffef 	bgez	s0,324 <KeySchedule+0x324>
     368:	00118900 	sll	s1,s1,0x4
     36c:	2610ffff 	addiu	s0,s0,-1
     370:	020f8025 	or	s0,s0,t7
     374:	080000c9 	j	324 <KeySchedule+0x324>
     378:	26100001 	addiu	s0,s0,1
      break;
    case 256256:
      nk = 8;
      nb = 8;
      round = 14;
      break;
     37c:	08000034 	j	d0 <KeySchedule+0xd0>
     380:	24060008 	addiu	a2,zero,8
	  temp[2] = SubByte (word[3][j - 1]);
	  temp[3] = SubByte (word[0][j - 1]);
	}
      if ((j % nk) != 0)
	{
	  temp[0] = word[0][j - 1];
     384:	8c72fe20 	lw	s2,-480(v1)
	  temp[1] = word[1][j - 1];
     388:	8c730000 	lw	s3,0(v1)
	  temp[2] = word[2][j - 1];
     38c:	8c7101e0 	lw	s1,480(v1)
	  temp[3] = word[3][j - 1];
     390:	8c7003c0 	lw	s0,960(v1)
	  temp[2] = SubByte (word[3][j - 1]);
	  temp[3] = SubByte (word[0][j - 1]);
	}
      if ((j % nk) != 0)
	{
	  temp[0] = word[0][j - 1];
     394:	afb20000 	sw	s2,0(sp)
	  temp[1] = word[1][j - 1];
     398:	afb30004 	sw	s3,4(sp)
	  temp[2] = word[2][j - 1];
     39c:	afb10008 	sw	s1,8(sp)
	  temp[3] = word[3][j - 1];
     3a0:	08000099 	j	264 <KeySchedule+0x264>
     3a4:	afb0000c 	sw	s0,12(sp)
     3a8:	2610ffff 	addiu	s0,s0,-1
     3ac:	020f8025 	or	s0,s0,t7
     3b0:	00118900 	sll	s1,s1,0x4
     3b4:	26100001 	addiu	s0,s0,1
     3b8:	02308021 	addu	s0,s1,s0
     3bc:	00108080 	sll	s0,s0,0x2
     3c0:	01108021 	addu	s0,t0,s0
    {

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     3c4:	8e110000 	lw	s1,0(s0)
     3c8:	8e520000 	lw	s2,0(s2)
	  temp[1] = SubByte (word[2][j - 1]);
     3cc:	8c7001e0 	lw	s0,480(v1)
    {

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     3d0:	02519026 	xor	s2,s2,s1
     3d4:	afb20000 	sw	s2,0(sp)
     3d8:	0601ff80 	bgez	s0,1dc <KeySchedule+0x1dc>
     3dc:	02008821 	addu	s1,s0,zero
     3e0:	2611000f 	addiu	s1,s0,15
     3e4:	02098024 	and	s0,s0,t1
     3e8:	0601ff7f 	bgez	s0,1e8 <KeySchedule+0x1e8>
     3ec:	00118903 	sra	s1,s1,0x4
     3f0:	2610ffff 	addiu	s0,s0,-1
     3f4:	020f8025 	or	s0,s0,t7
     3f8:	00118900 	sll	s1,s1,0x4
     3fc:	26100001 	addiu	s0,s0,1
     400:	02308021 	addu	s0,s1,s0
     404:	00108080 	sll	s0,s0,0x2
     408:	01108021 	addu	s0,t0,s0
	  temp[1] = SubByte (word[2][j - 1]);
     40c:	8e110000 	lw	s1,0(s0)
	  temp[2] = SubByte (word[3][j - 1]);
     410:	8c7003c0 	lw	s0,960(v1)

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
	  temp[1] = SubByte (word[2][j - 1]);
     414:	afb10004 	sw	s1,4(sp)
     418:	0601ff7c 	bgez	s0,20c <KeySchedule+0x20c>
     41c:	02008821 	addu	s1,s0,zero
     420:	2611000f 	addiu	s1,s0,15
     424:	02098024 	and	s0,s0,t1
     428:	0601ff7b 	bgez	s0,218 <KeySchedule+0x218>
     42c:	00118903 	sra	s1,s1,0x4
     430:	2610ffff 	addiu	s0,s0,-1
     434:	020f8025 	or	s0,s0,t7
     438:	00118900 	sll	s1,s1,0x4
     43c:	26100001 	addiu	s0,s0,1
     440:	02308021 	addu	s0,s1,s0
     444:	00108080 	sll	s0,s0,0x2
     448:	01108021 	addu	s0,t0,s0
	  temp[2] = SubByte (word[3][j - 1]);
     44c:	8e110000 	lw	s1,0(s0)
	  temp[3] = SubByte (word[0][j - 1]);
     450:	8c70fe20 	lw	s0,-480(v1)
/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
	  temp[1] = SubByte (word[2][j - 1]);
	  temp[2] = SubByte (word[3][j - 1]);
     454:	afb10008 	sw	s1,8(sp)
     458:	0601ff78 	bgez	s0,23c <KeySchedule+0x23c>
     45c:	02008821 	addu	s1,s0,zero
     460:	2611000f 	addiu	s1,s0,15
     464:	02098024 	and	s0,s0,t1
     468:	0601ff77 	bgez	s0,248 <KeySchedule+0x248>
     46c:	00118903 	sra	s1,s1,0x4
     470:	2610ffff 	addiu	s0,s0,-1
     474:	020f8025 	or	s0,s0,t7
     478:	08000092 	j	248 <KeySchedule+0x248>
     47c:	26100001 	addiu	s0,s0,1
     480:	08000069 	j	1a4 <KeySchedule+0x1a4>
     484:	2611000f 	addiu	s1,s0,15
      nb = 4;
      round = 14;
      break;
    case 256192:
      nk = 8;
      nb = 6;
     488:	240c0006 	addiu	t4,zero,6
      round = 14;
      break;
     48c:	08000034 	j	d0 <KeySchedule+0xd0>
     490:	24060008 	addiu	a2,zero,8
      nb = 4;
      round = 10;
      break;
    case 128192:
      nk = 4;
      nb = 6;
     494:	240c0006 	addiu	t4,zero,6
      nk = 4;
      nb = 4;
      round = 10;
      break;
    case 128192:
      nk = 4;
     498:	08000034 	j	d0 <KeySchedule+0xd0>
     49c:	24060004 	addiu	a2,zero,4
      round = 12;
      break;
    case 192192:
      nk = 6;
      nb = 6;
      round = 12;
     4a0:	240b000c 	addiu	t3,zero,12
      nb = 4;
      round = 12;
      break;
    case 192192:
      nk = 6;
      nb = 6;
     4a4:	240c0006 	addiu	t4,zero,6
      round = 12;
      break;
     4a8:	08000034 	j	d0 <KeySchedule+0xd0>
     4ac:	24060006 	addiu	a2,zero,6
      nb = 8;
      round = 14;
      break;
    case 256128:
      nk = 8;
      nb = 4;
     4b0:	240c0004 	addiu	t4,zero,4
      round = 14;
      break;
     4b4:	08000034 	j	d0 <KeySchedule+0xd0>
     4b8:	24060008 	addiu	a2,zero,8
      round = 12;
      break;
    case 128256:
      nk = 4;
      nb = 8;
      round = 14;
     4bc:	240b000e 	addiu	t3,zero,14
      nb = 6;
      round = 12;
      break;
    case 128256:
      nk = 4;
      nb = 8;
     4c0:	240c0008 	addiu	t4,zero,8
      round = 14;
      break;
     4c4:	08000034 	j	d0 <KeySchedule+0xd0>
     4c8:	24060004 	addiu	a2,zero,4

000004cc <ByteSub_ShiftRow>:
};

/* ********* ByteSub & ShiftRow ********* */
void
ByteSub_ShiftRow (int statemt[32], int nb)
{
     4cc:	27bdffd0 	addiu	sp,sp,-48
  int temp;

  switch (nb)
     4d0:	24020006 	addiu	v0,zero,6
};

/* ********* ByteSub & ShiftRow ********* */
void
ByteSub_ShiftRow (int statemt[32], int nb)
{
     4d4:	afbe002c 	sw	s8,44(sp)
     4d8:	afb70028 	sw	s7,40(sp)
     4dc:	afb60024 	sw	s6,36(sp)
     4e0:	afb50020 	sw	s5,32(sp)
     4e4:	afb4001c 	sw	s4,28(sp)
     4e8:	afb30018 	sw	s3,24(sp)
     4ec:	afb20014 	sw	s2,20(sp)
     4f0:	afb10010 	sw	s1,16(sp)
  int temp;

  switch (nb)
     4f4:	10a201c9 	beq	a1,v0,c1c <ByteSub_ShiftRow+0x750>
     4f8:	afb0000c 	sw	s0,12(sp)
     4fc:	24020008 	addiu	v0,zero,8
     500:	10a200a1 	beq	a1,v0,788 <ByteSub_ShiftRow+0x2bc>
     504:	24020004 	addiu	v0,zero,4
     508:	10a2000c 	beq	a1,v0,53c <ByteSub_ShiftRow+0x70>
     50c:	00000000 	sll	zero,zero,0x0
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
      break;
    }
}
     510:	8fbe002c 	lw	s8,44(sp)
     514:	8fb70028 	lw	s7,40(sp)
     518:	8fb60024 	lw	s6,36(sp)
     51c:	8fb50020 	lw	s5,32(sp)
     520:	8fb4001c 	lw	s4,28(sp)
     524:	8fb30018 	lw	s3,24(sp)
     528:	8fb20014 	lw	s2,20(sp)
     52c:	8fb10010 	lw	s1,16(sp)
     530:	8fb0000c 	lw	s0,12(sp)
     534:	03e00008 	jr	ra
     538:	27bd0030 	addiu	sp,sp,48
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     53c:	8c8e0004 	lw	t6,4(a0)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     540:	8c8d0014 	lw	t5,20(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     544:	8c8c0024 	lw	t4,36(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     548:	8c8b0034 	lw	t3,52(a0)
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     54c:	8c8a0008 	lw	t2,8(a0)
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     550:	8c890028 	lw	t1,40(a0)
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     554:	8c880018 	lw	t0,24(a0)
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     558:	8c870038 	lw	a3,56(a0)
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     55c:	8c86003c 	lw	a2,60(a0)
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     560:	8c85002c 	lw	a1,44(a0)
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     564:	8c82001c 	lw	v0,28(a0)
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     568:	8c83000c 	lw	v1,12(a0)
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     56c:	000e7903 	sra	t7,t6,0x4
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     570:	000db903 	sra	s7,t5,0x4
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     574:	000cb103 	sra	s6,t4,0x4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     578:	000ba903 	sra	s5,t3,0x4
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     57c:	000aa103 	sra	s4,t2,0x4
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     580:	00099903 	sra	s3,t1,0x4
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     584:	00089103 	sra	s2,t0,0x4
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     588:	00078903 	sra	s1,a3,0x4
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     58c:	00068103 	sra	s0,a2,0x4
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     590:	0005c903 	sra	t9,a1,0x4
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     594:	0002c103 	sra	t8,v0,0x4
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     598:	000f7900 	sll	t7,t7,0x4
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     59c:	0019c900 	sll	t9,t9,0x4
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     5a0:	3042000f 	andi	v0,v0,0xf
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     5a4:	31ce000f 	andi	t6,t6,0xf
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     5a8:	31ad000f 	andi	t5,t5,0xf
     5ac:	0017b900 	sll	s7,s7,0x4
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     5b0:	318c000f 	andi	t4,t4,0xf
     5b4:	0016b100 	sll	s6,s6,0x4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     5b8:	316b000f 	andi	t3,t3,0xf
     5bc:	0015a900 	sll	s5,s5,0x4
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     5c0:	314a000f 	andi	t2,t2,0xf
     5c4:	0014a100 	sll	s4,s4,0x4
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     5c8:	3129000f 	andi	t1,t1,0xf
     5cc:	00139900 	sll	s3,s3,0x4
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     5d0:	3108000f 	andi	t0,t0,0xf
     5d4:	00129100 	sll	s2,s2,0x4
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     5d8:	30e7000f 	andi	a3,a3,0xf
     5dc:	00118900 	sll	s1,s1,0x4
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     5e0:	30c6000f 	andi	a2,a2,0xf
     5e4:	00108100 	sll	s0,s0,0x4
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     5e8:	30a5000f 	andi	a1,a1,0xf
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     5ec:	0018c100 	sll	t8,t8,0x4
     5f0:	0302c021 	addu	t8,t8,v0
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     5f4:	01ee7021 	addu	t6,t7,t6
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     5f8:	0003f103 	sra	s8,v1,0x4
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     5fc:	03252821 	addu	a1,t9,a1

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     600:	02ed6821 	addu	t5,s7,t5
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     604:	02cc6021 	addu	t4,s6,t4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     608:	02ab5821 	addu	t3,s5,t3
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     60c:	028a5021 	addu	t2,s4,t2
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     610:	02694821 	addu	t1,s3,t1
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     614:	02484021 	addu	t0,s2,t0
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     618:	02273821 	addu	a3,s1,a3
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     61c:	02063021 	addu	a2,s0,a2
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     620:	3c020000 	lui	v0,0x0
     624:	24420000 	addiu	v0,v0,0
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     628:	0018c880 	sll	t9,t8,0x2
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     62c:	000e7080 	sll	t6,t6,0x2
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     630:	000d6880 	sll	t5,t5,0x2
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     634:	000c6080 	sll	t4,t4,0x2
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     638:	000b5880 	sll	t3,t3,0x2
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     63c:	000a5080 	sll	t2,t2,0x2
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     640:	00094880 	sll	t1,t1,0x2
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     644:	00084080 	sll	t0,t0,0x2
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     648:	00073880 	sll	a3,a3,0x2
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     64c:	3063000f 	andi	v1,v1,0xf
     650:	001ef100 	sll	s8,s8,0x4
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     654:	00063080 	sll	a2,a2,0x2
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     658:	00052880 	sll	a1,a1,0x2

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     65c:	01a26821 	addu	t5,t5,v0
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     660:	01826021 	addu	t4,t4,v0
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     664:	01625821 	addu	t3,t3,v0
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     668:	01425021 	addu	t2,t2,v0
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     66c:	01224821 	addu	t1,t1,v0
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     670:	01024021 	addu	t0,t0,v0
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     674:	00e23821 	addu	a3,a3,v0
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     678:	00c23021 	addu	a2,a2,v0
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     67c:	00a22821 	addu	a1,a1,v0
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     680:	01c27021 	addu	t6,t6,v0
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     684:	0322c821 	addu	t9,t9,v0
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     688:	03c31821 	addu	v1,s8,v1

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     68c:	8db80000 	lw	t8,0(t5)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     690:	8d8f0000 	lw	t7,0(t4)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     694:	8d6d0000 	lw	t5,0(t3)
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     698:	8d2c0000 	lw	t4,0(t1)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     69c:	8d4b0000 	lw	t3,0(t2)
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     6a0:	8d090000 	lw	t1,0(t0)
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     6a4:	8cea0000 	lw	t2,0(a3)
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     6a8:	8dce0000 	lw	t6,0(t6)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     6ac:	8cc70000 	lw	a3,0(a2)
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     6b0:	00031880 	sll	v1,v1,0x2
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     6b4:	8ca60000 	lw	a2,0(a1)
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     6b8:	8f250000 	lw	a1,0(t9)
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     6bc:	00621821 	addu	v1,v1,v0
     6c0:	8c680000 	lw	t0,0(v1)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     6c4:	ac8c0008 	sw	t4,8(a0)
      statemt[10] = temp;
     6c8:	ac8b0028 	sw	t3,40(a0)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     6cc:	ac8a0018 	sw	t2,24(a0)
      statemt[14] = temp;
     6d0:	ac890038 	sw	t1,56(a0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     6d4:	ac87000c 	sw	a3,12(a0)

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     6d8:	ac980004 	sw	t8,4(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     6dc:	ac8f0014 	sw	t7,20(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     6e0:	ac8d0024 	sw	t5,36(a0)
      statemt[13] = temp;
     6e4:	ac8e0034 	sw	t6,52(a0)
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     6e8:	ac86003c 	sw	a2,60(a0)
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     6ec:	8c870000 	lw	a3,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     6f0:	8c860010 	lw	a2,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     6f4:	8c830030 	lw	v1,48(a0)
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     6f8:	ac85002c 	sw	a1,44(a0)
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     6fc:	8c850020 	lw	a1,32(a0)
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     700:	00076103 	sra	t4,a3,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     704:	00065903 	sra	t3,a2,0x4
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     708:	00055103 	sra	t2,a1,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     70c:	00034903 	sra	t1,v1,0x4
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     710:	30e7000f 	andi	a3,a3,0xf
     714:	000c6100 	sll	t4,t4,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     718:	30c6000f 	andi	a2,a2,0xf
     71c:	000b5900 	sll	t3,t3,0x4
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     720:	30a5000f 	andi	a1,a1,0xf
     724:	000a5100 	sll	t2,t2,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     728:	3063000f 	andi	v1,v1,0xf
     72c:	00094900 	sll	t1,t1,0x4
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     730:	01873821 	addu	a3,t4,a3
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     734:	01663021 	addu	a2,t3,a2
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     738:	01452821 	addu	a1,t2,a1
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     73c:	01231821 	addu	v1,t1,v1
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     740:	00073880 	sll	a3,a3,0x2
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     744:	00063080 	sll	a2,a2,0x2
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     748:	00052880 	sll	a1,a1,0x2
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     74c:	00031880 	sll	v1,v1,0x2
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     750:	00e23821 	addu	a3,a3,v0
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     754:	00c23021 	addu	a2,a2,v0
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     758:	00a22821 	addu	a1,a1,v0
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     75c:	00621021 	addu	v0,v1,v0
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     760:	8ce70000 	lw	a3,0(a3)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     764:	8cc60000 	lw	a2,0(a2)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     768:	8ca50000 	lw	a1,0(a1)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     76c:	8c420000 	lw	v0,0(v0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
     770:	ac88001c 	sw	t0,28(a0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     774:	ac870000 	sw	a3,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     778:	ac860010 	sw	a2,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     77c:	ac850020 	sw	a1,32(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
     780:	08000144 	j	510 <ByteSub_ShiftRow+0x44>
     784:	ac820030 	sw	v0,48(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     788:	8c8e0004 	lw	t6,4(a0)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     78c:	8c8d0014 	lw	t5,20(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     790:	8c8c0024 	lw	t4,36(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     794:	8c8b0034 	lw	t3,52(a0)
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     798:	8c8a0044 	lw	t2,68(a0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     79c:	8c890054 	lw	t1,84(a0)
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     7a0:	8c880064 	lw	t0,100(a0)
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     7a4:	8c870074 	lw	a3,116(a0)
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     7a8:	8c860038 	lw	a2,56(a0)
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     7ac:	8c820018 	lw	v0,24(a0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     7b0:	8c830008 	lw	v1,8(a0)
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     7b4:	8c850068 	lw	a1,104(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     7b8:	000e7903 	sra	t7,t6,0x4
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     7bc:	000db903 	sra	s7,t5,0x4
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     7c0:	000cb103 	sra	s6,t4,0x4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     7c4:	000ba903 	sra	s5,t3,0x4
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     7c8:	000aa103 	sra	s4,t2,0x4
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     7cc:	00099903 	sra	s3,t1,0x4
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     7d0:	00089103 	sra	s2,t0,0x4
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     7d4:	00078903 	sra	s1,a3,0x4
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     7d8:	00068103 	sra	s0,a2,0x4
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     7dc:	0002c903 	sra	t9,v0,0x4
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     7e0:	0003f103 	sra	s8,v1,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     7e4:	000f7900 	sll	t7,t7,0x4
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     7e8:	0017b900 	sll	s7,s7,0x4
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     7ec:	0016b100 	sll	s6,s6,0x4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     7f0:	0015a900 	sll	s5,s5,0x4
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     7f4:	0014a100 	sll	s4,s4,0x4
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     7f8:	00139900 	sll	s3,s3,0x4
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     7fc:	00129100 	sll	s2,s2,0x4
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     800:	00118900 	sll	s1,s1,0x4
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     804:	00108100 	sll	s0,s0,0x4
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     808:	3042000f 	andi	v0,v0,0xf
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     80c:	001ef100 	sll	s8,s8,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     810:	31ce000f 	andi	t6,t6,0xf
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     814:	31ad000f 	andi	t5,t5,0xf
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     818:	318c000f 	andi	t4,t4,0xf
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     81c:	316b000f 	andi	t3,t3,0xf
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     820:	314a000f 	andi	t2,t2,0xf
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     824:	3129000f 	andi	t1,t1,0xf
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     828:	3108000f 	andi	t0,t0,0xf
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     82c:	30e7000f 	andi	a3,a3,0xf
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     830:	30c6000f 	andi	a2,a2,0xf
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     834:	0019c900 	sll	t9,t9,0x4
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     838:	3063000f 	andi	v1,v1,0xf
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     83c:	0322c821 	addu	t9,t9,v0
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     840:	0005c103 	sra	t8,a1,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     844:	01ee7021 	addu	t6,t7,t6
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     848:	02ed6821 	addu	t5,s7,t5
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     84c:	02cc6021 	addu	t4,s6,t4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     850:	02ab5821 	addu	t3,s5,t3
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     854:	028a5021 	addu	t2,s4,t2
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     858:	02694821 	addu	t1,s3,t1
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     85c:	02484021 	addu	t0,s2,t0
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     860:	02273821 	addu	a3,s1,a3
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     864:	02063021 	addu	a2,s0,a2
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     868:	03c31821 	addu	v1,s8,v1
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     86c:	3c020000 	lui	v0,0x0
     870:	24420000 	addiu	v0,v0,0
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     874:	0018c100 	sll	t8,t8,0x4
     878:	30a5000f 	andi	a1,a1,0xf
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     87c:	000e7080 	sll	t6,t6,0x2
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     880:	000d6880 	sll	t5,t5,0x2
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     884:	000c6080 	sll	t4,t4,0x2
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     888:	000b5880 	sll	t3,t3,0x2
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     88c:	000a5080 	sll	t2,t2,0x2
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     890:	00094880 	sll	t1,t1,0x2
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     894:	00084080 	sll	t0,t0,0x2
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     898:	00073880 	sll	a3,a3,0x2
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     89c:	00063080 	sll	a2,a2,0x2
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     8a0:	00031880 	sll	v1,v1,0x2
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     8a4:	01a26821 	addu	t5,t5,v0
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     8a8:	01826021 	addu	t4,t4,v0
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     8ac:	01625821 	addu	t3,t3,v0
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     8b0:	01425021 	addu	t2,t2,v0
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     8b4:	01224821 	addu	t1,t1,v0
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     8b8:	01024021 	addu	t0,t0,v0
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     8bc:	00e23821 	addu	a3,a3,v0
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     8c0:	00c23021 	addu	a2,a2,v0
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     8c4:	03052821 	addu	a1,t8,a1
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     8c8:	01c27021 	addu	t6,t6,v0
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     8cc:	00621821 	addu	v1,v1,v0
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     8d0:	8daf0000 	lw	t7,0(t5)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     8d4:	8dce0000 	lw	t6,0(t6)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     8d8:	8d8d0000 	lw	t5,0(t4)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     8dc:	8c630000 	lw	v1,0(v1)
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     8e0:	8d6c0000 	lw	t4,0(t3)
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     8e4:	0019c080 	sll	t8,t9,0x2
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     8e8:	8d4b0000 	lw	t3,0(t2)
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     8ec:	00052880 	sll	a1,a1,0x2
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     8f0:	8d2a0000 	lw	t2,0(t1)
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     8f4:	8d090000 	lw	t1,0(t0)
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     8f8:	8ce80000 	lw	t0,0(a3)
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     8fc:	8cc70000 	lw	a3,0(a2)
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     900:	00a22821 	addu	a1,a1,v0
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     904:	0302c021 	addu	t8,t8,v0
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     908:	8ca60000 	lw	a2,0(a1)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     90c:	afa30000 	sw	v1,0(sp)
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     910:	8f050000 	lw	a1,0(t8)
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     914:	ac8f0004 	sw	t7,4(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     918:	ac8d0014 	sw	t5,20(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     91c:	ac8c0024 	sw	t4,36(a0)
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     920:	ac8b0034 	sw	t3,52(a0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     924:	ac8a0044 	sw	t2,68(a0)
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     928:	ac890054 	sw	t1,84(a0)
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     92c:	ac880064 	sw	t0,100(a0)
      statemt[29] = temp;
     930:	ac8e0074 	sw	t6,116(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     934:	ac870008 	sw	a3,8(a0)
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     938:	8c8e0078 	lw	t6,120(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     93c:	8c8f0048 	lw	t7,72(a0)
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     940:	8c8d0028 	lw	t5,40(a0)
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     944:	8c8c0058 	lw	t4,88(a0)
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     948:	8c8b000c 	lw	t3,12(a0)
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     94c:	8c8a004c 	lw	t2,76(a0)
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     950:	8c89001c 	lw	t1,28(a0)
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     954:	8c88005c 	lw	t0,92(a0)
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     958:	8c87002c 	lw	a3,44(a0)
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     95c:	8c83003c 	lw	v1,60(a0)
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     960:	ac860038 	sw	a2,56(a0)
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     964:	ac850068 	sw	a1,104(a0)
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     968:	8c86006c 	lw	a2,108(a0)
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     96c:	8c85007c 	lw	a1,124(a0)
      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     970:	000eb903 	sra	s7,t6,0x4
     974:	0017b900 	sll	s7,s7,0x4
     978:	31ce000f 	andi	t6,t6,0xf

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     97c:	000ff103 	sra	s8,t7,0x4
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     980:	000db103 	sra	s6,t5,0x4
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     984:	000ca903 	sra	s5,t4,0x4
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     988:	000ba103 	sra	s4,t3,0x4
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     98c:	000a9903 	sra	s3,t2,0x4
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     990:	00099103 	sra	s2,t1,0x4
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     994:	00088903 	sra	s1,t0,0x4
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     998:	00078103 	sra	s0,a3,0x4
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     99c:	0006c903 	sra	t9,a2,0x4
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     9a0:	0005c103 	sra	t8,a1,0x4
      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     9a4:	02ee7021 	addu	t6,s7,t6
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     9a8:	0003b903 	sra	s7,v1,0x4

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     9ac:	001ef100 	sll	s8,s8,0x4
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     9b0:	00129100 	sll	s2,s2,0x4
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     9b4:	00118900 	sll	s1,s1,0x4
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     9b8:	00108100 	sll	s0,s0,0x4
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     9bc:	0019c900 	sll	t9,t9,0x4
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     9c0:	0018c100 	sll	t8,t8,0x4

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     9c4:	31ef000f 	andi	t7,t7,0xf
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     9c8:	31ad000f 	andi	t5,t5,0xf
     9cc:	0016b100 	sll	s6,s6,0x4
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     9d0:	318c000f 	andi	t4,t4,0xf
     9d4:	0015a900 	sll	s5,s5,0x4
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     9d8:	316b000f 	andi	t3,t3,0xf
     9dc:	0014a100 	sll	s4,s4,0x4
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     9e0:	314a000f 	andi	t2,t2,0xf
     9e4:	00139900 	sll	s3,s3,0x4
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     9e8:	3129000f 	andi	t1,t1,0xf
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     9ec:	3108000f 	andi	t0,t0,0xf
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     9f0:	30e7000f 	andi	a3,a3,0xf
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     9f4:	30c6000f 	andi	a2,a2,0xf
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     9f8:	30a5000f 	andi	a1,a1,0xf
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     9fc:	3063000f 	andi	v1,v1,0xf
     a00:	0017b900 	sll	s7,s7,0x4

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     a04:	03cf7821 	addu	t7,s8,t7
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     a08:	02494821 	addu	t1,s2,t1
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     a0c:	02284021 	addu	t0,s1,t0
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     a10:	02073821 	addu	a3,s0,a3
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     a14:	03263021 	addu	a2,t9,a2
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     a18:	03052821 	addu	a1,t8,a1
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     a1c:	02cd6821 	addu	t5,s6,t5
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     a20:	02ac6021 	addu	t4,s5,t4
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     a24:	028b5821 	addu	t3,s4,t3
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     a28:	026a5021 	addu	t2,s3,t2
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     a2c:	02e31821 	addu	v1,s7,v1

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     a30:	000f7880 	sll	t7,t7,0x2
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     a34:	000e7080 	sll	t6,t6,0x2
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     a38:	000d6880 	sll	t5,t5,0x2
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     a3c:	000c6080 	sll	t4,t4,0x2
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     a40:	000b5880 	sll	t3,t3,0x2
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     a44:	000a5080 	sll	t2,t2,0x2
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     a48:	00094880 	sll	t1,t1,0x2
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     a4c:	00084080 	sll	t0,t0,0x2
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     a50:	00073880 	sll	a3,a3,0x2
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     a54:	00063080 	sll	a2,a2,0x2
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     a58:	00052880 	sll	a1,a1,0x2
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     a5c:	00031880 	sll	v1,v1,0x2

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     a60:	01e27821 	addu	t7,t7,v0
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     a64:	01c27021 	addu	t6,t6,v0
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     a68:	01a26821 	addu	t5,t5,v0
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     a6c:	01826021 	addu	t4,t4,v0
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     a70:	00621821 	addu	v1,v1,v0
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     a74:	01625821 	addu	t3,t3,v0
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     a78:	01425021 	addu	t2,t2,v0
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     a7c:	01224821 	addu	t1,t1,v0
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     a80:	01024021 	addu	t0,t0,v0
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     a84:	00e23821 	addu	a3,a3,v0
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     a88:	00c23021 	addu	a2,a2,v0
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     a8c:	00a22821 	addu	a1,a1,v0

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     a90:	8dfe0000 	lw	s8,0(t7)
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     a94:	8d4a0000 	lw	t2,0(t2)
      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     a98:	8dcf0000 	lw	t7,0(t6)
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     a9c:	8d290000 	lw	t1,0(t1)
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     aa0:	8dae0000 	lw	t6,0(t5)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     aa4:	8d080000 	lw	t0,0(t0)
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     aa8:	8d8d0000 	lw	t5,0(t4)
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     aac:	8ce70000 	lw	a3,0(a3)
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     ab0:	8cc60000 	lw	a2,0(a2)
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     ab4:	8ca50000 	lw	a1,0(a1)
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     ab8:	8c6c0000 	lw	t4,0(v1)
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     abc:	8d6b0000 	lw	t3,0(t3)
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;
     ac0:	8fa30000 	lw	v1,0(sp)
      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     ac4:	ac8f0048 	sw	t7,72(a0)
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     ac8:	ac8e0078 	sw	t6,120(a0)
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     acc:	ac8d0028 	sw	t5,40(a0)
      statemt[22] = temp;
     ad0:	ac830058 	sw	v1,88(a0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     ad4:	ac8a000c 	sw	t2,12(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     ad8:	ac9e0018 	sw	s8,24(a0)
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
     adc:	ac8b004c 	sw	t3,76(a0)
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     ae0:	8c8b0000 	lw	t3,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     ae4:	8c8a0010 	lw	t2,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     ae8:	8c830070 	lw	v1,112(a0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     aec:	ac88001c 	sw	t0,28(a0)
      statemt[23] = temp;
     af0:	ac89005c 	sw	t1,92(a0)
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     af4:	8c880030 	lw	t0,48(a0)
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     af8:	8c890020 	lw	t1,32(a0)
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     afc:	ac86002c 	sw	a2,44(a0)
      statemt[27] = temp;
     b00:	ac87006c 	sw	a3,108(a0)
      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     b04:	8c860050 	lw	a2,80(a0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     b08:	8c870040 	lw	a3,64(a0)
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     b0c:	ac85003c 	sw	a1,60(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     b10:	8c850060 	lw	a1,96(a0)
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     b14:	000bc903 	sra	t9,t3,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     b18:	000a9103 	sra	s2,t2,0x4
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     b1c:	0009c103 	sra	t8,t1,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     b20:	00087903 	sra	t7,t0,0x4
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     b24:	00077103 	sra	t6,a3,0x4
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     b28:	00066903 	sra	t5,a2,0x4
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     b2c:	00058903 	sra	s1,a1,0x4
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     b30:	00038103 	sra	s0,v1,0x4
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     b34:	316b000f 	andi	t3,t3,0xf
     b38:	0019c900 	sll	t9,t9,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     b3c:	314a000f 	andi	t2,t2,0xf
     b40:	00129100 	sll	s2,s2,0x4
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     b44:	3129000f 	andi	t1,t1,0xf
     b48:	0018c100 	sll	t8,t8,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     b4c:	3108000f 	andi	t0,t0,0xf
     b50:	000f7900 	sll	t7,t7,0x4
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     b54:	30e7000f 	andi	a3,a3,0xf
     b58:	000e7100 	sll	t6,t6,0x4
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     b5c:	30c6000f 	andi	a2,a2,0xf
     b60:	000d6900 	sll	t5,t5,0x4
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     b64:	30a5000f 	andi	a1,a1,0xf
     b68:	00118900 	sll	s1,s1,0x4
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     b6c:	3063000f 	andi	v1,v1,0xf
     b70:	00108100 	sll	s0,s0,0x4
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     b74:	032b5821 	addu	t3,t9,t3
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     b78:	024a5021 	addu	t2,s2,t2
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     b7c:	03094821 	addu	t1,t8,t1
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     b80:	01e84021 	addu	t0,t7,t0
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     b84:	01c73821 	addu	a3,t6,a3
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     b88:	01a63021 	addu	a2,t5,a2
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     b8c:	02252821 	addu	a1,s1,a1
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     b90:	02031821 	addu	v1,s0,v1
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     b94:	000b5880 	sll	t3,t3,0x2
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     b98:	000a5080 	sll	t2,t2,0x2
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     b9c:	00094880 	sll	t1,t1,0x2
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     ba0:	00084080 	sll	t0,t0,0x2
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     ba4:	00073880 	sll	a3,a3,0x2
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     ba8:	00063080 	sll	a2,a2,0x2
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     bac:	00052880 	sll	a1,a1,0x2
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     bb0:	00031880 	sll	v1,v1,0x2
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     bb4:	01625821 	addu	t3,t3,v0
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     bb8:	01425021 	addu	t2,t2,v0
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     bbc:	01224821 	addu	t1,t1,v0
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     bc0:	01024021 	addu	t0,t0,v0
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     bc4:	00e23821 	addu	a3,a3,v0
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     bc8:	00c23021 	addu	a2,a2,v0
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     bcc:	00a22821 	addu	a1,a1,v0
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     bd0:	00621021 	addu	v0,v1,v0
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     bd4:	8d6b0000 	lw	t3,0(t3)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     bd8:	8d4a0000 	lw	t2,0(t2)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     bdc:	8d290000 	lw	t1,0(t1)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     be0:	8d080000 	lw	t0,0(t0)
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     be4:	8ce70000 	lw	a3,0(a3)
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     be8:	8cc60000 	lw	a2,0(a2)
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     bec:	8ca50000 	lw	a1,0(a1)
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     bf0:	8c420000 	lw	v0,0(v0)
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;
     bf4:	ac8c007c 	sw	t4,124(a0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     bf8:	ac8b0000 	sw	t3,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     bfc:	ac8a0010 	sw	t2,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     c00:	ac890020 	sw	t1,32(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     c04:	ac880030 	sw	t0,48(a0)
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     c08:	ac870040 	sw	a3,64(a0)
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     c0c:	ac860050 	sw	a2,80(a0)
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     c10:	ac850060 	sw	a1,96(a0)
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     c14:	08000144 	j	510 <ByteSub_ShiftRow+0x44>
     c18:	ac820070 	sw	v0,112(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     c1c:	8c8e0004 	lw	t6,4(a0)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     c20:	8c8d0014 	lw	t5,20(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     c24:	8c8c0024 	lw	t4,36(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     c28:	8c8b0034 	lw	t3,52(a0)
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     c2c:	8c8a0044 	lw	t2,68(a0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     c30:	8c890054 	lw	t1,84(a0)
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     c34:	8c880008 	lw	t0,8(a0)
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     c38:	8c870028 	lw	a3,40(a0)
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     c3c:	8c860048 	lw	a2,72(a0)
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     c40:	8c850038 	lw	a1,56(a0)
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     c44:	8c820058 	lw	v0,88(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     c48:	8c830018 	lw	v1,24(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     c4c:	000ec103 	sra	t8,t6,0x4
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     c50:	000db903 	sra	s7,t5,0x4
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     c54:	000cb103 	sra	s6,t4,0x4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     c58:	000ba903 	sra	s5,t3,0x4
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     c5c:	000aa103 	sra	s4,t2,0x4
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     c60:	00099903 	sra	s3,t1,0x4
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     c64:	00089103 	sra	s2,t0,0x4
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     c68:	00078903 	sra	s1,a3,0x4
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     c6c:	00068103 	sra	s0,a2,0x4
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     c70:	0005c903 	sra	t9,a1,0x4
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     c74:	00027903 	sra	t7,v0,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     c78:	0018c100 	sll	t8,t8,0x4
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     c7c:	0017b900 	sll	s7,s7,0x4
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     c80:	0016b100 	sll	s6,s6,0x4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     c84:	0015a900 	sll	s5,s5,0x4
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     c88:	0014a100 	sll	s4,s4,0x4
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     c8c:	00139900 	sll	s3,s3,0x4
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     c90:	00129100 	sll	s2,s2,0x4
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     c94:	00118900 	sll	s1,s1,0x4
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     c98:	00108100 	sll	s0,s0,0x4
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     c9c:	0019c900 	sll	t9,t9,0x4
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     ca0:	3042000f 	andi	v0,v0,0xf
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     ca4:	31ce000f 	andi	t6,t6,0xf
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     ca8:	31ad000f 	andi	t5,t5,0xf
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     cac:	318c000f 	andi	t4,t4,0xf
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     cb0:	316b000f 	andi	t3,t3,0xf
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     cb4:	314a000f 	andi	t2,t2,0xf
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     cb8:	3129000f 	andi	t1,t1,0xf
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     cbc:	3108000f 	andi	t0,t0,0xf
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     cc0:	30e7000f 	andi	a3,a3,0xf
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     cc4:	30c6000f 	andi	a2,a2,0xf
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     cc8:	30a5000f 	andi	a1,a1,0xf
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     ccc:	000f7900 	sll	t7,t7,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     cd0:	030e7021 	addu	t6,t8,t6
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     cd4:	02ed6821 	addu	t5,s7,t5
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     cd8:	02cc6021 	addu	t4,s6,t4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     cdc:	02ab5821 	addu	t3,s5,t3
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     ce0:	028a5021 	addu	t2,s4,t2
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     ce4:	02694821 	addu	t1,s3,t1
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     ce8:	02484021 	addu	t0,s2,t0
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     cec:	02273821 	addu	a3,s1,a3
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     cf0:	02063021 	addu	a2,s0,a2
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     cf4:	0003f103 	sra	s8,v1,0x4
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     cf8:	03252821 	addu	a1,t9,a1
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     cfc:	01e27821 	addu	t7,t7,v0
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     d00:	3c020000 	lui	v0,0x0
     d04:	24420000 	addiu	v0,v0,0

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     d08:	001ef100 	sll	s8,s8,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     d0c:	000e7080 	sll	t6,t6,0x2
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     d10:	000d6880 	sll	t5,t5,0x2
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     d14:	000c6080 	sll	t4,t4,0x2
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     d18:	000b5880 	sll	t3,t3,0x2
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     d1c:	000a5080 	sll	t2,t2,0x2
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     d20:	00094880 	sll	t1,t1,0x2
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     d24:	00084080 	sll	t0,t0,0x2
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     d28:	00073880 	sll	a3,a3,0x2
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     d2c:	00063080 	sll	a2,a2,0x2
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     d30:	3063000f 	andi	v1,v1,0xf
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     d34:	00052880 	sll	a1,a1,0x2
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     d38:	000f7880 	sll	t7,t7,0x2
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     d3c:	01a26821 	addu	t5,t5,v0
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     d40:	01826021 	addu	t4,t4,v0
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     d44:	01625821 	addu	t3,t3,v0
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     d48:	01425021 	addu	t2,t2,v0
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     d4c:	01224821 	addu	t1,t1,v0
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     d50:	00e23821 	addu	a3,a3,v0
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     d54:	00c23021 	addu	a2,a2,v0
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     d58:	00a22821 	addu	a1,a1,v0
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     d5c:	01e27821 	addu	t7,t7,v0
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     d60:	01c27021 	addu	t6,t6,v0
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     d64:	01024021 	addu	t0,t0,v0
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     d68:	03c31821 	addu	v1,s8,v1
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     d6c:	8db80000 	lw	t8,0(t5)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     d70:	8dce0000 	lw	t6,0(t6)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     d74:	8d8d0000 	lw	t5,0(t4)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     d78:	8d080000 	lw	t0,0(t0)
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     d7c:	8d6c0000 	lw	t4,0(t3)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     d80:	00031880 	sll	v1,v1,0x2
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     d84:	8d4b0000 	lw	t3,0(t2)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     d88:	8d2a0000 	lw	t2,0(t1)
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     d8c:	8ce90000 	lw	t1,0(a3)
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     d90:	8cc70000 	lw	a3,0(a2)
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     d94:	8ca60000 	lw	a2,0(a1)
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     d98:	8de50000 	lw	a1,0(t7)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     d9c:	00621821 	addu	v1,v1,v0
     da0:	8c6f0000 	lw	t7,0(v1)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     da4:	ac980004 	sw	t8,4(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     da8:	ac8d0014 	sw	t5,20(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     dac:	ac8c0024 	sw	t4,36(a0)
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     db0:	ac8b0034 	sw	t3,52(a0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     db4:	ac8a0044 	sw	t2,68(a0)
      statemt[21] = temp;
     db8:	ac8e0054 	sw	t6,84(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     dbc:	ac890008 	sw	t1,8(a0)
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     dc0:	ac870028 	sw	a3,40(a0)
      statemt[18] = temp;
     dc4:	ac880048 	sw	t0,72(a0)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     dc8:	ac860018 	sw	a2,24(a0)
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     dcc:	8c8e000c 	lw	t6,12(a0)
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     dd0:	8c8d003c 	lw	t5,60(a0)
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     dd4:	8c8c001c 	lw	t4,28(a0)
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     dd8:	8c8b004c 	lw	t3,76(a0)
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     ddc:	8c8a002c 	lw	t2,44(a0)
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     de0:	8c89005c 	lw	t1,92(a0)
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     de4:	8c880000 	lw	t0,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     de8:	8c870010 	lw	a3,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     dec:	8c860020 	lw	a2,32(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     df0:	8c830040 	lw	v1,64(a0)
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     df4:	ac850038 	sw	a1,56(a0)
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     df8:	8c850030 	lw	a1,48(a0)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     dfc:	000ef103 	sra	s8,t6,0x4
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     e00:	000db903 	sra	s7,t5,0x4
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     e04:	000cb103 	sra	s6,t4,0x4
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     e08:	000ba903 	sra	s5,t3,0x4
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     e0c:	000aa103 	sra	s4,t2,0x4
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     e10:	00099903 	sra	s3,t1,0x4
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     e14:	00089103 	sra	s2,t0,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     e18:	00078903 	sra	s1,a3,0x4
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     e1c:	00068103 	sra	s0,a2,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     e20:	0005c903 	sra	t9,a1,0x4
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     e24:	0003c103 	sra	t8,v1,0x4
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     e28:	31ce000f 	andi	t6,t6,0xf
     e2c:	001ef100 	sll	s8,s8,0x4
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     e30:	31ad000f 	andi	t5,t5,0xf
     e34:	0017b900 	sll	s7,s7,0x4
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     e38:	318c000f 	andi	t4,t4,0xf
     e3c:	0016b100 	sll	s6,s6,0x4
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     e40:	316b000f 	andi	t3,t3,0xf
     e44:	0015a900 	sll	s5,s5,0x4
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     e48:	314a000f 	andi	t2,t2,0xf
     e4c:	0014a100 	sll	s4,s4,0x4
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     e50:	3129000f 	andi	t1,t1,0xf
     e54:	00139900 	sll	s3,s3,0x4
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     e58:	3108000f 	andi	t0,t0,0xf
     e5c:	00129100 	sll	s2,s2,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     e60:	30e7000f 	andi	a3,a3,0xf
     e64:	00118900 	sll	s1,s1,0x4
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     e68:	30c6000f 	andi	a2,a2,0xf
     e6c:	00108100 	sll	s0,s0,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     e70:	30a5000f 	andi	a1,a1,0xf
     e74:	0019c900 	sll	t9,t9,0x4
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     e78:	3063000f 	andi	v1,v1,0xf
     e7c:	0018c100 	sll	t8,t8,0x4
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     e80:	03ce7021 	addu	t6,s8,t6
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     e84:	02ed6821 	addu	t5,s7,t5
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     e88:	02cc6021 	addu	t4,s6,t4
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     e8c:	02ab5821 	addu	t3,s5,t3
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     e90:	028a5021 	addu	t2,s4,t2
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     e94:	02694821 	addu	t1,s3,t1
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     e98:	02484021 	addu	t0,s2,t0
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     e9c:	02273821 	addu	a3,s1,a3
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     ea0:	02063021 	addu	a2,s0,a2
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     ea4:	03252821 	addu	a1,t9,a1
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     ea8:	03031821 	addu	v1,t8,v1
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     eac:	000e7080 	sll	t6,t6,0x2
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     eb0:	000d6880 	sll	t5,t5,0x2
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     eb4:	000c6080 	sll	t4,t4,0x2
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     eb8:	000b5880 	sll	t3,t3,0x2
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     ebc:	000a5080 	sll	t2,t2,0x2
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     ec0:	00094880 	sll	t1,t1,0x2
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     ec4:	00084080 	sll	t0,t0,0x2
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     ec8:	00073880 	sll	a3,a3,0x2
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     ecc:	00063080 	sll	a2,a2,0x2
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     ed0:	00052880 	sll	a1,a1,0x2
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     ed4:	00031880 	sll	v1,v1,0x2
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     ed8:	01c27021 	addu	t6,t6,v0
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     edc:	01a26821 	addu	t5,t5,v0
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     ee0:	01826021 	addu	t4,t4,v0
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     ee4:	01625821 	addu	t3,t3,v0
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     ee8:	01425021 	addu	t2,t2,v0
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     eec:	01224821 	addu	t1,t1,v0
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     ef0:	01024021 	addu	t0,t0,v0
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     ef4:	00e23821 	addu	a3,a3,v0
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     ef8:	00c23021 	addu	a2,a2,v0
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     efc:	00a22821 	addu	a1,a1,v0
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     f00:	00621821 	addu	v1,v1,v0
     f04:	8c630000 	lw	v1,0(v1)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     f08:	8dce0000 	lw	t6,0(t6)
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     f0c:	8dad0000 	lw	t5,0(t5)
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     f10:	8d8c0000 	lw	t4,0(t4)
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     f14:	8d6b0000 	lw	t3,0(t3)
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     f18:	8d4a0000 	lw	t2,0(t2)
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     f1c:	8d290000 	lw	t1,0(t1)
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     f20:	8d080000 	lw	t0,0(t0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     f24:	8ce70000 	lw	a3,0(a3)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     f28:	8cc60000 	lw	a2,0(a2)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     f2c:	8ca50000 	lw	a1,0(a1)
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;
     f30:	ac8f0058 	sw	t7,88(a0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     f34:	ac8d000c 	sw	t5,12(a0)
      statemt[15] = temp;
     f38:	ac8e003c 	sw	t6,60(a0)
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     f3c:	ac8b001c 	sw	t3,28(a0)
      statemt[19] = temp;
     f40:	ac8c004c 	sw	t4,76(a0)
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     f44:	ac89002c 	sw	t1,44(a0)
      statemt[23] = temp;
     f48:	ac8a005c 	sw	t2,92(a0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     f4c:	ac880000 	sw	t0,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     f50:	ac870010 	sw	a3,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     f54:	ac860020 	sw	a2,32(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     f58:	ac850030 	sw	a1,48(a0)
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     f5c:	ac830040 	sw	v1,64(a0)
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     f60:	8c830050 	lw	v1,80(a0)
     f64:	00000000 	sll	zero,zero,0x0
     f68:	00032903 	sra	a1,v1,0x4
     f6c:	00052900 	sll	a1,a1,0x4
     f70:	3063000f 	andi	v1,v1,0xf
     f74:	00a31821 	addu	v1,a1,v1
     f78:	00031880 	sll	v1,v1,0x2
     f7c:	00621021 	addu	v0,v1,v0
     f80:	8c420000 	lw	v0,0(v0)
      break;
     f84:	08000144 	j	510 <ByteSub_ShiftRow+0x44>
     f88:	ac820050 	sw	v0,80(a0)

00000f8c <SubByte>:
}

int
SubByte (int in)
{
  return Sbox[(in / 16)][(in % 16)];
     f8c:	0480000f 	bltz	a0,fcc <SubByte+0x40>
     f90:	00801021 	addu	v0,a0,zero
     f94:	3c038000 	lui	v1,0x8000
     f98:	2463000f 	addiu	v1,v1,15
     f9c:	00832024 	and	a0,a0,v1
     fa0:	04800010 	bltz	a0,fe4 <SubByte+0x58>
     fa4:	00021103 	sra	v0,v0,0x4
     fa8:	00021100 	sll	v0,v0,0x4
     fac:	00442021 	addu	a0,v0,a0
     fb0:	3c030000 	lui	v1,0x0
     fb4:	24630000 	addiu	v1,v1,0
     fb8:	00042080 	sll	a0,a0,0x2
     fbc:	00832021 	addu	a0,a0,v1
}
     fc0:	8c820000 	lw	v0,0(a0)
     fc4:	03e00008 	jr	ra
     fc8:	00000000 	sll	zero,zero,0x0
}

int
SubByte (int in)
{
  return Sbox[(in / 16)][(in % 16)];
     fcc:	3c038000 	lui	v1,0x8000
     fd0:	2463000f 	addiu	v1,v1,15
     fd4:	2482000f 	addiu	v0,a0,15
     fd8:	00832024 	and	a0,a0,v1
     fdc:	0481fff2 	bgez	a0,fa8 <SubByte+0x1c>
     fe0:	00021103 	sra	v0,v0,0x4
     fe4:	2403fff0 	addiu	v1,zero,-16
     fe8:	2484ffff 	addiu	a0,a0,-1
     fec:	00832025 	or	a0,a0,v1
     ff0:	00021100 	sll	v0,v0,0x4
     ff4:	24840001 	addiu	a0,a0,1
     ff8:	00442021 	addu	a0,v0,a0
     ffc:	3c030000 	lui	v1,0x0
    1000:	24630000 	addiu	v1,v1,0
    1004:	00042080 	sll	a0,a0,0x2
    1008:	00832021 	addu	a0,a0,v1
}
    100c:	8c820000 	lw	v0,0(a0)
    1010:	03e00008 	jr	ra
    1014:	00000000 	sll	zero,zero,0x0

00001018 <InversShiftRow_ByteSub>:

/* ********* InversShiftRow & ByteSub ********* */
void
InversShiftRow_ByteSub (int statemt[32], int nb)
{
    1018:	27bdffd0 	addiu	sp,sp,-48
  int temp;

  switch (nb)
    101c:	24020006 	addiu	v0,zero,6
}

/* ********* InversShiftRow & ByteSub ********* */
void
InversShiftRow_ByteSub (int statemt[32], int nb)
{
    1020:	afbe002c 	sw	s8,44(sp)
    1024:	afb70028 	sw	s7,40(sp)
    1028:	afb60024 	sw	s6,36(sp)
    102c:	afb50020 	sw	s5,32(sp)
    1030:	afb4001c 	sw	s4,28(sp)
    1034:	afb30018 	sw	s3,24(sp)
    1038:	afb20014 	sw	s2,20(sp)
    103c:	afb10010 	sw	s1,16(sp)
  int temp;

  switch (nb)
    1040:	10a201c9 	beq	a1,v0,1768 <InversShiftRow_ByteSub+0x750>
    1044:	afb0000c 	sw	s0,12(sp)
    1048:	24020008 	addiu	v0,zero,8
    104c:	10a200a1 	beq	a1,v0,12d4 <InversShiftRow_ByteSub+0x2bc>
    1050:	24020004 	addiu	v0,zero,4
    1054:	10a2000c 	beq	a1,v0,1088 <InversShiftRow_ByteSub+0x70>
    1058:	00000000 	sll	zero,zero,0x0
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
      break;
    }
}
    105c:	8fbe002c 	lw	s8,44(sp)
    1060:	8fb70028 	lw	s7,40(sp)
    1064:	8fb60024 	lw	s6,36(sp)
    1068:	8fb50020 	lw	s5,32(sp)
    106c:	8fb4001c 	lw	s4,28(sp)
    1070:	8fb30018 	lw	s3,24(sp)
    1074:	8fb20014 	lw	s2,20(sp)
    1078:	8fb10010 	lw	s1,16(sp)
    107c:	8fb0000c 	lw	s0,12(sp)
    1080:	03e00008 	jr	ra
    1084:	27bd0030 	addiu	sp,sp,48
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1088:	8c8e0034 	lw	t6,52(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    108c:	8c8d0024 	lw	t5,36(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1090:	8c8c0014 	lw	t4,20(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1094:	8c8b0004 	lw	t3,4(a0)
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1098:	8c8a0038 	lw	t2,56(a0)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    109c:	8c890018 	lw	t1,24(a0)
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    10a0:	8c880008 	lw	t0,8(a0)
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    10a4:	8c870028 	lw	a3,40(a0)
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    10a8:	8c86000c 	lw	a2,12(a0)
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    10ac:	8c85001c 	lw	a1,28(a0)
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    10b0:	8c82002c 	lw	v0,44(a0)
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    10b4:	8c83003c 	lw	v1,60(a0)
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    10b8:	000e7903 	sra	t7,t6,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    10bc:	000db903 	sra	s7,t5,0x4
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    10c0:	000cb103 	sra	s6,t4,0x4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    10c4:	000ba903 	sra	s5,t3,0x4
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    10c8:	000aa103 	sra	s4,t2,0x4
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    10cc:	00099903 	sra	s3,t1,0x4
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    10d0:	00089103 	sra	s2,t0,0x4
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    10d4:	00078903 	sra	s1,a3,0x4
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    10d8:	00068103 	sra	s0,a2,0x4
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    10dc:	0005c903 	sra	t9,a1,0x4
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    10e0:	0002c103 	sra	t8,v0,0x4
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    10e4:	000f7900 	sll	t7,t7,0x4
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    10e8:	0019c900 	sll	t9,t9,0x4
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    10ec:	3042000f 	andi	v0,v0,0xf
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    10f0:	31ce000f 	andi	t6,t6,0xf
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    10f4:	31ad000f 	andi	t5,t5,0xf
    10f8:	0017b900 	sll	s7,s7,0x4
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    10fc:	318c000f 	andi	t4,t4,0xf
    1100:	0016b100 	sll	s6,s6,0x4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1104:	316b000f 	andi	t3,t3,0xf
    1108:	0015a900 	sll	s5,s5,0x4
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    110c:	314a000f 	andi	t2,t2,0xf
    1110:	0014a100 	sll	s4,s4,0x4
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1114:	3129000f 	andi	t1,t1,0xf
    1118:	00139900 	sll	s3,s3,0x4
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    111c:	3108000f 	andi	t0,t0,0xf
    1120:	00129100 	sll	s2,s2,0x4
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1124:	30e7000f 	andi	a3,a3,0xf
    1128:	00118900 	sll	s1,s1,0x4
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    112c:	30c6000f 	andi	a2,a2,0xf
    1130:	00108100 	sll	s0,s0,0x4
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1134:	30a5000f 	andi	a1,a1,0xf
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1138:	0018c100 	sll	t8,t8,0x4
    113c:	0302c021 	addu	t8,t8,v0
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1140:	01ee7021 	addu	t6,t7,t6
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1144:	0003f103 	sra	s8,v1,0x4
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1148:	03252821 	addu	a1,t9,a1

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    114c:	02ed6821 	addu	t5,s7,t5
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1150:	02cc6021 	addu	t4,s6,t4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1154:	02ab5821 	addu	t3,s5,t3
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1158:	028a5021 	addu	t2,s4,t2
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    115c:	02694821 	addu	t1,s3,t1
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1160:	02484021 	addu	t0,s2,t0
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1164:	02273821 	addu	a3,s1,a3
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1168:	02063021 	addu	a2,s0,a2
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    116c:	3c020000 	lui	v0,0x0
    1170:	24420000 	addiu	v0,v0,0
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1174:	0018c880 	sll	t9,t8,0x2
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1178:	000e7080 	sll	t6,t6,0x2
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    117c:	000d6880 	sll	t5,t5,0x2
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1180:	000c6080 	sll	t4,t4,0x2
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1184:	000b5880 	sll	t3,t3,0x2
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1188:	000a5080 	sll	t2,t2,0x2
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    118c:	00094880 	sll	t1,t1,0x2
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1190:	00084080 	sll	t0,t0,0x2
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1194:	00073880 	sll	a3,a3,0x2
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1198:	3063000f 	andi	v1,v1,0xf
    119c:	001ef100 	sll	s8,s8,0x4
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    11a0:	00063080 	sll	a2,a2,0x2
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    11a4:	00052880 	sll	a1,a1,0x2

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    11a8:	01a26821 	addu	t5,t5,v0
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    11ac:	01826021 	addu	t4,t4,v0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    11b0:	01625821 	addu	t3,t3,v0
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    11b4:	01425021 	addu	t2,t2,v0
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    11b8:	01224821 	addu	t1,t1,v0
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    11bc:	01024021 	addu	t0,t0,v0
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    11c0:	00e23821 	addu	a3,a3,v0
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    11c4:	00c23021 	addu	a2,a2,v0
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    11c8:	00a22821 	addu	a1,a1,v0
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    11cc:	01c27021 	addu	t6,t6,v0
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    11d0:	0322c821 	addu	t9,t9,v0
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    11d4:	03c31821 	addu	v1,s8,v1

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    11d8:	8db80000 	lw	t8,0(t5)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    11dc:	8d8f0000 	lw	t7,0(t4)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    11e0:	8d6d0000 	lw	t5,0(t3)
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    11e4:	8d2c0000 	lw	t4,0(t1)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    11e8:	8d4b0000 	lw	t3,0(t2)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    11ec:	8d090000 	lw	t1,0(t0)
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    11f0:	8cea0000 	lw	t2,0(a3)
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    11f4:	8dce0000 	lw	t6,0(t6)
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    11f8:	8cc70000 	lw	a3,0(a2)
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    11fc:	00031880 	sll	v1,v1,0x2
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1200:	8ca60000 	lw	a2,0(a1)
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1204:	8f250000 	lw	a1,0(t9)
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1208:	00621821 	addu	v1,v1,v0
    120c:	8c680000 	lw	t0,0(v1)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1210:	ac8c0038 	sw	t4,56(a0)
      statemt[6] = temp;
    1214:	ac8b0018 	sw	t3,24(a0)
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1218:	ac8a0008 	sw	t2,8(a0)
      statemt[10] = temp;
    121c:	ac890028 	sw	t1,40(a0)

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1220:	ac87003c 	sw	a3,60(a0)

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1224:	ac980034 	sw	t8,52(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1228:	ac8f0024 	sw	t7,36(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    122c:	ac8d0014 	sw	t5,20(a0)
      statemt[1] = temp;
    1230:	ac8e0004 	sw	t6,4(a0)
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1234:	ac86000c 	sw	a2,12(a0)
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1238:	8c870000 	lw	a3,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    123c:	8c860010 	lw	a2,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1240:	8c830030 	lw	v1,48(a0)
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1244:	ac85001c 	sw	a1,28(a0)
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1248:	8c850020 	lw	a1,32(a0)
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    124c:	00076103 	sra	t4,a3,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1250:	00065903 	sra	t3,a2,0x4
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1254:	00055103 	sra	t2,a1,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1258:	00034903 	sra	t1,v1,0x4
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    125c:	30e7000f 	andi	a3,a3,0xf
    1260:	000c6100 	sll	t4,t4,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1264:	30c6000f 	andi	a2,a2,0xf
    1268:	000b5900 	sll	t3,t3,0x4
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    126c:	30a5000f 	andi	a1,a1,0xf
    1270:	000a5100 	sll	t2,t2,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1274:	3063000f 	andi	v1,v1,0xf
    1278:	00094900 	sll	t1,t1,0x4
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    127c:	01873821 	addu	a3,t4,a3
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1280:	01663021 	addu	a2,t3,a2
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1284:	01452821 	addu	a1,t2,a1
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1288:	01231821 	addu	v1,t1,v1
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    128c:	00073880 	sll	a3,a3,0x2
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1290:	00063080 	sll	a2,a2,0x2
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1294:	00052880 	sll	a1,a1,0x2
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1298:	00031880 	sll	v1,v1,0x2
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    129c:	00e23821 	addu	a3,a3,v0
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    12a0:	00c23021 	addu	a2,a2,v0
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    12a4:	00a22821 	addu	a1,a1,v0
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    12a8:	00621021 	addu	v0,v1,v0
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    12ac:	8ce70000 	lw	a3,0(a3)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    12b0:	8cc60000 	lw	a2,0(a2)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    12b4:	8ca50000 	lw	a1,0(a1)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    12b8:	8c420000 	lw	v0,0(v0)

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
    12bc:	ac88002c 	sw	t0,44(a0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    12c0:	ac870000 	sw	a3,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    12c4:	ac860010 	sw	a2,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    12c8:	ac850020 	sw	a1,32(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    12cc:	08000417 	j	105c <InversShiftRow_ByteSub+0x44>
    12d0:	ac820030 	sw	v0,48(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    12d4:	8c8e0074 	lw	t6,116(a0)
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    12d8:	8c8d0064 	lw	t5,100(a0)
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    12dc:	8c8c0054 	lw	t4,84(a0)
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    12e0:	8c8b0044 	lw	t3,68(a0)
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    12e4:	8c8a0034 	lw	t2,52(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    12e8:	8c890024 	lw	t1,36(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    12ec:	8c880014 	lw	t0,20(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    12f0:	8c870004 	lw	a3,4(a0)
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    12f4:	8c860048 	lw	a2,72(a0)
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    12f8:	8c820068 	lw	v0,104(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    12fc:	8c830078 	lw	v1,120(a0)
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1300:	8c850018 	lw	a1,24(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1304:	000e7903 	sra	t7,t6,0x4
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1308:	000db903 	sra	s7,t5,0x4
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    130c:	000cb103 	sra	s6,t4,0x4
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1310:	000ba903 	sra	s5,t3,0x4
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1314:	000aa103 	sra	s4,t2,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1318:	00099903 	sra	s3,t1,0x4
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    131c:	00089103 	sra	s2,t0,0x4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1320:	00078903 	sra	s1,a3,0x4
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1324:	00068103 	sra	s0,a2,0x4
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1328:	0002c903 	sra	t9,v0,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    132c:	0003f103 	sra	s8,v1,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1330:	000f7900 	sll	t7,t7,0x4
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1334:	0017b900 	sll	s7,s7,0x4
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1338:	0016b100 	sll	s6,s6,0x4
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    133c:	0015a900 	sll	s5,s5,0x4
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1340:	0014a100 	sll	s4,s4,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1344:	00139900 	sll	s3,s3,0x4
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1348:	00129100 	sll	s2,s2,0x4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    134c:	00118900 	sll	s1,s1,0x4
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1350:	00108100 	sll	s0,s0,0x4
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1354:	3042000f 	andi	v0,v0,0xf
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1358:	001ef100 	sll	s8,s8,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    135c:	31ce000f 	andi	t6,t6,0xf
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1360:	31ad000f 	andi	t5,t5,0xf
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1364:	318c000f 	andi	t4,t4,0xf
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1368:	316b000f 	andi	t3,t3,0xf
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    136c:	314a000f 	andi	t2,t2,0xf
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1370:	3129000f 	andi	t1,t1,0xf
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1374:	3108000f 	andi	t0,t0,0xf
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1378:	30e7000f 	andi	a3,a3,0xf
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    137c:	30c6000f 	andi	a2,a2,0xf
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1380:	0019c900 	sll	t9,t9,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1384:	3063000f 	andi	v1,v1,0xf
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1388:	0322c821 	addu	t9,t9,v0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    138c:	0005c103 	sra	t8,a1,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1390:	01ee7021 	addu	t6,t7,t6
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1394:	02ed6821 	addu	t5,s7,t5
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1398:	02cc6021 	addu	t4,s6,t4
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    139c:	02ab5821 	addu	t3,s5,t3
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    13a0:	028a5021 	addu	t2,s4,t2
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    13a4:	02694821 	addu	t1,s3,t1
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    13a8:	02484021 	addu	t0,s2,t0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    13ac:	02273821 	addu	a3,s1,a3
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    13b0:	02063021 	addu	a2,s0,a2
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    13b4:	03c31821 	addu	v1,s8,v1
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    13b8:	3c020000 	lui	v0,0x0
    13bc:	24420000 	addiu	v0,v0,0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    13c0:	0018c100 	sll	t8,t8,0x4
    13c4:	30a5000f 	andi	a1,a1,0xf
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    13c8:	000e7080 	sll	t6,t6,0x2
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    13cc:	000d6880 	sll	t5,t5,0x2
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    13d0:	000c6080 	sll	t4,t4,0x2
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    13d4:	000b5880 	sll	t3,t3,0x2
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    13d8:	000a5080 	sll	t2,t2,0x2
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    13dc:	00094880 	sll	t1,t1,0x2
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    13e0:	00084080 	sll	t0,t0,0x2
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    13e4:	00073880 	sll	a3,a3,0x2
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    13e8:	00063080 	sll	a2,a2,0x2
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    13ec:	00031880 	sll	v1,v1,0x2
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    13f0:	01a26821 	addu	t5,t5,v0
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    13f4:	01826021 	addu	t4,t4,v0
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    13f8:	01625821 	addu	t3,t3,v0
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    13fc:	01425021 	addu	t2,t2,v0
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1400:	01224821 	addu	t1,t1,v0
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1404:	01024021 	addu	t0,t0,v0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1408:	00e23821 	addu	a3,a3,v0
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    140c:	00c23021 	addu	a2,a2,v0
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1410:	03052821 	addu	a1,t8,a1
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1414:	01c27021 	addu	t6,t6,v0
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1418:	00621821 	addu	v1,v1,v0
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    141c:	8daf0000 	lw	t7,0(t5)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1420:	8dce0000 	lw	t6,0(t6)
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1424:	8d8d0000 	lw	t5,0(t4)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1428:	8c630000 	lw	v1,0(v1)
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    142c:	8d6c0000 	lw	t4,0(t3)
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1430:	0019c080 	sll	t8,t9,0x2
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1434:	8d4b0000 	lw	t3,0(t2)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1438:	00052880 	sll	a1,a1,0x2
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    143c:	8d2a0000 	lw	t2,0(t1)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1440:	8d090000 	lw	t1,0(t0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1444:	8ce80000 	lw	t0,0(a3)
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1448:	8cc70000 	lw	a3,0(a2)
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    144c:	00a22821 	addu	a1,a1,v0
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1450:	0302c021 	addu	t8,t8,v0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1454:	8ca60000 	lw	a2,0(a1)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1458:	afa30000 	sw	v1,0(sp)
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    145c:	8f050000 	lw	a1,0(t8)
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1460:	ac8f0074 	sw	t7,116(a0)
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1464:	ac8d0064 	sw	t5,100(a0)
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1468:	ac8c0054 	sw	t4,84(a0)
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    146c:	ac8b0044 	sw	t3,68(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1470:	ac8a0034 	sw	t2,52(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1474:	ac890024 	sw	t1,36(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1478:	ac880014 	sw	t0,20(a0)
      statemt[1] = temp;
    147c:	ac8e0004 	sw	t6,4(a0)

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1480:	ac870078 	sw	a3,120(a0)
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1484:	8c8e0008 	lw	t6,8(a0)

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1488:	8c8f0038 	lw	t7,56(a0)
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    148c:	8c8d0058 	lw	t5,88(a0)
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1490:	8c8c0028 	lw	t4,40(a0)
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    1494:	8c8b007c 	lw	t3,124(a0)
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1498:	8c8a003c 	lw	t2,60(a0)
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    149c:	8c89006c 	lw	t1,108(a0)
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    14a0:	8c88002c 	lw	t0,44(a0)
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    14a4:	8c87005c 	lw	a3,92(a0)
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    14a8:	8c83004c 	lw	v1,76(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    14ac:	ac860048 	sw	a2,72(a0)
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    14b0:	ac850018 	sw	a1,24(a0)
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    14b4:	8c86001c 	lw	a2,28(a0)
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    14b8:	8c85000c 	lw	a1,12(a0)
      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    14bc:	000eb903 	sra	s7,t6,0x4
    14c0:	0017b900 	sll	s7,s7,0x4
    14c4:	31ce000f 	andi	t6,t6,0xf

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    14c8:	000ff103 	sra	s8,t7,0x4
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    14cc:	000db103 	sra	s6,t5,0x4
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    14d0:	000ca903 	sra	s5,t4,0x4
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    14d4:	000ba103 	sra	s4,t3,0x4
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    14d8:	000a9903 	sra	s3,t2,0x4
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    14dc:	00099103 	sra	s2,t1,0x4
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    14e0:	00088903 	sra	s1,t0,0x4
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    14e4:	00078103 	sra	s0,a3,0x4
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    14e8:	0006c903 	sra	t9,a2,0x4
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    14ec:	0005c103 	sra	t8,a1,0x4
      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    14f0:	02ee7021 	addu	t6,s7,t6
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    14f4:	0003b903 	sra	s7,v1,0x4

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    14f8:	001ef100 	sll	s8,s8,0x4
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    14fc:	00129100 	sll	s2,s2,0x4
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1500:	00118900 	sll	s1,s1,0x4
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1504:	00108100 	sll	s0,s0,0x4
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1508:	0019c900 	sll	t9,t9,0x4
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    150c:	0018c100 	sll	t8,t8,0x4

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1510:	31ef000f 	andi	t7,t7,0xf
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1514:	31ad000f 	andi	t5,t5,0xf
    1518:	0016b100 	sll	s6,s6,0x4
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    151c:	318c000f 	andi	t4,t4,0xf
    1520:	0015a900 	sll	s5,s5,0x4
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    1524:	316b000f 	andi	t3,t3,0xf
    1528:	0014a100 	sll	s4,s4,0x4
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    152c:	314a000f 	andi	t2,t2,0xf
    1530:	00139900 	sll	s3,s3,0x4
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    1534:	3129000f 	andi	t1,t1,0xf
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1538:	3108000f 	andi	t0,t0,0xf
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    153c:	30e7000f 	andi	a3,a3,0xf
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1540:	30c6000f 	andi	a2,a2,0xf
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1544:	30a5000f 	andi	a1,a1,0xf
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1548:	3063000f 	andi	v1,v1,0xf
    154c:	0017b900 	sll	s7,s7,0x4

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1550:	03cf7821 	addu	t7,s8,t7
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    1554:	02494821 	addu	t1,s2,t1
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1558:	02284021 	addu	t0,s1,t0
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    155c:	02073821 	addu	a3,s0,a3
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1560:	03263021 	addu	a2,t9,a2
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1564:	03052821 	addu	a1,t8,a1
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1568:	02cd6821 	addu	t5,s6,t5
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    156c:	02ac6021 	addu	t4,s5,t4
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    1570:	028b5821 	addu	t3,s4,t3
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1574:	026a5021 	addu	t2,s3,t2
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1578:	02e31821 	addu	v1,s7,v1

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    157c:	000f7880 	sll	t7,t7,0x2
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1580:	000e7080 	sll	t6,t6,0x2
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1584:	000d6880 	sll	t5,t5,0x2
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1588:	000c6080 	sll	t4,t4,0x2
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    158c:	000b5880 	sll	t3,t3,0x2
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1590:	000a5080 	sll	t2,t2,0x2
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    1594:	00094880 	sll	t1,t1,0x2
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1598:	00084080 	sll	t0,t0,0x2
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    159c:	00073880 	sll	a3,a3,0x2
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    15a0:	00063080 	sll	a2,a2,0x2
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    15a4:	00052880 	sll	a1,a1,0x2
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    15a8:	00031880 	sll	v1,v1,0x2

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    15ac:	01e27821 	addu	t7,t7,v0
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    15b0:	01c27021 	addu	t6,t6,v0
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    15b4:	01a26821 	addu	t5,t5,v0
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    15b8:	01826021 	addu	t4,t4,v0
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    15bc:	00621821 	addu	v1,v1,v0
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    15c0:	01625821 	addu	t3,t3,v0
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    15c4:	01425021 	addu	t2,t2,v0
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    15c8:	01224821 	addu	t1,t1,v0
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    15cc:	01024021 	addu	t0,t0,v0
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    15d0:	00e23821 	addu	a3,a3,v0
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    15d4:	00c23021 	addu	a2,a2,v0
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    15d8:	00a22821 	addu	a1,a1,v0

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    15dc:	8dfe0000 	lw	s8,0(t7)
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    15e0:	8d4a0000 	lw	t2,0(t2)
      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    15e4:	8dcf0000 	lw	t7,0(t6)
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    15e8:	8d290000 	lw	t1,0(t1)
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    15ec:	8dae0000 	lw	t6,0(t5)

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    15f0:	8d080000 	lw	t0,0(t0)
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    15f4:	8d8d0000 	lw	t5,0(t4)
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    15f8:	8ce70000 	lw	a3,0(a3)
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    15fc:	8cc60000 	lw	a2,0(a2)
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1600:	8ca50000 	lw	a1,0(a1)
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1604:	8c6c0000 	lw	t4,0(v1)
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    1608:	8d6b0000 	lw	t3,0(t3)
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;
    160c:	8fa30000 	lw	v1,0(sp)
      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1610:	ac8f0038 	sw	t7,56(a0)
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1614:	ac8e0008 	sw	t6,8(a0)
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1618:	ac8d0058 	sw	t5,88(a0)
      statemt[10] = temp;
    161c:	ac830028 	sw	v1,40(a0)

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1620:	ac8a007c 	sw	t2,124(a0)

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1624:	ac9e0068 	sw	s8,104(a0)
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
    1628:	ac8b003c 	sw	t3,60(a0)
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    162c:	8c8b0000 	lw	t3,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1630:	8c8a0010 	lw	t2,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    1634:	8c830070 	lw	v1,112(a0)

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1638:	ac88006c 	sw	t0,108(a0)
      statemt[11] = temp;
    163c:	ac89002c 	sw	t1,44(a0)
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1640:	8c880030 	lw	t0,48(a0)
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1644:	8c890020 	lw	t1,32(a0)
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1648:	ac86005c 	sw	a2,92(a0)
      statemt[7] = temp;
    164c:	ac87001c 	sw	a3,28(a0)
      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1650:	8c860050 	lw	a2,80(a0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1654:	8c870040 	lw	a3,64(a0)
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1658:	ac85004c 	sw	a1,76(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    165c:	8c850060 	lw	a1,96(a0)
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1660:	000bc903 	sra	t9,t3,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1664:	000a9103 	sra	s2,t2,0x4
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1668:	0009c103 	sra	t8,t1,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    166c:	00087903 	sra	t7,t0,0x4
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1670:	00077103 	sra	t6,a3,0x4
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1674:	00066903 	sra	t5,a2,0x4
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    1678:	00058903 	sra	s1,a1,0x4
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    167c:	00038103 	sra	s0,v1,0x4
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1680:	316b000f 	andi	t3,t3,0xf
    1684:	0019c900 	sll	t9,t9,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1688:	314a000f 	andi	t2,t2,0xf
    168c:	00129100 	sll	s2,s2,0x4
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1690:	3129000f 	andi	t1,t1,0xf
    1694:	0018c100 	sll	t8,t8,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1698:	3108000f 	andi	t0,t0,0xf
    169c:	000f7900 	sll	t7,t7,0x4
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    16a0:	30e7000f 	andi	a3,a3,0xf
    16a4:	000e7100 	sll	t6,t6,0x4
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    16a8:	30c6000f 	andi	a2,a2,0xf
    16ac:	000d6900 	sll	t5,t5,0x4
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    16b0:	30a5000f 	andi	a1,a1,0xf
    16b4:	00118900 	sll	s1,s1,0x4
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    16b8:	3063000f 	andi	v1,v1,0xf
    16bc:	00108100 	sll	s0,s0,0x4
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    16c0:	032b5821 	addu	t3,t9,t3
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    16c4:	024a5021 	addu	t2,s2,t2
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    16c8:	03094821 	addu	t1,t8,t1
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    16cc:	01e84021 	addu	t0,t7,t0
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    16d0:	01c73821 	addu	a3,t6,a3
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    16d4:	01a63021 	addu	a2,t5,a2
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    16d8:	02252821 	addu	a1,s1,a1
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    16dc:	02031821 	addu	v1,s0,v1
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    16e0:	000b5880 	sll	t3,t3,0x2
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    16e4:	000a5080 	sll	t2,t2,0x2
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    16e8:	00094880 	sll	t1,t1,0x2
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    16ec:	00084080 	sll	t0,t0,0x2
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    16f0:	00073880 	sll	a3,a3,0x2
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    16f4:	00063080 	sll	a2,a2,0x2
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    16f8:	00052880 	sll	a1,a1,0x2
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    16fc:	00031880 	sll	v1,v1,0x2
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1700:	01625821 	addu	t3,t3,v0
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1704:	01425021 	addu	t2,t2,v0
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1708:	01224821 	addu	t1,t1,v0
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    170c:	01024021 	addu	t0,t0,v0
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1710:	00e23821 	addu	a3,a3,v0
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1714:	00c23021 	addu	a2,a2,v0
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    1718:	00a22821 	addu	a1,a1,v0
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    171c:	00621021 	addu	v0,v1,v0
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1720:	8d6b0000 	lw	t3,0(t3)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1724:	8d4a0000 	lw	t2,0(t2)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1728:	8d290000 	lw	t1,0(t1)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    172c:	8d080000 	lw	t0,0(t0)
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1730:	8ce70000 	lw	a3,0(a3)
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1734:	8cc60000 	lw	a2,0(a2)
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    1738:	8ca50000 	lw	a1,0(a1)
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    173c:	8c420000 	lw	v0,0(v0)
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;
    1740:	ac8c000c 	sw	t4,12(a0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1744:	ac8b0000 	sw	t3,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1748:	ac8a0010 	sw	t2,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    174c:	ac890020 	sw	t1,32(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1750:	ac880030 	sw	t0,48(a0)
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1754:	ac870040 	sw	a3,64(a0)
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1758:	ac860050 	sw	a2,80(a0)
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    175c:	ac850060 	sw	a1,96(a0)
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    1760:	08000417 	j	105c <InversShiftRow_ByteSub+0x44>
    1764:	ac820070 	sw	v0,112(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1768:	8c8e0054 	lw	t6,84(a0)
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    176c:	8c8d0044 	lw	t5,68(a0)
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1770:	8c8c0034 	lw	t4,52(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1774:	8c8b0024 	lw	t3,36(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1778:	8c8a0014 	lw	t2,20(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    177c:	8c890004 	lw	t1,4(a0)
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1780:	8c880058 	lw	t0,88(a0)
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1784:	8c870038 	lw	a3,56(a0)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1788:	8c860018 	lw	a2,24(a0)
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    178c:	8c850028 	lw	a1,40(a0)
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1790:	8c820008 	lw	v0,8(a0)

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1794:	8c830048 	lw	v1,72(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1798:	000ec103 	sra	t8,t6,0x4
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    179c:	000db903 	sra	s7,t5,0x4
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    17a0:	000cb103 	sra	s6,t4,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    17a4:	000ba903 	sra	s5,t3,0x4
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    17a8:	000aa103 	sra	s4,t2,0x4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    17ac:	00099903 	sra	s3,t1,0x4
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    17b0:	00089103 	sra	s2,t0,0x4
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    17b4:	00078903 	sra	s1,a3,0x4
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    17b8:	00068103 	sra	s0,a2,0x4
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    17bc:	0005c903 	sra	t9,a1,0x4
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    17c0:	00027903 	sra	t7,v0,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    17c4:	0018c100 	sll	t8,t8,0x4
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    17c8:	0017b900 	sll	s7,s7,0x4
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    17cc:	0016b100 	sll	s6,s6,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    17d0:	0015a900 	sll	s5,s5,0x4
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    17d4:	0014a100 	sll	s4,s4,0x4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    17d8:	00139900 	sll	s3,s3,0x4
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    17dc:	00129100 	sll	s2,s2,0x4
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    17e0:	00118900 	sll	s1,s1,0x4
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    17e4:	00108100 	sll	s0,s0,0x4
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    17e8:	0019c900 	sll	t9,t9,0x4
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    17ec:	3042000f 	andi	v0,v0,0xf
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    17f0:	31ce000f 	andi	t6,t6,0xf
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    17f4:	31ad000f 	andi	t5,t5,0xf
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    17f8:	318c000f 	andi	t4,t4,0xf
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    17fc:	316b000f 	andi	t3,t3,0xf
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1800:	314a000f 	andi	t2,t2,0xf
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1804:	3129000f 	andi	t1,t1,0xf
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1808:	3108000f 	andi	t0,t0,0xf
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    180c:	30e7000f 	andi	a3,a3,0xf
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1810:	30c6000f 	andi	a2,a2,0xf
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1814:	30a5000f 	andi	a1,a1,0xf
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1818:	000f7900 	sll	t7,t7,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    181c:	030e7021 	addu	t6,t8,t6
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1820:	02ed6821 	addu	t5,s7,t5
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1824:	02cc6021 	addu	t4,s6,t4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1828:	02ab5821 	addu	t3,s5,t3
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    182c:	028a5021 	addu	t2,s4,t2
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1830:	02694821 	addu	t1,s3,t1
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1834:	02484021 	addu	t0,s2,t0
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1838:	02273821 	addu	a3,s1,a3
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    183c:	02063021 	addu	a2,s0,a2
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1840:	0003f103 	sra	s8,v1,0x4
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1844:	03252821 	addu	a1,t9,a1
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1848:	01e27821 	addu	t7,t7,v0
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    184c:	3c020000 	lui	v0,0x0
    1850:	24420000 	addiu	v0,v0,0

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1854:	001ef100 	sll	s8,s8,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1858:	000e7080 	sll	t6,t6,0x2
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    185c:	000d6880 	sll	t5,t5,0x2
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1860:	000c6080 	sll	t4,t4,0x2
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1864:	000b5880 	sll	t3,t3,0x2
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1868:	000a5080 	sll	t2,t2,0x2
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    186c:	00094880 	sll	t1,t1,0x2
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1870:	00084080 	sll	t0,t0,0x2
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1874:	00073880 	sll	a3,a3,0x2
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1878:	00063080 	sll	a2,a2,0x2
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    187c:	3063000f 	andi	v1,v1,0xf
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1880:	00052880 	sll	a1,a1,0x2
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1884:	000f7880 	sll	t7,t7,0x2
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1888:	01a26821 	addu	t5,t5,v0
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    188c:	01826021 	addu	t4,t4,v0
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1890:	01625821 	addu	t3,t3,v0
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1894:	01425021 	addu	t2,t2,v0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1898:	01224821 	addu	t1,t1,v0
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    189c:	00e23821 	addu	a3,a3,v0
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    18a0:	00c23021 	addu	a2,a2,v0
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    18a4:	00a22821 	addu	a1,a1,v0
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    18a8:	01e27821 	addu	t7,t7,v0
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    18ac:	01c27021 	addu	t6,t6,v0
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    18b0:	01024021 	addu	t0,t0,v0
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    18b4:	03c31821 	addu	v1,s8,v1
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    18b8:	8db80000 	lw	t8,0(t5)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    18bc:	8dce0000 	lw	t6,0(t6)
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    18c0:	8d8d0000 	lw	t5,0(t4)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    18c4:	8d080000 	lw	t0,0(t0)
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    18c8:	8d6c0000 	lw	t4,0(t3)

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    18cc:	00031880 	sll	v1,v1,0x2
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    18d0:	8d4b0000 	lw	t3,0(t2)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    18d4:	8d2a0000 	lw	t2,0(t1)
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    18d8:	8ce90000 	lw	t1,0(a3)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    18dc:	8cc70000 	lw	a3,0(a2)
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    18e0:	8ca60000 	lw	a2,0(a1)
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    18e4:	8de50000 	lw	a1,0(t7)

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    18e8:	00621821 	addu	v1,v1,v0
    18ec:	8c6f0000 	lw	t7,0(v1)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    18f0:	ac980054 	sw	t8,84(a0)
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    18f4:	ac8d0044 	sw	t5,68(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    18f8:	ac8c0034 	sw	t4,52(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    18fc:	ac8b0024 	sw	t3,36(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1900:	ac8a0014 	sw	t2,20(a0)
      statemt[1] = temp;
    1904:	ac8e0004 	sw	t6,4(a0)

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1908:	ac890058 	sw	t1,88(a0)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    190c:	ac870038 	sw	a3,56(a0)
      statemt[6] = temp;
    1910:	ac880018 	sw	t0,24(a0)
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1914:	ac860048 	sw	a2,72(a0)
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1918:	8c8e003c 	lw	t6,60(a0)
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    191c:	8c8d000c 	lw	t5,12(a0)
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1920:	8c8c004c 	lw	t4,76(a0)
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1924:	8c8b001c 	lw	t3,28(a0)
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1928:	8c8a005c 	lw	t2,92(a0)
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    192c:	8c89002c 	lw	t1,44(a0)
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1930:	8c880000 	lw	t0,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1934:	8c870010 	lw	a3,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1938:	8c860020 	lw	a2,32(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    193c:	8c830040 	lw	v1,64(a0)
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1940:	ac850028 	sw	a1,40(a0)
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1944:	8c850030 	lw	a1,48(a0)
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1948:	000ef103 	sra	s8,t6,0x4
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    194c:	000db903 	sra	s7,t5,0x4
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1950:	000cb103 	sra	s6,t4,0x4
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1954:	000ba903 	sra	s5,t3,0x4
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1958:	000aa103 	sra	s4,t2,0x4
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    195c:	00099903 	sra	s3,t1,0x4
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1960:	00089103 	sra	s2,t0,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1964:	00078903 	sra	s1,a3,0x4
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1968:	00068103 	sra	s0,a2,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    196c:	0005c903 	sra	t9,a1,0x4
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1970:	0003c103 	sra	t8,v1,0x4
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1974:	31ce000f 	andi	t6,t6,0xf
    1978:	001ef100 	sll	s8,s8,0x4
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    197c:	31ad000f 	andi	t5,t5,0xf
    1980:	0017b900 	sll	s7,s7,0x4
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1984:	318c000f 	andi	t4,t4,0xf
    1988:	0016b100 	sll	s6,s6,0x4
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    198c:	316b000f 	andi	t3,t3,0xf
    1990:	0015a900 	sll	s5,s5,0x4
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1994:	314a000f 	andi	t2,t2,0xf
    1998:	0014a100 	sll	s4,s4,0x4
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    199c:	3129000f 	andi	t1,t1,0xf
    19a0:	00139900 	sll	s3,s3,0x4
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    19a4:	3108000f 	andi	t0,t0,0xf
    19a8:	00129100 	sll	s2,s2,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    19ac:	30e7000f 	andi	a3,a3,0xf
    19b0:	00118900 	sll	s1,s1,0x4
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    19b4:	30c6000f 	andi	a2,a2,0xf
    19b8:	00108100 	sll	s0,s0,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    19bc:	30a5000f 	andi	a1,a1,0xf
    19c0:	0019c900 	sll	t9,t9,0x4
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    19c4:	3063000f 	andi	v1,v1,0xf
    19c8:	0018c100 	sll	t8,t8,0x4
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    19cc:	03ce7021 	addu	t6,s8,t6
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    19d0:	02ed6821 	addu	t5,s7,t5
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    19d4:	02cc6021 	addu	t4,s6,t4
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    19d8:	02ab5821 	addu	t3,s5,t3
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    19dc:	028a5021 	addu	t2,s4,t2
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    19e0:	02694821 	addu	t1,s3,t1
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    19e4:	02484021 	addu	t0,s2,t0
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    19e8:	02273821 	addu	a3,s1,a3
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    19ec:	02063021 	addu	a2,s0,a2
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    19f0:	03252821 	addu	a1,t9,a1
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    19f4:	03031821 	addu	v1,t8,v1
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    19f8:	000e7080 	sll	t6,t6,0x2
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    19fc:	000d6880 	sll	t5,t5,0x2
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1a00:	000c6080 	sll	t4,t4,0x2
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1a04:	000b5880 	sll	t3,t3,0x2
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1a08:	000a5080 	sll	t2,t2,0x2
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1a0c:	00094880 	sll	t1,t1,0x2
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1a10:	00084080 	sll	t0,t0,0x2
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1a14:	00073880 	sll	a3,a3,0x2
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1a18:	00063080 	sll	a2,a2,0x2
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1a1c:	00052880 	sll	a1,a1,0x2
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1a20:	00031880 	sll	v1,v1,0x2
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1a24:	01c27021 	addu	t6,t6,v0
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1a28:	01a26821 	addu	t5,t5,v0
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1a2c:	01826021 	addu	t4,t4,v0
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1a30:	01625821 	addu	t3,t3,v0
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1a34:	01425021 	addu	t2,t2,v0
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1a38:	01224821 	addu	t1,t1,v0
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1a3c:	01024021 	addu	t0,t0,v0
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1a40:	00e23821 	addu	a3,a3,v0
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1a44:	00c23021 	addu	a2,a2,v0
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1a48:	00a22821 	addu	a1,a1,v0
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1a4c:	00621821 	addu	v1,v1,v0
    1a50:	8c630000 	lw	v1,0(v1)
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1a54:	8dce0000 	lw	t6,0(t6)
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1a58:	8dad0000 	lw	t5,0(t5)
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1a5c:	8d8c0000 	lw	t4,0(t4)
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1a60:	8d6b0000 	lw	t3,0(t3)
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1a64:	8d4a0000 	lw	t2,0(t2)
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1a68:	8d290000 	lw	t1,0(t1)
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1a6c:	8d080000 	lw	t0,0(t0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1a70:	8ce70000 	lw	a3,0(a3)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1a74:	8cc60000 	lw	a2,0(a2)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1a78:	8ca50000 	lw	a1,0(a1)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;
    1a7c:	ac8f0008 	sw	t7,8(a0)

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1a80:	ac8d003c 	sw	t5,60(a0)
      statemt[3] = temp;
    1a84:	ac8e000c 	sw	t6,12(a0)
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1a88:	ac8b004c 	sw	t3,76(a0)
      statemt[7] = temp;
    1a8c:	ac8c001c 	sw	t4,28(a0)
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1a90:	ac89005c 	sw	t1,92(a0)
      statemt[11] = temp;
    1a94:	ac8a002c 	sw	t2,44(a0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1a98:	ac880000 	sw	t0,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1a9c:	ac870010 	sw	a3,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1aa0:	ac860020 	sw	a2,32(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1aa4:	ac850030 	sw	a1,48(a0)
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1aa8:	ac830040 	sw	v1,64(a0)
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1aac:	8c830050 	lw	v1,80(a0)
    1ab0:	00000000 	sll	zero,zero,0x0
    1ab4:	00032903 	sra	a1,v1,0x4
    1ab8:	00052900 	sll	a1,a1,0x4
    1abc:	3063000f 	andi	v1,v1,0xf
    1ac0:	00a31821 	addu	v1,a1,v1
    1ac4:	00031880 	sll	v1,v1,0x2
    1ac8:	00621021 	addu	v0,v1,v0
    1acc:	8c420000 	lw	v0,0(v0)
      break;
    1ad0:	08000417 	j	105c <InversShiftRow_ByteSub+0x44>
    1ad4:	ac820050 	sw	v0,80(a0)

00001ad8 <MixColumn_AddRoundKey>:
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    1ad8:	18a000a9 	blez	a1,1d80 <MixColumn_AddRoundKey+0x2a8>
    1adc:	27bdff80 	addiu	sp,sp,-128
    }
}

/* ******** MixColumn ********** */
int
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
    1ae0:	00c50018 	mult	a2,a1
    1ae4:	3c060000 	lui	a2,0x0
    1ae8:	00052900 	sll	a1,a1,0x4
    1aec:	24c60000 	addiu	a2,a2,0
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    1af0:	03a03821 	addu	a3,sp,zero
    }
}

/* ******** MixColumn ********** */
int
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
    1af4:	03a52821 	addu	a1,sp,a1
    1af8:	03a01021 	addu	v0,sp,zero
    1afc:	00804021 	addu	t0,a0,zero
  register int x;

  for (j = 0; j < nb; ++j)
    {
      ret[j * 4] = (statemt[j * 4] << 1);
      if ((ret[j * 4] >> 8) == 1)
    1b00:	24030001 	addiu	v1,zero,1
    }
}

/* ******** MixColumn ********** */
int
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
    1b04:	00004812 	mflo	t1
    1b08:	25290168 	addiu	t1,t1,360
    1b0c:	00094880 	sll	t1,t1,0x2
    1b10:	08000706 	j	1c18 <MixColumn_AddRoundKey+0x140>
    1b14:	00c93021 	addu	a2,a2,t1
  for (j = 0; j < nb; ++j)
    {
      ret[j * 4] = (statemt[j * 4] << 1);
      if ((ret[j * 4] >> 8) == 1)
	ret[j * 4] ^= 283;
      x = statemt[1 + j * 4];
    1b18:	8d0c0004 	lw	t4,4(t0)
    1b1c:	00000000 	sll	zero,zero,0x0
      x ^= (x << 1);
    1b20:	000c5840 	sll	t3,t4,0x1
    1b24:	016c5026 	xor	t2,t3,t4
      if ((x >> 8) == 1)
    1b28:	000a6a03 	sra	t5,t2,0x8
    1b2c:	11a30049 	beq	t5,v1,1c54 <MixColumn_AddRoundKey+0x17c>
    1b30:	01e04821 	addu	t1,t7,zero
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
    1b34:	012a4826 	xor	t1,t1,t2
    1b38:	ac490000 	sw	t1,0(v0)
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];
    1b3c:	8d0d0008 	lw	t5,8(t0)
    1b40:	8d18000c 	lw	t8,12(t0)
    1b44:	8ccafa60 	lw	t2,-1440(a2)
    1b48:	030dc826 	xor	t9,t8,t5
    1b4c:	032a5026 	xor	t2,t9,t2
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    1b50:	01494826 	xor	t1,t2,t1
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    1b54:	000b5203 	sra	t2,t3,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    1b58:	ac490000 	sw	t1,0(v0)
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    1b5c:	1143004a 	beq	t2,v1,1c88 <MixColumn_AddRoundKey+0x1b0>
    1b60:	ac4b0004 	sw	t3,4(v0)
	ret[1 + j * 4] ^= 283;
      x = statemt[2 + j * 4];
      x ^= (x << 1);
    1b64:	000d5040 	sll	t2,t5,0x1
    1b68:	014d4826 	xor	t1,t2,t5
      if ((x >> 8) == 1)
    1b6c:	0009ca03 	sra	t9,t1,0x8
    1b70:	1323004b 	beq	t9,v1,1ca0 <MixColumn_AddRoundKey+0x1c8>
    1b74:	00000000 	sll	zero,zero,0x0
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
    1b78:	01695826 	xor	t3,t3,t1
      ret[1 + j * 4] ^=
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];
    1b7c:	8cc9fc40 	lw	t1,-960(a2)
    1b80:	030ec826 	xor	t9,t8,t6
    1b84:	03294826 	xor	t1,t9,t1
      x = statemt[2 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
    1b88:	ac4b0004 	sw	t3,4(v0)
      ret[1 + j * 4] ^=
    1b8c:	012b5826 	xor	t3,t1,t3
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    1b90:	000a4a03 	sra	t1,t2,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
    1b94:	ac4b0004 	sw	t3,4(v0)
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    1b98:	1123004c 	beq	t1,v1,1ccc <MixColumn_AddRoundKey+0x1f4>
    1b9c:	ac4a0008 	sw	t2,8(v0)
	ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
    1ba0:	00184840 	sll	t1,t8,0x1
    1ba4:	0138c026 	xor	t8,t1,t8
      if ((x >> 8) == 1)
    1ba8:	00185a03 	sra	t3,t8,0x8
    1bac:	1163004d 	beq	t3,v1,1ce4 <MixColumn_AddRoundKey+0x20c>
    1bb0:	00000000 	sll	zero,zero,0x0
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    1bb4:	8ccbfe20 	lw	t3,-480(a2)
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
    1bb8:	01585026 	xor	t2,t2,t8
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    1bbc:	018ec026 	xor	t8,t4,t6
    1bc0:	030bc026 	xor	t8,t8,t3
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
    1bc4:	ac4a0008 	sw	t2,8(v0)
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    1bc8:	00095a03 	sra	t3,t1,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
    1bcc:	030a5026 	xor	t2,t8,t2
    1bd0:	ac4a0008 	sw	t2,8(v0)
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    1bd4:	1163004e 	beq	t3,v1,1d10 <MixColumn_AddRoundKey+0x238>
    1bd8:	ac49000c 	sw	t1,12(v0)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
    1bdc:	01ee7026 	xor	t6,t7,t6
      if ((x >> 8) == 1)
    1be0:	000e5203 	sra	t2,t6,0x8
    1be4:	1143004f 	beq	t2,v1,1d24 <MixColumn_AddRoundKey+0x24c>
    1be8:	00000000 	sll	zero,zero,0x0
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    1bec:	8cca0000 	lw	t2,0(a2)
    1bf0:	01ac6026 	xor	t4,t5,t4
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
    1bf4:	012e4826 	xor	t1,t1,t6
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    1bf8:	018a6026 	xor	t4,t4,t2
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
    1bfc:	ac49000c 	sw	t1,12(v0)
      ret[3 + j * 4] ^=
    1c00:	01894826 	xor	t1,t4,t1
    1c04:	ac49000c 	sw	t1,12(v0)
    1c08:	24420010 	addiu	v0,v0,16
    1c0c:	25080010 	addiu	t0,t0,16
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    1c10:	10450050 	beq	v0,a1,1d54 <MixColumn_AddRoundKey+0x27c>
    1c14:	24c60004 	addiu	a2,a2,4
    {
      ret[j * 4] = (statemt[j * 4] << 1);
    1c18:	8d0e0000 	lw	t6,0(t0)
    1c1c:	00000000 	sll	zero,zero,0x0
    1c20:	000e7840 	sll	t7,t6,0x1
      if ((ret[j * 4] >> 8) == 1)
    1c24:	000f4a03 	sra	t1,t7,0x8
    1c28:	1523ffbb 	bne	t1,v1,1b18 <MixColumn_AddRoundKey+0x40>
    1c2c:	ac4f0000 	sw	t7,0(v0)
	ret[j * 4] ^= 283;
    1c30:	39e9011b 	xori	t1,t7,0x11b
    1c34:	ac490000 	sw	t1,0(v0)
      x = statemt[1 + j * 4];
    1c38:	8d0c0004 	lw	t4,4(t0)
    1c3c:	00000000 	sll	zero,zero,0x0
      x ^= (x << 1);
    1c40:	000c5840 	sll	t3,t4,0x1
    1c44:	016c5026 	xor	t2,t3,t4
      if ((x >> 8) == 1)
    1c48:	000a6a03 	sra	t5,t2,0x8
    1c4c:	15a3ffb9 	bne	t5,v1,1b34 <MixColumn_AddRoundKey+0x5c>
    1c50:	00000000 	sll	zero,zero,0x0
	ret[j * 4] ^= (x ^ 283);
    1c54:	394a011b 	xori	t2,t2,0x11b
    1c58:	01494826 	xor	t1,t2,t1
    1c5c:	ac490000 	sw	t1,0(v0)
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];
    1c60:	8d0d0008 	lw	t5,8(t0)
    1c64:	8d18000c 	lw	t8,12(t0)
    1c68:	8ccafa60 	lw	t2,-1440(a2)
    1c6c:	030dc826 	xor	t9,t8,t5
    1c70:	032a5026 	xor	t2,t9,t2
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    1c74:	01494826 	xor	t1,t2,t1
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    1c78:	000b5203 	sra	t2,t3,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    1c7c:	ac490000 	sw	t1,0(v0)
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    1c80:	1543ffb8 	bne	t2,v1,1b64 <MixColumn_AddRoundKey+0x8c>
    1c84:	ac4b0004 	sw	t3,4(v0)
	ret[1 + j * 4] ^= 283;
      x = statemt[2 + j * 4];
      x ^= (x << 1);
    1c88:	000d5040 	sll	t2,t5,0x1
    1c8c:	014d4826 	xor	t1,t2,t5
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
	ret[1 + j * 4] ^= 283;
    1c90:	396b011b 	xori	t3,t3,0x11b
      x = statemt[2 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
    1c94:	0009ca03 	sra	t9,t1,0x8
    1c98:	1723ffb7 	bne	t9,v1,1b78 <MixColumn_AddRoundKey+0xa0>
    1c9c:	ac4b0004 	sw	t3,4(v0)
	ret[1 + j * 4] ^= (x ^ 283);
    1ca0:	3929011b 	xori	t1,t1,0x11b
    1ca4:	012b5826 	xor	t3,t1,t3
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];
    1ca8:	8cc9fc40 	lw	t1,-960(a2)
    1cac:	030ec826 	xor	t9,t8,t6
    1cb0:	03294826 	xor	t1,t9,t1
      if ((ret[1 + j * 4] >> 8) == 1)
	ret[1 + j * 4] ^= 283;
      x = statemt[2 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
    1cb4:	ac4b0004 	sw	t3,4(v0)
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
    1cb8:	012b5826 	xor	t3,t1,t3
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    1cbc:	000a4a03 	sra	t1,t2,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
    1cc0:	ac4b0004 	sw	t3,4(v0)
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    1cc4:	1523ffb6 	bne	t1,v1,1ba0 <MixColumn_AddRoundKey+0xc8>
    1cc8:	ac4a0008 	sw	t2,8(v0)
	ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
    1ccc:	00184840 	sll	t1,t8,0x1
    1cd0:	0138c026 	xor	t8,t1,t8
      ret[1 + j * 4] ^=
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
	ret[2 + j * 4] ^= 283;
    1cd4:	394a011b 	xori	t2,t2,0x11b
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
    1cd8:	00185a03 	sra	t3,t8,0x8
    1cdc:	1563ffb5 	bne	t3,v1,1bb4 <MixColumn_AddRoundKey+0xdc>
    1ce0:	ac4a0008 	sw	t2,8(v0)
	ret[2 + j * 4] ^= (x ^ 283);
    1ce4:	3b18011b 	xori	t8,t8,0x11b
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    1ce8:	8ccbfe20 	lw	t3,-480(a2)
      if ((ret[2 + j * 4] >> 8) == 1)
	ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
    1cec:	030a5026 	xor	t2,t8,t2
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    1cf0:	018ec026 	xor	t8,t4,t6
    1cf4:	030bc026 	xor	t8,t8,t3
      if ((ret[2 + j * 4] >> 8) == 1)
	ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
    1cf8:	ac4a0008 	sw	t2,8(v0)
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    1cfc:	00095a03 	sra	t3,t1,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
    1d00:	030a5026 	xor	t2,t8,t2
    1d04:	ac4a0008 	sw	t2,8(v0)
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    1d08:	1563ffb4 	bne	t3,v1,1bdc <MixColumn_AddRoundKey+0x104>
    1d0c:	ac49000c 	sw	t1,12(v0)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
    1d10:	01ee7026 	xor	t6,t7,t6
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
	ret[3 + j * 4] ^= 283;
    1d14:	3929011b 	xori	t1,t1,0x11b
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
    1d18:	000e5203 	sra	t2,t6,0x8
    1d1c:	1543ffb3 	bne	t2,v1,1bec <MixColumn_AddRoundKey+0x114>
    1d20:	ac49000c 	sw	t1,12(v0)
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    1d24:	8cca0000 	lw	t2,0(a2)
      if ((ret[3 + j * 4] >> 8) == 1)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
    1d28:	39ce011b 	xori	t6,t6,0x11b
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    1d2c:	01ac6026 	xor	t4,t5,t4
      if ((ret[3 + j * 4] >> 8) == 1)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
    1d30:	01c94826 	xor	t1,t6,t1
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    1d34:	018a6026 	xor	t4,t4,t2
      if ((ret[3 + j * 4] >> 8) == 1)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
    1d38:	ac49000c 	sw	t1,12(v0)
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
    1d3c:	01894826 	xor	t1,t4,t1
    1d40:	ac49000c 	sw	t1,12(v0)
    1d44:	24420010 	addiu	v0,v0,16
    1d48:	25080010 	addiu	t0,t0,16
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    1d4c:	1445ffb2 	bne	v0,a1,1c18 <MixColumn_AddRoundKey+0x140>
    1d50:	24c60004 	addiu	a2,a2,4
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] = ret[j * 4];
      statemt[1 + j * 4] = ret[1 + j * 4];
    1d54:	8ce20004 	lw	v0,4(a3)
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] = ret[j * 4];
    1d58:	8ce30000 	lw	v1,0(a3)
      statemt[1 + j * 4] = ret[1 + j * 4];
    1d5c:	ac820004 	sw	v0,4(a0)
      statemt[2 + j * 4] = ret[2 + j * 4];
    1d60:	8ce20008 	lw	v0,8(a3)
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] = ret[j * 4];
    1d64:	ac830000 	sw	v1,0(a0)
      statemt[1 + j * 4] = ret[1 + j * 4];
      statemt[2 + j * 4] = ret[2 + j * 4];
    1d68:	ac820008 	sw	v0,8(a0)
      statemt[3 + j * 4] = ret[3 + j * 4];
    1d6c:	8ce2000c 	lw	v0,12(a3)
    1d70:	24e70010 	addiu	a3,a3,16
    1d74:	ac82000c 	sw	v0,12(a0)
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    1d78:	14e5fff6 	bne	a3,a1,1d54 <MixColumn_AddRoundKey+0x27c>
    1d7c:	24840010 	addiu	a0,a0,16
      statemt[1 + j * 4] = ret[1 + j * 4];
      statemt[2 + j * 4] = ret[2 + j * 4];
      statemt[3 + j * 4] = ret[3 + j * 4];
    }
  return 0;
}
    1d80:	00001021 	addu	v0,zero,zero
    1d84:	03e00008 	jr	ra
    1d88:	27bd0080 	addiu	sp,sp,128

00001d8c <AddRoundKey_InversMixColumn>:

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
{
    1d8c:	27bdff70 	addiu	sp,sp,-144
    1d90:	afb3008c 	sw	s3,140(sp)
    1d94:	afb20088 	sw	s2,136(sp)
    1d98:	afb10084 	sw	s1,132(sp)
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    1d9c:	18a0008c 	blez	a1,1fd0 <AddRoundKey_InversMixColumn+0x244>
    1da0:	afb00080 	sw	s0,128(sp)
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    1da4:	00c50018 	mult	a2,a1
    1da8:	3c030000 	lui	v1,0x0
    1dac:	24630000 	addiu	v1,v1,0
{
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    1db0:	00805021 	addu	t2,a0,zero
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    1db4:	00801021 	addu	v0,a0,zero
{
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    1db8:	00003821 	addu	a3,zero,zero
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    1dbc:	00003012 	mflo	a2
    1dc0:	00063080 	sll	a2,a2,0x2
    1dc4:	00661821 	addu	v1,v1,a2
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    1dc8:	8c660000 	lw	a2,0(v1)
    1dcc:	8c490000 	lw	t1,0(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    1dd0:	8c480004 	lw	t0,4(v0)
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    1dd4:	01263026 	xor	a2,t1,a2
    1dd8:	ac460000 	sw	a2,0(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    1ddc:	8c6601e0 	lw	a2,480(v1)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    1de0:	8c490008 	lw	t1,8(v0)
  register int x;

  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    1de4:	01063026 	xor	a2,t0,a2
    1de8:	ac460004 	sw	a2,4(v0)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    1dec:	8c6603c0 	lw	a2,960(v1)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    1df0:	8c48000c 	lw	t0,12(v0)

  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    1df4:	01263026 	xor	a2,t1,a2
    1df8:	ac460008 	sw	a2,8(v0)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    1dfc:	8c6605a0 	lw	a2,1440(v1)
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
{
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    1e00:	24e70001 	addiu	a3,a3,1
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    1e04:	01063026 	xor	a2,t0,a2
    1e08:	ac46000c 	sw	a2,12(v0)
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
{
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    1e0c:	24630004 	addiu	v1,v1,4
    1e10:	14e5ffed 	bne	a3,a1,1dc8 <AddRoundKey_InversMixColumn+0x3c>
    1e14:	24420010 	addiu	v0,v0,16
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    1e18:	00078080 	sll	s0,a3,0x2
    1e1c:	0080c821 	addu	t9,a0,zero
    1e20:	00002821 	addu	a1,zero,zero
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
    1e24:	24180004 	addiu	t8,zero,4
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    1e28:	00057880 	sll	t7,a1,0x2
    1e2c:	03af7821 	addu	t7,sp,t7
    1e30:	03207021 	addu	t6,t9,zero
    1e34:	24030001 	addiu	v1,zero,1
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
	if ((x >> 8) == 1)
    1e38:	24020001 	addiu	v0,zero,1
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
    1e3c:	8dc60000 	lw	a2,0(t6)
    1e40:	00000000 	sll	zero,zero,0x0
    1e44:	00066840 	sll	t5,a2,0x1
	if ((x >> 8) == 1)
    1e48:	000d4203 	sra	t0,t5,0x8
    1e4c:	1102007b 	beq	t0,v0,203c <AddRoundKey_InversMixColumn+0x2b0>
    1e50:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[i + j * 4];
    1e54:	01a66826 	xor	t5,t5,a2
	x = (x << 1);
    1e58:	000d6840 	sll	t5,t5,0x1
	if ((x >> 8) == 1)
    1e5c:	000d4203 	sra	t0,t5,0x8
    1e60:	1102007c 	beq	t0,v0,2054 <AddRoundKey_InversMixColumn+0x2c8>
    1e64:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[i + j * 4];
    1e68:	01a66826 	xor	t5,t5,a2
	x = (x << 1);
    1e6c:	000d6840 	sll	t5,t5,0x1
	if ((x >> 8) == 1)
    1e70:	000d3203 	sra	a2,t5,0x8
    1e74:	10c2006f 	beq	a2,v0,2034 <AddRoundKey_InversMixColumn+0x2a8>
    1e78:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
    1e7c:	30660003 	andi	a2,v1,0x3
    1e80:	00a63021 	addu	a2,a1,a2
    1e84:	00063080 	sll	a2,a2,0x2
    1e88:	00863021 	addu	a2,a0,a2
    1e8c:	8cc60000 	lw	a2,0(a2)
    1e90:	00000000 	sll	zero,zero,0x0
    1e94:	00066040 	sll	t4,a2,0x1
	if ((x >> 8) == 1)
    1e98:	000c4203 	sra	t0,t4,0x8
    1e9c:	11020063 	beq	t0,v0,202c <AddRoundKey_InversMixColumn+0x2a0>
    1ea0:	00608821 	addu	s1,v1,zero
	  x ^= 283;
	x = (x << 1);
    1ea4:	000c6040 	sll	t4,t4,0x1
	if ((x >> 8) == 1)
    1ea8:	000c4203 	sra	t0,t4,0x8
    1eac:	1102005d 	beq	t0,v0,2024 <AddRoundKey_InversMixColumn+0x298>
    1eb0:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
    1eb4:	01866026 	xor	t4,t4,a2
	x = (x << 1);
    1eb8:	000c6040 	sll	t4,t4,0x1
	if ((x >> 8) == 1)
    1ebc:	000c4203 	sra	t0,t4,0x8
    1ec0:	11020056 	beq	t0,v0,201c <AddRoundKey_InversMixColumn+0x290>
    1ec4:	00000000 	sll	zero,zero,0x0
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    1ec8:	24630001 	addiu	v1,v1,1
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
    1ecc:	30680003 	andi	t0,v1,0x3
    1ed0:	00a84021 	addu	t0,a1,t0
    1ed4:	00084080 	sll	t0,t0,0x2
    1ed8:	00884021 	addu	t0,a0,t0
    1edc:	8d080000 	lw	t0,0(t0)
    1ee0:	00000000 	sll	zero,zero,0x0
    1ee4:	00085840 	sll	t3,t0,0x1
	if ((x >> 8) == 1)
    1ee8:	000b4a03 	sra	t1,t3,0x8
    1eec:	11220049 	beq	t1,v0,2014 <AddRoundKey_InversMixColumn+0x288>
    1ef0:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    1ef4:	01685826 	xor	t3,t3,t0
	x = (x << 1);
    1ef8:	000b5840 	sll	t3,t3,0x1
	if ((x >> 8) == 1)
    1efc:	000b4a03 	sra	t1,t3,0x8
    1f00:	11220042 	beq	t1,v0,200c <AddRoundKey_InversMixColumn+0x280>
    1f04:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    1f08:	000b5840 	sll	t3,t3,0x1
	if ((x >> 8) == 1)
    1f0c:	000b4a03 	sra	t1,t3,0x8
    1f10:	1122003c 	beq	t1,v0,2004 <AddRoundKey_InversMixColumn+0x278>
    1f14:	00000000 	sll	zero,zero,0x0
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    1f18:	26290002 	addiu	t1,s1,2
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
    1f1c:	31290003 	andi	t1,t1,0x3
    1f20:	00a94821 	addu	t1,a1,t1
    1f24:	00094880 	sll	t1,t1,0x2
    1f28:	00894821 	addu	t1,a0,t1
    1f2c:	8d320000 	lw	s2,0(t1)
    1f30:	00000000 	sll	zero,zero,0x0
    1f34:	00124840 	sll	t1,s2,0x1
	if ((x >> 8) == 1)
    1f38:	00099a03 	sra	s3,t1,0x8
    1f3c:	1262002f 	beq	s3,v0,1ffc <AddRoundKey_InversMixColumn+0x270>
    1f40:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    1f44:	00094840 	sll	t1,t1,0x1
	if ((x >> 8) == 1)
    1f48:	00099a03 	sra	s3,t1,0x8
    1f4c:	12620029 	beq	s3,v0,1ff4 <AddRoundKey_InversMixColumn+0x268>
    1f50:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    1f54:	00094840 	sll	t1,t1,0x1
	if ((x >> 8) == 1)
    1f58:	00099a03 	sra	s3,t1,0x8
    1f5c:	12620023 	beq	s3,v0,1fec <AddRoundKey_InversMixColumn+0x260>
    1f60:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
    1f64:	01124026 	xor	t0,t0,s2
	ret[i + j * 4] ^= x;
    1f68:	01063026 	xor	a2,t0,a2
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    1f6c:	00cd6826 	xor	t5,a2,t5
	ret[i + j * 4] ^= x;
    1f70:	01ac6026 	xor	t4,t5,t4
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 3) % 4 + j * 4];
    1f74:	018b5826 	xor	t3,t4,t3
	ret[i + j * 4] ^= x;
    1f78:	01694826 	xor	t1,t3,t1
    1f7c:	ade90000 	sw	t1,0(t7)
    1f80:	25ce0004 	addiu	t6,t6,4
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
    1f84:	1638ffad 	bne	s1,t8,1e3c <AddRoundKey_InversMixColumn+0xb0>
    1f88:	25ef0004 	addiu	t7,t7,4
    1f8c:	24a50004 	addiu	a1,a1,4
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    1f90:	14b0ffa5 	bne	a1,s0,1e28 <AddRoundKey_InversMixColumn+0x9c>
    1f94:	27390010 	addiu	t9,t9,16
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    1f98:	00073900 	sll	a3,a3,0x4
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    1f9c:	03a01021 	addu	v0,sp,zero
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    1fa0:	03a73821 	addu	a3,sp,a3
	ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    {
      statemt[i * 4] = ret[i * 4];
      statemt[1 + i * 4] = ret[1 + i * 4];
    1fa4:	8c430004 	lw	v1,4(v0)
	x ^= statemt[(i + 3) % 4 + j * 4];
	ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    {
      statemt[i * 4] = ret[i * 4];
    1fa8:	8c440000 	lw	a0,0(v0)
      statemt[1 + i * 4] = ret[1 + i * 4];
    1fac:	ad430004 	sw	v1,4(t2)
      statemt[2 + i * 4] = ret[2 + i * 4];
    1fb0:	8c430008 	lw	v1,8(v0)
	x ^= statemt[(i + 3) % 4 + j * 4];
	ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    {
      statemt[i * 4] = ret[i * 4];
    1fb4:	ad440000 	sw	a0,0(t2)
      statemt[1 + i * 4] = ret[1 + i * 4];
      statemt[2 + i * 4] = ret[2 + i * 4];
    1fb8:	ad430008 	sw	v1,8(t2)
      statemt[3 + i * 4] = ret[3 + i * 4];
    1fbc:	8c43000c 	lw	v1,12(v0)
    1fc0:	24420010 	addiu	v0,v0,16
    1fc4:	ad43000c 	sw	v1,12(t2)
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 3) % 4 + j * 4];
	ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    1fc8:	1447fff6 	bne	v0,a3,1fa4 <AddRoundKey_InversMixColumn+0x218>
    1fcc:	254a0010 	addiu	t2,t2,16
      statemt[1 + i * 4] = ret[1 + i * 4];
      statemt[2 + i * 4] = ret[2 + i * 4];
      statemt[3 + i * 4] = ret[3 + i * 4];
    }
  return 0;
}
    1fd0:	00001021 	addu	v0,zero,zero
    1fd4:	8fb3008c 	lw	s3,140(sp)
    1fd8:	8fb20088 	lw	s2,136(sp)
    1fdc:	8fb10084 	lw	s1,132(sp)
    1fe0:	8fb00080 	lw	s0,128(sp)
    1fe4:	03e00008 	jr	ra
    1fe8:	27bd0090 	addiu	sp,sp,144
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    1fec:	080007d9 	j	1f64 <AddRoundKey_InversMixColumn+0x1d8>
    1ff0:	3929011b 	xori	t1,t1,0x11b
	x = (statemt[(i + 3) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    1ff4:	080007d5 	j	1f54 <AddRoundKey_InversMixColumn+0x1c8>
    1ff8:	3929011b 	xori	t1,t1,0x11b
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    1ffc:	080007d1 	j	1f44 <AddRoundKey_InversMixColumn+0x1b8>
    2000:	3929011b 	xori	t1,t1,0x11b
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2004:	080007c6 	j	1f18 <AddRoundKey_InversMixColumn+0x18c>
    2008:	396b011b 	xori	t3,t3,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    200c:	080007c2 	j	1f08 <AddRoundKey_InversMixColumn+0x17c>
    2010:	396b011b 	xori	t3,t3,0x11b
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2014:	080007bd 	j	1ef4 <AddRoundKey_InversMixColumn+0x168>
    2018:	396b011b 	xori	t3,t3,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    201c:	080007b2 	j	1ec8 <AddRoundKey_InversMixColumn+0x13c>
    2020:	398c011b 	xori	t4,t4,0x11b
	x = (statemt[(i + 1) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2024:	080007ad 	j	1eb4 <AddRoundKey_InversMixColumn+0x128>
    2028:	398c011b 	xori	t4,t4,0x11b
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    202c:	080007a9 	j	1ea4 <AddRoundKey_InversMixColumn+0x118>
    2030:	398c011b 	xori	t4,t4,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[i + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2034:	0800079f 	j	1e7c <AddRoundKey_InversMixColumn+0xf0>
    2038:	39ad011b 	xori	t5,t5,0x11b
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    203c:	39ad011b 	xori	t5,t5,0x11b
	x ^= statemt[i + j * 4];
    2040:	01a66826 	xor	t5,t5,a2
	x = (x << 1);
    2044:	000d6840 	sll	t5,t5,0x1
	if ((x >> 8) == 1)
    2048:	000d4203 	sra	t0,t5,0x8
    204c:	1502ff86 	bne	t0,v0,1e68 <AddRoundKey_InversMixColumn+0xdc>
    2050:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2054:	0800079a 	j	1e68 <AddRoundKey_InversMixColumn+0xdc>
    2058:	39ad011b 	xori	t5,t5,0x11b

0000205c <AddRoundKey>:
int
AddRoundKey (int statemt[32], int type, int n)
{
  int j, nb;

  switch (type)
    205c:	3c020002 	lui	v0,0x2
    2060:	3443eec0 	ori	v1,v0,0xeec0
    2064:	10a3001e 	beq	a1,v1,20e0 <AddRoundKey+0x84>
    2068:	24670001 	addiu	a3,v1,1
    206c:	00a7382a 	slt	a3,a1,a3
    2070:	14e0000f 	bnez	a3,20b0 <AddRoundKey+0x54>
    2074:	2447f4c0 	addiu	a3,v0,-2880
    2078:	3c020003 	lui	v0,0x3
    207c:	3442e880 	ori	v0,v0,0xe880
    2080:	10a20015 	beq	a1,v0,20d8 <AddRoundKey+0x7c>
    2084:	24470001 	addiu	a3,v0,1
    2088:	00a7382a 	slt	a3,a1,a3
    208c:	14e00033 	bnez	a3,215c <AddRoundKey+0x100>
    2090:	24630040 	addiu	v1,v1,64
    2094:	24430040 	addiu	v1,v0,64
    2098:	10a30011 	beq	a1,v1,20e0 <AddRoundKey+0x84>
    209c:	24420080 	addiu	v0,v0,128
    20a0:	14a20030 	bne	a1,v0,2164 <AddRoundKey+0x108>
    20a4:	00000000 	sll	zero,zero,0x0
      break;
    case 128256:
    case 192256:
    case 256256:
      nb = 8;
      break;
    20a8:	08000839 	j	20e4 <AddRoundKey+0x88>
    20ac:	24020008 	addiu	v0,zero,8
int
AddRoundKey (int statemt[32], int type, int n)
{
  int j, nb;

  switch (type)
    20b0:	10a7000b 	beq	a1,a3,20e0 <AddRoundKey+0x84>
    20b4:	2447f4c1 	addiu	a3,v0,-2879
    20b8:	00a7382a 	slt	a3,a1,a3
    20bc:	14e0002e 	bnez	a3,2178 <AddRoundKey+0x11c>
    20c0:	00000000 	sll	zero,zero,0x0
    20c4:	2442f500 	addiu	v0,v0,-2816
    20c8:	10a2fff7 	beq	a1,v0,20a8 <AddRoundKey+0x4c>
    20cc:	2463ffc0 	addiu	v1,v1,-64
    20d0:	14a30024 	bne	a1,v1,2164 <AddRoundKey+0x108>
    20d4:	00000000 	sll	zero,zero,0x0
    {
    case 128128:
    case 192128:
    case 256128:
      nb = 4;
    20d8:	08000839 	j	20e4 <AddRoundKey+0x88>
    20dc:	24020004 	addiu	v0,zero,4
      break;
    case 128192:
    case 192192:
    case 256192:
      nb = 6;
    20e0:	24020006 	addiu	v0,zero,6
  return 0;
}

/* ******** AddRoundKey ********** */
int
AddRoundKey (int statemt[32], int type, int n)
    20e4:	00460018 	mult	v0,a2
    20e8:	3c030000 	lui	v1,0x0
    20ec:	24630000 	addiu	v1,v1,0
    20f0:	00002821 	addu	a1,zero,zero
    20f4:	00003012 	mflo	a2
    20f8:	00063080 	sll	a2,a2,0x2
    20fc:	00661821 	addu	v1,v1,a2
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    2100:	8c660000 	lw	a2,0(v1)
    2104:	8c880000 	lw	t0,0(a0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    2108:	8c870004 	lw	a3,4(a0)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    210c:	01063026 	xor	a2,t0,a2
    2110:	ac860000 	sw	a2,0(a0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    2114:	8c6601e0 	lw	a2,480(v1)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    2118:	8c880008 	lw	t0,8(a0)
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    211c:	00e63026 	xor	a2,a3,a2
    2120:	ac860004 	sw	a2,4(a0)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    2124:	8c6603c0 	lw	a2,960(v1)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    2128:	8c87000c 	lw	a3,12(a0)
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    212c:	01063026 	xor	a2,t0,a2
    2130:	ac860008 	sw	a2,8(a0)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    2134:	8c6605a0 	lw	a2,1440(v1)
    case 192256:
    case 256256:
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    2138:	24a50001 	addiu	a1,a1,1
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    213c:	00e63826 	xor	a3,a3,a2
    case 192256:
    case 256256:
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    2140:	00a2302a 	slt	a2,a1,v0
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    2144:	ac87000c 	sw	a3,12(a0)
    case 192256:
    case 256256:
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    2148:	24630004 	addiu	v1,v1,4
    214c:	14c0ffec 	bnez	a2,2100 <AddRoundKey+0xa4>
    2150:	24840010 	addiu	a0,a0,16
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  return 0;
}
    2154:	03e00008 	jr	ra
    2158:	00001021 	addu	v0,zero,zero
int
AddRoundKey (int statemt[32], int type, int n)
{
  int j, nb;

  switch (type)
    215c:	10a3ffe1 	beq	a1,v1,20e4 <AddRoundKey+0x88>
    2160:	24020008 	addiu	v0,zero,8
    case 192256:
    case 256256:
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    2164:	00001021 	addu	v0,zero,zero
    2168:	1c40ffdf 	bgtz	v0,20e8 <AddRoundKey+0x8c>
    216c:	00460018 	mult	v0,a2
    2170:	08000855 	j	2154 <AddRoundKey+0xf8>
    2174:	00000000 	sll	zero,zero,0x0
int
AddRoundKey (int statemt[32], int type, int n)
{
  int j, nb;

  switch (type)
    2178:	2442f480 	addiu	v0,v0,-2944
    217c:	14a2fff9 	bne	a1,v0,2164 <AddRoundKey+0x108>
    2180:	24020004 	addiu	v0,zero,4
  return 0;
}

/* ******** AddRoundKey ********** */
int
AddRoundKey (int statemt[32], int type, int n)
    2184:	0800083a 	j	20e8 <AddRoundKey+0x8c>
    2188:	00460018 	mult	v0,a2

0000218c <decrypt>:
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
int
decrypt (int statemt[32], int key[32], int type)
{
    218c:	27bdff90 	addiu	sp,sp,-112
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "decrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_dec_statemt[16] =
    2190:	3c020000 	lui	v0,0x0
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
int
decrypt (int statemt[32], int key[32], int type)
{
    2194:	afb2005c 	sw	s2,92(sp)
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "decrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_dec_statemt[16] =
    2198:	24420878 	addiu	v0,v0,2168
    219c:	27b20010 	addiu	s2,sp,16
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
int
decrypt (int statemt[32], int key[32], int type)
{
    21a0:	afb30060 	sw	s3,96(sp)
    21a4:	afb10058 	sw	s1,88(sp)
    21a8:	afbf006c 	sw	ra,108(sp)
    21ac:	00808821 	addu	s1,a0,zero
    21b0:	afb50068 	sw	s5,104(sp)
    21b4:	afb40064 	sw	s4,100(sp)
    21b8:	afb00054 	sw	s0,84(sp)
    21bc:	00c09821 	addu	s3,a2,zero
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "decrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_dec_statemt[16] =
    21c0:	02401821 	addu	v1,s2,zero
    21c4:	24440040 	addiu	a0,v0,64
    21c8:	8c490000 	lw	t1,0(v0)
    21cc:	8c480004 	lw	t0,4(v0)
    21d0:	8c470008 	lw	a3,8(v0)
    21d4:	8c46000c 	lw	a2,12(v0)
    21d8:	24420010 	addiu	v0,v0,16
    21dc:	ac690000 	sw	t1,0(v1)
    21e0:	ac680004 	sw	t0,4(v1)
    21e4:	ac670008 	sw	a3,8(v1)
    21e8:	ac66000c 	sw	a2,12(v1)
    21ec:	1444fff6 	bne	v0,a0,21c8 <decrypt+0x3c>
    21f0:	24630010 	addiu	v1,v1,16
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);
    21f4:	0c000000 	jal	0 <KeySchedule>
    21f8:	02602021 	addu	a0,s3,zero

  switch (type)
    21fc:	3c030002 	lui	v1,0x2
    2200:	3462eec0 	ori	v0,v1,0xeec0
    2204:	12620022 	beq	s3,v0,2290 <decrypt+0x104>
    2208:	24440001 	addiu	a0,v0,1
    220c:	0264202a 	slt	a0,s3,a0
    2210:	14800010 	bnez	a0,2254 <decrypt+0xc8>
    2214:	2464f4c0 	addiu	a0,v1,-2880
    2218:	3c030003 	lui	v1,0x3
    221c:	3463e880 	ori	v1,v1,0xe880
    2220:	12630075 	beq	s3,v1,23f8 <decrypt+0x26c>
    2224:	24640001 	addiu	a0,v1,1
    2228:	0264202a 	slt	a0,s3,a0
    222c:	14800078 	bnez	a0,2410 <decrypt+0x284>
    2230:	24420040 	addiu	v0,v0,64
    2234:	24620040 	addiu	v0,v1,64
    2238:	12620085 	beq	s3,v0,2450 <decrypt+0x2c4>
    223c:	24630080 	addiu	v1,v1,128
    2240:	12630076 	beq	s3,v1,241c <decrypt+0x290>
    2244:	2402000e 	addiu	v0,zero,14
    2248:	8f860000 	lw	a2,0(gp)
      round = 14;
      nb = 8;
      break;
    }

  AddRoundKey (statemt, type, round);
    224c:	080008aa 	j	22a8 <decrypt+0x11c>
    2250:	02602821 	addu	a1,s3,zero
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);

  switch (type)
    2254:	1264000e 	beq	s3,a0,2290 <decrypt+0x104>
    2258:	2464f4c1 	addiu	a0,v1,-2879
    225c:	0264202a 	slt	a0,s3,a0
    2260:	14800073 	bnez	a0,2430 <decrypt+0x2a4>
    2264:	00000000 	sll	zero,zero,0x0
    2268:	2463f500 	addiu	v1,v1,-2816
    226c:	1263006a 	beq	s3,v1,2418 <decrypt+0x28c>
    2270:	2442ffc0 	addiu	v0,v0,-64
    2274:	1662fff4 	bne	s3,v0,2248 <decrypt+0xbc>
    2278:	2402000c 	addiu	v0,zero,12
    case 192192:
      round = 12;
      nb = 6;
      break;
    case 192128:
      round = 12;
    227c:	af820000 	sw	v0,0(gp)
      nb = 4;
    2280:	24020004 	addiu	v0,zero,4
    2284:	af820000 	sw	v0,0(gp)
      break;
    2288:	080008a9 	j	22a4 <decrypt+0x118>
    228c:	2406000c 	addiu	a2,zero,12
      round = 10;
      nb = 4;
      break;
    case 128192:
    case 192192:
      round = 12;
    2290:	2402000c 	addiu	v0,zero,12
    2294:	af820000 	sw	v0,0(gp)
      nb = 6;
    2298:	24020006 	addiu	v0,zero,6
    229c:	af820000 	sw	v0,0(gp)
      break;
    22a0:	2406000c 	addiu	a2,zero,12
      round = 14;
      nb = 8;
      break;
    }

  AddRoundKey (statemt, type, round);
    22a4:	02602821 	addu	a1,s3,zero
    22a8:	0c000000 	jal	0 <KeySchedule>
    22ac:	02202021 	addu	a0,s1,zero

  InversShiftRow_ByteSub (statemt, nb);
    22b0:	8f850000 	lw	a1,0(gp)
    22b4:	0c000000 	jal	0 <KeySchedule>
    22b8:	02202021 	addu	a0,s1,zero

  for (i = round - 1; i >= 1; --i)
    22bc:	8f900000 	lw	s0,0(gp)
    22c0:	00000000 	sll	zero,zero,0x0
    22c4:	2610ffff 	addiu	s0,s0,-1
    22c8:	1a00000b 	blez	s0,22f8 <decrypt+0x16c>
    22cc:	02602821 	addu	a1,s3,zero
    {
      AddRoundKey_InversMixColumn (statemt, nb, i);
    22d0:	8f850000 	lw	a1,0(gp)
    22d4:	02003021 	addu	a2,s0,zero
    22d8:	0c000000 	jal	0 <KeySchedule>
    22dc:	02202021 	addu	a0,s1,zero
      InversShiftRow_ByteSub (statemt, nb);
    22e0:	8f850000 	lw	a1,0(gp)

  AddRoundKey (statemt, type, round);

  InversShiftRow_ByteSub (statemt, nb);

  for (i = round - 1; i >= 1; --i)
    22e4:	2610ffff 	addiu	s0,s0,-1
    {
      AddRoundKey_InversMixColumn (statemt, nb, i);
      InversShiftRow_ByteSub (statemt, nb);
    22e8:	0c000000 	jal	0 <KeySchedule>
    22ec:	02202021 	addu	a0,s1,zero

  AddRoundKey (statemt, type, round);

  InversShiftRow_ByteSub (statemt, nb);

  for (i = round - 1; i >= 1; --i)
    22f0:	1e00fff7 	bgtz	s0,22d0 <decrypt+0x144>
    22f4:	02602821 	addu	a1,s3,zero
    {
      AddRoundKey_InversMixColumn (statemt, nb, i);
      InversShiftRow_ByteSub (statemt, nb);
    }

  AddRoundKey (statemt, type, 0);
    22f8:	02202021 	addu	a0,s1,zero
    22fc:	0c000000 	jal	0 <KeySchedule>
    2300:	00003021 	addu	a2,zero,zero

  printf ("\ndecrypto message\t");
    2304:	3c040000 	lui	a0,0x0
    2308:	0c000000 	jal	0 <KeySchedule>
    230c:	24840000 	addiu	a0,a0,0
  for (i = 0; i < ((type % 1000) / 8); ++i)
    2310:	240203e8 	addiu	v0,zero,1000
    2314:	14400002 	bnez	v0,2320 <decrypt+0x194>
    2318:	0262001a 	div	zero,s3,v0
    231c:	0007000d 	break	0x7
    2320:	00009810 	mfhi	s3
    2324:	06600032 	bltz	s3,23f0 <decrypt+0x264>
    2328:	00000000 	sll	zero,zero,0x0
    232c:	001398c3 	sra	s3,s3,0x3
    2330:	1a600018 	blez	s3,2394 <decrypt+0x208>
    2334:	00000000 	sll	zero,zero,0x0
    {
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    2338:	3c150000 	lui	s5,0x0
    }

  AddRoundKey (statemt, type, 0);

  printf ("\ndecrypto message\t");
  for (i = 0; i < ((type % 1000) / 8); ++i)
    233c:	02208021 	addu	s0,s1,zero
    2340:	0000a021 	addu	s4,zero,zero
    {
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    2344:	080008d8 	j	2360 <decrypt+0x1d4>
    2348:	26b50000 	addiu	s5,s5,0
    234c:	0c000000 	jal	0 <KeySchedule>
    2350:	02a02021 	addu	a0,s5,zero
    }

  AddRoundKey (statemt, type, 0);

  printf ("\ndecrypto message\t");
  for (i = 0; i < ((type % 1000) / 8); ++i)
    2354:	0293102a 	slt	v0,s4,s3
    2358:	1040000e 	beqz	v0,2394 <decrypt+0x208>
    235c:	26100004 	addiu	s0,s0,4
    {
      if (statemt[i] < 16)
    2360:	8e050000 	lw	a1,0(s0)
    2364:	00000000 	sll	zero,zero,0x0
    2368:	28a20010 	slti	v0,a1,16
    236c:	1040fff7 	beqz	v0,234c <decrypt+0x1c0>
    2370:	26940001 	addiu	s4,s4,1
	printf ("0");
    2374:	0c000000 	jal	0 <KeySchedule>
    2378:	24040030 	addiu	a0,zero,48
    237c:	8e050000 	lw	a1,0(s0)
      printf ("%x", statemt[i]);
    2380:	0c000000 	jal	0 <KeySchedule>
    2384:	02a02021 	addu	a0,s5,zero
    }

  AddRoundKey (statemt, type, 0);

  printf ("\ndecrypto message\t");
  for (i = 0; i < ((type % 1000) / 8); ++i)
    2388:	0293102a 	slt	v0,s4,s3
    238c:	1440fff4 	bnez	v0,2360 <decrypt+0x1d4>
    2390:	26100004 	addiu	s0,s0,4
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    2394:	8f830000 	lw	v1,0(gp)
    }

  AddRoundKey (statemt, type, 0);

  printf ("\ndecrypto message\t");
  for (i = 0; i < ((type % 1000) / 8); ++i)
    2398:	00001021 	addu	v0,zero,zero
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    239c:	24060040 	addiu	a2,zero,64
 *   NEGLIGENCE OR OTHER TORTUOUS ACTION, ARISING OUT OF OR IN CONNECTION
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
int
decrypt (int statemt[32], int key[32], int type)
    23a0:	02222821 	addu	a1,s1,v0
    23a4:	02422021 	addu	a0,s2,v0
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_dec_statemt[i]);
    23a8:	8ca50000 	lw	a1,0(a1)
    23ac:	8c840000 	lw	a0,0(a0)
    23b0:	24420004 	addiu	v0,v0,4
    23b4:	00a42026 	xor	a0,a1,a0
    23b8:	0004202b 	sltu	a0,zero,a0
    23bc:	00641821 	addu	v1,v1,a0
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    23c0:	1446fff7 	bne	v0,a2,23a0 <decrypt+0x214>
    23c4:	af830000 	sw	v1,0(gp)
    main_result += (statemt[i] != out_dec_statemt[i]);

  return 0;
}
    23c8:	8fbf006c 	lw	ra,108(sp)
    23cc:	00001021 	addu	v0,zero,zero
    23d0:	8fb50068 	lw	s5,104(sp)
    23d4:	8fb40064 	lw	s4,100(sp)
    23d8:	8fb30060 	lw	s3,96(sp)
    23dc:	8fb2005c 	lw	s2,92(sp)
    23e0:	8fb10058 	lw	s1,88(sp)
    23e4:	8fb00054 	lw	s0,84(sp)
    23e8:	03e00008 	jr	ra
    23ec:	27bd0070 	addiu	sp,sp,112
    }

  AddRoundKey (statemt, type, 0);

  printf ("\ndecrypto message\t");
  for (i = 0; i < ((type % 1000) / 8); ++i)
    23f0:	080008cb 	j	232c <decrypt+0x1a0>
    23f4:	26730007 	addiu	s3,s3,7
    case 192256:
      round = 14;
      nb = 8;
      break;
    case 256128:
      round = 14;
    23f8:	2402000e 	addiu	v0,zero,14
    23fc:	af820000 	sw	v0,0(gp)
      nb = 4;
    2400:	24020004 	addiu	v0,zero,4
    2404:	af820000 	sw	v0,0(gp)
      break;
    2408:	080008a9 	j	22a4 <decrypt+0x118>
    240c:	2406000e 	addiu	a2,zero,14
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);

  switch (type)
    2410:	1662ff8d 	bne	s3,v0,2248 <decrypt+0xbc>
    2414:	00000000 	sll	zero,zero,0x0
    case 256192:
      round = 14;
      nb = 6;
      break;
    case 256256:
      round = 14;
    2418:	2402000e 	addiu	v0,zero,14
    241c:	af820000 	sw	v0,0(gp)
      nb = 8;
    2420:	24020008 	addiu	v0,zero,8
    2424:	af820000 	sw	v0,0(gp)
      break;
    2428:	080008a9 	j	22a4 <decrypt+0x118>
    242c:	2406000e 	addiu	a2,zero,14
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);

  switch (type)
    2430:	2463f480 	addiu	v1,v1,-2944
    2434:	1663ff84 	bne	s3,v1,2248 <decrypt+0xbc>
    2438:	2402000a 	addiu	v0,zero,10
    {
    case 128128:
      round = 10;
    243c:	af820000 	sw	v0,0(gp)
      nb = 4;
    2440:	24020004 	addiu	v0,zero,4
    2444:	af820000 	sw	v0,0(gp)
      break;
    2448:	080008a9 	j	22a4 <decrypt+0x118>
    244c:	2406000a 	addiu	a2,zero,10
    case 256128:
      round = 14;
      nb = 4;
      break;
    case 256192:
      round = 14;
    2450:	2402000e 	addiu	v0,zero,14
    2454:	af820000 	sw	v0,0(gp)
      nb = 6;
    2458:	24020006 	addiu	v0,zero,6
    245c:	af820000 	sw	v0,0(gp)
      break;
    2460:	080008a9 	j	22a4 <decrypt+0x118>
    2464:	2406000e 	addiu	a2,zero,14

00002468 <encrypt>:
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
{
    2468:	27bdff98 	addiu	sp,sp,-104
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "encrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_enc_statemt[16] =
    246c:	3c020000 	lui	v0,0x0
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
{
    2470:	afb20058 	sw	s2,88(sp)
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "encrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_enc_statemt[16] =
    2474:	244208b8 	addiu	v0,v0,2232
    2478:	27b20010 	addiu	s2,sp,16
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
{
    247c:	afb3005c 	sw	s3,92(sp)
    2480:	afb10054 	sw	s1,84(sp)
    2484:	afbf0064 	sw	ra,100(sp)
    2488:	00808821 	addu	s1,a0,zero
    248c:	afb40060 	sw	s4,96(sp)
    2490:	afb00050 	sw	s0,80(sp)
    2494:	00c09821 	addu	s3,a2,zero
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "encrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_enc_statemt[16] =
    2498:	02401821 	addu	v1,s2,zero
    249c:	24440040 	addiu	a0,v0,64
    24a0:	8c490000 	lw	t1,0(v0)
    24a4:	8c480004 	lw	t0,4(v0)
    24a8:	8c470008 	lw	a3,8(v0)
    24ac:	8c46000c 	lw	a2,12(v0)
    24b0:	24420010 	addiu	v0,v0,16
    24b4:	ac690000 	sw	t1,0(v1)
    24b8:	ac680004 	sw	t0,4(v1)
    24bc:	ac670008 	sw	a3,8(v1)
    24c0:	ac66000c 	sw	a2,12(v1)
    24c4:	1444fff6 	bne	v0,a0,24a0 <encrypt+0x38>
    24c8:	24630010 	addiu	v1,v1,16
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
    24cc:	0c000000 	jal	0 <KeySchedule>
    24d0:	02602021 	addu	a0,s3,zero
  switch (type)
    24d4:	3c030002 	lui	v1,0x2
    24d8:	3462eec0 	ori	v0,v1,0xeec0
    24dc:	12620021 	beq	s3,v0,2564 <encrypt+0xfc>
    24e0:	24440001 	addiu	a0,v0,1
    24e4:	0264202a 	slt	a0,s3,a0
    24e8:	1480000f 	bnez	a0,2528 <encrypt+0xc0>
    24ec:	2464f4c0 	addiu	a0,v1,-2880
    24f0:	3c030003 	lui	v1,0x3
    24f4:	3463e880 	ori	v1,v1,0xe880
    24f8:	12630075 	beq	s3,v1,26d0 <encrypt+0x268>
    24fc:	24640001 	addiu	a0,v1,1
    2500:	0264202a 	slt	a0,s3,a0
    2504:	14800076 	bnez	a0,26e0 <encrypt+0x278>
    2508:	24420040 	addiu	v0,v0,64
    250c:	24620040 	addiu	v0,v1,64
    2510:	12620081 	beq	s3,v0,2718 <encrypt+0x2b0>
    2514:	24630080 	addiu	v1,v1,128
    2518:	16630017 	bne	s3,v1,2578 <encrypt+0x110>
    251c:	02202021 	addu	a0,s1,zero
      nb = 6;
      break;
    case 128256:
    case 192256:
    case 256256:
      round = 4;
    2520:	080009bb 	j	26ec <encrypt+0x284>
    2524:	24020004 	addiu	v0,zero,4
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
  switch (type)
    2528:	1264000e 	beq	s3,a0,2564 <encrypt+0xfc>
    252c:	2464f4c1 	addiu	a0,v1,-2879
    2530:	0264202a 	slt	a0,s3,a0
    2534:	14800071 	bnez	a0,26fc <encrypt+0x294>
    2538:	00000000 	sll	zero,zero,0x0
    253c:	2463f500 	addiu	v1,v1,-2816
    2540:	12630069 	beq	s3,v1,26e8 <encrypt+0x280>
    2544:	2442ffc0 	addiu	v0,v0,-64
    2548:	1662000b 	bne	s3,v0,2578 <encrypt+0x110>
    254c:	02202021 	addu	a0,s1,zero
    case 128128:
      round = 0;
      nb = 4;
      break;
    case 192128:
      round = 2;
    2550:	24020002 	addiu	v0,zero,2
    2554:	af820000 	sw	v0,0(gp)
      nb = 4;
    2558:	24020004 	addiu	v0,zero,4
      break;
    255c:	0800095e 	j	2578 <encrypt+0x110>
    2560:	af820000 	sw	v0,0(gp)
      round = 4;
      nb = 4;
      break;
    case 128192:
    case 192192:
      round = 2;
    2564:	24020002 	addiu	v0,zero,2
    2568:	af820000 	sw	v0,0(gp)
      nb = 6;
    256c:	24020006 	addiu	v0,zero,6
    2570:	af820000 	sw	v0,0(gp)
    case 256256:
      round = 4;
      nb = 8;
      break;
    }
  AddRoundKey (statemt, type, 0);
    2574:	02202021 	addu	a0,s1,zero
    2578:	02602821 	addu	a1,s3,zero
    257c:	0c000000 	jal	0 <KeySchedule>
    2580:	00003021 	addu	a2,zero,zero
  for (i = 1; i <= round + 9; ++i)
    2584:	8f820000 	lw	v0,0(gp)
    2588:	00000000 	sll	zero,zero,0x0
    258c:	2842fff8 	slti	v0,v0,-8
    2590:	1440000e 	bnez	v0,25cc <encrypt+0x164>
    2594:	24100001 	addiu	s0,zero,1
    {
      ByteSub_ShiftRow (statemt, nb);
    2598:	8f850000 	lw	a1,0(gp)
    259c:	0c000000 	jal	0 <KeySchedule>
    25a0:	02202021 	addu	a0,s1,zero
      MixColumn_AddRoundKey (statemt, nb, i);
    25a4:	8f850000 	lw	a1,0(gp)
    25a8:	02003021 	addu	a2,s0,zero
    25ac:	0c000000 	jal	0 <KeySchedule>
    25b0:	02202021 	addu	a0,s1,zero
      round = 4;
      nb = 8;
      break;
    }
  AddRoundKey (statemt, type, 0);
  for (i = 1; i <= round + 9; ++i)
    25b4:	8f820000 	lw	v0,0(gp)
    25b8:	26100001 	addiu	s0,s0,1
    25bc:	24420009 	addiu	v0,v0,9
    25c0:	0050102a 	slt	v0,v0,s0
    25c4:	1040fff4 	beqz	v0,2598 <encrypt+0x130>
    25c8:	00000000 	sll	zero,zero,0x0
    {
      ByteSub_ShiftRow (statemt, nb);
      MixColumn_AddRoundKey (statemt, nb, i);
    }
  ByteSub_ShiftRow (statemt, nb);
    25cc:	8f850000 	lw	a1,0(gp)
    25d0:	0c000000 	jal	0 <KeySchedule>
    25d4:	02202021 	addu	a0,s1,zero
  AddRoundKey (statemt, type, i);
    25d8:	02202021 	addu	a0,s1,zero
    25dc:	02602821 	addu	a1,s3,zero
    25e0:	0c000000 	jal	0 <KeySchedule>
    25e4:	02003021 	addu	a2,s0,zero

  printf ("encrypted message \t");
    25e8:	3c040000 	lui	a0,0x0
    25ec:	0c000000 	jal	0 <KeySchedule>
    25f0:	24840000 	addiu	a0,a0,0
  for (i = 0; i < nb * 4; ++i)
    25f4:	8f820000 	lw	v0,0(gp)
    25f8:	00000000 	sll	zero,zero,0x0
    25fc:	1840001e 	blez	v0,2678 <encrypt+0x210>
    2600:	00000000 	sll	zero,zero,0x0
    {
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    2604:	3c140000 	lui	s4,0x0
    }
  ByteSub_ShiftRow (statemt, nb);
  AddRoundKey (statemt, type, i);

  printf ("encrypted message \t");
  for (i = 0; i < nb * 4; ++i)
    2608:	02208021 	addu	s0,s1,zero
    260c:	00009821 	addu	s3,zero,zero
    {
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    2610:	0800098e 	j	2638 <encrypt+0x1d0>
    2614:	26940000 	addiu	s4,s4,0
    2618:	0c000000 	jal	0 <KeySchedule>
    261c:	02802021 	addu	a0,s4,zero
    }
  ByteSub_ShiftRow (statemt, nb);
  AddRoundKey (statemt, type, i);

  printf ("encrypted message \t");
  for (i = 0; i < nb * 4; ++i)
    2620:	8f820000 	lw	v0,0(gp)
    2624:	00000000 	sll	zero,zero,0x0
    2628:	00021080 	sll	v0,v0,0x2
    262c:	0262102a 	slt	v0,s3,v0
    2630:	10400011 	beqz	v0,2678 <encrypt+0x210>
    2634:	26100004 	addiu	s0,s0,4
    {
      if (statemt[i] < 16)
    2638:	8e050000 	lw	a1,0(s0)
    263c:	00000000 	sll	zero,zero,0x0
    2640:	28a20010 	slti	v0,a1,16
    2644:	1040fff4 	beqz	v0,2618 <encrypt+0x1b0>
    2648:	26730001 	addiu	s3,s3,1
	printf ("0");
    264c:	0c000000 	jal	0 <KeySchedule>
    2650:	24040030 	addiu	a0,zero,48
    2654:	8e050000 	lw	a1,0(s0)
      printf ("%x", statemt[i]);
    2658:	0c000000 	jal	0 <KeySchedule>
    265c:	02802021 	addu	a0,s4,zero
    }
  ByteSub_ShiftRow (statemt, nb);
  AddRoundKey (statemt, type, i);

  printf ("encrypted message \t");
  for (i = 0; i < nb * 4; ++i)
    2660:	8f820000 	lw	v0,0(gp)
    2664:	00000000 	sll	zero,zero,0x0
    2668:	00021080 	sll	v0,v0,0x2
    266c:	0262102a 	slt	v0,s3,v0
    2670:	1440fff1 	bnez	v0,2638 <encrypt+0x1d0>
    2674:	26100004 	addiu	s0,s0,4
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    2678:	8f830000 	lw	v1,0(gp)
    }
  ByteSub_ShiftRow (statemt, nb);
  AddRoundKey (statemt, type, i);

  printf ("encrypted message \t");
  for (i = 0; i < nb * 4; ++i)
    267c:	00001021 	addu	v0,zero,zero
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    2680:	24060040 	addiu	a2,zero,64
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
    2684:	02222821 	addu	a1,s1,v0
    2688:	02422021 	addu	a0,s2,v0
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_enc_statemt[i]);
    268c:	8ca50000 	lw	a1,0(a1)
    2690:	8c840000 	lw	a0,0(a0)
    2694:	24420004 	addiu	v0,v0,4
    2698:	00a42026 	xor	a0,a1,a0
    269c:	0004202b 	sltu	a0,zero,a0
    26a0:	00641821 	addu	v1,v1,a0
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    26a4:	1446fff7 	bne	v0,a2,2684 <encrypt+0x21c>
    26a8:	af830000 	sw	v1,0(gp)
    main_result += (statemt[i] != out_enc_statemt[i]);

  return 0;
}
    26ac:	8fbf0064 	lw	ra,100(sp)
    26b0:	00001021 	addu	v0,zero,zero
    26b4:	8fb40060 	lw	s4,96(sp)
    26b8:	8fb3005c 	lw	s3,92(sp)
    26bc:	8fb20058 	lw	s2,88(sp)
    26c0:	8fb10054 	lw	s1,84(sp)
    26c4:	8fb00050 	lw	s0,80(sp)
    26c8:	03e00008 	jr	ra
    26cc:	27bd0068 	addiu	sp,sp,104
    case 192128:
      round = 2;
      nb = 4;
      break;
    case 256128:
      round = 4;
    26d0:	24020004 	addiu	v0,zero,4
    26d4:	af820000 	sw	v0,0(gp)
      nb = 4;
      break;
    26d8:	0800095d 	j	2574 <encrypt+0x10c>
    26dc:	af820000 	sw	v0,0(gp)
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
  switch (type)
    26e0:	1662ffa5 	bne	s3,v0,2578 <encrypt+0x110>
    26e4:	02202021 	addu	a0,s1,zero
      nb = 6;
      break;
    case 128256:
    case 192256:
    case 256256:
      round = 4;
    26e8:	24020004 	addiu	v0,zero,4
    26ec:	af820000 	sw	v0,0(gp)
      nb = 8;
    26f0:	24020008 	addiu	v0,zero,8
      break;
    26f4:	0800095d 	j	2574 <encrypt+0x10c>
    26f8:	af820000 	sw	v0,0(gp)
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
  switch (type)
    26fc:	2463f480 	addiu	v1,v1,-2944
    2700:	1663ff9d 	bne	s3,v1,2578 <encrypt+0x110>
    2704:	02202021 	addu	a0,s1,zero
    {
    case 128128:
      round = 0;
      nb = 4;
    2708:	24020004 	addiu	v0,zero,4

  KeySchedule (type, key);
  switch (type)
    {
    case 128128:
      round = 0;
    270c:	af800000 	sw	zero,0(gp)
      nb = 4;
      break;
    2710:	0800095e 	j	2578 <encrypt+0x110>
    2714:	af820000 	sw	v0,0(gp)
    case 192192:
      round = 2;
      nb = 6;
      break;
    case 256192:
      round = 4;
    2718:	24020004 	addiu	v0,zero,4
    271c:	af820000 	sw	v0,0(gp)
      nb = 6;
    2720:	24020006 	addiu	v0,zero,6
      break;
    2724:	0800095d 	j	2574 <encrypt+0x10c>
    2728:	af820000 	sw	v0,0(gp)

0000272c <aes_main>:
#include "aes_func.c"

/* ***************** main **************************** */
int
aes_main (void)
{
    272c:	27bdffe0 	addiu	sp,sp,-32
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
    2730:	3c090000 	lui	t1,0x0
#include "aes_func.c"

/* ***************** main **************************** */
int
aes_main (void)
{
    2734:	afb10014 	sw	s1,20(sp)
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
  statemt[8] = 49;
    2738:	24080031 	addiu	t0,zero,49
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
    273c:	25310000 	addiu	s1,t1,0
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
  statemt[8] = 49;
    2740:	ae280020 	sw	t0,32(s1)
  statemt[9] = 49;
    2744:	ae280024 	sw	t0,36(s1)
  statemt[10] = 152;
    2748:	24080098 	addiu	t0,zero,152
    274c:	ae280028 	sw	t0,40(s1)
  statemt[11] = 162;
    2750:	240800a2 	addiu	t0,zero,162
    2754:	ae28002c 	sw	t0,44(s1)
  statemt[12] = 224;
    2758:	240800e0 	addiu	t0,zero,224
    275c:	ae280030 	sw	t0,48(s1)
  statemt[13] = 55;
    2760:	24080037 	addiu	t0,zero,55
    2764:	ae280034 	sw	t0,52(s1)
  statemt[14] = 7;
    2768:	24080007 	addiu	t0,zero,7
    276c:	ae280038 	sw	t0,56(s1)
  statemt[15] = 52;
    2770:	24080034 	addiu	t0,zero,52

  key[0] = 43;
    2774:	3c070000 	lui	a3,0x0
  statemt[10] = 152;
  statemt[11] = 162;
  statemt[12] = 224;
  statemt[13] = 55;
  statemt[14] = 7;
  statemt[15] = 52;
    2778:	ae28003c 	sw	t0,60(s1)

  key[0] = 43;
    277c:	2408002b 	addiu	t0,zero,43
    2780:	ace80000 	sw	t0,0(a3)
#include "aes_func.c"

/* ***************** main **************************** */
int
aes_main (void)
{
    2784:	afb00010 	sw	s0,16(sp)
  statemt[13] = 55;
  statemt[14] = 7;
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
    2788:	24f00000 	addiu	s0,a3,0
    278c:	2407007e 	addiu	a3,zero,126
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
    2790:	240a0032 	addiu	t2,zero,50
  statemt[13] = 55;
  statemt[14] = 7;
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
    2794:	ae070004 	sw	a3,4(s0)
  key[2] = 21;
  key[3] = 22;
    2798:	24070016 	addiu	a3,zero,22
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
    279c:	ad2a0000 	sw	t2,0(t1)
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
    27a0:	ae07000c 	sw	a3,12(s0)
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
    27a4:	24090043 	addiu	t1,zero,67

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
    27a8:	24070028 	addiu	a3,zero,40
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
    27ac:	ae290004 	sw	t1,4(s1)

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
    27b0:	ae070010 	sw	a3,16(s0)
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
    27b4:	240900f6 	addiu	t1,zero,246
  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
    27b8:	240700ae 	addiu	a3,zero,174
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
    27bc:	ae290008 	sw	t1,8(s1)
  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
    27c0:	ae070014 	sw	a3,20(s0)
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
    27c4:	240900a8 	addiu	t1,zero,168
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
    27c8:	240700d2 	addiu	a3,zero,210
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
    27cc:	24020088 	addiu	v0,zero,136
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
    27d0:	ae29000c 	sw	t1,12(s1)
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
    27d4:	ae070018 	sw	a3,24(s0)
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
    27d8:	2409005a 	addiu	t1,zero,90
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
    27dc:	240700a6 	addiu	a3,zero,166
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
    27e0:	ae220010 	sw	v0,16(s1)
  statemt[5] = 90;
    27e4:	ae290014 	sw	t1,20(s1)
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
    27e8:	ae07001c 	sw	a3,28(s0)
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
    27ec:	ae02002c 	sw	v0,44(s0)
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
    27f0:	24090030 	addiu	t1,zero,48
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
    27f4:	240700ab 	addiu	a3,zero,171
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
    27f8:	24020009 	addiu	v0,zero,9
  statemt[14] = 7;
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
    27fc:	24030015 	addiu	v1,zero,21
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
    2800:	ae290018 	sw	t1,24(s1)
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
    2804:	ae070020 	sw	a3,32(s0)
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
    2808:	2409008d 	addiu	t1,zero,141
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
    280c:	240700f7 	addiu	a3,zero,247
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
    2810:	ae020030 	sw	v0,48(s0)
  key[13] = 207;
    2814:	240200cf 	addiu	v0,zero,207
#include "aes_func.c"

/* ***************** main **************************** */
int
aes_main (void)
{
    2818:	afbf001c 	sw	ra,28(sp)
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
    281c:	ae29001c 	sw	t1,28(s1)
  statemt[14] = 7;
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
    2820:	ae030008 	sw	v1,8(s0)
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
    2824:	ae070024 	sw	a3,36(s0)
  key[10] = 21;
    2828:	ae030028 	sw	v1,40(s0)
#include "aes_func.c"

/* ***************** main **************************** */
int
aes_main (void)
{
    282c:	afb20018 	sw	s2,24(sp)
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
    2830:	ae020034 	sw	v0,52(s0)
  key[14] = 79;
  key[15] = 60;

  encrypt (statemt, key, 128128);
    2834:	3c120001 	lui	s2,0x1
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
  key[14] = 79;
    2838:	2402004f 	addiu	v0,zero,79
  key[15] = 60;

  encrypt (statemt, key, 128128);
    283c:	3646f480 	ori	a2,s2,0xf480
    2840:	02202021 	addu	a0,s1,zero
    2844:	02002821 	addu	a1,s0,zero
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
  key[14] = 79;
    2848:	ae020038 	sw	v0,56(s0)
  key[15] = 60;
    284c:	2402003c 	addiu	v0,zero,60

  encrypt (statemt, key, 128128);
    2850:	0c000000 	jal	0 <KeySchedule>
    2854:	ae02003c 	sw	v0,60(s0)
  decrypt (statemt, key, 128128);
    2858:	02202021 	addu	a0,s1,zero
    285c:	02002821 	addu	a1,s0,zero
    2860:	0c000000 	jal	0 <KeySchedule>
    2864:	3646f480 	ori	a2,s2,0xf480
  return 0;
}
    2868:	8fbf001c 	lw	ra,28(sp)
    286c:	00001021 	addu	v0,zero,zero
    2870:	8fb20018 	lw	s2,24(sp)
    2874:	8fb10014 	lw	s1,20(sp)
    2878:	8fb00010 	lw	s0,16(sp)
    287c:	03e00008 	jr	ra
    2880:	27bd0020 	addiu	sp,sp,32

00002884 <main>:

int
main ()
{
    2884:	27bdffe8 	addiu	sp,sp,-24
    2888:	afbf0014 	sw	ra,20(sp)
      main_result = 0;
      aes_main ();
    288c:	0c000000 	jal	0 <KeySchedule>
    2890:	af800000 	sw	zero,0(gp)
      printf ("\n%d\n", main_result);
    2894:	8f850000 	lw	a1,0(gp)
    2898:	3c040000 	lui	a0,0x0
    289c:	0c000000 	jal	0 <KeySchedule>
    28a0:	24840000 	addiu	a0,a0,0
      return main_result;
    }
    28a4:	8fbf0014 	lw	ra,20(sp)
    28a8:	8f820000 	lw	v0,0(gp)
    28ac:	03e00008 	jr	ra
    28b0:	27bd0018 	addiu	sp,sp,24

Disassembly of section .rodata:

00000000 <Rcon0>:
   0:	00000001 	0x1
   4:	00000002 	srl	zero,zero,0x0
   8:	00000004 	sllv	zero,zero,zero
   c:	00000008 	jr	zero
  10:	00000010 	mfhi	zero
  14:	00000020 	add	zero,zero,zero
  18:	00000040 	sll	zero,zero,0x1
  1c:	00000080 	sll	zero,zero,0x2
  20:	0000001b 	divu	zero,zero,zero
  24:	00000036 	0x36
  28:	0000006c 	0x6c
  2c:	000000d8 	0xd8
  30:	000000ab 	0xab
  34:	0000004d 	break	0x0,0x1
  38:	0000009a 	0x9a
  3c:	0000002f 	0x2f
  40:	0000005e 	0x5e
  44:	000000bc 	0xbc
  48:	00000063 	0x63
  4c:	000000c6 	0xc6
  50:	00000097 	0x97
  54:	00000035 	0x35
  58:	0000006a 	0x6a
  5c:	000000d4 	0xd4
  60:	000000b3 	0xb3
  64:	0000007d 	0x7d
  68:	000000fa 	0xfa
  6c:	000000ef 	0xef
  70:	000000c5 	0xc5
  74:	00000091 	0x91

00000078 <Sbox>:
  78:	00000063 	0x63
  7c:	0000007c 	0x7c
  80:	00000077 	0x77
  84:	0000007b 	0x7b
  88:	000000f2 	0xf2
  8c:	0000006b 	0x6b
  90:	0000006f 	0x6f
  94:	000000c5 	0xc5
  98:	00000030 	0x30
  9c:	00000001 	0x1
  a0:	00000067 	0x67
  a4:	0000002b 	sltu	zero,zero,zero
  a8:	000000fe 	0xfe
  ac:	000000d7 	0xd7
  b0:	000000ab 	0xab
  b4:	00000076 	0x76
  b8:	000000ca 	0xca
  bc:	00000082 	srl	zero,zero,0x2
  c0:	000000c9 	0xc9
  c4:	0000007d 	0x7d
  c8:	000000fa 	0xfa
  cc:	00000059 	0x59
  d0:	00000047 	0x47
  d4:	000000f0 	0xf0
  d8:	000000ad 	0xad
  dc:	000000d4 	0xd4
  e0:	000000a2 	0xa2
  e4:	000000af 	0xaf
  e8:	0000009c 	0x9c
  ec:	000000a4 	0xa4
  f0:	00000072 	0x72
  f4:	000000c0 	sll	zero,zero,0x3
  f8:	000000b7 	0xb7
  fc:	000000fd 	0xfd
 100:	00000093 	0x93
 104:	00000026 	xor	zero,zero,zero
 108:	00000036 	0x36
 10c:	0000003f 	0x3f
 110:	000000f7 	0xf7
 114:	000000cc 	syscall	0x3
 118:	00000034 	0x34
 11c:	000000a5 	0xa5
 120:	000000e5 	0xe5
 124:	000000f1 	0xf1
 128:	00000071 	0x71
 12c:	000000d8 	0xd8
 130:	00000031 	0x31
 134:	00000015 	0x15
 138:	00000004 	sllv	zero,zero,zero
 13c:	000000c7 	0xc7
 140:	00000023 	negu	zero,zero
 144:	000000c3 	sra	zero,zero,0x3
 148:	00000018 	mult	zero,zero
 14c:	00000096 	0x96
 150:	00000005 	0x5
 154:	0000009a 	0x9a
 158:	00000007 	srav	zero,zero,zero
 15c:	00000012 	mflo	zero
 160:	00000080 	sll	zero,zero,0x2
 164:	000000e2 	0xe2
 168:	000000eb 	0xeb
 16c:	00000027 	nor	zero,zero,zero
 170:	000000b2 	0xb2
 174:	00000075 	0x75
 178:	00000009 	jalr	zero,zero
 17c:	00000083 	sra	zero,zero,0x2
 180:	0000002c 	0x2c
 184:	0000001a 	div	zero,zero,zero
 188:	0000001b 	divu	zero,zero,zero
 18c:	0000006e 	0x6e
 190:	0000005a 	0x5a
 194:	000000a0 	0xa0
 198:	00000052 	0x52
 19c:	0000003b 	0x3b
 1a0:	000000d6 	0xd6
 1a4:	000000b3 	0xb3
 1a8:	00000029 	0x29
 1ac:	000000e3 	0xe3
 1b0:	0000002f 	0x2f
 1b4:	00000084 	0x84
 1b8:	00000053 	0x53
 1bc:	000000d1 	0xd1
 1c0:	00000000 	sll	zero,zero,0x0
 1c4:	000000ed 	0xed
 1c8:	00000020 	add	zero,zero,zero
 1cc:	000000fc 	0xfc
 1d0:	000000b1 	0xb1
 1d4:	0000005b 	0x5b
 1d8:	0000006a 	0x6a
 1dc:	000000cb 	0xcb
 1e0:	000000be 	0xbe
 1e4:	00000039 	0x39
 1e8:	0000004a 	0x4a
 1ec:	0000004c 	syscall	0x1
 1f0:	00000058 	0x58
 1f4:	000000cf 	0xcf
 1f8:	000000d0 	0xd0
 1fc:	000000ef 	0xef
 200:	000000aa 	0xaa
 204:	000000fb 	0xfb
 208:	00000043 	sra	zero,zero,0x1
 20c:	0000004d 	break	0x0,0x1
 210:	00000033 	0x33
 214:	00000085 	0x85
 218:	00000045 	0x45
 21c:	000000f9 	0xf9
 220:	00000002 	srl	zero,zero,0x0
 224:	0000007f 	0x7f
 228:	00000050 	0x50
 22c:	0000003c 	0x3c
 230:	0000009f 	0x9f
 234:	000000a8 	0xa8
 238:	00000051 	0x51
 23c:	000000a3 	0xa3
 240:	00000040 	sll	zero,zero,0x1
 244:	0000008f 	0x8f
 248:	00000092 	0x92
 24c:	0000009d 	0x9d
 250:	00000038 	0x38
 254:	000000f5 	0xf5
 258:	000000bc 	0xbc
 25c:	000000b6 	0xb6
 260:	000000da 	0xda
 264:	00000021 	addu	zero,zero,zero
 268:	00000010 	mfhi	zero
 26c:	000000ff 	0xff
 270:	000000f3 	0xf3
 274:	000000d2 	0xd2
 278:	000000cd 	break	0x0,0x3
 27c:	0000000c 	syscall
 280:	00000013 	mtlo	zero
 284:	000000ec 	0xec
 288:	0000005f 	0x5f
 28c:	00000097 	0x97
 290:	00000044 	0x44
 294:	00000017 	0x17
 298:	000000c4 	0xc4
 29c:	000000a7 	0xa7
 2a0:	0000007e 	0x7e
 2a4:	0000003d 	0x3d
 2a8:	00000064 	0x64
 2ac:	0000005d 	0x5d
 2b0:	00000019 	multu	zero,zero
 2b4:	00000073 	0x73
 2b8:	00000060 	0x60
 2bc:	00000081 	0x81
 2c0:	0000004f 	0x4f
 2c4:	000000dc 	0xdc
 2c8:	00000022 	neg	zero,zero
 2cc:	0000002a 	slt	zero,zero,zero
 2d0:	00000090 	0x90
 2d4:	00000088 	0x88
 2d8:	00000046 	0x46
 2dc:	000000ee 	0xee
 2e0:	000000b8 	0xb8
 2e4:	00000014 	0x14
 2e8:	000000de 	0xde
 2ec:	0000005e 	0x5e
 2f0:	0000000b 	0xb
 2f4:	000000db 	0xdb
 2f8:	000000e0 	0xe0
 2fc:	00000032 	0x32
 300:	0000003a 	0x3a
 304:	0000000a 	0xa
 308:	00000049 	0x49
 30c:	00000006 	srlv	zero,zero,zero
 310:	00000024 	and	zero,zero,zero
 314:	0000005c 	0x5c
 318:	000000c2 	srl	zero,zero,0x3
 31c:	000000d3 	0xd3
 320:	000000ac 	0xac
 324:	00000062 	0x62
 328:	00000091 	0x91
 32c:	00000095 	0x95
 330:	000000e4 	0xe4
 334:	00000079 	0x79
 338:	000000e7 	0xe7
 33c:	000000c8 	0xc8
 340:	00000037 	0x37
 344:	0000006d 	0x6d
 348:	0000008d 	break	0x0,0x2
 34c:	000000d5 	0xd5
 350:	0000004e 	0x4e
 354:	000000a9 	0xa9
 358:	0000006c 	0x6c
 35c:	00000056 	0x56
 360:	000000f4 	0xf4
 364:	000000ea 	0xea
 368:	00000065 	0x65
 36c:	0000007a 	0x7a
 370:	000000ae 	0xae
 374:	00000008 	jr	zero
 378:	000000ba 	0xba
 37c:	00000078 	0x78
 380:	00000025 	or	zero,zero,zero
 384:	0000002e 	0x2e
 388:	0000001c 	0x1c
 38c:	000000a6 	0xa6
 390:	000000b4 	0xb4
 394:	000000c6 	0xc6
 398:	000000e8 	0xe8
 39c:	000000dd 	0xdd
 3a0:	00000074 	0x74
 3a4:	0000001f 	0x1f
 3a8:	0000004b 	0x4b
 3ac:	000000bd 	0xbd
 3b0:	0000008b 	0x8b
 3b4:	0000008a 	0x8a
 3b8:	00000070 	0x70
 3bc:	0000003e 	0x3e
 3c0:	000000b5 	0xb5
 3c4:	00000066 	0x66
 3c8:	00000048 	0x48
 3cc:	00000003 	sra	zero,zero,0x0
 3d0:	000000f6 	0xf6
 3d4:	0000000e 	0xe
 3d8:	00000061 	0x61
 3dc:	00000035 	0x35
 3e0:	00000057 	0x57
 3e4:	000000b9 	0xb9
 3e8:	00000086 	0x86
 3ec:	000000c1 	0xc1
 3f0:	0000001d 	0x1d
 3f4:	0000009e 	0x9e
 3f8:	000000e1 	0xe1
 3fc:	000000f8 	0xf8
 400:	00000098 	0x98
 404:	00000011 	mthi	zero
 408:	00000069 	0x69
 40c:	000000d9 	0xd9
 410:	0000008e 	0x8e
 414:	00000094 	0x94
 418:	0000009b 	0x9b
 41c:	0000001e 	0x1e
 420:	00000087 	0x87
 424:	000000e9 	0xe9
 428:	000000ce 	0xce
 42c:	00000055 	0x55
 430:	00000028 	0x28
 434:	000000df 	0xdf
 438:	0000008c 	syscall	0x2
 43c:	000000a1 	0xa1
 440:	00000089 	0x89
 444:	0000000d 	break
 448:	000000bf 	0xbf
 44c:	000000e6 	0xe6
 450:	00000042 	srl	zero,zero,0x1
 454:	00000068 	0x68
 458:	00000041 	0x41
 45c:	00000099 	0x99
 460:	0000002d 	0x2d
 464:	0000000f 	0xf
 468:	000000b0 	0xb0
 46c:	00000054 	0x54
 470:	000000bb 	0xbb
 474:	00000016 	0x16

00000478 <invSbox>:
 478:	00000052 	0x52
 47c:	00000009 	jalr	zero,zero
 480:	0000006a 	0x6a
 484:	000000d5 	0xd5
 488:	00000030 	0x30
 48c:	00000036 	0x36
 490:	000000a5 	0xa5
 494:	00000038 	0x38
 498:	000000bf 	0xbf
 49c:	00000040 	sll	zero,zero,0x1
 4a0:	000000a3 	0xa3
 4a4:	0000009e 	0x9e
 4a8:	00000081 	0x81
 4ac:	000000f3 	0xf3
 4b0:	000000d7 	0xd7
 4b4:	000000fb 	0xfb
 4b8:	0000007c 	0x7c
 4bc:	000000e3 	0xe3
 4c0:	00000039 	0x39
 4c4:	00000082 	srl	zero,zero,0x2
 4c8:	0000009b 	0x9b
 4cc:	0000002f 	0x2f
 4d0:	000000ff 	0xff
 4d4:	00000087 	0x87
 4d8:	00000034 	0x34
 4dc:	0000008e 	0x8e
 4e0:	00000043 	sra	zero,zero,0x1
 4e4:	00000044 	0x44
 4e8:	000000c4 	0xc4
 4ec:	000000de 	0xde
 4f0:	000000e9 	0xe9
 4f4:	000000cb 	0xcb
 4f8:	00000054 	0x54
 4fc:	0000007b 	0x7b
 500:	00000094 	0x94
 504:	00000032 	0x32
 508:	000000a6 	0xa6
 50c:	000000c2 	srl	zero,zero,0x3
 510:	00000023 	negu	zero,zero
 514:	0000003d 	0x3d
 518:	000000ee 	0xee
 51c:	0000004c 	syscall	0x1
 520:	00000095 	0x95
 524:	0000000b 	0xb
 528:	00000042 	srl	zero,zero,0x1
 52c:	000000fa 	0xfa
 530:	000000c3 	sra	zero,zero,0x3
 534:	0000004e 	0x4e
 538:	00000008 	jr	zero
 53c:	0000002e 	0x2e
 540:	000000a1 	0xa1
 544:	00000066 	0x66
 548:	00000028 	0x28
 54c:	000000d9 	0xd9
 550:	00000024 	and	zero,zero,zero
 554:	000000b2 	0xb2
 558:	00000076 	0x76
 55c:	0000005b 	0x5b
 560:	000000a2 	0xa2
 564:	00000049 	0x49
 568:	0000006d 	0x6d
 56c:	0000008b 	0x8b
 570:	000000d1 	0xd1
 574:	00000025 	or	zero,zero,zero
 578:	00000072 	0x72
 57c:	000000f8 	0xf8
 580:	000000f6 	0xf6
 584:	00000064 	0x64
 588:	00000086 	0x86
 58c:	00000068 	0x68
 590:	00000098 	0x98
 594:	00000016 	0x16
 598:	000000d4 	0xd4
 59c:	000000a4 	0xa4
 5a0:	0000005c 	0x5c
 5a4:	000000cc 	syscall	0x3
 5a8:	0000005d 	0x5d
 5ac:	00000065 	0x65
 5b0:	000000b6 	0xb6
 5b4:	00000092 	0x92
 5b8:	0000006c 	0x6c
 5bc:	00000070 	0x70
 5c0:	00000048 	0x48
 5c4:	00000050 	0x50
 5c8:	000000fd 	0xfd
 5cc:	000000ed 	0xed
 5d0:	000000b9 	0xb9
 5d4:	000000da 	0xda
 5d8:	0000005e 	0x5e
 5dc:	00000015 	0x15
 5e0:	00000046 	0x46
 5e4:	00000057 	0x57
 5e8:	000000a7 	0xa7
 5ec:	0000008d 	break	0x0,0x2
 5f0:	0000009d 	0x9d
 5f4:	00000084 	0x84
 5f8:	00000090 	0x90
 5fc:	000000d8 	0xd8
 600:	000000ab 	0xab
 604:	00000000 	sll	zero,zero,0x0
 608:	0000008c 	syscall	0x2
 60c:	000000bc 	0xbc
 610:	000000d3 	0xd3
 614:	0000000a 	0xa
 618:	000000f7 	0xf7
 61c:	000000e4 	0xe4
 620:	00000058 	0x58
 624:	00000005 	0x5
 628:	000000b8 	0xb8
 62c:	000000b3 	0xb3
 630:	00000045 	0x45
 634:	00000006 	srlv	zero,zero,zero
 638:	000000d0 	0xd0
 63c:	0000002c 	0x2c
 640:	0000001e 	0x1e
 644:	0000008f 	0x8f
 648:	000000ca 	0xca
 64c:	0000003f 	0x3f
 650:	0000000f 	0xf
 654:	00000002 	srl	zero,zero,0x0
 658:	000000c1 	0xc1
 65c:	000000af 	0xaf
 660:	000000bd 	0xbd
 664:	00000003 	sra	zero,zero,0x0
 668:	00000001 	0x1
 66c:	00000013 	mtlo	zero
 670:	0000008a 	0x8a
 674:	0000006b 	0x6b
 678:	0000003a 	0x3a
 67c:	00000091 	0x91
 680:	00000011 	mthi	zero
 684:	00000041 	0x41
 688:	0000004f 	0x4f
 68c:	00000067 	0x67
 690:	000000dc 	0xdc
 694:	000000ea 	0xea
 698:	00000097 	0x97
 69c:	000000f2 	0xf2
 6a0:	000000cf 	0xcf
 6a4:	000000ce 	0xce
 6a8:	000000f0 	0xf0
 6ac:	000000b4 	0xb4
 6b0:	000000e6 	0xe6
 6b4:	00000073 	0x73
 6b8:	00000096 	0x96
 6bc:	000000ac 	0xac
 6c0:	00000074 	0x74
 6c4:	00000022 	neg	zero,zero
 6c8:	000000e7 	0xe7
 6cc:	000000ad 	0xad
 6d0:	00000035 	0x35
 6d4:	00000085 	0x85
 6d8:	000000e2 	0xe2
 6dc:	000000f9 	0xf9
 6e0:	00000037 	0x37
 6e4:	000000e8 	0xe8
 6e8:	0000001c 	0x1c
 6ec:	00000075 	0x75
 6f0:	000000df 	0xdf
 6f4:	0000006e 	0x6e
 6f8:	00000047 	0x47
 6fc:	000000f1 	0xf1
 700:	0000001a 	div	zero,zero,zero
 704:	00000071 	0x71
 708:	0000001d 	0x1d
 70c:	00000029 	0x29
 710:	000000c5 	0xc5
 714:	00000089 	0x89
 718:	0000006f 	0x6f
 71c:	000000b7 	0xb7
 720:	00000062 	0x62
 724:	0000000e 	0xe
 728:	000000aa 	0xaa
 72c:	00000018 	mult	zero,zero
 730:	000000be 	0xbe
 734:	0000001b 	divu	zero,zero,zero
 738:	000000fc 	0xfc
 73c:	00000056 	0x56
 740:	0000003e 	0x3e
 744:	0000004b 	0x4b
 748:	000000c6 	0xc6
 74c:	000000d2 	0xd2
 750:	00000079 	0x79
 754:	00000020 	add	zero,zero,zero
 758:	0000009a 	0x9a
 75c:	000000db 	0xdb
 760:	000000c0 	sll	zero,zero,0x3
 764:	000000fe 	0xfe
 768:	00000078 	0x78
 76c:	000000cd 	break	0x0,0x3
 770:	0000005a 	0x5a
 774:	000000f4 	0xf4
 778:	0000001f 	0x1f
 77c:	000000dd 	0xdd
 780:	000000a8 	0xa8
 784:	00000033 	0x33
 788:	00000088 	0x88
 78c:	00000007 	srav	zero,zero,zero
 790:	000000c7 	0xc7
 794:	00000031 	0x31
 798:	000000b1 	0xb1
 79c:	00000012 	mflo	zero
 7a0:	00000010 	mfhi	zero
 7a4:	00000059 	0x59
 7a8:	00000027 	nor	zero,zero,zero
 7ac:	00000080 	sll	zero,zero,0x2
 7b0:	000000ec 	0xec
 7b4:	0000005f 	0x5f
 7b8:	00000060 	0x60
 7bc:	00000051 	0x51
 7c0:	0000007f 	0x7f
 7c4:	000000a9 	0xa9
 7c8:	00000019 	multu	zero,zero
 7cc:	000000b5 	0xb5
 7d0:	0000004a 	0x4a
 7d4:	0000000d 	break
 7d8:	0000002d 	0x2d
 7dc:	000000e5 	0xe5
 7e0:	0000007a 	0x7a
 7e4:	0000009f 	0x9f
 7e8:	00000093 	0x93
 7ec:	000000c9 	0xc9
 7f0:	0000009c 	0x9c
 7f4:	000000ef 	0xef
 7f8:	000000a0 	0xa0
 7fc:	000000e0 	0xe0
 800:	0000003b 	0x3b
 804:	0000004d 	break	0x0,0x1
 808:	000000ae 	0xae
 80c:	0000002a 	slt	zero,zero,zero
 810:	000000f5 	0xf5
 814:	000000b0 	0xb0
 818:	000000c8 	0xc8
 81c:	000000eb 	0xeb
 820:	000000bb 	0xbb
 824:	0000003c 	0x3c
 828:	00000083 	sra	zero,zero,0x2
 82c:	00000053 	0x53
 830:	00000099 	0x99
 834:	00000061 	0x61
 838:	00000017 	0x17
 83c:	0000002b 	sltu	zero,zero,zero
 840:	00000004 	sllv	zero,zero,zero
 844:	0000007e 	0x7e
 848:	000000ba 	0xba
 84c:	00000077 	0x77
 850:	000000d6 	0xd6
 854:	00000026 	xor	zero,zero,zero
 858:	000000e1 	0xe1
 85c:	00000069 	0x69
 860:	00000014 	0x14
 864:	00000063 	0x63
 868:	00000055 	0x55
 86c:	00000021 	addu	zero,zero,zero
 870:	0000000c 	syscall
 874:	0000007d 	0x7d

00000878 <C.5.3861>:
 878:	00000032 	0x32
 87c:	00000043 	sra	zero,zero,0x1
 880:	000000f6 	0xf6
 884:	000000a8 	0xa8
 888:	00000088 	0x88
 88c:	0000005a 	0x5a
 890:	00000030 	0x30
 894:	0000008d 	break	0x0,0x2
 898:	00000031 	0x31
 89c:	00000031 	0x31
 8a0:	00000098 	0x98
 8a4:	000000a2 	0xa2
 8a8:	000000e0 	0xe0
 8ac:	00000037 	0x37
 8b0:	00000007 	srav	zero,zero,zero
 8b4:	00000034 	0x34

000008b8 <C.11.3879>:
 8b8:	00000039 	0x39
 8bc:	00000025 	or	zero,zero,zero
 8c0:	00000084 	0x84
 8c4:	0000001d 	0x1d
 8c8:	00000002 	srl	zero,zero,0x0
 8cc:	000000dc 	0xdc
 8d0:	00000009 	jalr	zero,zero
 8d4:	000000fb 	0xfb
 8d8:	000000dc 	0xdc
 8dc:	00000011 	mthi	zero
 8e0:	00000085 	0x85
 8e4:	00000097 	0x97
 8e8:	00000019 	multu	zero,zero
 8ec:	0000006a 	0x6a
 8f0:	0000000b 	0xb
 8f4:	00000032 	0x32
