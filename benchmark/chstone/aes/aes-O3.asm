
aes.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <AddRoundKey.clone.2>:
  return 0;
}

/* ******** AddRoundKey ********** */
int
AddRoundKey (int statemt[32], int type, int n)
       0:	00042880 	sll	a1,a0,0x2
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
       4:	24ad0079 	addiu	t5,a1,121
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
       8:	3c030000 	lui	v1,0x0
  return 0;
}

/* ******** AddRoundKey ********** */
int
AddRoundKey (int statemt[32], int type, int n)
       c:	27bdffd8 	addiu	sp,sp,-40
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      10:	24630000 	addiu	v1,v1,0
      14:	3c060000 	lui	a2,0x0
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
      18:	24a2016a 	addiu	v0,a1,362
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      1c:	000d6880 	sll	t5,t5,0x2
  return 0;
}

/* ******** AddRoundKey ********** */
int
AddRoundKey (int statemt[32], int type, int n)
      20:	afb50018 	sw	s5,24(sp)
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      24:	24ab00f1 	addiu	t3,a1,241
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      28:	0004a900 	sll	s5,a0,0x4
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      2c:	01a36821 	addu	t5,t5,v1
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
      30:	00022080 	sll	a0,v0,0x2
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      34:	24c20000 	addiu	v0,a2,0
      38:	8c4c0014 	lw	t4,20(v0)
      3c:	8dad0000 	lw	t5,0(t5)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      40:	000b5880 	sll	t3,t3,0x2
      statemt[3 + j * 4] ^= word[3][j + nb * n];
      44:	24aa0169 	addiu	t2,a1,361
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      48:	01635821 	addu	t3,t3,v1
      4c:	8d6b0000 	lw	t3,0(t3)
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      50:	01ac6026 	xor	t4,t5,t4
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
      54:	000a5080 	sll	t2,t2,0x2
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      58:	8c4d0018 	lw	t5,24(v0)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      5c:	24a90002 	addiu	t1,a1,2
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
      60:	01435021 	addu	t2,t2,v1
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      64:	016d5826 	xor	t3,t3,t5
      statemt[3 + j * 4] ^= word[3][j + nb * n];
      68:	8d4a0000 	lw	t2,0(t2)
      6c:	8c4d001c 	lw	t5,28(v0)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      70:	00094880 	sll	t1,t1,0x2
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      74:	24a8007a 	addiu	t0,a1,122
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      78:	01234821 	addu	t1,t1,v1
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
      7c:	014d5026 	xor	t2,t2,t5
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      80:	8d290000 	lw	t1,0(t1)
      84:	8c4d0020 	lw	t5,32(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      88:	00084080 	sll	t0,t0,0x2
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      8c:	24a700f2 	addiu	a3,a1,242
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      90:	01034021 	addu	t0,t0,v1
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      94:	012d4826 	xor	t1,t1,t5
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      98:	8d080000 	lw	t0,0(t0)
      9c:	8c4d0024 	lw	t5,36(v0)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      a0:	00073880 	sll	a3,a3,0x2
      a4:	00e33821 	addu	a3,a3,v1
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      a8:	010d4026 	xor	t0,t0,t5
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      ac:	8ce70000 	lw	a3,0(a3)
      b0:	8c4d0028 	lw	t5,40(v0)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      b4:	02a3a821 	addu	s5,s5,v1
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
      b8:	00832021 	addu	a0,a0,v1
  return 0;
}

/* ******** AddRoundKey ********** */
int
AddRoundKey (int statemt[32], int type, int n)
      bc:	afbe0024 	sw	s8,36(sp)
      c0:	afb70020 	sw	s7,32(sp)
      c4:	afb6001c 	sw	s6,28(sp)
      c8:	afb40014 	sw	s4,20(sp)
      cc:	afb30010 	sw	s3,16(sp)
      d0:	afb10008 	sw	s1,8(sp)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      d4:	8cd40000 	lw	s4,0(a2)
      d8:	8eb50000 	lw	s5,0(s5)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      dc:	00ed3826 	xor	a3,a3,t5
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      e0:	24b30078 	addiu	s3,a1,120
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
      e4:	8c4d002c 	lw	t5,44(v0)
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      e8:	24b100f0 	addiu	s1,a1,240
      statemt[3 + j * 4] ^= word[3][j + nb * n];
      ec:	24b90168 	addiu	t9,a1,360
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      f0:	24af0001 	addiu	t7,a1,1
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
      f4:	8c840000 	lw	a0,0(a0)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      f8:	24be0003 	addiu	s8,a1,3
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      fc:	24b7007b 	addiu	s7,a1,123
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     100:	24b600f3 	addiu	s6,a1,243
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     104:	24a5016b 	addiu	a1,a1,363
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     108:	00139880 	sll	s3,s3,0x2
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     10c:	00118880 	sll	s1,s1,0x2
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     110:	0019c880 	sll	t9,t9,0x2
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
     114:	000f7880 	sll	t7,t7,0x2
     118:	001ef080 	sll	s8,s8,0x2
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     11c:	0017b880 	sll	s7,s7,0x2
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     120:	0016b080 	sll	s6,s6,0x2
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     124:	00052880 	sll	a1,a1,0x2
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
     128:	02b4a026 	xor	s4,s5,s4
     12c:	03c3f021 	addu	s8,s8,v1
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     130:	02e3b821 	addu	s7,s7,v1
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     134:	02c3b021 	addu	s6,s6,v1
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     138:	02639821 	addu	s3,s3,v1
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     13c:	02238821 	addu	s1,s1,v1
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     140:	0323c821 	addu	t9,t9,v1
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
     144:	01e37821 	addu	t7,t7,v1
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     148:	008d2026 	xor	a0,a0,t5
     14c:	00a32821 	addu	a1,a1,v1
  return 0;
}

/* ******** AddRoundKey ********** */
int
AddRoundKey (int statemt[32], int type, int n)
     150:	afb2000c 	sw	s2,12(sp)
     154:	afb00004 	sw	s0,4(sp)
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     158:	8c520004 	lw	s2,4(v0)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     15c:	8c500008 	lw	s0,8(v0)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     160:	8c58000c 	lw	t8,12(v0)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
     164:	8c4e0010 	lw	t6,16(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     168:	8e730000 	lw	s3,0(s3)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     16c:	8e310000 	lw	s1,0(s1)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     170:	8f390000 	lw	t9,0(t9)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
     174:	8def0000 	lw	t7,0(t7)
     178:	acd40000 	sw	s4,0(a2)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     17c:	ac4b0018 	sw	t3,24(v0)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     180:	ac4a001c 	sw	t2,28(v0)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
     184:	8c4b0030 	lw	t3,48(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     188:	8c4a0034 	lw	t2,52(v0)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
     18c:	ac490020 	sw	t1,32(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     190:	ac480024 	sw	t0,36(v0)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     194:	ac470028 	sw	a3,40(v0)
     198:	8c480038 	lw	t0,56(v0)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     19c:	8c47003c 	lw	a3,60(v0)
     1a0:	ac44002c 	sw	a0,44(v0)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
     1a4:	8fc60000 	lw	a2,0(s8)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     1a8:	8ee90000 	lw	t1,0(s7)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     1ac:	8ec40000 	lw	a0,0(s6)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     1b0:	8ca30000 	lw	v1,0(a1)
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     1b4:	02729026 	xor	s2,s3,s2
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     1b8:	02308026 	xor	s0,s1,s0
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     1bc:	0338c026 	xor	t8,t9,t8
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
     1c0:	01ee7026 	xor	t6,t7,t6
     1c4:	01663026 	xor	a2,t3,a2
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     1c8:	01492826 	xor	a1,t2,t1
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     1cc:	01042026 	xor	a0,t0,a0
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     1d0:	00e31826 	xor	v1,a3,v1
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     1d4:	ac520004 	sw	s2,4(v0)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     1d8:	ac500008 	sw	s0,8(v0)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     1dc:	ac58000c 	sw	t8,12(v0)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
     1e0:	ac4e0010 	sw	t6,16(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     1e4:	ac4c0014 	sw	t4,20(v0)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
     1e8:	ac460030 	sw	a2,48(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
     1ec:	ac450034 	sw	a1,52(v0)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
     1f0:	ac440038 	sw	a0,56(v0)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
     1f4:	ac43003c 	sw	v1,60(v0)
    }
  return 0;
}
     1f8:	8fbe0024 	lw	s8,36(sp)
     1fc:	00001021 	addu	v0,zero,zero
     200:	8fb70020 	lw	s7,32(sp)
     204:	8fb6001c 	lw	s6,28(sp)
     208:	8fb50018 	lw	s5,24(sp)
     20c:	8fb40014 	lw	s4,20(sp)
     210:	8fb30010 	lw	s3,16(sp)
     214:	8fb2000c 	lw	s2,12(sp)
     218:	8fb10008 	lw	s1,8(sp)
     21c:	8fb00004 	lw	s0,4(sp)
     220:	03e00008 	jr	ra
     224:	27bd0028 	addiu	sp,sp,40

00000228 <KeySchedule>:
KeySchedule (int type, int key[32])
{
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
     228:	3c020002 	lui	v0,0x2
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
{
     22c:	27bdfff8 	addiu	sp,sp,-8
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
     230:	3443eec0 	ori	v1,v0,0xeec0
     234:	10830129 	beq	a0,v1,6dc <KeySchedule+0x4b4>
     238:	afb00004 	sw	s0,4(sp)
     23c:	24660001 	addiu	a2,v1,1
     240:	0086302a 	slt	a2,a0,a2
     244:	14c00013 	bnez	a2,294 <KeySchedule+0x6c>
     248:	2446f4c0 	addiu	a2,v0,-2880
     24c:	3c020003 	lui	v0,0x3
     250:	3442e880 	ori	v0,v0,0xe880
     254:	10820125 	beq	a0,v0,6ec <KeySchedule+0x4c4>
     258:	2409000e 	addiu	t1,zero,14
     25c:	24460001 	addiu	a2,v0,1
     260:	0086302a 	slt	a2,a0,a2
     264:	14c00018 	bnez	a2,2c8 <KeySchedule+0xa0>
     268:	24630040 	addiu	v1,v1,64
     26c:	24430040 	addiu	v1,v0,64
     270:	10830115 	beq	a0,v1,6c8 <KeySchedule+0x4a0>
     274:	240b0006 	addiu	t3,zero,6
     278:	24420080 	addiu	v0,v0,128
     27c:	10820093 	beq	a0,v0,4cc <KeySchedule+0x2a4>
     280:	240b0008 	addiu	t3,zero,8
      nk = 8;
      nb = 8;
      round = 14;
      break;
    default:
      return -1;
     284:	2402ffff 	addiu	v0,zero,-1
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
    }
  return 0;
}
     288:	8fb00004 	lw	s0,4(sp)
     28c:	03e00008 	jr	ra
     290:	27bd0008 	addiu	sp,sp,8
KeySchedule (int type, int key[32])
{
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
     294:	1086010e 	beq	a0,a2,6d0 <KeySchedule+0x4a8>
     298:	2409000c 	addiu	t1,zero,12
     29c:	2446f4c1 	addiu	a2,v0,-2879
     2a0:	0086302a 	slt	a2,a0,a2
     2a4:	14c00083 	bnez	a2,4b4 <KeySchedule+0x28c>
     2a8:	00000000 	sll	zero,zero,0x0
     2ac:	2442f500 	addiu	v0,v0,-2816
     2b0:	10820111 	beq	a0,v0,6f8 <KeySchedule+0x4d0>
     2b4:	2463ffc0 	addiu	v1,v1,-64
     2b8:	1483fff2 	bne	a0,v1,284 <KeySchedule+0x5c>
     2bc:	240b0004 	addiu	t3,zero,4
      break;
    case 192128:
      nk = 6;
      nb = 4;
      round = 12;
      break;
     2c0:	080000b6 	j	2d8 <KeySchedule+0xb0>
     2c4:	24060006 	addiu	a2,zero,6
KeySchedule (int type, int key[32])
{
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
     2c8:	1483ffee 	bne	a0,v1,284 <KeySchedule+0x5c>
     2cc:	240b0008 	addiu	t3,zero,8
      round = 12;
      break;
    case 192256:
      nk = 6;
      nb = 8;
      round = 14;
     2d0:	2409000e 	addiu	t1,zero,14
      nk = 6;
      nb = 6;
      round = 12;
      break;
    case 192256:
      nk = 6;
     2d4:	24060006 	addiu	a2,zero,6
      break;
    case 256256:
      nk = 8;
      nb = 8;
      round = 14;
      break;
     2d8:	3c040000 	lui	a0,0x0
     2dc:	24840000 	addiu	a0,a0,0
     2e0:	00801821 	addu	v1,a0,zero
      nk = 8;
      nb = 6;
      round = 14;
      break;
    case 256256:
      nk = 8;
     2e4:	00801021 	addu	v0,a0,zero
      round = 14;
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
     2e8:	00003821 	addu	a3,zero,zero
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];
     2ec:	8ca80000 	lw	t0,0(a1)
      round = 14;
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
     2f0:	24e70001 	addiu	a3,a3,1
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];
     2f4:	ac480000 	sw	t0,0(v0)
     2f8:	8caa0004 	lw	t2,4(a1)
      round = 14;
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
     2fc:	00e6402a 	slt	t0,a3,a2
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];
     300:	ac4a01e0 	sw	t2,480(v0)
     304:	8caa0008 	lw	t2,8(a1)
     308:	00000000 	sll	zero,zero,0x0
     30c:	ac4a03c0 	sw	t2,960(v0)
     310:	8caa000c 	lw	t2,12(a1)
      round = 14;
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
     314:	24a50010 	addiu	a1,a1,16
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];
     318:	ac4a05a0 	sw	t2,1440(v0)
      round = 14;
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
     31c:	1500fff3 	bnez	t0,2ec <KeySchedule+0xc4>
     320:	24420004 	addiu	v0,v0,4
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];

/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
     324:	25290001 	addiu	t1,t1,1
     328:	012b0018 	mult	t1,t3
     32c:	00004812 	mflo	t1
     330:	00c9102a 	slt	v0,a2,t1
     334:	1040005b 	beqz	v0,4a4 <KeySchedule+0x27c>
     338:	24c20077 	addiu	v0,a2,119
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
     33c:	00021080 	sll	v0,v0,0x2
    {

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     340:	3c0d0000 	lui	t5,0x0
}

int
SubByte (int in)
{
  return Sbox[(in / 16)][(in % 16)];
     344:	3c078000 	lui	a3,0x8000
     348:	3c050000 	lui	a1,0x0
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
     34c:	00821021 	addu	v0,a0,v0
     350:	28ca0007 	slti	t2,a2,7
     354:	00c02021 	addu	a0,a2,zero
    {

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     358:	25ad0000 	addiu	t5,t5,0
     35c:	24e7000f 	addiu	a3,a3,15
     360:	24a50000 	addiu	a1,a1,0
     364:	240bfff0 	addiu	t3,zero,-16
	  temp[0] = word[0][j - 1];
	  temp[1] = word[1][j - 1];
	  temp[2] = word[2][j - 1];
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
     368:	240c0004 	addiu	t4,zero,4
/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
    {

/* RotByte */
      if ((j % nk) == 0)
     36c:	14c00002 	bnez	a2,378 <KeySchedule+0x150>
     370:	0086001a 	div	zero,a0,a2
     374:	0007000d 	break	0x7
     378:	00004010 	mfhi	t0
     37c:	15000055 	bnez	t0,4d4 <KeySchedule+0x2ac>
     380:	00000000 	sll	zero,zero,0x0
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     384:	00007812 	mflo	t7
     388:	8c4e0000 	lw	t6,0(v0)
     38c:	25f8ffff 	addiu	t8,t7,-1
     390:	0018c080 	sll	t8,t8,0x2
     394:	030dc021 	addu	t8,t8,t5
     398:	05c000b1 	bltz	t6,660 <KeySchedule+0x438>
     39c:	01c07821 	addu	t7,t6,zero
     3a0:	01c77024 	and	t6,t6,a3
     3a4:	05c0007b 	bltz	t6,594 <KeySchedule+0x36c>
     3a8:	000f7903 	sra	t7,t7,0x4
     3ac:	000f7900 	sll	t7,t7,0x4
     3b0:	01ee7021 	addu	t6,t7,t6
     3b4:	000e7080 	sll	t6,t6,0x2
     3b8:	00ae7021 	addu	t6,a1,t6
     3bc:	8dcf0000 	lw	t7,0(t6)
     3c0:	8f190000 	lw	t9,0(t8)
	  temp[1] = SubByte (word[2][j - 1]);
     3c4:	8c4e01e0 	lw	t6,480(v0)
    {

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     3c8:	032fc826 	xor	t9,t9,t7
     3cc:	05c0007e 	bltz	t6,5c8 <KeySchedule+0x3a0>
     3d0:	01c07821 	addu	t7,t6,zero
     3d4:	01c77024 	and	t6,t6,a3
     3d8:	05c0007f 	bltz	t6,5d8 <KeySchedule+0x3b0>
     3dc:	000f7903 	sra	t7,t7,0x4
     3e0:	000f7900 	sll	t7,t7,0x4
     3e4:	01ee7821 	addu	t7,t7,t6
     3e8:	000f7880 	sll	t7,t7,0x2
	  temp[1] = SubByte (word[2][j - 1]);
	  temp[2] = SubByte (word[3][j - 1]);
     3ec:	8c4e03c0 	lw	t6,960(v0)
     3f0:	00af7821 	addu	t7,a1,t7
     3f4:	8df80000 	lw	t8,0(t7)
     3f8:	05c00082 	bltz	t6,604 <KeySchedule+0x3dc>
     3fc:	01c07821 	addu	t7,t6,zero
     400:	01c77024 	and	t6,t6,a3
     404:	05c00083 	bltz	t6,614 <KeySchedule+0x3ec>
     408:	000f7903 	sra	t7,t7,0x4
     40c:	000f7900 	sll	t7,t7,0x4
     410:	01ee7821 	addu	t7,t7,t6
     414:	000f7880 	sll	t7,t7,0x2
	  temp[3] = SubByte (word[0][j - 1]);
     418:	8c4efe20 	lw	t6,-480(v0)
     41c:	00af7821 	addu	t7,a1,t7
     420:	8def0000 	lw	t7,0(t7)
     424:	05c00086 	bltz	t6,640 <KeySchedule+0x418>
     428:	01c08021 	addu	s0,t6,zero
     42c:	01c77024 	and	t6,t6,a3
     430:	05c00087 	bltz	t6,650 <KeySchedule+0x428>
     434:	00108103 	sra	s0,s0,0x4
     438:	00108100 	sll	s0,s0,0x4
     43c:	020e7021 	addu	t6,s0,t6
     440:	000e7080 	sll	t6,t6,0x2
     444:	00ae7021 	addu	t6,a1,t6
     448:	8dce0000 	lw	t6,0(t6)
	  temp[0] = word[0][j - 1];
	  temp[1] = word[1][j - 1];
	  temp[2] = word[2][j - 1];
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
     44c:	15400003 	bnez	t2,45c <KeySchedule+0x234>
     450:	00000000 	sll	zero,zero,0x0
     454:	110c0025 	beq	t0,t4,4ec <KeySchedule+0x2c4>
     458:	00000000 	sll	zero,zero,0x0
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
     45c:	8c680000 	lw	t0,0(v1)
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];

/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
     460:	24840001 	addiu	a0,a0,1
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
     464:	0328c826 	xor	t9,t9,t0
     468:	ac59fe24 	sw	t9,-476(v0)
     46c:	8c6801e0 	lw	t0,480(v1)
     470:	00000000 	sll	zero,zero,0x0
     474:	0308c026 	xor	t8,t8,t0
     478:	ac580004 	sw	t8,4(v0)
     47c:	8c6803c0 	lw	t0,960(v1)
     480:	00000000 	sll	zero,zero,0x0
     484:	01e87826 	xor	t7,t7,t0
     488:	ac4f01e4 	sw	t7,484(v0)
     48c:	8c6805a0 	lw	t0,1440(v1)
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];

/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
     490:	24630004 	addiu	v1,v1,4
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
     494:	01c87026 	xor	t6,t6,t0
     498:	ac4e03c4 	sw	t6,964(v0)
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];

/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
     49c:	1489ffb3 	bne	a0,t1,36c <KeySchedule+0x144>
     4a0:	24420004 	addiu	v0,v0,4
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
    }
  return 0;
     4a4:	00001021 	addu	v0,zero,zero
}
     4a8:	8fb00004 	lw	s0,4(sp)
     4ac:	03e00008 	jr	ra
     4b0:	27bd0008 	addiu	sp,sp,8
KeySchedule (int type, int key[32])
{
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
     4b4:	2442f480 	addiu	v0,v0,-2944
     4b8:	1482ff72 	bne	a0,v0,284 <KeySchedule+0x5c>
     4bc:	240b0004 	addiu	t3,zero,4
    {
    case 128128:
      nk = 4;
      nb = 4;
      round = 10;
     4c0:	2409000a 	addiu	t1,zero,10
  int i, j, temp[4];

  switch (type)
    {
    case 128128:
      nk = 4;
     4c4:	080000b6 	j	2d8 <KeySchedule+0xb0>
     4c8:	24060004 	addiu	a2,zero,4
      break;
    case 256256:
      nk = 8;
      nb = 8;
      round = 14;
      break;
     4cc:	080000b6 	j	2d8 <KeySchedule+0xb0>
     4d0:	24060008 	addiu	a2,zero,8
	  temp[2] = SubByte (word[3][j - 1]);
	  temp[3] = SubByte (word[0][j - 1]);
	}
      if ((j % nk) != 0)
	{
	  temp[0] = word[0][j - 1];
     4d4:	8c59fe20 	lw	t9,-480(v0)
	  temp[1] = word[1][j - 1];
     4d8:	8c580000 	lw	t8,0(v0)
	  temp[2] = word[2][j - 1];
     4dc:	8c4f01e0 	lw	t7,480(v0)
	  temp[3] = word[3][j - 1];
     4e0:	8c4e03c0 	lw	t6,960(v0)
     4e4:	08000113 	j	44c <KeySchedule+0x224>
     4e8:	00000000 	sll	zero,zero,0x0
     4ec:	07200074 	bltz	t9,6c0 <KeySchedule+0x498>
     4f0:	03204021 	addu	t0,t9,zero
     4f4:	0327c824 	and	t9,t9,a3
     4f8:	0720006d 	bltz	t9,6b0 <KeySchedule+0x488>
     4fc:	00084103 	sra	t0,t0,0x4
     500:	00084100 	sll	t0,t0,0x4
     504:	0119c821 	addu	t9,t0,t9
     508:	0019c880 	sll	t9,t9,0x2
     50c:	00b9c821 	addu	t9,a1,t9
     510:	8f390000 	lw	t9,0(t9)
     514:	07000064 	bltz	t8,6a8 <KeySchedule+0x480>
     518:	03004021 	addu	t0,t8,zero
     51c:	0307c024 	and	t8,t8,a3
     520:	0700005d 	bltz	t8,698 <KeySchedule+0x470>
     524:	00084103 	sra	t0,t0,0x4
     528:	00084100 	sll	t0,t0,0x4
     52c:	0118c021 	addu	t8,t0,t8
     530:	0018c080 	sll	t8,t8,0x2
     534:	00b8c021 	addu	t8,a1,t8
     538:	8f180000 	lw	t8,0(t8)
     53c:	05e00054 	bltz	t7,690 <KeySchedule+0x468>
     540:	01e04021 	addu	t0,t7,zero
     544:	01e77824 	and	t7,t7,a3
     548:	05e0004d 	bltz	t7,680 <KeySchedule+0x458>
     54c:	00084103 	sra	t0,t0,0x4
     550:	00084100 	sll	t0,t0,0x4
     554:	010f7821 	addu	t7,t0,t7
     558:	000f7880 	sll	t7,t7,0x2
     55c:	00af7821 	addu	t7,a1,t7
     560:	8def0000 	lw	t7,0(t7)
     564:	05c00044 	bltz	t6,678 <KeySchedule+0x450>
     568:	01c04021 	addu	t0,t6,zero
     56c:	01c77024 	and	t6,t6,a3
     570:	05c0003d 	bltz	t6,668 <KeySchedule+0x440>
     574:	00084103 	sra	t0,t0,0x4
     578:	00084100 	sll	t0,t0,0x4
     57c:	010e7021 	addu	t6,t0,t6
     580:	000e7080 	sll	t6,t6,0x2
     584:	00ae7021 	addu	t6,a1,t6
     588:	8dce0000 	lw	t6,0(t6)
     58c:	08000117 	j	45c <KeySchedule+0x234>
     590:	00000000 	sll	zero,zero,0x0
     594:	25ceffff 	addiu	t6,t6,-1
     598:	01cb7025 	or	t6,t6,t3
     59c:	000f7900 	sll	t7,t7,0x4
     5a0:	25ce0001 	addiu	t6,t6,1
     5a4:	01ee7021 	addu	t6,t7,t6
     5a8:	000e7080 	sll	t6,t6,0x2
     5ac:	00ae7021 	addu	t6,a1,t6
    {

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     5b0:	8dcf0000 	lw	t7,0(t6)
     5b4:	8f190000 	lw	t9,0(t8)
	  temp[1] = SubByte (word[2][j - 1]);
     5b8:	8c4e01e0 	lw	t6,480(v0)
    {

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     5bc:	032fc826 	xor	t9,t9,t7
     5c0:	05c1ff84 	bgez	t6,3d4 <KeySchedule+0x1ac>
     5c4:	01c07821 	addu	t7,t6,zero
     5c8:	25cf000f 	addiu	t7,t6,15
     5cc:	01c77024 	and	t6,t6,a3
     5d0:	05c1ff83 	bgez	t6,3e0 <KeySchedule+0x1b8>
     5d4:	000f7903 	sra	t7,t7,0x4
     5d8:	25ceffff 	addiu	t6,t6,-1
     5dc:	01cb7025 	or	t6,t6,t3
     5e0:	25ce0001 	addiu	t6,t6,1
     5e4:	000f7900 	sll	t7,t7,0x4
     5e8:	01ee7821 	addu	t7,t7,t6
     5ec:	000f7880 	sll	t7,t7,0x2
	  temp[1] = SubByte (word[2][j - 1]);
	  temp[2] = SubByte (word[3][j - 1]);
     5f0:	8c4e03c0 	lw	t6,960(v0)
     5f4:	00af7821 	addu	t7,a1,t7
     5f8:	8df80000 	lw	t8,0(t7)
     5fc:	05c1ff80 	bgez	t6,400 <KeySchedule+0x1d8>
     600:	01c07821 	addu	t7,t6,zero
     604:	25cf000f 	addiu	t7,t6,15
     608:	01c77024 	and	t6,t6,a3
     60c:	05c1ff7f 	bgez	t6,40c <KeySchedule+0x1e4>
     610:	000f7903 	sra	t7,t7,0x4
     614:	25ceffff 	addiu	t6,t6,-1
     618:	01cb7025 	or	t6,t6,t3
     61c:	25ce0001 	addiu	t6,t6,1
     620:	000f7900 	sll	t7,t7,0x4
     624:	01ee7821 	addu	t7,t7,t6
     628:	000f7880 	sll	t7,t7,0x2
	  temp[3] = SubByte (word[0][j - 1]);
     62c:	8c4efe20 	lw	t6,-480(v0)
     630:	00af7821 	addu	t7,a1,t7
     634:	8def0000 	lw	t7,0(t7)
     638:	05c1ff7c 	bgez	t6,42c <KeySchedule+0x204>
     63c:	01c08021 	addu	s0,t6,zero
     640:	25d0000f 	addiu	s0,t6,15
     644:	01c77024 	and	t6,t6,a3
     648:	05c1ff7b 	bgez	t6,438 <KeySchedule+0x210>
     64c:	00108103 	sra	s0,s0,0x4
     650:	25ceffff 	addiu	t6,t6,-1
     654:	01cb7025 	or	t6,t6,t3
     658:	0800010e 	j	438 <KeySchedule+0x210>
     65c:	25ce0001 	addiu	t6,t6,1
     660:	080000e8 	j	3a0 <KeySchedule+0x178>
     664:	25cf000f 	addiu	t7,t6,15
     668:	25ceffff 	addiu	t6,t6,-1
     66c:	01cb7025 	or	t6,t6,t3
     670:	0800015e 	j	578 <KeySchedule+0x350>
     674:	25ce0001 	addiu	t6,t6,1
     678:	0800015b 	j	56c <KeySchedule+0x344>
     67c:	25c8000f 	addiu	t0,t6,15
     680:	25efffff 	addiu	t7,t7,-1
     684:	01eb7825 	or	t7,t7,t3
     688:	08000154 	j	550 <KeySchedule+0x328>
     68c:	25ef0001 	addiu	t7,t7,1
     690:	08000151 	j	544 <KeySchedule+0x31c>
     694:	25e8000f 	addiu	t0,t7,15
     698:	2718ffff 	addiu	t8,t8,-1
     69c:	030bc025 	or	t8,t8,t3
     6a0:	0800014a 	j	528 <KeySchedule+0x300>
     6a4:	27180001 	addiu	t8,t8,1
     6a8:	08000147 	j	51c <KeySchedule+0x2f4>
     6ac:	2708000f 	addiu	t0,t8,15
     6b0:	2739ffff 	addiu	t9,t9,-1
     6b4:	032bc825 	or	t9,t9,t3
     6b8:	08000140 	j	500 <KeySchedule+0x2d8>
     6bc:	27390001 	addiu	t9,t9,1
     6c0:	0800013d 	j	4f4 <KeySchedule+0x2cc>
     6c4:	2728000f 	addiu	t0,t9,15
      break;
    case 256192:
      nk = 8;
      nb = 6;
      round = 14;
      break;
     6c8:	080000b6 	j	2d8 <KeySchedule+0xb0>
     6cc:	24060008 	addiu	a2,zero,8
      nb = 4;
      round = 10;
      break;
    case 128192:
      nk = 4;
      nb = 6;
     6d0:	240b0006 	addiu	t3,zero,6
      nk = 4;
      nb = 4;
      round = 10;
      break;
    case 128192:
      nk = 4;
     6d4:	080000b6 	j	2d8 <KeySchedule+0xb0>
     6d8:	24060004 	addiu	a2,zero,4
      round = 12;
      break;
    case 192192:
      nk = 6;
      nb = 6;
      round = 12;
     6dc:	2409000c 	addiu	t1,zero,12
      nb = 4;
      round = 12;
      break;
    case 192192:
      nk = 6;
      nb = 6;
     6e0:	240b0006 	addiu	t3,zero,6
      round = 12;
      break;
     6e4:	080000b6 	j	2d8 <KeySchedule+0xb0>
     6e8:	24060006 	addiu	a2,zero,6
      nb = 8;
      round = 14;
      break;
    case 256128:
      nk = 8;
      nb = 4;
     6ec:	240b0004 	addiu	t3,zero,4
      round = 14;
      break;
     6f0:	080000b6 	j	2d8 <KeySchedule+0xb0>
     6f4:	24060008 	addiu	a2,zero,8
      round = 12;
      break;
    case 128256:
      nk = 4;
      nb = 8;
      round = 14;
     6f8:	2409000e 	addiu	t1,zero,14
      nb = 6;
      round = 12;
      break;
    case 128256:
      nk = 4;
      nb = 8;
     6fc:	240b0008 	addiu	t3,zero,8
      round = 14;
      break;
     700:	080000b6 	j	2d8 <KeySchedule+0xb0>
     704:	24060004 	addiu	a2,zero,4

00000708 <ByteSub_ShiftRow>:
};

/* ********* ByteSub & ShiftRow ********* */
void
ByteSub_ShiftRow (int statemt[32], int nb)
{
     708:	27bdffd0 	addiu	sp,sp,-48
  int temp;

  switch (nb)
     70c:	24020006 	addiu	v0,zero,6
};

/* ********* ByteSub & ShiftRow ********* */
void
ByteSub_ShiftRow (int statemt[32], int nb)
{
     710:	afbe002c 	sw	s8,44(sp)
     714:	afb70028 	sw	s7,40(sp)
     718:	afb60024 	sw	s6,36(sp)
     71c:	afb50020 	sw	s5,32(sp)
     720:	afb4001c 	sw	s4,28(sp)
     724:	afb30018 	sw	s3,24(sp)
     728:	afb20014 	sw	s2,20(sp)
     72c:	afb10010 	sw	s1,16(sp)
  int temp;

  switch (nb)
     730:	10a201c9 	beq	a1,v0,e58 <ByteSub_ShiftRow+0x750>
     734:	afb0000c 	sw	s0,12(sp)
     738:	24020008 	addiu	v0,zero,8
     73c:	10a200a1 	beq	a1,v0,9c4 <ByteSub_ShiftRow+0x2bc>
     740:	24020004 	addiu	v0,zero,4
     744:	10a2000c 	beq	a1,v0,778 <ByteSub_ShiftRow+0x70>
     748:	00000000 	sll	zero,zero,0x0
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
      break;
    }
}
     74c:	8fbe002c 	lw	s8,44(sp)
     750:	8fb70028 	lw	s7,40(sp)
     754:	8fb60024 	lw	s6,36(sp)
     758:	8fb50020 	lw	s5,32(sp)
     75c:	8fb4001c 	lw	s4,28(sp)
     760:	8fb30018 	lw	s3,24(sp)
     764:	8fb20014 	lw	s2,20(sp)
     768:	8fb10010 	lw	s1,16(sp)
     76c:	8fb0000c 	lw	s0,12(sp)
     770:	03e00008 	jr	ra
     774:	27bd0030 	addiu	sp,sp,48
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     778:	8c8e0004 	lw	t6,4(a0)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     77c:	8c8d0014 	lw	t5,20(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     780:	8c8c0024 	lw	t4,36(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     784:	8c8b0034 	lw	t3,52(a0)
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     788:	8c8a0008 	lw	t2,8(a0)
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     78c:	8c890028 	lw	t1,40(a0)
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     790:	8c880018 	lw	t0,24(a0)
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     794:	8c870038 	lw	a3,56(a0)
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     798:	8c86003c 	lw	a2,60(a0)
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     79c:	8c85002c 	lw	a1,44(a0)
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     7a0:	8c82001c 	lw	v0,28(a0)
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     7a4:	8c83000c 	lw	v1,12(a0)
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     7a8:	000e7903 	sra	t7,t6,0x4
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     7ac:	000db903 	sra	s7,t5,0x4
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     7b0:	000cb103 	sra	s6,t4,0x4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     7b4:	000ba903 	sra	s5,t3,0x4
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     7b8:	000aa103 	sra	s4,t2,0x4
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     7bc:	00099903 	sra	s3,t1,0x4
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     7c0:	00089103 	sra	s2,t0,0x4
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     7c4:	00078903 	sra	s1,a3,0x4
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     7c8:	00068103 	sra	s0,a2,0x4
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     7cc:	0005c903 	sra	t9,a1,0x4
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     7d0:	0002c103 	sra	t8,v0,0x4
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     7d4:	000f7900 	sll	t7,t7,0x4
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     7d8:	0019c900 	sll	t9,t9,0x4
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     7dc:	3042000f 	andi	v0,v0,0xf
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     7e0:	31ce000f 	andi	t6,t6,0xf
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     7e4:	31ad000f 	andi	t5,t5,0xf
     7e8:	0017b900 	sll	s7,s7,0x4
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     7ec:	318c000f 	andi	t4,t4,0xf
     7f0:	0016b100 	sll	s6,s6,0x4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     7f4:	316b000f 	andi	t3,t3,0xf
     7f8:	0015a900 	sll	s5,s5,0x4
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     7fc:	314a000f 	andi	t2,t2,0xf
     800:	0014a100 	sll	s4,s4,0x4
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     804:	3129000f 	andi	t1,t1,0xf
     808:	00139900 	sll	s3,s3,0x4
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     80c:	3108000f 	andi	t0,t0,0xf
     810:	00129100 	sll	s2,s2,0x4
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     814:	30e7000f 	andi	a3,a3,0xf
     818:	00118900 	sll	s1,s1,0x4
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     81c:	30c6000f 	andi	a2,a2,0xf
     820:	00108100 	sll	s0,s0,0x4
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     824:	30a5000f 	andi	a1,a1,0xf
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     828:	0018c100 	sll	t8,t8,0x4
     82c:	0302c021 	addu	t8,t8,v0
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     830:	01ee7021 	addu	t6,t7,t6
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     834:	0003f103 	sra	s8,v1,0x4
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     838:	03252821 	addu	a1,t9,a1

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     83c:	02ed6821 	addu	t5,s7,t5
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     840:	02cc6021 	addu	t4,s6,t4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     844:	02ab5821 	addu	t3,s5,t3
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     848:	028a5021 	addu	t2,s4,t2
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     84c:	02694821 	addu	t1,s3,t1
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     850:	02484021 	addu	t0,s2,t0
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     854:	02273821 	addu	a3,s1,a3
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     858:	02063021 	addu	a2,s0,a2
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     85c:	3c020000 	lui	v0,0x0
     860:	24420000 	addiu	v0,v0,0
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     864:	0018c880 	sll	t9,t8,0x2
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     868:	000e7080 	sll	t6,t6,0x2
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     86c:	000d6880 	sll	t5,t5,0x2
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     870:	000c6080 	sll	t4,t4,0x2
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     874:	000b5880 	sll	t3,t3,0x2
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     878:	000a5080 	sll	t2,t2,0x2
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     87c:	00094880 	sll	t1,t1,0x2
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     880:	00084080 	sll	t0,t0,0x2
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     884:	00073880 	sll	a3,a3,0x2
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     888:	3063000f 	andi	v1,v1,0xf
     88c:	001ef100 	sll	s8,s8,0x4
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     890:	00063080 	sll	a2,a2,0x2
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     894:	00052880 	sll	a1,a1,0x2

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     898:	01a26821 	addu	t5,t5,v0
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     89c:	01826021 	addu	t4,t4,v0
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     8a0:	01625821 	addu	t3,t3,v0
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     8a4:	01425021 	addu	t2,t2,v0
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     8a8:	01224821 	addu	t1,t1,v0
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     8ac:	01024021 	addu	t0,t0,v0
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     8b0:	00e23821 	addu	a3,a3,v0
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     8b4:	00c23021 	addu	a2,a2,v0
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     8b8:	00a22821 	addu	a1,a1,v0
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     8bc:	01c27021 	addu	t6,t6,v0
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     8c0:	0322c821 	addu	t9,t9,v0
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     8c4:	03c31821 	addu	v1,s8,v1

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     8c8:	8db80000 	lw	t8,0(t5)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     8cc:	8d8f0000 	lw	t7,0(t4)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     8d0:	8d6d0000 	lw	t5,0(t3)
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     8d4:	8d2c0000 	lw	t4,0(t1)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     8d8:	8d4b0000 	lw	t3,0(t2)
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     8dc:	8d090000 	lw	t1,0(t0)
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     8e0:	8cea0000 	lw	t2,0(a3)
  int temp;

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     8e4:	8dce0000 	lw	t6,0(t6)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     8e8:	8cc70000 	lw	a3,0(a2)
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     8ec:	00031880 	sll	v1,v1,0x2
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     8f0:	8ca60000 	lw	a2,0(a1)
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     8f4:	8f250000 	lw	a1,0(t9)
      statemt[10] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     8f8:	00621821 	addu	v1,v1,v0
     8fc:	8c680000 	lw	t0,0(v1)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     900:	ac8c0008 	sw	t4,8(a0)
      statemt[10] = temp;
     904:	ac8b0028 	sw	t3,40(a0)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     908:	ac8a0018 	sw	t2,24(a0)
      statemt[14] = temp;
     90c:	ac890038 	sw	t1,56(a0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     910:	ac87000c 	sw	a3,12(a0)

  switch (nb)
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     914:	ac980004 	sw	t8,4(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     918:	ac8f0014 	sw	t7,20(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     91c:	ac8d0024 	sw	t5,36(a0)
      statemt[13] = temp;
     920:	ac8e0034 	sw	t6,52(a0)
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     924:	ac86003c 	sw	a2,60(a0)
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     928:	8c870000 	lw	a3,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     92c:	8c860010 	lw	a2,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     930:	8c830030 	lw	v1,48(a0)
      statemt[14] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     934:	ac85002c 	sw	a1,44(a0)
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     938:	8c850020 	lw	a1,32(a0)
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     93c:	00076103 	sra	t4,a3,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     940:	00065903 	sra	t3,a2,0x4
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     944:	00055103 	sra	t2,a1,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     948:	00034903 	sra	t1,v1,0x4
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     94c:	30e7000f 	andi	a3,a3,0xf
     950:	000c6100 	sll	t4,t4,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     954:	30c6000f 	andi	a2,a2,0xf
     958:	000b5900 	sll	t3,t3,0x4
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     95c:	30a5000f 	andi	a1,a1,0xf
     960:	000a5100 	sll	t2,t2,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     964:	3063000f 	andi	v1,v1,0xf
     968:	00094900 	sll	t1,t1,0x4
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     96c:	01873821 	addu	a3,t4,a3
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     970:	01663021 	addu	a2,t3,a2
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     974:	01452821 	addu	a1,t2,a1
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     978:	01231821 	addu	v1,t1,v1
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     97c:	00073880 	sll	a3,a3,0x2
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     980:	00063080 	sll	a2,a2,0x2
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     984:	00052880 	sll	a1,a1,0x2
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     988:	00031880 	sll	v1,v1,0x2
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     98c:	00e23821 	addu	a3,a3,v0
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     990:	00c23021 	addu	a2,a2,v0
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     994:	00a22821 	addu	a1,a1,v0
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     998:	00621021 	addu	v0,v1,v0
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     99c:	8ce70000 	lw	a3,0(a3)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     9a0:	8cc60000 	lw	a2,0(a2)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     9a4:	8ca50000 	lw	a1,0(a1)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     9a8:	8c420000 	lw	v0,0(v0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
     9ac:	ac88001c 	sw	t0,28(a0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     9b0:	ac870000 	sw	a3,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     9b4:	ac860010 	sw	a2,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     9b8:	ac850020 	sw	a1,32(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
     9bc:	080001d3 	j	74c <ByteSub_ShiftRow+0x44>
     9c0:	ac820030 	sw	v0,48(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     9c4:	8c8e0004 	lw	t6,4(a0)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     9c8:	8c8d0014 	lw	t5,20(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     9cc:	8c8c0024 	lw	t4,36(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     9d0:	8c8b0034 	lw	t3,52(a0)
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     9d4:	8c8a0044 	lw	t2,68(a0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     9d8:	8c890054 	lw	t1,84(a0)
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     9dc:	8c880064 	lw	t0,100(a0)
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     9e0:	8c870074 	lw	a3,116(a0)
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     9e4:	8c860038 	lw	a2,56(a0)
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     9e8:	8c820018 	lw	v0,24(a0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     9ec:	8c830008 	lw	v1,8(a0)
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     9f0:	8c850068 	lw	a1,104(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     9f4:	000e7903 	sra	t7,t6,0x4
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     9f8:	000db903 	sra	s7,t5,0x4
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     9fc:	000cb103 	sra	s6,t4,0x4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     a00:	000ba903 	sra	s5,t3,0x4
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     a04:	000aa103 	sra	s4,t2,0x4
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     a08:	00099903 	sra	s3,t1,0x4
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     a0c:	00089103 	sra	s2,t0,0x4
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     a10:	00078903 	sra	s1,a3,0x4
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     a14:	00068103 	sra	s0,a2,0x4
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     a18:	0002c903 	sra	t9,v0,0x4
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     a1c:	0003f103 	sra	s8,v1,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     a20:	000f7900 	sll	t7,t7,0x4
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     a24:	0017b900 	sll	s7,s7,0x4
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     a28:	0016b100 	sll	s6,s6,0x4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     a2c:	0015a900 	sll	s5,s5,0x4
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     a30:	0014a100 	sll	s4,s4,0x4
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     a34:	00139900 	sll	s3,s3,0x4
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     a38:	00129100 	sll	s2,s2,0x4
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     a3c:	00118900 	sll	s1,s1,0x4
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     a40:	00108100 	sll	s0,s0,0x4
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     a44:	3042000f 	andi	v0,v0,0xf
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     a48:	001ef100 	sll	s8,s8,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     a4c:	31ce000f 	andi	t6,t6,0xf
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     a50:	31ad000f 	andi	t5,t5,0xf
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     a54:	318c000f 	andi	t4,t4,0xf
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     a58:	316b000f 	andi	t3,t3,0xf
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     a5c:	314a000f 	andi	t2,t2,0xf
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     a60:	3129000f 	andi	t1,t1,0xf
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     a64:	3108000f 	andi	t0,t0,0xf
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     a68:	30e7000f 	andi	a3,a3,0xf
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     a6c:	30c6000f 	andi	a2,a2,0xf
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     a70:	0019c900 	sll	t9,t9,0x4
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     a74:	3063000f 	andi	v1,v1,0xf
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     a78:	0322c821 	addu	t9,t9,v0
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     a7c:	0005c103 	sra	t8,a1,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     a80:	01ee7021 	addu	t6,t7,t6
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     a84:	02ed6821 	addu	t5,s7,t5
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     a88:	02cc6021 	addu	t4,s6,t4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     a8c:	02ab5821 	addu	t3,s5,t3
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     a90:	028a5021 	addu	t2,s4,t2
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     a94:	02694821 	addu	t1,s3,t1
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     a98:	02484021 	addu	t0,s2,t0
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     a9c:	02273821 	addu	a3,s1,a3
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     aa0:	02063021 	addu	a2,s0,a2
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     aa4:	03c31821 	addu	v1,s8,v1
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     aa8:	3c020000 	lui	v0,0x0
     aac:	24420000 	addiu	v0,v0,0
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     ab0:	0018c100 	sll	t8,t8,0x4
     ab4:	30a5000f 	andi	a1,a1,0xf
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     ab8:	000e7080 	sll	t6,t6,0x2
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     abc:	000d6880 	sll	t5,t5,0x2
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     ac0:	000c6080 	sll	t4,t4,0x2
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     ac4:	000b5880 	sll	t3,t3,0x2
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     ac8:	000a5080 	sll	t2,t2,0x2
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     acc:	00094880 	sll	t1,t1,0x2
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     ad0:	00084080 	sll	t0,t0,0x2
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     ad4:	00073880 	sll	a3,a3,0x2
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     ad8:	00063080 	sll	a2,a2,0x2
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     adc:	00031880 	sll	v1,v1,0x2
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     ae0:	01a26821 	addu	t5,t5,v0
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     ae4:	01826021 	addu	t4,t4,v0
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     ae8:	01625821 	addu	t3,t3,v0
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     aec:	01425021 	addu	t2,t2,v0
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     af0:	01224821 	addu	t1,t1,v0
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     af4:	01024021 	addu	t0,t0,v0
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     af8:	00e23821 	addu	a3,a3,v0
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     afc:	00c23021 	addu	a2,a2,v0
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     b00:	03052821 	addu	a1,t8,a1
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     b04:	01c27021 	addu	t6,t6,v0
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     b08:	00621821 	addu	v1,v1,v0
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     b0c:	8daf0000 	lw	t7,0(t5)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     b10:	8dce0000 	lw	t6,0(t6)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     b14:	8d8d0000 	lw	t5,0(t4)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     b18:	8c630000 	lw	v1,0(v1)
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     b1c:	8d6c0000 	lw	t4,0(t3)
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     b20:	0019c080 	sll	t8,t9,0x2
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     b24:	8d4b0000 	lw	t3,0(t2)
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     b28:	00052880 	sll	a1,a1,0x2
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     b2c:	8d2a0000 	lw	t2,0(t1)
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     b30:	8d090000 	lw	t1,0(t0)
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     b34:	8ce80000 	lw	t0,0(a3)
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     b38:	8cc70000 	lw	a3,0(a2)
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     b3c:	00a22821 	addu	a1,a1,v0
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     b40:	0302c021 	addu	t8,t8,v0
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     b44:	8ca60000 	lw	a2,0(a1)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     b48:	afa30000 	sw	v1,0(sp)
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     b4c:	8f050000 	lw	a1,0(t8)
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     b50:	ac8f0004 	sw	t7,4(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     b54:	ac8d0014 	sw	t5,20(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     b58:	ac8c0024 	sw	t4,36(a0)
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     b5c:	ac8b0034 	sw	t3,52(a0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     b60:	ac8a0044 	sw	t2,68(a0)
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     b64:	ac890054 	sw	t1,84(a0)
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     b68:	ac880064 	sw	t0,100(a0)
      statemt[29] = temp;
     b6c:	ac8e0074 	sw	t6,116(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     b70:	ac870008 	sw	a3,8(a0)
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     b74:	8c8e0078 	lw	t6,120(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     b78:	8c8f0048 	lw	t7,72(a0)
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     b7c:	8c8d0028 	lw	t5,40(a0)
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     b80:	8c8c0058 	lw	t4,88(a0)
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     b84:	8c8b000c 	lw	t3,12(a0)
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     b88:	8c8a004c 	lw	t2,76(a0)
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     b8c:	8c89001c 	lw	t1,28(a0)
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     b90:	8c88005c 	lw	t0,92(a0)
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     b94:	8c87002c 	lw	a3,44(a0)
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     b98:	8c83003c 	lw	v1,60(a0)
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     b9c:	ac860038 	sw	a2,56(a0)
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     ba0:	ac850068 	sw	a1,104(a0)
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     ba4:	8c86006c 	lw	a2,108(a0)
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     ba8:	8c85007c 	lw	a1,124(a0)
      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     bac:	000eb903 	sra	s7,t6,0x4
     bb0:	0017b900 	sll	s7,s7,0x4
     bb4:	31ce000f 	andi	t6,t6,0xf

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     bb8:	000ff103 	sra	s8,t7,0x4
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     bbc:	000db103 	sra	s6,t5,0x4
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     bc0:	000ca903 	sra	s5,t4,0x4
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     bc4:	000ba103 	sra	s4,t3,0x4
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     bc8:	000a9903 	sra	s3,t2,0x4
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     bcc:	00099103 	sra	s2,t1,0x4
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     bd0:	00088903 	sra	s1,t0,0x4
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     bd4:	00078103 	sra	s0,a3,0x4
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     bd8:	0006c903 	sra	t9,a2,0x4
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     bdc:	0005c103 	sra	t8,a1,0x4
      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     be0:	02ee7021 	addu	t6,s7,t6
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     be4:	0003b903 	sra	s7,v1,0x4

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     be8:	001ef100 	sll	s8,s8,0x4
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     bec:	00129100 	sll	s2,s2,0x4
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     bf0:	00118900 	sll	s1,s1,0x4
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     bf4:	00108100 	sll	s0,s0,0x4
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     bf8:	0019c900 	sll	t9,t9,0x4
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     bfc:	0018c100 	sll	t8,t8,0x4

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     c00:	31ef000f 	andi	t7,t7,0xf
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     c04:	31ad000f 	andi	t5,t5,0xf
     c08:	0016b100 	sll	s6,s6,0x4
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     c0c:	318c000f 	andi	t4,t4,0xf
     c10:	0015a900 	sll	s5,s5,0x4
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     c14:	316b000f 	andi	t3,t3,0xf
     c18:	0014a100 	sll	s4,s4,0x4
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     c1c:	314a000f 	andi	t2,t2,0xf
     c20:	00139900 	sll	s3,s3,0x4
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     c24:	3129000f 	andi	t1,t1,0xf
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     c28:	3108000f 	andi	t0,t0,0xf
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     c2c:	30e7000f 	andi	a3,a3,0xf
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     c30:	30c6000f 	andi	a2,a2,0xf
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     c34:	30a5000f 	andi	a1,a1,0xf
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     c38:	3063000f 	andi	v1,v1,0xf
     c3c:	0017b900 	sll	s7,s7,0x4

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     c40:	03cf7821 	addu	t7,s8,t7
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     c44:	02494821 	addu	t1,s2,t1
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     c48:	02284021 	addu	t0,s1,t0
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     c4c:	02073821 	addu	a3,s0,a3
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     c50:	03263021 	addu	a2,t9,a2
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     c54:	03052821 	addu	a1,t8,a1
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     c58:	02cd6821 	addu	t5,s6,t5
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     c5c:	02ac6021 	addu	t4,s5,t4
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     c60:	028b5821 	addu	t3,s4,t3
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     c64:	026a5021 	addu	t2,s3,t2
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     c68:	02e31821 	addu	v1,s7,v1

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     c6c:	000f7880 	sll	t7,t7,0x2
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     c70:	000e7080 	sll	t6,t6,0x2
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     c74:	000d6880 	sll	t5,t5,0x2
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     c78:	000c6080 	sll	t4,t4,0x2
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     c7c:	000b5880 	sll	t3,t3,0x2
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     c80:	000a5080 	sll	t2,t2,0x2
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     c84:	00094880 	sll	t1,t1,0x2
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     c88:	00084080 	sll	t0,t0,0x2
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     c8c:	00073880 	sll	a3,a3,0x2
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     c90:	00063080 	sll	a2,a2,0x2
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     c94:	00052880 	sll	a1,a1,0x2
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     c98:	00031880 	sll	v1,v1,0x2

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     c9c:	01e27821 	addu	t7,t7,v0
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     ca0:	01c27021 	addu	t6,t6,v0
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     ca4:	01a26821 	addu	t5,t5,v0
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     ca8:	01826021 	addu	t4,t4,v0
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     cac:	00621821 	addu	v1,v1,v0
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     cb0:	01625821 	addu	t3,t3,v0
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     cb4:	01425021 	addu	t2,t2,v0
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     cb8:	01224821 	addu	t1,t1,v0
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     cbc:	01024021 	addu	t0,t0,v0
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     cc0:	00e23821 	addu	a3,a3,v0
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     cc4:	00c23021 	addu	a2,a2,v0
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     cc8:	00a22821 	addu	a1,a1,v0

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     ccc:	8dfe0000 	lw	s8,0(t7)
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     cd0:	8d4a0000 	lw	t2,0(t2)
      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     cd4:	8dcf0000 	lw	t7,0(t6)
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     cd8:	8d290000 	lw	t1,0(t1)
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     cdc:	8dae0000 	lw	t6,0(t5)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     ce0:	8d080000 	lw	t0,0(t0)
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     ce4:	8d8d0000 	lw	t5,0(t4)
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     ce8:	8ce70000 	lw	a3,0(a3)
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     cec:	8cc60000 	lw	a2,0(a2)
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     cf0:	8ca50000 	lw	a1,0(a1)
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     cf4:	8c6c0000 	lw	t4,0(v1)
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     cf8:	8d6b0000 	lw	t3,0(t3)
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;
     cfc:	8fa30000 	lw	v1,0(sp)
      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     d00:	ac8f0048 	sw	t7,72(a0)
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     d04:	ac8e0078 	sw	t6,120(a0)
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     d08:	ac8d0028 	sw	t5,40(a0)
      statemt[22] = temp;
     d0c:	ac830058 	sw	v1,88(a0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     d10:	ac8a000c 	sw	t2,12(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     d14:	ac9e0018 	sw	s8,24(a0)
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
     d18:	ac8b004c 	sw	t3,76(a0)
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     d1c:	8c8b0000 	lw	t3,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     d20:	8c8a0010 	lw	t2,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     d24:	8c830070 	lw	v1,112(a0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     d28:	ac88001c 	sw	t0,28(a0)
      statemt[23] = temp;
     d2c:	ac89005c 	sw	t1,92(a0)
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     d30:	8c880030 	lw	t0,48(a0)
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     d34:	8c890020 	lw	t1,32(a0)
      statemt[19] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     d38:	ac86002c 	sw	a2,44(a0)
      statemt[27] = temp;
     d3c:	ac87006c 	sw	a3,108(a0)
      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     d40:	8c860050 	lw	a2,80(a0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     d44:	8c870040 	lw	a3,64(a0)
      statemt[23] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     d48:	ac85003c 	sw	a1,60(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     d4c:	8c850060 	lw	a1,96(a0)
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     d50:	000bc903 	sra	t9,t3,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     d54:	000a9103 	sra	s2,t2,0x4
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     d58:	0009c103 	sra	t8,t1,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     d5c:	00087903 	sra	t7,t0,0x4
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     d60:	00077103 	sra	t6,a3,0x4
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     d64:	00066903 	sra	t5,a2,0x4
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     d68:	00058903 	sra	s1,a1,0x4
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     d6c:	00038103 	sra	s0,v1,0x4
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     d70:	316b000f 	andi	t3,t3,0xf
     d74:	0019c900 	sll	t9,t9,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     d78:	314a000f 	andi	t2,t2,0xf
     d7c:	00129100 	sll	s2,s2,0x4
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     d80:	3129000f 	andi	t1,t1,0xf
     d84:	0018c100 	sll	t8,t8,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     d88:	3108000f 	andi	t0,t0,0xf
     d8c:	000f7900 	sll	t7,t7,0x4
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     d90:	30e7000f 	andi	a3,a3,0xf
     d94:	000e7100 	sll	t6,t6,0x4
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     d98:	30c6000f 	andi	a2,a2,0xf
     d9c:	000d6900 	sll	t5,t5,0x4
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     da0:	30a5000f 	andi	a1,a1,0xf
     da4:	00118900 	sll	s1,s1,0x4
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     da8:	3063000f 	andi	v1,v1,0xf
     dac:	00108100 	sll	s0,s0,0x4
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     db0:	032b5821 	addu	t3,t9,t3
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     db4:	024a5021 	addu	t2,s2,t2
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     db8:	03094821 	addu	t1,t8,t1
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     dbc:	01e84021 	addu	t0,t7,t0
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     dc0:	01c73821 	addu	a3,t6,a3
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     dc4:	01a63021 	addu	a2,t5,a2
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     dc8:	02252821 	addu	a1,s1,a1
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     dcc:	02031821 	addu	v1,s0,v1
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     dd0:	000b5880 	sll	t3,t3,0x2
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     dd4:	000a5080 	sll	t2,t2,0x2
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     dd8:	00094880 	sll	t1,t1,0x2
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     ddc:	00084080 	sll	t0,t0,0x2
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     de0:	00073880 	sll	a3,a3,0x2
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     de4:	00063080 	sll	a2,a2,0x2
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     de8:	00052880 	sll	a1,a1,0x2
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     dec:	00031880 	sll	v1,v1,0x2
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     df0:	01625821 	addu	t3,t3,v0
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     df4:	01425021 	addu	t2,t2,v0
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     df8:	01224821 	addu	t1,t1,v0
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     dfc:	01024021 	addu	t0,t0,v0
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     e00:	00e23821 	addu	a3,a3,v0
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     e04:	00c23021 	addu	a2,a2,v0
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     e08:	00a22821 	addu	a1,a1,v0
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     e0c:	00621021 	addu	v0,v1,v0
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     e10:	8d6b0000 	lw	t3,0(t3)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     e14:	8d4a0000 	lw	t2,0(t2)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     e18:	8d290000 	lw	t1,0(t1)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     e1c:	8d080000 	lw	t0,0(t0)
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     e20:	8ce70000 	lw	a3,0(a3)
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     e24:	8cc60000 	lw	a2,0(a2)
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     e28:	8ca50000 	lw	a1,0(a1)
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     e2c:	8c420000 	lw	v0,0(v0)
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = temp;
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = temp;
     e30:	ac8c007c 	sw	t4,124(a0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     e34:	ac8b0000 	sw	t3,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     e38:	ac8a0010 	sw	t2,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     e3c:	ac890020 	sw	t1,32(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     e40:	ac880030 	sw	t0,48(a0)
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     e44:	ac870040 	sw	a3,64(a0)
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     e48:	ac860050 	sw	a2,80(a0)
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     e4c:	ac850060 	sw	a1,96(a0)
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     e50:	080001d3 	j	74c <ByteSub_ShiftRow+0x44>
     e54:	ac820070 	sw	v0,112(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     e58:	8c8e0004 	lw	t6,4(a0)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     e5c:	8c8d0014 	lw	t5,20(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     e60:	8c8c0024 	lw	t4,36(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     e64:	8c8b0034 	lw	t3,52(a0)
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     e68:	8c8a0044 	lw	t2,68(a0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     e6c:	8c890054 	lw	t1,84(a0)
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     e70:	8c880008 	lw	t0,8(a0)
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     e74:	8c870028 	lw	a3,40(a0)
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     e78:	8c860048 	lw	a2,72(a0)
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     e7c:	8c850038 	lw	a1,56(a0)
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     e80:	8c820058 	lw	v0,88(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     e84:	8c830018 	lw	v1,24(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     e88:	000ec103 	sra	t8,t6,0x4
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     e8c:	000db903 	sra	s7,t5,0x4
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     e90:	000cb103 	sra	s6,t4,0x4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     e94:	000ba903 	sra	s5,t3,0x4
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     e98:	000aa103 	sra	s4,t2,0x4
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     e9c:	00099903 	sra	s3,t1,0x4
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     ea0:	00089103 	sra	s2,t0,0x4
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     ea4:	00078903 	sra	s1,a3,0x4
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     ea8:	00068103 	sra	s0,a2,0x4
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     eac:	0005c903 	sra	t9,a1,0x4
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     eb0:	00027903 	sra	t7,v0,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     eb4:	0018c100 	sll	t8,t8,0x4
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     eb8:	0017b900 	sll	s7,s7,0x4
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     ebc:	0016b100 	sll	s6,s6,0x4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     ec0:	0015a900 	sll	s5,s5,0x4
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     ec4:	0014a100 	sll	s4,s4,0x4
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     ec8:	00139900 	sll	s3,s3,0x4
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     ecc:	00129100 	sll	s2,s2,0x4
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     ed0:	00118900 	sll	s1,s1,0x4
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     ed4:	00108100 	sll	s0,s0,0x4
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     ed8:	0019c900 	sll	t9,t9,0x4
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     edc:	3042000f 	andi	v0,v0,0xf
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     ee0:	31ce000f 	andi	t6,t6,0xf
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     ee4:	31ad000f 	andi	t5,t5,0xf
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     ee8:	318c000f 	andi	t4,t4,0xf
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     eec:	316b000f 	andi	t3,t3,0xf
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     ef0:	314a000f 	andi	t2,t2,0xf
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     ef4:	3129000f 	andi	t1,t1,0xf
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     ef8:	3108000f 	andi	t0,t0,0xf
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     efc:	30e7000f 	andi	a3,a3,0xf
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     f00:	30c6000f 	andi	a2,a2,0xf
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     f04:	30a5000f 	andi	a1,a1,0xf
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     f08:	000f7900 	sll	t7,t7,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     f0c:	030e7021 	addu	t6,t8,t6
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     f10:	02ed6821 	addu	t5,s7,t5
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     f14:	02cc6021 	addu	t4,s6,t4
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     f18:	02ab5821 	addu	t3,s5,t3
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     f1c:	028a5021 	addu	t2,s4,t2
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     f20:	02694821 	addu	t1,s3,t1
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     f24:	02484021 	addu	t0,s2,t0
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     f28:	02273821 	addu	a3,s1,a3
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     f2c:	02063021 	addu	a2,s0,a2
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     f30:	0003f103 	sra	s8,v1,0x4
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     f34:	03252821 	addu	a1,t9,a1
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     f38:	01e27821 	addu	t7,t7,v0
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     f3c:	3c020000 	lui	v0,0x0
     f40:	24420000 	addiu	v0,v0,0

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     f44:	001ef100 	sll	s8,s8,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     f48:	000e7080 	sll	t6,t6,0x2
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     f4c:	000d6880 	sll	t5,t5,0x2
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     f50:	000c6080 	sll	t4,t4,0x2
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     f54:	000b5880 	sll	t3,t3,0x2
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     f58:	000a5080 	sll	t2,t2,0x2
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     f5c:	00094880 	sll	t1,t1,0x2
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     f60:	00084080 	sll	t0,t0,0x2
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     f64:	00073880 	sll	a3,a3,0x2
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     f68:	00063080 	sll	a2,a2,0x2
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     f6c:	3063000f 	andi	v1,v1,0xf
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     f70:	00052880 	sll	a1,a1,0x2
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     f74:	000f7880 	sll	t7,t7,0x2
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     f78:	01a26821 	addu	t5,t5,v0
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     f7c:	01826021 	addu	t4,t4,v0
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     f80:	01625821 	addu	t3,t3,v0
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     f84:	01425021 	addu	t2,t2,v0
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     f88:	01224821 	addu	t1,t1,v0
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     f8c:	00e23821 	addu	a3,a3,v0
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     f90:	00c23021 	addu	a2,a2,v0
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     f94:	00a22821 	addu	a1,a1,v0
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     f98:	01e27821 	addu	t7,t7,v0
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     f9c:	01c27021 	addu	t6,t6,v0
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     fa0:	01024021 	addu	t0,t0,v0
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     fa4:	03c31821 	addu	v1,s8,v1
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     fa8:	8db80000 	lw	t8,0(t5)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     fac:	8dce0000 	lw	t6,0(t6)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     fb0:	8d8d0000 	lw	t5,0(t4)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     fb4:	8d080000 	lw	t0,0(t0)
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     fb8:	8d6c0000 	lw	t4,0(t3)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     fbc:	00031880 	sll	v1,v1,0x2
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     fc0:	8d4b0000 	lw	t3,0(t2)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     fc4:	8d2a0000 	lw	t2,0(t1)
      statemt[21] = temp;

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     fc8:	8ce90000 	lw	t1,0(a3)
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     fcc:	8cc70000 	lw	a3,0(a2)
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     fd0:	8ca60000 	lw	a2,0(a1)
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     fd4:	8de50000 	lw	a1,0(t7)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     fd8:	00621821 	addu	v1,v1,v0
     fdc:	8c6f0000 	lw	t7,0(v1)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     fe0:	ac980004 	sw	t8,4(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     fe4:	ac8d0014 	sw	t5,20(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     fe8:	ac8c0024 	sw	t4,36(a0)
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     fec:	ac8b0034 	sw	t3,52(a0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     ff0:	ac8a0044 	sw	t2,68(a0)
      statemt[21] = temp;
     ff4:	ac8e0054 	sw	t6,84(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     ff8:	ac890008 	sw	t1,8(a0)
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     ffc:	ac870028 	sw	a3,40(a0)
      statemt[18] = temp;
    1000:	ac880048 	sw	t0,72(a0)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
    1004:	ac860018 	sw	a2,24(a0)
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
    1008:	8c8e000c 	lw	t6,12(a0)
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
    100c:	8c8d003c 	lw	t5,60(a0)
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
    1010:	8c8c001c 	lw	t4,28(a0)
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
    1014:	8c8b004c 	lw	t3,76(a0)
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
    1018:	8c8a002c 	lw	t2,44(a0)
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
    101c:	8c89005c 	lw	t1,92(a0)
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
    1020:	8c880000 	lw	t0,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
    1024:	8c870010 	lw	a3,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
    1028:	8c860020 	lw	a2,32(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
    102c:	8c830040 	lw	v1,64(a0)
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
    1030:	ac850038 	sw	a1,56(a0)
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
    1034:	8c850030 	lw	a1,48(a0)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
    1038:	000ef103 	sra	s8,t6,0x4
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
    103c:	000db903 	sra	s7,t5,0x4
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
    1040:	000cb103 	sra	s6,t4,0x4
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
    1044:	000ba903 	sra	s5,t3,0x4
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
    1048:	000aa103 	sra	s4,t2,0x4
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
    104c:	00099903 	sra	s3,t1,0x4
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
    1050:	00089103 	sra	s2,t0,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
    1054:	00078903 	sra	s1,a3,0x4
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
    1058:	00068103 	sra	s0,a2,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
    105c:	0005c903 	sra	t9,a1,0x4
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
    1060:	0003c103 	sra	t8,v1,0x4
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
    1064:	31ce000f 	andi	t6,t6,0xf
    1068:	001ef100 	sll	s8,s8,0x4
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
    106c:	31ad000f 	andi	t5,t5,0xf
    1070:	0017b900 	sll	s7,s7,0x4
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
    1074:	318c000f 	andi	t4,t4,0xf
    1078:	0016b100 	sll	s6,s6,0x4
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
    107c:	316b000f 	andi	t3,t3,0xf
    1080:	0015a900 	sll	s5,s5,0x4
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
    1084:	314a000f 	andi	t2,t2,0xf
    1088:	0014a100 	sll	s4,s4,0x4
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
    108c:	3129000f 	andi	t1,t1,0xf
    1090:	00139900 	sll	s3,s3,0x4
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
    1094:	3108000f 	andi	t0,t0,0xf
    1098:	00129100 	sll	s2,s2,0x4
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
    109c:	30e7000f 	andi	a3,a3,0xf
    10a0:	00118900 	sll	s1,s1,0x4
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
    10a4:	30c6000f 	andi	a2,a2,0xf
    10a8:	00108100 	sll	s0,s0,0x4
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
    10ac:	30a5000f 	andi	a1,a1,0xf
    10b0:	0019c900 	sll	t9,t9,0x4
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
    10b4:	3063000f 	andi	v1,v1,0xf
    10b8:	0018c100 	sll	t8,t8,0x4
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
    10bc:	03ce7021 	addu	t6,s8,t6
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
    10c0:	02ed6821 	addu	t5,s7,t5
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
    10c4:	02cc6021 	addu	t4,s6,t4
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
    10c8:	02ab5821 	addu	t3,s5,t3
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
    10cc:	028a5021 	addu	t2,s4,t2
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
    10d0:	02694821 	addu	t1,s3,t1
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
    10d4:	02484021 	addu	t0,s2,t0
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
    10d8:	02273821 	addu	a3,s1,a3
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
    10dc:	02063021 	addu	a2,s0,a2
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
    10e0:	03252821 	addu	a1,t9,a1
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
    10e4:	03031821 	addu	v1,t8,v1
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
    10e8:	000e7080 	sll	t6,t6,0x2
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
    10ec:	000d6880 	sll	t5,t5,0x2
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
    10f0:	000c6080 	sll	t4,t4,0x2
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
    10f4:	000b5880 	sll	t3,t3,0x2
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
    10f8:	000a5080 	sll	t2,t2,0x2
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
    10fc:	00094880 	sll	t1,t1,0x2
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
    1100:	00084080 	sll	t0,t0,0x2
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
    1104:	00073880 	sll	a3,a3,0x2
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
    1108:	00063080 	sll	a2,a2,0x2
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
    110c:	00052880 	sll	a1,a1,0x2
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
    1110:	00031880 	sll	v1,v1,0x2
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
    1114:	01c27021 	addu	t6,t6,v0
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
    1118:	01a26821 	addu	t5,t5,v0
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
    111c:	01826021 	addu	t4,t4,v0
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
    1120:	01625821 	addu	t3,t3,v0
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
    1124:	01425021 	addu	t2,t2,v0
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
    1128:	01224821 	addu	t1,t1,v0
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
    112c:	01024021 	addu	t0,t0,v0
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
    1130:	00e23821 	addu	a3,a3,v0
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
    1134:	00c23021 	addu	a2,a2,v0
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
    1138:	00a22821 	addu	a1,a1,v0
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
    113c:	00621821 	addu	v1,v1,v0
    1140:	8c630000 	lw	v1,0(v1)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
    1144:	8dce0000 	lw	t6,0(t6)
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
    1148:	8dad0000 	lw	t5,0(t5)
      statemt[15] = temp;
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
    114c:	8d8c0000 	lw	t4,0(t4)
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
    1150:	8d6b0000 	lw	t3,0(t3)
      statemt[19] = temp;
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
    1154:	8d4a0000 	lw	t2,0(t2)
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
    1158:	8d290000 	lw	t1,0(t1)
      statemt[23] = temp;

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
    115c:	8d080000 	lw	t0,0(t0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
    1160:	8ce70000 	lw	a3,0(a3)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
    1164:	8cc60000 	lw	a2,0(a2)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
    1168:	8ca50000 	lw	a1,0(a1)
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = temp;
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = temp;
    116c:	ac8f0058 	sw	t7,88(a0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
    1170:	ac8d000c 	sw	t5,12(a0)
      statemt[15] = temp;
    1174:	ac8e003c 	sw	t6,60(a0)
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
    1178:	ac8b001c 	sw	t3,28(a0)
      statemt[19] = temp;
    117c:	ac8c004c 	sw	t4,76(a0)
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
    1180:	ac89002c 	sw	t1,44(a0)
      statemt[23] = temp;
    1184:	ac8a005c 	sw	t2,92(a0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
    1188:	ac880000 	sw	t0,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
    118c:	ac870010 	sw	a3,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
    1190:	ac860020 	sw	a2,32(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
    1194:	ac850030 	sw	a1,48(a0)
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
    1198:	ac830040 	sw	v1,64(a0)
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
    119c:	8c830050 	lw	v1,80(a0)
    11a0:	00000000 	sll	zero,zero,0x0
    11a4:	00032903 	sra	a1,v1,0x4
    11a8:	00052900 	sll	a1,a1,0x4
    11ac:	3063000f 	andi	v1,v1,0xf
    11b0:	00a31821 	addu	v1,a1,v1
    11b4:	00031880 	sll	v1,v1,0x2
    11b8:	00621021 	addu	v0,v1,v0
    11bc:	8c420000 	lw	v0,0(v0)
      break;
    11c0:	080001d3 	j	74c <ByteSub_ShiftRow+0x44>
    11c4:	ac820050 	sw	v0,80(a0)

000011c8 <encrypt.clone.0>:
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "encrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_enc_statemt[16] =
    11c8:	3c020000 	lui	v0,0x0
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
    11cc:	27bdff10 	addiu	sp,sp,-240
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "encrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_enc_statemt[16] =
    11d0:	244208b8 	addiu	v0,v0,2232
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
    11d4:	afbf00ec 	sw	ra,236(sp)
    11d8:	afb600e8 	sw	s6,232(sp)
    11dc:	afb500e4 	sw	s5,228(sp)
    11e0:	afb400e0 	sw	s4,224(sp)
    11e4:	afb300dc 	sw	s3,220(sp)
    11e8:	afb200d8 	sw	s2,216(sp)
    11ec:	afb100d4 	sw	s1,212(sp)
    11f0:	afb000d0 	sw	s0,208(sp)
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "encrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_enc_statemt[16] =
    11f4:	27a30010 	addiu	v1,sp,16
    11f8:	24440040 	addiu	a0,v0,64
    11fc:	8c480000 	lw	t0,0(v0)
    1200:	8c470004 	lw	a3,4(v0)
    1204:	8c460008 	lw	a2,8(v0)
    1208:	8c45000c 	lw	a1,12(v0)
    120c:	24420010 	addiu	v0,v0,16
    1210:	ac680000 	sw	t0,0(v1)
    1214:	ac670004 	sw	a3,4(v1)
    1218:	ac660008 	sw	a2,8(v1)
    121c:	ac65000c 	sw	a1,12(v1)
    1220:	1444fff6 	bne	v0,a0,11fc <encrypt.clone.0+0x34>
    1224:	24630010 	addiu	v1,v1,16
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
    1228:	3c040001 	lui	a0,0x1
    122c:	3c050000 	lui	a1,0x0
    1230:	3484f480 	ori	a0,a0,0xf480
    1234:	0c000000 	jal	0 <AddRoundKey.clone.2>
    1238:	24a50000 	addiu	a1,a1,0
  switch (type)
    {
    case 128128:
      round = 0;
      nb = 4;
    123c:	24020004 	addiu	v0,zero,4
    case 256256:
      round = 4;
      nb = 8;
      break;
    }
  AddRoundKey (statemt, type, 0);
    1240:	00002021 	addu	a0,zero,zero

  KeySchedule (type, key);
  switch (type)
    {
    case 128128:
      round = 0;
    1244:	af800000 	sw	zero,0(gp)
    case 256256:
      round = 4;
      nb = 8;
      break;
    }
  AddRoundKey (statemt, type, 0);
    1248:	0c000000 	jal	0 <AddRoundKey.clone.2>
    124c:	af820000 	sw	v0,0(gp)
  for (i = 1; i <= round + 9; ++i)
    1250:	8f820000 	lw	v0,0(gp)
    1254:	00000000 	sll	zero,zero,0x0
    1258:	2842fff8 	slti	v0,v0,-8
    125c:	1440013d 	bnez	v0,1754 <encrypt.clone.0+0x58c>
    1260:	24100001 	addiu	s0,zero,1
    1264:	3c140000 	lui	s4,0x0
    1268:	26920000 	addiu	s2,s4,0
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
    126c:	3c160000 	lui	s6,0x0
      round = 4;
      nb = 8;
      break;
    }
  AddRoundKey (statemt, type, 0);
  for (i = 1; i <= round + 9; ++i)
    1270:	8f850000 	lw	a1,0(gp)
    1274:	24110001 	addiu	s1,zero,1
    {
      ByteSub_ShiftRow (statemt, nb);
    1278:	02409821 	addu	s3,s2,zero
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    127c:	27b50050 	addiu	s5,sp,80
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
    1280:	26d60000 	addiu	s6,s6,0
      break;
    }
  AddRoundKey (statemt, type, 0);
  for (i = 1; i <= round + 9; ++i)
    {
      ByteSub_ShiftRow (statemt, nb);
    1284:	0c000000 	jal	0 <AddRoundKey.clone.2>
    1288:	02602021 	addu	a0,s3,zero
      MixColumn_AddRoundKey (statemt, nb, i);
    128c:	8f850000 	lw	a1,0(gp)
    1290:	00000000 	sll	zero,zero,0x0
    1294:	18a000a5 	blez	a1,152c <encrypt.clone.0+0x364>
    1298:	02250018 	mult	s1,a1
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
    129c:	0005c900 	sll	t9,a1,0x4
    12a0:	02403021 	addu	a2,s2,zero
    12a4:	02a01821 	addu	v1,s5,zero
    12a8:	0279c021 	addu	t8,s3,t9
    12ac:	02a01021 	addu	v0,s5,zero
    12b0:	02602021 	addu	a0,s3,zero
    12b4:	00003812 	mflo	a3
    12b8:	24e70168 	addiu	a3,a3,360
    12bc:	00073880 	sll	a3,a3,0x2
    12c0:	080004f2 	j	13c8 <encrypt.clone.0+0x200>
    12c4:	02c73821 	addu	a3,s6,a3
    {
      ret[j * 4] = (statemt[j * 4] << 1);
      if ((ret[j * 4] >> 8) == 1)
	ret[j * 4] ^= 283;
      x = statemt[1 + j * 4];
    12c8:	8c8b0004 	lw	t3,4(a0)
    12cc:	00000000 	sll	zero,zero,0x0
      x ^= (x << 1);
    12d0:	000b5040 	sll	t2,t3,0x1
    12d4:	014b4826 	xor	t1,t2,t3
      if ((x >> 8) == 1)
    12d8:	00096203 	sra	t4,t1,0x8
    12dc:	11900047 	beq	t4,s0,13fc <encrypt.clone.0+0x234>
    12e0:	01c04021 	addu	t0,t6,zero
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];
    12e4:	8c8c0008 	lw	t4,8(a0)
    12e8:	8c8f000c 	lw	t7,12(a0)
      x = statemt[1 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
    12ec:	01094026 	xor	t0,t0,t1
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];
    12f0:	8ce9fa60 	lw	t1,-1440(a3)
    12f4:	01ecf826 	xor	ra,t7,t4
    12f8:	03e94826 	xor	t1,ra,t1
      x = statemt[1 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
    12fc:	ac480000 	sw	t0,0(v0)
      ret[j * 4] ^=
    1300:	01284026 	xor	t0,t1,t0
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    1304:	000a4a03 	sra	t1,t2,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    1308:	ac480000 	sw	t0,0(v0)
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    130c:	11300048 	beq	t1,s0,1430 <encrypt.clone.0+0x268>
    1310:	ac4a0004 	sw	t2,4(v0)
	ret[1 + j * 4] ^= 283;
      x = statemt[2 + j * 4];
      x ^= (x << 1);
    1314:	000c4840 	sll	t1,t4,0x1
    1318:	012c4026 	xor	t0,t1,t4
      if ((x >> 8) == 1)
    131c:	0008fa03 	sra	ra,t0,0x8
    1320:	13f00049 	beq	ra,s0,1448 <encrypt.clone.0+0x280>
    1324:	00000000 	sll	zero,zero,0x0
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
    1328:	01485026 	xor	t2,t2,t0
      ret[1 + j * 4] ^=
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];
    132c:	8ce8fc40 	lw	t0,-960(a3)
    1330:	01edf826 	xor	ra,t7,t5
    1334:	03e84026 	xor	t0,ra,t0
      x = statemt[2 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
    1338:	ac4a0004 	sw	t2,4(v0)
      ret[1 + j * 4] ^=
    133c:	010a5026 	xor	t2,t0,t2
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    1340:	00094203 	sra	t0,t1,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
    1344:	ac4a0004 	sw	t2,4(v0)
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    1348:	1110004a 	beq	t0,s0,1474 <encrypt.clone.0+0x2ac>
    134c:	ac490008 	sw	t1,8(v0)
	ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
    1350:	000f4040 	sll	t0,t7,0x1
    1354:	010f7826 	xor	t7,t0,t7
      if ((x >> 8) == 1)
    1358:	000f5203 	sra	t2,t7,0x8
    135c:	1150004b 	beq	t2,s0,148c <encrypt.clone.0+0x2c4>
    1360:	00000000 	sll	zero,zero,0x0
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    1364:	8ceafe20 	lw	t2,-480(a3)
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
    1368:	012f4826 	xor	t1,t1,t7
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    136c:	016d7826 	xor	t7,t3,t5
    1370:	01ea7826 	xor	t7,t7,t2
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
    1374:	ac490008 	sw	t1,8(v0)
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    1378:	00085203 	sra	t2,t0,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
    137c:	01e94826 	xor	t1,t7,t1
    1380:	ac490008 	sw	t1,8(v0)
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    1384:	1150004c 	beq	t2,s0,14b8 <encrypt.clone.0+0x2f0>
    1388:	ac48000c 	sw	t0,12(v0)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
    138c:	01cd6826 	xor	t5,t6,t5
      if ((x >> 8) == 1)
    1390:	000d4a03 	sra	t1,t5,0x8
    1394:	1130004d 	beq	t1,s0,14cc <encrypt.clone.0+0x304>
    1398:	00000000 	sll	zero,zero,0x0
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    139c:	8ce90000 	lw	t1,0(a3)
    13a0:	018b5826 	xor	t3,t4,t3
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
    13a4:	010d4026 	xor	t0,t0,t5
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    13a8:	01695826 	xor	t3,t3,t1
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
    13ac:	ac48000c 	sw	t0,12(v0)
      ret[3 + j * 4] ^=
    13b0:	24840010 	addiu	a0,a0,16
    13b4:	01684026 	xor	t0,t3,t0
    13b8:	ac48000c 	sw	t0,12(v0)
    13bc:	24e70004 	addiu	a3,a3,4
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    13c0:	1098004e 	beq	a0,t8,14fc <encrypt.clone.0+0x334>
    13c4:	24420010 	addiu	v0,v0,16
    {
      ret[j * 4] = (statemt[j * 4] << 1);
    13c8:	8c8d0000 	lw	t5,0(a0)
    13cc:	00000000 	sll	zero,zero,0x0
    13d0:	000d7040 	sll	t6,t5,0x1
      if ((ret[j * 4] >> 8) == 1)
    13d4:	000e4203 	sra	t0,t6,0x8
    13d8:	1510ffbb 	bne	t0,s0,12c8 <encrypt.clone.0+0x100>
    13dc:	ac4e0000 	sw	t6,0(v0)
	ret[j * 4] ^= 283;
      x = statemt[1 + j * 4];
    13e0:	8c8b0004 	lw	t3,4(a0)

  for (j = 0; j < nb; ++j)
    {
      ret[j * 4] = (statemt[j * 4] << 1);
      if ((ret[j * 4] >> 8) == 1)
	ret[j * 4] ^= 283;
    13e4:	39c8011b 	xori	t0,t6,0x11b
      x = statemt[1 + j * 4];
      x ^= (x << 1);
    13e8:	000b5040 	sll	t2,t3,0x1
    13ec:	014b4826 	xor	t1,t2,t3
      if ((x >> 8) == 1)
    13f0:	00096203 	sra	t4,t1,0x8
    13f4:	1590ffbb 	bne	t4,s0,12e4 <encrypt.clone.0+0x11c>
    13f8:	ac480000 	sw	t0,0(v0)
	ret[j * 4] ^= (x ^ 283);
    13fc:	3929011b 	xori	t1,t1,0x11b
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];
    1400:	8c8c0008 	lw	t4,8(a0)
    1404:	8c8f000c 	lw	t7,12(a0)
      if ((ret[j * 4] >> 8) == 1)
	ret[j * 4] ^= 283;
      x = statemt[1 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
    1408:	01284026 	xor	t0,t1,t0
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];
    140c:	8ce9fa60 	lw	t1,-1440(a3)
    1410:	01ecf826 	xor	ra,t7,t4
    1414:	03e94826 	xor	t1,ra,t1
      if ((ret[j * 4] >> 8) == 1)
	ret[j * 4] ^= 283;
      x = statemt[1 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
    1418:	ac480000 	sw	t0,0(v0)
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    141c:	01284026 	xor	t0,t1,t0
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    1420:	000a4a03 	sra	t1,t2,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    1424:	ac480000 	sw	t0,0(v0)
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    1428:	1530ffba 	bne	t1,s0,1314 <encrypt.clone.0+0x14c>
    142c:	ac4a0004 	sw	t2,4(v0)
	ret[1 + j * 4] ^= 283;
      x = statemt[2 + j * 4];
      x ^= (x << 1);
    1430:	000c4840 	sll	t1,t4,0x1
    1434:	012c4026 	xor	t0,t1,t4
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
	ret[1 + j * 4] ^= 283;
    1438:	394a011b 	xori	t2,t2,0x11b
      x = statemt[2 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
    143c:	0008fa03 	sra	ra,t0,0x8
    1440:	17f0ffb9 	bne	ra,s0,1328 <encrypt.clone.0+0x160>
    1444:	ac4a0004 	sw	t2,4(v0)
	ret[1 + j * 4] ^= (x ^ 283);
    1448:	3908011b 	xori	t0,t0,0x11b
    144c:	010a5026 	xor	t2,t0,t2
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];
    1450:	8ce8fc40 	lw	t0,-960(a3)
    1454:	01edf826 	xor	ra,t7,t5
    1458:	03e84026 	xor	t0,ra,t0
      if ((ret[1 + j * 4] >> 8) == 1)
	ret[1 + j * 4] ^= 283;
      x = statemt[2 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
    145c:	ac4a0004 	sw	t2,4(v0)
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
    1460:	010a5026 	xor	t2,t0,t2
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    1464:	00094203 	sra	t0,t1,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
    1468:	ac4a0004 	sw	t2,4(v0)
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    146c:	1510ffb8 	bne	t0,s0,1350 <encrypt.clone.0+0x188>
    1470:	ac490008 	sw	t1,8(v0)
	ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
    1474:	000f4040 	sll	t0,t7,0x1
    1478:	010f7826 	xor	t7,t0,t7
      ret[1 + j * 4] ^=
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
	ret[2 + j * 4] ^= 283;
    147c:	3929011b 	xori	t1,t1,0x11b
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
    1480:	000f5203 	sra	t2,t7,0x8
    1484:	1550ffb7 	bne	t2,s0,1364 <encrypt.clone.0+0x19c>
    1488:	ac490008 	sw	t1,8(v0)
	ret[2 + j * 4] ^= (x ^ 283);
    148c:	39ef011b 	xori	t7,t7,0x11b
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    1490:	8ceafe20 	lw	t2,-480(a3)
      if ((ret[2 + j * 4] >> 8) == 1)
	ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
    1494:	01e94826 	xor	t1,t7,t1
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    1498:	016d7826 	xor	t7,t3,t5
    149c:	01ea7826 	xor	t7,t7,t2
      if ((ret[2 + j * 4] >> 8) == 1)
	ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
    14a0:	ac490008 	sw	t1,8(v0)
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    14a4:	00085203 	sra	t2,t0,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
    14a8:	01e94826 	xor	t1,t7,t1
    14ac:	ac490008 	sw	t1,8(v0)
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    14b0:	1550ffb6 	bne	t2,s0,138c <encrypt.clone.0+0x1c4>
    14b4:	ac48000c 	sw	t0,12(v0)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
    14b8:	01cd6826 	xor	t5,t6,t5
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
	ret[3 + j * 4] ^= 283;
    14bc:	3908011b 	xori	t0,t0,0x11b
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
    14c0:	000d4a03 	sra	t1,t5,0x8
    14c4:	1530ffb5 	bne	t1,s0,139c <encrypt.clone.0+0x1d4>
    14c8:	ac48000c 	sw	t0,12(v0)
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    14cc:	8ce90000 	lw	t1,0(a3)
      if ((ret[3 + j * 4] >> 8) == 1)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
    14d0:	39ad011b 	xori	t5,t5,0x11b
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    14d4:	018b5826 	xor	t3,t4,t3
      if ((ret[3 + j * 4] >> 8) == 1)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
    14d8:	01a84026 	xor	t0,t5,t0
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    14dc:	01695826 	xor	t3,t3,t1
      if ((ret[3 + j * 4] >> 8) == 1)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
    14e0:	ac48000c 	sw	t0,12(v0)
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
    14e4:	24840010 	addiu	a0,a0,16
    14e8:	01684026 	xor	t0,t3,t0
    14ec:	ac48000c 	sw	t0,12(v0)
    14f0:	24e70004 	addiu	a3,a3,4
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    14f4:	1498ffb4 	bne	a0,t8,13c8 <encrypt.clone.0+0x200>
    14f8:	24420010 	addiu	v0,v0,16
    14fc:	02b9c821 	addu	t9,s5,t9
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] = ret[j * 4];
      statemt[1 + j * 4] = ret[1 + j * 4];
    1500:	8c670004 	lw	a3,4(v1)
      statemt[2 + j * 4] = ret[2 + j * 4];
    1504:	8c640008 	lw	a0,8(v1)
      statemt[3 + j * 4] = ret[3 + j * 4];
    1508:	8c62000c 	lw	v0,12(v1)
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] = ret[j * 4];
    150c:	8c680000 	lw	t0,0(v1)
      statemt[1 + j * 4] = ret[1 + j * 4];
      statemt[2 + j * 4] = ret[2 + j * 4];
      statemt[3 + j * 4] = ret[3 + j * 4];
    1510:	24630010 	addiu	v1,v1,16
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] = ret[j * 4];
    1514:	acc80000 	sw	t0,0(a2)
      statemt[1 + j * 4] = ret[1 + j * 4];
    1518:	acc70004 	sw	a3,4(a2)
      statemt[2 + j * 4] = ret[2 + j * 4];
    151c:	acc40008 	sw	a0,8(a2)
      statemt[3 + j * 4] = ret[3 + j * 4];
    1520:	acc2000c 	sw	v0,12(a2)
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    1524:	1479fff6 	bne	v1,t9,1500 <encrypt.clone.0+0x338>
    1528:	24c60010 	addiu	a2,a2,16
      round = 4;
      nb = 8;
      break;
    }
  AddRoundKey (statemt, type, 0);
  for (i = 1; i <= round + 9; ++i)
    152c:	8f820000 	lw	v0,0(gp)
    1530:	26310001 	addiu	s1,s1,1
    1534:	24420009 	addiu	v0,v0,9
    1538:	0051102a 	slt	v0,v0,s1
    153c:	1040ff51 	beqz	v0,1284 <encrypt.clone.0+0xbc>
    1540:	00000000 	sll	zero,zero,0x0
    {
      ByteSub_ShiftRow (statemt, nb);
      MixColumn_AddRoundKey (statemt, nb, i);
    }
  ByteSub_ShiftRow (statemt, nb);
    1544:	0c000000 	jal	0 <AddRoundKey.clone.2>
    1548:	26840000 	addiu	a0,s4,0
  AddRoundKey (statemt, type, i);
    154c:	0c000000 	jal	0 <AddRoundKey.clone.2>
    1550:	02202021 	addu	a0,s1,zero

  printf ("encrypted message \t");
    1554:	3c040000 	lui	a0,0x0
    1558:	0c000000 	jal	0 <AddRoundKey.clone.2>
    155c:	24840000 	addiu	a0,a0,0
  for (i = 0; i < nb * 4; ++i)
    1560:	8f820000 	lw	v0,0(gp)
    1564:	00000000 	sll	zero,zero,0x0
    1568:	1840001d 	blez	v0,15e0 <encrypt.clone.0+0x418>
    156c:	3c130000 	lui	s3,0x0
    1570:	02408021 	addu	s0,s2,zero
    1574:	00008821 	addu	s1,zero,zero
    {
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    1578:	08000568 	j	15a0 <encrypt.clone.0+0x3d8>
    157c:	26730000 	addiu	s3,s3,0
    1580:	0c000000 	jal	0 <AddRoundKey.clone.2>
    1584:	02602021 	addu	a0,s3,zero
    }
  ByteSub_ShiftRow (statemt, nb);
  AddRoundKey (statemt, type, i);

  printf ("encrypted message \t");
  for (i = 0; i < nb * 4; ++i)
    1588:	8f820000 	lw	v0,0(gp)
    158c:	00000000 	sll	zero,zero,0x0
    1590:	00021080 	sll	v0,v0,0x2
    1594:	0222102a 	slt	v0,s1,v0
    1598:	10400011 	beqz	v0,15e0 <encrypt.clone.0+0x418>
    159c:	26100004 	addiu	s0,s0,4
    {
      if (statemt[i] < 16)
    15a0:	8e050000 	lw	a1,0(s0)
    15a4:	00000000 	sll	zero,zero,0x0
    15a8:	28a20010 	slti	v0,a1,16
    15ac:	1040fff4 	beqz	v0,1580 <encrypt.clone.0+0x3b8>
    15b0:	26310001 	addiu	s1,s1,1
	printf ("0");
    15b4:	0c000000 	jal	0 <AddRoundKey.clone.2>
    15b8:	24040030 	addiu	a0,zero,48
    15bc:	8e050000 	lw	a1,0(s0)
      printf ("%x", statemt[i]);
    15c0:	0c000000 	jal	0 <AddRoundKey.clone.2>
    15c4:	02602021 	addu	a0,s3,zero
    }
  ByteSub_ShiftRow (statemt, nb);
  AddRoundKey (statemt, type, i);

  printf ("encrypted message \t");
  for (i = 0; i < nb * 4; ++i)
    15c8:	8f820000 	lw	v0,0(gp)
    15cc:	00000000 	sll	zero,zero,0x0
    15d0:	00021080 	sll	v0,v0,0x2
    15d4:	0222102a 	slt	v0,s1,v0
    15d8:	1440fff1 	bnez	v0,15a0 <encrypt.clone.0+0x3d8>
    15dc:	26100004 	addiu	s0,s0,4
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_enc_statemt[i]);
    15e0:	8fa20010 	lw	v0,16(sp)
    15e4:	8e830000 	lw	v1,0(s4)
    15e8:	8e440004 	lw	a0,4(s2)
    15ec:	00621826 	xor	v1,v1,v0
    15f0:	8fa20014 	lw	v0,20(sp)
    15f4:	0003182b 	sltu	v1,zero,v1
    15f8:	00822026 	xor	a0,a0,v0
    15fc:	8f820000 	lw	v0,0(gp)
    1600:	8e460008 	lw	a2,8(s2)
    1604:	00621021 	addu	v0,v1,v0
    1608:	0004202b 	sltu	a0,zero,a0
    160c:	8fa30018 	lw	v1,24(sp)
    1610:	8e45000c 	lw	a1,12(s2)
    1614:	00822021 	addu	a0,a0,v0
    1618:	8fa2001c 	lw	v0,28(sp)
    161c:	00c31826 	xor	v1,a2,v1
    1620:	00a21026 	xor	v0,a1,v0
    1624:	0003182b 	sltu	v1,zero,v1
    1628:	8e470010 	lw	a3,16(s2)
    162c:	00641821 	addu	v1,v1,a0
    1630:	0002102b 	sltu	v0,zero,v0
    1634:	8fa40020 	lw	a0,32(sp)
    1638:	8e460014 	lw	a2,20(s2)
    163c:	00431021 	addu	v0,v0,v1
    1640:	8fa30024 	lw	v1,36(sp)
    1644:	00e42026 	xor	a0,a3,a0
    1648:	00c31826 	xor	v1,a2,v1
    164c:	0004202b 	sltu	a0,zero,a0
    1650:	8e450018 	lw	a1,24(s2)
    1654:	00822021 	addu	a0,a0,v0
    1658:	0003182b 	sltu	v1,zero,v1
    165c:	8fa20028 	lw	v0,40(sp)
    1660:	8e47001c 	lw	a3,28(s2)
    1664:	00641821 	addu	v1,v1,a0
    1668:	8fa4002c 	lw	a0,44(sp)
    166c:	00a21026 	xor	v0,a1,v0
    1670:	00e42026 	xor	a0,a3,a0
    1674:	0002102b 	sltu	v0,zero,v0
    1678:	8e460020 	lw	a2,32(s2)
    167c:	00431021 	addu	v0,v0,v1
    1680:	0004202b 	sltu	a0,zero,a0
    1684:	8fa30030 	lw	v1,48(sp)
    1688:	8e450024 	lw	a1,36(s2)
    168c:	00822021 	addu	a0,a0,v0
    1690:	8fa20034 	lw	v0,52(sp)
    1694:	00c31826 	xor	v1,a2,v1
    1698:	00a21026 	xor	v0,a1,v0
    169c:	0003182b 	sltu	v1,zero,v1
    16a0:	8e470028 	lw	a3,40(s2)
    16a4:	00641821 	addu	v1,v1,a0
    16a8:	0002102b 	sltu	v0,zero,v0
    16ac:	8fa40038 	lw	a0,56(sp)
    16b0:	8e46002c 	lw	a2,44(s2)
    16b4:	00431021 	addu	v0,v0,v1
    16b8:	8fa3003c 	lw	v1,60(sp)
    16bc:	00e42026 	xor	a0,a3,a0
    16c0:	00c31826 	xor	v1,a2,v1
    16c4:	0004202b 	sltu	a0,zero,a0
    16c8:	8e450030 	lw	a1,48(s2)
    16cc:	00822021 	addu	a0,a0,v0
    16d0:	0003182b 	sltu	v1,zero,v1
    16d4:	8fa20040 	lw	v0,64(sp)
    16d8:	8e470034 	lw	a3,52(s2)
    16dc:	00641821 	addu	v1,v1,a0
    16e0:	8fa40044 	lw	a0,68(sp)
    16e4:	00a21026 	xor	v0,a1,v0
    16e8:	0002102b 	sltu	v0,zero,v0
    16ec:	00e42026 	xor	a0,a3,a0
    16f0:	8e460038 	lw	a2,56(s2)
    16f4:	00431021 	addu	v0,v0,v1
    16f8:	0004202b 	sltu	a0,zero,a0
    16fc:	8fa30048 	lw	v1,72(sp)
    1700:	8e45003c 	lw	a1,60(s2)
    1704:	00822021 	addu	a0,a0,v0
    1708:	8fa2004c 	lw	v0,76(sp)
    170c:	00c31826 	xor	v1,a2,v1
    1710:	0003182b 	sltu	v1,zero,v1
    1714:	00a21026 	xor	v0,a1,v0
    1718:	00641821 	addu	v1,v1,a0
    171c:	0002102b 	sltu	v0,zero,v0
    1720:	00431021 	addu	v0,v0,v1
    1724:	af820000 	sw	v0,0(gp)

  return 0;
}
    1728:	8fbf00ec 	lw	ra,236(sp)
    172c:	00001021 	addu	v0,zero,zero
    1730:	8fb600e8 	lw	s6,232(sp)
    1734:	8fb500e4 	lw	s5,228(sp)
    1738:	8fb400e0 	lw	s4,224(sp)
    173c:	8fb300dc 	lw	s3,220(sp)
    1740:	8fb200d8 	lw	s2,216(sp)
    1744:	8fb100d4 	lw	s1,212(sp)
    1748:	8fb000d0 	lw	s0,208(sp)
    174c:	03e00008 	jr	ra
    1750:	27bd00f0 	addiu	sp,sp,240
    1754:	3c140000 	lui	s4,0x0
      round = 4;
      nb = 8;
      break;
    }
  AddRoundKey (statemt, type, 0);
  for (i = 1; i <= round + 9; ++i)
    1758:	8f850000 	lw	a1,0(gp)
    175c:	24110001 	addiu	s1,zero,1
    1760:	08000551 	j	1544 <encrypt.clone.0+0x37c>
    1764:	26920000 	addiu	s2,s4,0

00001768 <SubByte>:
}

int
SubByte (int in)
{
  return Sbox[(in / 16)][(in % 16)];
    1768:	0480000f 	bltz	a0,17a8 <SubByte+0x40>
    176c:	00801021 	addu	v0,a0,zero
    1770:	3c038000 	lui	v1,0x8000
    1774:	2463000f 	addiu	v1,v1,15
    1778:	00832024 	and	a0,a0,v1
    177c:	04800010 	bltz	a0,17c0 <SubByte+0x58>
    1780:	00021103 	sra	v0,v0,0x4
    1784:	00021100 	sll	v0,v0,0x4
    1788:	00442021 	addu	a0,v0,a0
    178c:	3c030000 	lui	v1,0x0
    1790:	24630000 	addiu	v1,v1,0
    1794:	00042080 	sll	a0,a0,0x2
    1798:	00832021 	addu	a0,a0,v1
}
    179c:	8c820000 	lw	v0,0(a0)
    17a0:	03e00008 	jr	ra
    17a4:	00000000 	sll	zero,zero,0x0
}

int
SubByte (int in)
{
  return Sbox[(in / 16)][(in % 16)];
    17a8:	3c038000 	lui	v1,0x8000
    17ac:	2463000f 	addiu	v1,v1,15
    17b0:	2482000f 	addiu	v0,a0,15
    17b4:	00832024 	and	a0,a0,v1
    17b8:	0481fff2 	bgez	a0,1784 <SubByte+0x1c>
    17bc:	00021103 	sra	v0,v0,0x4
    17c0:	2403fff0 	addiu	v1,zero,-16
    17c4:	2484ffff 	addiu	a0,a0,-1
    17c8:	00832025 	or	a0,a0,v1
    17cc:	00021100 	sll	v0,v0,0x4
    17d0:	24840001 	addiu	a0,a0,1
    17d4:	00442021 	addu	a0,v0,a0
    17d8:	3c030000 	lui	v1,0x0
    17dc:	24630000 	addiu	v1,v1,0
    17e0:	00042080 	sll	a0,a0,0x2
    17e4:	00832021 	addu	a0,a0,v1
}
    17e8:	8c820000 	lw	v0,0(a0)
    17ec:	03e00008 	jr	ra
    17f0:	00000000 	sll	zero,zero,0x0

000017f4 <InversShiftRow_ByteSub>:

/* ********* InversShiftRow & ByteSub ********* */
void
InversShiftRow_ByteSub (int statemt[32], int nb)
{
    17f4:	27bdffd0 	addiu	sp,sp,-48
  int temp;

  switch (nb)
    17f8:	24020006 	addiu	v0,zero,6
}

/* ********* InversShiftRow & ByteSub ********* */
void
InversShiftRow_ByteSub (int statemt[32], int nb)
{
    17fc:	afbe002c 	sw	s8,44(sp)
    1800:	afb70028 	sw	s7,40(sp)
    1804:	afb60024 	sw	s6,36(sp)
    1808:	afb50020 	sw	s5,32(sp)
    180c:	afb4001c 	sw	s4,28(sp)
    1810:	afb30018 	sw	s3,24(sp)
    1814:	afb20014 	sw	s2,20(sp)
    1818:	afb10010 	sw	s1,16(sp)
  int temp;

  switch (nb)
    181c:	10a201c9 	beq	a1,v0,1f44 <InversShiftRow_ByteSub+0x750>
    1820:	afb0000c 	sw	s0,12(sp)
    1824:	24020008 	addiu	v0,zero,8
    1828:	10a200a1 	beq	a1,v0,1ab0 <InversShiftRow_ByteSub+0x2bc>
    182c:	24020004 	addiu	v0,zero,4
    1830:	10a2000c 	beq	a1,v0,1864 <InversShiftRow_ByteSub+0x70>
    1834:	00000000 	sll	zero,zero,0x0
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
      break;
    }
}
    1838:	8fbe002c 	lw	s8,44(sp)
    183c:	8fb70028 	lw	s7,40(sp)
    1840:	8fb60024 	lw	s6,36(sp)
    1844:	8fb50020 	lw	s5,32(sp)
    1848:	8fb4001c 	lw	s4,28(sp)
    184c:	8fb30018 	lw	s3,24(sp)
    1850:	8fb20014 	lw	s2,20(sp)
    1854:	8fb10010 	lw	s1,16(sp)
    1858:	8fb0000c 	lw	s0,12(sp)
    185c:	03e00008 	jr	ra
    1860:	27bd0030 	addiu	sp,sp,48
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1864:	8c8e0034 	lw	t6,52(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1868:	8c8d0024 	lw	t5,36(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    186c:	8c8c0014 	lw	t4,20(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1870:	8c8b0004 	lw	t3,4(a0)
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1874:	8c8a0038 	lw	t2,56(a0)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1878:	8c890018 	lw	t1,24(a0)
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    187c:	8c880008 	lw	t0,8(a0)
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1880:	8c870028 	lw	a3,40(a0)
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1884:	8c86000c 	lw	a2,12(a0)
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1888:	8c85001c 	lw	a1,28(a0)
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    188c:	8c82002c 	lw	v0,44(a0)
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1890:	8c83003c 	lw	v1,60(a0)
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1894:	000e7903 	sra	t7,t6,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1898:	000db903 	sra	s7,t5,0x4
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    189c:	000cb103 	sra	s6,t4,0x4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    18a0:	000ba903 	sra	s5,t3,0x4
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    18a4:	000aa103 	sra	s4,t2,0x4
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    18a8:	00099903 	sra	s3,t1,0x4
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    18ac:	00089103 	sra	s2,t0,0x4
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    18b0:	00078903 	sra	s1,a3,0x4
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    18b4:	00068103 	sra	s0,a2,0x4
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    18b8:	0005c903 	sra	t9,a1,0x4
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    18bc:	0002c103 	sra	t8,v0,0x4
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    18c0:	000f7900 	sll	t7,t7,0x4
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    18c4:	0019c900 	sll	t9,t9,0x4
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    18c8:	3042000f 	andi	v0,v0,0xf
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    18cc:	31ce000f 	andi	t6,t6,0xf
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    18d0:	31ad000f 	andi	t5,t5,0xf
    18d4:	0017b900 	sll	s7,s7,0x4
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    18d8:	318c000f 	andi	t4,t4,0xf
    18dc:	0016b100 	sll	s6,s6,0x4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    18e0:	316b000f 	andi	t3,t3,0xf
    18e4:	0015a900 	sll	s5,s5,0x4
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    18e8:	314a000f 	andi	t2,t2,0xf
    18ec:	0014a100 	sll	s4,s4,0x4
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    18f0:	3129000f 	andi	t1,t1,0xf
    18f4:	00139900 	sll	s3,s3,0x4
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    18f8:	3108000f 	andi	t0,t0,0xf
    18fc:	00129100 	sll	s2,s2,0x4
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1900:	30e7000f 	andi	a3,a3,0xf
    1904:	00118900 	sll	s1,s1,0x4
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1908:	30c6000f 	andi	a2,a2,0xf
    190c:	00108100 	sll	s0,s0,0x4
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1910:	30a5000f 	andi	a1,a1,0xf
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1914:	0018c100 	sll	t8,t8,0x4
    1918:	0302c021 	addu	t8,t8,v0
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    191c:	01ee7021 	addu	t6,t7,t6
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1920:	0003f103 	sra	s8,v1,0x4
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1924:	03252821 	addu	a1,t9,a1

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1928:	02ed6821 	addu	t5,s7,t5
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    192c:	02cc6021 	addu	t4,s6,t4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1930:	02ab5821 	addu	t3,s5,t3
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1934:	028a5021 	addu	t2,s4,t2
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1938:	02694821 	addu	t1,s3,t1
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    193c:	02484021 	addu	t0,s2,t0
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1940:	02273821 	addu	a3,s1,a3
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1944:	02063021 	addu	a2,s0,a2
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1948:	3c020000 	lui	v0,0x0
    194c:	24420000 	addiu	v0,v0,0
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1950:	0018c880 	sll	t9,t8,0x2
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1954:	000e7080 	sll	t6,t6,0x2
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1958:	000d6880 	sll	t5,t5,0x2
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    195c:	000c6080 	sll	t4,t4,0x2
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1960:	000b5880 	sll	t3,t3,0x2
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1964:	000a5080 	sll	t2,t2,0x2
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1968:	00094880 	sll	t1,t1,0x2
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    196c:	00084080 	sll	t0,t0,0x2
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1970:	00073880 	sll	a3,a3,0x2
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1974:	3063000f 	andi	v1,v1,0xf
    1978:	001ef100 	sll	s8,s8,0x4
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    197c:	00063080 	sll	a2,a2,0x2
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1980:	00052880 	sll	a1,a1,0x2

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1984:	01a26821 	addu	t5,t5,v0
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1988:	01826021 	addu	t4,t4,v0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    198c:	01625821 	addu	t3,t3,v0
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1990:	01425021 	addu	t2,t2,v0
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1994:	01224821 	addu	t1,t1,v0
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1998:	01024021 	addu	t0,t0,v0
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    199c:	00e23821 	addu	a3,a3,v0
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    19a0:	00c23021 	addu	a2,a2,v0
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    19a4:	00a22821 	addu	a1,a1,v0
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    19a8:	01c27021 	addu	t6,t6,v0
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    19ac:	0322c821 	addu	t9,t9,v0
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    19b0:	03c31821 	addu	v1,s8,v1

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    19b4:	8db80000 	lw	t8,0(t5)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    19b8:	8d8f0000 	lw	t7,0(t4)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    19bc:	8d6d0000 	lw	t5,0(t3)
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    19c0:	8d2c0000 	lw	t4,0(t1)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    19c4:	8d4b0000 	lw	t3,0(t2)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    19c8:	8d090000 	lw	t1,0(t0)
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    19cc:	8cea0000 	lw	t2,0(a3)
  int temp;

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    19d0:	8dce0000 	lw	t6,0(t6)
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    19d4:	8cc70000 	lw	a3,0(a2)
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    19d8:	00031880 	sll	v1,v1,0x2
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    19dc:	8ca60000 	lw	a2,0(a1)
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    19e0:	8f250000 	lw	a1,0(t9)
      statemt[6] = temp;
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    19e4:	00621821 	addu	v1,v1,v0
    19e8:	8c680000 	lw	t0,0(v1)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    19ec:	ac8c0038 	sw	t4,56(a0)
      statemt[6] = temp;
    19f0:	ac8b0018 	sw	t3,24(a0)
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    19f4:	ac8a0008 	sw	t2,8(a0)
      statemt[10] = temp;
    19f8:	ac890028 	sw	t1,40(a0)

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    19fc:	ac87003c 	sw	a3,60(a0)

  switch (nb)
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1a00:	ac980034 	sw	t8,52(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1a04:	ac8f0024 	sw	t7,36(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1a08:	ac8d0014 	sw	t5,20(a0)
      statemt[1] = temp;
    1a0c:	ac8e0004 	sw	t6,4(a0)
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1a10:	ac86000c 	sw	a2,12(a0)
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1a14:	8c870000 	lw	a3,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1a18:	8c860010 	lw	a2,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1a1c:	8c830030 	lw	v1,48(a0)
      statemt[10] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1a20:	ac85001c 	sw	a1,28(a0)
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1a24:	8c850020 	lw	a1,32(a0)
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1a28:	00076103 	sra	t4,a3,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1a2c:	00065903 	sra	t3,a2,0x4
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1a30:	00055103 	sra	t2,a1,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1a34:	00034903 	sra	t1,v1,0x4
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1a38:	30e7000f 	andi	a3,a3,0xf
    1a3c:	000c6100 	sll	t4,t4,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1a40:	30c6000f 	andi	a2,a2,0xf
    1a44:	000b5900 	sll	t3,t3,0x4
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1a48:	30a5000f 	andi	a1,a1,0xf
    1a4c:	000a5100 	sll	t2,t2,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1a50:	3063000f 	andi	v1,v1,0xf
    1a54:	00094900 	sll	t1,t1,0x4
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1a58:	01873821 	addu	a3,t4,a3
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1a5c:	01663021 	addu	a2,t3,a2
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1a60:	01452821 	addu	a1,t2,a1
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1a64:	01231821 	addu	v1,t1,v1
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1a68:	00073880 	sll	a3,a3,0x2
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1a6c:	00063080 	sll	a2,a2,0x2
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1a70:	00052880 	sll	a1,a1,0x2
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1a74:	00031880 	sll	v1,v1,0x2
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1a78:	00e23821 	addu	a3,a3,v0
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1a7c:	00c23021 	addu	a2,a2,v0
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1a80:	00a22821 	addu	a1,a1,v0
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1a84:	00621021 	addu	v0,v1,v0
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1a88:	8ce70000 	lw	a3,0(a3)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1a8c:	8cc60000 	lw	a2,0(a2)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1a90:	8ca50000 	lw	a1,0(a1)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1a94:	8c420000 	lw	v0,0(v0)

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
    1a98:	ac88002c 	sw	t0,44(a0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1a9c:	ac870000 	sw	a3,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1aa0:	ac860010 	sw	a2,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1aa4:	ac850020 	sw	a1,32(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    1aa8:	0800060e 	j	1838 <InversShiftRow_ByteSub+0x44>
    1aac:	ac820030 	sw	v0,48(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1ab0:	8c8e0074 	lw	t6,116(a0)
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1ab4:	8c8d0064 	lw	t5,100(a0)
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1ab8:	8c8c0054 	lw	t4,84(a0)
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1abc:	8c8b0044 	lw	t3,68(a0)
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1ac0:	8c8a0034 	lw	t2,52(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1ac4:	8c890024 	lw	t1,36(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1ac8:	8c880014 	lw	t0,20(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1acc:	8c870004 	lw	a3,4(a0)
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1ad0:	8c860048 	lw	a2,72(a0)
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1ad4:	8c820068 	lw	v0,104(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1ad8:	8c830078 	lw	v1,120(a0)
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1adc:	8c850018 	lw	a1,24(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1ae0:	000e7903 	sra	t7,t6,0x4
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1ae4:	000db903 	sra	s7,t5,0x4
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1ae8:	000cb103 	sra	s6,t4,0x4
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1aec:	000ba903 	sra	s5,t3,0x4
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1af0:	000aa103 	sra	s4,t2,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1af4:	00099903 	sra	s3,t1,0x4
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1af8:	00089103 	sra	s2,t0,0x4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1afc:	00078903 	sra	s1,a3,0x4
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1b00:	00068103 	sra	s0,a2,0x4
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1b04:	0002c903 	sra	t9,v0,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1b08:	0003f103 	sra	s8,v1,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1b0c:	000f7900 	sll	t7,t7,0x4
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1b10:	0017b900 	sll	s7,s7,0x4
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1b14:	0016b100 	sll	s6,s6,0x4
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1b18:	0015a900 	sll	s5,s5,0x4
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1b1c:	0014a100 	sll	s4,s4,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1b20:	00139900 	sll	s3,s3,0x4
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1b24:	00129100 	sll	s2,s2,0x4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1b28:	00118900 	sll	s1,s1,0x4
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1b2c:	00108100 	sll	s0,s0,0x4
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1b30:	3042000f 	andi	v0,v0,0xf
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1b34:	001ef100 	sll	s8,s8,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1b38:	31ce000f 	andi	t6,t6,0xf
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1b3c:	31ad000f 	andi	t5,t5,0xf
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1b40:	318c000f 	andi	t4,t4,0xf
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1b44:	316b000f 	andi	t3,t3,0xf
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1b48:	314a000f 	andi	t2,t2,0xf
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1b4c:	3129000f 	andi	t1,t1,0xf
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1b50:	3108000f 	andi	t0,t0,0xf
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1b54:	30e7000f 	andi	a3,a3,0xf
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1b58:	30c6000f 	andi	a2,a2,0xf
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1b5c:	0019c900 	sll	t9,t9,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1b60:	3063000f 	andi	v1,v1,0xf
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1b64:	0322c821 	addu	t9,t9,v0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1b68:	0005c103 	sra	t8,a1,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1b6c:	01ee7021 	addu	t6,t7,t6
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1b70:	02ed6821 	addu	t5,s7,t5
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1b74:	02cc6021 	addu	t4,s6,t4
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1b78:	02ab5821 	addu	t3,s5,t3
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1b7c:	028a5021 	addu	t2,s4,t2
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1b80:	02694821 	addu	t1,s3,t1
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1b84:	02484021 	addu	t0,s2,t0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1b88:	02273821 	addu	a3,s1,a3
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1b8c:	02063021 	addu	a2,s0,a2
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1b90:	03c31821 	addu	v1,s8,v1
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1b94:	3c020000 	lui	v0,0x0
    1b98:	24420000 	addiu	v0,v0,0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1b9c:	0018c100 	sll	t8,t8,0x4
    1ba0:	30a5000f 	andi	a1,a1,0xf
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1ba4:	000e7080 	sll	t6,t6,0x2
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1ba8:	000d6880 	sll	t5,t5,0x2
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1bac:	000c6080 	sll	t4,t4,0x2
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1bb0:	000b5880 	sll	t3,t3,0x2
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1bb4:	000a5080 	sll	t2,t2,0x2
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1bb8:	00094880 	sll	t1,t1,0x2
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1bbc:	00084080 	sll	t0,t0,0x2
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1bc0:	00073880 	sll	a3,a3,0x2
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1bc4:	00063080 	sll	a2,a2,0x2
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1bc8:	00031880 	sll	v1,v1,0x2
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1bcc:	01a26821 	addu	t5,t5,v0
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1bd0:	01826021 	addu	t4,t4,v0
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1bd4:	01625821 	addu	t3,t3,v0
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1bd8:	01425021 	addu	t2,t2,v0
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1bdc:	01224821 	addu	t1,t1,v0
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1be0:	01024021 	addu	t0,t0,v0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1be4:	00e23821 	addu	a3,a3,v0
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1be8:	00c23021 	addu	a2,a2,v0
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1bec:	03052821 	addu	a1,t8,a1
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1bf0:	01c27021 	addu	t6,t6,v0
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1bf4:	00621821 	addu	v1,v1,v0
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1bf8:	8daf0000 	lw	t7,0(t5)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1bfc:	8dce0000 	lw	t6,0(t6)
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1c00:	8d8d0000 	lw	t5,0(t4)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1c04:	8c630000 	lw	v1,0(v1)
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1c08:	8d6c0000 	lw	t4,0(t3)
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1c0c:	0019c080 	sll	t8,t9,0x2
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1c10:	8d4b0000 	lw	t3,0(t2)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1c14:	00052880 	sll	a1,a1,0x2
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1c18:	8d2a0000 	lw	t2,0(t1)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1c1c:	8d090000 	lw	t1,0(t0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1c20:	8ce80000 	lw	t0,0(a3)
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1c24:	8cc70000 	lw	a3,0(a2)
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1c28:	00a22821 	addu	a1,a1,v0
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1c2c:	0302c021 	addu	t8,t8,v0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1c30:	8ca60000 	lw	a2,0(a1)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1c34:	afa30000 	sw	v1,0(sp)
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1c38:	8f050000 	lw	a1,0(t8)
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      break;
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1c3c:	ac8f0074 	sw	t7,116(a0)
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1c40:	ac8d0064 	sw	t5,100(a0)
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1c44:	ac8c0054 	sw	t4,84(a0)
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1c48:	ac8b0044 	sw	t3,68(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1c4c:	ac8a0034 	sw	t2,52(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1c50:	ac890024 	sw	t1,36(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1c54:	ac880014 	sw	t0,20(a0)
      statemt[1] = temp;
    1c58:	ac8e0004 	sw	t6,4(a0)

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1c5c:	ac870078 	sw	a3,120(a0)
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1c60:	8c8e0008 	lw	t6,8(a0)

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1c64:	8c8f0038 	lw	t7,56(a0)
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1c68:	8c8d0058 	lw	t5,88(a0)
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1c6c:	8c8c0028 	lw	t4,40(a0)
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    1c70:	8c8b007c 	lw	t3,124(a0)
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1c74:	8c8a003c 	lw	t2,60(a0)
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    1c78:	8c89006c 	lw	t1,108(a0)
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1c7c:	8c88002c 	lw	t0,44(a0)
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1c80:	8c87005c 	lw	a3,92(a0)
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1c84:	8c83004c 	lw	v1,76(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1c88:	ac860048 	sw	a2,72(a0)
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    1c8c:	ac850018 	sw	a1,24(a0)
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1c90:	8c86001c 	lw	a2,28(a0)
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1c94:	8c85000c 	lw	a1,12(a0)
      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1c98:	000eb903 	sra	s7,t6,0x4
    1c9c:	0017b900 	sll	s7,s7,0x4
    1ca0:	31ce000f 	andi	t6,t6,0xf

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1ca4:	000ff103 	sra	s8,t7,0x4
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1ca8:	000db103 	sra	s6,t5,0x4
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1cac:	000ca903 	sra	s5,t4,0x4
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    1cb0:	000ba103 	sra	s4,t3,0x4
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1cb4:	000a9903 	sra	s3,t2,0x4
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    1cb8:	00099103 	sra	s2,t1,0x4
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1cbc:	00088903 	sra	s1,t0,0x4
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1cc0:	00078103 	sra	s0,a3,0x4
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1cc4:	0006c903 	sra	t9,a2,0x4
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1cc8:	0005c103 	sra	t8,a1,0x4
      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1ccc:	02ee7021 	addu	t6,s7,t6
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1cd0:	0003b903 	sra	s7,v1,0x4

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1cd4:	001ef100 	sll	s8,s8,0x4
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    1cd8:	00129100 	sll	s2,s2,0x4
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1cdc:	00118900 	sll	s1,s1,0x4
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1ce0:	00108100 	sll	s0,s0,0x4
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1ce4:	0019c900 	sll	t9,t9,0x4
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1ce8:	0018c100 	sll	t8,t8,0x4

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1cec:	31ef000f 	andi	t7,t7,0xf
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1cf0:	31ad000f 	andi	t5,t5,0xf
    1cf4:	0016b100 	sll	s6,s6,0x4
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1cf8:	318c000f 	andi	t4,t4,0xf
    1cfc:	0015a900 	sll	s5,s5,0x4
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    1d00:	316b000f 	andi	t3,t3,0xf
    1d04:	0014a100 	sll	s4,s4,0x4
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1d08:	314a000f 	andi	t2,t2,0xf
    1d0c:	00139900 	sll	s3,s3,0x4
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    1d10:	3129000f 	andi	t1,t1,0xf
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1d14:	3108000f 	andi	t0,t0,0xf
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1d18:	30e7000f 	andi	a3,a3,0xf
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1d1c:	30c6000f 	andi	a2,a2,0xf
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1d20:	30a5000f 	andi	a1,a1,0xf
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1d24:	3063000f 	andi	v1,v1,0xf
    1d28:	0017b900 	sll	s7,s7,0x4

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1d2c:	03cf7821 	addu	t7,s8,t7
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    1d30:	02494821 	addu	t1,s2,t1
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1d34:	02284021 	addu	t0,s1,t0
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1d38:	02073821 	addu	a3,s0,a3
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1d3c:	03263021 	addu	a2,t9,a2
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1d40:	03052821 	addu	a1,t8,a1
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1d44:	02cd6821 	addu	t5,s6,t5
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1d48:	02ac6021 	addu	t4,s5,t4
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    1d4c:	028b5821 	addu	t3,s4,t3
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1d50:	026a5021 	addu	t2,s3,t2
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1d54:	02e31821 	addu	v1,s7,v1

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1d58:	000f7880 	sll	t7,t7,0x2
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1d5c:	000e7080 	sll	t6,t6,0x2
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1d60:	000d6880 	sll	t5,t5,0x2
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1d64:	000c6080 	sll	t4,t4,0x2
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    1d68:	000b5880 	sll	t3,t3,0x2
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1d6c:	000a5080 	sll	t2,t2,0x2
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    1d70:	00094880 	sll	t1,t1,0x2
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1d74:	00084080 	sll	t0,t0,0x2
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1d78:	00073880 	sll	a3,a3,0x2
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1d7c:	00063080 	sll	a2,a2,0x2
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1d80:	00052880 	sll	a1,a1,0x2
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1d84:	00031880 	sll	v1,v1,0x2

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1d88:	01e27821 	addu	t7,t7,v0
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1d8c:	01c27021 	addu	t6,t6,v0
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1d90:	01a26821 	addu	t5,t5,v0
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1d94:	01826021 	addu	t4,t4,v0
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1d98:	00621821 	addu	v1,v1,v0
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    1d9c:	01625821 	addu	t3,t3,v0
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1da0:	01425021 	addu	t2,t2,v0
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    1da4:	01224821 	addu	t1,t1,v0
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1da8:	01024021 	addu	t0,t0,v0
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1dac:	00e23821 	addu	a3,a3,v0
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1db0:	00c23021 	addu	a2,a2,v0
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1db4:	00a22821 	addu	a1,a1,v0

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1db8:	8dfe0000 	lw	s8,0(t7)
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1dbc:	8d4a0000 	lw	t2,0(t2)
      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1dc0:	8dcf0000 	lw	t7,0(t6)
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    1dc4:	8d290000 	lw	t1,0(t1)
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1dc8:	8dae0000 	lw	t6,0(t5)

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1dcc:	8d080000 	lw	t0,0(t0)
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1dd0:	8d8d0000 	lw	t5,0(t4)
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1dd4:	8ce70000 	lw	a3,0(a3)
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1dd8:	8cc60000 	lw	a2,0(a2)
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1ddc:	8ca50000 	lw	a1,0(a1)
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1de0:	8c6c0000 	lw	t4,0(v1)
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    1de4:	8d6b0000 	lw	t3,0(t3)
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;
    1de8:	8fa30000 	lw	v1,0(sp)
      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1dec:	ac8f0038 	sw	t7,56(a0)
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1df0:	ac8e0008 	sw	t6,8(a0)
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1df4:	ac8d0058 	sw	t5,88(a0)
      statemt[10] = temp;
    1df8:	ac830028 	sw	v1,40(a0)

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1dfc:	ac8a007c 	sw	t2,124(a0)

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1e00:	ac9e0068 	sw	s8,104(a0)
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = temp;

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
    1e04:	ac8b003c 	sw	t3,60(a0)
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1e08:	8c8b0000 	lw	t3,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1e0c:	8c8a0010 	lw	t2,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    1e10:	8c830070 	lw	v1,112(a0)

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1e14:	ac88006c 	sw	t0,108(a0)
      statemt[11] = temp;
    1e18:	ac89002c 	sw	t1,44(a0)
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1e1c:	8c880030 	lw	t0,48(a0)
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1e20:	8c890020 	lw	t1,32(a0)
      statemt[15] = temp;
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1e24:	ac86005c 	sw	a2,92(a0)
      statemt[7] = temp;
    1e28:	ac87001c 	sw	a3,28(a0)
      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1e2c:	8c860050 	lw	a2,80(a0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1e30:	8c870040 	lw	a3,64(a0)
      statemt[11] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1e34:	ac85004c 	sw	a1,76(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    1e38:	8c850060 	lw	a1,96(a0)
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1e3c:	000bc903 	sra	t9,t3,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1e40:	000a9103 	sra	s2,t2,0x4
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1e44:	0009c103 	sra	t8,t1,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1e48:	00087903 	sra	t7,t0,0x4
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1e4c:	00077103 	sra	t6,a3,0x4
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1e50:	00066903 	sra	t5,a2,0x4
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    1e54:	00058903 	sra	s1,a1,0x4
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    1e58:	00038103 	sra	s0,v1,0x4
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1e5c:	316b000f 	andi	t3,t3,0xf
    1e60:	0019c900 	sll	t9,t9,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1e64:	314a000f 	andi	t2,t2,0xf
    1e68:	00129100 	sll	s2,s2,0x4
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1e6c:	3129000f 	andi	t1,t1,0xf
    1e70:	0018c100 	sll	t8,t8,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1e74:	3108000f 	andi	t0,t0,0xf
    1e78:	000f7900 	sll	t7,t7,0x4
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1e7c:	30e7000f 	andi	a3,a3,0xf
    1e80:	000e7100 	sll	t6,t6,0x4
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1e84:	30c6000f 	andi	a2,a2,0xf
    1e88:	000d6900 	sll	t5,t5,0x4
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    1e8c:	30a5000f 	andi	a1,a1,0xf
    1e90:	00118900 	sll	s1,s1,0x4
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    1e94:	3063000f 	andi	v1,v1,0xf
    1e98:	00108100 	sll	s0,s0,0x4
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1e9c:	032b5821 	addu	t3,t9,t3
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1ea0:	024a5021 	addu	t2,s2,t2
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1ea4:	03094821 	addu	t1,t8,t1
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1ea8:	01e84021 	addu	t0,t7,t0
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1eac:	01c73821 	addu	a3,t6,a3
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1eb0:	01a63021 	addu	a2,t5,a2
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    1eb4:	02252821 	addu	a1,s1,a1
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    1eb8:	02031821 	addu	v1,s0,v1
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1ebc:	000b5880 	sll	t3,t3,0x2
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1ec0:	000a5080 	sll	t2,t2,0x2
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1ec4:	00094880 	sll	t1,t1,0x2
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1ec8:	00084080 	sll	t0,t0,0x2
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1ecc:	00073880 	sll	a3,a3,0x2
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1ed0:	00063080 	sll	a2,a2,0x2
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    1ed4:	00052880 	sll	a1,a1,0x2
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    1ed8:	00031880 	sll	v1,v1,0x2
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1edc:	01625821 	addu	t3,t3,v0
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1ee0:	01425021 	addu	t2,t2,v0
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1ee4:	01224821 	addu	t1,t1,v0
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1ee8:	01024021 	addu	t0,t0,v0
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1eec:	00e23821 	addu	a3,a3,v0
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1ef0:	00c23021 	addu	a2,a2,v0
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    1ef4:	00a22821 	addu	a1,a1,v0
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    1ef8:	00621021 	addu	v0,v1,v0
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1efc:	8d6b0000 	lw	t3,0(t3)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1f00:	8d4a0000 	lw	t2,0(t2)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1f04:	8d290000 	lw	t1,0(t1)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1f08:	8d080000 	lw	t0,0(t0)
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1f0c:	8ce70000 	lw	a3,0(a3)
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1f10:	8cc60000 	lw	a2,0(a2)
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    1f14:	8ca50000 	lw	a1,0(a1)
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    1f18:	8c420000 	lw	v0,0(v0)
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
      statemt[7] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
      statemt[3] = temp;
    1f1c:	ac8c000c 	sw	t4,12(a0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1f20:	ac8b0000 	sw	t3,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1f24:	ac8a0010 	sw	t2,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1f28:	ac890020 	sw	t1,32(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1f2c:	ac880030 	sw	t0,48(a0)
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1f30:	ac870040 	sw	a3,64(a0)
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1f34:	ac860050 	sw	a2,80(a0)
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    1f38:	ac850060 	sw	a1,96(a0)
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    1f3c:	0800060e 	j	1838 <InversShiftRow_ByteSub+0x44>
    1f40:	ac820070 	sw	v0,112(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1f44:	8c8e0054 	lw	t6,84(a0)
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1f48:	8c8d0044 	lw	t5,68(a0)
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1f4c:	8c8c0034 	lw	t4,52(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1f50:	8c8b0024 	lw	t3,36(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1f54:	8c8a0014 	lw	t2,20(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1f58:	8c890004 	lw	t1,4(a0)
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1f5c:	8c880058 	lw	t0,88(a0)
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1f60:	8c870038 	lw	a3,56(a0)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1f64:	8c860018 	lw	a2,24(a0)
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1f68:	8c850028 	lw	a1,40(a0)
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1f6c:	8c820008 	lw	v0,8(a0)

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1f70:	8c830048 	lw	v1,72(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1f74:	000ec103 	sra	t8,t6,0x4
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1f78:	000db903 	sra	s7,t5,0x4
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1f7c:	000cb103 	sra	s6,t4,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1f80:	000ba903 	sra	s5,t3,0x4
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1f84:	000aa103 	sra	s4,t2,0x4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1f88:	00099903 	sra	s3,t1,0x4
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1f8c:	00089103 	sra	s2,t0,0x4
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1f90:	00078903 	sra	s1,a3,0x4
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1f94:	00068103 	sra	s0,a2,0x4
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1f98:	0005c903 	sra	t9,a1,0x4
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1f9c:	00027903 	sra	t7,v0,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1fa0:	0018c100 	sll	t8,t8,0x4
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1fa4:	0017b900 	sll	s7,s7,0x4
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1fa8:	0016b100 	sll	s6,s6,0x4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1fac:	0015a900 	sll	s5,s5,0x4
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1fb0:	0014a100 	sll	s4,s4,0x4
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1fb4:	00139900 	sll	s3,s3,0x4
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1fb8:	00129100 	sll	s2,s2,0x4
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1fbc:	00118900 	sll	s1,s1,0x4
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1fc0:	00108100 	sll	s0,s0,0x4
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1fc4:	0019c900 	sll	t9,t9,0x4
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1fc8:	3042000f 	andi	v0,v0,0xf
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1fcc:	31ce000f 	andi	t6,t6,0xf
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1fd0:	31ad000f 	andi	t5,t5,0xf
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    1fd4:	318c000f 	andi	t4,t4,0xf
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1fd8:	316b000f 	andi	t3,t3,0xf
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1fdc:	314a000f 	andi	t2,t2,0xf
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1fe0:	3129000f 	andi	t1,t1,0xf
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1fe4:	3108000f 	andi	t0,t0,0xf
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1fe8:	30e7000f 	andi	a3,a3,0xf
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1fec:	30c6000f 	andi	a2,a2,0xf
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1ff0:	30a5000f 	andi	a1,a1,0xf
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1ff4:	000f7900 	sll	t7,t7,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    1ff8:	030e7021 	addu	t6,t8,t6
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1ffc:	02ed6821 	addu	t5,s7,t5
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    2000:	02cc6021 	addu	t4,s6,t4
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    2004:	02ab5821 	addu	t3,s5,t3
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    2008:	028a5021 	addu	t2,s4,t2
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    200c:	02694821 	addu	t1,s3,t1
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    2010:	02484021 	addu	t0,s2,t0
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    2014:	02273821 	addu	a3,s1,a3
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    2018:	02063021 	addu	a2,s0,a2
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    201c:	0003f103 	sra	s8,v1,0x4
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    2020:	03252821 	addu	a1,t9,a1
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    2024:	01e27821 	addu	t7,t7,v0
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    2028:	3c020000 	lui	v0,0x0
    202c:	24420000 	addiu	v0,v0,0

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    2030:	001ef100 	sll	s8,s8,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    2034:	000e7080 	sll	t6,t6,0x2
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    2038:	000d6880 	sll	t5,t5,0x2
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    203c:	000c6080 	sll	t4,t4,0x2
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    2040:	000b5880 	sll	t3,t3,0x2
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    2044:	000a5080 	sll	t2,t2,0x2
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    2048:	00094880 	sll	t1,t1,0x2
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    204c:	00084080 	sll	t0,t0,0x2
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    2050:	00073880 	sll	a3,a3,0x2
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    2054:	00063080 	sll	a2,a2,0x2
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    2058:	3063000f 	andi	v1,v1,0xf
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    205c:	00052880 	sll	a1,a1,0x2
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    2060:	000f7880 	sll	t7,t7,0x2
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    2064:	01a26821 	addu	t5,t5,v0
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    2068:	01826021 	addu	t4,t4,v0
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    206c:	01625821 	addu	t3,t3,v0
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    2070:	01425021 	addu	t2,t2,v0
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    2074:	01224821 	addu	t1,t1,v0
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    2078:	00e23821 	addu	a3,a3,v0
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    207c:	00c23021 	addu	a2,a2,v0
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    2080:	00a22821 	addu	a1,a1,v0
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    2084:	01e27821 	addu	t7,t7,v0
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    2088:	01c27021 	addu	t6,t6,v0
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    208c:	01024021 	addu	t0,t0,v0
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    2090:	03c31821 	addu	v1,s8,v1
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    2094:	8db80000 	lw	t8,0(t5)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    2098:	8dce0000 	lw	t6,0(t6)
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    209c:	8d8d0000 	lw	t5,0(t4)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    20a0:	8d080000 	lw	t0,0(t0)
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    20a4:	8d6c0000 	lw	t4,0(t3)

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    20a8:	00031880 	sll	v1,v1,0x2
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    20ac:	8d4b0000 	lw	t3,0(t2)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    20b0:	8d2a0000 	lw	t2,0(t1)
      statemt[1] = temp;

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    20b4:	8ce90000 	lw	t1,0(a3)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    20b8:	8cc70000 	lw	a3,0(a2)
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    20bc:	8ca60000 	lw	a2,0(a1)
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    20c0:	8de50000 	lw	a1,0(t7)

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    20c4:	00621821 	addu	v1,v1,v0
    20c8:	8c6f0000 	lw	t7,0(v1)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      break;
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    20cc:	ac980054 	sw	t8,84(a0)
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    20d0:	ac8d0044 	sw	t5,68(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    20d4:	ac8c0034 	sw	t4,52(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    20d8:	ac8b0024 	sw	t3,36(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    20dc:	ac8a0014 	sw	t2,20(a0)
      statemt[1] = temp;
    20e0:	ac8e0004 	sw	t6,4(a0)

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    20e4:	ac890058 	sw	t1,88(a0)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    20e8:	ac870038 	sw	a3,56(a0)
      statemt[6] = temp;
    20ec:	ac880018 	sw	t0,24(a0)
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    20f0:	ac860048 	sw	a2,72(a0)
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    20f4:	8c8e003c 	lw	t6,60(a0)
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    20f8:	8c8d000c 	lw	t5,12(a0)
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    20fc:	8c8c004c 	lw	t4,76(a0)
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    2100:	8c8b001c 	lw	t3,28(a0)
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    2104:	8c8a005c 	lw	t2,92(a0)
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    2108:	8c89002c 	lw	t1,44(a0)
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    210c:	8c880000 	lw	t0,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    2110:	8c870010 	lw	a3,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    2114:	8c860020 	lw	a2,32(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    2118:	8c830040 	lw	v1,64(a0)
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    211c:	ac850028 	sw	a1,40(a0)
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    2120:	8c850030 	lw	a1,48(a0)
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    2124:	000ef103 	sra	s8,t6,0x4
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    2128:	000db903 	sra	s7,t5,0x4
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    212c:	000cb103 	sra	s6,t4,0x4
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    2130:	000ba903 	sra	s5,t3,0x4
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    2134:	000aa103 	sra	s4,t2,0x4
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    2138:	00099903 	sra	s3,t1,0x4
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    213c:	00089103 	sra	s2,t0,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    2140:	00078903 	sra	s1,a3,0x4
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    2144:	00068103 	sra	s0,a2,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    2148:	0005c903 	sra	t9,a1,0x4
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    214c:	0003c103 	sra	t8,v1,0x4
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    2150:	31ce000f 	andi	t6,t6,0xf
    2154:	001ef100 	sll	s8,s8,0x4
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    2158:	31ad000f 	andi	t5,t5,0xf
    215c:	0017b900 	sll	s7,s7,0x4
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    2160:	318c000f 	andi	t4,t4,0xf
    2164:	0016b100 	sll	s6,s6,0x4
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    2168:	316b000f 	andi	t3,t3,0xf
    216c:	0015a900 	sll	s5,s5,0x4
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    2170:	314a000f 	andi	t2,t2,0xf
    2174:	0014a100 	sll	s4,s4,0x4
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    2178:	3129000f 	andi	t1,t1,0xf
    217c:	00139900 	sll	s3,s3,0x4
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    2180:	3108000f 	andi	t0,t0,0xf
    2184:	00129100 	sll	s2,s2,0x4
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    2188:	30e7000f 	andi	a3,a3,0xf
    218c:	00118900 	sll	s1,s1,0x4
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    2190:	30c6000f 	andi	a2,a2,0xf
    2194:	00108100 	sll	s0,s0,0x4
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    2198:	30a5000f 	andi	a1,a1,0xf
    219c:	0019c900 	sll	t9,t9,0x4
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    21a0:	3063000f 	andi	v1,v1,0xf
    21a4:	0018c100 	sll	t8,t8,0x4
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    21a8:	03ce7021 	addu	t6,s8,t6
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    21ac:	02ed6821 	addu	t5,s7,t5
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    21b0:	02cc6021 	addu	t4,s6,t4
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    21b4:	02ab5821 	addu	t3,s5,t3
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    21b8:	028a5021 	addu	t2,s4,t2
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    21bc:	02694821 	addu	t1,s3,t1
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    21c0:	02484021 	addu	t0,s2,t0
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    21c4:	02273821 	addu	a3,s1,a3
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    21c8:	02063021 	addu	a2,s0,a2
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    21cc:	03252821 	addu	a1,t9,a1
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    21d0:	03031821 	addu	v1,t8,v1
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    21d4:	000e7080 	sll	t6,t6,0x2
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    21d8:	000d6880 	sll	t5,t5,0x2
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    21dc:	000c6080 	sll	t4,t4,0x2
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    21e0:	000b5880 	sll	t3,t3,0x2
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    21e4:	000a5080 	sll	t2,t2,0x2
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    21e8:	00094880 	sll	t1,t1,0x2
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    21ec:	00084080 	sll	t0,t0,0x2
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    21f0:	00073880 	sll	a3,a3,0x2
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    21f4:	00063080 	sll	a2,a2,0x2
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    21f8:	00052880 	sll	a1,a1,0x2
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    21fc:	00031880 	sll	v1,v1,0x2
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    2200:	01c27021 	addu	t6,t6,v0
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    2204:	01a26821 	addu	t5,t5,v0
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    2208:	01826021 	addu	t4,t4,v0
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    220c:	01625821 	addu	t3,t3,v0
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    2210:	01425021 	addu	t2,t2,v0
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    2214:	01224821 	addu	t1,t1,v0
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    2218:	01024021 	addu	t0,t0,v0
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    221c:	00e23821 	addu	a3,a3,v0
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    2220:	00c23021 	addu	a2,a2,v0
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    2224:	00a22821 	addu	a1,a1,v0
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    2228:	00621821 	addu	v1,v1,v0
    222c:	8c630000 	lw	v1,0(v1)
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    2230:	8dce0000 	lw	t6,0(t6)
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    2234:	8dad0000 	lw	t5,0(t5)
      statemt[3] = temp;
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    2238:	8d8c0000 	lw	t4,0(t4)
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    223c:	8d6b0000 	lw	t3,0(t3)
      statemt[7] = temp;
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    2240:	8d4a0000 	lw	t2,0(t2)
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    2244:	8d290000 	lw	t1,0(t1)
      statemt[11] = temp;

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    2248:	8d080000 	lw	t0,0(t0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    224c:	8ce70000 	lw	a3,0(a3)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    2250:	8cc60000 	lw	a2,0(a2)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    2254:	8ca50000 	lw	a1,0(a1)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
      statemt[6] = temp;
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
      statemt[2] = temp;
    2258:	ac8f0008 	sw	t7,8(a0)

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    225c:	ac8d003c 	sw	t5,60(a0)
      statemt[3] = temp;
    2260:	ac8e000c 	sw	t6,12(a0)
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    2264:	ac8b004c 	sw	t3,76(a0)
      statemt[7] = temp;
    2268:	ac8c001c 	sw	t4,28(a0)
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    226c:	ac89005c 	sw	t1,92(a0)
      statemt[11] = temp;
    2270:	ac8a002c 	sw	t2,44(a0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    2274:	ac880000 	sw	t0,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    2278:	ac870010 	sw	a3,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    227c:	ac860020 	sw	a2,32(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    2280:	ac850030 	sw	a1,48(a0)
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    2284:	ac830040 	sw	v1,64(a0)
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    2288:	8c830050 	lw	v1,80(a0)
    228c:	00000000 	sll	zero,zero,0x0
    2290:	00032903 	sra	a1,v1,0x4
    2294:	00052900 	sll	a1,a1,0x4
    2298:	3063000f 	andi	v1,v1,0xf
    229c:	00a31821 	addu	v1,a1,v1
    22a0:	00031880 	sll	v1,v1,0x2
    22a4:	00621021 	addu	v0,v1,v0
    22a8:	8c420000 	lw	v0,0(v0)
      break;
    22ac:	0800060e 	j	1838 <InversShiftRow_ByteSub+0x44>
    22b0:	ac820050 	sw	v0,80(a0)

000022b4 <MixColumn_AddRoundKey>:
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    22b4:	18a000a9 	blez	a1,255c <MixColumn_AddRoundKey+0x2a8>
    22b8:	27bdff80 	addiu	sp,sp,-128
    }
}

/* ******** MixColumn ********** */
int
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
    22bc:	00c50018 	mult	a2,a1
    22c0:	3c060000 	lui	a2,0x0
    22c4:	00052900 	sll	a1,a1,0x4
    22c8:	24c60000 	addiu	a2,a2,0
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    22cc:	03a03821 	addu	a3,sp,zero
    }
}

/* ******** MixColumn ********** */
int
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
    22d0:	03a52821 	addu	a1,sp,a1
    22d4:	03a01021 	addu	v0,sp,zero
    22d8:	00804021 	addu	t0,a0,zero
  register int x;

  for (j = 0; j < nb; ++j)
    {
      ret[j * 4] = (statemt[j * 4] << 1);
      if ((ret[j * 4] >> 8) == 1)
    22dc:	24030001 	addiu	v1,zero,1
    }
}

/* ******** MixColumn ********** */
int
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
    22e0:	00004812 	mflo	t1
    22e4:	25290168 	addiu	t1,t1,360
    22e8:	00094880 	sll	t1,t1,0x2
    22ec:	080008fd 	j	23f4 <MixColumn_AddRoundKey+0x140>
    22f0:	00c93021 	addu	a2,a2,t1
  for (j = 0; j < nb; ++j)
    {
      ret[j * 4] = (statemt[j * 4] << 1);
      if ((ret[j * 4] >> 8) == 1)
	ret[j * 4] ^= 283;
      x = statemt[1 + j * 4];
    22f4:	8d0c0004 	lw	t4,4(t0)
    22f8:	00000000 	sll	zero,zero,0x0
      x ^= (x << 1);
    22fc:	000c5840 	sll	t3,t4,0x1
    2300:	016c5026 	xor	t2,t3,t4
      if ((x >> 8) == 1)
    2304:	000a6a03 	sra	t5,t2,0x8
    2308:	11a30049 	beq	t5,v1,2430 <MixColumn_AddRoundKey+0x17c>
    230c:	01e04821 	addu	t1,t7,zero
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
    2310:	012a4826 	xor	t1,t1,t2
    2314:	ac490000 	sw	t1,0(v0)
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];
    2318:	8d0d0008 	lw	t5,8(t0)
    231c:	8d18000c 	lw	t8,12(t0)
    2320:	8ccafa60 	lw	t2,-1440(a2)
    2324:	030dc826 	xor	t9,t8,t5
    2328:	032a5026 	xor	t2,t9,t2
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    232c:	01494826 	xor	t1,t2,t1
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    2330:	000b5203 	sra	t2,t3,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    2334:	ac490000 	sw	t1,0(v0)
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    2338:	1143004a 	beq	t2,v1,2464 <MixColumn_AddRoundKey+0x1b0>
    233c:	ac4b0004 	sw	t3,4(v0)
	ret[1 + j * 4] ^= 283;
      x = statemt[2 + j * 4];
      x ^= (x << 1);
    2340:	000d5040 	sll	t2,t5,0x1
    2344:	014d4826 	xor	t1,t2,t5
      if ((x >> 8) == 1)
    2348:	0009ca03 	sra	t9,t1,0x8
    234c:	1323004b 	beq	t9,v1,247c <MixColumn_AddRoundKey+0x1c8>
    2350:	00000000 	sll	zero,zero,0x0
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
    2354:	01695826 	xor	t3,t3,t1
      ret[1 + j * 4] ^=
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];
    2358:	8cc9fc40 	lw	t1,-960(a2)
    235c:	030ec826 	xor	t9,t8,t6
    2360:	03294826 	xor	t1,t9,t1
      x = statemt[2 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
    2364:	ac4b0004 	sw	t3,4(v0)
      ret[1 + j * 4] ^=
    2368:	012b5826 	xor	t3,t1,t3
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    236c:	000a4a03 	sra	t1,t2,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
    2370:	ac4b0004 	sw	t3,4(v0)
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    2374:	1123004c 	beq	t1,v1,24a8 <MixColumn_AddRoundKey+0x1f4>
    2378:	ac4a0008 	sw	t2,8(v0)
	ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
    237c:	00184840 	sll	t1,t8,0x1
    2380:	0138c026 	xor	t8,t1,t8
      if ((x >> 8) == 1)
    2384:	00185a03 	sra	t3,t8,0x8
    2388:	1163004d 	beq	t3,v1,24c0 <MixColumn_AddRoundKey+0x20c>
    238c:	00000000 	sll	zero,zero,0x0
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    2390:	8ccbfe20 	lw	t3,-480(a2)
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
    2394:	01585026 	xor	t2,t2,t8
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    2398:	018ec026 	xor	t8,t4,t6
    239c:	030bc026 	xor	t8,t8,t3
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
    23a0:	ac4a0008 	sw	t2,8(v0)
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    23a4:	00095a03 	sra	t3,t1,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
    23a8:	030a5026 	xor	t2,t8,t2
    23ac:	ac4a0008 	sw	t2,8(v0)
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    23b0:	1163004e 	beq	t3,v1,24ec <MixColumn_AddRoundKey+0x238>
    23b4:	ac49000c 	sw	t1,12(v0)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
    23b8:	01ee7026 	xor	t6,t7,t6
      if ((x >> 8) == 1)
    23bc:	000e5203 	sra	t2,t6,0x8
    23c0:	1143004f 	beq	t2,v1,2500 <MixColumn_AddRoundKey+0x24c>
    23c4:	00000000 	sll	zero,zero,0x0
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    23c8:	8cca0000 	lw	t2,0(a2)
    23cc:	01ac6026 	xor	t4,t5,t4
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
    23d0:	012e4826 	xor	t1,t1,t6
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    23d4:	018a6026 	xor	t4,t4,t2
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
    23d8:	ac49000c 	sw	t1,12(v0)
      ret[3 + j * 4] ^=
    23dc:	01894826 	xor	t1,t4,t1
    23e0:	ac49000c 	sw	t1,12(v0)
    23e4:	24420010 	addiu	v0,v0,16
    23e8:	25080010 	addiu	t0,t0,16
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    23ec:	10450050 	beq	v0,a1,2530 <MixColumn_AddRoundKey+0x27c>
    23f0:	24c60004 	addiu	a2,a2,4
    {
      ret[j * 4] = (statemt[j * 4] << 1);
    23f4:	8d0e0000 	lw	t6,0(t0)
    23f8:	00000000 	sll	zero,zero,0x0
    23fc:	000e7840 	sll	t7,t6,0x1
      if ((ret[j * 4] >> 8) == 1)
    2400:	000f4a03 	sra	t1,t7,0x8
    2404:	1523ffbb 	bne	t1,v1,22f4 <MixColumn_AddRoundKey+0x40>
    2408:	ac4f0000 	sw	t7,0(v0)
	ret[j * 4] ^= 283;
    240c:	39e9011b 	xori	t1,t7,0x11b
    2410:	ac490000 	sw	t1,0(v0)
      x = statemt[1 + j * 4];
    2414:	8d0c0004 	lw	t4,4(t0)
    2418:	00000000 	sll	zero,zero,0x0
      x ^= (x << 1);
    241c:	000c5840 	sll	t3,t4,0x1
    2420:	016c5026 	xor	t2,t3,t4
      if ((x >> 8) == 1)
    2424:	000a6a03 	sra	t5,t2,0x8
    2428:	15a3ffb9 	bne	t5,v1,2310 <MixColumn_AddRoundKey+0x5c>
    242c:	00000000 	sll	zero,zero,0x0
	ret[j * 4] ^= (x ^ 283);
    2430:	394a011b 	xori	t2,t2,0x11b
    2434:	01494826 	xor	t1,t2,t1
    2438:	ac490000 	sw	t1,0(v0)
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];
    243c:	8d0d0008 	lw	t5,8(t0)
    2440:	8d18000c 	lw	t8,12(t0)
    2444:	8ccafa60 	lw	t2,-1440(a2)
    2448:	030dc826 	xor	t9,t8,t5
    244c:	032a5026 	xor	t2,t9,t2
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    2450:	01494826 	xor	t1,t2,t1
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    2454:	000b5203 	sra	t2,t3,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    2458:	ac490000 	sw	t1,0(v0)
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    245c:	1543ffb8 	bne	t2,v1,2340 <MixColumn_AddRoundKey+0x8c>
    2460:	ac4b0004 	sw	t3,4(v0)
	ret[1 + j * 4] ^= 283;
      x = statemt[2 + j * 4];
      x ^= (x << 1);
    2464:	000d5040 	sll	t2,t5,0x1
    2468:	014d4826 	xor	t1,t2,t5
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
	ret[1 + j * 4] ^= 283;
    246c:	396b011b 	xori	t3,t3,0x11b
      x = statemt[2 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
    2470:	0009ca03 	sra	t9,t1,0x8
    2474:	1723ffb7 	bne	t9,v1,2354 <MixColumn_AddRoundKey+0xa0>
    2478:	ac4b0004 	sw	t3,4(v0)
	ret[1 + j * 4] ^= (x ^ 283);
    247c:	3929011b 	xori	t1,t1,0x11b
    2480:	012b5826 	xor	t3,t1,t3
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];
    2484:	8cc9fc40 	lw	t1,-960(a2)
    2488:	030ec826 	xor	t9,t8,t6
    248c:	03294826 	xor	t1,t9,t1
      if ((ret[1 + j * 4] >> 8) == 1)
	ret[1 + j * 4] ^= 283;
      x = statemt[2 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
    2490:	ac4b0004 	sw	t3,4(v0)
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
    2494:	012b5826 	xor	t3,t1,t3
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    2498:	000a4a03 	sra	t1,t2,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
    249c:	ac4b0004 	sw	t3,4(v0)
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    24a0:	1523ffb6 	bne	t1,v1,237c <MixColumn_AddRoundKey+0xc8>
    24a4:	ac4a0008 	sw	t2,8(v0)
	ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
    24a8:	00184840 	sll	t1,t8,0x1
    24ac:	0138c026 	xor	t8,t1,t8
      ret[1 + j * 4] ^=
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
	ret[2 + j * 4] ^= 283;
    24b0:	394a011b 	xori	t2,t2,0x11b
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
    24b4:	00185a03 	sra	t3,t8,0x8
    24b8:	1563ffb5 	bne	t3,v1,2390 <MixColumn_AddRoundKey+0xdc>
    24bc:	ac4a0008 	sw	t2,8(v0)
	ret[2 + j * 4] ^= (x ^ 283);
    24c0:	3b18011b 	xori	t8,t8,0x11b
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    24c4:	8ccbfe20 	lw	t3,-480(a2)
      if ((ret[2 + j * 4] >> 8) == 1)
	ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
    24c8:	030a5026 	xor	t2,t8,t2
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    24cc:	018ec026 	xor	t8,t4,t6
    24d0:	030bc026 	xor	t8,t8,t3
      if ((ret[2 + j * 4] >> 8) == 1)
	ret[2 + j * 4] ^= 283;
      x = statemt[3 + j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
    24d4:	ac4a0008 	sw	t2,8(v0)
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    24d8:	00095a03 	sra	t3,t1,0x8
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
    24dc:	030a5026 	xor	t2,t8,t2
    24e0:	ac4a0008 	sw	t2,8(v0)
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    24e4:	1563ffb4 	bne	t3,v1,23b8 <MixColumn_AddRoundKey+0x104>
    24e8:	ac49000c 	sw	t1,12(v0)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
    24ec:	01ee7026 	xor	t6,t7,t6
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
	ret[3 + j * 4] ^= 283;
    24f0:	3929011b 	xori	t1,t1,0x11b
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
    24f4:	000e5203 	sra	t2,t6,0x8
    24f8:	1543ffb3 	bne	t2,v1,23c8 <MixColumn_AddRoundKey+0x114>
    24fc:	ac49000c 	sw	t1,12(v0)
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    2500:	8cca0000 	lw	t2,0(a2)
      if ((ret[3 + j * 4] >> 8) == 1)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
    2504:	39ce011b 	xori	t6,t6,0x11b
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    2508:	01ac6026 	xor	t4,t5,t4
      if ((ret[3 + j * 4] >> 8) == 1)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
    250c:	01c94826 	xor	t1,t6,t1
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    2510:	018a6026 	xor	t4,t4,t2
      if ((ret[3 + j * 4] >> 8) == 1)
	ret[3 + j * 4] ^= 283;
      x = statemt[j * 4];
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
    2514:	ac49000c 	sw	t1,12(v0)
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
    2518:	01894826 	xor	t1,t4,t1
    251c:	ac49000c 	sw	t1,12(v0)
    2520:	24420010 	addiu	v0,v0,16
    2524:	25080010 	addiu	t0,t0,16
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    2528:	1445ffb2 	bne	v0,a1,23f4 <MixColumn_AddRoundKey+0x140>
    252c:	24c60004 	addiu	a2,a2,4
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] = ret[j * 4];
      statemt[1 + j * 4] = ret[1 + j * 4];
    2530:	8ce20004 	lw	v0,4(a3)
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] = ret[j * 4];
    2534:	8ce30000 	lw	v1,0(a3)
      statemt[1 + j * 4] = ret[1 + j * 4];
    2538:	ac820004 	sw	v0,4(a0)
      statemt[2 + j * 4] = ret[2 + j * 4];
    253c:	8ce20008 	lw	v0,8(a3)
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] = ret[j * 4];
    2540:	ac830000 	sw	v1,0(a0)
      statemt[1 + j * 4] = ret[1 + j * 4];
      statemt[2 + j * 4] = ret[2 + j * 4];
    2544:	ac820008 	sw	v0,8(a0)
      statemt[3 + j * 4] = ret[3 + j * 4];
    2548:	8ce2000c 	lw	v0,12(a3)
    254c:	24e70010 	addiu	a3,a3,16
    2550:	ac82000c 	sw	v0,12(a0)
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    2554:	14e5fff6 	bne	a3,a1,2530 <MixColumn_AddRoundKey+0x27c>
    2558:	24840010 	addiu	a0,a0,16
      statemt[1 + j * 4] = ret[1 + j * 4];
      statemt[2 + j * 4] = ret[2 + j * 4];
      statemt[3 + j * 4] = ret[3 + j * 4];
    }
  return 0;
}
    255c:	00001021 	addu	v0,zero,zero
    2560:	03e00008 	jr	ra
    2564:	27bd0080 	addiu	sp,sp,128

00002568 <AddRoundKey_InversMixColumn>:

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
{
    2568:	27bdff60 	addiu	sp,sp,-160
    256c:	afb6009c 	sw	s6,156(sp)
    2570:	afb50098 	sw	s5,152(sp)
    2574:	afb40094 	sw	s4,148(sp)
    2578:	afb30090 	sw	s3,144(sp)
    257c:	afb2008c 	sw	s2,140(sp)
    2580:	afb10088 	sw	s1,136(sp)
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    2584:	18a00112 	blez	a1,29d0 <AddRoundKey_InversMixColumn+0x468>
    2588:	afb00084 	sw	s0,132(sp)
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    258c:	00c50018 	mult	a2,a1
    2590:	3c030000 	lui	v1,0x0
    2594:	24630000 	addiu	v1,v1,0
{
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    2598:	00805021 	addu	t2,a0,zero
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    259c:	00801021 	addu	v0,a0,zero
{
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    25a0:	00003821 	addu	a3,zero,zero
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    25a4:	00003012 	mflo	a2
    25a8:	00063080 	sll	a2,a2,0x2
    25ac:	00661821 	addu	v1,v1,a2
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    25b0:	8c660000 	lw	a2,0(v1)
    25b4:	8c490000 	lw	t1,0(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    25b8:	8c480004 	lw	t0,4(v0)
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    25bc:	01263026 	xor	a2,t1,a2
    25c0:	ac460000 	sw	a2,0(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    25c4:	8c6601e0 	lw	a2,480(v1)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    25c8:	8c490008 	lw	t1,8(v0)
  register int x;

  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    25cc:	01063026 	xor	a2,t0,a2
    25d0:	ac460004 	sw	a2,4(v0)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    25d4:	8c6603c0 	lw	a2,960(v1)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    25d8:	8c48000c 	lw	t0,12(v0)

  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    25dc:	01263026 	xor	a2,t1,a2
    25e0:	ac460008 	sw	a2,8(v0)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    25e4:	8c6605a0 	lw	a2,1440(v1)
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
{
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    25e8:	24e70001 	addiu	a3,a3,1
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    25ec:	01063026 	xor	a2,t0,a2
    25f0:	ac46000c 	sw	a2,12(v0)
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
{
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    25f4:	24630004 	addiu	v1,v1,4
    25f8:	14e5ffed 	bne	a3,a1,25b0 <AddRoundKey_InversMixColumn+0x48>
    25fc:	24420010 	addiu	v0,v0,16
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    2600:	00073900 	sll	a3,a3,0x4
{
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    2604:	03a04821 	addu	t1,sp,zero
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    2608:	00fd8021 	addu	s0,a3,sp
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
	if ((x >> 8) == 1)
    260c:	24020001 	addiu	v0,zero,1
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
    2610:	8c830000 	lw	v1,0(a0)
    2614:	00000000 	sll	zero,zero,0x0
    2618:	00036840 	sll	t5,v1,0x1
	if ((x >> 8) == 1)
    261c:	000dca03 	sra	t9,t5,0x8
    2620:	13220186 	beq	t9,v0,2c3c <AddRoundKey_InversMixColumn+0x6d4>
    2624:	01a0a821 	addu	s5,t5,zero
	  x ^= 283;
	x ^= statemt[i + j * 4];
    2628:	02a3a826 	xor	s5,s5,v1
	x = (x << 1);
    262c:	0015a840 	sll	s5,s5,0x1
	if ((x >> 8) == 1)
    2630:	00152a03 	sra	a1,s5,0x8
    2634:	10a20187 	beq	a1,v0,2c54 <AddRoundKey_InversMixColumn+0x6ec>
    2638:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[i + j * 4];
    263c:	02a3a826 	xor	s5,s5,v1
	x = (x << 1);
    2640:	0015a840 	sll	s5,s5,0x1
	if ((x >> 8) == 1)
    2644:	00152a03 	sra	a1,s5,0x8
    2648:	10a2017a 	beq	a1,v0,2c34 <AddRoundKey_InversMixColumn+0x6cc>
    264c:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
    2650:	8c860004 	lw	a2,4(a0)
    2654:	00000000 	sll	zero,zero,0x0
    2658:	00066040 	sll	t4,a2,0x1
	if ((x >> 8) == 1)
    265c:	000cc203 	sra	t8,t4,0x8
    2660:	13020002 	beq	t8,v0,266c <AddRoundKey_InversMixColumn+0x104>
    2664:	3994011b 	xori	s4,t4,0x11b
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
    2668:	0180a021 	addu	s4,t4,zero
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
    266c:	0014a040 	sll	s4,s4,0x1
	if ((x >> 8) == 1)
    2670:	00142a03 	sra	a1,s4,0x8
    2674:	10a2016d 	beq	a1,v0,2c2c <AddRoundKey_InversMixColumn+0x6c4>
    2678:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
    267c:	0286a026 	xor	s4,s4,a2
	x = (x << 1);
    2680:	0014a040 	sll	s4,s4,0x1
	if ((x >> 8) == 1)
    2684:	00142a03 	sra	a1,s4,0x8
    2688:	10a20166 	beq	a1,v0,2c24 <AddRoundKey_InversMixColumn+0x6bc>
    268c:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
    2690:	8c880008 	lw	t0,8(a0)
    2694:	00000000 	sll	zero,zero,0x0
    2698:	00085840 	sll	t3,t0,0x1
	if ((x >> 8) == 1)
    269c:	000b7a03 	sra	t7,t3,0x8
    26a0:	11e20002 	beq	t7,v0,26ac <AddRoundKey_InversMixColumn+0x144>
    26a4:	3973011b 	xori	s3,t3,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
    26a8:	01609821 	addu	s3,t3,zero
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    26ac:	02689826 	xor	s3,s3,t0
	x = (x << 1);
    26b0:	00139840 	sll	s3,s3,0x1
	if ((x >> 8) == 1)
    26b4:	00132a03 	sra	a1,s3,0x8
    26b8:	10a20158 	beq	a1,v0,2c1c <AddRoundKey_InversMixColumn+0x6b4>
    26bc:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    26c0:	00139840 	sll	s3,s3,0x1
	if ((x >> 8) == 1)
    26c4:	00132a03 	sra	a1,s3,0x8
    26c8:	10a20152 	beq	a1,v0,2c14 <AddRoundKey_InversMixColumn+0x6ac>
    26cc:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
    26d0:	8c85000c 	lw	a1,12(a0)
    26d4:	00000000 	sll	zero,zero,0x0
    26d8:	00057040 	sll	t6,a1,0x1
	if ((x >> 8) == 1)
    26dc:	000e3a03 	sra	a3,t6,0x8
    26e0:	10e20002 	beq	a3,v0,26ec <AddRoundKey_InversMixColumn+0x184>
    26e4:	39d2011b 	xori	s2,t6,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
    26e8:	01c09021 	addu	s2,t6,zero
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
    26ec:	00129040 	sll	s2,s2,0x1
	if ((x >> 8) == 1)
    26f0:	00128a03 	sra	s1,s2,0x8
    26f4:	12220145 	beq	s1,v0,2c0c <AddRoundKey_InversMixColumn+0x6a4>
    26f8:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    26fc:	00129040 	sll	s2,s2,0x1
	if ((x >> 8) == 1)
    2700:	00128a03 	sra	s1,s2,0x8
    2704:	1222013f 	beq	s1,v0,2c04 <AddRoundKey_InversMixColumn+0x69c>
    2708:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
    270c:	01068826 	xor	s1,t0,a2
	ret[i + j * 4] ^= x;
    2710:	0225b026 	xor	s6,s1,a1
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    2714:	02d5a826 	xor	s5,s6,s5
	ret[i + j * 4] ^= x;
    2718:	02b4a026 	xor	s4,s5,s4
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 3) % 4 + j * 4];
    271c:	02939826 	xor	s3,s4,s3
	ret[i + j * 4] ^= x;
    2720:	02729026 	xor	s2,s3,s2
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
	if ((x >> 8) == 1)
    2724:	13020135 	beq	t8,v0,2bfc <AddRoundKey_InversMixColumn+0x694>
    2728:	ad320000 	sw	s2,0(t1)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
    272c:	0180a821 	addu	s5,t4,zero
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[i + j * 4];
    2730:	02a6a826 	xor	s5,s5,a2
	x = (x << 1);
    2734:	0015a840 	sll	s5,s5,0x1
	if ((x >> 8) == 1)
    2738:	00159203 	sra	s2,s5,0x8
    273c:	1242012d 	beq	s2,v0,2bf4 <AddRoundKey_InversMixColumn+0x68c>
    2740:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[i + j * 4];
    2744:	02a6a826 	xor	s5,s5,a2
	x = (x << 1);
    2748:	0015a840 	sll	s5,s5,0x1
	if ((x >> 8) == 1)
    274c:	00159203 	sra	s2,s5,0x8
    2750:	1242011f 	beq	s2,v0,2bd0 <AddRoundKey_InversMixColumn+0x668>
    2754:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    2758:	11e20120 	beq	t7,v0,2bdc <AddRoundKey_InversMixColumn+0x674>
    275c:	3974011b 	xori	s4,t3,0x11b
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
    2760:	0160a021 	addu	s4,t3,zero
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
    2764:	0014a040 	sll	s4,s4,0x1
	if ((x >> 8) == 1)
    2768:	00149203 	sra	s2,s4,0x8
    276c:	1242011f 	beq	s2,v0,2bec <AddRoundKey_InversMixColumn+0x684>
    2770:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
    2774:	0288a026 	xor	s4,s4,t0
	x = (x << 1);
    2778:	0014a040 	sll	s4,s4,0x1
	if ((x >> 8) == 1)
    277c:	00149203 	sra	s2,s4,0x8
    2780:	12420109 	beq	s2,v0,2ba8 <AddRoundKey_InversMixColumn+0x640>
    2784:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    2788:	10e2010a 	beq	a3,v0,2bb4 <AddRoundKey_InversMixColumn+0x64c>
    278c:	39d3011b 	xori	s3,t6,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
    2790:	01c09821 	addu	s3,t6,zero
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    2794:	02659826 	xor	s3,s3,a1
	x = (x << 1);
    2798:	00139840 	sll	s3,s3,0x1
	if ((x >> 8) == 1)
    279c:	00139203 	sra	s2,s3,0x8
    27a0:	12420109 	beq	s2,v0,2bc8 <AddRoundKey_InversMixColumn+0x660>
    27a4:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    27a8:	00139840 	sll	s3,s3,0x1
	if ((x >> 8) == 1)
    27ac:	00139203 	sra	s2,s3,0x8
    27b0:	124200e1 	beq	s2,v0,2b38 <AddRoundKey_InversMixColumn+0x5d0>
    27b4:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    27b8:	132200e2 	beq	t9,v0,2b44 <AddRoundKey_InversMixColumn+0x5dc>
    27bc:	39b2011b 	xori	s2,t5,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
    27c0:	01a09021 	addu	s2,t5,zero
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
    27c4:	00129040 	sll	s2,s2,0x1
	if ((x >> 8) == 1)
    27c8:	0012b203 	sra	s6,s2,0x8
    27cc:	12c200e1 	beq	s6,v0,2b54 <AddRoundKey_InversMixColumn+0x5ec>
    27d0:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    27d4:	00129040 	sll	s2,s2,0x1
	if ((x >> 8) == 1)
    27d8:	0012b203 	sra	s6,s2,0x8
    27dc:	12c200e2 	beq	s6,v0,2b68 <AddRoundKey_InversMixColumn+0x600>
    27e0:	0103b026 	xor	s6,t0,v1
	x ^= statemt[(i + 1) % 4 + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;
    27e4:	02c5b026 	xor	s6,s6,a1
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    27e8:	02d5a826 	xor	s5,s6,s5
	ret[i + j * 4] ^= x;
    27ec:	02b4a026 	xor	s4,s5,s4
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 3) % 4 + j * 4];
    27f0:	02939826 	xor	s3,s4,s3
	ret[i + j * 4] ^= x;
    27f4:	02729026 	xor	s2,s3,s2
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
	if ((x >> 8) == 1)
    27f8:	11e200e3 	beq	t7,v0,2b88 <AddRoundKey_InversMixColumn+0x620>
    27fc:	ad320004 	sw	s2,4(t1)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
    2800:	01609021 	addu	s2,t3,zero
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[i + j * 4];
    2804:	02489026 	xor	s2,s2,t0
	x = (x << 1);
    2808:	00129040 	sll	s2,s2,0x1
	if ((x >> 8) == 1)
    280c:	00129a03 	sra	s3,s2,0x8
    2810:	126200e3 	beq	s3,v0,2ba0 <AddRoundKey_InversMixColumn+0x638>
    2814:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[i + j * 4];
    2818:	02484026 	xor	t0,s2,t0
	x = (x << 1);
    281c:	00084040 	sll	t0,t0,0x1
	if ((x >> 8) == 1)
    2820:	00089203 	sra	s2,t0,0x8
    2824:	124200bb 	beq	s2,v0,2b14 <AddRoundKey_InversMixColumn+0x5ac>
    2828:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    282c:	10e200bc 	beq	a3,v0,2b20 <AddRoundKey_InversMixColumn+0x5b8>
    2830:	39d4011b 	xori	s4,t6,0x11b
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
    2834:	01c0a021 	addu	s4,t6,zero
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
    2838:	0014a040 	sll	s4,s4,0x1
	if ((x >> 8) == 1)
    283c:	00149203 	sra	s2,s4,0x8
    2840:	124200bb 	beq	s2,v0,2b30 <AddRoundKey_InversMixColumn+0x5c8>
    2844:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
    2848:	0285a026 	xor	s4,s4,a1
	x = (x << 1);
    284c:	0014a040 	sll	s4,s4,0x1
	if ((x >> 8) == 1)
    2850:	00149203 	sra	s2,s4,0x8
    2854:	124200a5 	beq	s2,v0,2aec <AddRoundKey_InversMixColumn+0x584>
    2858:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    285c:	132200a6 	beq	t9,v0,2af8 <AddRoundKey_InversMixColumn+0x590>
    2860:	39b3011b 	xori	s3,t5,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
    2864:	01a09821 	addu	s3,t5,zero
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    2868:	02639826 	xor	s3,s3,v1
	x = (x << 1);
    286c:	00139840 	sll	s3,s3,0x1
	if ((x >> 8) == 1)
    2870:	00139203 	sra	s2,s3,0x8
    2874:	124200a5 	beq	s2,v0,2b0c <AddRoundKey_InversMixColumn+0x5a4>
    2878:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    287c:	00139840 	sll	s3,s3,0x1
	if ((x >> 8) == 1)
    2880:	00139203 	sra	s2,s3,0x8
    2884:	1242007d 	beq	s2,v0,2a7c <AddRoundKey_InversMixColumn+0x514>
    2888:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    288c:	1302007e 	beq	t8,v0,2a88 <AddRoundKey_InversMixColumn+0x520>
    2890:	3992011b 	xori	s2,t4,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
    2894:	01809021 	addu	s2,t4,zero
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
    2898:	00129040 	sll	s2,s2,0x1
	if ((x >> 8) == 1)
    289c:	0012aa03 	sra	s5,s2,0x8
    28a0:	12a2007d 	beq	s5,v0,2a98 <AddRoundKey_InversMixColumn+0x530>
    28a4:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    28a8:	00129040 	sll	s2,s2,0x1
	if ((x >> 8) == 1)
    28ac:	0012aa03 	sra	s5,s2,0x8
    28b0:	12a2007e 	beq	s5,v0,2aac <AddRoundKey_InversMixColumn+0x544>
    28b4:	00c3a826 	xor	s5,a2,v1
	x ^= statemt[(i + 1) % 4 + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;
    28b8:	02a5a826 	xor	s5,s5,a1
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    28bc:	02a84026 	xor	t0,s5,t0
	ret[i + j * 4] ^= x;
    28c0:	0114a026 	xor	s4,t0,s4
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 3) % 4 + j * 4];
    28c4:	02939826 	xor	s3,s4,s3
	ret[i + j * 4] ^= x;
    28c8:	02729026 	xor	s2,s3,s2
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
	if ((x >> 8) == 1)
    28cc:	10e2007f 	beq	a3,v0,2acc <AddRoundKey_InversMixColumn+0x564>
    28d0:	ad320008 	sw	s2,8(t1)
	  x ^= 283;
	x ^= statemt[i + j * 4];
    28d4:	01c57026 	xor	t6,t6,a1
	x = (x << 1);
    28d8:	000e7040 	sll	t6,t6,0x1
	if ((x >> 8) == 1)
    28dc:	000e3a03 	sra	a3,t6,0x8
    28e0:	10e20080 	beq	a3,v0,2ae4 <AddRoundKey_InversMixColumn+0x57c>
    28e4:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[i + j * 4];
    28e8:	01c52826 	xor	a1,t6,a1
	x = (x << 1);
    28ec:	00052840 	sll	a1,a1,0x1
	if ((x >> 8) == 1)
    28f0:	00053a03 	sra	a3,a1,0x8
    28f4:	10e20058 	beq	a3,v0,2a58 <AddRoundKey_InversMixColumn+0x4f0>
    28f8:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    28fc:	13220058 	beq	t9,v0,2a60 <AddRoundKey_InversMixColumn+0x4f8>
    2900:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    2904:	000d6840 	sll	t5,t5,0x1
	if ((x >> 8) == 1)
    2908:	000d3a03 	sra	a3,t5,0x8
    290c:	10e20059 	beq	a3,v0,2a74 <AddRoundKey_InversMixColumn+0x50c>
    2910:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
    2914:	01a36826 	xor	t5,t5,v1
	x = (x << 1);
    2918:	000d6840 	sll	t5,t5,0x1
	if ((x >> 8) == 1)
    291c:	000d3a03 	sra	a3,t5,0x8
    2920:	10e20043 	beq	a3,v0,2a30 <AddRoundKey_InversMixColumn+0x4c8>
    2924:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    2928:	13020043 	beq	t8,v0,2a38 <AddRoundKey_InversMixColumn+0x4d0>
    292c:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    2930:	01863026 	xor	a2,t4,a2
	x = (x << 1);
    2934:	00063040 	sll	a2,a2,0x1
	if ((x >> 8) == 1)
    2938:	00063a03 	sra	a3,a2,0x8
    293c:	10e20044 	beq	a3,v0,2a50 <AddRoundKey_InversMixColumn+0x4e8>
    2940:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    2944:	00063040 	sll	a2,a2,0x1
	if ((x >> 8) == 1)
    2948:	00063a03 	sra	a3,a2,0x8
    294c:	10e2002a 	beq	a3,v0,29f8 <AddRoundKey_InversMixColumn+0x490>
    2950:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    2954:	11e2002a 	beq	t7,v0,2a00 <AddRoundKey_InversMixColumn+0x498>
    2958:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    295c:	000b5840 	sll	t3,t3,0x1
	if ((x >> 8) == 1)
    2960:	000b3a03 	sra	a3,t3,0x8
    2964:	10e2002b 	beq	a3,v0,2a14 <AddRoundKey_InversMixColumn+0x4ac>
    2968:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
	x = (x << 1);
    296c:	000b5840 	sll	t3,t3,0x1
	if ((x >> 8) == 1)
    2970:	000b3a03 	sra	a3,t3,0x8
    2974:	10e2002c 	beq	a3,v0,2a28 <AddRoundKey_InversMixColumn+0x4c0>
    2978:	00000000 	sll	zero,zero,0x0
	x ^= statemt[(i + 1) % 4 + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;
    297c:	02231826 	xor	v1,s1,v1
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    2980:	00652826 	xor	a1,v1,a1
	ret[i + j * 4] ^= x;
    2984:	00ad6826 	xor	t5,a1,t5
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 3) % 4 + j * 4];
    2988:	01a63026 	xor	a2,t5,a2
	ret[i + j * 4] ^= x;
    298c:	00cb5826 	xor	t3,a2,t3
    2990:	ad2b000c 	sw	t3,12(t1)
    2994:	25290010 	addiu	t1,t1,16
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    2998:	1530ff1d 	bne	t1,s0,2610 <AddRoundKey_InversMixColumn+0xa8>
    299c:	24840010 	addiu	a0,a0,16
    29a0:	03a01021 	addu	v0,sp,zero
	ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    {
      statemt[i * 4] = ret[i * 4];
      statemt[1 + i * 4] = ret[1 + i * 4];
    29a4:	8c430004 	lw	v1,4(v0)
	x ^= statemt[(i + 3) % 4 + j * 4];
	ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    {
      statemt[i * 4] = ret[i * 4];
    29a8:	8c440000 	lw	a0,0(v0)
      statemt[1 + i * 4] = ret[1 + i * 4];
    29ac:	ad430004 	sw	v1,4(t2)
      statemt[2 + i * 4] = ret[2 + i * 4];
    29b0:	8c430008 	lw	v1,8(v0)
	x ^= statemt[(i + 3) % 4 + j * 4];
	ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    {
      statemt[i * 4] = ret[i * 4];
    29b4:	ad440000 	sw	a0,0(t2)
      statemt[1 + i * 4] = ret[1 + i * 4];
      statemt[2 + i * 4] = ret[2 + i * 4];
    29b8:	ad430008 	sw	v1,8(t2)
      statemt[3 + i * 4] = ret[3 + i * 4];
    29bc:	8c43000c 	lw	v1,12(v0)
    29c0:	24420010 	addiu	v0,v0,16
    29c4:	ad43000c 	sw	v1,12(t2)
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 3) % 4 + j * 4];
	ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    29c8:	1450fff6 	bne	v0,s0,29a4 <AddRoundKey_InversMixColumn+0x43c>
    29cc:	254a0010 	addiu	t2,t2,16
      statemt[1 + i * 4] = ret[1 + i * 4];
      statemt[2 + i * 4] = ret[2 + i * 4];
      statemt[3 + i * 4] = ret[3 + i * 4];
    }
  return 0;
}
    29d0:	00001021 	addu	v0,zero,zero
    29d4:	8fb6009c 	lw	s6,156(sp)
    29d8:	8fb50098 	lw	s5,152(sp)
    29dc:	8fb40094 	lw	s4,148(sp)
    29e0:	8fb30090 	lw	s3,144(sp)
    29e4:	8fb2008c 	lw	s2,140(sp)
    29e8:	8fb10088 	lw	s1,136(sp)
    29ec:	8fb00084 	lw	s0,132(sp)
    29f0:	03e00008 	jr	ra
    29f4:	27bd00a0 	addiu	sp,sp,160
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    29f8:	15e2ffd8 	bne	t7,v0,295c <AddRoundKey_InversMixColumn+0x3f4>
    29fc:	38c6011b 	xori	a2,a2,0x11b
	  x ^= 283;
    2a00:	396b011b 	xori	t3,t3,0x11b
	x = (x << 1);
    2a04:	000b5840 	sll	t3,t3,0x1
	if ((x >> 8) == 1)
    2a08:	000b3a03 	sra	a3,t3,0x8
    2a0c:	14e2ffd7 	bne	a3,v0,296c <AddRoundKey_InversMixColumn+0x404>
    2a10:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2a14:	396b011b 	xori	t3,t3,0x11b
	x = (x << 1);
    2a18:	000b5840 	sll	t3,t3,0x1
	if ((x >> 8) == 1)
    2a1c:	000b3a03 	sra	a3,t3,0x8
    2a20:	14e2ffd6 	bne	a3,v0,297c <AddRoundKey_InversMixColumn+0x414>
    2a24:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2a28:	08000a5f 	j	297c <AddRoundKey_InversMixColumn+0x414>
    2a2c:	396b011b 	xori	t3,t3,0x11b
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    2a30:	1702ffbf 	bne	t8,v0,2930 <AddRoundKey_InversMixColumn+0x3c8>
    2a34:	39ad011b 	xori	t5,t5,0x11b
	  x ^= 283;
    2a38:	398c011b 	xori	t4,t4,0x11b
	x ^= statemt[(i + 2) % 4 + j * 4];
    2a3c:	01863026 	xor	a2,t4,a2
	x = (x << 1);
    2a40:	00063040 	sll	a2,a2,0x1
	if ((x >> 8) == 1)
    2a44:	00063a03 	sra	a3,a2,0x8
    2a48:	14e2ffbe 	bne	a3,v0,2944 <AddRoundKey_InversMixColumn+0x3dc>
    2a4c:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2a50:	08000a51 	j	2944 <AddRoundKey_InversMixColumn+0x3dc>
    2a54:	38c6011b 	xori	a2,a2,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    2a58:	1722ffaa 	bne	t9,v0,2904 <AddRoundKey_InversMixColumn+0x39c>
    2a5c:	38a5011b 	xori	a1,a1,0x11b
	  x ^= 283;
    2a60:	39ad011b 	xori	t5,t5,0x11b
	x = (x << 1);
    2a64:	000d6840 	sll	t5,t5,0x1
	if ((x >> 8) == 1)
    2a68:	000d3a03 	sra	a3,t5,0x8
    2a6c:	14e2ffa9 	bne	a3,v0,2914 <AddRoundKey_InversMixColumn+0x3ac>
    2a70:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2a74:	08000a45 	j	2914 <AddRoundKey_InversMixColumn+0x3ac>
    2a78:	39ad011b 	xori	t5,t5,0x11b
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    2a7c:	1702ff85 	bne	t8,v0,2894 <AddRoundKey_InversMixColumn+0x32c>
    2a80:	3a73011b 	xori	s3,s3,0x11b
	  x ^= 283;
    2a84:	3992011b 	xori	s2,t4,0x11b
	x = (x << 1);
    2a88:	00129040 	sll	s2,s2,0x1
	if ((x >> 8) == 1)
    2a8c:	0012aa03 	sra	s5,s2,0x8
    2a90:	16a2ff85 	bne	s5,v0,28a8 <AddRoundKey_InversMixColumn+0x340>
    2a94:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2a98:	3a52011b 	xori	s2,s2,0x11b
	x = (x << 1);
    2a9c:	00129040 	sll	s2,s2,0x1
	if ((x >> 8) == 1)
    2aa0:	0012aa03 	sra	s5,s2,0x8
    2aa4:	16a2ff84 	bne	s5,v0,28b8 <AddRoundKey_InversMixColumn+0x350>
    2aa8:	00c3a826 	xor	s5,a2,v1
	x ^= statemt[(i + 1) % 4 + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;
    2aac:	02a5a826 	xor	s5,s5,a1
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    2ab0:	02a84026 	xor	t0,s5,t0
	ret[i + j * 4] ^= x;
    2ab4:	0114a026 	xor	s4,t0,s4
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2ab8:	3a52011b 	xori	s2,s2,0x11b
	x ^= statemt[(i + 3) % 4 + j * 4];
    2abc:	02939826 	xor	s3,s4,s3
	ret[i + j * 4] ^= x;
    2ac0:	02729026 	xor	s2,s3,s2
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
	if ((x >> 8) == 1)
    2ac4:	14e2ff83 	bne	a3,v0,28d4 <AddRoundKey_InversMixColumn+0x36c>
    2ac8:	ad320008 	sw	s2,8(t1)
	  x ^= 283;
    2acc:	39ce011b 	xori	t6,t6,0x11b
	x ^= statemt[i + j * 4];
    2ad0:	01c57026 	xor	t6,t6,a1
	x = (x << 1);
    2ad4:	000e7040 	sll	t6,t6,0x1
	if ((x >> 8) == 1)
    2ad8:	000e3a03 	sra	a3,t6,0x8
    2adc:	14e2ff82 	bne	a3,v0,28e8 <AddRoundKey_InversMixColumn+0x380>
    2ae0:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2ae4:	08000a3a 	j	28e8 <AddRoundKey_InversMixColumn+0x380>
    2ae8:	39ce011b 	xori	t6,t6,0x11b
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    2aec:	1722ff5d 	bne	t9,v0,2864 <AddRoundKey_InversMixColumn+0x2fc>
    2af0:	3a94011b 	xori	s4,s4,0x11b
	  x ^= 283;
    2af4:	39b3011b 	xori	s3,t5,0x11b
	x ^= statemt[(i + 2) % 4 + j * 4];
    2af8:	02639826 	xor	s3,s3,v1
	x = (x << 1);
    2afc:	00139840 	sll	s3,s3,0x1
	if ((x >> 8) == 1)
    2b00:	00139203 	sra	s2,s3,0x8
    2b04:	1642ff5d 	bne	s2,v0,287c <AddRoundKey_InversMixColumn+0x314>
    2b08:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2b0c:	08000a1f 	j	287c <AddRoundKey_InversMixColumn+0x314>
    2b10:	3a73011b 	xori	s3,s3,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    2b14:	14e2ff47 	bne	a3,v0,2834 <AddRoundKey_InversMixColumn+0x2cc>
    2b18:	3908011b 	xori	t0,t0,0x11b
	  x ^= 283;
    2b1c:	39d4011b 	xori	s4,t6,0x11b
	x = (x << 1);
    2b20:	0014a040 	sll	s4,s4,0x1
	if ((x >> 8) == 1)
    2b24:	00149203 	sra	s2,s4,0x8
    2b28:	1642ff47 	bne	s2,v0,2848 <AddRoundKey_InversMixColumn+0x2e0>
    2b2c:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2b30:	08000a12 	j	2848 <AddRoundKey_InversMixColumn+0x2e0>
    2b34:	3a94011b 	xori	s4,s4,0x11b
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    2b38:	1722ff21 	bne	t9,v0,27c0 <AddRoundKey_InversMixColumn+0x258>
    2b3c:	3a73011b 	xori	s3,s3,0x11b
	  x ^= 283;
    2b40:	39b2011b 	xori	s2,t5,0x11b
	x = (x << 1);
    2b44:	00129040 	sll	s2,s2,0x1
	if ((x >> 8) == 1)
    2b48:	0012b203 	sra	s6,s2,0x8
    2b4c:	16c2ff21 	bne	s6,v0,27d4 <AddRoundKey_InversMixColumn+0x26c>
    2b50:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2b54:	3a52011b 	xori	s2,s2,0x11b
	x = (x << 1);
    2b58:	00129040 	sll	s2,s2,0x1
	if ((x >> 8) == 1)
    2b5c:	0012b203 	sra	s6,s2,0x8
    2b60:	16c2ff20 	bne	s6,v0,27e4 <AddRoundKey_InversMixColumn+0x27c>
    2b64:	0103b026 	xor	s6,t0,v1
	x ^= statemt[(i + 1) % 4 + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;
    2b68:	02c5b026 	xor	s6,s6,a1
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    2b6c:	02d5a826 	xor	s5,s6,s5
	ret[i + j * 4] ^= x;
    2b70:	02b4a026 	xor	s4,s5,s4
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2b74:	3a52011b 	xori	s2,s2,0x11b
	x ^= statemt[(i + 3) % 4 + j * 4];
    2b78:	02939826 	xor	s3,s4,s3
	ret[i + j * 4] ^= x;
    2b7c:	02729026 	xor	s2,s3,s2
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
	if ((x >> 8) == 1)
    2b80:	15e2ff1f 	bne	t7,v0,2800 <AddRoundKey_InversMixColumn+0x298>
    2b84:	ad320004 	sw	s2,4(t1)
	  x ^= 283;
    2b88:	3972011b 	xori	s2,t3,0x11b
	x ^= statemt[i + j * 4];
    2b8c:	02489026 	xor	s2,s2,t0
	x = (x << 1);
    2b90:	00129040 	sll	s2,s2,0x1
	if ((x >> 8) == 1)
    2b94:	00129a03 	sra	s3,s2,0x8
    2b98:	1662ff1f 	bne	s3,v0,2818 <AddRoundKey_InversMixColumn+0x2b0>
    2b9c:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2ba0:	08000a06 	j	2818 <AddRoundKey_InversMixColumn+0x2b0>
    2ba4:	3a52011b 	xori	s2,s2,0x11b
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    2ba8:	14e2fef9 	bne	a3,v0,2790 <AddRoundKey_InversMixColumn+0x228>
    2bac:	3a94011b 	xori	s4,s4,0x11b
	  x ^= 283;
    2bb0:	39d3011b 	xori	s3,t6,0x11b
	x ^= statemt[(i + 2) % 4 + j * 4];
    2bb4:	02659826 	xor	s3,s3,a1
	x = (x << 1);
    2bb8:	00139840 	sll	s3,s3,0x1
	if ((x >> 8) == 1)
    2bbc:	00139203 	sra	s2,s3,0x8
    2bc0:	1642fef9 	bne	s2,v0,27a8 <AddRoundKey_InversMixColumn+0x240>
    2bc4:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2bc8:	080009ea 	j	27a8 <AddRoundKey_InversMixColumn+0x240>
    2bcc:	3a73011b 	xori	s3,s3,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
    2bd0:	15e2fee3 	bne	t7,v0,2760 <AddRoundKey_InversMixColumn+0x1f8>
    2bd4:	3ab5011b 	xori	s5,s5,0x11b
	  x ^= 283;
    2bd8:	3974011b 	xori	s4,t3,0x11b
	x = (x << 1);
    2bdc:	0014a040 	sll	s4,s4,0x1
	if ((x >> 8) == 1)
    2be0:	00149203 	sra	s2,s4,0x8
    2be4:	1642fee3 	bne	s2,v0,2774 <AddRoundKey_InversMixColumn+0x20c>
    2be8:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2bec:	080009dd 	j	2774 <AddRoundKey_InversMixColumn+0x20c>
    2bf0:	3a94011b 	xori	s4,s4,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[i + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2bf4:	080009d1 	j	2744 <AddRoundKey_InversMixColumn+0x1dc>
    2bf8:	3ab5011b 	xori	s5,s5,0x11b
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2bfc:	080009cc 	j	2730 <AddRoundKey_InversMixColumn+0x1c8>
    2c00:	3995011b 	xori	s5,t4,0x11b
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2c04:	080009c3 	j	270c <AddRoundKey_InversMixColumn+0x1a4>
    2c08:	3a52011b 	xori	s2,s2,0x11b
	x = (statemt[(i + 3) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2c0c:	080009bf 	j	26fc <AddRoundKey_InversMixColumn+0x194>
    2c10:	3a52011b 	xori	s2,s2,0x11b
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2c14:	080009b4 	j	26d0 <AddRoundKey_InversMixColumn+0x168>
    2c18:	3a73011b 	xori	s3,s3,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2c1c:	080009b0 	j	26c0 <AddRoundKey_InversMixColumn+0x158>
    2c20:	3a73011b 	xori	s3,s3,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2c24:	080009a4 	j	2690 <AddRoundKey_InversMixColumn+0x128>
    2c28:	3a94011b 	xori	s4,s4,0x11b
	x = (statemt[(i + 1) % 4 + j * 4] << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2c2c:	0800099f 	j	267c <AddRoundKey_InversMixColumn+0x114>
    2c30:	3a94011b 	xori	s4,s4,0x11b
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[i + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2c34:	08000994 	j	2650 <AddRoundKey_InversMixColumn+0xe8>
    2c38:	3ab5011b 	xori	s5,s5,0x11b
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
    2c3c:	39b5011b 	xori	s5,t5,0x11b
	x ^= statemt[i + j * 4];
    2c40:	02a3a826 	xor	s5,s5,v1
	x = (x << 1);
    2c44:	0015a840 	sll	s5,s5,0x1
	if ((x >> 8) == 1)
    2c48:	00152a03 	sra	a1,s5,0x8
    2c4c:	14a2fe7b 	bne	a1,v0,263c <AddRoundKey_InversMixColumn+0xd4>
    2c50:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2c54:	0800098f 	j	263c <AddRoundKey_InversMixColumn+0xd4>
    2c58:	3ab5011b 	xori	s5,s5,0x11b

00002c5c <AddRoundKey>:
int
AddRoundKey (int statemt[32], int type, int n)
{
  int j, nb;

  switch (type)
    2c5c:	3c020002 	lui	v0,0x2
    2c60:	3443eec0 	ori	v1,v0,0xeec0
    2c64:	10a3001e 	beq	a1,v1,2ce0 <AddRoundKey+0x84>
    2c68:	24670001 	addiu	a3,v1,1
    2c6c:	00a7382a 	slt	a3,a1,a3
    2c70:	14e0000f 	bnez	a3,2cb0 <AddRoundKey+0x54>
    2c74:	2447f4c0 	addiu	a3,v0,-2880
    2c78:	3c020003 	lui	v0,0x3
    2c7c:	3442e880 	ori	v0,v0,0xe880
    2c80:	10a20015 	beq	a1,v0,2cd8 <AddRoundKey+0x7c>
    2c84:	24470001 	addiu	a3,v0,1
    2c88:	00a7382a 	slt	a3,a1,a3
    2c8c:	14e00033 	bnez	a3,2d5c <AddRoundKey+0x100>
    2c90:	24630040 	addiu	v1,v1,64
    2c94:	24430040 	addiu	v1,v0,64
    2c98:	10a30011 	beq	a1,v1,2ce0 <AddRoundKey+0x84>
    2c9c:	24420080 	addiu	v0,v0,128
    2ca0:	14a20030 	bne	a1,v0,2d64 <AddRoundKey+0x108>
    2ca4:	00000000 	sll	zero,zero,0x0
      break;
    case 128256:
    case 192256:
    case 256256:
      nb = 8;
      break;
    2ca8:	08000b39 	j	2ce4 <AddRoundKey+0x88>
    2cac:	24020008 	addiu	v0,zero,8
int
AddRoundKey (int statemt[32], int type, int n)
{
  int j, nb;

  switch (type)
    2cb0:	10a7000b 	beq	a1,a3,2ce0 <AddRoundKey+0x84>
    2cb4:	2447f4c1 	addiu	a3,v0,-2879
    2cb8:	00a7382a 	slt	a3,a1,a3
    2cbc:	14e0002e 	bnez	a3,2d78 <AddRoundKey+0x11c>
    2cc0:	00000000 	sll	zero,zero,0x0
    2cc4:	2442f500 	addiu	v0,v0,-2816
    2cc8:	10a2fff7 	beq	a1,v0,2ca8 <AddRoundKey+0x4c>
    2ccc:	2463ffc0 	addiu	v1,v1,-64
    2cd0:	14a30024 	bne	a1,v1,2d64 <AddRoundKey+0x108>
    2cd4:	00000000 	sll	zero,zero,0x0
    {
    case 128128:
    case 192128:
    case 256128:
      nb = 4;
    2cd8:	08000b39 	j	2ce4 <AddRoundKey+0x88>
    2cdc:	24020004 	addiu	v0,zero,4
      break;
    case 128192:
    case 192192:
    case 256192:
      nb = 6;
    2ce0:	24020006 	addiu	v0,zero,6
  return 0;
}

/* ******** AddRoundKey ********** */
int
AddRoundKey (int statemt[32], int type, int n)
    2ce4:	00460018 	mult	v0,a2
    2ce8:	3c030000 	lui	v1,0x0
    2cec:	24630000 	addiu	v1,v1,0
    2cf0:	00002821 	addu	a1,zero,zero
    2cf4:	00003012 	mflo	a2
    2cf8:	00063080 	sll	a2,a2,0x2
    2cfc:	00661821 	addu	v1,v1,a2
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    2d00:	8c660000 	lw	a2,0(v1)
    2d04:	8c880000 	lw	t0,0(a0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    2d08:	8c870004 	lw	a3,4(a0)
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    2d0c:	01063026 	xor	a2,t0,a2
    2d10:	ac860000 	sw	a2,0(a0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    2d14:	8c6601e0 	lw	a2,480(v1)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    2d18:	8c880008 	lw	t0,8(a0)
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    2d1c:	00e63026 	xor	a2,a3,a2
    2d20:	ac860004 	sw	a2,4(a0)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    2d24:	8c6603c0 	lw	a2,960(v1)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    2d28:	8c87000c 	lw	a3,12(a0)
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    2d2c:	01063026 	xor	a2,t0,a2
    2d30:	ac860008 	sw	a2,8(a0)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    2d34:	8c6605a0 	lw	a2,1440(v1)
    case 192256:
    case 256256:
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    2d38:	24a50001 	addiu	a1,a1,1
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    2d3c:	00e63826 	xor	a3,a3,a2
    case 192256:
    case 256256:
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    2d40:	00a2302a 	slt	a2,a1,v0
    {
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    2d44:	ac87000c 	sw	a3,12(a0)
    case 192256:
    case 256256:
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    2d48:	24630004 	addiu	v1,v1,4
    2d4c:	14c0ffec 	bnez	a2,2d00 <AddRoundKey+0xa4>
    2d50:	24840010 	addiu	a0,a0,16
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  return 0;
}
    2d54:	03e00008 	jr	ra
    2d58:	00001021 	addu	v0,zero,zero
int
AddRoundKey (int statemt[32], int type, int n)
{
  int j, nb;

  switch (type)
    2d5c:	10a3ffe1 	beq	a1,v1,2ce4 <AddRoundKey+0x88>
    2d60:	24020008 	addiu	v0,zero,8
    case 192256:
    case 256256:
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    2d64:	00001021 	addu	v0,zero,zero
    2d68:	1c40ffdf 	bgtz	v0,2ce8 <AddRoundKey+0x8c>
    2d6c:	00460018 	mult	v0,a2
    2d70:	08000b55 	j	2d54 <AddRoundKey+0xf8>
    2d74:	00000000 	sll	zero,zero,0x0
int
AddRoundKey (int statemt[32], int type, int n)
{
  int j, nb;

  switch (type)
    2d78:	2442f480 	addiu	v0,v0,-2944
    2d7c:	14a2fff9 	bne	a1,v0,2d64 <AddRoundKey+0x108>
    2d80:	24020004 	addiu	v0,zero,4
  return 0;
}

/* ******** AddRoundKey ********** */
int
AddRoundKey (int statemt[32], int type, int n)
    2d84:	08000b3a 	j	2ce8 <AddRoundKey+0x8c>
    2d88:	00460018 	mult	v0,a2

00002d8c <decrypt>:
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "decrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_dec_statemt[16] =
    2d8c:	3c020000 	lui	v0,0x0
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
int
decrypt (int statemt[32], int key[32], int type)
{
    2d90:	27bdff98 	addiu	sp,sp,-104
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "decrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_dec_statemt[16] =
    2d94:	24420878 	addiu	v0,v0,2168
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
int
decrypt (int statemt[32], int key[32], int type)
{
    2d98:	afb20058 	sw	s2,88(sp)
    2d9c:	afb10054 	sw	s1,84(sp)
    2da0:	afbf0064 	sw	ra,100(sp)
    2da4:	00808821 	addu	s1,a0,zero
    2da8:	afb40060 	sw	s4,96(sp)
    2dac:	afb3005c 	sw	s3,92(sp)
    2db0:	afb00050 	sw	s0,80(sp)
    2db4:	00c09021 	addu	s2,a2,zero
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "decrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_dec_statemt[16] =
    2db8:	27a30010 	addiu	v1,sp,16
    2dbc:	24440040 	addiu	a0,v0,64
    2dc0:	8c490000 	lw	t1,0(v0)
    2dc4:	8c480004 	lw	t0,4(v0)
    2dc8:	8c470008 	lw	a3,8(v0)
    2dcc:	8c46000c 	lw	a2,12(v0)
    2dd0:	24420010 	addiu	v0,v0,16
    2dd4:	ac690000 	sw	t1,0(v1)
    2dd8:	ac680004 	sw	t0,4(v1)
    2ddc:	ac670008 	sw	a3,8(v1)
    2de0:	ac66000c 	sw	a2,12(v1)
    2de4:	1444fff6 	bne	v0,a0,2dc0 <decrypt+0x34>
    2de8:	24630010 	addiu	v1,v1,16
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);
    2dec:	0c000000 	jal	0 <AddRoundKey.clone.2>
    2df0:	02402021 	addu	a0,s2,zero

  switch (type)
    2df4:	3c030002 	lui	v1,0x2
    2df8:	3462eec0 	ori	v0,v1,0xeec0
    2dfc:	12420022 	beq	s2,v0,2e88 <decrypt+0xfc>
    2e00:	24440001 	addiu	a0,v0,1
    2e04:	0244202a 	slt	a0,s2,a0
    2e08:	14800010 	bnez	a0,2e4c <decrypt+0xc0>
    2e0c:	2464f4c0 	addiu	a0,v1,-2880
    2e10:	3c030003 	lui	v1,0x3
    2e14:	3463e880 	ori	v1,v1,0xe880
    2e18:	124300d1 	beq	s2,v1,3160 <decrypt+0x3d4>
    2e1c:	24640001 	addiu	a0,v1,1
    2e20:	0244202a 	slt	a0,s2,a0
    2e24:	148000d4 	bnez	a0,3178 <decrypt+0x3ec>
    2e28:	24420040 	addiu	v0,v0,64
    2e2c:	24620040 	addiu	v0,v1,64
    2e30:	124200e1 	beq	s2,v0,31b8 <decrypt+0x42c>
    2e34:	24630080 	addiu	v1,v1,128
    2e38:	124300d2 	beq	s2,v1,3184 <decrypt+0x3f8>
    2e3c:	2402000e 	addiu	v0,zero,14
    2e40:	8f860000 	lw	a2,0(gp)
      round = 14;
      nb = 8;
      break;
    }

  AddRoundKey (statemt, type, round);
    2e44:	08000ba8 	j	2ea0 <decrypt+0x114>
    2e48:	02402821 	addu	a1,s2,zero
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);

  switch (type)
    2e4c:	1244000e 	beq	s2,a0,2e88 <decrypt+0xfc>
    2e50:	2464f4c1 	addiu	a0,v1,-2879
    2e54:	0244202a 	slt	a0,s2,a0
    2e58:	148000cf 	bnez	a0,3198 <decrypt+0x40c>
    2e5c:	00000000 	sll	zero,zero,0x0
    2e60:	2463f500 	addiu	v1,v1,-2816
    2e64:	124300c6 	beq	s2,v1,3180 <decrypt+0x3f4>
    2e68:	2442ffc0 	addiu	v0,v0,-64
    2e6c:	1642fff4 	bne	s2,v0,2e40 <decrypt+0xb4>
    2e70:	2402000c 	addiu	v0,zero,12
    case 192192:
      round = 12;
      nb = 6;
      break;
    case 192128:
      round = 12;
    2e74:	af820000 	sw	v0,0(gp)
      nb = 4;
    2e78:	24020004 	addiu	v0,zero,4
    2e7c:	af820000 	sw	v0,0(gp)
      break;
    2e80:	08000ba7 	j	2e9c <decrypt+0x110>
    2e84:	2406000c 	addiu	a2,zero,12
      round = 10;
      nb = 4;
      break;
    case 128192:
    case 192192:
      round = 12;
    2e88:	2402000c 	addiu	v0,zero,12
    2e8c:	af820000 	sw	v0,0(gp)
      nb = 6;
    2e90:	24020006 	addiu	v0,zero,6
    2e94:	af820000 	sw	v0,0(gp)
      break;
    2e98:	2406000c 	addiu	a2,zero,12
      round = 14;
      nb = 8;
      break;
    }

  AddRoundKey (statemt, type, round);
    2e9c:	02402821 	addu	a1,s2,zero
    2ea0:	0c000000 	jal	0 <AddRoundKey.clone.2>
    2ea4:	02202021 	addu	a0,s1,zero

  InversShiftRow_ByteSub (statemt, nb);
    2ea8:	8f850000 	lw	a1,0(gp)
    2eac:	0c000000 	jal	0 <AddRoundKey.clone.2>
    2eb0:	02202021 	addu	a0,s1,zero

  for (i = round - 1; i >= 1; --i)
    2eb4:	8f900000 	lw	s0,0(gp)
    2eb8:	00000000 	sll	zero,zero,0x0
    2ebc:	2610ffff 	addiu	s0,s0,-1
    2ec0:	1a00000b 	blez	s0,2ef0 <decrypt+0x164>
    2ec4:	02402821 	addu	a1,s2,zero
    {
      AddRoundKey_InversMixColumn (statemt, nb, i);
    2ec8:	8f850000 	lw	a1,0(gp)
    2ecc:	02003021 	addu	a2,s0,zero
    2ed0:	0c000000 	jal	0 <AddRoundKey.clone.2>
    2ed4:	02202021 	addu	a0,s1,zero
      InversShiftRow_ByteSub (statemt, nb);
    2ed8:	8f850000 	lw	a1,0(gp)

  AddRoundKey (statemt, type, round);

  InversShiftRow_ByteSub (statemt, nb);

  for (i = round - 1; i >= 1; --i)
    2edc:	2610ffff 	addiu	s0,s0,-1
    {
      AddRoundKey_InversMixColumn (statemt, nb, i);
      InversShiftRow_ByteSub (statemt, nb);
    2ee0:	0c000000 	jal	0 <AddRoundKey.clone.2>
    2ee4:	02202021 	addu	a0,s1,zero

  AddRoundKey (statemt, type, round);

  InversShiftRow_ByteSub (statemt, nb);

  for (i = round - 1; i >= 1; --i)
    2ee8:	1e00fff7 	bgtz	s0,2ec8 <decrypt+0x13c>
    2eec:	02402821 	addu	a1,s2,zero
    {
      AddRoundKey_InversMixColumn (statemt, nb, i);
      InversShiftRow_ByteSub (statemt, nb);
    }

  AddRoundKey (statemt, type, 0);
    2ef0:	02202021 	addu	a0,s1,zero
    2ef4:	0c000000 	jal	0 <AddRoundKey.clone.2>
    2ef8:	00003021 	addu	a2,zero,zero

  printf ("\ndecrypto message\t");
    2efc:	3c040000 	lui	a0,0x0
    2f00:	0c000000 	jal	0 <AddRoundKey.clone.2>
    2f04:	24840000 	addiu	a0,a0,0
  for (i = 0; i < ((type % 1000) / 8); ++i)
    2f08:	240203e8 	addiu	v0,zero,1000
    2f0c:	14400002 	bnez	v0,2f18 <decrypt+0x18c>
    2f10:	0242001a 	div	zero,s2,v0
    2f14:	0007000d 	break	0x7
    2f18:	00009010 	mfhi	s2
    2f1c:	0640008e 	bltz	s2,3158 <decrypt+0x3cc>
    2f20:	00000000 	sll	zero,zero,0x0
    2f24:	001290c3 	sra	s2,s2,0x3
    2f28:	1a400017 	blez	s2,2f88 <decrypt+0x1fc>
    2f2c:	3c140000 	lui	s4,0x0
    2f30:	02208021 	addu	s0,s1,zero
    2f34:	00009821 	addu	s3,zero,zero
    {
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    2f38:	08000bd5 	j	2f54 <decrypt+0x1c8>
    2f3c:	26940000 	addiu	s4,s4,0
    2f40:	0c000000 	jal	0 <AddRoundKey.clone.2>
    2f44:	02802021 	addu	a0,s4,zero
    }

  AddRoundKey (statemt, type, 0);

  printf ("\ndecrypto message\t");
  for (i = 0; i < ((type % 1000) / 8); ++i)
    2f48:	0272102a 	slt	v0,s3,s2
    2f4c:	1040000e 	beqz	v0,2f88 <decrypt+0x1fc>
    2f50:	26100004 	addiu	s0,s0,4
    {
      if (statemt[i] < 16)
    2f54:	8e050000 	lw	a1,0(s0)
    2f58:	00000000 	sll	zero,zero,0x0
    2f5c:	28a20010 	slti	v0,a1,16
    2f60:	1040fff7 	beqz	v0,2f40 <decrypt+0x1b4>
    2f64:	26730001 	addiu	s3,s3,1
	printf ("0");
    2f68:	0c000000 	jal	0 <AddRoundKey.clone.2>
    2f6c:	24040030 	addiu	a0,zero,48
    2f70:	8e050000 	lw	a1,0(s0)
      printf ("%x", statemt[i]);
    2f74:	0c000000 	jal	0 <AddRoundKey.clone.2>
    2f78:	02802021 	addu	a0,s4,zero
    }

  AddRoundKey (statemt, type, 0);

  printf ("\ndecrypto message\t");
  for (i = 0; i < ((type % 1000) / 8); ++i)
    2f7c:	0272102a 	slt	v0,s3,s2
    2f80:	1440fff4 	bnez	v0,2f54 <decrypt+0x1c8>
    2f84:	26100004 	addiu	s0,s0,4
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_dec_statemt[i]);
    2f88:	8e240000 	lw	a0,0(s1)
    2f8c:	8fa20010 	lw	v0,16(sp)
    2f90:	00000000 	sll	zero,zero,0x0
    2f94:	00822026 	xor	a0,a0,v0
    2f98:	8f820000 	lw	v0,0(gp)
    2f9c:	0004202b 	sltu	a0,zero,a0
    2fa0:	00822021 	addu	a0,a0,v0
    2fa4:	af840000 	sw	a0,0(gp)
    2fa8:	8e230004 	lw	v1,4(s1)
    2fac:	8fa20014 	lw	v0,20(sp)
    2fb0:	00000000 	sll	zero,zero,0x0
    2fb4:	00621826 	xor	v1,v1,v0
    2fb8:	0003182b 	sltu	v1,zero,v1
    2fbc:	00831821 	addu	v1,a0,v1
    2fc0:	af830000 	sw	v1,0(gp)
    2fc4:	8e240008 	lw	a0,8(s1)
    2fc8:	8fa20018 	lw	v0,24(sp)
    2fcc:	00000000 	sll	zero,zero,0x0
    2fd0:	00821026 	xor	v0,a0,v0
    2fd4:	0002102b 	sltu	v0,zero,v0
    2fd8:	00621021 	addu	v0,v1,v0
    2fdc:	af820000 	sw	v0,0(gp)
    2fe0:	8e24000c 	lw	a0,12(s1)
    2fe4:	8fa3001c 	lw	v1,28(sp)
    2fe8:	00000000 	sll	zero,zero,0x0
    2fec:	00832026 	xor	a0,a0,v1
    2ff0:	0004202b 	sltu	a0,zero,a0
    2ff4:	00442021 	addu	a0,v0,a0
    2ff8:	af840000 	sw	a0,0(gp)
    2ffc:	8e230010 	lw	v1,16(s1)
    3000:	8fa20020 	lw	v0,32(sp)
    3004:	00000000 	sll	zero,zero,0x0
    3008:	00621826 	xor	v1,v1,v0
    300c:	0003182b 	sltu	v1,zero,v1
    3010:	00831821 	addu	v1,a0,v1
    3014:	af830000 	sw	v1,0(gp)
    3018:	8e240014 	lw	a0,20(s1)
    301c:	8fa20024 	lw	v0,36(sp)
    3020:	00000000 	sll	zero,zero,0x0
    3024:	00821026 	xor	v0,a0,v0
    3028:	0002102b 	sltu	v0,zero,v0
    302c:	00621021 	addu	v0,v1,v0
    3030:	af820000 	sw	v0,0(gp)
    3034:	8e240018 	lw	a0,24(s1)
    3038:	8fa30028 	lw	v1,40(sp)
    303c:	00000000 	sll	zero,zero,0x0
    3040:	00832026 	xor	a0,a0,v1
    3044:	0004202b 	sltu	a0,zero,a0
    3048:	00442021 	addu	a0,v0,a0
    304c:	af840000 	sw	a0,0(gp)
    3050:	8e23001c 	lw	v1,28(s1)
    3054:	8fa2002c 	lw	v0,44(sp)
    3058:	00000000 	sll	zero,zero,0x0
    305c:	00621826 	xor	v1,v1,v0
    3060:	0003182b 	sltu	v1,zero,v1
    3064:	00831821 	addu	v1,a0,v1
    3068:	af830000 	sw	v1,0(gp)
    306c:	8e240020 	lw	a0,32(s1)
    3070:	8fa20030 	lw	v0,48(sp)
    3074:	00000000 	sll	zero,zero,0x0
    3078:	00821026 	xor	v0,a0,v0
    307c:	0002102b 	sltu	v0,zero,v0
    3080:	00621021 	addu	v0,v1,v0
    3084:	af820000 	sw	v0,0(gp)
    3088:	8e250024 	lw	a1,36(s1)
    308c:	8fa30034 	lw	v1,52(sp)
    3090:	00000000 	sll	zero,zero,0x0
    3094:	00a32826 	xor	a1,a1,v1
    3098:	0005282b 	sltu	a1,zero,a1
    309c:	00452821 	addu	a1,v0,a1
    30a0:	af850000 	sw	a1,0(gp)
    30a4:	8fa30038 	lw	v1,56(sp)
    30a8:	8e240028 	lw	a0,40(s1)

  return 0;
}
    30ac:	00001021 	addu	v0,zero,zero
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_dec_statemt[i]);
    30b0:	00832026 	xor	a0,a0,v1
    30b4:	0004202b 	sltu	a0,zero,a0
    30b8:	00a42021 	addu	a0,a1,a0
    30bc:	af840000 	sw	a0,0(gp)
    30c0:	8e25002c 	lw	a1,44(s1)
    30c4:	8fa3003c 	lw	v1,60(sp)

  return 0;
}
    30c8:	8fbf0064 	lw	ra,100(sp)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_dec_statemt[i]);
    30cc:	00a31826 	xor	v1,a1,v1
    30d0:	0003182b 	sltu	v1,zero,v1
    30d4:	00831821 	addu	v1,a0,v1
    30d8:	af830000 	sw	v1,0(gp)
    30dc:	8e250030 	lw	a1,48(s1)
    30e0:	8fa40040 	lw	a0,64(sp)

  return 0;
}
    30e4:	8fb40060 	lw	s4,96(sp)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_dec_statemt[i]);
    30e8:	00a42826 	xor	a1,a1,a0
    30ec:	0005282b 	sltu	a1,zero,a1
    30f0:	00652821 	addu	a1,v1,a1
    30f4:	af850000 	sw	a1,0(gp)
    30f8:	8e240034 	lw	a0,52(s1)
    30fc:	8fa30044 	lw	v1,68(sp)

  return 0;
}
    3100:	8fb3005c 	lw	s3,92(sp)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_dec_statemt[i]);
    3104:	00832026 	xor	a0,a0,v1
    3108:	0004202b 	sltu	a0,zero,a0
    310c:	00a42021 	addu	a0,a1,a0
    3110:	af840000 	sw	a0,0(gp)
    3114:	8e250038 	lw	a1,56(s1)
    3118:	8fa30048 	lw	v1,72(sp)

  return 0;
}
    311c:	8fb20058 	lw	s2,88(sp)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_dec_statemt[i]);
    3120:	00a31826 	xor	v1,a1,v1
    3124:	0003182b 	sltu	v1,zero,v1
    3128:	00831821 	addu	v1,a0,v1
    312c:	af830000 	sw	v1,0(gp)
    3130:	8e25003c 	lw	a1,60(s1)
    3134:	8fa4004c 	lw	a0,76(sp)

  return 0;
}
    3138:	8fb10054 	lw	s1,84(sp)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_dec_statemt[i]);
    313c:	00a42026 	xor	a0,a1,a0
    3140:	0004202b 	sltu	a0,zero,a0
    3144:	00831821 	addu	v1,a0,v1

  return 0;
}
    3148:	8fb00050 	lw	s0,80(sp)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_dec_statemt[i]);
    314c:	af830000 	sw	v1,0(gp)

  return 0;
}
    3150:	03e00008 	jr	ra
    3154:	27bd0068 	addiu	sp,sp,104
    }

  AddRoundKey (statemt, type, 0);

  printf ("\ndecrypto message\t");
  for (i = 0; i < ((type % 1000) / 8); ++i)
    3158:	08000bc9 	j	2f24 <decrypt+0x198>
    315c:	26520007 	addiu	s2,s2,7
    case 192256:
      round = 14;
      nb = 8;
      break;
    case 256128:
      round = 14;
    3160:	2402000e 	addiu	v0,zero,14
    3164:	af820000 	sw	v0,0(gp)
      nb = 4;
    3168:	24020004 	addiu	v0,zero,4
    316c:	af820000 	sw	v0,0(gp)
      break;
    3170:	08000ba7 	j	2e9c <decrypt+0x110>
    3174:	2406000e 	addiu	a2,zero,14
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);

  switch (type)
    3178:	1642ff31 	bne	s2,v0,2e40 <decrypt+0xb4>
    317c:	00000000 	sll	zero,zero,0x0
    case 256192:
      round = 14;
      nb = 6;
      break;
    case 256256:
      round = 14;
    3180:	2402000e 	addiu	v0,zero,14
    3184:	af820000 	sw	v0,0(gp)
      nb = 8;
    3188:	24020008 	addiu	v0,zero,8
    318c:	af820000 	sw	v0,0(gp)
      break;
    3190:	08000ba7 	j	2e9c <decrypt+0x110>
    3194:	2406000e 	addiu	a2,zero,14
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);

  switch (type)
    3198:	2463f480 	addiu	v1,v1,-2944
    319c:	1643ff28 	bne	s2,v1,2e40 <decrypt+0xb4>
    31a0:	2402000a 	addiu	v0,zero,10
    {
    case 128128:
      round = 10;
    31a4:	af820000 	sw	v0,0(gp)
      nb = 4;
    31a8:	24020004 	addiu	v0,zero,4
    31ac:	af820000 	sw	v0,0(gp)
      break;
    31b0:	08000ba7 	j	2e9c <decrypt+0x110>
    31b4:	2406000a 	addiu	a2,zero,10
    case 256128:
      round = 14;
      nb = 4;
      break;
    case 256192:
      round = 14;
    31b8:	2402000e 	addiu	v0,zero,14
    31bc:	af820000 	sw	v0,0(gp)
      nb = 6;
    31c0:	24020006 	addiu	v0,zero,6
    31c4:	af820000 	sw	v0,0(gp)
      break;
    31c8:	08000ba7 	j	2e9c <decrypt+0x110>
    31cc:	2406000e 	addiu	a2,zero,14

000031d0 <encrypt>:
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "encrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_enc_statemt[16] =
    31d0:	3c020000 	lui	v0,0x0
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
{
    31d4:	27bdff98 	addiu	sp,sp,-104
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "encrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_enc_statemt[16] =
    31d8:	244208b8 	addiu	v0,v0,2232
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
{
    31dc:	afb2005c 	sw	s2,92(sp)
    31e0:	afb10058 	sw	s1,88(sp)
    31e4:	afbf0064 	sw	ra,100(sp)
    31e8:	00808821 	addu	s1,a0,zero
    31ec:	afb30060 	sw	s3,96(sp)
    31f0:	afb00054 	sw	s0,84(sp)
    31f4:	00c09021 	addu	s2,a2,zero
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "encrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_enc_statemt[16] =
    31f8:	27a30010 	addiu	v1,sp,16
    31fc:	24440040 	addiu	a0,v0,64
    3200:	8c490000 	lw	t1,0(v0)
    3204:	8c480004 	lw	t0,4(v0)
    3208:	8c470008 	lw	a3,8(v0)
    320c:	8c46000c 	lw	a2,12(v0)
    3210:	24420010 	addiu	v0,v0,16
    3214:	ac690000 	sw	t1,0(v1)
    3218:	ac680004 	sw	t0,4(v1)
    321c:	ac670008 	sw	a3,8(v1)
    3220:	ac66000c 	sw	a2,12(v1)
    3224:	1444fff6 	bne	v0,a0,3200 <encrypt+0x30>
    3228:	24630010 	addiu	v1,v1,16
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
    322c:	0c000000 	jal	0 <AddRoundKey.clone.2>
    3230:	02402021 	addu	a0,s2,zero
  switch (type)
    3234:	3c030002 	lui	v1,0x2
    3238:	3462eec0 	ori	v0,v1,0xeec0
    323c:	12420021 	beq	s2,v0,32c4 <encrypt+0xf4>
    3240:	24440001 	addiu	a0,v0,1
    3244:	0244202a 	slt	a0,s2,a0
    3248:	1480000f 	bnez	a0,3288 <encrypt+0xb8>
    324c:	2464f4c0 	addiu	a0,v1,-2880
    3250:	3c030003 	lui	v1,0x3
    3254:	3463e880 	ori	v1,v1,0xe880
    3258:	124300d1 	beq	s2,v1,35a0 <encrypt+0x3d0>
    325c:	24640001 	addiu	a0,v1,1
    3260:	0244202a 	slt	a0,s2,a0
    3264:	148000d2 	bnez	a0,35b0 <encrypt+0x3e0>
    3268:	24420040 	addiu	v0,v0,64
    326c:	24620040 	addiu	v0,v1,64
    3270:	124200dd 	beq	s2,v0,35e8 <encrypt+0x418>
    3274:	24630080 	addiu	v1,v1,128
    3278:	16430017 	bne	s2,v1,32d8 <encrypt+0x108>
    327c:	02202021 	addu	a0,s1,zero
      nb = 6;
      break;
    case 128256:
    case 192256:
    case 256256:
      round = 4;
    3280:	08000d6f 	j	35bc <encrypt+0x3ec>
    3284:	24020004 	addiu	v0,zero,4
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
  switch (type)
    3288:	1244000e 	beq	s2,a0,32c4 <encrypt+0xf4>
    328c:	2464f4c1 	addiu	a0,v1,-2879
    3290:	0244202a 	slt	a0,s2,a0
    3294:	148000cd 	bnez	a0,35cc <encrypt+0x3fc>
    3298:	00000000 	sll	zero,zero,0x0
    329c:	2463f500 	addiu	v1,v1,-2816
    32a0:	124300c5 	beq	s2,v1,35b8 <encrypt+0x3e8>
    32a4:	2442ffc0 	addiu	v0,v0,-64
    32a8:	1642000b 	bne	s2,v0,32d8 <encrypt+0x108>
    32ac:	02202021 	addu	a0,s1,zero
    case 128128:
      round = 0;
      nb = 4;
      break;
    case 192128:
      round = 2;
    32b0:	24020002 	addiu	v0,zero,2
    32b4:	af820000 	sw	v0,0(gp)
      nb = 4;
    32b8:	24020004 	addiu	v0,zero,4
      break;
    32bc:	08000cb6 	j	32d8 <encrypt+0x108>
    32c0:	af820000 	sw	v0,0(gp)
      round = 4;
      nb = 4;
      break;
    case 128192:
    case 192192:
      round = 2;
    32c4:	24020002 	addiu	v0,zero,2
    32c8:	af820000 	sw	v0,0(gp)
      nb = 6;
    32cc:	24020006 	addiu	v0,zero,6
    32d0:	af820000 	sw	v0,0(gp)
    case 256256:
      round = 4;
      nb = 8;
      break;
    }
  AddRoundKey (statemt, type, 0);
    32d4:	02202021 	addu	a0,s1,zero
    32d8:	02402821 	addu	a1,s2,zero
    32dc:	0c000000 	jal	0 <AddRoundKey.clone.2>
    32e0:	00003021 	addu	a2,zero,zero
  for (i = 1; i <= round + 9; ++i)
    32e4:	8f820000 	lw	v0,0(gp)
    32e8:	00000000 	sll	zero,zero,0x0
    32ec:	2842fff8 	slti	v0,v0,-8
    32f0:	1440000e 	bnez	v0,332c <encrypt+0x15c>
    32f4:	24100001 	addiu	s0,zero,1
    {
      ByteSub_ShiftRow (statemt, nb);
    32f8:	8f850000 	lw	a1,0(gp)
    32fc:	0c000000 	jal	0 <AddRoundKey.clone.2>
    3300:	02202021 	addu	a0,s1,zero
      MixColumn_AddRoundKey (statemt, nb, i);
    3304:	8f850000 	lw	a1,0(gp)
    3308:	02003021 	addu	a2,s0,zero
    330c:	0c000000 	jal	0 <AddRoundKey.clone.2>
    3310:	02202021 	addu	a0,s1,zero
      round = 4;
      nb = 8;
      break;
    }
  AddRoundKey (statemt, type, 0);
  for (i = 1; i <= round + 9; ++i)
    3314:	8f820000 	lw	v0,0(gp)
    3318:	26100001 	addiu	s0,s0,1
    331c:	24420009 	addiu	v0,v0,9
    3320:	0050102a 	slt	v0,v0,s0
    3324:	1040fff4 	beqz	v0,32f8 <encrypt+0x128>
    3328:	00000000 	sll	zero,zero,0x0
    {
      ByteSub_ShiftRow (statemt, nb);
      MixColumn_AddRoundKey (statemt, nb, i);
    }
  ByteSub_ShiftRow (statemt, nb);
    332c:	8f850000 	lw	a1,0(gp)
    3330:	0c000000 	jal	0 <AddRoundKey.clone.2>
    3334:	02202021 	addu	a0,s1,zero
  AddRoundKey (statemt, type, i);
    3338:	02202021 	addu	a0,s1,zero
    333c:	02402821 	addu	a1,s2,zero
    3340:	0c000000 	jal	0 <AddRoundKey.clone.2>
    3344:	02003021 	addu	a2,s0,zero

  printf ("encrypted message \t");
    3348:	3c040000 	lui	a0,0x0
    334c:	0c000000 	jal	0 <AddRoundKey.clone.2>
    3350:	24840000 	addiu	a0,a0,0
  for (i = 0; i < nb * 4; ++i)
    3354:	8f820000 	lw	v0,0(gp)
    3358:	00000000 	sll	zero,zero,0x0
    335c:	1840001d 	blez	v0,33d4 <encrypt+0x204>
    3360:	3c130000 	lui	s3,0x0
    3364:	02208021 	addu	s0,s1,zero
    3368:	00009021 	addu	s2,zero,zero
    {
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    336c:	08000ce5 	j	3394 <encrypt+0x1c4>
    3370:	26730000 	addiu	s3,s3,0
    3374:	0c000000 	jal	0 <AddRoundKey.clone.2>
    3378:	02602021 	addu	a0,s3,zero
    }
  ByteSub_ShiftRow (statemt, nb);
  AddRoundKey (statemt, type, i);

  printf ("encrypted message \t");
  for (i = 0; i < nb * 4; ++i)
    337c:	8f820000 	lw	v0,0(gp)
    3380:	00000000 	sll	zero,zero,0x0
    3384:	00021080 	sll	v0,v0,0x2
    3388:	0242102a 	slt	v0,s2,v0
    338c:	10400011 	beqz	v0,33d4 <encrypt+0x204>
    3390:	26100004 	addiu	s0,s0,4
    {
      if (statemt[i] < 16)
    3394:	8e050000 	lw	a1,0(s0)
    3398:	00000000 	sll	zero,zero,0x0
    339c:	28a20010 	slti	v0,a1,16
    33a0:	1040fff4 	beqz	v0,3374 <encrypt+0x1a4>
    33a4:	26520001 	addiu	s2,s2,1
	printf ("0");
    33a8:	0c000000 	jal	0 <AddRoundKey.clone.2>
    33ac:	24040030 	addiu	a0,zero,48
    33b0:	8e050000 	lw	a1,0(s0)
      printf ("%x", statemt[i]);
    33b4:	0c000000 	jal	0 <AddRoundKey.clone.2>
    33b8:	02602021 	addu	a0,s3,zero
    }
  ByteSub_ShiftRow (statemt, nb);
  AddRoundKey (statemt, type, i);

  printf ("encrypted message \t");
  for (i = 0; i < nb * 4; ++i)
    33bc:	8f820000 	lw	v0,0(gp)
    33c0:	00000000 	sll	zero,zero,0x0
    33c4:	00021080 	sll	v0,v0,0x2
    33c8:	0242102a 	slt	v0,s2,v0
    33cc:	1440fff1 	bnez	v0,3394 <encrypt+0x1c4>
    33d0:	26100004 	addiu	s0,s0,4
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_enc_statemt[i]);
    33d4:	8e240000 	lw	a0,0(s1)
    33d8:	8fa20010 	lw	v0,16(sp)
    33dc:	00000000 	sll	zero,zero,0x0
    33e0:	00822026 	xor	a0,a0,v0
    33e4:	8f820000 	lw	v0,0(gp)
    33e8:	0004202b 	sltu	a0,zero,a0
    33ec:	00822021 	addu	a0,a0,v0
    33f0:	af840000 	sw	a0,0(gp)
    33f4:	8e230004 	lw	v1,4(s1)
    33f8:	8fa20014 	lw	v0,20(sp)
    33fc:	00000000 	sll	zero,zero,0x0
    3400:	00621826 	xor	v1,v1,v0
    3404:	0003182b 	sltu	v1,zero,v1
    3408:	00831821 	addu	v1,a0,v1
    340c:	af830000 	sw	v1,0(gp)
    3410:	8e240008 	lw	a0,8(s1)
    3414:	8fa20018 	lw	v0,24(sp)
    3418:	00000000 	sll	zero,zero,0x0
    341c:	00821026 	xor	v0,a0,v0
    3420:	0002102b 	sltu	v0,zero,v0
    3424:	00621021 	addu	v0,v1,v0
    3428:	af820000 	sw	v0,0(gp)
    342c:	8e24000c 	lw	a0,12(s1)
    3430:	8fa3001c 	lw	v1,28(sp)
    3434:	00000000 	sll	zero,zero,0x0
    3438:	00832026 	xor	a0,a0,v1
    343c:	0004202b 	sltu	a0,zero,a0
    3440:	00442021 	addu	a0,v0,a0
    3444:	af840000 	sw	a0,0(gp)
    3448:	8e230010 	lw	v1,16(s1)
    344c:	8fa20020 	lw	v0,32(sp)
    3450:	00000000 	sll	zero,zero,0x0
    3454:	00621826 	xor	v1,v1,v0
    3458:	0003182b 	sltu	v1,zero,v1
    345c:	00831821 	addu	v1,a0,v1
    3460:	af830000 	sw	v1,0(gp)
    3464:	8e240014 	lw	a0,20(s1)
    3468:	8fa20024 	lw	v0,36(sp)
    346c:	00000000 	sll	zero,zero,0x0
    3470:	00821026 	xor	v0,a0,v0
    3474:	0002102b 	sltu	v0,zero,v0
    3478:	00621021 	addu	v0,v1,v0
    347c:	af820000 	sw	v0,0(gp)
    3480:	8e240018 	lw	a0,24(s1)
    3484:	8fa30028 	lw	v1,40(sp)
    3488:	00000000 	sll	zero,zero,0x0
    348c:	00832026 	xor	a0,a0,v1
    3490:	0004202b 	sltu	a0,zero,a0
    3494:	00442021 	addu	a0,v0,a0
    3498:	af840000 	sw	a0,0(gp)
    349c:	8e23001c 	lw	v1,28(s1)
    34a0:	8fa2002c 	lw	v0,44(sp)
    34a4:	00000000 	sll	zero,zero,0x0
    34a8:	00621826 	xor	v1,v1,v0
    34ac:	0003182b 	sltu	v1,zero,v1
    34b0:	00831821 	addu	v1,a0,v1
    34b4:	af830000 	sw	v1,0(gp)
    34b8:	8e240020 	lw	a0,32(s1)
    34bc:	8fa20030 	lw	v0,48(sp)
    34c0:	00000000 	sll	zero,zero,0x0
    34c4:	00821026 	xor	v0,a0,v0
    34c8:	0002102b 	sltu	v0,zero,v0
    34cc:	00621021 	addu	v0,v1,v0
    34d0:	af820000 	sw	v0,0(gp)
    34d4:	8e250024 	lw	a1,36(s1)
    34d8:	8fa30034 	lw	v1,52(sp)
    34dc:	00000000 	sll	zero,zero,0x0
    34e0:	00a32826 	xor	a1,a1,v1
    34e4:	0005282b 	sltu	a1,zero,a1
    34e8:	00452821 	addu	a1,v0,a1
    34ec:	af850000 	sw	a1,0(gp)
    34f0:	8fa30038 	lw	v1,56(sp)
    34f4:	8e240028 	lw	a0,40(s1)

  return 0;
}
    34f8:	00001021 	addu	v0,zero,zero
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_enc_statemt[i]);
    34fc:	00832026 	xor	a0,a0,v1
    3500:	0004202b 	sltu	a0,zero,a0
    3504:	00a42021 	addu	a0,a1,a0
    3508:	af840000 	sw	a0,0(gp)
    350c:	8e25002c 	lw	a1,44(s1)
    3510:	8fa3003c 	lw	v1,60(sp)

  return 0;
}
    3514:	8fbf0064 	lw	ra,100(sp)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_enc_statemt[i]);
    3518:	00a31826 	xor	v1,a1,v1
    351c:	0003182b 	sltu	v1,zero,v1
    3520:	00831821 	addu	v1,a0,v1
    3524:	af830000 	sw	v1,0(gp)
    3528:	8e250030 	lw	a1,48(s1)
    352c:	8fa40040 	lw	a0,64(sp)

  return 0;
}
    3530:	8fb30060 	lw	s3,96(sp)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_enc_statemt[i]);
    3534:	00a42826 	xor	a1,a1,a0
    3538:	0005282b 	sltu	a1,zero,a1
    353c:	00652821 	addu	a1,v1,a1
    3540:	af850000 	sw	a1,0(gp)
    3544:	8e240034 	lw	a0,52(s1)
    3548:	8fa30044 	lw	v1,68(sp)

  return 0;
}
    354c:	8fb2005c 	lw	s2,92(sp)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_enc_statemt[i]);
    3550:	00832026 	xor	a0,a0,v1
    3554:	0004202b 	sltu	a0,zero,a0
    3558:	00a42021 	addu	a0,a1,a0
    355c:	af840000 	sw	a0,0(gp)
    3560:	8e250038 	lw	a1,56(s1)
    3564:	8fa30048 	lw	v1,72(sp)

  return 0;
}
    3568:	8fb00054 	lw	s0,84(sp)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_enc_statemt[i]);
    356c:	00a31826 	xor	v1,a1,v1
    3570:	0003182b 	sltu	v1,zero,v1
    3574:	00831821 	addu	v1,a0,v1
    3578:	af830000 	sw	v1,0(gp)
    357c:	8e25003c 	lw	a1,60(s1)
    3580:	8fa4004c 	lw	a0,76(sp)

  return 0;
}
    3584:	8fb10058 	lw	s1,88(sp)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_enc_statemt[i]);
    3588:	00a42026 	xor	a0,a1,a0
    358c:	0004202b 	sltu	a0,zero,a0
    3590:	00831821 	addu	v1,a0,v1
    3594:	af830000 	sw	v1,0(gp)

  return 0;
}
    3598:	03e00008 	jr	ra
    359c:	27bd0068 	addiu	sp,sp,104
    case 192128:
      round = 2;
      nb = 4;
      break;
    case 256128:
      round = 4;
    35a0:	24020004 	addiu	v0,zero,4
    35a4:	af820000 	sw	v0,0(gp)
      nb = 4;
      break;
    35a8:	08000cb5 	j	32d4 <encrypt+0x104>
    35ac:	af820000 	sw	v0,0(gp)
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
  switch (type)
    35b0:	1642ff49 	bne	s2,v0,32d8 <encrypt+0x108>
    35b4:	02202021 	addu	a0,s1,zero
      nb = 6;
      break;
    case 128256:
    case 192256:
    case 256256:
      round = 4;
    35b8:	24020004 	addiu	v0,zero,4
    35bc:	af820000 	sw	v0,0(gp)
      nb = 8;
    35c0:	24020008 	addiu	v0,zero,8
      break;
    35c4:	08000cb5 	j	32d4 <encrypt+0x104>
    35c8:	af820000 	sw	v0,0(gp)
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
  switch (type)
    35cc:	2463f480 	addiu	v1,v1,-2944
    35d0:	1643ff41 	bne	s2,v1,32d8 <encrypt+0x108>
    35d4:	02202021 	addu	a0,s1,zero
    {
    case 128128:
      round = 0;
      nb = 4;
    35d8:	24020004 	addiu	v0,zero,4

  KeySchedule (type, key);
  switch (type)
    {
    case 128128:
      round = 0;
    35dc:	af800000 	sw	zero,0(gp)
      nb = 4;
      break;
    35e0:	08000cb6 	j	32d8 <encrypt+0x108>
    35e4:	af820000 	sw	v0,0(gp)
    case 192192:
      round = 2;
      nb = 6;
      break;
    case 256192:
      round = 4;
    35e8:	24020004 	addiu	v0,zero,4
    35ec:	af820000 	sw	v0,0(gp)
      nb = 6;
    35f0:	24020006 	addiu	v0,zero,6
      break;
    35f4:	08000cb5 	j	32d4 <encrypt+0x104>
    35f8:	af820000 	sw	v0,0(gp)

000035fc <aes_main>:
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
    35fc:	3c080000 	lui	t0,0x0
  statemt[1] = 67;
    3600:	25040000 	addiu	a0,t0,0
#include "aes_func.c"

/* ***************** main **************************** */
int
aes_main (void)
{
    3604:	27bdffe0 	addiu	sp,sp,-32
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
  statemt[8] = 49;
    3608:	24070031 	addiu	a3,zero,49
#include "aes_func.c"

/* ***************** main **************************** */
int
aes_main (void)
{
    360c:	afbf001c 	sw	ra,28(sp)
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
  statemt[8] = 49;
    3610:	ac870020 	sw	a3,32(a0)
  statemt[9] = 49;
    3614:	ac870024 	sw	a3,36(a0)
  statemt[10] = 152;
    3618:	24070098 	addiu	a3,zero,152
    361c:	ac870028 	sw	a3,40(a0)
  statemt[11] = 162;
    3620:	240700a2 	addiu	a3,zero,162
    3624:	ac87002c 	sw	a3,44(a0)
  statemt[12] = 224;
    3628:	240700e0 	addiu	a3,zero,224
    362c:	ac870030 	sw	a3,48(a0)
  statemt[13] = 55;
    3630:	24070037 	addiu	a3,zero,55
    3634:	ac870034 	sw	a3,52(a0)
  statemt[14] = 7;
    3638:	24070007 	addiu	a3,zero,7
    363c:	ac870038 	sw	a3,56(a0)
  statemt[15] = 52;
    3640:	24070034 	addiu	a3,zero,52
    3644:	ac87003c 	sw	a3,60(a0)

  key[0] = 43;
    3648:	3c060000 	lui	a2,0x0
    364c:	2407002b 	addiu	a3,zero,43
  key[1] = 126;
    3650:	24c50000 	addiu	a1,a2,0
  statemt[12] = 224;
  statemt[13] = 55;
  statemt[14] = 7;
  statemt[15] = 52;

  key[0] = 43;
    3654:	acc70000 	sw	a3,0(a2)
  key[1] = 126;
    3658:	2406007e 	addiu	a2,zero,126
    365c:	aca60004 	sw	a2,4(a1)
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
    3660:	24090032 	addiu	t1,zero,50
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
    3664:	24060016 	addiu	a2,zero,22
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
    3668:	ad090000 	sw	t1,0(t0)
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
    366c:	aca6000c 	sw	a2,12(a1)
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
    3670:	24080043 	addiu	t0,zero,67

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
    3674:	24060028 	addiu	a2,zero,40
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
    3678:	ac880004 	sw	t0,4(a0)

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
    367c:	aca60010 	sw	a2,16(a1)
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
    3680:	24020088 	addiu	v0,zero,136
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
    3684:	240800f6 	addiu	t0,zero,246
  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
    3688:	240600ae 	addiu	a2,zero,174
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
    368c:	ac880008 	sw	t0,8(a0)
  statemt[3] = 168;
  statemt[4] = 136;
    3690:	ac820010 	sw	v0,16(a0)
  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
    3694:	aca60014 	sw	a2,20(a1)
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
    3698:	aca2002c 	sw	v0,44(a1)
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
    369c:	240800a8 	addiu	t0,zero,168
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
    36a0:	240600d2 	addiu	a2,zero,210
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
    36a4:	24020009 	addiu	v0,zero,9
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
    36a8:	ac88000c 	sw	t0,12(a0)
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
    36ac:	aca60018 	sw	a2,24(a1)
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
    36b0:	aca20030 	sw	v0,48(a1)
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
    36b4:	2408005a 	addiu	t0,zero,90
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
    36b8:	240600a6 	addiu	a2,zero,166
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
    36bc:	240200cf 	addiu	v0,zero,207
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
    36c0:	ac880014 	sw	t0,20(a0)
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
    36c4:	aca6001c 	sw	a2,28(a1)
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
    36c8:	aca20034 	sw	v0,52(a1)
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
    36cc:	24080030 	addiu	t0,zero,48
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
    36d0:	240600ab 	addiu	a2,zero,171
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
  key[14] = 79;
    36d4:	2402004f 	addiu	v0,zero,79
  statemt[14] = 7;
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
    36d8:	24030015 	addiu	v1,zero,21
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
    36dc:	ac880018 	sw	t0,24(a0)
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
    36e0:	aca60020 	sw	a2,32(a1)
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
  key[14] = 79;
    36e4:	aca20038 	sw	v0,56(a1)
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
    36e8:	2408008d 	addiu	t0,zero,141
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
    36ec:	240600f7 	addiu	a2,zero,247
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
  key[14] = 79;
  key[15] = 60;
    36f0:	2402003c 	addiu	v0,zero,60
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
    36f4:	ac88001c 	sw	t0,28(a0)
  statemt[14] = 7;
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
    36f8:	aca30008 	sw	v1,8(a1)
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
    36fc:	aca60024 	sw	a2,36(a1)
  key[10] = 21;
    3700:	aca30028 	sw	v1,40(a1)
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
  key[14] = 79;
  key[15] = 60;
    3704:	aca2003c 	sw	v0,60(a1)

  encrypt (statemt, key, 128128);
    3708:	afa40010 	sw	a0,16(sp)
    370c:	0c000472 	jal	11c8 <encrypt.clone.0>
    3710:	afa50014 	sw	a1,20(sp)
  decrypt (statemt, key, 128128);
    3714:	8fa40010 	lw	a0,16(sp)
    3718:	8fa50014 	lw	a1,20(sp)
    371c:	3c060001 	lui	a2,0x1
    3720:	0c000000 	jal	0 <AddRoundKey.clone.2>
    3724:	34c6f480 	ori	a2,a2,0xf480
  return 0;
}
    3728:	8fbf001c 	lw	ra,28(sp)
    372c:	00001021 	addu	v0,zero,zero
    3730:	03e00008 	jr	ra
    3734:	27bd0020 	addiu	sp,sp,32

00003738 <main>:
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
    3738:	3c080000 	lui	t0,0x0
  statemt[1] = 67;
    373c:	25040000 	addiu	a0,t0,0
  return 0;
}

int
main ()
{
    3740:	27bdffe0 	addiu	sp,sp,-32
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
  statemt[8] = 49;
    3744:	24070031 	addiu	a3,zero,49
  return 0;
}

int
main ()
{
    3748:	afbf001c 	sw	ra,28(sp)
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
  statemt[8] = 49;
    374c:	ac870020 	sw	a3,32(a0)
  statemt[9] = 49;
    3750:	ac870024 	sw	a3,36(a0)
  statemt[10] = 152;
    3754:	24070098 	addiu	a3,zero,152
    3758:	ac870028 	sw	a3,40(a0)
  statemt[11] = 162;
    375c:	240700a2 	addiu	a3,zero,162
    3760:	ac87002c 	sw	a3,44(a0)
  statemt[12] = 224;
    3764:	240700e0 	addiu	a3,zero,224
    3768:	ac870030 	sw	a3,48(a0)
  statemt[13] = 55;
    376c:	24070037 	addiu	a3,zero,55
    3770:	ac870034 	sw	a3,52(a0)
  statemt[14] = 7;
    3774:	24070007 	addiu	a3,zero,7
    3778:	ac870038 	sw	a3,56(a0)
  statemt[15] = 52;
    377c:	24070034 	addiu	a3,zero,52
    3780:	ac87003c 	sw	a3,60(a0)

  key[0] = 43;
    3784:	3c060000 	lui	a2,0x0
    3788:	2407002b 	addiu	a3,zero,43
  key[1] = 126;
    378c:	24c50000 	addiu	a1,a2,0
  statemt[12] = 224;
  statemt[13] = 55;
  statemt[14] = 7;
  statemt[15] = 52;

  key[0] = 43;
    3790:	acc70000 	sw	a3,0(a2)
  key[1] = 126;
    3794:	2406007e 	addiu	a2,zero,126
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
    3798:	24090032 	addiu	t1,zero,50
  statemt[13] = 55;
  statemt[14] = 7;
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
    379c:	aca60004 	sw	a2,4(a1)
  key[2] = 21;
  key[3] = 22;
    37a0:	24060016 	addiu	a2,zero,22
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
    37a4:	ad090000 	sw	t1,0(t0)
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
    37a8:	aca6000c 	sw	a2,12(a1)
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
    37ac:	24080043 	addiu	t0,zero,67

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
    37b0:	24060028 	addiu	a2,zero,40
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
    37b4:	ac880004 	sw	t0,4(a0)

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
    37b8:	aca60010 	sw	a2,16(a1)
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
    37bc:	24020088 	addiu	v0,zero,136
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
    37c0:	240800f6 	addiu	t0,zero,246
  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
    37c4:	240600ae 	addiu	a2,zero,174
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
    37c8:	ac880008 	sw	t0,8(a0)
  statemt[3] = 168;
  statemt[4] = 136;
    37cc:	ac820010 	sw	v0,16(a0)
  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
    37d0:	aca60014 	sw	a2,20(a1)
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
    37d4:	aca2002c 	sw	v0,44(a1)
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
    37d8:	240800a8 	addiu	t0,zero,168
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
    37dc:	240600d2 	addiu	a2,zero,210
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
    37e0:	24020009 	addiu	v0,zero,9
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
    37e4:	ac88000c 	sw	t0,12(a0)
  key[1] = 126;
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
    37e8:	aca60018 	sw	a2,24(a1)
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
    37ec:	aca20030 	sw	v0,48(a1)
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
    37f0:	2408005a 	addiu	t0,zero,90
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
    37f4:	240600a6 	addiu	a2,zero,166
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
    37f8:	240200cf 	addiu	v0,zero,207
  statemt[0] = 50;
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
    37fc:	ac880014 	sw	t0,20(a0)
  key[2] = 21;
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
    3800:	aca6001c 	sw	a2,28(a1)
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
    3804:	aca20034 	sw	v0,52(a1)
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
    3808:	24080030 	addiu	t0,zero,48
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
    380c:	240600ab 	addiu	a2,zero,171
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
  key[14] = 79;
    3810:	2402004f 	addiu	v0,zero,79
  statemt[14] = 7;
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
    3814:	24030015 	addiu	v1,zero,21
  statemt[1] = 67;
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
    3818:	ac880018 	sw	t0,24(a0)
  key[3] = 22;
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
    381c:	aca60020 	sw	a2,32(a1)
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
    3820:	2408008d 	addiu	t0,zero,141
  key[9] = 247;
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
  key[14] = 79;
    3824:	aca20038 	sw	v0,56(a1)
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
    3828:	240600f7 	addiu	a2,zero,247
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
  key[14] = 79;
  key[15] = 60;
    382c:	2402003c 	addiu	v0,zero,60
  statemt[2] = 246;
  statemt[3] = 168;
  statemt[4] = 136;
  statemt[5] = 90;
  statemt[6] = 48;
  statemt[7] = 141;
    3830:	ac88001c 	sw	t0,28(a0)
  statemt[14] = 7;
  statemt[15] = 52;

  key[0] = 43;
  key[1] = 126;
  key[2] = 21;
    3834:	aca30008 	sw	v1,8(a1)
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
  key[10] = 21;
    3838:	aca30028 	sw	v1,40(a1)
  key[4] = 40;
  key[5] = 174;
  key[6] = 210;
  key[7] = 166;
  key[8] = 171;
  key[9] = 247;
    383c:	aca60024 	sw	a2,36(a1)
}

int
main ()
{
      main_result = 0;
    3840:	af800000 	sw	zero,0(gp)
  key[10] = 21;
  key[11] = 136;
  key[12] = 9;
  key[13] = 207;
  key[14] = 79;
  key[15] = 60;
    3844:	aca2003c 	sw	v0,60(a1)

  encrypt (statemt, key, 128128);
    3848:	afa40010 	sw	a0,16(sp)
    384c:	0c000472 	jal	11c8 <encrypt.clone.0>
    3850:	afa50014 	sw	a1,20(sp)
  decrypt (statemt, key, 128128);
    3854:	8fa40010 	lw	a0,16(sp)
    3858:	8fa50014 	lw	a1,20(sp)
    385c:	3c060001 	lui	a2,0x1
    3860:	0c000000 	jal	0 <AddRoundKey.clone.2>
    3864:	34c6f480 	ori	a2,a2,0xf480
int
main ()
{
      main_result = 0;
      aes_main ();
      printf ("\n%d\n", main_result);
    3868:	8f850000 	lw	a1,0(gp)
    386c:	3c040000 	lui	a0,0x0
    3870:	0c000000 	jal	0 <AddRoundKey.clone.2>
    3874:	24840000 	addiu	a0,a0,0
      return main_result;
    }
    3878:	8fbf001c 	lw	ra,28(sp)
    387c:	8f820000 	lw	v0,0(gp)
    3880:	03e00008 	jr	ra
    3884:	27bd0020 	addiu	sp,sp,32

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
