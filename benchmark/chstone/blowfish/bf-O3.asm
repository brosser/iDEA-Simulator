
bf.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <BF_encrypt.clone.0>:
  l = data[0];
  r = data[1];

  if (encrypt)
    {
      l ^= p[0];
       0:	3c030000 	lui	v1,0x0
       4:	8c620000 	lw	v0,0(v1)
     int encrypt;
{
  register BF_LONG l, r, *p, *s;
  p = key_P;
  s = &(key_S[0]);
  l = data[0];
       8:	8c880000 	lw	t0,0(a0)

  if (encrypt)
    {
      l ^= p[0];

      BF_ENC (r, l, s, p[1]);
       c:	24630000 	addiu	v1,v1,0
  l = data[0];
  r = data[1];

  if (encrypt)
    {
      l ^= p[0];
      10:	01024026 	xor	t0,t0,v0

      BF_ENC (r, l, s, p[1]);
      14:	00084c02 	srl	t1,t0,0x10
      18:	00082a02 	srl	a1,t0,0x8
      1c:	312900ff 	andi	t1,t1,0xff
      20:	00083e02 	srl	a3,t0,0x18
      24:	25290100 	addiu	t1,t1,256
      28:	30a500ff 	andi	a1,a1,0xff
      2c:	3c020000 	lui	v0,0x0
      30:	24420000 	addiu	v0,v0,0
      34:	310600ff 	andi	a2,t0,0xff
      38:	00094880 	sll	t1,t1,0x2
      3c:	00073880 	sll	a3,a3,0x2
      40:	24a50200 	addiu	a1,a1,512
      44:	01224821 	addu	t1,t1,v0
      48:	00e23821 	addu	a3,a3,v0
      4c:	00052880 	sll	a1,a1,0x2
      50:	24c60300 	addiu	a2,a2,768
      54:	8d2b0000 	lw	t3,0(t1)
      58:	00a22821 	addu	a1,a1,v0
      5c:	8ce70000 	lw	a3,0(a3)
      60:	00063080 	sll	a2,a2,0x2
      64:	8caa0000 	lw	t2,0(a1)
      68:	00c23021 	addu	a2,a2,v0
      6c:	8c690004 	lw	t1,4(v1)
      70:	8cc60000 	lw	a2,0(a2)
{
  register BF_LONG l, r, *p, *s;
  p = key_P;
  s = &(key_S[0]);
  l = data[0];
  r = data[1];
      74:	8c850004 	lw	a1,4(a0)

  if (encrypt)
    {
      l ^= p[0];

      BF_ENC (r, l, s, p[1]);
      78:	01673821 	addu	a3,t3,a3
      7c:	00ea3826 	xor	a3,a3,t2
      80:	00a92826 	xor	a1,a1,t1
      84:	00e63821 	addu	a3,a3,a2
      88:	00a73826 	xor	a3,a1,a3
      BF_ENC (l, r, s, p[2]);
      8c:	00075402 	srl	t2,a3,0x10
      90:	00074a02 	srl	t1,a3,0x8
      94:	314a00ff 	andi	t2,t2,0xff
      98:	00073602 	srl	a2,a3,0x18
      9c:	254a0100 	addiu	t2,t2,256
      a0:	312900ff 	andi	t1,t1,0xff
      a4:	30e500ff 	andi	a1,a3,0xff
      a8:	000a5080 	sll	t2,t2,0x2
      ac:	00063080 	sll	a2,a2,0x2
      b0:	25290200 	addiu	t1,t1,512
      b4:	01425021 	addu	t2,t2,v0
      b8:	00c23021 	addu	a2,a2,v0
      bc:	00094880 	sll	t1,t1,0x2
      c0:	24a50300 	addiu	a1,a1,768
      c4:	8d4b0000 	lw	t3,0(t2)
      c8:	8cc60000 	lw	a2,0(a2)
      cc:	01224821 	addu	t1,t1,v0
      d0:	00052880 	sll	a1,a1,0x2
      d4:	8d290000 	lw	t1,0(t1)
      d8:	00a22821 	addu	a1,a1,v0
      dc:	8c6a0008 	lw	t2,8(v1)
      e0:	8ca50000 	lw	a1,0(a1)
      e4:	01663021 	addu	a2,t3,a2
      e8:	00c93026 	xor	a2,a2,t1
      ec:	010a4026 	xor	t0,t0,t2
      f0:	00c53021 	addu	a2,a2,a1
      f4:	01063026 	xor	a2,t0,a2
      BF_ENC (r, l, s, p[3]);
      f8:	00065402 	srl	t2,a2,0x10
      fc:	00064a02 	srl	t1,a2,0x8
     100:	314a00ff 	andi	t2,t2,0xff
     104:	00062e02 	srl	a1,a2,0x18
     108:	254a0100 	addiu	t2,t2,256
     10c:	312900ff 	andi	t1,t1,0xff
     110:	30c800ff 	andi	t0,a2,0xff
     114:	000a5080 	sll	t2,t2,0x2
     118:	00052880 	sll	a1,a1,0x2
     11c:	25290200 	addiu	t1,t1,512
     120:	01425021 	addu	t2,t2,v0
     124:	00a22821 	addu	a1,a1,v0
     128:	00094880 	sll	t1,t1,0x2
     12c:	25080300 	addiu	t0,t0,768
     130:	8d4b0000 	lw	t3,0(t2)
     134:	01224821 	addu	t1,t1,v0
     138:	8ca50000 	lw	a1,0(a1)
     13c:	00084080 	sll	t0,t0,0x2
     140:	8d2a0000 	lw	t2,0(t1)
     144:	01024021 	addu	t0,t0,v0
     148:	8c69000c 	lw	t1,12(v1)
     14c:	8d080000 	lw	t0,0(t0)
     150:	01652821 	addu	a1,t3,a1
     154:	00aa2826 	xor	a1,a1,t2
     158:	00e93826 	xor	a3,a3,t1
     15c:	00a82821 	addu	a1,a1,t0
     160:	00e52826 	xor	a1,a3,a1
      BF_ENC (l, r, s, p[4]);
     164:	00055402 	srl	t2,a1,0x10
     168:	00054202 	srl	t0,a1,0x8
     16c:	314a00ff 	andi	t2,t2,0xff
     170:	00054e02 	srl	t1,a1,0x18
     174:	254a0100 	addiu	t2,t2,256
     178:	310800ff 	andi	t0,t0,0xff
     17c:	30a700ff 	andi	a3,a1,0xff
     180:	000a5080 	sll	t2,t2,0x2
     184:	00094880 	sll	t1,t1,0x2
     188:	25080200 	addiu	t0,t0,512
     18c:	01425021 	addu	t2,t2,v0
     190:	01224821 	addu	t1,t1,v0
     194:	00084080 	sll	t0,t0,0x2
     198:	24e70300 	addiu	a3,a3,768
     19c:	8d4b0000 	lw	t3,0(t2)
     1a0:	01024021 	addu	t0,t0,v0
     1a4:	8d2a0000 	lw	t2,0(t1)
     1a8:	00073880 	sll	a3,a3,0x2
     1ac:	8d090000 	lw	t1,0(t0)
     1b0:	00e23821 	addu	a3,a3,v0
     1b4:	8c680010 	lw	t0,16(v1)
     1b8:	8ce70000 	lw	a3,0(a3)
     1bc:	016a5021 	addu	t2,t3,t2
     1c0:	01495026 	xor	t2,t2,t1
     1c4:	00c83026 	xor	a2,a2,t0
     1c8:	01475021 	addu	t2,t2,a3
     1cc:	00ca5026 	xor	t2,a2,t2
      BF_ENC (r, l, s, p[5]);
     1d0:	000a4c02 	srl	t1,t2,0x10
     1d4:	000a3a02 	srl	a3,t2,0x8
     1d8:	312900ff 	andi	t1,t1,0xff
     1dc:	000a4602 	srl	t0,t2,0x18
     1e0:	25290100 	addiu	t1,t1,256
     1e4:	30e700ff 	andi	a3,a3,0xff
     1e8:	314600ff 	andi	a2,t2,0xff
     1ec:	00094880 	sll	t1,t1,0x2
     1f0:	00084080 	sll	t0,t0,0x2
     1f4:	24e70200 	addiu	a3,a3,512
     1f8:	01224821 	addu	t1,t1,v0
     1fc:	01024021 	addu	t0,t0,v0
     200:	00073880 	sll	a3,a3,0x2
     204:	24c60300 	addiu	a2,a2,768
     208:	8d2b0000 	lw	t3,0(t1)
     20c:	00e23821 	addu	a3,a3,v0
     210:	8d090000 	lw	t1,0(t0)
     214:	00063080 	sll	a2,a2,0x2
     218:	8ce80000 	lw	t0,0(a3)
     21c:	00c23021 	addu	a2,a2,v0
     220:	8c670014 	lw	a3,20(v1)
     224:	8cc60000 	lw	a2,0(a2)
     228:	01694821 	addu	t1,t3,t1
     22c:	01284826 	xor	t1,t1,t0
     230:	00a72826 	xor	a1,a1,a3
     234:	01264821 	addu	t1,t1,a2
     238:	00a94826 	xor	t1,a1,t1
      BF_ENC (l, r, s, p[6]);
     23c:	00094402 	srl	t0,t1,0x10
     240:	00093202 	srl	a2,t1,0x8
     244:	310800ff 	andi	t0,t0,0xff
     248:	00093e02 	srl	a3,t1,0x18
     24c:	25080100 	addiu	t0,t0,256
     250:	30c600ff 	andi	a2,a2,0xff
     254:	312500ff 	andi	a1,t1,0xff
     258:	00084080 	sll	t0,t0,0x2
     25c:	00073880 	sll	a3,a3,0x2
     260:	24c60200 	addiu	a2,a2,512
     264:	01024021 	addu	t0,t0,v0
     268:	00e23821 	addu	a3,a3,v0
     26c:	00063080 	sll	a2,a2,0x2
     270:	24a50300 	addiu	a1,a1,768
     274:	8d0b0000 	lw	t3,0(t0)
     278:	00c23021 	addu	a2,a2,v0
     27c:	8ce80000 	lw	t0,0(a3)
     280:	00052880 	sll	a1,a1,0x2
     284:	8cc70000 	lw	a3,0(a2)
     288:	00a22821 	addu	a1,a1,v0
     28c:	8c660018 	lw	a2,24(v1)
     290:	8ca50000 	lw	a1,0(a1)
     294:	01684021 	addu	t0,t3,t0
     298:	01074026 	xor	t0,t0,a3
     29c:	01465026 	xor	t2,t2,a2
     2a0:	01054021 	addu	t0,t0,a1
     2a4:	01484026 	xor	t0,t2,t0
      BF_ENC (r, l, s, p[7]);
     2a8:	00085402 	srl	t2,t0,0x10
     2ac:	00082a02 	srl	a1,t0,0x8
     2b0:	314a00ff 	andi	t2,t2,0xff
     2b4:	00083e02 	srl	a3,t0,0x18
     2b8:	254a0100 	addiu	t2,t2,256
     2bc:	30a500ff 	andi	a1,a1,0xff
     2c0:	310600ff 	andi	a2,t0,0xff
     2c4:	000a5080 	sll	t2,t2,0x2
     2c8:	00073880 	sll	a3,a3,0x2
     2cc:	24a50200 	addiu	a1,a1,512
     2d0:	01425021 	addu	t2,t2,v0
     2d4:	00e23821 	addu	a3,a3,v0
     2d8:	00052880 	sll	a1,a1,0x2
     2dc:	24c60300 	addiu	a2,a2,768
     2e0:	8d4b0000 	lw	t3,0(t2)
     2e4:	00a22821 	addu	a1,a1,v0
     2e8:	8ce70000 	lw	a3,0(a3)
     2ec:	00063080 	sll	a2,a2,0x2
     2f0:	8caa0000 	lw	t2,0(a1)
     2f4:	00c23021 	addu	a2,a2,v0
     2f8:	8c65001c 	lw	a1,28(v1)
     2fc:	8cc60000 	lw	a2,0(a2)
     300:	01673821 	addu	a3,t3,a3
     304:	00ea3826 	xor	a3,a3,t2
     308:	01254826 	xor	t1,t1,a1
     30c:	00e63821 	addu	a3,a3,a2
     310:	01273826 	xor	a3,t1,a3
      BF_ENC (l, r, s, p[8]);
     314:	00075402 	srl	t2,a3,0x10
     318:	00074a02 	srl	t1,a3,0x8
     31c:	314a00ff 	andi	t2,t2,0xff
     320:	00073602 	srl	a2,a3,0x18
     324:	254a0100 	addiu	t2,t2,256
     328:	312900ff 	andi	t1,t1,0xff
     32c:	30e500ff 	andi	a1,a3,0xff
     330:	000a5080 	sll	t2,t2,0x2
     334:	00063080 	sll	a2,a2,0x2
     338:	25290200 	addiu	t1,t1,512
     33c:	01425021 	addu	t2,t2,v0
     340:	00c23021 	addu	a2,a2,v0
     344:	00094880 	sll	t1,t1,0x2
     348:	24a50300 	addiu	a1,a1,768
     34c:	8d4b0000 	lw	t3,0(t2)
     350:	8cc60000 	lw	a2,0(a2)
     354:	01224821 	addu	t1,t1,v0
     358:	00052880 	sll	a1,a1,0x2
     35c:	8d290000 	lw	t1,0(t1)
     360:	00a22821 	addu	a1,a1,v0
     364:	8c6a0020 	lw	t2,32(v1)
     368:	8ca50000 	lw	a1,0(a1)
     36c:	01663021 	addu	a2,t3,a2
     370:	00c93026 	xor	a2,a2,t1
     374:	010a4026 	xor	t0,t0,t2
     378:	00c53021 	addu	a2,a2,a1
     37c:	01063026 	xor	a2,t0,a2
      BF_ENC (r, l, s, p[9]);
     380:	00065402 	srl	t2,a2,0x10
     384:	00064a02 	srl	t1,a2,0x8
     388:	314a00ff 	andi	t2,t2,0xff
     38c:	00062e02 	srl	a1,a2,0x18
     390:	254a0100 	addiu	t2,t2,256
     394:	312900ff 	andi	t1,t1,0xff
     398:	30c800ff 	andi	t0,a2,0xff
     39c:	000a5080 	sll	t2,t2,0x2
     3a0:	00052880 	sll	a1,a1,0x2
     3a4:	25290200 	addiu	t1,t1,512
     3a8:	01425021 	addu	t2,t2,v0
     3ac:	00a22821 	addu	a1,a1,v0
     3b0:	00094880 	sll	t1,t1,0x2
     3b4:	25080300 	addiu	t0,t0,768
     3b8:	8d4b0000 	lw	t3,0(t2)
     3bc:	01224821 	addu	t1,t1,v0
     3c0:	8ca50000 	lw	a1,0(a1)
     3c4:	00084080 	sll	t0,t0,0x2
     3c8:	8d2a0000 	lw	t2,0(t1)
     3cc:	01024021 	addu	t0,t0,v0
     3d0:	8c690024 	lw	t1,36(v1)
     3d4:	8d080000 	lw	t0,0(t0)
     3d8:	01652821 	addu	a1,t3,a1
     3dc:	00aa2826 	xor	a1,a1,t2
     3e0:	00e93826 	xor	a3,a3,t1
     3e4:	00a82821 	addu	a1,a1,t0
     3e8:	00e52826 	xor	a1,a3,a1
      BF_ENC (l, r, s, p[10]);
     3ec:	00055402 	srl	t2,a1,0x10
     3f0:	00054202 	srl	t0,a1,0x8
     3f4:	314a00ff 	andi	t2,t2,0xff
     3f8:	00054e02 	srl	t1,a1,0x18
     3fc:	254a0100 	addiu	t2,t2,256
     400:	310800ff 	andi	t0,t0,0xff
     404:	30a700ff 	andi	a3,a1,0xff
     408:	000a5080 	sll	t2,t2,0x2
     40c:	00094880 	sll	t1,t1,0x2
     410:	25080200 	addiu	t0,t0,512
     414:	01425021 	addu	t2,t2,v0
     418:	01224821 	addu	t1,t1,v0
     41c:	00084080 	sll	t0,t0,0x2
     420:	24e70300 	addiu	a3,a3,768
     424:	8d4b0000 	lw	t3,0(t2)
     428:	01024021 	addu	t0,t0,v0
     42c:	8d2a0000 	lw	t2,0(t1)
     430:	00073880 	sll	a3,a3,0x2
     434:	8d090000 	lw	t1,0(t0)
     438:	00e23821 	addu	a3,a3,v0
     43c:	8c680028 	lw	t0,40(v1)
     440:	8ce70000 	lw	a3,0(a3)
     444:	016a5021 	addu	t2,t3,t2
     448:	01495026 	xor	t2,t2,t1
     44c:	00c83026 	xor	a2,a2,t0
     450:	01475021 	addu	t2,t2,a3
     454:	00ca5026 	xor	t2,a2,t2
      BF_ENC (r, l, s, p[11]);
     458:	000a4c02 	srl	t1,t2,0x10
     45c:	000a3a02 	srl	a3,t2,0x8
     460:	312900ff 	andi	t1,t1,0xff
     464:	000a4602 	srl	t0,t2,0x18
     468:	25290100 	addiu	t1,t1,256
     46c:	30e700ff 	andi	a3,a3,0xff
     470:	314600ff 	andi	a2,t2,0xff
     474:	00094880 	sll	t1,t1,0x2
     478:	00084080 	sll	t0,t0,0x2
     47c:	24e70200 	addiu	a3,a3,512
     480:	01224821 	addu	t1,t1,v0
     484:	01024021 	addu	t0,t0,v0
     488:	00073880 	sll	a3,a3,0x2
     48c:	24c60300 	addiu	a2,a2,768
     490:	8d2b0000 	lw	t3,0(t1)
     494:	00e23821 	addu	a3,a3,v0
     498:	8d090000 	lw	t1,0(t0)
     49c:	00063080 	sll	a2,a2,0x2
     4a0:	8ce80000 	lw	t0,0(a3)
     4a4:	00c23021 	addu	a2,a2,v0
     4a8:	8c67002c 	lw	a3,44(v1)
     4ac:	8cc60000 	lw	a2,0(a2)
     4b0:	01694821 	addu	t1,t3,t1
     4b4:	01284826 	xor	t1,t1,t0
     4b8:	00a72826 	xor	a1,a1,a3
     4bc:	01264821 	addu	t1,t1,a2
     4c0:	00a94826 	xor	t1,a1,t1
      BF_ENC (l, r, s, p[12]);
     4c4:	00094402 	srl	t0,t1,0x10
     4c8:	00093202 	srl	a2,t1,0x8
     4cc:	310800ff 	andi	t0,t0,0xff
     4d0:	00093e02 	srl	a3,t1,0x18
     4d4:	25080100 	addiu	t0,t0,256
     4d8:	30c600ff 	andi	a2,a2,0xff
     4dc:	312500ff 	andi	a1,t1,0xff
     4e0:	00084080 	sll	t0,t0,0x2
     4e4:	00073880 	sll	a3,a3,0x2
     4e8:	24c60200 	addiu	a2,a2,512
     4ec:	01024021 	addu	t0,t0,v0
     4f0:	00e23821 	addu	a3,a3,v0
     4f4:	00063080 	sll	a2,a2,0x2
     4f8:	24a50300 	addiu	a1,a1,768
     4fc:	8d0b0000 	lw	t3,0(t0)
     500:	00c23021 	addu	a2,a2,v0
     504:	8ce80000 	lw	t0,0(a3)
     508:	00052880 	sll	a1,a1,0x2
     50c:	8cc70000 	lw	a3,0(a2)
     510:	00a22821 	addu	a1,a1,v0
     514:	8c660030 	lw	a2,48(v1)
     518:	8ca50000 	lw	a1,0(a1)
     51c:	01684021 	addu	t0,t3,t0
     520:	01074026 	xor	t0,t0,a3
     524:	01465026 	xor	t2,t2,a2
     528:	01054021 	addu	t0,t0,a1
     52c:	01484026 	xor	t0,t2,t0
      BF_ENC (r, l, s, p[13]);
     530:	00085402 	srl	t2,t0,0x10
     534:	00082a02 	srl	a1,t0,0x8
     538:	314a00ff 	andi	t2,t2,0xff
     53c:	00083e02 	srl	a3,t0,0x18
     540:	254a0100 	addiu	t2,t2,256
     544:	30a500ff 	andi	a1,a1,0xff
     548:	310600ff 	andi	a2,t0,0xff
     54c:	000a5080 	sll	t2,t2,0x2
     550:	00073880 	sll	a3,a3,0x2
     554:	24a50200 	addiu	a1,a1,512
     558:	01425021 	addu	t2,t2,v0
     55c:	00e23821 	addu	a3,a3,v0
     560:	00052880 	sll	a1,a1,0x2
     564:	24c60300 	addiu	a2,a2,768
     568:	8d4b0000 	lw	t3,0(t2)
     56c:	00a22821 	addu	a1,a1,v0
     570:	8ce70000 	lw	a3,0(a3)
     574:	00063080 	sll	a2,a2,0x2
     578:	8caa0000 	lw	t2,0(a1)
     57c:	00c23021 	addu	a2,a2,v0
     580:	8c650034 	lw	a1,52(v1)
     584:	8cc60000 	lw	a2,0(a2)
     588:	01673821 	addu	a3,t3,a3
     58c:	00ea3826 	xor	a3,a3,t2
     590:	01254826 	xor	t1,t1,a1
     594:	00e63821 	addu	a3,a3,a2
     598:	01273826 	xor	a3,t1,a3
      BF_ENC (l, r, s, p[14]);
     59c:	00075402 	srl	t2,a3,0x10
     5a0:	00074a02 	srl	t1,a3,0x8
     5a4:	314a00ff 	andi	t2,t2,0xff
     5a8:	00073602 	srl	a2,a3,0x18
     5ac:	254a0100 	addiu	t2,t2,256
     5b0:	312900ff 	andi	t1,t1,0xff
     5b4:	30e500ff 	andi	a1,a3,0xff
     5b8:	000a5080 	sll	t2,t2,0x2
     5bc:	00063080 	sll	a2,a2,0x2
     5c0:	25290200 	addiu	t1,t1,512
     5c4:	01425021 	addu	t2,t2,v0
     5c8:	00c23021 	addu	a2,a2,v0
     5cc:	00094880 	sll	t1,t1,0x2
     5d0:	24a50300 	addiu	a1,a1,768
     5d4:	8d4b0000 	lw	t3,0(t2)
     5d8:	01224821 	addu	t1,t1,v0
     5dc:	8cc60000 	lw	a2,0(a2)
     5e0:	00052880 	sll	a1,a1,0x2
     5e4:	8d2a0000 	lw	t2,0(t1)
     5e8:	00a22821 	addu	a1,a1,v0
     5ec:	8c690038 	lw	t1,56(v1)
     5f0:	8ca50000 	lw	a1,0(a1)
     5f4:	01663021 	addu	a2,t3,a2
     5f8:	00ca3026 	xor	a2,a2,t2
     5fc:	01094026 	xor	t0,t0,t1
     600:	00c53021 	addu	a2,a2,a1
     604:	01063026 	xor	a2,t0,a2
      BF_ENC (r, l, s, p[15]);
     608:	00065402 	srl	t2,a2,0x10
     60c:	00064a02 	srl	t1,a2,0x8
     610:	314a00ff 	andi	t2,t2,0xff
     614:	00062e02 	srl	a1,a2,0x18
     618:	254a0100 	addiu	t2,t2,256
     61c:	312900ff 	andi	t1,t1,0xff
     620:	30c800ff 	andi	t0,a2,0xff
     624:	000a5080 	sll	t2,t2,0x2
     628:	00052880 	sll	a1,a1,0x2
     62c:	25290200 	addiu	t1,t1,512
     630:	01425021 	addu	t2,t2,v0
     634:	00a22821 	addu	a1,a1,v0
     638:	00094880 	sll	t1,t1,0x2
     63c:	25080300 	addiu	t0,t0,768
     640:	8d4b0000 	lw	t3,0(t2)
     644:	01224821 	addu	t1,t1,v0
     648:	8ca50000 	lw	a1,0(a1)
     64c:	00084080 	sll	t0,t0,0x2
     650:	8d2a0000 	lw	t2,0(t1)
     654:	01024021 	addu	t0,t0,v0
     658:	8c69003c 	lw	t1,60(v1)
     65c:	8d080000 	lw	t0,0(t0)
     660:	01652821 	addu	a1,t3,a1
     664:	00aa2826 	xor	a1,a1,t2
     668:	00e93826 	xor	a3,a3,t1
     66c:	00a82821 	addu	a1,a1,t0
     670:	00e52826 	xor	a1,a3,a1
      BF_ENC (l, r, s, p[16]);
     674:	00055402 	srl	t2,a1,0x10
     678:	00054202 	srl	t0,a1,0x8
     67c:	314a00ff 	andi	t2,t2,0xff
     680:	00054e02 	srl	t1,a1,0x18
     684:	254a0100 	addiu	t2,t2,256
     688:	310800ff 	andi	t0,t0,0xff
     68c:	30a700ff 	andi	a3,a1,0xff
     690:	000a5080 	sll	t2,t2,0x2
     694:	00094880 	sll	t1,t1,0x2
     698:	25080200 	addiu	t0,t0,512
     69c:	01425021 	addu	t2,t2,v0
     6a0:	01224821 	addu	t1,t1,v0
     6a4:	00084080 	sll	t0,t0,0x2
     6a8:	24e70300 	addiu	a3,a3,768
     6ac:	8d4b0000 	lw	t3,0(t2)
     6b0:	01024021 	addu	t0,t0,v0
     6b4:	8d2a0000 	lw	t2,0(t1)
     6b8:	00073880 	sll	a3,a3,0x2
     6bc:	8d090000 	lw	t1,0(t0)
     6c0:	00e21021 	addu	v0,a3,v0
     6c4:	8c680040 	lw	t0,64(v1)
     6c8:	8c470000 	lw	a3,0(v0)
     6cc:	016a1021 	addu	v0,t3,t2
      r ^= p[BF_ROUNDS + 1];
     6d0:	8c630044 	lw	v1,68(v1)
      BF_ENC (r, l, s, p[11]);
      BF_ENC (l, r, s, p[12]);
      BF_ENC (r, l, s, p[13]);
      BF_ENC (l, r, s, p[14]);
      BF_ENC (r, l, s, p[15]);
      BF_ENC (l, r, s, p[16]);
     6d4:	00491026 	xor	v0,v0,t1
     6d8:	00c83026 	xor	a2,a2,t0
     6dc:	00471021 	addu	v0,v0,a3
      r ^= p[BF_ROUNDS + 1];
     6e0:	00a32826 	xor	a1,a1,v1
      BF_ENC (r, l, s, p[11]);
      BF_ENC (l, r, s, p[12]);
      BF_ENC (r, l, s, p[13]);
      BF_ENC (l, r, s, p[14]);
      BF_ENC (r, l, s, p[15]);
      BF_ENC (l, r, s, p[16]);
     6e4:	00c23026 	xor	a2,a2,v0
      BF_ENC (l, r, s, p[3]);
      BF_ENC (r, l, s, p[2]);
      BF_ENC (l, r, s, p[1]);
      r ^= p[0];
    }
  data[1] = l & 0xffffffff;
     6e8:	ac860004 	sw	a2,4(a0)
  data[0] = r & 0xffffffff;
}
     6ec:	03e00008 	jr	ra
     6f0:	ac850000 	sw	a1,0(a0)

000006f4 <BF_cfb64_encrypt.clone.1>:
 * used.  The extra state information to record how much of the
 * 64bit block we have used is contained in *num;
 */

void
BF_cfb64_encrypt (in, out, length, ivec, num, encrypt)
     6f4:	27bdffc8 	addiu	sp,sp,-56
     6f8:	afb00020 	sw	s0,32(sp)
     6fc:	8fb00048 	lw	s0,72(sp)
     700:	afb20028 	sw	s2,40(sp)
     704:	afb10024 	sw	s1,36(sp)
     708:	afbf0034 	sw	ra,52(sp)
     70c:	afb40030 	sw	s4,48(sp)
     710:	afb3002c 	sw	s3,44(sp)
  register int n;
  register long l;
  BF_LONG ti[2];
  unsigned char *iv, c, cc;

  n = *num;
     714:	8e120000 	lw	s2,0(s0)
  l = length;
  iv = (unsigned char *) ivec;
  if (encrypt)
    {
      while (l--)
     718:	10c00048 	beqz	a2,83c <BF_cfb64_encrypt.clone.1+0x148>
     71c:	00808821 	addu	s1,a0,zero
     720:	24d3ffff 	addiu	s3,a2,-1
	{
	  if (n == 0)
     724:	1240000f 	beqz	s2,764 <BF_cfb64_encrypt.clone.1+0x70>
     728:	27b40010 	addiu	s4,sp,16
	      t = ti[1];
	      l2n (t, iv);

	      iv = (unsigned char *) ivec;
	    }
	  c = *(in++) ^ iv[n];
     72c:	00f21021 	addu	v0,a3,s2
     730:	92230000 	lbu	v1,0(s1)
     734:	90440000 	lbu	a0,0(v0)
	  *(out++) = c;
	  iv[n] = c;
	  n = (n + 1) & 0x07;
     738:	26520001 	addiu	s2,s2,1
	      t = ti[1];
	      l2n (t, iv);

	      iv = (unsigned char *) ivec;
	    }
	  c = *(in++) ^ iv[n];
     73c:	00831826 	xor	v1,a0,v1
     740:	306300ff 	andi	v1,v1,0xff
	  *(out++) = c;
     744:	a0a30000 	sb	v1,0(a1)
	  iv[n] = c;
	  n = (n + 1) & 0x07;
     748:	32520007 	andi	s2,s2,0x7
  n = *num;
  l = length;
  iv = (unsigned char *) ivec;
  if (encrypt)
    {
      while (l--)
     74c:	1260003b 	beqz	s3,83c <BF_cfb64_encrypt.clone.1+0x148>
     750:	a0430000 	sb	v1,0(v0)
	      t = ti[1];
	      l2n (t, iv);

	      iv = (unsigned char *) ivec;
	    }
	  c = *(in++) ^ iv[n];
     754:	26310001 	addiu	s1,s1,1
	  *(out++) = c;
     758:	24a50001 	addiu	a1,a1,1
  iv = (unsigned char *) ivec;
  if (encrypt)
    {
      while (l--)
	{
	  if (n == 0)
     75c:	1640fff3 	bnez	s2,72c <BF_cfb64_encrypt.clone.1+0x38>
     760:	2673ffff 	addiu	s3,s3,-1
	    {
	      n2l (iv, v0);
     764:	90e60000 	lbu	a2,0(a3)
     768:	90e30001 	lbu	v1,1(a3)
	      ti[0] = v0;
	      n2l (iv, v1);
     76c:	90e40004 	lbu	a0,4(a3)
     770:	90e20005 	lbu	v0,5(a3)
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     774:	90e90002 	lbu	t1,2(a3)
	      ti[0] = v0;
	      n2l (iv, v1);
     778:	90e80006 	lbu	t0,6(a3)
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     77c:	00063600 	sll	a2,a2,0x18
	      ti[0] = v0;
	      n2l (iv, v1);
     780:	00042600 	sll	a0,a0,0x18
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     784:	00031c00 	sll	v1,v1,0x10
	      ti[0] = v0;
	      n2l (iv, v1);
     788:	00021400 	sll	v0,v0,0x10
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     78c:	00094a00 	sll	t1,t1,0x8
	      ti[0] = v0;
	      n2l (iv, v1);
     790:	00084200 	sll	t0,t0,0x8
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     794:	00661825 	or	v1,v1,a2
	      ti[0] = v0;
	      n2l (iv, v1);
     798:	00441025 	or	v0,v0,a0
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     79c:	90e60003 	lbu	a2,3(a3)
	      ti[0] = v0;
	      n2l (iv, v1);
     7a0:	90e40007 	lbu	a0,7(a3)
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     7a4:	00691825 	or	v1,v1,t1
	      ti[0] = v0;
	      n2l (iv, v1);
     7a8:	00481025 	or	v0,v0,t0
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     7ac:	00661825 	or	v1,v1,a2
	      ti[0] = v0;
	      n2l (iv, v1);
     7b0:	00441025 	or	v0,v0,a0
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
     7b4:	02802021 	addu	a0,s4,zero
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
	      ti[0] = v0;
     7b8:	afa30010 	sw	v1,16(sp)
	      n2l (iv, v1);
	      ti[1] = v1;
     7bc:	afa20014 	sw	v0,20(sp)
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
     7c0:	afa50018 	sw	a1,24(sp)
     7c4:	0c000000 	jal	0 <BF_encrypt.clone.0>
     7c8:	afa7001c 	sw	a3,28(sp)
	      iv = (unsigned char *) ivec;
	      t = ti[0];
     7cc:	8fa30010 	lw	v1,16(sp)
	      l2n (t, iv);
	      t = ti[1];
     7d0:	8fa20014 	lw	v0,20(sp)
	      n2l (iv, v1);
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
	      iv = (unsigned char *) ivec;
	      t = ti[0];
	      l2n (t, iv);
     7d4:	8fa7001c 	lw	a3,28(sp)
	      t = ti[1];
	      l2n (t, iv);
     7d8:	00022202 	srl	a0,v0,0x8
	      n2l (iv, v1);
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
	      iv = (unsigned char *) ivec;
	      t = ti[0];
	      l2n (t, iv);
     7dc:	00035e02 	srl	t3,v1,0x18
     7e0:	00035402 	srl	t2,v1,0x10
     7e4:	00034a02 	srl	t1,v1,0x8
	      t = ti[1];
	      l2n (t, iv);
     7e8:	00024602 	srl	t0,v0,0x18
     7ec:	00023402 	srl	a2,v0,0x10
     7f0:	a0e20007 	sb	v0,7(a3)
	      n2l (iv, v1);
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
	      iv = (unsigned char *) ivec;
	      t = ti[0];
	      l2n (t, iv);
     7f4:	a0eb0000 	sb	t3,0(a3)
     7f8:	a0ea0001 	sb	t2,1(a3)
     7fc:	a0e90002 	sb	t1,2(a3)
     800:	a0e30003 	sb	v1,3(a3)
	      t = ti[1];
	      l2n (t, iv);
     804:	a0e80004 	sb	t0,4(a3)
     808:	a0e60005 	sb	a2,5(a3)
     80c:	a0e40006 	sb	a0,6(a3)

	      iv = (unsigned char *) ivec;
	    }
	  c = *(in++) ^ iv[n];
     810:	00f21021 	addu	v0,a3,s2
     814:	92230000 	lbu	v1,0(s1)
     818:	90440000 	lbu	a0,0(v0)
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
	      iv = (unsigned char *) ivec;
	      t = ti[0];
	      l2n (t, iv);
	      t = ti[1];
	      l2n (t, iv);
     81c:	8fa50018 	lw	a1,24(sp)

	      iv = (unsigned char *) ivec;
	    }
	  c = *(in++) ^ iv[n];
     820:	00831826 	xor	v1,a0,v1
     824:	306300ff 	andi	v1,v1,0xff
	  *(out++) = c;
	  iv[n] = c;
	  n = (n + 1) & 0x07;
     828:	26520001 	addiu	s2,s2,1
	      l2n (t, iv);

	      iv = (unsigned char *) ivec;
	    }
	  c = *(in++) ^ iv[n];
	  *(out++) = c;
     82c:	a0a30000 	sb	v1,0(a1)
	  iv[n] = c;
	  n = (n + 1) & 0x07;
     830:	32520007 	andi	s2,s2,0x7
  n = *num;
  l = length;
  iv = (unsigned char *) ivec;
  if (encrypt)
    {
      while (l--)
     834:	1660ffc7 	bnez	s3,754 <BF_cfb64_encrypt.clone.1+0x60>
     838:	a0430000 	sb	v1,0(v0)
	  n = (n + 1) & 0x07;
	}
    }
  v0 = v1 = ti[0] = ti[1] = t = c = cc = 0;
  *num = n;
}
     83c:	8fbf0034 	lw	ra,52(sp)
	  *(out++) = c ^ cc;
	  n = (n + 1) & 0x07;
	}
    }
  v0 = v1 = ti[0] = ti[1] = t = c = cc = 0;
  *num = n;
     840:	ae120000 	sw	s2,0(s0)
}
     844:	8fb40030 	lw	s4,48(sp)
     848:	8fb3002c 	lw	s3,44(sp)
     84c:	8fb20028 	lw	s2,40(sp)
     850:	8fb10024 	lw	s1,36(sp)
     854:	8fb00020 	lw	s0,32(sp)
     858:	03e00008 	jr	ra
     85c:	27bd0038 	addiu	sp,sp,56

00000860 <BF_set_key.clone.2>:
      p2++;
    }
}

void
BF_set_key (int len, unsigned char *data)
     860:	27bdffd0 	addiu	sp,sp,-48
     864:	afb40028 	sw	s4,40(sp)
     868:	3c020000 	lui	v0,0x0
memcpy (BF_LONG * s1, const BF_LONG * s2, int n)
{
  BF_LONG *p1;
  const BF_LONG *p2;

  p1 = s1;
     86c:	3c140000 	lui	s4,0x0
      p2++;
    }
}

void
BF_set_key (int len, unsigned char *data)
     870:	afb30024 	sw	s3,36(sp)
     874:	24420000 	addiu	v0,v0,0
memcpy (BF_LONG * s1, const BF_LONG * s2, int n)
{
  BF_LONG *p1;
  const BF_LONG *p2;

  p1 = s1;
     878:	26930000 	addiu	s3,s4,0
      p2++;
    }
}

void
BF_set_key (int len, unsigned char *data)
     87c:	afbf002c 	sw	ra,44(sp)
     880:	afb20020 	sw	s2,32(sp)
     884:	afb1001c 	sw	s1,28(sp)
     888:	afb00018 	sw	s0,24(sp)
     88c:	24460048 	addiu	a2,v0,72
memcpy (BF_LONG * s1, const BF_LONG * s2, int n)
{
  BF_LONG *p1;
  const BF_LONG *p2;

  p1 = s1;
     890:	02601821 	addu	v1,s3,zero
  p2 = s2;

  while (n-- > 0)
    {
      *p1 = *p2;
     894:	8c450000 	lw	a1,0(v0)
      p1++;
      p2++;
     898:	24420004 	addiu	v0,v0,4
  p1 = s1;
  p2 = s2;

  while (n-- > 0)
    {
      *p1 = *p2;
     89c:	ac650000 	sw	a1,0(v1)
  const BF_LONG *p2;

  p1 = s1;
  p2 = s2;

  while (n-- > 0)
     8a0:	1446fffc 	bne	v0,a2,894 <BF_set_key.clone.2+0x34>
     8a4:	24630004 	addiu	v1,v1,4
      p2++;
    }
}

void
BF_set_key (int len, unsigned char *data)
     8a8:	3c100000 	lui	s0,0x0
     8ac:	26100000 	addiu	s0,s0,0
     8b0:	26121000 	addiu	s2,s0,4096
     8b4:	3c030000 	lui	v1,0x0
     8b8:	02403021 	addu	a2,s2,zero
     8bc:	02001021 	addu	v0,s0,zero
     8c0:	24630000 	addiu	v1,v1,0
  p1 = s1;
  p2 = s2;

  while (n-- > 0)
    {
      *p1 = *p2;
     8c4:	8c650000 	lw	a1,0(v1)
     8c8:	00000000 	sll	zero,zero,0x0
     8cc:	ac450000 	sw	a1,0(v0)
      p1++;
     8d0:	24420004 	addiu	v0,v0,4
  const BF_LONG *p2;

  p1 = s1;
  p2 = s2;

  while (n-- > 0)
     8d4:	1446fffb 	bne	v0,a2,8c4 <BF_set_key.clone.2+0x64>
     8d8:	24630004 	addiu	v1,v1,4

  if (len > ((BF_ROUNDS + 2) * 4))
    len = (BF_ROUNDS + 2) * 4;

  d = data;
  end = &(data[len]);
     8dc:	24870008 	addiu	a3,a0,8
     8e0:	02601021 	addu	v0,s3,zero
      p2++;
    }
}

void
BF_set_key (int len, unsigned char *data)
     8e4:	26690048 	addiu	t1,s3,72
  p = key_P;

  if (len > ((BF_ROUNDS + 2) * 4))
    len = (BF_ROUNDS + 2) * 4;

  d = data;
     8e8:	00801821 	addu	v1,a0,zero
  end = &(data[len]);
  for (i = 0; i < (BF_ROUNDS + 2); i++)
    {
      ri = *(d++);
     8ec:	24660001 	addiu	a2,v1,1
      if (d >= end)
     8f0:	00c7282b 	sltu	a1,a2,a3

  d = data;
  end = &(data[len]);
  for (i = 0; i < (BF_ROUNDS + 2); i++)
    {
      ri = *(d++);
     8f4:	90680000 	lbu	t0,0(v1)
      if (d >= end)
     8f8:	14a00003 	bnez	a1,908 <BF_set_key.clone.2+0xa8>
     8fc:	24c50001 	addiu	a1,a2,1
	d = data;
     900:	00803021 	addu	a2,a0,zero

      ri <<= 8;
      ri |= *(d++);
     904:	24c50001 	addiu	a1,a2,1
     908:	90c60000 	lbu	a2,0(a2)
    {
      ri = *(d++);
      if (d >= end)
	d = data;

      ri <<= 8;
     90c:	00084200 	sll	t0,t0,0x8
      ri |= *(d++);
     910:	00c84025 	or	t0,a2,t0
      if (d >= end)
     914:	00a7182b 	sltu	v1,a1,a3
     918:	14600002 	bnez	v1,924 <BF_set_key.clone.2+0xc4>
     91c:	00084200 	sll	t0,t0,0x8
	d = data;
     920:	00802821 	addu	a1,a0,zero

      ri <<= 8;
      ri |= *(d++);
     924:	24a30001 	addiu	v1,a1,1
     928:	90a50000 	lbu	a1,0(a1)
      if (d >= end)
     92c:	0067302b 	sltu	a2,v1,a3
      ri |= *(d++);
      if (d >= end)
	d = data;

      ri <<= 8;
      ri |= *(d++);
     930:	00a82825 	or	a1,a1,t0
      if (d >= end)
     934:	14c00002 	bnez	a2,940 <BF_set_key.clone.2+0xe0>
     938:	00052a00 	sll	a1,a1,0x8
	d = data;
     93c:	00801821 	addu	v1,a0,zero

      ri <<= 8;
      ri |= *(d++);
     940:	90680000 	lbu	t0,0(v1)
     944:	24630001 	addiu	v1,v1,1
      if (d >= end)
     948:	0067302b 	sltu	a2,v1,a3
     94c:	14c00002 	bnez	a2,958 <BF_set_key.clone.2+0xf8>
     950:	01052825 	or	a1,t0,a1
	d = data;
     954:	00801821 	addu	v1,a0,zero

      p[i] ^= ri;
     958:	8c460000 	lw	a2,0(v0)
     95c:	00000000 	sll	zero,zero,0x0
     960:	00c52826 	xor	a1,a2,a1
     964:	ac450000 	sw	a1,0(v0)
     968:	24420004 	addiu	v0,v0,4
  if (len > ((BF_ROUNDS + 2) * 4))
    len = (BF_ROUNDS + 2) * 4;

  d = data;
  end = &(data[len]);
  for (i = 0; i < (BF_ROUNDS + 2); i++)
     96c:	1449ffe0 	bne	v0,t1,8f0 <BF_set_key.clone.2+0x90>
     970:	24660001 	addiu	a2,v1,1

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     974:	27b10010 	addiu	s1,sp,16
     978:	02202021 	addu	a0,s1,zero
	d = data;

      p[i] ^= ri;
    }

  in[0] = 0L;
     97c:	afa00010 	sw	zero,16(sp)
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     980:	0c000000 	jal	0 <BF_encrypt.clone.0>
     984:	afa00014 	sw	zero,20(sp)
      p[i] = in[0];
     988:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     98c:	02202021 	addu	a0,s1,zero
      p[i] = in[0];
     990:	ae820000 	sw	v0,0(s4)
      p[i + 1] = in[1];
     994:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     998:	0c000000 	jal	0 <BF_encrypt.clone.0>
     99c:	ae620004 	sw	v0,4(s3)
      p[i] = in[0];
     9a0:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     9a4:	02202021 	addu	a0,s1,zero
      p[i] = in[0];
     9a8:	ae620008 	sw	v0,8(s3)
      p[i + 1] = in[1];
     9ac:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     9b0:	0c000000 	jal	0 <BF_encrypt.clone.0>
     9b4:	ae62000c 	sw	v0,12(s3)
      p[i] = in[0];
     9b8:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     9bc:	02202021 	addu	a0,s1,zero
      p[i] = in[0];
     9c0:	ae620010 	sw	v0,16(s3)
      p[i + 1] = in[1];
     9c4:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     9c8:	0c000000 	jal	0 <BF_encrypt.clone.0>
     9cc:	ae620014 	sw	v0,20(s3)
      p[i] = in[0];
     9d0:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     9d4:	02202021 	addu	a0,s1,zero
      p[i] = in[0];
     9d8:	ae620018 	sw	v0,24(s3)
      p[i + 1] = in[1];
     9dc:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     9e0:	0c000000 	jal	0 <BF_encrypt.clone.0>
     9e4:	ae62001c 	sw	v0,28(s3)
      p[i] = in[0];
     9e8:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     9ec:	02202021 	addu	a0,s1,zero
      p[i] = in[0];
     9f0:	ae620020 	sw	v0,32(s3)
      p[i + 1] = in[1];
     9f4:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     9f8:	0c000000 	jal	0 <BF_encrypt.clone.0>
     9fc:	ae620024 	sw	v0,36(s3)
      p[i] = in[0];
     a00:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     a04:	02202021 	addu	a0,s1,zero
      p[i] = in[0];
     a08:	ae620028 	sw	v0,40(s3)
      p[i + 1] = in[1];
     a0c:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     a10:	0c000000 	jal	0 <BF_encrypt.clone.0>
     a14:	ae62002c 	sw	v0,44(s3)
      p[i] = in[0];
     a18:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     a1c:	02202021 	addu	a0,s1,zero
      p[i] = in[0];
     a20:	ae620030 	sw	v0,48(s3)
      p[i + 1] = in[1];
     a24:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     a28:	0c000000 	jal	0 <BF_encrypt.clone.0>
     a2c:	ae620034 	sw	v0,52(s3)
      p[i] = in[0];
     a30:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     a34:	02202021 	addu	a0,s1,zero
      p[i] = in[0];
     a38:	ae620038 	sw	v0,56(s3)
      p[i + 1] = in[1];
     a3c:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     a40:	0c000000 	jal	0 <BF_encrypt.clone.0>
     a44:	ae62003c 	sw	v0,60(s3)
      p[i] = in[0];
     a48:	8fa20010 	lw	v0,16(sp)
     a4c:	00000000 	sll	zero,zero,0x0
     a50:	ae620040 	sw	v0,64(s3)
      p[i + 1] = in[1];
     a54:	8fa20014 	lw	v0,20(sp)
     a58:	00000000 	sll	zero,zero,0x0
     a5c:	ae620044 	sw	v0,68(s3)
    }

  p = key_S;
  for (i = 0; i < 4 * 256; i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     a60:	0c000000 	jal	0 <BF_encrypt.clone.0>
     a64:	02202021 	addu	a0,s1,zero
      p[i] = in[0];
     a68:	8fa20010 	lw	v0,16(sp)
     a6c:	00000000 	sll	zero,zero,0x0
     a70:	ae020000 	sw	v0,0(s0)
      p[i + 1] = in[1];
     a74:	8fa20014 	lw	v0,20(sp)
     a78:	00000000 	sll	zero,zero,0x0
     a7c:	ae020004 	sw	v0,4(s0)
     a80:	26100008 	addiu	s0,s0,8
      p[i] = in[0];
      p[i + 1] = in[1];
    }

  p = key_S;
  for (i = 0; i < 4 * 256; i += 2)
     a84:	1650fff6 	bne	s2,s0,a60 <BF_set_key.clone.2+0x200>
     a88:	00000000 	sll	zero,zero,0x0
      BF_encrypt (in, BF_ENCRYPT);
      p[i] = in[0];
      p[i + 1] = in[1];
    }

}
     a8c:	8fbf002c 	lw	ra,44(sp)
     a90:	8fb40028 	lw	s4,40(sp)
     a94:	8fb30024 	lw	s3,36(sp)
     a98:	8fb20020 	lw	s2,32(sp)
     a9c:	8fb1001c 	lw	s1,28(sp)
     aa0:	8fb00018 	lw	s0,24(sp)
     aa4:	03e00008 	jr	ra
     aa8:	27bd0030 	addiu	sp,sp,48

00000aac <memcpy>:
  const BF_LONG *p2;

  p1 = s1;
  p2 = s2;

  while (n-- > 0)
     aac:	18c00008 	blez	a2,ad0 <memcpy+0x24>
     ab0:	24c6ffff 	addiu	a2,a2,-1
     ab4:	2403ffff 	addiu	v1,zero,-1
    {
      *p1 = *p2;
     ab8:	8ca20000 	lw	v0,0(a1)
  const BF_LONG *p2;

  p1 = s1;
  p2 = s2;

  while (n-- > 0)
     abc:	24c6ffff 	addiu	a2,a2,-1
    {
      *p1 = *p2;
     ac0:	ac820000 	sw	v0,0(a0)
      p1++;
      p2++;
     ac4:	24a50004 	addiu	a1,a1,4
  const BF_LONG *p2;

  p1 = s1;
  p2 = s2;

  while (n-- > 0)
     ac8:	14c3fffb 	bne	a2,v1,ab8 <memcpy+0xc>
     acc:	24840004 	addiu	a0,a0,4
     ad0:	03e00008 	jr	ra
     ad4:	00000000 	sll	zero,zero,0x0

00000ad8 <BF_set_key>:
    }
}

void
BF_set_key (int len, unsigned char *data)
{
     ad8:	27bdffd0 	addiu	sp,sp,-48
     adc:	afb1001c 	sw	s1,28(sp)
      p2++;
    }
}

void
BF_set_key (int len, unsigned char *data)
     ae0:	3c020000 	lui	v0,0x0
memcpy (BF_LONG * s1, const BF_LONG * s2, int n)
{
  BF_LONG *p1;
  const BF_LONG *p2;

  p1 = s1;
     ae4:	3c110000 	lui	s1,0x0
    }
}

void
BF_set_key (int len, unsigned char *data)
{
     ae8:	afb00018 	sw	s0,24(sp)
      p2++;
    }
}

void
BF_set_key (int len, unsigned char *data)
     aec:	24420000 	addiu	v0,v0,0
memcpy (BF_LONG * s1, const BF_LONG * s2, int n)
{
  BF_LONG *p1;
  const BF_LONG *p2;

  p1 = s1;
     af0:	26300000 	addiu	s0,s1,0
    }
}

void
BF_set_key (int len, unsigned char *data)
{
     af4:	afbf002c 	sw	ra,44(sp)
     af8:	afb40028 	sw	s4,40(sp)
     afc:	afb30024 	sw	s3,36(sp)
     b00:	afb20020 	sw	s2,32(sp)
      p2++;
    }
}

void
BF_set_key (int len, unsigned char *data)
     b04:	24470048 	addiu	a3,v0,72
memcpy (BF_LONG * s1, const BF_LONG * s2, int n)
{
  BF_LONG *p1;
  const BF_LONG *p2;

  p1 = s1;
     b08:	02001821 	addu	v1,s0,zero
  p2 = s2;

  while (n-- > 0)
    {
      *p1 = *p2;
     b0c:	8c460000 	lw	a2,0(v0)
      p1++;
      p2++;
     b10:	24420004 	addiu	v0,v0,4
  p1 = s1;
  p2 = s2;

  while (n-- > 0)
    {
      *p1 = *p2;
     b14:	ac660000 	sw	a2,0(v1)
  const BF_LONG *p2;

  p1 = s1;
  p2 = s2;

  while (n-- > 0)
     b18:	1447fffc 	bne	v0,a3,b0c <BF_set_key+0x34>
     b1c:	24630004 	addiu	v1,v1,4
      p2++;
    }
}

void
BF_set_key (int len, unsigned char *data)
     b20:	3c140000 	lui	s4,0x0
     b24:	26940000 	addiu	s4,s4,0
     b28:	26931000 	addiu	s3,s4,4096
     b2c:	3c030000 	lui	v1,0x0
     b30:	02603821 	addu	a3,s3,zero
     b34:	02801021 	addu	v0,s4,zero
     b38:	24630000 	addiu	v1,v1,0
  p1 = s1;
  p2 = s2;

  while (n-- > 0)
    {
      *p1 = *p2;
     b3c:	8c660000 	lw	a2,0(v1)
     b40:	00000000 	sll	zero,zero,0x0
     b44:	ac460000 	sw	a2,0(v0)
      p1++;
     b48:	24420004 	addiu	v0,v0,4
  const BF_LONG *p2;

  p1 = s1;
  p2 = s2;

  while (n-- > 0)
     b4c:	1447fffb 	bne	v0,a3,b3c <BF_set_key+0x64>
     b50:	24630004 	addiu	v1,v1,4

  if (len > ((BF_ROUNDS + 2) * 4))
    len = (BF_ROUNDS + 2) * 4;

  d = data;
  end = &(data[len]);
     b54:	28820049 	slti	v0,a0,73
     b58:	14400003 	bnez	v0,b68 <BF_set_key+0x90>
     b5c:	00a42021 	addu	a0,a1,a0
     b60:	24040048 	addiu	a0,zero,72
     b64:	00a42021 	addu	a0,a1,a0
     b68:	02001021 	addu	v0,s0,zero
      p2++;
    }
}

void
BF_set_key (int len, unsigned char *data)
     b6c:	26090048 	addiu	t1,s0,72
  p = key_P;

  if (len > ((BF_ROUNDS + 2) * 4))
    len = (BF_ROUNDS + 2) * 4;

  d = data;
     b70:	00a01821 	addu	v1,a1,zero
  end = &(data[len]);
  for (i = 0; i < (BF_ROUNDS + 2); i++)
    {
      ri = *(d++);
     b74:	24670001 	addiu	a3,v1,1
      if (d >= end)
     b78:	00e4302b 	sltu	a2,a3,a0

  d = data;
  end = &(data[len]);
  for (i = 0; i < (BF_ROUNDS + 2); i++)
    {
      ri = *(d++);
     b7c:	90680000 	lbu	t0,0(v1)
      if (d >= end)
     b80:	14c00003 	bnez	a2,b90 <BF_set_key+0xb8>
     b84:	24e60001 	addiu	a2,a3,1
	d = data;
     b88:	00a03821 	addu	a3,a1,zero

      ri <<= 8;
      ri |= *(d++);
     b8c:	24e60001 	addiu	a2,a3,1
     b90:	90e70000 	lbu	a3,0(a3)
    {
      ri = *(d++);
      if (d >= end)
	d = data;

      ri <<= 8;
     b94:	00084200 	sll	t0,t0,0x8
      ri |= *(d++);
     b98:	00e84025 	or	t0,a3,t0
      if (d >= end)
     b9c:	00c4182b 	sltu	v1,a2,a0
     ba0:	14600002 	bnez	v1,bac <BF_set_key+0xd4>
     ba4:	00084200 	sll	t0,t0,0x8
	d = data;
     ba8:	00a03021 	addu	a2,a1,zero

      ri <<= 8;
      ri |= *(d++);
     bac:	24c30001 	addiu	v1,a2,1
     bb0:	90c60000 	lbu	a2,0(a2)
      if (d >= end)
     bb4:	0064382b 	sltu	a3,v1,a0
      ri |= *(d++);
      if (d >= end)
	d = data;

      ri <<= 8;
      ri |= *(d++);
     bb8:	00c83025 	or	a2,a2,t0
      if (d >= end)
     bbc:	14e00002 	bnez	a3,bc8 <BF_set_key+0xf0>
     bc0:	00063200 	sll	a2,a2,0x8
	d = data;
     bc4:	00a01821 	addu	v1,a1,zero

      ri <<= 8;
      ri |= *(d++);
     bc8:	90680000 	lbu	t0,0(v1)
     bcc:	24630001 	addiu	v1,v1,1
      if (d >= end)
     bd0:	0064382b 	sltu	a3,v1,a0
     bd4:	14e00002 	bnez	a3,be0 <BF_set_key+0x108>
     bd8:	01063025 	or	a2,t0,a2
	d = data;
     bdc:	00a01821 	addu	v1,a1,zero

      p[i] ^= ri;
     be0:	8c470000 	lw	a3,0(v0)
     be4:	00000000 	sll	zero,zero,0x0
     be8:	00e63026 	xor	a2,a3,a2
     bec:	ac460000 	sw	a2,0(v0)
     bf0:	24420004 	addiu	v0,v0,4
  if (len > ((BF_ROUNDS + 2) * 4))
    len = (BF_ROUNDS + 2) * 4;

  d = data;
  end = &(data[len]);
  for (i = 0; i < (BF_ROUNDS + 2); i++)
     bf4:	1449ffe0 	bne	v0,t1,b78 <BF_set_key+0xa0>
     bf8:	24670001 	addiu	a3,v1,1

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     bfc:	27b20010 	addiu	s2,sp,16
     c00:	02402021 	addu	a0,s2,zero
	d = data;

      p[i] ^= ri;
    }

  in[0] = 0L;
     c04:	afa00010 	sw	zero,16(sp)
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c08:	0c000000 	jal	0 <BF_encrypt.clone.0>
     c0c:	afa00014 	sw	zero,20(sp)
      p[i] = in[0];
     c10:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c14:	02402021 	addu	a0,s2,zero
      p[i] = in[0];
     c18:	ae220000 	sw	v0,0(s1)
      p[i + 1] = in[1];
     c1c:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c20:	0c000000 	jal	0 <BF_encrypt.clone.0>
     c24:	ae020004 	sw	v0,4(s0)
      p[i] = in[0];
     c28:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c2c:	02402021 	addu	a0,s2,zero
      p[i] = in[0];
     c30:	ae020008 	sw	v0,8(s0)
      p[i + 1] = in[1];
     c34:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c38:	0c000000 	jal	0 <BF_encrypt.clone.0>
     c3c:	ae02000c 	sw	v0,12(s0)
      p[i] = in[0];
     c40:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c44:	02402021 	addu	a0,s2,zero
      p[i] = in[0];
     c48:	ae020010 	sw	v0,16(s0)
      p[i + 1] = in[1];
     c4c:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c50:	0c000000 	jal	0 <BF_encrypt.clone.0>
     c54:	ae020014 	sw	v0,20(s0)
      p[i] = in[0];
     c58:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c5c:	02402021 	addu	a0,s2,zero
      p[i] = in[0];
     c60:	ae020018 	sw	v0,24(s0)
      p[i + 1] = in[1];
     c64:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c68:	0c000000 	jal	0 <BF_encrypt.clone.0>
     c6c:	ae02001c 	sw	v0,28(s0)
      p[i] = in[0];
     c70:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c74:	02402021 	addu	a0,s2,zero
      p[i] = in[0];
     c78:	ae020020 	sw	v0,32(s0)
      p[i + 1] = in[1];
     c7c:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c80:	0c000000 	jal	0 <BF_encrypt.clone.0>
     c84:	ae020024 	sw	v0,36(s0)
      p[i] = in[0];
     c88:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c8c:	02402021 	addu	a0,s2,zero
      p[i] = in[0];
     c90:	ae020028 	sw	v0,40(s0)
      p[i + 1] = in[1];
     c94:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     c98:	0c000000 	jal	0 <BF_encrypt.clone.0>
     c9c:	ae02002c 	sw	v0,44(s0)
      p[i] = in[0];
     ca0:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     ca4:	02402021 	addu	a0,s2,zero
      p[i] = in[0];
     ca8:	ae020030 	sw	v0,48(s0)
      p[i + 1] = in[1];
     cac:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     cb0:	0c000000 	jal	0 <BF_encrypt.clone.0>
     cb4:	ae020034 	sw	v0,52(s0)
      p[i] = in[0];
     cb8:	8fa20010 	lw	v0,16(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     cbc:	02402021 	addu	a0,s2,zero
      p[i] = in[0];
     cc0:	ae020038 	sw	v0,56(s0)
      p[i + 1] = in[1];
     cc4:	8fa20014 	lw	v0,20(sp)

  in[0] = 0L;
  in[1] = 0L;
  for (i = 0; i < (BF_ROUNDS + 2); i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     cc8:	0c000000 	jal	0 <BF_encrypt.clone.0>
     ccc:	ae02003c 	sw	v0,60(s0)
      p[i] = in[0];
     cd0:	8fa20010 	lw	v0,16(sp)
     cd4:	00000000 	sll	zero,zero,0x0
     cd8:	ae020040 	sw	v0,64(s0)
      p[i + 1] = in[1];
     cdc:	8fa20014 	lw	v0,20(sp)
     ce0:	00000000 	sll	zero,zero,0x0
     ce4:	ae020044 	sw	v0,68(s0)
     ce8:	02808021 	addu	s0,s4,zero
    }

  p = key_S;
  for (i = 0; i < 4 * 256; i += 2)
    {
      BF_encrypt (in, BF_ENCRYPT);
     cec:	0c000000 	jal	0 <BF_encrypt.clone.0>
     cf0:	02402021 	addu	a0,s2,zero
      p[i] = in[0];
     cf4:	8fa20010 	lw	v0,16(sp)
     cf8:	00000000 	sll	zero,zero,0x0
     cfc:	ae020000 	sw	v0,0(s0)
      p[i + 1] = in[1];
     d00:	8fa20014 	lw	v0,20(sp)
     d04:	00000000 	sll	zero,zero,0x0
     d08:	ae020004 	sw	v0,4(s0)
     d0c:	26100008 	addiu	s0,s0,8
      p[i] = in[0];
      p[i + 1] = in[1];
    }

  p = key_S;
  for (i = 0; i < 4 * 256; i += 2)
     d10:	1670fff6 	bne	s3,s0,cec <BF_set_key+0x214>
     d14:	00000000 	sll	zero,zero,0x0
      BF_encrypt (in, BF_ENCRYPT);
      p[i] = in[0];
      p[i + 1] = in[1];
    }

}
     d18:	8fbf002c 	lw	ra,44(sp)
     d1c:	8fb40028 	lw	s4,40(sp)
     d20:	8fb30024 	lw	s3,36(sp)
     d24:	8fb20020 	lw	s2,32(sp)
     d28:	8fb1001c 	lw	s1,28(sp)
     d2c:	8fb00018 	lw	s0,24(sp)
     d30:	03e00008 	jr	ra
     d34:	27bd0030 	addiu	sp,sp,48

00000d38 <BF_cfb64_encrypt>:
     unsigned char *out;
     long length;
     unsigned char *ivec;
     int *num;
     int encrypt;
{
     d38:	27bdffc8 	addiu	sp,sp,-56
     d3c:	afb1001c 	sw	s1,28(sp)
  unsigned char *iv, c, cc;

  n = *num;
  l = length;
  iv = (unsigned char *) ivec;
  if (encrypt)
     d40:	8fa2004c 	lw	v0,76(sp)
     unsigned char *out;
     long length;
     unsigned char *ivec;
     int *num;
     int encrypt;
{
     d44:	8fb10048 	lw	s1,72(sp)
     d48:	afb40028 	sw	s4,40(sp)
     d4c:	afb30024 	sw	s3,36(sp)
     d50:	afb20020 	sw	s2,32(sp)
     d54:	afb00018 	sw	s0,24(sp)
     d58:	afbf0034 	sw	ra,52(sp)
     d5c:	afb60030 	sw	s6,48(sp)
     d60:	afb5002c 	sw	s5,44(sp)
     d64:	00808021 	addu	s0,a0,zero
     d68:	00a09021 	addu	s2,a1,zero
  register int n;
  register long l;
  BF_LONG ti[2];
  unsigned char *iv, c, cc;

  n = *num;
     d6c:	8e340000 	lw	s4,0(s1)
  l = length;
  iv = (unsigned char *) ivec;
  if (encrypt)
     d70:	1440004e 	bnez	v0,eac <BF_cfb64_encrypt+0x174>
     d74:	00e09821 	addu	s3,a3,zero
	  n = (n + 1) & 0x07;
	}
    }
  else
    {
      while (l--)
     d78:	10c00041 	beqz	a2,e80 <BF_cfb64_encrypt+0x148>
     d7c:	24d5ffff 	addiu	s5,a2,-1
	{
	  if (n == 0)
     d80:	1280000e 	beqz	s4,dbc <BF_cfb64_encrypt+0x84>
     d84:	27b60010 	addiu	s6,sp,16
	      t = ti[1];
	      l2n (t, iv);
	      iv = (unsigned char *) ivec;
	    }
	  cc = *(in++);
	  c = iv[n];
     d88:	02741021 	addu	v0,s3,s4
	      l2n (t, iv);
	      t = ti[1];
	      l2n (t, iv);
	      iv = (unsigned char *) ivec;
	    }
	  cc = *(in++);
     d8c:	92030000 	lbu	v1,0(s0)
	  c = iv[n];
     d90:	90440000 	lbu	a0,0(v0)
	  iv[n] = cc;
	  *(out++) = c ^ cc;
	  n = (n + 1) & 0x07;
     d94:	26940001 	addiu	s4,s4,1
	      iv = (unsigned char *) ivec;
	    }
	  cc = *(in++);
	  c = iv[n];
	  iv[n] = cc;
	  *(out++) = c ^ cc;
     d98:	00832026 	xor	a0,a0,v1
	      l2n (t, iv);
	      iv = (unsigned char *) ivec;
	    }
	  cc = *(in++);
	  c = iv[n];
	  iv[n] = cc;
     d9c:	a0430000 	sb	v1,0(v0)
	  *(out++) = c ^ cc;
	  n = (n + 1) & 0x07;
     da0:	32940007 	andi	s4,s4,0x7
	  n = (n + 1) & 0x07;
	}
    }
  else
    {
      while (l--)
     da4:	12a00036 	beqz	s5,e80 <BF_cfb64_encrypt+0x148>
     da8:	a2440000 	sb	a0,0(s2)
	      l2n (t, iv);
	      t = ti[1];
	      l2n (t, iv);
	      iv = (unsigned char *) ivec;
	    }
	  cc = *(in++);
     dac:	26100001 	addiu	s0,s0,1
	  c = iv[n];
	  iv[n] = cc;
	  *(out++) = c ^ cc;
     db0:	26520001 	addiu	s2,s2,1
    }
  else
    {
      while (l--)
	{
	  if (n == 0)
     db4:	1680fff4 	bnez	s4,d88 <BF_cfb64_encrypt+0x50>
     db8:	26b5ffff 	addiu	s5,s5,-1
	    {
	      n2l (iv, v0);
     dbc:	92650000 	lbu	a1,0(s3)
     dc0:	92630001 	lbu	v1,1(s3)
	      ti[0] = v0;
	      n2l (iv, v1);
     dc4:	92640004 	lbu	a0,4(s3)
     dc8:	92620005 	lbu	v0,5(s3)
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     dcc:	92670002 	lbu	a3,2(s3)
	      ti[0] = v0;
	      n2l (iv, v1);
     dd0:	92660006 	lbu	a2,6(s3)
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     dd4:	00052e00 	sll	a1,a1,0x18
	      ti[0] = v0;
	      n2l (iv, v1);
     dd8:	00042600 	sll	a0,a0,0x18
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     ddc:	00031c00 	sll	v1,v1,0x10
	      ti[0] = v0;
	      n2l (iv, v1);
     de0:	00021400 	sll	v0,v0,0x10
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     de4:	00073a00 	sll	a3,a3,0x8
	      ti[0] = v0;
	      n2l (iv, v1);
     de8:	00063200 	sll	a2,a2,0x8
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     dec:	00651825 	or	v1,v1,a1
	      ti[0] = v0;
	      n2l (iv, v1);
     df0:	00441025 	or	v0,v0,a0
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     df4:	92650003 	lbu	a1,3(s3)
	      ti[0] = v0;
	      n2l (iv, v1);
     df8:	92640007 	lbu	a0,7(s3)
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     dfc:	00671825 	or	v1,v1,a3
	      ti[0] = v0;
	      n2l (iv, v1);
     e00:	00461025 	or	v0,v0,a2
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     e04:	00651825 	or	v1,v1,a1
	      ti[0] = v0;
	      n2l (iv, v1);
     e08:	00441025 	or	v0,v0,a0
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
     e0c:	02c02021 	addu	a0,s6,zero
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
	      ti[0] = v0;
     e10:	afa30010 	sw	v1,16(sp)
	      n2l (iv, v1);
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
     e14:	0c000000 	jal	0 <BF_encrypt.clone.0>
     e18:	afa20014 	sw	v0,20(sp)
	      iv = (unsigned char *) ivec;
	      t = ti[0];
     e1c:	8fa30010 	lw	v1,16(sp)
	      l2n (t, iv);
	      t = ti[1];
     e20:	8fa20014 	lw	v0,20(sp)
	      n2l (iv, v1);
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
	      iv = (unsigned char *) ivec;
	      t = ti[0];
	      l2n (t, iv);
     e24:	00034e02 	srl	t1,v1,0x18
	      t = ti[1];
	      l2n (t, iv);
     e28:	00022202 	srl	a0,v0,0x8
	      n2l (iv, v1);
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
	      iv = (unsigned char *) ivec;
	      t = ti[0];
	      l2n (t, iv);
     e2c:	00034402 	srl	t0,v1,0x10
     e30:	00033a02 	srl	a3,v1,0x8
	      t = ti[1];
	      l2n (t, iv);
     e34:	00023602 	srl	a2,v0,0x18
     e38:	00022c02 	srl	a1,v0,0x10
     e3c:	a2620007 	sb	v0,7(s3)
	      n2l (iv, v1);
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
	      iv = (unsigned char *) ivec;
	      t = ti[0];
	      l2n (t, iv);
     e40:	a2690000 	sb	t1,0(s3)
     e44:	a2680001 	sb	t0,1(s3)
     e48:	a2670002 	sb	a3,2(s3)
     e4c:	a2630003 	sb	v1,3(s3)
	      t = ti[1];
	      l2n (t, iv);
     e50:	a2660004 	sb	a2,4(s3)
     e54:	a2650005 	sb	a1,5(s3)
     e58:	a2640006 	sb	a0,6(s3)
	      iv = (unsigned char *) ivec;
	    }
	  cc = *(in++);
	  c = iv[n];
     e5c:	02741021 	addu	v0,s3,s4
	      l2n (t, iv);
	      t = ti[1];
	      l2n (t, iv);
	      iv = (unsigned char *) ivec;
	    }
	  cc = *(in++);
     e60:	92030000 	lbu	v1,0(s0)
	  c = iv[n];
     e64:	90440000 	lbu	a0,0(v0)
	  iv[n] = cc;
	  *(out++) = c ^ cc;
	  n = (n + 1) & 0x07;
     e68:	26940001 	addiu	s4,s4,1
	      iv = (unsigned char *) ivec;
	    }
	  cc = *(in++);
	  c = iv[n];
	  iv[n] = cc;
	  *(out++) = c ^ cc;
     e6c:	00832026 	xor	a0,a0,v1
	      l2n (t, iv);
	      iv = (unsigned char *) ivec;
	    }
	  cc = *(in++);
	  c = iv[n];
	  iv[n] = cc;
     e70:	a0430000 	sb	v1,0(v0)
	  *(out++) = c ^ cc;
	  n = (n + 1) & 0x07;
     e74:	32940007 	andi	s4,s4,0x7
	  n = (n + 1) & 0x07;
	}
    }
  else
    {
      while (l--)
     e78:	16a0ffcc 	bnez	s5,dac <BF_cfb64_encrypt+0x74>
     e7c:	a2440000 	sb	a0,0(s2)
	  n = (n + 1) & 0x07;
	}
    }
  v0 = v1 = ti[0] = ti[1] = t = c = cc = 0;
  *num = n;
}
     e80:	8fbf0034 	lw	ra,52(sp)
	  *(out++) = c ^ cc;
	  n = (n + 1) & 0x07;
	}
    }
  v0 = v1 = ti[0] = ti[1] = t = c = cc = 0;
  *num = n;
     e84:	ae340000 	sw	s4,0(s1)
}
     e88:	8fb60030 	lw	s6,48(sp)
     e8c:	8fb5002c 	lw	s5,44(sp)
     e90:	8fb40028 	lw	s4,40(sp)
     e94:	8fb30024 	lw	s3,36(sp)
     e98:	8fb20020 	lw	s2,32(sp)
     e9c:	8fb1001c 	lw	s1,28(sp)
     ea0:	8fb00018 	lw	s0,24(sp)
     ea4:	03e00008 	jr	ra
     ea8:	27bd0038 	addiu	sp,sp,56
  n = *num;
  l = length;
  iv = (unsigned char *) ivec;
  if (encrypt)
    {
      while (l--)
     eac:	10c0fff4 	beqz	a2,e80 <BF_cfb64_encrypt+0x148>
     eb0:	24d5ffff 	addiu	s5,a2,-1
	{
	  if (n == 0)
     eb4:	1280000f 	beqz	s4,ef4 <BF_cfb64_encrypt+0x1bc>
     eb8:	27b60010 	addiu	s6,sp,16
	      t = ti[1];
	      l2n (t, iv);

	      iv = (unsigned char *) ivec;
	    }
	  c = *(in++) ^ iv[n];
     ebc:	02741021 	addu	v0,s3,s4
     ec0:	92030000 	lbu	v1,0(s0)
     ec4:	90440000 	lbu	a0,0(v0)
	  *(out++) = c;
	  iv[n] = c;
	  n = (n + 1) & 0x07;
     ec8:	26940001 	addiu	s4,s4,1
	      t = ti[1];
	      l2n (t, iv);

	      iv = (unsigned char *) ivec;
	    }
	  c = *(in++) ^ iv[n];
     ecc:	00831826 	xor	v1,a0,v1
     ed0:	306300ff 	andi	v1,v1,0xff
	  *(out++) = c;
     ed4:	a2430000 	sb	v1,0(s2)
	  iv[n] = c;
	  n = (n + 1) & 0x07;
     ed8:	32940007 	andi	s4,s4,0x7
  n = *num;
  l = length;
  iv = (unsigned char *) ivec;
  if (encrypt)
    {
      while (l--)
     edc:	12a0ffe8 	beqz	s5,e80 <BF_cfb64_encrypt+0x148>
     ee0:	a0430000 	sb	v1,0(v0)
	      t = ti[1];
	      l2n (t, iv);

	      iv = (unsigned char *) ivec;
	    }
	  c = *(in++) ^ iv[n];
     ee4:	26100001 	addiu	s0,s0,1
	  *(out++) = c;
     ee8:	26520001 	addiu	s2,s2,1
  iv = (unsigned char *) ivec;
  if (encrypt)
    {
      while (l--)
	{
	  if (n == 0)
     eec:	1680fff3 	bnez	s4,ebc <BF_cfb64_encrypt+0x184>
     ef0:	26b5ffff 	addiu	s5,s5,-1
	    {
	      n2l (iv, v0);
     ef4:	92650000 	lbu	a1,0(s3)
     ef8:	92630001 	lbu	v1,1(s3)
	      ti[0] = v0;
	      n2l (iv, v1);
     efc:	92640004 	lbu	a0,4(s3)
     f00:	92620005 	lbu	v0,5(s3)
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     f04:	92670002 	lbu	a3,2(s3)
	      ti[0] = v0;
	      n2l (iv, v1);
     f08:	92660006 	lbu	a2,6(s3)
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     f0c:	00052e00 	sll	a1,a1,0x18
	      ti[0] = v0;
	      n2l (iv, v1);
     f10:	00042600 	sll	a0,a0,0x18
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     f14:	00031c00 	sll	v1,v1,0x10
	      ti[0] = v0;
	      n2l (iv, v1);
     f18:	00021400 	sll	v0,v0,0x10
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     f1c:	00073a00 	sll	a3,a3,0x8
	      ti[0] = v0;
	      n2l (iv, v1);
     f20:	00063200 	sll	a2,a2,0x8
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     f24:	00651825 	or	v1,v1,a1
	      ti[0] = v0;
	      n2l (iv, v1);
     f28:	00441025 	or	v0,v0,a0
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     f2c:	92650003 	lbu	a1,3(s3)
	      ti[0] = v0;
	      n2l (iv, v1);
     f30:	92640007 	lbu	a0,7(s3)
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     f34:	00671825 	or	v1,v1,a3
	      ti[0] = v0;
	      n2l (iv, v1);
     f38:	00461025 	or	v0,v0,a2
    {
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
     f3c:	00651825 	or	v1,v1,a1
	      ti[0] = v0;
	      n2l (iv, v1);
     f40:	00441025 	or	v0,v0,a0
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
     f44:	02c02021 	addu	a0,s6,zero
      while (l--)
	{
	  if (n == 0)
	    {
	      n2l (iv, v0);
	      ti[0] = v0;
     f48:	afa30010 	sw	v1,16(sp)
	      n2l (iv, v1);
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
     f4c:	0c000000 	jal	0 <BF_encrypt.clone.0>
     f50:	afa20014 	sw	v0,20(sp)
	      iv = (unsigned char *) ivec;
	      t = ti[0];
     f54:	8fa30010 	lw	v1,16(sp)
	      l2n (t, iv);
	      t = ti[1];
     f58:	8fa20014 	lw	v0,20(sp)
	      n2l (iv, v1);
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
	      iv = (unsigned char *) ivec;
	      t = ti[0];
	      l2n (t, iv);
     f5c:	00034e02 	srl	t1,v1,0x18
     f60:	00034402 	srl	t0,v1,0x10
     f64:	00033a02 	srl	a3,v1,0x8
	      t = ti[1];
	      l2n (t, iv);
     f68:	00023602 	srl	a2,v0,0x18
     f6c:	00022c02 	srl	a1,v0,0x10
     f70:	00022202 	srl	a0,v0,0x8
	      n2l (iv, v1);
	      ti[1] = v1;
	      BF_encrypt ((unsigned long *) ti, BF_ENCRYPT);
	      iv = (unsigned char *) ivec;
	      t = ti[0];
	      l2n (t, iv);
     f74:	a2690000 	sb	t1,0(s3)
     f78:	a2680001 	sb	t0,1(s3)
     f7c:	a2670002 	sb	a3,2(s3)
     f80:	a2630003 	sb	v1,3(s3)
	      t = ti[1];
	      l2n (t, iv);
     f84:	a2660004 	sb	a2,4(s3)
     f88:	a2650005 	sb	a1,5(s3)
     f8c:	a2640006 	sb	a0,6(s3)
     f90:	080003af 	j	ebc <BF_cfb64_encrypt+0x184>
     f94:	a2620007 	sb	v0,7(s3)

00000f98 <BF_encrypt>:
     int encrypt;
{
  register BF_LONG l, r, *p, *s;
  p = key_P;
  s = &(key_S[0]);
  l = data[0];
     f98:	8c830000 	lw	v1,0(a0)
  r = data[1];
     f9c:	8c820004 	lw	v0,4(a0)

  if (encrypt)
     fa0:	14a001bb 	bnez	a1,1690 <BF_encrypt+0x6f8>
     fa4:	3c0b0000 	lui	t3,0x0
      BF_ENC (l, r, s, p[16]);
      r ^= p[BF_ROUNDS + 1];
    }
  else
    {
      l ^= p[BF_ROUNDS + 1];
     fa8:	25660000 	addiu	a2,t3,0
     fac:	8cca0044 	lw	t2,68(a2)
      BF_ENC (r, l, s, p[16]);
     fb0:	3c050000 	lui	a1,0x0
      BF_ENC (l, r, s, p[16]);
      r ^= p[BF_ROUNDS + 1];
    }
  else
    {
      l ^= p[BF_ROUNDS + 1];
     fb4:	006a1826 	xor	v1,v1,t2
      BF_ENC (r, l, s, p[16]);
     fb8:	00035402 	srl	t2,v1,0x10
     fbc:	00034a02 	srl	t1,v1,0x8
     fc0:	314a00ff 	andi	t2,t2,0xff
     fc4:	00033e02 	srl	a3,v1,0x18
     fc8:	254a0100 	addiu	t2,t2,256
     fcc:	312900ff 	andi	t1,t1,0xff
     fd0:	24a50000 	addiu	a1,a1,0
     fd4:	306800ff 	andi	t0,v1,0xff
     fd8:	000a5080 	sll	t2,t2,0x2
     fdc:	00073880 	sll	a3,a3,0x2
     fe0:	25290200 	addiu	t1,t1,512
     fe4:	01455021 	addu	t2,t2,a1
     fe8:	00e53821 	addu	a3,a3,a1
     fec:	00094880 	sll	t1,t1,0x2
     ff0:	25080300 	addiu	t0,t0,768
     ff4:	8d4c0000 	lw	t4,0(t2)
     ff8:	01254821 	addu	t1,t1,a1
     ffc:	8ce70000 	lw	a3,0(a3)
    1000:	00084080 	sll	t0,t0,0x2
    1004:	8d2a0000 	lw	t2,0(t1)
    1008:	01054021 	addu	t0,t0,a1
    100c:	8cc90040 	lw	t1,64(a2)
    1010:	8d080000 	lw	t0,0(t0)
    1014:	01873821 	addu	a3,t4,a3
    1018:	00ea3826 	xor	a3,a3,t2
    101c:	00491026 	xor	v0,v0,t1
    1020:	00e83821 	addu	a3,a3,t0
    1024:	00473826 	xor	a3,v0,a3
      BF_ENC (l, r, s, p[15]);
    1028:	00075402 	srl	t2,a3,0x10
    102c:	00074a02 	srl	t1,a3,0x8
    1030:	314a00ff 	andi	t2,t2,0xff
    1034:	00071602 	srl	v0,a3,0x18
    1038:	254a0100 	addiu	t2,t2,256
    103c:	312900ff 	andi	t1,t1,0xff
    1040:	30e800ff 	andi	t0,a3,0xff
    1044:	000a5080 	sll	t2,t2,0x2
    1048:	00021080 	sll	v0,v0,0x2
    104c:	25290200 	addiu	t1,t1,512
    1050:	01455021 	addu	t2,t2,a1
    1054:	00451021 	addu	v0,v0,a1
    1058:	00094880 	sll	t1,t1,0x2
    105c:	25080300 	addiu	t0,t0,768
    1060:	8d4c0000 	lw	t4,0(t2)
    1064:	8c420000 	lw	v0,0(v0)
    1068:	01254821 	addu	t1,t1,a1
    106c:	00084080 	sll	t0,t0,0x2
    1070:	8d290000 	lw	t1,0(t1)
    1074:	01054021 	addu	t0,t0,a1
    1078:	8cca003c 	lw	t2,60(a2)
    107c:	8d080000 	lw	t0,0(t0)
    1080:	01821021 	addu	v0,t4,v0
    1084:	00491026 	xor	v0,v0,t1
    1088:	00481021 	addu	v0,v0,t0
    108c:	006a1826 	xor	v1,v1,t2
    1090:	00621826 	xor	v1,v1,v0
      BF_ENC (r, l, s, p[14]);
    1094:	00034c02 	srl	t1,v1,0x10
    1098:	00031202 	srl	v0,v1,0x8
    109c:	312900ff 	andi	t1,t1,0xff
    10a0:	00034602 	srl	t0,v1,0x18
    10a4:	25290100 	addiu	t1,t1,256
    10a8:	304200ff 	andi	v0,v0,0xff
    10ac:	306a00ff 	andi	t2,v1,0xff
    10b0:	00094880 	sll	t1,t1,0x2
    10b4:	00084080 	sll	t0,t0,0x2
    10b8:	24420200 	addiu	v0,v0,512
    10bc:	01254821 	addu	t1,t1,a1
    10c0:	01054021 	addu	t0,t0,a1
    10c4:	00021080 	sll	v0,v0,0x2
    10c8:	254a0300 	addiu	t2,t2,768
    10cc:	8d2c0000 	lw	t4,0(t1)
    10d0:	00451021 	addu	v0,v0,a1
    10d4:	8d080000 	lw	t0,0(t0)
    10d8:	000a5080 	sll	t2,t2,0x2
    10dc:	8c490000 	lw	t1,0(v0)
    10e0:	01455021 	addu	t2,t2,a1
    10e4:	8cc20038 	lw	v0,56(a2)
    10e8:	8d4a0000 	lw	t2,0(t2)
    10ec:	01884021 	addu	t0,t4,t0
    10f0:	01094026 	xor	t0,t0,t1
    10f4:	010a4021 	addu	t0,t0,t2
    10f8:	00e23826 	xor	a3,a3,v0
    10fc:	00e81026 	xor	v0,a3,t0
      BF_ENC (l, r, s, p[13]);
    1100:	00025402 	srl	t2,v0,0x10
    1104:	00024202 	srl	t0,v0,0x8
    1108:	314a00ff 	andi	t2,t2,0xff
    110c:	00024e02 	srl	t1,v0,0x18
    1110:	254a0100 	addiu	t2,t2,256
    1114:	310800ff 	andi	t0,t0,0xff
    1118:	304700ff 	andi	a3,v0,0xff
    111c:	000a5080 	sll	t2,t2,0x2
    1120:	00094880 	sll	t1,t1,0x2
    1124:	25080200 	addiu	t0,t0,512
    1128:	01455021 	addu	t2,t2,a1
    112c:	01254821 	addu	t1,t1,a1
    1130:	00084080 	sll	t0,t0,0x2
    1134:	24e70300 	addiu	a3,a3,768
    1138:	8d4c0000 	lw	t4,0(t2)
    113c:	01054021 	addu	t0,t0,a1
    1140:	8d2a0000 	lw	t2,0(t1)
    1144:	00073880 	sll	a3,a3,0x2
    1148:	8d090000 	lw	t1,0(t0)
    114c:	00e53821 	addu	a3,a3,a1
    1150:	8cc80034 	lw	t0,52(a2)
    1154:	8ce70000 	lw	a3,0(a3)
    1158:	018a5021 	addu	t2,t4,t2
    115c:	01495026 	xor	t2,t2,t1
    1160:	00681826 	xor	v1,v1,t0
    1164:	01475021 	addu	t2,t2,a3
    1168:	006a5026 	xor	t2,v1,t2
      BF_ENC (r, l, s, p[12]);
    116c:	000a4c02 	srl	t1,t2,0x10
    1170:	000a3a02 	srl	a3,t2,0x8
    1174:	312900ff 	andi	t1,t1,0xff
    1178:	000a4602 	srl	t0,t2,0x18
    117c:	25290100 	addiu	t1,t1,256
    1180:	30e700ff 	andi	a3,a3,0xff
    1184:	314300ff 	andi	v1,t2,0xff
    1188:	00094880 	sll	t1,t1,0x2
    118c:	00084080 	sll	t0,t0,0x2
    1190:	24e70200 	addiu	a3,a3,512
    1194:	01254821 	addu	t1,t1,a1
    1198:	01054021 	addu	t0,t0,a1
    119c:	00073880 	sll	a3,a3,0x2
    11a0:	24630300 	addiu	v1,v1,768
    11a4:	8d2c0000 	lw	t4,0(t1)
    11a8:	00e53821 	addu	a3,a3,a1
    11ac:	8d090000 	lw	t1,0(t0)
    11b0:	00031880 	sll	v1,v1,0x2
    11b4:	8ce80000 	lw	t0,0(a3)
    11b8:	00651821 	addu	v1,v1,a1
    11bc:	8cc70030 	lw	a3,48(a2)
    11c0:	8c630000 	lw	v1,0(v1)
    11c4:	01894821 	addu	t1,t4,t1
    11c8:	01284826 	xor	t1,t1,t0
    11cc:	00471026 	xor	v0,v0,a3
    11d0:	01234821 	addu	t1,t1,v1
    11d4:	00494826 	xor	t1,v0,t1
      BF_ENC (l, r, s, p[11]);
    11d8:	00094402 	srl	t0,t1,0x10
    11dc:	00091a02 	srl	v1,t1,0x8
    11e0:	310800ff 	andi	t0,t0,0xff
    11e4:	00093e02 	srl	a3,t1,0x18
    11e8:	25080100 	addiu	t0,t0,256
    11ec:	306300ff 	andi	v1,v1,0xff
    11f0:	312200ff 	andi	v0,t1,0xff
    11f4:	00084080 	sll	t0,t0,0x2
    11f8:	00073880 	sll	a3,a3,0x2
    11fc:	24630200 	addiu	v1,v1,512
    1200:	01054021 	addu	t0,t0,a1
    1204:	00e53821 	addu	a3,a3,a1
    1208:	00031880 	sll	v1,v1,0x2
    120c:	24420300 	addiu	v0,v0,768
    1210:	8d0c0000 	lw	t4,0(t0)
    1214:	00651821 	addu	v1,v1,a1
    1218:	8ce80000 	lw	t0,0(a3)
    121c:	00021080 	sll	v0,v0,0x2
    1220:	8c670000 	lw	a3,0(v1)
    1224:	00451021 	addu	v0,v0,a1
    1228:	8cc3002c 	lw	v1,44(a2)
    122c:	8c420000 	lw	v0,0(v0)
    1230:	01884021 	addu	t0,t4,t0
    1234:	01074026 	xor	t0,t0,a3
    1238:	01435026 	xor	t2,t2,v1
    123c:	01024021 	addu	t0,t0,v0
    1240:	01484026 	xor	t0,t2,t0
      BF_ENC (r, l, s, p[10]);
    1244:	00085402 	srl	t2,t0,0x10
    1248:	00081202 	srl	v0,t0,0x8
    124c:	314a00ff 	andi	t2,t2,0xff
    1250:	00083e02 	srl	a3,t0,0x18
    1254:	254a0100 	addiu	t2,t2,256
    1258:	304200ff 	andi	v0,v0,0xff
    125c:	310300ff 	andi	v1,t0,0xff
    1260:	000a5080 	sll	t2,t2,0x2
    1264:	00073880 	sll	a3,a3,0x2
    1268:	24420200 	addiu	v0,v0,512
    126c:	01455021 	addu	t2,t2,a1
    1270:	00e53821 	addu	a3,a3,a1
    1274:	00021080 	sll	v0,v0,0x2
    1278:	24630300 	addiu	v1,v1,768
    127c:	8d4c0000 	lw	t4,0(t2)
    1280:	00451021 	addu	v0,v0,a1
    1284:	8ce70000 	lw	a3,0(a3)
    1288:	00031880 	sll	v1,v1,0x2
    128c:	8c4a0000 	lw	t2,0(v0)
    1290:	00651821 	addu	v1,v1,a1
    1294:	8cc20028 	lw	v0,40(a2)
    1298:	8c630000 	lw	v1,0(v1)
    129c:	01873821 	addu	a3,t4,a3
    12a0:	00ea3826 	xor	a3,a3,t2
    12a4:	01224826 	xor	t1,t1,v0
    12a8:	00e33821 	addu	a3,a3,v1
    12ac:	01273826 	xor	a3,t1,a3
      BF_ENC (l, r, s, p[9]);
    12b0:	00075402 	srl	t2,a3,0x10
    12b4:	00074a02 	srl	t1,a3,0x8
    12b8:	314a00ff 	andi	t2,t2,0xff
    12bc:	00071e02 	srl	v1,a3,0x18
    12c0:	254a0100 	addiu	t2,t2,256
    12c4:	312900ff 	andi	t1,t1,0xff
    12c8:	30e200ff 	andi	v0,a3,0xff
    12cc:	000a5080 	sll	t2,t2,0x2
    12d0:	00031880 	sll	v1,v1,0x2
    12d4:	25290200 	addiu	t1,t1,512
    12d8:	01455021 	addu	t2,t2,a1
    12dc:	00651821 	addu	v1,v1,a1
    12e0:	00094880 	sll	t1,t1,0x2
    12e4:	24420300 	addiu	v0,v0,768
    12e8:	8d4c0000 	lw	t4,0(t2)
    12ec:	8c630000 	lw	v1,0(v1)
    12f0:	01254821 	addu	t1,t1,a1
    12f4:	00021080 	sll	v0,v0,0x2
    12f8:	8d290000 	lw	t1,0(t1)
    12fc:	00451021 	addu	v0,v0,a1
    1300:	8cca0024 	lw	t2,36(a2)
    1304:	8c420000 	lw	v0,0(v0)
    1308:	01831821 	addu	v1,t4,v1
    130c:	00691826 	xor	v1,v1,t1
    1310:	010a4026 	xor	t0,t0,t2
    1314:	00621821 	addu	v1,v1,v0
    1318:	01031826 	xor	v1,t0,v1
      BF_ENC (r, l, s, p[8]);
    131c:	00035402 	srl	t2,v1,0x10
    1320:	00034a02 	srl	t1,v1,0x8
    1324:	314a00ff 	andi	t2,t2,0xff
    1328:	00031602 	srl	v0,v1,0x18
    132c:	254a0100 	addiu	t2,t2,256
    1330:	312900ff 	andi	t1,t1,0xff
    1334:	306800ff 	andi	t0,v1,0xff
    1338:	000a5080 	sll	t2,t2,0x2
    133c:	00021080 	sll	v0,v0,0x2
    1340:	25290200 	addiu	t1,t1,512
    1344:	01455021 	addu	t2,t2,a1
    1348:	00451021 	addu	v0,v0,a1
    134c:	00094880 	sll	t1,t1,0x2
    1350:	25080300 	addiu	t0,t0,768
    1354:	8d4c0000 	lw	t4,0(t2)
    1358:	01254821 	addu	t1,t1,a1
    135c:	8c420000 	lw	v0,0(v0)
    1360:	00084080 	sll	t0,t0,0x2
    1364:	8d2a0000 	lw	t2,0(t1)
    1368:	01054021 	addu	t0,t0,a1
    136c:	8cc90020 	lw	t1,32(a2)
    1370:	8d080000 	lw	t0,0(t0)
    1374:	01821021 	addu	v0,t4,v0
    1378:	004a1026 	xor	v0,v0,t2
    137c:	00e93826 	xor	a3,a3,t1
    1380:	00481021 	addu	v0,v0,t0
    1384:	00e21026 	xor	v0,a3,v0
      BF_ENC (l, r, s, p[7]);
    1388:	00025402 	srl	t2,v0,0x10
    138c:	00024202 	srl	t0,v0,0x8
    1390:	314a00ff 	andi	t2,t2,0xff
    1394:	00024e02 	srl	t1,v0,0x18
    1398:	254a0100 	addiu	t2,t2,256
    139c:	310800ff 	andi	t0,t0,0xff
    13a0:	304700ff 	andi	a3,v0,0xff
    13a4:	000a5080 	sll	t2,t2,0x2
    13a8:	00094880 	sll	t1,t1,0x2
    13ac:	25080200 	addiu	t0,t0,512
    13b0:	01455021 	addu	t2,t2,a1
    13b4:	01254821 	addu	t1,t1,a1
    13b8:	00084080 	sll	t0,t0,0x2
    13bc:	24e70300 	addiu	a3,a3,768
    13c0:	8d4c0000 	lw	t4,0(t2)
    13c4:	01054021 	addu	t0,t0,a1
    13c8:	8d2a0000 	lw	t2,0(t1)
    13cc:	00073880 	sll	a3,a3,0x2
    13d0:	8d090000 	lw	t1,0(t0)
    13d4:	00e53821 	addu	a3,a3,a1
    13d8:	8cc8001c 	lw	t0,28(a2)
    13dc:	8ce70000 	lw	a3,0(a3)
    13e0:	018a5021 	addu	t2,t4,t2
    13e4:	01495026 	xor	t2,t2,t1
    13e8:	00681826 	xor	v1,v1,t0
    13ec:	01475021 	addu	t2,t2,a3
    13f0:	006a5026 	xor	t2,v1,t2
      BF_ENC (r, l, s, p[6]);
    13f4:	000a4c02 	srl	t1,t2,0x10
    13f8:	000a3a02 	srl	a3,t2,0x8
    13fc:	312900ff 	andi	t1,t1,0xff
    1400:	000a4602 	srl	t0,t2,0x18
    1404:	25290100 	addiu	t1,t1,256
    1408:	30e700ff 	andi	a3,a3,0xff
    140c:	314300ff 	andi	v1,t2,0xff
    1410:	00094880 	sll	t1,t1,0x2
    1414:	00084080 	sll	t0,t0,0x2
    1418:	24e70200 	addiu	a3,a3,512
    141c:	01254821 	addu	t1,t1,a1
    1420:	01054021 	addu	t0,t0,a1
    1424:	00073880 	sll	a3,a3,0x2
    1428:	24630300 	addiu	v1,v1,768
    142c:	8d2c0000 	lw	t4,0(t1)
    1430:	00e53821 	addu	a3,a3,a1
    1434:	8d090000 	lw	t1,0(t0)
    1438:	00031880 	sll	v1,v1,0x2
    143c:	8ce80000 	lw	t0,0(a3)
    1440:	00651821 	addu	v1,v1,a1
    1444:	8cc70018 	lw	a3,24(a2)
    1448:	8c630000 	lw	v1,0(v1)
    144c:	01894821 	addu	t1,t4,t1
    1450:	01284826 	xor	t1,t1,t0
    1454:	00471026 	xor	v0,v0,a3
    1458:	01234821 	addu	t1,t1,v1
    145c:	00494826 	xor	t1,v0,t1
      BF_ENC (l, r, s, p[5]);
    1460:	00094402 	srl	t0,t1,0x10
    1464:	00091a02 	srl	v1,t1,0x8
    1468:	310800ff 	andi	t0,t0,0xff
    146c:	00093e02 	srl	a3,t1,0x18
    1470:	25080100 	addiu	t0,t0,256
    1474:	306300ff 	andi	v1,v1,0xff
    1478:	312200ff 	andi	v0,t1,0xff
    147c:	00084080 	sll	t0,t0,0x2
    1480:	00073880 	sll	a3,a3,0x2
    1484:	24630200 	addiu	v1,v1,512
    1488:	01054021 	addu	t0,t0,a1
    148c:	00e53821 	addu	a3,a3,a1
    1490:	00031880 	sll	v1,v1,0x2
    1494:	24420300 	addiu	v0,v0,768
    1498:	8d0c0000 	lw	t4,0(t0)
    149c:	00651821 	addu	v1,v1,a1
    14a0:	8ce80000 	lw	t0,0(a3)
    14a4:	00021080 	sll	v0,v0,0x2
    14a8:	8c670000 	lw	a3,0(v1)
    14ac:	00451021 	addu	v0,v0,a1
    14b0:	8cc30014 	lw	v1,20(a2)
    14b4:	8c420000 	lw	v0,0(v0)
    14b8:	01884021 	addu	t0,t4,t0
    14bc:	01074026 	xor	t0,t0,a3
    14c0:	01435026 	xor	t2,t2,v1
    14c4:	01024021 	addu	t0,t0,v0
    14c8:	01484026 	xor	t0,t2,t0
      BF_ENC (r, l, s, p[4]);
    14cc:	00085402 	srl	t2,t0,0x10
    14d0:	00081202 	srl	v0,t0,0x8
    14d4:	314a00ff 	andi	t2,t2,0xff
    14d8:	00083e02 	srl	a3,t0,0x18
    14dc:	254a0100 	addiu	t2,t2,256
    14e0:	304200ff 	andi	v0,v0,0xff
    14e4:	310300ff 	andi	v1,t0,0xff
    14e8:	000a5080 	sll	t2,t2,0x2
    14ec:	00073880 	sll	a3,a3,0x2
    14f0:	24420200 	addiu	v0,v0,512
    14f4:	01455021 	addu	t2,t2,a1
    14f8:	00e53821 	addu	a3,a3,a1
    14fc:	00021080 	sll	v0,v0,0x2
    1500:	24630300 	addiu	v1,v1,768
    1504:	8d4c0000 	lw	t4,0(t2)
    1508:	00451021 	addu	v0,v0,a1
    150c:	8ce70000 	lw	a3,0(a3)
    1510:	00031880 	sll	v1,v1,0x2
    1514:	8c4a0000 	lw	t2,0(v0)
    1518:	00651821 	addu	v1,v1,a1
    151c:	8cc20010 	lw	v0,16(a2)
    1520:	8c630000 	lw	v1,0(v1)
    1524:	01873821 	addu	a3,t4,a3
    1528:	00ea3826 	xor	a3,a3,t2
    152c:	01224826 	xor	t1,t1,v0
    1530:	00e33821 	addu	a3,a3,v1
    1534:	01273826 	xor	a3,t1,a3
      BF_ENC (l, r, s, p[3]);
    1538:	00075402 	srl	t2,a3,0x10
    153c:	00074a02 	srl	t1,a3,0x8
    1540:	314a00ff 	andi	t2,t2,0xff
    1544:	00071e02 	srl	v1,a3,0x18
    1548:	254a0100 	addiu	t2,t2,256
    154c:	312900ff 	andi	t1,t1,0xff
    1550:	30e200ff 	andi	v0,a3,0xff
    1554:	000a5080 	sll	t2,t2,0x2
    1558:	00031880 	sll	v1,v1,0x2
    155c:	25290200 	addiu	t1,t1,512
    1560:	01455021 	addu	t2,t2,a1
    1564:	00651821 	addu	v1,v1,a1
    1568:	00094880 	sll	t1,t1,0x2
    156c:	24420300 	addiu	v0,v0,768
    1570:	8d4c0000 	lw	t4,0(t2)
    1574:	01254821 	addu	t1,t1,a1
    1578:	8c630000 	lw	v1,0(v1)
    157c:	00021080 	sll	v0,v0,0x2
    1580:	8d2a0000 	lw	t2,0(t1)
    1584:	00451021 	addu	v0,v0,a1
    1588:	8cc9000c 	lw	t1,12(a2)
    158c:	8c420000 	lw	v0,0(v0)
    1590:	01831821 	addu	v1,t4,v1
    1594:	006a1826 	xor	v1,v1,t2
    1598:	01094026 	xor	t0,t0,t1
    159c:	00621821 	addu	v1,v1,v0
    15a0:	01031826 	xor	v1,t0,v1
      BF_ENC (r, l, s, p[2]);
    15a4:	00035402 	srl	t2,v1,0x10
    15a8:	00034a02 	srl	t1,v1,0x8
    15ac:	314a00ff 	andi	t2,t2,0xff
    15b0:	00031602 	srl	v0,v1,0x18
    15b4:	254a0100 	addiu	t2,t2,256
    15b8:	312900ff 	andi	t1,t1,0xff
    15bc:	306800ff 	andi	t0,v1,0xff
    15c0:	000a5080 	sll	t2,t2,0x2
    15c4:	00021080 	sll	v0,v0,0x2
    15c8:	25290200 	addiu	t1,t1,512
    15cc:	01455021 	addu	t2,t2,a1
    15d0:	00451021 	addu	v0,v0,a1
    15d4:	00094880 	sll	t1,t1,0x2
    15d8:	25080300 	addiu	t0,t0,768
    15dc:	8d4c0000 	lw	t4,0(t2)
    15e0:	01254821 	addu	t1,t1,a1
    15e4:	8c420000 	lw	v0,0(v0)
    15e8:	00084080 	sll	t0,t0,0x2
    15ec:	8d2a0000 	lw	t2,0(t1)
    15f0:	01054021 	addu	t0,t0,a1
    15f4:	8cc90008 	lw	t1,8(a2)
    15f8:	8d080000 	lw	t0,0(t0)
    15fc:	01821021 	addu	v0,t4,v0
    1600:	004a1026 	xor	v0,v0,t2
    1604:	00e93826 	xor	a3,a3,t1
    1608:	00481021 	addu	v0,v0,t0
    160c:	00e21026 	xor	v0,a3,v0
      BF_ENC (l, r, s, p[1]);
    1610:	00025402 	srl	t2,v0,0x10
    1614:	00024a02 	srl	t1,v0,0x8
    1618:	314a00ff 	andi	t2,t2,0xff
    161c:	00023e02 	srl	a3,v0,0x18
    1620:	254a0100 	addiu	t2,t2,256
    1624:	312900ff 	andi	t1,t1,0xff
    1628:	304800ff 	andi	t0,v0,0xff
    162c:	000a5080 	sll	t2,t2,0x2
    1630:	00073880 	sll	a3,a3,0x2
    1634:	25290200 	addiu	t1,t1,512
    1638:	01455021 	addu	t2,t2,a1
    163c:	00e53821 	addu	a3,a3,a1
    1640:	00094880 	sll	t1,t1,0x2
    1644:	25080300 	addiu	t0,t0,768
    1648:	8d4a0000 	lw	t2,0(t2)
    164c:	8ce70000 	lw	a3,0(a3)
    1650:	01254821 	addu	t1,t1,a1
    1654:	00084080 	sll	t0,t0,0x2
    1658:	01052821 	addu	a1,t0,a1
    165c:	8d290000 	lw	t1,0(t1)
    1660:	8cc80004 	lw	t0,4(a2)
    1664:	01473821 	addu	a3,t2,a3
    1668:	8ca60000 	lw	a2,0(a1)
    166c:	00e93826 	xor	a3,a3,t1
      r ^= p[0];
    1670:	8d650000 	lw	a1,0(t3)
      BF_ENC (r, l, s, p[6]);
      BF_ENC (l, r, s, p[5]);
      BF_ENC (r, l, s, p[4]);
      BF_ENC (l, r, s, p[3]);
      BF_ENC (r, l, s, p[2]);
      BF_ENC (l, r, s, p[1]);
    1674:	00681826 	xor	v1,v1,t0
    1678:	00e63821 	addu	a3,a3,a2
    167c:	00671826 	xor	v1,v1,a3
      r ^= p[0];
    1680:	00451026 	xor	v0,v0,a1
    }
  data[1] = l & 0xffffffff;
    1684:	ac830004 	sw	v1,4(a0)
  data[0] = r & 0xffffffff;
}
    1688:	03e00008 	jr	ra
    168c:	ac820000 	sw	v0,0(a0)
  l = data[0];
  r = data[1];

  if (encrypt)
    {
      l ^= p[0];
    1690:	3c060000 	lui	a2,0x0
    1694:	8cca0000 	lw	t2,0(a2)

      BF_ENC (r, l, s, p[1]);
    1698:	3c050000 	lui	a1,0x0
  l = data[0];
  r = data[1];

  if (encrypt)
    {
      l ^= p[0];
    169c:	006a1826 	xor	v1,v1,t2

      BF_ENC (r, l, s, p[1]);
    16a0:	00035402 	srl	t2,v1,0x10
    16a4:	00034a02 	srl	t1,v1,0x8
    16a8:	314a00ff 	andi	t2,t2,0xff
    16ac:	00033e02 	srl	a3,v1,0x18
    16b0:	254a0100 	addiu	t2,t2,256
    16b4:	312900ff 	andi	t1,t1,0xff
    16b8:	24a50000 	addiu	a1,a1,0
    16bc:	306800ff 	andi	t0,v1,0xff
    16c0:	000a5080 	sll	t2,t2,0x2
    16c4:	00073880 	sll	a3,a3,0x2
    16c8:	25290200 	addiu	t1,t1,512
    16cc:	01455021 	addu	t2,t2,a1
    16d0:	00e53821 	addu	a3,a3,a1
    16d4:	00094880 	sll	t1,t1,0x2
    16d8:	25080300 	addiu	t0,t0,768
    16dc:	8d4b0000 	lw	t3,0(t2)
    16e0:	01254821 	addu	t1,t1,a1
    16e4:	8ce70000 	lw	a3,0(a3)
    16e8:	00084080 	sll	t0,t0,0x2
    16ec:	24c60000 	addiu	a2,a2,0
    16f0:	8d2a0000 	lw	t2,0(t1)
    16f4:	01054021 	addu	t0,t0,a1
    16f8:	8cc90004 	lw	t1,4(a2)
    16fc:	8d080000 	lw	t0,0(t0)
    1700:	01673821 	addu	a3,t3,a3
    1704:	00ea3826 	xor	a3,a3,t2
    1708:	00491026 	xor	v0,v0,t1
    170c:	00e83821 	addu	a3,a3,t0
    1710:	00473826 	xor	a3,v0,a3
      BF_ENC (l, r, s, p[2]);
    1714:	00075402 	srl	t2,a3,0x10
    1718:	00074a02 	srl	t1,a3,0x8
    171c:	314a00ff 	andi	t2,t2,0xff
    1720:	00071602 	srl	v0,a3,0x18
    1724:	254a0100 	addiu	t2,t2,256
    1728:	312900ff 	andi	t1,t1,0xff
    172c:	30e800ff 	andi	t0,a3,0xff
    1730:	000a5080 	sll	t2,t2,0x2
    1734:	00021080 	sll	v0,v0,0x2
    1738:	25290200 	addiu	t1,t1,512
    173c:	01455021 	addu	t2,t2,a1
    1740:	00451021 	addu	v0,v0,a1
    1744:	00094880 	sll	t1,t1,0x2
    1748:	25080300 	addiu	t0,t0,768
    174c:	8d4b0000 	lw	t3,0(t2)
    1750:	8c420000 	lw	v0,0(v0)
    1754:	01254821 	addu	t1,t1,a1
    1758:	00084080 	sll	t0,t0,0x2
    175c:	8d290000 	lw	t1,0(t1)
    1760:	01054021 	addu	t0,t0,a1
    1764:	8cca0008 	lw	t2,8(a2)
    1768:	8d080000 	lw	t0,0(t0)
    176c:	01621021 	addu	v0,t3,v0
    1770:	00491026 	xor	v0,v0,t1
    1774:	00481021 	addu	v0,v0,t0
    1778:	006a1826 	xor	v1,v1,t2
    177c:	00621826 	xor	v1,v1,v0
      BF_ENC (r, l, s, p[3]);
    1780:	00034c02 	srl	t1,v1,0x10
    1784:	00031202 	srl	v0,v1,0x8
    1788:	312900ff 	andi	t1,t1,0xff
    178c:	00034602 	srl	t0,v1,0x18
    1790:	25290100 	addiu	t1,t1,256
    1794:	304200ff 	andi	v0,v0,0xff
    1798:	306a00ff 	andi	t2,v1,0xff
    179c:	00094880 	sll	t1,t1,0x2
    17a0:	00084080 	sll	t0,t0,0x2
    17a4:	24420200 	addiu	v0,v0,512
    17a8:	01254821 	addu	t1,t1,a1
    17ac:	01054021 	addu	t0,t0,a1
    17b0:	00021080 	sll	v0,v0,0x2
    17b4:	254a0300 	addiu	t2,t2,768
    17b8:	8d2b0000 	lw	t3,0(t1)
    17bc:	00451021 	addu	v0,v0,a1
    17c0:	8d080000 	lw	t0,0(t0)
    17c4:	000a5080 	sll	t2,t2,0x2
    17c8:	8c490000 	lw	t1,0(v0)
    17cc:	01455021 	addu	t2,t2,a1
    17d0:	8cc2000c 	lw	v0,12(a2)
    17d4:	8d4a0000 	lw	t2,0(t2)
    17d8:	01684021 	addu	t0,t3,t0
    17dc:	01094026 	xor	t0,t0,t1
    17e0:	010a4021 	addu	t0,t0,t2
    17e4:	00e23826 	xor	a3,a3,v0
    17e8:	00e81026 	xor	v0,a3,t0
      BF_ENC (l, r, s, p[4]);
    17ec:	00025402 	srl	t2,v0,0x10
    17f0:	00024202 	srl	t0,v0,0x8
    17f4:	314a00ff 	andi	t2,t2,0xff
    17f8:	00024e02 	srl	t1,v0,0x18
    17fc:	254a0100 	addiu	t2,t2,256
    1800:	310800ff 	andi	t0,t0,0xff
    1804:	304700ff 	andi	a3,v0,0xff
    1808:	000a5080 	sll	t2,t2,0x2
    180c:	00094880 	sll	t1,t1,0x2
    1810:	25080200 	addiu	t0,t0,512
    1814:	01455021 	addu	t2,t2,a1
    1818:	01254821 	addu	t1,t1,a1
    181c:	00084080 	sll	t0,t0,0x2
    1820:	24e70300 	addiu	a3,a3,768
    1824:	8d4b0000 	lw	t3,0(t2)
    1828:	01054021 	addu	t0,t0,a1
    182c:	8d2a0000 	lw	t2,0(t1)
    1830:	00073880 	sll	a3,a3,0x2
    1834:	8d090000 	lw	t1,0(t0)
    1838:	00e53821 	addu	a3,a3,a1
    183c:	8cc80010 	lw	t0,16(a2)
    1840:	8ce70000 	lw	a3,0(a3)
    1844:	016a5021 	addu	t2,t3,t2
    1848:	01495026 	xor	t2,t2,t1
    184c:	00681826 	xor	v1,v1,t0
    1850:	01475021 	addu	t2,t2,a3
    1854:	006a5026 	xor	t2,v1,t2
      BF_ENC (r, l, s, p[5]);
    1858:	000a4c02 	srl	t1,t2,0x10
    185c:	000a3a02 	srl	a3,t2,0x8
    1860:	312900ff 	andi	t1,t1,0xff
    1864:	000a4602 	srl	t0,t2,0x18
    1868:	25290100 	addiu	t1,t1,256
    186c:	30e700ff 	andi	a3,a3,0xff
    1870:	314300ff 	andi	v1,t2,0xff
    1874:	00094880 	sll	t1,t1,0x2
    1878:	00084080 	sll	t0,t0,0x2
    187c:	24e70200 	addiu	a3,a3,512
    1880:	01254821 	addu	t1,t1,a1
    1884:	01054021 	addu	t0,t0,a1
    1888:	00073880 	sll	a3,a3,0x2
    188c:	24630300 	addiu	v1,v1,768
    1890:	8d2b0000 	lw	t3,0(t1)
    1894:	00e53821 	addu	a3,a3,a1
    1898:	8d090000 	lw	t1,0(t0)
    189c:	00031880 	sll	v1,v1,0x2
    18a0:	8ce70000 	lw	a3,0(a3)
    18a4:	00651821 	addu	v1,v1,a1
    18a8:	8cc80014 	lw	t0,20(a2)
    18ac:	8c630000 	lw	v1,0(v1)
    18b0:	01694821 	addu	t1,t3,t1
    18b4:	01274826 	xor	t1,t1,a3
    18b8:	00481026 	xor	v0,v0,t0
    18bc:	01234821 	addu	t1,t1,v1
    18c0:	00494826 	xor	t1,v0,t1
      BF_ENC (l, r, s, p[6]);
    18c4:	00094402 	srl	t0,t1,0x10
    18c8:	00093a02 	srl	a3,t1,0x8
    18cc:	310800ff 	andi	t0,t0,0xff
    18d0:	00091e02 	srl	v1,t1,0x18
    18d4:	25080100 	addiu	t0,t0,256
    18d8:	30e700ff 	andi	a3,a3,0xff
    18dc:	312200ff 	andi	v0,t1,0xff
    18e0:	00084080 	sll	t0,t0,0x2
    18e4:	00031880 	sll	v1,v1,0x2
    18e8:	24e70200 	addiu	a3,a3,512
    18ec:	01054021 	addu	t0,t0,a1
    18f0:	00651821 	addu	v1,v1,a1
    18f4:	00073880 	sll	a3,a3,0x2
    18f8:	24420300 	addiu	v0,v0,768
    18fc:	8d0b0000 	lw	t3,0(t0)
    1900:	00e53821 	addu	a3,a3,a1
    1904:	8c630000 	lw	v1,0(v1)
    1908:	00021080 	sll	v0,v0,0x2
    190c:	8ce80000 	lw	t0,0(a3)
    1910:	00451021 	addu	v0,v0,a1
    1914:	8cc70018 	lw	a3,24(a2)
    1918:	8c420000 	lw	v0,0(v0)
    191c:	01631821 	addu	v1,t3,v1
    1920:	00681826 	xor	v1,v1,t0
    1924:	01475026 	xor	t2,t2,a3
    1928:	00621821 	addu	v1,v1,v0
    192c:	01431826 	xor	v1,t2,v1
      BF_ENC (r, l, s, p[7]);
    1930:	00035402 	srl	t2,v1,0x10
    1934:	00031202 	srl	v0,v1,0x8
    1938:	314a00ff 	andi	t2,t2,0xff
    193c:	00034602 	srl	t0,v1,0x18
    1940:	254a0100 	addiu	t2,t2,256
    1944:	304200ff 	andi	v0,v0,0xff
    1948:	306700ff 	andi	a3,v1,0xff
    194c:	000a5080 	sll	t2,t2,0x2
    1950:	00084080 	sll	t0,t0,0x2
    1954:	24420200 	addiu	v0,v0,512
    1958:	01455021 	addu	t2,t2,a1
    195c:	01054021 	addu	t0,t0,a1
    1960:	00021080 	sll	v0,v0,0x2
    1964:	24e70300 	addiu	a3,a3,768
    1968:	8d4b0000 	lw	t3,0(t2)
    196c:	00451021 	addu	v0,v0,a1
    1970:	8d080000 	lw	t0,0(t0)
    1974:	00073880 	sll	a3,a3,0x2
    1978:	8c4a0000 	lw	t2,0(v0)
    197c:	00e53821 	addu	a3,a3,a1
    1980:	8cc2001c 	lw	v0,28(a2)
    1984:	8ce70000 	lw	a3,0(a3)
    1988:	01684021 	addu	t0,t3,t0
    198c:	010a4026 	xor	t0,t0,t2
    1990:	01224826 	xor	t1,t1,v0
    1994:	01074021 	addu	t0,t0,a3
    1998:	01284026 	xor	t0,t1,t0
      BF_ENC (l, r, s, p[8]);
    199c:	00085402 	srl	t2,t0,0x10
    19a0:	00084a02 	srl	t1,t0,0x8
    19a4:	314a00ff 	andi	t2,t2,0xff
    19a8:	00083e02 	srl	a3,t0,0x18
    19ac:	254a0100 	addiu	t2,t2,256
    19b0:	312900ff 	andi	t1,t1,0xff
    19b4:	310200ff 	andi	v0,t0,0xff
    19b8:	000a5080 	sll	t2,t2,0x2
    19bc:	00073880 	sll	a3,a3,0x2
    19c0:	25290200 	addiu	t1,t1,512
    19c4:	01455021 	addu	t2,t2,a1
    19c8:	00e53821 	addu	a3,a3,a1
    19cc:	00094880 	sll	t1,t1,0x2
    19d0:	24420300 	addiu	v0,v0,768
    19d4:	8d4b0000 	lw	t3,0(t2)
    19d8:	8ce70000 	lw	a3,0(a3)
    19dc:	01254821 	addu	t1,t1,a1
    19e0:	00021080 	sll	v0,v0,0x2
    19e4:	8d290000 	lw	t1,0(t1)
    19e8:	00451021 	addu	v0,v0,a1
    19ec:	8cca0020 	lw	t2,32(a2)
    19f0:	8c420000 	lw	v0,0(v0)
    19f4:	01673821 	addu	a3,t3,a3
    19f8:	00e93826 	xor	a3,a3,t1
    19fc:	006a1826 	xor	v1,v1,t2
    1a00:	00e23821 	addu	a3,a3,v0
    1a04:	00673826 	xor	a3,v1,a3
      BF_ENC (r, l, s, p[9]);
    1a08:	00075402 	srl	t2,a3,0x10
    1a0c:	00074a02 	srl	t1,a3,0x8
    1a10:	314a00ff 	andi	t2,t2,0xff
    1a14:	00071602 	srl	v0,a3,0x18
    1a18:	254a0100 	addiu	t2,t2,256
    1a1c:	312900ff 	andi	t1,t1,0xff
    1a20:	30e300ff 	andi	v1,a3,0xff
    1a24:	000a5080 	sll	t2,t2,0x2
    1a28:	00021080 	sll	v0,v0,0x2
    1a2c:	25290200 	addiu	t1,t1,512
    1a30:	01455021 	addu	t2,t2,a1
    1a34:	00451021 	addu	v0,v0,a1
    1a38:	00094880 	sll	t1,t1,0x2
    1a3c:	24630300 	addiu	v1,v1,768
    1a40:	8d4b0000 	lw	t3,0(t2)
    1a44:	01254821 	addu	t1,t1,a1
    1a48:	8c420000 	lw	v0,0(v0)
    1a4c:	00031880 	sll	v1,v1,0x2
    1a50:	8d2a0000 	lw	t2,0(t1)
    1a54:	00651821 	addu	v1,v1,a1
    1a58:	8cc90024 	lw	t1,36(a2)
    1a5c:	8c630000 	lw	v1,0(v1)
    1a60:	01621021 	addu	v0,t3,v0
    1a64:	004a1026 	xor	v0,v0,t2
    1a68:	01094026 	xor	t0,t0,t1
    1a6c:	00431021 	addu	v0,v0,v1
    1a70:	01021026 	xor	v0,t0,v0
      BF_ENC (l, r, s, p[10]);
    1a74:	00025402 	srl	t2,v0,0x10
    1a78:	00021a02 	srl	v1,v0,0x8
    1a7c:	314a00ff 	andi	t2,t2,0xff
    1a80:	00024e02 	srl	t1,v0,0x18
    1a84:	254a0100 	addiu	t2,t2,256
    1a88:	306300ff 	andi	v1,v1,0xff
    1a8c:	304800ff 	andi	t0,v0,0xff
    1a90:	000a5080 	sll	t2,t2,0x2
    1a94:	00094880 	sll	t1,t1,0x2
    1a98:	24630200 	addiu	v1,v1,512
    1a9c:	01455021 	addu	t2,t2,a1
    1aa0:	01254821 	addu	t1,t1,a1
    1aa4:	00031880 	sll	v1,v1,0x2
    1aa8:	25080300 	addiu	t0,t0,768
    1aac:	8d4b0000 	lw	t3,0(t2)
    1ab0:	00651821 	addu	v1,v1,a1
    1ab4:	8d2a0000 	lw	t2,0(t1)
    1ab8:	00084080 	sll	t0,t0,0x2
    1abc:	8c690000 	lw	t1,0(v1)
    1ac0:	01054021 	addu	t0,t0,a1
    1ac4:	8cc30028 	lw	v1,40(a2)
    1ac8:	8d080000 	lw	t0,0(t0)
    1acc:	016a5021 	addu	t2,t3,t2
    1ad0:	01495026 	xor	t2,t2,t1
    1ad4:	00e33826 	xor	a3,a3,v1
    1ad8:	01485021 	addu	t2,t2,t0
    1adc:	00ea5026 	xor	t2,a3,t2
      BF_ENC (r, l, s, p[11]);
    1ae0:	000a4c02 	srl	t1,t2,0x10
    1ae4:	000a3a02 	srl	a3,t2,0x8
    1ae8:	312900ff 	andi	t1,t1,0xff
    1aec:	000a4602 	srl	t0,t2,0x18
    1af0:	25290100 	addiu	t1,t1,256
    1af4:	30e700ff 	andi	a3,a3,0xff
    1af8:	314300ff 	andi	v1,t2,0xff
    1afc:	00094880 	sll	t1,t1,0x2
    1b00:	00084080 	sll	t0,t0,0x2
    1b04:	24e70200 	addiu	a3,a3,512
    1b08:	01254821 	addu	t1,t1,a1
    1b0c:	01054021 	addu	t0,t0,a1
    1b10:	00073880 	sll	a3,a3,0x2
    1b14:	24630300 	addiu	v1,v1,768
    1b18:	8d2b0000 	lw	t3,0(t1)
    1b1c:	00e53821 	addu	a3,a3,a1
    1b20:	8d090000 	lw	t1,0(t0)
    1b24:	00031880 	sll	v1,v1,0x2
    1b28:	8ce70000 	lw	a3,0(a3)
    1b2c:	00651821 	addu	v1,v1,a1
    1b30:	8cc8002c 	lw	t0,44(a2)
    1b34:	8c630000 	lw	v1,0(v1)
    1b38:	01694821 	addu	t1,t3,t1
    1b3c:	01274826 	xor	t1,t1,a3
    1b40:	00481026 	xor	v0,v0,t0
    1b44:	01234821 	addu	t1,t1,v1
    1b48:	00494826 	xor	t1,v0,t1
      BF_ENC (l, r, s, p[12]);
    1b4c:	00094402 	srl	t0,t1,0x10
    1b50:	00093a02 	srl	a3,t1,0x8
    1b54:	310800ff 	andi	t0,t0,0xff
    1b58:	00091e02 	srl	v1,t1,0x18
    1b5c:	25080100 	addiu	t0,t0,256
    1b60:	30e700ff 	andi	a3,a3,0xff
    1b64:	312200ff 	andi	v0,t1,0xff
    1b68:	00084080 	sll	t0,t0,0x2
    1b6c:	00031880 	sll	v1,v1,0x2
    1b70:	24e70200 	addiu	a3,a3,512
    1b74:	01054021 	addu	t0,t0,a1
    1b78:	00651821 	addu	v1,v1,a1
    1b7c:	00073880 	sll	a3,a3,0x2
    1b80:	24420300 	addiu	v0,v0,768
    1b84:	8d0b0000 	lw	t3,0(t0)
    1b88:	00e53821 	addu	a3,a3,a1
    1b8c:	8c630000 	lw	v1,0(v1)
    1b90:	00021080 	sll	v0,v0,0x2
    1b94:	8ce80000 	lw	t0,0(a3)
    1b98:	00451021 	addu	v0,v0,a1
    1b9c:	8cc70030 	lw	a3,48(a2)
    1ba0:	8c420000 	lw	v0,0(v0)
    1ba4:	01631821 	addu	v1,t3,v1
    1ba8:	00681826 	xor	v1,v1,t0
    1bac:	01475026 	xor	t2,t2,a3
    1bb0:	00621821 	addu	v1,v1,v0
    1bb4:	01431826 	xor	v1,t2,v1
      BF_ENC (r, l, s, p[13]);
    1bb8:	00035402 	srl	t2,v1,0x10
    1bbc:	00031202 	srl	v0,v1,0x8
    1bc0:	314a00ff 	andi	t2,t2,0xff
    1bc4:	00034602 	srl	t0,v1,0x18
    1bc8:	254a0100 	addiu	t2,t2,256
    1bcc:	304200ff 	andi	v0,v0,0xff
    1bd0:	306700ff 	andi	a3,v1,0xff
    1bd4:	000a5080 	sll	t2,t2,0x2
    1bd8:	00084080 	sll	t0,t0,0x2
    1bdc:	24420200 	addiu	v0,v0,512
    1be0:	01455021 	addu	t2,t2,a1
    1be4:	01054021 	addu	t0,t0,a1
    1be8:	00021080 	sll	v0,v0,0x2
    1bec:	24e70300 	addiu	a3,a3,768
    1bf0:	8d4b0000 	lw	t3,0(t2)
    1bf4:	00451021 	addu	v0,v0,a1
    1bf8:	8d080000 	lw	t0,0(t0)
    1bfc:	00073880 	sll	a3,a3,0x2
    1c00:	8c4a0000 	lw	t2,0(v0)
    1c04:	00e53821 	addu	a3,a3,a1
    1c08:	8cc20034 	lw	v0,52(a2)
    1c0c:	8ce70000 	lw	a3,0(a3)
    1c10:	01684021 	addu	t0,t3,t0
    1c14:	010a4026 	xor	t0,t0,t2
    1c18:	01224826 	xor	t1,t1,v0
    1c1c:	01074021 	addu	t0,t0,a3
    1c20:	01284026 	xor	t0,t1,t0
      BF_ENC (l, r, s, p[14]);
    1c24:	00085402 	srl	t2,t0,0x10
    1c28:	00084a02 	srl	t1,t0,0x8
    1c2c:	314a00ff 	andi	t2,t2,0xff
    1c30:	00083e02 	srl	a3,t0,0x18
    1c34:	254a0100 	addiu	t2,t2,256
    1c38:	312900ff 	andi	t1,t1,0xff
    1c3c:	310200ff 	andi	v0,t0,0xff
    1c40:	000a5080 	sll	t2,t2,0x2
    1c44:	00073880 	sll	a3,a3,0x2
    1c48:	25290200 	addiu	t1,t1,512
    1c4c:	01455021 	addu	t2,t2,a1
    1c50:	00e53821 	addu	a3,a3,a1
    1c54:	00094880 	sll	t1,t1,0x2
    1c58:	24420300 	addiu	v0,v0,768
    1c5c:	8d4b0000 	lw	t3,0(t2)
    1c60:	01254821 	addu	t1,t1,a1
    1c64:	8ce70000 	lw	a3,0(a3)
    1c68:	00021080 	sll	v0,v0,0x2
    1c6c:	8d2a0000 	lw	t2,0(t1)
    1c70:	00451021 	addu	v0,v0,a1
    1c74:	8cc90038 	lw	t1,56(a2)
    1c78:	8c420000 	lw	v0,0(v0)
    1c7c:	01673821 	addu	a3,t3,a3
    1c80:	00ea3826 	xor	a3,a3,t2
    1c84:	00691826 	xor	v1,v1,t1
    1c88:	00e23821 	addu	a3,a3,v0
    1c8c:	00673826 	xor	a3,v1,a3
      BF_ENC (r, l, s, p[15]);
    1c90:	00075402 	srl	t2,a3,0x10
    1c94:	00074a02 	srl	t1,a3,0x8
    1c98:	314a00ff 	andi	t2,t2,0xff
    1c9c:	00071602 	srl	v0,a3,0x18
    1ca0:	254a0100 	addiu	t2,t2,256
    1ca4:	312900ff 	andi	t1,t1,0xff
    1ca8:	30e300ff 	andi	v1,a3,0xff
    1cac:	000a5080 	sll	t2,t2,0x2
    1cb0:	00021080 	sll	v0,v0,0x2
    1cb4:	25290200 	addiu	t1,t1,512
    1cb8:	01455021 	addu	t2,t2,a1
    1cbc:	00451021 	addu	v0,v0,a1
    1cc0:	00094880 	sll	t1,t1,0x2
    1cc4:	24630300 	addiu	v1,v1,768
    1cc8:	8d4b0000 	lw	t3,0(t2)
    1ccc:	01254821 	addu	t1,t1,a1
    1cd0:	8c420000 	lw	v0,0(v0)
    1cd4:	00031880 	sll	v1,v1,0x2
    1cd8:	8d2a0000 	lw	t2,0(t1)
    1cdc:	00651821 	addu	v1,v1,a1
    1ce0:	8cc9003c 	lw	t1,60(a2)
    1ce4:	8c630000 	lw	v1,0(v1)
    1ce8:	01621021 	addu	v0,t3,v0
    1cec:	004a1026 	xor	v0,v0,t2
    1cf0:	01094026 	xor	t0,t0,t1
    1cf4:	00431021 	addu	v0,v0,v1
    1cf8:	01021026 	xor	v0,t0,v0
      BF_ENC (l, r, s, p[16]);
    1cfc:	00024402 	srl	t0,v0,0x10
    1d00:	00025202 	srl	t2,v0,0x8
    1d04:	310800ff 	andi	t0,t0,0xff
    1d08:	00021e02 	srl	v1,v0,0x18
    1d0c:	25080100 	addiu	t0,t0,256
    1d10:	314a00ff 	andi	t2,t2,0xff
    1d14:	304900ff 	andi	t1,v0,0xff
    1d18:	00084080 	sll	t0,t0,0x2
    1d1c:	00031880 	sll	v1,v1,0x2
    1d20:	254a0200 	addiu	t2,t2,512
    1d24:	01054021 	addu	t0,t0,a1
    1d28:	00651821 	addu	v1,v1,a1
    1d2c:	000a5080 	sll	t2,t2,0x2
    1d30:	25290300 	addiu	t1,t1,768
    1d34:	8d080000 	lw	t0,0(t0)
    1d38:	8c630000 	lw	v1,0(v1)
    1d3c:	01455021 	addu	t2,t2,a1
    1d40:	00094880 	sll	t1,t1,0x2
    1d44:	01252821 	addu	a1,t1,a1
    1d48:	8d4a0000 	lw	t2,0(t2)
    1d4c:	8cc90040 	lw	t1,64(a2)
    1d50:	01031821 	addu	v1,t0,v1
    1d54:	8ca80000 	lw	t0,0(a1)
    1d58:	006a1826 	xor	v1,v1,t2
      r ^= p[BF_ROUNDS + 1];
    1d5c:	8cc50044 	lw	a1,68(a2)
      BF_ENC (r, l, s, p[11]);
      BF_ENC (l, r, s, p[12]);
      BF_ENC (r, l, s, p[13]);
      BF_ENC (l, r, s, p[14]);
      BF_ENC (r, l, s, p[15]);
      BF_ENC (l, r, s, p[16]);
    1d60:	00e93826 	xor	a3,a3,t1
    1d64:	00681821 	addu	v1,v1,t0
    1d68:	00e31826 	xor	v1,a3,v1
      r ^= p[BF_ROUNDS + 1];
    1d6c:	00451026 	xor	v0,v0,a1
      BF_ENC (l, r, s, p[3]);
      BF_ENC (r, l, s, p[2]);
      BF_ENC (l, r, s, p[1]);
      r ^= p[0];
    }
  data[1] = l & 0xffffffff;
    1d70:	ac830004 	sw	v1,4(a0)
  data[0] = r & 0xffffffff;
}
    1d74:	03e00008 	jr	ra
    1d78:	ac820000 	sw	v0,0(a0)

00001d7c <blowfish_main>:

#define N 40

int
blowfish_main ()
{
    1d7c:	27bdff58 	addiu	sp,sp,-168
  int num;
  int i, j, k, l;
  int encordec;
  int check;

  num = 0;
    1d80:	27a2001c 	addiu	v0,sp,28

#define N 40

int
blowfish_main ()
{
    1d84:	afbe00a0 	sw	s8,160(sp)
    1d88:	afb7009c 	sw	s7,156(sp)
    1d8c:	afb60098 	sw	s6,152(sp)
    1d90:	afb50094 	sw	s5,148(sp)
    1d94:	afb40090 	sw	s4,144(sp)
    1d98:	afb20088 	sw	s2,136(sp)
    1d9c:	afb00080 	sw	s0,128(sp)
    1da0:	afbf00a4 	sw	ra,164(sp)
    1da4:	afb3008c 	sw	s3,140(sp)
    1da8:	afb10084 	sw	s1,132(sp)
  int num;
  int i, j, k, l;
  int encordec;
  int check;

  num = 0;
    1dac:	afa00018 	sw	zero,24(sp)
  l = 0;
  encordec = 1;
  check = 0;
  for (i = 0; i < 8; i++)
    {
      ukey[i] = 0;
    1db0:	afa0001c 	sw	zero,28(sp)
      ivec[i] = 0;
    1db4:	afa00024 	sw	zero,36(sp)
    }
  BF_set_key (8, ukey);
    1db8:	00402021 	addu	a0,v0,zero
  l = 0;
  encordec = 1;
  check = 0;
  for (i = 0; i < 8; i++)
    {
      ukey[i] = 0;
    1dbc:	ac400004 	sw	zero,4(v0)
    1dc0:	3c150000 	lui	s5,0x0
      ivec[i] = 0;
    1dc4:	afa00028 	sw	zero,40(sp)
    }
  BF_set_key (8, ukey);
    1dc8:	0c000218 	jal	860 <BF_set_key.clone.2>
    1dcc:	00008021 	addu	s0,zero,zero
  int encordec;
  int check;

  num = 0;
  k = 0;
  l = 0;
    1dd0:	0000f021 	addu	s8,zero,zero
  int i, j, k, l;
  int encordec;
  int check;

  num = 0;
  k = 0;
    1dd4:	00009021 	addu	s2,zero,zero
    1dd8:	27b4002c 	addiu	s4,sp,44
    1ddc:	26b50000 	addiu	s5,s5,0
    1de0:	27b70054 	addiu	s7,sp,84
    }
  BF_set_key (8, ukey);
  i = 0;
  while (k < KEYSIZE)
    {
      while (k < KEYSIZE && i < N)
    1de4:	24160028 	addiu	s6,zero,40
  int i, j, k, l;
  int encordec;
  int check;

  num = 0;
  k = 0;
    1de8:	0800077e 	j	1df8 <blowfish_main+0x7c>
    1dec:	00008821 	addu	s1,zero,zero
    }
  BF_set_key (8, ukey);
  i = 0;
  while (k < KEYSIZE)
    {
      while (k < KEYSIZE && i < N)
    1df0:	1236000a 	beq	s1,s6,1e1c <blowfish_main+0xa0>
    1df4:	27a20018 	addiu	v0,sp,24
};

#define N 40

int
blowfish_main ()
    1df8:	02b21021 	addu	v0,s5,s2
  BF_set_key (8, ukey);
  i = 0;
  while (k < KEYSIZE)
    {
      while (k < KEYSIZE && i < N)
	indata[i++] = in_key[k++];
    1dfc:	90430000 	lbu	v1,0(v0)
    1e00:	26520001 	addiu	s2,s2,1
};

#define N 40

int
blowfish_main ()
    1e04:	02911021 	addu	v0,s4,s1
    }
  BF_set_key (8, ukey);
  i = 0;
  while (k < KEYSIZE)
    {
      while (k < KEYSIZE && i < N)
    1e08:	2a531450 	slti	s3,s2,5200
	indata[i++] = in_key[k++];
    1e0c:	a0430000 	sb	v1,0(v0)
    }
  BF_set_key (8, ukey);
  i = 0;
  while (k < KEYSIZE)
    {
      while (k < KEYSIZE && i < N)
    1e10:	1660fff7 	bnez	s3,1df0 <blowfish_main+0x74>
    1e14:	26310001 	addiu	s1,s1,1
	indata[i++] = in_key[k++];

      BF_cfb64_encrypt (indata, outdata, i, ivec, &num, encordec);
    1e18:	27a20018 	addiu	v0,sp,24
    1e1c:	02802021 	addu	a0,s4,zero
    1e20:	02203021 	addu	a2,s1,zero
    1e24:	02e02821 	addu	a1,s7,zero
    1e28:	27a70024 	addiu	a3,sp,36
    1e2c:	0c0001bd 	jal	6f4 <BF_cfb64_encrypt.clone.1>
    1e30:	afa20010 	sw	v0,16(sp)
};

#define N 40

int
blowfish_main ()
    1e34:	3c040000 	lui	a0,0x0
    1e38:	24840000 	addiu	a0,a0,0
  while (k < KEYSIZE)
    {
      while (k < KEYSIZE && i < N)
	indata[i++] = in_key[k++];

      BF_cfb64_encrypt (indata, outdata, i, ivec, &num, encordec);
    1e3c:	02e01021 	addu	v0,s7,zero
};

#define N 40

int
blowfish_main ()
    1e40:	009e1821 	addu	v1,a0,s8
    1e44:	02f13021 	addu	a2,s7,s1
	indata[i++] = in_key[k++];

      BF_cfb64_encrypt (indata, outdata, i, ivec, &num, encordec);

      for (j = 0; j < i; j++)
	check += (outdata[j] != out_key[l++]);
    1e48:	90450000 	lbu	a1,0(v0)
    1e4c:	90640000 	lbu	a0,0(v1)
    1e50:	24420001 	addiu	v0,v0,1
    1e54:	00a42026 	xor	a0,a1,a0
    1e58:	0004202b 	sltu	a0,zero,a0
    1e5c:	02048021 	addu	s0,s0,a0
      while (k < KEYSIZE && i < N)
	indata[i++] = in_key[k++];

      BF_cfb64_encrypt (indata, outdata, i, ivec, &num, encordec);

      for (j = 0; j < i; j++)
    1e60:	1446fff9 	bne	v0,a2,1e48 <blowfish_main+0xcc>
    1e64:	24630001 	addiu	v1,v1,1
      ukey[i] = 0;
      ivec[i] = 0;
    }
  BF_set_key (8, ukey);
  i = 0;
  while (k < KEYSIZE)
    1e68:	1660ffdf 	bnez	s3,1de8 <blowfish_main+0x6c>
    1e6c:	023ef021 	addu	s8,s1,s8
	check += (outdata[j] != out_key[l++]);

      i = 0;
    }
  return check;
}
    1e70:	8fbf00a4 	lw	ra,164(sp)
    1e74:	02001021 	addu	v0,s0,zero
    1e78:	8fbe00a0 	lw	s8,160(sp)
    1e7c:	8fb7009c 	lw	s7,156(sp)
    1e80:	8fb60098 	lw	s6,152(sp)
    1e84:	8fb50094 	lw	s5,148(sp)
    1e88:	8fb40090 	lw	s4,144(sp)
    1e8c:	8fb3008c 	lw	s3,140(sp)
    1e90:	8fb20088 	lw	s2,136(sp)
    1e94:	8fb10084 	lw	s1,132(sp)
    1e98:	8fb00080 	lw	s0,128(sp)
    1e9c:	03e00008 	jr	ra
    1ea0:	27bd00a8 	addiu	sp,sp,168

00001ea4 <main>:

int
main ()
{
    1ea4:	27bdff58 	addiu	sp,sp,-168
  int num;
  int i, j, k, l;
  int encordec;
  int check;

  num = 0;
    1ea8:	27a2001c 	addiu	v0,sp,28
  return check;
}

int
main ()
{
    1eac:	afbe00a0 	sw	s8,160(sp)
    1eb0:	afb7009c 	sw	s7,156(sp)
    1eb4:	afb60098 	sw	s6,152(sp)
    1eb8:	afb50094 	sw	s5,148(sp)
    1ebc:	afb40090 	sw	s4,144(sp)
    1ec0:	afb20088 	sw	s2,136(sp)
    1ec4:	afb00080 	sw	s0,128(sp)
    1ec8:	afbf00a4 	sw	ra,164(sp)
    1ecc:	afb3008c 	sw	s3,140(sp)
    1ed0:	afb10084 	sw	s1,132(sp)
  int num;
  int i, j, k, l;
  int encordec;
  int check;

  num = 0;
    1ed4:	afa00018 	sw	zero,24(sp)
  l = 0;
  encordec = 1;
  check = 0;
  for (i = 0; i < 8; i++)
    {
      ukey[i] = 0;
    1ed8:	afa0001c 	sw	zero,28(sp)
      ivec[i] = 0;
    1edc:	afa00024 	sw	zero,36(sp)
    }
  BF_set_key (8, ukey);
    1ee0:	00402021 	addu	a0,v0,zero
  l = 0;
  encordec = 1;
  check = 0;
  for (i = 0; i < 8; i++)
    {
      ukey[i] = 0;
    1ee4:	ac400004 	sw	zero,4(v0)
    1ee8:	3c150000 	lui	s5,0x0
      ivec[i] = 0;
    1eec:	afa00028 	sw	zero,40(sp)
    }
  BF_set_key (8, ukey);
    1ef0:	0c000218 	jal	860 <BF_set_key.clone.2>
    1ef4:	0000f021 	addu	s8,zero,zero

  num = 0;
  k = 0;
  l = 0;
  encordec = 1;
  check = 0;
    1ef8:	00008021 	addu	s0,zero,zero
  int i, j, k, l;
  int encordec;
  int check;

  num = 0;
  k = 0;
    1efc:	00009021 	addu	s2,zero,zero
    1f00:	27b4002c 	addiu	s4,sp,44
    1f04:	26b50000 	addiu	s5,s5,0
    1f08:	27b70054 	addiu	s7,sp,84
    }
  BF_set_key (8, ukey);
  i = 0;
  while (k < KEYSIZE)
    {
      while (k < KEYSIZE && i < N)
    1f0c:	24160028 	addiu	s6,zero,40
  int i, j, k, l;
  int encordec;
  int check;

  num = 0;
  k = 0;
    1f10:	080007c8 	j	1f20 <main+0x7c>
    1f14:	00008821 	addu	s1,zero,zero
    }
  BF_set_key (8, ukey);
  i = 0;
  while (k < KEYSIZE)
    {
      while (k < KEYSIZE && i < N)
    1f18:	1236000a 	beq	s1,s6,1f44 <main+0xa0>
    1f1c:	27a20018 	addiu	v0,sp,24
    }
  return check;
}

int
main ()
    1f20:	02b21021 	addu	v0,s5,s2
  BF_set_key (8, ukey);
  i = 0;
  while (k < KEYSIZE)
    {
      while (k < KEYSIZE && i < N)
	indata[i++] = in_key[k++];
    1f24:	90430000 	lbu	v1,0(v0)
    1f28:	26520001 	addiu	s2,s2,1
    }
  return check;
}

int
main ()
    1f2c:	02911021 	addu	v0,s4,s1
    }
  BF_set_key (8, ukey);
  i = 0;
  while (k < KEYSIZE)
    {
      while (k < KEYSIZE && i < N)
    1f30:	2a531450 	slti	s3,s2,5200
	indata[i++] = in_key[k++];
    1f34:	a0430000 	sb	v1,0(v0)
    }
  BF_set_key (8, ukey);
  i = 0;
  while (k < KEYSIZE)
    {
      while (k < KEYSIZE && i < N)
    1f38:	1660fff7 	bnez	s3,1f18 <main+0x74>
    1f3c:	26310001 	addiu	s1,s1,1
	indata[i++] = in_key[k++];

      BF_cfb64_encrypt (indata, outdata, i, ivec, &num, encordec);
    1f40:	27a20018 	addiu	v0,sp,24
    1f44:	02802021 	addu	a0,s4,zero
    1f48:	02203021 	addu	a2,s1,zero
    1f4c:	02e02821 	addu	a1,s7,zero
    1f50:	27a70024 	addiu	a3,sp,36
    1f54:	0c0001bd 	jal	6f4 <BF_cfb64_encrypt.clone.1>
    1f58:	afa20010 	sw	v0,16(sp)
    }
  return check;
}

int
main ()
    1f5c:	3c040000 	lui	a0,0x0
    1f60:	24840000 	addiu	a0,a0,0
  while (k < KEYSIZE)
    {
      while (k < KEYSIZE && i < N)
	indata[i++] = in_key[k++];

      BF_cfb64_encrypt (indata, outdata, i, ivec, &num, encordec);
    1f64:	02e01021 	addu	v0,s7,zero
    }
  return check;
}

int
main ()
    1f68:	009e1821 	addu	v1,a0,s8
    1f6c:	02f13021 	addu	a2,s7,s1
	indata[i++] = in_key[k++];

      BF_cfb64_encrypt (indata, outdata, i, ivec, &num, encordec);

      for (j = 0; j < i; j++)
	check += (outdata[j] != out_key[l++]);
    1f70:	90450000 	lbu	a1,0(v0)
    1f74:	90640000 	lbu	a0,0(v1)
    1f78:	24420001 	addiu	v0,v0,1
    1f7c:	00a42026 	xor	a0,a1,a0
    1f80:	0004202b 	sltu	a0,zero,a0
    1f84:	02048021 	addu	s0,s0,a0
      while (k < KEYSIZE && i < N)
	indata[i++] = in_key[k++];

      BF_cfb64_encrypt (indata, outdata, i, ivec, &num, encordec);

      for (j = 0; j < i; j++)
    1f88:	1446fff9 	bne	v0,a2,1f70 <main+0xcc>
    1f8c:	24630001 	addiu	v1,v1,1
      ukey[i] = 0;
      ivec[i] = 0;
    }
  BF_set_key (8, ukey);
  i = 0;
  while (k < KEYSIZE)
    1f90:	1660ffdf 	bnez	s3,1f10 <main+0x6c>
    1f94:	023ef021 	addu	s8,s1,s8
  int main_result;

      main_result = 0;
      main_result = blowfish_main ();

      printf ("%d\n", main_result);
    1f98:	3c040000 	lui	a0,0x0
    1f9c:	02002821 	addu	a1,s0,zero
    1fa0:	0c000000 	jal	0 <BF_encrypt.clone.0>
    1fa4:	24840000 	addiu	a0,a0,0

      return main_result;
    }
    1fa8:	8fbf00a4 	lw	ra,164(sp)
    1fac:	02001021 	addu	v0,s0,zero
    1fb0:	8fbe00a0 	lw	s8,160(sp)
    1fb4:	8fb7009c 	lw	s7,156(sp)
    1fb8:	8fb60098 	lw	s6,152(sp)
    1fbc:	8fb50094 	lw	s5,148(sp)
    1fc0:	8fb40090 	lw	s4,144(sp)
    1fc4:	8fb3008c 	lw	s3,140(sp)
    1fc8:	8fb20088 	lw	s2,136(sp)
    1fcc:	8fb10084 	lw	s1,132(sp)
    1fd0:	8fb00080 	lw	s0,128(sp)
    1fd4:	03e00008 	jr	ra
    1fd8:	27bd00a8 	addiu	sp,sp,168

Disassembly of section .rodata:

00000000 <bf_init_P>:
       0:	243f6a88 	addiu	ra,at,27272
       4:	85a308d3 	lh	v1,2259(t5)
       8:	13198a2e 	beq	t8,t9,fffe28c4 <out_key+0xfffe042c>
       c:	03707344 	0x3707344
      10:	a4093822 	sh	t1,14370(zero)
      14:	299f31d0 	slti	ra,t4,12752
      18:	082efa98 	j	bbea60 <out_key+0xbbc5c8>
      1c:	ec4e6c89 	swc3	$14,27785(v0)
      20:	452821e6 	0x452821e6
      24:	38d01377 	xori	s0,a2,0x1377
      28:	be5466cf 	0xbe5466cf
      2c:	34e90c6c 	ori	t1,a3,0xc6c
      30:	c0ac29b7 	lwc0	$12,10679(a1)
      34:	c97c50dd 	lwc2	$28,20701(t3)
      38:	3f84d5b5 	0x3f84d5b5
      3c:	b5470917 	0xb5470917
      40:	9216d5d9 	lbu	s6,-10791(s0)
      44:	8979fb1b 	lwl	t9,-1253(t3)

00000048 <bf_init_S>:
      48:	d1310ba6 	0xd1310ba6
      4c:	98dfb5ac 	lwr	ra,-19028(a2)
      50:	2ffd72db 	sltiu	sp,ra,29403
      54:	d01adfb7 	0xd01adfb7
      58:	b8e1afed 	swr	at,-20499(a3)
      5c:	6a267e96 	0x6a267e96
      60:	ba7c9045 	swr	gp,-28603(s3)
      64:	f12c7f99 	0xf12c7f99
      68:	24a19947 	addiu	at,a1,-26297
      6c:	b3916cf7 	0xb3916cf7
      70:	0801f2e2 	j	7cb88 <out_key+0x7a6f0>
      74:	858efc16 	lh	t6,-1002(t4)
      78:	636920d8 	0x636920d8
      7c:	71574e69 	0x71574e69
      80:	a458fea3 	sh	t8,-349(v0)
      84:	f4933d7e 	0xf4933d7e
      88:	0d95748f 	jal	655d23c <out_key+0x655ada4>
      8c:	728eb658 	0x728eb658
      90:	718bcd58 	0x718bcd58
      94:	82154aee 	lb	s5,19182(s0)
      98:	7b54a41d 	0x7b54a41d
      9c:	c25a59b5 	lwc0	$26,22965(s2)
      a0:	9c30d539 	0x9c30d539
      a4:	2af26013 	slti	s2,s7,24595
      a8:	c5d1b023 	lwc1	$f17,-20445(t6)
      ac:	286085f0 	slti	zero,v1,-31248
      b0:	ca417918 	lwc2	$1,31000(s2)
      b4:	b8db38ef 	swr	k1,14575(a2)
      b8:	8e79dcb0 	lw	t9,-9040(s3)
      bc:	603a180e 	0x603a180e
      c0:	6c9e0e8b 	0x6c9e0e8b
      c4:	b01e8a3e 	0xb01e8a3e
      c8:	d71577c1 	0xd71577c1
      cc:	bd314b27 	0xbd314b27
      d0:	78af2fda 	0x78af2fda
      d4:	55605c60 	0x55605c60
      d8:	e65525f3 	swc1	$f21,9715(s2)
      dc:	aa55ab94 	swl	s5,-21612(s2)
      e0:	57489862 	0x57489862
      e4:	63e81440 	0x63e81440
      e8:	55ca396a 	0x55ca396a
      ec:	2aab10b6 	slti	t3,s5,4278
      f0:	b4cc5c34 	0xb4cc5c34
      f4:	1141e8ce 	beq	t2,at,ffffa430 <out_key+0xffff7f98>
      f8:	a15486af 	sb	s4,-31057(t2)
      fc:	7c72e993 	0x7c72e993
     100:	b3ee1411 	0xb3ee1411
     104:	636fbc2a 	0x636fbc2a
     108:	2ba9c55d 	slti	t1,sp,-15011
     10c:	741831f6 	jalx	60c7d8 <out_key+0x60a340>
     110:	ce5c3e16 	lwc3	$28,15894(s2)
     114:	9b87931e 	lwr	a3,-27874(gp)
     118:	afd6ba33 	sw	s6,-17869(s8)
     11c:	6c24cf5c 	0x6c24cf5c
     120:	7a325381 	0x7a325381
     124:	28958677 	slti	s5,a0,-31113
     128:	3b8f4898 	xori	t7,gp,0x4898
     12c:	6b4bb9af 	0x6b4bb9af
     130:	c4bfe81b 	lwc1	$f31,-6117(a1)
     134:	66282193 	0x66282193
     138:	61d809cc 	0x61d809cc
     13c:	fb21a991 	0xfb21a991
     140:	487cac60 	0x487cac60
     144:	5dec8032 	0x5dec8032
     148:	ef845d5d 	swc3	$4,23901(gp)
     14c:	e98575b1 	swc2	$5,30129(t4)
     150:	dc262302 	0xdc262302
     154:	eb651b88 	swc2	$5,7048(k1)
     158:	23893e81 	addi	t1,gp,16001
     15c:	d396acc5 	0xd396acc5
     160:	0f6d6ff3 	jal	db5bfcc <out_key+0xdb59b34>
     164:	83f44239 	lb	s4,16953(ra)
     168:	2e0b4482 	sltiu	t3,s0,17538
     16c:	a4842004 	sh	a0,8196(a0)
     170:	69c8f04a 	0x69c8f04a
     174:	9e1f9b5e 	0x9e1f9b5e
     178:	21c66842 	addi	a2,t6,26690
     17c:	f6e96c9a 	0xf6e96c9a
     180:	670c9c61 	0x670c9c61
     184:	abd388f0 	swl	s3,-30480(s8)
     188:	6a51a0d2 	0x6a51a0d2
     18c:	d8542f68 	0xd8542f68
     190:	960fa728 	lhu	t7,-22744(s0)
     194:	ab5133a3 	swl	s1,13219(k0)
     198:	6eef0b6c 	0x6eef0b6c
     19c:	137a3be4 	beq	k1,k0,f130 <out_key+0xcc98>
     1a0:	ba3bf050 	swr	k1,-4016(s1)
     1a4:	7efb2a98 	0x7efb2a98
     1a8:	a1f1651d 	sb	s1,25885(t7)
     1ac:	39af0176 	xori	t7,t5,0x176
     1b0:	66ca593e 	0x66ca593e
     1b4:	82430e88 	lb	v1,3720(s2)
     1b8:	8cee8619 	lw	t6,-31207(a3)
     1bc:	456f9fb4 	0x456f9fb4
     1c0:	7d84a5c3 	0x7d84a5c3
     1c4:	3b8b5ebe 	xori	t3,gp,0x5ebe
     1c8:	e06f75d8 	swc0	$15,30168(v1)
     1cc:	85c12073 	lh	at,8307(t6)
     1d0:	401a449f 	0x401a449f
     1d4:	56c16aa6 	0x56c16aa6
     1d8:	4ed3aa62 	c3	0xd3aa62
     1dc:	363f7706 	ori	ra,s1,0x7706
     1e0:	1bfedf72 	0x1bfedf72
     1e4:	429b023d 	c0	0x9b023d
     1e8:	37d0d724 	ori	s0,s8,0xd724
     1ec:	d00a1248 	0xd00a1248
     1f0:	db0fead3 	0xdb0fead3
     1f4:	49f1c09b 	0x49f1c09b
     1f8:	075372c9 	0x75372c9
     1fc:	80991b7b 	lb	t9,7035(a0)
     200:	25d479d8 	addiu	s4,t6,31192
     204:	f6e8def7 	0xf6e8def7
     208:	e3fe501a 	swc0	$30,20506(ra)
     20c:	b6794c3b 	0xb6794c3b
     210:	976ce0bd 	lhu	t4,-8003(k1)
     214:	04c006ba 	bltz	a2,1d00 <in_key+0xcb8>
     218:	c1a94fb6 	lwc0	$9,20406(t5)
     21c:	409f60c4 	0x409f60c4
     220:	5e5c9ec2 	0x5e5c9ec2
     224:	196a2463 	0x196a2463
     228:	68fb6faf 	0x68fb6faf
     22c:	3e6c53b5 	0x3e6c53b5
     230:	1339b2eb 	beq	t9,t9,fffecde0 <out_key+0xfffea948>
     234:	3b52ec6f 	xori	s2,k0,0xec6f
     238:	6dfc511f 	0x6dfc511f
     23c:	9b30952c 	lwr	s0,-27348(t9)
     240:	cc814544 	lwc3	$1,17732(a0)
     244:	af5ebd09 	sw	s8,-17143(k0)
     248:	bee3d004 	0xbee3d004
     24c:	de334afd 	0xde334afd
     250:	660f2807 	0x660f2807
     254:	192e4bb3 	0x192e4bb3
     258:	c0cba857 	lwc0	$11,-22441(a2)
     25c:	45c8740f 	0x45c8740f
     260:	d20b5f39 	0xd20b5f39
     264:	b9d3fbdb 	swr	s3,-1061(t6)
     268:	5579c0bd 	0x5579c0bd
     26c:	1a60320a 	blez	s3,ca98 <out_key+0xa600>
     270:	d6a100c6 	0xd6a100c6
     274:	402c7279 	0x402c7279
     278:	679f25fe 	0x679f25fe
     27c:	fb1fa3cc 	0xfb1fa3cc
     280:	8ea5e9f8 	lw	a1,-5640(s5)
     284:	db3222f8 	0xdb3222f8
     288:	3c7516df 	0x3c7516df
     28c:	fd616b15 	0xfd616b15
     290:	2f501ec8 	sltiu	s0,k0,7880
     294:	ad0552ab 	sw	a1,21163(t0)
     298:	323db5fa 	andi	sp,s1,0xb5fa
     29c:	fd238760 	0xfd238760
     2a0:	53317b48 	0x53317b48
     2a4:	3e00df82 	0x3e00df82
     2a8:	9e5c57bb 	0x9e5c57bb
     2ac:	ca6f8ca0 	lwc2	$15,-29536(s3)
     2b0:	1a87562e 	0x1a87562e
     2b4:	df1769db 	0xdf1769db
     2b8:	d542a8f6 	0xd542a8f6
     2bc:	287effc3 	slti	s8,v1,-61
     2c0:	ac6732c6 	sw	a3,12998(v1)
     2c4:	8c4f5573 	lw	t7,21875(v0)
     2c8:	695b27b0 	0x695b27b0
     2cc:	bbca58c8 	swr	t2,22728(s8)
     2d0:	e1ffa35d 	swc0	$31,-23715(t7)
     2d4:	b8f011a0 	swr	s0,4512(a3)
     2d8:	10fa3d98 	beq	a3,k0,f93c <out_key+0xd4a4>
     2dc:	fd2183b8 	0xfd2183b8
     2e0:	4afcb56c 	c2	0xfcb56c
     2e4:	2dd1d35b 	sltiu	s1,t6,-11429
     2e8:	9a53e479 	lwr	s3,-7047(s2)
     2ec:	b6f84565 	0xb6f84565
     2f0:	d28e49bc 	0xd28e49bc
     2f4:	4bfb9790 	c2	0x1fb9790
     2f8:	e1ddf2da 	swc0	$29,-3366(t6)
     2fc:	a4cb7e33 	sh	t3,32307(a2)
     300:	62fb1341 	0x62fb1341
     304:	cee4c6e8 	lwc3	$4,-14616(s7)
     308:	ef20cada 	swc3	$0,-13606(t9)
     30c:	36774c01 	ori	s7,s3,0x4c01
     310:	d07e9efe 	0xd07e9efe
     314:	2bf11fb4 	slti	s1,ra,8116
     318:	95dbda4d 	lhu	k1,-9651(t6)
     31c:	ae909198 	sw	s0,-28264(s4)
     320:	eaad8e71 	swc2	$13,-29071(s5)
     324:	6b93d5a0 	0x6b93d5a0
     328:	d08ed1d0 	0xd08ed1d0
     32c:	afc725e0 	sw	a3,9696(s8)
     330:	8e3c5b2f 	lw	gp,23343(s1)
     334:	8e7594b7 	lw	s5,-27465(s3)
     338:	8ff6e2fb 	lw	s6,-7429(ra)
     33c:	f2122b64 	0xf2122b64
     340:	8888b812 	lwl	t0,-18414(a0)
     344:	900df01c 	lbu	t5,-4068(zero)
     348:	4fad5ea0 	c3	0x1ad5ea0
     34c:	688fc31c 	0x688fc31c
     350:	d1cff191 	0xd1cff191
     354:	b3a8c1ad 	0xb3a8c1ad
     358:	2f2f2218 	sltiu	t7,t9,8728
     35c:	be0e1777 	0xbe0e1777
     360:	ea752dfe 	swc2	$21,11774(s3)
     364:	8b021fa1 	lwl	v0,8097(t8)
     368:	e5a0cc0f 	swc1	$f0,-13297(t5)
     36c:	b56f74e8 	0xb56f74e8
     370:	18acf3d6 	0x18acf3d6
     374:	ce89e299 	lwc3	$9,-7527(s4)
     378:	b4a84fe0 	0xb4a84fe0
     37c:	fd13e0b7 	0xfd13e0b7
     380:	7cc43b81 	0x7cc43b81
     384:	d2ada8d9 	0xd2ada8d9
     388:	165fa266 	bne	s2,ra,fffe8d24 <out_key+0xfffe688c>
     38c:	80957705 	lb	s5,30469(a0)
     390:	93cc7314 	lbu	t4,29460(s8)
     394:	211a1477 	addi	k0,t0,5239
     398:	e6ad2065 	swc1	$f13,8293(s5)
     39c:	77b5fa86 	jalx	ed7ea18 <out_key+0xed7c580>
     3a0:	c75442f5 	lwc1	$f20,17141(k0)
     3a4:	fb9d35cf 	0xfb9d35cf
     3a8:	ebcdaf0c 	swc2	$13,-20724(s8)
     3ac:	7b3e89a0 	0x7b3e89a0
     3b0:	d6411bd3 	0xd6411bd3
     3b4:	ae1e7e49 	sw	s8,32329(s0)
     3b8:	00250e2d 	0x250e2d
     3bc:	2071b35e 	addi	s1,v1,-19618
     3c0:	226800bb 	addi	t0,s3,187
     3c4:	57b8e0af 	0x57b8e0af
     3c8:	2464369b 	addiu	a0,v1,13979
     3cc:	f009b91e 	0xf009b91e
     3d0:	5563911d 	0x5563911d
     3d4:	59dfa6aa 	0x59dfa6aa
     3d8:	78c14389 	0x78c14389
     3dc:	d95a537f 	0xd95a537f
     3e0:	207d5ba2 	addi	sp,v1,23458
     3e4:	02e5b9c5 	0x2e5b9c5
     3e8:	83260376 	lb	a2,886(t9)
     3ec:	6295cfa9 	0x6295cfa9
     3f0:	11c81968 	beq	t6,t0,6994 <out_key+0x44fc>
     3f4:	4e734a41 	c3	0x734a41
     3f8:	b3472dca 	0xb3472dca
     3fc:	7b14a94a 	0x7b14a94a
     400:	1b510052 	0x1b510052
     404:	9a532915 	lwr	s3,10517(s2)
     408:	d60f573f 	0xd60f573f
     40c:	bc9bc6e4 	0xbc9bc6e4
     410:	2b60a476 	slti	zero,k1,-23434
     414:	81e67400 	lb	a2,29696(t7)
     418:	08ba6fb5 	j	2e9bed4 <out_key+0x2e99a3c>
     41c:	571be91f 	0x571be91f
     420:	f296ec6b 	0xf296ec6b
     424:	2a0dd915 	slti	t5,s0,-9963
     428:	b6636521 	0xb6636521
     42c:	e7b9f9b6 	swc1	$f25,-1610(sp)
     430:	ff34052e 	0xff34052e
     434:	c5855664 	lwc1	$f5,22116(t4)
     438:	53b02d5d 	0x53b02d5d
     43c:	a99f8fa1 	swl	ra,-28767(t4)
     440:	08ba4799 	j	2e91e64 <out_key+0x2e8f9cc>
     444:	6e85076a 	0x6e85076a
     448:	4b7a70e9 	c2	0x17a70e9
     44c:	b5b32944 	0xb5b32944
     450:	db75092e 	0xdb75092e
     454:	c4192623 	lwc1	$f25,9763(zero)
     458:	ad6ea6b0 	sw	t6,-22864(t3)
     45c:	49a7df7d 	0x49a7df7d
     460:	9cee60b8 	0x9cee60b8
     464:	8fedb266 	lw	t5,-19866(ra)
     468:	ecaa8c71 	swc3	$10,-29583(a1)
     46c:	699a17ff 	0x699a17ff
     470:	5664526c 	0x5664526c
     474:	c2b19ee1 	lwc0	$17,-24863(s5)
     478:	193602a5 	0x193602a5
     47c:	75094c29 	jalx	42530a4 <out_key+0x4250c0c>
     480:	a0591340 	sb	t9,4928(v0)
     484:	e4183a3e 	swc1	$f24,14910(zero)
     488:	3f54989a 	0x3f54989a
     48c:	5b429d65 	0x5b429d65
     490:	6b8fe4d6 	0x6b8fe4d6
     494:	99f73fd6 	lwr	s7,16342(t7)
     498:	a1d29c07 	sb	s2,-25593(t6)
     49c:	efe830f5 	swc3	$8,12533(ra)
     4a0:	4d2d38e6 	0x4d2d38e6
     4a4:	f0255dc1 	0xf0255dc1
     4a8:	4cdd2086 	0x4cdd2086
     4ac:	8470eb26 	lh	s0,-5338(v1)
     4b0:	6382e9c6 	0x6382e9c6
     4b4:	021ecc5e 	0x21ecc5e
     4b8:	09686b3f 	j	5a1acfc <out_key+0x5a18864>
     4bc:	3ebaefc9 	0x3ebaefc9
     4c0:	3c971814 	0x3c971814
     4c4:	6b6a70a1 	0x6b6a70a1
     4c8:	687f3584 	0x687f3584
     4cc:	52a0e286 	0x52a0e286
     4d0:	b79c5305 	0xb79c5305
     4d4:	aa500737 	swl	s0,1847(s2)
     4d8:	3e07841c 	0x3e07841c
     4dc:	7fdeae5c 	0x7fdeae5c
     4e0:	8e7d44ec 	lw	sp,17644(s3)
     4e4:	5716f2b8 	0x5716f2b8
     4e8:	b03ada37 	0xb03ada37
     4ec:	f0500c0d 	0xf0500c0d
     4f0:	f01c1f04 	0xf01c1f04
     4f4:	0200b3ff 	0x200b3ff
     4f8:	ae0cf51a 	sw	t4,-2790(s0)
     4fc:	3cb574b2 	0x3cb574b2
     500:	25837a58 	addiu	v1,t4,31320
     504:	dc0921bd 	0xdc0921bd
     508:	d19113f9 	0xd19113f9
     50c:	7ca92ff6 	0x7ca92ff6
     510:	94324773 	lhu	s2,18291(at)
     514:	22f54701 	addi	s5,s7,18177
     518:	3ae5e581 	xori	a1,s7,0xe581
     51c:	37c2dadc 	ori	v0,s8,0xdadc
     520:	c8b57634 	lwc2	$21,30260(a1)
     524:	9af3dda7 	lwr	s3,-8793(s7)
     528:	a9446146 	swl	a0,24902(t2)
     52c:	0fd0030e 	jal	f400c38 <out_key+0xf3fe7a0>
     530:	ecc8c73e 	swc3	$8,-14530(a2)
     534:	a4751e41 	sh	s5,7745(v1)
     538:	e238cd99 	swc0	$24,-12903(s1)
     53c:	3bea0e2f 	xori	t2,ra,0xe2f
     540:	3280bba1 	andi	zero,s4,0xbba1
     544:	183eb331 	0x183eb331
     548:	4e548b38 	c3	0x548b38
     54c:	4f6db908 	c3	0x16db908
     550:	6f420d03 	0x6f420d03
     554:	f60a04bf 	0xf60a04bf
     558:	2cb81290 	sltiu	t8,a1,4752
     55c:	24977c79 	addiu	s7,a0,31865
     560:	5679b072 	0x5679b072
     564:	bcaf89af 	0xbcaf89af
     568:	de9a771f 	0xde9a771f
     56c:	d9930810 	0xd9930810
     570:	b38bae12 	0xb38bae12
     574:	dccf3f2e 	0xdccf3f2e
     578:	5512721f 	0x5512721f
     57c:	2e6b7124 	sltiu	t3,s3,28964
     580:	501adde6 	0x501adde6
     584:	9f84cd87 	0x9f84cd87
     588:	7a584718 	0x7a584718
     58c:	7408da17 	jalx	23685c <out_key+0x2343c4>
     590:	bc9f9abc 	0xbc9f9abc
     594:	e94b7d8c 	swc2	$11,32140(t2)
     598:	ec7aec3a 	swc3	$26,-5062(v1)
     59c:	db851dfa 	0xdb851dfa
     5a0:	63094366 	0x63094366
     5a4:	c464c3d2 	lwc1	$f4,-15406(v1)
     5a8:	ef1c1847 	swc3	$28,6215(t8)
     5ac:	3215d908 	andi	s5,s0,0xd908
     5b0:	dd433b37 	0xdd433b37
     5b4:	24c2ba16 	addiu	v0,a2,-17898
     5b8:	12a14d43 	beq	s5,at,13ac8 <out_key+0x11630>
     5bc:	2a65c451 	slti	a1,s3,-15279
     5c0:	50940002 	0x50940002
     5c4:	133ae4dd 	beq	t9,k0,ffff993c <out_key+0xffff74a4>
     5c8:	71dff89e 	0x71dff89e
     5cc:	10314e55 	beq	at,s1,13f24 <out_key+0x11a8c>
     5d0:	81ac77d6 	lb	t4,30678(t5)
     5d4:	5f11199b 	0x5f11199b
     5d8:	043556f1 	0x43556f1
     5dc:	d7a3c76b 	0xd7a3c76b
     5e0:	3c11183b 	lui	s1,0x183b
     5e4:	5924a509 	0x5924a509
     5e8:	f28fe6ed 	0xf28fe6ed
     5ec:	97f1fbfa 	lhu	s1,-1030(ra)
     5f0:	9ebabf2c 	0x9ebabf2c
     5f4:	1e153c6e 	0x1e153c6e
     5f8:	86e34570 	lh	v1,17776(s7)
     5fc:	eae96fb1 	swc2	$9,28593(s7)
     600:	860e5e0a 	lh	t6,24074(s0)
     604:	5a3e2ab3 	0x5a3e2ab3
     608:	771fe71c 	jalx	c7f9c70 <out_key+0xc7f77d8>
     60c:	4e3d06fa 	c3	0x3d06fa
     610:	2965dcb9 	slti	a1,t3,-9031
     614:	99e71d0f 	lwr	a3,7439(t7)
     618:	803e89d6 	lb	s8,-30250(at)
     61c:	5266c825 	0x5266c825
     620:	2e4cc978 	sltiu	t4,s2,-13960
     624:	9c10b36a 	0x9c10b36a
     628:	c6150eba 	lwc1	$f21,3770(s0)
     62c:	94e2ea78 	lhu	v0,-5512(a3)
     630:	a5fc3c53 	sh	gp,15443(t7)
     634:	1e0a2df4 	0x1e0a2df4
     638:	f2f74ea7 	0xf2f74ea7
     63c:	361d2b3d 	ori	sp,s0,0x2b3d
     640:	1939260f 	0x1939260f
     644:	19c27960 	0x19c27960
     648:	5223a708 	0x5223a708
     64c:	f71312b6 	0xf71312b6
     650:	ebadfe6e 	swc2	$13,-402(sp)
     654:	eac31f66 	swc2	$3,8038(s6)
     658:	e3bc4595 	swc0	$28,17813(sp)
     65c:	a67bc883 	sh	k1,-14205(s3)
     660:	b17f37d1 	0xb17f37d1
     664:	018cff28 	0x18cff28
     668:	c332ddef 	lwc0	$18,-8721(t9)
     66c:	be6c5aa5 	0xbe6c5aa5
     670:	65582185 	0x65582185
     674:	68ab9802 	0x68ab9802
     678:	eecea50f 	swc3	$14,-23281(s6)
     67c:	db2f953b 	0xdb2f953b
     680:	2aef7dad 	slti	t7,s7,32173
     684:	5b6e2f84 	0x5b6e2f84
     688:	1521b628 	bne	t1,at,fffedf2c <out_key+0xfffeba94>
     68c:	29076170 	slti	a3,t0,24944
     690:	ecdd4775 	swc3	$29,18293(a2)
     694:	619f1510 	0x619f1510
     698:	13cca830 	beq	s8,t4,fffea75c <out_key+0xfffe82c4>
     69c:	eb61bd96 	swc2	$1,-17002(k1)
     6a0:	0334fe1e 	0x334fe1e
     6a4:	aa0363cf 	swl	v1,25551(s0)
     6a8:	b5735c90 	0xb5735c90
     6ac:	4c70a239 	0x4c70a239
     6b0:	d59e9e0b 	0xd59e9e0b
     6b4:	cbaade14 	lwc2	$10,-8684(sp)
     6b8:	eecc86bc 	swc3	$12,-31044(s6)
     6bc:	60622ca7 	0x60622ca7
     6c0:	9cab5cab 	0x9cab5cab
     6c4:	b2f3846e 	0xb2f3846e
     6c8:	648b1eaf 	0x648b1eaf
     6cc:	19bdf0ca 	0x19bdf0ca
     6d0:	a02369b9 	sb	v1,27065(at)
     6d4:	655abb50 	0x655abb50
     6d8:	40685a32 	0x40685a32
     6dc:	3c2ab4b3 	0x3c2ab4b3
     6e0:	319ee9d5 	andi	s8,t4,0xe9d5
     6e4:	c021b8f7 	lwc0	$1,-18185(at)
     6e8:	9b540b19 	lwr	s4,2841(k0)
     6ec:	875fa099 	lh	ra,-24423(k0)
     6f0:	95f7997e 	lhu	s7,-26242(t7)
     6f4:	623d7da8 	0x623d7da8
     6f8:	f837889a 	0xf837889a
     6fc:	97e32d77 	lhu	v1,11639(ra)
     700:	11ed935f 	beq	t7,t5,fffe5480 <out_key+0xfffe2fe8>
     704:	16681281 	bne	s3,t0,510c <out_key+0x2c74>
     708:	0e358829 	jal	8d620a4 <out_key+0x8d5fc0c>
     70c:	c7e61fd6 	lwc1	$f6,8150(ra)
     710:	96dedfa1 	lhu	s8,-8287(s6)
     714:	7858ba99 	0x7858ba99
     718:	57f584a5 	0x57f584a5
     71c:	1b227263 	0x1b227263
     720:	9b83c3ff 	lwr	v1,-15361(gp)
     724:	1ac24696 	0x1ac24696
     728:	cdb30aeb 	lwc3	$19,2795(t5)
     72c:	532e3054 	0x532e3054
     730:	8fd948e4 	lw	t9,18660(s8)
     734:	6dbc3128 	0x6dbc3128
     738:	58ebf2ef 	0x58ebf2ef
     73c:	34c6ffea 	ori	a2,a2,0xffea
     740:	fe28ed61 	0xfe28ed61
     744:	ee7c3c73 	swc3	$28,15475(s3)
     748:	5d4a14d9 	0x5d4a14d9
     74c:	e864b7e3 	swc2	$4,-18461(v1)
     750:	42105d14 	c0	0x105d14
     754:	203e13e0 	addi	s8,at,5088
     758:	45eee2b6 	0x45eee2b6
     75c:	a3aaabea 	sb	t2,-21526(sp)
     760:	db6c4f15 	0xdb6c4f15
     764:	facb4fd0 	0xfacb4fd0
     768:	c742f442 	lwc1	$f2,-3006(k0)
     76c:	ef6abbb5 	swc3	$10,-17483(k1)
     770:	654f3b1d 	0x654f3b1d
     774:	41cd2105 	0x41cd2105
     778:	d81e799e 	0xd81e799e
     77c:	86854dc7 	lh	a1,19911(s4)
     780:	e44b476a 	swc1	$f11,18282(v0)
     784:	3d816250 	0x3d816250
     788:	cf62a1f2 	lwc3	$2,-24078(k1)
     78c:	5b8d2646 	0x5b8d2646
     790:	fc8883a0 	0xfc8883a0
     794:	c1c7b6a3 	lwc0	$7,-18781(t6)
     798:	7f1524c3 	0x7f1524c3
     79c:	69cb7492 	0x69cb7492
     7a0:	47848a0b 	c1	0x1848a0b
     7a4:	5692b285 	0x5692b285
     7a8:	095bbf00 	j	56efc00 <out_key+0x56ed768>
     7ac:	ad19489d 	sw	t9,18589(t0)
     7b0:	1462b174 	bne	v1,v0,fffecd84 <out_key+0xfffea8ec>
     7b4:	23820e00 	addi	v0,gp,3584
     7b8:	58428d2a 	0x58428d2a
     7bc:	0c55f5ea 	jal	157d7a8 <out_key+0x157b310>
     7c0:	1dadf43e 	0x1dadf43e
     7c4:	233f7061 	addi	ra,t9,28769
     7c8:	3372f092 	andi	s2,k1,0xf092
     7cc:	8d937e41 	lw	s3,32321(t4)
     7d0:	d65fecf1 	0xd65fecf1
     7d4:	6c223bdb 	0x6c223bdb
     7d8:	7cde3759 	0x7cde3759
     7dc:	cbee7460 	lwc2	$14,29792(ra)
     7e0:	4085f2a7 	0x4085f2a7
     7e4:	ce77326e 	lwc3	$23,12910(s3)
     7e8:	a6078084 	sh	a3,-32636(s0)
     7ec:	19f8509e 	0x19f8509e
     7f0:	e8efd855 	swc2	$15,-10155(a3)
     7f4:	61d99735 	0x61d99735
     7f8:	a969a7aa 	swl	t1,-22614(t3)
     7fc:	c50c06c2 	lwc1	$f12,1730(t0)
     800:	5a04abfc 	0x5a04abfc
     804:	800bcadc 	lb	t3,-13604(zero)
     808:	9e447a2e 	0x9e447a2e
     80c:	c3453484 	lwc0	$5,13444(k0)
     810:	fdd56705 	0xfdd56705
     814:	0e1e9ec9 	jal	87a7b24 <out_key+0x87a568c>
     818:	db73dbd3 	0xdb73dbd3
     81c:	105588cd 	beq	v0,s5,fffe2b54 <out_key+0xfffe06bc>
     820:	675fda79 	0x675fda79
     824:	e3674340 	swc0	$7,17216(k1)
     828:	c5c43465 	lwc1	$f4,13413(t6)
     82c:	713e38d8 	0x713e38d8
     830:	3d28f89e 	0x3d28f89e
     834:	f16dff20 	0xf16dff20
     838:	153e21e7 	bne	t1,s8,8fd8 <out_key+0x6b40>
     83c:	8fb03d4a 	lw	s0,15690(sp)
     840:	e6e39f2b 	swc1	$f3,-24789(s7)
     844:	db83adf7 	0xdb83adf7
     848:	e93d5a68 	swc2	$29,23144(t1)
     84c:	948140f7 	lhu	at,16631(a0)
     850:	f64c261c 	0xf64c261c
     854:	94692934 	lhu	t1,10548(v1)
     858:	411520f7 	0x411520f7
     85c:	7602d4f7 	jalx	80b53dc <out_key+0x80b2f44>
     860:	bcf46b2e 	0xbcf46b2e
     864:	d4a20068 	0xd4a20068
     868:	d4082471 	0xd4082471
     86c:	3320f46a 	andi	zero,t9,0xf46a
     870:	43b7d4b7 	c0	0x1b7d4b7
     874:	500061af 	0x500061af
     878:	1e39f62e 	0x1e39f62e
     87c:	97244546 	lhu	a0,17734(t9)
     880:	14214f74 	bne	at,at,14654 <out_key+0x121bc>
     884:	bf8b8840 	0xbf8b8840
     888:	4d95fc1d 	0x4d95fc1d
     88c:	96b591af 	lhu	s5,-28241(s5)
     890:	70f4ddd3 	0x70f4ddd3
     894:	66a02f45 	0x66a02f45
     898:	bfbc09ec 	0xbfbc09ec
     89c:	03bd9785 	0x3bd9785
     8a0:	7fac6dd0 	0x7fac6dd0
     8a4:	31cb8504 	andi	t3,t6,0x8504
     8a8:	96eb27b3 	lhu	t3,10163(s7)
     8ac:	55fd3941 	0x55fd3941
     8b0:	da2547e6 	0xda2547e6
     8b4:	abca0a9a 	swl	t2,2714(s8)
     8b8:	28507825 	slti	s0,v0,30757
     8bc:	530429f4 	0x530429f4
     8c0:	0a2c86da 	j	8b21b68 <out_key+0x8b1f6d0>
     8c4:	e9b66dfb 	swc2	$22,28155(t5)
     8c8:	68dc1462 	0x68dc1462
     8cc:	d7486900 	0xd7486900
     8d0:	680ec0a4 	0x680ec0a4
     8d4:	27a18dee 	addiu	at,sp,-29202
     8d8:	4f3ffea2 	c3	0x13ffea2
     8dc:	e887ad8c 	swc2	$7,-21108(a0)
     8e0:	b58ce006 	0xb58ce006
     8e4:	7af4d6b6 	0x7af4d6b6
     8e8:	aace1e7c 	swl	t6,7804(s6)
     8ec:	d3375fec 	0xd3375fec
     8f0:	ce78a399 	lwc3	$24,-23655(s3)
     8f4:	406b2a42 	0x406b2a42
     8f8:	20fe9e35 	addi	s8,a3,-25035
     8fc:	d9f385b9 	0xd9f385b9
     900:	ee39d7ab 	swc3	$25,-10325(s1)
     904:	3b124e8b 	xori	s2,t8,0x4e8b
     908:	1dc9faf7 	0x1dc9faf7
     90c:	4b6d1856 	c2	0x16d1856
     910:	26a36631 	addiu	v1,s5,26161
     914:	eae397b2 	swc2	$3,-26702(s7)
     918:	3a6efa74 	xori	t6,s3,0xfa74
     91c:	dd5b4332 	0xdd5b4332
     920:	6841e7f7 	0x6841e7f7
     924:	ca7820fb 	lwc2	$24,8443(s3)
     928:	fb0af54e 	0xfb0af54e
     92c:	d8feb397 	0xd8feb397
     930:	454056ac 	0x454056ac
     934:	ba489527 	swr	t0,-27353(s2)
     938:	55533a3a 	0x55533a3a
     93c:	20838d87 	addi	v1,a0,-29305
     940:	fe6ba9b7 	0xfe6ba9b7
     944:	d096954b 	0xd096954b
     948:	55a867bc 	0x55a867bc
     94c:	a1159a58 	sb	s5,-26024(t0)
     950:	cca92963 	lwc3	$9,10595(a1)
     954:	99e1db33 	lwr	at,-9421(t7)
     958:	a62a4a56 	sh	t2,19030(s1)
     95c:	3f3125f9 	0x3f3125f9
     960:	5ef47e1c 	0x5ef47e1c
     964:	9029317c 	lbu	t1,12668(at)
     968:	fdf8e802 	0xfdf8e802
     96c:	04272f70 	0x4272f70
     970:	80bb155c 	lb	k1,5468(a1)
     974:	05282ce3 	0x5282ce3
     978:	95c11548 	lhu	at,5448(t6)
     97c:	e4c66d22 	swc1	$f6,27938(a2)
     980:	48c1133f 	0x48c1133f
     984:	c70f86dc 	lwc1	$f15,-31012(t8)
     988:	07f9c9ee 	0x7f9c9ee
     98c:	41041f0f 	0x41041f0f
     990:	404779a4 	0x404779a4
     994:	5d886e17 	0x5d886e17
     998:	325f51eb 	andi	ra,s2,0x51eb
     99c:	d59bc0d1 	0xd59bc0d1
     9a0:	f2bcc18f 	0xf2bcc18f
     9a4:	41113564 	0x41113564
     9a8:	257b7834 	addiu	k1,t3,30772
     9ac:	602a9c60 	0x602a9c60
     9b0:	dff8e8a3 	0xdff8e8a3
     9b4:	1f636c1b 	0x1f636c1b
     9b8:	0e12b4c2 	jal	84ad308 <out_key+0x84aae70>
     9bc:	02e1329e 	0x2e1329e
     9c0:	af664fd1 	sw	a2,20433(k1)
     9c4:	cad18115 	lwc2	$17,-32491(s6)
     9c8:	6b2395e0 	0x6b2395e0
     9cc:	333e92e1 	andi	s8,t9,0x92e1
     9d0:	3b240b62 	xori	a0,t9,0xb62
     9d4:	eebeb922 	swc3	$30,-18142(s5)
     9d8:	85b2a20e 	lh	s2,-24050(t5)
     9dc:	e6ba0d99 	swc1	$f26,3481(s5)
     9e0:	de720c8c 	0xde720c8c
     9e4:	2da2f728 	sltiu	v0,t5,-2264
     9e8:	d0127845 	0xd0127845
     9ec:	95b794fd 	lhu	s7,-27395(t5)
     9f0:	647d0862 	0x647d0862
     9f4:	e7ccf5f0 	swc1	$f12,-2576(s8)
     9f8:	5449a36f 	0x5449a36f
     9fc:	877d48fa 	lh	sp,18682(k1)
     a00:	c39dfd27 	lwc0	$29,-729(gp)
     a04:	f33e8d1e 	0xf33e8d1e
     a08:	0a476341 	j	91d8d04 <out_key+0x91d686c>
     a0c:	992eff74 	lwr	t6,-140(t1)
     a10:	3a6f6eab 	xori	t7,s3,0x6eab
     a14:	f4f8fd37 	0xf4f8fd37
     a18:	a812dc60 	swl	s2,-9120(zero)
     a1c:	a1ebddf8 	sb	t3,-8712(t7)
     a20:	991be14c 	lwr	k1,-7860(t0)
     a24:	db6e6b0d 	0xdb6e6b0d
     a28:	c67b5510 	lwc1	$f27,21776(s3)
     a2c:	6d672c37 	0x6d672c37
     a30:	2765d43b 	addiu	a1,k1,-11205
     a34:	dcd0e804 	0xdcd0e804
     a38:	f1290dc7 	0xf1290dc7
     a3c:	cc00ffa3 	lwc3	$0,-93(zero)
     a40:	b5390f92 	0xb5390f92
     a44:	690fed0b 	0x690fed0b
     a48:	667b9ffb 	0x667b9ffb
     a4c:	cedb7d9c 	lwc3	$27,32156(s6)
     a50:	a091cf0b 	sb	s1,-12533(a0)
     a54:	d9155ea3 	0xd9155ea3
     a58:	bb132f88 	swr	s3,12168(t8)
     a5c:	515bad24 	0x515bad24
     a60:	7b9479bf 	0x7b9479bf
     a64:	763bd6eb 	jalx	8ef5bac <out_key+0x8ef3714>
     a68:	37392eb3 	ori	t9,t9,0x2eb3
     a6c:	cc115979 	lwc3	$17,22905(zero)
     a70:	8026e297 	lb	a2,-7529(at)
     a74:	f42e312d 	0xf42e312d
     a78:	6842ada7 	0x6842ada7
     a7c:	c66a2b3b 	lwc1	$f10,11067(s3)
     a80:	12754ccc 	beq	s3,s5,13db4 <out_key+0x1191c>
     a84:	782ef11c 	0x782ef11c
     a88:	6a124237 	0x6a124237
     a8c:	b79251e7 	0xb79251e7
     a90:	06a1bbe6 	bgez	s5,fffefa2c <out_key+0xfffed594>
     a94:	4bfb6350 	c2	0x1fb6350
     a98:	1a6b1018 	0x1a6b1018
     a9c:	11caedfa 	beq	t6,t2,ffffc288 <out_key+0xffff9df0>
     aa0:	3d25bdd8 	0x3d25bdd8
     aa4:	e2e1c3c9 	swc0	$1,-15415(s7)
     aa8:	44421659 	0x44421659
     aac:	0a121386 	j	8484e18 <out_key+0x8482980>
     ab0:	d90cec6e 	0xd90cec6e
     ab4:	d5abea2a 	0xd5abea2a
     ab8:	64af674e 	0x64af674e
     abc:	da86a85f 	0xda86a85f
     ac0:	bebfe988 	0xbebfe988
     ac4:	64e4c3fe 	0x64e4c3fe
     ac8:	9dbc8057 	0x9dbc8057
     acc:	f0f7c086 	0xf0f7c086
     ad0:	60787bf8 	0x60787bf8
     ad4:	6003604d 	0x6003604d
     ad8:	d1fd8346 	0xd1fd8346
     adc:	f6381fb0 	0xf6381fb0
     ae0:	7745ae04 	jalx	d16b810 <out_key+0xd169378>
     ae4:	d736fccc 	0xd736fccc
     ae8:	83426b33 	lb	v0,27443(k0)
     aec:	f01eab71 	0xf01eab71
     af0:	b0804187 	0xb0804187
     af4:	3c005e5f 	lui	zero,0x5e5f
     af8:	77a057be 	jalx	e815ef8 <out_key+0xe813a60>
     afc:	bde8ae24 	0xbde8ae24
     b00:	55464299 	0x55464299
     b04:	bf582e61 	0xbf582e61
     b08:	4e58f48f 	c3	0x58f48f
     b0c:	f2ddfda2 	0xf2ddfda2
     b10:	f474ef38 	0xf474ef38
     b14:	8789bdc2 	lh	t1,-16958(gp)
     b18:	5366f9c3 	0x5366f9c3
     b1c:	c8b38e74 	lwc2	$19,-29068(a1)
     b20:	b475f255 	0xb475f255
     b24:	46fcd9b9 	c1	0xfcd9b9
     b28:	7aeb2661 	0x7aeb2661
     b2c:	8b1ddf84 	lwl	sp,-8316(t8)
     b30:	846a0e79 	lh	t2,3705(v1)
     b34:	915f95e2 	lbu	ra,-27166(t2)
     b38:	466e598e 	c1	0x6e598e
     b3c:	20b45770 	addi	s4,a1,22384
     b40:	8cd55591 	lw	s5,21905(a2)
     b44:	c902de4c 	lwc2	$2,-8628(t0)
     b48:	b90bace1 	swr	t3,-21279(t0)
     b4c:	bb8205d0 	swr	v0,1488(gp)
     b50:	11a86248 	beq	t5,t0,19474 <out_key+0x16fdc>
     b54:	7574a99e 	jalx	5d2a678 <out_key+0x5d281e0>
     b58:	b77f19b6 	0xb77f19b6
     b5c:	e0a9dc09 	swc0	$9,-9207(a1)
     b60:	662d09a1 	0x662d09a1
     b64:	c4324633 	lwc1	$f18,17971(at)
     b68:	e85a1f02 	swc2	$26,7938(v0)
     b6c:	09f0be8c 	j	7c2fa30 <out_key+0x7c2d598>
     b70:	4a99a025 	c2	0x99a025
     b74:	1d6efe10 	0x1d6efe10
     b78:	1ab93d1d 	0x1ab93d1d
     b7c:	0ba5a4df 	j	e96937c <out_key+0xe966ee4>
     b80:	a186f20f 	sb	a2,-3569(t4)
     b84:	2868f169 	slti	t0,v1,-3735
     b88:	dcb7da83 	0xdcb7da83
     b8c:	573906fe 	0x573906fe
     b90:	a1e2ce9b 	sb	v0,-12645(t7)
     b94:	4fcd7f52 	c3	0x1cd7f52
     b98:	50115e01 	0x50115e01
     b9c:	a70683fa 	sh	a2,-31750(t8)
     ba0:	a002b5c4 	sb	v0,-19004(zero)
     ba4:	0de6d027 	jal	79b409c <out_key+0x79b1c04>
     ba8:	9af88c27 	lwr	t8,-29657(s7)
     bac:	773f8641 	jalx	cfe1904 <out_key+0xcfdf46c>
     bb0:	c3604c06 	lwc0	$0,19462(k1)
     bb4:	61a806b5 	0x61a806b5
     bb8:	f0177a28 	0xf0177a28
     bbc:	c0f586e0 	lwc0	$21,-31008(a3)
     bc0:	006058aa 	0x6058aa
     bc4:	30dc7d62 	andi	gp,a2,0x7d62
     bc8:	11e69ed7 	beq	t7,a2,fffe8728 <out_key+0xfffe6290>
     bcc:	2338ea63 	addi	t8,t9,-5533
     bd0:	53c2dd94 	0x53c2dd94
     bd4:	c2c21634 	lwc0	$2,5684(s6)
     bd8:	bbcbee56 	swr	t3,-4522(s8)
     bdc:	90bcb6de 	lbu	gp,-18722(a1)
     be0:	ebfc7da1 	swc2	$28,32161(ra)
     be4:	ce591d76 	lwc3	$25,7542(s2)
     be8:	6f05e409 	0x6f05e409
     bec:	4b7c0188 	c2	0x17c0188
     bf0:	39720a3d 	xori	s2,t3,0xa3d
     bf4:	7c927c24 	0x7c927c24
     bf8:	86e3725f 	lh	v1,29279(s7)
     bfc:	724d9db9 	0x724d9db9
     c00:	1ac15bb4 	0x1ac15bb4
     c04:	d39eb8fc 	0xd39eb8fc
     c08:	ed545578 	swc3	$20,21880(t2)
     c0c:	08fca5b5 	j	3f296d4 <out_key+0x3f2723c>
     c10:	d83d7cd3 	0xd83d7cd3
     c14:	4dad0fc4 	0x4dad0fc4
     c18:	1e50ef5e 	0x1e50ef5e
     c1c:	b161e6f8 	0xb161e6f8
     c20:	a28514d9 	sb	a1,5337(s4)
     c24:	6c51133c 	0x6c51133c
     c28:	6fd5c7e7 	0x6fd5c7e7
     c2c:	56e14ec4 	0x56e14ec4
     c30:	362abfce 	ori	t2,s1,0xbfce
     c34:	ddc6c837 	0xddc6c837
     c38:	d79a3234 	0xd79a3234
     c3c:	92638212 	lbu	v1,-32238(s3)
     c40:	670efa8e 	0x670efa8e
     c44:	406000e0 	0x406000e0
     c48:	3a39ce37 	xori	t9,s1,0xce37
     c4c:	d3faf5cf 	0xd3faf5cf
     c50:	abc27737 	swl	v0,30519(s8)
     c54:	5ac52d1b 	0x5ac52d1b
     c58:	5cb0679e 	0x5cb0679e
     c5c:	4fa33742 	c3	0x1a33742
     c60:	d3822740 	0xd3822740
     c64:	99bc9bbe 	lwr	gp,-25666(t5)
     c68:	d5118e9d 	0xd5118e9d
     c6c:	bf0f7315 	0xbf0f7315
     c70:	d62d1c7e 	0xd62d1c7e
     c74:	c700c47b 	lwc1	$f0,-15237(t8)
     c78:	b78c1b6b 	0xb78c1b6b
     c7c:	21a19045 	addi	at,t5,-28603
     c80:	b26eb1be 	0xb26eb1be
     c84:	6a366eb4 	0x6a366eb4
     c88:	5748ab2f 	0x5748ab2f
     c8c:	bc946e79 	0xbc946e79
     c90:	c6a376d2 	lwc1	$f3,30418(s5)
     c94:	6549c2c8 	0x6549c2c8
     c98:	530ff8ee 	0x530ff8ee
     c9c:	468dde7d 	c1	0x8dde7d
     ca0:	d5730a1d 	0xd5730a1d
     ca4:	4cd04dc6 	0x4cd04dc6
     ca8:	2939bbdb 	slti	t9,t1,-17445
     cac:	a9ba4650 	swl	k0,18000(t5)
     cb0:	ac9526e8 	sw	s5,9960(a0)
     cb4:	be5ee304 	0xbe5ee304
     cb8:	a1fad5f0 	sb	k0,-10768(t7)
     cbc:	6a2d519a 	0x6a2d519a
     cc0:	63ef8ce2 	0x63ef8ce2
     cc4:	9a86ee22 	lwr	a2,-4574(s4)
     cc8:	c089c2b8 	lwc0	$9,-15688(a0)
     ccc:	43242ef6 	c0	0x1242ef6
     cd0:	a51e03aa 	sh	s8,938(t0)
     cd4:	9cf2d0a4 	0x9cf2d0a4
     cd8:	83c061ba 	lb	zero,25018(s8)
     cdc:	9be96a4d 	lwr	t1,27213(ra)
     ce0:	8fe51550 	lw	a1,5456(ra)
     ce4:	ba645bd6 	swr	a0,23510(s3)
     ce8:	2826a2f9 	slti	a2,at,-23815
     cec:	a73a3ae1 	sh	k0,15073(t9)
     cf0:	4ba99586 	c2	0x1a99586
     cf4:	ef5562e9 	swc3	$21,25321(k0)
     cf8:	c72fefd3 	lwc1	$f15,-4141(t9)
     cfc:	f752f7da 	0xf752f7da
     d00:	3f046f69 	0x3f046f69
     d04:	77fa0a59 	jalx	fe82964 <out_key+0xfe804cc>
     d08:	80e4a915 	lb	a0,-22251(a3)
     d0c:	87b08601 	lh	s0,-31231(sp)
     d10:	9b09e6ad 	lwr	t1,-6483(t8)
     d14:	3b3ee593 	xori	s8,t9,0xe593
     d18:	e990fd5a 	swc2	$16,-678(t4)
     d1c:	9e34d797 	0x9e34d797
     d20:	2cf0b7d9 	sltiu	s0,a3,-18471
     d24:	022b8b51 	0x22b8b51
     d28:	96d5ac3a 	lhu	s5,-21446(s6)
     d2c:	017da67d 	0x17da67d
     d30:	d1cf3ed6 	0xd1cf3ed6
     d34:	7c7d2d28 	0x7c7d2d28
     d38:	1f9f25cf 	0x1f9f25cf
     d3c:	adf2b89b 	sw	s2,-18277(t7)
     d40:	5ad6b472 	0x5ad6b472
     d44:	5a88f54c 	0x5a88f54c
     d48:	e029ac71 	swc0	$9,-21391(at)
     d4c:	e019a5e6 	swc0	$25,-23066(zero)
     d50:	47b0acfd 	c1	0x1b0acfd
     d54:	ed93fa9b 	swc3	$19,-1381(t4)
     d58:	e8d3c48d 	swc2	$19,-15219(a2)
     d5c:	283b57cc 	slti	k1,at,22476
     d60:	f8d56629 	0xf8d56629
     d64:	79132e28 	0x79132e28
     d68:	785f0191 	0x785f0191
     d6c:	ed756055 	swc3	$21,24661(t3)
     d70:	f7960e44 	0xf7960e44
     d74:	e3d35e8c 	swc0	$19,24204(s8)
     d78:	15056dd4 	bne	t0,a1,1c4cc <out_key+0x1a034>
     d7c:	88f46dba 	lwl	s4,28090(a3)
     d80:	03a16125 	0x3a16125
     d84:	0564f0bd 	0x564f0bd
     d88:	c3eb9e15 	lwc0	$11,-25067(ra)
     d8c:	3c9057a2 	0x3c9057a2
     d90:	97271aec 	lhu	a3,6892(t9)
     d94:	a93a072a 	swl	k0,1834(t1)
     d98:	1b3f6d9b 	0x1b3f6d9b
     d9c:	1e6321f5 	0x1e6321f5
     da0:	f59c66fb 	0xf59c66fb
     da4:	26dcf319 	addiu	gp,s6,-3303
     da8:	7533d928 	jalx	4cf64a0 <out_key+0x4cf4008>
     dac:	b155fdf5 	0xb155fdf5
     db0:	03563482 	0x3563482
     db4:	8aba3cbb 	lwl	k0,15547(s5)
     db8:	28517711 	slti	s1,v0,30481
     dbc:	c20ad9f8 	lwc0	$10,-9736(s0)
     dc0:	abcc5167 	swl	t4,20839(s8)
     dc4:	ccad925f 	lwc3	$13,-28065(a1)
     dc8:	4de81751 	0x4de81751
     dcc:	3830dc8e 	xori	s0,at,0xdc8e
     dd0:	379d5862 	ori	sp,gp,0x5862
     dd4:	9320f991 	lbu	zero,-1647(t9)
     dd8:	ea7a90c2 	swc2	$26,-28478(s3)
     ddc:	fb3e7bce 	0xfb3e7bce
     de0:	5121ce64 	0x5121ce64
     de4:	774fbe32 	jalx	d3ef8c8 <out_key+0xd3ed430>
     de8:	a8b6e37e 	swl	s6,-7298(a1)
     dec:	c3293d46 	lwc0	$9,15686(t9)
     df0:	48de5369 	0x48de5369
     df4:	6413e680 	0x6413e680
     df8:	a2ae0810 	sb	t6,2064(s5)
     dfc:	dd6db224 	0xdd6db224
     e00:	69852dfd 	0x69852dfd
     e04:	09072166 	j	41c8598 <out_key+0x41c6100>
     e08:	b39a460a 	0xb39a460a
     e0c:	6445c0dd 	0x6445c0dd
     e10:	586cdecf 	0x586cdecf
     e14:	1c20c8ae 	bgtz	at,ffff30d0 <out_key+0xffff0c38>
     e18:	5bbef7dd 	0x5bbef7dd
     e1c:	1b588d40 	0x1b588d40
     e20:	ccd2017f 	lwc3	$18,383(a2)
     e24:	6bb4e3bb 	0x6bb4e3bb
     e28:	dda26a7e 	0xdda26a7e
     e2c:	3a59ff45 	xori	t9,s2,0xff45
     e30:	3e350a44 	0x3e350a44
     e34:	bcb4cdd5 	0xbcb4cdd5
     e38:	72eacea8 	0x72eacea8
     e3c:	fa6484bb 	0xfa6484bb
     e40:	8d6612ae 	lw	a2,4782(t3)
     e44:	bf3c6f47 	0xbf3c6f47
     e48:	d29be463 	0xd29be463
     e4c:	542f5d9e 	0x542f5d9e
     e50:	aec2771b 	sw	v0,30491(s6)
     e54:	f64e6370 	0xf64e6370
     e58:	740e0d8d 	jalx	383634 <out_key+0x38119c>
     e5c:	e75b1357 	swc1	$f27,4951(k0)
     e60:	f8721671 	0xf8721671
     e64:	af537d5d 	sw	s3,32093(k0)
     e68:	4040cb08 	0x4040cb08
     e6c:	4eb4e2cc 	c3	0xb4e2cc
     e70:	34d2466a 	ori	s2,a2,0x466a
     e74:	0115af84 	0x115af84
     e78:	e1b00428 	swc0	$16,1064(t5)
     e7c:	95983a1d 	lhu	t8,14877(t4)
     e80:	06b89fb4 	0x6b89fb4
     e84:	ce6ea048 	lwc3	$14,-24504(s3)
     e88:	6f3f3b82 	0x6f3f3b82
     e8c:	3520ab82 	ori	zero,t1,0xab82
     e90:	011a1d4b 	0x11a1d4b
     e94:	277227f8 	addiu	s2,k1,10232
     e98:	611560b1 	0x611560b1
     e9c:	e7933fdc 	swc1	$f19,16348(gp)
     ea0:	bb3a792b 	swr	k0,31019(t9)
     ea4:	344525bd 	ori	a1,v0,0x25bd
     ea8:	a08839e1 	sb	t0,14817(a0)
     eac:	51ce794b 	0x51ce794b
     eb0:	2f32c9b7 	sltiu	s2,t9,-13897
     eb4:	a01fbac9 	sb	ra,-17719(zero)
     eb8:	e01cc87e 	swc0	$28,-14210(zero)
     ebc:	bcc7d1f6 	0xbcc7d1f6
     ec0:	cf0111c3 	lwc3	$1,4547(t8)
     ec4:	a1e8aac7 	sb	t0,-21817(t7)
     ec8:	1a908749 	0x1a908749
     ecc:	d44fbd9a 	0xd44fbd9a
     ed0:	d0dadecb 	0xd0dadecb
     ed4:	d50ada38 	0xd50ada38
     ed8:	0339c32a 	0x339c32a
     edc:	c6913667 	lwc1	$f17,13927(s4)
     ee0:	8df9317c 	lw	t9,12668(t7)
     ee4:	e0b12b4f 	swc0	$17,11087(a1)
     ee8:	f79e59b7 	0xf79e59b7
     eec:	43f5bb3a 	c0	0x1f5bb3a
     ef0:	f2d519ff 	0xf2d519ff
     ef4:	27d9459c 	addiu	t9,s8,17820
     ef8:	bf97222c 	0xbf97222c
     efc:	15e6fc2a 	bne	t7,a2,ffffffa8 <out_key+0xffffdb10>
     f00:	0f91fc71 	jal	e47f1c4 <out_key+0xe47cd2c>
     f04:	9b941525 	lwr	s4,5413(gp)
     f08:	fae59361 	0xfae59361
     f0c:	ceb69ceb 	lwc3	$22,-25365(s5)
     f10:	c2a86459 	lwc0	$8,25689(s5)
     f14:	12baa8d1 	beq	s5,k0,fffeb25c <out_key+0xfffe8dc4>
     f18:	b6c1075e 	0xb6c1075e
     f1c:	e3056a0c 	swc0	$5,27148(t8)
     f20:	10d25065 	beq	a2,s2,150b8 <out_key+0x12c20>
     f24:	cb03a442 	lwc2	$3,-23486(t8)
     f28:	e0ec6e0e 	swc0	$12,28174(a3)
     f2c:	1698db3b 	bne	s4,t8,ffff7c1c <out_key+0xffff5784>
     f30:	4c98a0be 	0x4c98a0be
     f34:	3278e964 	andi	t8,s3,0xe964
     f38:	9f1f9532 	0x9f1f9532
     f3c:	e0d392df 	swc0	$19,-27937(a2)
     f40:	d3a0342b 	0xd3a0342b
     f44:	8971f21e 	lwl	s1,-3554(t3)
     f48:	1b0a7441 	0x1b0a7441
     f4c:	4ba3348c 	c2	0x1a3348c
     f50:	c5be7120 	lwc1	$f30,28960(t5)
     f54:	c37632d8 	lwc0	$22,13016(k1)
     f58:	df359f8d 	0xdf359f8d
     f5c:	9b992f2e 	lwr	t9,12078(gp)
     f60:	e60b6f47 	swc1	$f11,28487(s0)
     f64:	0fe3f11d 	jal	f8fc474 <out_key+0xf8f9fdc>
     f68:	e54cda54 	swc1	$f12,-9644(t2)
     f6c:	1edad891 	0x1edad891
     f70:	ce6279cf 	lwc3	$2,31183(s3)
     f74:	cd3e7e6f 	lwc3	$30,32367(t1)
     f78:	1618b166 	bne	s0,t8,fffed514 <out_key+0xfffeb07c>
     f7c:	fd2c1d05 	0xfd2c1d05
     f80:	848fd2c5 	lh	t7,-11579(a0)
     f84:	f6fb2299 	0xf6fb2299
     f88:	f523f357 	0xf523f357
     f8c:	a6327623 	sh	s2,30243(s1)
     f90:	93a83531 	lbu	t0,13617(sp)
     f94:	56cccd02 	0x56cccd02
     f98:	acf08162 	sw	s0,-32414(a3)
     f9c:	5a75ebb5 	0x5a75ebb5
     fa0:	6e163697 	0x6e163697
     fa4:	88d273cc 	lwl	s2,29644(a2)
     fa8:	de966292 	0xde966292
     fac:	81b949d0 	lb	t9,18896(t5)
     fb0:	4c50901b 	0x4c50901b
     fb4:	71c65614 	0x71c65614
     fb8:	e6c6c7bd 	swc1	$f6,-14403(s6)
     fbc:	327a140a 	andi	k0,s3,0x140a
     fc0:	45e1d006 	0x45e1d006
     fc4:	c3f27b9a 	lwc0	$18,31642(ra)
     fc8:	c9aa53fd 	lwc2	$10,21501(t5)
     fcc:	62a80f00 	0x62a80f00
     fd0:	bb25bfe2 	swr	a1,-16414(t9)
     fd4:	35bdd2f6 	ori	sp,t5,0xd2f6
     fd8:	71126905 	0x71126905
     fdc:	b2040222 	0xb2040222
     fe0:	b6cbcf7c 	0xb6cbcf7c
     fe4:	cd769c2b 	lwc3	$22,-25557(t3)
     fe8:	53113ec0 	0x53113ec0
     fec:	1640e3d3 	bnez	s2,ffff9f3c <out_key+0xffff7aa4>
     ff0:	38abbd60 	xori	t3,a1,0xbd60
     ff4:	2547adf0 	addiu	a3,t2,-21008
     ff8:	ba38209c 	swr	t8,8348(s1)
     ffc:	f746ce76 	0xf746ce76
    1000:	77afa1c5 	jalx	ebe8714 <out_key+0xebe627c>
    1004:	20756060 	addi	s5,v1,24672
    1008:	85cbfe4e 	lh	t3,-434(t6)
    100c:	8ae88dd8 	lwl	t0,-29224(s7)
    1010:	7aaaf9b0 	0x7aaaf9b0
    1014:	4cf9aa7e 	0x4cf9aa7e
    1018:	1948c25c 	0x1948c25c
    101c:	02fb8a8c 	syscall	0xbee2a
    1020:	01c36ae4 	0x1c36ae4
    1024:	d6ebe1f9 	0xd6ebe1f9
    1028:	90d4f869 	lbu	s4,-1943(a2)
    102c:	a65cdea0 	sh	gp,-8544(s2)
    1030:	3f09252d 	0x3f09252d
    1034:	c208e69f 	lwc0	$8,-6497(s0)
    1038:	b74e6132 	0xb74e6132
    103c:	ce77e25b 	lwc3	$23,-7589(s3)
    1040:	578fdfe3 	0x578fdfe3
    1044:	3ac372e6 	xori	v1,s6,0x72e6

00001048 <in_key>:
    1048:	4b757274 	c2	0x1757274
    104c:	566f6e6e 	0x566f6e6e
    1050:	65677574 	0x65677574
    1054:	73436f6d 	0x73436f6d
    1058:	6d656e63 	0x6d656e63
    105c:	656d656e 	0x656d656e
    1060:	74416464 	jalx	1059190 <out_key+0x1056cf8>
    1064:	72657373 	0x72657373
    1068:	61744d49 	0x61744d49
    106c:	544c6164 	0x544c6164
    1070:	69657361 	0x69657361
    1074:	6e646765 	0x6e646765
    1078:	6e746c65 	0x6e746c65
    107c:	6d656e6f 	0x6d656e6f
    1080:	66746865 	0x66746865
    1084:	636c6173 	0x636c6173
    1088:	736f6639 	0x736f6639
    108c:	37576561 	ori	s7,k0,0x6561
    1090:	7273756e 	0x7273756e
    1094:	73637265 	0x73637265
    1098:	656e4966 	0x656e4966
    109c:	49636f75 	0x49636f75
    10a0:	6c646f66 	0x6c646f66
    10a4:	66657279 	0x66657279
    10a8:	6f756f6e 	0x6f756f6e
    10ac:	6c796f6e 	0x6c796f6e
    10b0:	65746970 	0x65746970
    10b4:	666f7274 	0x666f7274
    10b8:	68656675 	0x68656675
    10bc:	74757265 	jalx	1d5c994 <out_key+0x1d5a4fc>
    10c0:	73756e73 	0x73756e73
    10c4:	63726565 	0x63726565
    10c8:	6e776f75 	0x6e776f75
    10cc:	6c646265 	0x6c646265
    10d0:	69745468 	0x69745468
    10d4:	656c6f6e 	0x656c6f6e
    10d8:	67746572 	0x67746572
    10dc:	6d62656e 	0x6d62656e
    10e0:	65666974 	0x65666974
    10e4:	736f6673 	0x736f6673
    10e8:	756e7363 	jalx	5b9cd8c <out_key+0x5b9a8f4>
    10ec:	7265656e 	0x7265656e
    10f0:	68617665 	0x68617665
    10f4:	6265656e 	0x6265656e
    10f8:	70726f76 	0x70726f76
    10fc:	65646279 	0x65646279
    1100:	73636965 	0x73636965
    1104:	6e746973 	0x6e746973
    1108:	74737768 	jalx	1cddda0 <out_key+0x1cdb908>
    110c:	65726561 	0x65726561
    1110:	73746865 	0x73746865
    1114:	72657374 	0x72657374
    1118:	6f666d79 	0x6f666d79
    111c:	61647669 	0x61647669
    1120:	63656861 	0x63656861
    1124:	736e6f62 	0x736e6f62
    1128:	61736973 	0x61736973
    112c:	6d6f7265 	0x6d6f7265
    1130:	72656c69 	0x72656c69
    1134:	61626c65 	0x61626c65
    1138:	7468616e 	jalx	1a185b8 <out_key+0x1a16120>
    113c:	6d796f77 	0x6d796f77
    1140:	6e6d6561 	0x6e6d6561
    1144:	6e646572 	0x6e646572
    1148:	696e6765 	0x696e6765
    114c:	78706572 	0x78706572
    1150:	69656e63 	0x69656e63
    1154:	65497769 	0x65497769
    1158:	6c6c6469 	0x6c6c6469
    115c:	7370656e 	0x7370656e
    1160:	73657468 	0x73657468
    1164:	69736164 	0x69736164
    1168:	76696365 	jalx	9a58d94 <out_key+0x9a568fc>
    116c:	6e6f7745 	0x6e6f7745
    1170:	6e6a6f79 	0x6e6a6f79
    1174:	74686570 	jalx	1a195c0 <out_key+0x1a17128>
    1178:	6f776572 	0x6f776572
    117c:	616e6462 	0x616e6462
    1180:	65617574 	0x65617574
    1184:	796f6679 	0x796f6679
    1188:	6f757279 	0x6f757279
    118c:	6f757468 	0x6f757468
    1190:	4f686e65 	c3	0x1686e65
    1194:	7665726d 	jalx	995c9b4 <out_key+0x995a51c>
    1198:	696e6459 	0x696e6459
    119c:	6f757769 	0x6f757769
    11a0:	6c6c6e6f 	0x6c6c6e6f
    11a4:	74756e64 	jalx	1d5b990 <out_key+0x1d594f8>
    11a8:	65727374 	0x65727374
    11ac:	616e6474 	0x616e6474
    11b0:	6865706f 	0x6865706f
    11b4:	77657261 	jalx	d95c984 <out_key+0xd95a4ec>
    11b8:	6e646265 	0x6e646265
    11bc:	61757479 	0x61757479
    11c0:	6f66796f 	0x6f66796f
    11c4:	7572796f 	jalx	5c9e5bc <out_key+0x5c9c124>
    11c8:	75746875 	jalx	5d1a1d4 <out_key+0x5d17d3c>
    11cc:	6e74696c 	0x6e74696c
    11d0:	74686579 	jalx	1a195e4 <out_key+0x1a1714c>
    11d4:	76656661 	jalx	9959984 <out_key+0x99574ec>
    11d8:	64656442 	0x64656442
    11dc:	75747472 	jalx	5d1d1c8 <out_key+0x5d1ad30>
    11e0:	7573746d 	jalx	5cdd1b4 <out_key+0x5cdad1c>
    11e4:	65696e32 	0x65696e32
    11e8:	30796561 	andi	t9,v1,0x6561
    11ec:	7273796f 	0x7273796f
    11f0:	756c6c6c 	jalx	5b1b1b0 <out_key+0x5b18d18>
    11f4:	6f6f6b62 	0x6f6f6b62
    11f8:	61636b61 	0x61636b61
    11fc:	7470686f 	jalx	1c1a1bc <out_key+0x1c17d24>
    1200:	746f736f 	jalx	1bdcdbc <out_key+0x1bda924>
    1204:	66796f75 	0x66796f75
    1208:	7273656c 	0x7273656c
    120c:	66616e64 	0x66616e64
    1210:	72656361 	0x72656361
    1214:	6c6c696e 	0x6c6c696e
    1218:	61776179 	0x61776179
    121c:	796f7563 	0x796f7563
    1220:	616e7467 	0x616e7467
    1224:	72617370 	0x72617370
    1228:	6e6f7768 	0x6e6f7768
    122c:	6f776d75 	0x6f776d75
    1230:	6368706f 	0x6368706f
    1234:	73736962 	0x73736962
    1238:	696c6974 	0x696c6974
    123c:	796c6179 	0x796c6179
    1240:	6265666f 	0x6265666f
    1244:	7265796f 	0x7265796f
    1248:	75616e64 	jalx	585b990 <out_key+0x58594f8>
    124c:	686f7766 	0x686f7766
    1250:	6162756c 	0x6162756c
    1254:	6f757379 	0x6f757379
    1258:	6f757265 	0x6f757265
    125c:	616c6c79 	0x616c6c79
    1260:	6c6f6f6b 	0x6c6f6f6b
    1264:	6564596f 	0x6564596f
    1268:	75617265 	jalx	585c994 <out_key+0x585a4fc>
    126c:	6e6f7461 	0x6e6f7461
    1270:	73666174 	0x73666174
    1274:	6173796f 	0x6173796f
    1278:	75696d61 	jalx	5a5b584 <out_key+0x5a590ec>
    127c:	67696e65 	0x67696e65
    1280:	446f6e74 	0x446f6e74
    1284:	776f7272 	jalx	dbdc9c8 <out_key+0xdbda530>
    1288:	7961626f 	0x7961626f
    128c:	75747468 	jalx	5d1d1a0 <out_key+0x5d1ad08>
    1290:	65667574 	0x65667574
    1294:	7572654f 	jalx	5c9953c <out_key+0x5c970a4>
    1298:	72776f72 	0x72776f72
    129c:	72796275 	0x72796275
    12a0:	746b6e6f 	jalx	1adb9bc <out_key+0x1ad9524>
    12a4:	77746861 	jalx	dd1a184 <out_key+0xdd17cec>
    12a8:	744b7572 	jalx	12dd5c8 <out_key+0x12db130>
    12ac:	74566f6e 	jalx	159bdb8 <out_key+0x1599920>
    12b0:	6e656775 	0x6e656775
    12b4:	4b757274 	c2	0x1757274
    12b8:	566f6e6e 	0x566f6e6e
    12bc:	65677574 	0x65677574
    12c0:	73436f6d 	0x73436f6d
    12c4:	6d656e63 	0x6d656e63
    12c8:	656d656e 	0x656d656e
    12cc:	74416464 	jalx	1059190 <out_key+0x1056cf8>
    12d0:	72657373 	0x72657373
    12d4:	61744d49 	0x61744d49
    12d8:	544c6164 	0x544c6164
    12dc:	69657361 	0x69657361
    12e0:	6e646765 	0x6e646765
    12e4:	6e746c65 	0x6e746c65
    12e8:	6d656e6f 	0x6d656e6f
    12ec:	66746865 	0x66746865
    12f0:	636c6173 	0x636c6173
    12f4:	736f6639 	0x736f6639
    12f8:	37576561 	ori	s7,k0,0x6561
    12fc:	7273756e 	0x7273756e
    1300:	73637265 	0x73637265
    1304:	656e4966 	0x656e4966
    1308:	49636f75 	0x49636f75
    130c:	6c646f66 	0x6c646f66
    1310:	66657279 	0x66657279
    1314:	6f756f6e 	0x6f756f6e
    1318:	6c796f6e 	0x6c796f6e
    131c:	65746970 	0x65746970
    1320:	666f7274 	0x666f7274
    1324:	68656675 	0x68656675
    1328:	74757265 	jalx	1d5c994 <out_key+0x1d5a4fc>
    132c:	73756e73 	0x73756e73
    1330:	63726565 	0x63726565
    1334:	6e776f75 	0x6e776f75
    1338:	6c646265 	0x6c646265
    133c:	69745468 	0x69745468
    1340:	656c6f6e 	0x656c6f6e
    1344:	67746572 	0x67746572
    1348:	6d62656e 	0x6d62656e
    134c:	65666974 	0x65666974
    1350:	736f6673 	0x736f6673
    1354:	756e7363 	jalx	5b9cd8c <out_key+0x5b9a8f4>
    1358:	7265656e 	0x7265656e
    135c:	68617665 	0x68617665
    1360:	6265656e 	0x6265656e
    1364:	70726f76 	0x70726f76
    1368:	65646279 	0x65646279
    136c:	73636965 	0x73636965
    1370:	6e746973 	0x6e746973
    1374:	74737768 	jalx	1cddda0 <out_key+0x1cdb908>
    1378:	65726561 	0x65726561
    137c:	73746865 	0x73746865
    1380:	72657374 	0x72657374
    1384:	6f666d79 	0x6f666d79
    1388:	61647669 	0x61647669
    138c:	63656861 	0x63656861
    1390:	736e6f62 	0x736e6f62
    1394:	61736973 	0x61736973
    1398:	6d6f7265 	0x6d6f7265
    139c:	72656c69 	0x72656c69
    13a0:	61626c65 	0x61626c65
    13a4:	7468616e 	jalx	1a185b8 <out_key+0x1a16120>
    13a8:	6d796f77 	0x6d796f77
    13ac:	6e6d6561 	0x6e6d6561
    13b0:	6e646572 	0x6e646572
    13b4:	696e6765 	0x696e6765
    13b8:	78706572 	0x78706572
    13bc:	69656e63 	0x69656e63
    13c0:	65497769 	0x65497769
    13c4:	6c6c6469 	0x6c6c6469
    13c8:	7370656e 	0x7370656e
    13cc:	73657468 	0x73657468
    13d0:	69736164 	0x69736164
    13d4:	76696365 	jalx	9a58d94 <out_key+0x9a568fc>
    13d8:	6e6f7745 	0x6e6f7745
    13dc:	6e6a6f79 	0x6e6a6f79
    13e0:	74686570 	jalx	1a195c0 <out_key+0x1a17128>
    13e4:	6f776572 	0x6f776572
    13e8:	616e6462 	0x616e6462
    13ec:	65617574 	0x65617574
    13f0:	796f6679 	0x796f6679
    13f4:	6f757279 	0x6f757279
    13f8:	6f757468 	0x6f757468
    13fc:	4f686e65 	c3	0x1686e65
    1400:	7665726d 	jalx	995c9b4 <out_key+0x995a51c>
    1404:	696e6459 	0x696e6459
    1408:	6f757769 	0x6f757769
    140c:	6c6c6e6f 	0x6c6c6e6f
    1410:	74756e64 	jalx	1d5b990 <out_key+0x1d594f8>
    1414:	65727374 	0x65727374
    1418:	616e6474 	0x616e6474
    141c:	6865706f 	0x6865706f
    1420:	77657261 	jalx	d95c984 <out_key+0xd95a4ec>
    1424:	6e646265 	0x6e646265
    1428:	61757479 	0x61757479
    142c:	6f66796f 	0x6f66796f
    1430:	7572796f 	jalx	5c9e5bc <out_key+0x5c9c124>
    1434:	75746875 	jalx	5d1a1d4 <out_key+0x5d17d3c>
    1438:	6e74696c 	0x6e74696c
    143c:	74686579 	jalx	1a195e4 <out_key+0x1a1714c>
    1440:	76656661 	jalx	9959984 <out_key+0x99574ec>
    1444:	64656442 	0x64656442
    1448:	75747472 	jalx	5d1d1c8 <out_key+0x5d1ad30>
    144c:	7573746d 	jalx	5cdd1b4 <out_key+0x5cdad1c>
    1450:	65696e32 	0x65696e32
    1454:	30796561 	andi	t9,v1,0x6561
    1458:	7273796f 	0x7273796f
    145c:	756c6c6c 	jalx	5b1b1b0 <out_key+0x5b18d18>
    1460:	6f6f6b62 	0x6f6f6b62
    1464:	61636b61 	0x61636b61
    1468:	7470686f 	jalx	1c1a1bc <out_key+0x1c17d24>
    146c:	746f736f 	jalx	1bdcdbc <out_key+0x1bda924>
    1470:	66796f75 	0x66796f75
    1474:	7273656c 	0x7273656c
    1478:	66616e64 	0x66616e64
    147c:	72656361 	0x72656361
    1480:	6c6c696e 	0x6c6c696e
    1484:	61776179 	0x61776179
    1488:	796f7563 	0x796f7563
    148c:	616e7467 	0x616e7467
    1490:	72617370 	0x72617370
    1494:	6e6f7768 	0x6e6f7768
    1498:	6f776d75 	0x6f776d75
    149c:	6368706f 	0x6368706f
    14a0:	73736962 	0x73736962
    14a4:	696c6974 	0x696c6974
    14a8:	796c6179 	0x796c6179
    14ac:	6265666f 	0x6265666f
    14b0:	7265796f 	0x7265796f
    14b4:	75616e64 	jalx	585b990 <out_key+0x58594f8>
    14b8:	686f7766 	0x686f7766
    14bc:	6162756c 	0x6162756c
    14c0:	6f757379 	0x6f757379
    14c4:	6f757265 	0x6f757265
    14c8:	616c6c79 	0x616c6c79
    14cc:	6c6f6f6b 	0x6c6f6f6b
    14d0:	6564596f 	0x6564596f
    14d4:	75617265 	jalx	585c994 <out_key+0x585a4fc>
    14d8:	6e6f7461 	0x6e6f7461
    14dc:	73666174 	0x73666174
    14e0:	6173796f 	0x6173796f
    14e4:	75696d61 	jalx	5a5b584 <out_key+0x5a590ec>
    14e8:	67696e65 	0x67696e65
    14ec:	446f6e74 	0x446f6e74
    14f0:	776f7272 	jalx	dbdc9c8 <out_key+0xdbda530>
    14f4:	7961626f 	0x7961626f
    14f8:	75747468 	jalx	5d1d1a0 <out_key+0x5d1ad08>
    14fc:	65667574 	0x65667574
    1500:	7572654f 	jalx	5c9953c <out_key+0x5c970a4>
    1504:	72776f72 	0x72776f72
    1508:	72796275 	0x72796275
    150c:	746b6e6f 	jalx	1adb9bc <out_key+0x1ad9524>
    1510:	77746861 	jalx	dd1a184 <out_key+0xdd17cec>
    1514:	744b7572 	jalx	12dd5c8 <out_key+0x12db130>
    1518:	74566f6e 	jalx	159bdb8 <out_key+0x1599920>
    151c:	6e656775 	0x6e656775
    1520:	7473436f 	jalx	1cd0dbc <out_key+0x1cce924>
    1524:	6d6d656e 	0x6d6d656e
    1528:	63656d65 	0x63656d65
    152c:	6e744164 	0x6e744164
    1530:	64726573 	0x64726573
    1534:	7361744d 	0x7361744d
    1538:	49544c61 	0x49544c61
    153c:	64696573 	0x64696573
    1540:	616e6467 	0x616e6467
    1544:	656e746c 	0x656e746c
    1548:	656d656e 	0x656d656e
    154c:	6f667468 	0x6f667468
    1550:	65636c61 	0x65636c61
    1554:	73736f66 	0x73736f66
    1558:	39375765 	xori	s7,t1,0x5765
    155c:	61727375 	0x61727375
    1560:	6e736372 	0x6e736372
    1564:	65656e49 	0x65656e49
    1568:	6649636f 	0x6649636f
    156c:	756c646f 	jalx	5b191bc <out_key+0x5b16d24>
    1570:	66666572 	0x66666572
    1574:	796f756f 	0x796f756f
    1578:	6e6c796f 	0x6e6c796f
    157c:	6e657469 	0x6e657469
    1580:	70666f72 	0x70666f72
    1584:	74686566 	jalx	1a19598 <out_key+0x1a17100>
    1588:	75747572 	jalx	5d1d5c8 <out_key+0x5d1b130>
    158c:	6573756e 	0x6573756e
    1590:	73637265 	0x73637265
    1594:	656e776f 	0x656e776f
    1598:	756c6462 	jalx	5b19188 <out_key+0x5b16cf0>
    159c:	65697454 	0x65697454
    15a0:	68656c6f 	0x68656c6f
    15a4:	6e677465 	0x6e677465
    15a8:	726d6265 	0x726d6265
    15ac:	6e656669 	0x6e656669
    15b0:	74736f66 	jalx	1cdbd98 <out_key+0x1cd9900>
    15b4:	73756e73 	0x73756e73
    15b8:	63726565 	0x63726565
    15bc:	6e686176 	0x6e686176
    15c0:	65626565 	0x65626565
    15c4:	6e70726f 	0x6e70726f
    15c8:	76656462 	jalx	9959188 <out_key+0x9956cf0>
    15cc:	79736369 	0x79736369
    15d0:	656e7469 	0x656e7469
    15d4:	73747377 	0x73747377
    15d8:	68657265 	0x68657265
    15dc:	61737468 	0x61737468
    15e0:	65726573 	0x65726573
    15e4:	746f666d 	jalx	1bd99b4 <out_key+0x1bd751c>
    15e8:	79616476 	0x79616476
    15ec:	69636568 	0x69636568
    15f0:	61736e6f 	0x61736e6f
    15f4:	62617369 	0x62617369
    15f8:	736d6f72 	0x736d6f72
    15fc:	6572656c 	0x6572656c
    1600:	6961626c 	0x6961626c
    1604:	65746861 	0x65746861
    1608:	6e6d796f 	0x6e6d796f
    160c:	776e6d65 	jalx	db9b594 <out_key+0xdb990fc>
    1610:	616e6465 	0x616e6465
    1614:	72696e67 	0x72696e67
    1618:	65787065 	0x65787065
    161c:	7269656e 	0x7269656e
    1620:	63654977 	0x63654977
    1624:	696c6c64 	0x696c6c64
    1628:	69737065 	0x69737065
    162c:	6e736574 	0x6e736574
    1630:	68697361 	0x68697361
    1634:	64766963 	0x64766963
    1638:	656e6f77 	0x656e6f77
    163c:	456e6a6f 	0x456e6a6f
    1640:	79746865 	0x79746865
    1644:	706f7765 	0x706f7765
    1648:	72616e64 	0x72616e64
    164c:	62656175 	0x62656175
    1650:	74796f66 	jalx	1e5bd98 <out_key+0x1e59900>
    1654:	796f7572 	0x796f7572
    1658:	796f7574 	0x796f7574
    165c:	684f686e 	0x684f686e
    1660:	65766572 	0x65766572
    1664:	6d696e64 	0x6d696e64
    1668:	596f7577 	0x596f7577
    166c:	696c6c6e 	0x696c6c6e
    1670:	6f74756e 	0x6f74756e
    1674:	64657273 	0x64657273
    1678:	74616e64 	jalx	185b990 <out_key+0x18594f8>
    167c:	74686570 	jalx	1a195c0 <out_key+0x1a17128>
    1680:	6f776572 	0x6f776572
    1684:	616e6462 	0x616e6462
    1688:	65617574 	0x65617574
    168c:	796f6679 	0x796f6679
    1690:	6f757279 	0x6f757279
    1694:	6f757468 	0x6f757468
    1698:	756e7469 	jalx	5b9d1a4 <out_key+0x5b9ad0c>
    169c:	6c746865 	0x6c746865
    16a0:	79766566 	0x79766566
    16a4:	61646564 	0x61646564
    16a8:	42757474 	c0	0x757474
    16ac:	72757374 	0x72757374
    16b0:	6d65696e 	0x6d65696e
    16b4:	32307965 	andi	s0,s1,0x7965
    16b8:	61727379 	0x61727379
    16bc:	6f756c6c 	0x6f756c6c
    16c0:	6c6f6f6b 	0x6c6f6f6b
    16c4:	6261636b 	0x6261636b
    16c8:	61747068 	0x61747068
    16cc:	6f746f73 	0x6f746f73
    16d0:	6f66796f 	0x6f66796f
    16d4:	75727365 	jalx	5c9cd94 <out_key+0x5c9a8fc>
    16d8:	6c66616e 	0x6c66616e
    16dc:	64726563 	0x64726563
    16e0:	616c6c69 	0x616c6c69
    16e4:	6e617761 	0x6e617761
    16e8:	79796f75 	0x79796f75
    16ec:	63616e74 	0x63616e74
    16f0:	67726173 	0x67726173
    16f4:	706e6f77 	0x706e6f77
    16f8:	686f776d 	0x686f776d
    16fc:	75636870 	jalx	58da1c0 <out_key+0x58d7d28>
    1700:	6f737369 	0x6f737369
    1704:	62696c69 	0x62696c69
    1708:	74796c61 	jalx	1e5b184 <out_key+0x1e58cec>
    170c:	79626566 	0x79626566
    1710:	6f726579 	0x6f726579
    1714:	6f75616e 	0x6f75616e
    1718:	64686f77 	0x64686f77
    171c:	66616275 	0x66616275
    1720:	6c6f7573 	0x6c6f7573
    1724:	796f7572 	0x796f7572
    1728:	65616c6c 	0x65616c6c
    172c:	796c6f6f 	0x796c6f6f
    1730:	6b656459 	0x6b656459
    1734:	6f756172 	0x6f756172
    1738:	656e6f74 	0x656e6f74
    173c:	61736661 	0x61736661
    1740:	74617379 	jalx	185cde4 <out_key+0x185a94c>
    1744:	6f75696d 	0x6f75696d
    1748:	6167696e 	0x6167696e
    174c:	65446f6e 	0x65446f6e
    1750:	74776f72 	jalx	1ddbdc8 <out_key+0x1dd9930>
    1754:	72796162 	0x72796162
    1758:	6f757474 	0x6f757474
    175c:	68656675 	0x68656675
    1760:	74757265 	jalx	1d5c994 <out_key+0x1d5a4fc>
    1764:	4f72776f 	c3	0x172776f
    1768:	72727962 	0x72727962
    176c:	75746b6e 	jalx	5d1adb8 <out_key+0x5d18920>
    1770:	6f777468 	0x6f777468
    1774:	61744b75 	0x61744b75
    1778:	7274566f 	0x7274566f
    177c:	6e6e6567 	0x6e6e6567
    1780:	75747343 	jalx	5d1cd0c <out_key+0x5d1a874>
    1784:	6f6d6d65 	0x6f6d6d65
    1788:	6e63656d 	0x6e63656d
    178c:	656e7441 	0x656e7441
    1790:	64647265 	0x64647265
    1794:	73736174 	0x73736174
    1798:	4d49544c 	0x4d49544c
    179c:	61646965 	0x61646965
    17a0:	73616e64 	0x73616e64
    17a4:	67656e74 	0x67656e74
    17a8:	6c656d65 	0x6c656d65
    17ac:	6e6f6674 	0x6e6f6674
    17b0:	6865636c 	0x6865636c
    17b4:	6173736f 	0x6173736f
    17b8:	66393757 	0x66393757
    17bc:	65617273 	0x65617273
    17c0:	756e7363 	jalx	5b9cd8c <out_key+0x5b9a8f4>
    17c4:	7265656e 	0x7265656e
    17c8:	49664963 	0x49664963
    17cc:	6f756c64 	0x6f756c64
    17d0:	6f666665 	0x6f666665
    17d4:	72796f75 	0x72796f75
    17d8:	6f6e6c79 	0x6f6e6c79
    17dc:	6f6e6574 	0x6f6e6574
    17e0:	6970666f 	0x6970666f
    17e4:	72746865 	0x72746865
    17e8:	66757475 	0x66757475
    17ec:	72657375 	0x72657375
    17f0:	6e736372 	0x6e736372
    17f4:	65656e77 	0x65656e77
    17f8:	6f756c64 	0x6f756c64
    17fc:	62656974 	0x62656974
    1800:	5468656c 	0x5468656c
    1804:	6f6e6774 	0x6f6e6774
    1808:	65726d62 	0x65726d62
    180c:	656e6566 	0x656e6566
    1810:	6974736f 	0x6974736f
    1814:	6673756e 	0x6673756e
    1818:	73637265 	0x73637265
    181c:	656e6861 	0x656e6861
    1820:	76656265 	jalx	9958994 <out_key+0x99564fc>
    1824:	656e7072 	0x656e7072
    1828:	6f766564 	0x6f766564
    182c:	62797363 	0x62797363
    1830:	69656e74 	0x69656e74
    1834:	69737473 	0x69737473
    1838:	77686572 	jalx	da195c8 <out_key+0xda17130>
    183c:	65617374 	0x65617374
    1840:	68657265 	0x68657265
    1844:	73746f66 	0x73746f66
    1848:	6d796164 	0x6d796164
    184c:	76696365 	jalx	9a58d94 <out_key+0x9a568fc>
    1850:	6861736e 	0x6861736e
    1854:	6f626173 	0x6f626173
    1858:	69736d6f 	0x69736d6f
    185c:	72657265 	0x72657265
    1860:	6c696162 	0x6c696162
    1864:	6c657468 	0x6c657468
    1868:	616e6d79 	0x616e6d79
    186c:	6f776e6d 	0x6f776e6d
    1870:	65616e64 	0x65616e64
    1874:	6572696e 	0x6572696e
    1878:	67657870 	0x67657870
    187c:	65726965 	0x65726965
    1880:	6e636549 	0x6e636549
    1884:	77696c6c 	jalx	da5b1b0 <out_key+0xda58d18>
    1888:	64697370 	0x64697370
    188c:	656e7365 	0x656e7365
    1890:	74686973 	jalx	1a1a5cc <out_key+0x1a18134>
    1894:	61647669 	0x61647669
    1898:	63656e6f 	0x63656e6f
    189c:	77456e6a 	jalx	d15b9a8 <out_key+0xd159510>
    18a0:	6f797468 	0x6f797468
    18a4:	65706f77 	0x65706f77
    18a8:	6572616e 	0x6572616e
    18ac:	64626561 	0x64626561
    18b0:	7574796f 	jalx	5d1e5bc <out_key+0x5d1c124>
    18b4:	66796f75 	0x66796f75
    18b8:	72796f75 	0x72796f75
    18bc:	74684f68 	jalx	1a13da0 <out_key+0x1a11908>
    18c0:	6e657665 	0x6e657665
    18c4:	726d696e 	0x726d696e
    18c8:	64596f75 	0x64596f75
    18cc:	77696c6c 	jalx	da5b1b0 <out_key+0xda58d18>
    18d0:	6e6f7475 	0x6e6f7475
    18d4:	6e646572 	0x6e646572
    18d8:	7374616e 	0x7374616e
    18dc:	64746865 	0x64746865
    18e0:	706f7765 	0x706f7765
    18e4:	72616e64 	0x72616e64
    18e8:	62656175 	0x62656175
    18ec:	74796f66 	jalx	1e5bd98 <out_key+0x1e59900>
    18f0:	796f7572 	0x796f7572
    18f4:	796f7574 	0x796f7574
    18f8:	68756e74 	0x68756e74
    18fc:	696c7468 	0x696c7468
    1900:	65797665 	0x65797665
    1904:	66616465 	0x66616465
    1908:	64427574 	0x64427574
    190c:	74727573 	jalx	1c9d5cc <out_key+0x1c9b134>
    1910:	746d6569 	jalx	1b595a4 <out_key+0x1b5710c>
    1914:	6e323079 	0x6e323079
    1918:	65617273 	0x65617273
    191c:	796f756c 	0x796f756c
    1920:	6c6c6f6f 	0x6c6c6f6f
    1924:	6b626163 	0x6b626163
    1928:	6b617470 	0x6b617470
    192c:	686f746f 	0x686f746f
    1930:	736f6679 	0x736f6679
    1934:	6f757273 	0x6f757273
    1938:	656c6661 	0x656c6661
    193c:	6e647265 	0x6e647265
    1940:	63616c6c 	0x63616c6c
    1944:	696e6177 	0x696e6177
    1948:	6179796f 	0x6179796f
    194c:	7563616e 	jalx	58d85b8 <out_key+0x58d6120>
    1950:	74677261 	jalx	19dc984 <out_key+0x19da4ec>
    1954:	73706e6f 	0x73706e6f
    1958:	77686f77 	jalx	da1bddc <out_key+0xda19944>
    195c:	6d756368 	0x6d756368
    1960:	706f7373 	0x706f7373
    1964:	6962696c 	0x6962696c
    1968:	6974796c 	0x6974796c
    196c:	61796265 	0x61796265
    1970:	666f7265 	0x666f7265
    1974:	796f7561 	0x796f7561
    1978:	6e64686f 	0x6e64686f
    197c:	77666162 	jalx	d998588 <out_key+0xd9960f0>
    1980:	756c6f75 	jalx	5b1bdd4 <out_key+0x5b1993c>
    1984:	73796f75 	0x73796f75
    1988:	7265616c 	0x7265616c
    198c:	6c796c6f 	0x6c796c6f
    1990:	6f6b6564 	0x6f6b6564
    1994:	596f7561 	0x596f7561
    1998:	72656e6f 	0x72656e6f
    199c:	74617366 	jalx	185cd98 <out_key+0x185a900>
    19a0:	61746173 	0x61746173
    19a4:	796f7569 	0x796f7569
    19a8:	6d616769 	0x6d616769
    19ac:	6e65446f 	0x6e65446f
    19b0:	6e74776f 	0x6e74776f
    19b4:	72727961 	0x72727961
    19b8:	626f7574 	0x626f7574
    19bc:	74686566 	jalx	1a19598 <out_key+0x1a17100>
    19c0:	75747572 	jalx	5d1d5c8 <out_key+0x5d1b130>
    19c4:	654f7277 	0x654f7277
    19c8:	6f727279 	0x6f727279
    19cc:	4b757274 	c2	0x1757274
    19d0:	566f6e6e 	0x566f6e6e
    19d4:	65677574 	0x65677574
    19d8:	73436f6d 	0x73436f6d
    19dc:	6d656e63 	0x6d656e63
    19e0:	656d656e 	0x656d656e
    19e4:	74416464 	jalx	1059190 <out_key+0x1056cf8>
    19e8:	72657373 	0x72657373
    19ec:	61744d49 	0x61744d49
    19f0:	544c6164 	0x544c6164
    19f4:	69657361 	0x69657361
    19f8:	6e646765 	0x6e646765
    19fc:	6e746c65 	0x6e746c65
    1a00:	6d656e6f 	0x6d656e6f
    1a04:	66746865 	0x66746865
    1a08:	636c6173 	0x636c6173
    1a0c:	736f6639 	0x736f6639
    1a10:	37576561 	ori	s7,k0,0x6561
    1a14:	7273756e 	0x7273756e
    1a18:	73637265 	0x73637265
    1a1c:	656e4966 	0x656e4966
    1a20:	49636f75 	0x49636f75
    1a24:	6c646f66 	0x6c646f66
    1a28:	66657279 	0x66657279
    1a2c:	6f756f6e 	0x6f756f6e
    1a30:	6c796f6e 	0x6c796f6e
    1a34:	65746970 	0x65746970
    1a38:	666f7274 	0x666f7274
    1a3c:	68656675 	0x68656675
    1a40:	74757265 	jalx	1d5c994 <out_key+0x1d5a4fc>
    1a44:	73756e73 	0x73756e73
    1a48:	63726565 	0x63726565
    1a4c:	6e776f75 	0x6e776f75
    1a50:	6c646265 	0x6c646265
    1a54:	69745468 	0x69745468
    1a58:	656c6f6e 	0x656c6f6e
    1a5c:	67746572 	0x67746572
    1a60:	6d62656e 	0x6d62656e
    1a64:	65666974 	0x65666974
    1a68:	736f6673 	0x736f6673
    1a6c:	756e7363 	jalx	5b9cd8c <out_key+0x5b9a8f4>
    1a70:	7265656e 	0x7265656e
    1a74:	68617665 	0x68617665
    1a78:	6265656e 	0x6265656e
    1a7c:	70726f76 	0x70726f76
    1a80:	65646279 	0x65646279
    1a84:	73636965 	0x73636965
    1a88:	6e746973 	0x6e746973
    1a8c:	74737768 	jalx	1cddda0 <out_key+0x1cdb908>
    1a90:	65726561 	0x65726561
    1a94:	73746865 	0x73746865
    1a98:	72657374 	0x72657374
    1a9c:	6f666d79 	0x6f666d79
    1aa0:	61647669 	0x61647669
    1aa4:	63656861 	0x63656861
    1aa8:	736e6f62 	0x736e6f62
    1aac:	61736973 	0x61736973
    1ab0:	6d6f7265 	0x6d6f7265
    1ab4:	72656c69 	0x72656c69
    1ab8:	61626c65 	0x61626c65
    1abc:	7468616e 	jalx	1a185b8 <out_key+0x1a16120>
    1ac0:	6d796f77 	0x6d796f77
    1ac4:	6e6d6561 	0x6e6d6561
    1ac8:	6e646572 	0x6e646572
    1acc:	696e6765 	0x696e6765
    1ad0:	78706572 	0x78706572
    1ad4:	69656e63 	0x69656e63
    1ad8:	65497769 	0x65497769
    1adc:	6c6c6469 	0x6c6c6469
    1ae0:	7370656e 	0x7370656e
    1ae4:	73657468 	0x73657468
    1ae8:	69736164 	0x69736164
    1aec:	76696365 	jalx	9a58d94 <out_key+0x9a568fc>
    1af0:	6e6f7745 	0x6e6f7745
    1af4:	6e6a6f79 	0x6e6a6f79
    1af8:	74686570 	jalx	1a195c0 <out_key+0x1a17128>
    1afc:	6f776572 	0x6f776572
    1b00:	616e6462 	0x616e6462
    1b04:	65617574 	0x65617574
    1b08:	796f6679 	0x796f6679
    1b0c:	6f757279 	0x6f757279
    1b10:	6f757468 	0x6f757468
    1b14:	4f686e65 	c3	0x1686e65
    1b18:	7665726d 	jalx	995c9b4 <out_key+0x995a51c>
    1b1c:	696e6459 	0x696e6459
    1b20:	6f757769 	0x6f757769
    1b24:	6c6c6e6f 	0x6c6c6e6f
    1b28:	74756e64 	jalx	1d5b990 <out_key+0x1d594f8>
    1b2c:	65727374 	0x65727374
    1b30:	616e6474 	0x616e6474
    1b34:	6865706f 	0x6865706f
    1b38:	77657261 	jalx	d95c984 <out_key+0xd95a4ec>
    1b3c:	6e646265 	0x6e646265
    1b40:	61757479 	0x61757479
    1b44:	6f66796f 	0x6f66796f
    1b48:	7572796f 	jalx	5c9e5bc <out_key+0x5c9c124>
    1b4c:	75746875 	jalx	5d1a1d4 <out_key+0x5d17d3c>
    1b50:	6e74696c 	0x6e74696c
    1b54:	74686579 	jalx	1a195e4 <out_key+0x1a1714c>
    1b58:	76656661 	jalx	9959984 <out_key+0x99574ec>
    1b5c:	64656442 	0x64656442
    1b60:	75747472 	jalx	5d1d1c8 <out_key+0x5d1ad30>
    1b64:	7573746d 	jalx	5cdd1b4 <out_key+0x5cdad1c>
    1b68:	65696e32 	0x65696e32
    1b6c:	30796561 	andi	t9,v1,0x6561
    1b70:	7273796f 	0x7273796f
    1b74:	756c6c6c 	jalx	5b1b1b0 <out_key+0x5b18d18>
    1b78:	6f6f6b62 	0x6f6f6b62
    1b7c:	61636b61 	0x61636b61
    1b80:	7470686f 	jalx	1c1a1bc <out_key+0x1c17d24>
    1b84:	746f736f 	jalx	1bdcdbc <out_key+0x1bda924>
    1b88:	66796f75 	0x66796f75
    1b8c:	7273656c 	0x7273656c
    1b90:	66616e64 	0x66616e64
    1b94:	72656361 	0x72656361
    1b98:	6c6c696e 	0x6c6c696e
    1b9c:	61776179 	0x61776179
    1ba0:	796f7563 	0x796f7563
    1ba4:	616e7467 	0x616e7467
    1ba8:	72617370 	0x72617370
    1bac:	6e6f7768 	0x6e6f7768
    1bb0:	6f776d75 	0x6f776d75
    1bb4:	6368706f 	0x6368706f
    1bb8:	73736962 	0x73736962
    1bbc:	696c6974 	0x696c6974
    1bc0:	796c6179 	0x796c6179
    1bc4:	6265666f 	0x6265666f
    1bc8:	7265796f 	0x7265796f
    1bcc:	75616e64 	jalx	585b990 <out_key+0x58594f8>
    1bd0:	686f7766 	0x686f7766
    1bd4:	6162756c 	0x6162756c
    1bd8:	6f757379 	0x6f757379
    1bdc:	6f757265 	0x6f757265
    1be0:	616c6c79 	0x616c6c79
    1be4:	6c6f6f6b 	0x6c6f6f6b
    1be8:	6564596f 	0x6564596f
    1bec:	75617265 	jalx	585c994 <out_key+0x585a4fc>
    1bf0:	6e6f7461 	0x6e6f7461
    1bf4:	73666174 	0x73666174
    1bf8:	6173796f 	0x6173796f
    1bfc:	75696d61 	jalx	5a5b584 <out_key+0x5a590ec>
    1c00:	67696e65 	0x67696e65
    1c04:	446f6e74 	0x446f6e74
    1c08:	776f7272 	jalx	dbdc9c8 <out_key+0xdbda530>
    1c0c:	7961626f 	0x7961626f
    1c10:	75747468 	jalx	5d1d1a0 <out_key+0x5d1ad08>
    1c14:	65667574 	0x65667574
    1c18:	7572654f 	jalx	5c9953c <out_key+0x5c970a4>
    1c1c:	72776f72 	0x72776f72
    1c20:	72796275 	0x72796275
    1c24:	746b6e6f 	jalx	1adb9bc <out_key+0x1ad9524>
    1c28:	77746861 	jalx	dd1a184 <out_key+0xdd17cec>
    1c2c:	744b7572 	jalx	12dd5c8 <out_key+0x12db130>
    1c30:	74566f6e 	jalx	159bdb8 <out_key+0x1599920>
    1c34:	6e656775 	0x6e656775
    1c38:	4b757274 	c2	0x1757274
    1c3c:	566f6e6e 	0x566f6e6e
    1c40:	65677574 	0x65677574
    1c44:	73436f6d 	0x73436f6d
    1c48:	6d656e63 	0x6d656e63
    1c4c:	656d656e 	0x656d656e
    1c50:	74416464 	jalx	1059190 <out_key+0x1056cf8>
    1c54:	72657373 	0x72657373
    1c58:	61744d49 	0x61744d49
    1c5c:	544c6164 	0x544c6164
    1c60:	69657361 	0x69657361
    1c64:	6e646765 	0x6e646765
    1c68:	6e746c65 	0x6e746c65
    1c6c:	6d656e6f 	0x6d656e6f
    1c70:	66746865 	0x66746865
    1c74:	636c6173 	0x636c6173
    1c78:	736f6639 	0x736f6639
    1c7c:	37576561 	ori	s7,k0,0x6561
    1c80:	7273756e 	0x7273756e
    1c84:	73637265 	0x73637265
    1c88:	656e4966 	0x656e4966
    1c8c:	49636f75 	0x49636f75
    1c90:	6c646f66 	0x6c646f66
    1c94:	66657279 	0x66657279
    1c98:	6f756f6e 	0x6f756f6e
    1c9c:	6c796f6e 	0x6c796f6e
    1ca0:	65746970 	0x65746970
    1ca4:	666f7274 	0x666f7274
    1ca8:	68656675 	0x68656675
    1cac:	74757265 	jalx	1d5c994 <out_key+0x1d5a4fc>
    1cb0:	73756e73 	0x73756e73
    1cb4:	63726565 	0x63726565
    1cb8:	6e776f75 	0x6e776f75
    1cbc:	6c646265 	0x6c646265
    1cc0:	69745468 	0x69745468
    1cc4:	656c6f6e 	0x656c6f6e
    1cc8:	67746572 	0x67746572
    1ccc:	6d62656e 	0x6d62656e
    1cd0:	65666974 	0x65666974
    1cd4:	736f6673 	0x736f6673
    1cd8:	756e7363 	jalx	5b9cd8c <out_key+0x5b9a8f4>
    1cdc:	7265656e 	0x7265656e
    1ce0:	68617665 	0x68617665
    1ce4:	6265656e 	0x6265656e
    1ce8:	70726f76 	0x70726f76
    1cec:	65646279 	0x65646279
    1cf0:	73636965 	0x73636965
    1cf4:	6e746973 	0x6e746973
    1cf8:	74737768 	jalx	1cddda0 <out_key+0x1cdb908>
    1cfc:	65726561 	0x65726561
    1d00:	73746865 	0x73746865
    1d04:	72657374 	0x72657374
    1d08:	6f666d79 	0x6f666d79
    1d0c:	61647669 	0x61647669
    1d10:	63656861 	0x63656861
    1d14:	736e6f62 	0x736e6f62
    1d18:	61736973 	0x61736973
    1d1c:	6d6f7265 	0x6d6f7265
    1d20:	72656c69 	0x72656c69
    1d24:	61626c65 	0x61626c65
    1d28:	7468616e 	jalx	1a185b8 <out_key+0x1a16120>
    1d2c:	6d796f77 	0x6d796f77
    1d30:	6e6d6561 	0x6e6d6561
    1d34:	6e646572 	0x6e646572
    1d38:	696e6765 	0x696e6765
    1d3c:	78706572 	0x78706572
    1d40:	69656e63 	0x69656e63
    1d44:	65497769 	0x65497769
    1d48:	6c6c6469 	0x6c6c6469
    1d4c:	7370656e 	0x7370656e
    1d50:	73657468 	0x73657468
    1d54:	69736164 	0x69736164
    1d58:	76696365 	jalx	9a58d94 <out_key+0x9a568fc>
    1d5c:	6e6f7745 	0x6e6f7745
    1d60:	6e6a6f79 	0x6e6a6f79
    1d64:	74686570 	jalx	1a195c0 <out_key+0x1a17128>
    1d68:	6f776572 	0x6f776572
    1d6c:	616e6462 	0x616e6462
    1d70:	65617574 	0x65617574
    1d74:	796f6679 	0x796f6679
    1d78:	6f757279 	0x6f757279
    1d7c:	6f757468 	0x6f757468
    1d80:	4f686e65 	c3	0x1686e65
    1d84:	7665726d 	jalx	995c9b4 <out_key+0x995a51c>
    1d88:	696e6459 	0x696e6459
    1d8c:	6f757769 	0x6f757769
    1d90:	6c6c6e6f 	0x6c6c6e6f
    1d94:	74756e64 	jalx	1d5b990 <out_key+0x1d594f8>
    1d98:	65727374 	0x65727374
    1d9c:	616e6474 	0x616e6474
    1da0:	6865706f 	0x6865706f
    1da4:	77657261 	jalx	d95c984 <out_key+0xd95a4ec>
    1da8:	6e646265 	0x6e646265
    1dac:	61757479 	0x61757479
    1db0:	6f66796f 	0x6f66796f
    1db4:	7572796f 	jalx	5c9e5bc <out_key+0x5c9c124>
    1db8:	75746875 	jalx	5d1a1d4 <out_key+0x5d17d3c>
    1dbc:	6e74696c 	0x6e74696c
    1dc0:	74686579 	jalx	1a195e4 <out_key+0x1a1714c>
    1dc4:	76656661 	jalx	9959984 <out_key+0x99574ec>
    1dc8:	64656442 	0x64656442
    1dcc:	75747472 	jalx	5d1d1c8 <out_key+0x5d1ad30>
    1dd0:	7573746d 	jalx	5cdd1b4 <out_key+0x5cdad1c>
    1dd4:	65696e32 	0x65696e32
    1dd8:	30796561 	andi	t9,v1,0x6561
    1ddc:	7273796f 	0x7273796f
    1de0:	756c6c6c 	jalx	5b1b1b0 <out_key+0x5b18d18>
    1de4:	6f6f6b62 	0x6f6f6b62
    1de8:	61636b61 	0x61636b61
    1dec:	7470686f 	jalx	1c1a1bc <out_key+0x1c17d24>
    1df0:	746f736f 	jalx	1bdcdbc <out_key+0x1bda924>
    1df4:	66796f75 	0x66796f75
    1df8:	7273656c 	0x7273656c
    1dfc:	66616e64 	0x66616e64
    1e00:	72656361 	0x72656361
    1e04:	6c6c696e 	0x6c6c696e
    1e08:	61776179 	0x61776179
    1e0c:	796f7563 	0x796f7563
    1e10:	616e7467 	0x616e7467
    1e14:	72617370 	0x72617370
    1e18:	6e6f7768 	0x6e6f7768
    1e1c:	6f776d75 	0x6f776d75
    1e20:	6368706f 	0x6368706f
    1e24:	73736962 	0x73736962
    1e28:	696c6974 	0x696c6974
    1e2c:	796c6179 	0x796c6179
    1e30:	6265666f 	0x6265666f
    1e34:	7265796f 	0x7265796f
    1e38:	75616e64 	jalx	585b990 <out_key+0x58594f8>
    1e3c:	686f7766 	0x686f7766
    1e40:	6162756c 	0x6162756c
    1e44:	6f757379 	0x6f757379
    1e48:	6f757265 	0x6f757265
    1e4c:	616c6c79 	0x616c6c79
    1e50:	6c6f6f6b 	0x6c6f6f6b
    1e54:	6564596f 	0x6564596f
    1e58:	75617265 	jalx	585c994 <out_key+0x585a4fc>
    1e5c:	6e6f7461 	0x6e6f7461
    1e60:	73666174 	0x73666174
    1e64:	6173796f 	0x6173796f
    1e68:	75696d61 	jalx	5a5b584 <out_key+0x5a590ec>
    1e6c:	67696e65 	0x67696e65
    1e70:	446f6e74 	0x446f6e74
    1e74:	776f7272 	jalx	dbdc9c8 <out_key+0xdbda530>
    1e78:	7961626f 	0x7961626f
    1e7c:	75747468 	jalx	5d1d1a0 <out_key+0x5d1ad08>
    1e80:	65667574 	0x65667574
    1e84:	7572654f 	jalx	5c9953c <out_key+0x5c970a4>
    1e88:	72776f72 	0x72776f72
    1e8c:	72796275 	0x72796275
    1e90:	746b6e6f 	jalx	1adb9bc <out_key+0x1ad9524>
    1e94:	77746861 	jalx	dd1a184 <out_key+0xdd17cec>
    1e98:	744b7572 	jalx	12dd5c8 <out_key+0x12db130>
    1e9c:	74566f6e 	jalx	159bdb8 <out_key+0x1599920>
    1ea0:	6e656775 	0x6e656775
    1ea4:	7473436f 	jalx	1cd0dbc <out_key+0x1cce924>
    1ea8:	6d6d656e 	0x6d6d656e
    1eac:	63656d65 	0x63656d65
    1eb0:	6e744164 	0x6e744164
    1eb4:	64726573 	0x64726573
    1eb8:	7361744d 	0x7361744d
    1ebc:	49544c61 	0x49544c61
    1ec0:	64696573 	0x64696573
    1ec4:	616e6467 	0x616e6467
    1ec8:	656e746c 	0x656e746c
    1ecc:	656d656e 	0x656d656e
    1ed0:	6f667468 	0x6f667468
    1ed4:	65636c61 	0x65636c61
    1ed8:	73736f66 	0x73736f66
    1edc:	39375765 	xori	s7,t1,0x5765
    1ee0:	61727375 	0x61727375
    1ee4:	6e736372 	0x6e736372
    1ee8:	65656e49 	0x65656e49
    1eec:	6649636f 	0x6649636f
    1ef0:	756c646f 	jalx	5b191bc <out_key+0x5b16d24>
    1ef4:	66666572 	0x66666572
    1ef8:	796f756f 	0x796f756f
    1efc:	6e6c796f 	0x6e6c796f
    1f00:	6e657469 	0x6e657469
    1f04:	70666f72 	0x70666f72
    1f08:	74686566 	jalx	1a19598 <out_key+0x1a17100>
    1f0c:	75747572 	jalx	5d1d5c8 <out_key+0x5d1b130>
    1f10:	6573756e 	0x6573756e
    1f14:	73637265 	0x73637265
    1f18:	656e776f 	0x656e776f
    1f1c:	756c6462 	jalx	5b19188 <out_key+0x5b16cf0>
    1f20:	65697454 	0x65697454
    1f24:	68656c6f 	0x68656c6f
    1f28:	6e677465 	0x6e677465
    1f2c:	726d6265 	0x726d6265
    1f30:	6e656669 	0x6e656669
    1f34:	74736f66 	jalx	1cdbd98 <out_key+0x1cd9900>
    1f38:	73756e73 	0x73756e73
    1f3c:	63726565 	0x63726565
    1f40:	6e686176 	0x6e686176
    1f44:	65626565 	0x65626565
    1f48:	6e70726f 	0x6e70726f
    1f4c:	76656462 	jalx	9959188 <out_key+0x9956cf0>
    1f50:	79736369 	0x79736369
    1f54:	656e7469 	0x656e7469
    1f58:	73747377 	0x73747377
    1f5c:	68657265 	0x68657265
    1f60:	61737468 	0x61737468
    1f64:	65726573 	0x65726573
    1f68:	746f666d 	jalx	1bd99b4 <out_key+0x1bd751c>
    1f6c:	79616476 	0x79616476
    1f70:	69636568 	0x69636568
    1f74:	61736e6f 	0x61736e6f
    1f78:	62617369 	0x62617369
    1f7c:	736d6f72 	0x736d6f72
    1f80:	6572656c 	0x6572656c
    1f84:	6961626c 	0x6961626c
    1f88:	65746861 	0x65746861
    1f8c:	6e6d796f 	0x6e6d796f
    1f90:	776e6d65 	jalx	db9b594 <out_key+0xdb990fc>
    1f94:	616e6465 	0x616e6465
    1f98:	72696e67 	0x72696e67
    1f9c:	65787065 	0x65787065
    1fa0:	7269656e 	0x7269656e
    1fa4:	63654977 	0x63654977
    1fa8:	696c6c64 	0x696c6c64
    1fac:	69737065 	0x69737065
    1fb0:	6e736574 	0x6e736574
    1fb4:	68697361 	0x68697361
    1fb8:	64766963 	0x64766963
    1fbc:	656e6f77 	0x656e6f77
    1fc0:	456e6a6f 	0x456e6a6f
    1fc4:	79746865 	0x79746865
    1fc8:	706f7765 	0x706f7765
    1fcc:	72616e64 	0x72616e64
    1fd0:	62656175 	0x62656175
    1fd4:	74796f66 	jalx	1e5bd98 <out_key+0x1e59900>
    1fd8:	796f7572 	0x796f7572
    1fdc:	796f7574 	0x796f7574
    1fe0:	684f686e 	0x684f686e
    1fe4:	65766572 	0x65766572
    1fe8:	6d696e64 	0x6d696e64
    1fec:	596f7577 	0x596f7577
    1ff0:	696c6c6e 	0x696c6c6e
    1ff4:	6f74756e 	0x6f74756e
    1ff8:	64657273 	0x64657273
    1ffc:	74616e64 	jalx	185b990 <out_key+0x18594f8>
    2000:	74686570 	jalx	1a195c0 <out_key+0x1a17128>
    2004:	6f776572 	0x6f776572
    2008:	616e6462 	0x616e6462
    200c:	65617574 	0x65617574
    2010:	796f6679 	0x796f6679
    2014:	6f757279 	0x6f757279
    2018:	6f757468 	0x6f757468
    201c:	756e7469 	jalx	5b9d1a4 <out_key+0x5b9ad0c>
    2020:	6c746865 	0x6c746865
    2024:	79766566 	0x79766566
    2028:	61646564 	0x61646564
    202c:	42757474 	c0	0x757474
    2030:	72757374 	0x72757374
    2034:	6d65696e 	0x6d65696e
    2038:	32307965 	andi	s0,s1,0x7965
    203c:	61727379 	0x61727379
    2040:	6f756c6c 	0x6f756c6c
    2044:	6c6f6f6b 	0x6c6f6f6b
    2048:	6261636b 	0x6261636b
    204c:	61747068 	0x61747068
    2050:	6f746f73 	0x6f746f73
    2054:	6f66796f 	0x6f66796f
    2058:	75727365 	jalx	5c9cd94 <out_key+0x5c9a8fc>
    205c:	6c66616e 	0x6c66616e
    2060:	64726563 	0x64726563
    2064:	616c6c69 	0x616c6c69
    2068:	6e617761 	0x6e617761
    206c:	79796f75 	0x79796f75
    2070:	63616e74 	0x63616e74
    2074:	67726173 	0x67726173
    2078:	706e6f77 	0x706e6f77
    207c:	686f776d 	0x686f776d
    2080:	75636870 	jalx	58da1c0 <out_key+0x58d7d28>
    2084:	6f737369 	0x6f737369
    2088:	62696c69 	0x62696c69
    208c:	74796c61 	jalx	1e5b184 <out_key+0x1e58cec>
    2090:	79626566 	0x79626566
    2094:	6f726579 	0x6f726579
    2098:	6f75616e 	0x6f75616e
    209c:	64686f77 	0x64686f77
    20a0:	66616275 	0x66616275
    20a4:	6c6f7573 	0x6c6f7573
    20a8:	796f7572 	0x796f7572
    20ac:	65616c6c 	0x65616c6c
    20b0:	796c6f6f 	0x796c6f6f
    20b4:	6b656459 	0x6b656459
    20b8:	6f756172 	0x6f756172
    20bc:	656e6f74 	0x656e6f74
    20c0:	61736661 	0x61736661
    20c4:	74617379 	jalx	185cde4 <out_key+0x185a94c>
    20c8:	6f75696d 	0x6f75696d
    20cc:	6167696e 	0x6167696e
    20d0:	65446f6e 	0x65446f6e
    20d4:	74776f72 	jalx	1ddbdc8 <out_key+0x1dd9930>
    20d8:	72796162 	0x72796162
    20dc:	6f757474 	0x6f757474
    20e0:	68656675 	0x68656675
    20e4:	74757265 	jalx	1d5c994 <out_key+0x1d5a4fc>
    20e8:	4f72776f 	c3	0x172776f
    20ec:	72727962 	0x72727962
    20f0:	75746b6e 	jalx	5d1adb8 <out_key+0x5d18920>
    20f4:	6f777468 	0x6f777468
    20f8:	61744b75 	0x61744b75
    20fc:	7274566f 	0x7274566f
    2100:	6e6e6567 	0x6e6e6567
    2104:	75747343 	jalx	5d1cd0c <out_key+0x5d1a874>
    2108:	6f6d6d65 	0x6f6d6d65
    210c:	6e63656d 	0x6e63656d
    2110:	656e7441 	0x656e7441
    2114:	64647265 	0x64647265
    2118:	73736174 	0x73736174
    211c:	4d49544c 	0x4d49544c
    2120:	61646965 	0x61646965
    2124:	73616e64 	0x73616e64
    2128:	67656e74 	0x67656e74
    212c:	6c656d65 	0x6c656d65
    2130:	6e6f6674 	0x6e6f6674
    2134:	6865636c 	0x6865636c
    2138:	6173736f 	0x6173736f
    213c:	66393757 	0x66393757
    2140:	65617273 	0x65617273
    2144:	756e7363 	jalx	5b9cd8c <out_key+0x5b9a8f4>
    2148:	7265656e 	0x7265656e
    214c:	49664963 	0x49664963
    2150:	6f756c64 	0x6f756c64
    2154:	6f666665 	0x6f666665
    2158:	72796f75 	0x72796f75
    215c:	6f6e6c79 	0x6f6e6c79
    2160:	6f6e6574 	0x6f6e6574
    2164:	6970666f 	0x6970666f
    2168:	72746865 	0x72746865
    216c:	66757475 	0x66757475
    2170:	72657375 	0x72657375
    2174:	6e736372 	0x6e736372
    2178:	65656e77 	0x65656e77
    217c:	6f756c64 	0x6f756c64
    2180:	62656974 	0x62656974
    2184:	5468656c 	0x5468656c
    2188:	6f6e6774 	0x6f6e6774
    218c:	65726d62 	0x65726d62
    2190:	656e6566 	0x656e6566
    2194:	6974736f 	0x6974736f
    2198:	6673756e 	0x6673756e
    219c:	73637265 	0x73637265
    21a0:	656e6861 	0x656e6861
    21a4:	76656265 	jalx	9958994 <out_key+0x99564fc>
    21a8:	656e7072 	0x656e7072
    21ac:	6f766564 	0x6f766564
    21b0:	62797363 	0x62797363
    21b4:	69656e74 	0x69656e74
    21b8:	69737473 	0x69737473
    21bc:	77686572 	jalx	da195c8 <out_key+0xda17130>
    21c0:	65617374 	0x65617374
    21c4:	68657265 	0x68657265
    21c8:	73746f66 	0x73746f66
    21cc:	6d796164 	0x6d796164
    21d0:	76696365 	jalx	9a58d94 <out_key+0x9a568fc>
    21d4:	6861736e 	0x6861736e
    21d8:	6f626173 	0x6f626173
    21dc:	69736d6f 	0x69736d6f
    21e0:	72657265 	0x72657265
    21e4:	6c696162 	0x6c696162
    21e8:	6c657468 	0x6c657468
    21ec:	616e6d79 	0x616e6d79
    21f0:	6f776e6d 	0x6f776e6d
    21f4:	65616e64 	0x65616e64
    21f8:	6572696e 	0x6572696e
    21fc:	67657870 	0x67657870
    2200:	65726965 	0x65726965
    2204:	6e636549 	0x6e636549
    2208:	77696c6c 	jalx	da5b1b0 <out_key+0xda58d18>
    220c:	64697370 	0x64697370
    2210:	656e7365 	0x656e7365
    2214:	74686973 	jalx	1a1a5cc <out_key+0x1a18134>
    2218:	61647669 	0x61647669
    221c:	63656e6f 	0x63656e6f
    2220:	77456e6a 	jalx	d15b9a8 <out_key+0xd159510>
    2224:	6f797468 	0x6f797468
    2228:	65706f77 	0x65706f77
    222c:	6572616e 	0x6572616e
    2230:	64626561 	0x64626561
    2234:	7574796f 	jalx	5d1e5bc <out_key+0x5d1c124>
    2238:	66796f75 	0x66796f75
    223c:	72796f75 	0x72796f75
    2240:	74684f68 	jalx	1a13da0 <out_key+0x1a11908>
    2244:	6e657665 	0x6e657665
    2248:	726d696e 	0x726d696e
    224c:	64596f75 	0x64596f75
    2250:	77696c6c 	jalx	da5b1b0 <out_key+0xda58d18>
    2254:	6e6f7475 	0x6e6f7475
    2258:	6e646572 	0x6e646572
    225c:	7374616e 	0x7374616e
    2260:	64746865 	0x64746865
    2264:	706f7765 	0x706f7765
    2268:	72616e64 	0x72616e64
    226c:	62656175 	0x62656175
    2270:	74796f66 	jalx	1e5bd98 <out_key+0x1e59900>
    2274:	796f7572 	0x796f7572
    2278:	796f7574 	0x796f7574
    227c:	68756e74 	0x68756e74
    2280:	696c7468 	0x696c7468
    2284:	65797665 	0x65797665
    2288:	66616465 	0x66616465
    228c:	64427574 	0x64427574
    2290:	74727573 	jalx	1c9d5cc <out_key+0x1c9b134>
    2294:	746d6569 	jalx	1b595a4 <out_key+0x1b5710c>
    2298:	6e323079 	0x6e323079
    229c:	65617273 	0x65617273
    22a0:	796f756c 	0x796f756c
    22a4:	6c6c6f6f 	0x6c6c6f6f
    22a8:	6b626163 	0x6b626163
    22ac:	6b617470 	0x6b617470
    22b0:	686f746f 	0x686f746f
    22b4:	736f6679 	0x736f6679
    22b8:	6f757273 	0x6f757273
    22bc:	656c6661 	0x656c6661
    22c0:	6e647265 	0x6e647265
    22c4:	63616c6c 	0x63616c6c
    22c8:	696e6177 	0x696e6177
    22cc:	6179796f 	0x6179796f
    22d0:	7563616e 	jalx	58d85b8 <out_key+0x58d6120>
    22d4:	74677261 	jalx	19dc984 <out_key+0x19da4ec>
    22d8:	73706e6f 	0x73706e6f
    22dc:	77686f77 	jalx	da1bddc <out_key+0xda19944>
    22e0:	6d756368 	0x6d756368
    22e4:	706f7373 	0x706f7373
    22e8:	6962696c 	0x6962696c
    22ec:	6974796c 	0x6974796c
    22f0:	61796265 	0x61796265
    22f4:	666f7265 	0x666f7265
    22f8:	796f7561 	0x796f7561
    22fc:	6e64686f 	0x6e64686f
    2300:	77666162 	jalx	d998588 <out_key+0xd9960f0>
    2304:	756c6f75 	jalx	5b1bdd4 <out_key+0x5b1993c>
    2308:	73796f75 	0x73796f75
    230c:	7265616c 	0x7265616c
    2310:	6c796c6f 	0x6c796c6f
    2314:	6f6b6564 	0x6f6b6564
    2318:	596f7561 	0x596f7561
    231c:	72656e6f 	0x72656e6f
    2320:	74617366 	jalx	185cd98 <out_key+0x185a900>
    2324:	61746173 	0x61746173
    2328:	796f7569 	0x796f7569
    232c:	6d616769 	0x6d616769
    2330:	6e65446f 	0x6e65446f
    2334:	6e74776f 	0x6e74776f
    2338:	72727961 	0x72727961
    233c:	626f7574 	0x626f7574
    2340:	74686566 	jalx	1a19598 <out_key+0x1a17100>
    2344:	75747572 	jalx	5d1d5c8 <out_key+0x5d1b130>
    2348:	654f7277 	0x654f7277
    234c:	6f727279 	0x6f727279
    2350:	6275746b 	0x6275746b
    2354:	6e6f7774 	0x6e6f7774
    2358:	68617474 	0x68617474
    235c:	73436f6d 	0x73436f6d
    2360:	6d656e63 	0x6d656e63
    2364:	656d656e 	0x656d656e
    2368:	74416464 	jalx	1059190 <out_key+0x1056cf8>
    236c:	72657373 	0x72657373
    2370:	61744d49 	0x61744d49
    2374:	544c6164 	0x544c6164
    2378:	69657361 	0x69657361
    237c:	6e646765 	0x6e646765
    2380:	6e746c65 	0x6e746c65
    2384:	6d656e6f 	0x6d656e6f
    2388:	66746865 	0x66746865
    238c:	636c6173 	0x636c6173
    2390:	736f6639 	0x736f6639
    2394:	37576561 	ori	s7,k0,0x6561
    2398:	7273756e 	0x7273756e
    239c:	73637265 	0x73637265
    23a0:	656e4966 	0x656e4966
    23a4:	49636f75 	0x49636f75
    23a8:	6c646f66 	0x6c646f66
    23ac:	66657279 	0x66657279
    23b0:	6f756f6e 	0x6f756f6e
    23b4:	6c796f6e 	0x6c796f6e
    23b8:	65746970 	0x65746970
    23bc:	666f7274 	0x666f7274
    23c0:	68656675 	0x68656675
    23c4:	74757265 	jalx	1d5c994 <out_key+0x1d5a4fc>
    23c8:	4b757274 	c2	0x1757274
    23cc:	566f6e6e 	0x566f6e6e
    23d0:	65677574 	0x65677574
    23d4:	73436f6d 	0x73436f6d
    23d8:	6d656e63 	0x6d656e63
    23dc:	656d656e 	0x656d656e
    23e0:	74416464 	jalx	1059190 <out_key+0x1056cf8>
    23e4:	72657373 	0x72657373
    23e8:	61744d49 	0x61744d49
    23ec:	544c6164 	0x544c6164
    23f0:	69657361 	0x69657361
    23f4:	6e646765 	0x6e646765
    23f8:	6e746c65 	0x6e746c65
    23fc:	6d656e6f 	0x6d656e6f
    2400:	66746865 	0x66746865
    2404:	636c6173 	0x636c6173
    2408:	736f6639 	0x736f6639
    240c:	37576561 	ori	s7,k0,0x6561
    2410:	7273756e 	0x7273756e
    2414:	73637265 	0x73637265
    2418:	656e4966 	0x656e4966
    241c:	49636f75 	0x49636f75
    2420:	6c646f66 	0x6c646f66
    2424:	66657279 	0x66657279
    2428:	6f756f6e 	0x6f756f6e
    242c:	6c796f6e 	0x6c796f6e
    2430:	65746970 	0x65746970
    2434:	666f7274 	0x666f7274
    2438:	68656675 	0x68656675
    243c:	74757265 	jalx	1d5c994 <out_key+0x1d5a4fc>
    2440:	73756e73 	0x73756e73
    2444:	63726565 	0x63726565
    2448:	6e776f75 	0x6e776f75
    244c:	6c646265 	0x6c646265
    2450:	69745468 	0x69745468
    2454:	656c6f6e 	0x656c6f6e
    2458:	67746572 	0x67746572
    245c:	6d62656e 	0x6d62656e
    2460:	65666974 	0x65666974
    2464:	736f6673 	0x736f6673
    2468:	756e7363 	jalx	5b9cd8c <out_key+0x5b9a8f4>
    246c:	7265656e 	0x7265656e
    2470:	68617665 	0x68617665
    2474:	6265656e 	0x6265656e
    2478:	70726f76 	0x70726f76
    247c:	65646279 	0x65646279
    2480:	73636965 	0x73636965
    2484:	6e746973 	0x6e746973
    2488:	74737768 	jalx	1cddda0 <out_key+0x1cdb908>
    248c:	65726561 	0x65726561
    2490:	73746865 	0x73746865
    2494:	72657374 	0x72657374

00002498 <out_key>:
    2498:	058ce531 	0x58ce531
    249c:	37f7b316 	ori	s7,ra,0xb316
    24a0:	ea74c569 	swc2	$20,-14999(s3)
    24a4:	68fa1e6a 	0x68fa1e6a
    24a8:	fd7c2969 	0xfd7c2969
    24ac:	effcbdef 	swc3	$28,-16913(ra)
    24b0:	b63fbb8c 	0xb63fbb8c
    24b4:	effd8ed8 	swc3	$29,-28968(ra)
    24b8:	1a89aae1 	0x1a89aae1
    24bc:	34f80dad 	ori	t8,a3,0xdad
    24c0:	4d34f943 	0x4d34f943
    24c4:	c2f6cf05 	lwc0	$22,-12539(s7)
    24c8:	4d11aa18 	0x4d11aa18
    24cc:	2148fc09 	addi	t0,t2,-1015
    24d0:	1c072190 	0x1c072190
    24d4:	397dfa8f 	xori	sp,t3,0xfa8f
    24d8:	3057cbc1 	andi	s7,v0,0xcbc1
    24dc:	cdcbcfca 	lwc3	$11,-12342(t6)
    24e0:	d6873813 	0xd6873813
    24e4:	4cfb647a 	0x4cfb647a
    24e8:	8d8767d2 	lw	a3,26578(t4)
    24ec:	ad4f6d10 	sw	t7,27920(t2)
    24f0:	cc9b020c 	lwc3	$27,524(a0)
    24f4:	237af742 	addi	k0,k1,-2238
    24f8:	d41eb7cf 	0xd41eb7cf
    24fc:	8ec9ff31 	lw	t1,-207(s6)
    2500:	e5d138d5 	swc1	$f17,14549(t6)
    2504:	abe8b57a 	swl	t0,-19078(ra)
    2508:	3e2a4b35 	0x3e2a4b35
    250c:	88ea032c 	lwl	t2,812(a3)
    2510:	120886a0 	beq	s0,t0,fffe3f94 <out_key+0xfffe1afc>
    2514:	c1de5c97 	lwc0	$30,23703(t6)
    2518:	5dee4c43 	0x5dee4c43
    251c:	ba911db8 	swr	s1,7608(s4)
    2520:	d6adb231 	0xd6adb231
    2524:	29fb80b9 	slti	k1,t7,-32583
    2528:	bf3170df 	0xbf3170df
    252c:	fc55db5f 	0xfc55db5f
    2530:	4468d203 	0x4468d203
    2534:	13377f4c 	beq	t9,s7,22268 <out_key+0x1fdd0>
    2538:	4a0cb416 	c2	0xcb416
    253c:	7cfc2eaa 	0x7cfc2eaa
    2540:	370037ca 	ori	zero,t8,0x37ca
    2544:	90e8b3c8 	lbu	t0,-19512(a3)
    2548:	c9ce25db 	lwc2	$14,9691(t6)
    254c:	c3624d9a 	lwc0	$2,19866(k1)
    2550:	9d1627a9 	0x9d1627a9
    2554:	4257cc96 	c0	0x57cc96
    2558:	1951d691 	0x1951d691
    255c:	a39aa6dc 	sb	k0,-22820(gp)
    2560:	1a5d2a23 	0x1a5d2a23
    2564:	018fb285 	0x18fb285
    2568:	030b35b8 	0x30b35b8
    256c:	088fcfe6 	j	23f3f98 <out_key+0x23f1b00>
    2570:	2bbc4738 	slti	gp,sp,18232
    2574:	38f1e67e 	xori	s1,a3,0xe67e
    2578:	b465867a 	0xb465867a
    257c:	abd9addd 	swl	t9,-21027(s8)
    2580:	382ea6f0 	xori	t6,at,0xa6f0
    2584:	9f1db5e4 	0x9f1db5e4
    2588:	77f0d00a 	jalx	fc34028 <out_key+0xfc31b90>
    258c:	bca40139 	0xbca40139
    2590:	4a0f098a 	c2	0xf098a
    2594:	52fb95f6 	0x52fb95f6
    2598:	391c46f3 	xori	gp,t0,0x46f3
    259c:	a890c26b 	swl	s0,-15765(a0)
    25a0:	d57067ba 	0xd57067ba
    25a4:	af3bbbfa 	sw	k1,-17414(t9)
    25a8:	5aef49e6 	0x5aef49e6
    25ac:	85adc35c 	lh	t5,-15524(t5)
    25b0:	d38ea3e2 	0xd38ea3e2
    25b4:	b8ed7339 	swr	t5,29497(a3)
    25b8:	10112bbc 	beq	zero,s1,d4ac <out_key+0xb014>
    25bc:	ba85a532 	swr	a1,-23246(s4)
    25c0:	c3134424 	lwc0	$19,17444(t8)
    25c4:	99b20f34 	lwr	s2,3892(t5)
    25c8:	55347b5d 	0x55347b5d
    25cc:	7d56248a 	0x7d56248a
    25d0:	353ba1a1 	ori	k1,t1,0xa1a1
    25d4:	1ab2cbe4 	0x1ab2cbe4
    25d8:	1b258c43 	0x1b258c43
    25dc:	ec07b658 	swc3	$7,-18856(zero)
    25e0:	478be416 	c1	0x18be416
    25e4:	0f93dc12 	jal	e4f7048 <out_key+0xe4f4bb0>
    25e8:	846f0df9 	lh	t7,3577(v1)
    25ec:	28016f05 	slti	at,zero,28421
    25f0:	8c266b06 	lw	a2,27398(at)
    25f4:	f9e68247 	0xf9e68247
    25f8:	b2512728 	0xb2512728
    25fc:	1cd9d876 	0x1cd9d876
    2600:	9fe4d079 	0x9fe4d079
    2604:	0a38690b 	j	8e1a42c <out_key+0x8e17f94>
    2608:	01a76940 	0x1a76940
    260c:	d12c56bf 	0xd12c56bf
    2610:	edfe6519 	swc3	$30,25881(t7)
    2614:	7ea12536 	0x7ea12536
    2618:	0c579c96 	jal	15e7258 <out_key+0x15e4dc0>
    261c:	9b453470 	lwr	a1,13424(k0)
    2620:	ea8f9529 	swc2	$15,-27351(s4)
    2624:	0f2dd3a5 	jal	cb74e94 <out_key+0xcb729fc>
    2628:	bda289a6 	0xbda289a6
    262c:	bcaf80e0 	0xbcaf80e0
    2630:	209980be 	addi	t9,a0,-32578
    2634:	a9827fbf 	swl	v0,32703(t4)
    2638:	eedf929b 	swc3	$31,-28005(s6)
    263c:	b18eb04e 	0xb18eb04e
    2640:	e534608d 	swc1	$f20,24717(t1)
    2644:	77df240a 	jalx	f7c9028 <out_key+0xf7c6b90>
    2648:	180ff580 	0x180ff580
    264c:	07c46a64 	0x7c46a64
    2650:	1e203f84 	bgtz	s1,12464 <out_key+0xffcc>
    2654:	5885fac3 	0x5885fac3
    2658:	89225cdb 	lwl	v0,23771(t1)
    265c:	147551d8 	bne	v1,s5,16dc0 <out_key+0x14928>
    2660:	b574f14e 	0xb574f14e
    2664:	83b2228a 	lb	s2,8842(sp)
    2668:	ce0a9033 	lwc3	$10,-28621(s0)
    266c:	d26c6f7a 	0xd26c6f7a
    2670:	7431d598 	jalx	c75660 <out_key+0xc731c8>
    2674:	e8e414f5 	swc2	$4,5365(a3)
    2678:	7ad4e1ad 	0x7ad4e1ad
    267c:	be98153d 	0xbe98153d
    2680:	3db3ad47 	0x3db3ad47
    2684:	6e2607c6 	0x6e2607c6
    2688:	9d99cf57 	0x9d99cf57
    268c:	112a2ad7 	beq	t1,t2,d1ec <out_key+0xad54>
    2690:	12d05aac 	beq	s6,s0,19144 <out_key+0x16cac>
    2694:	9d172e25 	0x9d172e25
    2698:	a6da4119 	sh	k0,16665(s6)
    269c:	88ad5595 	lwl	t5,21909(a1)
    26a0:	693614da 	0x693614da
    26a4:	0641b8ef 	bgez	s2,ffff0a64 <out_key+0xfffee5cc>
    26a8:	2e269d44 	sltiu	a2,s1,-25276
    26ac:	f0e475e0 	0xf0e475e0
    26b0:	13990322 	beq	gp,t9,333c <out_key+0xea4>
    26b4:	e92f3967 	swc2	$15,14695(t1)
    26b8:	4f11d0df 	c3	0x111d0df
    26bc:	5c1e6f7f 	0x5c1e6f7f
    26c0:	3dcdd4e8 	0x3dcdd4e8
    26c4:	05cf6b9e 	0x5cf6b9e
    26c8:	51c08743 	0x51c08743
    26cc:	4b3c7644 	c2	0x13c7644
    26d0:	331ec8b0 	andi	s8,t8,0xc8b0
    26d4:	bb3e0164 	swr	s8,356(t9)
    26d8:	ad3f761f 	sw	ra,30239(t1)
    26dc:	6c8b8af8 	0x6c8b8af8
    26e0:	e951f424 	swc2	$17,-3036(t2)
    26e4:	f1e73a9a 	0xf1e73a9a
    26e8:	c96e0927 	lwc2	$14,2343(t3)
    26ec:	56e3493c 	0x56e3493c
    26f0:	3d2850c3 	0x3d2850c3
    26f4:	e0bb379a 	swc0	$27,14234(a1)
    26f8:	4868da3c 	0x4868da3c
    26fc:	fdf8d85a 	0xfdf8d85a
    2700:	2cd54eb1 	sltiu	s5,a2,20145
    2704:	944cf439 	lhu	t4,-3015(v0)
    2708:	aa01a64b 	swl	at,-22965(s0)
    270c:	ce7ba6ce 	lwc3	$27,-22834(s3)
    2710:	87dd2182 	lh	sp,8578(s8)
    2714:	1a9494e0 	0x1a9494e0
    2718:	75384b97 	jalx	4e12e5c <out_key+0x4e109c4>
    271c:	325a3104 	andi	k0,s2,0x3104
    2720:	30ff932a 	andi	ra,a3,0x932a
    2724:	b73a4c83 	0xb73a4c83
    2728:	106dde56 	beq	v1,t5,ffffa084 <out_key+0xffff7bec>
    272c:	5586fdd1 	0x5586fdd1
    2730:	4a11dcee 	c2	0x11dcee
    2734:	52c88c59 	0x52c88c59
    2738:	d275aeb4 	0xd275aeb4
    273c:	4406a309 	0x4406a309
    2740:	f9f9337c 	0xf9f9337c
    2744:	b635063d 	0xb635063d
    2748:	27be0a28 	addiu	s8,sp,2600
    274c:	3fcf5cbd 	0x3fcf5cbd
    2750:	1e453108 	0x1e453108
    2754:	e9747950 	swc2	$20,31056(t3)
    2758:	95a948a4 	lhu	t1,18596(t5)
    275c:	cb9847c9 	lwc2	$24,18377(gp)
    2760:	a990cd53 	swl	s0,-12973(t4)
    2764:	0ad6d500 	j	b5b5400 <out_key+0xb5b2f68>
    2768:	93203e5b 	lbu	zero,15963(t9)
    276c:	a2a4a0d3 	sb	a0,-24365(s5)
    2770:	c49fa609 	lwc1	$f31,-23031(a0)
    2774:	49dd4f75 	0x49dd4f75
    2778:	74146770 	jalx	519dc0 <out_key+0x517928>
    277c:	5093e2cd 	0x5093e2cd
    2780:	196cd23d 	0x196cd23d
    2784:	a32e3966 	sb	t6,14694(t9)
    2788:	b97e0306 	swr	s8,774(t3)
    278c:	1b768b71 	0x1b768b71
    2790:	433e04f2 	c0	0x13e04f2
    2794:	58985f5c 	0x58985f5c
    2798:	8ee98b22 	lw	t1,-29918(s7)
    279c:	b1f4820c 	0xb1f4820c
    27a0:	04531da8 	0x4531da8
    27a4:	ab0f4673 	swl	t7,18035(t8)
    27a8:	d824da6a 	0xd824da6a
    27ac:	d55cd7d7 	0xd55cd7d7
    27b0:	2b9bc84d 	slti	k1,gp,-14259
    27b4:	c64425ff 	lwc1	$f4,9727(s2)
    27b8:	d73e9a34 	0xd73e9a34
    27bc:	fbc69437 	0xfbc69437
    27c0:	cf4f63f3 	lwc3	$15,25587(k0)
    27c4:	872b40cc 	lh	t3,16588(t9)
    27c8:	b36a904e 	0xb36a904e
    27cc:	785ee9a0 	0x785ee9a0
    27d0:	c85cbf32 	lwc2	$28,-16590(v0)
    27d4:	2b81e5a8 	slti	at,gp,-6744
    27d8:	c230834e 	lwc0	$16,-31922(s1)
    27dc:	e4a39d60 	swc1	$f3,-25248(a1)
    27e0:	afcbbdcd 	sw	t3,-16947(s8)
    27e4:	51ee523d 	0x51ee523d
    27e8:	54546fd9 	0x54546fd9
    27ec:	a307124d 	sb	a3,4685(t8)
    27f0:	9c29d12f 	0x9c29d12f
    27f4:	0afa3aec 	j	be8ebb0 <out_key+0xbe8c718>
    27f8:	bbf8d483 	swr	t8,-11133(ra)
    27fc:	3c347eb4 	0x3c347eb4
    2800:	71cf8770 	0x71cf8770
    2804:	c0beb144 	lwc0	$30,-20156(a1)
    2808:	ab4ddbfd 	swl	t5,-9219(k0)
    280c:	690c9dde 	0x690c9dde
    2810:	209f5cb9 	addi	ra,a0,23737
    2814:	58c07127 	0x58c07127
    2818:	124dd770 	beq	s2,t5,ffff85dc <out_key+0xffff6144>
    281c:	df728066 	0xdf728066
    2820:	2adb0f7f 	slti	k1,s6,3967
    2824:	1772987d 	bne	k1,s2,fffe8a1c <out_key+0xfffe6584>
    2828:	fe0c344e 	0xfe0c344e
    282c:	f24a827d 	0xf24a827d
    2830:	8a122c98 	lwl	s2,11416(s0)
    2834:	0cec75c2 	jal	3b1d708 <out_key+0x3b1b270>
    2838:	53c0ff6d 	0x53c0ff6d
    283c:	dfed1fcb 	0xdfed1fcb
    2840:	aa28bc5a 	swl	t0,-17318(s1)
    2844:	2ec47cf3 	sltiu	a0,s6,31987
    2848:	997ff774 	lwr	ra,-2188(t3)
    284c:	ae43e9c7 	sw	v1,-5689(s2)
    2850:	946f443c 	lhu	t7,17468(v1)
    2854:	4ec4779f 	c3	0xc4779f
    2858:	da557009 	0xda557009
    285c:	1446a84d 	bne	v0,a2,fffec994 <out_key+0xfffea4fc>
    2860:	2e1a2713 	sltiu	k0,s0,10003
    2864:	0aac9f87 	j	ab27e1c <out_key+0xab25984>
    2868:	0a7e1985 	j	9f86614 <out_key+0x9f8417c>
    286c:	cfc12099 	lwc3	$1,8345(s8)
    2870:	7d653355 	0x7d653355
    2874:	4e4e4c91 	c3	0x4e4c91
    2878:	ba66f94e 	swr	a2,-1714(s3)
    287c:	b68ae011 	0xb68ae011
    2880:	cf15cd32 	lwc3	$21,-13006(t8)
    2884:	8bdf05c4 	lwl	ra,1476(s8)
    2888:	4efeef52 	c3	0xfeef52
    288c:	81de1692 	lb	s8,5778(t6)
    2890:	f5b2cda9 	0xf5b2cda9
    2894:	a88a9318 	swl	t2,-27880(a0)
    2898:	6f455e71 	0x6f455e71
    289c:	be9d52e9 	0xbe9d52e9
    28a0:	578695fd 	0x578695fd
    28a4:	5ba1802d 	0x5ba1802d
    28a8:	fe514b66 	0xfe514b66
    28ac:	1a9a9f49 	0x1a9a9f49
    28b0:	a3c6061b 	sb	a2,1563(s8)
    28b4:	5488a574 	0x5488a574
    28b8:	beea11a0 	0xbeea11a0
    28bc:	00ed7896 	0xed7896
    28c0:	fc7baeee 	0xfc7baeee
    28c4:	881de2d3 	lwl	sp,-7469(zero)
    28c8:	1456687a 	bne	v0,s6,1cab4 <out_key+0x1a61c>
    28cc:	87f111e5 	lh	s1,4581(ra)
    28d0:	cf7a4289 	lwc3	$26,17033(k1)
    28d4:	a41a015a 	sh	k0,346(zero)
    28d8:	6a8fb645 	0x6a8fb645
    28dc:	a0ba0ae7 	sb	k0,2791(a1)
    28e0:	394fe2d1 	xori	t7,t2,0xe2d1
    28e4:	ba7b52e7 	swr	k1,21223(s3)
    28e8:	e442efd6 	swc1	$f2,-4138(v0)
    28ec:	68c86101 	0x68c86101
    28f0:	e566804d 	swc1	$f6,-32691(t3)
    28f4:	6936763a 	0x6936763a
    28f8:	5524ef85 	0x5524ef85
    28fc:	2304d08d 	addi	a0,t8,-12147
    2900:	13b1ac6c 	beq	sp,s1,fffedab4 <out_key+0xfffeb61c>
    2904:	6d9e2743 	0x6d9e2743
    2908:	4630afd4 	c1	0x30afd4
    290c:	b54b32f8 	0xb54b32f8
    2910:	625ea17c 	0x625ea17c
    2914:	f9bb9e89 	0xf9bb9e89
    2918:	4e238e5a 	c3	0x238e5a
    291c:	8271793f 	lb	s1,31039(s3)
    2920:	254b5dae 	addiu	t3,t2,23982
    2924:	16747369 	bne	s3,s4,1f6cc <out_key+0x1d234>
    2928:	d7dd9375 	0xd7dd9375
    292c:	288e2669 	slti	t6,a0,9833
    2930:	2b9aa927 	slti	k0,gp,-22233
    2934:	502e3606 	0x502e3606
    2938:	998ff8c1 	lwr	t7,-1855(t4)
    293c:	6ee84d8c 	0x6ee84d8c
    2940:	61147afd 	0x61147afd
    2944:	5250cdf9 	0x5250cdf9
    2948:	8ca88e02 	lw	t0,-29182(a1)
    294c:	df9b804b 	0xdf9b804b
    2950:	f84ba846 	0xf84ba846
    2954:	7182c468 	0x7182c468
    2958:	656fb626 	0x656fb626
    295c:	fa37189c 	0xfa37189c
    2960:	49af4e36 	0x49af4e36
    2964:	0a028efd 	j	80a3bf4 <out_key+0x80a175c>
    2968:	ce04cbb1 	lwc3	$4,-13391(s0)
    296c:	df5fe72d 	0xdf5fe72d
    2970:	0c7b79ed 	jal	1ede7b4 <out_key+0x1edc31c>
    2974:	95bf315d 	lhu	ra,12637(t5)
    2978:	529d5555 	0x529d5555
    297c:	9622f1ec 	lhu	v0,-3604(s1)
    2980:	5709bcac 	0x5709bcac
    2984:	975f5800 	lhu	ra,22528(k0)
    2988:	60e9d782 	0x60e9d782
    298c:	f79d0a1e 	0xf79d0a1e
    2990:	99f9c69f 	lwr	t9,-14689(t7)
    2994:	bc2f50af 	0xbc2f50af
    2998:	dbab37ac 	0xdbab37ac
    299c:	d6e73658 	0xd6e73658
    29a0:	32577154 	andi	s7,s2,0x7154
    29a4:	0a23aa7a 	j	88ea9e8 <out_key+0x88e8550>
    29a8:	5fac49e0 	0x5fac49e0
    29ac:	6162289a 	0x6162289a
    29b0:	875e8a6d 	lh	s8,-30099(k0)
    29b4:	33bd95b0 	andi	sp,sp,0x95b0
    29b8:	349d6b18 	ori	sp,a0,0x6b18
    29bc:	181da253 	0x181da253
    29c0:	14e4c5a3 	bne	a3,a0,ffff4050 <out_key+0xffff1bb8>
    29c4:	a3ee6ea6 	sb	t6,28326(ra)
    29c8:	d58423aa 	0xd58423aa
    29cc:	40f29f2c 	0x40f29f2c
    29d0:	5fe0f2fe 	0x5fe0f2fe
    29d4:	7a9eb5d6 	0x7a9eb5d6
    29d8:	d8e00323 	0xd8e00323
    29dc:	74e2f613 	jalx	38bd84c <out_key+0x38bb3b4>
    29e0:	f8e79abd 	0xf8e79abd
    29e4:	48211fa9 	0x48211fa9
    29e8:	22cc634c 	addi	t4,s6,25420
    29ec:	0a357e34 	j	8d5f8d0 <out_key+0x8d5d438>
    29f0:	a870bb33 	swl	s0,-17613(v1)
    29f4:	ad0a66aa 	sw	t2,26282(t0)
    29f8:	f7124eea 	0xf7124eea
    29fc:	36d3a570 	ori	s3,s6,0xa570
    2a00:	445571f8 	0x445571f8
    2a04:	a55a5f14 	sh	k0,24340(t2)
    2a08:	497928ee 	0x497928ee
    2a0c:	731d7fdf 	0x731d7fdf
    2a10:	b3fc4d6b 	0xb3fc4d6b
    2a14:	29e977ef 	slti	t1,t7,30703
    2a18:	4bd03dbc 	c2	0x1d03dbc
    2a1c:	c923e6d7 	lwc2	$3,-6441(t1)
    2a20:	03cb8d7c 	0x3cb8d7c
    2a24:	d2b4fc00 	0xd2b4fc00
    2a28:	f494be60 	0xf494be60
    2a2c:	2ddaea78 	sltiu	k0,t6,-5512
    2a30:	8f88003f 	lw	t0,63(gp)
    2a34:	47d709e9 	c1	0x1d709e9
    2a38:	1be21dff 	0x1be21dff
    2a3c:	7040eca5 	0x7040eca5
    2a40:	41276a22 	0x41276a22
    2a44:	22fbfcbc 	addi	k1,s7,-836
    2a48:	2016f896 	addi	s6,zero,-1898
    2a4c:	445c0907 	0x445c0907
    2a50:	33cd8400 	andi	t5,s8,0x8400
    2a54:	06a39340 	0x6a39340
    2a58:	60a8cfeb 	0x60a8cfeb
    2a5c:	6d8a1d0e 	0x6d8a1d0e
    2a60:	de688d61 	0xde688d61
    2a64:	b7758e26 	0xb7758e26
    2a68:	18c036ce 	blez	a2,105a4 <out_key+0xe10c>
    2a6c:	68023c0e 	0x68023c0e
    2a70:	4deab629 	0x4deab629
    2a74:	10c0030b 	beqz	a2,36a4 <out_key+0x120c>
    2a78:	d468e02f 	0xd468e02f
    2a7c:	1b67d5a7 	0x1b67d5a7
    2a80:	b77a3e82 	0xb77a3e82
    2a84:	b37aee21 	0xb37aee21
    2a88:	de5dcfee 	0xde5dcfee
    2a8c:	75697962 	jalx	5a5e588 <out_key+0x5a5c0f0>
    2a90:	67593f84 	0x67593f84
    2a94:	a82066f4 	swl	zero,26356(at)
    2a98:	f0110ba9 	0xf0110ba9
    2a9c:	4ea7f7fd 	c3	0xa7f7fd
    2aa0:	e2aed574 	swc0	$14,-10892(s5)
    2aa4:	7d631a68 	0x7d631a68
    2aa8:	3626fcd0 	ori	a2,s1,0xfcd0
    2aac:	87b05d0a 	lh	s0,23818(sp)
    2ab0:	1d63d99b 	0x1d63d99b
    2ab4:	c629f42a 	lwc1	$f9,-3030(s1)
    2ab8:	6314e9d4 	0x6314e9d4
    2abc:	c1af1b7b 	lwc0	$15,7035(t5)
    2ac0:	78bb9ba7 	0x78bb9ba7
    2ac4:	0e46e1cb 	jal	91b872c <out_key+0x91b6294>
    2ac8:	12813bb1 	beq	s4,at,11990 <out_key+0xf4f8>
    2acc:	8700fd04 	lh	zero,-764(t8)
    2ad0:	7f9f3757 	0x7f9f3757
    2ad4:	d7c2d004 	0xd7c2d004
    2ad8:	e95e2d82 	swc2	$30,11650(t2)
    2adc:	d5e75acc 	0xd5e75acc
    2ae0:	635a29a6 	0x635a29a6
    2ae4:	5d081a10 	0x5d081a10
    2ae8:	7c0e1f85 	0x7c0e1f85
    2aec:	10b880d1 	beq	a1,t8,fffe2e34 <out_key+0xfffe099c>
    2af0:	b2f7dfd3 	0xb2f7dfd3
    2af4:	097e601a 	j	5f98068 <out_key+0x5f95bd0>
    2af8:	562b7e11 	0x562b7e11
    2afc:	7a0d5a6b 	0x7a0d5a6b
    2b00:	99c15626 	lwr	at,22054(t6)
    2b04:	13d97548 	beq	s8,t9,20028 <out_key+0x1db90>
    2b08:	f1b8a48e 	0xf1b8a48e
    2b0c:	a4a9ece2 	sh	t1,-4894(a1)
    2b10:	72a916e6 	0x72a916e6
    2b14:	a8718003 	swl	s1,-32765(v1)
    2b18:	a6315e47 	sh	s1,24135(s1)
    2b1c:	2da1204d 	sltiu	at,t5,8269
    2b20:	a47ec5e2 	sh	s8,-14878(v1)
    2b24:	83bcb072 	lb	gp,-20366(sp)
    2b28:	7f1fa2c8 	0x7f1fa2c8
    2b2c:	a86b8358 	swl	t3,-31912(v1)
    2b30:	3ef84883 	0x3ef84883
    2b34:	e17192bd 	swc0	$17,-27971(t3)
    2b38:	fc689411 	0xfc689411
    2b3c:	363cbfce 	ori	gp,s1,0xbfce
    2b40:	a17155c9 	sb	s1,21961(t3)
    2b44:	1ac97c17 	0x1ac97c17
    2b48:	918612bb 	lbu	a2,4795(t4)
    2b4c:	8f23f64a 	lw	v1,-2486(t9)
    2b50:	742b2568 	jalx	ac95a0 <out_key+0xac7108>
    2b54:	f7fa2f3b 	0xf7fa2f3b
    2b58:	fb9360cd 	0xfb9360cd
    2b5c:	cf84ca61 	lwc3	$4,-13727(gp)
    2b60:	bca9860f 	0xbca9860f
    2b64:	5fba1f9c 	0x5fba1f9c
    2b68:	b700f183 	0xb700f183
    2b6c:	86003c96 	lh	zero,15510(s0)
    2b70:	933b119a 	lbu	k1,4506(t9)
    2b74:	49f5123c 	0x49f5123c
    2b78:	b4b571c7 	0xb4b571c7
    2b7c:	8f60a2c5 	lw	zero,-23867(k1)
    2b80:	f94025ae 	0xf94025ae
    2b84:	d930177d 	0xd930177d
    2b88:	8dd5e3fa 	lw	s5,-7174(t6)
    2b8c:	8bc24cea 	lwl	v0,19690(s8)
    2b90:	16b9ee72 	bne	s5,t9,ffffe55c <out_key+0xffffc0c4>
    2b94:	580b3f08 	0x580b3f08
    2b98:	58da5131 	0x58da5131
    2b9c:	1fd6d43d 	0x1fd6d43d
    2ba0:	27bfc761 	addiu	ra,sp,-14495
    2ba4:	3f2f5efc 	0x3f2f5efc
    2ba8:	c5025ff3 	lwc1	$f2,24563(t0)
    2bac:	3297fe35 	andi	s7,s4,0xfe35
    2bb0:	f4c4393c 	0xf4c4393c
    2bb4:	30540e55 	andi	s4,v0,0xe55
    2bb8:	d2a331d6 	0xd2a331d6
    2bbc:	47bf9fef 	c1	0x1bf9fef
    2bc0:	a5429b55 	sh	v0,-25771(t2)
    2bc4:	f05c5a3a 	0xf05c5a3a
    2bc8:	7812cbbc 	0x7812cbbc
    2bcc:	5026bcb1 	0x5026bcb1
    2bd0:	70b0689f 	0x70b0689f
    2bd4:	d6d3315c 	0xd6d3315c
    2bd8:	7a41b038 	0x7a41b038
    2bdc:	46209945 	abs.d	$f5,$f19
    2be0:	0c89c79f 	jal	2271e7c <out_key+0x226f9e4>
    2be4:	46f2b43c 	c1	0xf2b43c
    2be8:	74eb6458 	jalx	3ad9160 <out_key+0x3ad6cc8>
    2bec:	fa43e168 	0xfa43e168
    2bf0:	81499baa 	lb	t1,-25686(t2)
    2bf4:	647bf32f 	0x647bf32f
    2bf8:	110a89b8 	beq	t0,t2,fffe52dc <out_key+0xfffe2e44>
    2bfc:	3e03f334 	0x3e03f334
    2c00:	f49376b8 	0xf49376b8
    2c04:	17071644 	bne	t8,a3,8518 <out_key+0x6080>
    2c08:	ce29a7cb 	lwc3	$9,-22581(s1)
    2c0c:	a6e2d6b3 	sh	v0,-10573(s7)
    2c10:	f3f91676 	0xf3f91676
    2c14:	e0673838 	swc0	$7,14392(v1)
    2c18:	06f62f28 	0x6f62f28
    2c1c:	6bc03815 	0x6bc03815
    2c20:	34a6dc67 	ori	a2,a1,0xdc67
    2c24:	db54d214 	0xdb54d214
    2c28:	195626b1 	0x195626b1
    2c2c:	9dc0a343 	0x9dc0a343
    2c30:	aa602a77 	swl	zero,10871(s3)
    2c34:	cbcd8cd8 	lwc2	$13,-29480(s8)
    2c38:	ebe48a2a 	swc2	$4,-30166(ra)
    2c3c:	b37d4970 	0xb37d4970
    2c40:	c7b4269f 	lwc1	$f20,9887(sp)
    2c44:	645c909e 	0x645c909e
    2c48:	f0b7ce2a 	0xf0b7ce2a
    2c4c:	f0cef6b6 	0xf0cef6b6
    2c50:	40394966 	0x40394966
    2c54:	a4e58c59 	sh	a1,-29607(a3)
    2c58:	dbea63a9 	0xdbea63a9
    2c5c:	6e7c5dbb 	0x6e7c5dbb
    2c60:	5b05c558 	0x5b05c558
    2c64:	29014292 	slti	at,t0,17042
    2c68:	0e8270be 	jal	a09c2f8 <out_key+0xa099e60>
    2c6c:	1c1179d9 	0x1c1179d9
    2c70:	711febcd 	0x711febcd
    2c74:	a4c065f8 	sh	zero,26104(a2)
    2c78:	823139ef 	lb	s1,14831(s1)
    2c7c:	57067581 	0x57067581
    2c80:	763dd5db 	jalx	8f7576c <out_key+0x8f732d4>
    2c84:	304571b7 	andi	a1,v0,0x71b7
    2c88:	323f9ae3 	andi	ra,s1,0x9ae3
    2c8c:	67814371 	0x67814371
    2c90:	98f7b351 	lwr	s7,-19631(a3)
    2c94:	88ea6092 	lwl	t2,24722(a3)
    2c98:	5d8bc36b 	0x5d8bc36b
    2c9c:	da962b81 	0xda962b81
    2ca0:	1f5339ab 	0x1f5339ab
    2ca4:	ea0b5a46 	swc2	$11,23110(s0)
    2ca8:	a800d282 	swl	zero,-11646(zero)
    2cac:	3d6ed7fb 	0x3d6ed7fb
    2cb0:	a13d9273 	sb	sp,-28045(t1)
    2cb4:	9aa1ad8a 	lwr	at,-21110(s5)
    2cb8:	42f63d10 	c0	0xf63d10
    2cbc:	504a7667 	0x504a7667
    2cc0:	90d8db70 	lbu	t8,-9360(a2)
    2cc4:	37d530f5 	ori	s5,s8,0x30f5
    2cc8:	c9f04d5f 	lwc2	$16,19807(t7)
    2ccc:	e7d9ccce 	swc1	$f25,-13106(s8)
    2cd0:	34e3f73a 	ori	v1,a3,0xf73a
    2cd4:	8165e727 	lb	a1,-6361(t3)
    2cd8:	b3bb4272 	0xb3bb4272
    2cdc:	5ac145cb 	0x5ac145cb
    2ce0:	cafc6282 	lwc2	$28,25218(s7)
    2ce4:	92a13649 	lbu	at,13897(s5)
    2ce8:	aba9c918 	swl	t1,-14056(sp)
    2cec:	7d11e8b9 	0x7d11e8b9
    2cf0:	411bd4e1 	0x411bd4e1
    2cf4:	8e605317 	lw	zero,21271(s3)
    2cf8:	8d5b9aa1 	lw	k1,-25951(t2)
    2cfc:	52fdfa9a 	0x52fdfa9a
    2d00:	3255dd1b 	andi	s5,s2,0xdd1b
    2d04:	b5a873f3 	0xb5a873f3
    2d08:	f918e59a 	0xf918e59a
    2d0c:	88736e16 	lwl	s3,28182(v1)
    2d10:	d7a63f13 	0xd7a63f13
    2d14:	13c9bb3b 	beq	s8,t1,ffff1a04 <out_key+0xfffef56c>
    2d18:	54118170 	0x54118170
    2d1c:	926313b0 	lbu	v1,5040(s3)
    2d20:	cf770bdd 	lwc3	$23,3037(k1)
    2d24:	d6061687 	0xd6061687
    2d28:	e191743d 	swc0	$17,29757(t4)
    2d2c:	658056da 	0x658056da
    2d30:	d26e6213 	0xd26e6213
    2d34:	c475f8c6 	lwc1	$f21,-1850(v1)
    2d38:	0d966d1e 	jal	659b478 <out_key+0x6598fe0>
    2d3c:	6e343fdc 	0x6e343fdc
    2d40:	aad6e262 	swl	s6,-7582(s6)
    2d44:	977bc4e9 	lhu	k1,-15127(k1)
    2d48:	a5c68e4b 	sh	a2,-29109(t6)
    2d4c:	05bcf19f 	0x5bcf19f
    2d50:	2238653d 	addi	t8,s1,25917
    2d54:	3dd08cb3 	0x3dd08cb3
    2d58:	1989857e 	0x1989857e
    2d5c:	b0a618ce 	0xb0a618ce
    2d60:	853d5d80 	lh	sp,23936(t1)
    2d64:	ffd86107 	0xffd86107
    2d68:	33fb304d 	andi	k1,ra,0x304d
    2d6c:	d08b9ebb 	0xd08b9ebb
    2d70:	d8d89f0a 	0xd8d89f0a
    2d74:	72f31ff8 	0x72f31ff8
    2d78:	51a077bd 	0x51a077bd
    2d7c:	df4b4f2d 	0xdf4b4f2d
    2d80:	0d87c1e5 	jal	61f0794 <out_key+0x61ee2fc>
    2d84:	f792f172 	0xf792f172
    2d88:	3f412267 	0x3f412267
    2d8c:	60c5050f 	0x60c5050f
    2d90:	e42dd0c8 	swc1	$f13,-12088(at)
    2d94:	c9954a2e 	lwc2	$21,18990(t4)
    2d98:	63b6c98f 	0x63b6c98f
    2d9c:	b82c9e3b 	swr	t4,-25029(at)
    2da0:	37350af9 	ori	s5,t9,0xaf9
    2da4:	7708efae 	jalx	c23beb8 <out_key+0xc239a20>
    2da8:	f4a80f96 	0xf4a80f96
    2dac:	41b6ba32 	0x41b6ba32
    2db0:	09c5b0f0 	j	716c3c0 <out_key+0x7169f28>
    2db4:	f3b1b552 	0xf3b1b552
    2db8:	fb0c23f4 	0xfb0c23f4
    2dbc:	179e3e98 	bne	gp,s8,12820 <out_key+0x10388>
    2dc0:	2bed33d3 	slti	t5,ra,13267
    2dc4:	1dcf5a9c 	0x1dcf5a9c
    2dc8:	0b50c7c1 	j	d431f04 <out_key+0xd42fa6c>
    2dcc:	74e69798 	jalx	39a5e60 <out_key+0x39a39c8>
    2dd0:	fdf4569b 	0xfdf4569b
    2dd4:	08f6b863 	j	3dae18c <out_key+0x3dabcf4>
    2dd8:	2b40c45d 	slti	zero,k0,-15267
    2ddc:	5ba905ed 	0x5ba905ed
    2de0:	023ad059 	0x23ad059
    2de4:	e1ce1f1c 	swc0	$14,7964(t6)
    2de8:	91204a30 	lbu	zero,18992(t1)
    2dec:	1333c6b7 	beq	t9,s3,ffff48cc <out_key+0xffff2434>
    2df0:	ef34d8bc 	swc3	$20,-10052(t9)
    2df4:	985d6e8c 	lwr	sp,28300(v0)
    2df8:	2d92311f 	sltiu	s2,t4,12575
    2dfc:	ac753208 	sw	s5,12808(v1)
    2e00:	44cc03db 	0x44cc03db
    2e04:	7528c3e8 	jalx	4a30fa0 <out_key+0x4a2eb08>
    2e08:	b3c8ba78 	0xb3c8ba78
    2e0c:	370162a8 	ori	at,t8,0x62a8
    2e10:	7870b6da 	0x7870b6da
    2e14:	de4d71ff 	0xde4d71ff
    2e18:	bd009158 	0xbd009158
    2e1c:	48c757cc 	0x48c757cc
    2e20:	692ebc4d 	0x692ebc4d
    2e24:	4db71556 	0x4db71556
    2e28:	32d9c30a 	andi	t9,s6,0xc30a
    2e2c:	d71dae9b 	0xd71dae9b
    2e30:	3edb487f 	0x3edb487f
    2e34:	b550b3b1 	0xb550b3b1
    2e38:	af38d541 	sw	t8,-10943(t9)
    2e3c:	3c63b137 	0x3c63b137
    2e40:	0dcdf623 	jal	737d88c <out_key+0x737b3f4>
    2e44:	ca67d771 	lwc2	$7,-10383(s3)
    2e48:	6db957b9 	0x6db957b9
    2e4c:	5a014a58 	0x5a014a58
    2e50:	95bbe651 	lhu	k1,-6575(t5)
    2e54:	0387aa49 	0x387aa49
    2e58:	467176b7 	c1	0x7176b7
    2e5c:	fad1d0f8 	0xfad1d0f8
    2e60:	11c424bc 	beq	t6,a0,c154 <out_key+0x9cbc>
    2e64:	80b93186 	lb	t9,12678(a1)
    2e68:	966dc30e 	lhu	t5,-15602(s3)
    2e6c:	c18e2b05 	lwc0	$14,11013(t4)
    2e70:	75940f2c 	jalx	6503cb0 <out_key+0x6501818>
    2e74:	9291a27c 	lbu	s1,-23940(s4)
    2e78:	caef7dcd 	lwc2	$15,32205(s7)
    2e7c:	82bdddfd 	lb	sp,-8707(s5)
    2e80:	ab49247f 	swl	t1,9343(k0)
    2e84:	230ce699 	addi	t4,t8,-6503
    2e88:	9f25e352 	0x9f25e352
    2e8c:	bce26cb6 	0xbce26cb6
    2e90:	823d6d7e 	lb	sp,28030(s1)
    2e94:	8efef32b 	lw	s8,-3285(s7)
    2e98:	58ac1ec1 	0x58ac1ec1
    2e9c:	789890fc 	0x789890fc
    2ea0:	281f13b5 	slti	ra,zero,5045
    2ea4:	761b43a7 	jalx	86d0e9c <out_key+0x86cea04>
    2ea8:	fef26257 	0xfef26257
    2eac:	c016adad 	lwc0	$22,-21075(zero)
    2eb0:	81097076 	lb	t1,28790(t0)
    2eb4:	5a8eaf29 	0x5a8eaf29
    2eb8:	50c61711 	0x50c61711
    2ebc:	53c5a3fc 	0x53c5a3fc
    2ec0:	047af97d 	0x47af97d
    2ec4:	471b5747 	c1	0x11b5747
    2ec8:	19ed8390 	0x19ed8390
    2ecc:	bdf48cde 	0xbdf48cde
    2ed0:	0b5f88a6 	j	d7e2298 <out_key+0xd7dfe00>
    2ed4:	7058041b 	0x7058041b
    2ed8:	fa07dd9f 	0xfa07dd9f
    2edc:	7622b570 	jalx	88ad5c0 <out_key+0x88ab128>
    2ee0:	0b40de5f 	j	d03797c <out_key+0xd0354e4>
    2ee4:	477fd259 	c1	0x17fd259
    2ee8:	0b497fd9 	j	d25ff64 <out_key+0xd25dacc>
    2eec:	d7fa87df 	0xd7fa87df
    2ef0:	e09b1cd2 	swc0	$27,7378(a0)
    2ef4:	aa7f2d7c 	swl	ra,11644(s3)
    2ef8:	949b7c83 	lhu	k1,31875(a0)
    2efc:	3f7a8515 	0x3f7a8515
    2f00:	2f9324bd 	sltiu	s3,gp,9405
    2f04:	b0914908 	0xb0914908
    2f08:	1fc58a2b 	0x1fc58a2b
    2f0c:	a0a32e48 	sb	v1,11848(a1)
    2f10:	301a38ab 	andi	k0,zero,0x38ab
    2f14:	8a3416b7 	lwl	s4,5815(s1)
    2f18:	bfea6be6 	0xbfea6be6
    2f1c:	ca57ff6c 	lwc2	$23,-148(s2)
    2f20:	ac84a49a 	sw	a0,-23398(a0)
    2f24:	88c85583 	lwl	t0,21891(a2)
    2f28:	04bc6a01 	0x4bc6a01
    2f2c:	d52a31dd 	0xd52a31dd
    2f30:	46de7063 	c1	0xde7063
    2f34:	4769ce0d 	c1	0x169ce0d
    2f38:	67df2568 	0x67df2568
    2f3c:	2461fd95 	addiu	at,v1,-619
    2f40:	de51e8e9 	0xde51e8e9
    2f44:	e4df887b 	swc1	$f31,-30597(a2)
    2f48:	c90a33af 	lwc2	$10,13231(t0)
    2f4c:	50a8c6ee 	0x50a8c6ee
    2f50:	28a171aa 	slti	at,a1,29098
    2f54:	2e90c2da 	sltiu	s0,s4,-15654
    2f58:	985002e4 	lwr	s0,740(v0)
    2f5c:	dd44bf5b 	0xdd44bf5b
    2f60:	5115d844 	0x5115d844
    2f64:	9c759158 	0x9c759158
    2f68:	6ff1c921 	0x6ff1c921
    2f6c:	9e23f545 	0x9e23f545
    2f70:	8ca22b6c 	lw	v0,11116(a1)
    2f74:	2e7745e0 	sltiu	s7,s3,17888
    2f78:	79884d3c 	0x79884d3c
    2f7c:	76db9793 	jalx	b6e5e4c <out_key+0xb6e39b4>
    2f80:	4fa1eac1 	c3	0x1a1eac1
    2f84:	2ed8dff1 	sltiu	t8,s6,-8207
    2f88:	eb0fe31b 	swc2	$15,-7397(t8)
    2f8c:	47eaeba3 	c1	0x1eaeba3
    2f90:	8f826af4 	lw	v0,27380(gp)
    2f94:	ca17deb9 	lwc2	$23,-8519(s0)
    2f98:	346d962b 	ori	t5,v1,0x962b
    2f9c:	5144daa2 	0x5144daa2
    2fa0:	af4ca585 	sw	t4,-23163(k0)
    2fa4:	e8ac68f0 	swc2	$12,26864(a1)
    2fa8:	e28610ba 	swc0	$6,4282(s4)
    2fac:	ca3c2a5b 	lwc2	$28,10843(s1)
    2fb0:	d18004ff 	0xd18004ff
    2fb4:	7e9c8ef0 	0x7e9c8ef0
    2fb8:	8fe0f006 	lw	zero,-4090(ra)
    2fbc:	633fd74a 	0x633fd74a
    2fc0:	47391219 	c1	0x1391219
    2fc4:	4593569c 	0x4593569c
    2fc8:	fc9de3ab 	0xfc9de3ab
    2fcc:	9d106165 	0x9d106165
    2fd0:	4d46dad4 	0x4d46dad4
    2fd4:	3244976b 	andi	a0,s2,0x976b
    2fd8:	ad8cddba 	sw	t4,-8774(t4)
    2fdc:	d9272617 	0xd9272617
    2fe0:	d94bfb49 	0xd94bfb49
    2fe4:	b206e209 	0xb206e209
    2fe8:	bbe44bc6 	swr	a0,19398(ra)
    2fec:	5dbfb41a 	0x5dbfb41a
    2ff0:	1d3dd787 	0x1d3dd787
    2ff4:	00ec412c 	0xec412c
    2ff8:	2cb21802 	sltiu	s2,a1,6146
    2ffc:	625c97fa 	0x625c97fa
    3000:	442dc4b2 	0x442dc4b2
    3004:	ae5f39d9 	sw	ra,14809(s2)
    3008:	586da3ed 	0x586da3ed
    300c:	61ca92e7 	0x61ca92e7
    3010:	27c51bf2 	addiu	a1,s8,7154
    3014:	6fbf0bd1 	0x6fbf0bd1
    3018:	029d041a 	0x29d041a
    301c:	3593fa8e 	ori	s3,t4,0xfa8e
    3020:	42cd4de6 	c0	0xcd4de6
    3024:	5495363d 	0x5495363d
    3028:	14d4403f 	bne	a2,s4,13128 <out_key+0x10c90>
    302c:	f163ecba 	0xf163ecba
    3030:	781c2ed1 	0x781c2ed1
    3034:	7bfe5662 	0x7bfe5662
    3038:	008abf02 	0x8abf02
    303c:	b6fab342 	0xb6fab342
    3040:	dfc180ff 	0xdfc180ff
    3044:	0f63040a 	jal	d8c1028 <out_key+0xd8beb90>
    3048:	b2859d0e 	0xb2859d0e
    304c:	20cb2add 	addi	t3,a2,10973
    3050:	a007b22f 	sb	a3,-19921(zero)
    3054:	4c8b836c 	0x4c8b836c
    3058:	fc589029 	0xfc589029
    305c:	13dba8d1 	beq	s8,k1,fffed3a4 <out_key+0xfffeaf0c>
    3060:	f8c18157 	0xf8c18157
    3064:	b2793884 	0xb2793884
    3068:	51245f1e 	0x51245f1e
    306c:	5ef24de0 	0x5ef24de0
    3070:	733bd08e 	0x733bd08e
    3074:	af6bc7c0 	sw	t3,-14400(k1)
    3078:	66941a24 	0x66941a24
    307c:	a7d56c69 	sh	s5,27753(s8)
    3080:	b963b464 	swr	v1,-19356(t3)
    3084:	aca3eff8 	sw	v1,-4104(a1)
    3088:	e836a9b6 	swc2	$22,-22090(at)
    308c:	fc865470 	0xfc865470
    3090:	421a1a53 	c0	0x1a1a53
    3094:	8fa2c6d6 	lw	v0,-14634(sp)
    3098:	02ee89c3 	0x2ee89c3
    309c:	a51123dd 	sh	s1,9181(t0)
    30a0:	0865203c 	j	19480f0 <out_key+0x1945c58>
    30a4:	548a8e66 	0x548a8e66
    30a8:	f123fea8 	0xf123fea8
    30ac:	be6e3e3a 	0xbe6e3e3a
    30b0:	30e469db 	andi	a0,a3,0x69db
    30b4:	3a9fb0a2 	xori	ra,s4,0xb0a2
    30b8:	e22055da 	swc0	$0,21978(s1)
    30bc:	7d7cdd27 	0x7d7cdd27
    30c0:	af3bf76e 	sw	k1,-2194(t9)
    30c4:	b6821e4a 	0xb6821e4a
    30c8:	108de871 	beq	a0,t5,ffffd290 <out_key+0xffffadf8>
    30cc:	cb8dea2a 	lwc2	$13,-5590(gp)
    30d0:	5afb385d 	0x5afb385d
    30d4:	019bff04 	0x19bff04
    30d8:	3d43102d 	0x3d43102d
    30dc:	e9c34a0e 	swc2	$3,18958(t6)
    30e0:	9476f7e0 	lhu	s6,-2080(v1)
    30e4:	aa8de253 	swl	t5,-7597(s4)
    30e8:	bed15a34 	0xbed15a34
    30ec:	e178c9ee 	swc0	$24,-13842(t3)
    30f0:	4ccd0c38 	0x4ccd0c38
    30f4:	2a547a5e 	slti	s4,s2,31326
    30f8:	ec187c87 	swc3	$24,31879(zero)
    30fc:	a2d89005 	sb	t8,-28667(s6)
    3100:	e76ca021 	swc1	$f12,-24543(k1)
    3104:	c46302fd 	lwc1	$f3,765(v1)
    3108:	af393b05 	sw	t9,15109(t9)
    310c:	05e516f1 	0x5e516f1
    3110:	267cb841 	addiu	gp,s3,-18367
    3114:	5260d391 	0x5260d391
    3118:	0f1c7f90 	jal	c71fe40 <out_key+0xc71d9a8>
    311c:	e7ac6fb8 	swc1	$f12,28600(sp)
    3120:	fb47d690 	0xfb47d690
    3124:	60788d80 	0x60788d80
    3128:	5661548a 	0x5661548a
    312c:	7caaa313 	0x7caaa313
    3130:	0bb6b66d 	j	edad9b4 <out_key+0xedab51c>
    3134:	fe77e949 	0xfe77e949
    3138:	6f94094c 	0x6f94094c
    313c:	b476141d 	0xb476141d
    3140:	ba03eff5 	swr	v1,-4107(s0)
    3144:	b37b830f 	0xb37b830f
    3148:	cbd7403a 	lwc2	$23,16442(s8)
    314c:	678d1d01 	0x678d1d01
    3150:	ceb6a8d3 	lwc3	$22,-22317(s5)
    3154:	7698f644 	jalx	a63d910 <out_key+0xa63b478>
    3158:	73a0270f 	0x73a0270f
    315c:	2289aeaa 	addi	t1,s4,-20822
    3160:	8b76cd12 	lwl	s6,-13038(k1)
    3164:	a6e4548e 	sh	a0,21646(s7)
    3168:	59b1c90d 	0x59b1c90d
    316c:	a344b3dc 	sb	a0,-19492(k0)
    3170:	3fba641a 	0x3fba641a
    3174:	cd93f17d 	lwc3	$19,-3715(t4)
    3178:	bc72a6a8 	0xbc72a6a8
    317c:	d6659440 	0xd6659440
    3180:	ff20d502 	0xff20d502
    3184:	27333662 	addiu	s3,t9,13922
    3188:	49bd710e 	0x49bd710e
    318c:	6956e069 	0x6956e069
    3190:	b1323589 	0xb1323589
    3194:	ad9971d7 	sw	t9,29143(t4)
    3198:	06708171 	bltzal	s3,fffe3760 <out_key+0xfffe12c8>
    319c:	fe624a77 	0xfe624a77
    31a0:	0ff772ed 	jal	fddcbb4 <out_key+0xfdda71c>
    31a4:	a586f7e3 	sh	a2,-2077(t4)
    31a8:	74b559bd 	jalx	2d566f4 <out_key+0x2d5425c>
    31ac:	2c5207c5 	sltiu	s2,v0,1989
    31b0:	8c9a7b9d 	lw	k0,31645(a0)
    31b4:	659339a2 	0x659339a2
    31b8:	8ff88f82 	lw	t8,-28798(ra)
    31bc:	699af5c6 	0x699af5c6
    31c0:	6d268bce 	0x6d268bce
    31c4:	ffaa3f21 	0xffaa3f21
    31c8:	8478e1d5 	lh	t8,-7723(v1)
    31cc:	1dbaa8cc 	0x1dbaa8cc
    31d0:	7cefc487 	0x7cefc487
    31d4:	180665d6 	0x180665d6
    31d8:	3e2aef2d 	0x3e2aef2d
    31dc:	1df9baa8 	0x1df9baa8
    31e0:	74543682 	jalx	150da08 <out_key+0x150b570>
    31e4:	62aa7480 	0x62aa7480
    31e8:	72a313d3 	0x72a313d3
    31ec:	1c8e0769 	0x1c8e0769
    31f0:	98bc1129 	lwr	gp,4393(a1)
    31f4:	09281f89 	j	4a07e24 <out_key+0x4a0598c>
    31f8:	456263d1 	0x456263d1
    31fc:	501ed21f 	0x501ed21f
    3200:	7093df6a 	0x7093df6a
    3204:	414a6610 	0x414a6610
    3208:	6920d173 	0x6920d173
    320c:	b7462efd 	0xb7462efd
    3210:	4fba1b11 	c3	0x1ba1b11
    3214:	35913910 	ori	s1,t4,0x3910
    3218:	12f915aa 	beq	s7,t9,88c4 <out_key+0x642c>
    321c:	096ebf73 	j	5bafdcc <out_key+0x5bad934>
    3220:	224777bd 	addi	a3,s2,30653
    3224:	169ae79a 	bne	s4,k0,ffffd090 <out_key+0xffffabf8>
    3228:	f80be447 	0xf80be447
    322c:	c60f1ae0 	lwc1	$f15,6880(s0)
    3230:	2619a94c 	addiu	t9,s0,-22196
    3234:	a432aab9 	sh	s2,-21831(at)
    3238:	70ba83d4 	0x70ba83d4
    323c:	bf0120a8 	0xbf0120a8
    3240:	5c14e740 	0x5c14e740
    3244:	a7c1bfb0 	sh	at,-16464(s8)
    3248:	3e59b68e 	0x3e59b68e
    324c:	1703530f 	bne	t8,v1,17e8c <out_key+0x159f4>
    3250:	794ab174 	0x794ab174
    3254:	5c58afec 	0x5c58afec
    3258:	45fd101d 	0x45fd101d
    325c:	dfc58a78 	0xdfc58a78
    3260:	9ab9dd30 	lwr	t9,-8912(s5)
    3264:	857e1bed 	lh	s8,7149(t3)
    3268:	806794d2 	lb	a3,-27438(v1)
    326c:	835f6b17 	lb	ra,27415(k0)
    3270:	2e38a791 	sltiu	t8,s1,-22639
    3274:	be4556bc 	0xbe4556bc
    3278:	f75fadbb 	0xf75fadbb
    327c:	232ba3b4 	addi	t3,t9,-23628
    3280:	c9d1c0d1 	lwc2	$17,-16175(t6)
    3284:	91522bfc 	lbu	s2,11260(t2)
    3288:	52170db6 	0x52170db6
    328c:	a5d2c25c 	sh	s2,-15780(t6)
    3290:	74fa6443 	jalx	3e9910c <out_key+0x3e96c74>
    3294:	9f849564 	0x9f849564
    3298:	89541ccf 	lwl	s4,7375(t2)
    329c:	690d3d2e 	0x690d3d2e
    32a0:	7d09716b 	0x7d09716b
    32a4:	c2c091d7 	lwc0	$0,-28201(s6)
    32a8:	b4461b19 	0xb4461b19
    32ac:	e8dc8f1d 	swc2	$28,-28899(a2)
    32b0:	40bcd00b 	0x40bcd00b
    32b4:	05d9c35f 	0x5d9c35f
    32b8:	0be263e2 	j	f898f88 <out_key+0xf896af0>
    32bc:	ca756b8d 	lwc2	$21,27533(s3)
    32c0:	372f6eb9 	ori	t7,t9,0x6eb9
    32c4:	c6d694b1 	lwc1	$f22,-27471(s6)
    32c8:	d1967313 	0xd1967313
    32cc:	c9cdadf0 	lwc2	$13,-21008(t6)
    32d0:	7eae8bd5 	0x7eae8bd5
    32d4:	d704145d 	0xd704145d
    32d8:	286cb8fc 	slti	t4,v1,-18180
    32dc:	64753678 	0x64753678
    32e0:	7f47a4fc 	0x7f47a4fc
    32e4:	f849862b 	0xf849862b
    32e8:	32df488b 	andi	ra,s6,0x488b
    32ec:	92b97125 	lbu	t9,28965(s5)
    32f0:	ada28cd2 	sw	v0,-29486(t5)
    32f4:	24c5109f 	addiu	a1,a2,4255
    32f8:	7492d461 	jalx	24b5184 <out_key+0x24b2cec>
    32fc:	81f8fc89 	lb	t8,-887(t7)
    3300:	9460826c 	lhu	zero,-32148(v1)
    3304:	cf297bcf 	lwc3	$9,31695(t9)
    3308:	f763fdae 	0xf763fdae
    330c:	0dacd6ba 	jal	6b35ae8 <out_key+0x6b33650>
    3310:	c2cfffa0 	lwc0	$15,-96(s6)
    3314:	92c5fada 	lbu	a1,-1318(s6)
    3318:	6ec1137e 	0x6ec1137e
    331c:	4c63586d 	0x4c63586d
    3320:	3285bbce 	andi	a1,s4,0xbbce
    3324:	740fd17c 	jalx	3f45f0 <out_key+0x3f2158>
    3328:	51bc581c 	0x51bc581c
    332c:	eff14447 	swc3	$17,17479(ra)
    3330:	1e7d821e 	0x1e7d821e
    3334:	a36d9c8c 	sb	t5,-25460(k1)
    3338:	70ee5d28 	0x70ee5d28
    333c:	d008e4a1 	0xd008e4a1
    3340:	e3ffbdaf 	swc0	$31,-16977(ra)
    3344:	05c4edb5 	0x5c4edb5
    3348:	657753ba 	0x657753ba
    334c:	89d47183 	lwl	s4,29059(t6)
    3350:	319b7a73 	andi	k1,t4,0x7a73
    3354:	9f360f76 	0x9f360f76
    3358:	0956c2cd 	j	55b0b34 <out_key+0x55ae69c>
    335c:	8c210302 	lw	at,770(at)
    3360:	08d11fa0 	j	3447e80 <out_key+0x34459e8>
    3364:	051a1db3 	0x51a1db3
    3368:	fc99d25c 	0xfc99d25c
    336c:	f2531660 	0xf2531660
    3370:	4d3d7be4 	0x4d3d7be4
    3374:	76434f02 	jalx	90d3c08 <out_key+0x90d1770>
    3378:	18e806d4 	0x18e806d4
    337c:	32d6b82f 	andi	s6,s6,0xb82f
    3380:	184bdaa0 	0x184bdaa0
    3384:	be842abe 	0xbe842abe
    3388:	55b2e646 	0x55b2e646
    338c:	d1532896 	0xd1532896
    3390:	b0867c5f 	0xb0867c5f
    3394:	40eaa3d4 	0x40eaa3d4
    3398:	60c74ec7 	0x60c74ec7
    339c:	ad1a231b 	sw	k0,8987(t0)
    33a0:	764991b8 	jalx	92646e0 <out_key+0x9262248>
    33a4:	8b2b234c 	lwl	t3,9036(t9)
    33a8:	93b1a25e 	lbu	s1,-23970(sp)
    33ac:	e562ab0e 	swc1	$f2,-21746(t3)
    33b0:	2ed00670 	sltiu	s0,s6,1648
    33b4:	41aee580 	0x41aee580
    33b8:	311dc94b 	andi	sp,t0,0xc94b
    33bc:	30d789bc 	andi	s7,a2,0x89bc
    33c0:	ec0dd415 	swc3	$13,-11243(zero)
    33c4:	77fdbc4e 	jalx	ff6f138 <out_key+0xff6cca0>
    33c8:	6f79b202 	0x6f79b202
    33cc:	5ac93af7 	0x5ac93af7
    33d0:	5db7108a 	0x5db7108a
    33d4:	eeca2e4d 	swc3	$10,11853(s6)
    33d8:	281cba7e 	slti	gp,zero,-17794
    33dc:	e5d9c6be 	swc1	$f25,-14658(t6)
    33e0:	a6763464 	sh	s6,13412(s3)
    33e4:	eb5fd798 	swc2	$31,-10344(k0)
    33e8:	3c167beb 	lui	s6,0x7beb
    33ec:	d030c37f 	0xd030c37f
    33f0:	d8bd628a 	0xd8bd628a
    33f4:	aaf4de79 	swl	s4,-8583(s7)
    33f8:	cbcca511 	lwc2	$12,-23279(s8)
    33fc:	69315bb8 	0x69315bb8
    3400:	799e3395 	0x799e3395
    3404:	9cc71ca0 	0x9cc71ca0
    3408:	a207cb3c 	sb	a3,-13508(s0)
    340c:	7bf097f7 	0x7bf097f7
    3410:	32e0de86 	andi	zero,s7,0xde86
    3414:	cd73486c 	lwc3	$19,18540(t3)
    3418:	012e1b7c 	0x12e1b7c
    341c:	b2afde13 	0xb2afde13
    3420:	7b41354d 	0x7b41354d
    3424:	5852c1f1 	0x5852c1f1
    3428:	0a6583cf 	j	9960f3c <out_key+0x995eaa4>
    342c:	766e7131 	jalx	9b9c4c4 <out_key+0x9b9a02c>
    3430:	11aa7601 	beq	t5,t2,20c38 <out_key+0x1e7a0>
    3434:	0f63c3d2 	jal	d8f0f48 <out_key+0xd8eeab0>
    3438:	edb5e634 	swc3	$21,-6604(t5)
    343c:	3bb1733b 	xori	s1,sp,0x733b
    3440:	ebd13980 	swc2	$17,14720(s8)
    3444:	c8de086f 	lwc2	$30,2159(a2)
    3448:	074df409 	0x74df409
    344c:	6dfbec7e 	0x6dfbec7e
    3450:	e113605b 	swc0	$19,24667(t0)
    3454:	596227e0 	0x596227e0
    3458:	ad468f44 	sw	a2,-28860(t2)
    345c:	69b1fd0c 	0x69b1fd0c
    3460:	5c4f58ce 	0x5c4f58ce
    3464:	248364bb 	addiu	v1,a0,25787
    3468:	53dfa2ab 	0x53dfa2ab
    346c:	541d45e8 	0x541d45e8
    3470:	6ff02504 	0x6ff02504
    3474:	8e753156 	lw	s5,12630(s3)
    3478:	ccd9243a 	lwc3	$25,9274(a2)
    347c:	240e6edd 	addiu	t6,zero,28381
    3480:	1019bbf3 	beq	zero,t9,ffff2450 <out_key+0xfffeffb8>
    3484:	1d45134d 	0x1d45134d
    3488:	2b0a5123 	slti	t2,t8,20771
    348c:	e5e538f7 	swc1	$f5,14583(t7)
    3490:	438164d2 	c0	0x18164d2
    3494:	9429efe9 	lhu	t1,-4119(at)
    3498:	478abf03 	c1	0x18abf03
    349c:	4a0f9fdf 	c2	0xf9fdf
    34a0:	3cc9d29f 	0x3cc9d29f
    34a4:	4b1ed883 	c2	0x11ed883
    34a8:	b1ab3ff3 	0xb1ab3ff3
    34ac:	bd279cff 	0xbd279cff
    34b0:	73b5f009 	0x73b5f009
    34b4:	d8b8e4cb 	0xd8b8e4cb
    34b8:	87f26c6c 	lh	s2,27756(ra)
    34bc:	a71232ab 	sh	s2,12971(t8)
    34c0:	178b95e8 	bne	gp,t3,fffe8c64 <out_key+0xfffe67cc>
    34c4:	29b826d8 	slti	t8,t5,9944
    34c8:	e8673274 	swc2	$7,12916(v1)
    34cc:	928dbbcc 	lbu	t5,-17460(s4)
    34d0:	3cf98c0d 	0x3cf98c0d
    34d4:	0d698c71 	jal	5a631c4 <out_key+0x5a60d2c>
    34d8:	b879eac7 	swr	t9,-5433(v1)
    34dc:	20ab13f6 	addi	t3,a1,5110
    34e0:	c063c236 	lwc0	$3,-15818(v1)
    34e4:	a05fb163 	sb	ra,-20125(v0)
    34e8:	5cb49d54 	0x5cb49d54
    34ec:	0a7f8dfc 	j	9fe37f0 <out_key+0x9fe1358>
    34f0:	3e3b8b54 	0x3e3b8b54
    34f4:	9b4dd40e 	lwr	t5,-11250(k0)
    34f8:	5bb0a3d8 	0x5bb0a3d8
    34fc:	029ce4e9 	0x29ce4e9
    3500:	2196dfb5 	addi	s6,t4,-8267
    3504:	c260322e 	lwc0	$0,12846(s3)
    3508:	4da0eea6 	0x4da0eea6
    350c:	2300b408 	addi	zero,t8,-19448
    3510:	7e0f5e08 	0x7e0f5e08
    3514:	0a265f55 	j	8997d54 <out_key+0x89958bc>
    3518:	85a39713 	lh	v1,-26861(t5)
    351c:	fd22672a 	0xfd22672a
    3520:	7ad6dd2d 	0x7ad6dd2d
    3524:	8ad5a0cf 	lwl	s5,-24369(s6)
    3528:	5e762181 	0x5e762181
    352c:	c016a1b7 	lwc0	$22,-24137(zero)
    3530:	d3c08dce 	0xd3c08dce
    3534:	c58d2efe 	lwc1	$f13,12030(t4)
    3538:	7c4be81a 	0x7c4be81a
    353c:	af4db8ee 	sw	t5,-18194(k0)
    3540:	1a598d76 	0x1a598d76
    3544:	8b49b571 	lwl	t1,-19087(k0)
    3548:	e1f9846c 	swc0	$25,-31636(t7)
    354c:	0809cf99 	j	273e64 <out_key+0x2719cc>
    3550:	4ce91535 	0x4ce91535
    3554:	a9d96586 	swl	t9,25990(t6)
    3558:	e3d7c7e5 	swc0	$23,-14363(s8)
    355c:	571fea27 	0x571fea27
    3560:	1188c45a 	beq	t4,t0,ffff46cc <out_key+0xffff2234>
    3564:	0e4dfdd0 	jal	937f740 <out_key+0x937d2a8>
    3568:	13e52bfe 	beq	ra,a1,e564 <out_key+0xc0cc>
    356c:	02715346 	0x2715346
    3570:	4c272747 	0x4c272747
    3574:	8701b28f 	lh	at,-19825(t8)
    3578:	5bcd1c66 	0x5bcd1c66
    357c:	57e2464b 	0x57e2464b
    3580:	ae4ba37e 	sw	t3,-23682(s2)
    3584:	563e4187 	0x563e4187
    3588:	8b84863e 	lwl	a0,-31170(gp)
    358c:	5cba0003 	0x5cba0003
    3590:	57fd6da6 	0x57fd6da6
    3594:	38ba7ce0 	xori	k0,a1,0x7ce0
    3598:	31ab20ef 	andi	t3,t5,0x20ef
    359c:	2ea369a8 	sltiu	v1,s5,27048
    35a0:	f38e6f64 	0xf38e6f64
    35a4:	cfd00870 	lwc3	$16,2160(s8)
    35a8:	5e911e19 	0x5e911e19
    35ac:	71e145e9 	0x71e145e9
    35b0:	dff221c5 	0xdff221c5
    35b4:	cc035433 	lwc3	$3,21555(zero)
    35b8:	bd589958 	0xbd589958
    35bc:	3d8716e2 	0x3d8716e2
    35c0:	b1de9546 	0xb1de9546
    35c4:	a6c72767 	sh	a3,10087(s6)
    35c8:	afc612b7 	sw	a2,4791(s8)
    35cc:	775c5535 	jalx	d7154d4 <out_key+0xd71303c>
    35d0:	aa697461 	swl	t1,29793(s3)
    35d4:	d347cf05 	0xd347cf05
    35d8:	6bf59ad4 	0x6bf59ad4
    35dc:	0386ce2b 	0x386ce2b
    35e0:	7ae0c31a 	0x7ae0c31a
    35e4:	bd1ad7b3 	0xbd1ad7b3
    35e8:	c712fcb2 	lwc1	$f18,-846(t8)
    35ec:	65b9c2a9 	0x65b9c2a9
    35f0:	9bb188d3 	lwr	s1,-30509(sp)
    35f4:	b4ea58e0 	0xb4ea58e0
    35f8:	17dbaf32 	bne	s8,k1,fffef2c4 <out_key+0xfffece2c>
    35fc:	234af193 	addi	t2,k0,-3693
    3600:	6c7f6ed3 	0x6c7f6ed3
    3604:	f19fd0e9 	0xf19fd0e9
    3608:	c2a90574 	lwc0	$9,1396(s5)
    360c:	9ba07a90 	lwr	zero,31376(sp)
    3610:	62c8d731 	0x62c8d731
    3614:	09838c7c 	j	60e31f0 <out_key+0x60e0d58>
    3618:	9b52dee7 	lwr	s2,-8473(k0)
    361c:	e0cb4173 	swc0	$11,16755(a2)
    3620:	5ec8718c 	0x5ec8718c
    3624:	c07d23a7 	lwc0	$29,9127(v1)
    3628:	83989e41 	lb	t8,-25023(gp)
    362c:	c13951ac 	lwc0	$25,20908(t1)
    3630:	e82db841 	swc2	$13,-18367(at)
    3634:	3a0cd36a 	xori	t4,s0,0xd36a
    3638:	e3fd4eaf 	swc0	$29,20143(ra)
    363c:	54d0f371 	0x54d0f371
    3640:	64406927 	0x64406927
    3644:	f5df73fc 	0xf5df73fc
    3648:	6a4fc0a6 	0x6a4fc0a6
    364c:	19958df0 	0x19958df0
    3650:	d7bdb7c1 	0xd7bdb7c1
    3654:	4abf7350 	c2	0xbf7350
    3658:	6219b601 	0x6219b601
    365c:	a49c0b13 	sh	gp,2835(a0)
    3660:	476dd96d 	c1	0x16dd96d
    3664:	ff01d8f1 	0xff01d8f1
    3668:	95714a5a 	lhu	s1,19034(t3)
    366c:	2b0ac8e7 	slti	t2,t8,-14105
    3670:	2849e747 	slti	t1,v0,-6329
    3674:	ce7ff39f 	lwc3	$31,-3169(s3)
    3678:	baab3974 	swr	t3,14708(s5)
    367c:	095a1032 	j	56840c8 <out_key+0x5681c30>
    3680:	aa070550 	swl	a3,1360(s0)
    3684:	3c804a44 	0x3c804a44
    3688:	b262f670 	0xb262f670
    368c:	ba48e2b7 	swr	t0,-7497(s2)
    3690:	c004391e 	lwc0	$4,14622(zero)
    3694:	dd31cbed 	0xdd31cbed
    3698:	0325fd2f 	0x325fd2f
    369c:	c7ca2838 	lwc1	$f10,10296(s8)
    36a0:	65b196d3 	0x65b196d3
    36a4:	97a567eb 	lhu	a1,26603(sp)
    36a8:	d3d18930 	0xd3d18930
    36ac:	032e06c6 	0x32e06c6
    36b0:	24a7fbbe 	addiu	a3,a1,-1090
    36b4:	49d608d0 	0x49d608d0
    36b8:	f90507f5 	0xf90507f5
    36bc:	a9c3e674 	swl	v1,-6540(t6)
    36c0:	6c81b437 	0x6c81b437
    36c4:	6dcb7c0b 	0x6dcb7c0b
    36c8:	b32da836 	0xb32da836
    36cc:	1436e6fd 	bne	at,s6,ffffd2c4 <out_key+0xffffae2c>
    36d0:	7fc37aec 	0x7fc37aec
    36d4:	afa4cdf5 	sw	a0,-12811(sp)
    36d8:	4dc3720b 	0x4dc3720b
    36dc:	c38ff57b 	lwc0	$15,-2693(gp)
    36e0:	e8f15cd5 	swc2	$17,23765(a3)
    36e4:	c71baae6 	lwc1	$f27,-21786(t8)
    36e8:	2042af7f 	addi	v0,v0,-20609
    36ec:	5a9301e9 	0x5a9301e9
    36f0:	4c14e556 	0x4c14e556
    36f4:	7ea7bfd8 	0x7ea7bfd8
    36f8:	7555f8bc 	jalx	557e2f0 <out_key+0x557be58>
    36fc:	d6e98b55 	0xd6e98b55
    3700:	c208d69d 	lwc0	$8,-10595(s0)
    3704:	eba8b223 	swc2	$8,-19933(sp)
    3708:	c0b17c8c 	lwc0	$17,31884(a1)
    370c:	46d47674 	c1	0xd47674
    3710:	7aed1469 	0x7aed1469
    3714:	e50eb1e7 	swc1	$f14,-19993(t0)
    3718:	c9638c61 	lwc2	$3,-29599(t3)
    371c:	681ae243 	0x681ae243
    3720:	e919b034 	swc2	$25,-20428(t0)
    3724:	5088dc90 	0x5088dc90
    3728:	ccc06800 	lwc3	$0,26624(a2)
    372c:	9853afff 	lwr	s3,-20481(v0)
    3730:	7b287414 	0x7b287414
    3734:	bf4f443d 	0xbf4f443d
    3738:	e0d44cd6 	swc0	$20,19670(a2)
    373c:	beea5742 	0xbeea5742
    3740:	e033bb66 	swc0	$19,-17562(at)
    3744:	28309b6a 	slti	s0,at,-25750
    3748:	d869d46d 	0xd869d46d
    374c:	e97278e1 	swc2	$18,30945(t3)
    3750:	9d820d3a 	0x9d820d3a
    3754:	2c6fdfd3 	sltiu	t7,v1,-8237
    3758:	456c4111 	0x456c4111
    375c:	d5bc4bc5 	0xd5bc4bc5
    3760:	f2284a21 	0xf2284a21
    3764:	620912cc 	0x620912cc
    3768:	c17a64ce 	lwc0	$26,25806(t3)
    376c:	ccbdf3ad 	lwc3	$29,-3155(a1)
    3770:	476ee6f3 	c1	0x16ee6f3
    3774:	67a56312 	0x67a56312
    3778:	57d1b722 	0x57d1b722
    377c:	c302c7c1 	lwc0	$2,-14399(t8)
    3780:	b697926b 	0xb697926b
    3784:	caa6de4f 	lwc2	$6,-8625(s5)
    3788:	c48d59c5 	lwc1	$f13,22981(a0)
    378c:	feb81034 	0xfeb81034
    3790:	03d80935 	0x3d80935
    3794:	4d1dde80 	0x4d1dde80
    3798:	942b752b 	lhu	t3,29995(at)
    379c:	a63b99cf 	sh	k1,-26161(s1)
    37a0:	995ad378 	lwr	k0,-11400(t2)
    37a4:	ff6e5b62 	0xff6e5b62
    37a8:	82ab955c 	lb	t3,-27300(s5)
    37ac:	2bb32b1a 	slti	s3,sp,11034
    37b0:	b90f0710 	swr	t7,1808(t0)
    37b4:	5d6f55a2 	0x5d6f55a2
    37b8:	208f0e00 	addi	t7,a0,3584
    37bc:	ad0146c5 	sw	at,18117(t0)
    37c0:	d8aae78e 	0xd8aae78e
    37c4:	aeeed120 	sw	t6,-12000(s7)
    37c8:	16e4d027 	bne	s7,a0,ffff7868 <out_key+0xffff53d0>
    37cc:	620f320d 	0x620f320d
    37d0:	45dca9d0 	0x45dca9d0
    37d4:	444065d1 	0x444065d1
    37d8:	75af5dd4 	jalx	6bd7750 <out_key+0x6bd52b8>
    37dc:	fd494bf9 	0xfd494bf9
    37e0:	0135b45e 	0x135b45e
    37e4:	7b52a820 	0x7b52a820
    37e8:	418a88fc 	0x418a88fc
    37ec:	5a42c1b9 	0x5a42c1b9
    37f0:	3cf8aca1 	0x3cf8aca1
    37f4:	e480826e 	swc1	$f0,-32146(a0)
    37f8:	765cc639 	jalx	97318e4 <out_key+0x972f44c>
    37fc:	335352f0 	andi	s3,k0,0x52f0
    3800:	417494df 	0x417494df
    3804:	ce947c6d 	lwc3	$20,31853(s4)
    3808:	36ca1ca9 	ori	t2,s6,0x1ca9
    380c:	ca641beb 	lwc2	$4,7147(s3)
    3810:	ed3132bc 	swc3	$17,12988(t1)
    3814:	4858ba61 	0x4858ba61
    3818:	2812519d 	slti	s2,zero,20893
    381c:	786dc12e 	0x786dc12e
    3820:	035035b6 	0x35035b6
    3824:	1fd6a520 	0x1fd6a520
    3828:	975e0471 	lhu	s8,1137(k0)
    382c:	4edccd24 	c3	0xdccd24
    3830:	85ed9701 	lh	t5,-26879(t7)
    3834:	32a03fd2 	andi	zero,s5,0x3fd2
    3838:	41549458 	0x41549458
    383c:	210ed05c 	addi	t6,t0,-12196
    3840:	ae75a4b5 	sw	s5,-23371(s3)
    3844:	c59bee90 	lwc1	$f27,-4464(t4)
    3848:	f61a0cd0 	0xf61a0cd0
    384c:	3c3a5f79 	0x3c3a5f79
    3850:	69851d40 	0x69851d40
    3854:	1829ddb8 	0x1829ddb8
    3858:	274da971 	addiu	t5,k0,-22159
    385c:	8ba025e8 	lwl	zero,9704(sp)
    3860:	6453b8d1 	0x6453b8d1
    3864:	043530eb 	0x43530eb
    3868:	3e67f715 	0x3e67f715
    386c:	383c6d9a 	xori	gp,at,0x6d9a
    3870:	4c065d5e 	0x4c065d5e
    3874:	45134bcc 	0x45134bcc
    3878:	4109df74 	0x4109df74
    387c:	fbf57215 	0xfbf57215
    3880:	f4f72e98 	0xf4f72e98
    3884:	3dd769f7 	0x3dd769f7
    3888:	2d3d0b73 	sltiu	sp,t1,2931
    388c:	a31137ce 	sb	s1,14286(t8)
    3890:	360fad73 	ori	t7,s0,0xad73
    3894:	7f0c023e 	0x7f0c023e
    3898:	e3a0032a 	swc0	$0,810(sp)
    389c:	fd37a595 	0xfd37a595
    38a0:	02e78679 	0x2e78679
    38a4:	424f197b 	c0	0x4f197b
    38a8:	d98bad57 	0xd98bad57
    38ac:	e8e85e94 	swc2	$8,24212(a3)
    38b0:	a9a62024 	swl	a2,8228(t5)
    38b4:	9ecb8d91 	0x9ecb8d91
    38b8:	1a7cb254 	0x1a7cb254
    38bc:	ef17cc68 	swc3	$23,-13208(t8)
    38c0:	c6ba9097 	lwc1	$f26,-28521(s5)
    38c4:	5197ec82 	0x5197ec82
    38c8:	f9485567 	0xf9485567
    38cc:	6db77895 	0x6db77895
    38d0:	2d3e5aee 	sltiu	s8,t1,23278
    38d4:	91226dd1 	lbu	v0,28113(t1)
    38d8:	7e81cf81 	0x7e81cf81
    38dc:	4c5cb83a 	0x4c5cb83a
    38e0:	796b3127 	0x796b3127
    38e4:	4aa0d223 	c2	0xa0d223
