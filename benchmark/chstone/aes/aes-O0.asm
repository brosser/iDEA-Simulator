
aes.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <encrypt>:
 *
 */
/*  ******* encrypto ************ */
int
encrypt (int statemt[32], int key[32], int type)
{
       0:	27bdffa0 	addiu	sp,sp,-96
       4:	afbf005c 	sw	ra,92(sp)
       8:	afbe0058 	sw	s8,88(sp)
       c:	03a0f021 	addu	s8,sp,zero
      10:	afc40060 	sw	a0,96(s8)
      14:	afc50064 	sw	a1,100(s8)
      18:	afc60068 	sw	a2,104(s8)
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "encrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_enc_statemt[16] =
      1c:	3c020000 	lui	v0,0x0
      20:	27c40014 	addiu	a0,s8,20
      24:	244308ec 	addiu	v1,v0,2284
      28:	24020040 	addiu	v0,zero,64
      2c:	00602821 	addu	a1,v1,zero
      30:	00403021 	addu	a2,v0,zero
      34:	0c000000 	jal	0 <encrypt>
      38:	00000000 	sll	zero,zero,0x0
    { 0x39, 0x25, 0x84, 0x1d, 0x2, 0xdc, 0x9, 0xfb, 0xdc, 0x11, 0x85, 0x97,
    0x19, 0x6a, 0xb, 0x32
  };

  KeySchedule (type, key);
      3c:	8fc40068 	lw	a0,104(s8)
      40:	8fc50064 	lw	a1,100(s8)
      44:	0c000000 	jal	0 <encrypt>
      48:	00000000 	sll	zero,zero,0x0
  switch (type)
      4c:	8fc20068 	lw	v0,104(s8)
      50:	3c030002 	lui	v1,0x2
      54:	3463eec0 	ori	v1,v1,0xeec0
      58:	10430049 	beq	v0,v1,180 <encrypt+0x180>
      5c:	00000000 	sll	zero,zero,0x0
      60:	3c030002 	lui	v1,0x2
      64:	3463eec1 	ori	v1,v1,0xeec1
      68:	0043182a 	slt	v1,v0,v1
      6c:	1060001a 	beqz	v1,d8 <encrypt+0xd8>
      70:	00000000 	sll	zero,zero,0x0
      74:	3c030001 	lui	v1,0x1
      78:	3463f4c0 	ori	v1,v1,0xf4c0
      7c:	10430040 	beq	v0,v1,180 <encrypt+0x180>
      80:	00000000 	sll	zero,zero,0x0
      84:	3c030001 	lui	v1,0x1
      88:	3463f4c1 	ori	v1,v1,0xf4c1
      8c:	0043182a 	slt	v1,v0,v1
      90:	10600007 	beqz	v1,b0 <encrypt+0xb0>
      94:	00000000 	sll	zero,zero,0x0
      98:	3c030001 	lui	v1,0x1
      9c:	3463f480 	ori	v1,v1,0xf480
      a0:	10430026 	beq	v0,v1,13c <encrypt+0x13c>
      a4:	00000000 	sll	zero,zero,0x0
      a8:	08000071 	j	1c4 <encrypt+0x1c4>
      ac:	00000000 	sll	zero,zero,0x0
      b0:	3c030001 	lui	v1,0x1
      b4:	3463f500 	ori	v1,v1,0xf500
      b8:	1043003d 	beq	v0,v1,1b0 <encrypt+0x1b0>
      bc:	00000000 	sll	zero,zero,0x0
      c0:	3c030002 	lui	v1,0x2
      c4:	3463ee80 	ori	v1,v1,0xee80
      c8:	10430021 	beq	v0,v1,150 <encrypt+0x150>
      cc:	00000000 	sll	zero,zero,0x0
      d0:	08000071 	j	1c4 <encrypt+0x1c4>
      d4:	00000000 	sll	zero,zero,0x0
      d8:	3c030003 	lui	v1,0x3
      dc:	3463e880 	ori	v1,v1,0xe880
      e0:	10430021 	beq	v0,v1,168 <encrypt+0x168>
      e4:	00000000 	sll	zero,zero,0x0
      e8:	3c030003 	lui	v1,0x3
      ec:	3463e881 	ori	v1,v1,0xe881
      f0:	0043182a 	slt	v1,v0,v1
      f4:	10600007 	beqz	v1,114 <encrypt+0x114>
      f8:	00000000 	sll	zero,zero,0x0
      fc:	3c030002 	lui	v1,0x2
     100:	3463ef00 	ori	v1,v1,0xef00
     104:	1043002a 	beq	v0,v1,1b0 <encrypt+0x1b0>
     108:	00000000 	sll	zero,zero,0x0
     10c:	08000071 	j	1c4 <encrypt+0x1c4>
     110:	00000000 	sll	zero,zero,0x0
     114:	3c030003 	lui	v1,0x3
     118:	3463e8c0 	ori	v1,v1,0xe8c0
     11c:	1043001e 	beq	v0,v1,198 <encrypt+0x198>
     120:	00000000 	sll	zero,zero,0x0
     124:	3c030003 	lui	v1,0x3
     128:	3463e900 	ori	v1,v1,0xe900
     12c:	10430020 	beq	v0,v1,1b0 <encrypt+0x1b0>
     130:	00000000 	sll	zero,zero,0x0
     134:	08000071 	j	1c4 <encrypt+0x1c4>
     138:	00000000 	sll	zero,zero,0x0
    {
    case 128128:
      round = 0;
     13c:	af800000 	sw	zero,0(gp)
      nb = 4;
     140:	24020004 	addiu	v0,zero,4
     144:	af820000 	sw	v0,0(gp)
      break;
     148:	08000071 	j	1c4 <encrypt+0x1c4>
     14c:	00000000 	sll	zero,zero,0x0
    case 192128:
      round = 2;
     150:	24020002 	addiu	v0,zero,2
     154:	af820000 	sw	v0,0(gp)
      nb = 4;
     158:	24020004 	addiu	v0,zero,4
     15c:	af820000 	sw	v0,0(gp)
      break;
     160:	08000071 	j	1c4 <encrypt+0x1c4>
     164:	00000000 	sll	zero,zero,0x0
    case 256128:
      round = 4;
     168:	24020004 	addiu	v0,zero,4
     16c:	af820000 	sw	v0,0(gp)
      nb = 4;
     170:	24020004 	addiu	v0,zero,4
     174:	af820000 	sw	v0,0(gp)
      break;
     178:	08000071 	j	1c4 <encrypt+0x1c4>
     17c:	00000000 	sll	zero,zero,0x0
    case 128192:
    case 192192:
      round = 2;
     180:	24020002 	addiu	v0,zero,2
     184:	af820000 	sw	v0,0(gp)
      nb = 6;
     188:	24020006 	addiu	v0,zero,6
     18c:	af820000 	sw	v0,0(gp)
      break;
     190:	08000071 	j	1c4 <encrypt+0x1c4>
     194:	00000000 	sll	zero,zero,0x0
    case 256192:
      round = 4;
     198:	24020004 	addiu	v0,zero,4
     19c:	af820000 	sw	v0,0(gp)
      nb = 6;
     1a0:	24020006 	addiu	v0,zero,6
     1a4:	af820000 	sw	v0,0(gp)
      break;
     1a8:	08000071 	j	1c4 <encrypt+0x1c4>
     1ac:	00000000 	sll	zero,zero,0x0
    case 128256:
    case 192256:
    case 256256:
      round = 4;
     1b0:	24020004 	addiu	v0,zero,4
     1b4:	af820000 	sw	v0,0(gp)
      nb = 8;
     1b8:	24020008 	addiu	v0,zero,8
     1bc:	af820000 	sw	v0,0(gp)
      break;
     1c0:	00000000 	sll	zero,zero,0x0
    }
  AddRoundKey (statemt, type, 0);
     1c4:	8fc40060 	lw	a0,96(s8)
     1c8:	8fc50068 	lw	a1,104(s8)
     1cc:	00003021 	addu	a2,zero,zero
     1d0:	0c000000 	jal	0 <encrypt>
     1d4:	00000000 	sll	zero,zero,0x0
  for (i = 1; i <= round + 9; ++i)
     1d8:	24020001 	addiu	v0,zero,1
     1dc:	afc20010 	sw	v0,16(s8)
     1e0:	08000089 	j	224 <encrypt+0x224>
     1e4:	00000000 	sll	zero,zero,0x0
    {
      ByteSub_ShiftRow (statemt, nb);
     1e8:	8f820000 	lw	v0,0(gp)
     1ec:	8fc40060 	lw	a0,96(s8)
     1f0:	00402821 	addu	a1,v0,zero
     1f4:	0c000000 	jal	0 <encrypt>
     1f8:	00000000 	sll	zero,zero,0x0
      MixColumn_AddRoundKey (statemt, nb, i);
     1fc:	8f820000 	lw	v0,0(gp)
     200:	8fc40060 	lw	a0,96(s8)
     204:	00402821 	addu	a1,v0,zero
     208:	8fc60010 	lw	a2,16(s8)
     20c:	0c000000 	jal	0 <encrypt>
     210:	00000000 	sll	zero,zero,0x0
      round = 4;
      nb = 8;
      break;
    }
  AddRoundKey (statemt, type, 0);
  for (i = 1; i <= round + 9; ++i)
     214:	8fc20010 	lw	v0,16(s8)
     218:	00000000 	sll	zero,zero,0x0
     21c:	24420001 	addiu	v0,v0,1
     220:	afc20010 	sw	v0,16(s8)
     224:	8f820000 	lw	v0,0(gp)
     228:	00000000 	sll	zero,zero,0x0
     22c:	24430009 	addiu	v1,v0,9
     230:	8fc20010 	lw	v0,16(s8)
     234:	00000000 	sll	zero,zero,0x0
     238:	0062102a 	slt	v0,v1,v0
     23c:	1040ffea 	beqz	v0,1e8 <encrypt+0x1e8>
     240:	00000000 	sll	zero,zero,0x0
    {
      ByteSub_ShiftRow (statemt, nb);
      MixColumn_AddRoundKey (statemt, nb, i);
    }
  ByteSub_ShiftRow (statemt, nb);
     244:	8f820000 	lw	v0,0(gp)
     248:	8fc40060 	lw	a0,96(s8)
     24c:	00402821 	addu	a1,v0,zero
     250:	0c000000 	jal	0 <encrypt>
     254:	00000000 	sll	zero,zero,0x0
  AddRoundKey (statemt, type, i);
     258:	8fc40060 	lw	a0,96(s8)
     25c:	8fc50068 	lw	a1,104(s8)
     260:	8fc60010 	lw	a2,16(s8)
     264:	0c000000 	jal	0 <encrypt>
     268:	00000000 	sll	zero,zero,0x0

  printf ("encrypted message \t");
     26c:	3c020000 	lui	v0,0x0
     270:	24440000 	addiu	a0,v0,0
     274:	0c000000 	jal	0 <encrypt>
     278:	00000000 	sll	zero,zero,0x0
  for (i = 0; i < nb * 4; ++i)
     27c:	afc00010 	sw	zero,16(s8)
     280:	080000c0 	j	300 <encrypt+0x300>
     284:	00000000 	sll	zero,zero,0x0
    {
      if (statemt[i] < 16)
     288:	8fc20010 	lw	v0,16(s8)
     28c:	00000000 	sll	zero,zero,0x0
     290:	00021080 	sll	v0,v0,0x2
     294:	8fc30060 	lw	v1,96(s8)
     298:	00000000 	sll	zero,zero,0x0
     29c:	00621021 	addu	v0,v1,v0
     2a0:	8c420000 	lw	v0,0(v0)
     2a4:	00000000 	sll	zero,zero,0x0
     2a8:	28420010 	slti	v0,v0,16
     2ac:	10400004 	beqz	v0,2c0 <encrypt+0x2c0>
     2b0:	00000000 	sll	zero,zero,0x0
	printf ("0");
     2b4:	24040030 	addiu	a0,zero,48
     2b8:	0c000000 	jal	0 <encrypt>
     2bc:	00000000 	sll	zero,zero,0x0
      printf ("%x", statemt[i]);
     2c0:	8fc20010 	lw	v0,16(s8)
     2c4:	00000000 	sll	zero,zero,0x0
     2c8:	00021080 	sll	v0,v0,0x2
     2cc:	8fc30060 	lw	v1,96(s8)
     2d0:	00000000 	sll	zero,zero,0x0
     2d4:	00621021 	addu	v0,v1,v0
     2d8:	8c420000 	lw	v0,0(v0)
     2dc:	3c030000 	lui	v1,0x0
     2e0:	24640014 	addiu	a0,v1,20
     2e4:	00402821 	addu	a1,v0,zero
     2e8:	0c000000 	jal	0 <encrypt>
     2ec:	00000000 	sll	zero,zero,0x0
    }
  ByteSub_ShiftRow (statemt, nb);
  AddRoundKey (statemt, type, i);

  printf ("encrypted message \t");
  for (i = 0; i < nb * 4; ++i)
     2f0:	8fc20010 	lw	v0,16(s8)
     2f4:	00000000 	sll	zero,zero,0x0
     2f8:	24420001 	addiu	v0,v0,1
     2fc:	afc20010 	sw	v0,16(s8)
     300:	8f820000 	lw	v0,0(gp)
     304:	00000000 	sll	zero,zero,0x0
     308:	00021880 	sll	v1,v0,0x2
     30c:	8fc20010 	lw	v0,16(s8)
     310:	00000000 	sll	zero,zero,0x0
     314:	0043102a 	slt	v0,v0,v1
     318:	1440ffdb 	bnez	v0,288 <encrypt+0x288>
     31c:	00000000 	sll	zero,zero,0x0
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
     320:	afc00010 	sw	zero,16(s8)
     324:	080000e3 	j	38c <encrypt+0x38c>
     328:	00000000 	sll	zero,zero,0x0
    main_result += (statemt[i] != out_enc_statemt[i]);
     32c:	8fc20010 	lw	v0,16(s8)
     330:	00000000 	sll	zero,zero,0x0
     334:	00021080 	sll	v0,v0,0x2
     338:	8fc30060 	lw	v1,96(s8)
     33c:	00000000 	sll	zero,zero,0x0
     340:	00621021 	addu	v0,v1,v0
     344:	8c430000 	lw	v1,0(v0)
     348:	8fc20010 	lw	v0,16(s8)
     34c:	00000000 	sll	zero,zero,0x0
     350:	00021080 	sll	v0,v0,0x2
     354:	27c40010 	addiu	a0,s8,16
     358:	00821021 	addu	v0,a0,v0
     35c:	8c420004 	lw	v0,4(v0)
     360:	00000000 	sll	zero,zero,0x0
     364:	00621026 	xor	v0,v1,v0
     368:	0002182b 	sltu	v1,zero,v0
     36c:	8f820000 	lw	v0,0(gp)
     370:	00000000 	sll	zero,zero,0x0
     374:	00621021 	addu	v0,v1,v0
     378:	af820000 	sw	v0,0(gp)
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
     37c:	8fc20010 	lw	v0,16(s8)
     380:	00000000 	sll	zero,zero,0x0
     384:	24420001 	addiu	v0,v0,1
     388:	afc20010 	sw	v0,16(s8)
     38c:	8fc20010 	lw	v0,16(s8)
     390:	00000000 	sll	zero,zero,0x0
     394:	28420010 	slti	v0,v0,16
     398:	1440ffe4 	bnez	v0,32c <encrypt+0x32c>
     39c:	00000000 	sll	zero,zero,0x0
    main_result += (statemt[i] != out_enc_statemt[i]);

  return 0;
     3a0:	00001021 	addu	v0,zero,zero
}
     3a4:	03c0e821 	addu	sp,s8,zero
     3a8:	8fbf005c 	lw	ra,92(sp)
     3ac:	8fbe0058 	lw	s8,88(sp)
     3b0:	27bd0060 	addiu	sp,sp,96
     3b4:	03e00008 	jr	ra
     3b8:	00000000 	sll	zero,zero,0x0

000003bc <decrypt>:
 *   WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */
int
decrypt (int statemt[32], int key[32], int type)
{
     3bc:	27bdffa0 	addiu	sp,sp,-96
     3c0:	afbf005c 	sw	ra,92(sp)
     3c4:	afbe0058 	sw	s8,88(sp)
     3c8:	03a0f021 	addu	s8,sp,zero
     3cc:	afc40060 	sw	a0,96(s8)
     3d0:	afc50064 	sw	a1,100(s8)
     3d4:	afc60068 	sw	a2,104(s8)
+--------------------------------------------------------------------------+
| * Test Vector (added for CHStone)                                        |
|     out_enc_statemt : expected output data for "decrypt"                 |
+--------------------------------------------------------------------------+
*/
  const int out_dec_statemt[16] =
     3d8:	3c020000 	lui	v0,0x0
     3dc:	27c40014 	addiu	a0,s8,20
     3e0:	244308ac 	addiu	v1,v0,2220
     3e4:	24020040 	addiu	v0,zero,64
     3e8:	00602821 	addu	a1,v1,zero
     3ec:	00403021 	addu	a2,v0,zero
     3f0:	0c000000 	jal	0 <encrypt>
     3f4:	00000000 	sll	zero,zero,0x0
    { 0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d, 0x31, 0x31, 0x98, 0xa2,
    0xe0, 0x37, 0x7, 0x34
  };
  KeySchedule (type, key);
     3f8:	8fc40068 	lw	a0,104(s8)
     3fc:	8fc50064 	lw	a1,100(s8)
     400:	0c000000 	jal	0 <encrypt>
     404:	00000000 	sll	zero,zero,0x0

  switch (type)
     408:	8fc20068 	lw	v0,104(s8)
     40c:	3c030002 	lui	v1,0x2
     410:	3463eec0 	ori	v1,v1,0xeec0
     414:	1043003e 	beq	v0,v1,510 <decrypt+0x154>
     418:	00000000 	sll	zero,zero,0x0
     41c:	3c030002 	lui	v1,0x2
     420:	3463eec1 	ori	v1,v1,0xeec1
     424:	0043182a 	slt	v1,v0,v1
     428:	1060001a 	beqz	v1,494 <decrypt+0xd8>
     42c:	00000000 	sll	zero,zero,0x0
     430:	3c030001 	lui	v1,0x1
     434:	3463f4c0 	ori	v1,v1,0xf4c0
     438:	10430035 	beq	v0,v1,510 <decrypt+0x154>
     43c:	00000000 	sll	zero,zero,0x0
     440:	3c030001 	lui	v1,0x1
     444:	3463f4c1 	ori	v1,v1,0xf4c1
     448:	0043182a 	slt	v1,v0,v1
     44c:	10600007 	beqz	v1,46c <decrypt+0xb0>
     450:	00000000 	sll	zero,zero,0x0
     454:	3c030001 	lui	v1,0x1
     458:	3463f480 	ori	v1,v1,0xf480
     45c:	10430026 	beq	v0,v1,4f8 <decrypt+0x13c>
     460:	00000000 	sll	zero,zero,0x0
     464:	08000167 	j	59c <decrypt+0x1e0>
     468:	00000000 	sll	zero,zero,0x0
     46c:	3c030001 	lui	v1,0x1
     470:	3463f500 	ori	v1,v1,0xf500
     474:	10430032 	beq	v0,v1,540 <decrypt+0x184>
     478:	00000000 	sll	zero,zero,0x0
     47c:	3c030002 	lui	v1,0x2
     480:	3463ee80 	ori	v1,v1,0xee80
     484:	10430028 	beq	v0,v1,528 <decrypt+0x16c>
     488:	00000000 	sll	zero,zero,0x0
     48c:	08000167 	j	59c <decrypt+0x1e0>
     490:	00000000 	sll	zero,zero,0x0
     494:	3c030003 	lui	v1,0x3
     498:	3463e880 	ori	v1,v1,0xe880
     49c:	1043002e 	beq	v0,v1,558 <decrypt+0x19c>
     4a0:	00000000 	sll	zero,zero,0x0
     4a4:	3c030003 	lui	v1,0x3
     4a8:	3463e881 	ori	v1,v1,0xe881
     4ac:	0043182a 	slt	v1,v0,v1
     4b0:	10600007 	beqz	v1,4d0 <decrypt+0x114>
     4b4:	00000000 	sll	zero,zero,0x0
     4b8:	3c030002 	lui	v1,0x2
     4bc:	3463ef00 	ori	v1,v1,0xef00
     4c0:	1043001f 	beq	v0,v1,540 <decrypt+0x184>
     4c4:	00000000 	sll	zero,zero,0x0
     4c8:	08000167 	j	59c <decrypt+0x1e0>
     4cc:	00000000 	sll	zero,zero,0x0
     4d0:	3c030003 	lui	v1,0x3
     4d4:	3463e8c0 	ori	v1,v1,0xe8c0
     4d8:	10430025 	beq	v0,v1,570 <decrypt+0x1b4>
     4dc:	00000000 	sll	zero,zero,0x0
     4e0:	3c030003 	lui	v1,0x3
     4e4:	3463e900 	ori	v1,v1,0xe900
     4e8:	10430027 	beq	v0,v1,588 <decrypt+0x1cc>
     4ec:	00000000 	sll	zero,zero,0x0
     4f0:	08000167 	j	59c <decrypt+0x1e0>
     4f4:	00000000 	sll	zero,zero,0x0
    {
    case 128128:
      round = 10;
     4f8:	2402000a 	addiu	v0,zero,10
     4fc:	af820000 	sw	v0,0(gp)
      nb = 4;
     500:	24020004 	addiu	v0,zero,4
     504:	af820000 	sw	v0,0(gp)
      break;
     508:	08000167 	j	59c <decrypt+0x1e0>
     50c:	00000000 	sll	zero,zero,0x0
    case 128192:
    case 192192:
      round = 12;
     510:	2402000c 	addiu	v0,zero,12
     514:	af820000 	sw	v0,0(gp)
      nb = 6;
     518:	24020006 	addiu	v0,zero,6
     51c:	af820000 	sw	v0,0(gp)
      break;
     520:	08000167 	j	59c <decrypt+0x1e0>
     524:	00000000 	sll	zero,zero,0x0
    case 192128:
      round = 12;
     528:	2402000c 	addiu	v0,zero,12
     52c:	af820000 	sw	v0,0(gp)
      nb = 4;
     530:	24020004 	addiu	v0,zero,4
     534:	af820000 	sw	v0,0(gp)
      break;
     538:	08000167 	j	59c <decrypt+0x1e0>
     53c:	00000000 	sll	zero,zero,0x0
    case 128256:
    case 192256:
      round = 14;
     540:	2402000e 	addiu	v0,zero,14
     544:	af820000 	sw	v0,0(gp)
      nb = 8;
     548:	24020008 	addiu	v0,zero,8
     54c:	af820000 	sw	v0,0(gp)
      break;
     550:	08000167 	j	59c <decrypt+0x1e0>
     554:	00000000 	sll	zero,zero,0x0
    case 256128:
      round = 14;
     558:	2402000e 	addiu	v0,zero,14
     55c:	af820000 	sw	v0,0(gp)
      nb = 4;
     560:	24020004 	addiu	v0,zero,4
     564:	af820000 	sw	v0,0(gp)
      break;
     568:	08000167 	j	59c <decrypt+0x1e0>
     56c:	00000000 	sll	zero,zero,0x0
    case 256192:
      round = 14;
     570:	2402000e 	addiu	v0,zero,14
     574:	af820000 	sw	v0,0(gp)
      nb = 6;
     578:	24020006 	addiu	v0,zero,6
     57c:	af820000 	sw	v0,0(gp)
      break;
     580:	08000167 	j	59c <decrypt+0x1e0>
     584:	00000000 	sll	zero,zero,0x0
    case 256256:
      round = 14;
     588:	2402000e 	addiu	v0,zero,14
     58c:	af820000 	sw	v0,0(gp)
      nb = 8;
     590:	24020008 	addiu	v0,zero,8
     594:	af820000 	sw	v0,0(gp)
      break;
     598:	00000000 	sll	zero,zero,0x0
    }

  AddRoundKey (statemt, type, round);
     59c:	8f820000 	lw	v0,0(gp)
     5a0:	8fc40060 	lw	a0,96(s8)
     5a4:	8fc50068 	lw	a1,104(s8)
     5a8:	00403021 	addu	a2,v0,zero
     5ac:	0c000000 	jal	0 <encrypt>
     5b0:	00000000 	sll	zero,zero,0x0

  InversShiftRow_ByteSub (statemt, nb);
     5b4:	8f820000 	lw	v0,0(gp)
     5b8:	8fc40060 	lw	a0,96(s8)
     5bc:	00402821 	addu	a1,v0,zero
     5c0:	0c000000 	jal	0 <encrypt>
     5c4:	00000000 	sll	zero,zero,0x0

  for (i = round - 1; i >= 1; --i)
     5c8:	8f820000 	lw	v0,0(gp)
     5cc:	00000000 	sll	zero,zero,0x0
     5d0:	2442ffff 	addiu	v0,v0,-1
     5d4:	afc20010 	sw	v0,16(s8)
     5d8:	08000187 	j	61c <decrypt+0x260>
     5dc:	00000000 	sll	zero,zero,0x0
    {
      AddRoundKey_InversMixColumn (statemt, nb, i);
     5e0:	8f820000 	lw	v0,0(gp)
     5e4:	8fc40060 	lw	a0,96(s8)
     5e8:	00402821 	addu	a1,v0,zero
     5ec:	8fc60010 	lw	a2,16(s8)
     5f0:	0c000000 	jal	0 <encrypt>
     5f4:	00000000 	sll	zero,zero,0x0
      InversShiftRow_ByteSub (statemt, nb);
     5f8:	8f820000 	lw	v0,0(gp)
     5fc:	8fc40060 	lw	a0,96(s8)
     600:	00402821 	addu	a1,v0,zero
     604:	0c000000 	jal	0 <encrypt>
     608:	00000000 	sll	zero,zero,0x0

  AddRoundKey (statemt, type, round);

  InversShiftRow_ByteSub (statemt, nb);

  for (i = round - 1; i >= 1; --i)
     60c:	8fc20010 	lw	v0,16(s8)
     610:	00000000 	sll	zero,zero,0x0
     614:	2442ffff 	addiu	v0,v0,-1
     618:	afc20010 	sw	v0,16(s8)
     61c:	8fc20010 	lw	v0,16(s8)
     620:	00000000 	sll	zero,zero,0x0
     624:	1c40ffee 	bgtz	v0,5e0 <decrypt+0x224>
     628:	00000000 	sll	zero,zero,0x0
    {
      AddRoundKey_InversMixColumn (statemt, nb, i);
      InversShiftRow_ByteSub (statemt, nb);
    }

  AddRoundKey (statemt, type, 0);
     62c:	8fc40060 	lw	a0,96(s8)
     630:	8fc50068 	lw	a1,104(s8)
     634:	00003021 	addu	a2,zero,zero
     638:	0c000000 	jal	0 <encrypt>
     63c:	00000000 	sll	zero,zero,0x0

  printf ("\ndecrypto message\t");
     640:	3c020000 	lui	v0,0x0
     644:	24440018 	addiu	a0,v0,24
     648:	0c000000 	jal	0 <encrypt>
     64c:	00000000 	sll	zero,zero,0x0
  for (i = 0; i < ((type % 1000) / 8); ++i)
     650:	afc00010 	sw	zero,16(s8)
     654:	080001b5 	j	6d4 <decrypt+0x318>
     658:	00000000 	sll	zero,zero,0x0
    {
      if (statemt[i] < 16)
     65c:	8fc20010 	lw	v0,16(s8)
     660:	00000000 	sll	zero,zero,0x0
     664:	00021080 	sll	v0,v0,0x2
     668:	8fc30060 	lw	v1,96(s8)
     66c:	00000000 	sll	zero,zero,0x0
     670:	00621021 	addu	v0,v1,v0
     674:	8c420000 	lw	v0,0(v0)
     678:	00000000 	sll	zero,zero,0x0
     67c:	28420010 	slti	v0,v0,16
     680:	10400004 	beqz	v0,694 <decrypt+0x2d8>
     684:	00000000 	sll	zero,zero,0x0
	printf ("0");
     688:	24040030 	addiu	a0,zero,48
     68c:	0c000000 	jal	0 <encrypt>
     690:	00000000 	sll	zero,zero,0x0
      printf ("%x", statemt[i]);
     694:	8fc20010 	lw	v0,16(s8)
     698:	00000000 	sll	zero,zero,0x0
     69c:	00021080 	sll	v0,v0,0x2
     6a0:	8fc30060 	lw	v1,96(s8)
     6a4:	00000000 	sll	zero,zero,0x0
     6a8:	00621021 	addu	v0,v1,v0
     6ac:	8c420000 	lw	v0,0(v0)
     6b0:	3c030000 	lui	v1,0x0
     6b4:	24640014 	addiu	a0,v1,20
     6b8:	00402821 	addu	a1,v0,zero
     6bc:	0c000000 	jal	0 <encrypt>
     6c0:	00000000 	sll	zero,zero,0x0
    }

  AddRoundKey (statemt, type, 0);

  printf ("\ndecrypto message\t");
  for (i = 0; i < ((type % 1000) / 8); ++i)
     6c4:	8fc20010 	lw	v0,16(s8)
     6c8:	00000000 	sll	zero,zero,0x0
     6cc:	24420001 	addiu	v0,v0,1
     6d0:	afc20010 	sw	v0,16(s8)
     6d4:	8fc30068 	lw	v1,104(s8)
     6d8:	240203e8 	addiu	v0,zero,1000
     6dc:	14400002 	bnez	v0,6e8 <decrypt+0x32c>
     6e0:	0062001a 	div	zero,v1,v0
     6e4:	0007000d 	break	0x7
     6e8:	00001010 	mfhi	v0
     6ec:	04410002 	bgez	v0,6f8 <decrypt+0x33c>
     6f0:	00000000 	sll	zero,zero,0x0
     6f4:	24420007 	addiu	v0,v0,7
     6f8:	000210c3 	sra	v0,v0,0x3
     6fc:	00401821 	addu	v1,v0,zero
     700:	8fc20010 	lw	v0,16(s8)
     704:	00000000 	sll	zero,zero,0x0
     708:	0043102a 	slt	v0,v0,v1
     70c:	1440ffd3 	bnez	v0,65c <decrypt+0x2a0>
     710:	00000000 	sll	zero,zero,0x0
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
     714:	afc00010 	sw	zero,16(s8)
     718:	080001e0 	j	780 <decrypt+0x3c4>
     71c:	00000000 	sll	zero,zero,0x0
    main_result += (statemt[i] != out_dec_statemt[i]);
     720:	8fc20010 	lw	v0,16(s8)
     724:	00000000 	sll	zero,zero,0x0
     728:	00021080 	sll	v0,v0,0x2
     72c:	8fc30060 	lw	v1,96(s8)
     730:	00000000 	sll	zero,zero,0x0
     734:	00621021 	addu	v0,v1,v0
     738:	8c430000 	lw	v1,0(v0)
     73c:	8fc20010 	lw	v0,16(s8)
     740:	00000000 	sll	zero,zero,0x0
     744:	00021080 	sll	v0,v0,0x2
     748:	27c40010 	addiu	a0,s8,16
     74c:	00821021 	addu	v0,a0,v0
     750:	8c420004 	lw	v0,4(v0)
     754:	00000000 	sll	zero,zero,0x0
     758:	00621026 	xor	v0,v1,v0
     75c:	0002182b 	sltu	v1,zero,v0
     760:	8f820000 	lw	v0,0(gp)
     764:	00000000 	sll	zero,zero,0x0
     768:	00621021 	addu	v0,v1,v0
     76c:	af820000 	sw	v0,0(gp)
      if (statemt[i] < 16)
	printf ("0");
      printf ("%x", statemt[i]);
    }

  for (i = 0; i < 16; i++)
     770:	8fc20010 	lw	v0,16(s8)
     774:	00000000 	sll	zero,zero,0x0
     778:	24420001 	addiu	v0,v0,1
     77c:	afc20010 	sw	v0,16(s8)
     780:	8fc20010 	lw	v0,16(s8)
     784:	00000000 	sll	zero,zero,0x0
     788:	28420010 	slti	v0,v0,16
     78c:	1440ffe4 	bnez	v0,720 <decrypt+0x364>
     790:	00000000 	sll	zero,zero,0x0
    main_result += (statemt[i] != out_dec_statemt[i]);

  return 0;
     794:	00001021 	addu	v0,zero,zero
}
     798:	03c0e821 	addu	sp,s8,zero
     79c:	8fbf005c 	lw	ra,92(sp)
     7a0:	8fbe0058 	lw	s8,88(sp)
     7a4:	27bd0060 	addiu	sp,sp,96
     7a8:	03e00008 	jr	ra
     7ac:	00000000 	sll	zero,zero,0x0

000007b0 <KeySchedule>:
};

/*  **************** key expand ************************ */
int
KeySchedule (int type, int key[32])
{
     7b0:	27bdffc0 	addiu	sp,sp,-64
     7b4:	afbf003c 	sw	ra,60(sp)
     7b8:	afbe0038 	sw	s8,56(sp)
     7bc:	03a0f021 	addu	s8,sp,zero
     7c0:	afc40040 	sw	a0,64(s8)
     7c4:	afc50044 	sw	a1,68(s8)
  int nk, nb, round;
  int i, j, temp[4];

  switch (type)
     7c8:	8fc20040 	lw	v0,64(s8)
     7cc:	3c030002 	lui	v1,0x2
     7d0:	3463eec0 	ori	v1,v1,0xeec0
     7d4:	10430058 	beq	v0,v1,938 <KeySchedule+0x188>
     7d8:	00000000 	sll	zero,zero,0x0
     7dc:	3c030002 	lui	v1,0x2
     7e0:	3463eec1 	ori	v1,v1,0xeec1
     7e4:	0043182a 	slt	v1,v0,v1
     7e8:	1060001a 	beqz	v1,854 <KeySchedule+0xa4>
     7ec:	00000000 	sll	zero,zero,0x0
     7f0:	3c030001 	lui	v1,0x1
     7f4:	3463f4c0 	ori	v1,v1,0xf4c0
     7f8:	10430037 	beq	v0,v1,8d8 <KeySchedule+0x128>
     7fc:	00000000 	sll	zero,zero,0x0
     800:	3c030001 	lui	v1,0x1
     804:	3463f4c1 	ori	v1,v1,0xf4c1
     808:	0043182a 	slt	v1,v0,v1
     80c:	10600007 	beqz	v1,82c <KeySchedule+0x7c>
     810:	00000000 	sll	zero,zero,0x0
     814:	3c030001 	lui	v1,0x1
     818:	3463f480 	ori	v1,v1,0xf480
     81c:	10430026 	beq	v0,v1,8b8 <KeySchedule+0x108>
     820:	00000000 	sll	zero,zero,0x0
     824:	08000276 	j	9d8 <KeySchedule+0x228>
     828:	00000000 	sll	zero,zero,0x0
     82c:	3c030001 	lui	v1,0x1
     830:	3463f500 	ori	v1,v1,0xf500
     834:	10430030 	beq	v0,v1,8f8 <KeySchedule+0x148>
     838:	00000000 	sll	zero,zero,0x0
     83c:	3c030002 	lui	v1,0x2
     840:	3463ee80 	ori	v1,v1,0xee80
     844:	10430034 	beq	v0,v1,918 <KeySchedule+0x168>
     848:	00000000 	sll	zero,zero,0x0
     84c:	08000276 	j	9d8 <KeySchedule+0x228>
     850:	00000000 	sll	zero,zero,0x0
     854:	3c030003 	lui	v1,0x3
     858:	3463e880 	ori	v1,v1,0xe880
     85c:	10430046 	beq	v0,v1,978 <KeySchedule+0x1c8>
     860:	00000000 	sll	zero,zero,0x0
     864:	3c030003 	lui	v1,0x3
     868:	3463e881 	ori	v1,v1,0xe881
     86c:	0043182a 	slt	v1,v0,v1
     870:	10600007 	beqz	v1,890 <KeySchedule+0xe0>
     874:	00000000 	sll	zero,zero,0x0
     878:	3c030002 	lui	v1,0x2
     87c:	3463ef00 	ori	v1,v1,0xef00
     880:	10430035 	beq	v0,v1,958 <KeySchedule+0x1a8>
     884:	00000000 	sll	zero,zero,0x0
     888:	08000276 	j	9d8 <KeySchedule+0x228>
     88c:	00000000 	sll	zero,zero,0x0
     890:	3c030003 	lui	v1,0x3
     894:	3463e8c0 	ori	v1,v1,0xe8c0
     898:	1043003f 	beq	v0,v1,998 <KeySchedule+0x1e8>
     89c:	00000000 	sll	zero,zero,0x0
     8a0:	3c030003 	lui	v1,0x3
     8a4:	3463e900 	ori	v1,v1,0xe900
     8a8:	10430043 	beq	v0,v1,9b8 <KeySchedule+0x208>
     8ac:	00000000 	sll	zero,zero,0x0
     8b0:	08000276 	j	9d8 <KeySchedule+0x228>
     8b4:	00000000 	sll	zero,zero,0x0
    {
    case 128128:
      nk = 4;
     8b8:	24020004 	addiu	v0,zero,4
     8bc:	afc20010 	sw	v0,16(s8)
      nb = 4;
     8c0:	24020004 	addiu	v0,zero,4
     8c4:	afc20014 	sw	v0,20(s8)
      round = 10;
     8c8:	2402000a 	addiu	v0,zero,10
     8cc:	afc20018 	sw	v0,24(s8)
      break;
     8d0:	08000279 	j	9e4 <KeySchedule+0x234>
     8d4:	00000000 	sll	zero,zero,0x0
    case 128192:
      nk = 4;
     8d8:	24020004 	addiu	v0,zero,4
     8dc:	afc20010 	sw	v0,16(s8)
      nb = 6;
     8e0:	24020006 	addiu	v0,zero,6
     8e4:	afc20014 	sw	v0,20(s8)
      round = 12;
     8e8:	2402000c 	addiu	v0,zero,12
     8ec:	afc20018 	sw	v0,24(s8)
      break;
     8f0:	08000279 	j	9e4 <KeySchedule+0x234>
     8f4:	00000000 	sll	zero,zero,0x0
    case 128256:
      nk = 4;
     8f8:	24020004 	addiu	v0,zero,4
     8fc:	afc20010 	sw	v0,16(s8)
      nb = 8;
     900:	24020008 	addiu	v0,zero,8
     904:	afc20014 	sw	v0,20(s8)
      round = 14;
     908:	2402000e 	addiu	v0,zero,14
     90c:	afc20018 	sw	v0,24(s8)
      break;
     910:	08000279 	j	9e4 <KeySchedule+0x234>
     914:	00000000 	sll	zero,zero,0x0
    case 192128:
      nk = 6;
     918:	24020006 	addiu	v0,zero,6
     91c:	afc20010 	sw	v0,16(s8)
      nb = 4;
     920:	24020004 	addiu	v0,zero,4
     924:	afc20014 	sw	v0,20(s8)
      round = 12;
     928:	2402000c 	addiu	v0,zero,12
     92c:	afc20018 	sw	v0,24(s8)
      break;
     930:	08000279 	j	9e4 <KeySchedule+0x234>
     934:	00000000 	sll	zero,zero,0x0
    case 192192:
      nk = 6;
     938:	24020006 	addiu	v0,zero,6
     93c:	afc20010 	sw	v0,16(s8)
      nb = 6;
     940:	24020006 	addiu	v0,zero,6
     944:	afc20014 	sw	v0,20(s8)
      round = 12;
     948:	2402000c 	addiu	v0,zero,12
     94c:	afc20018 	sw	v0,24(s8)
      break;
     950:	08000279 	j	9e4 <KeySchedule+0x234>
     954:	00000000 	sll	zero,zero,0x0
    case 192256:
      nk = 6;
     958:	24020006 	addiu	v0,zero,6
     95c:	afc20010 	sw	v0,16(s8)
      nb = 8;
     960:	24020008 	addiu	v0,zero,8
     964:	afc20014 	sw	v0,20(s8)
      round = 14;
     968:	2402000e 	addiu	v0,zero,14
     96c:	afc20018 	sw	v0,24(s8)
      break;
     970:	08000279 	j	9e4 <KeySchedule+0x234>
     974:	00000000 	sll	zero,zero,0x0
    case 256128:
      nk = 8;
     978:	24020008 	addiu	v0,zero,8
     97c:	afc20010 	sw	v0,16(s8)
      nb = 4;
     980:	24020004 	addiu	v0,zero,4
     984:	afc20014 	sw	v0,20(s8)
      round = 14;
     988:	2402000e 	addiu	v0,zero,14
     98c:	afc20018 	sw	v0,24(s8)
      break;
     990:	08000279 	j	9e4 <KeySchedule+0x234>
     994:	00000000 	sll	zero,zero,0x0
    case 256192:
      nk = 8;
     998:	24020008 	addiu	v0,zero,8
     99c:	afc20010 	sw	v0,16(s8)
      nb = 6;
     9a0:	24020006 	addiu	v0,zero,6
     9a4:	afc20014 	sw	v0,20(s8)
      round = 14;
     9a8:	2402000e 	addiu	v0,zero,14
     9ac:	afc20018 	sw	v0,24(s8)
      break;
     9b0:	08000279 	j	9e4 <KeySchedule+0x234>
     9b4:	00000000 	sll	zero,zero,0x0
    case 256256:
      nk = 8;
     9b8:	24020008 	addiu	v0,zero,8
     9bc:	afc20010 	sw	v0,16(s8)
      nb = 8;
     9c0:	24020008 	addiu	v0,zero,8
     9c4:	afc20014 	sw	v0,20(s8)
      round = 14;
     9c8:	2402000e 	addiu	v0,zero,14
     9cc:	afc20018 	sw	v0,24(s8)
      break;
     9d0:	08000279 	j	9e4 <KeySchedule+0x234>
     9d4:	00000000 	sll	zero,zero,0x0
    default:
      return -1;
     9d8:	2402ffff 	addiu	v0,zero,-1
     9dc:	080003a2 	j	e88 <KeySchedule+0x6d8>
     9e0:	00000000 	sll	zero,zero,0x0
    }
  for (j = 0; j < nk; ++j)
     9e4:	afc00020 	sw	zero,32(s8)
     9e8:	080002a4 	j	a90 <KeySchedule+0x2e0>
     9ec:	00000000 	sll	zero,zero,0x0
    for (i = 0; i < 4; ++i)
     9f0:	afc0001c 	sw	zero,28(s8)
     9f4:	0800029b 	j	a6c <KeySchedule+0x2bc>
     9f8:	00000000 	sll	zero,zero,0x0
/* 0 word */
      word[i][j] = key[i + j * 4];
     9fc:	8fc20020 	lw	v0,32(s8)
     a00:	00000000 	sll	zero,zero,0x0
     a04:	00021880 	sll	v1,v0,0x2
     a08:	8fc2001c 	lw	v0,28(s8)
     a0c:	00000000 	sll	zero,zero,0x0
     a10:	00621021 	addu	v0,v1,v0
     a14:	00021080 	sll	v0,v0,0x2
     a18:	8fc30044 	lw	v1,68(s8)
     a1c:	00000000 	sll	zero,zero,0x0
     a20:	00621021 	addu	v0,v1,v0
     a24:	8c440000 	lw	a0,0(v0)
     a28:	3c050000 	lui	a1,0x0
     a2c:	8fc2001c 	lw	v0,28(s8)
     a30:	00000000 	sll	zero,zero,0x0
     a34:	000210c0 	sll	v0,v0,0x3
     a38:	00021900 	sll	v1,v0,0x4
     a3c:	00621823 	subu	v1,v1,v0
     a40:	8fc20020 	lw	v0,32(s8)
     a44:	00000000 	sll	zero,zero,0x0
     a48:	00621021 	addu	v0,v1,v0
     a4c:	00021880 	sll	v1,v0,0x2
     a50:	24a20000 	addiu	v0,a1,0
     a54:	00621021 	addu	v0,v1,v0
     a58:	ac440000 	sw	a0,0(v0)
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
    for (i = 0; i < 4; ++i)
     a5c:	8fc2001c 	lw	v0,28(s8)
     a60:	00000000 	sll	zero,zero,0x0
     a64:	24420001 	addiu	v0,v0,1
     a68:	afc2001c 	sw	v0,28(s8)
     a6c:	8fc2001c 	lw	v0,28(s8)
     a70:	00000000 	sll	zero,zero,0x0
     a74:	28420004 	slti	v0,v0,4
     a78:	1440ffe0 	bnez	v0,9fc <KeySchedule+0x24c>
     a7c:	00000000 	sll	zero,zero,0x0
      round = 14;
      break;
    default:
      return -1;
    }
  for (j = 0; j < nk; ++j)
     a80:	8fc20020 	lw	v0,32(s8)
     a84:	00000000 	sll	zero,zero,0x0
     a88:	24420001 	addiu	v0,v0,1
     a8c:	afc20020 	sw	v0,32(s8)
     a90:	8fc30020 	lw	v1,32(s8)
     a94:	8fc20010 	lw	v0,16(s8)
     a98:	00000000 	sll	zero,zero,0x0
     a9c:	0062102a 	slt	v0,v1,v0
     aa0:	1440ffd3 	bnez	v0,9f0 <KeySchedule+0x240>
     aa4:	00000000 	sll	zero,zero,0x0
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];

/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
     aa8:	8fc20010 	lw	v0,16(s8)
     aac:	00000000 	sll	zero,zero,0x0
     ab0:	afc20020 	sw	v0,32(s8)
     ab4:	08000395 	j	e54 <KeySchedule+0x6a4>
     ab8:	00000000 	sll	zero,zero,0x0
    {

/* RotByte */
      if ((j % nk) == 0)
     abc:	8fc30020 	lw	v1,32(s8)
     ac0:	8fc20010 	lw	v0,16(s8)
     ac4:	00000000 	sll	zero,zero,0x0
     ac8:	14400002 	bnez	v0,ad4 <KeySchedule+0x324>
     acc:	0062001a 	div	zero,v1,v0
     ad0:	0007000d 	break	0x7
     ad4:	00001010 	mfhi	v0
     ad8:	14400049 	bnez	v0,c00 <KeySchedule+0x450>
     adc:	00000000 	sll	zero,zero,0x0
	{
	  temp[0] = SubByte (word[1][j - 1]) ^ Rcon0[(j / nk) - 1];
     ae0:	8fc20020 	lw	v0,32(s8)
     ae4:	00000000 	sll	zero,zero,0x0
     ae8:	2443ffff 	addiu	v1,v0,-1
     aec:	3c020000 	lui	v0,0x0
     af0:	24630078 	addiu	v1,v1,120
     af4:	00031880 	sll	v1,v1,0x2
     af8:	24420000 	addiu	v0,v0,0
     afc:	00621021 	addu	v0,v1,v0
     b00:	8c420000 	lw	v0,0(v0)
     b04:	00000000 	sll	zero,zero,0x0
     b08:	00402021 	addu	a0,v0,zero
     b0c:	0c000000 	jal	0 <encrypt>
     b10:	00000000 	sll	zero,zero,0x0
     b14:	00401821 	addu	v1,v0,zero
     b18:	8fc40020 	lw	a0,32(s8)
     b1c:	8fc20010 	lw	v0,16(s8)
     b20:	00000000 	sll	zero,zero,0x0
     b24:	14400002 	bnez	v0,b30 <KeySchedule+0x380>
     b28:	0082001a 	div	zero,a0,v0
     b2c:	0007000d 	break	0x7
     b30:	00002010 	mfhi	a0
     b34:	00001012 	mflo	v0
     b38:	2444ffff 	addiu	a0,v0,-1
     b3c:	3c020000 	lui	v0,0x0
     b40:	00042080 	sll	a0,a0,0x2
     b44:	24420000 	addiu	v0,v0,0
     b48:	00821021 	addu	v0,a0,v0
     b4c:	8c420000 	lw	v0,0(v0)
     b50:	00000000 	sll	zero,zero,0x0
     b54:	00621026 	xor	v0,v1,v0
     b58:	afc20024 	sw	v0,36(s8)
	  temp[1] = SubByte (word[2][j - 1]);
     b5c:	8fc20020 	lw	v0,32(s8)
     b60:	00000000 	sll	zero,zero,0x0
     b64:	2443ffff 	addiu	v1,v0,-1
     b68:	3c020000 	lui	v0,0x0
     b6c:	246300f0 	addiu	v1,v1,240
     b70:	00031880 	sll	v1,v1,0x2
     b74:	24420000 	addiu	v0,v0,0
     b78:	00621021 	addu	v0,v1,v0
     b7c:	8c420000 	lw	v0,0(v0)
     b80:	00000000 	sll	zero,zero,0x0
     b84:	00402021 	addu	a0,v0,zero
     b88:	0c000000 	jal	0 <encrypt>
     b8c:	00000000 	sll	zero,zero,0x0
     b90:	afc20028 	sw	v0,40(s8)
	  temp[2] = SubByte (word[3][j - 1]);
     b94:	8fc20020 	lw	v0,32(s8)
     b98:	00000000 	sll	zero,zero,0x0
     b9c:	2443ffff 	addiu	v1,v0,-1
     ba0:	3c020000 	lui	v0,0x0
     ba4:	24630168 	addiu	v1,v1,360
     ba8:	00031880 	sll	v1,v1,0x2
     bac:	24420000 	addiu	v0,v0,0
     bb0:	00621021 	addu	v0,v1,v0
     bb4:	8c420000 	lw	v0,0(v0)
     bb8:	00000000 	sll	zero,zero,0x0
     bbc:	00402021 	addu	a0,v0,zero
     bc0:	0c000000 	jal	0 <encrypt>
     bc4:	00000000 	sll	zero,zero,0x0
     bc8:	afc2002c 	sw	v0,44(s8)
	  temp[3] = SubByte (word[0][j - 1]);
     bcc:	8fc20020 	lw	v0,32(s8)
     bd0:	00000000 	sll	zero,zero,0x0
     bd4:	2443ffff 	addiu	v1,v0,-1
     bd8:	3c020000 	lui	v0,0x0
     bdc:	00031880 	sll	v1,v1,0x2
     be0:	24420000 	addiu	v0,v0,0
     be4:	00621021 	addu	v0,v1,v0
     be8:	8c420000 	lw	v0,0(v0)
     bec:	00000000 	sll	zero,zero,0x0
     bf0:	00402021 	addu	a0,v0,zero
     bf4:	0c000000 	jal	0 <encrypt>
     bf8:	00000000 	sll	zero,zero,0x0
     bfc:	afc20030 	sw	v0,48(s8)
	}
      if ((j % nk) != 0)
     c00:	8fc30020 	lw	v1,32(s8)
     c04:	8fc20010 	lw	v0,16(s8)
     c08:	00000000 	sll	zero,zero,0x0
     c0c:	14400002 	bnez	v0,c18 <KeySchedule+0x468>
     c10:	0062001a 	div	zero,v1,v0
     c14:	0007000d 	break	0x7
     c18:	00001010 	mfhi	v0
     c1c:	1040002c 	beqz	v0,cd0 <KeySchedule+0x520>
     c20:	00000000 	sll	zero,zero,0x0
	{
	  temp[0] = word[0][j - 1];
     c24:	8fc20020 	lw	v0,32(s8)
     c28:	00000000 	sll	zero,zero,0x0
     c2c:	2443ffff 	addiu	v1,v0,-1
     c30:	3c020000 	lui	v0,0x0
     c34:	00031880 	sll	v1,v1,0x2
     c38:	24420000 	addiu	v0,v0,0
     c3c:	00621021 	addu	v0,v1,v0
     c40:	8c420000 	lw	v0,0(v0)
     c44:	00000000 	sll	zero,zero,0x0
     c48:	afc20024 	sw	v0,36(s8)
	  temp[1] = word[1][j - 1];
     c4c:	8fc20020 	lw	v0,32(s8)
     c50:	00000000 	sll	zero,zero,0x0
     c54:	2443ffff 	addiu	v1,v0,-1
     c58:	3c020000 	lui	v0,0x0
     c5c:	24630078 	addiu	v1,v1,120
     c60:	00031880 	sll	v1,v1,0x2
     c64:	24420000 	addiu	v0,v0,0
     c68:	00621021 	addu	v0,v1,v0
     c6c:	8c420000 	lw	v0,0(v0)
     c70:	00000000 	sll	zero,zero,0x0
     c74:	afc20028 	sw	v0,40(s8)
	  temp[2] = word[2][j - 1];
     c78:	8fc20020 	lw	v0,32(s8)
     c7c:	00000000 	sll	zero,zero,0x0
     c80:	2443ffff 	addiu	v1,v0,-1
     c84:	3c020000 	lui	v0,0x0
     c88:	246300f0 	addiu	v1,v1,240
     c8c:	00031880 	sll	v1,v1,0x2
     c90:	24420000 	addiu	v0,v0,0
     c94:	00621021 	addu	v0,v1,v0
     c98:	8c420000 	lw	v0,0(v0)
     c9c:	00000000 	sll	zero,zero,0x0
     ca0:	afc2002c 	sw	v0,44(s8)
	  temp[3] = word[3][j - 1];
     ca4:	8fc20020 	lw	v0,32(s8)
     ca8:	00000000 	sll	zero,zero,0x0
     cac:	2443ffff 	addiu	v1,v0,-1
     cb0:	3c020000 	lui	v0,0x0
     cb4:	24630168 	addiu	v1,v1,360
     cb8:	00031880 	sll	v1,v1,0x2
     cbc:	24420000 	addiu	v0,v0,0
     cc0:	00621021 	addu	v0,v1,v0
     cc4:	8c420000 	lw	v0,0(v0)
     cc8:	00000000 	sll	zero,zero,0x0
     ccc:	afc20030 	sw	v0,48(s8)
	}
      if (nk > 6 && j % nk == 4)
     cd0:	8fc20010 	lw	v0,16(s8)
     cd4:	00000000 	sll	zero,zero,0x0
     cd8:	28420007 	slti	v0,v0,7
     cdc:	14400029 	bnez	v0,d84 <KeySchedule+0x5d4>
     ce0:	00000000 	sll	zero,zero,0x0
     ce4:	8fc30020 	lw	v1,32(s8)
     ce8:	8fc20010 	lw	v0,16(s8)
     cec:	00000000 	sll	zero,zero,0x0
     cf0:	14400002 	bnez	v0,cfc <KeySchedule+0x54c>
     cf4:	0062001a 	div	zero,v1,v0
     cf8:	0007000d 	break	0x7
     cfc:	00001010 	mfhi	v0
     d00:	00401821 	addu	v1,v0,zero
     d04:	24020004 	addiu	v0,zero,4
     d08:	1462001e 	bne	v1,v0,d84 <KeySchedule+0x5d4>
     d0c:	00000000 	sll	zero,zero,0x0
	for (i = 0; i < 4; ++i)
     d10:	afc0001c 	sw	zero,28(s8)
     d14:	0800035c 	j	d70 <KeySchedule+0x5c0>
     d18:	00000000 	sll	zero,zero,0x0
	  temp[i] = SubByte (temp[i]);
     d1c:	8fc2001c 	lw	v0,28(s8)
     d20:	00000000 	sll	zero,zero,0x0
     d24:	00021080 	sll	v0,v0,0x2
     d28:	27c30010 	addiu	v1,s8,16
     d2c:	00621021 	addu	v0,v1,v0
     d30:	8c420014 	lw	v0,20(v0)
     d34:	00000000 	sll	zero,zero,0x0
     d38:	00402021 	addu	a0,v0,zero
     d3c:	0c000000 	jal	0 <encrypt>
     d40:	00000000 	sll	zero,zero,0x0
     d44:	00401821 	addu	v1,v0,zero
     d48:	8fc2001c 	lw	v0,28(s8)
     d4c:	00000000 	sll	zero,zero,0x0
     d50:	00021080 	sll	v0,v0,0x2
     d54:	27c40010 	addiu	a0,s8,16
     d58:	00821021 	addu	v0,a0,v0
     d5c:	ac430014 	sw	v1,20(v0)
	  temp[1] = word[1][j - 1];
	  temp[2] = word[2][j - 1];
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
     d60:	8fc2001c 	lw	v0,28(s8)
     d64:	00000000 	sll	zero,zero,0x0
     d68:	24420001 	addiu	v0,v0,1
     d6c:	afc2001c 	sw	v0,28(s8)
     d70:	8fc2001c 	lw	v0,28(s8)
     d74:	00000000 	sll	zero,zero,0x0
     d78:	28420004 	slti	v0,v0,4
     d7c:	1440ffe7 	bnez	v0,d1c <KeySchedule+0x56c>
     d80:	00000000 	sll	zero,zero,0x0
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
     d84:	afc0001c 	sw	zero,28(s8)
     d88:	0800038c 	j	e30 <KeySchedule+0x680>
     d8c:	00000000 	sll	zero,zero,0x0
	word[i][j] = word[i][j - nk] ^ temp[i];
     d90:	8fc30020 	lw	v1,32(s8)
     d94:	8fc20010 	lw	v0,16(s8)
     d98:	00000000 	sll	zero,zero,0x0
     d9c:	00622823 	subu	a1,v1,v0
     da0:	3c040000 	lui	a0,0x0
     da4:	8fc2001c 	lw	v0,28(s8)
     da8:	00000000 	sll	zero,zero,0x0
     dac:	000210c0 	sll	v0,v0,0x3
     db0:	00021900 	sll	v1,v0,0x4
     db4:	00621823 	subu	v1,v1,v0
     db8:	00651021 	addu	v0,v1,a1
     dbc:	00021880 	sll	v1,v0,0x2
     dc0:	24820000 	addiu	v0,a0,0
     dc4:	00621021 	addu	v0,v1,v0
     dc8:	8c430000 	lw	v1,0(v0)
     dcc:	8fc2001c 	lw	v0,28(s8)
     dd0:	00000000 	sll	zero,zero,0x0
     dd4:	00021080 	sll	v0,v0,0x2
     dd8:	27c40010 	addiu	a0,s8,16
     ddc:	00821021 	addu	v0,a0,v0
     de0:	8c420014 	lw	v0,20(v0)
     de4:	00000000 	sll	zero,zero,0x0
     de8:	00622026 	xor	a0,v1,v0
     dec:	3c050000 	lui	a1,0x0
     df0:	8fc2001c 	lw	v0,28(s8)
     df4:	00000000 	sll	zero,zero,0x0
     df8:	000210c0 	sll	v0,v0,0x3
     dfc:	00021900 	sll	v1,v0,0x4
     e00:	00621823 	subu	v1,v1,v0
     e04:	8fc20020 	lw	v0,32(s8)
     e08:	00000000 	sll	zero,zero,0x0
     e0c:	00621021 	addu	v0,v1,v0
     e10:	00021880 	sll	v1,v0,0x2
     e14:	24a20000 	addiu	v0,a1,0
     e18:	00621021 	addu	v0,v1,v0
     e1c:	ac440000 	sw	a0,0(v0)
	  temp[3] = word[3][j - 1];
	}
      if (nk > 6 && j % nk == 4)
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
     e20:	8fc2001c 	lw	v0,28(s8)
     e24:	00000000 	sll	zero,zero,0x0
     e28:	24420001 	addiu	v0,v0,1
     e2c:	afc2001c 	sw	v0,28(s8)
     e30:	8fc2001c 	lw	v0,28(s8)
     e34:	00000000 	sll	zero,zero,0x0
     e38:	28420004 	slti	v0,v0,4
     e3c:	1440ffd4 	bnez	v0,d90 <KeySchedule+0x5e0>
     e40:	00000000 	sll	zero,zero,0x0
    for (i = 0; i < 4; ++i)
/* 0 word */
      word[i][j] = key[i + j * 4];

/* expanded key is generated */
  for (j = nk; j < nb * (round + 1); ++j)
     e44:	8fc20020 	lw	v0,32(s8)
     e48:	00000000 	sll	zero,zero,0x0
     e4c:	24420001 	addiu	v0,v0,1
     e50:	afc20020 	sw	v0,32(s8)
     e54:	8fc20018 	lw	v0,24(s8)
     e58:	00000000 	sll	zero,zero,0x0
     e5c:	24430001 	addiu	v1,v0,1
     e60:	8fc20014 	lw	v0,20(s8)
     e64:	00000000 	sll	zero,zero,0x0
     e68:	00620018 	mult	v1,v0
     e6c:	00001812 	mflo	v1
     e70:	8fc20020 	lw	v0,32(s8)
     e74:	00000000 	sll	zero,zero,0x0
     e78:	0043102a 	slt	v0,v0,v1
     e7c:	1440ff0f 	bnez	v0,abc <KeySchedule+0x30c>
     e80:	00000000 	sll	zero,zero,0x0
	for (i = 0; i < 4; ++i)
	  temp[i] = SubByte (temp[i]);
      for (i = 0; i < 4; ++i)
	word[i][j] = word[i][j - nk] ^ temp[i];
    }
  return 0;
     e84:	00001021 	addu	v0,zero,zero
}
     e88:	03c0e821 	addu	sp,s8,zero
     e8c:	8fbf003c 	lw	ra,60(sp)
     e90:	8fbe0038 	lw	s8,56(sp)
     e94:	27bd0040 	addiu	sp,sp,64
     e98:	03e00008 	jr	ra
     e9c:	00000000 	sll	zero,zero,0x0

00000ea0 <ByteSub_ShiftRow>:
};

/* ********* ByteSub & ShiftRow ********* */
void
ByteSub_ShiftRow (int statemt[32], int nb)
{
     ea0:	27bdfff0 	addiu	sp,sp,-16
     ea4:	afbe000c 	sw	s8,12(sp)
     ea8:	03a0f021 	addu	s8,sp,zero
     eac:	afc40010 	sw	a0,16(s8)
     eb0:	afc50014 	sw	a1,20(s8)
  int temp;

  switch (nb)
     eb4:	8fc20014 	lw	v0,20(s8)
     eb8:	24030006 	addiu	v1,zero,6
     ebc:	10430191 	beq	v0,v1,1504 <ByteSub_ShiftRow+0x664>
     ec0:	00000000 	sll	zero,zero,0x0
     ec4:	24030008 	addiu	v1,zero,8
     ec8:	104303de 	beq	v0,v1,1e44 <ByteSub_ShiftRow+0xfa4>
     ecc:	00000000 	sll	zero,zero,0x0
     ed0:	24030004 	addiu	v1,zero,4
     ed4:	144306ea 	bne	v0,v1,2a80 <ByteSub_ShiftRow+0x1be0>
     ed8:	00000000 	sll	zero,zero,0x0
    {
    case 4:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
     edc:	8fc20010 	lw	v0,16(s8)
     ee0:	00000000 	sll	zero,zero,0x0
     ee4:	24420004 	addiu	v0,v0,4
     ee8:	8c420000 	lw	v0,0(v0)
     eec:	00000000 	sll	zero,zero,0x0
     ef0:	00022103 	sra	a0,v0,0x4
     ef4:	8fc20010 	lw	v0,16(s8)
     ef8:	00000000 	sll	zero,zero,0x0
     efc:	24420004 	addiu	v0,v0,4
     f00:	8c420000 	lw	v0,0(v0)
     f04:	00000000 	sll	zero,zero,0x0
     f08:	3043000f 	andi	v1,v0,0xf
     f0c:	3c020000 	lui	v0,0x0
     f10:	00042100 	sll	a0,a0,0x4
     f14:	00831821 	addu	v1,a0,v1
     f18:	00031880 	sll	v1,v1,0x2
     f1c:	24420000 	addiu	v0,v0,0
     f20:	00621021 	addu	v0,v1,v0
     f24:	8c420000 	lw	v0,0(v0)
     f28:	00000000 	sll	zero,zero,0x0
     f2c:	afc20000 	sw	v0,0(s8)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
     f30:	8fc20010 	lw	v0,16(s8)
     f34:	00000000 	sll	zero,zero,0x0
     f38:	24420004 	addiu	v0,v0,4
     f3c:	8fc30010 	lw	v1,16(s8)
     f40:	00000000 	sll	zero,zero,0x0
     f44:	24630014 	addiu	v1,v1,20
     f48:	8c630000 	lw	v1,0(v1)
     f4c:	00000000 	sll	zero,zero,0x0
     f50:	00032903 	sra	a1,v1,0x4
     f54:	8fc30010 	lw	v1,16(s8)
     f58:	00000000 	sll	zero,zero,0x0
     f5c:	24630014 	addiu	v1,v1,20
     f60:	8c630000 	lw	v1,0(v1)
     f64:	00000000 	sll	zero,zero,0x0
     f68:	3064000f 	andi	a0,v1,0xf
     f6c:	3c030000 	lui	v1,0x0
     f70:	00052900 	sll	a1,a1,0x4
     f74:	00a42021 	addu	a0,a1,a0
     f78:	00042080 	sll	a0,a0,0x2
     f7c:	24630000 	addiu	v1,v1,0
     f80:	00831821 	addu	v1,a0,v1
     f84:	8c630000 	lw	v1,0(v1)
     f88:	00000000 	sll	zero,zero,0x0
     f8c:	ac430000 	sw	v1,0(v0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
     f90:	8fc20010 	lw	v0,16(s8)
     f94:	00000000 	sll	zero,zero,0x0
     f98:	24420014 	addiu	v0,v0,20
     f9c:	8fc30010 	lw	v1,16(s8)
     fa0:	00000000 	sll	zero,zero,0x0
     fa4:	24630024 	addiu	v1,v1,36
     fa8:	8c630000 	lw	v1,0(v1)
     fac:	00000000 	sll	zero,zero,0x0
     fb0:	00032903 	sra	a1,v1,0x4
     fb4:	8fc30010 	lw	v1,16(s8)
     fb8:	00000000 	sll	zero,zero,0x0
     fbc:	24630024 	addiu	v1,v1,36
     fc0:	8c630000 	lw	v1,0(v1)
     fc4:	00000000 	sll	zero,zero,0x0
     fc8:	3064000f 	andi	a0,v1,0xf
     fcc:	3c030000 	lui	v1,0x0
     fd0:	00052900 	sll	a1,a1,0x4
     fd4:	00a42021 	addu	a0,a1,a0
     fd8:	00042080 	sll	a0,a0,0x2
     fdc:	24630000 	addiu	v1,v1,0
     fe0:	00831821 	addu	v1,a0,v1
     fe4:	8c630000 	lw	v1,0(v1)
     fe8:	00000000 	sll	zero,zero,0x0
     fec:	ac430000 	sw	v1,0(v0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
     ff0:	8fc20010 	lw	v0,16(s8)
     ff4:	00000000 	sll	zero,zero,0x0
     ff8:	24420024 	addiu	v0,v0,36
     ffc:	8fc30010 	lw	v1,16(s8)
    1000:	00000000 	sll	zero,zero,0x0
    1004:	24630034 	addiu	v1,v1,52
    1008:	8c630000 	lw	v1,0(v1)
    100c:	00000000 	sll	zero,zero,0x0
    1010:	00032903 	sra	a1,v1,0x4
    1014:	8fc30010 	lw	v1,16(s8)
    1018:	00000000 	sll	zero,zero,0x0
    101c:	24630034 	addiu	v1,v1,52
    1020:	8c630000 	lw	v1,0(v1)
    1024:	00000000 	sll	zero,zero,0x0
    1028:	3064000f 	andi	a0,v1,0xf
    102c:	3c030000 	lui	v1,0x0
    1030:	00052900 	sll	a1,a1,0x4
    1034:	00a42021 	addu	a0,a1,a0
    1038:	00042080 	sll	a0,a0,0x2
    103c:	24630000 	addiu	v1,v1,0
    1040:	00831821 	addu	v1,a0,v1
    1044:	8c630000 	lw	v1,0(v1)
    1048:	00000000 	sll	zero,zero,0x0
    104c:	ac430000 	sw	v1,0(v0)
      statemt[13] = temp;
    1050:	8fc20010 	lw	v0,16(s8)
    1054:	00000000 	sll	zero,zero,0x0
    1058:	24420034 	addiu	v0,v0,52
    105c:	8fc30000 	lw	v1,0(s8)
    1060:	00000000 	sll	zero,zero,0x0
    1064:	ac430000 	sw	v1,0(v0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
    1068:	8fc20010 	lw	v0,16(s8)
    106c:	00000000 	sll	zero,zero,0x0
    1070:	24420008 	addiu	v0,v0,8
    1074:	8c420000 	lw	v0,0(v0)
    1078:	00000000 	sll	zero,zero,0x0
    107c:	00022103 	sra	a0,v0,0x4
    1080:	8fc20010 	lw	v0,16(s8)
    1084:	00000000 	sll	zero,zero,0x0
    1088:	24420008 	addiu	v0,v0,8
    108c:	8c420000 	lw	v0,0(v0)
    1090:	00000000 	sll	zero,zero,0x0
    1094:	3043000f 	andi	v1,v0,0xf
    1098:	3c020000 	lui	v0,0x0
    109c:	00042100 	sll	a0,a0,0x4
    10a0:	00831821 	addu	v1,a0,v1
    10a4:	00031880 	sll	v1,v1,0x2
    10a8:	24420000 	addiu	v0,v0,0
    10ac:	00621021 	addu	v0,v1,v0
    10b0:	8c420000 	lw	v0,0(v0)
    10b4:	00000000 	sll	zero,zero,0x0
    10b8:	afc20000 	sw	v0,0(s8)
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
    10bc:	8fc20010 	lw	v0,16(s8)
    10c0:	00000000 	sll	zero,zero,0x0
    10c4:	24420008 	addiu	v0,v0,8
    10c8:	8fc30010 	lw	v1,16(s8)
    10cc:	00000000 	sll	zero,zero,0x0
    10d0:	24630028 	addiu	v1,v1,40
    10d4:	8c630000 	lw	v1,0(v1)
    10d8:	00000000 	sll	zero,zero,0x0
    10dc:	00032903 	sra	a1,v1,0x4
    10e0:	8fc30010 	lw	v1,16(s8)
    10e4:	00000000 	sll	zero,zero,0x0
    10e8:	24630028 	addiu	v1,v1,40
    10ec:	8c630000 	lw	v1,0(v1)
    10f0:	00000000 	sll	zero,zero,0x0
    10f4:	3064000f 	andi	a0,v1,0xf
    10f8:	3c030000 	lui	v1,0x0
    10fc:	00052900 	sll	a1,a1,0x4
    1100:	00a42021 	addu	a0,a1,a0
    1104:	00042080 	sll	a0,a0,0x2
    1108:	24630000 	addiu	v1,v1,0
    110c:	00831821 	addu	v1,a0,v1
    1110:	8c630000 	lw	v1,0(v1)
    1114:	00000000 	sll	zero,zero,0x0
    1118:	ac430000 	sw	v1,0(v0)
      statemt[10] = temp;
    111c:	8fc20010 	lw	v0,16(s8)
    1120:	00000000 	sll	zero,zero,0x0
    1124:	24420028 	addiu	v0,v0,40
    1128:	8fc30000 	lw	v1,0(s8)
    112c:	00000000 	sll	zero,zero,0x0
    1130:	ac430000 	sw	v1,0(v0)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
    1134:	8fc20010 	lw	v0,16(s8)
    1138:	00000000 	sll	zero,zero,0x0
    113c:	24420018 	addiu	v0,v0,24
    1140:	8c420000 	lw	v0,0(v0)
    1144:	00000000 	sll	zero,zero,0x0
    1148:	00022103 	sra	a0,v0,0x4
    114c:	8fc20010 	lw	v0,16(s8)
    1150:	00000000 	sll	zero,zero,0x0
    1154:	24420018 	addiu	v0,v0,24
    1158:	8c420000 	lw	v0,0(v0)
    115c:	00000000 	sll	zero,zero,0x0
    1160:	3043000f 	andi	v1,v0,0xf
    1164:	3c020000 	lui	v0,0x0
    1168:	00042100 	sll	a0,a0,0x4
    116c:	00831821 	addu	v1,a0,v1
    1170:	00031880 	sll	v1,v1,0x2
    1174:	24420000 	addiu	v0,v0,0
    1178:	00621021 	addu	v0,v1,v0
    117c:	8c420000 	lw	v0,0(v0)
    1180:	00000000 	sll	zero,zero,0x0
    1184:	afc20000 	sw	v0,0(s8)
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
    1188:	8fc20010 	lw	v0,16(s8)
    118c:	00000000 	sll	zero,zero,0x0
    1190:	24420018 	addiu	v0,v0,24
    1194:	8fc30010 	lw	v1,16(s8)
    1198:	00000000 	sll	zero,zero,0x0
    119c:	24630038 	addiu	v1,v1,56
    11a0:	8c630000 	lw	v1,0(v1)
    11a4:	00000000 	sll	zero,zero,0x0
    11a8:	00032903 	sra	a1,v1,0x4
    11ac:	8fc30010 	lw	v1,16(s8)
    11b0:	00000000 	sll	zero,zero,0x0
    11b4:	24630038 	addiu	v1,v1,56
    11b8:	8c630000 	lw	v1,0(v1)
    11bc:	00000000 	sll	zero,zero,0x0
    11c0:	3064000f 	andi	a0,v1,0xf
    11c4:	3c030000 	lui	v1,0x0
    11c8:	00052900 	sll	a1,a1,0x4
    11cc:	00a42021 	addu	a0,a1,a0
    11d0:	00042080 	sll	a0,a0,0x2
    11d4:	24630000 	addiu	v1,v1,0
    11d8:	00831821 	addu	v1,a0,v1
    11dc:	8c630000 	lw	v1,0(v1)
    11e0:	00000000 	sll	zero,zero,0x0
    11e4:	ac430000 	sw	v1,0(v0)
      statemt[14] = temp;
    11e8:	8fc20010 	lw	v0,16(s8)
    11ec:	00000000 	sll	zero,zero,0x0
    11f0:	24420038 	addiu	v0,v0,56
    11f4:	8fc30000 	lw	v1,0(s8)
    11f8:	00000000 	sll	zero,zero,0x0
    11fc:	ac430000 	sw	v1,0(v0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
    1200:	8fc20010 	lw	v0,16(s8)
    1204:	00000000 	sll	zero,zero,0x0
    1208:	2442000c 	addiu	v0,v0,12
    120c:	8c420000 	lw	v0,0(v0)
    1210:	00000000 	sll	zero,zero,0x0
    1214:	00022103 	sra	a0,v0,0x4
    1218:	8fc20010 	lw	v0,16(s8)
    121c:	00000000 	sll	zero,zero,0x0
    1220:	2442000c 	addiu	v0,v0,12
    1224:	8c420000 	lw	v0,0(v0)
    1228:	00000000 	sll	zero,zero,0x0
    122c:	3043000f 	andi	v1,v0,0xf
    1230:	3c020000 	lui	v0,0x0
    1234:	00042100 	sll	a0,a0,0x4
    1238:	00831821 	addu	v1,a0,v1
    123c:	00031880 	sll	v1,v1,0x2
    1240:	24420000 	addiu	v0,v0,0
    1244:	00621021 	addu	v0,v1,v0
    1248:	8c420000 	lw	v0,0(v0)
    124c:	00000000 	sll	zero,zero,0x0
    1250:	afc20000 	sw	v0,0(s8)
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
    1254:	8fc20010 	lw	v0,16(s8)
    1258:	00000000 	sll	zero,zero,0x0
    125c:	2442000c 	addiu	v0,v0,12
    1260:	8fc30010 	lw	v1,16(s8)
    1264:	00000000 	sll	zero,zero,0x0
    1268:	2463003c 	addiu	v1,v1,60
    126c:	8c630000 	lw	v1,0(v1)
    1270:	00000000 	sll	zero,zero,0x0
    1274:	00032903 	sra	a1,v1,0x4
    1278:	8fc30010 	lw	v1,16(s8)
    127c:	00000000 	sll	zero,zero,0x0
    1280:	2463003c 	addiu	v1,v1,60
    1284:	8c630000 	lw	v1,0(v1)
    1288:	00000000 	sll	zero,zero,0x0
    128c:	3064000f 	andi	a0,v1,0xf
    1290:	3c030000 	lui	v1,0x0
    1294:	00052900 	sll	a1,a1,0x4
    1298:	00a42021 	addu	a0,a1,a0
    129c:	00042080 	sll	a0,a0,0x2
    12a0:	24630000 	addiu	v1,v1,0
    12a4:	00831821 	addu	v1,a0,v1
    12a8:	8c630000 	lw	v1,0(v1)
    12ac:	00000000 	sll	zero,zero,0x0
    12b0:	ac430000 	sw	v1,0(v0)
      statemt[15] = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
    12b4:	8fc20010 	lw	v0,16(s8)
    12b8:	00000000 	sll	zero,zero,0x0
    12bc:	2442003c 	addiu	v0,v0,60
    12c0:	8fc30010 	lw	v1,16(s8)
    12c4:	00000000 	sll	zero,zero,0x0
    12c8:	2463002c 	addiu	v1,v1,44
    12cc:	8c630000 	lw	v1,0(v1)
    12d0:	00000000 	sll	zero,zero,0x0
    12d4:	00032903 	sra	a1,v1,0x4
    12d8:	8fc30010 	lw	v1,16(s8)
    12dc:	00000000 	sll	zero,zero,0x0
    12e0:	2463002c 	addiu	v1,v1,44
    12e4:	8c630000 	lw	v1,0(v1)
    12e8:	00000000 	sll	zero,zero,0x0
    12ec:	3064000f 	andi	a0,v1,0xf
    12f0:	3c030000 	lui	v1,0x0
    12f4:	00052900 	sll	a1,a1,0x4
    12f8:	00a42021 	addu	a0,a1,a0
    12fc:	00042080 	sll	a0,a0,0x2
    1300:	24630000 	addiu	v1,v1,0
    1304:	00831821 	addu	v1,a0,v1
    1308:	8c630000 	lw	v1,0(v1)
    130c:	00000000 	sll	zero,zero,0x0
    1310:	ac430000 	sw	v1,0(v0)
      statemt[11] = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
    1314:	8fc20010 	lw	v0,16(s8)
    1318:	00000000 	sll	zero,zero,0x0
    131c:	2442002c 	addiu	v0,v0,44
    1320:	8fc30010 	lw	v1,16(s8)
    1324:	00000000 	sll	zero,zero,0x0
    1328:	2463001c 	addiu	v1,v1,28
    132c:	8c630000 	lw	v1,0(v1)
    1330:	00000000 	sll	zero,zero,0x0
    1334:	00032903 	sra	a1,v1,0x4
    1338:	8fc30010 	lw	v1,16(s8)
    133c:	00000000 	sll	zero,zero,0x0
    1340:	2463001c 	addiu	v1,v1,28
    1344:	8c630000 	lw	v1,0(v1)
    1348:	00000000 	sll	zero,zero,0x0
    134c:	3064000f 	andi	a0,v1,0xf
    1350:	3c030000 	lui	v1,0x0
    1354:	00052900 	sll	a1,a1,0x4
    1358:	00a42021 	addu	a0,a1,a0
    135c:	00042080 	sll	a0,a0,0x2
    1360:	24630000 	addiu	v1,v1,0
    1364:	00831821 	addu	v1,a0,v1
    1368:	8c630000 	lw	v1,0(v1)
    136c:	00000000 	sll	zero,zero,0x0
    1370:	ac430000 	sw	v1,0(v0)
      statemt[7] = temp;
    1374:	8fc20010 	lw	v0,16(s8)
    1378:	00000000 	sll	zero,zero,0x0
    137c:	2442001c 	addiu	v0,v0,28
    1380:	8fc30000 	lw	v1,0(s8)
    1384:	00000000 	sll	zero,zero,0x0
    1388:	ac430000 	sw	v1,0(v0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
    138c:	8fc20010 	lw	v0,16(s8)
    1390:	00000000 	sll	zero,zero,0x0
    1394:	8c420000 	lw	v0,0(v0)
    1398:	00000000 	sll	zero,zero,0x0
    139c:	00022103 	sra	a0,v0,0x4
    13a0:	8fc20010 	lw	v0,16(s8)
    13a4:	00000000 	sll	zero,zero,0x0
    13a8:	8c420000 	lw	v0,0(v0)
    13ac:	00000000 	sll	zero,zero,0x0
    13b0:	3043000f 	andi	v1,v0,0xf
    13b4:	3c020000 	lui	v0,0x0
    13b8:	00042100 	sll	a0,a0,0x4
    13bc:	00831821 	addu	v1,a0,v1
    13c0:	00031880 	sll	v1,v1,0x2
    13c4:	24420000 	addiu	v0,v0,0
    13c8:	00621021 	addu	v0,v1,v0
    13cc:	8c430000 	lw	v1,0(v0)
    13d0:	8fc20010 	lw	v0,16(s8)
    13d4:	00000000 	sll	zero,zero,0x0
    13d8:	ac430000 	sw	v1,0(v0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
    13dc:	8fc20010 	lw	v0,16(s8)
    13e0:	00000000 	sll	zero,zero,0x0
    13e4:	24420010 	addiu	v0,v0,16
    13e8:	8fc30010 	lw	v1,16(s8)
    13ec:	00000000 	sll	zero,zero,0x0
    13f0:	24630010 	addiu	v1,v1,16
    13f4:	8c630000 	lw	v1,0(v1)
    13f8:	00000000 	sll	zero,zero,0x0
    13fc:	00032903 	sra	a1,v1,0x4
    1400:	8fc30010 	lw	v1,16(s8)
    1404:	00000000 	sll	zero,zero,0x0
    1408:	24630010 	addiu	v1,v1,16
    140c:	8c630000 	lw	v1,0(v1)
    1410:	00000000 	sll	zero,zero,0x0
    1414:	3064000f 	andi	a0,v1,0xf
    1418:	3c030000 	lui	v1,0x0
    141c:	00052900 	sll	a1,a1,0x4
    1420:	00a42021 	addu	a0,a1,a0
    1424:	00042080 	sll	a0,a0,0x2
    1428:	24630000 	addiu	v1,v1,0
    142c:	00831821 	addu	v1,a0,v1
    1430:	8c630000 	lw	v1,0(v1)
    1434:	00000000 	sll	zero,zero,0x0
    1438:	ac430000 	sw	v1,0(v0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
    143c:	8fc20010 	lw	v0,16(s8)
    1440:	00000000 	sll	zero,zero,0x0
    1444:	24420020 	addiu	v0,v0,32
    1448:	8fc30010 	lw	v1,16(s8)
    144c:	00000000 	sll	zero,zero,0x0
    1450:	24630020 	addiu	v1,v1,32
    1454:	8c630000 	lw	v1,0(v1)
    1458:	00000000 	sll	zero,zero,0x0
    145c:	00032903 	sra	a1,v1,0x4
    1460:	8fc30010 	lw	v1,16(s8)
    1464:	00000000 	sll	zero,zero,0x0
    1468:	24630020 	addiu	v1,v1,32
    146c:	8c630000 	lw	v1,0(v1)
    1470:	00000000 	sll	zero,zero,0x0
    1474:	3064000f 	andi	a0,v1,0xf
    1478:	3c030000 	lui	v1,0x0
    147c:	00052900 	sll	a1,a1,0x4
    1480:	00a42021 	addu	a0,a1,a0
    1484:	00042080 	sll	a0,a0,0x2
    1488:	24630000 	addiu	v1,v1,0
    148c:	00831821 	addu	v1,a0,v1
    1490:	8c630000 	lw	v1,0(v1)
    1494:	00000000 	sll	zero,zero,0x0
    1498:	ac430000 	sw	v1,0(v0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
    149c:	8fc20010 	lw	v0,16(s8)
    14a0:	00000000 	sll	zero,zero,0x0
    14a4:	24420030 	addiu	v0,v0,48
    14a8:	8fc30010 	lw	v1,16(s8)
    14ac:	00000000 	sll	zero,zero,0x0
    14b0:	24630030 	addiu	v1,v1,48
    14b4:	8c630000 	lw	v1,0(v1)
    14b8:	00000000 	sll	zero,zero,0x0
    14bc:	00032903 	sra	a1,v1,0x4
    14c0:	8fc30010 	lw	v1,16(s8)
    14c4:	00000000 	sll	zero,zero,0x0
    14c8:	24630030 	addiu	v1,v1,48
    14cc:	8c630000 	lw	v1,0(v1)
    14d0:	00000000 	sll	zero,zero,0x0
    14d4:	3064000f 	andi	a0,v1,0xf
    14d8:	3c030000 	lui	v1,0x0
    14dc:	00052900 	sll	a1,a1,0x4
    14e0:	00a42021 	addu	a0,a1,a0
    14e4:	00042080 	sll	a0,a0,0x2
    14e8:	24630000 	addiu	v1,v1,0
    14ec:	00831821 	addu	v1,a0,v1
    14f0:	8c630000 	lw	v1,0(v1)
    14f4:	00000000 	sll	zero,zero,0x0
    14f8:	ac430000 	sw	v1,0(v0)
      break;
    14fc:	08000aa0 	j	2a80 <ByteSub_ShiftRow+0x1be0>
    1500:	00000000 	sll	zero,zero,0x0
    case 6:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
    1504:	8fc20010 	lw	v0,16(s8)
    1508:	00000000 	sll	zero,zero,0x0
    150c:	24420004 	addiu	v0,v0,4
    1510:	8c420000 	lw	v0,0(v0)
    1514:	00000000 	sll	zero,zero,0x0
    1518:	00022103 	sra	a0,v0,0x4
    151c:	8fc20010 	lw	v0,16(s8)
    1520:	00000000 	sll	zero,zero,0x0
    1524:	24420004 	addiu	v0,v0,4
    1528:	8c420000 	lw	v0,0(v0)
    152c:	00000000 	sll	zero,zero,0x0
    1530:	3043000f 	andi	v1,v0,0xf
    1534:	3c020000 	lui	v0,0x0
    1538:	00042100 	sll	a0,a0,0x4
    153c:	00831821 	addu	v1,a0,v1
    1540:	00031880 	sll	v1,v1,0x2
    1544:	24420000 	addiu	v0,v0,0
    1548:	00621021 	addu	v0,v1,v0
    154c:	8c420000 	lw	v0,0(v0)
    1550:	00000000 	sll	zero,zero,0x0
    1554:	afc20000 	sw	v0,0(s8)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
    1558:	8fc20010 	lw	v0,16(s8)
    155c:	00000000 	sll	zero,zero,0x0
    1560:	24420004 	addiu	v0,v0,4
    1564:	8fc30010 	lw	v1,16(s8)
    1568:	00000000 	sll	zero,zero,0x0
    156c:	24630014 	addiu	v1,v1,20
    1570:	8c630000 	lw	v1,0(v1)
    1574:	00000000 	sll	zero,zero,0x0
    1578:	00032903 	sra	a1,v1,0x4
    157c:	8fc30010 	lw	v1,16(s8)
    1580:	00000000 	sll	zero,zero,0x0
    1584:	24630014 	addiu	v1,v1,20
    1588:	8c630000 	lw	v1,0(v1)
    158c:	00000000 	sll	zero,zero,0x0
    1590:	3064000f 	andi	a0,v1,0xf
    1594:	3c030000 	lui	v1,0x0
    1598:	00052900 	sll	a1,a1,0x4
    159c:	00a42021 	addu	a0,a1,a0
    15a0:	00042080 	sll	a0,a0,0x2
    15a4:	24630000 	addiu	v1,v1,0
    15a8:	00831821 	addu	v1,a0,v1
    15ac:	8c630000 	lw	v1,0(v1)
    15b0:	00000000 	sll	zero,zero,0x0
    15b4:	ac430000 	sw	v1,0(v0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
    15b8:	8fc20010 	lw	v0,16(s8)
    15bc:	00000000 	sll	zero,zero,0x0
    15c0:	24420014 	addiu	v0,v0,20
    15c4:	8fc30010 	lw	v1,16(s8)
    15c8:	00000000 	sll	zero,zero,0x0
    15cc:	24630024 	addiu	v1,v1,36
    15d0:	8c630000 	lw	v1,0(v1)
    15d4:	00000000 	sll	zero,zero,0x0
    15d8:	00032903 	sra	a1,v1,0x4
    15dc:	8fc30010 	lw	v1,16(s8)
    15e0:	00000000 	sll	zero,zero,0x0
    15e4:	24630024 	addiu	v1,v1,36
    15e8:	8c630000 	lw	v1,0(v1)
    15ec:	00000000 	sll	zero,zero,0x0
    15f0:	3064000f 	andi	a0,v1,0xf
    15f4:	3c030000 	lui	v1,0x0
    15f8:	00052900 	sll	a1,a1,0x4
    15fc:	00a42021 	addu	a0,a1,a0
    1600:	00042080 	sll	a0,a0,0x2
    1604:	24630000 	addiu	v1,v1,0
    1608:	00831821 	addu	v1,a0,v1
    160c:	8c630000 	lw	v1,0(v1)
    1610:	00000000 	sll	zero,zero,0x0
    1614:	ac430000 	sw	v1,0(v0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
    1618:	8fc20010 	lw	v0,16(s8)
    161c:	00000000 	sll	zero,zero,0x0
    1620:	24420024 	addiu	v0,v0,36
    1624:	8fc30010 	lw	v1,16(s8)
    1628:	00000000 	sll	zero,zero,0x0
    162c:	24630034 	addiu	v1,v1,52
    1630:	8c630000 	lw	v1,0(v1)
    1634:	00000000 	sll	zero,zero,0x0
    1638:	00032903 	sra	a1,v1,0x4
    163c:	8fc30010 	lw	v1,16(s8)
    1640:	00000000 	sll	zero,zero,0x0
    1644:	24630034 	addiu	v1,v1,52
    1648:	8c630000 	lw	v1,0(v1)
    164c:	00000000 	sll	zero,zero,0x0
    1650:	3064000f 	andi	a0,v1,0xf
    1654:	3c030000 	lui	v1,0x0
    1658:	00052900 	sll	a1,a1,0x4
    165c:	00a42021 	addu	a0,a1,a0
    1660:	00042080 	sll	a0,a0,0x2
    1664:	24630000 	addiu	v1,v1,0
    1668:	00831821 	addu	v1,a0,v1
    166c:	8c630000 	lw	v1,0(v1)
    1670:	00000000 	sll	zero,zero,0x0
    1674:	ac430000 	sw	v1,0(v0)
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
    1678:	8fc20010 	lw	v0,16(s8)
    167c:	00000000 	sll	zero,zero,0x0
    1680:	24420034 	addiu	v0,v0,52
    1684:	8fc30010 	lw	v1,16(s8)
    1688:	00000000 	sll	zero,zero,0x0
    168c:	24630044 	addiu	v1,v1,68
    1690:	8c630000 	lw	v1,0(v1)
    1694:	00000000 	sll	zero,zero,0x0
    1698:	00032903 	sra	a1,v1,0x4
    169c:	8fc30010 	lw	v1,16(s8)
    16a0:	00000000 	sll	zero,zero,0x0
    16a4:	24630044 	addiu	v1,v1,68
    16a8:	8c630000 	lw	v1,0(v1)
    16ac:	00000000 	sll	zero,zero,0x0
    16b0:	3064000f 	andi	a0,v1,0xf
    16b4:	3c030000 	lui	v1,0x0
    16b8:	00052900 	sll	a1,a1,0x4
    16bc:	00a42021 	addu	a0,a1,a0
    16c0:	00042080 	sll	a0,a0,0x2
    16c4:	24630000 	addiu	v1,v1,0
    16c8:	00831821 	addu	v1,a0,v1
    16cc:	8c630000 	lw	v1,0(v1)
    16d0:	00000000 	sll	zero,zero,0x0
    16d4:	ac430000 	sw	v1,0(v0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
    16d8:	8fc20010 	lw	v0,16(s8)
    16dc:	00000000 	sll	zero,zero,0x0
    16e0:	24420044 	addiu	v0,v0,68
    16e4:	8fc30010 	lw	v1,16(s8)
    16e8:	00000000 	sll	zero,zero,0x0
    16ec:	24630054 	addiu	v1,v1,84
    16f0:	8c630000 	lw	v1,0(v1)
    16f4:	00000000 	sll	zero,zero,0x0
    16f8:	00032903 	sra	a1,v1,0x4
    16fc:	8fc30010 	lw	v1,16(s8)
    1700:	00000000 	sll	zero,zero,0x0
    1704:	24630054 	addiu	v1,v1,84
    1708:	8c630000 	lw	v1,0(v1)
    170c:	00000000 	sll	zero,zero,0x0
    1710:	3064000f 	andi	a0,v1,0xf
    1714:	3c030000 	lui	v1,0x0
    1718:	00052900 	sll	a1,a1,0x4
    171c:	00a42021 	addu	a0,a1,a0
    1720:	00042080 	sll	a0,a0,0x2
    1724:	24630000 	addiu	v1,v1,0
    1728:	00831821 	addu	v1,a0,v1
    172c:	8c630000 	lw	v1,0(v1)
    1730:	00000000 	sll	zero,zero,0x0
    1734:	ac430000 	sw	v1,0(v0)
      statemt[21] = temp;
    1738:	8fc20010 	lw	v0,16(s8)
    173c:	00000000 	sll	zero,zero,0x0
    1740:	24420054 	addiu	v0,v0,84
    1744:	8fc30000 	lw	v1,0(s8)
    1748:	00000000 	sll	zero,zero,0x0
    174c:	ac430000 	sw	v1,0(v0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
    1750:	8fc20010 	lw	v0,16(s8)
    1754:	00000000 	sll	zero,zero,0x0
    1758:	24420008 	addiu	v0,v0,8
    175c:	8c420000 	lw	v0,0(v0)
    1760:	00000000 	sll	zero,zero,0x0
    1764:	00022103 	sra	a0,v0,0x4
    1768:	8fc20010 	lw	v0,16(s8)
    176c:	00000000 	sll	zero,zero,0x0
    1770:	24420008 	addiu	v0,v0,8
    1774:	8c420000 	lw	v0,0(v0)
    1778:	00000000 	sll	zero,zero,0x0
    177c:	3043000f 	andi	v1,v0,0xf
    1780:	3c020000 	lui	v0,0x0
    1784:	00042100 	sll	a0,a0,0x4
    1788:	00831821 	addu	v1,a0,v1
    178c:	00031880 	sll	v1,v1,0x2
    1790:	24420000 	addiu	v0,v0,0
    1794:	00621021 	addu	v0,v1,v0
    1798:	8c420000 	lw	v0,0(v0)
    179c:	00000000 	sll	zero,zero,0x0
    17a0:	afc20000 	sw	v0,0(s8)
      statemt[2] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
    17a4:	8fc20010 	lw	v0,16(s8)
    17a8:	00000000 	sll	zero,zero,0x0
    17ac:	24420008 	addiu	v0,v0,8
    17b0:	8fc30010 	lw	v1,16(s8)
    17b4:	00000000 	sll	zero,zero,0x0
    17b8:	24630028 	addiu	v1,v1,40
    17bc:	8c630000 	lw	v1,0(v1)
    17c0:	00000000 	sll	zero,zero,0x0
    17c4:	00032903 	sra	a1,v1,0x4
    17c8:	8fc30010 	lw	v1,16(s8)
    17cc:	00000000 	sll	zero,zero,0x0
    17d0:	24630028 	addiu	v1,v1,40
    17d4:	8c630000 	lw	v1,0(v1)
    17d8:	00000000 	sll	zero,zero,0x0
    17dc:	3064000f 	andi	a0,v1,0xf
    17e0:	3c030000 	lui	v1,0x0
    17e4:	00052900 	sll	a1,a1,0x4
    17e8:	00a42021 	addu	a0,a1,a0
    17ec:	00042080 	sll	a0,a0,0x2
    17f0:	24630000 	addiu	v1,v1,0
    17f4:	00831821 	addu	v1,a0,v1
    17f8:	8c630000 	lw	v1,0(v1)
    17fc:	00000000 	sll	zero,zero,0x0
    1800:	ac430000 	sw	v1,0(v0)
      statemt[10] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
    1804:	8fc20010 	lw	v0,16(s8)
    1808:	00000000 	sll	zero,zero,0x0
    180c:	24420028 	addiu	v0,v0,40
    1810:	8fc30010 	lw	v1,16(s8)
    1814:	00000000 	sll	zero,zero,0x0
    1818:	24630048 	addiu	v1,v1,72
    181c:	8c630000 	lw	v1,0(v1)
    1820:	00000000 	sll	zero,zero,0x0
    1824:	00032903 	sra	a1,v1,0x4
    1828:	8fc30010 	lw	v1,16(s8)
    182c:	00000000 	sll	zero,zero,0x0
    1830:	24630048 	addiu	v1,v1,72
    1834:	8c630000 	lw	v1,0(v1)
    1838:	00000000 	sll	zero,zero,0x0
    183c:	3064000f 	andi	a0,v1,0xf
    1840:	3c030000 	lui	v1,0x0
    1844:	00052900 	sll	a1,a1,0x4
    1848:	00a42021 	addu	a0,a1,a0
    184c:	00042080 	sll	a0,a0,0x2
    1850:	24630000 	addiu	v1,v1,0
    1854:	00831821 	addu	v1,a0,v1
    1858:	8c630000 	lw	v1,0(v1)
    185c:	00000000 	sll	zero,zero,0x0
    1860:	ac430000 	sw	v1,0(v0)
      statemt[18] = temp;
    1864:	8fc20010 	lw	v0,16(s8)
    1868:	00000000 	sll	zero,zero,0x0
    186c:	24420048 	addiu	v0,v0,72
    1870:	8fc30000 	lw	v1,0(s8)
    1874:	00000000 	sll	zero,zero,0x0
    1878:	ac430000 	sw	v1,0(v0)
      temp = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
    187c:	8fc20010 	lw	v0,16(s8)
    1880:	00000000 	sll	zero,zero,0x0
    1884:	24420018 	addiu	v0,v0,24
    1888:	8c420000 	lw	v0,0(v0)
    188c:	00000000 	sll	zero,zero,0x0
    1890:	00022103 	sra	a0,v0,0x4
    1894:	8fc20010 	lw	v0,16(s8)
    1898:	00000000 	sll	zero,zero,0x0
    189c:	24420018 	addiu	v0,v0,24
    18a0:	8c420000 	lw	v0,0(v0)
    18a4:	00000000 	sll	zero,zero,0x0
    18a8:	3043000f 	andi	v1,v0,0xf
    18ac:	3c020000 	lui	v0,0x0
    18b0:	00042100 	sll	a0,a0,0x4
    18b4:	00831821 	addu	v1,a0,v1
    18b8:	00031880 	sll	v1,v1,0x2
    18bc:	24420000 	addiu	v0,v0,0
    18c0:	00621021 	addu	v0,v1,v0
    18c4:	8c420000 	lw	v0,0(v0)
    18c8:	00000000 	sll	zero,zero,0x0
    18cc:	afc20000 	sw	v0,0(s8)
      statemt[6] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
    18d0:	8fc20010 	lw	v0,16(s8)
    18d4:	00000000 	sll	zero,zero,0x0
    18d8:	24420018 	addiu	v0,v0,24
    18dc:	8fc30010 	lw	v1,16(s8)
    18e0:	00000000 	sll	zero,zero,0x0
    18e4:	24630038 	addiu	v1,v1,56
    18e8:	8c630000 	lw	v1,0(v1)
    18ec:	00000000 	sll	zero,zero,0x0
    18f0:	00032903 	sra	a1,v1,0x4
    18f4:	8fc30010 	lw	v1,16(s8)
    18f8:	00000000 	sll	zero,zero,0x0
    18fc:	24630038 	addiu	v1,v1,56
    1900:	8c630000 	lw	v1,0(v1)
    1904:	00000000 	sll	zero,zero,0x0
    1908:	3064000f 	andi	a0,v1,0xf
    190c:	3c030000 	lui	v1,0x0
    1910:	00052900 	sll	a1,a1,0x4
    1914:	00a42021 	addu	a0,a1,a0
    1918:	00042080 	sll	a0,a0,0x2
    191c:	24630000 	addiu	v1,v1,0
    1920:	00831821 	addu	v1,a0,v1
    1924:	8c630000 	lw	v1,0(v1)
    1928:	00000000 	sll	zero,zero,0x0
    192c:	ac430000 	sw	v1,0(v0)
      statemt[14] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
    1930:	8fc20010 	lw	v0,16(s8)
    1934:	00000000 	sll	zero,zero,0x0
    1938:	24420038 	addiu	v0,v0,56
    193c:	8fc30010 	lw	v1,16(s8)
    1940:	00000000 	sll	zero,zero,0x0
    1944:	24630058 	addiu	v1,v1,88
    1948:	8c630000 	lw	v1,0(v1)
    194c:	00000000 	sll	zero,zero,0x0
    1950:	00032903 	sra	a1,v1,0x4
    1954:	8fc30010 	lw	v1,16(s8)
    1958:	00000000 	sll	zero,zero,0x0
    195c:	24630058 	addiu	v1,v1,88
    1960:	8c630000 	lw	v1,0(v1)
    1964:	00000000 	sll	zero,zero,0x0
    1968:	3064000f 	andi	a0,v1,0xf
    196c:	3c030000 	lui	v1,0x0
    1970:	00052900 	sll	a1,a1,0x4
    1974:	00a42021 	addu	a0,a1,a0
    1978:	00042080 	sll	a0,a0,0x2
    197c:	24630000 	addiu	v1,v1,0
    1980:	00831821 	addu	v1,a0,v1
    1984:	8c630000 	lw	v1,0(v1)
    1988:	00000000 	sll	zero,zero,0x0
    198c:	ac430000 	sw	v1,0(v0)
      statemt[22] = temp;
    1990:	8fc20010 	lw	v0,16(s8)
    1994:	00000000 	sll	zero,zero,0x0
    1998:	24420058 	addiu	v0,v0,88
    199c:	8fc30000 	lw	v1,0(s8)
    19a0:	00000000 	sll	zero,zero,0x0
    19a4:	ac430000 	sw	v1,0(v0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
    19a8:	8fc20010 	lw	v0,16(s8)
    19ac:	00000000 	sll	zero,zero,0x0
    19b0:	2442000c 	addiu	v0,v0,12
    19b4:	8c420000 	lw	v0,0(v0)
    19b8:	00000000 	sll	zero,zero,0x0
    19bc:	00022103 	sra	a0,v0,0x4
    19c0:	8fc20010 	lw	v0,16(s8)
    19c4:	00000000 	sll	zero,zero,0x0
    19c8:	2442000c 	addiu	v0,v0,12
    19cc:	8c420000 	lw	v0,0(v0)
    19d0:	00000000 	sll	zero,zero,0x0
    19d4:	3043000f 	andi	v1,v0,0xf
    19d8:	3c020000 	lui	v0,0x0
    19dc:	00042100 	sll	a0,a0,0x4
    19e0:	00831821 	addu	v1,a0,v1
    19e4:	00031880 	sll	v1,v1,0x2
    19e8:	24420000 	addiu	v0,v0,0
    19ec:	00621021 	addu	v0,v1,v0
    19f0:	8c420000 	lw	v0,0(v0)
    19f4:	00000000 	sll	zero,zero,0x0
    19f8:	afc20000 	sw	v0,0(s8)
      statemt[3] = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
    19fc:	8fc20010 	lw	v0,16(s8)
    1a00:	00000000 	sll	zero,zero,0x0
    1a04:	2442000c 	addiu	v0,v0,12
    1a08:	8fc30010 	lw	v1,16(s8)
    1a0c:	00000000 	sll	zero,zero,0x0
    1a10:	2463003c 	addiu	v1,v1,60
    1a14:	8c630000 	lw	v1,0(v1)
    1a18:	00000000 	sll	zero,zero,0x0
    1a1c:	00032903 	sra	a1,v1,0x4
    1a20:	8fc30010 	lw	v1,16(s8)
    1a24:	00000000 	sll	zero,zero,0x0
    1a28:	2463003c 	addiu	v1,v1,60
    1a2c:	8c630000 	lw	v1,0(v1)
    1a30:	00000000 	sll	zero,zero,0x0
    1a34:	3064000f 	andi	a0,v1,0xf
    1a38:	3c030000 	lui	v1,0x0
    1a3c:	00052900 	sll	a1,a1,0x4
    1a40:	00a42021 	addu	a0,a1,a0
    1a44:	00042080 	sll	a0,a0,0x2
    1a48:	24630000 	addiu	v1,v1,0
    1a4c:	00831821 	addu	v1,a0,v1
    1a50:	8c630000 	lw	v1,0(v1)
    1a54:	00000000 	sll	zero,zero,0x0
    1a58:	ac430000 	sw	v1,0(v0)
      statemt[15] = temp;
    1a5c:	8fc20010 	lw	v0,16(s8)
    1a60:	00000000 	sll	zero,zero,0x0
    1a64:	2442003c 	addiu	v0,v0,60
    1a68:	8fc30000 	lw	v1,0(s8)
    1a6c:	00000000 	sll	zero,zero,0x0
    1a70:	ac430000 	sw	v1,0(v0)
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
    1a74:	8fc20010 	lw	v0,16(s8)
    1a78:	00000000 	sll	zero,zero,0x0
    1a7c:	2442001c 	addiu	v0,v0,28
    1a80:	8c420000 	lw	v0,0(v0)
    1a84:	00000000 	sll	zero,zero,0x0
    1a88:	00022103 	sra	a0,v0,0x4
    1a8c:	8fc20010 	lw	v0,16(s8)
    1a90:	00000000 	sll	zero,zero,0x0
    1a94:	2442001c 	addiu	v0,v0,28
    1a98:	8c420000 	lw	v0,0(v0)
    1a9c:	00000000 	sll	zero,zero,0x0
    1aa0:	3043000f 	andi	v1,v0,0xf
    1aa4:	3c020000 	lui	v0,0x0
    1aa8:	00042100 	sll	a0,a0,0x4
    1aac:	00831821 	addu	v1,a0,v1
    1ab0:	00031880 	sll	v1,v1,0x2
    1ab4:	24420000 	addiu	v0,v0,0
    1ab8:	00621021 	addu	v0,v1,v0
    1abc:	8c420000 	lw	v0,0(v0)
    1ac0:	00000000 	sll	zero,zero,0x0
    1ac4:	afc20000 	sw	v0,0(s8)
      statemt[7] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
    1ac8:	8fc20010 	lw	v0,16(s8)
    1acc:	00000000 	sll	zero,zero,0x0
    1ad0:	2442001c 	addiu	v0,v0,28
    1ad4:	8fc30010 	lw	v1,16(s8)
    1ad8:	00000000 	sll	zero,zero,0x0
    1adc:	2463004c 	addiu	v1,v1,76
    1ae0:	8c630000 	lw	v1,0(v1)
    1ae4:	00000000 	sll	zero,zero,0x0
    1ae8:	00032903 	sra	a1,v1,0x4
    1aec:	8fc30010 	lw	v1,16(s8)
    1af0:	00000000 	sll	zero,zero,0x0
    1af4:	2463004c 	addiu	v1,v1,76
    1af8:	8c630000 	lw	v1,0(v1)
    1afc:	00000000 	sll	zero,zero,0x0
    1b00:	3064000f 	andi	a0,v1,0xf
    1b04:	3c030000 	lui	v1,0x0
    1b08:	00052900 	sll	a1,a1,0x4
    1b0c:	00a42021 	addu	a0,a1,a0
    1b10:	00042080 	sll	a0,a0,0x2
    1b14:	24630000 	addiu	v1,v1,0
    1b18:	00831821 	addu	v1,a0,v1
    1b1c:	8c630000 	lw	v1,0(v1)
    1b20:	00000000 	sll	zero,zero,0x0
    1b24:	ac430000 	sw	v1,0(v0)
      statemt[19] = temp;
    1b28:	8fc20010 	lw	v0,16(s8)
    1b2c:	00000000 	sll	zero,zero,0x0
    1b30:	2442004c 	addiu	v0,v0,76
    1b34:	8fc30000 	lw	v1,0(s8)
    1b38:	00000000 	sll	zero,zero,0x0
    1b3c:	ac430000 	sw	v1,0(v0)
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
    1b40:	8fc20010 	lw	v0,16(s8)
    1b44:	00000000 	sll	zero,zero,0x0
    1b48:	2442002c 	addiu	v0,v0,44
    1b4c:	8c420000 	lw	v0,0(v0)
    1b50:	00000000 	sll	zero,zero,0x0
    1b54:	00022103 	sra	a0,v0,0x4
    1b58:	8fc20010 	lw	v0,16(s8)
    1b5c:	00000000 	sll	zero,zero,0x0
    1b60:	2442002c 	addiu	v0,v0,44
    1b64:	8c420000 	lw	v0,0(v0)
    1b68:	00000000 	sll	zero,zero,0x0
    1b6c:	3043000f 	andi	v1,v0,0xf
    1b70:	3c020000 	lui	v0,0x0
    1b74:	00042100 	sll	a0,a0,0x4
    1b78:	00831821 	addu	v1,a0,v1
    1b7c:	00031880 	sll	v1,v1,0x2
    1b80:	24420000 	addiu	v0,v0,0
    1b84:	00621021 	addu	v0,v1,v0
    1b88:	8c420000 	lw	v0,0(v0)
    1b8c:	00000000 	sll	zero,zero,0x0
    1b90:	afc20000 	sw	v0,0(s8)
      statemt[11] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
    1b94:	8fc20010 	lw	v0,16(s8)
    1b98:	00000000 	sll	zero,zero,0x0
    1b9c:	2442002c 	addiu	v0,v0,44
    1ba0:	8fc30010 	lw	v1,16(s8)
    1ba4:	00000000 	sll	zero,zero,0x0
    1ba8:	2463005c 	addiu	v1,v1,92
    1bac:	8c630000 	lw	v1,0(v1)
    1bb0:	00000000 	sll	zero,zero,0x0
    1bb4:	00032903 	sra	a1,v1,0x4
    1bb8:	8fc30010 	lw	v1,16(s8)
    1bbc:	00000000 	sll	zero,zero,0x0
    1bc0:	2463005c 	addiu	v1,v1,92
    1bc4:	8c630000 	lw	v1,0(v1)
    1bc8:	00000000 	sll	zero,zero,0x0
    1bcc:	3064000f 	andi	a0,v1,0xf
    1bd0:	3c030000 	lui	v1,0x0
    1bd4:	00052900 	sll	a1,a1,0x4
    1bd8:	00a42021 	addu	a0,a1,a0
    1bdc:	00042080 	sll	a0,a0,0x2
    1be0:	24630000 	addiu	v1,v1,0
    1be4:	00831821 	addu	v1,a0,v1
    1be8:	8c630000 	lw	v1,0(v1)
    1bec:	00000000 	sll	zero,zero,0x0
    1bf0:	ac430000 	sw	v1,0(v0)
      statemt[23] = temp;
    1bf4:	8fc20010 	lw	v0,16(s8)
    1bf8:	00000000 	sll	zero,zero,0x0
    1bfc:	2442005c 	addiu	v0,v0,92
    1c00:	8fc30000 	lw	v1,0(s8)
    1c04:	00000000 	sll	zero,zero,0x0
    1c08:	ac430000 	sw	v1,0(v0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
    1c0c:	8fc20010 	lw	v0,16(s8)
    1c10:	00000000 	sll	zero,zero,0x0
    1c14:	8c420000 	lw	v0,0(v0)
    1c18:	00000000 	sll	zero,zero,0x0
    1c1c:	00022103 	sra	a0,v0,0x4
    1c20:	8fc20010 	lw	v0,16(s8)
    1c24:	00000000 	sll	zero,zero,0x0
    1c28:	8c420000 	lw	v0,0(v0)
    1c2c:	00000000 	sll	zero,zero,0x0
    1c30:	3043000f 	andi	v1,v0,0xf
    1c34:	3c020000 	lui	v0,0x0
    1c38:	00042100 	sll	a0,a0,0x4
    1c3c:	00831821 	addu	v1,a0,v1
    1c40:	00031880 	sll	v1,v1,0x2
    1c44:	24420000 	addiu	v0,v0,0
    1c48:	00621021 	addu	v0,v1,v0
    1c4c:	8c430000 	lw	v1,0(v0)
    1c50:	8fc20010 	lw	v0,16(s8)
    1c54:	00000000 	sll	zero,zero,0x0
    1c58:	ac430000 	sw	v1,0(v0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
    1c5c:	8fc20010 	lw	v0,16(s8)
    1c60:	00000000 	sll	zero,zero,0x0
    1c64:	24420010 	addiu	v0,v0,16
    1c68:	8fc30010 	lw	v1,16(s8)
    1c6c:	00000000 	sll	zero,zero,0x0
    1c70:	24630010 	addiu	v1,v1,16
    1c74:	8c630000 	lw	v1,0(v1)
    1c78:	00000000 	sll	zero,zero,0x0
    1c7c:	00032903 	sra	a1,v1,0x4
    1c80:	8fc30010 	lw	v1,16(s8)
    1c84:	00000000 	sll	zero,zero,0x0
    1c88:	24630010 	addiu	v1,v1,16
    1c8c:	8c630000 	lw	v1,0(v1)
    1c90:	00000000 	sll	zero,zero,0x0
    1c94:	3064000f 	andi	a0,v1,0xf
    1c98:	3c030000 	lui	v1,0x0
    1c9c:	00052900 	sll	a1,a1,0x4
    1ca0:	00a42021 	addu	a0,a1,a0
    1ca4:	00042080 	sll	a0,a0,0x2
    1ca8:	24630000 	addiu	v1,v1,0
    1cac:	00831821 	addu	v1,a0,v1
    1cb0:	8c630000 	lw	v1,0(v1)
    1cb4:	00000000 	sll	zero,zero,0x0
    1cb8:	ac430000 	sw	v1,0(v0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
    1cbc:	8fc20010 	lw	v0,16(s8)
    1cc0:	00000000 	sll	zero,zero,0x0
    1cc4:	24420020 	addiu	v0,v0,32
    1cc8:	8fc30010 	lw	v1,16(s8)
    1ccc:	00000000 	sll	zero,zero,0x0
    1cd0:	24630020 	addiu	v1,v1,32
    1cd4:	8c630000 	lw	v1,0(v1)
    1cd8:	00000000 	sll	zero,zero,0x0
    1cdc:	00032903 	sra	a1,v1,0x4
    1ce0:	8fc30010 	lw	v1,16(s8)
    1ce4:	00000000 	sll	zero,zero,0x0
    1ce8:	24630020 	addiu	v1,v1,32
    1cec:	8c630000 	lw	v1,0(v1)
    1cf0:	00000000 	sll	zero,zero,0x0
    1cf4:	3064000f 	andi	a0,v1,0xf
    1cf8:	3c030000 	lui	v1,0x0
    1cfc:	00052900 	sll	a1,a1,0x4
    1d00:	00a42021 	addu	a0,a1,a0
    1d04:	00042080 	sll	a0,a0,0x2
    1d08:	24630000 	addiu	v1,v1,0
    1d0c:	00831821 	addu	v1,a0,v1
    1d10:	8c630000 	lw	v1,0(v1)
    1d14:	00000000 	sll	zero,zero,0x0
    1d18:	ac430000 	sw	v1,0(v0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
    1d1c:	8fc20010 	lw	v0,16(s8)
    1d20:	00000000 	sll	zero,zero,0x0
    1d24:	24420030 	addiu	v0,v0,48
    1d28:	8fc30010 	lw	v1,16(s8)
    1d2c:	00000000 	sll	zero,zero,0x0
    1d30:	24630030 	addiu	v1,v1,48
    1d34:	8c630000 	lw	v1,0(v1)
    1d38:	00000000 	sll	zero,zero,0x0
    1d3c:	00032903 	sra	a1,v1,0x4
    1d40:	8fc30010 	lw	v1,16(s8)
    1d44:	00000000 	sll	zero,zero,0x0
    1d48:	24630030 	addiu	v1,v1,48
    1d4c:	8c630000 	lw	v1,0(v1)
    1d50:	00000000 	sll	zero,zero,0x0
    1d54:	3064000f 	andi	a0,v1,0xf
    1d58:	3c030000 	lui	v1,0x0
    1d5c:	00052900 	sll	a1,a1,0x4
    1d60:	00a42021 	addu	a0,a1,a0
    1d64:	00042080 	sll	a0,a0,0x2
    1d68:	24630000 	addiu	v1,v1,0
    1d6c:	00831821 	addu	v1,a0,v1
    1d70:	8c630000 	lw	v1,0(v1)
    1d74:	00000000 	sll	zero,zero,0x0
    1d78:	ac430000 	sw	v1,0(v0)
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
    1d7c:	8fc20010 	lw	v0,16(s8)
    1d80:	00000000 	sll	zero,zero,0x0
    1d84:	24420040 	addiu	v0,v0,64
    1d88:	8fc30010 	lw	v1,16(s8)
    1d8c:	00000000 	sll	zero,zero,0x0
    1d90:	24630040 	addiu	v1,v1,64
    1d94:	8c630000 	lw	v1,0(v1)
    1d98:	00000000 	sll	zero,zero,0x0
    1d9c:	00032903 	sra	a1,v1,0x4
    1da0:	8fc30010 	lw	v1,16(s8)
    1da4:	00000000 	sll	zero,zero,0x0
    1da8:	24630040 	addiu	v1,v1,64
    1dac:	8c630000 	lw	v1,0(v1)
    1db0:	00000000 	sll	zero,zero,0x0
    1db4:	3064000f 	andi	a0,v1,0xf
    1db8:	3c030000 	lui	v1,0x0
    1dbc:	00052900 	sll	a1,a1,0x4
    1dc0:	00a42021 	addu	a0,a1,a0
    1dc4:	00042080 	sll	a0,a0,0x2
    1dc8:	24630000 	addiu	v1,v1,0
    1dcc:	00831821 	addu	v1,a0,v1
    1dd0:	8c630000 	lw	v1,0(v1)
    1dd4:	00000000 	sll	zero,zero,0x0
    1dd8:	ac430000 	sw	v1,0(v0)
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
    1ddc:	8fc20010 	lw	v0,16(s8)
    1de0:	00000000 	sll	zero,zero,0x0
    1de4:	24420050 	addiu	v0,v0,80
    1de8:	8fc30010 	lw	v1,16(s8)
    1dec:	00000000 	sll	zero,zero,0x0
    1df0:	24630050 	addiu	v1,v1,80
    1df4:	8c630000 	lw	v1,0(v1)
    1df8:	00000000 	sll	zero,zero,0x0
    1dfc:	00032903 	sra	a1,v1,0x4
    1e00:	8fc30010 	lw	v1,16(s8)
    1e04:	00000000 	sll	zero,zero,0x0
    1e08:	24630050 	addiu	v1,v1,80
    1e0c:	8c630000 	lw	v1,0(v1)
    1e10:	00000000 	sll	zero,zero,0x0
    1e14:	3064000f 	andi	a0,v1,0xf
    1e18:	3c030000 	lui	v1,0x0
    1e1c:	00052900 	sll	a1,a1,0x4
    1e20:	00a42021 	addu	a0,a1,a0
    1e24:	00042080 	sll	a0,a0,0x2
    1e28:	24630000 	addiu	v1,v1,0
    1e2c:	00831821 	addu	v1,a0,v1
    1e30:	8c630000 	lw	v1,0(v1)
    1e34:	00000000 	sll	zero,zero,0x0
    1e38:	ac430000 	sw	v1,0(v0)
      break;
    1e3c:	08000aa0 	j	2a80 <ByteSub_ShiftRow+0x1be0>
    1e40:	00000000 	sll	zero,zero,0x0
    case 8:
      temp = Sbox[statemt[1] >> 4][statemt[1] & 0xf];
    1e44:	8fc20010 	lw	v0,16(s8)
    1e48:	00000000 	sll	zero,zero,0x0
    1e4c:	24420004 	addiu	v0,v0,4
    1e50:	8c420000 	lw	v0,0(v0)
    1e54:	00000000 	sll	zero,zero,0x0
    1e58:	00022103 	sra	a0,v0,0x4
    1e5c:	8fc20010 	lw	v0,16(s8)
    1e60:	00000000 	sll	zero,zero,0x0
    1e64:	24420004 	addiu	v0,v0,4
    1e68:	8c420000 	lw	v0,0(v0)
    1e6c:	00000000 	sll	zero,zero,0x0
    1e70:	3043000f 	andi	v1,v0,0xf
    1e74:	3c020000 	lui	v0,0x0
    1e78:	00042100 	sll	a0,a0,0x4
    1e7c:	00831821 	addu	v1,a0,v1
    1e80:	00031880 	sll	v1,v1,0x2
    1e84:	24420000 	addiu	v0,v0,0
    1e88:	00621021 	addu	v0,v1,v0
    1e8c:	8c420000 	lw	v0,0(v0)
    1e90:	00000000 	sll	zero,zero,0x0
    1e94:	afc20000 	sw	v0,0(s8)
      statemt[1] = Sbox[statemt[5] >> 4][statemt[5] & 0xf];
    1e98:	8fc20010 	lw	v0,16(s8)
    1e9c:	00000000 	sll	zero,zero,0x0
    1ea0:	24420004 	addiu	v0,v0,4
    1ea4:	8fc30010 	lw	v1,16(s8)
    1ea8:	00000000 	sll	zero,zero,0x0
    1eac:	24630014 	addiu	v1,v1,20
    1eb0:	8c630000 	lw	v1,0(v1)
    1eb4:	00000000 	sll	zero,zero,0x0
    1eb8:	00032903 	sra	a1,v1,0x4
    1ebc:	8fc30010 	lw	v1,16(s8)
    1ec0:	00000000 	sll	zero,zero,0x0
    1ec4:	24630014 	addiu	v1,v1,20
    1ec8:	8c630000 	lw	v1,0(v1)
    1ecc:	00000000 	sll	zero,zero,0x0
    1ed0:	3064000f 	andi	a0,v1,0xf
    1ed4:	3c030000 	lui	v1,0x0
    1ed8:	00052900 	sll	a1,a1,0x4
    1edc:	00a42021 	addu	a0,a1,a0
    1ee0:	00042080 	sll	a0,a0,0x2
    1ee4:	24630000 	addiu	v1,v1,0
    1ee8:	00831821 	addu	v1,a0,v1
    1eec:	8c630000 	lw	v1,0(v1)
    1ef0:	00000000 	sll	zero,zero,0x0
    1ef4:	ac430000 	sw	v1,0(v0)
      statemt[5] = Sbox[statemt[9] >> 4][statemt[9] & 0xf];
    1ef8:	8fc20010 	lw	v0,16(s8)
    1efc:	00000000 	sll	zero,zero,0x0
    1f00:	24420014 	addiu	v0,v0,20
    1f04:	8fc30010 	lw	v1,16(s8)
    1f08:	00000000 	sll	zero,zero,0x0
    1f0c:	24630024 	addiu	v1,v1,36
    1f10:	8c630000 	lw	v1,0(v1)
    1f14:	00000000 	sll	zero,zero,0x0
    1f18:	00032903 	sra	a1,v1,0x4
    1f1c:	8fc30010 	lw	v1,16(s8)
    1f20:	00000000 	sll	zero,zero,0x0
    1f24:	24630024 	addiu	v1,v1,36
    1f28:	8c630000 	lw	v1,0(v1)
    1f2c:	00000000 	sll	zero,zero,0x0
    1f30:	3064000f 	andi	a0,v1,0xf
    1f34:	3c030000 	lui	v1,0x0
    1f38:	00052900 	sll	a1,a1,0x4
    1f3c:	00a42021 	addu	a0,a1,a0
    1f40:	00042080 	sll	a0,a0,0x2
    1f44:	24630000 	addiu	v1,v1,0
    1f48:	00831821 	addu	v1,a0,v1
    1f4c:	8c630000 	lw	v1,0(v1)
    1f50:	00000000 	sll	zero,zero,0x0
    1f54:	ac430000 	sw	v1,0(v0)
      statemt[9] = Sbox[statemt[13] >> 4][statemt[13] & 0xf];
    1f58:	8fc20010 	lw	v0,16(s8)
    1f5c:	00000000 	sll	zero,zero,0x0
    1f60:	24420024 	addiu	v0,v0,36
    1f64:	8fc30010 	lw	v1,16(s8)
    1f68:	00000000 	sll	zero,zero,0x0
    1f6c:	24630034 	addiu	v1,v1,52
    1f70:	8c630000 	lw	v1,0(v1)
    1f74:	00000000 	sll	zero,zero,0x0
    1f78:	00032903 	sra	a1,v1,0x4
    1f7c:	8fc30010 	lw	v1,16(s8)
    1f80:	00000000 	sll	zero,zero,0x0
    1f84:	24630034 	addiu	v1,v1,52
    1f88:	8c630000 	lw	v1,0(v1)
    1f8c:	00000000 	sll	zero,zero,0x0
    1f90:	3064000f 	andi	a0,v1,0xf
    1f94:	3c030000 	lui	v1,0x0
    1f98:	00052900 	sll	a1,a1,0x4
    1f9c:	00a42021 	addu	a0,a1,a0
    1fa0:	00042080 	sll	a0,a0,0x2
    1fa4:	24630000 	addiu	v1,v1,0
    1fa8:	00831821 	addu	v1,a0,v1
    1fac:	8c630000 	lw	v1,0(v1)
    1fb0:	00000000 	sll	zero,zero,0x0
    1fb4:	ac430000 	sw	v1,0(v0)
      statemt[13] = Sbox[statemt[17] >> 4][statemt[17] & 0xf];
    1fb8:	8fc20010 	lw	v0,16(s8)
    1fbc:	00000000 	sll	zero,zero,0x0
    1fc0:	24420034 	addiu	v0,v0,52
    1fc4:	8fc30010 	lw	v1,16(s8)
    1fc8:	00000000 	sll	zero,zero,0x0
    1fcc:	24630044 	addiu	v1,v1,68
    1fd0:	8c630000 	lw	v1,0(v1)
    1fd4:	00000000 	sll	zero,zero,0x0
    1fd8:	00032903 	sra	a1,v1,0x4
    1fdc:	8fc30010 	lw	v1,16(s8)
    1fe0:	00000000 	sll	zero,zero,0x0
    1fe4:	24630044 	addiu	v1,v1,68
    1fe8:	8c630000 	lw	v1,0(v1)
    1fec:	00000000 	sll	zero,zero,0x0
    1ff0:	3064000f 	andi	a0,v1,0xf
    1ff4:	3c030000 	lui	v1,0x0
    1ff8:	00052900 	sll	a1,a1,0x4
    1ffc:	00a42021 	addu	a0,a1,a0
    2000:	00042080 	sll	a0,a0,0x2
    2004:	24630000 	addiu	v1,v1,0
    2008:	00831821 	addu	v1,a0,v1
    200c:	8c630000 	lw	v1,0(v1)
    2010:	00000000 	sll	zero,zero,0x0
    2014:	ac430000 	sw	v1,0(v0)
      statemt[17] = Sbox[statemt[21] >> 4][statemt[21] & 0xf];
    2018:	8fc20010 	lw	v0,16(s8)
    201c:	00000000 	sll	zero,zero,0x0
    2020:	24420044 	addiu	v0,v0,68
    2024:	8fc30010 	lw	v1,16(s8)
    2028:	00000000 	sll	zero,zero,0x0
    202c:	24630054 	addiu	v1,v1,84
    2030:	8c630000 	lw	v1,0(v1)
    2034:	00000000 	sll	zero,zero,0x0
    2038:	00032903 	sra	a1,v1,0x4
    203c:	8fc30010 	lw	v1,16(s8)
    2040:	00000000 	sll	zero,zero,0x0
    2044:	24630054 	addiu	v1,v1,84
    2048:	8c630000 	lw	v1,0(v1)
    204c:	00000000 	sll	zero,zero,0x0
    2050:	3064000f 	andi	a0,v1,0xf
    2054:	3c030000 	lui	v1,0x0
    2058:	00052900 	sll	a1,a1,0x4
    205c:	00a42021 	addu	a0,a1,a0
    2060:	00042080 	sll	a0,a0,0x2
    2064:	24630000 	addiu	v1,v1,0
    2068:	00831821 	addu	v1,a0,v1
    206c:	8c630000 	lw	v1,0(v1)
    2070:	00000000 	sll	zero,zero,0x0
    2074:	ac430000 	sw	v1,0(v0)
      statemt[21] = Sbox[statemt[25] >> 4][statemt[25] & 0xf];
    2078:	8fc20010 	lw	v0,16(s8)
    207c:	00000000 	sll	zero,zero,0x0
    2080:	24420054 	addiu	v0,v0,84
    2084:	8fc30010 	lw	v1,16(s8)
    2088:	00000000 	sll	zero,zero,0x0
    208c:	24630064 	addiu	v1,v1,100
    2090:	8c630000 	lw	v1,0(v1)
    2094:	00000000 	sll	zero,zero,0x0
    2098:	00032903 	sra	a1,v1,0x4
    209c:	8fc30010 	lw	v1,16(s8)
    20a0:	00000000 	sll	zero,zero,0x0
    20a4:	24630064 	addiu	v1,v1,100
    20a8:	8c630000 	lw	v1,0(v1)
    20ac:	00000000 	sll	zero,zero,0x0
    20b0:	3064000f 	andi	a0,v1,0xf
    20b4:	3c030000 	lui	v1,0x0
    20b8:	00052900 	sll	a1,a1,0x4
    20bc:	00a42021 	addu	a0,a1,a0
    20c0:	00042080 	sll	a0,a0,0x2
    20c4:	24630000 	addiu	v1,v1,0
    20c8:	00831821 	addu	v1,a0,v1
    20cc:	8c630000 	lw	v1,0(v1)
    20d0:	00000000 	sll	zero,zero,0x0
    20d4:	ac430000 	sw	v1,0(v0)
      statemt[25] = Sbox[statemt[29] >> 4][statemt[29] & 0xf];
    20d8:	8fc20010 	lw	v0,16(s8)
    20dc:	00000000 	sll	zero,zero,0x0
    20e0:	24420064 	addiu	v0,v0,100
    20e4:	8fc30010 	lw	v1,16(s8)
    20e8:	00000000 	sll	zero,zero,0x0
    20ec:	24630074 	addiu	v1,v1,116
    20f0:	8c630000 	lw	v1,0(v1)
    20f4:	00000000 	sll	zero,zero,0x0
    20f8:	00032903 	sra	a1,v1,0x4
    20fc:	8fc30010 	lw	v1,16(s8)
    2100:	00000000 	sll	zero,zero,0x0
    2104:	24630074 	addiu	v1,v1,116
    2108:	8c630000 	lw	v1,0(v1)
    210c:	00000000 	sll	zero,zero,0x0
    2110:	3064000f 	andi	a0,v1,0xf
    2114:	3c030000 	lui	v1,0x0
    2118:	00052900 	sll	a1,a1,0x4
    211c:	00a42021 	addu	a0,a1,a0
    2120:	00042080 	sll	a0,a0,0x2
    2124:	24630000 	addiu	v1,v1,0
    2128:	00831821 	addu	v1,a0,v1
    212c:	8c630000 	lw	v1,0(v1)
    2130:	00000000 	sll	zero,zero,0x0
    2134:	ac430000 	sw	v1,0(v0)
      statemt[29] = temp;
    2138:	8fc20010 	lw	v0,16(s8)
    213c:	00000000 	sll	zero,zero,0x0
    2140:	24420074 	addiu	v0,v0,116
    2144:	8fc30000 	lw	v1,0(s8)
    2148:	00000000 	sll	zero,zero,0x0
    214c:	ac430000 	sw	v1,0(v0)

      temp = Sbox[statemt[2] >> 4][statemt[2] & 0xf];
    2150:	8fc20010 	lw	v0,16(s8)
    2154:	00000000 	sll	zero,zero,0x0
    2158:	24420008 	addiu	v0,v0,8
    215c:	8c420000 	lw	v0,0(v0)
    2160:	00000000 	sll	zero,zero,0x0
    2164:	00022103 	sra	a0,v0,0x4
    2168:	8fc20010 	lw	v0,16(s8)
    216c:	00000000 	sll	zero,zero,0x0
    2170:	24420008 	addiu	v0,v0,8
    2174:	8c420000 	lw	v0,0(v0)
    2178:	00000000 	sll	zero,zero,0x0
    217c:	3043000f 	andi	v1,v0,0xf
    2180:	3c020000 	lui	v0,0x0
    2184:	00042100 	sll	a0,a0,0x4
    2188:	00831821 	addu	v1,a0,v1
    218c:	00031880 	sll	v1,v1,0x2
    2190:	24420000 	addiu	v0,v0,0
    2194:	00621021 	addu	v0,v1,v0
    2198:	8c420000 	lw	v0,0(v0)
    219c:	00000000 	sll	zero,zero,0x0
    21a0:	afc20000 	sw	v0,0(s8)
      statemt[2] = Sbox[statemt[14] >> 4][statemt[14] & 0xf];
    21a4:	8fc20010 	lw	v0,16(s8)
    21a8:	00000000 	sll	zero,zero,0x0
    21ac:	24420008 	addiu	v0,v0,8
    21b0:	8fc30010 	lw	v1,16(s8)
    21b4:	00000000 	sll	zero,zero,0x0
    21b8:	24630038 	addiu	v1,v1,56
    21bc:	8c630000 	lw	v1,0(v1)
    21c0:	00000000 	sll	zero,zero,0x0
    21c4:	00032903 	sra	a1,v1,0x4
    21c8:	8fc30010 	lw	v1,16(s8)
    21cc:	00000000 	sll	zero,zero,0x0
    21d0:	24630038 	addiu	v1,v1,56
    21d4:	8c630000 	lw	v1,0(v1)
    21d8:	00000000 	sll	zero,zero,0x0
    21dc:	3064000f 	andi	a0,v1,0xf
    21e0:	3c030000 	lui	v1,0x0
    21e4:	00052900 	sll	a1,a1,0x4
    21e8:	00a42021 	addu	a0,a1,a0
    21ec:	00042080 	sll	a0,a0,0x2
    21f0:	24630000 	addiu	v1,v1,0
    21f4:	00831821 	addu	v1,a0,v1
    21f8:	8c630000 	lw	v1,0(v1)
    21fc:	00000000 	sll	zero,zero,0x0
    2200:	ac430000 	sw	v1,0(v0)
      statemt[14] = Sbox[statemt[26] >> 4][statemt[26] & 0xf];
    2204:	8fc20010 	lw	v0,16(s8)
    2208:	00000000 	sll	zero,zero,0x0
    220c:	24420038 	addiu	v0,v0,56
    2210:	8fc30010 	lw	v1,16(s8)
    2214:	00000000 	sll	zero,zero,0x0
    2218:	24630068 	addiu	v1,v1,104
    221c:	8c630000 	lw	v1,0(v1)
    2220:	00000000 	sll	zero,zero,0x0
    2224:	00032903 	sra	a1,v1,0x4
    2228:	8fc30010 	lw	v1,16(s8)
    222c:	00000000 	sll	zero,zero,0x0
    2230:	24630068 	addiu	v1,v1,104
    2234:	8c630000 	lw	v1,0(v1)
    2238:	00000000 	sll	zero,zero,0x0
    223c:	3064000f 	andi	a0,v1,0xf
    2240:	3c030000 	lui	v1,0x0
    2244:	00052900 	sll	a1,a1,0x4
    2248:	00a42021 	addu	a0,a1,a0
    224c:	00042080 	sll	a0,a0,0x2
    2250:	24630000 	addiu	v1,v1,0
    2254:	00831821 	addu	v1,a0,v1
    2258:	8c630000 	lw	v1,0(v1)
    225c:	00000000 	sll	zero,zero,0x0
    2260:	ac430000 	sw	v1,0(v0)
      statemt[26] = Sbox[statemt[6] >> 4][statemt[6] & 0xf];
    2264:	8fc20010 	lw	v0,16(s8)
    2268:	00000000 	sll	zero,zero,0x0
    226c:	24420068 	addiu	v0,v0,104
    2270:	8fc30010 	lw	v1,16(s8)
    2274:	00000000 	sll	zero,zero,0x0
    2278:	24630018 	addiu	v1,v1,24
    227c:	8c630000 	lw	v1,0(v1)
    2280:	00000000 	sll	zero,zero,0x0
    2284:	00032903 	sra	a1,v1,0x4
    2288:	8fc30010 	lw	v1,16(s8)
    228c:	00000000 	sll	zero,zero,0x0
    2290:	24630018 	addiu	v1,v1,24
    2294:	8c630000 	lw	v1,0(v1)
    2298:	00000000 	sll	zero,zero,0x0
    229c:	3064000f 	andi	a0,v1,0xf
    22a0:	3c030000 	lui	v1,0x0
    22a4:	00052900 	sll	a1,a1,0x4
    22a8:	00a42021 	addu	a0,a1,a0
    22ac:	00042080 	sll	a0,a0,0x2
    22b0:	24630000 	addiu	v1,v1,0
    22b4:	00831821 	addu	v1,a0,v1
    22b8:	8c630000 	lw	v1,0(v1)
    22bc:	00000000 	sll	zero,zero,0x0
    22c0:	ac430000 	sw	v1,0(v0)
      statemt[6] = Sbox[statemt[18] >> 4][statemt[18] & 0xf];
    22c4:	8fc20010 	lw	v0,16(s8)
    22c8:	00000000 	sll	zero,zero,0x0
    22cc:	24420018 	addiu	v0,v0,24
    22d0:	8fc30010 	lw	v1,16(s8)
    22d4:	00000000 	sll	zero,zero,0x0
    22d8:	24630048 	addiu	v1,v1,72
    22dc:	8c630000 	lw	v1,0(v1)
    22e0:	00000000 	sll	zero,zero,0x0
    22e4:	00032903 	sra	a1,v1,0x4
    22e8:	8fc30010 	lw	v1,16(s8)
    22ec:	00000000 	sll	zero,zero,0x0
    22f0:	24630048 	addiu	v1,v1,72
    22f4:	8c630000 	lw	v1,0(v1)
    22f8:	00000000 	sll	zero,zero,0x0
    22fc:	3064000f 	andi	a0,v1,0xf
    2300:	3c030000 	lui	v1,0x0
    2304:	00052900 	sll	a1,a1,0x4
    2308:	00a42021 	addu	a0,a1,a0
    230c:	00042080 	sll	a0,a0,0x2
    2310:	24630000 	addiu	v1,v1,0
    2314:	00831821 	addu	v1,a0,v1
    2318:	8c630000 	lw	v1,0(v1)
    231c:	00000000 	sll	zero,zero,0x0
    2320:	ac430000 	sw	v1,0(v0)
      statemt[18] = Sbox[statemt[30] >> 4][statemt[30] & 0xf];
    2324:	8fc20010 	lw	v0,16(s8)
    2328:	00000000 	sll	zero,zero,0x0
    232c:	24420048 	addiu	v0,v0,72
    2330:	8fc30010 	lw	v1,16(s8)
    2334:	00000000 	sll	zero,zero,0x0
    2338:	24630078 	addiu	v1,v1,120
    233c:	8c630000 	lw	v1,0(v1)
    2340:	00000000 	sll	zero,zero,0x0
    2344:	00032903 	sra	a1,v1,0x4
    2348:	8fc30010 	lw	v1,16(s8)
    234c:	00000000 	sll	zero,zero,0x0
    2350:	24630078 	addiu	v1,v1,120
    2354:	8c630000 	lw	v1,0(v1)
    2358:	00000000 	sll	zero,zero,0x0
    235c:	3064000f 	andi	a0,v1,0xf
    2360:	3c030000 	lui	v1,0x0
    2364:	00052900 	sll	a1,a1,0x4
    2368:	00a42021 	addu	a0,a1,a0
    236c:	00042080 	sll	a0,a0,0x2
    2370:	24630000 	addiu	v1,v1,0
    2374:	00831821 	addu	v1,a0,v1
    2378:	8c630000 	lw	v1,0(v1)
    237c:	00000000 	sll	zero,zero,0x0
    2380:	ac430000 	sw	v1,0(v0)
      statemt[30] = Sbox[statemt[10] >> 4][statemt[10] & 0xf];
    2384:	8fc20010 	lw	v0,16(s8)
    2388:	00000000 	sll	zero,zero,0x0
    238c:	24420078 	addiu	v0,v0,120
    2390:	8fc30010 	lw	v1,16(s8)
    2394:	00000000 	sll	zero,zero,0x0
    2398:	24630028 	addiu	v1,v1,40
    239c:	8c630000 	lw	v1,0(v1)
    23a0:	00000000 	sll	zero,zero,0x0
    23a4:	00032903 	sra	a1,v1,0x4
    23a8:	8fc30010 	lw	v1,16(s8)
    23ac:	00000000 	sll	zero,zero,0x0
    23b0:	24630028 	addiu	v1,v1,40
    23b4:	8c630000 	lw	v1,0(v1)
    23b8:	00000000 	sll	zero,zero,0x0
    23bc:	3064000f 	andi	a0,v1,0xf
    23c0:	3c030000 	lui	v1,0x0
    23c4:	00052900 	sll	a1,a1,0x4
    23c8:	00a42021 	addu	a0,a1,a0
    23cc:	00042080 	sll	a0,a0,0x2
    23d0:	24630000 	addiu	v1,v1,0
    23d4:	00831821 	addu	v1,a0,v1
    23d8:	8c630000 	lw	v1,0(v1)
    23dc:	00000000 	sll	zero,zero,0x0
    23e0:	ac430000 	sw	v1,0(v0)
      statemt[10] = Sbox[statemt[22] >> 4][statemt[22] & 0xf];
    23e4:	8fc20010 	lw	v0,16(s8)
    23e8:	00000000 	sll	zero,zero,0x0
    23ec:	24420028 	addiu	v0,v0,40
    23f0:	8fc30010 	lw	v1,16(s8)
    23f4:	00000000 	sll	zero,zero,0x0
    23f8:	24630058 	addiu	v1,v1,88
    23fc:	8c630000 	lw	v1,0(v1)
    2400:	00000000 	sll	zero,zero,0x0
    2404:	00032903 	sra	a1,v1,0x4
    2408:	8fc30010 	lw	v1,16(s8)
    240c:	00000000 	sll	zero,zero,0x0
    2410:	24630058 	addiu	v1,v1,88
    2414:	8c630000 	lw	v1,0(v1)
    2418:	00000000 	sll	zero,zero,0x0
    241c:	3064000f 	andi	a0,v1,0xf
    2420:	3c030000 	lui	v1,0x0
    2424:	00052900 	sll	a1,a1,0x4
    2428:	00a42021 	addu	a0,a1,a0
    242c:	00042080 	sll	a0,a0,0x2
    2430:	24630000 	addiu	v1,v1,0
    2434:	00831821 	addu	v1,a0,v1
    2438:	8c630000 	lw	v1,0(v1)
    243c:	00000000 	sll	zero,zero,0x0
    2440:	ac430000 	sw	v1,0(v0)
      statemt[22] = temp;
    2444:	8fc20010 	lw	v0,16(s8)
    2448:	00000000 	sll	zero,zero,0x0
    244c:	24420058 	addiu	v0,v0,88
    2450:	8fc30000 	lw	v1,0(s8)
    2454:	00000000 	sll	zero,zero,0x0
    2458:	ac430000 	sw	v1,0(v0)

      temp = Sbox[statemt[3] >> 4][statemt[3] & 0xf];
    245c:	8fc20010 	lw	v0,16(s8)
    2460:	00000000 	sll	zero,zero,0x0
    2464:	2442000c 	addiu	v0,v0,12
    2468:	8c420000 	lw	v0,0(v0)
    246c:	00000000 	sll	zero,zero,0x0
    2470:	00022103 	sra	a0,v0,0x4
    2474:	8fc20010 	lw	v0,16(s8)
    2478:	00000000 	sll	zero,zero,0x0
    247c:	2442000c 	addiu	v0,v0,12
    2480:	8c420000 	lw	v0,0(v0)
    2484:	00000000 	sll	zero,zero,0x0
    2488:	3043000f 	andi	v1,v0,0xf
    248c:	3c020000 	lui	v0,0x0
    2490:	00042100 	sll	a0,a0,0x4
    2494:	00831821 	addu	v1,a0,v1
    2498:	00031880 	sll	v1,v1,0x2
    249c:	24420000 	addiu	v0,v0,0
    24a0:	00621021 	addu	v0,v1,v0
    24a4:	8c420000 	lw	v0,0(v0)
    24a8:	00000000 	sll	zero,zero,0x0
    24ac:	afc20000 	sw	v0,0(s8)
      statemt[3] = Sbox[statemt[19] >> 4][statemt[19] & 0xf];
    24b0:	8fc20010 	lw	v0,16(s8)
    24b4:	00000000 	sll	zero,zero,0x0
    24b8:	2442000c 	addiu	v0,v0,12
    24bc:	8fc30010 	lw	v1,16(s8)
    24c0:	00000000 	sll	zero,zero,0x0
    24c4:	2463004c 	addiu	v1,v1,76
    24c8:	8c630000 	lw	v1,0(v1)
    24cc:	00000000 	sll	zero,zero,0x0
    24d0:	00032903 	sra	a1,v1,0x4
    24d4:	8fc30010 	lw	v1,16(s8)
    24d8:	00000000 	sll	zero,zero,0x0
    24dc:	2463004c 	addiu	v1,v1,76
    24e0:	8c630000 	lw	v1,0(v1)
    24e4:	00000000 	sll	zero,zero,0x0
    24e8:	3064000f 	andi	a0,v1,0xf
    24ec:	3c030000 	lui	v1,0x0
    24f0:	00052900 	sll	a1,a1,0x4
    24f4:	00a42021 	addu	a0,a1,a0
    24f8:	00042080 	sll	a0,a0,0x2
    24fc:	24630000 	addiu	v1,v1,0
    2500:	00831821 	addu	v1,a0,v1
    2504:	8c630000 	lw	v1,0(v1)
    2508:	00000000 	sll	zero,zero,0x0
    250c:	ac430000 	sw	v1,0(v0)
      statemt[19] = temp;
    2510:	8fc20010 	lw	v0,16(s8)
    2514:	00000000 	sll	zero,zero,0x0
    2518:	2442004c 	addiu	v0,v0,76
    251c:	8fc30000 	lw	v1,0(s8)
    2520:	00000000 	sll	zero,zero,0x0
    2524:	ac430000 	sw	v1,0(v0)
      temp = Sbox[statemt[7] >> 4][statemt[7] & 0xf];
    2528:	8fc20010 	lw	v0,16(s8)
    252c:	00000000 	sll	zero,zero,0x0
    2530:	2442001c 	addiu	v0,v0,28
    2534:	8c420000 	lw	v0,0(v0)
    2538:	00000000 	sll	zero,zero,0x0
    253c:	00022103 	sra	a0,v0,0x4
    2540:	8fc20010 	lw	v0,16(s8)
    2544:	00000000 	sll	zero,zero,0x0
    2548:	2442001c 	addiu	v0,v0,28
    254c:	8c420000 	lw	v0,0(v0)
    2550:	00000000 	sll	zero,zero,0x0
    2554:	3043000f 	andi	v1,v0,0xf
    2558:	3c020000 	lui	v0,0x0
    255c:	00042100 	sll	a0,a0,0x4
    2560:	00831821 	addu	v1,a0,v1
    2564:	00031880 	sll	v1,v1,0x2
    2568:	24420000 	addiu	v0,v0,0
    256c:	00621021 	addu	v0,v1,v0
    2570:	8c420000 	lw	v0,0(v0)
    2574:	00000000 	sll	zero,zero,0x0
    2578:	afc20000 	sw	v0,0(s8)
      statemt[7] = Sbox[statemt[23] >> 4][statemt[23] & 0xf];
    257c:	8fc20010 	lw	v0,16(s8)
    2580:	00000000 	sll	zero,zero,0x0
    2584:	2442001c 	addiu	v0,v0,28
    2588:	8fc30010 	lw	v1,16(s8)
    258c:	00000000 	sll	zero,zero,0x0
    2590:	2463005c 	addiu	v1,v1,92
    2594:	8c630000 	lw	v1,0(v1)
    2598:	00000000 	sll	zero,zero,0x0
    259c:	00032903 	sra	a1,v1,0x4
    25a0:	8fc30010 	lw	v1,16(s8)
    25a4:	00000000 	sll	zero,zero,0x0
    25a8:	2463005c 	addiu	v1,v1,92
    25ac:	8c630000 	lw	v1,0(v1)
    25b0:	00000000 	sll	zero,zero,0x0
    25b4:	3064000f 	andi	a0,v1,0xf
    25b8:	3c030000 	lui	v1,0x0
    25bc:	00052900 	sll	a1,a1,0x4
    25c0:	00a42021 	addu	a0,a1,a0
    25c4:	00042080 	sll	a0,a0,0x2
    25c8:	24630000 	addiu	v1,v1,0
    25cc:	00831821 	addu	v1,a0,v1
    25d0:	8c630000 	lw	v1,0(v1)
    25d4:	00000000 	sll	zero,zero,0x0
    25d8:	ac430000 	sw	v1,0(v0)
      statemt[23] = temp;
    25dc:	8fc20010 	lw	v0,16(s8)
    25e0:	00000000 	sll	zero,zero,0x0
    25e4:	2442005c 	addiu	v0,v0,92
    25e8:	8fc30000 	lw	v1,0(s8)
    25ec:	00000000 	sll	zero,zero,0x0
    25f0:	ac430000 	sw	v1,0(v0)
      temp = Sbox[statemt[11] >> 4][statemt[11] & 0xf];
    25f4:	8fc20010 	lw	v0,16(s8)
    25f8:	00000000 	sll	zero,zero,0x0
    25fc:	2442002c 	addiu	v0,v0,44
    2600:	8c420000 	lw	v0,0(v0)
    2604:	00000000 	sll	zero,zero,0x0
    2608:	00022103 	sra	a0,v0,0x4
    260c:	8fc20010 	lw	v0,16(s8)
    2610:	00000000 	sll	zero,zero,0x0
    2614:	2442002c 	addiu	v0,v0,44
    2618:	8c420000 	lw	v0,0(v0)
    261c:	00000000 	sll	zero,zero,0x0
    2620:	3043000f 	andi	v1,v0,0xf
    2624:	3c020000 	lui	v0,0x0
    2628:	00042100 	sll	a0,a0,0x4
    262c:	00831821 	addu	v1,a0,v1
    2630:	00031880 	sll	v1,v1,0x2
    2634:	24420000 	addiu	v0,v0,0
    2638:	00621021 	addu	v0,v1,v0
    263c:	8c420000 	lw	v0,0(v0)
    2640:	00000000 	sll	zero,zero,0x0
    2644:	afc20000 	sw	v0,0(s8)
      statemt[11] = Sbox[statemt[27] >> 4][statemt[27] & 0xf];
    2648:	8fc20010 	lw	v0,16(s8)
    264c:	00000000 	sll	zero,zero,0x0
    2650:	2442002c 	addiu	v0,v0,44
    2654:	8fc30010 	lw	v1,16(s8)
    2658:	00000000 	sll	zero,zero,0x0
    265c:	2463006c 	addiu	v1,v1,108
    2660:	8c630000 	lw	v1,0(v1)
    2664:	00000000 	sll	zero,zero,0x0
    2668:	00032903 	sra	a1,v1,0x4
    266c:	8fc30010 	lw	v1,16(s8)
    2670:	00000000 	sll	zero,zero,0x0
    2674:	2463006c 	addiu	v1,v1,108
    2678:	8c630000 	lw	v1,0(v1)
    267c:	00000000 	sll	zero,zero,0x0
    2680:	3064000f 	andi	a0,v1,0xf
    2684:	3c030000 	lui	v1,0x0
    2688:	00052900 	sll	a1,a1,0x4
    268c:	00a42021 	addu	a0,a1,a0
    2690:	00042080 	sll	a0,a0,0x2
    2694:	24630000 	addiu	v1,v1,0
    2698:	00831821 	addu	v1,a0,v1
    269c:	8c630000 	lw	v1,0(v1)
    26a0:	00000000 	sll	zero,zero,0x0
    26a4:	ac430000 	sw	v1,0(v0)
      statemt[27] = temp;
    26a8:	8fc20010 	lw	v0,16(s8)
    26ac:	00000000 	sll	zero,zero,0x0
    26b0:	2442006c 	addiu	v0,v0,108
    26b4:	8fc30000 	lw	v1,0(s8)
    26b8:	00000000 	sll	zero,zero,0x0
    26bc:	ac430000 	sw	v1,0(v0)
      temp = Sbox[statemt[15] >> 4][statemt[15] & 0xf];
    26c0:	8fc20010 	lw	v0,16(s8)
    26c4:	00000000 	sll	zero,zero,0x0
    26c8:	2442003c 	addiu	v0,v0,60
    26cc:	8c420000 	lw	v0,0(v0)
    26d0:	00000000 	sll	zero,zero,0x0
    26d4:	00022103 	sra	a0,v0,0x4
    26d8:	8fc20010 	lw	v0,16(s8)
    26dc:	00000000 	sll	zero,zero,0x0
    26e0:	2442003c 	addiu	v0,v0,60
    26e4:	8c420000 	lw	v0,0(v0)
    26e8:	00000000 	sll	zero,zero,0x0
    26ec:	3043000f 	andi	v1,v0,0xf
    26f0:	3c020000 	lui	v0,0x0
    26f4:	00042100 	sll	a0,a0,0x4
    26f8:	00831821 	addu	v1,a0,v1
    26fc:	00031880 	sll	v1,v1,0x2
    2700:	24420000 	addiu	v0,v0,0
    2704:	00621021 	addu	v0,v1,v0
    2708:	8c420000 	lw	v0,0(v0)
    270c:	00000000 	sll	zero,zero,0x0
    2710:	afc20000 	sw	v0,0(s8)
      statemt[15] = Sbox[statemt[31] >> 4][statemt[31] & 0xf];
    2714:	8fc20010 	lw	v0,16(s8)
    2718:	00000000 	sll	zero,zero,0x0
    271c:	2442003c 	addiu	v0,v0,60
    2720:	8fc30010 	lw	v1,16(s8)
    2724:	00000000 	sll	zero,zero,0x0
    2728:	2463007c 	addiu	v1,v1,124
    272c:	8c630000 	lw	v1,0(v1)
    2730:	00000000 	sll	zero,zero,0x0
    2734:	00032903 	sra	a1,v1,0x4
    2738:	8fc30010 	lw	v1,16(s8)
    273c:	00000000 	sll	zero,zero,0x0
    2740:	2463007c 	addiu	v1,v1,124
    2744:	8c630000 	lw	v1,0(v1)
    2748:	00000000 	sll	zero,zero,0x0
    274c:	3064000f 	andi	a0,v1,0xf
    2750:	3c030000 	lui	v1,0x0
    2754:	00052900 	sll	a1,a1,0x4
    2758:	00a42021 	addu	a0,a1,a0
    275c:	00042080 	sll	a0,a0,0x2
    2760:	24630000 	addiu	v1,v1,0
    2764:	00831821 	addu	v1,a0,v1
    2768:	8c630000 	lw	v1,0(v1)
    276c:	00000000 	sll	zero,zero,0x0
    2770:	ac430000 	sw	v1,0(v0)
      statemt[31] = temp;
    2774:	8fc20010 	lw	v0,16(s8)
    2778:	00000000 	sll	zero,zero,0x0
    277c:	2442007c 	addiu	v0,v0,124
    2780:	8fc30000 	lw	v1,0(s8)
    2784:	00000000 	sll	zero,zero,0x0
    2788:	ac430000 	sw	v1,0(v0)

      statemt[0] = Sbox[statemt[0] >> 4][statemt[0] & 0xf];
    278c:	8fc20010 	lw	v0,16(s8)
    2790:	00000000 	sll	zero,zero,0x0
    2794:	8c420000 	lw	v0,0(v0)
    2798:	00000000 	sll	zero,zero,0x0
    279c:	00022103 	sra	a0,v0,0x4
    27a0:	8fc20010 	lw	v0,16(s8)
    27a4:	00000000 	sll	zero,zero,0x0
    27a8:	8c420000 	lw	v0,0(v0)
    27ac:	00000000 	sll	zero,zero,0x0
    27b0:	3043000f 	andi	v1,v0,0xf
    27b4:	3c020000 	lui	v0,0x0
    27b8:	00042100 	sll	a0,a0,0x4
    27bc:	00831821 	addu	v1,a0,v1
    27c0:	00031880 	sll	v1,v1,0x2
    27c4:	24420000 	addiu	v0,v0,0
    27c8:	00621021 	addu	v0,v1,v0
    27cc:	8c430000 	lw	v1,0(v0)
    27d0:	8fc20010 	lw	v0,16(s8)
    27d4:	00000000 	sll	zero,zero,0x0
    27d8:	ac430000 	sw	v1,0(v0)
      statemt[4] = Sbox[statemt[4] >> 4][statemt[4] & 0xf];
    27dc:	8fc20010 	lw	v0,16(s8)
    27e0:	00000000 	sll	zero,zero,0x0
    27e4:	24420010 	addiu	v0,v0,16
    27e8:	8fc30010 	lw	v1,16(s8)
    27ec:	00000000 	sll	zero,zero,0x0
    27f0:	24630010 	addiu	v1,v1,16
    27f4:	8c630000 	lw	v1,0(v1)
    27f8:	00000000 	sll	zero,zero,0x0
    27fc:	00032903 	sra	a1,v1,0x4
    2800:	8fc30010 	lw	v1,16(s8)
    2804:	00000000 	sll	zero,zero,0x0
    2808:	24630010 	addiu	v1,v1,16
    280c:	8c630000 	lw	v1,0(v1)
    2810:	00000000 	sll	zero,zero,0x0
    2814:	3064000f 	andi	a0,v1,0xf
    2818:	3c030000 	lui	v1,0x0
    281c:	00052900 	sll	a1,a1,0x4
    2820:	00a42021 	addu	a0,a1,a0
    2824:	00042080 	sll	a0,a0,0x2
    2828:	24630000 	addiu	v1,v1,0
    282c:	00831821 	addu	v1,a0,v1
    2830:	8c630000 	lw	v1,0(v1)
    2834:	00000000 	sll	zero,zero,0x0
    2838:	ac430000 	sw	v1,0(v0)
      statemt[8] = Sbox[statemt[8] >> 4][statemt[8] & 0xf];
    283c:	8fc20010 	lw	v0,16(s8)
    2840:	00000000 	sll	zero,zero,0x0
    2844:	24420020 	addiu	v0,v0,32
    2848:	8fc30010 	lw	v1,16(s8)
    284c:	00000000 	sll	zero,zero,0x0
    2850:	24630020 	addiu	v1,v1,32
    2854:	8c630000 	lw	v1,0(v1)
    2858:	00000000 	sll	zero,zero,0x0
    285c:	00032903 	sra	a1,v1,0x4
    2860:	8fc30010 	lw	v1,16(s8)
    2864:	00000000 	sll	zero,zero,0x0
    2868:	24630020 	addiu	v1,v1,32
    286c:	8c630000 	lw	v1,0(v1)
    2870:	00000000 	sll	zero,zero,0x0
    2874:	3064000f 	andi	a0,v1,0xf
    2878:	3c030000 	lui	v1,0x0
    287c:	00052900 	sll	a1,a1,0x4
    2880:	00a42021 	addu	a0,a1,a0
    2884:	00042080 	sll	a0,a0,0x2
    2888:	24630000 	addiu	v1,v1,0
    288c:	00831821 	addu	v1,a0,v1
    2890:	8c630000 	lw	v1,0(v1)
    2894:	00000000 	sll	zero,zero,0x0
    2898:	ac430000 	sw	v1,0(v0)
      statemt[12] = Sbox[statemt[12] >> 4][statemt[12] & 0xf];
    289c:	8fc20010 	lw	v0,16(s8)
    28a0:	00000000 	sll	zero,zero,0x0
    28a4:	24420030 	addiu	v0,v0,48
    28a8:	8fc30010 	lw	v1,16(s8)
    28ac:	00000000 	sll	zero,zero,0x0
    28b0:	24630030 	addiu	v1,v1,48
    28b4:	8c630000 	lw	v1,0(v1)
    28b8:	00000000 	sll	zero,zero,0x0
    28bc:	00032903 	sra	a1,v1,0x4
    28c0:	8fc30010 	lw	v1,16(s8)
    28c4:	00000000 	sll	zero,zero,0x0
    28c8:	24630030 	addiu	v1,v1,48
    28cc:	8c630000 	lw	v1,0(v1)
    28d0:	00000000 	sll	zero,zero,0x0
    28d4:	3064000f 	andi	a0,v1,0xf
    28d8:	3c030000 	lui	v1,0x0
    28dc:	00052900 	sll	a1,a1,0x4
    28e0:	00a42021 	addu	a0,a1,a0
    28e4:	00042080 	sll	a0,a0,0x2
    28e8:	24630000 	addiu	v1,v1,0
    28ec:	00831821 	addu	v1,a0,v1
    28f0:	8c630000 	lw	v1,0(v1)
    28f4:	00000000 	sll	zero,zero,0x0
    28f8:	ac430000 	sw	v1,0(v0)
      statemt[16] = Sbox[statemt[16] >> 4][statemt[16] & 0xf];
    28fc:	8fc20010 	lw	v0,16(s8)
    2900:	00000000 	sll	zero,zero,0x0
    2904:	24420040 	addiu	v0,v0,64
    2908:	8fc30010 	lw	v1,16(s8)
    290c:	00000000 	sll	zero,zero,0x0
    2910:	24630040 	addiu	v1,v1,64
    2914:	8c630000 	lw	v1,0(v1)
    2918:	00000000 	sll	zero,zero,0x0
    291c:	00032903 	sra	a1,v1,0x4
    2920:	8fc30010 	lw	v1,16(s8)
    2924:	00000000 	sll	zero,zero,0x0
    2928:	24630040 	addiu	v1,v1,64
    292c:	8c630000 	lw	v1,0(v1)
    2930:	00000000 	sll	zero,zero,0x0
    2934:	3064000f 	andi	a0,v1,0xf
    2938:	3c030000 	lui	v1,0x0
    293c:	00052900 	sll	a1,a1,0x4
    2940:	00a42021 	addu	a0,a1,a0
    2944:	00042080 	sll	a0,a0,0x2
    2948:	24630000 	addiu	v1,v1,0
    294c:	00831821 	addu	v1,a0,v1
    2950:	8c630000 	lw	v1,0(v1)
    2954:	00000000 	sll	zero,zero,0x0
    2958:	ac430000 	sw	v1,0(v0)
      statemt[20] = Sbox[statemt[20] >> 4][statemt[20] & 0xf];
    295c:	8fc20010 	lw	v0,16(s8)
    2960:	00000000 	sll	zero,zero,0x0
    2964:	24420050 	addiu	v0,v0,80
    2968:	8fc30010 	lw	v1,16(s8)
    296c:	00000000 	sll	zero,zero,0x0
    2970:	24630050 	addiu	v1,v1,80
    2974:	8c630000 	lw	v1,0(v1)
    2978:	00000000 	sll	zero,zero,0x0
    297c:	00032903 	sra	a1,v1,0x4
    2980:	8fc30010 	lw	v1,16(s8)
    2984:	00000000 	sll	zero,zero,0x0
    2988:	24630050 	addiu	v1,v1,80
    298c:	8c630000 	lw	v1,0(v1)
    2990:	00000000 	sll	zero,zero,0x0
    2994:	3064000f 	andi	a0,v1,0xf
    2998:	3c030000 	lui	v1,0x0
    299c:	00052900 	sll	a1,a1,0x4
    29a0:	00a42021 	addu	a0,a1,a0
    29a4:	00042080 	sll	a0,a0,0x2
    29a8:	24630000 	addiu	v1,v1,0
    29ac:	00831821 	addu	v1,a0,v1
    29b0:	8c630000 	lw	v1,0(v1)
    29b4:	00000000 	sll	zero,zero,0x0
    29b8:	ac430000 	sw	v1,0(v0)
      statemt[24] = Sbox[statemt[24] >> 4][statemt[24] & 0xf];
    29bc:	8fc20010 	lw	v0,16(s8)
    29c0:	00000000 	sll	zero,zero,0x0
    29c4:	24420060 	addiu	v0,v0,96
    29c8:	8fc30010 	lw	v1,16(s8)
    29cc:	00000000 	sll	zero,zero,0x0
    29d0:	24630060 	addiu	v1,v1,96
    29d4:	8c630000 	lw	v1,0(v1)
    29d8:	00000000 	sll	zero,zero,0x0
    29dc:	00032903 	sra	a1,v1,0x4
    29e0:	8fc30010 	lw	v1,16(s8)
    29e4:	00000000 	sll	zero,zero,0x0
    29e8:	24630060 	addiu	v1,v1,96
    29ec:	8c630000 	lw	v1,0(v1)
    29f0:	00000000 	sll	zero,zero,0x0
    29f4:	3064000f 	andi	a0,v1,0xf
    29f8:	3c030000 	lui	v1,0x0
    29fc:	00052900 	sll	a1,a1,0x4
    2a00:	00a42021 	addu	a0,a1,a0
    2a04:	00042080 	sll	a0,a0,0x2
    2a08:	24630000 	addiu	v1,v1,0
    2a0c:	00831821 	addu	v1,a0,v1
    2a10:	8c630000 	lw	v1,0(v1)
    2a14:	00000000 	sll	zero,zero,0x0
    2a18:	ac430000 	sw	v1,0(v0)
      statemt[28] = Sbox[statemt[28] >> 4][statemt[28] & 0xf];
    2a1c:	8fc20010 	lw	v0,16(s8)
    2a20:	00000000 	sll	zero,zero,0x0
    2a24:	24420070 	addiu	v0,v0,112
    2a28:	8fc30010 	lw	v1,16(s8)
    2a2c:	00000000 	sll	zero,zero,0x0
    2a30:	24630070 	addiu	v1,v1,112
    2a34:	8c630000 	lw	v1,0(v1)
    2a38:	00000000 	sll	zero,zero,0x0
    2a3c:	00032903 	sra	a1,v1,0x4
    2a40:	8fc30010 	lw	v1,16(s8)
    2a44:	00000000 	sll	zero,zero,0x0
    2a48:	24630070 	addiu	v1,v1,112
    2a4c:	8c630000 	lw	v1,0(v1)
    2a50:	00000000 	sll	zero,zero,0x0
    2a54:	3064000f 	andi	a0,v1,0xf
    2a58:	3c030000 	lui	v1,0x0
    2a5c:	00052900 	sll	a1,a1,0x4
    2a60:	00a42021 	addu	a0,a1,a0
    2a64:	00042080 	sll	a0,a0,0x2
    2a68:	24630000 	addiu	v1,v1,0
    2a6c:	00831821 	addu	v1,a0,v1
    2a70:	8c630000 	lw	v1,0(v1)
    2a74:	00000000 	sll	zero,zero,0x0
    2a78:	ac430000 	sw	v1,0(v0)
      break;
    2a7c:	00000000 	sll	zero,zero,0x0
    }
}
    2a80:	03c0e821 	addu	sp,s8,zero
    2a84:	8fbe000c 	lw	s8,12(sp)
    2a88:	27bd0010 	addiu	sp,sp,16
    2a8c:	03e00008 	jr	ra
    2a90:	00000000 	sll	zero,zero,0x0

00002a94 <SubByte>:

int
SubByte (int in)
{
    2a94:	27bdfff8 	addiu	sp,sp,-8
    2a98:	afbe0004 	sw	s8,4(sp)
    2a9c:	03a0f021 	addu	s8,sp,zero
    2aa0:	afc40008 	sw	a0,8(s8)
  return Sbox[(in / 16)][(in % 16)];
    2aa4:	8fc20008 	lw	v0,8(s8)
    2aa8:	00000000 	sll	zero,zero,0x0
    2aac:	04410002 	bgez	v0,2ab8 <SubByte+0x24>
    2ab0:	00000000 	sll	zero,zero,0x0
    2ab4:	2442000f 	addiu	v0,v0,15
    2ab8:	00021103 	sra	v0,v0,0x4
    2abc:	00402021 	addu	a0,v0,zero
    2ac0:	8fc30008 	lw	v1,8(s8)
    2ac4:	3c028000 	lui	v0,0x8000
    2ac8:	3442000f 	ori	v0,v0,0xf
    2acc:	00621024 	and	v0,v1,v0
    2ad0:	04410005 	bgez	v0,2ae8 <SubByte+0x54>
    2ad4:	00000000 	sll	zero,zero,0x0
    2ad8:	2442ffff 	addiu	v0,v0,-1
    2adc:	2403fff0 	addiu	v1,zero,-16
    2ae0:	00431025 	or	v0,v0,v1
    2ae4:	24420001 	addiu	v0,v0,1
    2ae8:	00401821 	addu	v1,v0,zero
    2aec:	3c020000 	lui	v0,0x0
    2af0:	00042100 	sll	a0,a0,0x4
    2af4:	00831821 	addu	v1,a0,v1
    2af8:	00031880 	sll	v1,v1,0x2
    2afc:	24420000 	addiu	v0,v0,0
    2b00:	00621021 	addu	v0,v1,v0
    2b04:	8c420000 	lw	v0,0(v0)
}
    2b08:	03c0e821 	addu	sp,s8,zero
    2b0c:	8fbe0004 	lw	s8,4(sp)
    2b10:	27bd0008 	addiu	sp,sp,8
    2b14:	03e00008 	jr	ra
    2b18:	00000000 	sll	zero,zero,0x0

00002b1c <InversShiftRow_ByteSub>:

/* ********* InversShiftRow & ByteSub ********* */
void
InversShiftRow_ByteSub (int statemt[32], int nb)
{
    2b1c:	27bdfff0 	addiu	sp,sp,-16
    2b20:	afbe000c 	sw	s8,12(sp)
    2b24:	03a0f021 	addu	s8,sp,zero
    2b28:	afc40010 	sw	a0,16(s8)
    2b2c:	afc50014 	sw	a1,20(s8)
  int temp;

  switch (nb)
    2b30:	8fc20014 	lw	v0,20(s8)
    2b34:	24030006 	addiu	v1,zero,6
    2b38:	10430191 	beq	v0,v1,3180 <InversShiftRow_ByteSub+0x664>
    2b3c:	00000000 	sll	zero,zero,0x0
    2b40:	24030008 	addiu	v1,zero,8
    2b44:	104303de 	beq	v0,v1,3ac0 <InversShiftRow_ByteSub+0xfa4>
    2b48:	00000000 	sll	zero,zero,0x0
    2b4c:	24030004 	addiu	v1,zero,4
    2b50:	144306ea 	bne	v0,v1,46fc <InversShiftRow_ByteSub+0x1be0>
    2b54:	00000000 	sll	zero,zero,0x0
    {
    case 4:
      temp = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    2b58:	8fc20010 	lw	v0,16(s8)
    2b5c:	00000000 	sll	zero,zero,0x0
    2b60:	24420034 	addiu	v0,v0,52
    2b64:	8c420000 	lw	v0,0(v0)
    2b68:	00000000 	sll	zero,zero,0x0
    2b6c:	00022103 	sra	a0,v0,0x4
    2b70:	8fc20010 	lw	v0,16(s8)
    2b74:	00000000 	sll	zero,zero,0x0
    2b78:	24420034 	addiu	v0,v0,52
    2b7c:	8c420000 	lw	v0,0(v0)
    2b80:	00000000 	sll	zero,zero,0x0
    2b84:	3043000f 	andi	v1,v0,0xf
    2b88:	3c020000 	lui	v0,0x0
    2b8c:	00042100 	sll	a0,a0,0x4
    2b90:	00831821 	addu	v1,a0,v1
    2b94:	00031880 	sll	v1,v1,0x2
    2b98:	24420000 	addiu	v0,v0,0
    2b9c:	00621021 	addu	v0,v1,v0
    2ba0:	8c420000 	lw	v0,0(v0)
    2ba4:	00000000 	sll	zero,zero,0x0
    2ba8:	afc20000 	sw	v0,0(s8)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    2bac:	8fc20010 	lw	v0,16(s8)
    2bb0:	00000000 	sll	zero,zero,0x0
    2bb4:	24420034 	addiu	v0,v0,52
    2bb8:	8fc30010 	lw	v1,16(s8)
    2bbc:	00000000 	sll	zero,zero,0x0
    2bc0:	24630024 	addiu	v1,v1,36
    2bc4:	8c630000 	lw	v1,0(v1)
    2bc8:	00000000 	sll	zero,zero,0x0
    2bcc:	00032903 	sra	a1,v1,0x4
    2bd0:	8fc30010 	lw	v1,16(s8)
    2bd4:	00000000 	sll	zero,zero,0x0
    2bd8:	24630024 	addiu	v1,v1,36
    2bdc:	8c630000 	lw	v1,0(v1)
    2be0:	00000000 	sll	zero,zero,0x0
    2be4:	3064000f 	andi	a0,v1,0xf
    2be8:	3c030000 	lui	v1,0x0
    2bec:	00052900 	sll	a1,a1,0x4
    2bf0:	00a42021 	addu	a0,a1,a0
    2bf4:	00042080 	sll	a0,a0,0x2
    2bf8:	24630000 	addiu	v1,v1,0
    2bfc:	00831821 	addu	v1,a0,v1
    2c00:	8c630000 	lw	v1,0(v1)
    2c04:	00000000 	sll	zero,zero,0x0
    2c08:	ac430000 	sw	v1,0(v0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    2c0c:	8fc20010 	lw	v0,16(s8)
    2c10:	00000000 	sll	zero,zero,0x0
    2c14:	24420024 	addiu	v0,v0,36
    2c18:	8fc30010 	lw	v1,16(s8)
    2c1c:	00000000 	sll	zero,zero,0x0
    2c20:	24630014 	addiu	v1,v1,20
    2c24:	8c630000 	lw	v1,0(v1)
    2c28:	00000000 	sll	zero,zero,0x0
    2c2c:	00032903 	sra	a1,v1,0x4
    2c30:	8fc30010 	lw	v1,16(s8)
    2c34:	00000000 	sll	zero,zero,0x0
    2c38:	24630014 	addiu	v1,v1,20
    2c3c:	8c630000 	lw	v1,0(v1)
    2c40:	00000000 	sll	zero,zero,0x0
    2c44:	3064000f 	andi	a0,v1,0xf
    2c48:	3c030000 	lui	v1,0x0
    2c4c:	00052900 	sll	a1,a1,0x4
    2c50:	00a42021 	addu	a0,a1,a0
    2c54:	00042080 	sll	a0,a0,0x2
    2c58:	24630000 	addiu	v1,v1,0
    2c5c:	00831821 	addu	v1,a0,v1
    2c60:	8c630000 	lw	v1,0(v1)
    2c64:	00000000 	sll	zero,zero,0x0
    2c68:	ac430000 	sw	v1,0(v0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    2c6c:	8fc20010 	lw	v0,16(s8)
    2c70:	00000000 	sll	zero,zero,0x0
    2c74:	24420014 	addiu	v0,v0,20
    2c78:	8fc30010 	lw	v1,16(s8)
    2c7c:	00000000 	sll	zero,zero,0x0
    2c80:	24630004 	addiu	v1,v1,4
    2c84:	8c630000 	lw	v1,0(v1)
    2c88:	00000000 	sll	zero,zero,0x0
    2c8c:	00032903 	sra	a1,v1,0x4
    2c90:	8fc30010 	lw	v1,16(s8)
    2c94:	00000000 	sll	zero,zero,0x0
    2c98:	24630004 	addiu	v1,v1,4
    2c9c:	8c630000 	lw	v1,0(v1)
    2ca0:	00000000 	sll	zero,zero,0x0
    2ca4:	3064000f 	andi	a0,v1,0xf
    2ca8:	3c030000 	lui	v1,0x0
    2cac:	00052900 	sll	a1,a1,0x4
    2cb0:	00a42021 	addu	a0,a1,a0
    2cb4:	00042080 	sll	a0,a0,0x2
    2cb8:	24630000 	addiu	v1,v1,0
    2cbc:	00831821 	addu	v1,a0,v1
    2cc0:	8c630000 	lw	v1,0(v1)
    2cc4:	00000000 	sll	zero,zero,0x0
    2cc8:	ac430000 	sw	v1,0(v0)
      statemt[1] = temp;
    2ccc:	8fc20010 	lw	v0,16(s8)
    2cd0:	00000000 	sll	zero,zero,0x0
    2cd4:	24420004 	addiu	v0,v0,4
    2cd8:	8fc30000 	lw	v1,0(s8)
    2cdc:	00000000 	sll	zero,zero,0x0
    2ce0:	ac430000 	sw	v1,0(v0)

      temp = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    2ce4:	8fc20010 	lw	v0,16(s8)
    2ce8:	00000000 	sll	zero,zero,0x0
    2cec:	24420038 	addiu	v0,v0,56
    2cf0:	8c420000 	lw	v0,0(v0)
    2cf4:	00000000 	sll	zero,zero,0x0
    2cf8:	00022103 	sra	a0,v0,0x4
    2cfc:	8fc20010 	lw	v0,16(s8)
    2d00:	00000000 	sll	zero,zero,0x0
    2d04:	24420038 	addiu	v0,v0,56
    2d08:	8c420000 	lw	v0,0(v0)
    2d0c:	00000000 	sll	zero,zero,0x0
    2d10:	3043000f 	andi	v1,v0,0xf
    2d14:	3c020000 	lui	v0,0x0
    2d18:	00042100 	sll	a0,a0,0x4
    2d1c:	00831821 	addu	v1,a0,v1
    2d20:	00031880 	sll	v1,v1,0x2
    2d24:	24420000 	addiu	v0,v0,0
    2d28:	00621021 	addu	v0,v1,v0
    2d2c:	8c420000 	lw	v0,0(v0)
    2d30:	00000000 	sll	zero,zero,0x0
    2d34:	afc20000 	sw	v0,0(s8)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    2d38:	8fc20010 	lw	v0,16(s8)
    2d3c:	00000000 	sll	zero,zero,0x0
    2d40:	24420038 	addiu	v0,v0,56
    2d44:	8fc30010 	lw	v1,16(s8)
    2d48:	00000000 	sll	zero,zero,0x0
    2d4c:	24630018 	addiu	v1,v1,24
    2d50:	8c630000 	lw	v1,0(v1)
    2d54:	00000000 	sll	zero,zero,0x0
    2d58:	00032903 	sra	a1,v1,0x4
    2d5c:	8fc30010 	lw	v1,16(s8)
    2d60:	00000000 	sll	zero,zero,0x0
    2d64:	24630018 	addiu	v1,v1,24
    2d68:	8c630000 	lw	v1,0(v1)
    2d6c:	00000000 	sll	zero,zero,0x0
    2d70:	3064000f 	andi	a0,v1,0xf
    2d74:	3c030000 	lui	v1,0x0
    2d78:	00052900 	sll	a1,a1,0x4
    2d7c:	00a42021 	addu	a0,a1,a0
    2d80:	00042080 	sll	a0,a0,0x2
    2d84:	24630000 	addiu	v1,v1,0
    2d88:	00831821 	addu	v1,a0,v1
    2d8c:	8c630000 	lw	v1,0(v1)
    2d90:	00000000 	sll	zero,zero,0x0
    2d94:	ac430000 	sw	v1,0(v0)
      statemt[6] = temp;
    2d98:	8fc20010 	lw	v0,16(s8)
    2d9c:	00000000 	sll	zero,zero,0x0
    2da0:	24420018 	addiu	v0,v0,24
    2da4:	8fc30000 	lw	v1,0(s8)
    2da8:	00000000 	sll	zero,zero,0x0
    2dac:	ac430000 	sw	v1,0(v0)
      temp = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    2db0:	8fc20010 	lw	v0,16(s8)
    2db4:	00000000 	sll	zero,zero,0x0
    2db8:	24420008 	addiu	v0,v0,8
    2dbc:	8c420000 	lw	v0,0(v0)
    2dc0:	00000000 	sll	zero,zero,0x0
    2dc4:	00022103 	sra	a0,v0,0x4
    2dc8:	8fc20010 	lw	v0,16(s8)
    2dcc:	00000000 	sll	zero,zero,0x0
    2dd0:	24420008 	addiu	v0,v0,8
    2dd4:	8c420000 	lw	v0,0(v0)
    2dd8:	00000000 	sll	zero,zero,0x0
    2ddc:	3043000f 	andi	v1,v0,0xf
    2de0:	3c020000 	lui	v0,0x0
    2de4:	00042100 	sll	a0,a0,0x4
    2de8:	00831821 	addu	v1,a0,v1
    2dec:	00031880 	sll	v1,v1,0x2
    2df0:	24420000 	addiu	v0,v0,0
    2df4:	00621021 	addu	v0,v1,v0
    2df8:	8c420000 	lw	v0,0(v0)
    2dfc:	00000000 	sll	zero,zero,0x0
    2e00:	afc20000 	sw	v0,0(s8)
      statemt[2] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    2e04:	8fc20010 	lw	v0,16(s8)
    2e08:	00000000 	sll	zero,zero,0x0
    2e0c:	24420008 	addiu	v0,v0,8
    2e10:	8fc30010 	lw	v1,16(s8)
    2e14:	00000000 	sll	zero,zero,0x0
    2e18:	24630028 	addiu	v1,v1,40
    2e1c:	8c630000 	lw	v1,0(v1)
    2e20:	00000000 	sll	zero,zero,0x0
    2e24:	00032903 	sra	a1,v1,0x4
    2e28:	8fc30010 	lw	v1,16(s8)
    2e2c:	00000000 	sll	zero,zero,0x0
    2e30:	24630028 	addiu	v1,v1,40
    2e34:	8c630000 	lw	v1,0(v1)
    2e38:	00000000 	sll	zero,zero,0x0
    2e3c:	3064000f 	andi	a0,v1,0xf
    2e40:	3c030000 	lui	v1,0x0
    2e44:	00052900 	sll	a1,a1,0x4
    2e48:	00a42021 	addu	a0,a1,a0
    2e4c:	00042080 	sll	a0,a0,0x2
    2e50:	24630000 	addiu	v1,v1,0
    2e54:	00831821 	addu	v1,a0,v1
    2e58:	8c630000 	lw	v1,0(v1)
    2e5c:	00000000 	sll	zero,zero,0x0
    2e60:	ac430000 	sw	v1,0(v0)
      statemt[10] = temp;
    2e64:	8fc20010 	lw	v0,16(s8)
    2e68:	00000000 	sll	zero,zero,0x0
    2e6c:	24420028 	addiu	v0,v0,40
    2e70:	8fc30000 	lw	v1,0(s8)
    2e74:	00000000 	sll	zero,zero,0x0
    2e78:	ac430000 	sw	v1,0(v0)

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    2e7c:	8fc20010 	lw	v0,16(s8)
    2e80:	00000000 	sll	zero,zero,0x0
    2e84:	2442003c 	addiu	v0,v0,60
    2e88:	8c420000 	lw	v0,0(v0)
    2e8c:	00000000 	sll	zero,zero,0x0
    2e90:	00022103 	sra	a0,v0,0x4
    2e94:	8fc20010 	lw	v0,16(s8)
    2e98:	00000000 	sll	zero,zero,0x0
    2e9c:	2442003c 	addiu	v0,v0,60
    2ea0:	8c420000 	lw	v0,0(v0)
    2ea4:	00000000 	sll	zero,zero,0x0
    2ea8:	3043000f 	andi	v1,v0,0xf
    2eac:	3c020000 	lui	v0,0x0
    2eb0:	00042100 	sll	a0,a0,0x4
    2eb4:	00831821 	addu	v1,a0,v1
    2eb8:	00031880 	sll	v1,v1,0x2
    2ebc:	24420000 	addiu	v0,v0,0
    2ec0:	00621021 	addu	v0,v1,v0
    2ec4:	8c420000 	lw	v0,0(v0)
    2ec8:	00000000 	sll	zero,zero,0x0
    2ecc:	afc20000 	sw	v0,0(s8)
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    2ed0:	8fc20010 	lw	v0,16(s8)
    2ed4:	00000000 	sll	zero,zero,0x0
    2ed8:	2442003c 	addiu	v0,v0,60
    2edc:	8fc30010 	lw	v1,16(s8)
    2ee0:	00000000 	sll	zero,zero,0x0
    2ee4:	2463000c 	addiu	v1,v1,12
    2ee8:	8c630000 	lw	v1,0(v1)
    2eec:	00000000 	sll	zero,zero,0x0
    2ef0:	00032903 	sra	a1,v1,0x4
    2ef4:	8fc30010 	lw	v1,16(s8)
    2ef8:	00000000 	sll	zero,zero,0x0
    2efc:	2463000c 	addiu	v1,v1,12
    2f00:	8c630000 	lw	v1,0(v1)
    2f04:	00000000 	sll	zero,zero,0x0
    2f08:	3064000f 	andi	a0,v1,0xf
    2f0c:	3c030000 	lui	v1,0x0
    2f10:	00052900 	sll	a1,a1,0x4
    2f14:	00a42021 	addu	a0,a1,a0
    2f18:	00042080 	sll	a0,a0,0x2
    2f1c:	24630000 	addiu	v1,v1,0
    2f20:	00831821 	addu	v1,a0,v1
    2f24:	8c630000 	lw	v1,0(v1)
    2f28:	00000000 	sll	zero,zero,0x0
    2f2c:	ac430000 	sw	v1,0(v0)
      statemt[3] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    2f30:	8fc20010 	lw	v0,16(s8)
    2f34:	00000000 	sll	zero,zero,0x0
    2f38:	2442000c 	addiu	v0,v0,12
    2f3c:	8fc30010 	lw	v1,16(s8)
    2f40:	00000000 	sll	zero,zero,0x0
    2f44:	2463001c 	addiu	v1,v1,28
    2f48:	8c630000 	lw	v1,0(v1)
    2f4c:	00000000 	sll	zero,zero,0x0
    2f50:	00032903 	sra	a1,v1,0x4
    2f54:	8fc30010 	lw	v1,16(s8)
    2f58:	00000000 	sll	zero,zero,0x0
    2f5c:	2463001c 	addiu	v1,v1,28
    2f60:	8c630000 	lw	v1,0(v1)
    2f64:	00000000 	sll	zero,zero,0x0
    2f68:	3064000f 	andi	a0,v1,0xf
    2f6c:	3c030000 	lui	v1,0x0
    2f70:	00052900 	sll	a1,a1,0x4
    2f74:	00a42021 	addu	a0,a1,a0
    2f78:	00042080 	sll	a0,a0,0x2
    2f7c:	24630000 	addiu	v1,v1,0
    2f80:	00831821 	addu	v1,a0,v1
    2f84:	8c630000 	lw	v1,0(v1)
    2f88:	00000000 	sll	zero,zero,0x0
    2f8c:	ac430000 	sw	v1,0(v0)
      statemt[7] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    2f90:	8fc20010 	lw	v0,16(s8)
    2f94:	00000000 	sll	zero,zero,0x0
    2f98:	2442001c 	addiu	v0,v0,28
    2f9c:	8fc30010 	lw	v1,16(s8)
    2fa0:	00000000 	sll	zero,zero,0x0
    2fa4:	2463002c 	addiu	v1,v1,44
    2fa8:	8c630000 	lw	v1,0(v1)
    2fac:	00000000 	sll	zero,zero,0x0
    2fb0:	00032903 	sra	a1,v1,0x4
    2fb4:	8fc30010 	lw	v1,16(s8)
    2fb8:	00000000 	sll	zero,zero,0x0
    2fbc:	2463002c 	addiu	v1,v1,44
    2fc0:	8c630000 	lw	v1,0(v1)
    2fc4:	00000000 	sll	zero,zero,0x0
    2fc8:	3064000f 	andi	a0,v1,0xf
    2fcc:	3c030000 	lui	v1,0x0
    2fd0:	00052900 	sll	a1,a1,0x4
    2fd4:	00a42021 	addu	a0,a1,a0
    2fd8:	00042080 	sll	a0,a0,0x2
    2fdc:	24630000 	addiu	v1,v1,0
    2fe0:	00831821 	addu	v1,a0,v1
    2fe4:	8c630000 	lw	v1,0(v1)
    2fe8:	00000000 	sll	zero,zero,0x0
    2fec:	ac430000 	sw	v1,0(v0)
      statemt[11] = temp;
    2ff0:	8fc20010 	lw	v0,16(s8)
    2ff4:	00000000 	sll	zero,zero,0x0
    2ff8:	2442002c 	addiu	v0,v0,44
    2ffc:	8fc30000 	lw	v1,0(s8)
    3000:	00000000 	sll	zero,zero,0x0
    3004:	ac430000 	sw	v1,0(v0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    3008:	8fc20010 	lw	v0,16(s8)
    300c:	00000000 	sll	zero,zero,0x0
    3010:	8c420000 	lw	v0,0(v0)
    3014:	00000000 	sll	zero,zero,0x0
    3018:	00022103 	sra	a0,v0,0x4
    301c:	8fc20010 	lw	v0,16(s8)
    3020:	00000000 	sll	zero,zero,0x0
    3024:	8c420000 	lw	v0,0(v0)
    3028:	00000000 	sll	zero,zero,0x0
    302c:	3043000f 	andi	v1,v0,0xf
    3030:	3c020000 	lui	v0,0x0
    3034:	00042100 	sll	a0,a0,0x4
    3038:	00831821 	addu	v1,a0,v1
    303c:	00031880 	sll	v1,v1,0x2
    3040:	24420000 	addiu	v0,v0,0
    3044:	00621021 	addu	v0,v1,v0
    3048:	8c430000 	lw	v1,0(v0)
    304c:	8fc20010 	lw	v0,16(s8)
    3050:	00000000 	sll	zero,zero,0x0
    3054:	ac430000 	sw	v1,0(v0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    3058:	8fc20010 	lw	v0,16(s8)
    305c:	00000000 	sll	zero,zero,0x0
    3060:	24420010 	addiu	v0,v0,16
    3064:	8fc30010 	lw	v1,16(s8)
    3068:	00000000 	sll	zero,zero,0x0
    306c:	24630010 	addiu	v1,v1,16
    3070:	8c630000 	lw	v1,0(v1)
    3074:	00000000 	sll	zero,zero,0x0
    3078:	00032903 	sra	a1,v1,0x4
    307c:	8fc30010 	lw	v1,16(s8)
    3080:	00000000 	sll	zero,zero,0x0
    3084:	24630010 	addiu	v1,v1,16
    3088:	8c630000 	lw	v1,0(v1)
    308c:	00000000 	sll	zero,zero,0x0
    3090:	3064000f 	andi	a0,v1,0xf
    3094:	3c030000 	lui	v1,0x0
    3098:	00052900 	sll	a1,a1,0x4
    309c:	00a42021 	addu	a0,a1,a0
    30a0:	00042080 	sll	a0,a0,0x2
    30a4:	24630000 	addiu	v1,v1,0
    30a8:	00831821 	addu	v1,a0,v1
    30ac:	8c630000 	lw	v1,0(v1)
    30b0:	00000000 	sll	zero,zero,0x0
    30b4:	ac430000 	sw	v1,0(v0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    30b8:	8fc20010 	lw	v0,16(s8)
    30bc:	00000000 	sll	zero,zero,0x0
    30c0:	24420020 	addiu	v0,v0,32
    30c4:	8fc30010 	lw	v1,16(s8)
    30c8:	00000000 	sll	zero,zero,0x0
    30cc:	24630020 	addiu	v1,v1,32
    30d0:	8c630000 	lw	v1,0(v1)
    30d4:	00000000 	sll	zero,zero,0x0
    30d8:	00032903 	sra	a1,v1,0x4
    30dc:	8fc30010 	lw	v1,16(s8)
    30e0:	00000000 	sll	zero,zero,0x0
    30e4:	24630020 	addiu	v1,v1,32
    30e8:	8c630000 	lw	v1,0(v1)
    30ec:	00000000 	sll	zero,zero,0x0
    30f0:	3064000f 	andi	a0,v1,0xf
    30f4:	3c030000 	lui	v1,0x0
    30f8:	00052900 	sll	a1,a1,0x4
    30fc:	00a42021 	addu	a0,a1,a0
    3100:	00042080 	sll	a0,a0,0x2
    3104:	24630000 	addiu	v1,v1,0
    3108:	00831821 	addu	v1,a0,v1
    310c:	8c630000 	lw	v1,0(v1)
    3110:	00000000 	sll	zero,zero,0x0
    3114:	ac430000 	sw	v1,0(v0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    3118:	8fc20010 	lw	v0,16(s8)
    311c:	00000000 	sll	zero,zero,0x0
    3120:	24420030 	addiu	v0,v0,48
    3124:	8fc30010 	lw	v1,16(s8)
    3128:	00000000 	sll	zero,zero,0x0
    312c:	24630030 	addiu	v1,v1,48
    3130:	8c630000 	lw	v1,0(v1)
    3134:	00000000 	sll	zero,zero,0x0
    3138:	00032903 	sra	a1,v1,0x4
    313c:	8fc30010 	lw	v1,16(s8)
    3140:	00000000 	sll	zero,zero,0x0
    3144:	24630030 	addiu	v1,v1,48
    3148:	8c630000 	lw	v1,0(v1)
    314c:	00000000 	sll	zero,zero,0x0
    3150:	3064000f 	andi	a0,v1,0xf
    3154:	3c030000 	lui	v1,0x0
    3158:	00052900 	sll	a1,a1,0x4
    315c:	00a42021 	addu	a0,a1,a0
    3160:	00042080 	sll	a0,a0,0x2
    3164:	24630000 	addiu	v1,v1,0
    3168:	00831821 	addu	v1,a0,v1
    316c:	8c630000 	lw	v1,0(v1)
    3170:	00000000 	sll	zero,zero,0x0
    3174:	ac430000 	sw	v1,0(v0)
      break;
    3178:	080011bf 	j	46fc <InversShiftRow_ByteSub+0x1be0>
    317c:	00000000 	sll	zero,zero,0x0
    case 6:
      temp = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    3180:	8fc20010 	lw	v0,16(s8)
    3184:	00000000 	sll	zero,zero,0x0
    3188:	24420054 	addiu	v0,v0,84
    318c:	8c420000 	lw	v0,0(v0)
    3190:	00000000 	sll	zero,zero,0x0
    3194:	00022103 	sra	a0,v0,0x4
    3198:	8fc20010 	lw	v0,16(s8)
    319c:	00000000 	sll	zero,zero,0x0
    31a0:	24420054 	addiu	v0,v0,84
    31a4:	8c420000 	lw	v0,0(v0)
    31a8:	00000000 	sll	zero,zero,0x0
    31ac:	3043000f 	andi	v1,v0,0xf
    31b0:	3c020000 	lui	v0,0x0
    31b4:	00042100 	sll	a0,a0,0x4
    31b8:	00831821 	addu	v1,a0,v1
    31bc:	00031880 	sll	v1,v1,0x2
    31c0:	24420000 	addiu	v0,v0,0
    31c4:	00621021 	addu	v0,v1,v0
    31c8:	8c420000 	lw	v0,0(v0)
    31cc:	00000000 	sll	zero,zero,0x0
    31d0:	afc20000 	sw	v0,0(s8)
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    31d4:	8fc20010 	lw	v0,16(s8)
    31d8:	00000000 	sll	zero,zero,0x0
    31dc:	24420054 	addiu	v0,v0,84
    31e0:	8fc30010 	lw	v1,16(s8)
    31e4:	00000000 	sll	zero,zero,0x0
    31e8:	24630044 	addiu	v1,v1,68
    31ec:	8c630000 	lw	v1,0(v1)
    31f0:	00000000 	sll	zero,zero,0x0
    31f4:	00032903 	sra	a1,v1,0x4
    31f8:	8fc30010 	lw	v1,16(s8)
    31fc:	00000000 	sll	zero,zero,0x0
    3200:	24630044 	addiu	v1,v1,68
    3204:	8c630000 	lw	v1,0(v1)
    3208:	00000000 	sll	zero,zero,0x0
    320c:	3064000f 	andi	a0,v1,0xf
    3210:	3c030000 	lui	v1,0x0
    3214:	00052900 	sll	a1,a1,0x4
    3218:	00a42021 	addu	a0,a1,a0
    321c:	00042080 	sll	a0,a0,0x2
    3220:	24630000 	addiu	v1,v1,0
    3224:	00831821 	addu	v1,a0,v1
    3228:	8c630000 	lw	v1,0(v1)
    322c:	00000000 	sll	zero,zero,0x0
    3230:	ac430000 	sw	v1,0(v0)
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    3234:	8fc20010 	lw	v0,16(s8)
    3238:	00000000 	sll	zero,zero,0x0
    323c:	24420044 	addiu	v0,v0,68
    3240:	8fc30010 	lw	v1,16(s8)
    3244:	00000000 	sll	zero,zero,0x0
    3248:	24630034 	addiu	v1,v1,52
    324c:	8c630000 	lw	v1,0(v1)
    3250:	00000000 	sll	zero,zero,0x0
    3254:	00032903 	sra	a1,v1,0x4
    3258:	8fc30010 	lw	v1,16(s8)
    325c:	00000000 	sll	zero,zero,0x0
    3260:	24630034 	addiu	v1,v1,52
    3264:	8c630000 	lw	v1,0(v1)
    3268:	00000000 	sll	zero,zero,0x0
    326c:	3064000f 	andi	a0,v1,0xf
    3270:	3c030000 	lui	v1,0x0
    3274:	00052900 	sll	a1,a1,0x4
    3278:	00a42021 	addu	a0,a1,a0
    327c:	00042080 	sll	a0,a0,0x2
    3280:	24630000 	addiu	v1,v1,0
    3284:	00831821 	addu	v1,a0,v1
    3288:	8c630000 	lw	v1,0(v1)
    328c:	00000000 	sll	zero,zero,0x0
    3290:	ac430000 	sw	v1,0(v0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    3294:	8fc20010 	lw	v0,16(s8)
    3298:	00000000 	sll	zero,zero,0x0
    329c:	24420034 	addiu	v0,v0,52
    32a0:	8fc30010 	lw	v1,16(s8)
    32a4:	00000000 	sll	zero,zero,0x0
    32a8:	24630024 	addiu	v1,v1,36
    32ac:	8c630000 	lw	v1,0(v1)
    32b0:	00000000 	sll	zero,zero,0x0
    32b4:	00032903 	sra	a1,v1,0x4
    32b8:	8fc30010 	lw	v1,16(s8)
    32bc:	00000000 	sll	zero,zero,0x0
    32c0:	24630024 	addiu	v1,v1,36
    32c4:	8c630000 	lw	v1,0(v1)
    32c8:	00000000 	sll	zero,zero,0x0
    32cc:	3064000f 	andi	a0,v1,0xf
    32d0:	3c030000 	lui	v1,0x0
    32d4:	00052900 	sll	a1,a1,0x4
    32d8:	00a42021 	addu	a0,a1,a0
    32dc:	00042080 	sll	a0,a0,0x2
    32e0:	24630000 	addiu	v1,v1,0
    32e4:	00831821 	addu	v1,a0,v1
    32e8:	8c630000 	lw	v1,0(v1)
    32ec:	00000000 	sll	zero,zero,0x0
    32f0:	ac430000 	sw	v1,0(v0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    32f4:	8fc20010 	lw	v0,16(s8)
    32f8:	00000000 	sll	zero,zero,0x0
    32fc:	24420024 	addiu	v0,v0,36
    3300:	8fc30010 	lw	v1,16(s8)
    3304:	00000000 	sll	zero,zero,0x0
    3308:	24630014 	addiu	v1,v1,20
    330c:	8c630000 	lw	v1,0(v1)
    3310:	00000000 	sll	zero,zero,0x0
    3314:	00032903 	sra	a1,v1,0x4
    3318:	8fc30010 	lw	v1,16(s8)
    331c:	00000000 	sll	zero,zero,0x0
    3320:	24630014 	addiu	v1,v1,20
    3324:	8c630000 	lw	v1,0(v1)
    3328:	00000000 	sll	zero,zero,0x0
    332c:	3064000f 	andi	a0,v1,0xf
    3330:	3c030000 	lui	v1,0x0
    3334:	00052900 	sll	a1,a1,0x4
    3338:	00a42021 	addu	a0,a1,a0
    333c:	00042080 	sll	a0,a0,0x2
    3340:	24630000 	addiu	v1,v1,0
    3344:	00831821 	addu	v1,a0,v1
    3348:	8c630000 	lw	v1,0(v1)
    334c:	00000000 	sll	zero,zero,0x0
    3350:	ac430000 	sw	v1,0(v0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    3354:	8fc20010 	lw	v0,16(s8)
    3358:	00000000 	sll	zero,zero,0x0
    335c:	24420014 	addiu	v0,v0,20
    3360:	8fc30010 	lw	v1,16(s8)
    3364:	00000000 	sll	zero,zero,0x0
    3368:	24630004 	addiu	v1,v1,4
    336c:	8c630000 	lw	v1,0(v1)
    3370:	00000000 	sll	zero,zero,0x0
    3374:	00032903 	sra	a1,v1,0x4
    3378:	8fc30010 	lw	v1,16(s8)
    337c:	00000000 	sll	zero,zero,0x0
    3380:	24630004 	addiu	v1,v1,4
    3384:	8c630000 	lw	v1,0(v1)
    3388:	00000000 	sll	zero,zero,0x0
    338c:	3064000f 	andi	a0,v1,0xf
    3390:	3c030000 	lui	v1,0x0
    3394:	00052900 	sll	a1,a1,0x4
    3398:	00a42021 	addu	a0,a1,a0
    339c:	00042080 	sll	a0,a0,0x2
    33a0:	24630000 	addiu	v1,v1,0
    33a4:	00831821 	addu	v1,a0,v1
    33a8:	8c630000 	lw	v1,0(v1)
    33ac:	00000000 	sll	zero,zero,0x0
    33b0:	ac430000 	sw	v1,0(v0)
      statemt[1] = temp;
    33b4:	8fc20010 	lw	v0,16(s8)
    33b8:	00000000 	sll	zero,zero,0x0
    33bc:	24420004 	addiu	v0,v0,4
    33c0:	8fc30000 	lw	v1,0(s8)
    33c4:	00000000 	sll	zero,zero,0x0
    33c8:	ac430000 	sw	v1,0(v0)

      temp = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    33cc:	8fc20010 	lw	v0,16(s8)
    33d0:	00000000 	sll	zero,zero,0x0
    33d4:	24420058 	addiu	v0,v0,88
    33d8:	8c420000 	lw	v0,0(v0)
    33dc:	00000000 	sll	zero,zero,0x0
    33e0:	00022103 	sra	a0,v0,0x4
    33e4:	8fc20010 	lw	v0,16(s8)
    33e8:	00000000 	sll	zero,zero,0x0
    33ec:	24420058 	addiu	v0,v0,88
    33f0:	8c420000 	lw	v0,0(v0)
    33f4:	00000000 	sll	zero,zero,0x0
    33f8:	3043000f 	andi	v1,v0,0xf
    33fc:	3c020000 	lui	v0,0x0
    3400:	00042100 	sll	a0,a0,0x4
    3404:	00831821 	addu	v1,a0,v1
    3408:	00031880 	sll	v1,v1,0x2
    340c:	24420000 	addiu	v0,v0,0
    3410:	00621021 	addu	v0,v1,v0
    3414:	8c420000 	lw	v0,0(v0)
    3418:	00000000 	sll	zero,zero,0x0
    341c:	afc20000 	sw	v0,0(s8)
      statemt[22] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    3420:	8fc20010 	lw	v0,16(s8)
    3424:	00000000 	sll	zero,zero,0x0
    3428:	24420058 	addiu	v0,v0,88
    342c:	8fc30010 	lw	v1,16(s8)
    3430:	00000000 	sll	zero,zero,0x0
    3434:	24630038 	addiu	v1,v1,56
    3438:	8c630000 	lw	v1,0(v1)
    343c:	00000000 	sll	zero,zero,0x0
    3440:	00032903 	sra	a1,v1,0x4
    3444:	8fc30010 	lw	v1,16(s8)
    3448:	00000000 	sll	zero,zero,0x0
    344c:	24630038 	addiu	v1,v1,56
    3450:	8c630000 	lw	v1,0(v1)
    3454:	00000000 	sll	zero,zero,0x0
    3458:	3064000f 	andi	a0,v1,0xf
    345c:	3c030000 	lui	v1,0x0
    3460:	00052900 	sll	a1,a1,0x4
    3464:	00a42021 	addu	a0,a1,a0
    3468:	00042080 	sll	a0,a0,0x2
    346c:	24630000 	addiu	v1,v1,0
    3470:	00831821 	addu	v1,a0,v1
    3474:	8c630000 	lw	v1,0(v1)
    3478:	00000000 	sll	zero,zero,0x0
    347c:	ac430000 	sw	v1,0(v0)
      statemt[14] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    3480:	8fc20010 	lw	v0,16(s8)
    3484:	00000000 	sll	zero,zero,0x0
    3488:	24420038 	addiu	v0,v0,56
    348c:	8fc30010 	lw	v1,16(s8)
    3490:	00000000 	sll	zero,zero,0x0
    3494:	24630018 	addiu	v1,v1,24
    3498:	8c630000 	lw	v1,0(v1)
    349c:	00000000 	sll	zero,zero,0x0
    34a0:	00032903 	sra	a1,v1,0x4
    34a4:	8fc30010 	lw	v1,16(s8)
    34a8:	00000000 	sll	zero,zero,0x0
    34ac:	24630018 	addiu	v1,v1,24
    34b0:	8c630000 	lw	v1,0(v1)
    34b4:	00000000 	sll	zero,zero,0x0
    34b8:	3064000f 	andi	a0,v1,0xf
    34bc:	3c030000 	lui	v1,0x0
    34c0:	00052900 	sll	a1,a1,0x4
    34c4:	00a42021 	addu	a0,a1,a0
    34c8:	00042080 	sll	a0,a0,0x2
    34cc:	24630000 	addiu	v1,v1,0
    34d0:	00831821 	addu	v1,a0,v1
    34d4:	8c630000 	lw	v1,0(v1)
    34d8:	00000000 	sll	zero,zero,0x0
    34dc:	ac430000 	sw	v1,0(v0)
      statemt[6] = temp;
    34e0:	8fc20010 	lw	v0,16(s8)
    34e4:	00000000 	sll	zero,zero,0x0
    34e8:	24420018 	addiu	v0,v0,24
    34ec:	8fc30000 	lw	v1,0(s8)
    34f0:	00000000 	sll	zero,zero,0x0
    34f4:	ac430000 	sw	v1,0(v0)
      temp = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    34f8:	8fc20010 	lw	v0,16(s8)
    34fc:	00000000 	sll	zero,zero,0x0
    3500:	24420048 	addiu	v0,v0,72
    3504:	8c420000 	lw	v0,0(v0)
    3508:	00000000 	sll	zero,zero,0x0
    350c:	00022103 	sra	a0,v0,0x4
    3510:	8fc20010 	lw	v0,16(s8)
    3514:	00000000 	sll	zero,zero,0x0
    3518:	24420048 	addiu	v0,v0,72
    351c:	8c420000 	lw	v0,0(v0)
    3520:	00000000 	sll	zero,zero,0x0
    3524:	3043000f 	andi	v1,v0,0xf
    3528:	3c020000 	lui	v0,0x0
    352c:	00042100 	sll	a0,a0,0x4
    3530:	00831821 	addu	v1,a0,v1
    3534:	00031880 	sll	v1,v1,0x2
    3538:	24420000 	addiu	v0,v0,0
    353c:	00621021 	addu	v0,v1,v0
    3540:	8c420000 	lw	v0,0(v0)
    3544:	00000000 	sll	zero,zero,0x0
    3548:	afc20000 	sw	v0,0(s8)
      statemt[18] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    354c:	8fc20010 	lw	v0,16(s8)
    3550:	00000000 	sll	zero,zero,0x0
    3554:	24420048 	addiu	v0,v0,72
    3558:	8fc30010 	lw	v1,16(s8)
    355c:	00000000 	sll	zero,zero,0x0
    3560:	24630028 	addiu	v1,v1,40
    3564:	8c630000 	lw	v1,0(v1)
    3568:	00000000 	sll	zero,zero,0x0
    356c:	00032903 	sra	a1,v1,0x4
    3570:	8fc30010 	lw	v1,16(s8)
    3574:	00000000 	sll	zero,zero,0x0
    3578:	24630028 	addiu	v1,v1,40
    357c:	8c630000 	lw	v1,0(v1)
    3580:	00000000 	sll	zero,zero,0x0
    3584:	3064000f 	andi	a0,v1,0xf
    3588:	3c030000 	lui	v1,0x0
    358c:	00052900 	sll	a1,a1,0x4
    3590:	00a42021 	addu	a0,a1,a0
    3594:	00042080 	sll	a0,a0,0x2
    3598:	24630000 	addiu	v1,v1,0
    359c:	00831821 	addu	v1,a0,v1
    35a0:	8c630000 	lw	v1,0(v1)
    35a4:	00000000 	sll	zero,zero,0x0
    35a8:	ac430000 	sw	v1,0(v0)
      statemt[10] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    35ac:	8fc20010 	lw	v0,16(s8)
    35b0:	00000000 	sll	zero,zero,0x0
    35b4:	24420028 	addiu	v0,v0,40
    35b8:	8fc30010 	lw	v1,16(s8)
    35bc:	00000000 	sll	zero,zero,0x0
    35c0:	24630008 	addiu	v1,v1,8
    35c4:	8c630000 	lw	v1,0(v1)
    35c8:	00000000 	sll	zero,zero,0x0
    35cc:	00032903 	sra	a1,v1,0x4
    35d0:	8fc30010 	lw	v1,16(s8)
    35d4:	00000000 	sll	zero,zero,0x0
    35d8:	24630008 	addiu	v1,v1,8
    35dc:	8c630000 	lw	v1,0(v1)
    35e0:	00000000 	sll	zero,zero,0x0
    35e4:	3064000f 	andi	a0,v1,0xf
    35e8:	3c030000 	lui	v1,0x0
    35ec:	00052900 	sll	a1,a1,0x4
    35f0:	00a42021 	addu	a0,a1,a0
    35f4:	00042080 	sll	a0,a0,0x2
    35f8:	24630000 	addiu	v1,v1,0
    35fc:	00831821 	addu	v1,a0,v1
    3600:	8c630000 	lw	v1,0(v1)
    3604:	00000000 	sll	zero,zero,0x0
    3608:	ac430000 	sw	v1,0(v0)
      statemt[2] = temp;
    360c:	8fc20010 	lw	v0,16(s8)
    3610:	00000000 	sll	zero,zero,0x0
    3614:	24420008 	addiu	v0,v0,8
    3618:	8fc30000 	lw	v1,0(s8)
    361c:	00000000 	sll	zero,zero,0x0
    3620:	ac430000 	sw	v1,0(v0)

      temp = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    3624:	8fc20010 	lw	v0,16(s8)
    3628:	00000000 	sll	zero,zero,0x0
    362c:	2442003c 	addiu	v0,v0,60
    3630:	8c420000 	lw	v0,0(v0)
    3634:	00000000 	sll	zero,zero,0x0
    3638:	00022103 	sra	a0,v0,0x4
    363c:	8fc20010 	lw	v0,16(s8)
    3640:	00000000 	sll	zero,zero,0x0
    3644:	2442003c 	addiu	v0,v0,60
    3648:	8c420000 	lw	v0,0(v0)
    364c:	00000000 	sll	zero,zero,0x0
    3650:	3043000f 	andi	v1,v0,0xf
    3654:	3c020000 	lui	v0,0x0
    3658:	00042100 	sll	a0,a0,0x4
    365c:	00831821 	addu	v1,a0,v1
    3660:	00031880 	sll	v1,v1,0x2
    3664:	24420000 	addiu	v0,v0,0
    3668:	00621021 	addu	v0,v1,v0
    366c:	8c420000 	lw	v0,0(v0)
    3670:	00000000 	sll	zero,zero,0x0
    3674:	afc20000 	sw	v0,0(s8)
      statemt[15] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    3678:	8fc20010 	lw	v0,16(s8)
    367c:	00000000 	sll	zero,zero,0x0
    3680:	2442003c 	addiu	v0,v0,60
    3684:	8fc30010 	lw	v1,16(s8)
    3688:	00000000 	sll	zero,zero,0x0
    368c:	2463000c 	addiu	v1,v1,12
    3690:	8c630000 	lw	v1,0(v1)
    3694:	00000000 	sll	zero,zero,0x0
    3698:	00032903 	sra	a1,v1,0x4
    369c:	8fc30010 	lw	v1,16(s8)
    36a0:	00000000 	sll	zero,zero,0x0
    36a4:	2463000c 	addiu	v1,v1,12
    36a8:	8c630000 	lw	v1,0(v1)
    36ac:	00000000 	sll	zero,zero,0x0
    36b0:	3064000f 	andi	a0,v1,0xf
    36b4:	3c030000 	lui	v1,0x0
    36b8:	00052900 	sll	a1,a1,0x4
    36bc:	00a42021 	addu	a0,a1,a0
    36c0:	00042080 	sll	a0,a0,0x2
    36c4:	24630000 	addiu	v1,v1,0
    36c8:	00831821 	addu	v1,a0,v1
    36cc:	8c630000 	lw	v1,0(v1)
    36d0:	00000000 	sll	zero,zero,0x0
    36d4:	ac430000 	sw	v1,0(v0)
      statemt[3] = temp;
    36d8:	8fc20010 	lw	v0,16(s8)
    36dc:	00000000 	sll	zero,zero,0x0
    36e0:	2442000c 	addiu	v0,v0,12
    36e4:	8fc30000 	lw	v1,0(s8)
    36e8:	00000000 	sll	zero,zero,0x0
    36ec:	ac430000 	sw	v1,0(v0)
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    36f0:	8fc20010 	lw	v0,16(s8)
    36f4:	00000000 	sll	zero,zero,0x0
    36f8:	2442004c 	addiu	v0,v0,76
    36fc:	8c420000 	lw	v0,0(v0)
    3700:	00000000 	sll	zero,zero,0x0
    3704:	00022103 	sra	a0,v0,0x4
    3708:	8fc20010 	lw	v0,16(s8)
    370c:	00000000 	sll	zero,zero,0x0
    3710:	2442004c 	addiu	v0,v0,76
    3714:	8c420000 	lw	v0,0(v0)
    3718:	00000000 	sll	zero,zero,0x0
    371c:	3043000f 	andi	v1,v0,0xf
    3720:	3c020000 	lui	v0,0x0
    3724:	00042100 	sll	a0,a0,0x4
    3728:	00831821 	addu	v1,a0,v1
    372c:	00031880 	sll	v1,v1,0x2
    3730:	24420000 	addiu	v0,v0,0
    3734:	00621021 	addu	v0,v1,v0
    3738:	8c420000 	lw	v0,0(v0)
    373c:	00000000 	sll	zero,zero,0x0
    3740:	afc20000 	sw	v0,0(s8)
      statemt[19] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    3744:	8fc20010 	lw	v0,16(s8)
    3748:	00000000 	sll	zero,zero,0x0
    374c:	2442004c 	addiu	v0,v0,76
    3750:	8fc30010 	lw	v1,16(s8)
    3754:	00000000 	sll	zero,zero,0x0
    3758:	2463001c 	addiu	v1,v1,28
    375c:	8c630000 	lw	v1,0(v1)
    3760:	00000000 	sll	zero,zero,0x0
    3764:	00032903 	sra	a1,v1,0x4
    3768:	8fc30010 	lw	v1,16(s8)
    376c:	00000000 	sll	zero,zero,0x0
    3770:	2463001c 	addiu	v1,v1,28
    3774:	8c630000 	lw	v1,0(v1)
    3778:	00000000 	sll	zero,zero,0x0
    377c:	3064000f 	andi	a0,v1,0xf
    3780:	3c030000 	lui	v1,0x0
    3784:	00052900 	sll	a1,a1,0x4
    3788:	00a42021 	addu	a0,a1,a0
    378c:	00042080 	sll	a0,a0,0x2
    3790:	24630000 	addiu	v1,v1,0
    3794:	00831821 	addu	v1,a0,v1
    3798:	8c630000 	lw	v1,0(v1)
    379c:	00000000 	sll	zero,zero,0x0
    37a0:	ac430000 	sw	v1,0(v0)
      statemt[7] = temp;
    37a4:	8fc20010 	lw	v0,16(s8)
    37a8:	00000000 	sll	zero,zero,0x0
    37ac:	2442001c 	addiu	v0,v0,28
    37b0:	8fc30000 	lw	v1,0(s8)
    37b4:	00000000 	sll	zero,zero,0x0
    37b8:	ac430000 	sw	v1,0(v0)
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    37bc:	8fc20010 	lw	v0,16(s8)
    37c0:	00000000 	sll	zero,zero,0x0
    37c4:	2442005c 	addiu	v0,v0,92
    37c8:	8c420000 	lw	v0,0(v0)
    37cc:	00000000 	sll	zero,zero,0x0
    37d0:	00022103 	sra	a0,v0,0x4
    37d4:	8fc20010 	lw	v0,16(s8)
    37d8:	00000000 	sll	zero,zero,0x0
    37dc:	2442005c 	addiu	v0,v0,92
    37e0:	8c420000 	lw	v0,0(v0)
    37e4:	00000000 	sll	zero,zero,0x0
    37e8:	3043000f 	andi	v1,v0,0xf
    37ec:	3c020000 	lui	v0,0x0
    37f0:	00042100 	sll	a0,a0,0x4
    37f4:	00831821 	addu	v1,a0,v1
    37f8:	00031880 	sll	v1,v1,0x2
    37fc:	24420000 	addiu	v0,v0,0
    3800:	00621021 	addu	v0,v1,v0
    3804:	8c420000 	lw	v0,0(v0)
    3808:	00000000 	sll	zero,zero,0x0
    380c:	afc20000 	sw	v0,0(s8)
      statemt[23] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    3810:	8fc20010 	lw	v0,16(s8)
    3814:	00000000 	sll	zero,zero,0x0
    3818:	2442005c 	addiu	v0,v0,92
    381c:	8fc30010 	lw	v1,16(s8)
    3820:	00000000 	sll	zero,zero,0x0
    3824:	2463002c 	addiu	v1,v1,44
    3828:	8c630000 	lw	v1,0(v1)
    382c:	00000000 	sll	zero,zero,0x0
    3830:	00032903 	sra	a1,v1,0x4
    3834:	8fc30010 	lw	v1,16(s8)
    3838:	00000000 	sll	zero,zero,0x0
    383c:	2463002c 	addiu	v1,v1,44
    3840:	8c630000 	lw	v1,0(v1)
    3844:	00000000 	sll	zero,zero,0x0
    3848:	3064000f 	andi	a0,v1,0xf
    384c:	3c030000 	lui	v1,0x0
    3850:	00052900 	sll	a1,a1,0x4
    3854:	00a42021 	addu	a0,a1,a0
    3858:	00042080 	sll	a0,a0,0x2
    385c:	24630000 	addiu	v1,v1,0
    3860:	00831821 	addu	v1,a0,v1
    3864:	8c630000 	lw	v1,0(v1)
    3868:	00000000 	sll	zero,zero,0x0
    386c:	ac430000 	sw	v1,0(v0)
      statemt[11] = temp;
    3870:	8fc20010 	lw	v0,16(s8)
    3874:	00000000 	sll	zero,zero,0x0
    3878:	2442002c 	addiu	v0,v0,44
    387c:	8fc30000 	lw	v1,0(s8)
    3880:	00000000 	sll	zero,zero,0x0
    3884:	ac430000 	sw	v1,0(v0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    3888:	8fc20010 	lw	v0,16(s8)
    388c:	00000000 	sll	zero,zero,0x0
    3890:	8c420000 	lw	v0,0(v0)
    3894:	00000000 	sll	zero,zero,0x0
    3898:	00022103 	sra	a0,v0,0x4
    389c:	8fc20010 	lw	v0,16(s8)
    38a0:	00000000 	sll	zero,zero,0x0
    38a4:	8c420000 	lw	v0,0(v0)
    38a8:	00000000 	sll	zero,zero,0x0
    38ac:	3043000f 	andi	v1,v0,0xf
    38b0:	3c020000 	lui	v0,0x0
    38b4:	00042100 	sll	a0,a0,0x4
    38b8:	00831821 	addu	v1,a0,v1
    38bc:	00031880 	sll	v1,v1,0x2
    38c0:	24420000 	addiu	v0,v0,0
    38c4:	00621021 	addu	v0,v1,v0
    38c8:	8c430000 	lw	v1,0(v0)
    38cc:	8fc20010 	lw	v0,16(s8)
    38d0:	00000000 	sll	zero,zero,0x0
    38d4:	ac430000 	sw	v1,0(v0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    38d8:	8fc20010 	lw	v0,16(s8)
    38dc:	00000000 	sll	zero,zero,0x0
    38e0:	24420010 	addiu	v0,v0,16
    38e4:	8fc30010 	lw	v1,16(s8)
    38e8:	00000000 	sll	zero,zero,0x0
    38ec:	24630010 	addiu	v1,v1,16
    38f0:	8c630000 	lw	v1,0(v1)
    38f4:	00000000 	sll	zero,zero,0x0
    38f8:	00032903 	sra	a1,v1,0x4
    38fc:	8fc30010 	lw	v1,16(s8)
    3900:	00000000 	sll	zero,zero,0x0
    3904:	24630010 	addiu	v1,v1,16
    3908:	8c630000 	lw	v1,0(v1)
    390c:	00000000 	sll	zero,zero,0x0
    3910:	3064000f 	andi	a0,v1,0xf
    3914:	3c030000 	lui	v1,0x0
    3918:	00052900 	sll	a1,a1,0x4
    391c:	00a42021 	addu	a0,a1,a0
    3920:	00042080 	sll	a0,a0,0x2
    3924:	24630000 	addiu	v1,v1,0
    3928:	00831821 	addu	v1,a0,v1
    392c:	8c630000 	lw	v1,0(v1)
    3930:	00000000 	sll	zero,zero,0x0
    3934:	ac430000 	sw	v1,0(v0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    3938:	8fc20010 	lw	v0,16(s8)
    393c:	00000000 	sll	zero,zero,0x0
    3940:	24420020 	addiu	v0,v0,32
    3944:	8fc30010 	lw	v1,16(s8)
    3948:	00000000 	sll	zero,zero,0x0
    394c:	24630020 	addiu	v1,v1,32
    3950:	8c630000 	lw	v1,0(v1)
    3954:	00000000 	sll	zero,zero,0x0
    3958:	00032903 	sra	a1,v1,0x4
    395c:	8fc30010 	lw	v1,16(s8)
    3960:	00000000 	sll	zero,zero,0x0
    3964:	24630020 	addiu	v1,v1,32
    3968:	8c630000 	lw	v1,0(v1)
    396c:	00000000 	sll	zero,zero,0x0
    3970:	3064000f 	andi	a0,v1,0xf
    3974:	3c030000 	lui	v1,0x0
    3978:	00052900 	sll	a1,a1,0x4
    397c:	00a42021 	addu	a0,a1,a0
    3980:	00042080 	sll	a0,a0,0x2
    3984:	24630000 	addiu	v1,v1,0
    3988:	00831821 	addu	v1,a0,v1
    398c:	8c630000 	lw	v1,0(v1)
    3990:	00000000 	sll	zero,zero,0x0
    3994:	ac430000 	sw	v1,0(v0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    3998:	8fc20010 	lw	v0,16(s8)
    399c:	00000000 	sll	zero,zero,0x0
    39a0:	24420030 	addiu	v0,v0,48
    39a4:	8fc30010 	lw	v1,16(s8)
    39a8:	00000000 	sll	zero,zero,0x0
    39ac:	24630030 	addiu	v1,v1,48
    39b0:	8c630000 	lw	v1,0(v1)
    39b4:	00000000 	sll	zero,zero,0x0
    39b8:	00032903 	sra	a1,v1,0x4
    39bc:	8fc30010 	lw	v1,16(s8)
    39c0:	00000000 	sll	zero,zero,0x0
    39c4:	24630030 	addiu	v1,v1,48
    39c8:	8c630000 	lw	v1,0(v1)
    39cc:	00000000 	sll	zero,zero,0x0
    39d0:	3064000f 	andi	a0,v1,0xf
    39d4:	3c030000 	lui	v1,0x0
    39d8:	00052900 	sll	a1,a1,0x4
    39dc:	00a42021 	addu	a0,a1,a0
    39e0:	00042080 	sll	a0,a0,0x2
    39e4:	24630000 	addiu	v1,v1,0
    39e8:	00831821 	addu	v1,a0,v1
    39ec:	8c630000 	lw	v1,0(v1)
    39f0:	00000000 	sll	zero,zero,0x0
    39f4:	ac430000 	sw	v1,0(v0)
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    39f8:	8fc20010 	lw	v0,16(s8)
    39fc:	00000000 	sll	zero,zero,0x0
    3a00:	24420040 	addiu	v0,v0,64
    3a04:	8fc30010 	lw	v1,16(s8)
    3a08:	00000000 	sll	zero,zero,0x0
    3a0c:	24630040 	addiu	v1,v1,64
    3a10:	8c630000 	lw	v1,0(v1)
    3a14:	00000000 	sll	zero,zero,0x0
    3a18:	00032903 	sra	a1,v1,0x4
    3a1c:	8fc30010 	lw	v1,16(s8)
    3a20:	00000000 	sll	zero,zero,0x0
    3a24:	24630040 	addiu	v1,v1,64
    3a28:	8c630000 	lw	v1,0(v1)
    3a2c:	00000000 	sll	zero,zero,0x0
    3a30:	3064000f 	andi	a0,v1,0xf
    3a34:	3c030000 	lui	v1,0x0
    3a38:	00052900 	sll	a1,a1,0x4
    3a3c:	00a42021 	addu	a0,a1,a0
    3a40:	00042080 	sll	a0,a0,0x2
    3a44:	24630000 	addiu	v1,v1,0
    3a48:	00831821 	addu	v1,a0,v1
    3a4c:	8c630000 	lw	v1,0(v1)
    3a50:	00000000 	sll	zero,zero,0x0
    3a54:	ac430000 	sw	v1,0(v0)
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    3a58:	8fc20010 	lw	v0,16(s8)
    3a5c:	00000000 	sll	zero,zero,0x0
    3a60:	24420050 	addiu	v0,v0,80
    3a64:	8fc30010 	lw	v1,16(s8)
    3a68:	00000000 	sll	zero,zero,0x0
    3a6c:	24630050 	addiu	v1,v1,80
    3a70:	8c630000 	lw	v1,0(v1)
    3a74:	00000000 	sll	zero,zero,0x0
    3a78:	00032903 	sra	a1,v1,0x4
    3a7c:	8fc30010 	lw	v1,16(s8)
    3a80:	00000000 	sll	zero,zero,0x0
    3a84:	24630050 	addiu	v1,v1,80
    3a88:	8c630000 	lw	v1,0(v1)
    3a8c:	00000000 	sll	zero,zero,0x0
    3a90:	3064000f 	andi	a0,v1,0xf
    3a94:	3c030000 	lui	v1,0x0
    3a98:	00052900 	sll	a1,a1,0x4
    3a9c:	00a42021 	addu	a0,a1,a0
    3aa0:	00042080 	sll	a0,a0,0x2
    3aa4:	24630000 	addiu	v1,v1,0
    3aa8:	00831821 	addu	v1,a0,v1
    3aac:	8c630000 	lw	v1,0(v1)
    3ab0:	00000000 	sll	zero,zero,0x0
    3ab4:	ac430000 	sw	v1,0(v0)
      break;
    3ab8:	080011bf 	j	46fc <InversShiftRow_ByteSub+0x1be0>
    3abc:	00000000 	sll	zero,zero,0x0
    case 8:
      temp = invSbox[statemt[29] >> 4][statemt[29] & 0xf];
    3ac0:	8fc20010 	lw	v0,16(s8)
    3ac4:	00000000 	sll	zero,zero,0x0
    3ac8:	24420074 	addiu	v0,v0,116
    3acc:	8c420000 	lw	v0,0(v0)
    3ad0:	00000000 	sll	zero,zero,0x0
    3ad4:	00022103 	sra	a0,v0,0x4
    3ad8:	8fc20010 	lw	v0,16(s8)
    3adc:	00000000 	sll	zero,zero,0x0
    3ae0:	24420074 	addiu	v0,v0,116
    3ae4:	8c420000 	lw	v0,0(v0)
    3ae8:	00000000 	sll	zero,zero,0x0
    3aec:	3043000f 	andi	v1,v0,0xf
    3af0:	3c020000 	lui	v0,0x0
    3af4:	00042100 	sll	a0,a0,0x4
    3af8:	00831821 	addu	v1,a0,v1
    3afc:	00031880 	sll	v1,v1,0x2
    3b00:	24420000 	addiu	v0,v0,0
    3b04:	00621021 	addu	v0,v1,v0
    3b08:	8c420000 	lw	v0,0(v0)
    3b0c:	00000000 	sll	zero,zero,0x0
    3b10:	afc20000 	sw	v0,0(s8)
      statemt[29] = invSbox[statemt[25] >> 4][statemt[25] & 0xf];
    3b14:	8fc20010 	lw	v0,16(s8)
    3b18:	00000000 	sll	zero,zero,0x0
    3b1c:	24420074 	addiu	v0,v0,116
    3b20:	8fc30010 	lw	v1,16(s8)
    3b24:	00000000 	sll	zero,zero,0x0
    3b28:	24630064 	addiu	v1,v1,100
    3b2c:	8c630000 	lw	v1,0(v1)
    3b30:	00000000 	sll	zero,zero,0x0
    3b34:	00032903 	sra	a1,v1,0x4
    3b38:	8fc30010 	lw	v1,16(s8)
    3b3c:	00000000 	sll	zero,zero,0x0
    3b40:	24630064 	addiu	v1,v1,100
    3b44:	8c630000 	lw	v1,0(v1)
    3b48:	00000000 	sll	zero,zero,0x0
    3b4c:	3064000f 	andi	a0,v1,0xf
    3b50:	3c030000 	lui	v1,0x0
    3b54:	00052900 	sll	a1,a1,0x4
    3b58:	00a42021 	addu	a0,a1,a0
    3b5c:	00042080 	sll	a0,a0,0x2
    3b60:	24630000 	addiu	v1,v1,0
    3b64:	00831821 	addu	v1,a0,v1
    3b68:	8c630000 	lw	v1,0(v1)
    3b6c:	00000000 	sll	zero,zero,0x0
    3b70:	ac430000 	sw	v1,0(v0)
      statemt[25] = invSbox[statemt[21] >> 4][statemt[21] & 0xf];
    3b74:	8fc20010 	lw	v0,16(s8)
    3b78:	00000000 	sll	zero,zero,0x0
    3b7c:	24420064 	addiu	v0,v0,100
    3b80:	8fc30010 	lw	v1,16(s8)
    3b84:	00000000 	sll	zero,zero,0x0
    3b88:	24630054 	addiu	v1,v1,84
    3b8c:	8c630000 	lw	v1,0(v1)
    3b90:	00000000 	sll	zero,zero,0x0
    3b94:	00032903 	sra	a1,v1,0x4
    3b98:	8fc30010 	lw	v1,16(s8)
    3b9c:	00000000 	sll	zero,zero,0x0
    3ba0:	24630054 	addiu	v1,v1,84
    3ba4:	8c630000 	lw	v1,0(v1)
    3ba8:	00000000 	sll	zero,zero,0x0
    3bac:	3064000f 	andi	a0,v1,0xf
    3bb0:	3c030000 	lui	v1,0x0
    3bb4:	00052900 	sll	a1,a1,0x4
    3bb8:	00a42021 	addu	a0,a1,a0
    3bbc:	00042080 	sll	a0,a0,0x2
    3bc0:	24630000 	addiu	v1,v1,0
    3bc4:	00831821 	addu	v1,a0,v1
    3bc8:	8c630000 	lw	v1,0(v1)
    3bcc:	00000000 	sll	zero,zero,0x0
    3bd0:	ac430000 	sw	v1,0(v0)
      statemt[21] = invSbox[statemt[17] >> 4][statemt[17] & 0xf];
    3bd4:	8fc20010 	lw	v0,16(s8)
    3bd8:	00000000 	sll	zero,zero,0x0
    3bdc:	24420054 	addiu	v0,v0,84
    3be0:	8fc30010 	lw	v1,16(s8)
    3be4:	00000000 	sll	zero,zero,0x0
    3be8:	24630044 	addiu	v1,v1,68
    3bec:	8c630000 	lw	v1,0(v1)
    3bf0:	00000000 	sll	zero,zero,0x0
    3bf4:	00032903 	sra	a1,v1,0x4
    3bf8:	8fc30010 	lw	v1,16(s8)
    3bfc:	00000000 	sll	zero,zero,0x0
    3c00:	24630044 	addiu	v1,v1,68
    3c04:	8c630000 	lw	v1,0(v1)
    3c08:	00000000 	sll	zero,zero,0x0
    3c0c:	3064000f 	andi	a0,v1,0xf
    3c10:	3c030000 	lui	v1,0x0
    3c14:	00052900 	sll	a1,a1,0x4
    3c18:	00a42021 	addu	a0,a1,a0
    3c1c:	00042080 	sll	a0,a0,0x2
    3c20:	24630000 	addiu	v1,v1,0
    3c24:	00831821 	addu	v1,a0,v1
    3c28:	8c630000 	lw	v1,0(v1)
    3c2c:	00000000 	sll	zero,zero,0x0
    3c30:	ac430000 	sw	v1,0(v0)
      statemt[17] = invSbox[statemt[13] >> 4][statemt[13] & 0xf];
    3c34:	8fc20010 	lw	v0,16(s8)
    3c38:	00000000 	sll	zero,zero,0x0
    3c3c:	24420044 	addiu	v0,v0,68
    3c40:	8fc30010 	lw	v1,16(s8)
    3c44:	00000000 	sll	zero,zero,0x0
    3c48:	24630034 	addiu	v1,v1,52
    3c4c:	8c630000 	lw	v1,0(v1)
    3c50:	00000000 	sll	zero,zero,0x0
    3c54:	00032903 	sra	a1,v1,0x4
    3c58:	8fc30010 	lw	v1,16(s8)
    3c5c:	00000000 	sll	zero,zero,0x0
    3c60:	24630034 	addiu	v1,v1,52
    3c64:	8c630000 	lw	v1,0(v1)
    3c68:	00000000 	sll	zero,zero,0x0
    3c6c:	3064000f 	andi	a0,v1,0xf
    3c70:	3c030000 	lui	v1,0x0
    3c74:	00052900 	sll	a1,a1,0x4
    3c78:	00a42021 	addu	a0,a1,a0
    3c7c:	00042080 	sll	a0,a0,0x2
    3c80:	24630000 	addiu	v1,v1,0
    3c84:	00831821 	addu	v1,a0,v1
    3c88:	8c630000 	lw	v1,0(v1)
    3c8c:	00000000 	sll	zero,zero,0x0
    3c90:	ac430000 	sw	v1,0(v0)
      statemt[13] = invSbox[statemt[9] >> 4][statemt[9] & 0xf];
    3c94:	8fc20010 	lw	v0,16(s8)
    3c98:	00000000 	sll	zero,zero,0x0
    3c9c:	24420034 	addiu	v0,v0,52
    3ca0:	8fc30010 	lw	v1,16(s8)
    3ca4:	00000000 	sll	zero,zero,0x0
    3ca8:	24630024 	addiu	v1,v1,36
    3cac:	8c630000 	lw	v1,0(v1)
    3cb0:	00000000 	sll	zero,zero,0x0
    3cb4:	00032903 	sra	a1,v1,0x4
    3cb8:	8fc30010 	lw	v1,16(s8)
    3cbc:	00000000 	sll	zero,zero,0x0
    3cc0:	24630024 	addiu	v1,v1,36
    3cc4:	8c630000 	lw	v1,0(v1)
    3cc8:	00000000 	sll	zero,zero,0x0
    3ccc:	3064000f 	andi	a0,v1,0xf
    3cd0:	3c030000 	lui	v1,0x0
    3cd4:	00052900 	sll	a1,a1,0x4
    3cd8:	00a42021 	addu	a0,a1,a0
    3cdc:	00042080 	sll	a0,a0,0x2
    3ce0:	24630000 	addiu	v1,v1,0
    3ce4:	00831821 	addu	v1,a0,v1
    3ce8:	8c630000 	lw	v1,0(v1)
    3cec:	00000000 	sll	zero,zero,0x0
    3cf0:	ac430000 	sw	v1,0(v0)
      statemt[9] = invSbox[statemt[5] >> 4][statemt[5] & 0xf];
    3cf4:	8fc20010 	lw	v0,16(s8)
    3cf8:	00000000 	sll	zero,zero,0x0
    3cfc:	24420024 	addiu	v0,v0,36
    3d00:	8fc30010 	lw	v1,16(s8)
    3d04:	00000000 	sll	zero,zero,0x0
    3d08:	24630014 	addiu	v1,v1,20
    3d0c:	8c630000 	lw	v1,0(v1)
    3d10:	00000000 	sll	zero,zero,0x0
    3d14:	00032903 	sra	a1,v1,0x4
    3d18:	8fc30010 	lw	v1,16(s8)
    3d1c:	00000000 	sll	zero,zero,0x0
    3d20:	24630014 	addiu	v1,v1,20
    3d24:	8c630000 	lw	v1,0(v1)
    3d28:	00000000 	sll	zero,zero,0x0
    3d2c:	3064000f 	andi	a0,v1,0xf
    3d30:	3c030000 	lui	v1,0x0
    3d34:	00052900 	sll	a1,a1,0x4
    3d38:	00a42021 	addu	a0,a1,a0
    3d3c:	00042080 	sll	a0,a0,0x2
    3d40:	24630000 	addiu	v1,v1,0
    3d44:	00831821 	addu	v1,a0,v1
    3d48:	8c630000 	lw	v1,0(v1)
    3d4c:	00000000 	sll	zero,zero,0x0
    3d50:	ac430000 	sw	v1,0(v0)
      statemt[5] = invSbox[statemt[1] >> 4][statemt[1] & 0xf];
    3d54:	8fc20010 	lw	v0,16(s8)
    3d58:	00000000 	sll	zero,zero,0x0
    3d5c:	24420014 	addiu	v0,v0,20
    3d60:	8fc30010 	lw	v1,16(s8)
    3d64:	00000000 	sll	zero,zero,0x0
    3d68:	24630004 	addiu	v1,v1,4
    3d6c:	8c630000 	lw	v1,0(v1)
    3d70:	00000000 	sll	zero,zero,0x0
    3d74:	00032903 	sra	a1,v1,0x4
    3d78:	8fc30010 	lw	v1,16(s8)
    3d7c:	00000000 	sll	zero,zero,0x0
    3d80:	24630004 	addiu	v1,v1,4
    3d84:	8c630000 	lw	v1,0(v1)
    3d88:	00000000 	sll	zero,zero,0x0
    3d8c:	3064000f 	andi	a0,v1,0xf
    3d90:	3c030000 	lui	v1,0x0
    3d94:	00052900 	sll	a1,a1,0x4
    3d98:	00a42021 	addu	a0,a1,a0
    3d9c:	00042080 	sll	a0,a0,0x2
    3da0:	24630000 	addiu	v1,v1,0
    3da4:	00831821 	addu	v1,a0,v1
    3da8:	8c630000 	lw	v1,0(v1)
    3dac:	00000000 	sll	zero,zero,0x0
    3db0:	ac430000 	sw	v1,0(v0)
      statemt[1] = temp;
    3db4:	8fc20010 	lw	v0,16(s8)
    3db8:	00000000 	sll	zero,zero,0x0
    3dbc:	24420004 	addiu	v0,v0,4
    3dc0:	8fc30000 	lw	v1,0(s8)
    3dc4:	00000000 	sll	zero,zero,0x0
    3dc8:	ac430000 	sw	v1,0(v0)

      temp = invSbox[statemt[30] >> 4][statemt[30] & 0xf];
    3dcc:	8fc20010 	lw	v0,16(s8)
    3dd0:	00000000 	sll	zero,zero,0x0
    3dd4:	24420078 	addiu	v0,v0,120
    3dd8:	8c420000 	lw	v0,0(v0)
    3ddc:	00000000 	sll	zero,zero,0x0
    3de0:	00022103 	sra	a0,v0,0x4
    3de4:	8fc20010 	lw	v0,16(s8)
    3de8:	00000000 	sll	zero,zero,0x0
    3dec:	24420078 	addiu	v0,v0,120
    3df0:	8c420000 	lw	v0,0(v0)
    3df4:	00000000 	sll	zero,zero,0x0
    3df8:	3043000f 	andi	v1,v0,0xf
    3dfc:	3c020000 	lui	v0,0x0
    3e00:	00042100 	sll	a0,a0,0x4
    3e04:	00831821 	addu	v1,a0,v1
    3e08:	00031880 	sll	v1,v1,0x2
    3e0c:	24420000 	addiu	v0,v0,0
    3e10:	00621021 	addu	v0,v1,v0
    3e14:	8c420000 	lw	v0,0(v0)
    3e18:	00000000 	sll	zero,zero,0x0
    3e1c:	afc20000 	sw	v0,0(s8)
      statemt[30] = invSbox[statemt[18] >> 4][statemt[18] & 0xf];
    3e20:	8fc20010 	lw	v0,16(s8)
    3e24:	00000000 	sll	zero,zero,0x0
    3e28:	24420078 	addiu	v0,v0,120
    3e2c:	8fc30010 	lw	v1,16(s8)
    3e30:	00000000 	sll	zero,zero,0x0
    3e34:	24630048 	addiu	v1,v1,72
    3e38:	8c630000 	lw	v1,0(v1)
    3e3c:	00000000 	sll	zero,zero,0x0
    3e40:	00032903 	sra	a1,v1,0x4
    3e44:	8fc30010 	lw	v1,16(s8)
    3e48:	00000000 	sll	zero,zero,0x0
    3e4c:	24630048 	addiu	v1,v1,72
    3e50:	8c630000 	lw	v1,0(v1)
    3e54:	00000000 	sll	zero,zero,0x0
    3e58:	3064000f 	andi	a0,v1,0xf
    3e5c:	3c030000 	lui	v1,0x0
    3e60:	00052900 	sll	a1,a1,0x4
    3e64:	00a42021 	addu	a0,a1,a0
    3e68:	00042080 	sll	a0,a0,0x2
    3e6c:	24630000 	addiu	v1,v1,0
    3e70:	00831821 	addu	v1,a0,v1
    3e74:	8c630000 	lw	v1,0(v1)
    3e78:	00000000 	sll	zero,zero,0x0
    3e7c:	ac430000 	sw	v1,0(v0)
      statemt[18] = invSbox[statemt[6] >> 4][statemt[6] & 0xf];
    3e80:	8fc20010 	lw	v0,16(s8)
    3e84:	00000000 	sll	zero,zero,0x0
    3e88:	24420048 	addiu	v0,v0,72
    3e8c:	8fc30010 	lw	v1,16(s8)
    3e90:	00000000 	sll	zero,zero,0x0
    3e94:	24630018 	addiu	v1,v1,24
    3e98:	8c630000 	lw	v1,0(v1)
    3e9c:	00000000 	sll	zero,zero,0x0
    3ea0:	00032903 	sra	a1,v1,0x4
    3ea4:	8fc30010 	lw	v1,16(s8)
    3ea8:	00000000 	sll	zero,zero,0x0
    3eac:	24630018 	addiu	v1,v1,24
    3eb0:	8c630000 	lw	v1,0(v1)
    3eb4:	00000000 	sll	zero,zero,0x0
    3eb8:	3064000f 	andi	a0,v1,0xf
    3ebc:	3c030000 	lui	v1,0x0
    3ec0:	00052900 	sll	a1,a1,0x4
    3ec4:	00a42021 	addu	a0,a1,a0
    3ec8:	00042080 	sll	a0,a0,0x2
    3ecc:	24630000 	addiu	v1,v1,0
    3ed0:	00831821 	addu	v1,a0,v1
    3ed4:	8c630000 	lw	v1,0(v1)
    3ed8:	00000000 	sll	zero,zero,0x0
    3edc:	ac430000 	sw	v1,0(v0)
      statemt[6] = invSbox[statemt[26] >> 4][statemt[26] & 0xf];
    3ee0:	8fc20010 	lw	v0,16(s8)
    3ee4:	00000000 	sll	zero,zero,0x0
    3ee8:	24420018 	addiu	v0,v0,24
    3eec:	8fc30010 	lw	v1,16(s8)
    3ef0:	00000000 	sll	zero,zero,0x0
    3ef4:	24630068 	addiu	v1,v1,104
    3ef8:	8c630000 	lw	v1,0(v1)
    3efc:	00000000 	sll	zero,zero,0x0
    3f00:	00032903 	sra	a1,v1,0x4
    3f04:	8fc30010 	lw	v1,16(s8)
    3f08:	00000000 	sll	zero,zero,0x0
    3f0c:	24630068 	addiu	v1,v1,104
    3f10:	8c630000 	lw	v1,0(v1)
    3f14:	00000000 	sll	zero,zero,0x0
    3f18:	3064000f 	andi	a0,v1,0xf
    3f1c:	3c030000 	lui	v1,0x0
    3f20:	00052900 	sll	a1,a1,0x4
    3f24:	00a42021 	addu	a0,a1,a0
    3f28:	00042080 	sll	a0,a0,0x2
    3f2c:	24630000 	addiu	v1,v1,0
    3f30:	00831821 	addu	v1,a0,v1
    3f34:	8c630000 	lw	v1,0(v1)
    3f38:	00000000 	sll	zero,zero,0x0
    3f3c:	ac430000 	sw	v1,0(v0)
      statemt[26] = invSbox[statemt[14] >> 4][statemt[14] & 0xf];
    3f40:	8fc20010 	lw	v0,16(s8)
    3f44:	00000000 	sll	zero,zero,0x0
    3f48:	24420068 	addiu	v0,v0,104
    3f4c:	8fc30010 	lw	v1,16(s8)
    3f50:	00000000 	sll	zero,zero,0x0
    3f54:	24630038 	addiu	v1,v1,56
    3f58:	8c630000 	lw	v1,0(v1)
    3f5c:	00000000 	sll	zero,zero,0x0
    3f60:	00032903 	sra	a1,v1,0x4
    3f64:	8fc30010 	lw	v1,16(s8)
    3f68:	00000000 	sll	zero,zero,0x0
    3f6c:	24630038 	addiu	v1,v1,56
    3f70:	8c630000 	lw	v1,0(v1)
    3f74:	00000000 	sll	zero,zero,0x0
    3f78:	3064000f 	andi	a0,v1,0xf
    3f7c:	3c030000 	lui	v1,0x0
    3f80:	00052900 	sll	a1,a1,0x4
    3f84:	00a42021 	addu	a0,a1,a0
    3f88:	00042080 	sll	a0,a0,0x2
    3f8c:	24630000 	addiu	v1,v1,0
    3f90:	00831821 	addu	v1,a0,v1
    3f94:	8c630000 	lw	v1,0(v1)
    3f98:	00000000 	sll	zero,zero,0x0
    3f9c:	ac430000 	sw	v1,0(v0)
      statemt[14] = invSbox[statemt[2] >> 4][statemt[2] & 0xf];
    3fa0:	8fc20010 	lw	v0,16(s8)
    3fa4:	00000000 	sll	zero,zero,0x0
    3fa8:	24420038 	addiu	v0,v0,56
    3fac:	8fc30010 	lw	v1,16(s8)
    3fb0:	00000000 	sll	zero,zero,0x0
    3fb4:	24630008 	addiu	v1,v1,8
    3fb8:	8c630000 	lw	v1,0(v1)
    3fbc:	00000000 	sll	zero,zero,0x0
    3fc0:	00032903 	sra	a1,v1,0x4
    3fc4:	8fc30010 	lw	v1,16(s8)
    3fc8:	00000000 	sll	zero,zero,0x0
    3fcc:	24630008 	addiu	v1,v1,8
    3fd0:	8c630000 	lw	v1,0(v1)
    3fd4:	00000000 	sll	zero,zero,0x0
    3fd8:	3064000f 	andi	a0,v1,0xf
    3fdc:	3c030000 	lui	v1,0x0
    3fe0:	00052900 	sll	a1,a1,0x4
    3fe4:	00a42021 	addu	a0,a1,a0
    3fe8:	00042080 	sll	a0,a0,0x2
    3fec:	24630000 	addiu	v1,v1,0
    3ff0:	00831821 	addu	v1,a0,v1
    3ff4:	8c630000 	lw	v1,0(v1)
    3ff8:	00000000 	sll	zero,zero,0x0
    3ffc:	ac430000 	sw	v1,0(v0)
      statemt[2] = invSbox[statemt[22] >> 4][statemt[22] & 0xf];
    4000:	8fc20010 	lw	v0,16(s8)
    4004:	00000000 	sll	zero,zero,0x0
    4008:	24420008 	addiu	v0,v0,8
    400c:	8fc30010 	lw	v1,16(s8)
    4010:	00000000 	sll	zero,zero,0x0
    4014:	24630058 	addiu	v1,v1,88
    4018:	8c630000 	lw	v1,0(v1)
    401c:	00000000 	sll	zero,zero,0x0
    4020:	00032903 	sra	a1,v1,0x4
    4024:	8fc30010 	lw	v1,16(s8)
    4028:	00000000 	sll	zero,zero,0x0
    402c:	24630058 	addiu	v1,v1,88
    4030:	8c630000 	lw	v1,0(v1)
    4034:	00000000 	sll	zero,zero,0x0
    4038:	3064000f 	andi	a0,v1,0xf
    403c:	3c030000 	lui	v1,0x0
    4040:	00052900 	sll	a1,a1,0x4
    4044:	00a42021 	addu	a0,a1,a0
    4048:	00042080 	sll	a0,a0,0x2
    404c:	24630000 	addiu	v1,v1,0
    4050:	00831821 	addu	v1,a0,v1
    4054:	8c630000 	lw	v1,0(v1)
    4058:	00000000 	sll	zero,zero,0x0
    405c:	ac430000 	sw	v1,0(v0)
      statemt[22] = invSbox[statemt[10] >> 4][statemt[10] & 0xf];
    4060:	8fc20010 	lw	v0,16(s8)
    4064:	00000000 	sll	zero,zero,0x0
    4068:	24420058 	addiu	v0,v0,88
    406c:	8fc30010 	lw	v1,16(s8)
    4070:	00000000 	sll	zero,zero,0x0
    4074:	24630028 	addiu	v1,v1,40
    4078:	8c630000 	lw	v1,0(v1)
    407c:	00000000 	sll	zero,zero,0x0
    4080:	00032903 	sra	a1,v1,0x4
    4084:	8fc30010 	lw	v1,16(s8)
    4088:	00000000 	sll	zero,zero,0x0
    408c:	24630028 	addiu	v1,v1,40
    4090:	8c630000 	lw	v1,0(v1)
    4094:	00000000 	sll	zero,zero,0x0
    4098:	3064000f 	andi	a0,v1,0xf
    409c:	3c030000 	lui	v1,0x0
    40a0:	00052900 	sll	a1,a1,0x4
    40a4:	00a42021 	addu	a0,a1,a0
    40a8:	00042080 	sll	a0,a0,0x2
    40ac:	24630000 	addiu	v1,v1,0
    40b0:	00831821 	addu	v1,a0,v1
    40b4:	8c630000 	lw	v1,0(v1)
    40b8:	00000000 	sll	zero,zero,0x0
    40bc:	ac430000 	sw	v1,0(v0)
      statemt[10] = temp;
    40c0:	8fc20010 	lw	v0,16(s8)
    40c4:	00000000 	sll	zero,zero,0x0
    40c8:	24420028 	addiu	v0,v0,40
    40cc:	8fc30000 	lw	v1,0(s8)
    40d0:	00000000 	sll	zero,zero,0x0
    40d4:	ac430000 	sw	v1,0(v0)

      temp = invSbox[statemt[31] >> 4][statemt[31] & 0xf];
    40d8:	8fc20010 	lw	v0,16(s8)
    40dc:	00000000 	sll	zero,zero,0x0
    40e0:	2442007c 	addiu	v0,v0,124
    40e4:	8c420000 	lw	v0,0(v0)
    40e8:	00000000 	sll	zero,zero,0x0
    40ec:	00022103 	sra	a0,v0,0x4
    40f0:	8fc20010 	lw	v0,16(s8)
    40f4:	00000000 	sll	zero,zero,0x0
    40f8:	2442007c 	addiu	v0,v0,124
    40fc:	8c420000 	lw	v0,0(v0)
    4100:	00000000 	sll	zero,zero,0x0
    4104:	3043000f 	andi	v1,v0,0xf
    4108:	3c020000 	lui	v0,0x0
    410c:	00042100 	sll	a0,a0,0x4
    4110:	00831821 	addu	v1,a0,v1
    4114:	00031880 	sll	v1,v1,0x2
    4118:	24420000 	addiu	v0,v0,0
    411c:	00621021 	addu	v0,v1,v0
    4120:	8c420000 	lw	v0,0(v0)
    4124:	00000000 	sll	zero,zero,0x0
    4128:	afc20000 	sw	v0,0(s8)
      statemt[31] = invSbox[statemt[15] >> 4][statemt[15] & 0xf];
    412c:	8fc20010 	lw	v0,16(s8)
    4130:	00000000 	sll	zero,zero,0x0
    4134:	2442007c 	addiu	v0,v0,124
    4138:	8fc30010 	lw	v1,16(s8)
    413c:	00000000 	sll	zero,zero,0x0
    4140:	2463003c 	addiu	v1,v1,60
    4144:	8c630000 	lw	v1,0(v1)
    4148:	00000000 	sll	zero,zero,0x0
    414c:	00032903 	sra	a1,v1,0x4
    4150:	8fc30010 	lw	v1,16(s8)
    4154:	00000000 	sll	zero,zero,0x0
    4158:	2463003c 	addiu	v1,v1,60
    415c:	8c630000 	lw	v1,0(v1)
    4160:	00000000 	sll	zero,zero,0x0
    4164:	3064000f 	andi	a0,v1,0xf
    4168:	3c030000 	lui	v1,0x0
    416c:	00052900 	sll	a1,a1,0x4
    4170:	00a42021 	addu	a0,a1,a0
    4174:	00042080 	sll	a0,a0,0x2
    4178:	24630000 	addiu	v1,v1,0
    417c:	00831821 	addu	v1,a0,v1
    4180:	8c630000 	lw	v1,0(v1)
    4184:	00000000 	sll	zero,zero,0x0
    4188:	ac430000 	sw	v1,0(v0)
      statemt[15] = temp;
    418c:	8fc20010 	lw	v0,16(s8)
    4190:	00000000 	sll	zero,zero,0x0
    4194:	2442003c 	addiu	v0,v0,60
    4198:	8fc30000 	lw	v1,0(s8)
    419c:	00000000 	sll	zero,zero,0x0
    41a0:	ac430000 	sw	v1,0(v0)
      temp = invSbox[statemt[27] >> 4][statemt[27] & 0xf];
    41a4:	8fc20010 	lw	v0,16(s8)
    41a8:	00000000 	sll	zero,zero,0x0
    41ac:	2442006c 	addiu	v0,v0,108
    41b0:	8c420000 	lw	v0,0(v0)
    41b4:	00000000 	sll	zero,zero,0x0
    41b8:	00022103 	sra	a0,v0,0x4
    41bc:	8fc20010 	lw	v0,16(s8)
    41c0:	00000000 	sll	zero,zero,0x0
    41c4:	2442006c 	addiu	v0,v0,108
    41c8:	8c420000 	lw	v0,0(v0)
    41cc:	00000000 	sll	zero,zero,0x0
    41d0:	3043000f 	andi	v1,v0,0xf
    41d4:	3c020000 	lui	v0,0x0
    41d8:	00042100 	sll	a0,a0,0x4
    41dc:	00831821 	addu	v1,a0,v1
    41e0:	00031880 	sll	v1,v1,0x2
    41e4:	24420000 	addiu	v0,v0,0
    41e8:	00621021 	addu	v0,v1,v0
    41ec:	8c420000 	lw	v0,0(v0)
    41f0:	00000000 	sll	zero,zero,0x0
    41f4:	afc20000 	sw	v0,0(s8)
      statemt[27] = invSbox[statemt[11] >> 4][statemt[11] & 0xf];
    41f8:	8fc20010 	lw	v0,16(s8)
    41fc:	00000000 	sll	zero,zero,0x0
    4200:	2442006c 	addiu	v0,v0,108
    4204:	8fc30010 	lw	v1,16(s8)
    4208:	00000000 	sll	zero,zero,0x0
    420c:	2463002c 	addiu	v1,v1,44
    4210:	8c630000 	lw	v1,0(v1)
    4214:	00000000 	sll	zero,zero,0x0
    4218:	00032903 	sra	a1,v1,0x4
    421c:	8fc30010 	lw	v1,16(s8)
    4220:	00000000 	sll	zero,zero,0x0
    4224:	2463002c 	addiu	v1,v1,44
    4228:	8c630000 	lw	v1,0(v1)
    422c:	00000000 	sll	zero,zero,0x0
    4230:	3064000f 	andi	a0,v1,0xf
    4234:	3c030000 	lui	v1,0x0
    4238:	00052900 	sll	a1,a1,0x4
    423c:	00a42021 	addu	a0,a1,a0
    4240:	00042080 	sll	a0,a0,0x2
    4244:	24630000 	addiu	v1,v1,0
    4248:	00831821 	addu	v1,a0,v1
    424c:	8c630000 	lw	v1,0(v1)
    4250:	00000000 	sll	zero,zero,0x0
    4254:	ac430000 	sw	v1,0(v0)
      statemt[11] = temp;
    4258:	8fc20010 	lw	v0,16(s8)
    425c:	00000000 	sll	zero,zero,0x0
    4260:	2442002c 	addiu	v0,v0,44
    4264:	8fc30000 	lw	v1,0(s8)
    4268:	00000000 	sll	zero,zero,0x0
    426c:	ac430000 	sw	v1,0(v0)
      temp = invSbox[statemt[23] >> 4][statemt[23] & 0xf];
    4270:	8fc20010 	lw	v0,16(s8)
    4274:	00000000 	sll	zero,zero,0x0
    4278:	2442005c 	addiu	v0,v0,92
    427c:	8c420000 	lw	v0,0(v0)
    4280:	00000000 	sll	zero,zero,0x0
    4284:	00022103 	sra	a0,v0,0x4
    4288:	8fc20010 	lw	v0,16(s8)
    428c:	00000000 	sll	zero,zero,0x0
    4290:	2442005c 	addiu	v0,v0,92
    4294:	8c420000 	lw	v0,0(v0)
    4298:	00000000 	sll	zero,zero,0x0
    429c:	3043000f 	andi	v1,v0,0xf
    42a0:	3c020000 	lui	v0,0x0
    42a4:	00042100 	sll	a0,a0,0x4
    42a8:	00831821 	addu	v1,a0,v1
    42ac:	00031880 	sll	v1,v1,0x2
    42b0:	24420000 	addiu	v0,v0,0
    42b4:	00621021 	addu	v0,v1,v0
    42b8:	8c420000 	lw	v0,0(v0)
    42bc:	00000000 	sll	zero,zero,0x0
    42c0:	afc20000 	sw	v0,0(s8)
      statemt[23] = invSbox[statemt[7] >> 4][statemt[7] & 0xf];
    42c4:	8fc20010 	lw	v0,16(s8)
    42c8:	00000000 	sll	zero,zero,0x0
    42cc:	2442005c 	addiu	v0,v0,92
    42d0:	8fc30010 	lw	v1,16(s8)
    42d4:	00000000 	sll	zero,zero,0x0
    42d8:	2463001c 	addiu	v1,v1,28
    42dc:	8c630000 	lw	v1,0(v1)
    42e0:	00000000 	sll	zero,zero,0x0
    42e4:	00032903 	sra	a1,v1,0x4
    42e8:	8fc30010 	lw	v1,16(s8)
    42ec:	00000000 	sll	zero,zero,0x0
    42f0:	2463001c 	addiu	v1,v1,28
    42f4:	8c630000 	lw	v1,0(v1)
    42f8:	00000000 	sll	zero,zero,0x0
    42fc:	3064000f 	andi	a0,v1,0xf
    4300:	3c030000 	lui	v1,0x0
    4304:	00052900 	sll	a1,a1,0x4
    4308:	00a42021 	addu	a0,a1,a0
    430c:	00042080 	sll	a0,a0,0x2
    4310:	24630000 	addiu	v1,v1,0
    4314:	00831821 	addu	v1,a0,v1
    4318:	8c630000 	lw	v1,0(v1)
    431c:	00000000 	sll	zero,zero,0x0
    4320:	ac430000 	sw	v1,0(v0)
      statemt[7] = temp;
    4324:	8fc20010 	lw	v0,16(s8)
    4328:	00000000 	sll	zero,zero,0x0
    432c:	2442001c 	addiu	v0,v0,28
    4330:	8fc30000 	lw	v1,0(s8)
    4334:	00000000 	sll	zero,zero,0x0
    4338:	ac430000 	sw	v1,0(v0)
      temp = invSbox[statemt[19] >> 4][statemt[19] & 0xf];
    433c:	8fc20010 	lw	v0,16(s8)
    4340:	00000000 	sll	zero,zero,0x0
    4344:	2442004c 	addiu	v0,v0,76
    4348:	8c420000 	lw	v0,0(v0)
    434c:	00000000 	sll	zero,zero,0x0
    4350:	00022103 	sra	a0,v0,0x4
    4354:	8fc20010 	lw	v0,16(s8)
    4358:	00000000 	sll	zero,zero,0x0
    435c:	2442004c 	addiu	v0,v0,76
    4360:	8c420000 	lw	v0,0(v0)
    4364:	00000000 	sll	zero,zero,0x0
    4368:	3043000f 	andi	v1,v0,0xf
    436c:	3c020000 	lui	v0,0x0
    4370:	00042100 	sll	a0,a0,0x4
    4374:	00831821 	addu	v1,a0,v1
    4378:	00031880 	sll	v1,v1,0x2
    437c:	24420000 	addiu	v0,v0,0
    4380:	00621021 	addu	v0,v1,v0
    4384:	8c420000 	lw	v0,0(v0)
    4388:	00000000 	sll	zero,zero,0x0
    438c:	afc20000 	sw	v0,0(s8)
      statemt[19] = invSbox[statemt[3] >> 4][statemt[3] & 0xf];
    4390:	8fc20010 	lw	v0,16(s8)
    4394:	00000000 	sll	zero,zero,0x0
    4398:	2442004c 	addiu	v0,v0,76
    439c:	8fc30010 	lw	v1,16(s8)
    43a0:	00000000 	sll	zero,zero,0x0
    43a4:	2463000c 	addiu	v1,v1,12
    43a8:	8c630000 	lw	v1,0(v1)
    43ac:	00000000 	sll	zero,zero,0x0
    43b0:	00032903 	sra	a1,v1,0x4
    43b4:	8fc30010 	lw	v1,16(s8)
    43b8:	00000000 	sll	zero,zero,0x0
    43bc:	2463000c 	addiu	v1,v1,12
    43c0:	8c630000 	lw	v1,0(v1)
    43c4:	00000000 	sll	zero,zero,0x0
    43c8:	3064000f 	andi	a0,v1,0xf
    43cc:	3c030000 	lui	v1,0x0
    43d0:	00052900 	sll	a1,a1,0x4
    43d4:	00a42021 	addu	a0,a1,a0
    43d8:	00042080 	sll	a0,a0,0x2
    43dc:	24630000 	addiu	v1,v1,0
    43e0:	00831821 	addu	v1,a0,v1
    43e4:	8c630000 	lw	v1,0(v1)
    43e8:	00000000 	sll	zero,zero,0x0
    43ec:	ac430000 	sw	v1,0(v0)
      statemt[3] = temp;
    43f0:	8fc20010 	lw	v0,16(s8)
    43f4:	00000000 	sll	zero,zero,0x0
    43f8:	2442000c 	addiu	v0,v0,12
    43fc:	8fc30000 	lw	v1,0(s8)
    4400:	00000000 	sll	zero,zero,0x0
    4404:	ac430000 	sw	v1,0(v0)

      statemt[0] = invSbox[statemt[0] >> 4][statemt[0] & 0xf];
    4408:	8fc20010 	lw	v0,16(s8)
    440c:	00000000 	sll	zero,zero,0x0
    4410:	8c420000 	lw	v0,0(v0)
    4414:	00000000 	sll	zero,zero,0x0
    4418:	00022103 	sra	a0,v0,0x4
    441c:	8fc20010 	lw	v0,16(s8)
    4420:	00000000 	sll	zero,zero,0x0
    4424:	8c420000 	lw	v0,0(v0)
    4428:	00000000 	sll	zero,zero,0x0
    442c:	3043000f 	andi	v1,v0,0xf
    4430:	3c020000 	lui	v0,0x0
    4434:	00042100 	sll	a0,a0,0x4
    4438:	00831821 	addu	v1,a0,v1
    443c:	00031880 	sll	v1,v1,0x2
    4440:	24420000 	addiu	v0,v0,0
    4444:	00621021 	addu	v0,v1,v0
    4448:	8c430000 	lw	v1,0(v0)
    444c:	8fc20010 	lw	v0,16(s8)
    4450:	00000000 	sll	zero,zero,0x0
    4454:	ac430000 	sw	v1,0(v0)
      statemt[4] = invSbox[statemt[4] >> 4][statemt[4] & 0xf];
    4458:	8fc20010 	lw	v0,16(s8)
    445c:	00000000 	sll	zero,zero,0x0
    4460:	24420010 	addiu	v0,v0,16
    4464:	8fc30010 	lw	v1,16(s8)
    4468:	00000000 	sll	zero,zero,0x0
    446c:	24630010 	addiu	v1,v1,16
    4470:	8c630000 	lw	v1,0(v1)
    4474:	00000000 	sll	zero,zero,0x0
    4478:	00032903 	sra	a1,v1,0x4
    447c:	8fc30010 	lw	v1,16(s8)
    4480:	00000000 	sll	zero,zero,0x0
    4484:	24630010 	addiu	v1,v1,16
    4488:	8c630000 	lw	v1,0(v1)
    448c:	00000000 	sll	zero,zero,0x0
    4490:	3064000f 	andi	a0,v1,0xf
    4494:	3c030000 	lui	v1,0x0
    4498:	00052900 	sll	a1,a1,0x4
    449c:	00a42021 	addu	a0,a1,a0
    44a0:	00042080 	sll	a0,a0,0x2
    44a4:	24630000 	addiu	v1,v1,0
    44a8:	00831821 	addu	v1,a0,v1
    44ac:	8c630000 	lw	v1,0(v1)
    44b0:	00000000 	sll	zero,zero,0x0
    44b4:	ac430000 	sw	v1,0(v0)
      statemt[8] = invSbox[statemt[8] >> 4][statemt[8] & 0xf];
    44b8:	8fc20010 	lw	v0,16(s8)
    44bc:	00000000 	sll	zero,zero,0x0
    44c0:	24420020 	addiu	v0,v0,32
    44c4:	8fc30010 	lw	v1,16(s8)
    44c8:	00000000 	sll	zero,zero,0x0
    44cc:	24630020 	addiu	v1,v1,32
    44d0:	8c630000 	lw	v1,0(v1)
    44d4:	00000000 	sll	zero,zero,0x0
    44d8:	00032903 	sra	a1,v1,0x4
    44dc:	8fc30010 	lw	v1,16(s8)
    44e0:	00000000 	sll	zero,zero,0x0
    44e4:	24630020 	addiu	v1,v1,32
    44e8:	8c630000 	lw	v1,0(v1)
    44ec:	00000000 	sll	zero,zero,0x0
    44f0:	3064000f 	andi	a0,v1,0xf
    44f4:	3c030000 	lui	v1,0x0
    44f8:	00052900 	sll	a1,a1,0x4
    44fc:	00a42021 	addu	a0,a1,a0
    4500:	00042080 	sll	a0,a0,0x2
    4504:	24630000 	addiu	v1,v1,0
    4508:	00831821 	addu	v1,a0,v1
    450c:	8c630000 	lw	v1,0(v1)
    4510:	00000000 	sll	zero,zero,0x0
    4514:	ac430000 	sw	v1,0(v0)
      statemt[12] = invSbox[statemt[12] >> 4][statemt[12] & 0xf];
    4518:	8fc20010 	lw	v0,16(s8)
    451c:	00000000 	sll	zero,zero,0x0
    4520:	24420030 	addiu	v0,v0,48
    4524:	8fc30010 	lw	v1,16(s8)
    4528:	00000000 	sll	zero,zero,0x0
    452c:	24630030 	addiu	v1,v1,48
    4530:	8c630000 	lw	v1,0(v1)
    4534:	00000000 	sll	zero,zero,0x0
    4538:	00032903 	sra	a1,v1,0x4
    453c:	8fc30010 	lw	v1,16(s8)
    4540:	00000000 	sll	zero,zero,0x0
    4544:	24630030 	addiu	v1,v1,48
    4548:	8c630000 	lw	v1,0(v1)
    454c:	00000000 	sll	zero,zero,0x0
    4550:	3064000f 	andi	a0,v1,0xf
    4554:	3c030000 	lui	v1,0x0
    4558:	00052900 	sll	a1,a1,0x4
    455c:	00a42021 	addu	a0,a1,a0
    4560:	00042080 	sll	a0,a0,0x2
    4564:	24630000 	addiu	v1,v1,0
    4568:	00831821 	addu	v1,a0,v1
    456c:	8c630000 	lw	v1,0(v1)
    4570:	00000000 	sll	zero,zero,0x0
    4574:	ac430000 	sw	v1,0(v0)
      statemt[16] = invSbox[statemt[16] >> 4][statemt[16] & 0xf];
    4578:	8fc20010 	lw	v0,16(s8)
    457c:	00000000 	sll	zero,zero,0x0
    4580:	24420040 	addiu	v0,v0,64
    4584:	8fc30010 	lw	v1,16(s8)
    4588:	00000000 	sll	zero,zero,0x0
    458c:	24630040 	addiu	v1,v1,64
    4590:	8c630000 	lw	v1,0(v1)
    4594:	00000000 	sll	zero,zero,0x0
    4598:	00032903 	sra	a1,v1,0x4
    459c:	8fc30010 	lw	v1,16(s8)
    45a0:	00000000 	sll	zero,zero,0x0
    45a4:	24630040 	addiu	v1,v1,64
    45a8:	8c630000 	lw	v1,0(v1)
    45ac:	00000000 	sll	zero,zero,0x0
    45b0:	3064000f 	andi	a0,v1,0xf
    45b4:	3c030000 	lui	v1,0x0
    45b8:	00052900 	sll	a1,a1,0x4
    45bc:	00a42021 	addu	a0,a1,a0
    45c0:	00042080 	sll	a0,a0,0x2
    45c4:	24630000 	addiu	v1,v1,0
    45c8:	00831821 	addu	v1,a0,v1
    45cc:	8c630000 	lw	v1,0(v1)
    45d0:	00000000 	sll	zero,zero,0x0
    45d4:	ac430000 	sw	v1,0(v0)
      statemt[20] = invSbox[statemt[20] >> 4][statemt[20] & 0xf];
    45d8:	8fc20010 	lw	v0,16(s8)
    45dc:	00000000 	sll	zero,zero,0x0
    45e0:	24420050 	addiu	v0,v0,80
    45e4:	8fc30010 	lw	v1,16(s8)
    45e8:	00000000 	sll	zero,zero,0x0
    45ec:	24630050 	addiu	v1,v1,80
    45f0:	8c630000 	lw	v1,0(v1)
    45f4:	00000000 	sll	zero,zero,0x0
    45f8:	00032903 	sra	a1,v1,0x4
    45fc:	8fc30010 	lw	v1,16(s8)
    4600:	00000000 	sll	zero,zero,0x0
    4604:	24630050 	addiu	v1,v1,80
    4608:	8c630000 	lw	v1,0(v1)
    460c:	00000000 	sll	zero,zero,0x0
    4610:	3064000f 	andi	a0,v1,0xf
    4614:	3c030000 	lui	v1,0x0
    4618:	00052900 	sll	a1,a1,0x4
    461c:	00a42021 	addu	a0,a1,a0
    4620:	00042080 	sll	a0,a0,0x2
    4624:	24630000 	addiu	v1,v1,0
    4628:	00831821 	addu	v1,a0,v1
    462c:	8c630000 	lw	v1,0(v1)
    4630:	00000000 	sll	zero,zero,0x0
    4634:	ac430000 	sw	v1,0(v0)
      statemt[24] = invSbox[statemt[24] >> 4][statemt[24] & 0xf];
    4638:	8fc20010 	lw	v0,16(s8)
    463c:	00000000 	sll	zero,zero,0x0
    4640:	24420060 	addiu	v0,v0,96
    4644:	8fc30010 	lw	v1,16(s8)
    4648:	00000000 	sll	zero,zero,0x0
    464c:	24630060 	addiu	v1,v1,96
    4650:	8c630000 	lw	v1,0(v1)
    4654:	00000000 	sll	zero,zero,0x0
    4658:	00032903 	sra	a1,v1,0x4
    465c:	8fc30010 	lw	v1,16(s8)
    4660:	00000000 	sll	zero,zero,0x0
    4664:	24630060 	addiu	v1,v1,96
    4668:	8c630000 	lw	v1,0(v1)
    466c:	00000000 	sll	zero,zero,0x0
    4670:	3064000f 	andi	a0,v1,0xf
    4674:	3c030000 	lui	v1,0x0
    4678:	00052900 	sll	a1,a1,0x4
    467c:	00a42021 	addu	a0,a1,a0
    4680:	00042080 	sll	a0,a0,0x2
    4684:	24630000 	addiu	v1,v1,0
    4688:	00831821 	addu	v1,a0,v1
    468c:	8c630000 	lw	v1,0(v1)
    4690:	00000000 	sll	zero,zero,0x0
    4694:	ac430000 	sw	v1,0(v0)
      statemt[28] = invSbox[statemt[28] >> 4][statemt[28] & 0xf];
    4698:	8fc20010 	lw	v0,16(s8)
    469c:	00000000 	sll	zero,zero,0x0
    46a0:	24420070 	addiu	v0,v0,112
    46a4:	8fc30010 	lw	v1,16(s8)
    46a8:	00000000 	sll	zero,zero,0x0
    46ac:	24630070 	addiu	v1,v1,112
    46b0:	8c630000 	lw	v1,0(v1)
    46b4:	00000000 	sll	zero,zero,0x0
    46b8:	00032903 	sra	a1,v1,0x4
    46bc:	8fc30010 	lw	v1,16(s8)
    46c0:	00000000 	sll	zero,zero,0x0
    46c4:	24630070 	addiu	v1,v1,112
    46c8:	8c630000 	lw	v1,0(v1)
    46cc:	00000000 	sll	zero,zero,0x0
    46d0:	3064000f 	andi	a0,v1,0xf
    46d4:	3c030000 	lui	v1,0x0
    46d8:	00052900 	sll	a1,a1,0x4
    46dc:	00a42021 	addu	a0,a1,a0
    46e0:	00042080 	sll	a0,a0,0x2
    46e4:	24630000 	addiu	v1,v1,0
    46e8:	00831821 	addu	v1,a0,v1
    46ec:	8c630000 	lw	v1,0(v1)
    46f0:	00000000 	sll	zero,zero,0x0
    46f4:	ac430000 	sw	v1,0(v0)
      break;
    46f8:	00000000 	sll	zero,zero,0x0
    }
}
    46fc:	03c0e821 	addu	sp,s8,zero
    4700:	8fbe000c 	lw	s8,12(sp)
    4704:	27bd0010 	addiu	sp,sp,16
    4708:	03e00008 	jr	ra
    470c:	00000000 	sll	zero,zero,0x0

00004710 <MixColumn_AddRoundKey>:

/* ******** MixColumn ********** */
int
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
    4710:	27bdff70 	addiu	sp,sp,-144
    4714:	afbe008c 	sw	s8,140(sp)
    4718:	afb00088 	sw	s0,136(sp)
    471c:	03a0f021 	addu	s8,sp,zero
    4720:	afc40090 	sw	a0,144(s8)
    4724:	afc50094 	sw	a1,148(s8)
    4728:	afc60098 	sw	a2,152(s8)
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    472c:	afc00000 	sw	zero,0(s8)
    4730:	080013ff 	j	4ffc <MixColumn_AddRoundKey+0x8ec>
    4734:	00000000 	sll	zero,zero,0x0
    {
      ret[j * 4] = (statemt[j * 4] << 1);
    4738:	8fc20000 	lw	v0,0(s8)
    473c:	00000000 	sll	zero,zero,0x0
    4740:	00021080 	sll	v0,v0,0x2
    4744:	8fc30000 	lw	v1,0(s8)
    4748:	00000000 	sll	zero,zero,0x0
    474c:	00031900 	sll	v1,v1,0x4
    4750:	8fc40090 	lw	a0,144(s8)
    4754:	00000000 	sll	zero,zero,0x0
    4758:	00831821 	addu	v1,a0,v1
    475c:	8c630000 	lw	v1,0(v1)
    4760:	00000000 	sll	zero,zero,0x0
    4764:	00031840 	sll	v1,v1,0x1
    4768:	00021080 	sll	v0,v0,0x2
    476c:	03c21021 	addu	v0,s8,v0
    4770:	ac430004 	sw	v1,4(v0)
      if ((ret[j * 4] >> 8) == 1)
    4774:	8fc20000 	lw	v0,0(s8)
    4778:	00000000 	sll	zero,zero,0x0
    477c:	00021080 	sll	v0,v0,0x2
    4780:	00021080 	sll	v0,v0,0x2
    4784:	03c21021 	addu	v0,s8,v0
    4788:	8c420004 	lw	v0,4(v0)
    478c:	00000000 	sll	zero,zero,0x0
    4790:	00021a03 	sra	v1,v0,0x8
    4794:	24020001 	addiu	v0,zero,1
    4798:	1462000f 	bne	v1,v0,47d8 <MixColumn_AddRoundKey+0xc8>
    479c:	00000000 	sll	zero,zero,0x0
	ret[j * 4] ^= 283;
    47a0:	8fc20000 	lw	v0,0(s8)
    47a4:	00000000 	sll	zero,zero,0x0
    47a8:	00022080 	sll	a0,v0,0x2
    47ac:	8fc20000 	lw	v0,0(s8)
    47b0:	00000000 	sll	zero,zero,0x0
    47b4:	00021080 	sll	v0,v0,0x2
    47b8:	00021080 	sll	v0,v0,0x2
    47bc:	03c21021 	addu	v0,s8,v0
    47c0:	8c420004 	lw	v0,4(v0)
    47c4:	00000000 	sll	zero,zero,0x0
    47c8:	3843011b 	xori	v1,v0,0x11b
    47cc:	00041080 	sll	v0,a0,0x2
    47d0:	03c21021 	addu	v0,s8,v0
    47d4:	ac430004 	sw	v1,4(v0)
      x = statemt[1 + j * 4];
    47d8:	8fc20000 	lw	v0,0(s8)
    47dc:	00000000 	sll	zero,zero,0x0
    47e0:	00021100 	sll	v0,v0,0x4
    47e4:	24420004 	addiu	v0,v0,4
    47e8:	8fc30090 	lw	v1,144(s8)
    47ec:	00000000 	sll	zero,zero,0x0
    47f0:	00621021 	addu	v0,v1,v0
    47f4:	8c500000 	lw	s0,0(v0)
    47f8:	00000000 	sll	zero,zero,0x0
      x ^= (x << 1);
    47fc:	00101040 	sll	v0,s0,0x1
    4800:	02028026 	xor	s0,s0,v0
      if ((x >> 8) == 1)
    4804:	00101a03 	sra	v1,s0,0x8
    4808:	24020001 	addiu	v0,zero,1
    480c:	14620011 	bne	v1,v0,4854 <MixColumn_AddRoundKey+0x144>
    4810:	00000000 	sll	zero,zero,0x0
	ret[j * 4] ^= (x ^ 283);
    4814:	8fc20000 	lw	v0,0(s8)
    4818:	00000000 	sll	zero,zero,0x0
    481c:	00022080 	sll	a0,v0,0x2
    4820:	8fc20000 	lw	v0,0(s8)
    4824:	00000000 	sll	zero,zero,0x0
    4828:	00021080 	sll	v0,v0,0x2
    482c:	00021080 	sll	v0,v0,0x2
    4830:	03c21021 	addu	v0,s8,v0
    4834:	8c430004 	lw	v1,4(v0)
    4838:	3a02011b 	xori	v0,s0,0x11b
    483c:	00621826 	xor	v1,v1,v0
    4840:	00041080 	sll	v0,a0,0x2
    4844:	03c21021 	addu	v0,s8,v0
    4848:	ac430004 	sw	v1,4(v0)
    484c:	08001223 	j	488c <MixColumn_AddRoundKey+0x17c>
    4850:	00000000 	sll	zero,zero,0x0
      else
	ret[j * 4] ^= x;
    4854:	8fc20000 	lw	v0,0(s8)
    4858:	00000000 	sll	zero,zero,0x0
    485c:	00022080 	sll	a0,v0,0x2
    4860:	8fc20000 	lw	v0,0(s8)
    4864:	00000000 	sll	zero,zero,0x0
    4868:	00021080 	sll	v0,v0,0x2
    486c:	00021080 	sll	v0,v0,0x2
    4870:	03c21021 	addu	v0,s8,v0
    4874:	8c420004 	lw	v0,4(v0)
    4878:	00000000 	sll	zero,zero,0x0
    487c:	00501826 	xor	v1,v0,s0
    4880:	00041080 	sll	v0,a0,0x2
    4884:	03c21021 	addu	v0,s8,v0
    4888:	ac430004 	sw	v1,4(v0)
      ret[j * 4] ^=
    488c:	8fc20000 	lw	v0,0(s8)
    4890:	00000000 	sll	zero,zero,0x0
    4894:	00022080 	sll	a0,v0,0x2
    4898:	8fc20000 	lw	v0,0(s8)
    489c:	00000000 	sll	zero,zero,0x0
    48a0:	00021080 	sll	v0,v0,0x2
    48a4:	00021080 	sll	v0,v0,0x2
    48a8:	03c21021 	addu	v0,s8,v0
    48ac:	8c430004 	lw	v1,4(v0)
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];
    48b0:	8fc20000 	lw	v0,0(s8)
    48b4:	00000000 	sll	zero,zero,0x0
    48b8:	00021100 	sll	v0,v0,0x4
    48bc:	24420008 	addiu	v0,v0,8
    48c0:	8fc50090 	lw	a1,144(s8)
    48c4:	00000000 	sll	zero,zero,0x0
    48c8:	00a21021 	addu	v0,a1,v0
    48cc:	8c450000 	lw	a1,0(v0)
    48d0:	8fc20000 	lw	v0,0(s8)
    48d4:	00000000 	sll	zero,zero,0x0
    48d8:	00021100 	sll	v0,v0,0x4
    48dc:	2442000c 	addiu	v0,v0,12
    48e0:	8fc60090 	lw	a2,144(s8)
    48e4:	00000000 	sll	zero,zero,0x0
    48e8:	00c21021 	addu	v0,a2,v0
    48ec:	8c420000 	lw	v0,0(v0)
    48f0:	00000000 	sll	zero,zero,0x0
    48f4:	00a22826 	xor	a1,a1,v0
    48f8:	8fc60094 	lw	a2,148(s8)
    48fc:	8fc20098 	lw	v0,152(s8)
    4900:	00000000 	sll	zero,zero,0x0
    4904:	00c20018 	mult	a2,v0
    4908:	00003012 	mflo	a2
    490c:	8fc20000 	lw	v0,0(s8)
    4910:	00000000 	sll	zero,zero,0x0
    4914:	00c23021 	addu	a2,a2,v0
    4918:	3c020000 	lui	v0,0x0
    491c:	00063080 	sll	a2,a2,0x2
    4920:	24420000 	addiu	v0,v0,0
    4924:	00c21021 	addu	v0,a2,v0
    4928:	8c420000 	lw	v0,0(v0)
    492c:	00000000 	sll	zero,zero,0x0
    4930:	00a21026 	xor	v0,a1,v0
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[j * 4] ^= (x ^ 283);
      else
	ret[j * 4] ^= x;
      ret[j * 4] ^=
    4934:	00621826 	xor	v1,v1,v0
    4938:	00041080 	sll	v0,a0,0x2
    493c:	03c21021 	addu	v0,s8,v0
    4940:	ac430004 	sw	v1,4(v0)
	statemt[2 + j * 4] ^ statemt[3 + j * 4] ^ word[0][j + nb * n];

      ret[1 + j * 4] = (statemt[1 + j * 4] << 1);
    4944:	8fc20000 	lw	v0,0(s8)
    4948:	00000000 	sll	zero,zero,0x0
    494c:	00021080 	sll	v0,v0,0x2
    4950:	24420001 	addiu	v0,v0,1
    4954:	8fc30000 	lw	v1,0(s8)
    4958:	00000000 	sll	zero,zero,0x0
    495c:	00031900 	sll	v1,v1,0x4
    4960:	24630004 	addiu	v1,v1,4
    4964:	8fc40090 	lw	a0,144(s8)
    4968:	00000000 	sll	zero,zero,0x0
    496c:	00831821 	addu	v1,a0,v1
    4970:	8c630000 	lw	v1,0(v1)
    4974:	00000000 	sll	zero,zero,0x0
    4978:	00031840 	sll	v1,v1,0x1
    497c:	00021080 	sll	v0,v0,0x2
    4980:	03c21021 	addu	v0,s8,v0
    4984:	ac430004 	sw	v1,4(v0)
      if ((ret[1 + j * 4] >> 8) == 1)
    4988:	8fc20000 	lw	v0,0(s8)
    498c:	00000000 	sll	zero,zero,0x0
    4990:	00021080 	sll	v0,v0,0x2
    4994:	24420001 	addiu	v0,v0,1
    4998:	00021080 	sll	v0,v0,0x2
    499c:	03c21021 	addu	v0,s8,v0
    49a0:	8c420004 	lw	v0,4(v0)
    49a4:	00000000 	sll	zero,zero,0x0
    49a8:	00021a03 	sra	v1,v0,0x8
    49ac:	24020001 	addiu	v0,zero,1
    49b0:	14620011 	bne	v1,v0,49f8 <MixColumn_AddRoundKey+0x2e8>
    49b4:	00000000 	sll	zero,zero,0x0
	ret[1 + j * 4] ^= 283;
    49b8:	8fc20000 	lw	v0,0(s8)
    49bc:	00000000 	sll	zero,zero,0x0
    49c0:	00021080 	sll	v0,v0,0x2
    49c4:	24440001 	addiu	a0,v0,1
    49c8:	8fc20000 	lw	v0,0(s8)
    49cc:	00000000 	sll	zero,zero,0x0
    49d0:	00021080 	sll	v0,v0,0x2
    49d4:	24420001 	addiu	v0,v0,1
    49d8:	00021080 	sll	v0,v0,0x2
    49dc:	03c21021 	addu	v0,s8,v0
    49e0:	8c420004 	lw	v0,4(v0)
    49e4:	00000000 	sll	zero,zero,0x0
    49e8:	3843011b 	xori	v1,v0,0x11b
    49ec:	00041080 	sll	v0,a0,0x2
    49f0:	03c21021 	addu	v0,s8,v0
    49f4:	ac430004 	sw	v1,4(v0)
      x = statemt[2 + j * 4];
    49f8:	8fc20000 	lw	v0,0(s8)
    49fc:	00000000 	sll	zero,zero,0x0
    4a00:	00021100 	sll	v0,v0,0x4
    4a04:	24420008 	addiu	v0,v0,8
    4a08:	8fc30090 	lw	v1,144(s8)
    4a0c:	00000000 	sll	zero,zero,0x0
    4a10:	00621021 	addu	v0,v1,v0
    4a14:	8c500000 	lw	s0,0(v0)
    4a18:	00000000 	sll	zero,zero,0x0
      x ^= (x << 1);
    4a1c:	00101040 	sll	v0,s0,0x1
    4a20:	02028026 	xor	s0,s0,v0
      if ((x >> 8) == 1)
    4a24:	00101a03 	sra	v1,s0,0x8
    4a28:	24020001 	addiu	v0,zero,1
    4a2c:	14620013 	bne	v1,v0,4a7c <MixColumn_AddRoundKey+0x36c>
    4a30:	00000000 	sll	zero,zero,0x0
	ret[1 + j * 4] ^= (x ^ 283);
    4a34:	8fc20000 	lw	v0,0(s8)
    4a38:	00000000 	sll	zero,zero,0x0
    4a3c:	00021080 	sll	v0,v0,0x2
    4a40:	24440001 	addiu	a0,v0,1
    4a44:	8fc20000 	lw	v0,0(s8)
    4a48:	00000000 	sll	zero,zero,0x0
    4a4c:	00021080 	sll	v0,v0,0x2
    4a50:	24420001 	addiu	v0,v0,1
    4a54:	00021080 	sll	v0,v0,0x2
    4a58:	03c21021 	addu	v0,s8,v0
    4a5c:	8c430004 	lw	v1,4(v0)
    4a60:	3a02011b 	xori	v0,s0,0x11b
    4a64:	00621826 	xor	v1,v1,v0
    4a68:	00041080 	sll	v0,a0,0x2
    4a6c:	03c21021 	addu	v0,s8,v0
    4a70:	ac430004 	sw	v1,4(v0)
    4a74:	080012af 	j	4abc <MixColumn_AddRoundKey+0x3ac>
    4a78:	00000000 	sll	zero,zero,0x0
      else
	ret[1 + j * 4] ^= x;
    4a7c:	8fc20000 	lw	v0,0(s8)
    4a80:	00000000 	sll	zero,zero,0x0
    4a84:	00021080 	sll	v0,v0,0x2
    4a88:	24440001 	addiu	a0,v0,1
    4a8c:	8fc20000 	lw	v0,0(s8)
    4a90:	00000000 	sll	zero,zero,0x0
    4a94:	00021080 	sll	v0,v0,0x2
    4a98:	24420001 	addiu	v0,v0,1
    4a9c:	00021080 	sll	v0,v0,0x2
    4aa0:	03c21021 	addu	v0,s8,v0
    4aa4:	8c420004 	lw	v0,4(v0)
    4aa8:	00000000 	sll	zero,zero,0x0
    4aac:	00501826 	xor	v1,v0,s0
    4ab0:	00041080 	sll	v0,a0,0x2
    4ab4:	03c21021 	addu	v0,s8,v0
    4ab8:	ac430004 	sw	v1,4(v0)
      ret[1 + j * 4] ^=
    4abc:	8fc20000 	lw	v0,0(s8)
    4ac0:	00000000 	sll	zero,zero,0x0
    4ac4:	00021080 	sll	v0,v0,0x2
    4ac8:	24440001 	addiu	a0,v0,1
    4acc:	8fc20000 	lw	v0,0(s8)
    4ad0:	00000000 	sll	zero,zero,0x0
    4ad4:	00021080 	sll	v0,v0,0x2
    4ad8:	24420001 	addiu	v0,v0,1
    4adc:	00021080 	sll	v0,v0,0x2
    4ae0:	03c21021 	addu	v0,s8,v0
    4ae4:	8c430004 	lw	v1,4(v0)
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];
    4ae8:	8fc20000 	lw	v0,0(s8)
    4aec:	00000000 	sll	zero,zero,0x0
    4af0:	00021100 	sll	v0,v0,0x4
    4af4:	2442000c 	addiu	v0,v0,12
    4af8:	8fc50090 	lw	a1,144(s8)
    4afc:	00000000 	sll	zero,zero,0x0
    4b00:	00a21021 	addu	v0,a1,v0
    4b04:	8c450000 	lw	a1,0(v0)
    4b08:	8fc20000 	lw	v0,0(s8)
    4b0c:	00000000 	sll	zero,zero,0x0
    4b10:	00021100 	sll	v0,v0,0x4
    4b14:	8fc60090 	lw	a2,144(s8)
    4b18:	00000000 	sll	zero,zero,0x0
    4b1c:	00c21021 	addu	v0,a2,v0
    4b20:	8c420000 	lw	v0,0(v0)
    4b24:	00000000 	sll	zero,zero,0x0
    4b28:	00a22826 	xor	a1,a1,v0
    4b2c:	8fc60094 	lw	a2,148(s8)
    4b30:	8fc20098 	lw	v0,152(s8)
    4b34:	00000000 	sll	zero,zero,0x0
    4b38:	00c20018 	mult	a2,v0
    4b3c:	00003012 	mflo	a2
    4b40:	8fc20000 	lw	v0,0(s8)
    4b44:	00000000 	sll	zero,zero,0x0
    4b48:	00c23021 	addu	a2,a2,v0
    4b4c:	3c020000 	lui	v0,0x0
    4b50:	24c60078 	addiu	a2,a2,120
    4b54:	00063080 	sll	a2,a2,0x2
    4b58:	24420000 	addiu	v0,v0,0
    4b5c:	00c21021 	addu	v0,a2,v0
    4b60:	8c420000 	lw	v0,0(v0)
    4b64:	00000000 	sll	zero,zero,0x0
    4b68:	00a21026 	xor	v0,a1,v0
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[1 + j * 4] ^= (x ^ 283);
      else
	ret[1 + j * 4] ^= x;
      ret[1 + j * 4] ^=
    4b6c:	00621826 	xor	v1,v1,v0
    4b70:	00041080 	sll	v0,a0,0x2
    4b74:	03c21021 	addu	v0,s8,v0
    4b78:	ac430004 	sw	v1,4(v0)
	statemt[3 + j * 4] ^ statemt[j * 4] ^ word[1][j + nb * n];

      ret[2 + j * 4] = (statemt[2 + j * 4] << 1);
    4b7c:	8fc20000 	lw	v0,0(s8)
    4b80:	00000000 	sll	zero,zero,0x0
    4b84:	00021080 	sll	v0,v0,0x2
    4b88:	24420002 	addiu	v0,v0,2
    4b8c:	8fc30000 	lw	v1,0(s8)
    4b90:	00000000 	sll	zero,zero,0x0
    4b94:	00031900 	sll	v1,v1,0x4
    4b98:	24630008 	addiu	v1,v1,8
    4b9c:	8fc40090 	lw	a0,144(s8)
    4ba0:	00000000 	sll	zero,zero,0x0
    4ba4:	00831821 	addu	v1,a0,v1
    4ba8:	8c630000 	lw	v1,0(v1)
    4bac:	00000000 	sll	zero,zero,0x0
    4bb0:	00031840 	sll	v1,v1,0x1
    4bb4:	00021080 	sll	v0,v0,0x2
    4bb8:	03c21021 	addu	v0,s8,v0
    4bbc:	ac430004 	sw	v1,4(v0)
      if ((ret[2 + j * 4] >> 8) == 1)
    4bc0:	8fc20000 	lw	v0,0(s8)
    4bc4:	00000000 	sll	zero,zero,0x0
    4bc8:	00021080 	sll	v0,v0,0x2
    4bcc:	24420002 	addiu	v0,v0,2
    4bd0:	00021080 	sll	v0,v0,0x2
    4bd4:	03c21021 	addu	v0,s8,v0
    4bd8:	8c420004 	lw	v0,4(v0)
    4bdc:	00000000 	sll	zero,zero,0x0
    4be0:	00021a03 	sra	v1,v0,0x8
    4be4:	24020001 	addiu	v0,zero,1
    4be8:	14620011 	bne	v1,v0,4c30 <MixColumn_AddRoundKey+0x520>
    4bec:	00000000 	sll	zero,zero,0x0
	ret[2 + j * 4] ^= 283;
    4bf0:	8fc20000 	lw	v0,0(s8)
    4bf4:	00000000 	sll	zero,zero,0x0
    4bf8:	00021080 	sll	v0,v0,0x2
    4bfc:	24440002 	addiu	a0,v0,2
    4c00:	8fc20000 	lw	v0,0(s8)
    4c04:	00000000 	sll	zero,zero,0x0
    4c08:	00021080 	sll	v0,v0,0x2
    4c0c:	24420002 	addiu	v0,v0,2
    4c10:	00021080 	sll	v0,v0,0x2
    4c14:	03c21021 	addu	v0,s8,v0
    4c18:	8c420004 	lw	v0,4(v0)
    4c1c:	00000000 	sll	zero,zero,0x0
    4c20:	3843011b 	xori	v1,v0,0x11b
    4c24:	00041080 	sll	v0,a0,0x2
    4c28:	03c21021 	addu	v0,s8,v0
    4c2c:	ac430004 	sw	v1,4(v0)
      x = statemt[3 + j * 4];
    4c30:	8fc20000 	lw	v0,0(s8)
    4c34:	00000000 	sll	zero,zero,0x0
    4c38:	00021100 	sll	v0,v0,0x4
    4c3c:	2442000c 	addiu	v0,v0,12
    4c40:	8fc30090 	lw	v1,144(s8)
    4c44:	00000000 	sll	zero,zero,0x0
    4c48:	00621021 	addu	v0,v1,v0
    4c4c:	8c500000 	lw	s0,0(v0)
    4c50:	00000000 	sll	zero,zero,0x0
      x ^= (x << 1);
    4c54:	00101040 	sll	v0,s0,0x1
    4c58:	02028026 	xor	s0,s0,v0
      if ((x >> 8) == 1)
    4c5c:	00101a03 	sra	v1,s0,0x8
    4c60:	24020001 	addiu	v0,zero,1
    4c64:	14620013 	bne	v1,v0,4cb4 <MixColumn_AddRoundKey+0x5a4>
    4c68:	00000000 	sll	zero,zero,0x0
	ret[2 + j * 4] ^= (x ^ 283);
    4c6c:	8fc20000 	lw	v0,0(s8)
    4c70:	00000000 	sll	zero,zero,0x0
    4c74:	00021080 	sll	v0,v0,0x2
    4c78:	24440002 	addiu	a0,v0,2
    4c7c:	8fc20000 	lw	v0,0(s8)
    4c80:	00000000 	sll	zero,zero,0x0
    4c84:	00021080 	sll	v0,v0,0x2
    4c88:	24420002 	addiu	v0,v0,2
    4c8c:	00021080 	sll	v0,v0,0x2
    4c90:	03c21021 	addu	v0,s8,v0
    4c94:	8c430004 	lw	v1,4(v0)
    4c98:	3a02011b 	xori	v0,s0,0x11b
    4c9c:	00621826 	xor	v1,v1,v0
    4ca0:	00041080 	sll	v0,a0,0x2
    4ca4:	03c21021 	addu	v0,s8,v0
    4ca8:	ac430004 	sw	v1,4(v0)
    4cac:	0800133d 	j	4cf4 <MixColumn_AddRoundKey+0x5e4>
    4cb0:	00000000 	sll	zero,zero,0x0
      else
	ret[2 + j * 4] ^= x;
    4cb4:	8fc20000 	lw	v0,0(s8)
    4cb8:	00000000 	sll	zero,zero,0x0
    4cbc:	00021080 	sll	v0,v0,0x2
    4cc0:	24440002 	addiu	a0,v0,2
    4cc4:	8fc20000 	lw	v0,0(s8)
    4cc8:	00000000 	sll	zero,zero,0x0
    4ccc:	00021080 	sll	v0,v0,0x2
    4cd0:	24420002 	addiu	v0,v0,2
    4cd4:	00021080 	sll	v0,v0,0x2
    4cd8:	03c21021 	addu	v0,s8,v0
    4cdc:	8c420004 	lw	v0,4(v0)
    4ce0:	00000000 	sll	zero,zero,0x0
    4ce4:	00501826 	xor	v1,v0,s0
    4ce8:	00041080 	sll	v0,a0,0x2
    4cec:	03c21021 	addu	v0,s8,v0
    4cf0:	ac430004 	sw	v1,4(v0)
      ret[2 + j * 4] ^=
    4cf4:	8fc20000 	lw	v0,0(s8)
    4cf8:	00000000 	sll	zero,zero,0x0
    4cfc:	00021080 	sll	v0,v0,0x2
    4d00:	24440002 	addiu	a0,v0,2
    4d04:	8fc20000 	lw	v0,0(s8)
    4d08:	00000000 	sll	zero,zero,0x0
    4d0c:	00021080 	sll	v0,v0,0x2
    4d10:	24420002 	addiu	v0,v0,2
    4d14:	00021080 	sll	v0,v0,0x2
    4d18:	03c21021 	addu	v0,s8,v0
    4d1c:	8c430004 	lw	v1,4(v0)
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];
    4d20:	8fc20000 	lw	v0,0(s8)
    4d24:	00000000 	sll	zero,zero,0x0
    4d28:	00021100 	sll	v0,v0,0x4
    4d2c:	8fc50090 	lw	a1,144(s8)
    4d30:	00000000 	sll	zero,zero,0x0
    4d34:	00a21021 	addu	v0,a1,v0
    4d38:	8c450000 	lw	a1,0(v0)
    4d3c:	8fc20000 	lw	v0,0(s8)
    4d40:	00000000 	sll	zero,zero,0x0
    4d44:	00021100 	sll	v0,v0,0x4
    4d48:	24420004 	addiu	v0,v0,4
    4d4c:	8fc60090 	lw	a2,144(s8)
    4d50:	00000000 	sll	zero,zero,0x0
    4d54:	00c21021 	addu	v0,a2,v0
    4d58:	8c420000 	lw	v0,0(v0)
    4d5c:	00000000 	sll	zero,zero,0x0
    4d60:	00a22826 	xor	a1,a1,v0
    4d64:	8fc60094 	lw	a2,148(s8)
    4d68:	8fc20098 	lw	v0,152(s8)
    4d6c:	00000000 	sll	zero,zero,0x0
    4d70:	00c20018 	mult	a2,v0
    4d74:	00003012 	mflo	a2
    4d78:	8fc20000 	lw	v0,0(s8)
    4d7c:	00000000 	sll	zero,zero,0x0
    4d80:	00c23021 	addu	a2,a2,v0
    4d84:	3c020000 	lui	v0,0x0
    4d88:	24c600f0 	addiu	a2,a2,240
    4d8c:	00063080 	sll	a2,a2,0x2
    4d90:	24420000 	addiu	v0,v0,0
    4d94:	00c21021 	addu	v0,a2,v0
    4d98:	8c420000 	lw	v0,0(v0)
    4d9c:	00000000 	sll	zero,zero,0x0
    4da0:	00a21026 	xor	v0,a1,v0
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[2 + j * 4] ^= (x ^ 283);
      else
	ret[2 + j * 4] ^= x;
      ret[2 + j * 4] ^=
    4da4:	00621826 	xor	v1,v1,v0
    4da8:	00041080 	sll	v0,a0,0x2
    4dac:	03c21021 	addu	v0,s8,v0
    4db0:	ac430004 	sw	v1,4(v0)
	statemt[j * 4] ^ statemt[1 + j * 4] ^ word[2][j + nb * n];

      ret[3 + j * 4] = (statemt[3 + j * 4] << 1);
    4db4:	8fc20000 	lw	v0,0(s8)
    4db8:	00000000 	sll	zero,zero,0x0
    4dbc:	00021080 	sll	v0,v0,0x2
    4dc0:	24420003 	addiu	v0,v0,3
    4dc4:	8fc30000 	lw	v1,0(s8)
    4dc8:	00000000 	sll	zero,zero,0x0
    4dcc:	00031900 	sll	v1,v1,0x4
    4dd0:	2463000c 	addiu	v1,v1,12
    4dd4:	8fc40090 	lw	a0,144(s8)
    4dd8:	00000000 	sll	zero,zero,0x0
    4ddc:	00831821 	addu	v1,a0,v1
    4de0:	8c630000 	lw	v1,0(v1)
    4de4:	00000000 	sll	zero,zero,0x0
    4de8:	00031840 	sll	v1,v1,0x1
    4dec:	00021080 	sll	v0,v0,0x2
    4df0:	03c21021 	addu	v0,s8,v0
    4df4:	ac430004 	sw	v1,4(v0)
      if ((ret[3 + j * 4] >> 8) == 1)
    4df8:	8fc20000 	lw	v0,0(s8)
    4dfc:	00000000 	sll	zero,zero,0x0
    4e00:	00021080 	sll	v0,v0,0x2
    4e04:	24420003 	addiu	v0,v0,3
    4e08:	00021080 	sll	v0,v0,0x2
    4e0c:	03c21021 	addu	v0,s8,v0
    4e10:	8c420004 	lw	v0,4(v0)
    4e14:	00000000 	sll	zero,zero,0x0
    4e18:	00021a03 	sra	v1,v0,0x8
    4e1c:	24020001 	addiu	v0,zero,1
    4e20:	14620011 	bne	v1,v0,4e68 <MixColumn_AddRoundKey+0x758>
    4e24:	00000000 	sll	zero,zero,0x0
	ret[3 + j * 4] ^= 283;
    4e28:	8fc20000 	lw	v0,0(s8)
    4e2c:	00000000 	sll	zero,zero,0x0
    4e30:	00021080 	sll	v0,v0,0x2
    4e34:	24440003 	addiu	a0,v0,3
    4e38:	8fc20000 	lw	v0,0(s8)
    4e3c:	00000000 	sll	zero,zero,0x0
    4e40:	00021080 	sll	v0,v0,0x2
    4e44:	24420003 	addiu	v0,v0,3
    4e48:	00021080 	sll	v0,v0,0x2
    4e4c:	03c21021 	addu	v0,s8,v0
    4e50:	8c420004 	lw	v0,4(v0)
    4e54:	00000000 	sll	zero,zero,0x0
    4e58:	3843011b 	xori	v1,v0,0x11b
    4e5c:	00041080 	sll	v0,a0,0x2
    4e60:	03c21021 	addu	v0,s8,v0
    4e64:	ac430004 	sw	v1,4(v0)
      x = statemt[j * 4];
    4e68:	8fc20000 	lw	v0,0(s8)
    4e6c:	00000000 	sll	zero,zero,0x0
    4e70:	00021100 	sll	v0,v0,0x4
    4e74:	8fc30090 	lw	v1,144(s8)
    4e78:	00000000 	sll	zero,zero,0x0
    4e7c:	00621021 	addu	v0,v1,v0
    4e80:	8c500000 	lw	s0,0(v0)
    4e84:	00000000 	sll	zero,zero,0x0
      x ^= (x << 1);
    4e88:	00101040 	sll	v0,s0,0x1
    4e8c:	02028026 	xor	s0,s0,v0
      if ((x >> 8) == 1)
    4e90:	00101a03 	sra	v1,s0,0x8
    4e94:	24020001 	addiu	v0,zero,1
    4e98:	14620013 	bne	v1,v0,4ee8 <MixColumn_AddRoundKey+0x7d8>
    4e9c:	00000000 	sll	zero,zero,0x0
	ret[3 + j * 4] ^= (x ^ 283);
    4ea0:	8fc20000 	lw	v0,0(s8)
    4ea4:	00000000 	sll	zero,zero,0x0
    4ea8:	00021080 	sll	v0,v0,0x2
    4eac:	24440003 	addiu	a0,v0,3
    4eb0:	8fc20000 	lw	v0,0(s8)
    4eb4:	00000000 	sll	zero,zero,0x0
    4eb8:	00021080 	sll	v0,v0,0x2
    4ebc:	24420003 	addiu	v0,v0,3
    4ec0:	00021080 	sll	v0,v0,0x2
    4ec4:	03c21021 	addu	v0,s8,v0
    4ec8:	8c430004 	lw	v1,4(v0)
    4ecc:	3a02011b 	xori	v0,s0,0x11b
    4ed0:	00621826 	xor	v1,v1,v0
    4ed4:	00041080 	sll	v0,a0,0x2
    4ed8:	03c21021 	addu	v0,s8,v0
    4edc:	ac430004 	sw	v1,4(v0)
    4ee0:	080013ca 	j	4f28 <MixColumn_AddRoundKey+0x818>
    4ee4:	00000000 	sll	zero,zero,0x0
      else
	ret[3 + j * 4] ^= x;
    4ee8:	8fc20000 	lw	v0,0(s8)
    4eec:	00000000 	sll	zero,zero,0x0
    4ef0:	00021080 	sll	v0,v0,0x2
    4ef4:	24440003 	addiu	a0,v0,3
    4ef8:	8fc20000 	lw	v0,0(s8)
    4efc:	00000000 	sll	zero,zero,0x0
    4f00:	00021080 	sll	v0,v0,0x2
    4f04:	24420003 	addiu	v0,v0,3
    4f08:	00021080 	sll	v0,v0,0x2
    4f0c:	03c21021 	addu	v0,s8,v0
    4f10:	8c420004 	lw	v0,4(v0)
    4f14:	00000000 	sll	zero,zero,0x0
    4f18:	00501826 	xor	v1,v0,s0
    4f1c:	00041080 	sll	v0,a0,0x2
    4f20:	03c21021 	addu	v0,s8,v0
    4f24:	ac430004 	sw	v1,4(v0)
      ret[3 + j * 4] ^=
    4f28:	8fc20000 	lw	v0,0(s8)
    4f2c:	00000000 	sll	zero,zero,0x0
    4f30:	00021080 	sll	v0,v0,0x2
    4f34:	24440003 	addiu	a0,v0,3
    4f38:	8fc20000 	lw	v0,0(s8)
    4f3c:	00000000 	sll	zero,zero,0x0
    4f40:	00021080 	sll	v0,v0,0x2
    4f44:	24420003 	addiu	v0,v0,3
    4f48:	00021080 	sll	v0,v0,0x2
    4f4c:	03c21021 	addu	v0,s8,v0
    4f50:	8c430004 	lw	v1,4(v0)
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    4f54:	8fc20000 	lw	v0,0(s8)
    4f58:	00000000 	sll	zero,zero,0x0
    4f5c:	00021100 	sll	v0,v0,0x4
    4f60:	24420004 	addiu	v0,v0,4
    4f64:	8fc50090 	lw	a1,144(s8)
    4f68:	00000000 	sll	zero,zero,0x0
    4f6c:	00a21021 	addu	v0,a1,v0
    4f70:	8c450000 	lw	a1,0(v0)
    4f74:	8fc20000 	lw	v0,0(s8)
    4f78:	00000000 	sll	zero,zero,0x0
    4f7c:	00021100 	sll	v0,v0,0x4
    4f80:	24420008 	addiu	v0,v0,8
    4f84:	8fc60090 	lw	a2,144(s8)
    4f88:	00000000 	sll	zero,zero,0x0
    4f8c:	00c21021 	addu	v0,a2,v0
    4f90:	8c420000 	lw	v0,0(v0)
    4f94:	00000000 	sll	zero,zero,0x0
    4f98:	00a22826 	xor	a1,a1,v0
    4f9c:	8fc60094 	lw	a2,148(s8)
    4fa0:	8fc20098 	lw	v0,152(s8)
    4fa4:	00000000 	sll	zero,zero,0x0
    4fa8:	00c20018 	mult	a2,v0
    4fac:	00003012 	mflo	a2
    4fb0:	8fc20000 	lw	v0,0(s8)
    4fb4:	00000000 	sll	zero,zero,0x0
    4fb8:	00c23021 	addu	a2,a2,v0
    4fbc:	3c020000 	lui	v0,0x0
    4fc0:	24c60168 	addiu	a2,a2,360
    4fc4:	00063080 	sll	a2,a2,0x2
    4fc8:	24420000 	addiu	v0,v0,0
    4fcc:	00c21021 	addu	v0,a2,v0
    4fd0:	8c420000 	lw	v0,0(v0)
    4fd4:	00000000 	sll	zero,zero,0x0
    4fd8:	00a21026 	xor	v0,a1,v0
      x ^= (x << 1);
      if ((x >> 8) == 1)
	ret[3 + j * 4] ^= (x ^ 283);
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
    4fdc:	00621826 	xor	v1,v1,v0
    4fe0:	00041080 	sll	v0,a0,0x2
    4fe4:	03c21021 	addu	v0,s8,v0
    4fe8:	ac430004 	sw	v1,4(v0)
MixColumn_AddRoundKey (int statemt[32], int nb, int n)
{
  int ret[8 * 4], j;
  register int x;

  for (j = 0; j < nb; ++j)
    4fec:	8fc20000 	lw	v0,0(s8)
    4ff0:	00000000 	sll	zero,zero,0x0
    4ff4:	24420001 	addiu	v0,v0,1
    4ff8:	afc20000 	sw	v0,0(s8)
    4ffc:	8fc30000 	lw	v1,0(s8)
    5000:	8fc20094 	lw	v0,148(s8)
    5004:	00000000 	sll	zero,zero,0x0
    5008:	0062102a 	slt	v0,v1,v0
    500c:	1440fdca 	bnez	v0,4738 <MixColumn_AddRoundKey+0x28>
    5010:	00000000 	sll	zero,zero,0x0
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    5014:	afc00000 	sw	zero,0(s8)
    5018:	0800144a 	j	5128 <MixColumn_AddRoundKey+0xa18>
    501c:	00000000 	sll	zero,zero,0x0
    {
      statemt[j * 4] = ret[j * 4];
    5020:	8fc20000 	lw	v0,0(s8)
    5024:	00000000 	sll	zero,zero,0x0
    5028:	00021100 	sll	v0,v0,0x4
    502c:	8fc30090 	lw	v1,144(s8)
    5030:	00000000 	sll	zero,zero,0x0
    5034:	00621821 	addu	v1,v1,v0
    5038:	8fc20000 	lw	v0,0(s8)
    503c:	00000000 	sll	zero,zero,0x0
    5040:	00021080 	sll	v0,v0,0x2
    5044:	00021080 	sll	v0,v0,0x2
    5048:	03c21021 	addu	v0,s8,v0
    504c:	8c420004 	lw	v0,4(v0)
    5050:	00000000 	sll	zero,zero,0x0
    5054:	ac620000 	sw	v0,0(v1)
      statemt[1 + j * 4] = ret[1 + j * 4];
    5058:	8fc20000 	lw	v0,0(s8)
    505c:	00000000 	sll	zero,zero,0x0
    5060:	00021100 	sll	v0,v0,0x4
    5064:	24420004 	addiu	v0,v0,4
    5068:	8fc30090 	lw	v1,144(s8)
    506c:	00000000 	sll	zero,zero,0x0
    5070:	00621821 	addu	v1,v1,v0
    5074:	8fc20000 	lw	v0,0(s8)
    5078:	00000000 	sll	zero,zero,0x0
    507c:	00021080 	sll	v0,v0,0x2
    5080:	24420001 	addiu	v0,v0,1
    5084:	00021080 	sll	v0,v0,0x2
    5088:	03c21021 	addu	v0,s8,v0
    508c:	8c420004 	lw	v0,4(v0)
    5090:	00000000 	sll	zero,zero,0x0
    5094:	ac620000 	sw	v0,0(v1)
      statemt[2 + j * 4] = ret[2 + j * 4];
    5098:	8fc20000 	lw	v0,0(s8)
    509c:	00000000 	sll	zero,zero,0x0
    50a0:	00021100 	sll	v0,v0,0x4
    50a4:	24420008 	addiu	v0,v0,8
    50a8:	8fc30090 	lw	v1,144(s8)
    50ac:	00000000 	sll	zero,zero,0x0
    50b0:	00621821 	addu	v1,v1,v0
    50b4:	8fc20000 	lw	v0,0(s8)
    50b8:	00000000 	sll	zero,zero,0x0
    50bc:	00021080 	sll	v0,v0,0x2
    50c0:	24420002 	addiu	v0,v0,2
    50c4:	00021080 	sll	v0,v0,0x2
    50c8:	03c21021 	addu	v0,s8,v0
    50cc:	8c420004 	lw	v0,4(v0)
    50d0:	00000000 	sll	zero,zero,0x0
    50d4:	ac620000 	sw	v0,0(v1)
      statemt[3 + j * 4] = ret[3 + j * 4];
    50d8:	8fc20000 	lw	v0,0(s8)
    50dc:	00000000 	sll	zero,zero,0x0
    50e0:	00021100 	sll	v0,v0,0x4
    50e4:	2442000c 	addiu	v0,v0,12
    50e8:	8fc30090 	lw	v1,144(s8)
    50ec:	00000000 	sll	zero,zero,0x0
    50f0:	00621821 	addu	v1,v1,v0
    50f4:	8fc20000 	lw	v0,0(s8)
    50f8:	00000000 	sll	zero,zero,0x0
    50fc:	00021080 	sll	v0,v0,0x2
    5100:	24420003 	addiu	v0,v0,3
    5104:	00021080 	sll	v0,v0,0x2
    5108:	03c21021 	addu	v0,s8,v0
    510c:	8c420004 	lw	v0,4(v0)
    5110:	00000000 	sll	zero,zero,0x0
    5114:	ac620000 	sw	v0,0(v1)
      else
	ret[3 + j * 4] ^= x;
      ret[3 + j * 4] ^=
	statemt[1 + j * 4] ^ statemt[2 + j * 4] ^ word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    5118:	8fc20000 	lw	v0,0(s8)
    511c:	00000000 	sll	zero,zero,0x0
    5120:	24420001 	addiu	v0,v0,1
    5124:	afc20000 	sw	v0,0(s8)
    5128:	8fc30000 	lw	v1,0(s8)
    512c:	8fc20094 	lw	v0,148(s8)
    5130:	00000000 	sll	zero,zero,0x0
    5134:	0062102a 	slt	v0,v1,v0
    5138:	1440ffb9 	bnez	v0,5020 <MixColumn_AddRoundKey+0x910>
    513c:	00000000 	sll	zero,zero,0x0
      statemt[j * 4] = ret[j * 4];
      statemt[1 + j * 4] = ret[1 + j * 4];
      statemt[2 + j * 4] = ret[2 + j * 4];
      statemt[3 + j * 4] = ret[3 + j * 4];
    }
  return 0;
    5140:	00001021 	addu	v0,zero,zero
}
    5144:	03c0e821 	addu	sp,s8,zero
    5148:	8fbe008c 	lw	s8,140(sp)
    514c:	8fb00088 	lw	s0,136(sp)
    5150:	27bd0090 	addiu	sp,sp,144
    5154:	03e00008 	jr	ra
    5158:	00000000 	sll	zero,zero,0x0

0000515c <AddRoundKey_InversMixColumn>:

/* ******** InversMixColumn ********** */
int
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
{
    515c:	27bdff70 	addiu	sp,sp,-144
    5160:	afbe008c 	sw	s8,140(sp)
    5164:	afb00088 	sw	s0,136(sp)
    5168:	03a0f021 	addu	s8,sp,zero
    516c:	afc40090 	sw	a0,144(s8)
    5170:	afc50094 	sw	a1,148(s8)
    5174:	afc60098 	sw	a2,152(s8)
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    5178:	afc00004 	sw	zero,4(s8)
    517c:	080014e2 	j	5388 <AddRoundKey_InversMixColumn+0x22c>
    5180:	00000000 	sll	zero,zero,0x0
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    5184:	8fc20004 	lw	v0,4(s8)
    5188:	00000000 	sll	zero,zero,0x0
    518c:	00021100 	sll	v0,v0,0x4
    5190:	8fc30090 	lw	v1,144(s8)
    5194:	00000000 	sll	zero,zero,0x0
    5198:	00621021 	addu	v0,v1,v0
    519c:	8fc30004 	lw	v1,4(s8)
    51a0:	00000000 	sll	zero,zero,0x0
    51a4:	00031900 	sll	v1,v1,0x4
    51a8:	8fc40090 	lw	a0,144(s8)
    51ac:	00000000 	sll	zero,zero,0x0
    51b0:	00831821 	addu	v1,a0,v1
    51b4:	8c640000 	lw	a0,0(v1)
    51b8:	8fc50094 	lw	a1,148(s8)
    51bc:	8fc30098 	lw	v1,152(s8)
    51c0:	00000000 	sll	zero,zero,0x0
    51c4:	00a30018 	mult	a1,v1
    51c8:	00002812 	mflo	a1
    51cc:	8fc30004 	lw	v1,4(s8)
    51d0:	00000000 	sll	zero,zero,0x0
    51d4:	00a32821 	addu	a1,a1,v1
    51d8:	3c030000 	lui	v1,0x0
    51dc:	00052880 	sll	a1,a1,0x2
    51e0:	24630000 	addiu	v1,v1,0
    51e4:	00a31821 	addu	v1,a1,v1
    51e8:	8c630000 	lw	v1,0(v1)
    51ec:	00000000 	sll	zero,zero,0x0
    51f0:	00831826 	xor	v1,a0,v1
    51f4:	ac430000 	sw	v1,0(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    51f8:	8fc20004 	lw	v0,4(s8)
    51fc:	00000000 	sll	zero,zero,0x0
    5200:	00021100 	sll	v0,v0,0x4
    5204:	24420004 	addiu	v0,v0,4
    5208:	8fc30090 	lw	v1,144(s8)
    520c:	00000000 	sll	zero,zero,0x0
    5210:	00621021 	addu	v0,v1,v0
    5214:	8fc30004 	lw	v1,4(s8)
    5218:	00000000 	sll	zero,zero,0x0
    521c:	00031900 	sll	v1,v1,0x4
    5220:	24630004 	addiu	v1,v1,4
    5224:	8fc40090 	lw	a0,144(s8)
    5228:	00000000 	sll	zero,zero,0x0
    522c:	00831821 	addu	v1,a0,v1
    5230:	8c640000 	lw	a0,0(v1)
    5234:	8fc50094 	lw	a1,148(s8)
    5238:	8fc30098 	lw	v1,152(s8)
    523c:	00000000 	sll	zero,zero,0x0
    5240:	00a30018 	mult	a1,v1
    5244:	00002812 	mflo	a1
    5248:	8fc30004 	lw	v1,4(s8)
    524c:	00000000 	sll	zero,zero,0x0
    5250:	00a32821 	addu	a1,a1,v1
    5254:	3c030000 	lui	v1,0x0
    5258:	24a50078 	addiu	a1,a1,120
    525c:	00052880 	sll	a1,a1,0x2
    5260:	24630000 	addiu	v1,v1,0
    5264:	00a31821 	addu	v1,a1,v1
    5268:	8c630000 	lw	v1,0(v1)
    526c:	00000000 	sll	zero,zero,0x0
    5270:	00831826 	xor	v1,a0,v1
    5274:	ac430000 	sw	v1,0(v0)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    5278:	8fc20004 	lw	v0,4(s8)
    527c:	00000000 	sll	zero,zero,0x0
    5280:	00021100 	sll	v0,v0,0x4
    5284:	24420008 	addiu	v0,v0,8
    5288:	8fc30090 	lw	v1,144(s8)
    528c:	00000000 	sll	zero,zero,0x0
    5290:	00621021 	addu	v0,v1,v0
    5294:	8fc30004 	lw	v1,4(s8)
    5298:	00000000 	sll	zero,zero,0x0
    529c:	00031900 	sll	v1,v1,0x4
    52a0:	24630008 	addiu	v1,v1,8
    52a4:	8fc40090 	lw	a0,144(s8)
    52a8:	00000000 	sll	zero,zero,0x0
    52ac:	00831821 	addu	v1,a0,v1
    52b0:	8c640000 	lw	a0,0(v1)
    52b4:	8fc50094 	lw	a1,148(s8)
    52b8:	8fc30098 	lw	v1,152(s8)
    52bc:	00000000 	sll	zero,zero,0x0
    52c0:	00a30018 	mult	a1,v1
    52c4:	00002812 	mflo	a1
    52c8:	8fc30004 	lw	v1,4(s8)
    52cc:	00000000 	sll	zero,zero,0x0
    52d0:	00a32821 	addu	a1,a1,v1
    52d4:	3c030000 	lui	v1,0x0
    52d8:	24a500f0 	addiu	a1,a1,240
    52dc:	00052880 	sll	a1,a1,0x2
    52e0:	24630000 	addiu	v1,v1,0
    52e4:	00a31821 	addu	v1,a1,v1
    52e8:	8c630000 	lw	v1,0(v1)
    52ec:	00000000 	sll	zero,zero,0x0
    52f0:	00831826 	xor	v1,a0,v1
    52f4:	ac430000 	sw	v1,0(v0)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    52f8:	8fc20004 	lw	v0,4(s8)
    52fc:	00000000 	sll	zero,zero,0x0
    5300:	00021100 	sll	v0,v0,0x4
    5304:	2442000c 	addiu	v0,v0,12
    5308:	8fc30090 	lw	v1,144(s8)
    530c:	00000000 	sll	zero,zero,0x0
    5310:	00621021 	addu	v0,v1,v0
    5314:	8fc30004 	lw	v1,4(s8)
    5318:	00000000 	sll	zero,zero,0x0
    531c:	00031900 	sll	v1,v1,0x4
    5320:	2463000c 	addiu	v1,v1,12
    5324:	8fc40090 	lw	a0,144(s8)
    5328:	00000000 	sll	zero,zero,0x0
    532c:	00831821 	addu	v1,a0,v1
    5330:	8c640000 	lw	a0,0(v1)
    5334:	8fc50094 	lw	a1,148(s8)
    5338:	8fc30098 	lw	v1,152(s8)
    533c:	00000000 	sll	zero,zero,0x0
    5340:	00a30018 	mult	a1,v1
    5344:	00002812 	mflo	a1
    5348:	8fc30004 	lw	v1,4(s8)
    534c:	00000000 	sll	zero,zero,0x0
    5350:	00a32821 	addu	a1,a1,v1
    5354:	3c030000 	lui	v1,0x0
    5358:	24a50168 	addiu	a1,a1,360
    535c:	00052880 	sll	a1,a1,0x2
    5360:	24630000 	addiu	v1,v1,0
    5364:	00a31821 	addu	v1,a1,v1
    5368:	8c630000 	lw	v1,0(v1)
    536c:	00000000 	sll	zero,zero,0x0
    5370:	00831826 	xor	v1,a0,v1
    5374:	ac430000 	sw	v1,0(v0)
AddRoundKey_InversMixColumn (int statemt[32], int nb, int n)
{
  int ret[8 * 4], i, j;
  register int x;

  for (j = 0; j < nb; ++j)
    5378:	8fc20004 	lw	v0,4(s8)
    537c:	00000000 	sll	zero,zero,0x0
    5380:	24420001 	addiu	v0,v0,1
    5384:	afc20004 	sw	v0,4(s8)
    5388:	8fc30004 	lw	v1,4(s8)
    538c:	8fc20094 	lw	v0,148(s8)
    5390:	00000000 	sll	zero,zero,0x0
    5394:	0062102a 	slt	v0,v1,v0
    5398:	1440ff7a 	bnez	v0,5184 <AddRoundKey_InversMixColumn+0x28>
    539c:	00000000 	sll	zero,zero,0x0
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    53a0:	afc00004 	sw	zero,4(s8)
    53a4:	0800166b 	j	59ac <AddRoundKey_InversMixColumn+0x850>
    53a8:	00000000 	sll	zero,zero,0x0
    for (i = 0; i < 4; ++i)
    53ac:	afc00000 	sw	zero,0(s8)
    53b0:	08001662 	j	5988 <AddRoundKey_InversMixColumn+0x82c>
    53b4:	00000000 	sll	zero,zero,0x0
      {
	x = (statemt[i + j * 4] << 1);
    53b8:	8fc20004 	lw	v0,4(s8)
    53bc:	00000000 	sll	zero,zero,0x0
    53c0:	00021880 	sll	v1,v0,0x2
    53c4:	8fc20000 	lw	v0,0(s8)
    53c8:	00000000 	sll	zero,zero,0x0
    53cc:	00621021 	addu	v0,v1,v0
    53d0:	00021080 	sll	v0,v0,0x2
    53d4:	8fc30090 	lw	v1,144(s8)
    53d8:	00000000 	sll	zero,zero,0x0
    53dc:	00621021 	addu	v0,v1,v0
    53e0:	8c420000 	lw	v0,0(v0)
    53e4:	00000000 	sll	zero,zero,0x0
    53e8:	00028040 	sll	s0,v0,0x1
	if ((x >> 8) == 1)
    53ec:	00101a03 	sra	v1,s0,0x8
    53f0:	24020001 	addiu	v0,zero,1
    53f4:	14620002 	bne	v1,v0,5400 <AddRoundKey_InversMixColumn+0x2a4>
    53f8:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    53fc:	3a10011b 	xori	s0,s0,0x11b
	x ^= statemt[i + j * 4];
    5400:	8fc20004 	lw	v0,4(s8)
    5404:	00000000 	sll	zero,zero,0x0
    5408:	00021880 	sll	v1,v0,0x2
    540c:	8fc20000 	lw	v0,0(s8)
    5410:	00000000 	sll	zero,zero,0x0
    5414:	00621021 	addu	v0,v1,v0
    5418:	00021080 	sll	v0,v0,0x2
    541c:	8fc30090 	lw	v1,144(s8)
    5420:	00000000 	sll	zero,zero,0x0
    5424:	00621021 	addu	v0,v1,v0
    5428:	8c420000 	lw	v0,0(v0)
    542c:	00000000 	sll	zero,zero,0x0
    5430:	02028026 	xor	s0,s0,v0
	x = (x << 1);
    5434:	00108040 	sll	s0,s0,0x1
	if ((x >> 8) == 1)
    5438:	00101a03 	sra	v1,s0,0x8
    543c:	24020001 	addiu	v0,zero,1
    5440:	14620002 	bne	v1,v0,544c <AddRoundKey_InversMixColumn+0x2f0>
    5444:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    5448:	3a10011b 	xori	s0,s0,0x11b
	x ^= statemt[i + j * 4];
    544c:	8fc20004 	lw	v0,4(s8)
    5450:	00000000 	sll	zero,zero,0x0
    5454:	00021880 	sll	v1,v0,0x2
    5458:	8fc20000 	lw	v0,0(s8)
    545c:	00000000 	sll	zero,zero,0x0
    5460:	00621021 	addu	v0,v1,v0
    5464:	00021080 	sll	v0,v0,0x2
    5468:	8fc30090 	lw	v1,144(s8)
    546c:	00000000 	sll	zero,zero,0x0
    5470:	00621021 	addu	v0,v1,v0
    5474:	8c420000 	lw	v0,0(v0)
    5478:	00000000 	sll	zero,zero,0x0
    547c:	02028026 	xor	s0,s0,v0
	x = (x << 1);
    5480:	00108040 	sll	s0,s0,0x1
	if ((x >> 8) == 1)
    5484:	00101a03 	sra	v1,s0,0x8
    5488:	24020001 	addiu	v0,zero,1
    548c:	14620002 	bne	v1,v0,5498 <AddRoundKey_InversMixColumn+0x33c>
    5490:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    5494:	3a10011b 	xori	s0,s0,0x11b
	ret[i + j * 4] = x;
    5498:	8fc20004 	lw	v0,4(s8)
    549c:	00000000 	sll	zero,zero,0x0
    54a0:	00021880 	sll	v1,v0,0x2
    54a4:	8fc20000 	lw	v0,0(s8)
    54a8:	00000000 	sll	zero,zero,0x0
    54ac:	00621021 	addu	v0,v1,v0
    54b0:	00021080 	sll	v0,v0,0x2
    54b4:	03c21021 	addu	v0,s8,v0
    54b8:	ac500008 	sw	s0,8(v0)

	x = (statemt[(i + 1) % 4 + j * 4] << 1);
    54bc:	8fc20000 	lw	v0,0(s8)
    54c0:	00000000 	sll	zero,zero,0x0
    54c4:	24430001 	addiu	v1,v0,1
    54c8:	3c028000 	lui	v0,0x8000
    54cc:	34420003 	ori	v0,v0,0x3
    54d0:	00621024 	and	v0,v1,v0
    54d4:	04410005 	bgez	v0,54ec <AddRoundKey_InversMixColumn+0x390>
    54d8:	00000000 	sll	zero,zero,0x0
    54dc:	2442ffff 	addiu	v0,v0,-1
    54e0:	2403fffc 	addiu	v1,zero,-4
    54e4:	00431025 	or	v0,v0,v1
    54e8:	24420001 	addiu	v0,v0,1
    54ec:	00401821 	addu	v1,v0,zero
    54f0:	8fc20004 	lw	v0,4(s8)
    54f4:	00000000 	sll	zero,zero,0x0
    54f8:	00021080 	sll	v0,v0,0x2
    54fc:	00621021 	addu	v0,v1,v0
    5500:	00021080 	sll	v0,v0,0x2
    5504:	8fc30090 	lw	v1,144(s8)
    5508:	00000000 	sll	zero,zero,0x0
    550c:	00621021 	addu	v0,v1,v0
    5510:	8c420000 	lw	v0,0(v0)
    5514:	00000000 	sll	zero,zero,0x0
    5518:	00028040 	sll	s0,v0,0x1
	if ((x >> 8) == 1)
    551c:	00101a03 	sra	v1,s0,0x8
    5520:	24020001 	addiu	v0,zero,1
    5524:	14620002 	bne	v1,v0,5530 <AddRoundKey_InversMixColumn+0x3d4>
    5528:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    552c:	3a10011b 	xori	s0,s0,0x11b
	x = (x << 1);
    5530:	00108040 	sll	s0,s0,0x1
	if ((x >> 8) == 1)
    5534:	00101a03 	sra	v1,s0,0x8
    5538:	24020001 	addiu	v0,zero,1
    553c:	14620002 	bne	v1,v0,5548 <AddRoundKey_InversMixColumn+0x3ec>
    5540:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    5544:	3a10011b 	xori	s0,s0,0x11b
	x ^= statemt[(i + 1) % 4 + j * 4];
    5548:	8fc20000 	lw	v0,0(s8)
    554c:	00000000 	sll	zero,zero,0x0
    5550:	24430001 	addiu	v1,v0,1
    5554:	3c028000 	lui	v0,0x8000
    5558:	34420003 	ori	v0,v0,0x3
    555c:	00621024 	and	v0,v1,v0
    5560:	04410005 	bgez	v0,5578 <AddRoundKey_InversMixColumn+0x41c>
    5564:	00000000 	sll	zero,zero,0x0
    5568:	2442ffff 	addiu	v0,v0,-1
    556c:	2403fffc 	addiu	v1,zero,-4
    5570:	00431025 	or	v0,v0,v1
    5574:	24420001 	addiu	v0,v0,1
    5578:	00401821 	addu	v1,v0,zero
    557c:	8fc20004 	lw	v0,4(s8)
    5580:	00000000 	sll	zero,zero,0x0
    5584:	00021080 	sll	v0,v0,0x2
    5588:	00621021 	addu	v0,v1,v0
    558c:	00021080 	sll	v0,v0,0x2
    5590:	8fc30090 	lw	v1,144(s8)
    5594:	00000000 	sll	zero,zero,0x0
    5598:	00621021 	addu	v0,v1,v0
    559c:	8c420000 	lw	v0,0(v0)
    55a0:	00000000 	sll	zero,zero,0x0
    55a4:	02028026 	xor	s0,s0,v0
	x = (x << 1);
    55a8:	00108040 	sll	s0,s0,0x1
	if ((x >> 8) == 1)
    55ac:	00101a03 	sra	v1,s0,0x8
    55b0:	24020001 	addiu	v0,zero,1
    55b4:	14620002 	bne	v1,v0,55c0 <AddRoundKey_InversMixColumn+0x464>
    55b8:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    55bc:	3a10011b 	xori	s0,s0,0x11b
	x ^= statemt[(i + 1) % 4 + j * 4];
    55c0:	8fc20000 	lw	v0,0(s8)
    55c4:	00000000 	sll	zero,zero,0x0
    55c8:	24430001 	addiu	v1,v0,1
    55cc:	3c028000 	lui	v0,0x8000
    55d0:	34420003 	ori	v0,v0,0x3
    55d4:	00621024 	and	v0,v1,v0
    55d8:	04410005 	bgez	v0,55f0 <AddRoundKey_InversMixColumn+0x494>
    55dc:	00000000 	sll	zero,zero,0x0
    55e0:	2442ffff 	addiu	v0,v0,-1
    55e4:	2403fffc 	addiu	v1,zero,-4
    55e8:	00431025 	or	v0,v0,v1
    55ec:	24420001 	addiu	v0,v0,1
    55f0:	00401821 	addu	v1,v0,zero
    55f4:	8fc20004 	lw	v0,4(s8)
    55f8:	00000000 	sll	zero,zero,0x0
    55fc:	00021080 	sll	v0,v0,0x2
    5600:	00621021 	addu	v0,v1,v0
    5604:	00021080 	sll	v0,v0,0x2
    5608:	8fc30090 	lw	v1,144(s8)
    560c:	00000000 	sll	zero,zero,0x0
    5610:	00621021 	addu	v0,v1,v0
    5614:	8c420000 	lw	v0,0(v0)
    5618:	00000000 	sll	zero,zero,0x0
    561c:	02028026 	xor	s0,s0,v0
	ret[i + j * 4] ^= x;
    5620:	8fc20004 	lw	v0,4(s8)
    5624:	00000000 	sll	zero,zero,0x0
    5628:	00021880 	sll	v1,v0,0x2
    562c:	8fc20000 	lw	v0,0(s8)
    5630:	00000000 	sll	zero,zero,0x0
    5634:	00622021 	addu	a0,v1,v0
    5638:	8fc20004 	lw	v0,4(s8)
    563c:	00000000 	sll	zero,zero,0x0
    5640:	00021880 	sll	v1,v0,0x2
    5644:	8fc20000 	lw	v0,0(s8)
    5648:	00000000 	sll	zero,zero,0x0
    564c:	00621021 	addu	v0,v1,v0
    5650:	00021080 	sll	v0,v0,0x2
    5654:	03c21021 	addu	v0,s8,v0
    5658:	8c420008 	lw	v0,8(v0)
    565c:	00000000 	sll	zero,zero,0x0
    5660:	00501826 	xor	v1,v0,s0
    5664:	00041080 	sll	v0,a0,0x2
    5668:	03c21021 	addu	v0,s8,v0
    566c:	ac430008 	sw	v1,8(v0)

	x = (statemt[(i + 2) % 4 + j * 4] << 1);
    5670:	8fc20000 	lw	v0,0(s8)
    5674:	00000000 	sll	zero,zero,0x0
    5678:	24430002 	addiu	v1,v0,2
    567c:	3c028000 	lui	v0,0x8000
    5680:	34420003 	ori	v0,v0,0x3
    5684:	00621024 	and	v0,v1,v0
    5688:	04410005 	bgez	v0,56a0 <AddRoundKey_InversMixColumn+0x544>
    568c:	00000000 	sll	zero,zero,0x0
    5690:	2442ffff 	addiu	v0,v0,-1
    5694:	2403fffc 	addiu	v1,zero,-4
    5698:	00431025 	or	v0,v0,v1
    569c:	24420001 	addiu	v0,v0,1
    56a0:	00401821 	addu	v1,v0,zero
    56a4:	8fc20004 	lw	v0,4(s8)
    56a8:	00000000 	sll	zero,zero,0x0
    56ac:	00021080 	sll	v0,v0,0x2
    56b0:	00621021 	addu	v0,v1,v0
    56b4:	00021080 	sll	v0,v0,0x2
    56b8:	8fc30090 	lw	v1,144(s8)
    56bc:	00000000 	sll	zero,zero,0x0
    56c0:	00621021 	addu	v0,v1,v0
    56c4:	8c420000 	lw	v0,0(v0)
    56c8:	00000000 	sll	zero,zero,0x0
    56cc:	00028040 	sll	s0,v0,0x1
	if ((x >> 8) == 1)
    56d0:	00101a03 	sra	v1,s0,0x8
    56d4:	24020001 	addiu	v0,zero,1
    56d8:	14620002 	bne	v1,v0,56e4 <AddRoundKey_InversMixColumn+0x588>
    56dc:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    56e0:	3a10011b 	xori	s0,s0,0x11b
	x ^= statemt[(i + 2) % 4 + j * 4];
    56e4:	8fc20000 	lw	v0,0(s8)
    56e8:	00000000 	sll	zero,zero,0x0
    56ec:	24430002 	addiu	v1,v0,2
    56f0:	3c028000 	lui	v0,0x8000
    56f4:	34420003 	ori	v0,v0,0x3
    56f8:	00621024 	and	v0,v1,v0
    56fc:	04410005 	bgez	v0,5714 <AddRoundKey_InversMixColumn+0x5b8>
    5700:	00000000 	sll	zero,zero,0x0
    5704:	2442ffff 	addiu	v0,v0,-1
    5708:	2403fffc 	addiu	v1,zero,-4
    570c:	00431025 	or	v0,v0,v1
    5710:	24420001 	addiu	v0,v0,1
    5714:	00401821 	addu	v1,v0,zero
    5718:	8fc20004 	lw	v0,4(s8)
    571c:	00000000 	sll	zero,zero,0x0
    5720:	00021080 	sll	v0,v0,0x2
    5724:	00621021 	addu	v0,v1,v0
    5728:	00021080 	sll	v0,v0,0x2
    572c:	8fc30090 	lw	v1,144(s8)
    5730:	00000000 	sll	zero,zero,0x0
    5734:	00621021 	addu	v0,v1,v0
    5738:	8c420000 	lw	v0,0(v0)
    573c:	00000000 	sll	zero,zero,0x0
    5740:	02028026 	xor	s0,s0,v0
	x = (x << 1);
    5744:	00108040 	sll	s0,s0,0x1
	if ((x >> 8) == 1)
    5748:	00101a03 	sra	v1,s0,0x8
    574c:	24020001 	addiu	v0,zero,1
    5750:	14620002 	bne	v1,v0,575c <AddRoundKey_InversMixColumn+0x600>
    5754:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    5758:	3a10011b 	xori	s0,s0,0x11b
	x = (x << 1);
    575c:	00108040 	sll	s0,s0,0x1
	if ((x >> 8) == 1)
    5760:	00101a03 	sra	v1,s0,0x8
    5764:	24020001 	addiu	v0,zero,1
    5768:	14620002 	bne	v1,v0,5774 <AddRoundKey_InversMixColumn+0x618>
    576c:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    5770:	3a10011b 	xori	s0,s0,0x11b
	x ^= statemt[(i + 2) % 4 + j * 4];
    5774:	8fc20000 	lw	v0,0(s8)
    5778:	00000000 	sll	zero,zero,0x0
    577c:	24430002 	addiu	v1,v0,2
    5780:	3c028000 	lui	v0,0x8000
    5784:	34420003 	ori	v0,v0,0x3
    5788:	00621024 	and	v0,v1,v0
    578c:	04410005 	bgez	v0,57a4 <AddRoundKey_InversMixColumn+0x648>
    5790:	00000000 	sll	zero,zero,0x0
    5794:	2442ffff 	addiu	v0,v0,-1
    5798:	2403fffc 	addiu	v1,zero,-4
    579c:	00431025 	or	v0,v0,v1
    57a0:	24420001 	addiu	v0,v0,1
    57a4:	00401821 	addu	v1,v0,zero
    57a8:	8fc20004 	lw	v0,4(s8)
    57ac:	00000000 	sll	zero,zero,0x0
    57b0:	00021080 	sll	v0,v0,0x2
    57b4:	00621021 	addu	v0,v1,v0
    57b8:	00021080 	sll	v0,v0,0x2
    57bc:	8fc30090 	lw	v1,144(s8)
    57c0:	00000000 	sll	zero,zero,0x0
    57c4:	00621021 	addu	v0,v1,v0
    57c8:	8c420000 	lw	v0,0(v0)
    57cc:	00000000 	sll	zero,zero,0x0
    57d0:	02028026 	xor	s0,s0,v0
	ret[i + j * 4] ^= x;
    57d4:	8fc20004 	lw	v0,4(s8)
    57d8:	00000000 	sll	zero,zero,0x0
    57dc:	00021880 	sll	v1,v0,0x2
    57e0:	8fc20000 	lw	v0,0(s8)
    57e4:	00000000 	sll	zero,zero,0x0
    57e8:	00622021 	addu	a0,v1,v0
    57ec:	8fc20004 	lw	v0,4(s8)
    57f0:	00000000 	sll	zero,zero,0x0
    57f4:	00021880 	sll	v1,v0,0x2
    57f8:	8fc20000 	lw	v0,0(s8)
    57fc:	00000000 	sll	zero,zero,0x0
    5800:	00621021 	addu	v0,v1,v0
    5804:	00021080 	sll	v0,v0,0x2
    5808:	03c21021 	addu	v0,s8,v0
    580c:	8c420008 	lw	v0,8(v0)
    5810:	00000000 	sll	zero,zero,0x0
    5814:	00501826 	xor	v1,v0,s0
    5818:	00041080 	sll	v0,a0,0x2
    581c:	03c21021 	addu	v0,s8,v0
    5820:	ac430008 	sw	v1,8(v0)

	x = (statemt[(i + 3) % 4 + j * 4] << 1);
    5824:	8fc20000 	lw	v0,0(s8)
    5828:	00000000 	sll	zero,zero,0x0
    582c:	24430003 	addiu	v1,v0,3
    5830:	3c028000 	lui	v0,0x8000
    5834:	34420003 	ori	v0,v0,0x3
    5838:	00621024 	and	v0,v1,v0
    583c:	04410005 	bgez	v0,5854 <AddRoundKey_InversMixColumn+0x6f8>
    5840:	00000000 	sll	zero,zero,0x0
    5844:	2442ffff 	addiu	v0,v0,-1
    5848:	2403fffc 	addiu	v1,zero,-4
    584c:	00431025 	or	v0,v0,v1
    5850:	24420001 	addiu	v0,v0,1
    5854:	00401821 	addu	v1,v0,zero
    5858:	8fc20004 	lw	v0,4(s8)
    585c:	00000000 	sll	zero,zero,0x0
    5860:	00021080 	sll	v0,v0,0x2
    5864:	00621021 	addu	v0,v1,v0
    5868:	00021080 	sll	v0,v0,0x2
    586c:	8fc30090 	lw	v1,144(s8)
    5870:	00000000 	sll	zero,zero,0x0
    5874:	00621021 	addu	v0,v1,v0
    5878:	8c420000 	lw	v0,0(v0)
    587c:	00000000 	sll	zero,zero,0x0
    5880:	00028040 	sll	s0,v0,0x1
	if ((x >> 8) == 1)
    5884:	00101a03 	sra	v1,s0,0x8
    5888:	24020001 	addiu	v0,zero,1
    588c:	14620002 	bne	v1,v0,5898 <AddRoundKey_InversMixColumn+0x73c>
    5890:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    5894:	3a10011b 	xori	s0,s0,0x11b
	x = (x << 1);
    5898:	00108040 	sll	s0,s0,0x1
	if ((x >> 8) == 1)
    589c:	00101a03 	sra	v1,s0,0x8
    58a0:	24020001 	addiu	v0,zero,1
    58a4:	14620002 	bne	v1,v0,58b0 <AddRoundKey_InversMixColumn+0x754>
    58a8:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    58ac:	3a10011b 	xori	s0,s0,0x11b
	x = (x << 1);
    58b0:	00108040 	sll	s0,s0,0x1
	if ((x >> 8) == 1)
    58b4:	00101a03 	sra	v1,s0,0x8
    58b8:	24020001 	addiu	v0,zero,1
    58bc:	14620002 	bne	v1,v0,58c8 <AddRoundKey_InversMixColumn+0x76c>
    58c0:	00000000 	sll	zero,zero,0x0
	  x ^= 283;
    58c4:	3a10011b 	xori	s0,s0,0x11b
	x ^= statemt[(i + 3) % 4 + j * 4];
    58c8:	8fc20000 	lw	v0,0(s8)
    58cc:	00000000 	sll	zero,zero,0x0
    58d0:	24430003 	addiu	v1,v0,3
    58d4:	3c028000 	lui	v0,0x8000
    58d8:	34420003 	ori	v0,v0,0x3
    58dc:	00621024 	and	v0,v1,v0
    58e0:	04410005 	bgez	v0,58f8 <AddRoundKey_InversMixColumn+0x79c>
    58e4:	00000000 	sll	zero,zero,0x0
    58e8:	2442ffff 	addiu	v0,v0,-1
    58ec:	2403fffc 	addiu	v1,zero,-4
    58f0:	00431025 	or	v0,v0,v1
    58f4:	24420001 	addiu	v0,v0,1
    58f8:	00401821 	addu	v1,v0,zero
    58fc:	8fc20004 	lw	v0,4(s8)
    5900:	00000000 	sll	zero,zero,0x0
    5904:	00021080 	sll	v0,v0,0x2
    5908:	00621021 	addu	v0,v1,v0
    590c:	00021080 	sll	v0,v0,0x2
    5910:	8fc30090 	lw	v1,144(s8)
    5914:	00000000 	sll	zero,zero,0x0
    5918:	00621021 	addu	v0,v1,v0
    591c:	8c420000 	lw	v0,0(v0)
    5920:	00000000 	sll	zero,zero,0x0
    5924:	02028026 	xor	s0,s0,v0
	ret[i + j * 4] ^= x;
    5928:	8fc20004 	lw	v0,4(s8)
    592c:	00000000 	sll	zero,zero,0x0
    5930:	00021880 	sll	v1,v0,0x2
    5934:	8fc20000 	lw	v0,0(s8)
    5938:	00000000 	sll	zero,zero,0x0
    593c:	00622021 	addu	a0,v1,v0
    5940:	8fc20004 	lw	v0,4(s8)
    5944:	00000000 	sll	zero,zero,0x0
    5948:	00021880 	sll	v1,v0,0x2
    594c:	8fc20000 	lw	v0,0(s8)
    5950:	00000000 	sll	zero,zero,0x0
    5954:	00621021 	addu	v0,v1,v0
    5958:	00021080 	sll	v0,v0,0x2
    595c:	03c21021 	addu	v0,s8,v0
    5960:	8c420008 	lw	v0,8(v0)
    5964:	00000000 	sll	zero,zero,0x0
    5968:	00501826 	xor	v1,v0,s0
    596c:	00041080 	sll	v0,a0,0x2
    5970:	03c21021 	addu	v0,s8,v0
    5974:	ac430008 	sw	v1,8(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    for (i = 0; i < 4; ++i)
    5978:	8fc20000 	lw	v0,0(s8)
    597c:	00000000 	sll	zero,zero,0x0
    5980:	24420001 	addiu	v0,v0,1
    5984:	afc20000 	sw	v0,0(s8)
    5988:	8fc20000 	lw	v0,0(s8)
    598c:	00000000 	sll	zero,zero,0x0
    5990:	28420004 	slti	v0,v0,4
    5994:	1440fe88 	bnez	v0,53b8 <AddRoundKey_InversMixColumn+0x25c>
    5998:	00000000 	sll	zero,zero,0x0
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  for (j = 0; j < nb; ++j)
    599c:	8fc20004 	lw	v0,4(s8)
    59a0:	00000000 	sll	zero,zero,0x0
    59a4:	24420001 	addiu	v0,v0,1
    59a8:	afc20004 	sw	v0,4(s8)
    59ac:	8fc30004 	lw	v1,4(s8)
    59b0:	8fc20094 	lw	v0,148(s8)
    59b4:	00000000 	sll	zero,zero,0x0
    59b8:	0062102a 	slt	v0,v1,v0
    59bc:	1440fe7b 	bnez	v0,53ac <AddRoundKey_InversMixColumn+0x250>
    59c0:	00000000 	sll	zero,zero,0x0
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 3) % 4 + j * 4];
	ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    59c4:	afc00000 	sw	zero,0(s8)
    59c8:	080016b6 	j	5ad8 <AddRoundKey_InversMixColumn+0x97c>
    59cc:	00000000 	sll	zero,zero,0x0
    {
      statemt[i * 4] = ret[i * 4];
    59d0:	8fc20000 	lw	v0,0(s8)
    59d4:	00000000 	sll	zero,zero,0x0
    59d8:	00021100 	sll	v0,v0,0x4
    59dc:	8fc30090 	lw	v1,144(s8)
    59e0:	00000000 	sll	zero,zero,0x0
    59e4:	00621821 	addu	v1,v1,v0
    59e8:	8fc20000 	lw	v0,0(s8)
    59ec:	00000000 	sll	zero,zero,0x0
    59f0:	00021080 	sll	v0,v0,0x2
    59f4:	00021080 	sll	v0,v0,0x2
    59f8:	03c21021 	addu	v0,s8,v0
    59fc:	8c420008 	lw	v0,8(v0)
    5a00:	00000000 	sll	zero,zero,0x0
    5a04:	ac620000 	sw	v0,0(v1)
      statemt[1 + i * 4] = ret[1 + i * 4];
    5a08:	8fc20000 	lw	v0,0(s8)
    5a0c:	00000000 	sll	zero,zero,0x0
    5a10:	00021100 	sll	v0,v0,0x4
    5a14:	24420004 	addiu	v0,v0,4
    5a18:	8fc30090 	lw	v1,144(s8)
    5a1c:	00000000 	sll	zero,zero,0x0
    5a20:	00621821 	addu	v1,v1,v0
    5a24:	8fc20000 	lw	v0,0(s8)
    5a28:	00000000 	sll	zero,zero,0x0
    5a2c:	00021080 	sll	v0,v0,0x2
    5a30:	24420001 	addiu	v0,v0,1
    5a34:	00021080 	sll	v0,v0,0x2
    5a38:	03c21021 	addu	v0,s8,v0
    5a3c:	8c420008 	lw	v0,8(v0)
    5a40:	00000000 	sll	zero,zero,0x0
    5a44:	ac620000 	sw	v0,0(v1)
      statemt[2 + i * 4] = ret[2 + i * 4];
    5a48:	8fc20000 	lw	v0,0(s8)
    5a4c:	00000000 	sll	zero,zero,0x0
    5a50:	00021100 	sll	v0,v0,0x4
    5a54:	24420008 	addiu	v0,v0,8
    5a58:	8fc30090 	lw	v1,144(s8)
    5a5c:	00000000 	sll	zero,zero,0x0
    5a60:	00621821 	addu	v1,v1,v0
    5a64:	8fc20000 	lw	v0,0(s8)
    5a68:	00000000 	sll	zero,zero,0x0
    5a6c:	00021080 	sll	v0,v0,0x2
    5a70:	24420002 	addiu	v0,v0,2
    5a74:	00021080 	sll	v0,v0,0x2
    5a78:	03c21021 	addu	v0,s8,v0
    5a7c:	8c420008 	lw	v0,8(v0)
    5a80:	00000000 	sll	zero,zero,0x0
    5a84:	ac620000 	sw	v0,0(v1)
      statemt[3 + i * 4] = ret[3 + i * 4];
    5a88:	8fc20000 	lw	v0,0(s8)
    5a8c:	00000000 	sll	zero,zero,0x0
    5a90:	00021100 	sll	v0,v0,0x4
    5a94:	2442000c 	addiu	v0,v0,12
    5a98:	8fc30090 	lw	v1,144(s8)
    5a9c:	00000000 	sll	zero,zero,0x0
    5aa0:	00621821 	addu	v1,v1,v0
    5aa4:	8fc20000 	lw	v0,0(s8)
    5aa8:	00000000 	sll	zero,zero,0x0
    5aac:	00021080 	sll	v0,v0,0x2
    5ab0:	24420003 	addiu	v0,v0,3
    5ab4:	00021080 	sll	v0,v0,0x2
    5ab8:	03c21021 	addu	v0,s8,v0
    5abc:	8c420008 	lw	v0,8(v0)
    5ac0:	00000000 	sll	zero,zero,0x0
    5ac4:	ac620000 	sw	v0,0(v1)
	if ((x >> 8) == 1)
	  x ^= 283;
	x ^= statemt[(i + 3) % 4 + j * 4];
	ret[i + j * 4] ^= x;
      }
  for (i = 0; i < nb; ++i)
    5ac8:	8fc20000 	lw	v0,0(s8)
    5acc:	00000000 	sll	zero,zero,0x0
    5ad0:	24420001 	addiu	v0,v0,1
    5ad4:	afc20000 	sw	v0,0(s8)
    5ad8:	8fc30000 	lw	v1,0(s8)
    5adc:	8fc20094 	lw	v0,148(s8)
    5ae0:	00000000 	sll	zero,zero,0x0
    5ae4:	0062102a 	slt	v0,v1,v0
    5ae8:	1440ffb9 	bnez	v0,59d0 <AddRoundKey_InversMixColumn+0x874>
    5aec:	00000000 	sll	zero,zero,0x0
      statemt[i * 4] = ret[i * 4];
      statemt[1 + i * 4] = ret[1 + i * 4];
      statemt[2 + i * 4] = ret[2 + i * 4];
      statemt[3 + i * 4] = ret[3 + i * 4];
    }
  return 0;
    5af0:	00001021 	addu	v0,zero,zero
}
    5af4:	03c0e821 	addu	sp,s8,zero
    5af8:	8fbe008c 	lw	s8,140(sp)
    5afc:	8fb00088 	lw	s0,136(sp)
    5b00:	27bd0090 	addiu	sp,sp,144
    5b04:	03e00008 	jr	ra
    5b08:	00000000 	sll	zero,zero,0x0

00005b0c <AddRoundKey>:

/* ******** AddRoundKey ********** */
int
AddRoundKey (int statemt[32], int type, int n)
{
    5b0c:	27bdfff0 	addiu	sp,sp,-16
    5b10:	afbe000c 	sw	s8,12(sp)
    5b14:	03a0f021 	addu	s8,sp,zero
    5b18:	afc40010 	sw	a0,16(s8)
    5b1c:	afc50014 	sw	a1,20(s8)
    5b20:	afc60018 	sw	a2,24(s8)
  int j, nb;

  switch (type)
    5b24:	8fc20014 	lw	v0,20(s8)
    5b28:	3c030002 	lui	v1,0x2
    5b2c:	3463eec0 	ori	v1,v1,0xeec0
    5b30:	1043003c 	beq	v0,v1,5c24 <AddRoundKey+0x118>
    5b34:	00000000 	sll	zero,zero,0x0
    5b38:	3c030002 	lui	v1,0x2
    5b3c:	3463eec1 	ori	v1,v1,0xeec1
    5b40:	0043182a 	slt	v1,v0,v1
    5b44:	1060001a 	beqz	v1,5bb0 <AddRoundKey+0xa4>
    5b48:	00000000 	sll	zero,zero,0x0
    5b4c:	3c030001 	lui	v1,0x1
    5b50:	3463f4c0 	ori	v1,v1,0xf4c0
    5b54:	10430033 	beq	v0,v1,5c24 <AddRoundKey+0x118>
    5b58:	00000000 	sll	zero,zero,0x0
    5b5c:	3c030001 	lui	v1,0x1
    5b60:	3463f4c1 	ori	v1,v1,0xf4c1
    5b64:	0043182a 	slt	v1,v0,v1
    5b68:	10600007 	beqz	v1,5b88 <AddRoundKey+0x7c>
    5b6c:	00000000 	sll	zero,zero,0x0
    5b70:	3c030001 	lui	v1,0x1
    5b74:	3463f480 	ori	v1,v1,0xf480
    5b78:	10430026 	beq	v0,v1,5c14 <AddRoundKey+0x108>
    5b7c:	00000000 	sll	zero,zero,0x0
    5b80:	08001710 	j	5c40 <AddRoundKey+0x134>
    5b84:	00000000 	sll	zero,zero,0x0
    5b88:	3c030001 	lui	v1,0x1
    5b8c:	3463f500 	ori	v1,v1,0xf500
    5b90:	10430028 	beq	v0,v1,5c34 <AddRoundKey+0x128>
    5b94:	00000000 	sll	zero,zero,0x0
    5b98:	3c030002 	lui	v1,0x2
    5b9c:	3463ee80 	ori	v1,v1,0xee80
    5ba0:	1043001c 	beq	v0,v1,5c14 <AddRoundKey+0x108>
    5ba4:	00000000 	sll	zero,zero,0x0
    5ba8:	08001710 	j	5c40 <AddRoundKey+0x134>
    5bac:	00000000 	sll	zero,zero,0x0
    5bb0:	3c030003 	lui	v1,0x3
    5bb4:	3463e880 	ori	v1,v1,0xe880
    5bb8:	10430016 	beq	v0,v1,5c14 <AddRoundKey+0x108>
    5bbc:	00000000 	sll	zero,zero,0x0
    5bc0:	3c030003 	lui	v1,0x3
    5bc4:	3463e881 	ori	v1,v1,0xe881
    5bc8:	0043182a 	slt	v1,v0,v1
    5bcc:	10600007 	beqz	v1,5bec <AddRoundKey+0xe0>
    5bd0:	00000000 	sll	zero,zero,0x0
    5bd4:	3c030002 	lui	v1,0x2
    5bd8:	3463ef00 	ori	v1,v1,0xef00
    5bdc:	10430015 	beq	v0,v1,5c34 <AddRoundKey+0x128>
    5be0:	00000000 	sll	zero,zero,0x0
    5be4:	08001710 	j	5c40 <AddRoundKey+0x134>
    5be8:	00000000 	sll	zero,zero,0x0
    5bec:	3c030003 	lui	v1,0x3
    5bf0:	3463e8c0 	ori	v1,v1,0xe8c0
    5bf4:	1043000b 	beq	v0,v1,5c24 <AddRoundKey+0x118>
    5bf8:	00000000 	sll	zero,zero,0x0
    5bfc:	3c030003 	lui	v1,0x3
    5c00:	3463e900 	ori	v1,v1,0xe900
    5c04:	1043000b 	beq	v0,v1,5c34 <AddRoundKey+0x128>
    5c08:	00000000 	sll	zero,zero,0x0
    5c0c:	08001710 	j	5c40 <AddRoundKey+0x134>
    5c10:	00000000 	sll	zero,zero,0x0
    {
    case 128128:
    case 192128:
    case 256128:
      nb = 4;
    5c14:	24020004 	addiu	v0,zero,4
    5c18:	afc20004 	sw	v0,4(s8)
      break;
    5c1c:	08001710 	j	5c40 <AddRoundKey+0x134>
    5c20:	00000000 	sll	zero,zero,0x0
    case 128192:
    case 192192:
    case 256192:
      nb = 6;
    5c24:	24020006 	addiu	v0,zero,6
    5c28:	afc20004 	sw	v0,4(s8)
      break;
    5c2c:	08001710 	j	5c40 <AddRoundKey+0x134>
    5c30:	00000000 	sll	zero,zero,0x0
    case 128256:
    case 192256:
    case 256256:
      nb = 8;
    5c34:	24020008 	addiu	v0,zero,8
    5c38:	afc20004 	sw	v0,4(s8)
      break;
    5c3c:	00000000 	sll	zero,zero,0x0
    }
  for (j = 0; j < nb; ++j)
    5c40:	afc00000 	sw	zero,0(s8)
    5c44:	08001794 	j	5e50 <AddRoundKey+0x344>
    5c48:	00000000 	sll	zero,zero,0x0
    {
      statemt[j * 4] ^= word[0][j + nb * n];
    5c4c:	8fc20000 	lw	v0,0(s8)
    5c50:	00000000 	sll	zero,zero,0x0
    5c54:	00021100 	sll	v0,v0,0x4
    5c58:	8fc30010 	lw	v1,16(s8)
    5c5c:	00000000 	sll	zero,zero,0x0
    5c60:	00621021 	addu	v0,v1,v0
    5c64:	8fc30000 	lw	v1,0(s8)
    5c68:	00000000 	sll	zero,zero,0x0
    5c6c:	00031900 	sll	v1,v1,0x4
    5c70:	8fc40010 	lw	a0,16(s8)
    5c74:	00000000 	sll	zero,zero,0x0
    5c78:	00831821 	addu	v1,a0,v1
    5c7c:	8c640000 	lw	a0,0(v1)
    5c80:	8fc50004 	lw	a1,4(s8)
    5c84:	8fc30018 	lw	v1,24(s8)
    5c88:	00000000 	sll	zero,zero,0x0
    5c8c:	00a30018 	mult	a1,v1
    5c90:	00002812 	mflo	a1
    5c94:	8fc30000 	lw	v1,0(s8)
    5c98:	00000000 	sll	zero,zero,0x0
    5c9c:	00a32821 	addu	a1,a1,v1
    5ca0:	3c030000 	lui	v1,0x0
    5ca4:	00052880 	sll	a1,a1,0x2
    5ca8:	24630000 	addiu	v1,v1,0
    5cac:	00a31821 	addu	v1,a1,v1
    5cb0:	8c630000 	lw	v1,0(v1)
    5cb4:	00000000 	sll	zero,zero,0x0
    5cb8:	00831826 	xor	v1,a0,v1
    5cbc:	ac430000 	sw	v1,0(v0)
      statemt[1 + j * 4] ^= word[1][j + nb * n];
    5cc0:	8fc20000 	lw	v0,0(s8)
    5cc4:	00000000 	sll	zero,zero,0x0
    5cc8:	00021100 	sll	v0,v0,0x4
    5ccc:	24420004 	addiu	v0,v0,4
    5cd0:	8fc30010 	lw	v1,16(s8)
    5cd4:	00000000 	sll	zero,zero,0x0
    5cd8:	00621021 	addu	v0,v1,v0
    5cdc:	8fc30000 	lw	v1,0(s8)
    5ce0:	00000000 	sll	zero,zero,0x0
    5ce4:	00031900 	sll	v1,v1,0x4
    5ce8:	24630004 	addiu	v1,v1,4
    5cec:	8fc40010 	lw	a0,16(s8)
    5cf0:	00000000 	sll	zero,zero,0x0
    5cf4:	00831821 	addu	v1,a0,v1
    5cf8:	8c640000 	lw	a0,0(v1)
    5cfc:	8fc50004 	lw	a1,4(s8)
    5d00:	8fc30018 	lw	v1,24(s8)
    5d04:	00000000 	sll	zero,zero,0x0
    5d08:	00a30018 	mult	a1,v1
    5d0c:	00002812 	mflo	a1
    5d10:	8fc30000 	lw	v1,0(s8)
    5d14:	00000000 	sll	zero,zero,0x0
    5d18:	00a32821 	addu	a1,a1,v1
    5d1c:	3c030000 	lui	v1,0x0
    5d20:	24a50078 	addiu	a1,a1,120
    5d24:	00052880 	sll	a1,a1,0x2
    5d28:	24630000 	addiu	v1,v1,0
    5d2c:	00a31821 	addu	v1,a1,v1
    5d30:	8c630000 	lw	v1,0(v1)
    5d34:	00000000 	sll	zero,zero,0x0
    5d38:	00831826 	xor	v1,a0,v1
    5d3c:	ac430000 	sw	v1,0(v0)
      statemt[2 + j * 4] ^= word[2][j + nb * n];
    5d40:	8fc20000 	lw	v0,0(s8)
    5d44:	00000000 	sll	zero,zero,0x0
    5d48:	00021100 	sll	v0,v0,0x4
    5d4c:	24420008 	addiu	v0,v0,8
    5d50:	8fc30010 	lw	v1,16(s8)
    5d54:	00000000 	sll	zero,zero,0x0
    5d58:	00621021 	addu	v0,v1,v0
    5d5c:	8fc30000 	lw	v1,0(s8)
    5d60:	00000000 	sll	zero,zero,0x0
    5d64:	00031900 	sll	v1,v1,0x4
    5d68:	24630008 	addiu	v1,v1,8
    5d6c:	8fc40010 	lw	a0,16(s8)
    5d70:	00000000 	sll	zero,zero,0x0
    5d74:	00831821 	addu	v1,a0,v1
    5d78:	8c640000 	lw	a0,0(v1)
    5d7c:	8fc50004 	lw	a1,4(s8)
    5d80:	8fc30018 	lw	v1,24(s8)
    5d84:	00000000 	sll	zero,zero,0x0
    5d88:	00a30018 	mult	a1,v1
    5d8c:	00002812 	mflo	a1
    5d90:	8fc30000 	lw	v1,0(s8)
    5d94:	00000000 	sll	zero,zero,0x0
    5d98:	00a32821 	addu	a1,a1,v1
    5d9c:	3c030000 	lui	v1,0x0
    5da0:	24a500f0 	addiu	a1,a1,240
    5da4:	00052880 	sll	a1,a1,0x2
    5da8:	24630000 	addiu	v1,v1,0
    5dac:	00a31821 	addu	v1,a1,v1
    5db0:	8c630000 	lw	v1,0(v1)
    5db4:	00000000 	sll	zero,zero,0x0
    5db8:	00831826 	xor	v1,a0,v1
    5dbc:	ac430000 	sw	v1,0(v0)
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    5dc0:	8fc20000 	lw	v0,0(s8)
    5dc4:	00000000 	sll	zero,zero,0x0
    5dc8:	00021100 	sll	v0,v0,0x4
    5dcc:	2442000c 	addiu	v0,v0,12
    5dd0:	8fc30010 	lw	v1,16(s8)
    5dd4:	00000000 	sll	zero,zero,0x0
    5dd8:	00621021 	addu	v0,v1,v0
    5ddc:	8fc30000 	lw	v1,0(s8)
    5de0:	00000000 	sll	zero,zero,0x0
    5de4:	00031900 	sll	v1,v1,0x4
    5de8:	2463000c 	addiu	v1,v1,12
    5dec:	8fc40010 	lw	a0,16(s8)
    5df0:	00000000 	sll	zero,zero,0x0
    5df4:	00831821 	addu	v1,a0,v1
    5df8:	8c640000 	lw	a0,0(v1)
    5dfc:	8fc50004 	lw	a1,4(s8)
    5e00:	8fc30018 	lw	v1,24(s8)
    5e04:	00000000 	sll	zero,zero,0x0
    5e08:	00a30018 	mult	a1,v1
    5e0c:	00002812 	mflo	a1
    5e10:	8fc30000 	lw	v1,0(s8)
    5e14:	00000000 	sll	zero,zero,0x0
    5e18:	00a32821 	addu	a1,a1,v1
    5e1c:	3c030000 	lui	v1,0x0
    5e20:	24a50168 	addiu	a1,a1,360
    5e24:	00052880 	sll	a1,a1,0x2
    5e28:	24630000 	addiu	v1,v1,0
    5e2c:	00a31821 	addu	v1,a1,v1
    5e30:	8c630000 	lw	v1,0(v1)
    5e34:	00000000 	sll	zero,zero,0x0
    5e38:	00831826 	xor	v1,a0,v1
    5e3c:	ac430000 	sw	v1,0(v0)
    case 192256:
    case 256256:
      nb = 8;
      break;
    }
  for (j = 0; j < nb; ++j)
    5e40:	8fc20000 	lw	v0,0(s8)
    5e44:	00000000 	sll	zero,zero,0x0
    5e48:	24420001 	addiu	v0,v0,1
    5e4c:	afc20000 	sw	v0,0(s8)
    5e50:	8fc30000 	lw	v1,0(s8)
    5e54:	8fc20004 	lw	v0,4(s8)
    5e58:	00000000 	sll	zero,zero,0x0
    5e5c:	0062102a 	slt	v0,v1,v0
    5e60:	1440ff7a 	bnez	v0,5c4c <AddRoundKey+0x140>
    5e64:	00000000 	sll	zero,zero,0x0
      statemt[j * 4] ^= word[0][j + nb * n];
      statemt[1 + j * 4] ^= word[1][j + nb * n];
      statemt[2 + j * 4] ^= word[2][j + nb * n];
      statemt[3 + j * 4] ^= word[3][j + nb * n];
    }
  return 0;
    5e68:	00001021 	addu	v0,zero,zero
}
    5e6c:	03c0e821 	addu	sp,s8,zero
    5e70:	8fbe000c 	lw	s8,12(sp)
    5e74:	27bd0010 	addiu	sp,sp,16
    5e78:	03e00008 	jr	ra
    5e7c:	00000000 	sll	zero,zero,0x0

00005e80 <aes_main>:
#include "aes_func.c"

/* ***************** main **************************** */
int
aes_main (void)
{
    5e80:	27bdffe8 	addiu	sp,sp,-24
    5e84:	afbf0014 	sw	ra,20(sp)
    5e88:	afbe0010 	sw	s8,16(sp)
    5e8c:	03a0f021 	addu	s8,sp,zero
+--------------------------------------------------------------------------+
| * Test Vectors (added for CHStone)                                       |
|     statemt, key : input data                                            |
+--------------------------------------------------------------------------+
*/
  statemt[0] = 50;
    5e90:	3c020000 	lui	v0,0x0
    5e94:	24030032 	addiu	v1,zero,50
    5e98:	ac430000 	sw	v1,0(v0)
  statemt[1] = 67;
    5e9c:	3c020000 	lui	v0,0x0
    5ea0:	24420000 	addiu	v0,v0,0
    5ea4:	24030043 	addiu	v1,zero,67
    5ea8:	ac430004 	sw	v1,4(v0)
  statemt[2] = 246;
    5eac:	3c020000 	lui	v0,0x0
    5eb0:	24420000 	addiu	v0,v0,0
    5eb4:	240300f6 	addiu	v1,zero,246
    5eb8:	ac430008 	sw	v1,8(v0)
  statemt[3] = 168;
    5ebc:	3c020000 	lui	v0,0x0
    5ec0:	24420000 	addiu	v0,v0,0
    5ec4:	240300a8 	addiu	v1,zero,168
    5ec8:	ac43000c 	sw	v1,12(v0)
  statemt[4] = 136;
    5ecc:	3c020000 	lui	v0,0x0
    5ed0:	24420000 	addiu	v0,v0,0
    5ed4:	24030088 	addiu	v1,zero,136
    5ed8:	ac430010 	sw	v1,16(v0)
  statemt[5] = 90;
    5edc:	3c020000 	lui	v0,0x0
    5ee0:	24420000 	addiu	v0,v0,0
    5ee4:	2403005a 	addiu	v1,zero,90
    5ee8:	ac430014 	sw	v1,20(v0)
  statemt[6] = 48;
    5eec:	3c020000 	lui	v0,0x0
    5ef0:	24420000 	addiu	v0,v0,0
    5ef4:	24030030 	addiu	v1,zero,48
    5ef8:	ac430018 	sw	v1,24(v0)
  statemt[7] = 141;
    5efc:	3c020000 	lui	v0,0x0
    5f00:	24420000 	addiu	v0,v0,0
    5f04:	2403008d 	addiu	v1,zero,141
    5f08:	ac43001c 	sw	v1,28(v0)
  statemt[8] = 49;
    5f0c:	3c020000 	lui	v0,0x0
    5f10:	24420000 	addiu	v0,v0,0
    5f14:	24030031 	addiu	v1,zero,49
    5f18:	ac430020 	sw	v1,32(v0)
  statemt[9] = 49;
    5f1c:	3c020000 	lui	v0,0x0
    5f20:	24420000 	addiu	v0,v0,0
    5f24:	24030031 	addiu	v1,zero,49
    5f28:	ac430024 	sw	v1,36(v0)
  statemt[10] = 152;
    5f2c:	3c020000 	lui	v0,0x0
    5f30:	24420000 	addiu	v0,v0,0
    5f34:	24030098 	addiu	v1,zero,152
    5f38:	ac430028 	sw	v1,40(v0)
  statemt[11] = 162;
    5f3c:	3c020000 	lui	v0,0x0
    5f40:	24420000 	addiu	v0,v0,0
    5f44:	240300a2 	addiu	v1,zero,162
    5f48:	ac43002c 	sw	v1,44(v0)
  statemt[12] = 224;
    5f4c:	3c020000 	lui	v0,0x0
    5f50:	24420000 	addiu	v0,v0,0
    5f54:	240300e0 	addiu	v1,zero,224
    5f58:	ac430030 	sw	v1,48(v0)
  statemt[13] = 55;
    5f5c:	3c020000 	lui	v0,0x0
    5f60:	24420000 	addiu	v0,v0,0
    5f64:	24030037 	addiu	v1,zero,55
    5f68:	ac430034 	sw	v1,52(v0)
  statemt[14] = 7;
    5f6c:	3c020000 	lui	v0,0x0
    5f70:	24420000 	addiu	v0,v0,0
    5f74:	24030007 	addiu	v1,zero,7
    5f78:	ac430038 	sw	v1,56(v0)
  statemt[15] = 52;
    5f7c:	3c020000 	lui	v0,0x0
    5f80:	24420000 	addiu	v0,v0,0
    5f84:	24030034 	addiu	v1,zero,52
    5f88:	ac43003c 	sw	v1,60(v0)

  key[0] = 43;
    5f8c:	3c020000 	lui	v0,0x0
    5f90:	2403002b 	addiu	v1,zero,43
    5f94:	ac430000 	sw	v1,0(v0)
  key[1] = 126;
    5f98:	3c020000 	lui	v0,0x0
    5f9c:	24420000 	addiu	v0,v0,0
    5fa0:	2403007e 	addiu	v1,zero,126
    5fa4:	ac430004 	sw	v1,4(v0)
  key[2] = 21;
    5fa8:	3c020000 	lui	v0,0x0
    5fac:	24420000 	addiu	v0,v0,0
    5fb0:	24030015 	addiu	v1,zero,21
    5fb4:	ac430008 	sw	v1,8(v0)
  key[3] = 22;
    5fb8:	3c020000 	lui	v0,0x0
    5fbc:	24420000 	addiu	v0,v0,0
    5fc0:	24030016 	addiu	v1,zero,22
    5fc4:	ac43000c 	sw	v1,12(v0)
  key[4] = 40;
    5fc8:	3c020000 	lui	v0,0x0
    5fcc:	24420000 	addiu	v0,v0,0
    5fd0:	24030028 	addiu	v1,zero,40
    5fd4:	ac430010 	sw	v1,16(v0)
  key[5] = 174;
    5fd8:	3c020000 	lui	v0,0x0
    5fdc:	24420000 	addiu	v0,v0,0
    5fe0:	240300ae 	addiu	v1,zero,174
    5fe4:	ac430014 	sw	v1,20(v0)
  key[6] = 210;
    5fe8:	3c020000 	lui	v0,0x0
    5fec:	24420000 	addiu	v0,v0,0
    5ff0:	240300d2 	addiu	v1,zero,210
    5ff4:	ac430018 	sw	v1,24(v0)
  key[7] = 166;
    5ff8:	3c020000 	lui	v0,0x0
    5ffc:	24420000 	addiu	v0,v0,0
    6000:	240300a6 	addiu	v1,zero,166
    6004:	ac43001c 	sw	v1,28(v0)
  key[8] = 171;
    6008:	3c020000 	lui	v0,0x0
    600c:	24420000 	addiu	v0,v0,0
    6010:	240300ab 	addiu	v1,zero,171
    6014:	ac430020 	sw	v1,32(v0)
  key[9] = 247;
    6018:	3c020000 	lui	v0,0x0
    601c:	24420000 	addiu	v0,v0,0
    6020:	240300f7 	addiu	v1,zero,247
    6024:	ac430024 	sw	v1,36(v0)
  key[10] = 21;
    6028:	3c020000 	lui	v0,0x0
    602c:	24420000 	addiu	v0,v0,0
    6030:	24030015 	addiu	v1,zero,21
    6034:	ac430028 	sw	v1,40(v0)
  key[11] = 136;
    6038:	3c020000 	lui	v0,0x0
    603c:	24420000 	addiu	v0,v0,0
    6040:	24030088 	addiu	v1,zero,136
    6044:	ac43002c 	sw	v1,44(v0)
  key[12] = 9;
    6048:	3c020000 	lui	v0,0x0
    604c:	24420000 	addiu	v0,v0,0
    6050:	24030009 	addiu	v1,zero,9
    6054:	ac430030 	sw	v1,48(v0)
  key[13] = 207;
    6058:	3c020000 	lui	v0,0x0
    605c:	24420000 	addiu	v0,v0,0
    6060:	240300cf 	addiu	v1,zero,207
    6064:	ac430034 	sw	v1,52(v0)
  key[14] = 79;
    6068:	3c020000 	lui	v0,0x0
    606c:	24420000 	addiu	v0,v0,0
    6070:	2403004f 	addiu	v1,zero,79
    6074:	ac430038 	sw	v1,56(v0)
  key[15] = 60;
    6078:	3c020000 	lui	v0,0x0
    607c:	24420000 	addiu	v0,v0,0
    6080:	2403003c 	addiu	v1,zero,60
    6084:	ac43003c 	sw	v1,60(v0)

  encrypt (statemt, key, 128128);
    6088:	3c020000 	lui	v0,0x0
    608c:	24440000 	addiu	a0,v0,0
    6090:	3c020000 	lui	v0,0x0
    6094:	24450000 	addiu	a1,v0,0
    6098:	3c020001 	lui	v0,0x1
    609c:	3446f480 	ori	a2,v0,0xf480
    60a0:	0c000000 	jal	0 <encrypt>
    60a4:	00000000 	sll	zero,zero,0x0
  decrypt (statemt, key, 128128);
    60a8:	3c020000 	lui	v0,0x0
    60ac:	24440000 	addiu	a0,v0,0
    60b0:	3c020000 	lui	v0,0x0
    60b4:	24450000 	addiu	a1,v0,0
    60b8:	3c020001 	lui	v0,0x1
    60bc:	3446f480 	ori	a2,v0,0xf480
    60c0:	0c000000 	jal	0 <encrypt>
    60c4:	00000000 	sll	zero,zero,0x0
  return 0;
    60c8:	00001021 	addu	v0,zero,zero
}
    60cc:	03c0e821 	addu	sp,s8,zero
    60d0:	8fbf0014 	lw	ra,20(sp)
    60d4:	8fbe0010 	lw	s8,16(sp)
    60d8:	27bd0018 	addiu	sp,sp,24
    60dc:	03e00008 	jr	ra
    60e0:	00000000 	sll	zero,zero,0x0

000060e4 <main>:

int
main ()
{
    60e4:	27bdffe8 	addiu	sp,sp,-24
    60e8:	afbf0014 	sw	ra,20(sp)
    60ec:	afbe0010 	sw	s8,16(sp)
    60f0:	03a0f021 	addu	s8,sp,zero
      main_result = 0;
    60f4:	af800000 	sw	zero,0(gp)
      aes_main ();
    60f8:	0c000000 	jal	0 <encrypt>
    60fc:	00000000 	sll	zero,zero,0x0
      printf ("\n%d\n", main_result);
    6100:	8f820000 	lw	v0,0(gp)
    6104:	3c030000 	lui	v1,0x0
    6108:	246408a4 	addiu	a0,v1,2212
    610c:	00402821 	addu	a1,v0,zero
    6110:	0c000000 	jal	0 <encrypt>
    6114:	00000000 	sll	zero,zero,0x0
      return main_result;
    6118:	8f820000 	lw	v0,0(gp)
    }
    611c:	03c0e821 	addu	sp,s8,zero
    6120:	8fbf0014 	lw	ra,20(sp)
    6124:	8fbe0010 	lw	s8,16(sp)
    6128:	27bd0018 	addiu	sp,sp,24
    612c:	03e00008 	jr	ra
    6130:	00000000 	sll	zero,zero,0x0

Disassembly of section .rodata:

00000000 <Rcon0-0x2c>:
   0:	656e6372 	0x656e6372
   4:	79707465 	0x79707465
   8:	64206d65 	0x64206d65
   c:	73736167 	0x73736167
  10:	65200900 	0x65200900
  14:	25780000 	addiu	t8,t3,0
  18:	0a646563 	j	991958c <main+0x99134a8>
  1c:	72797074 	0x72797074
  20:	6f206d65 	0x6f206d65
  24:	73736167 	0x73736167
  28:	65090000 	0x65090000

0000002c <Rcon0>:
  2c:	00000001 	0x1
  30:	00000002 	srl	zero,zero,0x0
  34:	00000004 	sllv	zero,zero,zero
  38:	00000008 	jr	zero
  3c:	00000010 	mfhi	zero
  40:	00000020 	add	zero,zero,zero
  44:	00000040 	sll	zero,zero,0x1
  48:	00000080 	sll	zero,zero,0x2
  4c:	0000001b 	divu	zero,zero,zero
  50:	00000036 	0x36
  54:	0000006c 	0x6c
  58:	000000d8 	0xd8
  5c:	000000ab 	0xab
  60:	0000004d 	break	0x0,0x1
  64:	0000009a 	0x9a
  68:	0000002f 	0x2f
  6c:	0000005e 	0x5e
  70:	000000bc 	0xbc
  74:	00000063 	0x63
  78:	000000c6 	0xc6
  7c:	00000097 	0x97
  80:	00000035 	0x35
  84:	0000006a 	0x6a
  88:	000000d4 	0xd4
  8c:	000000b3 	0xb3
  90:	0000007d 	0x7d
  94:	000000fa 	0xfa
  98:	000000ef 	0xef
  9c:	000000c5 	0xc5
  a0:	00000091 	0x91

000000a4 <Sbox>:
  a4:	00000063 	0x63
  a8:	0000007c 	0x7c
  ac:	00000077 	0x77
  b0:	0000007b 	0x7b
  b4:	000000f2 	0xf2
  b8:	0000006b 	0x6b
  bc:	0000006f 	0x6f
  c0:	000000c5 	0xc5
  c4:	00000030 	0x30
  c8:	00000001 	0x1
  cc:	00000067 	0x67
  d0:	0000002b 	sltu	zero,zero,zero
  d4:	000000fe 	0xfe
  d8:	000000d7 	0xd7
  dc:	000000ab 	0xab
  e0:	00000076 	0x76
  e4:	000000ca 	0xca
  e8:	00000082 	srl	zero,zero,0x2
  ec:	000000c9 	0xc9
  f0:	0000007d 	0x7d
  f4:	000000fa 	0xfa
  f8:	00000059 	0x59
  fc:	00000047 	0x47
 100:	000000f0 	0xf0
 104:	000000ad 	0xad
 108:	000000d4 	0xd4
 10c:	000000a2 	0xa2
 110:	000000af 	0xaf
 114:	0000009c 	0x9c
 118:	000000a4 	0xa4
 11c:	00000072 	0x72
 120:	000000c0 	sll	zero,zero,0x3
 124:	000000b7 	0xb7
 128:	000000fd 	0xfd
 12c:	00000093 	0x93
 130:	00000026 	xor	zero,zero,zero
 134:	00000036 	0x36
 138:	0000003f 	0x3f
 13c:	000000f7 	0xf7
 140:	000000cc 	syscall	0x3
 144:	00000034 	0x34
 148:	000000a5 	0xa5
 14c:	000000e5 	0xe5
 150:	000000f1 	0xf1
 154:	00000071 	0x71
 158:	000000d8 	0xd8
 15c:	00000031 	0x31
 160:	00000015 	0x15
 164:	00000004 	sllv	zero,zero,zero
 168:	000000c7 	0xc7
 16c:	00000023 	negu	zero,zero
 170:	000000c3 	sra	zero,zero,0x3
 174:	00000018 	mult	zero,zero
 178:	00000096 	0x96
 17c:	00000005 	0x5
 180:	0000009a 	0x9a
 184:	00000007 	srav	zero,zero,zero
 188:	00000012 	mflo	zero
 18c:	00000080 	sll	zero,zero,0x2
 190:	000000e2 	0xe2
 194:	000000eb 	0xeb
 198:	00000027 	nor	zero,zero,zero
 19c:	000000b2 	0xb2
 1a0:	00000075 	0x75
 1a4:	00000009 	jalr	zero,zero
 1a8:	00000083 	sra	zero,zero,0x2
 1ac:	0000002c 	0x2c
 1b0:	0000001a 	div	zero,zero,zero
 1b4:	0000001b 	divu	zero,zero,zero
 1b8:	0000006e 	0x6e
 1bc:	0000005a 	0x5a
 1c0:	000000a0 	0xa0
 1c4:	00000052 	0x52
 1c8:	0000003b 	0x3b
 1cc:	000000d6 	0xd6
 1d0:	000000b3 	0xb3
 1d4:	00000029 	0x29
 1d8:	000000e3 	0xe3
 1dc:	0000002f 	0x2f
 1e0:	00000084 	0x84
 1e4:	00000053 	0x53
 1e8:	000000d1 	0xd1
 1ec:	00000000 	sll	zero,zero,0x0
 1f0:	000000ed 	0xed
 1f4:	00000020 	add	zero,zero,zero
 1f8:	000000fc 	0xfc
 1fc:	000000b1 	0xb1
 200:	0000005b 	0x5b
 204:	0000006a 	0x6a
 208:	000000cb 	0xcb
 20c:	000000be 	0xbe
 210:	00000039 	0x39
 214:	0000004a 	0x4a
 218:	0000004c 	syscall	0x1
 21c:	00000058 	0x58
 220:	000000cf 	0xcf
 224:	000000d0 	0xd0
 228:	000000ef 	0xef
 22c:	000000aa 	0xaa
 230:	000000fb 	0xfb
 234:	00000043 	sra	zero,zero,0x1
 238:	0000004d 	break	0x0,0x1
 23c:	00000033 	0x33
 240:	00000085 	0x85
 244:	00000045 	0x45
 248:	000000f9 	0xf9
 24c:	00000002 	srl	zero,zero,0x0
 250:	0000007f 	0x7f
 254:	00000050 	0x50
 258:	0000003c 	0x3c
 25c:	0000009f 	0x9f
 260:	000000a8 	0xa8
 264:	00000051 	0x51
 268:	000000a3 	0xa3
 26c:	00000040 	sll	zero,zero,0x1
 270:	0000008f 	0x8f
 274:	00000092 	0x92
 278:	0000009d 	0x9d
 27c:	00000038 	0x38
 280:	000000f5 	0xf5
 284:	000000bc 	0xbc
 288:	000000b6 	0xb6
 28c:	000000da 	0xda
 290:	00000021 	addu	zero,zero,zero
 294:	00000010 	mfhi	zero
 298:	000000ff 	0xff
 29c:	000000f3 	0xf3
 2a0:	000000d2 	0xd2
 2a4:	000000cd 	break	0x0,0x3
 2a8:	0000000c 	syscall
 2ac:	00000013 	mtlo	zero
 2b0:	000000ec 	0xec
 2b4:	0000005f 	0x5f
 2b8:	00000097 	0x97
 2bc:	00000044 	0x44
 2c0:	00000017 	0x17
 2c4:	000000c4 	0xc4
 2c8:	000000a7 	0xa7
 2cc:	0000007e 	0x7e
 2d0:	0000003d 	0x3d
 2d4:	00000064 	0x64
 2d8:	0000005d 	0x5d
 2dc:	00000019 	multu	zero,zero
 2e0:	00000073 	0x73
 2e4:	00000060 	0x60
 2e8:	00000081 	0x81
 2ec:	0000004f 	0x4f
 2f0:	000000dc 	0xdc
 2f4:	00000022 	neg	zero,zero
 2f8:	0000002a 	slt	zero,zero,zero
 2fc:	00000090 	0x90
 300:	00000088 	0x88
 304:	00000046 	0x46
 308:	000000ee 	0xee
 30c:	000000b8 	0xb8
 310:	00000014 	0x14
 314:	000000de 	0xde
 318:	0000005e 	0x5e
 31c:	0000000b 	0xb
 320:	000000db 	0xdb
 324:	000000e0 	0xe0
 328:	00000032 	0x32
 32c:	0000003a 	0x3a
 330:	0000000a 	0xa
 334:	00000049 	0x49
 338:	00000006 	srlv	zero,zero,zero
 33c:	00000024 	and	zero,zero,zero
 340:	0000005c 	0x5c
 344:	000000c2 	srl	zero,zero,0x3
 348:	000000d3 	0xd3
 34c:	000000ac 	0xac
 350:	00000062 	0x62
 354:	00000091 	0x91
 358:	00000095 	0x95
 35c:	000000e4 	0xe4
 360:	00000079 	0x79
 364:	000000e7 	0xe7
 368:	000000c8 	0xc8
 36c:	00000037 	0x37
 370:	0000006d 	0x6d
 374:	0000008d 	break	0x0,0x2
 378:	000000d5 	0xd5
 37c:	0000004e 	0x4e
 380:	000000a9 	0xa9
 384:	0000006c 	0x6c
 388:	00000056 	0x56
 38c:	000000f4 	0xf4
 390:	000000ea 	0xea
 394:	00000065 	0x65
 398:	0000007a 	0x7a
 39c:	000000ae 	0xae
 3a0:	00000008 	jr	zero
 3a4:	000000ba 	0xba
 3a8:	00000078 	0x78
 3ac:	00000025 	or	zero,zero,zero
 3b0:	0000002e 	0x2e
 3b4:	0000001c 	0x1c
 3b8:	000000a6 	0xa6
 3bc:	000000b4 	0xb4
 3c0:	000000c6 	0xc6
 3c4:	000000e8 	0xe8
 3c8:	000000dd 	0xdd
 3cc:	00000074 	0x74
 3d0:	0000001f 	0x1f
 3d4:	0000004b 	0x4b
 3d8:	000000bd 	0xbd
 3dc:	0000008b 	0x8b
 3e0:	0000008a 	0x8a
 3e4:	00000070 	0x70
 3e8:	0000003e 	0x3e
 3ec:	000000b5 	0xb5
 3f0:	00000066 	0x66
 3f4:	00000048 	0x48
 3f8:	00000003 	sra	zero,zero,0x0
 3fc:	000000f6 	0xf6
 400:	0000000e 	0xe
 404:	00000061 	0x61
 408:	00000035 	0x35
 40c:	00000057 	0x57
 410:	000000b9 	0xb9
 414:	00000086 	0x86
 418:	000000c1 	0xc1
 41c:	0000001d 	0x1d
 420:	0000009e 	0x9e
 424:	000000e1 	0xe1
 428:	000000f8 	0xf8
 42c:	00000098 	0x98
 430:	00000011 	mthi	zero
 434:	00000069 	0x69
 438:	000000d9 	0xd9
 43c:	0000008e 	0x8e
 440:	00000094 	0x94
 444:	0000009b 	0x9b
 448:	0000001e 	0x1e
 44c:	00000087 	0x87
 450:	000000e9 	0xe9
 454:	000000ce 	0xce
 458:	00000055 	0x55
 45c:	00000028 	0x28
 460:	000000df 	0xdf
 464:	0000008c 	syscall	0x2
 468:	000000a1 	0xa1
 46c:	00000089 	0x89
 470:	0000000d 	break
 474:	000000bf 	0xbf
 478:	000000e6 	0xe6
 47c:	00000042 	srl	zero,zero,0x1
 480:	00000068 	0x68
 484:	00000041 	0x41
 488:	00000099 	0x99
 48c:	0000002d 	0x2d
 490:	0000000f 	0xf
 494:	000000b0 	0xb0
 498:	00000054 	0x54
 49c:	000000bb 	0xbb
 4a0:	00000016 	0x16

000004a4 <invSbox>:
 4a4:	00000052 	0x52
 4a8:	00000009 	jalr	zero,zero
 4ac:	0000006a 	0x6a
 4b0:	000000d5 	0xd5
 4b4:	00000030 	0x30
 4b8:	00000036 	0x36
 4bc:	000000a5 	0xa5
 4c0:	00000038 	0x38
 4c4:	000000bf 	0xbf
 4c8:	00000040 	sll	zero,zero,0x1
 4cc:	000000a3 	0xa3
 4d0:	0000009e 	0x9e
 4d4:	00000081 	0x81
 4d8:	000000f3 	0xf3
 4dc:	000000d7 	0xd7
 4e0:	000000fb 	0xfb
 4e4:	0000007c 	0x7c
 4e8:	000000e3 	0xe3
 4ec:	00000039 	0x39
 4f0:	00000082 	srl	zero,zero,0x2
 4f4:	0000009b 	0x9b
 4f8:	0000002f 	0x2f
 4fc:	000000ff 	0xff
 500:	00000087 	0x87
 504:	00000034 	0x34
 508:	0000008e 	0x8e
 50c:	00000043 	sra	zero,zero,0x1
 510:	00000044 	0x44
 514:	000000c4 	0xc4
 518:	000000de 	0xde
 51c:	000000e9 	0xe9
 520:	000000cb 	0xcb
 524:	00000054 	0x54
 528:	0000007b 	0x7b
 52c:	00000094 	0x94
 530:	00000032 	0x32
 534:	000000a6 	0xa6
 538:	000000c2 	srl	zero,zero,0x3
 53c:	00000023 	negu	zero,zero
 540:	0000003d 	0x3d
 544:	000000ee 	0xee
 548:	0000004c 	syscall	0x1
 54c:	00000095 	0x95
 550:	0000000b 	0xb
 554:	00000042 	srl	zero,zero,0x1
 558:	000000fa 	0xfa
 55c:	000000c3 	sra	zero,zero,0x3
 560:	0000004e 	0x4e
 564:	00000008 	jr	zero
 568:	0000002e 	0x2e
 56c:	000000a1 	0xa1
 570:	00000066 	0x66
 574:	00000028 	0x28
 578:	000000d9 	0xd9
 57c:	00000024 	and	zero,zero,zero
 580:	000000b2 	0xb2
 584:	00000076 	0x76
 588:	0000005b 	0x5b
 58c:	000000a2 	0xa2
 590:	00000049 	0x49
 594:	0000006d 	0x6d
 598:	0000008b 	0x8b
 59c:	000000d1 	0xd1
 5a0:	00000025 	or	zero,zero,zero
 5a4:	00000072 	0x72
 5a8:	000000f8 	0xf8
 5ac:	000000f6 	0xf6
 5b0:	00000064 	0x64
 5b4:	00000086 	0x86
 5b8:	00000068 	0x68
 5bc:	00000098 	0x98
 5c0:	00000016 	0x16
 5c4:	000000d4 	0xd4
 5c8:	000000a4 	0xa4
 5cc:	0000005c 	0x5c
 5d0:	000000cc 	syscall	0x3
 5d4:	0000005d 	0x5d
 5d8:	00000065 	0x65
 5dc:	000000b6 	0xb6
 5e0:	00000092 	0x92
 5e4:	0000006c 	0x6c
 5e8:	00000070 	0x70
 5ec:	00000048 	0x48
 5f0:	00000050 	0x50
 5f4:	000000fd 	0xfd
 5f8:	000000ed 	0xed
 5fc:	000000b9 	0xb9
 600:	000000da 	0xda
 604:	0000005e 	0x5e
 608:	00000015 	0x15
 60c:	00000046 	0x46
 610:	00000057 	0x57
 614:	000000a7 	0xa7
 618:	0000008d 	break	0x0,0x2
 61c:	0000009d 	0x9d
 620:	00000084 	0x84
 624:	00000090 	0x90
 628:	000000d8 	0xd8
 62c:	000000ab 	0xab
 630:	00000000 	sll	zero,zero,0x0
 634:	0000008c 	syscall	0x2
 638:	000000bc 	0xbc
 63c:	000000d3 	0xd3
 640:	0000000a 	0xa
 644:	000000f7 	0xf7
 648:	000000e4 	0xe4
 64c:	00000058 	0x58
 650:	00000005 	0x5
 654:	000000b8 	0xb8
 658:	000000b3 	0xb3
 65c:	00000045 	0x45
 660:	00000006 	srlv	zero,zero,zero
 664:	000000d0 	0xd0
 668:	0000002c 	0x2c
 66c:	0000001e 	0x1e
 670:	0000008f 	0x8f
 674:	000000ca 	0xca
 678:	0000003f 	0x3f
 67c:	0000000f 	0xf
 680:	00000002 	srl	zero,zero,0x0
 684:	000000c1 	0xc1
 688:	000000af 	0xaf
 68c:	000000bd 	0xbd
 690:	00000003 	sra	zero,zero,0x0
 694:	00000001 	0x1
 698:	00000013 	mtlo	zero
 69c:	0000008a 	0x8a
 6a0:	0000006b 	0x6b
 6a4:	0000003a 	0x3a
 6a8:	00000091 	0x91
 6ac:	00000011 	mthi	zero
 6b0:	00000041 	0x41
 6b4:	0000004f 	0x4f
 6b8:	00000067 	0x67
 6bc:	000000dc 	0xdc
 6c0:	000000ea 	0xea
 6c4:	00000097 	0x97
 6c8:	000000f2 	0xf2
 6cc:	000000cf 	0xcf
 6d0:	000000ce 	0xce
 6d4:	000000f0 	0xf0
 6d8:	000000b4 	0xb4
 6dc:	000000e6 	0xe6
 6e0:	00000073 	0x73
 6e4:	00000096 	0x96
 6e8:	000000ac 	0xac
 6ec:	00000074 	0x74
 6f0:	00000022 	neg	zero,zero
 6f4:	000000e7 	0xe7
 6f8:	000000ad 	0xad
 6fc:	00000035 	0x35
 700:	00000085 	0x85
 704:	000000e2 	0xe2
 708:	000000f9 	0xf9
 70c:	00000037 	0x37
 710:	000000e8 	0xe8
 714:	0000001c 	0x1c
 718:	00000075 	0x75
 71c:	000000df 	0xdf
 720:	0000006e 	0x6e
 724:	00000047 	0x47
 728:	000000f1 	0xf1
 72c:	0000001a 	div	zero,zero,zero
 730:	00000071 	0x71
 734:	0000001d 	0x1d
 738:	00000029 	0x29
 73c:	000000c5 	0xc5
 740:	00000089 	0x89
 744:	0000006f 	0x6f
 748:	000000b7 	0xb7
 74c:	00000062 	0x62
 750:	0000000e 	0xe
 754:	000000aa 	0xaa
 758:	00000018 	mult	zero,zero
 75c:	000000be 	0xbe
 760:	0000001b 	divu	zero,zero,zero
 764:	000000fc 	0xfc
 768:	00000056 	0x56
 76c:	0000003e 	0x3e
 770:	0000004b 	0x4b
 774:	000000c6 	0xc6
 778:	000000d2 	0xd2
 77c:	00000079 	0x79
 780:	00000020 	add	zero,zero,zero
 784:	0000009a 	0x9a
 788:	000000db 	0xdb
 78c:	000000c0 	sll	zero,zero,0x3
 790:	000000fe 	0xfe
 794:	00000078 	0x78
 798:	000000cd 	break	0x0,0x3
 79c:	0000005a 	0x5a
 7a0:	000000f4 	0xf4
 7a4:	0000001f 	0x1f
 7a8:	000000dd 	0xdd
 7ac:	000000a8 	0xa8
 7b0:	00000033 	0x33
 7b4:	00000088 	0x88
 7b8:	00000007 	srav	zero,zero,zero
 7bc:	000000c7 	0xc7
 7c0:	00000031 	0x31
 7c4:	000000b1 	0xb1
 7c8:	00000012 	mflo	zero
 7cc:	00000010 	mfhi	zero
 7d0:	00000059 	0x59
 7d4:	00000027 	nor	zero,zero,zero
 7d8:	00000080 	sll	zero,zero,0x2
 7dc:	000000ec 	0xec
 7e0:	0000005f 	0x5f
 7e4:	00000060 	0x60
 7e8:	00000051 	0x51
 7ec:	0000007f 	0x7f
 7f0:	000000a9 	0xa9
 7f4:	00000019 	multu	zero,zero
 7f8:	000000b5 	0xb5
 7fc:	0000004a 	0x4a
 800:	0000000d 	break
 804:	0000002d 	0x2d
 808:	000000e5 	0xe5
 80c:	0000007a 	0x7a
 810:	0000009f 	0x9f
 814:	00000093 	0x93
 818:	000000c9 	0xc9
 81c:	0000009c 	0x9c
 820:	000000ef 	0xef
 824:	000000a0 	0xa0
 828:	000000e0 	0xe0
 82c:	0000003b 	0x3b
 830:	0000004d 	break	0x0,0x1
 834:	000000ae 	0xae
 838:	0000002a 	slt	zero,zero,zero
 83c:	000000f5 	0xf5
 840:	000000b0 	0xb0
 844:	000000c8 	0xc8
 848:	000000eb 	0xeb
 84c:	000000bb 	0xbb
 850:	0000003c 	0x3c
 854:	00000083 	sra	zero,zero,0x2
 858:	00000053 	0x53
 85c:	00000099 	0x99
 860:	00000061 	0x61
 864:	00000017 	0x17
 868:	0000002b 	sltu	zero,zero,zero
 86c:	00000004 	sllv	zero,zero,zero
 870:	0000007e 	0x7e
 874:	000000ba 	0xba
 878:	00000077 	0x77
 87c:	000000d6 	0xd6
 880:	00000026 	xor	zero,zero,zero
 884:	000000e1 	0xe1
 888:	00000069 	0x69
 88c:	00000014 	0x14
 890:	00000063 	0x63
 894:	00000055 	0x55
 898:	00000021 	addu	zero,zero,zero
 89c:	0000000c 	syscall
 8a0:	0000007d 	0x7d
 8a4:	0a25640a 	j	8959028 <main+0x8952f44>
 8a8:	00000000 	sll	zero,zero,0x0

000008ac <C.1.4978>:
 8ac:	00000032 	0x32
 8b0:	00000043 	sra	zero,zero,0x1
 8b4:	000000f6 	0xf6
 8b8:	000000a8 	0xa8
 8bc:	00000088 	0x88
 8c0:	0000005a 	0x5a
 8c4:	00000030 	0x30
 8c8:	0000008d 	break	0x0,0x2
 8cc:	00000031 	0x31
 8d0:	00000031 	0x31
 8d4:	00000098 	0x98
 8d8:	000000a2 	0xa2
 8dc:	000000e0 	0xe0
 8e0:	00000037 	0x37
 8e4:	00000007 	srav	zero,zero,zero
 8e8:	00000034 	0x34

000008ec <C.12.5007>:
 8ec:	00000039 	0x39
 8f0:	00000025 	or	zero,zero,zero
 8f4:	00000084 	0x84
 8f8:	0000001d 	0x1d
 8fc:	00000002 	srl	zero,zero,0x0
 900:	000000dc 	0xdc
 904:	00000009 	jalr	zero,zero
 908:	000000fb 	0xfb
 90c:	000000dc 	0xdc
 910:	00000011 	mthi	zero
 914:	00000085 	0x85
 918:	00000097 	0x97
 91c:	00000019 	multu	zero,zero
 920:	0000006a 	0x6a
 924:	0000000b 	0xb
 928:	00000032 	0x32
