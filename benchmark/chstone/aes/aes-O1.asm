
aes.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <ByteSub_ShiftRow>:
void
ByteSub_ShiftRow (int statemt[32], int nb)
{
  int temp;

  switch (nb)
       0:	24020006 	addiu	v0,zero,6
       4:	10a200b3 	beq	a1,v0,2d4 <ByteSub_ShiftRow+0x2d4>
       8:	24020008 	addiu	v0,zero,8
       c:	10a201b5 	beq	a1,v0,6e4 <ByteSub_ShiftRow+0x6e4>
      10:	24020004 	addiu	v0,zero,4
      14:	14a2030f 	bne	a1,v0,c54 <ByteSub_ShiftRow+0xc54>
      18:	00000000 	sll	zero,zero,0x0
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
      1c:	8c820004 	lw	v0,4(a0)
      20:	00000000 	sll	zero,zero,0x0
      24:	00021903 	sra	v1,v0,0x4
      28:	3042000f 	andi	v0,v0,0xf
      2c:	00031900 	sll	v1,v1,0x4
      30:	00621821 	addu	v1,v1,v0
      34:	00031880 	sll	v1,v1,0x2
      38:	3c020000 	lui	v0,0x0
      3c:	24420000 	addiu	v0,v0,0
      40:	00621821 	addu	v1,v1,v0
      44:	8c650000 	lw	a1,0(v1)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
      48:	8c830014 	lw	v1,20(a0)
      4c:	00000000 	sll	zero,zero,0x0
      50:	00033103 	sra	a2,v1,0x4
      54:	3063000f 	andi	v1,v1,0xf
      58:	00063100 	sll	a2,a2,0x4
      5c:	00c31821 	addu	v1,a2,v1
      60:	00031880 	sll	v1,v1,0x2
      64:	00621821 	addu	v1,v1,v0
      68:	8c630000 	lw	v1,0(v1)
      6c:	00000000 	sll	zero,zero,0x0
      70:	ac830004 	sw	v1,4(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
      74:	8c830024 	lw	v1,36(a0)
      78:	00000000 	sll	zero,zero,0x0
      7c:	00033103 	sra	a2,v1,0x4
      80:	3063000f 	andi	v1,v1,0xf
      84:	00063100 	sll	a2,a2,0x4
      88:	00c31821 	addu	v1,a2,v1
      8c:	00031880 	sll	v1,v1,0x2
      90:	00621821 	addu	v1,v1,v0
      94:	8c630000 	lw	v1,0(v1)
      98:	00000000 	sll	zero,zero,0x0
      9c:	ac830014 	sw	v1,20(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
      a0:	8c830034 	lw	v1,52(a0)
      a4:	00000000 	sll	zero,zero,0x0
      a8:	00033103 	sra	a2,v1,0x4
      ac:	3063000f 	andi	v1,v1,0xf
      b0:	00063100 	sll	a2,a2,0x4
      b4:	00c31821 	addu	v1,a2,v1
      b8:	00031880 	sll	v1,v1,0x2
      bc:	00621821 	addu	v1,v1,v0
      c0:	8c630000 	lw	v1,0(v1)
      c4:	00000000 	sll	zero,zero,0x0
      c8:	ac830024 	sw	v1,36(a0)
      statemt[13] = temp;
      cc:	ac850034 	sw	a1,52(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
      d0:	8c830008 	lw	v1,8(a0)
      d4:	00000000 	sll	zero,zero,0x0
      d8:	00032903 	sra	a1,v1,0x4
      dc:	3063000f 	andi	v1,v1,0xf
      e0:	00052900 	sll	a1,a1,0x4
      e4:	00a31821 	addu	v1,a1,v1
      e8:	00031880 	sll	v1,v1,0x2
      ec:	00621821 	addu	v1,v1,v0
      f0:	8c650000 	lw	a1,0(v1)
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
      f4:	8c830028 	lw	v1,40(a0)
      f8:	00000000 	sll	zero,zero,0x0
      fc:	00033103 	sra	a2,v1,0x4
     100:	3063000f 	andi	v1,v1,0xf
     104:	00063100 	sll	a2,a2,0x4
     108:	00c31821 	addu	v1,a2,v1
     10c:	00031880 	sll	v1,v1,0x2
     110:	00621821 	addu	v1,v1,v0
     114:	8c630000 	lw	v1,0(v1)
     118:	00000000 	sll	zero,zero,0x0
     11c:	ac830008 	sw	v1,8(a0)
      statemt[10] = temp;
     120:	ac850028 	sw	a1,40(a0)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     124:	8c830018 	lw	v1,24(a0)
     128:	00000000 	sll	zero,zero,0x0
     12c:	00032903 	sra	a1,v1,0x4
     130:	3063000f 	andi	v1,v1,0xf
     134:	00052900 	sll	a1,a1,0x4
     138:	00a31821 	addu	v1,a1,v1
     13c:	00031880 	sll	v1,v1,0x2
     140:	00621821 	addu	v1,v1,v0
     144:	8c650000 	lw	a1,0(v1)
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     148:	8c830038 	lw	v1,56(a0)
     14c:	00000000 	sll	zero,zero,0x0
     150:	00033103 	sra	a2,v1,0x4
     154:	3063000f 	andi	v1,v1,0xf
     158:	00063100 	sll	a2,a2,0x4
     15c:	00c31821 	addu	v1,a2,v1
     160:	00031880 	sll	v1,v1,0x2
     164:	00621821 	addu	v1,v1,v0
     168:	8c630000 	lw	v1,0(v1)
     16c:	00000000 	sll	zero,zero,0x0
     170:	ac830018 	sw	v1,24(a0)
      statemt[14] = temp;
     174:	ac850038 	sw	a1,56(a0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     178:	8c83000c 	lw	v1,12(a0)
     17c:	00000000 	sll	zero,zero,0x0
     180:	00032903 	sra	a1,v1,0x4
     184:	3063000f 	andi	v1,v1,0xf
     188:	00052900 	sll	a1,a1,0x4
     18c:	00a31821 	addu	v1,a1,v1
     190:	00031880 	sll	v1,v1,0x2
     194:	00621821 	addu	v1,v1,v0
     198:	8c650000 	lw	a1,0(v1)
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     19c:	8c83003c 	lw	v1,60(a0)
     1a0:	00000000 	sll	zero,zero,0x0
     1a4:	00033103 	sra	a2,v1,0x4
     1a8:	3063000f 	andi	v1,v1,0xf
     1ac:	00063100 	sll	a2,a2,0x4
     1b0:	00c31821 	addu	v1,a2,v1
     1b4:	00031880 	sll	v1,v1,0x2
     1b8:	00621821 	addu	v1,v1,v0
     1bc:	8c630000 	lw	v1,0(v1)
     1c0:	00000000 	sll	zero,zero,0x0
     1c4:	ac83000c 	sw	v1,12(a0)
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     1c8:	8c83002c 	lw	v1,44(a0)
     1cc:	00000000 	sll	zero,zero,0x0
     1d0:	00033103 	sra	a2,v1,0x4
     1d4:	3063000f 	andi	v1,v1,0xf
     1d8:	00063100 	sll	a2,a2,0x4
     1dc:	00c31821 	addu	v1,a2,v1
     1e0:	00031880 	sll	v1,v1,0x2
     1e4:	00621821 	addu	v1,v1,v0
     1e8:	8c630000 	lw	v1,0(v1)
     1ec:	00000000 	sll	zero,zero,0x0
     1f0:	ac83003c 	sw	v1,60(a0)
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     1f4:	8c83001c 	lw	v1,28(a0)
     1f8:	00000000 	sll	zero,zero,0x0
     1fc:	00033103 	sra	a2,v1,0x4
     200:	3063000f 	andi	v1,v1,0xf
     204:	00063100 	sll	a2,a2,0x4
     208:	00c31821 	addu	v1,a2,v1
     20c:	00031880 	sll	v1,v1,0x2
     210:	00621821 	addu	v1,v1,v0
     214:	8c630000 	lw	v1,0(v1)
     218:	00000000 	sll	zero,zero,0x0
     21c:	ac83002c 	sw	v1,44(a0)
      statemt[7] = temp;
     220:	ac85001c 	sw	a1,28(a0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     224:	8c830000 	lw	v1,0(a0)
     228:	00000000 	sll	zero,zero,0x0
     22c:	00032903 	sra	a1,v1,0x4
     230:	3063000f 	andi	v1,v1,0xf
     234:	00052900 	sll	a1,a1,0x4
     238:	00a31821 	addu	v1,a1,v1
     23c:	00031880 	sll	v1,v1,0x2
     240:	00621821 	addu	v1,v1,v0
     244:	8c630000 	lw	v1,0(v1)
     248:	00000000 	sll	zero,zero,0x0
     24c:	ac830000 	sw	v1,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     250:	8c830010 	lw	v1,16(a0)
     254:	00000000 	sll	zero,zero,0x0
     258:	00032903 	sra	a1,v1,0x4
     25c:	3063000f 	andi	v1,v1,0xf
     260:	00052900 	sll	a1,a1,0x4
     264:	00a31821 	addu	v1,a1,v1
     268:	00031880 	sll	v1,v1,0x2
     26c:	00621821 	addu	v1,v1,v0
     270:	8c630000 	lw	v1,0(v1)
     274:	00000000 	sll	zero,zero,0x0
     278:	ac830010 	sw	v1,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     27c:	8c830020 	lw	v1,32(a0)
     280:	00000000 	sll	zero,zero,0x0
     284:	00032903 	sra	a1,v1,0x4
     288:	3063000f 	andi	v1,v1,0xf
     28c:	00052900 	sll	a1,a1,0x4
     290:	00a31821 	addu	v1,a1,v1
     294:	00031880 	sll	v1,v1,0x2
     298:	00621821 	addu	v1,v1,v0
     29c:	8c630000 	lw	v1,0(v1)
     2a0:	00000000 	sll	zero,zero,0x0
     2a4:	ac830020 	sw	v1,32(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     2a8:	8c830030 	lw	v1,48(a0)
     2ac:	00000000 	sll	zero,zero,0x0
     2b0:	00032903 	sra	a1,v1,0x4
     2b4:	3063000f 	andi	v1,v1,0xf
     2b8:	00052900 	sll	a1,a1,0x4
     2bc:	00a31821 	addu	v1,a1,v1
     2c0:	00031880 	sll	v1,v1,0x2
     2c4:	00621021 	addu	v0,v1,v0
     2c8:	8c420000 	lw	v0,0(v0)
      break;
     2cc:	03e00008 	jr	ra
     2d0:	ac820030 	sw	v0,48(a0)
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     2d4:	8c820004 	lw	v0,4(a0)
     2d8:	00000000 	sll	zero,zero,0x0
     2dc:	00021903 	sra	v1,v0,0x4
     2e0:	3042000f 	andi	v0,v0,0xf
     2e4:	00031900 	sll	v1,v1,0x4
     2e8:	00621821 	addu	v1,v1,v0
     2ec:	00031880 	sll	v1,v1,0x2
     2f0:	3c020000 	lui	v0,0x0
     2f4:	24420000 	addiu	v0,v0,0
     2f8:	00621821 	addu	v1,v1,v0
     2fc:	8c650000 	lw	a1,0(v1)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     300:	8c830014 	lw	v1,20(a0)
     304:	00000000 	sll	zero,zero,0x0
     308:	00033103 	sra	a2,v1,0x4
     30c:	3063000f 	andi	v1,v1,0xf
     310:	00063100 	sll	a2,a2,0x4
     314:	00c31821 	addu	v1,a2,v1
     318:	00031880 	sll	v1,v1,0x2
     31c:	00621821 	addu	v1,v1,v0
     320:	8c630000 	lw	v1,0(v1)
     324:	00000000 	sll	zero,zero,0x0
     328:	ac830004 	sw	v1,4(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     32c:	8c830024 	lw	v1,36(a0)
     330:	00000000 	sll	zero,zero,0x0
     334:	00033103 	sra	a2,v1,0x4
     338:	3063000f 	andi	v1,v1,0xf
     33c:	00063100 	sll	a2,a2,0x4
     340:	00c31821 	addu	v1,a2,v1
     344:	00031880 	sll	v1,v1,0x2
     348:	00621821 	addu	v1,v1,v0
     34c:	8c630000 	lw	v1,0(v1)
     350:	00000000 	sll	zero,zero,0x0
     354:	ac830014 	sw	v1,20(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     358:	8c830034 	lw	v1,52(a0)
     35c:	00000000 	sll	zero,zero,0x0
     360:	00033103 	sra	a2,v1,0x4
     364:	3063000f 	andi	v1,v1,0xf
     368:	00063100 	sll	a2,a2,0x4
     36c:	00c31821 	addu	v1,a2,v1
     370:	00031880 	sll	v1,v1,0x2
     374:	00621821 	addu	v1,v1,v0
     378:	8c630000 	lw	v1,0(v1)
     37c:	00000000 	sll	zero,zero,0x0
     380:	ac830024 	sw	v1,36(a0)
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     384:	8c830044 	lw	v1,68(a0)
     388:	00000000 	sll	zero,zero,0x0
     38c:	00033103 	sra	a2,v1,0x4
     390:	3063000f 	andi	v1,v1,0xf
     394:	00063100 	sll	a2,a2,0x4
     398:	00c31821 	addu	v1,a2,v1
     39c:	00031880 	sll	v1,v1,0x2
     3a0:	00621821 	addu	v1,v1,v0
     3a4:	8c630000 	lw	v1,0(v1)
     3a8:	00000000 	sll	zero,zero,0x0
     3ac:	ac830034 	sw	v1,52(a0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     3b0:	8c830054 	lw	v1,84(a0)
     3b4:	00000000 	sll	zero,zero,0x0
     3b8:	00033103 	sra	a2,v1,0x4
     3bc:	3063000f 	andi	v1,v1,0xf
     3c0:	00063100 	sll	a2,a2,0x4
     3c4:	00c31821 	addu	v1,a2,v1
     3c8:	00031880 	sll	v1,v1,0x2
     3cc:	00621821 	addu	v1,v1,v0
     3d0:	8c630000 	lw	v1,0(v1)
     3d4:	00000000 	sll	zero,zero,0x0
     3d8:	ac830044 	sw	v1,68(a0)
      statemt[21] = temp;
     3dc:	ac850054 	sw	a1,84(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     3e0:	8c830008 	lw	v1,8(a0)
     3e4:	00000000 	sll	zero,zero,0x0
     3e8:	00032903 	sra	a1,v1,0x4
     3ec:	3063000f 	andi	v1,v1,0xf
     3f0:	00052900 	sll	a1,a1,0x4
     3f4:	00a31821 	addu	v1,a1,v1
     3f8:	00031880 	sll	v1,v1,0x2
     3fc:	00621821 	addu	v1,v1,v0
     400:	8c650000 	lw	a1,0(v1)
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     404:	8c830028 	lw	v1,40(a0)
     408:	00000000 	sll	zero,zero,0x0
     40c:	00033103 	sra	a2,v1,0x4
     410:	3063000f 	andi	v1,v1,0xf
     414:	00063100 	sll	a2,a2,0x4
     418:	00c31821 	addu	v1,a2,v1
     41c:	00031880 	sll	v1,v1,0x2
     420:	00621821 	addu	v1,v1,v0
     424:	8c630000 	lw	v1,0(v1)
     428:	00000000 	sll	zero,zero,0x0
     42c:	ac830008 	sw	v1,8(a0)
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     430:	8c830048 	lw	v1,72(a0)
     434:	00000000 	sll	zero,zero,0x0
     438:	00033103 	sra	a2,v1,0x4
     43c:	3063000f 	andi	v1,v1,0xf
     440:	00063100 	sll	a2,a2,0x4
     444:	00c31821 	addu	v1,a2,v1
     448:	00031880 	sll	v1,v1,0x2
     44c:	00621821 	addu	v1,v1,v0
     450:	8c630000 	lw	v1,0(v1)
     454:	00000000 	sll	zero,zero,0x0
     458:	ac830028 	sw	v1,40(a0)
      statemt[18] = temp;
     45c:	ac850048 	sw	a1,72(a0)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     460:	8c830018 	lw	v1,24(a0)
     464:	00000000 	sll	zero,zero,0x0
     468:	00032903 	sra	a1,v1,0x4
     46c:	3063000f 	andi	v1,v1,0xf
     470:	00052900 	sll	a1,a1,0x4
     474:	00a31821 	addu	v1,a1,v1
     478:	00031880 	sll	v1,v1,0x2
     47c:	00621821 	addu	v1,v1,v0
     480:	8c650000 	lw	a1,0(v1)
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     484:	8c830038 	lw	v1,56(a0)
     488:	00000000 	sll	zero,zero,0x0
     48c:	00033103 	sra	a2,v1,0x4
     490:	3063000f 	andi	v1,v1,0xf
     494:	00063100 	sll	a2,a2,0x4
     498:	00c31821 	addu	v1,a2,v1
     49c:	00031880 	sll	v1,v1,0x2
     4a0:	00621821 	addu	v1,v1,v0
     4a4:	8c630000 	lw	v1,0(v1)
     4a8:	00000000 	sll	zero,zero,0x0
     4ac:	ac830018 	sw	v1,24(a0)
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     4b0:	8c830058 	lw	v1,88(a0)
     4b4:	00000000 	sll	zero,zero,0x0
     4b8:	00033103 	sra	a2,v1,0x4
     4bc:	3063000f 	andi	v1,v1,0xf
     4c0:	00063100 	sll	a2,a2,0x4
     4c4:	00c31821 	addu	v1,a2,v1
     4c8:	00031880 	sll	v1,v1,0x2
     4cc:	00621821 	addu	v1,v1,v0
     4d0:	8c630000 	lw	v1,0(v1)
     4d4:	00000000 	sll	zero,zero,0x0
     4d8:	ac830038 	sw	v1,56(a0)
      statemt[22] = temp;
     4dc:	ac850058 	sw	a1,88(a0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     4e0:	8c83000c 	lw	v1,12(a0)
     4e4:	00000000 	sll	zero,zero,0x0
     4e8:	00032903 	sra	a1,v1,0x4
     4ec:	3063000f 	andi	v1,v1,0xf
     4f0:	00052900 	sll	a1,a1,0x4
     4f4:	00a31821 	addu	v1,a1,v1
     4f8:	00031880 	sll	v1,v1,0x2
     4fc:	00621821 	addu	v1,v1,v0
     500:	8c650000 	lw	a1,0(v1)
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     504:	8c83003c 	lw	v1,60(a0)
     508:	00000000 	sll	zero,zero,0x0
     50c:	00033103 	sra	a2,v1,0x4
     510:	3063000f 	andi	v1,v1,0xf
     514:	00063100 	sll	a2,a2,0x4
     518:	00c31821 	addu	v1,a2,v1
     51c:	00031880 	sll	v1,v1,0x2
     520:	00621821 	addu	v1,v1,v0
     524:	8c630000 	lw	v1,0(v1)
     528:	00000000 	sll	zero,zero,0x0
     52c:	ac83000c 	sw	v1,12(a0)
      statemt[15] = temp;
     530:	ac85003c 	sw	a1,60(a0)
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     534:	8c83001c 	lw	v1,28(a0)
     538:	00000000 	sll	zero,zero,0x0
     53c:	00032903 	sra	a1,v1,0x4
     540:	3063000f 	andi	v1,v1,0xf
     544:	00052900 	sll	a1,a1,0x4
     548:	00a31821 	addu	v1,a1,v1
     54c:	00031880 	sll	v1,v1,0x2
     550:	00621821 	addu	v1,v1,v0
     554:	8c650000 	lw	a1,0(v1)
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     558:	8c83004c 	lw	v1,76(a0)
     55c:	00000000 	sll	zero,zero,0x0
     560:	00033103 	sra	a2,v1,0x4
     564:	3063000f 	andi	v1,v1,0xf
     568:	00063100 	sll	a2,a2,0x4
     56c:	00c31821 	addu	v1,a2,v1
     570:	00031880 	sll	v1,v1,0x2
     574:	00621821 	addu	v1,v1,v0
     578:	8c630000 	lw	v1,0(v1)
     57c:	00000000 	sll	zero,zero,0x0
     580:	ac83001c 	sw	v1,28(a0)
      statemt[19] = temp;
     584:	ac85004c 	sw	a1,76(a0)
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     588:	8c83002c 	lw	v1,44(a0)
     58c:	00000000 	sll	zero,zero,0x0
     590:	00032903 	sra	a1,v1,0x4
     594:	3063000f 	andi	v1,v1,0xf
     598:	00052900 	sll	a1,a1,0x4
     59c:	00a31821 	addu	v1,a1,v1
     5a0:	00031880 	sll	v1,v1,0x2
     5a4:	00621821 	addu	v1,v1,v0
     5a8:	8c650000 	lw	a1,0(v1)
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     5ac:	8c83005c 	lw	v1,92(a0)
     5b0:	00000000 	sll	zero,zero,0x0
     5b4:	00033103 	sra	a2,v1,0x4
     5b8:	3063000f 	andi	v1,v1,0xf
     5bc:	00063100 	sll	a2,a2,0x4
     5c0:	00c31821 	addu	v1,a2,v1
     5c4:	00031880 	sll	v1,v1,0x2
     5c8:	00621821 	addu	v1,v1,v0
     5cc:	8c630000 	lw	v1,0(v1)
     5d0:	00000000 	sll	zero,zero,0x0
     5d4:	ac83002c 	sw	v1,44(a0)
      statemt[23] = temp;
     5d8:	ac85005c 	sw	a1,92(a0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     5dc:	8c830000 	lw	v1,0(a0)
     5e0:	00000000 	sll	zero,zero,0x0
     5e4:	00032903 	sra	a1,v1,0x4
     5e8:	3063000f 	andi	v1,v1,0xf
     5ec:	00052900 	sll	a1,a1,0x4
     5f0:	00a31821 	addu	v1,a1,v1
     5f4:	00031880 	sll	v1,v1,0x2
     5f8:	00621821 	addu	v1,v1,v0
     5fc:	8c630000 	lw	v1,0(v1)
     600:	00000000 	sll	zero,zero,0x0
     604:	ac830000 	sw	v1,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     608:	8c830010 	lw	v1,16(a0)
     60c:	00000000 	sll	zero,zero,0x0
     610:	00032903 	sra	a1,v1,0x4
     614:	3063000f 	andi	v1,v1,0xf
     618:	00052900 	sll	a1,a1,0x4
     61c:	00a31821 	addu	v1,a1,v1
     620:	00031880 	sll	v1,v1,0x2
     624:	00621821 	addu	v1,v1,v0
     628:	8c630000 	lw	v1,0(v1)
     62c:	00000000 	sll	zero,zero,0x0
     630:	ac830010 	sw	v1,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     634:	8c830020 	lw	v1,32(a0)
     638:	00000000 	sll	zero,zero,0x0
     63c:	00032903 	sra	a1,v1,0x4
     640:	3063000f 	andi	v1,v1,0xf
     644:	00052900 	sll	a1,a1,0x4
     648:	00a31821 	addu	v1,a1,v1
     64c:	00031880 	sll	v1,v1,0x2
     650:	00621821 	addu	v1,v1,v0
     654:	8c630000 	lw	v1,0(v1)
     658:	00000000 	sll	zero,zero,0x0
     65c:	ac830020 	sw	v1,32(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     660:	8c830030 	lw	v1,48(a0)
     664:	00000000 	sll	zero,zero,0x0
     668:	00032903 	sra	a1,v1,0x4
     66c:	3063000f 	andi	v1,v1,0xf
     670:	00052900 	sll	a1,a1,0x4
     674:	00a31821 	addu	v1,a1,v1
     678:	00031880 	sll	v1,v1,0x2
     67c:	00621821 	addu	v1,v1,v0
     680:	8c630000 	lw	v1,0(v1)
     684:	00000000 	sll	zero,zero,0x0
     688:	ac830030 	sw	v1,48(a0)
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     68c:	8c830040 	lw	v1,64(a0)
     690:	00000000 	sll	zero,zero,0x0
     694:	00032903 	sra	a1,v1,0x4
     698:	3063000f 	andi	v1,v1,0xf
     69c:	00052900 	sll	a1,a1,0x4
     6a0:	00a31821 	addu	v1,a1,v1
     6a4:	00031880 	sll	v1,v1,0x2
     6a8:	00621821 	addu	v1,v1,v0
     6ac:	8c630000 	lw	v1,0(v1)
     6b0:	00000000 	sll	zero,zero,0x0
     6b4:	ac830040 	sw	v1,64(a0)
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     6b8:	8c830050 	lw	v1,80(a0)
     6bc:	00000000 	sll	zero,zero,0x0
     6c0:	00032903 	sra	a1,v1,0x4
     6c4:	3063000f 	andi	v1,v1,0xf
     6c8:	00052900 	sll	a1,a1,0x4
     6cc:	00a31821 	addu	v1,a1,v1
     6d0:	00031880 	sll	v1,v1,0x2
     6d4:	00621021 	addu	v0,v1,v0
     6d8:	8c420000 	lw	v0,0(v0)
      break;
     6dc:	03e00008 	jr	ra
     6e0:	ac820050 	sw	v0,80(a0)
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     6e4:	8c820004 	lw	v0,4(a0)
     6e8:	00000000 	sll	zero,zero,0x0
     6ec:	00021903 	sra	v1,v0,0x4
     6f0:	3042000f 	andi	v0,v0,0xf
     6f4:	00031900 	sll	v1,v1,0x4
     6f8:	00621821 	addu	v1,v1,v0
     6fc:	00031880 	sll	v1,v1,0x2
     700:	3c020000 	lui	v0,0x0
     704:	24420000 	addiu	v0,v0,0
     708:	00621821 	addu	v1,v1,v0
     70c:	8c650000 	lw	a1,0(v1)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     710:	8c830014 	lw	v1,20(a0)
     714:	00000000 	sll	zero,zero,0x0
     718:	00033103 	sra	a2,v1,0x4
     71c:	3063000f 	andi	v1,v1,0xf
     720:	00063100 	sll	a2,a2,0x4
     724:	00c31821 	addu	v1,a2,v1
     728:	00031880 	sll	v1,v1,0x2
     72c:	00621821 	addu	v1,v1,v0
     730:	8c630000 	lw	v1,0(v1)
     734:	00000000 	sll	zero,zero,0x0
     738:	ac830004 	sw	v1,4(a0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     73c:	8c830024 	lw	v1,36(a0)
     740:	00000000 	sll	zero,zero,0x0
     744:	00033103 	sra	a2,v1,0x4
     748:	3063000f 	andi	v1,v1,0xf
     74c:	00063100 	sll	a2,a2,0x4
     750:	00c31821 	addu	v1,a2,v1
     754:	00031880 	sll	v1,v1,0x2
     758:	00621821 	addu	v1,v1,v0
     75c:	8c630000 	lw	v1,0(v1)
     760:	00000000 	sll	zero,zero,0x0
     764:	ac830014 	sw	v1,20(a0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     768:	8c830034 	lw	v1,52(a0)
     76c:	00000000 	sll	zero,zero,0x0
     770:	00033103 	sra	a2,v1,0x4
     774:	3063000f 	andi	v1,v1,0xf
     778:	00063100 	sll	a2,a2,0x4
     77c:	00c31821 	addu	v1,a2,v1
     780:	00031880 	sll	v1,v1,0x2
     784:	00621821 	addu	v1,v1,v0
     788:	8c630000 	lw	v1,0(v1)
     78c:	00000000 	sll	zero,zero,0x0
     790:	ac830024 	sw	v1,36(a0)
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
     794:	8c830044 	lw	v1,68(a0)
     798:	00000000 	sll	zero,zero,0x0
     79c:	00033103 	sra	a2,v1,0x4
     7a0:	3063000f 	andi	v1,v1,0xf
     7a4:	00063100 	sll	a2,a2,0x4
     7a8:	00c31821 	addu	v1,a2,v1
     7ac:	00031880 	sll	v1,v1,0x2
     7b0:	00621821 	addu	v1,v1,v0
     7b4:	8c630000 	lw	v1,0(v1)
     7b8:	00000000 	sll	zero,zero,0x0
     7bc:	ac830034 	sw	v1,52(a0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
     7c0:	8c830054 	lw	v1,84(a0)
     7c4:	00000000 	sll	zero,zero,0x0
     7c8:	00033103 	sra	a2,v1,0x4
     7cc:	3063000f 	andi	v1,v1,0xf
     7d0:	00063100 	sll	a2,a2,0x4
     7d4:	00c31821 	addu	v1,a2,v1
     7d8:	00031880 	sll	v1,v1,0x2
     7dc:	00621821 	addu	v1,v1,v0
     7e0:	8c630000 	lw	v1,0(v1)
     7e4:	00000000 	sll	zero,zero,0x0
     7e8:	ac830044 	sw	v1,68(a0)
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
     7ec:	8c830064 	lw	v1,100(a0)
     7f0:	00000000 	sll	zero,zero,0x0
     7f4:	00033103 	sra	a2,v1,0x4
     7f8:	3063000f 	andi	v1,v1,0xf
     7fc:	00063100 	sll	a2,a2,0x4
     800:	00c31821 	addu	v1,a2,v1
     804:	00031880 	sll	v1,v1,0x2
     808:	00621821 	addu	v1,v1,v0
     80c:	8c630000 	lw	v1,0(v1)
     810:	00000000 	sll	zero,zero,0x0
     814:	ac830054 	sw	v1,84(a0)
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
     818:	8c830074 	lw	v1,116(a0)
     81c:	00000000 	sll	zero,zero,0x0
     820:	00033103 	sra	a2,v1,0x4
     824:	3063000f 	andi	v1,v1,0xf
     828:	00063100 	sll	a2,a2,0x4
     82c:	00c31821 	addu	v1,a2,v1
     830:	00031880 	sll	v1,v1,0x2
     834:	00621821 	addu	v1,v1,v0
     838:	8c630000 	lw	v1,0(v1)
     83c:	00000000 	sll	zero,zero,0x0
     840:	ac830064 	sw	v1,100(a0)
      statemt[29] = temp;
     844:	ac850074 	sw	a1,116(a0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
     848:	8c830008 	lw	v1,8(a0)
     84c:	00000000 	sll	zero,zero,0x0
     850:	00032903 	sra	a1,v1,0x4
     854:	3063000f 	andi	v1,v1,0xf
     858:	00052900 	sll	a1,a1,0x4
     85c:	00a31821 	addu	v1,a1,v1
     860:	00031880 	sll	v1,v1,0x2
     864:	00621821 	addu	v1,v1,v0
     868:	8c650000 	lw	a1,0(v1)
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
     86c:	8c830038 	lw	v1,56(a0)
     870:	00000000 	sll	zero,zero,0x0
     874:	00033103 	sra	a2,v1,0x4
     878:	3063000f 	andi	v1,v1,0xf
     87c:	00063100 	sll	a2,a2,0x4
     880:	00c31821 	addu	v1,a2,v1
     884:	00031880 	sll	v1,v1,0x2
     888:	00621821 	addu	v1,v1,v0
     88c:	8c630000 	lw	v1,0(v1)
     890:	00000000 	sll	zero,zero,0x0
     894:	ac830008 	sw	v1,8(a0)
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
     898:	8c830068 	lw	v1,104(a0)
     89c:	00000000 	sll	zero,zero,0x0
     8a0:	00033103 	sra	a2,v1,0x4
     8a4:	3063000f 	andi	v1,v1,0xf
     8a8:	00063100 	sll	a2,a2,0x4
     8ac:	00c31821 	addu	v1,a2,v1
     8b0:	00031880 	sll	v1,v1,0x2
     8b4:	00621821 	addu	v1,v1,v0
     8b8:	8c630000 	lw	v1,0(v1)
     8bc:	00000000 	sll	zero,zero,0x0
     8c0:	ac830038 	sw	v1,56(a0)
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
     8c4:	8c830018 	lw	v1,24(a0)
     8c8:	00000000 	sll	zero,zero,0x0
     8cc:	00033103 	sra	a2,v1,0x4
     8d0:	3063000f 	andi	v1,v1,0xf
     8d4:	00063100 	sll	a2,a2,0x4
     8d8:	00c31821 	addu	v1,a2,v1
     8dc:	00031880 	sll	v1,v1,0x2
     8e0:	00621821 	addu	v1,v1,v0
     8e4:	8c630000 	lw	v1,0(v1)
     8e8:	00000000 	sll	zero,zero,0x0
     8ec:	ac830068 	sw	v1,104(a0)
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
     8f0:	8c830048 	lw	v1,72(a0)
     8f4:	00000000 	sll	zero,zero,0x0
     8f8:	00033103 	sra	a2,v1,0x4
     8fc:	3063000f 	andi	v1,v1,0xf
     900:	00063100 	sll	a2,a2,0x4
     904:	00c31821 	addu	v1,a2,v1
     908:	00031880 	sll	v1,v1,0x2
     90c:	00621821 	addu	v1,v1,v0
     910:	8c630000 	lw	v1,0(v1)
     914:	00000000 	sll	zero,zero,0x0
     918:	ac830018 	sw	v1,24(a0)
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
     91c:	8c830078 	lw	v1,120(a0)
     920:	00000000 	sll	zero,zero,0x0
     924:	00033103 	sra	a2,v1,0x4
     928:	3063000f 	andi	v1,v1,0xf
     92c:	00063100 	sll	a2,a2,0x4
     930:	00c31821 	addu	v1,a2,v1
     934:	00031880 	sll	v1,v1,0x2
     938:	00621821 	addu	v1,v1,v0
     93c:	8c630000 	lw	v1,0(v1)
     940:	00000000 	sll	zero,zero,0x0
     944:	ac830048 	sw	v1,72(a0)
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
     948:	8c830028 	lw	v1,40(a0)
     94c:	00000000 	sll	zero,zero,0x0
     950:	00033103 	sra	a2,v1,0x4
     954:	3063000f 	andi	v1,v1,0xf
     958:	00063100 	sll	a2,a2,0x4
     95c:	00c31821 	addu	v1,a2,v1
     960:	00031880 	sll	v1,v1,0x2
     964:	00621821 	addu	v1,v1,v0
     968:	8c630000 	lw	v1,0(v1)
     96c:	00000000 	sll	zero,zero,0x0
     970:	ac830078 	sw	v1,120(a0)
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
     974:	8c830058 	lw	v1,88(a0)
     978:	00000000 	sll	zero,zero,0x0
     97c:	00033103 	sra	a2,v1,0x4
     980:	3063000f 	andi	v1,v1,0xf
     984:	00063100 	sll	a2,a2,0x4
     988:	00c31821 	addu	v1,a2,v1
     98c:	00031880 	sll	v1,v1,0x2
     990:	00621821 	addu	v1,v1,v0
     994:	8c630000 	lw	v1,0(v1)
     998:	00000000 	sll	zero,zero,0x0
     99c:	ac830028 	sw	v1,40(a0)
      statemt[22] = temp;
     9a0:	ac850058 	sw	a1,88(a0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
     9a4:	8c83000c 	lw	v1,12(a0)
     9a8:	00000000 	sll	zero,zero,0x0
     9ac:	00032903 	sra	a1,v1,0x4
     9b0:	3063000f 	andi	v1,v1,0xf
     9b4:	00052900 	sll	a1,a1,0x4
     9b8:	00a31821 	addu	v1,a1,v1
     9bc:	00031880 	sll	v1,v1,0x2
     9c0:	00621821 	addu	v1,v1,v0
     9c4:	8c650000 	lw	a1,0(v1)
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
     9c8:	8c83004c 	lw	v1,76(a0)
     9cc:	00000000 	sll	zero,zero,0x0
     9d0:	00033103 	sra	a2,v1,0x4
     9d4:	3063000f 	andi	v1,v1,0xf
     9d8:	00063100 	sll	a2,a2,0x4
     9dc:	00c31821 	addu	v1,a2,v1
     9e0:	00031880 	sll	v1,v1,0x2
     9e4:	00621821 	addu	v1,v1,v0
     9e8:	8c630000 	lw	v1,0(v1)
     9ec:	00000000 	sll	zero,zero,0x0
     9f0:	ac83000c 	sw	v1,12(a0)
      statemt[19] = temp;
     9f4:	ac85004c 	sw	a1,76(a0)
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
     9f8:	8c83001c 	lw	v1,28(a0)
     9fc:	00000000 	sll	zero,zero,0x0
     a00:	00032903 	sra	a1,v1,0x4
     a04:	3063000f 	andi	v1,v1,0xf
     a08:	00052900 	sll	a1,a1,0x4
     a0c:	00a31821 	addu	v1,a1,v1
     a10:	00031880 	sll	v1,v1,0x2
     a14:	00621821 	addu	v1,v1,v0
     a18:	8c650000 	lw	a1,0(v1)
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
     a1c:	8c83005c 	lw	v1,92(a0)
     a20:	00000000 	sll	zero,zero,0x0
     a24:	00033103 	sra	a2,v1,0x4
     a28:	3063000f 	andi	v1,v1,0xf
     a2c:	00063100 	sll	a2,a2,0x4
     a30:	00c31821 	addu	v1,a2,v1
     a34:	00031880 	sll	v1,v1,0x2
     a38:	00621821 	addu	v1,v1,v0
     a3c:	8c630000 	lw	v1,0(v1)
     a40:	00000000 	sll	zero,zero,0x0
     a44:	ac83001c 	sw	v1,28(a0)
      statemt[23] = temp;
     a48:	ac85005c 	sw	a1,92(a0)
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
     a4c:	8c83002c 	lw	v1,44(a0)
     a50:	00000000 	sll	zero,zero,0x0
     a54:	00032903 	sra	a1,v1,0x4
     a58:	3063000f 	andi	v1,v1,0xf
     a5c:	00052900 	sll	a1,a1,0x4
     a60:	00a31821 	addu	v1,a1,v1
     a64:	00031880 	sll	v1,v1,0x2
     a68:	00621821 	addu	v1,v1,v0
     a6c:	8c650000 	lw	a1,0(v1)
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
     a70:	8c83006c 	lw	v1,108(a0)
     a74:	00000000 	sll	zero,zero,0x0
     a78:	00033103 	sra	a2,v1,0x4
     a7c:	3063000f 	andi	v1,v1,0xf
     a80:	00063100 	sll	a2,a2,0x4
     a84:	00c31821 	addu	v1,a2,v1
     a88:	00031880 	sll	v1,v1,0x2
     a8c:	00621821 	addu	v1,v1,v0
     a90:	8c630000 	lw	v1,0(v1)
     a94:	00000000 	sll	zero,zero,0x0
     a98:	ac83002c 	sw	v1,44(a0)
      statemt[27] = temp;
     a9c:	ac85006c 	sw	a1,108(a0)
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
     aa0:	8c83003c 	lw	v1,60(a0)
     aa4:	00000000 	sll	zero,zero,0x0
     aa8:	00032903 	sra	a1,v1,0x4
     aac:	3063000f 	andi	v1,v1,0xf
     ab0:	00052900 	sll	a1,a1,0x4
     ab4:	00a31821 	addu	v1,a1,v1
     ab8:	00031880 	sll	v1,v1,0x2
     abc:	00621821 	addu	v1,v1,v0
     ac0:	8c650000 	lw	a1,0(v1)
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
     ac4:	8c83007c 	lw	v1,124(a0)
     ac8:	00000000 	sll	zero,zero,0x0
     acc:	00033103 	sra	a2,v1,0x4
     ad0:	3063000f 	andi	v1,v1,0xf
     ad4:	00063100 	sll	a2,a2,0x4
     ad8:	00c31821 	addu	v1,a2,v1
     adc:	00031880 	sll	v1,v1,0x2
     ae0:	00621821 	addu	v1,v1,v0
     ae4:	8c630000 	lw	v1,0(v1)
     ae8:	00000000 	sll	zero,zero,0x0
     aec:	ac83003c 	sw	v1,60(a0)
      statemt[31] = temp;
     af0:	ac85007c 	sw	a1,124(a0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
     af4:	8c830000 	lw	v1,0(a0)
     af8:	00000000 	sll	zero,zero,0x0
     afc:	00032903 	sra	a1,v1,0x4
     b00:	3063000f 	andi	v1,v1,0xf
     b04:	00052900 	sll	a1,a1,0x4
     b08:	00a31821 	addu	v1,a1,v1
     b0c:	00031880 	sll	v1,v1,0x2
     b10:	00621821 	addu	v1,v1,v0
     b14:	8c630000 	lw	v1,0(v1)
     b18:	00000000 	sll	zero,zero,0x0
     b1c:	ac830000 	sw	v1,0(a0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
     b20:	8c830010 	lw	v1,16(a0)
     b24:	00000000 	sll	zero,zero,0x0
     b28:	00032903 	sra	a1,v1,0x4
     b2c:	3063000f 	andi	v1,v1,0xf
     b30:	00052900 	sll	a1,a1,0x4
     b34:	00a31821 	addu	v1,a1,v1
     b38:	00031880 	sll	v1,v1,0x2
     b3c:	00621821 	addu	v1,v1,v0
     b40:	8c630000 	lw	v1,0(v1)
     b44:	00000000 	sll	zero,zero,0x0
     b48:	ac830010 	sw	v1,16(a0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
     b4c:	8c830020 	lw	v1,32(a0)
     b50:	00000000 	sll	zero,zero,0x0
     b54:	00032903 	sra	a1,v1,0x4
     b58:	3063000f 	andi	v1,v1,0xf
     b5c:	00052900 	sll	a1,a1,0x4
     b60:	00a31821 	addu	v1,a1,v1
     b64:	00031880 	sll	v1,v1,0x2
     b68:	00621821 	addu	v1,v1,v0
     b6c:	8c630000 	lw	v1,0(v1)
     b70:	00000000 	sll	zero,zero,0x0
     b74:	ac830020 	sw	v1,32(a0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
     b78:	8c830030 	lw	v1,48(a0)
     b7c:	00000000 	sll	zero,zero,0x0
     b80:	00032903 	sra	a1,v1,0x4
     b84:	3063000f 	andi	v1,v1,0xf
     b88:	00052900 	sll	a1,a1,0x4
     b8c:	00a31821 	addu	v1,a1,v1
     b90:	00031880 	sll	v1,v1,0x2
     b94:	00621821 	addu	v1,v1,v0
     b98:	8c630000 	lw	v1,0(v1)
     b9c:	00000000 	sll	zero,zero,0x0
     ba0:	ac830030 	sw	v1,48(a0)
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
     ba4:	8c830040 	lw	v1,64(a0)
     ba8:	00000000 	sll	zero,zero,0x0
     bac:	00032903 	sra	a1,v1,0x4
     bb0:	3063000f 	andi	v1,v1,0xf
     bb4:	00052900 	sll	a1,a1,0x4
     bb8:	00a31821 	addu	v1,a1,v1
     bbc:	00031880 	sll	v1,v1,0x2
     bc0:	00621821 	addu	v1,v1,v0
     bc4:	8c630000 	lw	v1,0(v1)
     bc8:	00000000 	sll	zero,zero,0x0
     bcc:	ac830040 	sw	v1,64(a0)
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
     bd0:	8c830050 	lw	v1,80(a0)
     bd4:	00000000 	sll	zero,zero,0x0
     bd8:	00032903 	sra	a1,v1,0x4
     bdc:	3063000f 	andi	v1,v1,0xf
     be0:	00052900 	sll	a1,a1,0x4
     be4:	00a31821 	addu	v1,a1,v1
     be8:	00031880 	sll	v1,v1,0x2
     bec:	00621821 	addu	v1,v1,v0
     bf0:	8c630000 	lw	v1,0(v1)
     bf4:	00000000 	sll	zero,zero,0x0
     bf8:	ac830050 	sw	v1,80(a0)
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
     bfc:	8c830060 	lw	v1,96(a0)
     c00:	00000000 	sll	zero,zero,0x0
     c04:	00032903 	sra	a1,v1,0x4
     c08:	3063000f 	andi	v1,v1,0xf
     c0c:	00052900 	sll	a1,a1,0x4
     c10:	00a31821 	addu	v1,a1,v1
     c14:	00031880 	sll	v1,v1,0x2
     c18:	00621821 	addu	v1,v1,v0
     c1c:	8c630000 	lw	v1,0(v1)
     c20:	00000000 	sll	zero,zero,0x0
     c24:	ac830060 	sw	v1,96(a0)
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
     c28:	8c830070 	lw	v1,112(a0)
     c2c:	00000000 	sll	zero,zero,0x0
     c30:	00032903 	sra	a1,v1,0x4
     c34:	3063000f 	andi	v1,v1,0xf
     c38:	00052900 	sll	a1,a1,0x4
     c3c:	00a31821 	addu	v1,a1,v1
     c40:	00031880 	sll	v1,v1,0x2
     c44:	00621021 	addu	v0,v1,v0
     c48:	8c420000 	lw	v0,0(v0)
     c4c:	00000000 	sll	zero,zero,0x0
     c50:	ac820070 	sw	v0,112(a0)
     c54:	03e00008 	jr	ra
     c58:	00000000 	sll	zero,zero,0x0

00000c5c <SubByte>:
}

int
SubByte (int in)
{
  return Sbox[(in / 16)][(in % 16)];
     c5c:	04810002 	bgez	a0,c68 <SubByte+0xc>
     c60:	00801021 	addu	v0,a0,zero
     c64:	2482000f 	addiu	v0,a0,15
     c68:	3c038000 	lui	v1,0x8000
     c6c:	2463000f 	addiu	v1,v1,15
     c70:	00832024 	and	a0,a0,v1
     c74:	04810005 	bgez	a0,c8c <SubByte+0x30>
     c78:	00021103 	sra	v0,v0,0x4
     c7c:	2484ffff 	addiu	a0,a0,-1
     c80:	2403fff0 	addiu	v1,zero,-16
     c84:	00832025 	or	a0,a0,v1
     c88:	24840001 	addiu	a0,a0,1
     c8c:	00021100 	sll	v0,v0,0x4
     c90:	00442021 	addu	a0,v0,a0
     c94:	00042080 	sll	a0,a0,0x2
     c98:	3c030000 	lui	v1,0x0
     c9c:	24630000 	addiu	v1,v1,0
     ca0:	00832021 	addu	a0,a0,v1
}
     ca4:	8c820000 	lw	v0,0(a0)
     ca8:	03e00008 	jr	ra
     cac:	00000000 	sll	zero,zero,0x0

00000cb0 <KeySchedule>:
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
{
     cb0:	27bdffb8 	addiu	sp,sp,-72
     cb4:	afbf0044 	sw	ra,68(sp)
     cb8:	afbe0040 	sw	s8,64(sp)
     cbc:	afb7003c 	sw	s7,60(sp)
     cc0:	afb60038 	sw	s6,56(sp)
     cc4:	afb50034 	sw	s5,52(sp)
     cc8:	afb40030 	sw	s4,48(sp)
     ccc:	afb3002c 	sw	s3,44(sp)
     cd0:	afb20028 	sw	s2,40(sp)
     cd4:	afb10024 	sw	s1,36(sp)
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
     cd8:	3c020002 	lui	v0,0x2
     cdc:	3442eec0 	ori	v0,v0,0xeec0
     ce0:	10820036 	beq	a0,v0,dbc <KeySchedule+0x10c>
     ce4:	afb00020 	sw	s0,32(sp)
     ce8:	3c020002 	lui	v0,0x2
     cec:	3442eec1 	ori	v0,v0,0xeec1
     cf0:	0082102a 	slt	v0,a0,v0
     cf4:	10400018 	beqz	v0,d58 <KeySchedule+0xa8>
     cf8:	3c020003 	lui	v0,0x3
     cfc:	3c020001 	lui	v0,0x1
     d00:	3442f4c0 	ori	v0,v0,0xf4c0
     d04:	108200bb 	beq	a0,v0,ff4 <KeySchedule+0x344>
     d08:	24090006 	addiu	t1,zero,6
     d0c:	3c020001 	lui	v0,0x1
     d10:	3442f4c1 	ori	v0,v0,0xf4c1
     d14:	0082102a 	slt	v0,a0,v0
     d18:	10400006 	beqz	v0,d34 <KeySchedule+0x84>
     d1c:	3c020001 	lui	v0,0x1
     d20:	3442f480 	ori	v0,v0,0xf480
     d24:	148200a4 	bne	a0,v0,fb8 <KeySchedule+0x308>
     d28:	2416000a 	addiu	s6,zero,10
    {
    case 128128:
      nk = 4;
      nb = 4;
     d2c:	08000403 	j	100c <KeySchedule+0x35c>
     d30:	24090004 	addiu	t1,zero,4
KeySchedule (int type, int key[32])
{
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
     d34:	3442f500 	ori	v0,v0,0xf500
     d38:	108200b1 	beq	a0,v0,1000 <KeySchedule+0x350>
     d3c:	2416000e 	addiu	s6,zero,14
     d40:	3c020002 	lui	v0,0x2
     d44:	3442ee80 	ori	v0,v0,0xee80
     d48:	1482009b 	bne	a0,v0,fb8 <KeySchedule+0x308>
     d4c:	2416000c 	addiu	s6,zero,12
      nb = 8;
      round = 14;
      break;
    case 192128:
      nk = 6;
      nb = 4;
     d50:	0800036d 	j	db4 <KeySchedule+0x104>
     d54:	24090004 	addiu	t1,zero,4
KeySchedule (int type, int key[32])
{
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
     d58:	3442e880 	ori	v0,v0,0xe880
     d5c:	1082001d 	beq	a0,v0,dd4 <KeySchedule+0x124>
     d60:	2416000e 	addiu	s6,zero,14
     d64:	3c020003 	lui	v0,0x3
     d68:	3442e881 	ori	v0,v0,0xe881
     d6c:	0082102a 	slt	v0,a0,v0
     d70:	10400007 	beqz	v0,d90 <KeySchedule+0xe0>
     d74:	3c020003 	lui	v0,0x3
     d78:	3c020002 	lui	v0,0x2
     d7c:	3442ef00 	ori	v0,v0,0xef00
     d80:	1482008d 	bne	a0,v0,fb8 <KeySchedule+0x308>
     d84:	24090008 	addiu	t1,zero,8
     d88:	08000373 	j	dcc <KeySchedule+0x11c>
     d8c:	00000000 	sll	zero,zero,0x0
     d90:	3442e8c0 	ori	v0,v0,0xe8c0
     d94:	10820012 	beq	a0,v0,de0 <KeySchedule+0x130>
     d98:	2416000e 	addiu	s6,zero,14
     d9c:	3c020003 	lui	v0,0x3
     da0:	3442e900 	ori	v0,v0,0xe900
     da4:	14820084 	bne	a0,v0,fb8 <KeySchedule+0x308>
     da8:	24090008 	addiu	t1,zero,8
     dac:	0800037b 	j	dec <KeySchedule+0x13c>
     db0:	00000000 	sll	zero,zero,0x0
      break;
    case 192128:
      nk = 6;
      nb = 4;
      round = 12;
      break;
     db4:	08000404 	j	1010 <KeySchedule+0x360>
     db8:	24140006 	addiu	s4,zero,6
    case 192192:
      nk = 6;
      nb = 6;
      round = 12;
     dbc:	2416000c 	addiu	s6,zero,12
      nb = 4;
      round = 12;
      break;
    case 192192:
      nk = 6;
      nb = 6;
     dc0:	24090006 	addiu	t1,zero,6
      round = 12;
      break;
     dc4:	08000404 	j	1010 <KeySchedule+0x360>
     dc8:	24140006 	addiu	s4,zero,6
    case 192256:
      nk = 6;
      nb = 8;
      round = 14;
      break;
     dcc:	08000404 	j	1010 <KeySchedule+0x360>
     dd0:	24140006 	addiu	s4,zero,6
    case 256128:
      nk = 8;
      nb = 4;
     dd4:	24090004 	addiu	t1,zero,4
      round = 14;
      break;
     dd8:	08000404 	j	1010 <KeySchedule+0x360>
     ddc:	24140008 	addiu	s4,zero,8
    case 256192:
      nk = 8;
      nb = 6;
     de0:	24090006 	addiu	t1,zero,6
      round = 14;
      break;
     de4:	08000404 	j	1010 <KeySchedule+0x360>
     de8:	24140008 	addiu	s4,zero,8
    case 256256:
      nk = 8;
      nb = 8;
      round = 14;
      break;
     dec:	08000404 	j	1010 <KeySchedule+0x360>
     df0:	24140008 	addiu	s4,zero,8
      return -1;
    }
  for (j = 0; j < nk; ++j)
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];
     df4:	8c660000 	lw	a2,0(v1)
     df8:	00000000 	sll	zero,zero,0x0
     dfc:	ac860000 	sw	a2,0(a0)
     e00:	2442ffff 	addiu	v0,v0,-1
     e04:	24630004 	addiu	v1,v1,4
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
    for (i = 0; i < 4; ++i)
     e08:	1440fffa 	bnez	v0,df4 <KeySchedule+0x144>
     e0c:	248401e0 	addiu	a0,a0,480
      round = 14;
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
     e10:	24e70001 	addiu	a3,a3,1
     e14:	00f4102a 	slt	v0,a3,s4
     e18:	10400006 	beqz	v0,e34 <KeySchedule+0x184>
     e1c:	24a50010 	addiu	a1,a1,16
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
     e20:	00072080 	sll	a0,a3,0x2
     e24:	01042021 	addu	a0,t0,a0
     e28:	00a01821 	addu	v1,a1,zero
     e2c:	0800037d 	j	df4 <KeySchedule+0x144>
     e30:	24020004 	addiu	v0,zero,4
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];

/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
     e34:	26d60001 	addiu	s6,s6,1
     e38:	01360018 	mult	t1,s6
     e3c:	0000b012 	mflo	s6
     e40:	0296102a 	slt	v0,s4,s6
     e44:	1040005e 	beqz	v0,fc0 <KeySchedule+0x310>
     e48:	26820077 	addiu	v0,s4,119
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
     e4c:	00021080 	sll	v0,v0,0x2
     e50:	3c110000 	lui	s1,0x0
     e54:	26310000 	addiu	s1,s1,0
     e58:	02228821 	addu	s1,s1,v0
     e5c:	02809021 	addu	s2,s4,zero
     e60:	0000a821 	addu	s5,zero,zero
    {

/* RotByte */
      if ((j % nk) == 0)
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     e64:	3c1e0000 	lui	s8,0x0
     e68:	27de0000 	addiu	s8,s8,0
	  temp[0] = word[0][j - 1];
	  temp[1] = word[1][j - 1];
	  temp[2] = word[2][j - 1];
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
     e6c:	2a970007 	slti	s7,s4,7
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
     e70:	27b30020 	addiu	s3,sp,32
/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
    {

/* RotByte */
      if ((j % nk) == 0)
     e74:	16800002 	bnez	s4,e80 <KeySchedule+0x1d0>
     e78:	0254001a 	div	zero,s2,s4
     e7c:	0007000d 	break	0x7
     e80:	00008010 	mfhi	s0
     e84:	1600001c 	bnez	s0,ef8 <KeySchedule+0x248>
     e88:	00000000 	sll	zero,zero,0x0
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     e8c:	8e240000 	lw	a0,0(s1)
     e90:	0c000000 	jal	0 <ByteSub_ShiftRow>
     e94:	00000000 	sll	zero,zero,0x0
     e98:	16800002 	bnez	s4,ea4 <KeySchedule+0x1f4>
     e9c:	0254001a 	div	zero,s2,s4
     ea0:	0007000d 	break	0x7
     ea4:	00002012 	mflo	a0
     ea8:	2483ffff 	addiu	v1,a0,-1
     eac:	00031880 	sll	v1,v1,0x2
     eb0:	007e1821 	addu	v1,v1,s8
     eb4:	8c630000 	lw	v1,0(v1)
     eb8:	00000000 	sll	zero,zero,0x0
     ebc:	00431026 	xor	v0,v0,v1
     ec0:	afa20010 	sw	v0,16(sp)
	  temp[1] = SubByte (word[2][j - 1]);
     ec4:	8e2401e0 	lw	a0,480(s1)
     ec8:	0c000000 	jal	0 <ByteSub_ShiftRow>
     ecc:	00000000 	sll	zero,zero,0x0
     ed0:	afa20014 	sw	v0,20(sp)
	  temp[2] = SubByte (word[3][j - 1]);
     ed4:	8e2403c0 	lw	a0,960(s1)
     ed8:	0c000000 	jal	0 <ByteSub_ShiftRow>
     edc:	00000000 	sll	zero,zero,0x0
     ee0:	afa20018 	sw	v0,24(sp)
	  temp[3] = SubByte (word[0][j - 1]);
     ee4:	8e24fe20 	lw	a0,-480(s1)
     ee8:	0c000000 	jal	0 <ByteSub_ShiftRow>
     eec:	00000000 	sll	zero,zero,0x0
     ef0:	080003ca 	j	f28 <KeySchedule+0x278>
     ef4:	afa2001c 	sw	v0,28(sp)
	}
      if ((j % nk) != 0)
	{
	  temp[0] = word[0][j - 1];
     ef8:	8e22fe20 	lw	v0,-480(s1)
     efc:	00000000 	sll	zero,zero,0x0
     f00:	afa20010 	sw	v0,16(sp)
	  temp[1] = word[1][j - 1];
     f04:	8e220000 	lw	v0,0(s1)
     f08:	00000000 	sll	zero,zero,0x0
     f0c:	afa20014 	sw	v0,20(sp)
	  temp[2] = word[2][j - 1];
     f10:	8e2201e0 	lw	v0,480(s1)
     f14:	00000000 	sll	zero,zero,0x0
     f18:	afa20018 	sw	v0,24(sp)
	  temp[3] = word[3][j - 1];
     f1c:	8e2203c0 	lw	v0,960(s1)
     f20:	00000000 	sll	zero,zero,0x0
     f24:	afa2001c 	sw	v0,28(sp)
	}
      if (nk > 6 && j % nk == 4)
     f28:	16e0000c 	bnez	s7,f5c <KeySchedule+0x2ac>
     f2c:	00152080 	sll	a0,s5,0x2
     f30:	24050004 	addiu	a1,zero,4
     f34:	1605000a 	bne	s0,a1,f60 <KeySchedule+0x2b0>
     f38:	3c020000 	lui	v0,0x0
     f3c:	27b00010 	addiu	s0,sp,16
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
     f40:	8e040000 	lw	a0,0(s0)
     f44:	0c000000 	jal	0 <ByteSub_ShiftRow>
     f48:	00000000 	sll	zero,zero,0x0
     f4c:	ae020000 	sw	v0,0(s0)
     f50:	26100004 	addiu	s0,s0,4
	  temp[1] = word[1][j - 1];
	  temp[2] = word[2][j - 1];
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
     f54:	1613fffa 	bne	s0,s3,f40 <KeySchedule+0x290>
     f58:	00152080 	sll	a0,s5,0x2
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
     f5c:	3c020000 	lui	v0,0x0
     f60:	24420000 	addiu	v0,v0,0
     f64:	00442021 	addu	a0,v0,a0
	  temp[1] = word[1][j - 1];
	  temp[2] = word[2][j - 1];
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
     f68:	27a20010 	addiu	v0,sp,16
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
     f6c:	00121880 	sll	v1,s2,0x2
     f70:	3c050000 	lui	a1,0x0
     f74:	24a50000 	addiu	a1,a1,0
     f78:	00a31821 	addu	v1,a1,v1
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
     f7c:	8c460000 	lw	a2,0(v0)
     f80:	8c850000 	lw	a1,0(a0)
     f84:	00000000 	sll	zero,zero,0x0
     f88:	00c52826 	xor	a1,a2,a1
     f8c:	ac650000 	sw	a1,0(v1)
     f90:	248401e0 	addiu	a0,a0,480
     f94:	24420004 	addiu	v0,v0,4
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
     f98:	1453fff8 	bne	v0,s3,f7c <KeySchedule+0x2cc>
     f9c:	246301e0 	addiu	v1,v1,480
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];

/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
     fa0:	26520001 	addiu	s2,s2,1
     fa4:	26b50001 	addiu	s5,s5,1
     fa8:	1656ffb2 	bne	s2,s6,e74 <KeySchedule+0x1c4>
     fac:	26310004 	addiu	s1,s1,4
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
    }
  return 0;
     fb0:	080003f1 	j	fc4 <KeySchedule+0x314>
     fb4:	00001021 	addu	v0,zero,zero
      nk = 8;
      nb = 8;
      round = 14;
      break;
    default:
      return -1;
     fb8:	080003f1 	j	fc4 <KeySchedule+0x314>
     fbc:	2402ffff 	addiu	v0,zero,-1
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
    }
  return 0;
     fc0:	00001021 	addu	v0,zero,zero
}
     fc4:	8fbf0044 	lw	ra,68(sp)
     fc8:	8fbe0040 	lw	s8,64(sp)
     fcc:	8fb7003c 	lw	s7,60(sp)
     fd0:	8fb60038 	lw	s6,56(sp)
     fd4:	8fb50034 	lw	s5,52(sp)
     fd8:	8fb40030 	lw	s4,48(sp)
     fdc:	8fb3002c 	lw	s3,44(sp)
     fe0:	8fb20028 	lw	s2,40(sp)
     fe4:	8fb10024 	lw	s1,36(sp)
     fe8:	8fb00020 	lw	s0,32(sp)
     fec:	03e00008 	jr	ra
     ff0:	27bd0048 	addiu	sp,sp,72
      round = 10;
      break;
    case 128192:
      nk = 4;
      nb = 6;
      round = 12;
     ff4:	2416000c 	addiu	s6,zero,12
      nk = 4;
      nb = 4;
      round = 10;
      break;
    case 128192:
      nk = 4;
     ff8:	08000404 	j	1010 <KeySchedule+0x360>
     ffc:	24140004 	addiu	s4,zero,4
      nb = 6;
      round = 12;
      break;
    case 128256:
      nk = 4;
      nb = 8;
    1000:	24090008 	addiu	t1,zero,8
      nk = 4;
      nb = 6;
      round = 12;
      break;
    case 128256:
      nk = 4;
    1004:	08000404 	j	1010 <KeySchedule+0x360>
    1008:	24140004 	addiu	s4,zero,4
  int i, j, temp[4];

  switch (type)
    {
    case 128128:
      nk = 4;
    100c:	24140004 	addiu	s4,zero,4
  0xc5, 0x91,
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
    1010:	00003821 	addu	a3,zero,zero
    1014:	3c080000 	lui	t0,0x0
    1018:	08000388 	j	e20 <KeySchedule+0x170>
    101c:	25080000 	addiu	t0,t0,0

00001020 <InversShiftRow_ByteSub>:
void
InversShiftRow_ByteSub (int statemt[32], int nb)
{
  int temp;

  switch (nb)
    1020:	24020006 	addiu	v0,zero,6
    1024:	10a200b3 	beq	a1,v0,12f4 <InversShiftRow_ByteSub+0x2d4>
    1028:	24020008 	addiu	v0,zero,8
    102c:	10a201b5 	beq	a1,v0,1704 <InversShiftRow_ByteSub+0x6e4>
    1030:	24020004 	addiu	v0,zero,4
    1034:	14a2030f 	bne	a1,v0,1c74 <InversShiftRow_ByteSub+0xc54>
    1038:	00000000 	sll	zero,zero,0x0
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    103c:	8c820034 	lw	v0,52(a0)
    1040:	00000000 	sll	zero,zero,0x0
    1044:	00021903 	sra	v1,v0,0x4
    1048:	3042000f 	andi	v0,v0,0xf
    104c:	00031900 	sll	v1,v1,0x4
    1050:	00621821 	addu	v1,v1,v0
    1054:	00031880 	sll	v1,v1,0x2
    1058:	3c020000 	lui	v0,0x0
    105c:	24420000 	addiu	v0,v0,0
    1060:	00621821 	addu	v1,v1,v0
    1064:	8c650000 	lw	a1,0(v1)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1068:	8c830024 	lw	v1,36(a0)
    106c:	00000000 	sll	zero,zero,0x0
    1070:	00033103 	sra	a2,v1,0x4
    1074:	3063000f 	andi	v1,v1,0xf
    1078:	00063100 	sll	a2,a2,0x4
    107c:	00c31821 	addu	v1,a2,v1
    1080:	00031880 	sll	v1,v1,0x2
    1084:	00621821 	addu	v1,v1,v0
    1088:	8c630000 	lw	v1,0(v1)
    108c:	00000000 	sll	zero,zero,0x0
    1090:	ac830034 	sw	v1,52(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    1094:	8c830014 	lw	v1,20(a0)
    1098:	00000000 	sll	zero,zero,0x0
    109c:	00033103 	sra	a2,v1,0x4
    10a0:	3063000f 	andi	v1,v1,0xf
    10a4:	00063100 	sll	a2,a2,0x4
    10a8:	00c31821 	addu	v1,a2,v1
    10ac:	00031880 	sll	v1,v1,0x2
    10b0:	00621821 	addu	v1,v1,v0
    10b4:	8c630000 	lw	v1,0(v1)
    10b8:	00000000 	sll	zero,zero,0x0
    10bc:	ac830024 	sw	v1,36(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    10c0:	8c830004 	lw	v1,4(a0)
    10c4:	00000000 	sll	zero,zero,0x0
    10c8:	00033103 	sra	a2,v1,0x4
    10cc:	3063000f 	andi	v1,v1,0xf
    10d0:	00063100 	sll	a2,a2,0x4
    10d4:	00c31821 	addu	v1,a2,v1
    10d8:	00031880 	sll	v1,v1,0x2
    10dc:	00621821 	addu	v1,v1,v0
    10e0:	8c630000 	lw	v1,0(v1)
    10e4:	00000000 	sll	zero,zero,0x0
    10e8:	ac830014 	sw	v1,20(a0)
      statemt[1] = temp;
    10ec:	ac850004 	sw	a1,4(a0)

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    10f0:	8c830038 	lw	v1,56(a0)
    10f4:	00000000 	sll	zero,zero,0x0
    10f8:	00032903 	sra	a1,v1,0x4
    10fc:	3063000f 	andi	v1,v1,0xf
    1100:	00052900 	sll	a1,a1,0x4
    1104:	00a31821 	addu	v1,a1,v1
    1108:	00031880 	sll	v1,v1,0x2
    110c:	00621821 	addu	v1,v1,v0
    1110:	8c650000 	lw	a1,0(v1)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1114:	8c830018 	lw	v1,24(a0)
    1118:	00000000 	sll	zero,zero,0x0
    111c:	00033103 	sra	a2,v1,0x4
    1120:	3063000f 	andi	v1,v1,0xf
    1124:	00063100 	sll	a2,a2,0x4
    1128:	00c31821 	addu	v1,a2,v1
    112c:	00031880 	sll	v1,v1,0x2
    1130:	00621821 	addu	v1,v1,v0
    1134:	8c630000 	lw	v1,0(v1)
    1138:	00000000 	sll	zero,zero,0x0
    113c:	ac830038 	sw	v1,56(a0)
      statemt[6] = temp;
    1140:	ac850018 	sw	a1,24(a0)
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    1144:	8c830008 	lw	v1,8(a0)
    1148:	00000000 	sll	zero,zero,0x0
    114c:	00032903 	sra	a1,v1,0x4
    1150:	3063000f 	andi	v1,v1,0xf
    1154:	00052900 	sll	a1,a1,0x4
    1158:	00a31821 	addu	v1,a1,v1
    115c:	00031880 	sll	v1,v1,0x2
    1160:	00621821 	addu	v1,v1,v0
    1164:	8c650000 	lw	a1,0(v1)
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1168:	8c830028 	lw	v1,40(a0)
    116c:	00000000 	sll	zero,zero,0x0
    1170:	00033103 	sra	a2,v1,0x4
    1174:	3063000f 	andi	v1,v1,0xf
    1178:	00063100 	sll	a2,a2,0x4
    117c:	00c31821 	addu	v1,a2,v1
    1180:	00031880 	sll	v1,v1,0x2
    1184:	00621821 	addu	v1,v1,v0
    1188:	8c630000 	lw	v1,0(v1)
    118c:	00000000 	sll	zero,zero,0x0
    1190:	ac830008 	sw	v1,8(a0)
      statemt[10] = temp;
    1194:	ac850028 	sw	a1,40(a0)

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1198:	8c83003c 	lw	v1,60(a0)
    119c:	00000000 	sll	zero,zero,0x0
    11a0:	00032903 	sra	a1,v1,0x4
    11a4:	3063000f 	andi	v1,v1,0xf
    11a8:	00052900 	sll	a1,a1,0x4
    11ac:	00a31821 	addu	v1,a1,v1
    11b0:	00031880 	sll	v1,v1,0x2
    11b4:	00621821 	addu	v1,v1,v0
    11b8:	8c650000 	lw	a1,0(v1)
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    11bc:	8c83000c 	lw	v1,12(a0)
    11c0:	00000000 	sll	zero,zero,0x0
    11c4:	00033103 	sra	a2,v1,0x4
    11c8:	3063000f 	andi	v1,v1,0xf
    11cc:	00063100 	sll	a2,a2,0x4
    11d0:	00c31821 	addu	v1,a2,v1
    11d4:	00031880 	sll	v1,v1,0x2
    11d8:	00621821 	addu	v1,v1,v0
    11dc:	8c630000 	lw	v1,0(v1)
    11e0:	00000000 	sll	zero,zero,0x0
    11e4:	ac83003c 	sw	v1,60(a0)
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    11e8:	8c83001c 	lw	v1,28(a0)
    11ec:	00000000 	sll	zero,zero,0x0
    11f0:	00033103 	sra	a2,v1,0x4
    11f4:	3063000f 	andi	v1,v1,0xf
    11f8:	00063100 	sll	a2,a2,0x4
    11fc:	00c31821 	addu	v1,a2,v1
    1200:	00031880 	sll	v1,v1,0x2
    1204:	00621821 	addu	v1,v1,v0
    1208:	8c630000 	lw	v1,0(v1)
    120c:	00000000 	sll	zero,zero,0x0
    1210:	ac83000c 	sw	v1,12(a0)
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1214:	8c83002c 	lw	v1,44(a0)
    1218:	00000000 	sll	zero,zero,0x0
    121c:	00033103 	sra	a2,v1,0x4
    1220:	3063000f 	andi	v1,v1,0xf
    1224:	00063100 	sll	a2,a2,0x4
    1228:	00c31821 	addu	v1,a2,v1
    122c:	00031880 	sll	v1,v1,0x2
    1230:	00621821 	addu	v1,v1,v0
    1234:	8c630000 	lw	v1,0(v1)
    1238:	00000000 	sll	zero,zero,0x0
    123c:	ac83001c 	sw	v1,28(a0)
      statemt[11] = temp;
    1240:	ac85002c 	sw	a1,44(a0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1244:	8c830000 	lw	v1,0(a0)
    1248:	00000000 	sll	zero,zero,0x0
    124c:	00032903 	sra	a1,v1,0x4
    1250:	3063000f 	andi	v1,v1,0xf
    1254:	00052900 	sll	a1,a1,0x4
    1258:	00a31821 	addu	v1,a1,v1
    125c:	00031880 	sll	v1,v1,0x2
    1260:	00621821 	addu	v1,v1,v0
    1264:	8c630000 	lw	v1,0(v1)
    1268:	00000000 	sll	zero,zero,0x0
    126c:	ac830000 	sw	v1,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1270:	8c830010 	lw	v1,16(a0)
    1274:	00000000 	sll	zero,zero,0x0
    1278:	00032903 	sra	a1,v1,0x4
    127c:	3063000f 	andi	v1,v1,0xf
    1280:	00052900 	sll	a1,a1,0x4
    1284:	00a31821 	addu	v1,a1,v1
    1288:	00031880 	sll	v1,v1,0x2
    128c:	00621821 	addu	v1,v1,v0
    1290:	8c630000 	lw	v1,0(v1)
    1294:	00000000 	sll	zero,zero,0x0
    1298:	ac830010 	sw	v1,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    129c:	8c830020 	lw	v1,32(a0)
    12a0:	00000000 	sll	zero,zero,0x0
    12a4:	00032903 	sra	a1,v1,0x4
    12a8:	3063000f 	andi	v1,v1,0xf
    12ac:	00052900 	sll	a1,a1,0x4
    12b0:	00a31821 	addu	v1,a1,v1
    12b4:	00031880 	sll	v1,v1,0x2
    12b8:	00621821 	addu	v1,v1,v0
    12bc:	8c630000 	lw	v1,0(v1)
    12c0:	00000000 	sll	zero,zero,0x0
    12c4:	ac830020 	sw	v1,32(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    12c8:	8c830030 	lw	v1,48(a0)
    12cc:	00000000 	sll	zero,zero,0x0
    12d0:	00032903 	sra	a1,v1,0x4
    12d4:	3063000f 	andi	v1,v1,0xf
    12d8:	00052900 	sll	a1,a1,0x4
    12dc:	00a31821 	addu	v1,a1,v1
    12e0:	00031880 	sll	v1,v1,0x2
    12e4:	00621021 	addu	v0,v1,v0
    12e8:	8c420000 	lw	v0,0(v0)
      break;
    12ec:	03e00008 	jr	ra
    12f0:	ac820030 	sw	v0,48(a0)
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    12f4:	8c820054 	lw	v0,84(a0)
    12f8:	00000000 	sll	zero,zero,0x0
    12fc:	00021903 	sra	v1,v0,0x4
    1300:	3042000f 	andi	v0,v0,0xf
    1304:	00031900 	sll	v1,v1,0x4
    1308:	00621821 	addu	v1,v1,v0
    130c:	00031880 	sll	v1,v1,0x2
    1310:	3c020000 	lui	v0,0x0
    1314:	24420000 	addiu	v0,v0,0
    1318:	00621821 	addu	v1,v1,v0
    131c:	8c650000 	lw	a1,0(v1)
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1320:	8c830044 	lw	v1,68(a0)
    1324:	00000000 	sll	zero,zero,0x0
    1328:	00033103 	sra	a2,v1,0x4
    132c:	3063000f 	andi	v1,v1,0xf
    1330:	00063100 	sll	a2,a2,0x4
    1334:	00c31821 	addu	v1,a2,v1
    1338:	00031880 	sll	v1,v1,0x2
    133c:	00621821 	addu	v1,v1,v0
    1340:	8c630000 	lw	v1,0(v1)
    1344:	00000000 	sll	zero,zero,0x0
    1348:	ac830054 	sw	v1,84(a0)
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    134c:	8c830034 	lw	v1,52(a0)
    1350:	00000000 	sll	zero,zero,0x0
    1354:	00033103 	sra	a2,v1,0x4
    1358:	3063000f 	andi	v1,v1,0xf
    135c:	00063100 	sll	a2,a2,0x4
    1360:	00c31821 	addu	v1,a2,v1
    1364:	00031880 	sll	v1,v1,0x2
    1368:	00621821 	addu	v1,v1,v0
    136c:	8c630000 	lw	v1,0(v1)
    1370:	00000000 	sll	zero,zero,0x0
    1374:	ac830044 	sw	v1,68(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    1378:	8c830024 	lw	v1,36(a0)
    137c:	00000000 	sll	zero,zero,0x0
    1380:	00033103 	sra	a2,v1,0x4
    1384:	3063000f 	andi	v1,v1,0xf
    1388:	00063100 	sll	a2,a2,0x4
    138c:	00c31821 	addu	v1,a2,v1
    1390:	00031880 	sll	v1,v1,0x2
    1394:	00621821 	addu	v1,v1,v0
    1398:	8c630000 	lw	v1,0(v1)
    139c:	00000000 	sll	zero,zero,0x0
    13a0:	ac830034 	sw	v1,52(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    13a4:	8c830014 	lw	v1,20(a0)
    13a8:	00000000 	sll	zero,zero,0x0
    13ac:	00033103 	sra	a2,v1,0x4
    13b0:	3063000f 	andi	v1,v1,0xf
    13b4:	00063100 	sll	a2,a2,0x4
    13b8:	00c31821 	addu	v1,a2,v1
    13bc:	00031880 	sll	v1,v1,0x2
    13c0:	00621821 	addu	v1,v1,v0
    13c4:	8c630000 	lw	v1,0(v1)
    13c8:	00000000 	sll	zero,zero,0x0
    13cc:	ac830024 	sw	v1,36(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    13d0:	8c830004 	lw	v1,4(a0)
    13d4:	00000000 	sll	zero,zero,0x0
    13d8:	00033103 	sra	a2,v1,0x4
    13dc:	3063000f 	andi	v1,v1,0xf
    13e0:	00063100 	sll	a2,a2,0x4
    13e4:	00c31821 	addu	v1,a2,v1
    13e8:	00031880 	sll	v1,v1,0x2
    13ec:	00621821 	addu	v1,v1,v0
    13f0:	8c630000 	lw	v1,0(v1)
    13f4:	00000000 	sll	zero,zero,0x0
    13f8:	ac830014 	sw	v1,20(a0)
      statemt[1] = temp;
    13fc:	ac850004 	sw	a1,4(a0)

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1400:	8c830058 	lw	v1,88(a0)
    1404:	00000000 	sll	zero,zero,0x0
    1408:	00032903 	sra	a1,v1,0x4
    140c:	3063000f 	andi	v1,v1,0xf
    1410:	00052900 	sll	a1,a1,0x4
    1414:	00a31821 	addu	v1,a1,v1
    1418:	00031880 	sll	v1,v1,0x2
    141c:	00621821 	addu	v1,v1,v0
    1420:	8c650000 	lw	a1,0(v1)
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1424:	8c830038 	lw	v1,56(a0)
    1428:	00000000 	sll	zero,zero,0x0
    142c:	00033103 	sra	a2,v1,0x4
    1430:	3063000f 	andi	v1,v1,0xf
    1434:	00063100 	sll	a2,a2,0x4
    1438:	00c31821 	addu	v1,a2,v1
    143c:	00031880 	sll	v1,v1,0x2
    1440:	00621821 	addu	v1,v1,v0
    1444:	8c630000 	lw	v1,0(v1)
    1448:	00000000 	sll	zero,zero,0x0
    144c:	ac830058 	sw	v1,88(a0)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    1450:	8c830018 	lw	v1,24(a0)
    1454:	00000000 	sll	zero,zero,0x0
    1458:	00033103 	sra	a2,v1,0x4
    145c:	3063000f 	andi	v1,v1,0xf
    1460:	00063100 	sll	a2,a2,0x4
    1464:	00c31821 	addu	v1,a2,v1
    1468:	00031880 	sll	v1,v1,0x2
    146c:	00621821 	addu	v1,v1,v0
    1470:	8c630000 	lw	v1,0(v1)
    1474:	00000000 	sll	zero,zero,0x0
    1478:	ac830038 	sw	v1,56(a0)
      statemt[6] = temp;
    147c:	ac850018 	sw	a1,24(a0)
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    1480:	8c830048 	lw	v1,72(a0)
    1484:	00000000 	sll	zero,zero,0x0
    1488:	00032903 	sra	a1,v1,0x4
    148c:	3063000f 	andi	v1,v1,0xf
    1490:	00052900 	sll	a1,a1,0x4
    1494:	00a31821 	addu	v1,a1,v1
    1498:	00031880 	sll	v1,v1,0x2
    149c:	00621821 	addu	v1,v1,v0
    14a0:	8c650000 	lw	a1,0(v1)
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    14a4:	8c830028 	lw	v1,40(a0)
    14a8:	00000000 	sll	zero,zero,0x0
    14ac:	00033103 	sra	a2,v1,0x4
    14b0:	3063000f 	andi	v1,v1,0xf
    14b4:	00063100 	sll	a2,a2,0x4
    14b8:	00c31821 	addu	v1,a2,v1
    14bc:	00031880 	sll	v1,v1,0x2
    14c0:	00621821 	addu	v1,v1,v0
    14c4:	8c630000 	lw	v1,0(v1)
    14c8:	00000000 	sll	zero,zero,0x0
    14cc:	ac830048 	sw	v1,72(a0)
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    14d0:	8c830008 	lw	v1,8(a0)
    14d4:	00000000 	sll	zero,zero,0x0
    14d8:	00033103 	sra	a2,v1,0x4
    14dc:	3063000f 	andi	v1,v1,0xf
    14e0:	00063100 	sll	a2,a2,0x4
    14e4:	00c31821 	addu	v1,a2,v1
    14e8:	00031880 	sll	v1,v1,0x2
    14ec:	00621821 	addu	v1,v1,v0
    14f0:	8c630000 	lw	v1,0(v1)
    14f4:	00000000 	sll	zero,zero,0x0
    14f8:	ac830028 	sw	v1,40(a0)
      statemt[2] = temp;
    14fc:	ac850008 	sw	a1,8(a0)

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    1500:	8c83003c 	lw	v1,60(a0)
    1504:	00000000 	sll	zero,zero,0x0
    1508:	00032903 	sra	a1,v1,0x4
    150c:	3063000f 	andi	v1,v1,0xf
    1510:	00052900 	sll	a1,a1,0x4
    1514:	00a31821 	addu	v1,a1,v1
    1518:	00031880 	sll	v1,v1,0x2
    151c:	00621821 	addu	v1,v1,v0
    1520:	8c650000 	lw	a1,0(v1)
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1524:	8c83000c 	lw	v1,12(a0)
    1528:	00000000 	sll	zero,zero,0x0
    152c:	00033103 	sra	a2,v1,0x4
    1530:	3063000f 	andi	v1,v1,0xf
    1534:	00063100 	sll	a2,a2,0x4
    1538:	00c31821 	addu	v1,a2,v1
    153c:	00031880 	sll	v1,v1,0x2
    1540:	00621821 	addu	v1,v1,v0
    1544:	8c630000 	lw	v1,0(v1)
    1548:	00000000 	sll	zero,zero,0x0
    154c:	ac83003c 	sw	v1,60(a0)
      statemt[3] = temp;
    1550:	ac85000c 	sw	a1,12(a0)
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1554:	8c83004c 	lw	v1,76(a0)
    1558:	00000000 	sll	zero,zero,0x0
    155c:	00032903 	sra	a1,v1,0x4
    1560:	3063000f 	andi	v1,v1,0xf
    1564:	00052900 	sll	a1,a1,0x4
    1568:	00a31821 	addu	v1,a1,v1
    156c:	00031880 	sll	v1,v1,0x2
    1570:	00621821 	addu	v1,v1,v0
    1574:	8c650000 	lw	a1,0(v1)
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1578:	8c83001c 	lw	v1,28(a0)
    157c:	00000000 	sll	zero,zero,0x0
    1580:	00033103 	sra	a2,v1,0x4
    1584:	3063000f 	andi	v1,v1,0xf
    1588:	00063100 	sll	a2,a2,0x4
    158c:	00c31821 	addu	v1,a2,v1
    1590:	00031880 	sll	v1,v1,0x2
    1594:	00621821 	addu	v1,v1,v0
    1598:	8c630000 	lw	v1,0(v1)
    159c:	00000000 	sll	zero,zero,0x0
    15a0:	ac83004c 	sw	v1,76(a0)
      statemt[7] = temp;
    15a4:	ac85001c 	sw	a1,28(a0)
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    15a8:	8c83005c 	lw	v1,92(a0)
    15ac:	00000000 	sll	zero,zero,0x0
    15b0:	00032903 	sra	a1,v1,0x4
    15b4:	3063000f 	andi	v1,v1,0xf
    15b8:	00052900 	sll	a1,a1,0x4
    15bc:	00a31821 	addu	v1,a1,v1
    15c0:	00031880 	sll	v1,v1,0x2
    15c4:	00621821 	addu	v1,v1,v0
    15c8:	8c650000 	lw	a1,0(v1)
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    15cc:	8c83002c 	lw	v1,44(a0)
    15d0:	00000000 	sll	zero,zero,0x0
    15d4:	00033103 	sra	a2,v1,0x4
    15d8:	3063000f 	andi	v1,v1,0xf
    15dc:	00063100 	sll	a2,a2,0x4
    15e0:	00c31821 	addu	v1,a2,v1
    15e4:	00031880 	sll	v1,v1,0x2
    15e8:	00621821 	addu	v1,v1,v0
    15ec:	8c630000 	lw	v1,0(v1)
    15f0:	00000000 	sll	zero,zero,0x0
    15f4:	ac83005c 	sw	v1,92(a0)
      statemt[11] = temp;
    15f8:	ac85002c 	sw	a1,44(a0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    15fc:	8c830000 	lw	v1,0(a0)
    1600:	00000000 	sll	zero,zero,0x0
    1604:	00032903 	sra	a1,v1,0x4
    1608:	3063000f 	andi	v1,v1,0xf
    160c:	00052900 	sll	a1,a1,0x4
    1610:	00a31821 	addu	v1,a1,v1
    1614:	00031880 	sll	v1,v1,0x2
    1618:	00621821 	addu	v1,v1,v0
    161c:	8c630000 	lw	v1,0(v1)
    1620:	00000000 	sll	zero,zero,0x0
    1624:	ac830000 	sw	v1,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1628:	8c830010 	lw	v1,16(a0)
    162c:	00000000 	sll	zero,zero,0x0
    1630:	00032903 	sra	a1,v1,0x4
    1634:	3063000f 	andi	v1,v1,0xf
    1638:	00052900 	sll	a1,a1,0x4
    163c:	00a31821 	addu	v1,a1,v1
    1640:	00031880 	sll	v1,v1,0x2
    1644:	00621821 	addu	v1,v1,v0
    1648:	8c630000 	lw	v1,0(v1)
    164c:	00000000 	sll	zero,zero,0x0
    1650:	ac830010 	sw	v1,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1654:	8c830020 	lw	v1,32(a0)
    1658:	00000000 	sll	zero,zero,0x0
    165c:	00032903 	sra	a1,v1,0x4
    1660:	3063000f 	andi	v1,v1,0xf
    1664:	00052900 	sll	a1,a1,0x4
    1668:	00a31821 	addu	v1,a1,v1
    166c:	00031880 	sll	v1,v1,0x2
    1670:	00621821 	addu	v1,v1,v0
    1674:	8c630000 	lw	v1,0(v1)
    1678:	00000000 	sll	zero,zero,0x0
    167c:	ac830020 	sw	v1,32(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1680:	8c830030 	lw	v1,48(a0)
    1684:	00000000 	sll	zero,zero,0x0
    1688:	00032903 	sra	a1,v1,0x4
    168c:	3063000f 	andi	v1,v1,0xf
    1690:	00052900 	sll	a1,a1,0x4
    1694:	00a31821 	addu	v1,a1,v1
    1698:	00031880 	sll	v1,v1,0x2
    169c:	00621821 	addu	v1,v1,v0
    16a0:	8c630000 	lw	v1,0(v1)
    16a4:	00000000 	sll	zero,zero,0x0
    16a8:	ac830030 	sw	v1,48(a0)
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    16ac:	8c830040 	lw	v1,64(a0)
    16b0:	00000000 	sll	zero,zero,0x0
    16b4:	00032903 	sra	a1,v1,0x4
    16b8:	3063000f 	andi	v1,v1,0xf
    16bc:	00052900 	sll	a1,a1,0x4
    16c0:	00a31821 	addu	v1,a1,v1
    16c4:	00031880 	sll	v1,v1,0x2
    16c8:	00621821 	addu	v1,v1,v0
    16cc:	8c630000 	lw	v1,0(v1)
    16d0:	00000000 	sll	zero,zero,0x0
    16d4:	ac830040 	sw	v1,64(a0)
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    16d8:	8c830050 	lw	v1,80(a0)
    16dc:	00000000 	sll	zero,zero,0x0
    16e0:	00032903 	sra	a1,v1,0x4
    16e4:	3063000f 	andi	v1,v1,0xf
    16e8:	00052900 	sll	a1,a1,0x4
    16ec:	00a31821 	addu	v1,a1,v1
    16f0:	00031880 	sll	v1,v1,0x2
    16f4:	00621021 	addu	v0,v1,v0
    16f8:	8c420000 	lw	v0,0(v0)
      break;
    16fc:	03e00008 	jr	ra
    1700:	ac820050 	sw	v0,80(a0)
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    1704:	8c820074 	lw	v0,116(a0)
    1708:	00000000 	sll	zero,zero,0x0
    170c:	00021903 	sra	v1,v0,0x4
    1710:	3042000f 	andi	v0,v0,0xf
    1714:	00031900 	sll	v1,v1,0x4
    1718:	00621821 	addu	v1,v1,v0
    171c:	00031880 	sll	v1,v1,0x2
    1720:	3c020000 	lui	v0,0x0
    1724:	24420000 	addiu	v0,v0,0
    1728:	00621821 	addu	v1,v1,v0
    172c:	8c650000 	lw	a1,0(v1)
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    1730:	8c830064 	lw	v1,100(a0)
    1734:	00000000 	sll	zero,zero,0x0
    1738:	00033103 	sra	a2,v1,0x4
    173c:	3063000f 	andi	v1,v1,0xf
    1740:	00063100 	sll	a2,a2,0x4
    1744:	00c31821 	addu	v1,a2,v1
    1748:	00031880 	sll	v1,v1,0x2
    174c:	00621821 	addu	v1,v1,v0
    1750:	8c630000 	lw	v1,0(v1)
    1754:	00000000 	sll	zero,zero,0x0
    1758:	ac830074 	sw	v1,116(a0)
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    175c:	8c830054 	lw	v1,84(a0)
    1760:	00000000 	sll	zero,zero,0x0
    1764:	00033103 	sra	a2,v1,0x4
    1768:	3063000f 	andi	v1,v1,0xf
    176c:	00063100 	sll	a2,a2,0x4
    1770:	00c31821 	addu	v1,a2,v1
    1774:	00031880 	sll	v1,v1,0x2
    1778:	00621821 	addu	v1,v1,v0
    177c:	8c630000 	lw	v1,0(v1)
    1780:	00000000 	sll	zero,zero,0x0
    1784:	ac830064 	sw	v1,100(a0)
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    1788:	8c830044 	lw	v1,68(a0)
    178c:	00000000 	sll	zero,zero,0x0
    1790:	00033103 	sra	a2,v1,0x4
    1794:	3063000f 	andi	v1,v1,0xf
    1798:	00063100 	sll	a2,a2,0x4
    179c:	00c31821 	addu	v1,a2,v1
    17a0:	00031880 	sll	v1,v1,0x2
    17a4:	00621821 	addu	v1,v1,v0
    17a8:	8c630000 	lw	v1,0(v1)
    17ac:	00000000 	sll	zero,zero,0x0
    17b0:	ac830054 	sw	v1,84(a0)
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    17b4:	8c830034 	lw	v1,52(a0)
    17b8:	00000000 	sll	zero,zero,0x0
    17bc:	00033103 	sra	a2,v1,0x4
    17c0:	3063000f 	andi	v1,v1,0xf
    17c4:	00063100 	sll	a2,a2,0x4
    17c8:	00c31821 	addu	v1,a2,v1
    17cc:	00031880 	sll	v1,v1,0x2
    17d0:	00621821 	addu	v1,v1,v0
    17d4:	8c630000 	lw	v1,0(v1)
    17d8:	00000000 	sll	zero,zero,0x0
    17dc:	ac830044 	sw	v1,68(a0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    17e0:	8c830024 	lw	v1,36(a0)
    17e4:	00000000 	sll	zero,zero,0x0
    17e8:	00033103 	sra	a2,v1,0x4
    17ec:	3063000f 	andi	v1,v1,0xf
    17f0:	00063100 	sll	a2,a2,0x4
    17f4:	00c31821 	addu	v1,a2,v1
    17f8:	00031880 	sll	v1,v1,0x2
    17fc:	00621821 	addu	v1,v1,v0
    1800:	8c630000 	lw	v1,0(v1)
    1804:	00000000 	sll	zero,zero,0x0
    1808:	ac830034 	sw	v1,52(a0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    180c:	8c830014 	lw	v1,20(a0)
    1810:	00000000 	sll	zero,zero,0x0
    1814:	00033103 	sra	a2,v1,0x4
    1818:	3063000f 	andi	v1,v1,0xf
    181c:	00063100 	sll	a2,a2,0x4
    1820:	00c31821 	addu	v1,a2,v1
    1824:	00031880 	sll	v1,v1,0x2
    1828:	00621821 	addu	v1,v1,v0
    182c:	8c630000 	lw	v1,0(v1)
    1830:	00000000 	sll	zero,zero,0x0
    1834:	ac830024 	sw	v1,36(a0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    1838:	8c830004 	lw	v1,4(a0)
    183c:	00000000 	sll	zero,zero,0x0
    1840:	00033103 	sra	a2,v1,0x4
    1844:	3063000f 	andi	v1,v1,0xf
    1848:	00063100 	sll	a2,a2,0x4
    184c:	00c31821 	addu	v1,a2,v1
    1850:	00031880 	sll	v1,v1,0x2
    1854:	00621821 	addu	v1,v1,v0
    1858:	8c630000 	lw	v1,0(v1)
    185c:	00000000 	sll	zero,zero,0x0
    1860:	ac830014 	sw	v1,20(a0)
      statemt[1] = temp;
    1864:	ac850004 	sw	a1,4(a0)

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    1868:	8c830078 	lw	v1,120(a0)
    186c:	00000000 	sll	zero,zero,0x0
    1870:	00032903 	sra	a1,v1,0x4
    1874:	3063000f 	andi	v1,v1,0xf
    1878:	00052900 	sll	a1,a1,0x4
    187c:	00a31821 	addu	v1,a1,v1
    1880:	00031880 	sll	v1,v1,0x2
    1884:	00621821 	addu	v1,v1,v0
    1888:	8c650000 	lw	a1,0(v1)
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    188c:	8c830048 	lw	v1,72(a0)
    1890:	00000000 	sll	zero,zero,0x0
    1894:	00033103 	sra	a2,v1,0x4
    1898:	3063000f 	andi	v1,v1,0xf
    189c:	00063100 	sll	a2,a2,0x4
    18a0:	00c31821 	addu	v1,a2,v1
    18a4:	00031880 	sll	v1,v1,0x2
    18a8:	00621821 	addu	v1,v1,v0
    18ac:	8c630000 	lw	v1,0(v1)
    18b0:	00000000 	sll	zero,zero,0x0
    18b4:	ac830078 	sw	v1,120(a0)
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    18b8:	8c830018 	lw	v1,24(a0)
    18bc:	00000000 	sll	zero,zero,0x0
    18c0:	00033103 	sra	a2,v1,0x4
    18c4:	3063000f 	andi	v1,v1,0xf
    18c8:	00063100 	sll	a2,a2,0x4
    18cc:	00c31821 	addu	v1,a2,v1
    18d0:	00031880 	sll	v1,v1,0x2
    18d4:	00621821 	addu	v1,v1,v0
    18d8:	8c630000 	lw	v1,0(v1)
    18dc:	00000000 	sll	zero,zero,0x0
    18e0:	ac830048 	sw	v1,72(a0)
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    18e4:	8c830068 	lw	v1,104(a0)
    18e8:	00000000 	sll	zero,zero,0x0
    18ec:	00033103 	sra	a2,v1,0x4
    18f0:	3063000f 	andi	v1,v1,0xf
    18f4:	00063100 	sll	a2,a2,0x4
    18f8:	00c31821 	addu	v1,a2,v1
    18fc:	00031880 	sll	v1,v1,0x2
    1900:	00621821 	addu	v1,v1,v0
    1904:	8c630000 	lw	v1,0(v1)
    1908:	00000000 	sll	zero,zero,0x0
    190c:	ac830018 	sw	v1,24(a0)
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    1910:	8c830038 	lw	v1,56(a0)
    1914:	00000000 	sll	zero,zero,0x0
    1918:	00033103 	sra	a2,v1,0x4
    191c:	3063000f 	andi	v1,v1,0xf
    1920:	00063100 	sll	a2,a2,0x4
    1924:	00c31821 	addu	v1,a2,v1
    1928:	00031880 	sll	v1,v1,0x2
    192c:	00621821 	addu	v1,v1,v0
    1930:	8c630000 	lw	v1,0(v1)
    1934:	00000000 	sll	zero,zero,0x0
    1938:	ac830068 	sw	v1,104(a0)
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    193c:	8c830008 	lw	v1,8(a0)
    1940:	00000000 	sll	zero,zero,0x0
    1944:	00033103 	sra	a2,v1,0x4
    1948:	3063000f 	andi	v1,v1,0xf
    194c:	00063100 	sll	a2,a2,0x4
    1950:	00c31821 	addu	v1,a2,v1
    1954:	00031880 	sll	v1,v1,0x2
    1958:	00621821 	addu	v1,v1,v0
    195c:	8c630000 	lw	v1,0(v1)
    1960:	00000000 	sll	zero,zero,0x0
    1964:	ac830038 	sw	v1,56(a0)
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    1968:	8c830058 	lw	v1,88(a0)
    196c:	00000000 	sll	zero,zero,0x0
    1970:	00033103 	sra	a2,v1,0x4
    1974:	3063000f 	andi	v1,v1,0xf
    1978:	00063100 	sll	a2,a2,0x4
    197c:	00c31821 	addu	v1,a2,v1
    1980:	00031880 	sll	v1,v1,0x2
    1984:	00621821 	addu	v1,v1,v0
    1988:	8c630000 	lw	v1,0(v1)
    198c:	00000000 	sll	zero,zero,0x0
    1990:	ac830008 	sw	v1,8(a0)
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    1994:	8c830028 	lw	v1,40(a0)
    1998:	00000000 	sll	zero,zero,0x0
    199c:	00033103 	sra	a2,v1,0x4
    19a0:	3063000f 	andi	v1,v1,0xf
    19a4:	00063100 	sll	a2,a2,0x4
    19a8:	00c31821 	addu	v1,a2,v1
    19ac:	00031880 	sll	v1,v1,0x2
    19b0:	00621821 	addu	v1,v1,v0
    19b4:	8c630000 	lw	v1,0(v1)
    19b8:	00000000 	sll	zero,zero,0x0
    19bc:	ac830058 	sw	v1,88(a0)
      statemt[10] = temp;
    19c0:	ac850028 	sw	a1,40(a0)

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    19c4:	8c83007c 	lw	v1,124(a0)
    19c8:	00000000 	sll	zero,zero,0x0
    19cc:	00032903 	sra	a1,v1,0x4
    19d0:	3063000f 	andi	v1,v1,0xf
    19d4:	00052900 	sll	a1,a1,0x4
    19d8:	00a31821 	addu	v1,a1,v1
    19dc:	00031880 	sll	v1,v1,0x2
    19e0:	00621821 	addu	v1,v1,v0
    19e4:	8c650000 	lw	a1,0(v1)
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    19e8:	8c83003c 	lw	v1,60(a0)
    19ec:	00000000 	sll	zero,zero,0x0
    19f0:	00033103 	sra	a2,v1,0x4
    19f4:	3063000f 	andi	v1,v1,0xf
    19f8:	00063100 	sll	a2,a2,0x4
    19fc:	00c31821 	addu	v1,a2,v1
    1a00:	00031880 	sll	v1,v1,0x2
    1a04:	00621821 	addu	v1,v1,v0
    1a08:	8c630000 	lw	v1,0(v1)
    1a0c:	00000000 	sll	zero,zero,0x0
    1a10:	ac83007c 	sw	v1,124(a0)
      statemt[15] = temp;
    1a14:	ac85003c 	sw	a1,60(a0)
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    1a18:	8c83006c 	lw	v1,108(a0)
    1a1c:	00000000 	sll	zero,zero,0x0
    1a20:	00032903 	sra	a1,v1,0x4
    1a24:	3063000f 	andi	v1,v1,0xf
    1a28:	00052900 	sll	a1,a1,0x4
    1a2c:	00a31821 	addu	v1,a1,v1
    1a30:	00031880 	sll	v1,v1,0x2
    1a34:	00621821 	addu	v1,v1,v0
    1a38:	8c650000 	lw	a1,0(v1)
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    1a3c:	8c83002c 	lw	v1,44(a0)
    1a40:	00000000 	sll	zero,zero,0x0
    1a44:	00033103 	sra	a2,v1,0x4
    1a48:	3063000f 	andi	v1,v1,0xf
    1a4c:	00063100 	sll	a2,a2,0x4
    1a50:	00c31821 	addu	v1,a2,v1
    1a54:	00031880 	sll	v1,v1,0x2
    1a58:	00621821 	addu	v1,v1,v0
    1a5c:	8c630000 	lw	v1,0(v1)
    1a60:	00000000 	sll	zero,zero,0x0
    1a64:	ac83006c 	sw	v1,108(a0)
      statemt[11] = temp;
    1a68:	ac85002c 	sw	a1,44(a0)
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    1a6c:	8c83005c 	lw	v1,92(a0)
    1a70:	00000000 	sll	zero,zero,0x0
    1a74:	00032903 	sra	a1,v1,0x4
    1a78:	3063000f 	andi	v1,v1,0xf
    1a7c:	00052900 	sll	a1,a1,0x4
    1a80:	00a31821 	addu	v1,a1,v1
    1a84:	00031880 	sll	v1,v1,0x2
    1a88:	00621821 	addu	v1,v1,v0
    1a8c:	8c650000 	lw	a1,0(v1)
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    1a90:	8c83001c 	lw	v1,28(a0)
    1a94:	00000000 	sll	zero,zero,0x0
    1a98:	00033103 	sra	a2,v1,0x4
    1a9c:	3063000f 	andi	v1,v1,0xf
    1aa0:	00063100 	sll	a2,a2,0x4
    1aa4:	00c31821 	addu	v1,a2,v1
    1aa8:	00031880 	sll	v1,v1,0x2
    1aac:	00621821 	addu	v1,v1,v0
    1ab0:	8c630000 	lw	v1,0(v1)
    1ab4:	00000000 	sll	zero,zero,0x0
    1ab8:	ac83005c 	sw	v1,92(a0)
      statemt[7] = temp;
    1abc:	ac85001c 	sw	a1,28(a0)
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    1ac0:	8c83004c 	lw	v1,76(a0)
    1ac4:	00000000 	sll	zero,zero,0x0
    1ac8:	00032903 	sra	a1,v1,0x4
    1acc:	3063000f 	andi	v1,v1,0xf
    1ad0:	00052900 	sll	a1,a1,0x4
    1ad4:	00a31821 	addu	v1,a1,v1
    1ad8:	00031880 	sll	v1,v1,0x2
    1adc:	00621821 	addu	v1,v1,v0
    1ae0:	8c650000 	lw	a1,0(v1)
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    1ae4:	8c83000c 	lw	v1,12(a0)
    1ae8:	00000000 	sll	zero,zero,0x0
    1aec:	00033103 	sra	a2,v1,0x4
    1af0:	3063000f 	andi	v1,v1,0xf
    1af4:	00063100 	sll	a2,a2,0x4
    1af8:	00c31821 	addu	v1,a2,v1
    1afc:	00031880 	sll	v1,v1,0x2
    1b00:	00621821 	addu	v1,v1,v0
    1b04:	8c630000 	lw	v1,0(v1)
    1b08:	00000000 	sll	zero,zero,0x0
    1b0c:	ac83004c 	sw	v1,76(a0)
      statemt[3] = temp;
    1b10:	ac85000c 	sw	a1,12(a0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    1b14:	8c830000 	lw	v1,0(a0)
    1b18:	00000000 	sll	zero,zero,0x0
    1b1c:	00032903 	sra	a1,v1,0x4
    1b20:	3063000f 	andi	v1,v1,0xf
    1b24:	00052900 	sll	a1,a1,0x4
    1b28:	00a31821 	addu	v1,a1,v1
    1b2c:	00031880 	sll	v1,v1,0x2
    1b30:	00621821 	addu	v1,v1,v0
    1b34:	8c630000 	lw	v1,0(v1)
    1b38:	00000000 	sll	zero,zero,0x0
    1b3c:	ac830000 	sw	v1,0(a0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    1b40:	8c830010 	lw	v1,16(a0)
    1b44:	00000000 	sll	zero,zero,0x0
    1b48:	00032903 	sra	a1,v1,0x4
    1b4c:	3063000f 	andi	v1,v1,0xf
    1b50:	00052900 	sll	a1,a1,0x4
    1b54:	00a31821 	addu	v1,a1,v1
    1b58:	00031880 	sll	v1,v1,0x2
    1b5c:	00621821 	addu	v1,v1,v0
    1b60:	8c630000 	lw	v1,0(v1)
    1b64:	00000000 	sll	zero,zero,0x0
    1b68:	ac830010 	sw	v1,16(a0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    1b6c:	8c830020 	lw	v1,32(a0)
    1b70:	00000000 	sll	zero,zero,0x0
    1b74:	00032903 	sra	a1,v1,0x4
    1b78:	3063000f 	andi	v1,v1,0xf
    1b7c:	00052900 	sll	a1,a1,0x4
    1b80:	00a31821 	addu	v1,a1,v1
    1b84:	00031880 	sll	v1,v1,0x2
    1b88:	00621821 	addu	v1,v1,v0
    1b8c:	8c630000 	lw	v1,0(v1)
    1b90:	00000000 	sll	zero,zero,0x0
    1b94:	ac830020 	sw	v1,32(a0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    1b98:	8c830030 	lw	v1,48(a0)
    1b9c:	00000000 	sll	zero,zero,0x0
    1ba0:	00032903 	sra	a1,v1,0x4
    1ba4:	3063000f 	andi	v1,v1,0xf
    1ba8:	00052900 	sll	a1,a1,0x4
    1bac:	00a31821 	addu	v1,a1,v1
    1bb0:	00031880 	sll	v1,v1,0x2
    1bb4:	00621821 	addu	v1,v1,v0
    1bb8:	8c630000 	lw	v1,0(v1)
    1bbc:	00000000 	sll	zero,zero,0x0
    1bc0:	ac830030 	sw	v1,48(a0)
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    1bc4:	8c830040 	lw	v1,64(a0)
    1bc8:	00000000 	sll	zero,zero,0x0
    1bcc:	00032903 	sra	a1,v1,0x4
    1bd0:	3063000f 	andi	v1,v1,0xf
    1bd4:	00052900 	sll	a1,a1,0x4
    1bd8:	00a31821 	addu	v1,a1,v1
    1bdc:	00031880 	sll	v1,v1,0x2
    1be0:	00621821 	addu	v1,v1,v0
    1be4:	8c630000 	lw	v1,0(v1)
    1be8:	00000000 	sll	zero,zero,0x0
    1bec:	ac830040 	sw	v1,64(a0)
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    1bf0:	8c830050 	lw	v1,80(a0)
    1bf4:	00000000 	sll	zero,zero,0x0
    1bf8:	00032903 	sra	a1,v1,0x4
    1bfc:	3063000f 	andi	v1,v1,0xf
    1c00:	00052900 	sll	a1,a1,0x4
    1c04:	00a31821 	addu	v1,a1,v1
    1c08:	00031880 	sll	v1,v1,0x2
    1c0c:	00621821 	addu	v1,v1,v0
    1c10:	8c630000 	lw	v1,0(v1)
    1c14:	00000000 	sll	zero,zero,0x0
    1c18:	ac830050 	sw	v1,80(a0)
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    1c1c:	8c830060 	lw	v1,96(a0)
    1c20:	00000000 	sll	zero,zero,0x0
    1c24:	00032903 	sra	a1,v1,0x4
    1c28:	3063000f 	andi	v1,v1,0xf
    1c2c:	00052900 	sll	a1,a1,0x4
    1c30:	00a31821 	addu	v1,a1,v1
    1c34:	00031880 	sll	v1,v1,0x2
    1c38:	00621821 	addu	v1,v1,v0
    1c3c:	8c630000 	lw	v1,0(v1)
    1c40:	00000000 	sll	zero,zero,0x0
    1c44:	ac830060 	sw	v1,96(a0)
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    1c48:	8c830070 	lw	v1,112(a0)
    1c4c:	00000000 	sll	zero,zero,0x0
    1c50:	00032903 	sra	a1,v1,0x4
    1c54:	3063000f 	andi	v1,v1,0xf
    1c58:	00052900 	sll	a1,a1,0x4
    1c5c:	00a31821 	addu	v1,a1,v1
    1c60:	00031880 	sll	v1,v1,0x2
    1c64:	00621021 	addu	v0,v1,v0
    1c68:	8c420000 	lw	v0,0(v0)
    1c6c:	00000000 	sll	zero,zero,0x0
    1c70:	ac820070 	sw	v0,112(a0)
    1c74:	03e00008 	jr	ra
    1c78:	00000000 	sll	zero,zero,0x0

00001c7c <MixColumn_AddRoundKey>:
}

/* ******** MixColumn ********** */
int
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
    1c7c:	27bdff78 	addiu	sp,sp,-136
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    1c80:	18a0009a 	blez	a1,1eec <MixColumn_AddRoundKey+0x270>
    1c84:	afb00084 	sw	s0,132(sp)
    1c88:	00801821 	addu	v1,a0,zero
    1c8c:	03a01021 	addu	v0,sp,zero
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];
    1c90:	00c50018 	mult	a2,a1
    1c94:	00003012 	mflo	a2
    }
}

/* ******** MixColumn ********** */
int
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
    1c98:	24c60168 	addiu	a2,a2,360
    1c9c:	00063080 	sll	a2,a2,0x2
    1ca0:	3c0f0000 	lui	t7,0x0
    1ca4:	25ef0000 	addiu	t7,t7,0
    1ca8:	01e67821 	addu	t7,t7,a2
    1cac:	00052900 	sll	a1,a1,0x4
    1cb0:	03a52821 	addu	a1,sp,a1
    1cb4:	03a04021 	addu	t0,sp,zero
  register int x;

  for (j = 0; j < nb; ++j)
    {
      ret[j * 4] = (statemt[j * 4] << 1);
      if ((ret[j * 4] >> 8) == 1)
    1cb8:	24070001 	addiu	a3,zero,1
    }
}

/* ******** MixColumn ********** */
int
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
    1cbc:	00806021 	addu	t4,a0,zero
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    {
      ret[j * 4] = (statemt[j * 4] << 1);
    1cc0:	8c8b0000 	lw	t3,0(a0)
    1cc4:	00000000 	sll	zero,zero,0x0
    1cc8:	000b6840 	sll	t5,t3,0x1
    }
}

/* ******** MixColumn ********** */
int
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
    1ccc:	01003021 	addu	a2,t0,zero
  register int x;

  for (j = 0; j < nb; ++j)
    {
      ret[j * 4] = (statemt[j * 4] << 1);
      if ((ret[j * 4] >> 8) == 1)
    1cd0:	000d4a03 	sra	t1,t5,0x8
    1cd4:	15270003 	bne	t1,a3,1ce4 <MixColumn_AddRoundKey+0x68>
    1cd8:	ad0d0000 	sw	t5,0(t0)
	ret[j * 4] ^= 283;
    1cdc:	39a9011b 	xori	t1,t5,0x11b
    1ce0:	ad090000 	sw	t1,0(t0)
      x = statemt[1 + j * 4];
    1ce4:	8d890004 	lw	t1,4(t4)
    1ce8:	00000000 	sll	zero,zero,0x0
      x ^= (x << 1);
    1cec:	00097040 	sll	t6,t1,0x1
    1cf0:	01c95026 	xor	t2,t6,t1
      if ((x >> 8) == 1)
    1cf4:	000ac203 	sra	t8,t2,0x8
    1cf8:	17070007 	bne	t8,a3,1d18 <MixColumn_AddRoundKey+0x9c>
    1cfc:	00000000 	sll	zero,zero,0x0
	ret[j * 4] ^= (x ^ 283);
    1d00:	8cd80000 	lw	t8,0(a2)
    1d04:	00000000 	sll	zero,zero,0x0
    1d08:	3b18011b 	xori	t8,t8,0x11b
    1d0c:	030a5026 	xor	t2,t8,t2
    1d10:	0800074a 	j	1d28 <MixColumn_AddRoundKey+0xac>
    1d14:	acca0000 	sw	t2,0(a2)
      else
	ret[j * 4] ^= x;
    1d18:	8cd80000 	lw	t8,0(a2)
    1d1c:	00000000 	sll	zero,zero,0x0
    1d20:	030a5026 	xor	t2,t8,t2
    1d24:	acca0000 	sw	t2,0(a2)
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];
    1d28:	8d8a0008 	lw	t2,8(t4)
    1d2c:	8d8c000c 	lw	t4,12(t4)
    }
}

/* ******** MixColumn ********** */
int
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
    1d30:	01e0c021 	addu	t8,t7,zero
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];
    1d34:	8cd90000 	lw	t9,0(a2)
    1d38:	00000000 	sll	zero,zero,0x0
    1d3c:	0159c826 	xor	t9,t2,t9
    1d40:	032cc826 	xor	t9,t9,t4
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    1d44:	8df0fa60 	lw	s0,-1440(t7)
    1d48:	00000000 	sll	zero,zero,0x0
    1d4c:	0330c826 	xor	t9,t9,s0
    1d50:	acd90000 	sw	t9,0(a2)
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
      if ((ret[1 + j * 4] >> 8) == 1)
    1d54:	000eca03 	sra	t9,t6,0x8
    1d58:	17270003 	bne	t9,a3,1d68 <MixColumn_AddRoundKey+0xec>
    1d5c:	acce0004 	sw	t6,4(a2)
	ret[1 + j * 4] ^= 283;
    1d60:	39ce011b 	xori	t6,t6,0x11b
    1d64:	acce0004 	sw	t6,4(a2)
      x = statemt[2 + j * 4];
      x ^= (x << 1);
    1d68:	000a7040 	sll	t6,t2,0x1
    1d6c:	01cac826 	xor	t9,t6,t2
      if ((x >> 8) == 1)
    1d70:	00198203 	sra	s0,t9,0x8
    1d74:	16070007 	bne	s0,a3,1d94 <MixColumn_AddRoundKey+0x118>
    1d78:	00000000 	sll	zero,zero,0x0
	ret[1 + j * 4] ^= (x ^ 283);
    1d7c:	8cd00004 	lw	s0,4(a2)
    1d80:	00000000 	sll	zero,zero,0x0
    1d84:	3a10011b 	xori	s0,s0,0x11b
    1d88:	0219c826 	xor	t9,s0,t9
    1d8c:	08000769 	j	1da4 <MixColumn_AddRoundKey+0x128>
    1d90:	acd90004 	sw	t9,4(a2)
      else
	ret[1 + j * 4] ^= x;
    1d94:	8cd00004 	lw	s0,4(a2)
    1d98:	00000000 	sll	zero,zero,0x0
    1d9c:	0219c826 	xor	t9,s0,t9
    1da0:	acd90004 	sw	t9,4(a2)
      ret[1 + j * 4] ^=
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];
    1da4:	018b8026 	xor	s0,t4,t3
    1da8:	8cd90004 	lw	t9,4(a2)
    1dac:	00000000 	sll	zero,zero,0x0
    1db0:	0219c826 	xor	t9,s0,t9
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
    1db4:	8f10fc40 	lw	s0,-960(t8)
    1db8:	00000000 	sll	zero,zero,0x0
    1dbc:	0330c826 	xor	t9,t9,s0
    1dc0:	acd90004 	sw	t9,4(a2)
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
      if ((ret[2 + j * 4] >> 8) == 1)
    1dc4:	000eca03 	sra	t9,t6,0x8
    1dc8:	17270003 	bne	t9,a3,1dd8 <MixColumn_AddRoundKey+0x15c>
    1dcc:	acce0008 	sw	t6,8(a2)
	ret[2 + j * 4] ^= 283;
    1dd0:	39ce011b 	xori	t6,t6,0x11b
    1dd4:	acce0008 	sw	t6,8(a2)
      x = statemt[3 + j * 4];
      x ^= (x << 1);
    1dd8:	000c7040 	sll	t6,t4,0x1
    1ddc:	01cc6026 	xor	t4,t6,t4
      if ((x >> 8) == 1)
    1de0:	000cca03 	sra	t9,t4,0x8
    1de4:	17270007 	bne	t9,a3,1e04 <MixColumn_AddRoundKey+0x188>
    1de8:	00000000 	sll	zero,zero,0x0
	ret[2 + j * 4] ^= (x ^ 283);
    1dec:	8cd90008 	lw	t9,8(a2)
    1df0:	00000000 	sll	zero,zero,0x0
    1df4:	3b39011b 	xori	t9,t9,0x11b
    1df8:	032c6026 	xor	t4,t9,t4
    1dfc:	08000785 	j	1e14 <MixColumn_AddRoundKey+0x198>
    1e00:	accc0008 	sw	t4,8(a2)
      else
	ret[2 + j * 4] ^= x;
    1e04:	8cd90008 	lw	t9,8(a2)
    1e08:	00000000 	sll	zero,zero,0x0
    1e0c:	032c6026 	xor	t4,t9,t4
    1e10:	accc0008 	sw	t4,8(a2)
      ret[2 + j * 4] ^=
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    1e14:	012bc826 	xor	t9,t1,t3
    1e18:	8ccc0008 	lw	t4,8(a2)
    1e1c:	00000000 	sll	zero,zero,0x0
    1e20:	032c6026 	xor	t4,t9,t4
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
    1e24:	8f19fe20 	lw	t9,-480(t8)
    1e28:	00000000 	sll	zero,zero,0x0
    1e2c:	01996026 	xor	t4,t4,t9
    1e30:	accc0008 	sw	t4,8(a2)
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
      if ((ret[3 + j * 4] >> 8) == 1)
    1e34:	000e6203 	sra	t4,t6,0x8
    1e38:	15870003 	bne	t4,a3,1e48 <MixColumn_AddRoundKey+0x1cc>
    1e3c:	acce000c 	sw	t6,12(a2)
	ret[3 + j * 4] ^= 283;
    1e40:	39ce011b 	xori	t6,t6,0x11b
    1e44:	acce000c 	sw	t6,12(a2)
      x = statemt[j * 4];
      x ^= (x << 1);
    1e48:	01ab5826 	xor	t3,t5,t3
      if ((x >> 8) == 1)
    1e4c:	000b6203 	sra	t4,t3,0x8
    1e50:	15870007 	bne	t4,a3,1e70 <MixColumn_AddRoundKey+0x1f4>
    1e54:	00000000 	sll	zero,zero,0x0
	ret[3 + j * 4] ^= (x ^ 283);
    1e58:	8ccd000c 	lw	t5,12(a2)
    1e5c:	00000000 	sll	zero,zero,0x0
    1e60:	39ad011b 	xori	t5,t5,0x11b
    1e64:	01ab5826 	xor	t3,t5,t3
    1e68:	080007a0 	j	1e80 <MixColumn_AddRoundKey+0x204>
    1e6c:	accb000c 	sw	t3,12(a2)
      else
	ret[3 + j * 4] ^= x;
    1e70:	8ccd000c 	lw	t5,12(a2)
    1e74:	00000000 	sll	zero,zero,0x0
    1e78:	01ab5826 	xor	t3,t5,t3
    1e7c:	accb000c 	sw	t3,12(a2)
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    1e80:	01494826 	xor	t1,t2,t1
    1e84:	8ccb000c 	lw	t3,12(a2)
    1e88:	00000000 	sll	zero,zero,0x0
    1e8c:	012b4826 	xor	t1,t1,t3
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
    1e90:	8f0b0000 	lw	t3,0(t8)
    1e94:	00000000 	sll	zero,zero,0x0
    1e98:	012b4826 	xor	t1,t1,t3
    1e9c:	acc9000c 	sw	t1,12(a2)
    1ea0:	24840010 	addiu	a0,a0,16
    1ea4:	25080010 	addiu	t0,t0,16
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    1ea8:	1505ff84 	bne	t0,a1,1cbc <MixColumn_AddRoundKey+0x40>
    1eac:	25ef0004 	addiu	t7,t7,4
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] = ret[j * 4];
    1eb0:	8c440000 	lw	a0,0(v0)
    1eb4:	00000000 	sll	zero,zero,0x0
    1eb8:	ac640000 	sw	a0,0(v1)
      statemt[1 + j * 4] = ret[1 + j * 4];
    1ebc:	8c440004 	lw	a0,4(v0)
    1ec0:	00000000 	sll	zero,zero,0x0
    1ec4:	ac640004 	sw	a0,4(v1)
      statemt[2 + j * 4] = ret[2 + j * 4];
    1ec8:	8c440008 	lw	a0,8(v0)
    1ecc:	00000000 	sll	zero,zero,0x0
    1ed0:	ac640008 	sw	a0,8(v1)
      statemt[3 + j * 4] = ret[3 + j * 4];
    1ed4:	8c44000c 	lw	a0,12(v0)
    1ed8:	00000000 	sll	zero,zero,0x0
    1edc:	ac64000c 	sw	a0,12(v1)
    1ee0:	24420010 	addiu	v0,v0,16
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    1ee4:	1445fff2 	bne	v0,a1,1eb0 <MixColumn_AddRoundKey+0x234>
    1ee8:	24630010 	addiu	v1,v1,16
      statemt[1 + j * 4] = ret[1 + j * 4];
      statemt[2 + j * 4] = ret[2 + j * 4];
      statemt[3 + j * 4] = ret[3 + j * 4];
    }
  return 0;
}
    1eec:	00001021 	addu	v0,zero,zero
    1ef0:	8fb00084 	lw	s0,132(sp)
    1ef4:	03e00008 	jr	ra
    1ef8:	27bd0088 	addiu	sp,sp,136

00001efc <AddRoundKey_InversMixColumn>:

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
{
    1efc:	27bdff68 	addiu	sp,sp,-152
    1f00:	afb50094 	sw	s5,148(sp)
    1f04:	afb40090 	sw	s4,144(sp)
    1f08:	afb3008c 	sw	s3,140(sp)
    1f0c:	afb20088 	sw	s2,136(sp)
    1f10:	afb10084 	sw	s1,132(sp)
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    1f14:	18a000b5 	blez	a1,21ec <AddRoundKey_InversMixColumn+0x2f0>
    1f18:	afb00080 	sw	s0,128(sp)
    1f1c:	00801021 	addu	v0,a0,zero
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    1f20:	00c50018 	mult	a2,a1
    1f24:	00003012 	mflo	a2
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    1f28:	00061880 	sll	v1,a2,0x2
    1f2c:	3c060000 	lui	a2,0x0
    1f30:	24c60000 	addiu	a2,a2,0
    1f34:	00c33021 	addu	a2,a2,v1
    1f38:	00801821 	addu	v1,a0,zero
{
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    1f3c:	00003821 	addu	a3,zero,zero
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    1f40:	8c690000 	lw	t1,0(v1)
    1f44:	8cc80000 	lw	t0,0(a2)
    1f48:	00000000 	sll	zero,zero,0x0
    1f4c:	01284026 	xor	t0,t1,t0
    1f50:	ac680000 	sw	t0,0(v1)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    1f54:	8c690004 	lw	t1,4(v1)
    1f58:	8cc801e0 	lw	t0,480(a2)
    1f5c:	00000000 	sll	zero,zero,0x0
    1f60:	01284026 	xor	t0,t1,t0
    1f64:	ac680004 	sw	t0,4(v1)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    1f68:	8c690008 	lw	t1,8(v1)
    1f6c:	8cc803c0 	lw	t0,960(a2)
    1f70:	00000000 	sll	zero,zero,0x0
    1f74:	01284026 	xor	t0,t1,t0
    1f78:	ac680008 	sw	t0,8(v1)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    1f7c:	8c69000c 	lw	t1,12(v1)
    1f80:	8cc805a0 	lw	t0,1440(a2)
    1f84:	00000000 	sll	zero,zero,0x0
    1f88:	01284026 	xor	t0,t1,t0
    1f8c:	ac68000c 	sw	t0,12(v1)
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
{
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    1f90:	24e70001 	addiu	a3,a3,1
    1f94:	24630010 	addiu	v1,v1,16
    1f98:	14e5ffe9 	bne	a3,a1,1f40 <AddRoundKey_InversMixColumn+0x44>
    1f9c:	24c60004 	addiu	a2,a2,4
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    1fa0:	0005a080 	sll	s4,a1,0x2
    1fa4:	00809021 	addu	s2,a0,zero
    1fa8:	00008021 	addu	s0,zero,zero
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
      {
	x = (statemt[i + j * 4] << 1);
	if ((x >> 8) == 1)
    1fac:	24030001 	addiu	v1,zero,1
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
    1fb0:	3c198000 	lui	t9,0x8000
    1fb4:	27390003 	addiu	t9,t9,3
    1fb8:	2413fffc 	addiu	s3,zero,-4
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
    1fbc:	08000863 	j	218c <AddRoundKey_InversMixColumn+0x290>
    1fc0:	24110004 	addiu	s1,zero,4
      {
	x = (statemt[i + j * 4] << 1);
    1fc4:	8dc70000 	lw	a3,0(t6)
    1fc8:	00000000 	sll	zero,zero,0x0
    1fcc:	00076840 	sll	t5,a3,0x1
	if ((x >> 8) == 1)
    1fd0:	000d4203 	sra	t0,t5,0x8
    1fd4:	15030002 	bne	t0,v1,1fe0 <AddRoundKey_InversMixColumn+0xe4>
    1fd8:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    1fdc:	39ad011b 	xori	t5,t5,0x11b
	x ^= statemt[i + j * 4];
    1fe0:	01a76826 	xor	t5,t5,a3
	x = (x << 1);
    1fe4:	000d6840 	sll	t5,t5,0x1
	if ((x >> 8) == 1)
    1fe8:	000d4203 	sra	t0,t5,0x8
    1fec:	15030002 	bne	t0,v1,1ff8 <AddRoundKey_InversMixColumn+0xfc>
    1ff0:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    1ff4:	39ad011b 	xori	t5,t5,0x11b
	x ^= statemt[i + j * 4];
    1ff8:	01a76826 	xor	t5,t5,a3
	x = (x << 1);
    1ffc:	000d6840 	sll	t5,t5,0x1
	if ((x >> 8) == 1)
    2000:	000d3a03 	sra	a3,t5,0x8
    2004:	14e30002 	bne	a3,v1,2010 <AddRoundKey_InversMixColumn+0x114>
    2008:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    200c:	39ad011b 	xori	t5,t5,0x11b
	ret[i + j * 4] = x;

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
    2010:	24c60001 	addiu	a2,a2,1
    2014:	00d93824 	and	a3,a2,t9
    2018:	04e10004 	bgez	a3,202c <AddRoundKey_InversMixColumn+0x130>
    201c:	00000000 	sll	zero,zero,0x0
    2020:	24e7ffff 	addiu	a3,a3,-1
    2024:	00f33825 	or	a3,a3,s3
    2028:	24e70001 	addiu	a3,a3,1
    202c:	03073821 	addu	a3,t8,a3
    2030:	00073880 	sll	a3,a3,0x2
    2034:	00873821 	addu	a3,a0,a3
    2038:	8ce90000 	lw	t1,0(a3)
    203c:	00000000 	sll	zero,zero,0x0
    2040:	00096040 	sll	t4,t1,0x1
	if ((x >> 8) == 1)
    2044:	000c3a03 	sra	a3,t4,0x8
    2048:	14e30002 	bne	a3,v1,2054 <AddRoundKey_InversMixColumn+0x158>
    204c:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2050:	398c011b 	xori	t4,t4,0x11b
	x = (x << 1);
    2054:	000c6040 	sll	t4,t4,0x1
	if ((x >> 8) == 1)
    2058:	000c3a03 	sra	a3,t4,0x8
    205c:	14e30002 	bne	a3,v1,2068 <AddRoundKey_InversMixColumn+0x16c>
    2060:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2064:	398c011b 	xori	t4,t4,0x11b
	x ^= statemt[(i + 1) % 4 + j * 4];
    2068:	01896026 	xor	t4,t4,t1
	x = (x << 1);
    206c:	000c6040 	sll	t4,t4,0x1
	if ((x >> 8) == 1)
    2070:	000c3a03 	sra	a3,t4,0x8
    2074:	14e30002 	bne	a3,v1,2080 <AddRoundKey_InversMixColumn+0x184>
    2078:	24c80001 	addiu	t0,a2,1
	  x ^= 283;
    207c:	398c011b 	xori	t4,t4,0x11b
	x ^= statemt[(i + 1) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
    2080:	01194024 	and	t0,t0,t9
    2084:	05010004 	bgez	t0,2098 <AddRoundKey_InversMixColumn+0x19c>
    2088:	00c03821 	addu	a3,a2,zero
    208c:	2508ffff 	addiu	t0,t0,-1
    2090:	01134025 	or	t0,t0,s3
    2094:	25080001 	addiu	t0,t0,1
    2098:	03084021 	addu	t0,t8,t0
    209c:	00084080 	sll	t0,t0,0x2
    20a0:	00884021 	addu	t0,a0,t0
    20a4:	8d080000 	lw	t0,0(t0)
    20a8:	00000000 	sll	zero,zero,0x0
    20ac:	00085840 	sll	t3,t0,0x1
	if ((x >> 8) == 1)
    20b0:	000b5203 	sra	t2,t3,0x8
    20b4:	15430002 	bne	t2,v1,20c0 <AddRoundKey_InversMixColumn+0x1c4>
    20b8:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    20bc:	396b011b 	xori	t3,t3,0x11b
	x ^= statemt[(i + 2) % 4 + j * 4];
    20c0:	01685826 	xor	t3,t3,t0
	x = (x << 1);
    20c4:	000b5840 	sll	t3,t3,0x1
	if ((x >> 8) == 1)
    20c8:	000b5203 	sra	t2,t3,0x8
    20cc:	15430002 	bne	t2,v1,20d8 <AddRoundKey_InversMixColumn+0x1dc>
    20d0:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    20d4:	396b011b 	xori	t3,t3,0x11b
	x = (x << 1);
    20d8:	000b5840 	sll	t3,t3,0x1
	if ((x >> 8) == 1)
    20dc:	000b5203 	sra	t2,t3,0x8
    20e0:	15430002 	bne	t2,v1,20ec <AddRoundKey_InversMixColumn+0x1f0>
    20e4:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    20e8:	396b011b 	xori	t3,t3,0x11b
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    20ec:	24e70002 	addiu	a3,a3,2
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
	ret[i + j * 4] ^= x;

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
    20f0:	00f93824 	and	a3,a3,t9
    20f4:	04e10004 	bgez	a3,2108 <AddRoundKey_InversMixColumn+0x20c>
    20f8:	00000000 	sll	zero,zero,0x0
    20fc:	24e7ffff 	addiu	a3,a3,-1
    2100:	00f33825 	or	a3,a3,s3
    2104:	24e70001 	addiu	a3,a3,1
    2108:	03073821 	addu	a3,t8,a3
    210c:	00073880 	sll	a3,a3,0x2
    2110:	00873821 	addu	a3,a0,a3
    2114:	8ce70000 	lw	a3,0(a3)
    2118:	00000000 	sll	zero,zero,0x0
    211c:	00075040 	sll	t2,a3,0x1
	if ((x >> 8) == 1)
    2120:	000aaa03 	sra	s5,t2,0x8
    2124:	16a30002 	bne	s5,v1,2130 <AddRoundKey_InversMixColumn+0x234>
    2128:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    212c:	394a011b 	xori	t2,t2,0x11b
	x = (x << 1);
    2130:	000a5040 	sll	t2,t2,0x1
	if ((x >> 8) == 1)
    2134:	000aaa03 	sra	s5,t2,0x8
    2138:	16a30002 	bne	s5,v1,2144 <AddRoundKey_InversMixColumn+0x248>
    213c:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2140:	394a011b 	xori	t2,t2,0x11b
	x = (x << 1);
    2144:	000a5040 	sll	t2,t2,0x1
	if ((x >> 8) == 1)
    2148:	000aaa03 	sra	s5,t2,0x8
    214c:	16a30002 	bne	s5,v1,2158 <AddRoundKey_InversMixColumn+0x25c>
    2150:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    2154:	394a011b 	xori	t2,t2,0x11b
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 1) % 4 + j * 4];
    2158:	01074026 	xor	t0,t0,a3
	ret[i + j * 4] ^= x;
    215c:	01094826 	xor	t1,t0,t1
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 2) % 4 + j * 4];
    2160:	012d6826 	xor	t5,t1,t5
	ret[i + j * 4] ^= x;
    2164:	01ac6026 	xor	t4,t5,t4
	if ((x >> 8) == 1)
	  x ^= 283;
	x = (x << 1);
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 3) % 4 + j * 4];
    2168:	018b5826 	xor	t3,t4,t3
	ret[i + j * 4] ^= x;
    216c:	016a5026 	xor	t2,t3,t2
    2170:	adea0000 	sw	t2,0(t7)
    2174:	25ce0004 	addiu	t6,t6,4
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
    2178:	14d1ff92 	bne	a2,s1,1fc4 <AddRoundKey_InversMixColumn+0xc8>
    217c:	25ef0004 	addiu	t7,t7,4
    2180:	26100004 	addiu	s0,s0,4
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    2184:	12140007 	beq	s0,s4,21a4 <AddRoundKey_InversMixColumn+0x2a8>
    2188:	26520010 	addiu	s2,s2,16
    218c:	0200c021 	addu	t8,s0,zero
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    2190:	00107880 	sll	t7,s0,0x2
    2194:	03af7821 	addu	t7,sp,t7
    2198:	02407021 	addu	t6,s2,zero
    219c:	080007f1 	j	1fc4 <AddRoundKey_InversMixColumn+0xc8>
    21a0:	00003021 	addu	a2,zero,zero
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    21a4:	03a01821 	addu	v1,sp,zero
  return 0;
}

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
    21a8:	00052900 	sll	a1,a1,0x4
    21ac:	03a52821 	addu	a1,sp,a1
	x ^= statemt[(i + 3) % 4 + j * 4];
	ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    {
      statemt[i * 4] = ret[i * 4];
    21b0:	8c640000 	lw	a0,0(v1)
    21b4:	00000000 	sll	zero,zero,0x0
    21b8:	ac440000 	sw	a0,0(v0)
      statemt[1 + i * 4] = ret[1 + i * 4];
    21bc:	8c640004 	lw	a0,4(v1)
    21c0:	00000000 	sll	zero,zero,0x0
    21c4:	ac440004 	sw	a0,4(v0)
      statemt[2 + i * 4] = ret[2 + i * 4];
    21c8:	8c640008 	lw	a0,8(v1)
    21cc:	00000000 	sll	zero,zero,0x0
    21d0:	ac440008 	sw	a0,8(v0)
      statemt[3 + i * 4] = ret[3 + i * 4];
    21d4:	8c64000c 	lw	a0,12(v1)
    21d8:	00000000 	sll	zero,zero,0x0
    21dc:	ac44000c 	sw	a0,12(v0)
    21e0:	24630010 	addiu	v1,v1,16
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 3) % 4 + j * 4];
	ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    21e4:	1465fff2 	bne	v1,a1,21b0 <AddRoundKey_InversMixColumn+0x2b4>
    21e8:	24420010 	addiu	v0,v0,16
      statemt[1 + i * 4] = ret[1 + i * 4];
      statemt[2 + i * 4] = ret[2 + i * 4];
      statemt[3 + i * 4] = ret[3 + i * 4];
    }
  return 0;
}
    21ec:	00001021 	addu	v0,zero,zero
    21f0:	8fb50094 	lw	s5,148(sp)
    21f4:	8fb40090 	lw	s4,144(sp)
    21f8:	8fb3008c 	lw	s3,140(sp)
    21fc:	8fb20088 	lw	s2,136(sp)
    2200:	8fb10084 	lw	s1,132(sp)
    2204:	8fb00080 	lw	s0,128(sp)
    2208:	03e00008 	jr	ra
    220c:	27bd0098 	addiu	sp,sp,152

00002210 <AddRoundKey>:
int
AddRoundKey (int statemt[32], int type, int n)
{
  int j, nb;

  switch (type)
    2210:	3c020002 	lui	v0,0x2
    2214:	3442eec0 	ori	v0,v0,0xeec0
    2218:	10a20053 	beq	a1,v0,2368 <AddRoundKey+0x158>
    221c:	24020006 	addiu	v0,zero,6
    2220:	3c020002 	lui	v0,0x2
    2224:	3442eec1 	ori	v0,v0,0xeec1
    2228:	00a2102a 	slt	v0,a1,v0
    222c:	10400018 	beqz	v0,2290 <AddRoundKey+0x80>
    2230:	3c020003 	lui	v0,0x3
    2234:	3c020001 	lui	v0,0x1
    2238:	3442f4c0 	ori	v0,v0,0xf4c0
    223c:	10a2004a 	beq	a1,v0,2368 <AddRoundKey+0x158>
    2240:	24020006 	addiu	v0,zero,6
    2244:	3c020001 	lui	v0,0x1
    2248:	3442f4c1 	ori	v0,v0,0xf4c1
    224c:	00a2102a 	slt	v0,a1,v0
    2250:	10400006 	beqz	v0,226c <AddRoundKey+0x5c>
    2254:	3c020001 	lui	v0,0x1
    2258:	3442f480 	ori	v0,v0,0xf480
    225c:	14a20021 	bne	a1,v0,22e4 <AddRoundKey+0xd4>
    2260:	24020004 	addiu	v0,zero,4
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    2264:	080008db 	j	236c <AddRoundKey+0x15c>
    2268:	00460018 	mult	v0,a2
int
AddRoundKey (int statemt[32], int type, int n)
{
  int j, nb;

  switch (type)
    226c:	3442f500 	ori	v0,v0,0xf500
    2270:	10a2003d 	beq	a1,v0,2368 <AddRoundKey+0x158>
    2274:	24020008 	addiu	v0,zero,8
    2278:	3c020002 	lui	v0,0x2
    227c:	3442ee80 	ori	v0,v0,0xee80
    2280:	14a20018 	bne	a1,v0,22e4 <AddRoundKey+0xd4>
    2284:	24020004 	addiu	v0,zero,4
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    2288:	080008db 	j	236c <AddRoundKey+0x15c>
    228c:	00460018 	mult	v0,a2
int
AddRoundKey (int statemt[32], int type, int n)
{
  int j, nb;

  switch (type)
    2290:	3442e880 	ori	v0,v0,0xe880
    2294:	10a20034 	beq	a1,v0,2368 <AddRoundKey+0x158>
    2298:	24020004 	addiu	v0,zero,4
    229c:	3c020003 	lui	v0,0x3
    22a0:	3442e881 	ori	v0,v0,0xe881
    22a4:	00a2102a 	slt	v0,a1,v0
    22a8:	10400007 	beqz	v0,22c8 <AddRoundKey+0xb8>
    22ac:	3c020003 	lui	v0,0x3
    22b0:	3c020002 	lui	v0,0x2
    22b4:	3442ef00 	ori	v0,v0,0xef00
    22b8:	14a2000a 	bne	a1,v0,22e4 <AddRoundKey+0xd4>
    22bc:	24020008 	addiu	v0,zero,8
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    22c0:	080008db 	j	236c <AddRoundKey+0x15c>
    22c4:	00460018 	mult	v0,a2
int
AddRoundKey (int statemt[32], int type, int n)
{
  int j, nb;

  switch (type)
    22c8:	3442e8c0 	ori	v0,v0,0xe8c0
    22cc:	10a20026 	beq	a1,v0,2368 <AddRoundKey+0x158>
    22d0:	24020006 	addiu	v0,zero,6
    22d4:	3c020003 	lui	v0,0x3
    22d8:	3442e900 	ori	v0,v0,0xe900
    22dc:	10a20022 	beq	a1,v0,2368 <AddRoundKey+0x158>
    22e0:	24020008 	addiu	v0,zero,8
    case 192256:
    case 256256:
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    22e4:	00001021 	addu	v0,zero,zero
    22e8:	1c400020 	bgtz	v0,236c <AddRoundKey+0x15c>
    22ec:	00460018 	mult	v0,a2
    22f0:	080008d8 	j	2360 <AddRoundKey+0x150>
    22f4:	00000000 	sll	zero,zero,0x0
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    22f8:	8c870000 	lw	a3,0(a0)
    22fc:	8c660000 	lw	a2,0(v1)
    2300:	00000000 	sll	zero,zero,0x0
    2304:	00e63026 	xor	a2,a3,a2
    2308:	ac860000 	sw	a2,0(a0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    230c:	8c870004 	lw	a3,4(a0)
    2310:	8c6601e0 	lw	a2,480(v1)
    2314:	00000000 	sll	zero,zero,0x0
    2318:	00e63026 	xor	a2,a3,a2
    231c:	ac860004 	sw	a2,4(a0)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    2320:	8c870008 	lw	a3,8(a0)
    2324:	8c6603c0 	lw	a2,960(v1)
    2328:	00000000 	sll	zero,zero,0x0
    232c:	00e63026 	xor	a2,a3,a2
    2330:	ac860008 	sw	a2,8(a0)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    2334:	8c87000c 	lw	a3,12(a0)
    2338:	8c6605a0 	lw	a2,1440(v1)
    233c:	00000000 	sll	zero,zero,0x0
    2340:	00e63026 	xor	a2,a3,a2
    2344:	ac86000c 	sw	a2,12(a0)
    case 192256:
    case 256256:
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    2348:	24a50001 	addiu	a1,a1,1
    234c:	24840010 	addiu	a0,a0,16
    2350:	00a2302a 	slt	a2,a1,v0
    2354:	14c0ffe8 	bnez	a2,22f8 <AddRoundKey+0xe8>
    2358:	24630004 	addiu	v1,v1,4
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  return 0;
}
    235c:	00001021 	addu	v0,zero,zero
    2360:	03e00008 	jr	ra
    2364:	00000000 	sll	zero,zero,0x0
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    2368:	00460018 	mult	v0,a2
    236c:	00003012 	mflo	a2
  return 0;
}

/* ******** AddRoundKey ********** */
int
AddRoundKey (int statemt[32], int type, int n)
    2370:	00063080 	sll	a2,a2,0x2
    2374:	3c030000 	lui	v1,0x0
    2378:	24630000 	addiu	v1,v1,0
    237c:	00661821 	addu	v1,v1,a2
    2380:	080008be 	j	22f8 <AddRoundKey+0xe8>
    2384:	00002821 	addu	a1,zero,zero

00002388 <decrypt>:
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
int
decrypt (int statemt[32], int key[32], int type)
{
    2388:	27bdff90 	addiu	sp,sp,-112
    238c:	afbf006c 	sw	ra,108(sp)
    2390:	afb50068 	sw	s5,104(sp)
    2394:	afb40064 	sw	s4,100(sp)
    2398:	afb30060 	sw	s3,96(sp)
    239c:	afb2005c 	sw	s2,92(sp)
    23a0:	afb10058 	sw	s1,88(sp)
    23a4:	afb00054 	sw	s0,84(sp)
    23a8:	00808821 	addu	s1,a0,zero
    23ac:	00c09021 	addu	s2,a2,zero
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "decrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_dec_statemt[16] =
    23b0:	3c020000 	lui	v0,0x0
    23b4:	24420878 	addiu	v0,v0,2168
    23b8:	27a30010 	addiu	v1,sp,16
    23bc:	24440040 	addiu	a0,v0,64
    23c0:	8c490000 	lw	t1,0(v0)
    23c4:	8c480004 	lw	t0,4(v0)
    23c8:	8c470008 	lw	a3,8(v0)
    23cc:	8c46000c 	lw	a2,12(v0)
    23d0:	ac690000 	sw	t1,0(v1)
    23d4:	ac680004 	sw	t0,4(v1)
    23d8:	ac670008 	sw	a3,8(v1)
    23dc:	ac66000c 	sw	a2,12(v1)
    23e0:	24420010 	addiu	v0,v0,16
    23e4:	1444fff6 	bne	v0,a0,23c0 <decrypt+0x38>
    23e8:	24630010 	addiu	v1,v1,16
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);
    23ec:	0c000000 	jal	0 <ByteSub_ShiftRow>
    23f0:	02402021 	addu	a0,s2,zero

  switch (type)
    23f4:	3c020002 	lui	v0,0x2
    23f8:	3442eec0 	ori	v0,v0,0xeec0
    23fc:	12420032 	beq	s2,v0,24c8 <decrypt+0x140>
    2400:	3c020002 	lui	v0,0x2
    2404:	3442eec1 	ori	v0,v0,0xeec1
    2408:	0242102a 	slt	v0,s2,v0
    240c:	10400016 	beqz	v0,2468 <decrypt+0xe0>
    2410:	3c020003 	lui	v0,0x3
    2414:	3c020001 	lui	v0,0x1
    2418:	3442f4c0 	ori	v0,v0,0xf4c0
    241c:	1242002a 	beq	s2,v0,24c8 <decrypt+0x140>
    2420:	3c020001 	lui	v0,0x1
    2424:	3442f4c1 	ori	v0,v0,0xf4c1
    2428:	0242102a 	slt	v0,s2,v0
    242c:	10400006 	beqz	v0,2448 <decrypt+0xc0>
    2430:	3c020001 	lui	v0,0x1
    2434:	3442f480 	ori	v0,v0,0xf480
    2438:	1642003c 	bne	s2,v0,252c <decrypt+0x1a4>
    243c:	2402000a 	addiu	v0,zero,10
    {
    case 128128:
      round = 10;
    2440:	0800092f 	j	24bc <decrypt+0x134>
    2444:	af820000 	sw	v0,0(gp)
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);

  switch (type)
    2448:	3442f500 	ori	v0,v0,0xf500
    244c:	12420026 	beq	s2,v0,24e8 <decrypt+0x160>
    2450:	3c020002 	lui	v0,0x2
    2454:	3442ee80 	ori	v0,v0,0xee80
    2458:	16420034 	bne	s2,v0,252c <decrypt+0x1a4>
    245c:	2402000c 	addiu	v0,zero,12
    case 192192:
      round = 12;
      nb = 6;
      break;
    case 192128:
      round = 12;
    2460:	08000937 	j	24dc <decrypt+0x154>
    2464:	af820000 	sw	v0,0(gp)
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);

  switch (type)
    2468:	3442e880 	ori	v0,v0,0xe880
    246c:	12420023 	beq	s2,v0,24fc <decrypt+0x174>
    2470:	3c020003 	lui	v0,0x3
    2474:	3442e881 	ori	v0,v0,0xe881
    2478:	0242102a 	slt	v0,s2,v0
    247c:	10400007 	beqz	v0,249c <decrypt+0x114>
    2480:	3c020003 	lui	v0,0x3
    2484:	3c020002 	lui	v0,0x2
    2488:	3442ef00 	ori	v0,v0,0xef00
    248c:	16420027 	bne	s2,v0,252c <decrypt+0x1a4>
    2490:	2402000e 	addiu	v0,zero,14
      round = 12;
      nb = 4;
      break;
    case 128256:
    case 192256:
      round = 14;
    2494:	0800093c 	j	24f0 <decrypt+0x168>
    2498:	af820000 	sw	v0,0(gp)
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);

  switch (type)
    249c:	3442e8c0 	ori	v0,v0,0xe8c0
    24a0:	1242001b 	beq	s2,v0,2510 <decrypt+0x188>
    24a4:	3c020003 	lui	v0,0x3
    24a8:	3442e900 	ori	v0,v0,0xe900
    24ac:	1642001f 	bne	s2,v0,252c <decrypt+0x1a4>
    24b0:	2402000e 	addiu	v0,zero,14
    case 256192:
      round = 14;
      nb = 6;
      break;
    case 256256:
      round = 14;
    24b4:	08000949 	j	2524 <decrypt+0x19c>
    24b8:	af820000 	sw	v0,0(gp)

  switch (type)
    {
    case 128128:
      round = 10;
      nb = 4;
    24bc:	24020004 	addiu	v0,zero,4
      break;
    24c0:	0800094b 	j	252c <decrypt+0x1a4>
    24c4:	af820000 	sw	v0,0(gp)
    case 128192:
    case 192192:
      round = 12;
    24c8:	2402000c 	addiu	v0,zero,12
    24cc:	af820000 	sw	v0,0(gp)
      nb = 6;
    24d0:	24020006 	addiu	v0,zero,6
      break;
    24d4:	0800094b 	j	252c <decrypt+0x1a4>
    24d8:	af820000 	sw	v0,0(gp)
    case 192128:
      round = 12;
      nb = 4;
    24dc:	24020004 	addiu	v0,zero,4
      break;
    24e0:	0800094b 	j	252c <decrypt+0x1a4>
    24e4:	af820000 	sw	v0,0(gp)
    case 128256:
    case 192256:
      round = 14;
    24e8:	2402000e 	addiu	v0,zero,14
    24ec:	af820000 	sw	v0,0(gp)
      nb = 8;
    24f0:	24020008 	addiu	v0,zero,8
      break;
    24f4:	0800094b 	j	252c <decrypt+0x1a4>
    24f8:	af820000 	sw	v0,0(gp)
    case 256128:
      round = 14;
    24fc:	2402000e 	addiu	v0,zero,14
    2500:	af820000 	sw	v0,0(gp)
      nb = 4;
    2504:	24020004 	addiu	v0,zero,4
      break;
    2508:	0800094b 	j	252c <decrypt+0x1a4>
    250c:	af820000 	sw	v0,0(gp)
    case 256192:
      round = 14;
    2510:	2402000e 	addiu	v0,zero,14
    2514:	af820000 	sw	v0,0(gp)
      nb = 6;
    2518:	24020006 	addiu	v0,zero,6
      break;
    251c:	0800094b 	j	252c <decrypt+0x1a4>
    2520:	af820000 	sw	v0,0(gp)
    case 256256:
      round = 14;
      nb = 8;
    2524:	24020008 	addiu	v0,zero,8
    2528:	af820000 	sw	v0,0(gp)
      break;
    }

  AddRoundKey (statemt, type, round);
    252c:	02202021 	addu	a0,s1,zero
    2530:	8f860000 	lw	a2,0(gp)
    2534:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2538:	02402821 	addu	a1,s2,zero

  InversShiftRow_ByteSub (statemt, nb);
    253c:	8f850000 	lw	a1,0(gp)
    2540:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2544:	02202021 	addu	a0,s1,zero

  for (i = round - 1; i >= 1; --i)
    2548:	8f900000 	lw	s0,0(gp)
    254c:	00000000 	sll	zero,zero,0x0
    2550:	2610ffff 	addiu	s0,s0,-1
    2554:	1a00000b 	blez	s0,2584 <decrypt+0x1fc>
    2558:	00000000 	sll	zero,zero,0x0
    {
      AddRoundKey_InversMixColumn (statemt, nb, i);
    255c:	02202021 	addu	a0,s1,zero
    2560:	8f850000 	lw	a1,0(gp)
    2564:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2568:	02003021 	addu	a2,s0,zero
      InversShiftRow_ByteSub (statemt, nb);
    256c:	8f850000 	lw	a1,0(gp)
    2570:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2574:	02202021 	addu	a0,s1,zero

  AddRoundKey (statemt, type, round);

  InversShiftRow_ByteSub (statemt, nb);

  for (i = round - 1; i >= 1; --i)
    2578:	2610ffff 	addiu	s0,s0,-1
    257c:	1e00fff7 	bgtz	s0,255c <decrypt+0x1d4>
    2580:	00000000 	sll	zero,zero,0x0
    {
      AddRoundKey_InversMixColumn (statemt, nb, i);
      InversShiftRow_ByteSub (statemt, nb);
    }

  AddRoundKey (statemt, type, 0);
    2584:	02202021 	addu	a0,s1,zero
    2588:	02402821 	addu	a1,s2,zero
    258c:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2590:	00003021 	addu	a2,zero,zero

  printf ("\ndecrypto message\t");
    2594:	3c040000 	lui	a0,0x0
    2598:	0c000000 	jal	0 <ByteSub_ShiftRow>
    259c:	24840000 	addiu	a0,a0,0
  for (i = 0; i < ((type % 1000) / 8); ++i)
    25a0:	240203e8 	addiu	v0,zero,1000
    25a4:	14400002 	bnez	v0,25b0 <decrypt+0x228>
    25a8:	0242001a 	div	zero,s2,v0
    25ac:	0007000d 	break	0x7
    25b0:	00001010 	mfhi	v0
    25b4:	04410002 	bgez	v0,25c0 <decrypt+0x238>
    25b8:	0040a021 	addu	s4,v0,zero
    25bc:	24540007 	addiu	s4,v0,7
    25c0:	0014a0c3 	sra	s4,s4,0x3
    25c4:	1a800014 	blez	s4,2618 <decrypt+0x290>
    25c8:	00001021 	addu	v0,zero,zero
    25cc:	02208021 	addu	s0,s1,zero
    25d0:	00009021 	addu	s2,zero,zero
    {
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    25d4:	3c150000 	lui	s5,0x0
    25d8:	26b50000 	addiu	s5,s5,0
  AddRoundKey (statemt, type, 0);

  printf ("\ndecrypto message\t");
  for (i = 0; i < ((type % 1000) / 8); ++i)
    {
      if (statemt[i] < 16)
    25dc:	8e020000 	lw	v0,0(s0)
    25e0:	00000000 	sll	zero,zero,0x0
    25e4:	28420010 	slti	v0,v0,16
    25e8:	10400003 	beqz	v0,25f8 <decrypt+0x270>
    25ec:	02009821 	addu	s3,s0,zero
	printf ("0");
    25f0:	0c000000 	jal	0 <ByteSub_ShiftRow>
    25f4:	24040030 	addiu	a0,zero,48
      printf ("%x", statemt[i]);
    25f8:	8e650000 	lw	a1,0(s3)
    25fc:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2600:	02a02021 	addu	a0,s5,zero
    }

  AddRoundKey (statemt, type, 0);

  printf ("\ndecrypto message\t");
  for (i = 0; i < ((type % 1000) / 8); ++i)
    2604:	26520001 	addiu	s2,s2,1
    2608:	0254102a 	slt	v0,s2,s4
    260c:	1440fff3 	bnez	v0,25dc <decrypt+0x254>
    2610:	26100004 	addiu	s0,s0,4
    2614:	00001021 	addu	v0,zero,zero
 *   NEGLIGENCE OR OTHER TORTUOUS ACTION, ARISING OUT OF OR IN CONNECTION
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
int
decrypt (int statemt[32], int key[32], int type)
    2618:	27a60010 	addiu	a2,sp,16
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    261c:	24050040 	addiu	a1,zero,64
 *   NEGLIGENCE OR OTHER TORTUOUS ACTION, ARISING OUT OF OR IN CONNECTION
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
int
decrypt (int statemt[32], int key[32], int type)
    2620:	02222021 	addu	a0,s1,v0
    2624:	00c21821 	addu	v1,a2,v0
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_dec_statemt[i]);
    2628:	8c840000 	lw	a0,0(a0)
    262c:	8c630000 	lw	v1,0(v1)
    2630:	00000000 	sll	zero,zero,0x0
    2634:	00831826 	xor	v1,a0,v1
    2638:	0003182b 	sltu	v1,zero,v1
    263c:	8f840000 	lw	a0,0(gp)
    2640:	00000000 	sll	zero,zero,0x0
    2644:	00831821 	addu	v1,a0,v1
    2648:	24420004 	addiu	v0,v0,4
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    264c:	1445fff4 	bne	v0,a1,2620 <decrypt+0x298>
    2650:	af830000 	sw	v1,0(gp)
    main_result += (statemt[i] != out_dec_statemt[i]);

  return 0;
}
    2654:	00001021 	addu	v0,zero,zero
    2658:	8fbf006c 	lw	ra,108(sp)
    265c:	8fb50068 	lw	s5,104(sp)
    2660:	8fb40064 	lw	s4,100(sp)
    2664:	8fb30060 	lw	s3,96(sp)
    2668:	8fb2005c 	lw	s2,92(sp)
    266c:	8fb10058 	lw	s1,88(sp)
    2670:	8fb00054 	lw	s0,84(sp)
    2674:	03e00008 	jr	ra
    2678:	27bd0070 	addiu	sp,sp,112

0000267c <encrypt>:
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
{
    267c:	27bdff98 	addiu	sp,sp,-104
    2680:	afbf0064 	sw	ra,100(sp)
    2684:	afb40060 	sw	s4,96(sp)
    2688:	afb3005c 	sw	s3,92(sp)
    268c:	afb20058 	sw	s2,88(sp)
    2690:	afb10054 	sw	s1,84(sp)
    2694:	afb00050 	sw	s0,80(sp)
    2698:	00808821 	addu	s1,a0,zero
    269c:	00c09021 	addu	s2,a2,zero
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "encrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_enc_statemt[16] =
    26a0:	3c020000 	lui	v0,0x0
    26a4:	244208b8 	addiu	v0,v0,2232
    26a8:	27a30010 	addiu	v1,sp,16
    26ac:	24440040 	addiu	a0,v0,64
    26b0:	8c490000 	lw	t1,0(v0)
    26b4:	8c480004 	lw	t0,4(v0)
    26b8:	8c470008 	lw	a3,8(v0)
    26bc:	8c46000c 	lw	a2,12(v0)
    26c0:	ac690000 	sw	t1,0(v1)
    26c4:	ac680004 	sw	t0,4(v1)
    26c8:	ac670008 	sw	a3,8(v1)
    26cc:	ac66000c 	sw	a2,12(v1)
    26d0:	24420010 	addiu	v0,v0,16
    26d4:	1444fff6 	bne	v0,a0,26b0 <encrypt+0x34>
    26d8:	24630010 	addiu	v1,v1,16
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
    26dc:	0c000000 	jal	0 <ByteSub_ShiftRow>
    26e0:	02402021 	addu	a0,s2,zero
  switch (type)
    26e4:	3c020002 	lui	v0,0x2
    26e8:	3442eec0 	ori	v0,v0,0xeec0
    26ec:	1242003a 	beq	s2,v0,27d8 <encrypt+0x15c>
    26f0:	3c020002 	lui	v0,0x2
    26f4:	3442eec1 	ori	v0,v0,0xeec1
    26f8:	0242102a 	slt	v0,s2,v0
    26fc:	10400016 	beqz	v0,2758 <encrypt+0xdc>
    2700:	3c020003 	lui	v0,0x3
    2704:	3c020001 	lui	v0,0x1
    2708:	3442f4c0 	ori	v0,v0,0xf4c0
    270c:	12420032 	beq	s2,v0,27d8 <encrypt+0x15c>
    2710:	3c020001 	lui	v0,0x1
    2714:	3442f4c1 	ori	v0,v0,0xf4c1
    2718:	0242102a 	slt	v0,s2,v0
    271c:	10400006 	beqz	v0,2738 <encrypt+0xbc>
    2720:	3c020001 	lui	v0,0x1
    2724:	3442f480 	ori	v0,v0,0xf480
    2728:	1642003a 	bne	s2,v0,2814 <encrypt+0x198>
    272c:	02202021 	addu	a0,s1,zero
    {
    case 128128:
      round = 0;
    2730:	080009eb 	j	27ac <encrypt+0x130>
    2734:	af800000 	sw	zero,0(gp)
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
  switch (type)
    2738:	3442f500 	ori	v0,v0,0xf500
    273c:	12420030 	beq	s2,v0,2800 <encrypt+0x184>
    2740:	3c020002 	lui	v0,0x2
    2744:	3442ee80 	ori	v0,v0,0xee80
    2748:	16420032 	bne	s2,v0,2814 <encrypt+0x198>
    274c:	02202021 	addu	a0,s1,zero
    case 128128:
      round = 0;
      nb = 4;
      break;
    case 192128:
      round = 2;
    2750:	080009ee 	j	27b8 <encrypt+0x13c>
    2754:	24020002 	addiu	v0,zero,2
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
  switch (type)
    2758:	3442e880 	ori	v0,v0,0xe880
    275c:	1242001a 	beq	s2,v0,27c8 <encrypt+0x14c>
    2760:	3c020003 	lui	v0,0x3
    2764:	3442e881 	ori	v0,v0,0xe881
    2768:	0242102a 	slt	v0,s2,v0
    276c:	10400007 	beqz	v0,278c <encrypt+0x110>
    2770:	3c020003 	lui	v0,0x3
    2774:	3c020002 	lui	v0,0x2
    2778:	3442ef00 	ori	v0,v0,0xef00
    277c:	16420025 	bne	s2,v0,2814 <encrypt+0x198>
    2780:	02202021 	addu	a0,s1,zero
      nb = 6;
      break;
    case 128256:
    case 192256:
    case 256256:
      round = 4;
    2784:	08000a01 	j	2804 <encrypt+0x188>
    2788:	24020004 	addiu	v0,zero,4
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
  switch (type)
    278c:	3442e8c0 	ori	v0,v0,0xe8c0
    2790:	12420016 	beq	s2,v0,27ec <encrypt+0x170>
    2794:	3c020003 	lui	v0,0x3
    2798:	3442e900 	ori	v0,v0,0xe900
    279c:	1642001d 	bne	s2,v0,2814 <encrypt+0x198>
    27a0:	02202021 	addu	a0,s1,zero
      nb = 6;
      break;
    case 128256:
    case 192256:
    case 256256:
      round = 4;
    27a4:	08000a01 	j	2804 <encrypt+0x188>
    27a8:	24020004 	addiu	v0,zero,4
  KeySchedule (type, key);
  switch (type)
    {
    case 128128:
      round = 0;
      nb = 4;
    27ac:	24020004 	addiu	v0,zero,4
      break;
    27b0:	08000a04 	j	2810 <encrypt+0x194>
    27b4:	af820000 	sw	v0,0(gp)
    case 192128:
      round = 2;
    27b8:	af820000 	sw	v0,0(gp)
      nb = 4;
    27bc:	24020004 	addiu	v0,zero,4
      break;
    27c0:	08000a04 	j	2810 <encrypt+0x194>
    27c4:	af820000 	sw	v0,0(gp)
    case 256128:
      round = 4;
    27c8:	24020004 	addiu	v0,zero,4
    27cc:	af820000 	sw	v0,0(gp)
      nb = 4;
      break;
    27d0:	08000a04 	j	2810 <encrypt+0x194>
    27d4:	af820000 	sw	v0,0(gp)
    case 128192:
    case 192192:
      round = 2;
    27d8:	24020002 	addiu	v0,zero,2
    27dc:	af820000 	sw	v0,0(gp)
      nb = 6;
    27e0:	24020006 	addiu	v0,zero,6
      break;
    27e4:	08000a04 	j	2810 <encrypt+0x194>
    27e8:	af820000 	sw	v0,0(gp)
    case 256192:
      round = 4;
    27ec:	24020004 	addiu	v0,zero,4
    27f0:	af820000 	sw	v0,0(gp)
      nb = 6;
    27f4:	24020006 	addiu	v0,zero,6
      break;
    27f8:	08000a04 	j	2810 <encrypt+0x194>
    27fc:	af820000 	sw	v0,0(gp)
    case 128256:
    case 192256:
    case 256256:
      round = 4;
    2800:	24020004 	addiu	v0,zero,4
    2804:	af820000 	sw	v0,0(gp)
      nb = 8;
    2808:	24020008 	addiu	v0,zero,8
    280c:	af820000 	sw	v0,0(gp)
      break;
    }
  AddRoundKey (statemt, type, 0);
    2810:	02202021 	addu	a0,s1,zero
    2814:	02402821 	addu	a1,s2,zero
    2818:	0c000000 	jal	0 <ByteSub_ShiftRow>
    281c:	00003021 	addu	a2,zero,zero
  for (i = 1; i <= round + 9; ++i)
    2820:	8f820000 	lw	v0,0(gp)
    2824:	00000000 	sll	zero,zero,0x0
    2828:	24420009 	addiu	v0,v0,9
    282c:	1840000f 	blez	v0,286c <encrypt+0x1f0>
    2830:	24100001 	addiu	s0,zero,1
    {
      ByteSub_ShiftRow (statemt, nb);
    2834:	8f850000 	lw	a1,0(gp)
    2838:	0c000000 	jal	0 <ByteSub_ShiftRow>
    283c:	02202021 	addu	a0,s1,zero
      MixColumn_AddRoundKey (statemt, nb, i);
    2840:	02202021 	addu	a0,s1,zero
    2844:	8f850000 	lw	a1,0(gp)
    2848:	0c000000 	jal	0 <ByteSub_ShiftRow>
    284c:	02003021 	addu	a2,s0,zero
      round = 4;
      nb = 8;
      break;
    }
  AddRoundKey (statemt, type, 0);
  for (i = 1; i <= round + 9; ++i)
    2850:	26100001 	addiu	s0,s0,1
    2854:	8f820000 	lw	v0,0(gp)
    2858:	00000000 	sll	zero,zero,0x0
    285c:	24420009 	addiu	v0,v0,9
    2860:	0050102a 	slt	v0,v0,s0
    2864:	1040fff3 	beqz	v0,2834 <encrypt+0x1b8>
    2868:	00000000 	sll	zero,zero,0x0
    {
      ByteSub_ShiftRow (statemt, nb);
      MixColumn_AddRoundKey (statemt, nb, i);
    }
  ByteSub_ShiftRow (statemt, nb);
    286c:	8f850000 	lw	a1,0(gp)
    2870:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2874:	02202021 	addu	a0,s1,zero
  AddRoundKey (statemt, type, i);
    2878:	02202021 	addu	a0,s1,zero
    287c:	02402821 	addu	a1,s2,zero
    2880:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2884:	02003021 	addu	a2,s0,zero

  printf ("encrypted message \t");
    2888:	3c040000 	lui	a0,0x0
    288c:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2890:	24840000 	addiu	a0,a0,0
  for (i = 0; i < nb * 4; ++i)
    2894:	8f820000 	lw	v0,0(gp)
    2898:	00000000 	sll	zero,zero,0x0
    289c:	00021080 	sll	v0,v0,0x2
    28a0:	18400017 	blez	v0,2900 <encrypt+0x284>
    28a4:	00001021 	addu	v0,zero,zero
    28a8:	02208021 	addu	s0,s1,zero
    28ac:	00009021 	addu	s2,zero,zero
    {
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    28b0:	3c140000 	lui	s4,0x0
    28b4:	26940000 	addiu	s4,s4,0
  AddRoundKey (statemt, type, i);

  printf ("encrypted message \t");
  for (i = 0; i < nb * 4; ++i)
    {
      if (statemt[i] < 16)
    28b8:	8e020000 	lw	v0,0(s0)
    28bc:	00000000 	sll	zero,zero,0x0
    28c0:	28420010 	slti	v0,v0,16
    28c4:	10400003 	beqz	v0,28d4 <encrypt+0x258>
    28c8:	02009821 	addu	s3,s0,zero
	printf ("0");
    28cc:	0c000000 	jal	0 <ByteSub_ShiftRow>
    28d0:	24040030 	addiu	a0,zero,48
      printf ("%x", statemt[i]);
    28d4:	8e650000 	lw	a1,0(s3)
    28d8:	0c000000 	jal	0 <ByteSub_ShiftRow>
    28dc:	02802021 	addu	a0,s4,zero
    }
  ByteSub_ShiftRow (statemt, nb);
  AddRoundKey (statemt, type, i);

  printf ("encrypted message \t");
  for (i = 0; i < nb * 4; ++i)
    28e0:	26520001 	addiu	s2,s2,1
    28e4:	8f820000 	lw	v0,0(gp)
    28e8:	00000000 	sll	zero,zero,0x0
    28ec:	00021080 	sll	v0,v0,0x2
    28f0:	0242102a 	slt	v0,s2,v0
    28f4:	1440fff0 	bnez	v0,28b8 <encrypt+0x23c>
    28f8:	26100004 	addiu	s0,s0,4
    28fc:	00001021 	addu	v0,zero,zero
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
    2900:	27a60010 	addiu	a2,sp,16
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    2904:	24050040 	addiu	a1,zero,64
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
    2908:	02222021 	addu	a0,s1,v0
    290c:	00c21821 	addu	v1,a2,v0
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    main_result += (statemt[i] != out_enc_statemt[i]);
    2910:	8c840000 	lw	a0,0(a0)
    2914:	8c630000 	lw	v1,0(v1)
    2918:	00000000 	sll	zero,zero,0x0
    291c:	00831826 	xor	v1,a0,v1
    2920:	0003182b 	sltu	v1,zero,v1
    2924:	8f840000 	lw	a0,0(gp)
    2928:	00000000 	sll	zero,zero,0x0
    292c:	00831821 	addu	v1,a0,v1
    2930:	24420004 	addiu	v0,v0,4
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
    2934:	1445fff4 	bne	v0,a1,2908 <encrypt+0x28c>
    2938:	af830000 	sw	v1,0(gp)
    main_result += (statemt[i] != out_enc_statemt[i]);

  return 0;
}
    293c:	00001021 	addu	v0,zero,zero
    2940:	8fbf0064 	lw	ra,100(sp)
    2944:	8fb40060 	lw	s4,96(sp)
    2948:	8fb3005c 	lw	s3,92(sp)
    294c:	8fb20058 	lw	s2,88(sp)
    2950:	8fb10054 	lw	s1,84(sp)
    2954:	8fb00050 	lw	s0,80(sp)
    2958:	03e00008 	jr	ra
    295c:	27bd0068 	addiu	sp,sp,104

00002960 <aes_main>:
#include "aes_func.c"

/* ***************** main **************************** */
int
aes_main (void)
{
    2960:	27bdffe0 	addiu	sp,sp,-32
    2964:	afbf001c 	sw	ra,28(sp)
    2968:	afb20018 	sw	s2,24(sp)
    296c:	afb10014 	sw	s1,20(sp)
    2970:	afb00010 	sw	s0,16(sp)
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
    2974:	3c110000 	lui	s1,0x0
    2978:	24020032 	addiu	v0,zero,50
    297c:	ae220000 	sw	v0,0(s1)
  statemt[1] = 67;
    2980:	26310000 	addiu	s1,s1,0
    2984:	24020043 	addiu	v0,zero,67
    2988:	ae220004 	sw	v0,4(s1)
  statemt[2] = 246;
    298c:	240200f6 	addiu	v0,zero,246
    2990:	ae220008 	sw	v0,8(s1)
  statemt[3] = 168;
    2994:	240200a8 	addiu	v0,zero,168
    2998:	ae22000c 	sw	v0,12(s1)
  statemt[4] = 136;
    299c:	24020088 	addiu	v0,zero,136
    29a0:	ae220010 	sw	v0,16(s1)
  statemt[5] = 90;
    29a4:	2403005a 	addiu	v1,zero,90
    29a8:	ae230014 	sw	v1,20(s1)
  statemt[6] = 48;
    29ac:	24030030 	addiu	v1,zero,48
    29b0:	ae230018 	sw	v1,24(s1)
  statemt[7] = 141;
    29b4:	2403008d 	addiu	v1,zero,141
    29b8:	ae23001c 	sw	v1,28(s1)
  statemt[8] = 49;
    29bc:	24030031 	addiu	v1,zero,49
    29c0:	ae230020 	sw	v1,32(s1)
  statemt[9] = 49;
    29c4:	ae230024 	sw	v1,36(s1)
  statemt[10] = 152;
    29c8:	24030098 	addiu	v1,zero,152
    29cc:	ae230028 	sw	v1,40(s1)
  statemt[11] = 162;
    29d0:	240300a2 	addiu	v1,zero,162
    29d4:	ae23002c 	sw	v1,44(s1)
  statemt[12] = 224;
    29d8:	240300e0 	addiu	v1,zero,224
    29dc:	ae230030 	sw	v1,48(s1)
  statemt[13] = 55;
    29e0:	24030037 	addiu	v1,zero,55
    29e4:	ae230034 	sw	v1,52(s1)
  statemt[14] = 7;
    29e8:	24030007 	addiu	v1,zero,7
    29ec:	ae230038 	sw	v1,56(s1)
  statemt[15] = 52;
    29f0:	24030034 	addiu	v1,zero,52
    29f4:	ae23003c 	sw	v1,60(s1)

  key[0] = 43;
    29f8:	3c120000 	lui	s2,0x0
    29fc:	2403002b 	addiu	v1,zero,43
    2a00:	ae430000 	sw	v1,0(s2)
  key[1] = 126;
    2a04:	26520000 	addiu	s2,s2,0
    2a08:	2403007e 	addiu	v1,zero,126
    2a0c:	ae430004 	sw	v1,4(s2)
  key[2] = 21;
    2a10:	24030015 	addiu	v1,zero,21
    2a14:	ae430008 	sw	v1,8(s2)
  key[3] = 22;
    2a18:	24040016 	addiu	a0,zero,22
    2a1c:	ae44000c 	sw	a0,12(s2)
  key[4] = 40;
    2a20:	24040028 	addiu	a0,zero,40
    2a24:	ae440010 	sw	a0,16(s2)
  key[5] = 174;
    2a28:	240400ae 	addiu	a0,zero,174
    2a2c:	ae440014 	sw	a0,20(s2)
  key[6] = 210;
    2a30:	240400d2 	addiu	a0,zero,210
    2a34:	ae440018 	sw	a0,24(s2)
  key[7] = 166;
    2a38:	240400a6 	addiu	a0,zero,166
    2a3c:	ae44001c 	sw	a0,28(s2)
  key[8] = 171;
    2a40:	240400ab 	addiu	a0,zero,171
    2a44:	ae440020 	sw	a0,32(s2)
  key[9] = 247;
    2a48:	240400f7 	addiu	a0,zero,247
    2a4c:	ae440024 	sw	a0,36(s2)
  key[10] = 21;
    2a50:	ae430028 	sw	v1,40(s2)
  key[11] = 136;
    2a54:	ae42002c 	sw	v0,44(s2)
  key[12] = 9;
    2a58:	24020009 	addiu	v0,zero,9
    2a5c:	ae420030 	sw	v0,48(s2)
  key[13] = 207;
    2a60:	240200cf 	addiu	v0,zero,207
    2a64:	ae420034 	sw	v0,52(s2)
  key[14] = 79;
    2a68:	2402004f 	addiu	v0,zero,79
    2a6c:	ae420038 	sw	v0,56(s2)
  key[15] = 60;
    2a70:	2402003c 	addiu	v0,zero,60
    2a74:	ae42003c 	sw	v0,60(s2)

  encrypt (statemt, key, 128128);
    2a78:	02202021 	addu	a0,s1,zero
    2a7c:	02402821 	addu	a1,s2,zero
    2a80:	3c100001 	lui	s0,0x1
    2a84:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2a88:	3606f480 	ori	a2,s0,0xf480
  decrypt (statemt, key, 128128);
    2a8c:	02202021 	addu	a0,s1,zero
    2a90:	02402821 	addu	a1,s2,zero
    2a94:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2a98:	3606f480 	ori	a2,s0,0xf480
  return 0;
}
    2a9c:	00001021 	addu	v0,zero,zero
    2aa0:	8fbf001c 	lw	ra,28(sp)
    2aa4:	8fb20018 	lw	s2,24(sp)
    2aa8:	8fb10014 	lw	s1,20(sp)
    2aac:	8fb00010 	lw	s0,16(sp)
    2ab0:	03e00008 	jr	ra
    2ab4:	27bd0020 	addiu	sp,sp,32

00002ab8 <main>:

int
main ()
{
    2ab8:	27bdffe8 	addiu	sp,sp,-24
    2abc:	afbf0014 	sw	ra,20(sp)
      main_result = 0;
      aes_main ();
    2ac0:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2ac4:	af800000 	sw	zero,0(gp)
      printf ("\n%d\n", main_result);
    2ac8:	3c040000 	lui	a0,0x0
    2acc:	8f850000 	lw	a1,0(gp)
    2ad0:	0c000000 	jal	0 <ByteSub_ShiftRow>
    2ad4:	24840000 	addiu	a0,a0,0
      return main_result;
    }
    2ad8:	8f820000 	lw	v0,0(gp)
    2adc:	8fbf0014 	lw	ra,20(sp)
    2ae0:	00000000 	sll	zero,zero,0x0
    2ae4:	03e00008 	jr	ra
    2ae8:	27bd0018 	addiu	sp,sp,24

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

00000878 <C.1.3854>:
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

000008b8 <C.7.3872>:
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
