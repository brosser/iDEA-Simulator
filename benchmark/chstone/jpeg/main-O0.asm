
main.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <read_byte>:
/*
 *  Read from Buffer
 */
int
read_byte (void)
{
       0:	27bdfff8 	addiu	sp,sp,-8
       4:	afbe0004 	sw	s8,4(sp)
       8:	03a0f021 	addu	s8,sp,zero
  return *ReadBuf++;
       c:	8f820010 	lw	v0,16(gp)
      10:	00000000 	sll	zero,zero,0x0
      14:	90430000 	lbu	v1,0(v0)
      18:	24420001 	addiu	v0,v0,1
      1c:	af820010 	sw	v0,16(gp)
      20:	00601021 	addu	v0,v1,zero
}
      24:	03c0e821 	addu	sp,s8,zero
      28:	8fbe0004 	lw	s8,4(sp)
      2c:	27bd0008 	addiu	sp,sp,8
      30:	03e00008 	jr	ra
      34:	00000000 	sll	zero,zero,0x0

00000038 <read_word>:


short
read_word (void)
{
      38:	27bdfff0 	addiu	sp,sp,-16
      3c:	afbe000c 	sw	s8,12(sp)
      40:	03a0f021 	addu	s8,sp,zero
  short c;

  c = *ReadBuf++ << 8;
      44:	8f820010 	lw	v0,16(gp)
      48:	00000000 	sll	zero,zero,0x0
      4c:	90430000 	lbu	v1,0(v0)
      50:	00000000 	sll	zero,zero,0x0
      54:	00031a00 	sll	v1,v1,0x8
      58:	a7c30000 	sh	v1,0(s8)
      5c:	24420001 	addiu	v0,v0,1
      60:	af820010 	sw	v0,16(gp)
  c |= *ReadBuf++;
      64:	8f820010 	lw	v0,16(gp)
      68:	00000000 	sll	zero,zero,0x0
      6c:	90430000 	lbu	v1,0(v0)
      70:	00000000 	sll	zero,zero,0x0
      74:	00032400 	sll	a0,v1,0x10
      78:	00042403 	sra	a0,a0,0x10
      7c:	97c30000 	lhu	v1,0(s8)
      80:	00000000 	sll	zero,zero,0x0
      84:	00831825 	or	v1,a0,v1
      88:	a7c30000 	sh	v1,0(s8)
      8c:	24420001 	addiu	v0,v0,1
      90:	af820010 	sw	v0,16(gp)

  return c;
      94:	87c20000 	lh	v0,0(s8)
}
      98:	03c0e821 	addu	sp,s8,zero
      9c:	8fbe000c 	lw	s8,12(sp)
      a0:	27bd0010 	addiu	sp,sp,16
      a4:	03e00008 	jr	ra
      a8:	00000000 	sll	zero,zero,0x0

000000ac <first_marker>:

int
first_marker (void)
{
      ac:	27bdffe0 	addiu	sp,sp,-32
      b0:	afbf001c 	sw	ra,28(sp)
      b4:	afbe0018 	sw	s8,24(sp)
      b8:	03a0f021 	addu	s8,sp,zero
  int c1, c2;
  c1 = read_byte ();
      bc:	0c000000 	jal	0 <read_byte>
      c0:	00000000 	sll	zero,zero,0x0
      c4:	afc20010 	sw	v0,16(s8)
  c2 = read_byte ();
      c8:	0c000000 	jal	0 <read_byte>
      cc:	00000000 	sll	zero,zero,0x0
      d0:	afc20014 	sw	v0,20(s8)

  if (c1 != 0xFF || c2 != M_SOI)
      d4:	8fc30010 	lw	v1,16(s8)
      d8:	240200ff 	addiu	v0,zero,255
      dc:	14620005 	bne	v1,v0,f4 <first_marker+0x48>
      e0:	00000000 	sll	zero,zero,0x0
      e4:	8fc30014 	lw	v1,20(s8)
      e8:	240200d8 	addiu	v0,zero,216
      ec:	1062000c 	beq	v1,v0,120 <first_marker+0x74>
      f0:	00000000 	sll	zero,zero,0x0
    {
      main_result++;
      f4:	8f820000 	lw	v0,0(gp)
      f8:	00000000 	sll	zero,zero,0x0
      fc:	24420001 	addiu	v0,v0,1
     100:	af820000 	sw	v0,0(gp)
      printf ("Not Jpeg File!\n");
     104:	3c020000 	lui	v0,0x0
     108:	2444544c 	addiu	a0,v0,21580
     10c:	0c000000 	jal	0 <read_byte>
     110:	00000000 	sll	zero,zero,0x0
      EXIT;
     114:	00002021 	addu	a0,zero,zero
     118:	0c000000 	jal	0 <read_byte>
     11c:	00000000 	sll	zero,zero,0x0
    }

  return c2;
     120:	8fc20014 	lw	v0,20(s8)
}
     124:	03c0e821 	addu	sp,s8,zero
     128:	8fbf001c 	lw	ra,28(sp)
     12c:	8fbe0018 	lw	s8,24(sp)
     130:	27bd0020 	addiu	sp,sp,32
     134:	03e00008 	jr	ra
     138:	00000000 	sll	zero,zero,0x0

0000013c <next_marker>:


int
next_marker (void)
{
     13c:	27bdffe0 	addiu	sp,sp,-32
     140:	afbf001c 	sw	ra,28(sp)
     144:	afbe0018 	sw	s8,24(sp)
     148:	03a0f021 	addu	s8,sp,zero
     14c:	08000056 	j	158 <next_marker+0x1c>
     150:	00000000 	sll	zero,zero,0x0
	  c = read_byte ();
	}
      while (c == 0xff);
      if (c != 0)
	break;
    }
     154:	00000000 	sll	zero,zero,0x0
{
  int c;

  for (;;)
    {
      c = read_byte ();
     158:	0c000000 	jal	0 <read_byte>
     15c:	00000000 	sll	zero,zero,0x0
     160:	afc20010 	sw	v0,16(s8)

      while (c != 0xff)
     164:	0800005e 	j	178 <next_marker+0x3c>
     168:	00000000 	sll	zero,zero,0x0
	c = read_byte ();
     16c:	0c000000 	jal	0 <read_byte>
     170:	00000000 	sll	zero,zero,0x0
     174:	afc20010 	sw	v0,16(s8)

  for (;;)
    {
      c = read_byte ();

      while (c != 0xff)
     178:	8fc30010 	lw	v1,16(s8)
     17c:	240200ff 	addiu	v0,zero,255
     180:	1462fffa 	bne	v1,v0,16c <next_marker+0x30>
     184:	00000000 	sll	zero,zero,0x0
	c = read_byte ();

      do
	{
	  c = read_byte ();
     188:	0c000000 	jal	0 <read_byte>
     18c:	00000000 	sll	zero,zero,0x0
     190:	afc20010 	sw	v0,16(s8)
	}
      while (c == 0xff);
     194:	8fc30010 	lw	v1,16(s8)
     198:	240200ff 	addiu	v0,zero,255
     19c:	1062fffa 	beq	v1,v0,188 <next_marker+0x4c>
     1a0:	00000000 	sll	zero,zero,0x0
      if (c != 0)
     1a4:	8fc20010 	lw	v0,16(s8)
     1a8:	00000000 	sll	zero,zero,0x0
     1ac:	1040ffe9 	beqz	v0,154 <next_marker+0x18>
     1b0:	00000000 	sll	zero,zero,0x0
	break;
    }
  return c;
     1b4:	8fc20010 	lw	v0,16(s8)
}
     1b8:	03c0e821 	addu	sp,s8,zero
     1bc:	8fbf001c 	lw	ra,28(sp)
     1c0:	8fbe0018 	lw	s8,24(sp)
     1c4:	27bd0020 	addiu	sp,sp,32
     1c8:	03e00008 	jr	ra
     1cc:	00000000 	sll	zero,zero,0x0

000001d0 <get_sof>:
/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
{
     1d0:	27bdffc8 	addiu	sp,sp,-56
     1d4:	afbf0034 	sw	ra,52(sp)
     1d8:	afbe0030 	sw	s8,48(sp)
     1dc:	03a0f021 	addu	s8,sp,zero
  char *p_comp_info_id;
  char *p_comp_info_h_samp_factor;
  char *p_comp_info_v_samp_factor;
  char *p_comp_info_quant_tbl_no;

  length = read_word ();
     1e0:	0c000000 	jal	0 <read_byte>
     1e4:	00000000 	sll	zero,zero,0x0
     1e8:	afc20014 	sw	v0,20(s8)
  p_jinfo_data_precision = read_byte ();
     1ec:	0c000000 	jal	0 <read_byte>
     1f0:	00000000 	sll	zero,zero,0x0
     1f4:	00021600 	sll	v0,v0,0x18
     1f8:	00021603 	sra	v0,v0,0x18
     1fc:	a3820000 	sb	v0,0(gp)
  p_jinfo_image_height = read_word ();
     200:	0c000000 	jal	0 <read_byte>
     204:	00000000 	sll	zero,zero,0x0
     208:	a7820000 	sh	v0,0(gp)
  p_jinfo_image_width = read_word ();
     20c:	0c000000 	jal	0 <read_byte>
     210:	00000000 	sll	zero,zero,0x0
     214:	a7820000 	sh	v0,0(gp)
  p_jinfo_num_components = read_byte ();
     218:	0c000000 	jal	0 <read_byte>
     21c:	00000000 	sll	zero,zero,0x0
     220:	00021600 	sll	v0,v0,0x18
     224:	00021603 	sra	v0,v0,0x18
     228:	a3820000 	sb	v0,0(gp)

  printf ("length         = %d\n", length);
     22c:	3c020000 	lui	v0,0x0
     230:	2444545c 	addiu	a0,v0,21596
     234:	8fc50014 	lw	a1,20(s8)
     238:	0c000000 	jal	0 <read_byte>
     23c:	00000000 	sll	zero,zero,0x0
  printf ("data_precision = %d\n", p_jinfo_data_precision);
     240:	83820000 	lb	v0,0(gp)
     244:	3c030000 	lui	v1,0x0
     248:	24645474 	addiu	a0,v1,21620
     24c:	00402821 	addu	a1,v0,zero
     250:	0c000000 	jal	0 <read_byte>
     254:	00000000 	sll	zero,zero,0x0
  printf ("image_height   = %d\n", p_jinfo_image_height);
     258:	87820000 	lh	v0,0(gp)
     25c:	3c030000 	lui	v1,0x0
     260:	2464548c 	addiu	a0,v1,21644
     264:	00402821 	addu	a1,v0,zero
     268:	0c000000 	jal	0 <read_byte>
     26c:	00000000 	sll	zero,zero,0x0
  printf ("image_width    = %d\n", p_jinfo_image_width);
     270:	87820000 	lh	v0,0(gp)
     274:	3c030000 	lui	v1,0x0
     278:	246454a4 	addiu	a0,v1,21668
     27c:	00402821 	addu	a1,v0,zero
     280:	0c000000 	jal	0 <read_byte>
     284:	00000000 	sll	zero,zero,0x0
  printf ("num_components = %d\n", p_jinfo_num_components);
     288:	83820000 	lb	v0,0(gp)
     28c:	3c030000 	lui	v1,0x0
     290:	246454bc 	addiu	a0,v1,21692
     294:	00402821 	addu	a1,v0,zero
     298:	0c000000 	jal	0 <read_byte>
     29c:	00000000 	sll	zero,zero,0x0

  if (length != out_length_get_sof)
     2a0:	8f820000 	lw	v0,0(gp)
     2a4:	8fc30014 	lw	v1,20(s8)
     2a8:	00000000 	sll	zero,zero,0x0
     2ac:	10620005 	beq	v1,v0,2c4 <get_sof+0xf4>
     2b0:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     2b4:	8f820000 	lw	v0,0(gp)
     2b8:	00000000 	sll	zero,zero,0x0
     2bc:	24420001 	addiu	v0,v0,1
     2c0:	af820000 	sw	v0,0(gp)
    }
  if (p_jinfo_data_precision != out_data_precision_get_sof)
     2c4:	83820000 	lb	v0,0(gp)
     2c8:	00000000 	sll	zero,zero,0x0
     2cc:	00401821 	addu	v1,v0,zero
     2d0:	8f820000 	lw	v0,0(gp)
     2d4:	00000000 	sll	zero,zero,0x0
     2d8:	10620005 	beq	v1,v0,2f0 <get_sof+0x120>
     2dc:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     2e0:	8f820000 	lw	v0,0(gp)
     2e4:	00000000 	sll	zero,zero,0x0
     2e8:	24420001 	addiu	v0,v0,1
     2ec:	af820000 	sw	v0,0(gp)
    }
  if (p_jinfo_image_height != out_p_jinfo_image_height_get_sof)
     2f0:	87820000 	lh	v0,0(gp)
     2f4:	00000000 	sll	zero,zero,0x0
     2f8:	00401821 	addu	v1,v0,zero
     2fc:	8f820000 	lw	v0,0(gp)
     300:	00000000 	sll	zero,zero,0x0
     304:	10620005 	beq	v1,v0,31c <get_sof+0x14c>
     308:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     30c:	8f820000 	lw	v0,0(gp)
     310:	00000000 	sll	zero,zero,0x0
     314:	24420001 	addiu	v0,v0,1
     318:	af820000 	sw	v0,0(gp)
    }
  if (p_jinfo_image_width != out_p_jinfo_image_width_get_sof)
     31c:	87820000 	lh	v0,0(gp)
     320:	00000000 	sll	zero,zero,0x0
     324:	00401821 	addu	v1,v0,zero
     328:	8f820000 	lw	v0,0(gp)
     32c:	00000000 	sll	zero,zero,0x0
     330:	10620005 	beq	v1,v0,348 <get_sof+0x178>
     334:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     338:	8f820000 	lw	v0,0(gp)
     33c:	00000000 	sll	zero,zero,0x0
     340:	24420001 	addiu	v0,v0,1
     344:	af820000 	sw	v0,0(gp)
    }
  if (p_jinfo_num_components != out_p_jinfo_num_components_get_sof)
     348:	83820000 	lb	v0,0(gp)
     34c:	00000000 	sll	zero,zero,0x0
     350:	00401821 	addu	v1,v0,zero
     354:	8f820000 	lw	v0,0(gp)
     358:	00000000 	sll	zero,zero,0x0
     35c:	10620005 	beq	v1,v0,374 <get_sof+0x1a4>
     360:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     364:	8f820000 	lw	v0,0(gp)
     368:	00000000 	sll	zero,zero,0x0
     36c:	24420001 	addiu	v0,v0,1
     370:	af820000 	sw	v0,0(gp)
    }

  length -= 8;
     374:	8fc20014 	lw	v0,20(s8)
     378:	00000000 	sll	zero,zero,0x0
     37c:	2442fff8 	addiu	v0,v0,-8
     380:	afc20014 	sw	v0,20(s8)

  /* Omit error check */

  /* Check components */
  for (ci = 0; ci < p_jinfo_num_components; ci++)
     384:	afc00010 	sw	zero,16(s8)
     388:	080001b0 	j	6c0 <get_sof+0x4f0>
     38c:	00000000 	sll	zero,zero,0x0
    {
      p_comp_info_index = &p_jinfo_comps_info_index[ci];
     390:	8fc30010 	lw	v1,16(s8)
     394:	27820000 	addiu	v0,gp,0
     398:	00621021 	addu	v0,v1,v0
     39c:	afc20018 	sw	v0,24(s8)
      p_comp_info_id = &p_jinfo_comps_info_id[ci];
     3a0:	8fc30010 	lw	v1,16(s8)
     3a4:	27820000 	addiu	v0,gp,0
     3a8:	00621021 	addu	v0,v1,v0
     3ac:	afc2001c 	sw	v0,28(s8)
      p_comp_info_h_samp_factor = &p_jinfo_comps_info_h_samp_factor[ci];
     3b0:	8fc30010 	lw	v1,16(s8)
     3b4:	27820000 	addiu	v0,gp,0
     3b8:	00621021 	addu	v0,v1,v0
     3bc:	afc20020 	sw	v0,32(s8)
      p_comp_info_v_samp_factor = &p_jinfo_comps_info_v_samp_factor[ci];
     3c0:	8fc30010 	lw	v1,16(s8)
     3c4:	27820000 	addiu	v0,gp,0
     3c8:	00621021 	addu	v0,v1,v0
     3cc:	afc20024 	sw	v0,36(s8)
      p_comp_info_quant_tbl_no = &p_jinfo_comps_info_quant_tbl_no[ci];
     3d0:	8fc30010 	lw	v1,16(s8)
     3d4:	27820000 	addiu	v0,gp,0
     3d8:	00621021 	addu	v0,v1,v0
     3dc:	afc20028 	sw	v0,40(s8)

      *p_comp_info_index = ci;
     3e0:	8fc20010 	lw	v0,16(s8)
     3e4:	00000000 	sll	zero,zero,0x0
     3e8:	00021e00 	sll	v1,v0,0x18
     3ec:	00031e03 	sra	v1,v1,0x18
     3f0:	8fc20018 	lw	v0,24(s8)
     3f4:	00000000 	sll	zero,zero,0x0
     3f8:	a0430000 	sb	v1,0(v0)
      *p_comp_info_id = read_byte ();
     3fc:	0c000000 	jal	0 <read_byte>
     400:	00000000 	sll	zero,zero,0x0
     404:	00021e00 	sll	v1,v0,0x18
     408:	00031e03 	sra	v1,v1,0x18
     40c:	8fc2001c 	lw	v0,28(s8)
     410:	00000000 	sll	zero,zero,0x0
     414:	a0430000 	sb	v1,0(v0)
      c = read_byte ();
     418:	0c000000 	jal	0 <read_byte>
     41c:	00000000 	sll	zero,zero,0x0
     420:	afc2002c 	sw	v0,44(s8)
      *p_comp_info_h_samp_factor = (c >> 4) & 15;
     424:	8fc2002c 	lw	v0,44(s8)
     428:	00000000 	sll	zero,zero,0x0
     42c:	00021103 	sra	v0,v0,0x4
     430:	00021600 	sll	v0,v0,0x18
     434:	00021603 	sra	v0,v0,0x18
     438:	3042000f 	andi	v0,v0,0xf
     43c:	00021e00 	sll	v1,v0,0x18
     440:	00031e03 	sra	v1,v1,0x18
     444:	8fc20020 	lw	v0,32(s8)
     448:	00000000 	sll	zero,zero,0x0
     44c:	a0430000 	sb	v1,0(v0)
      *p_comp_info_v_samp_factor = (c) & 15;
     450:	8fc2002c 	lw	v0,44(s8)
     454:	00000000 	sll	zero,zero,0x0
     458:	00021600 	sll	v0,v0,0x18
     45c:	00021603 	sra	v0,v0,0x18
     460:	3042000f 	andi	v0,v0,0xf
     464:	00021e00 	sll	v1,v0,0x18
     468:	00031e03 	sra	v1,v1,0x18
     46c:	8fc20024 	lw	v0,36(s8)
     470:	00000000 	sll	zero,zero,0x0
     474:	a0430000 	sb	v1,0(v0)
      *p_comp_info_quant_tbl_no = read_byte ();
     478:	0c000000 	jal	0 <read_byte>
     47c:	00000000 	sll	zero,zero,0x0
     480:	00021e00 	sll	v1,v0,0x18
     484:	00031e03 	sra	v1,v1,0x18
     488:	8fc20028 	lw	v0,40(s8)
     48c:	00000000 	sll	zero,zero,0x0
     490:	a0430000 	sb	v1,0(v0)

      printf (" index         = %d\n", *p_comp_info_index);
     494:	8fc20018 	lw	v0,24(s8)
     498:	00000000 	sll	zero,zero,0x0
     49c:	80420000 	lb	v0,0(v0)
     4a0:	3c030000 	lui	v1,0x0
     4a4:	246454d4 	addiu	a0,v1,21716
     4a8:	00402821 	addu	a1,v0,zero
     4ac:	0c000000 	jal	0 <read_byte>
     4b0:	00000000 	sll	zero,zero,0x0
      printf (" id            = %d\n", *p_comp_info_id);
     4b4:	8fc2001c 	lw	v0,28(s8)
     4b8:	00000000 	sll	zero,zero,0x0
     4bc:	80420000 	lb	v0,0(v0)
     4c0:	3c030000 	lui	v1,0x0
     4c4:	246454ec 	addiu	a0,v1,21740
     4c8:	00402821 	addu	a1,v0,zero
     4cc:	0c000000 	jal	0 <read_byte>
     4d0:	00000000 	sll	zero,zero,0x0
      printf (" h_samp_factor = %d\n", *p_comp_info_h_samp_factor);
     4d4:	8fc20020 	lw	v0,32(s8)
     4d8:	00000000 	sll	zero,zero,0x0
     4dc:	80420000 	lb	v0,0(v0)
     4e0:	3c030000 	lui	v1,0x0
     4e4:	24645504 	addiu	a0,v1,21764
     4e8:	00402821 	addu	a1,v0,zero
     4ec:	0c000000 	jal	0 <read_byte>
     4f0:	00000000 	sll	zero,zero,0x0
      printf (" v_samp_factor = %d\n", *p_comp_info_v_samp_factor);
     4f4:	8fc20024 	lw	v0,36(s8)
     4f8:	00000000 	sll	zero,zero,0x0
     4fc:	80420000 	lb	v0,0(v0)
     500:	3c030000 	lui	v1,0x0
     504:	2464551c 	addiu	a0,v1,21788
     508:	00402821 	addu	a1,v0,zero
     50c:	0c000000 	jal	0 <read_byte>
     510:	00000000 	sll	zero,zero,0x0
      printf (" quant_tbl_no  = %d\n\n", *p_comp_info_quant_tbl_no);
     514:	8fc20028 	lw	v0,40(s8)
     518:	00000000 	sll	zero,zero,0x0
     51c:	80420000 	lb	v0,0(v0)
     520:	3c030000 	lui	v1,0x0
     524:	24645534 	addiu	a0,v1,21812
     528:	00402821 	addu	a1,v0,zero
     52c:	0c000000 	jal	0 <read_byte>
     530:	00000000 	sll	zero,zero,0x0

      if (*p_comp_info_index != out_index_get_sof[ci])
     534:	8fc20018 	lw	v0,24(s8)
     538:	00000000 	sll	zero,zero,0x0
     53c:	80420000 	lb	v0,0(v0)
     540:	00000000 	sll	zero,zero,0x0
     544:	00401821 	addu	v1,v0,zero
     548:	3c020000 	lui	v0,0x0
     54c:	8fc40010 	lw	a0,16(s8)
     550:	00000000 	sll	zero,zero,0x0
     554:	00042080 	sll	a0,a0,0x2
     558:	24420000 	addiu	v0,v0,0
     55c:	00821021 	addu	v0,a0,v0
     560:	8c420000 	lw	v0,0(v0)
     564:	00000000 	sll	zero,zero,0x0
     568:	10620005 	beq	v1,v0,580 <get_sof+0x3b0>
     56c:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     570:	8f820000 	lw	v0,0(gp)
     574:	00000000 	sll	zero,zero,0x0
     578:	24420001 	addiu	v0,v0,1
     57c:	af820000 	sw	v0,0(gp)
	}
      if (*p_comp_info_id != out_id_get_sof[ci])
     580:	8fc2001c 	lw	v0,28(s8)
     584:	00000000 	sll	zero,zero,0x0
     588:	80420000 	lb	v0,0(v0)
     58c:	00000000 	sll	zero,zero,0x0
     590:	00401821 	addu	v1,v0,zero
     594:	3c020000 	lui	v0,0x0
     598:	8fc40010 	lw	a0,16(s8)
     59c:	00000000 	sll	zero,zero,0x0
     5a0:	00042080 	sll	a0,a0,0x2
     5a4:	24420000 	addiu	v0,v0,0
     5a8:	00821021 	addu	v0,a0,v0
     5ac:	8c420000 	lw	v0,0(v0)
     5b0:	00000000 	sll	zero,zero,0x0
     5b4:	10620005 	beq	v1,v0,5cc <get_sof+0x3fc>
     5b8:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     5bc:	8f820000 	lw	v0,0(gp)
     5c0:	00000000 	sll	zero,zero,0x0
     5c4:	24420001 	addiu	v0,v0,1
     5c8:	af820000 	sw	v0,0(gp)
	}
      if (*p_comp_info_h_samp_factor != out_h_samp_factor_get_sof[ci])
     5cc:	8fc20020 	lw	v0,32(s8)
     5d0:	00000000 	sll	zero,zero,0x0
     5d4:	80420000 	lb	v0,0(v0)
     5d8:	00000000 	sll	zero,zero,0x0
     5dc:	00401821 	addu	v1,v0,zero
     5e0:	3c020000 	lui	v0,0x0
     5e4:	8fc40010 	lw	a0,16(s8)
     5e8:	00000000 	sll	zero,zero,0x0
     5ec:	00042080 	sll	a0,a0,0x2
     5f0:	24420000 	addiu	v0,v0,0
     5f4:	00821021 	addu	v0,a0,v0
     5f8:	8c420000 	lw	v0,0(v0)
     5fc:	00000000 	sll	zero,zero,0x0
     600:	10620005 	beq	v1,v0,618 <get_sof+0x448>
     604:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     608:	8f820000 	lw	v0,0(gp)
     60c:	00000000 	sll	zero,zero,0x0
     610:	24420001 	addiu	v0,v0,1
     614:	af820000 	sw	v0,0(gp)
	}
      if (*p_comp_info_v_samp_factor != out_v_samp_factor_get_sof[ci])
     618:	8fc20024 	lw	v0,36(s8)
     61c:	00000000 	sll	zero,zero,0x0
     620:	80420000 	lb	v0,0(v0)
     624:	00000000 	sll	zero,zero,0x0
     628:	00401821 	addu	v1,v0,zero
     62c:	3c020000 	lui	v0,0x0
     630:	8fc40010 	lw	a0,16(s8)
     634:	00000000 	sll	zero,zero,0x0
     638:	00042080 	sll	a0,a0,0x2
     63c:	24420000 	addiu	v0,v0,0
     640:	00821021 	addu	v0,a0,v0
     644:	8c420000 	lw	v0,0(v0)
     648:	00000000 	sll	zero,zero,0x0
     64c:	10620005 	beq	v1,v0,664 <get_sof+0x494>
     650:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     654:	8f820000 	lw	v0,0(gp)
     658:	00000000 	sll	zero,zero,0x0
     65c:	24420001 	addiu	v0,v0,1
     660:	af820000 	sw	v0,0(gp)
	}
      if (*p_comp_info_quant_tbl_no != out_quant_tbl_no_get_sof[ci])
     664:	8fc20028 	lw	v0,40(s8)
     668:	00000000 	sll	zero,zero,0x0
     66c:	80420000 	lb	v0,0(v0)
     670:	00000000 	sll	zero,zero,0x0
     674:	00401821 	addu	v1,v0,zero
     678:	3c020000 	lui	v0,0x0
     67c:	8fc40010 	lw	a0,16(s8)
     680:	00000000 	sll	zero,zero,0x0
     684:	00042080 	sll	a0,a0,0x2
     688:	24420000 	addiu	v0,v0,0
     68c:	00821021 	addu	v0,a0,v0
     690:	8c420000 	lw	v0,0(v0)
     694:	00000000 	sll	zero,zero,0x0
     698:	10620005 	beq	v1,v0,6b0 <get_sof+0x4e0>
     69c:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     6a0:	8f820000 	lw	v0,0(gp)
     6a4:	00000000 	sll	zero,zero,0x0
     6a8:	24420001 	addiu	v0,v0,1
     6ac:	af820000 	sw	v0,0(gp)
  length -= 8;

  /* Omit error check */

  /* Check components */
  for (ci = 0; ci < p_jinfo_num_components; ci++)
     6b0:	8fc20010 	lw	v0,16(s8)
     6b4:	00000000 	sll	zero,zero,0x0
     6b8:	24420001 	addiu	v0,v0,1
     6bc:	afc20010 	sw	v0,16(s8)
     6c0:	83820000 	lb	v0,0(gp)
     6c4:	00000000 	sll	zero,zero,0x0
     6c8:	00401821 	addu	v1,v0,zero
     6cc:	8fc20010 	lw	v0,16(s8)
     6d0:	00000000 	sll	zero,zero,0x0
     6d4:	0043102a 	slt	v0,v0,v1
     6d8:	1440ff2d 	bnez	v0,390 <get_sof+0x1c0>
     6dc:	00000000 	sll	zero,zero,0x0

  /*
   *  Determine Sampling Factor
   *  Only 1_1_1 and 4_1_1 are supported
   */
  if (p_jinfo_comps_info_h_samp_factor[0] == 2)
     6e0:	83830000 	lb	v1,0(gp)
     6e4:	24020002 	addiu	v0,zero,2
     6e8:	14620009 	bne	v1,v0,710 <get_sof+0x540>
     6ec:	00000000 	sll	zero,zero,0x0
    {
      p_jinfo_smp_fact = SF4_1_1;
     6f0:	24020002 	addiu	v0,zero,2
     6f4:	af820000 	sw	v0,0(gp)
      printf ("\nSampling Factor is 4:1:1\n");
     6f8:	3c020000 	lui	v0,0x0
     6fc:	2444554c 	addiu	a0,v0,21836
     700:	0c000000 	jal	0 <read_byte>
     704:	00000000 	sll	zero,zero,0x0
     708:	080001c9 	j	724 <get_sof+0x554>
     70c:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      p_jinfo_smp_fact = SF1_1_1;
     710:	af800000 	sw	zero,0(gp)
      printf ("\nSampling Factor is 1:1:1\n");
     714:	3c020000 	lui	v0,0x0
     718:	24445568 	addiu	a0,v0,21864
     71c:	0c000000 	jal	0 <read_byte>
     720:	00000000 	sll	zero,zero,0x0
    }
}
     724:	03c0e821 	addu	sp,s8,zero
     728:	8fbf0034 	lw	ra,52(sp)
     72c:	8fbe0030 	lw	s8,48(sp)
     730:	27bd0038 	addiu	sp,sp,56
     734:	03e00008 	jr	ra
     738:	00000000 	sll	zero,zero,0x0

0000073c <get_sos>:


void
get_sos ()
{
     73c:	27bdffc0 	addiu	sp,sp,-64
     740:	afbf003c 	sw	ra,60(sp)
     744:	afbe0038 	sw	s8,56(sp)
     748:	03a0f021 	addu	s8,sp,zero
  int i, c, cc, ci, j;
  char *p_comp_info_id;
  char *p_comp_info_dc_tbl_no;
  char *p_comp_info_ac_tbl_no;

  length = read_word ();
     74c:	0c000000 	jal	0 <read_byte>
     750:	00000000 	sll	zero,zero,0x0
     754:	afc2001c 	sw	v0,28(s8)
  num_comp = read_byte ();
     758:	0c000000 	jal	0 <read_byte>
     75c:	00000000 	sll	zero,zero,0x0
     760:	afc20020 	sw	v0,32(s8)

  printf (" length = %d\n", length);
     764:	3c020000 	lui	v0,0x0
     768:	24445584 	addiu	a0,v0,21892
     76c:	8fc5001c 	lw	a1,28(s8)
     770:	0c000000 	jal	0 <read_byte>
     774:	00000000 	sll	zero,zero,0x0
  printf (" num_comp = %d\n", num_comp);
     778:	3c020000 	lui	v0,0x0
     77c:	24445594 	addiu	a0,v0,21908
     780:	8fc50020 	lw	a1,32(s8)
     784:	0c000000 	jal	0 <read_byte>
     788:	00000000 	sll	zero,zero,0x0

  if (length != out_length_get_sos)
     78c:	8f820000 	lw	v0,0(gp)
     790:	8fc3001c 	lw	v1,28(s8)
     794:	00000000 	sll	zero,zero,0x0
     798:	10620005 	beq	v1,v0,7b0 <get_sos+0x74>
     79c:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     7a0:	8f820000 	lw	v0,0(gp)
     7a4:	00000000 	sll	zero,zero,0x0
     7a8:	24420001 	addiu	v0,v0,1
     7ac:	af820000 	sw	v0,0(gp)
    }
  if (num_comp != out_num_comp_get_sos)
     7b0:	8f820000 	lw	v0,0(gp)
     7b4:	8fc30020 	lw	v1,32(s8)
     7b8:	00000000 	sll	zero,zero,0x0
     7bc:	10620005 	beq	v1,v0,7d4 <get_sos+0x98>
     7c0:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     7c4:	8f820000 	lw	v0,0(gp)
     7c8:	00000000 	sll	zero,zero,0x0
     7cc:	24420001 	addiu	v0,v0,1
     7d0:	af820000 	sw	v0,0(gp)
    }

  /* Decode each component */
  for (i = 0; i < num_comp; i++)
     7d4:	afc00010 	sw	zero,16(s8)
     7d8:	08000292 	j	a48 <get_sos+0x30c>
     7dc:	00000000 	sll	zero,zero,0x0
    {
      cc = read_byte ();
     7e0:	0c000000 	jal	0 <read_byte>
     7e4:	00000000 	sll	zero,zero,0x0
     7e8:	afc20024 	sw	v0,36(s8)
      c = read_byte ();
     7ec:	0c000000 	jal	0 <read_byte>
     7f0:	00000000 	sll	zero,zero,0x0
     7f4:	afc20028 	sw	v0,40(s8)

      for (ci = 0; ci < p_jinfo_num_components; ci++)
     7f8:	afc00014 	sw	zero,20(s8)
     7fc:	0800021a 	j	868 <get_sos+0x12c>
     800:	00000000 	sll	zero,zero,0x0
	{
	  p_comp_info_id = &p_jinfo_comps_info_id[ci];
     804:	8fc30014 	lw	v1,20(s8)
     808:	27820000 	addiu	v0,gp,0
     80c:	00621021 	addu	v0,v1,v0
     810:	afc2002c 	sw	v0,44(s8)
	  p_comp_info_dc_tbl_no = &p_jinfo_comps_info_dc_tbl_no[ci];
     814:	8fc30014 	lw	v1,20(s8)
     818:	27820000 	addiu	v0,gp,0
     81c:	00621021 	addu	v0,v1,v0
     820:	afc20030 	sw	v0,48(s8)
	  p_comp_info_ac_tbl_no = &p_jinfo_comps_info_ac_tbl_no[ci];
     824:	8fc30014 	lw	v1,20(s8)
     828:	27820000 	addiu	v0,gp,0
     82c:	00621021 	addu	v0,v1,v0
     830:	afc20034 	sw	v0,52(s8)

	  if (cc == *p_comp_info_id)
     834:	8fc2002c 	lw	v0,44(s8)
     838:	00000000 	sll	zero,zero,0x0
     83c:	80420000 	lb	v0,0(v0)
     840:	00000000 	sll	zero,zero,0x0
     844:	00401821 	addu	v1,v0,zero
     848:	8fc20024 	lw	v0,36(s8)
     84c:	00000000 	sll	zero,zero,0x0
     850:	10620018 	beq	v1,v0,8b4 <get_sos+0x178>
     854:	00000000 	sll	zero,zero,0x0
  for (i = 0; i < num_comp; i++)
    {
      cc = read_byte ();
      c = read_byte ();

      for (ci = 0; ci < p_jinfo_num_components; ci++)
     858:	8fc20014 	lw	v0,20(s8)
     85c:	00000000 	sll	zero,zero,0x0
     860:	24420001 	addiu	v0,v0,1
     864:	afc20014 	sw	v0,20(s8)
     868:	83820000 	lb	v0,0(gp)
     86c:	00000000 	sll	zero,zero,0x0
     870:	00401821 	addu	v1,v0,zero
     874:	8fc20014 	lw	v0,20(s8)
     878:	00000000 	sll	zero,zero,0x0
     87c:	0043102a 	slt	v0,v0,v1
     880:	1440ffe0 	bnez	v0,804 <get_sos+0xc8>
     884:	00000000 	sll	zero,zero,0x0
	  p_comp_info_ac_tbl_no = &p_jinfo_comps_info_ac_tbl_no[ci];

	  if (cc == *p_comp_info_id)
	    goto id_found;
	}
      main_result++;
     888:	8f820000 	lw	v0,0(gp)
     88c:	00000000 	sll	zero,zero,0x0
     890:	24420001 	addiu	v0,v0,1
     894:	af820000 	sw	v0,0(gp)
      printf ("Bad Component ID!\n");
     898:	3c020000 	lui	v0,0x0
     89c:	244455a4 	addiu	a0,v0,21924
     8a0:	0c000000 	jal	0 <read_byte>
     8a4:	00000000 	sll	zero,zero,0x0
      EXIT;
     8a8:	00002021 	addu	a0,zero,zero
     8ac:	0c000000 	jal	0 <read_byte>
     8b0:	00000000 	sll	zero,zero,0x0
	  p_comp_info_id = &p_jinfo_comps_info_id[ci];
	  p_comp_info_dc_tbl_no = &p_jinfo_comps_info_dc_tbl_no[ci];
	  p_comp_info_ac_tbl_no = &p_jinfo_comps_info_ac_tbl_no[ci];

	  if (cc == *p_comp_info_id)
	    goto id_found;
     8b4:	00000000 	sll	zero,zero,0x0
      main_result++;
      printf ("Bad Component ID!\n");
      EXIT;

    id_found:
      *p_comp_info_dc_tbl_no = (c >> 4) & 15;
     8b8:	8fc20028 	lw	v0,40(s8)
     8bc:	00000000 	sll	zero,zero,0x0
     8c0:	00021103 	sra	v0,v0,0x4
     8c4:	00021600 	sll	v0,v0,0x18
     8c8:	00021603 	sra	v0,v0,0x18
     8cc:	3042000f 	andi	v0,v0,0xf
     8d0:	00021e00 	sll	v1,v0,0x18
     8d4:	00031e03 	sra	v1,v1,0x18
     8d8:	8fc20030 	lw	v0,48(s8)
     8dc:	00000000 	sll	zero,zero,0x0
     8e0:	a0430000 	sb	v1,0(v0)
      *p_comp_info_ac_tbl_no = (c) & 15;
     8e4:	8fc20028 	lw	v0,40(s8)
     8e8:	00000000 	sll	zero,zero,0x0
     8ec:	00021600 	sll	v0,v0,0x18
     8f0:	00021603 	sra	v0,v0,0x18
     8f4:	3042000f 	andi	v0,v0,0xf
     8f8:	00021e00 	sll	v1,v0,0x18
     8fc:	00031e03 	sra	v1,v1,0x18
     900:	8fc20034 	lw	v0,52(s8)
     904:	00000000 	sll	zero,zero,0x0
     908:	a0430000 	sb	v1,0(v0)

      printf (" comp_id       = %d\n", cc);
     90c:	3c020000 	lui	v0,0x0
     910:	244455b8 	addiu	a0,v0,21944
     914:	8fc50024 	lw	a1,36(s8)
     918:	0c000000 	jal	0 <read_byte>
     91c:	00000000 	sll	zero,zero,0x0
      printf (" dc_tbl_no     = %d\n", *p_comp_info_dc_tbl_no);
     920:	8fc20030 	lw	v0,48(s8)
     924:	00000000 	sll	zero,zero,0x0
     928:	80420000 	lb	v0,0(v0)
     92c:	3c030000 	lui	v1,0x0
     930:	246455d0 	addiu	a0,v1,21968
     934:	00402821 	addu	a1,v0,zero
     938:	0c000000 	jal	0 <read_byte>
     93c:	00000000 	sll	zero,zero,0x0
      printf (" ac_tbl_no     = %d\n", *p_comp_info_ac_tbl_no);
     940:	8fc20034 	lw	v0,52(s8)
     944:	00000000 	sll	zero,zero,0x0
     948:	80420000 	lb	v0,0(v0)
     94c:	3c030000 	lui	v1,0x0
     950:	246455e8 	addiu	a0,v1,21992
     954:	00402821 	addu	a1,v0,zero
     958:	0c000000 	jal	0 <read_byte>
     95c:	00000000 	sll	zero,zero,0x0

      if (cc != out_comp_id_get_sos[i_get_sos])
     960:	8f830000 	lw	v1,0(gp)
     964:	3c020000 	lui	v0,0x0
     968:	00031880 	sll	v1,v1,0x2
     96c:	24420000 	addiu	v0,v0,0
     970:	00621021 	addu	v0,v1,v0
     974:	8c430000 	lw	v1,0(v0)
     978:	8fc20024 	lw	v0,36(s8)
     97c:	00000000 	sll	zero,zero,0x0
     980:	10620005 	beq	v1,v0,998 <get_sos+0x25c>
     984:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     988:	8f820000 	lw	v0,0(gp)
     98c:	00000000 	sll	zero,zero,0x0
     990:	24420001 	addiu	v0,v0,1
     994:	af820000 	sw	v0,0(gp)
	}
      if (*p_comp_info_dc_tbl_no != out_dc_tbl_no_get_sos[i_get_sos])
     998:	8fc20030 	lw	v0,48(s8)
     99c:	00000000 	sll	zero,zero,0x0
     9a0:	80420000 	lb	v0,0(v0)
     9a4:	00000000 	sll	zero,zero,0x0
     9a8:	00401821 	addu	v1,v0,zero
     9ac:	8f840000 	lw	a0,0(gp)
     9b0:	3c020000 	lui	v0,0x0
     9b4:	00042080 	sll	a0,a0,0x2
     9b8:	24420000 	addiu	v0,v0,0
     9bc:	00821021 	addu	v0,a0,v0
     9c0:	8c420000 	lw	v0,0(v0)
     9c4:	00000000 	sll	zero,zero,0x0
     9c8:	10620005 	beq	v1,v0,9e0 <get_sos+0x2a4>
     9cc:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     9d0:	8f820000 	lw	v0,0(gp)
     9d4:	00000000 	sll	zero,zero,0x0
     9d8:	24420001 	addiu	v0,v0,1
     9dc:	af820000 	sw	v0,0(gp)
	}
      if (*p_comp_info_ac_tbl_no != out_ac_tbl_no_get_sos[i_get_sos])
     9e0:	8fc20034 	lw	v0,52(s8)
     9e4:	00000000 	sll	zero,zero,0x0
     9e8:	80420000 	lb	v0,0(v0)
     9ec:	00000000 	sll	zero,zero,0x0
     9f0:	00401821 	addu	v1,v0,zero
     9f4:	8f840000 	lw	a0,0(gp)
     9f8:	3c020000 	lui	v0,0x0
     9fc:	00042080 	sll	a0,a0,0x2
     a00:	24420000 	addiu	v0,v0,0
     a04:	00821021 	addu	v0,a0,v0
     a08:	8c420000 	lw	v0,0(v0)
     a0c:	00000000 	sll	zero,zero,0x0
     a10:	10620005 	beq	v1,v0,a28 <get_sos+0x2ec>
     a14:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     a18:	8f820000 	lw	v0,0(gp)
     a1c:	00000000 	sll	zero,zero,0x0
     a20:	24420001 	addiu	v0,v0,1
     a24:	af820000 	sw	v0,0(gp)
	}
      i_get_sos++;
     a28:	8f820000 	lw	v0,0(gp)
     a2c:	00000000 	sll	zero,zero,0x0
     a30:	24420001 	addiu	v0,v0,1
     a34:	af820000 	sw	v0,0(gp)
    {
        main_result++;
    }

  /* Decode each component */
  for (i = 0; i < num_comp; i++)
     a38:	8fc20010 	lw	v0,16(s8)
     a3c:	00000000 	sll	zero,zero,0x0
     a40:	24420001 	addiu	v0,v0,1
     a44:	afc20010 	sw	v0,16(s8)
     a48:	8fc30010 	lw	v1,16(s8)
     a4c:	8fc20020 	lw	v0,32(s8)
     a50:	00000000 	sll	zero,zero,0x0
     a54:	0062102a 	slt	v0,v1,v0
     a58:	1440ff61 	bnez	v0,7e0 <get_sos+0xa4>
     a5c:	00000000 	sll	zero,zero,0x0
      i_get_sos++;

    }

  /* Pass parameters; Ss, Se, Ah and Al for progressive JPEG */
  j = 3;
     a60:	24020003 	addiu	v0,zero,3
     a64:	afc20018 	sw	v0,24(s8)
  while (j--)
     a68:	0800029f 	j	a7c <get_sos+0x340>
     a6c:	00000000 	sll	zero,zero,0x0
    {
      c = read_byte ();
     a70:	0c000000 	jal	0 <read_byte>
     a74:	00000000 	sll	zero,zero,0x0
     a78:	afc20028 	sw	v0,40(s8)

    }

  /* Pass parameters; Ss, Se, Ah and Al for progressive JPEG */
  j = 3;
  while (j--)
     a7c:	8fc20018 	lw	v0,24(s8)
     a80:	00000000 	sll	zero,zero,0x0
     a84:	0002102b 	sltu	v0,zero,v0
     a88:	304200ff 	andi	v0,v0,0xff
     a8c:	8fc30018 	lw	v1,24(s8)
     a90:	00000000 	sll	zero,zero,0x0
     a94:	2463ffff 	addiu	v1,v1,-1
     a98:	afc30018 	sw	v1,24(s8)
     a9c:	1440fff4 	bnez	v0,a70 <get_sos+0x334>
     aa0:	00000000 	sll	zero,zero,0x0
    }

  /*
   * Define the Buffer at this point as the head of data
   */
  p_jinfo_jpeg_data = ReadBuf;
     aa4:	8f820010 	lw	v0,16(gp)
     aa8:	00000000 	sll	zero,zero,0x0
     aac:	af820000 	sw	v0,0(gp)

}
     ab0:	03c0e821 	addu	sp,s8,zero
     ab4:	8fbf003c 	lw	ra,60(sp)
     ab8:	8fbe0038 	lw	s8,56(sp)
     abc:	27bd0040 	addiu	sp,sp,64
     ac0:	03e00008 	jr	ra
     ac4:	00000000 	sll	zero,zero,0x0

00000ac8 <get_dht>:
/*
 * Get Huffman Table
 */
void
get_dht ()
{
     ac8:	27bdffc8 	addiu	sp,sp,-56
     acc:	afbf0034 	sw	ra,52(sp)
     ad0:	afbe0030 	sw	s8,48(sp)
     ad4:	afb0002c 	sw	s0,44(sp)
     ad8:	03a0f021 	addu	s8,sp,zero
  int length;
  int index, i, count;
  int *p_xhtbl_bits;
  int *p_xhtbl_huffval;

  length = read_word ();
     adc:	0c000000 	jal	0 <read_byte>
     ae0:	00000000 	sll	zero,zero,0x0
     ae4:	afc20010 	sw	v0,16(s8)
  length -= 2;
     ae8:	8fc20010 	lw	v0,16(s8)
     aec:	00000000 	sll	zero,zero,0x0
     af0:	2442fffe 	addiu	v0,v0,-2
     af4:	afc20010 	sw	v0,16(s8)

  printf (" length = %d\n", length);
     af8:	3c020000 	lui	v0,0x0
     afc:	24445584 	addiu	a0,v0,21892
     b00:	8fc50010 	lw	a1,16(s8)
     b04:	0c000000 	jal	0 <read_byte>
     b08:	00000000 	sll	zero,zero,0x0

  if (length != out_length_get_dht[i_get_dht])
     b0c:	8f830000 	lw	v1,0(gp)
     b10:	3c020000 	lui	v0,0x0
     b14:	00031880 	sll	v1,v1,0x2
     b18:	24420000 	addiu	v0,v0,0
     b1c:	00621021 	addu	v0,v1,v0
     b20:	8c430000 	lw	v1,0(v0)
     b24:	8fc20010 	lw	v0,16(s8)
     b28:	00000000 	sll	zero,zero,0x0
     b2c:	106200a4 	beq	v1,v0,dc0 <get_dht+0x2f8>
     b30:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     b34:	8f820000 	lw	v0,0(gp)
     b38:	00000000 	sll	zero,zero,0x0
     b3c:	24420001 	addiu	v0,v0,1
     b40:	af820000 	sw	v0,0(gp)
    }

  while (length > 16)
     b44:	08000370 	j	dc0 <get_dht+0x2f8>
     b48:	00000000 	sll	zero,zero,0x0
    {
      index = read_byte ();
     b4c:	0c000000 	jal	0 <read_byte>
     b50:	00000000 	sll	zero,zero,0x0
     b54:	afc20024 	sw	v0,36(s8)

      printf (" index = 0x%x\n", index);
     b58:	3c020000 	lui	v0,0x0
     b5c:	24445600 	addiu	a0,v0,22016
     b60:	8fc50024 	lw	a1,36(s8)
     b64:	0c000000 	jal	0 <read_byte>
     b68:	00000000 	sll	zero,zero,0x0

      if (index != out_index_get_dht[i_get_dht])
     b6c:	8f830000 	lw	v1,0(gp)
     b70:	3c020000 	lui	v0,0x0
     b74:	00031880 	sll	v1,v1,0x2
     b78:	24420000 	addiu	v0,v0,0
     b7c:	00621021 	addu	v0,v1,v0
     b80:	8c430000 	lw	v1,0(v0)
     b84:	8fc20024 	lw	v0,36(s8)
     b88:	00000000 	sll	zero,zero,0x0
     b8c:	10620005 	beq	v1,v0,ba4 <get_dht+0xdc>
     b90:	00000000 	sll	zero,zero,0x0
	{
        main_result++;
     b94:	8f820000 	lw	v0,0(gp)
     b98:	00000000 	sll	zero,zero,0x0
     b9c:	24420001 	addiu	v0,v0,1
     ba0:	af820000 	sw	v0,0(gp)
}

      if (index & 0x10)
     ba4:	8fc20024 	lw	v0,36(s8)
     ba8:	00000000 	sll	zero,zero,0x0
     bac:	30420010 	andi	v0,v0,0x10
     bb0:	10400019 	beqz	v0,c18 <get_dht+0x150>
     bb4:	00000000 	sll	zero,zero,0x0
	{
	  /* AC */
	  index -= 0x10;
     bb8:	8fc20024 	lw	v0,36(s8)
     bbc:	00000000 	sll	zero,zero,0x0
     bc0:	2442fff0 	addiu	v0,v0,-16
     bc4:	afc20024 	sw	v0,36(s8)
	  p_xhtbl_bits = p_jinfo_ac_xhuff_tbl_bits[index];
     bc8:	3c020000 	lui	v0,0x0
     bcc:	24430000 	addiu	v1,v0,0
     bd0:	8fc20024 	lw	v0,36(s8)
     bd4:	00000000 	sll	zero,zero,0x0
     bd8:	00021100 	sll	v0,v0,0x4
     bdc:	000220c0 	sll	a0,v0,0x3
     be0:	00441021 	addu	v0,v0,a0
     be4:	00621021 	addu	v0,v1,v0
     be8:	afc2001c 	sw	v0,28(s8)
	  p_xhtbl_huffval = p_jinfo_ac_xhuff_tbl_huffval[index];
     bec:	3c020000 	lui	v0,0x0
     bf0:	24430000 	addiu	v1,v0,0
     bf4:	8fc20024 	lw	v0,36(s8)
     bf8:	00000000 	sll	zero,zero,0x0
     bfc:	00021080 	sll	v0,v0,0x2
     c00:	00022200 	sll	a0,v0,0x8
     c04:	00441021 	addu	v0,v0,a0
     c08:	00621021 	addu	v0,v1,v0
     c0c:	afc20020 	sw	v0,32(s8)
     c10:	08000318 	j	c60 <get_dht+0x198>
     c14:	00000000 	sll	zero,zero,0x0
	}
      else
	{
	  /* DC */
	  p_xhtbl_bits = p_jinfo_dc_xhuff_tbl_bits[index];
     c18:	3c020000 	lui	v0,0x0
     c1c:	24430000 	addiu	v1,v0,0
     c20:	8fc20024 	lw	v0,36(s8)
     c24:	00000000 	sll	zero,zero,0x0
     c28:	00021100 	sll	v0,v0,0x4
     c2c:	000220c0 	sll	a0,v0,0x3
     c30:	00441021 	addu	v0,v0,a0
     c34:	00621021 	addu	v0,v1,v0
     c38:	afc2001c 	sw	v0,28(s8)
	  p_xhtbl_huffval = p_jinfo_dc_xhuff_tbl_huffval[index];
     c3c:	3c020000 	lui	v0,0x0
     c40:	24430000 	addiu	v1,v0,0
     c44:	8fc20024 	lw	v0,36(s8)
     c48:	00000000 	sll	zero,zero,0x0
     c4c:	00021080 	sll	v0,v0,0x2
     c50:	00022200 	sll	a0,v0,0x8
     c54:	00441021 	addu	v0,v0,a0
     c58:	00621021 	addu	v0,v1,v0
     c5c:	afc20020 	sw	v0,32(s8)
	}

      count = 0;
     c60:	afc00018 	sw	zero,24(s8)

      for (i = 1; i <= 16; i++)
     c64:	24020001 	addiu	v0,zero,1
     c68:	afc20014 	sw	v0,20(s8)
     c6c:	08000335 	j	cd4 <get_dht+0x20c>
     c70:	00000000 	sll	zero,zero,0x0
	{
	  p_xhtbl_bits[i] = read_byte ();
     c74:	8fc20014 	lw	v0,20(s8)
     c78:	00000000 	sll	zero,zero,0x0
     c7c:	00021080 	sll	v0,v0,0x2
     c80:	8fc3001c 	lw	v1,28(s8)
     c84:	00000000 	sll	zero,zero,0x0
     c88:	00628021 	addu	s0,v1,v0
     c8c:	0c000000 	jal	0 <read_byte>
     c90:	00000000 	sll	zero,zero,0x0
     c94:	ae020000 	sw	v0,0(s0)
	  count += p_xhtbl_bits[i];
     c98:	8fc20014 	lw	v0,20(s8)
     c9c:	00000000 	sll	zero,zero,0x0
     ca0:	00021080 	sll	v0,v0,0x2
     ca4:	8fc3001c 	lw	v1,28(s8)
     ca8:	00000000 	sll	zero,zero,0x0
     cac:	00621021 	addu	v0,v1,v0
     cb0:	8c420000 	lw	v0,0(v0)
     cb4:	8fc30018 	lw	v1,24(s8)
     cb8:	00000000 	sll	zero,zero,0x0
     cbc:	00621021 	addu	v0,v1,v0
     cc0:	afc20018 	sw	v0,24(s8)
	  p_xhtbl_huffval = p_jinfo_dc_xhuff_tbl_huffval[index];
	}

      count = 0;

      for (i = 1; i <= 16; i++)
     cc4:	8fc20014 	lw	v0,20(s8)
     cc8:	00000000 	sll	zero,zero,0x0
     ccc:	24420001 	addiu	v0,v0,1
     cd0:	afc20014 	sw	v0,20(s8)
     cd4:	8fc20014 	lw	v0,20(s8)
     cd8:	00000000 	sll	zero,zero,0x0
     cdc:	28420011 	slti	v0,v0,17
     ce0:	1440ffe4 	bnez	v0,c74 <get_dht+0x1ac>
     ce4:	00000000 	sll	zero,zero,0x0
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
	}

      printf (" count = %d\n", count);
     ce8:	3c020000 	lui	v0,0x0
     cec:	24445610 	addiu	a0,v0,22032
     cf0:	8fc50018 	lw	a1,24(s8)
     cf4:	0c000000 	jal	0 <read_byte>
     cf8:	00000000 	sll	zero,zero,0x0

      if (count != out_count_get_dht[i_get_dht])
     cfc:	8f830000 	lw	v1,0(gp)
     d00:	3c020000 	lui	v0,0x0
     d04:	00031880 	sll	v1,v1,0x2
     d08:	24420000 	addiu	v0,v0,0
     d0c:	00621021 	addu	v0,v1,v0
     d10:	8c430000 	lw	v1,0(v0)
     d14:	8fc20018 	lw	v0,24(s8)
     d18:	00000000 	sll	zero,zero,0x0
     d1c:	10620005 	beq	v1,v0,d34 <get_dht+0x26c>
     d20:	00000000 	sll	zero,zero,0x0
	{
        main_result++;
     d24:	8f820000 	lw	v0,0(gp)
     d28:	00000000 	sll	zero,zero,0x0
     d2c:	24420001 	addiu	v0,v0,1
     d30:	af820000 	sw	v0,0(gp)
    }
      i_get_dht++;
     d34:	8f820000 	lw	v0,0(gp)
     d38:	00000000 	sll	zero,zero,0x0
     d3c:	24420001 	addiu	v0,v0,1
     d40:	af820000 	sw	v0,0(gp)

      length -= 1 + 16;
     d44:	8fc20010 	lw	v0,16(s8)
     d48:	00000000 	sll	zero,zero,0x0
     d4c:	2442ffef 	addiu	v0,v0,-17
     d50:	afc20010 	sw	v0,16(s8)

      for (i = 0; i < count; i++)
     d54:	afc00014 	sw	zero,20(s8)
     d58:	08000365 	j	d94 <get_dht+0x2cc>
     d5c:	00000000 	sll	zero,zero,0x0
	{
	  p_xhtbl_huffval[i] = read_byte ();
     d60:	8fc20014 	lw	v0,20(s8)
     d64:	00000000 	sll	zero,zero,0x0
     d68:	00021080 	sll	v0,v0,0x2
     d6c:	8fc30020 	lw	v1,32(s8)
     d70:	00000000 	sll	zero,zero,0x0
     d74:	00628021 	addu	s0,v1,v0
     d78:	0c000000 	jal	0 <read_byte>
     d7c:	00000000 	sll	zero,zero,0x0
     d80:	ae020000 	sw	v0,0(s0)
    }
      i_get_dht++;

      length -= 1 + 16;

      for (i = 0; i < count; i++)
     d84:	8fc20014 	lw	v0,20(s8)
     d88:	00000000 	sll	zero,zero,0x0
     d8c:	24420001 	addiu	v0,v0,1
     d90:	afc20014 	sw	v0,20(s8)
     d94:	8fc30014 	lw	v1,20(s8)
     d98:	8fc20018 	lw	v0,24(s8)
     d9c:	00000000 	sll	zero,zero,0x0
     da0:	0062102a 	slt	v0,v1,v0
     da4:	1440ffee 	bnez	v0,d60 <get_dht+0x298>
     da8:	00000000 	sll	zero,zero,0x0
	{
	  p_xhtbl_huffval[i] = read_byte ();
	}

      length -= count;
     dac:	8fc30010 	lw	v1,16(s8)
     db0:	8fc20018 	lw	v0,24(s8)
     db4:	00000000 	sll	zero,zero,0x0
     db8:	00621023 	subu	v0,v1,v0
     dbc:	afc20010 	sw	v0,16(s8)
  if (length != out_length_get_dht[i_get_dht])
    {
        main_result++;
    }

  while (length > 16)
     dc0:	8fc20010 	lw	v0,16(s8)
     dc4:	00000000 	sll	zero,zero,0x0
     dc8:	28420011 	slti	v0,v0,17
     dcc:	1040ff5f 	beqz	v0,b4c <get_dht+0x84>
     dd0:	00000000 	sll	zero,zero,0x0
	  p_xhtbl_huffval[i] = read_byte ();
	}

      length -= count;
    }
}
     dd4:	03c0e821 	addu	sp,s8,zero
     dd8:	8fbf0034 	lw	ra,52(sp)
     ddc:	8fbe0030 	lw	s8,48(sp)
     de0:	8fb0002c 	lw	s0,44(sp)
     de4:	27bd0038 	addiu	sp,sp,56
     de8:	03e00008 	jr	ra
     dec:	00000000 	sll	zero,zero,0x0

00000df0 <get_dqt>:


void
get_dqt ()
{
     df0:	27bdffd0 	addiu	sp,sp,-48
     df4:	afbf002c 	sw	ra,44(sp)
     df8:	afbe0028 	sw	s8,40(sp)
     dfc:	03a0f021 	addu	s8,sp,zero
  int length;
  int prec, num, i;
  unsigned int tmp;
  unsigned int *p_quant_tbl;

  length = read_word ();
     e00:	0c000000 	jal	0 <read_byte>
     e04:	00000000 	sll	zero,zero,0x0
     e08:	afc20010 	sw	v0,16(s8)
  length -= 2;
     e0c:	8fc20010 	lw	v0,16(s8)
     e10:	00000000 	sll	zero,zero,0x0
     e14:	2442fffe 	addiu	v0,v0,-2
     e18:	afc20010 	sw	v0,16(s8)

  printf (" length = %d\n", length);
     e1c:	3c020000 	lui	v0,0x0
     e20:	24445584 	addiu	a0,v0,21892
     e24:	8fc50010 	lw	a1,16(s8)
     e28:	0c000000 	jal	0 <read_byte>
     e2c:	00000000 	sll	zero,zero,0x0

  if (length != out_length_get_dqt[i_get_dqt])
     e30:	8f820000 	lw	v0,0(gp)
     e34:	00000000 	sll	zero,zero,0x0
     e38:	00021880 	sll	v1,v0,0x2
     e3c:	27820000 	addiu	v0,gp,0
     e40:	00621021 	addu	v0,v1,v0
     e44:	8c430000 	lw	v1,0(v0)
     e48:	8fc20010 	lw	v0,16(s8)
     e4c:	00000000 	sll	zero,zero,0x0
     e50:	10620078 	beq	v1,v0,1034 <get_dqt+0x244>
     e54:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     e58:	8f820000 	lw	v0,0(gp)
     e5c:	00000000 	sll	zero,zero,0x0
     e60:	24420001 	addiu	v0,v0,1
     e64:	af820000 	sw	v0,0(gp)
    }

  while (length > 0)
     e68:	0800040d 	j	1034 <get_dqt+0x244>
     e6c:	00000000 	sll	zero,zero,0x0
    {
      num = read_byte ();
     e70:	0c000000 	jal	0 <read_byte>
     e74:	00000000 	sll	zero,zero,0x0
     e78:	afc2001c 	sw	v0,28(s8)
      /* Precision 0:8bit, 1:16bit */
      prec = num >> 4;
     e7c:	8fc2001c 	lw	v0,28(s8)
     e80:	00000000 	sll	zero,zero,0x0
     e84:	00021103 	sra	v0,v0,0x4
     e88:	afc20020 	sw	v0,32(s8)
      /* Table Number */
      num &= 0x0f;
     e8c:	8fc2001c 	lw	v0,28(s8)
     e90:	00000000 	sll	zero,zero,0x0
     e94:	3042000f 	andi	v0,v0,0xf
     e98:	afc2001c 	sw	v0,28(s8)

      printf (" prec = %d\n", prec);
     e9c:	3c020000 	lui	v0,0x0
     ea0:	24445620 	addiu	a0,v0,22048
     ea4:	8fc50020 	lw	a1,32(s8)
     ea8:	0c000000 	jal	0 <read_byte>
     eac:	00000000 	sll	zero,zero,0x0
      printf (" num  = %d\n", num);
     eb0:	3c020000 	lui	v0,0x0
     eb4:	2444562c 	addiu	a0,v0,22060
     eb8:	8fc5001c 	lw	a1,28(s8)
     ebc:	0c000000 	jal	0 <read_byte>
     ec0:	00000000 	sll	zero,zero,0x0

      if (prec != out_prec_get_dht[i_get_dqt])
     ec4:	8f820000 	lw	v0,0(gp)
     ec8:	00000000 	sll	zero,zero,0x0
     ecc:	00021880 	sll	v1,v0,0x2
     ed0:	27820000 	addiu	v0,gp,0
     ed4:	00621021 	addu	v0,v1,v0
     ed8:	8c430000 	lw	v1,0(v0)
     edc:	8fc20020 	lw	v0,32(s8)
     ee0:	00000000 	sll	zero,zero,0x0
     ee4:	10620005 	beq	v1,v0,efc <get_dqt+0x10c>
     ee8:	00000000 	sll	zero,zero,0x0
	{
        main_result++;
     eec:	8f820000 	lw	v0,0(gp)
     ef0:	00000000 	sll	zero,zero,0x0
     ef4:	24420001 	addiu	v0,v0,1
     ef8:	af820000 	sw	v0,0(gp)
    }
      if (num != out_num_get_dht[i_get_dqt])
     efc:	8f820000 	lw	v0,0(gp)
     f00:	00000000 	sll	zero,zero,0x0
     f04:	00021880 	sll	v1,v0,0x2
     f08:	27820000 	addiu	v0,gp,0
     f0c:	00621021 	addu	v0,v1,v0
     f10:	8c430000 	lw	v1,0(v0)
     f14:	8fc2001c 	lw	v0,28(s8)
     f18:	00000000 	sll	zero,zero,0x0
     f1c:	10620005 	beq	v1,v0,f34 <get_dqt+0x144>
     f20:	00000000 	sll	zero,zero,0x0
	{
        main_result++;
     f24:	8f820000 	lw	v0,0(gp)
     f28:	00000000 	sll	zero,zero,0x0
     f2c:	24420001 	addiu	v0,v0,1
     f30:	af820000 	sw	v0,0(gp)
    }
      i_get_dqt++;
     f34:	8f820000 	lw	v0,0(gp)
     f38:	00000000 	sll	zero,zero,0x0
     f3c:	24420001 	addiu	v0,v0,1
     f40:	af820000 	sw	v0,0(gp)

      p_quant_tbl = &p_jinfo_quant_tbl_quantval[num][DCTSIZE2];
     f44:	3c020000 	lui	v0,0x0
     f48:	24430000 	addiu	v1,v0,0
     f4c:	8fc2001c 	lw	v0,28(s8)
     f50:	00000000 	sll	zero,zero,0x0
     f54:	24420001 	addiu	v0,v0,1
     f58:	00021200 	sll	v0,v0,0x8
     f5c:	00621021 	addu	v0,v1,v0
     f60:	afc20024 	sw	v0,36(s8)
      for (i = 0; i < DCTSIZE2; i++)
     f64:	afc00014 	sw	zero,20(s8)
     f68:	080003fc 	j	ff0 <get_dqt+0x200>
     f6c:	00000000 	sll	zero,zero,0x0
	{
	  if (prec)
     f70:	8fc20020 	lw	v0,32(s8)
     f74:	00000000 	sll	zero,zero,0x0
     f78:	10400006 	beqz	v0,f94 <get_dqt+0x1a4>
     f7c:	00000000 	sll	zero,zero,0x0
	    tmp = read_word ();
     f80:	0c000000 	jal	0 <read_byte>
     f84:	00000000 	sll	zero,zero,0x0
     f88:	afc20018 	sw	v0,24(s8)
     f8c:	080003e8 	j	fa0 <get_dqt+0x1b0>
     f90:	00000000 	sll	zero,zero,0x0
	  else
	    tmp = read_byte ();
     f94:	0c000000 	jal	0 <read_byte>
     f98:	00000000 	sll	zero,zero,0x0
     f9c:	afc20018 	sw	v0,24(s8)
	  p_quant_tbl[izigzag_index[i]] = (unsigned short) tmp;
     fa0:	3c020000 	lui	v0,0x0
     fa4:	8fc30014 	lw	v1,20(s8)
     fa8:	00000000 	sll	zero,zero,0x0
     fac:	00031880 	sll	v1,v1,0x2
     fb0:	24420000 	addiu	v0,v0,0
     fb4:	00621021 	addu	v0,v1,v0
     fb8:	8c420000 	lw	v0,0(v0)
     fbc:	00000000 	sll	zero,zero,0x0
     fc0:	00021080 	sll	v0,v0,0x2
     fc4:	8fc30024 	lw	v1,36(s8)
     fc8:	00000000 	sll	zero,zero,0x0
     fcc:	00621021 	addu	v0,v1,v0
     fd0:	8fc30018 	lw	v1,24(s8)
     fd4:	00000000 	sll	zero,zero,0x0
     fd8:	3063ffff 	andi	v1,v1,0xffff
     fdc:	ac430000 	sw	v1,0(v0)
        main_result++;
    }
      i_get_dqt++;

      p_quant_tbl = &p_jinfo_quant_tbl_quantval[num][DCTSIZE2];
      for (i = 0; i < DCTSIZE2; i++)
     fe0:	8fc20014 	lw	v0,20(s8)
     fe4:	00000000 	sll	zero,zero,0x0
     fe8:	24420001 	addiu	v0,v0,1
     fec:	afc20014 	sw	v0,20(s8)
     ff0:	8fc20014 	lw	v0,20(s8)
     ff4:	00000000 	sll	zero,zero,0x0
     ff8:	28420040 	slti	v0,v0,64
     ffc:	1440ffdc 	bnez	v0,f70 <get_dqt+0x180>
    1000:	00000000 	sll	zero,zero,0x0
	  else
	    tmp = read_byte ();
	  p_quant_tbl[izigzag_index[i]] = (unsigned short) tmp;
	}

      length -= DCTSIZE2 + 1;
    1004:	8fc20010 	lw	v0,16(s8)
    1008:	00000000 	sll	zero,zero,0x0
    100c:	2442ffbf 	addiu	v0,v0,-65
    1010:	afc20010 	sw	v0,16(s8)
      if (prec)
    1014:	8fc20020 	lw	v0,32(s8)
    1018:	00000000 	sll	zero,zero,0x0
    101c:	10400005 	beqz	v0,1034 <get_dqt+0x244>
    1020:	00000000 	sll	zero,zero,0x0
	length -= DCTSIZE2;
    1024:	8fc20010 	lw	v0,16(s8)
    1028:	00000000 	sll	zero,zero,0x0
    102c:	2442ffc0 	addiu	v0,v0,-64
    1030:	afc20010 	sw	v0,16(s8)
  if (length != out_length_get_dqt[i_get_dqt])
    {
        main_result++;
    }

  while (length > 0)
    1034:	8fc20010 	lw	v0,16(s8)
    1038:	00000000 	sll	zero,zero,0x0
    103c:	1c40ff8c 	bgtz	v0,e70 <get_dqt+0x80>
    1040:	00000000 	sll	zero,zero,0x0

      length -= DCTSIZE2 + 1;
      if (prec)
	length -= DCTSIZE2;
    }
}
    1044:	03c0e821 	addu	sp,s8,zero
    1048:	8fbf002c 	lw	ra,44(sp)
    104c:	8fbe0028 	lw	s8,40(sp)
    1050:	27bd0030 	addiu	sp,sp,48
    1054:	03e00008 	jr	ra
    1058:	00000000 	sll	zero,zero,0x0

0000105c <read_markers>:



void
read_markers (unsigned char *buf)
{
    105c:	27bdffe0 	addiu	sp,sp,-32
    1060:	afbf001c 	sw	ra,28(sp)
    1064:	afbe0018 	sw	s8,24(sp)
    1068:	03a0f021 	addu	s8,sp,zero
    106c:	afc40020 	sw	a0,32(s8)
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
    1070:	8fc20020 	lw	v0,32(s8)
    1074:	00000000 	sll	zero,zero,0x0
    1078:	af820010 	sw	v0,16(gp)

  sow_SOI = 0;
    107c:	afc00014 	sw	zero,20(s8)

  unread_marker = 0;
    1080:	afc00010 	sw	zero,16(s8)
    1084:	08000427 	j	109c <read_markers+0x40>
    1088:	00000000 	sll	zero,zero,0x0
	  break;

	case M_EOI:
	  return;
	}
    }
    108c:	00000000 	sll	zero,zero,0x0
    1090:	08000427 	j	109c <read_markers+0x40>
    1094:	00000000 	sll	zero,zero,0x0
    1098:	00000000 	sll	zero,zero,0x0
  unread_marker = 0;

  /* Read the head of the marker */
  for (;;)
    {
      if (!sow_SOI)
    109c:	8fc20014 	lw	v0,20(s8)
    10a0:	00000000 	sll	zero,zero,0x0
    10a4:	14400006 	bnez	v0,10c0 <read_markers+0x64>
    10a8:	00000000 	sll	zero,zero,0x0
	{
	  unread_marker = first_marker ();
    10ac:	0c000000 	jal	0 <read_byte>
    10b0:	00000000 	sll	zero,zero,0x0
    10b4:	afc20010 	sw	v0,16(s8)
    10b8:	08000433 	j	10cc <read_markers+0x70>
    10bc:	00000000 	sll	zero,zero,0x0
	}
      else
	{
	  unread_marker = next_marker ();
    10c0:	0c000000 	jal	0 <read_byte>
    10c4:	00000000 	sll	zero,zero,0x0
    10c8:	afc20010 	sw	v0,16(s8)
	}

      printf ("\nmarker = 0x%x\n", unread_marker);
    10cc:	3c020000 	lui	v0,0x0
    10d0:	24445638 	addiu	a0,v0,22072
    10d4:	8fc50010 	lw	a1,16(s8)
    10d8:	0c000000 	jal	0 <read_byte>
    10dc:	00000000 	sll	zero,zero,0x0

      if (unread_marker != out_unread_marker[i_marker++])
    10e0:	8f820000 	lw	v0,0(gp)
    10e4:	3c030000 	lui	v1,0x0
    10e8:	00022080 	sll	a0,v0,0x2
    10ec:	24630000 	addiu	v1,v1,0
    10f0:	00831821 	addu	v1,a0,v1
    10f4:	8c640000 	lw	a0,0(v1)
    10f8:	8fc30010 	lw	v1,16(s8)
    10fc:	00000000 	sll	zero,zero,0x0
    1100:	00831826 	xor	v1,a0,v1
    1104:	0003182b 	sltu	v1,zero,v1
    1108:	306300ff 	andi	v1,v1,0xff
    110c:	24420001 	addiu	v0,v0,1
    1110:	af820000 	sw	v0,0(gp)
    1114:	10600005 	beqz	v1,112c <read_markers+0xd0>
    1118:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
    111c:	8f820000 	lw	v0,0(gp)
    1120:	00000000 	sll	zero,zero,0x0
    1124:	24420001 	addiu	v0,v0,1
    1128:	af820000 	sw	v0,0(gp)
	}


      switch (unread_marker)
    112c:	8fc20010 	lw	v0,16(s8)
    1130:	00000000 	sll	zero,zero,0x0
    1134:	2442ff40 	addiu	v0,v0,-192
    1138:	2c43001c 	sltiu	v1,v0,28
    113c:	1060ffd3 	beqz	v1,108c <read_markers+0x30>
    1140:	00000000 	sll	zero,zero,0x0
    1144:	00021880 	sll	v1,v0,0x2
    1148:	3c020000 	lui	v0,0x0
    114c:	24425648 	addiu	v0,v0,22088
    1150:	00621021 	addu	v0,v1,v0
    1154:	8c420000 	lw	v0,0(v0)
    1158:	00000000 	sll	zero,zero,0x0
    115c:	00400008 	jr	v0
    1160:	00000000 	sll	zero,zero,0x0
	{
	case M_SOI:		/* Start of Image */
	  sow_SOI = 1;
    1164:	24020001 	addiu	v0,zero,1
    1168:	afc20014 	sw	v0,20(s8)
	  break;
    116c:	0800046c 	j	11b0 <read_markers+0x154>
    1170:	00000000 	sll	zero,zero,0x0

	case M_SOF0:		/* Baseline DCT ( Huffman ) */
	  get_sof ();
    1174:	0c000000 	jal	0 <read_byte>
    1178:	00000000 	sll	zero,zero,0x0
	  break;
    117c:	0800046c 	j	11b0 <read_markers+0x154>
    1180:	00000000 	sll	zero,zero,0x0

	case M_SOS:		/* Start of Scan ( Head of Compressed Data ) */
	  get_sos ();
    1184:	0c000000 	jal	0 <read_byte>
    1188:	00000000 	sll	zero,zero,0x0
	  return;
    118c:	0800046f 	j	11bc <read_markers+0x160>
    1190:	00000000 	sll	zero,zero,0x0

	case M_DHT:
	  get_dht ();
    1194:	0c000000 	jal	0 <read_byte>
    1198:	00000000 	sll	zero,zero,0x0
	  break;
    119c:	0800046c 	j	11b0 <read_markers+0x154>
    11a0:	00000000 	sll	zero,zero,0x0

	case M_DQT:
	  get_dqt ();
    11a4:	0c000000 	jal	0 <read_byte>
    11a8:	00000000 	sll	zero,zero,0x0
	  break;
    11ac:	00000000 	sll	zero,zero,0x0

	case M_EOI:
	  return;
	}
    }
    11b0:	08000427 	j	109c <read_markers+0x40>
    11b4:	00000000 	sll	zero,zero,0x0
	case M_DQT:
	  get_dqt ();
	  break;

	case M_EOI:
	  return;
    11b8:	00000000 	sll	zero,zero,0x0
	}
    }
}
    11bc:	03c0e821 	addu	sp,s8,zero
    11c0:	8fbf001c 	lw	ra,28(sp)
    11c4:	8fbe0018 	lw	s8,24(sp)
    11c8:	27bd0020 	addiu	sp,sp,32
    11cc:	03e00008 	jr	ra
    11d0:	00000000 	sll	zero,zero,0x0

000011d4 <ChenIDct>:
 * input vectors that represent x=input, and y=output, and must be
 * defined (and storage allocated) before this routine is called.
 */
void
ChenIDct (int *x, int *y)
{
    11d4:	27bdffc0 	addiu	sp,sp,-64
    11d8:	afbe003c 	sw	s8,60(sp)
    11dc:	afb70038 	sw	s7,56(sp)
    11e0:	afb60034 	sw	s6,52(sp)
    11e4:	afb50030 	sw	s5,48(sp)
    11e8:	afb4002c 	sw	s4,44(sp)
    11ec:	afb30028 	sw	s3,40(sp)
    11f0:	afb20024 	sw	s2,36(sp)
    11f4:	afb10020 	sw	s1,32(sp)
    11f8:	afb0001c 	sw	s0,28(sp)
    11fc:	03a0f021 	addu	s8,sp,zero
    1200:	afc40040 	sw	a0,64(s8)
    1204:	afc50044 	sw	a1,68(s8)
  register int b0, b1, b2, b3;
  register int c0, c1, c2, c3;

  /* Loop over columns */

  for (i = 0; i < 8; i++)
    1208:	0000a021 	addu	s4,zero,zero
    120c:	08000589 	j	1624 <ChenIDct+0x450>
    1210:	00000000 	sll	zero,zero,0x0
    {
      aptr = x + i;
    1214:	02801021 	addu	v0,s4,zero
    1218:	00021080 	sll	v0,v0,0x2
    121c:	8fc30040 	lw	v1,64(s8)
    1220:	00000000 	sll	zero,zero,0x0
    1224:	00628021 	addu	s0,v1,v0
      b0 = LS (*aptr, 2);
    1228:	8e020000 	lw	v0,0(s0)
    122c:	00000000 	sll	zero,zero,0x0
    1230:	00021080 	sll	v0,v0,0x2
    1234:	afc20000 	sw	v0,0(s8)
      aptr += 8;
    1238:	26100020 	addiu	s0,s0,32
      a0 = LS (*aptr, 2);
    123c:	8e020000 	lw	v0,0(s0)
    1240:	00000000 	sll	zero,zero,0x0
    1244:	00029880 	sll	s3,v0,0x2
      aptr += 8;
    1248:	26100020 	addiu	s0,s0,32
      b2 = LS (*aptr, 2);
    124c:	8e020000 	lw	v0,0(s0)
    1250:	00000000 	sll	zero,zero,0x0
    1254:	0002a880 	sll	s5,v0,0x2
      aptr += 8;
    1258:	26100020 	addiu	s0,s0,32
      a1 = LS (*aptr, 2);
    125c:	8e020000 	lw	v0,0(s0)
    1260:	00000000 	sll	zero,zero,0x0
    1264:	00028880 	sll	s1,v0,0x2
      aptr += 8;
    1268:	26100020 	addiu	s0,s0,32
      b1 = LS (*aptr, 2);
    126c:	8e020000 	lw	v0,0(s0)
    1270:	00000000 	sll	zero,zero,0x0
    1274:	00021080 	sll	v0,v0,0x2
    1278:	afc20004 	sw	v0,4(s8)
      aptr += 8;
    127c:	26100020 	addiu	s0,s0,32
      a2 = LS (*aptr, 2);
    1280:	8e020000 	lw	v0,0(s0)
    1284:	00000000 	sll	zero,zero,0x0
    1288:	00029080 	sll	s2,v0,0x2
      aptr += 8;
    128c:	26100020 	addiu	s0,s0,32
      b3 = LS (*aptr, 2);
    1290:	8e020000 	lw	v0,0(s0)
    1294:	00000000 	sll	zero,zero,0x0
    1298:	0002b080 	sll	s6,v0,0x2
      aptr += 8;
    129c:	26100020 	addiu	s0,s0,32
      a3 = LS (*aptr, 2);
    12a0:	8e020000 	lw	v0,0(s0)
    12a4:	00000000 	sll	zero,zero,0x0
    12a8:	00028080 	sll	s0,v0,0x2

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    12ac:	02601021 	addu	v0,s3,zero
    12b0:	00021080 	sll	v0,v0,0x2
    12b4:	00021880 	sll	v1,v0,0x2
    12b8:	00431021 	addu	v0,v0,v1
    12bc:	00021880 	sll	v1,v0,0x2
    12c0:	00432021 	addu	a0,v0,v1
    12c4:	02001821 	addu	v1,s0,zero
    12c8:	00031080 	sll	v0,v1,0x2
    12cc:	00401821 	addu	v1,v0,zero
    12d0:	00031180 	sll	v0,v1,0x6
    12d4:	00431023 	subu	v0,v0,v1
    12d8:	00501023 	subu	v0,v0,s0
    12dc:	00021040 	sll	v0,v0,0x1
    12e0:	00021023 	negu	v0,v0
    12e4:	00821021 	addu	v0,a0,v0
    12e8:	00021243 	sra	v0,v0,0x9
    12ec:	afc20008 	sw	v0,8(s8)
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    12f0:	02401021 	addu	v0,s2,zero
    12f4:	000210c0 	sll	v0,v0,0x3
    12f8:	000218c0 	sll	v1,v0,0x3
    12fc:	00431021 	addu	v0,v0,v1
    1300:	00521023 	subu	v0,v0,s2
    1304:	00021880 	sll	v1,v0,0x2
    1308:	00621823 	subu	v1,v1,v0
    130c:	00031040 	sll	v0,v1,0x1
    1310:	00401821 	addu	v1,v0,zero
    1314:	02201021 	addu	v0,s1,zero
    1318:	000210c0 	sll	v0,v0,0x3
    131c:	000220c0 	sll	a0,v0,0x3
    1320:	00441021 	addu	v0,v0,a0
    1324:	00511023 	subu	v0,v0,s1
    1328:	00021080 	sll	v0,v0,0x2
    132c:	00021023 	negu	v0,v0
    1330:	00621021 	addu	v0,v1,v0
    1334:	00021243 	sra	v0,v0,0x9
    1338:	afc2000c 	sw	v0,12(s8)
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
    133c:	02201021 	addu	v0,s1,zero
    1340:	000210c0 	sll	v0,v0,0x3
    1344:	000218c0 	sll	v1,v0,0x3
    1348:	00431021 	addu	v0,v0,v1
    134c:	00511023 	subu	v0,v0,s1
    1350:	00021880 	sll	v1,v0,0x2
    1354:	00621823 	subu	v1,v1,v0
    1358:	00031040 	sll	v0,v1,0x1
    135c:	00401821 	addu	v1,v0,zero
    1360:	02401021 	addu	v0,s2,zero
    1364:	000210c0 	sll	v0,v0,0x3
    1368:	000220c0 	sll	a0,v0,0x3
    136c:	00441021 	addu	v0,v0,a0
    1370:	00521023 	subu	v0,v0,s2
    1374:	00021080 	sll	v0,v0,0x2
    1378:	00621021 	addu	v0,v1,v0
    137c:	00021243 	sra	v0,v0,0x9
    1380:	afc20010 	sw	v0,16(s8)
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1384:	02601821 	addu	v1,s3,zero
    1388:	00031080 	sll	v0,v1,0x2
    138c:	00401821 	addu	v1,v0,zero
    1390:	00031180 	sll	v0,v1,0x6
    1394:	00431023 	subu	v0,v0,v1
    1398:	00531023 	subu	v0,v0,s3
    139c:	00021040 	sll	v0,v0,0x1
    13a0:	00401821 	addu	v1,v0,zero
    13a4:	02001021 	addu	v0,s0,zero
    13a8:	00021080 	sll	v0,v0,0x2
    13ac:	00022080 	sll	a0,v0,0x2
    13b0:	00441021 	addu	v0,v0,a0
    13b4:	00022080 	sll	a0,v0,0x2
    13b8:	00441021 	addu	v0,v0,a0
    13bc:	00621021 	addu	v0,v1,v0
    13c0:	0002ba43 	sra	s7,v0,0x9

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    13c4:	8fc20000 	lw	v0,0(s8)
    13c8:	8fc30004 	lw	v1,4(s8)
    13cc:	00000000 	sll	zero,zero,0x0
    13d0:	00432021 	addu	a0,v0,v1
    13d4:	00801021 	addu	v0,a0,zero
    13d8:	00021080 	sll	v0,v0,0x2
    13dc:	00021880 	sll	v1,v0,0x2
    13e0:	00621823 	subu	v1,v1,v0
    13e4:	00031100 	sll	v0,v1,0x4
    13e8:	00431023 	subu	v0,v0,v1
    13ec:	00441021 	addu	v0,v0,a0
    13f0:	00021040 	sll	v0,v0,0x1
    13f4:	00029a43 	sra	s3,v0,0x9
      a1 = MSCALE (c1d4 * (b0 - b1));
    13f8:	8fc20000 	lw	v0,0(s8)
    13fc:	8fc30004 	lw	v1,4(s8)
    1400:	00000000 	sll	zero,zero,0x0
    1404:	00432023 	subu	a0,v0,v1
    1408:	00801021 	addu	v0,a0,zero
    140c:	00021080 	sll	v0,v0,0x2
    1410:	00021880 	sll	v1,v0,0x2
    1414:	00621823 	subu	v1,v1,v0
    1418:	00031100 	sll	v0,v1,0x4
    141c:	00431023 	subu	v0,v0,v1
    1420:	00441021 	addu	v0,v0,a0
    1424:	00021040 	sll	v0,v0,0x1
    1428:	00028a43 	sra	s1,v0,0x9

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    142c:	02a01821 	addu	v1,s5,zero
    1430:	00031080 	sll	v0,v1,0x2
    1434:	00401821 	addu	v1,v0,zero
    1438:	000310c0 	sll	v0,v1,0x3
    143c:	00431023 	subu	v0,v0,v1
    1440:	000218c0 	sll	v1,v0,0x3
    1444:	00622023 	subu	a0,v1,v0
    1448:	02c01821 	addu	v1,s6,zero
    144c:	00031080 	sll	v0,v1,0x2
    1450:	00401821 	addu	v1,v0,zero
    1454:	00031100 	sll	v0,v1,0x4
    1458:	00431023 	subu	v0,v0,v1
    145c:	00561023 	subu	v0,v0,s6
    1460:	000210c0 	sll	v0,v0,0x3
    1464:	00561021 	addu	v0,v0,s6
    1468:	00021023 	negu	v0,v0
    146c:	00821021 	addu	v0,a0,v0
    1470:	00029243 	sra	s2,v0,0x9
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    1474:	02a01821 	addu	v1,s5,zero
    1478:	00031080 	sll	v0,v1,0x2
    147c:	00401821 	addu	v1,v0,zero
    1480:	00031100 	sll	v0,v1,0x4
    1484:	00431023 	subu	v0,v0,v1
    1488:	00551023 	subu	v0,v0,s5
    148c:	000210c0 	sll	v0,v0,0x3
    1490:	00552021 	addu	a0,v0,s5
    1494:	02c01821 	addu	v1,s6,zero
    1498:	00031080 	sll	v0,v1,0x2
    149c:	00401821 	addu	v1,v0,zero
    14a0:	000310c0 	sll	v0,v1,0x3
    14a4:	00431023 	subu	v0,v0,v1
    14a8:	000218c0 	sll	v1,v0,0x3
    14ac:	00621023 	subu	v0,v1,v0
    14b0:	00821021 	addu	v0,a0,v0
    14b4:	00028243 	sra	s0,v0,0x9

      b0 = a0 + a3;
    14b8:	02702021 	addu	a0,s3,s0
    14bc:	afc40000 	sw	a0,0(s8)
      b1 = a1 + a2;
    14c0:	02321021 	addu	v0,s1,s2
    14c4:	afc20004 	sw	v0,4(s8)
      b2 = a1 - a2;
    14c8:	0232a823 	subu	s5,s1,s2
      b3 = a0 - a3;
    14cc:	0270b023 	subu	s6,s3,s0

      /* Second Butterfly */

      a0 = c0 + c1;
    14d0:	8fc30008 	lw	v1,8(s8)
    14d4:	8fc4000c 	lw	a0,12(s8)
    14d8:	00000000 	sll	zero,zero,0x0
    14dc:	00649821 	addu	s3,v1,a0
      a1 = c0 - c1;
    14e0:	8fc20008 	lw	v0,8(s8)
    14e4:	8fc3000c 	lw	v1,12(s8)
    14e8:	00000000 	sll	zero,zero,0x0
    14ec:	00438823 	subu	s1,v0,v1
      a2 = c3 - c2;
    14f0:	8fc40010 	lw	a0,16(s8)
    14f4:	00000000 	sll	zero,zero,0x0
    14f8:	02e49023 	subu	s2,s7,a0
      a3 = c3 + c2;
    14fc:	8fc20010 	lw	v0,16(s8)
    1500:	00000000 	sll	zero,zero,0x0
    1504:	02e28021 	addu	s0,s7,v0

      c0 = a0;
    1508:	afd30008 	sw	s3,8(s8)
      c1 = MSCALE (c1d4 * (a2 - a1));
    150c:	02512023 	subu	a0,s2,s1
    1510:	00801021 	addu	v0,a0,zero
    1514:	00021080 	sll	v0,v0,0x2
    1518:	00021880 	sll	v1,v0,0x2
    151c:	00621823 	subu	v1,v1,v0
    1520:	00031100 	sll	v0,v1,0x4
    1524:	00431023 	subu	v0,v0,v1
    1528:	00441021 	addu	v0,v0,a0
    152c:	00021040 	sll	v0,v0,0x1
    1530:	00021243 	sra	v0,v0,0x9
    1534:	afc2000c 	sw	v0,12(s8)
      c2 = MSCALE (c1d4 * (a2 + a1));
    1538:	02512021 	addu	a0,s2,s1
    153c:	00801021 	addu	v0,a0,zero
    1540:	00021080 	sll	v0,v0,0x2
    1544:	00021880 	sll	v1,v0,0x2
    1548:	00621823 	subu	v1,v1,v0
    154c:	00031100 	sll	v0,v1,0x4
    1550:	00431023 	subu	v0,v0,v1
    1554:	00441021 	addu	v0,v0,a0
    1558:	00021040 	sll	v0,v0,0x1
    155c:	00021243 	sra	v0,v0,0x9
    1560:	afc20010 	sw	v0,16(s8)
      c3 = a3;
    1564:	0200b821 	addu	s7,s0,zero

      aptr = y + i;
    1568:	02801021 	addu	v0,s4,zero
    156c:	00021080 	sll	v0,v0,0x2
    1570:	8fc30044 	lw	v1,68(s8)
    1574:	00000000 	sll	zero,zero,0x0
    1578:	00628021 	addu	s0,v1,v0
      *aptr = b0 + c3;
    157c:	8fc30000 	lw	v1,0(s8)
    1580:	00000000 	sll	zero,zero,0x0
    1584:	00771021 	addu	v0,v1,s7
    1588:	ae020000 	sw	v0,0(s0)
      aptr += 8;
    158c:	26100020 	addiu	s0,s0,32
      *aptr = b1 + c2;
    1590:	8fc40004 	lw	a0,4(s8)
    1594:	8fc30010 	lw	v1,16(s8)
    1598:	00000000 	sll	zero,zero,0x0
    159c:	00831021 	addu	v0,a0,v1
    15a0:	ae020000 	sw	v0,0(s0)
      aptr += 8;
    15a4:	26100020 	addiu	s0,s0,32
      *aptr = b2 + c1;
    15a8:	8fc4000c 	lw	a0,12(s8)
    15ac:	00000000 	sll	zero,zero,0x0
    15b0:	02a41021 	addu	v0,s5,a0
    15b4:	ae020000 	sw	v0,0(s0)
      aptr += 8;
    15b8:	26100020 	addiu	s0,s0,32
      *aptr = b3 + c0;
    15bc:	8fc30008 	lw	v1,8(s8)
    15c0:	00000000 	sll	zero,zero,0x0
    15c4:	02c31021 	addu	v0,s6,v1
    15c8:	ae020000 	sw	v0,0(s0)
      aptr += 8;
    15cc:	26100020 	addiu	s0,s0,32
      *aptr = b3 - c0;
    15d0:	8fc40008 	lw	a0,8(s8)
    15d4:	00000000 	sll	zero,zero,0x0
    15d8:	02c41023 	subu	v0,s6,a0
    15dc:	ae020000 	sw	v0,0(s0)
      aptr += 8;
    15e0:	26100020 	addiu	s0,s0,32
      *aptr = b2 - c1;
    15e4:	8fc3000c 	lw	v1,12(s8)
    15e8:	00000000 	sll	zero,zero,0x0
    15ec:	02a31023 	subu	v0,s5,v1
    15f0:	ae020000 	sw	v0,0(s0)
      aptr += 8;
    15f4:	26100020 	addiu	s0,s0,32
      *aptr = b1 - c2;
    15f8:	8fc40004 	lw	a0,4(s8)
    15fc:	8fc30010 	lw	v1,16(s8)
    1600:	00000000 	sll	zero,zero,0x0
    1604:	00831023 	subu	v0,a0,v1
    1608:	ae020000 	sw	v0,0(s0)
      aptr += 8;
    160c:	26100020 	addiu	s0,s0,32
      *aptr = b0 - c3;
    1610:	8fc40000 	lw	a0,0(s8)
    1614:	00000000 	sll	zero,zero,0x0
    1618:	00971023 	subu	v0,a0,s7
    161c:	ae020000 	sw	v0,0(s0)
  register int b0, b1, b2, b3;
  register int c0, c1, c2, c3;

  /* Loop over columns */

  for (i = 0; i < 8; i++)
    1620:	26940001 	addiu	s4,s4,1
    1624:	2a820008 	slti	v0,s4,8
    1628:	1440fefa 	bnez	v0,1214 <ChenIDct+0x40>
    162c:	00000000 	sll	zero,zero,0x0
      *aptr = b0 - c3;
    }

  /* Loop over rows */

  for (i = 0; i < 8; i++)
    1630:	0000a021 	addu	s4,zero,zero
    1634:	08000685 	j	1a14 <ChenIDct+0x840>
    1638:	00000000 	sll	zero,zero,0x0
    {
      aptr = y + LS (i, 3);
    163c:	001410c0 	sll	v0,s4,0x3
    1640:	00021080 	sll	v0,v0,0x2
    1644:	8fc30044 	lw	v1,68(s8)
    1648:	00000000 	sll	zero,zero,0x0
    164c:	00628021 	addu	s0,v1,v0
      b0 = *(aptr++);
    1650:	8e020000 	lw	v0,0(s0)
    1654:	00000000 	sll	zero,zero,0x0
    1658:	afc20000 	sw	v0,0(s8)
    165c:	26100004 	addiu	s0,s0,4
      a0 = *(aptr++);
    1660:	8e130000 	lw	s3,0(s0)
    1664:	26100004 	addiu	s0,s0,4
      b2 = *(aptr++);
    1668:	8e150000 	lw	s5,0(s0)
    166c:	26100004 	addiu	s0,s0,4
      a1 = *(aptr++);
    1670:	8e110000 	lw	s1,0(s0)
    1674:	26100004 	addiu	s0,s0,4
      b1 = *(aptr++);
    1678:	8e030000 	lw	v1,0(s0)
    167c:	00000000 	sll	zero,zero,0x0
    1680:	afc30004 	sw	v1,4(s8)
    1684:	26100004 	addiu	s0,s0,4
      a2 = *(aptr++);
    1688:	8e120000 	lw	s2,0(s0)
    168c:	26100004 	addiu	s0,s0,4
      b3 = *(aptr++);
    1690:	8e160000 	lw	s6,0(s0)
    1694:	26100004 	addiu	s0,s0,4
      a3 = *(aptr);
    1698:	8e100000 	lw	s0,0(s0)
      /*
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    169c:	02601021 	addu	v0,s3,zero
    16a0:	00021080 	sll	v0,v0,0x2
    16a4:	00021880 	sll	v1,v0,0x2
    16a8:	00431021 	addu	v0,v0,v1
    16ac:	00021880 	sll	v1,v0,0x2
    16b0:	00432021 	addu	a0,v0,v1
    16b4:	02001821 	addu	v1,s0,zero
    16b8:	00031080 	sll	v0,v1,0x2
    16bc:	00401821 	addu	v1,v0,zero
    16c0:	00031180 	sll	v0,v1,0x6
    16c4:	00431023 	subu	v0,v0,v1
    16c8:	00501023 	subu	v0,v0,s0
    16cc:	00021040 	sll	v0,v0,0x1
    16d0:	00021023 	negu	v0,v0
    16d4:	00821021 	addu	v0,a0,v0
    16d8:	00021243 	sra	v0,v0,0x9
    16dc:	afc20008 	sw	v0,8(s8)
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    16e0:	02401021 	addu	v0,s2,zero
    16e4:	000210c0 	sll	v0,v0,0x3
    16e8:	000218c0 	sll	v1,v0,0x3
    16ec:	00431021 	addu	v0,v0,v1
    16f0:	00521023 	subu	v0,v0,s2
    16f4:	00021880 	sll	v1,v0,0x2
    16f8:	00621823 	subu	v1,v1,v0
    16fc:	00031040 	sll	v0,v1,0x1
    1700:	00401821 	addu	v1,v0,zero
    1704:	02201021 	addu	v0,s1,zero
    1708:	000210c0 	sll	v0,v0,0x3
    170c:	000220c0 	sll	a0,v0,0x3
    1710:	00441021 	addu	v0,v0,a0
    1714:	00511023 	subu	v0,v0,s1
    1718:	00021080 	sll	v0,v0,0x2
    171c:	00021023 	negu	v0,v0
    1720:	00621021 	addu	v0,v1,v0
    1724:	00021243 	sra	v0,v0,0x9
    1728:	afc2000c 	sw	v0,12(s8)
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
    172c:	02201021 	addu	v0,s1,zero
    1730:	000210c0 	sll	v0,v0,0x3
    1734:	000218c0 	sll	v1,v0,0x3
    1738:	00431021 	addu	v0,v0,v1
    173c:	00511023 	subu	v0,v0,s1
    1740:	00021880 	sll	v1,v0,0x2
    1744:	00621823 	subu	v1,v1,v0
    1748:	00031040 	sll	v0,v1,0x1
    174c:	00401821 	addu	v1,v0,zero
    1750:	02401021 	addu	v0,s2,zero
    1754:	000210c0 	sll	v0,v0,0x3
    1758:	000220c0 	sll	a0,v0,0x3
    175c:	00441021 	addu	v0,v0,a0
    1760:	00521023 	subu	v0,v0,s2
    1764:	00021080 	sll	v0,v0,0x2
    1768:	00621021 	addu	v0,v1,v0
    176c:	00021243 	sra	v0,v0,0x9
    1770:	afc20010 	sw	v0,16(s8)
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1774:	02601821 	addu	v1,s3,zero
    1778:	00031080 	sll	v0,v1,0x2
    177c:	00401821 	addu	v1,v0,zero
    1780:	00031180 	sll	v0,v1,0x6
    1784:	00431023 	subu	v0,v0,v1
    1788:	00531023 	subu	v0,v0,s3
    178c:	00021040 	sll	v0,v0,0x1
    1790:	00401821 	addu	v1,v0,zero
    1794:	02001021 	addu	v0,s0,zero
    1798:	00021080 	sll	v0,v0,0x2
    179c:	00022080 	sll	a0,v0,0x2
    17a0:	00441021 	addu	v0,v0,a0
    17a4:	00022080 	sll	a0,v0,0x2
    17a8:	00441021 	addu	v0,v0,a0
    17ac:	00621021 	addu	v0,v1,v0
    17b0:	0002ba43 	sra	s7,v0,0x9

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    17b4:	8fc20000 	lw	v0,0(s8)
    17b8:	8fc30004 	lw	v1,4(s8)
    17bc:	00000000 	sll	zero,zero,0x0
    17c0:	00432021 	addu	a0,v0,v1
    17c4:	00801021 	addu	v0,a0,zero
    17c8:	00021080 	sll	v0,v0,0x2
    17cc:	00021880 	sll	v1,v0,0x2
    17d0:	00621823 	subu	v1,v1,v0
    17d4:	00031100 	sll	v0,v1,0x4
    17d8:	00431023 	subu	v0,v0,v1
    17dc:	00441021 	addu	v0,v0,a0
    17e0:	00021040 	sll	v0,v0,0x1
    17e4:	00029a43 	sra	s3,v0,0x9
      a1 = MSCALE (c1d4 * (b0 - b1));
    17e8:	8fc20000 	lw	v0,0(s8)
    17ec:	8fc30004 	lw	v1,4(s8)
    17f0:	00000000 	sll	zero,zero,0x0
    17f4:	00432023 	subu	a0,v0,v1
    17f8:	00801021 	addu	v0,a0,zero
    17fc:	00021080 	sll	v0,v0,0x2
    1800:	00021880 	sll	v1,v0,0x2
    1804:	00621823 	subu	v1,v1,v0
    1808:	00031100 	sll	v0,v1,0x4
    180c:	00431023 	subu	v0,v0,v1
    1810:	00441021 	addu	v0,v0,a0
    1814:	00021040 	sll	v0,v0,0x1
    1818:	00028a43 	sra	s1,v0,0x9

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    181c:	02a01821 	addu	v1,s5,zero
    1820:	00031080 	sll	v0,v1,0x2
    1824:	00401821 	addu	v1,v0,zero
    1828:	000310c0 	sll	v0,v1,0x3
    182c:	00431023 	subu	v0,v0,v1
    1830:	000218c0 	sll	v1,v0,0x3
    1834:	00622023 	subu	a0,v1,v0
    1838:	02c01821 	addu	v1,s6,zero
    183c:	00031080 	sll	v0,v1,0x2
    1840:	00401821 	addu	v1,v0,zero
    1844:	00031100 	sll	v0,v1,0x4
    1848:	00431023 	subu	v0,v0,v1
    184c:	00561023 	subu	v0,v0,s6
    1850:	000210c0 	sll	v0,v0,0x3
    1854:	00561021 	addu	v0,v0,s6
    1858:	00021023 	negu	v0,v0
    185c:	00821021 	addu	v0,a0,v0
    1860:	00029243 	sra	s2,v0,0x9
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    1864:	02a01821 	addu	v1,s5,zero
    1868:	00031080 	sll	v0,v1,0x2
    186c:	00401821 	addu	v1,v0,zero
    1870:	00031100 	sll	v0,v1,0x4
    1874:	00431023 	subu	v0,v0,v1
    1878:	00551023 	subu	v0,v0,s5
    187c:	000210c0 	sll	v0,v0,0x3
    1880:	00552021 	addu	a0,v0,s5
    1884:	02c01821 	addu	v1,s6,zero
    1888:	00031080 	sll	v0,v1,0x2
    188c:	00401821 	addu	v1,v0,zero
    1890:	000310c0 	sll	v0,v1,0x3
    1894:	00431023 	subu	v0,v0,v1
    1898:	000218c0 	sll	v1,v0,0x3
    189c:	00621023 	subu	v0,v1,v0
    18a0:	00821021 	addu	v0,a0,v0
    18a4:	00028243 	sra	s0,v0,0x9

      /* Calculate last set of b's */

      b0 = a0 + a3;
    18a8:	02702021 	addu	a0,s3,s0
    18ac:	afc40000 	sw	a0,0(s8)
      b1 = a1 + a2;
    18b0:	02321021 	addu	v0,s1,s2
    18b4:	afc20004 	sw	v0,4(s8)
      b2 = a1 - a2;
    18b8:	0232a823 	subu	s5,s1,s2
      b3 = a0 - a3;
    18bc:	0270b023 	subu	s6,s3,s0

      /* Second Butterfly */

      a0 = c0 + c1;
    18c0:	8fc30008 	lw	v1,8(s8)
    18c4:	8fc4000c 	lw	a0,12(s8)
    18c8:	00000000 	sll	zero,zero,0x0
    18cc:	00649821 	addu	s3,v1,a0
      a1 = c0 - c1;
    18d0:	8fc20008 	lw	v0,8(s8)
    18d4:	8fc3000c 	lw	v1,12(s8)
    18d8:	00000000 	sll	zero,zero,0x0
    18dc:	00438823 	subu	s1,v0,v1
      a2 = c3 - c2;
    18e0:	8fc40010 	lw	a0,16(s8)
    18e4:	00000000 	sll	zero,zero,0x0
    18e8:	02e49023 	subu	s2,s7,a0
      a3 = c3 + c2;
    18ec:	8fc20010 	lw	v0,16(s8)
    18f0:	00000000 	sll	zero,zero,0x0
    18f4:	02e28021 	addu	s0,s7,v0

      c0 = a0;
    18f8:	afd30008 	sw	s3,8(s8)
      c1 = MSCALE (c1d4 * (a2 - a1));
    18fc:	02512023 	subu	a0,s2,s1
    1900:	00801021 	addu	v0,a0,zero
    1904:	00021080 	sll	v0,v0,0x2
    1908:	00021880 	sll	v1,v0,0x2
    190c:	00621823 	subu	v1,v1,v0
    1910:	00031100 	sll	v0,v1,0x4
    1914:	00431023 	subu	v0,v0,v1
    1918:	00441021 	addu	v0,v0,a0
    191c:	00021040 	sll	v0,v0,0x1
    1920:	00021243 	sra	v0,v0,0x9
    1924:	afc2000c 	sw	v0,12(s8)
      c2 = MSCALE (c1d4 * (a2 + a1));
    1928:	02512021 	addu	a0,s2,s1
    192c:	00801021 	addu	v0,a0,zero
    1930:	00021080 	sll	v0,v0,0x2
    1934:	00021880 	sll	v1,v0,0x2
    1938:	00621823 	subu	v1,v1,v0
    193c:	00031100 	sll	v0,v1,0x4
    1940:	00431023 	subu	v0,v0,v1
    1944:	00441021 	addu	v0,v0,a0
    1948:	00021040 	sll	v0,v0,0x1
    194c:	00021243 	sra	v0,v0,0x9
    1950:	afc20010 	sw	v0,16(s8)
      c3 = a3;
    1954:	0200b821 	addu	s7,s0,zero

      aptr = y + LS (i, 3);
    1958:	001410c0 	sll	v0,s4,0x3
    195c:	00021080 	sll	v0,v0,0x2
    1960:	8fc30044 	lw	v1,68(s8)
    1964:	00000000 	sll	zero,zero,0x0
    1968:	00628021 	addu	s0,v1,v0
      *(aptr++) = b0 + c3;
    196c:	8fc30000 	lw	v1,0(s8)
    1970:	00000000 	sll	zero,zero,0x0
    1974:	00771021 	addu	v0,v1,s7
    1978:	ae020000 	sw	v0,0(s0)
    197c:	26100004 	addiu	s0,s0,4
      *(aptr++) = b1 + c2;
    1980:	8fc40004 	lw	a0,4(s8)
    1984:	8fc30010 	lw	v1,16(s8)
    1988:	00000000 	sll	zero,zero,0x0
    198c:	00831021 	addu	v0,a0,v1
    1990:	ae020000 	sw	v0,0(s0)
    1994:	26100004 	addiu	s0,s0,4
      *(aptr++) = b2 + c1;
    1998:	8fc4000c 	lw	a0,12(s8)
    199c:	00000000 	sll	zero,zero,0x0
    19a0:	02a41021 	addu	v0,s5,a0
    19a4:	ae020000 	sw	v0,0(s0)
    19a8:	26100004 	addiu	s0,s0,4
      *(aptr++) = b3 + c0;
    19ac:	8fc30008 	lw	v1,8(s8)
    19b0:	00000000 	sll	zero,zero,0x0
    19b4:	02c31021 	addu	v0,s6,v1
    19b8:	ae020000 	sw	v0,0(s0)
    19bc:	26100004 	addiu	s0,s0,4
      *(aptr++) = b3 - c0;
    19c0:	8fc40008 	lw	a0,8(s8)
    19c4:	00000000 	sll	zero,zero,0x0
    19c8:	02c41023 	subu	v0,s6,a0
    19cc:	ae020000 	sw	v0,0(s0)
    19d0:	26100004 	addiu	s0,s0,4
      *(aptr++) = b2 - c1;
    19d4:	8fc3000c 	lw	v1,12(s8)
    19d8:	00000000 	sll	zero,zero,0x0
    19dc:	02a31023 	subu	v0,s5,v1
    19e0:	ae020000 	sw	v0,0(s0)
    19e4:	26100004 	addiu	s0,s0,4
      *(aptr++) = b1 - c2;
    19e8:	8fc40004 	lw	a0,4(s8)
    19ec:	8fc30010 	lw	v1,16(s8)
    19f0:	00000000 	sll	zero,zero,0x0
    19f4:	00831023 	subu	v0,a0,v1
    19f8:	ae020000 	sw	v0,0(s0)
    19fc:	26100004 	addiu	s0,s0,4
      *(aptr) = b0 - c3;
    1a00:	8fc40000 	lw	a0,0(s8)
    1a04:	00000000 	sll	zero,zero,0x0
    1a08:	00971023 	subu	v0,a0,s7
    1a0c:	ae020000 	sw	v0,0(s0)
      *aptr = b0 - c3;
    }

  /* Loop over rows */

  for (i = 0; i < 8; i++)
    1a10:	26940001 	addiu	s4,s4,1
    1a14:	2a820008 	slti	v0,s4,8
    1a18:	1440ff08 	bnez	v0,163c <ChenIDct+0x468>
    1a1c:	00000000 	sll	zero,zero,0x0
  /*
     Retrieve correct accuracy. We have additional factor
     of 16 that must be removed.
   */

  for (i = 0, aptr = y; i < 64; i++, aptr++)
    1a20:	0000a021 	addu	s4,zero,zero
    1a24:	8fd00044 	lw	s0,68(s8)
    1a28:	080006a3 	j	1a8c <ChenIDct+0x8b8>
    1a2c:	00000000 	sll	zero,zero,0x0
    *aptr = (((*aptr < 0) ? (*aptr - 8) : (*aptr + 8)) / 16);
    1a30:	8e020000 	lw	v0,0(s0)
    1a34:	00000000 	sll	zero,zero,0x0
    1a38:	0441000a 	bgez	v0,1a64 <ChenIDct+0x890>
    1a3c:	00000000 	sll	zero,zero,0x0
    1a40:	8e020000 	lw	v0,0(s0)
    1a44:	00000000 	sll	zero,zero,0x0
    1a48:	2442fff8 	addiu	v0,v0,-8
    1a4c:	04410002 	bgez	v0,1a58 <ChenIDct+0x884>
    1a50:	00000000 	sll	zero,zero,0x0
    1a54:	2442000f 	addiu	v0,v0,15
    1a58:	00021103 	sra	v0,v0,0x4
    1a5c:	080006a0 	j	1a80 <ChenIDct+0x8ac>
    1a60:	00000000 	sll	zero,zero,0x0
    1a64:	8e020000 	lw	v0,0(s0)
    1a68:	00000000 	sll	zero,zero,0x0
    1a6c:	24420008 	addiu	v0,v0,8
    1a70:	04410002 	bgez	v0,1a7c <ChenIDct+0x8a8>
    1a74:	00000000 	sll	zero,zero,0x0
    1a78:	2442000f 	addiu	v0,v0,15
    1a7c:	00021103 	sra	v0,v0,0x4
    1a80:	ae020000 	sw	v0,0(s0)
  /*
     Retrieve correct accuracy. We have additional factor
     of 16 that must be removed.
   */

  for (i = 0, aptr = y; i < 64; i++, aptr++)
    1a84:	26940001 	addiu	s4,s4,1
    1a88:	26100004 	addiu	s0,s0,4
    1a8c:	2a820040 	slti	v0,s4,64
    1a90:	1440ffe7 	bnez	v0,1a30 <ChenIDct+0x85c>
    1a94:	00000000 	sll	zero,zero,0x0
    *aptr = (((*aptr < 0) ? (*aptr - 8) : (*aptr + 8)) / 16);
}
    1a98:	03c0e821 	addu	sp,s8,zero
    1a9c:	8fbe003c 	lw	s8,60(sp)
    1aa0:	8fb70038 	lw	s7,56(sp)
    1aa4:	8fb60034 	lw	s6,52(sp)
    1aa8:	8fb50030 	lw	s5,48(sp)
    1aac:	8fb4002c 	lw	s4,44(sp)
    1ab0:	8fb30028 	lw	s3,40(sp)
    1ab4:	8fb20024 	lw	s2,36(sp)
    1ab8:	8fb10020 	lw	s1,32(sp)
    1abc:	8fb0001c 	lw	s0,28(sp)
    1ac0:	27bd0040 	addiu	sp,sp,64
    1ac4:	03e00008 	jr	ra
    1ac8:	00000000 	sll	zero,zero,0x0

00001acc <IZigzagMatrix>:
 * IZigzagMatrix() performs an inverse zig-zag translation on the
 * input imatrix and places the output in omatrix.
 */
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
    1acc:	27bdfff0 	addiu	sp,sp,-16
    1ad0:	afbe000c 	sw	s8,12(sp)
    1ad4:	03a0f021 	addu	s8,sp,zero
    1ad8:	afc40010 	sw	a0,16(s8)
    1adc:	afc50014 	sw	a1,20(s8)
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    1ae0:	afc00000 	sw	zero,0(s8)
    1ae4:	080006d3 	j	1b4c <IZigzagMatrix+0x80>
    1ae8:	00000000 	sll	zero,zero,0x0
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    1aec:	3c020000 	lui	v0,0x0
    1af0:	8fc30000 	lw	v1,0(s8)
    1af4:	00000000 	sll	zero,zero,0x0
    1af8:	00031880 	sll	v1,v1,0x2
    1afc:	24420000 	addiu	v0,v0,0
    1b00:	00621021 	addu	v0,v1,v0
    1b04:	8c420000 	lw	v0,0(v0)
    1b08:	00000000 	sll	zero,zero,0x0
    1b0c:	00021080 	sll	v0,v0,0x2
    1b10:	8fc30010 	lw	v1,16(s8)
    1b14:	00000000 	sll	zero,zero,0x0
    1b18:	00621021 	addu	v0,v1,v0
    1b1c:	8c430000 	lw	v1,0(v0)
    1b20:	8fc20014 	lw	v0,20(s8)
    1b24:	00000000 	sll	zero,zero,0x0
    1b28:	ac430000 	sw	v1,0(v0)
    1b2c:	8fc20014 	lw	v0,20(s8)
    1b30:	00000000 	sll	zero,zero,0x0
    1b34:	24420004 	addiu	v0,v0,4
    1b38:	afc20014 	sw	v0,20(s8)
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    1b3c:	8fc20000 	lw	v0,0(s8)
    1b40:	00000000 	sll	zero,zero,0x0
    1b44:	24420001 	addiu	v0,v0,1
    1b48:	afc20000 	sw	v0,0(s8)
    1b4c:	8fc20000 	lw	v0,0(s8)
    1b50:	00000000 	sll	zero,zero,0x0
    1b54:	28420040 	slti	v0,v0,64
    1b58:	1440ffe4 	bnez	v0,1aec <IZigzagMatrix+0x20>
    1b5c:	00000000 	sll	zero,zero,0x0
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    
}
}
    1b60:	03c0e821 	addu	sp,s8,zero
    1b64:	8fbe000c 	lw	s8,12(sp)
    1b68:	27bd0010 	addiu	sp,sp,16
    1b6c:	03e00008 	jr	ra
    1b70:	00000000 	sll	zero,zero,0x0

00001b74 <IQuantize>:
 * IQuantize() takes an input matrix and does an inverse quantization
 * and puts the output int qmatrix.
 */
void
IQuantize (int *matrix, int *qmatrix)
{
    1b74:	27bdfff0 	addiu	sp,sp,-16
    1b78:	afbe000c 	sw	s8,12(sp)
    1b7c:	03a0f021 	addu	s8,sp,zero
    1b80:	afc40010 	sw	a0,16(s8)
    1b84:	afc50014 	sw	a1,20(s8)
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1b88:	8fc20010 	lw	v0,16(s8)
    1b8c:	00000000 	sll	zero,zero,0x0
    1b90:	afc20000 	sw	v0,0(s8)
    1b94:	080006fb 	j	1bec <IQuantize+0x78>
    1b98:	00000000 	sll	zero,zero,0x0
    {
      *mptr = *mptr * (*qmatrix);
    1b9c:	8fc20000 	lw	v0,0(s8)
    1ba0:	00000000 	sll	zero,zero,0x0
    1ba4:	8c430000 	lw	v1,0(v0)
    1ba8:	8fc20014 	lw	v0,20(s8)
    1bac:	00000000 	sll	zero,zero,0x0
    1bb0:	8c420000 	lw	v0,0(v0)
    1bb4:	00000000 	sll	zero,zero,0x0
    1bb8:	00620018 	mult	v1,v0
    1bbc:	00001812 	mflo	v1
    1bc0:	8fc20000 	lw	v0,0(s8)
    1bc4:	00000000 	sll	zero,zero,0x0
    1bc8:	ac430000 	sw	v1,0(v0)
      qmatrix++;
    1bcc:	8fc20014 	lw	v0,20(s8)
    1bd0:	00000000 	sll	zero,zero,0x0
    1bd4:	24420004 	addiu	v0,v0,4
    1bd8:	afc20014 	sw	v0,20(s8)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1bdc:	8fc20000 	lw	v0,0(s8)
    1be0:	00000000 	sll	zero,zero,0x0
    1be4:	24420004 	addiu	v0,v0,4
    1be8:	afc20000 	sw	v0,0(s8)
    1bec:	8fc20010 	lw	v0,16(s8)
    1bf0:	00000000 	sll	zero,zero,0x0
    1bf4:	24430100 	addiu	v1,v0,256
    1bf8:	8fc20000 	lw	v0,0(s8)
    1bfc:	00000000 	sll	zero,zero,0x0
    1c00:	0043102b 	sltu	v0,v0,v1
    1c04:	1440ffe5 	bnez	v0,1b9c <IQuantize+0x28>
    1c08:	00000000 	sll	zero,zero,0x0
    {
      *mptr = *mptr * (*qmatrix);
      qmatrix++;
    }
}
    1c0c:	03c0e821 	addu	sp,s8,zero
    1c10:	8fbe000c 	lw	s8,12(sp)
    1c14:	27bd0010 	addiu	sp,sp,16
    1c18:	03e00008 	jr	ra
    1c1c:	00000000 	sll	zero,zero,0x0

00001c20 <PostshiftIDctMatrix>:
 * PostshiftIDctMatrix() adds 128 (2048) to all 64 elements of an 8x8 matrix.
 * This results in strictly positive values for all pixel coefficients.
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
    1c20:	27bdfff0 	addiu	sp,sp,-16
    1c24:	afbe000c 	sw	s8,12(sp)
    1c28:	03a0f021 	addu	s8,sp,zero
    1c2c:	afc40010 	sw	a0,16(s8)
    1c30:	afc50014 	sw	a1,20(s8)
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1c34:	8fc20010 	lw	v0,16(s8)
    1c38:	00000000 	sll	zero,zero,0x0
    1c3c:	afc20000 	sw	v0,0(s8)
    1c40:	0800071f 	j	1c7c <PostshiftIDctMatrix+0x5c>
    1c44:	00000000 	sll	zero,zero,0x0
    {
      *mptr += shift;
    1c48:	8fc20000 	lw	v0,0(s8)
    1c4c:	00000000 	sll	zero,zero,0x0
    1c50:	8c430000 	lw	v1,0(v0)
    1c54:	8fc20014 	lw	v0,20(s8)
    1c58:	00000000 	sll	zero,zero,0x0
    1c5c:	00621821 	addu	v1,v1,v0
    1c60:	8fc20000 	lw	v0,0(s8)
    1c64:	00000000 	sll	zero,zero,0x0
    1c68:	ac430000 	sw	v1,0(v0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1c6c:	8fc20000 	lw	v0,0(s8)
    1c70:	00000000 	sll	zero,zero,0x0
    1c74:	24420004 	addiu	v0,v0,4
    1c78:	afc20000 	sw	v0,0(s8)
    1c7c:	8fc20010 	lw	v0,16(s8)
    1c80:	00000000 	sll	zero,zero,0x0
    1c84:	24430100 	addiu	v1,v0,256
    1c88:	8fc20000 	lw	v0,0(s8)
    1c8c:	00000000 	sll	zero,zero,0x0
    1c90:	0043102b 	sltu	v0,v0,v1
    1c94:	1440ffec 	bnez	v0,1c48 <PostshiftIDctMatrix+0x28>
    1c98:	00000000 	sll	zero,zero,0x0
    {
      *mptr += shift;
    }
}
    1c9c:	03c0e821 	addu	sp,s8,zero
    1ca0:	8fbe000c 	lw	s8,12(sp)
    1ca4:	27bd0010 	addiu	sp,sp,16
    1ca8:	03e00008 	jr	ra
    1cac:	00000000 	sll	zero,zero,0x0

00001cb0 <BoundIDctMatrix>:
 * BoundIDctMatrix bounds the inverse dct matrix so that no pixel has a
 * value greater than 255 (4095) or less than 0.
 */
void
BoundIDctMatrix (int *matrix, int Bound)
{
    1cb0:	27bdfff0 	addiu	sp,sp,-16
    1cb4:	afbe000c 	sw	s8,12(sp)
    1cb8:	03a0f021 	addu	s8,sp,zero
    1cbc:	afc40010 	sw	a0,16(s8)
    1cc0:	afc50014 	sw	a1,20(s8)
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1cc4:	8fc20010 	lw	v0,16(s8)
    1cc8:	00000000 	sll	zero,zero,0x0
    1ccc:	afc20000 	sw	v0,0(s8)
    1cd0:	08000751 	j	1d44 <BoundIDctMatrix+0x94>
    1cd4:	00000000 	sll	zero,zero,0x0
    {
      if (*mptr < 0)
    1cd8:	8fc20000 	lw	v0,0(s8)
    1cdc:	00000000 	sll	zero,zero,0x0
    1ce0:	8c420000 	lw	v0,0(v0)
    1ce4:	00000000 	sll	zero,zero,0x0
    1ce8:	04410006 	bgez	v0,1d04 <BoundIDctMatrix+0x54>
    1cec:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = 0;
    1cf0:	8fc20000 	lw	v0,0(s8)
    1cf4:	00000000 	sll	zero,zero,0x0
    1cf8:	ac400000 	sw	zero,0(v0)
    1cfc:	0800074d 	j	1d34 <BoundIDctMatrix+0x84>
    1d00:	00000000 	sll	zero,zero,0x0
	}
      else if (*mptr > Bound)
    1d04:	8fc20000 	lw	v0,0(s8)
    1d08:	00000000 	sll	zero,zero,0x0
    1d0c:	8c430000 	lw	v1,0(v0)
    1d10:	8fc20014 	lw	v0,20(s8)
    1d14:	00000000 	sll	zero,zero,0x0
    1d18:	0043102a 	slt	v0,v0,v1
    1d1c:	10400005 	beqz	v0,1d34 <BoundIDctMatrix+0x84>
    1d20:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = Bound;
    1d24:	8fc20000 	lw	v0,0(s8)
    1d28:	8fc30014 	lw	v1,20(s8)
    1d2c:	00000000 	sll	zero,zero,0x0
    1d30:	ac430000 	sw	v1,0(v0)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1d34:	8fc20000 	lw	v0,0(s8)
    1d38:	00000000 	sll	zero,zero,0x0
    1d3c:	24420004 	addiu	v0,v0,4
    1d40:	afc20000 	sw	v0,0(s8)
    1d44:	8fc20010 	lw	v0,16(s8)
    1d48:	00000000 	sll	zero,zero,0x0
    1d4c:	24430100 	addiu	v1,v0,256
    1d50:	8fc20000 	lw	v0,0(s8)
    1d54:	00000000 	sll	zero,zero,0x0
    1d58:	0043102b 	sltu	v0,v0,v1
    1d5c:	1440ffde 	bnez	v0,1cd8 <BoundIDctMatrix+0x28>
    1d60:	00000000 	sll	zero,zero,0x0
      else if (*mptr > Bound)
	{
	  *mptr = Bound;
	}
    }
}
    1d64:	03c0e821 	addu	sp,s8,zero
    1d68:	8fbe000c 	lw	s8,12(sp)
    1d6c:	27bd0010 	addiu	sp,sp,16
    1d70:	03e00008 	jr	ra
    1d74:	00000000 	sll	zero,zero,0x0

00001d78 <WriteOneBlock>:


void
WriteOneBlock (int *store, char *out_buf, int width, int height,
	       int voffs, int hoffs)
{
    1d78:	27bdffe8 	addiu	sp,sp,-24
    1d7c:	afbe0014 	sw	s8,20(sp)
    1d80:	03a0f021 	addu	s8,sp,zero
    1d84:	afc40018 	sw	a0,24(s8)
    1d88:	afc5001c 	sw	a1,28(s8)
    1d8c:	afc60020 	sw	a2,32(s8)
    1d90:	afc70024 	sw	a3,36(s8)
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    1d94:	8fc20028 	lw	v0,40(s8)
    1d98:	00000000 	sll	zero,zero,0x0
    1d9c:	afc20000 	sw	v0,0(s8)
    1da0:	080007a6 	j	1e98 <WriteOneBlock+0x120>
    1da4:	00000000 	sll	zero,zero,0x0
    {
      if (i < height)
    1da8:	8fc30000 	lw	v1,0(s8)
    1dac:	8fc20024 	lw	v0,36(s8)
    1db0:	00000000 	sll	zero,zero,0x0
    1db4:	0062102a 	slt	v0,v1,v0
    1db8:	10400041 	beqz	v0,1ec0 <WriteOneBlock+0x148>
    1dbc:	00000000 	sll	zero,zero,0x0
	{
	  int diff;
	  diff = width * i;
    1dc0:	8fc30020 	lw	v1,32(s8)
    1dc4:	8fc20000 	lw	v0,0(s8)
    1dc8:	00000000 	sll	zero,zero,0x0
    1dcc:	00620018 	mult	v1,v0
    1dd0:	00001012 	mflo	v0
    1dd4:	afc20008 	sw	v0,8(s8)
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    1dd8:	8fc2002c 	lw	v0,44(s8)
    1ddc:	00000000 	sll	zero,zero,0x0
    1de0:	afc20004 	sw	v0,4(s8)
    1de4:	08000797 	j	1e5c <WriteOneBlock+0xe4>
    1de8:	00000000 	sll	zero,zero,0x0
	    {
	      if (e < width)
    1dec:	8fc30004 	lw	v1,4(s8)
    1df0:	8fc20020 	lw	v0,32(s8)
    1df4:	00000000 	sll	zero,zero,0x0
    1df8:	0062102a 	slt	v0,v1,v0
    1dfc:	10400021 	beqz	v0,1e84 <WriteOneBlock+0x10c>
    1e00:	00000000 	sll	zero,zero,0x0
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    1e04:	8fc30008 	lw	v1,8(s8)
    1e08:	8fc20004 	lw	v0,4(s8)
    1e0c:	00000000 	sll	zero,zero,0x0
    1e10:	00621021 	addu	v0,v1,v0
    1e14:	8fc3001c 	lw	v1,28(s8)
    1e18:	00000000 	sll	zero,zero,0x0
    1e1c:	00621021 	addu	v0,v1,v0
    1e20:	8fc30018 	lw	v1,24(s8)
    1e24:	00000000 	sll	zero,zero,0x0
    1e28:	8c630000 	lw	v1,0(v1)
    1e2c:	00000000 	sll	zero,zero,0x0
    1e30:	00031e00 	sll	v1,v1,0x18
    1e34:	00031e03 	sra	v1,v1,0x18
    1e38:	a0430000 	sb	v1,0(v0)
    1e3c:	8fc20018 	lw	v0,24(s8)
    1e40:	00000000 	sll	zero,zero,0x0
    1e44:	24420004 	addiu	v0,v0,4
    1e48:	afc20018 	sw	v0,24(s8)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    1e4c:	8fc20004 	lw	v0,4(s8)
    1e50:	00000000 	sll	zero,zero,0x0
    1e54:	24420001 	addiu	v0,v0,1
    1e58:	afc20004 	sw	v0,4(s8)
    1e5c:	8fc2002c 	lw	v0,44(s8)
    1e60:	00000000 	sll	zero,zero,0x0
    1e64:	24430008 	addiu	v1,v0,8
    1e68:	8fc20004 	lw	v0,4(s8)
    1e6c:	00000000 	sll	zero,zero,0x0
    1e70:	0043102a 	slt	v0,v0,v1
    1e74:	1440ffdd 	bnez	v0,1dec <WriteOneBlock+0x74>
    1e78:	00000000 	sll	zero,zero,0x0
    1e7c:	080007a2 	j	1e88 <WriteOneBlock+0x110>
    1e80:	00000000 	sll	zero,zero,0x0
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
		}
	      else
		{
		  break;
    1e84:	00000000 	sll	zero,zero,0x0
{
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    1e88:	8fc20000 	lw	v0,0(s8)
    1e8c:	00000000 	sll	zero,zero,0x0
    1e90:	24420001 	addiu	v0,v0,1
    1e94:	afc20000 	sw	v0,0(s8)
    1e98:	8fc20028 	lw	v0,40(s8)
    1e9c:	00000000 	sll	zero,zero,0x0
    1ea0:	24430008 	addiu	v1,v0,8
    1ea4:	8fc20000 	lw	v0,0(s8)
    1ea8:	00000000 	sll	zero,zero,0x0
    1eac:	0043102a 	slt	v0,v0,v1
    1eb0:	1440ffbd 	bnez	v0,1da8 <WriteOneBlock+0x30>
    1eb4:	00000000 	sll	zero,zero,0x0
    1eb8:	080007b1 	j	1ec4 <WriteOneBlock+0x14c>
    1ebc:	00000000 	sll	zero,zero,0x0
		}
	    }
	}
      else
	{
	  break;
    1ec0:	00000000 	sll	zero,zero,0x0
	}
    }


}
    1ec4:	03c0e821 	addu	sp,s8,zero
    1ec8:	8fbe0014 	lw	s8,20(sp)
    1ecc:	27bd0018 	addiu	sp,sp,24
    1ed0:	03e00008 	jr	ra
    1ed4:	00000000 	sll	zero,zero,0x0

00001ed8 <WriteBlock>:
 * ONLY for MCU 1:1:1
 */
void
WriteBlock (int *store, int *p_out_vpos, int *p_out_hpos,
	    unsigned char *p_out_buf)
{
    1ed8:	27bdffd8 	addiu	sp,sp,-40
    1edc:	afbf0024 	sw	ra,36(sp)
    1ee0:	afbe0020 	sw	s8,32(sp)
    1ee4:	03a0f021 	addu	s8,sp,zero
    1ee8:	afc40028 	sw	a0,40(s8)
    1eec:	afc5002c 	sw	a1,44(s8)
    1ef0:	afc60030 	sw	a2,48(s8)
    1ef4:	afc70034 	sw	a3,52(s8)
  int voffs, hoffs;

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
    1ef8:	8fc2002c 	lw	v0,44(s8)
    1efc:	00000000 	sll	zero,zero,0x0
    1f00:	8c420000 	lw	v0,0(v0)
    1f04:	00000000 	sll	zero,zero,0x0
    1f08:	000210c0 	sll	v0,v0,0x3
    1f0c:	afc20018 	sw	v0,24(s8)
  hoffs = *p_out_hpos * DCTSIZE;
    1f10:	8fc20030 	lw	v0,48(s8)
    1f14:	00000000 	sll	zero,zero,0x0
    1f18:	8c420000 	lw	v0,0(v0)
    1f1c:	00000000 	sll	zero,zero,0x0
    1f20:	000210c0 	sll	v0,v0,0x3
    1f24:	afc2001c 	sw	v0,28(s8)

  /*
   * Write block
   */
  WriteOneBlock (store,
    1f28:	8fc50034 	lw	a1,52(s8)
    1f2c:	87820000 	lh	v0,0(gp)
    1f30:	00000000 	sll	zero,zero,0x0
    1f34:	00401821 	addu	v1,v0,zero
    1f38:	87820000 	lh	v0,0(gp)
    1f3c:	8fc40018 	lw	a0,24(s8)
    1f40:	00000000 	sll	zero,zero,0x0
    1f44:	afa40010 	sw	a0,16(sp)
    1f48:	8fc4001c 	lw	a0,28(s8)
    1f4c:	00000000 	sll	zero,zero,0x0
    1f50:	afa40014 	sw	a0,20(sp)
    1f54:	8fc40028 	lw	a0,40(s8)
    1f58:	00603021 	addu	a2,v1,zero
    1f5c:	00403821 	addu	a3,v0,zero
    1f60:	0c000000 	jal	0 <read_byte>
    1f64:	00000000 	sll	zero,zero,0x0
		 p_jinfo_image_width, p_jinfo_image_height, voffs, hoffs);

  /*
   *  Add positions
   */
  *p_out_hpos++;
    1f68:	8fc20030 	lw	v0,48(s8)
    1f6c:	00000000 	sll	zero,zero,0x0
    1f70:	24420004 	addiu	v0,v0,4
    1f74:	afc20030 	sw	v0,48(s8)
  *p_out_vpos++;
    1f78:	8fc2002c 	lw	v0,44(s8)
    1f7c:	00000000 	sll	zero,zero,0x0
    1f80:	24420004 	addiu	v0,v0,4
    1f84:	afc2002c 	sw	v0,44(s8)

  if (*p_out_hpos < p_jinfo_MCUWidth)
    1f88:	8fc20030 	lw	v0,48(s8)
    1f8c:	00000000 	sll	zero,zero,0x0
    1f90:	8c430000 	lw	v1,0(v0)
    1f94:	8f820000 	lw	v0,0(gp)
    1f98:	00000000 	sll	zero,zero,0x0
    1f9c:	0062102a 	slt	v0,v1,v0
    1fa0:	10400007 	beqz	v0,1fc0 <WriteBlock+0xe8>
    1fa4:	00000000 	sll	zero,zero,0x0
    {
      *p_out_vpos--;
    1fa8:	8fc2002c 	lw	v0,44(s8)
    1fac:	00000000 	sll	zero,zero,0x0
    1fb0:	2442fffc 	addiu	v0,v0,-4
    1fb4:	afc2002c 	sw	v0,44(s8)
    1fb8:	080007f3 	j	1fcc <WriteBlock+0xf4>
    1fbc:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      *p_out_hpos = 0;		/* If at end of image (width) */
    1fc0:	8fc20030 	lw	v0,48(s8)
    1fc4:	00000000 	sll	zero,zero,0x0
    1fc8:	ac400000 	sw	zero,0(v0)
    }
}
    1fcc:	03c0e821 	addu	sp,s8,zero
    1fd0:	8fbf0024 	lw	ra,36(sp)
    1fd4:	8fbe0020 	lw	s8,32(sp)
    1fd8:	27bd0028 	addiu	sp,sp,40
    1fdc:	03e00008 	jr	ra
    1fe0:	00000000 	sll	zero,zero,0x0

00001fe4 <Write4Blocks>:
 *  4:1:1
 */
void
Write4Blocks (int *store1, int *store2, int *store3, int *store4,
	      int *p_out_vpos, int *p_out_hpos, unsigned char *p_out_buf)
{
    1fe4:	27bdffd8 	addiu	sp,sp,-40
    1fe8:	afbf0024 	sw	ra,36(sp)
    1fec:	afbe0020 	sw	s8,32(sp)
    1ff0:	03a0f021 	addu	s8,sp,zero
    1ff4:	afc40028 	sw	a0,40(s8)
    1ff8:	afc5002c 	sw	a1,44(s8)
    1ffc:	afc60030 	sw	a2,48(s8)
    2000:	afc70034 	sw	a3,52(s8)

  /*
   * OX
   * XX
   */
  voffs = *p_out_vpos * DCTSIZE;
    2004:	8fc20038 	lw	v0,56(s8)
    2008:	00000000 	sll	zero,zero,0x0
    200c:	8c420000 	lw	v0,0(v0)
    2010:	00000000 	sll	zero,zero,0x0
    2014:	000210c0 	sll	v0,v0,0x3
    2018:	afc20018 	sw	v0,24(s8)
  hoffs = *p_out_hpos * DCTSIZE;
    201c:	8fc2003c 	lw	v0,60(s8)
    2020:	00000000 	sll	zero,zero,0x0
    2024:	8c420000 	lw	v0,0(v0)
    2028:	00000000 	sll	zero,zero,0x0
    202c:	000210c0 	sll	v0,v0,0x3
    2030:	afc2001c 	sw	v0,28(s8)
  WriteOneBlock (store1, p_out_buf,
    2034:	8fc50040 	lw	a1,64(s8)
    2038:	87820000 	lh	v0,0(gp)
    203c:	00000000 	sll	zero,zero,0x0
    2040:	00401821 	addu	v1,v0,zero
    2044:	87820000 	lh	v0,0(gp)
    2048:	8fc40018 	lw	a0,24(s8)
    204c:	00000000 	sll	zero,zero,0x0
    2050:	afa40010 	sw	a0,16(sp)
    2054:	8fc4001c 	lw	a0,28(s8)
    2058:	00000000 	sll	zero,zero,0x0
    205c:	afa40014 	sw	a0,20(sp)
    2060:	8fc40028 	lw	a0,40(s8)
    2064:	00603021 	addu	a2,v1,zero
    2068:	00403821 	addu	a3,v0,zero
    206c:	0c000000 	jal	0 <read_byte>
    2070:	00000000 	sll	zero,zero,0x0

  /*
   * XO
   * XX
   */
  hoffs += DCTSIZE;
    2074:	8fc2001c 	lw	v0,28(s8)
    2078:	00000000 	sll	zero,zero,0x0
    207c:	24420008 	addiu	v0,v0,8
    2080:	afc2001c 	sw	v0,28(s8)
  WriteOneBlock (store2, p_out_buf,
    2084:	8fc50040 	lw	a1,64(s8)
    2088:	87820000 	lh	v0,0(gp)
    208c:	00000000 	sll	zero,zero,0x0
    2090:	00401821 	addu	v1,v0,zero
    2094:	87820000 	lh	v0,0(gp)
    2098:	8fc40018 	lw	a0,24(s8)
    209c:	00000000 	sll	zero,zero,0x0
    20a0:	afa40010 	sw	a0,16(sp)
    20a4:	8fc4001c 	lw	a0,28(s8)
    20a8:	00000000 	sll	zero,zero,0x0
    20ac:	afa40014 	sw	a0,20(sp)
    20b0:	8fc4002c 	lw	a0,44(s8)
    20b4:	00603021 	addu	a2,v1,zero
    20b8:	00403821 	addu	a3,v0,zero
    20bc:	0c000000 	jal	0 <read_byte>
    20c0:	00000000 	sll	zero,zero,0x0

  /*
   * XX
   * OX
   */
  voffs += DCTSIZE;
    20c4:	8fc20018 	lw	v0,24(s8)
    20c8:	00000000 	sll	zero,zero,0x0
    20cc:	24420008 	addiu	v0,v0,8
    20d0:	afc20018 	sw	v0,24(s8)
  hoffs -= DCTSIZE;
    20d4:	8fc2001c 	lw	v0,28(s8)
    20d8:	00000000 	sll	zero,zero,0x0
    20dc:	2442fff8 	addiu	v0,v0,-8
    20e0:	afc2001c 	sw	v0,28(s8)
  WriteOneBlock (store3, p_out_buf,
    20e4:	8fc50040 	lw	a1,64(s8)
    20e8:	87820000 	lh	v0,0(gp)
    20ec:	00000000 	sll	zero,zero,0x0
    20f0:	00401821 	addu	v1,v0,zero
    20f4:	87820000 	lh	v0,0(gp)
    20f8:	8fc40018 	lw	a0,24(s8)
    20fc:	00000000 	sll	zero,zero,0x0
    2100:	afa40010 	sw	a0,16(sp)
    2104:	8fc4001c 	lw	a0,28(s8)
    2108:	00000000 	sll	zero,zero,0x0
    210c:	afa40014 	sw	a0,20(sp)
    2110:	8fc40030 	lw	a0,48(s8)
    2114:	00603021 	addu	a2,v1,zero
    2118:	00403821 	addu	a3,v0,zero
    211c:	0c000000 	jal	0 <read_byte>
    2120:	00000000 	sll	zero,zero,0x0

  /*
   * XX
   * XO
   */
  hoffs += DCTSIZE;
    2124:	8fc2001c 	lw	v0,28(s8)
    2128:	00000000 	sll	zero,zero,0x0
    212c:	24420008 	addiu	v0,v0,8
    2130:	afc2001c 	sw	v0,28(s8)
  WriteOneBlock (store4,
    2134:	8fc50040 	lw	a1,64(s8)
    2138:	87820000 	lh	v0,0(gp)
    213c:	00000000 	sll	zero,zero,0x0
    2140:	00401821 	addu	v1,v0,zero
    2144:	87820000 	lh	v0,0(gp)
    2148:	8fc40018 	lw	a0,24(s8)
    214c:	00000000 	sll	zero,zero,0x0
    2150:	afa40010 	sw	a0,16(sp)
    2154:	8fc4001c 	lw	a0,28(s8)
    2158:	00000000 	sll	zero,zero,0x0
    215c:	afa40014 	sw	a0,20(sp)
    2160:	8fc40034 	lw	a0,52(s8)
    2164:	00603021 	addu	a2,v1,zero
    2168:	00403821 	addu	a3,v0,zero
    216c:	0c000000 	jal	0 <read_byte>
    2170:	00000000 	sll	zero,zero,0x0
		 voffs, hoffs);

  /*
   * Add positions
   */
  *p_out_hpos = *p_out_hpos + 2;
    2174:	8fc2003c 	lw	v0,60(s8)
    2178:	00000000 	sll	zero,zero,0x0
    217c:	8c420000 	lw	v0,0(v0)
    2180:	00000000 	sll	zero,zero,0x0
    2184:	24430002 	addiu	v1,v0,2
    2188:	8fc2003c 	lw	v0,60(s8)
    218c:	00000000 	sll	zero,zero,0x0
    2190:	ac430000 	sw	v1,0(v0)
  *p_out_vpos = *p_out_vpos + 2;
    2194:	8fc20038 	lw	v0,56(s8)
    2198:	00000000 	sll	zero,zero,0x0
    219c:	8c420000 	lw	v0,0(v0)
    21a0:	00000000 	sll	zero,zero,0x0
    21a4:	24430002 	addiu	v1,v0,2
    21a8:	8fc20038 	lw	v0,56(s8)
    21ac:	00000000 	sll	zero,zero,0x0
    21b0:	ac430000 	sw	v1,0(v0)


  if (*p_out_hpos < p_jinfo_MCUWidth)
    21b4:	8fc2003c 	lw	v0,60(s8)
    21b8:	00000000 	sll	zero,zero,0x0
    21bc:	8c430000 	lw	v1,0(v0)
    21c0:	8f820000 	lw	v0,0(gp)
    21c4:	00000000 	sll	zero,zero,0x0
    21c8:	0062102a 	slt	v0,v1,v0
    21cc:	1040000b 	beqz	v0,21fc <Write4Blocks+0x218>
    21d0:	00000000 	sll	zero,zero,0x0
    {
      *p_out_vpos = *p_out_vpos - 2;
    21d4:	8fc20038 	lw	v0,56(s8)
    21d8:	00000000 	sll	zero,zero,0x0
    21dc:	8c420000 	lw	v0,0(v0)
    21e0:	00000000 	sll	zero,zero,0x0
    21e4:	2443fffe 	addiu	v1,v0,-2
    21e8:	8fc20038 	lw	v0,56(s8)
    21ec:	00000000 	sll	zero,zero,0x0
    21f0:	ac430000 	sw	v1,0(v0)
    21f4:	08000882 	j	2208 <Write4Blocks+0x224>
    21f8:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      *p_out_hpos = 0;		/* If at end of image (width) */
    21fc:	8fc2003c 	lw	v0,60(s8)
    2200:	00000000 	sll	zero,zero,0x0
    2204:	ac400000 	sw	zero,0(v0)
    }
}
    2208:	03c0e821 	addu	sp,s8,zero
    220c:	8fbf0024 	lw	ra,36(sp)
    2210:	8fbe0020 	lw	s8,32(sp)
    2214:	27bd0028 	addiu	sp,sp,40
    2218:	03e00008 	jr	ra
    221c:	00000000 	sll	zero,zero,0x0

00002220 <YuvToRgb>:
/*
 * Transform from Yuv into RGB
 */
void
YuvToRgb (int p, int *y_buf, int *u_buf, int *v_buf)
{
    2220:	27bdffd8 	addiu	sp,sp,-40
    2224:	afbe0024 	sw	s8,36(sp)
    2228:	03a0f021 	addu	s8,sp,zero
    222c:	afc40028 	sw	a0,40(s8)
    2230:	afc5002c 	sw	a1,44(s8)
    2234:	afc60030 	sw	a2,48(s8)
    2238:	afc70034 	sw	a3,52(s8)
  int r, g, b;
  int y, u, v;
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    223c:	afc0000c 	sw	zero,12(s8)
    2240:	0800094e 	j	2538 <YuvToRgb+0x318>
    2244:	00000000 	sll	zero,zero,0x0
    {
      y = y_buf[i];
    2248:	8fc2000c 	lw	v0,12(s8)
    224c:	00000000 	sll	zero,zero,0x0
    2250:	00021080 	sll	v0,v0,0x2
    2254:	8fc3002c 	lw	v1,44(s8)
    2258:	00000000 	sll	zero,zero,0x0
    225c:	00621021 	addu	v0,v1,v0
    2260:	8c420000 	lw	v0,0(v0)
    2264:	00000000 	sll	zero,zero,0x0
    2268:	afc20010 	sw	v0,16(s8)
      u = u_buf[i] - 128;
    226c:	8fc2000c 	lw	v0,12(s8)
    2270:	00000000 	sll	zero,zero,0x0
    2274:	00021080 	sll	v0,v0,0x2
    2278:	8fc30030 	lw	v1,48(s8)
    227c:	00000000 	sll	zero,zero,0x0
    2280:	00621021 	addu	v0,v1,v0
    2284:	8c420000 	lw	v0,0(v0)
    2288:	00000000 	sll	zero,zero,0x0
    228c:	2442ff80 	addiu	v0,v0,-128
    2290:	afc20014 	sw	v0,20(s8)
      v = v_buf[i] - 128;
    2294:	8fc2000c 	lw	v0,12(s8)
    2298:	00000000 	sll	zero,zero,0x0
    229c:	00021080 	sll	v0,v0,0x2
    22a0:	8fc30034 	lw	v1,52(s8)
    22a4:	00000000 	sll	zero,zero,0x0
    22a8:	00621021 	addu	v0,v1,v0
    22ac:	8c420000 	lw	v0,0(v0)
    22b0:	00000000 	sll	zero,zero,0x0
    22b4:	2442ff80 	addiu	v0,v0,-128
    22b8:	afc20018 	sw	v0,24(s8)

      r = (y * 256 + v * 359 + 128) >> 8;
    22bc:	8fc20010 	lw	v0,16(s8)
    22c0:	00000000 	sll	zero,zero,0x0
    22c4:	00022a00 	sll	a1,v0,0x8
    22c8:	8fc40018 	lw	a0,24(s8)
    22cc:	00000000 	sll	zero,zero,0x0
    22d0:	00801821 	addu	v1,a0,zero
    22d4:	000310c0 	sll	v0,v1,0x3
    22d8:	00401821 	addu	v1,v0,zero
    22dc:	00031080 	sll	v0,v1,0x2
    22e0:	00431023 	subu	v0,v0,v1
    22e4:	00021900 	sll	v1,v0,0x4
    22e8:	00621823 	subu	v1,v1,v0
    22ec:	00641023 	subu	v0,v1,a0
    22f0:	00a21021 	addu	v0,a1,v0
    22f4:	24420080 	addiu	v0,v0,128
    22f8:	00021203 	sra	v0,v0,0x8
    22fc:	afc20000 	sw	v0,0(s8)
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    2300:	8fc20010 	lw	v0,16(s8)
    2304:	00000000 	sll	zero,zero,0x0
    2308:	00022a00 	sll	a1,v0,0x8
    230c:	8fc40014 	lw	a0,20(s8)
    2310:	00000000 	sll	zero,zero,0x0
    2314:	00801821 	addu	v1,a0,zero
    2318:	00031080 	sll	v0,v1,0x2
    231c:	00401821 	addu	v1,v0,zero
    2320:	00031080 	sll	v0,v1,0x2
    2324:	00431023 	subu	v0,v0,v1
    2328:	00441023 	subu	v0,v0,a0
    232c:	000210c0 	sll	v0,v0,0x3
    2330:	00021023 	negu	v0,v0
    2334:	00a22821 	addu	a1,a1,v0
    2338:	8fc40018 	lw	a0,24(s8)
    233c:	00000000 	sll	zero,zero,0x0
    2340:	00801821 	addu	v1,a0,zero
    2344:	00031080 	sll	v0,v1,0x2
    2348:	00401821 	addu	v1,v0,zero
    234c:	00031080 	sll	v0,v1,0x2
    2350:	00431023 	subu	v0,v0,v1
    2354:	00441021 	addu	v0,v0,a0
    2358:	000218c0 	sll	v1,v0,0x3
    235c:	00621823 	subu	v1,v1,v0
    2360:	00031040 	sll	v0,v1,0x1
    2364:	00401821 	addu	v1,v0,zero
    2368:	00031023 	negu	v0,v1
    236c:	00a21021 	addu	v0,a1,v0
    2370:	24420080 	addiu	v0,v0,128
    2374:	00021203 	sra	v0,v0,0x8
    2378:	afc20004 	sw	v0,4(s8)
      b = (y * 256 + u * 454 + 128) >> 8;
    237c:	8fc20010 	lw	v0,16(s8)
    2380:	00000000 	sll	zero,zero,0x0
    2384:	00022a00 	sll	a1,v0,0x8
    2388:	8fc40014 	lw	a0,20(s8)
    238c:	00000000 	sll	zero,zero,0x0
    2390:	00801821 	addu	v1,a0,zero
    2394:	000310c0 	sll	v0,v1,0x3
    2398:	00401821 	addu	v1,v0,zero
    239c:	000310c0 	sll	v0,v1,0x3
    23a0:	00431023 	subu	v0,v0,v1
    23a4:	00441021 	addu	v0,v0,a0
    23a8:	00021080 	sll	v0,v0,0x2
    23ac:	00441023 	subu	v0,v0,a0
    23b0:	00021040 	sll	v0,v0,0x1
    23b4:	00a21021 	addu	v0,a1,v0
    23b8:	24420080 	addiu	v0,v0,128
    23bc:	00021203 	sra	v0,v0,0x8
    23c0:	afc20008 	sw	v0,8(s8)

      if (r < 0)
    23c4:	8fc20000 	lw	v0,0(s8)
    23c8:	00000000 	sll	zero,zero,0x0
    23cc:	04410004 	bgez	v0,23e0 <YuvToRgb+0x1c0>
    23d0:	00000000 	sll	zero,zero,0x0
	r = 0;
    23d4:	afc00000 	sw	zero,0(s8)
    23d8:	080008ff 	j	23fc <YuvToRgb+0x1dc>
    23dc:	00000000 	sll	zero,zero,0x0
      else if (r > 255)
    23e0:	8fc20000 	lw	v0,0(s8)
    23e4:	00000000 	sll	zero,zero,0x0
    23e8:	28420100 	slti	v0,v0,256
    23ec:	14400003 	bnez	v0,23fc <YuvToRgb+0x1dc>
    23f0:	00000000 	sll	zero,zero,0x0
	r = 255;
    23f4:	240200ff 	addiu	v0,zero,255
    23f8:	afc20000 	sw	v0,0(s8)

      if (g < 0)
    23fc:	8fc20004 	lw	v0,4(s8)
    2400:	00000000 	sll	zero,zero,0x0
    2404:	04410004 	bgez	v0,2418 <YuvToRgb+0x1f8>
    2408:	00000000 	sll	zero,zero,0x0
	g = 0;
    240c:	afc00004 	sw	zero,4(s8)
    2410:	0800090d 	j	2434 <YuvToRgb+0x214>
    2414:	00000000 	sll	zero,zero,0x0
      else if (g > 255)
    2418:	8fc20004 	lw	v0,4(s8)
    241c:	00000000 	sll	zero,zero,0x0
    2420:	28420100 	slti	v0,v0,256
    2424:	14400003 	bnez	v0,2434 <YuvToRgb+0x214>
    2428:	00000000 	sll	zero,zero,0x0
	g = 255;
    242c:	240200ff 	addiu	v0,zero,255
    2430:	afc20004 	sw	v0,4(s8)

      if (b < 0)
    2434:	8fc20008 	lw	v0,8(s8)
    2438:	00000000 	sll	zero,zero,0x0
    243c:	04410004 	bgez	v0,2450 <YuvToRgb+0x230>
    2440:	00000000 	sll	zero,zero,0x0
	b = 0;
    2444:	afc00008 	sw	zero,8(s8)
    2448:	0800091b 	j	246c <YuvToRgb+0x24c>
    244c:	00000000 	sll	zero,zero,0x0
      else if (b > 255)
    2450:	8fc20008 	lw	v0,8(s8)
    2454:	00000000 	sll	zero,zero,0x0
    2458:	28420100 	slti	v0,v0,256
    245c:	14400003 	bnez	v0,246c <YuvToRgb+0x24c>
    2460:	00000000 	sll	zero,zero,0x0
	b = 255;
    2464:	240200ff 	addiu	v0,zero,255
    2468:	afc20008 	sw	v0,8(s8)

      rgb_buf[p][0][i] = r;
    246c:	3c040000 	lui	a0,0x0
    2470:	8fc20028 	lw	v0,40(s8)
    2474:	00000000 	sll	zero,zero,0x0
    2478:	00021180 	sll	v0,v0,0x6
    247c:	00021880 	sll	v1,v0,0x2
    2480:	00621823 	subu	v1,v1,v0
    2484:	8fc2000c 	lw	v0,12(s8)
    2488:	00000000 	sll	zero,zero,0x0
    248c:	00621021 	addu	v0,v1,v0
    2490:	00021880 	sll	v1,v0,0x2
    2494:	24820000 	addiu	v0,a0,0
    2498:	00621021 	addu	v0,v1,v0
    249c:	8fc30000 	lw	v1,0(s8)
    24a0:	00000000 	sll	zero,zero,0x0
    24a4:	ac430000 	sw	v1,0(v0)
      rgb_buf[p][1][i] = g;
    24a8:	3c040000 	lui	a0,0x0
    24ac:	8fc20028 	lw	v0,40(s8)
    24b0:	00000000 	sll	zero,zero,0x0
    24b4:	00021180 	sll	v0,v0,0x6
    24b8:	00021880 	sll	v1,v0,0x2
    24bc:	00621823 	subu	v1,v1,v0
    24c0:	8fc2000c 	lw	v0,12(s8)
    24c4:	00000000 	sll	zero,zero,0x0
    24c8:	00621021 	addu	v0,v1,v0
    24cc:	24420040 	addiu	v0,v0,64
    24d0:	00021880 	sll	v1,v0,0x2
    24d4:	24820000 	addiu	v0,a0,0
    24d8:	00621021 	addu	v0,v1,v0
    24dc:	8fc30004 	lw	v1,4(s8)
    24e0:	00000000 	sll	zero,zero,0x0
    24e4:	ac430000 	sw	v1,0(v0)
      rgb_buf[p][2][i] = b;
    24e8:	3c040000 	lui	a0,0x0
    24ec:	8fc20028 	lw	v0,40(s8)
    24f0:	00000000 	sll	zero,zero,0x0
    24f4:	00021180 	sll	v0,v0,0x6
    24f8:	00021880 	sll	v1,v0,0x2
    24fc:	00621823 	subu	v1,v1,v0
    2500:	8fc2000c 	lw	v0,12(s8)
    2504:	00000000 	sll	zero,zero,0x0
    2508:	00621021 	addu	v0,v1,v0
    250c:	24420080 	addiu	v0,v0,128
    2510:	00021880 	sll	v1,v0,0x2
    2514:	24820000 	addiu	v0,a0,0
    2518:	00621021 	addu	v0,v1,v0
    251c:	8fc30008 	lw	v1,8(s8)
    2520:	00000000 	sll	zero,zero,0x0
    2524:	ac430000 	sw	v1,0(v0)
{
  int r, g, b;
  int y, u, v;
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    2528:	8fc2000c 	lw	v0,12(s8)
    252c:	00000000 	sll	zero,zero,0x0
    2530:	24420001 	addiu	v0,v0,1
    2534:	afc2000c 	sw	v0,12(s8)
    2538:	8fc2000c 	lw	v0,12(s8)
    253c:	00000000 	sll	zero,zero,0x0
    2540:	28420040 	slti	v0,v0,64
    2544:	1440ff40 	bnez	v0,2248 <YuvToRgb+0x28>
    2548:	00000000 	sll	zero,zero,0x0
      rgb_buf[p][0][i] = r;
      rgb_buf[p][1][i] = g;
      rgb_buf[p][2][i] = b;

    }
}
    254c:	03c0e821 	addu	sp,s8,zero
    2550:	8fbe0024 	lw	s8,36(sp)
    2554:	27bd0028 	addiu	sp,sp,40
    2558:	03e00008 	jr	ra
    255c:	00000000 	sll	zero,zero,0x0

00002560 <decode_block>:
/*
 * Decode one block
 */
void
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
    2560:	27bdfee0 	addiu	sp,sp,-288
    2564:	afbf011c 	sw	ra,284(sp)
    2568:	afbe0118 	sw	s8,280(sp)
    256c:	03a0f021 	addu	s8,sp,zero
    2570:	afc40120 	sw	a0,288(s8)
    2574:	afc50124 	sw	a1,292(s8)
    2578:	afc60128 	sw	a2,296(s8)
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    257c:	8fc40128 	lw	a0,296(s8)
    2580:	8fc50120 	lw	a1,288(s8)
    2584:	0c000000 	jal	0 <read_byte>
    2588:	00000000 	sll	zero,zero,0x0

  IZigzagMatrix (HuffBuff, QuantBuff);
    258c:	27c20014 	addiu	v0,s8,20
    2590:	8fc40128 	lw	a0,296(s8)
    2594:	00402821 	addu	a1,v0,zero
    2598:	0c000000 	jal	0 <read_byte>
    259c:	00000000 	sll	zero,zero,0x0

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    25a0:	3c020000 	lui	v0,0x0
    25a4:	24430000 	addiu	v1,v0,0
    25a8:	8fc40120 	lw	a0,288(s8)
    25ac:	27820000 	addiu	v0,gp,0
    25b0:	00821021 	addu	v0,a0,v0
    25b4:	80420000 	lb	v0,0(v0)
    25b8:	00000000 	sll	zero,zero,0x0
    25bc:	24420001 	addiu	v0,v0,1
    25c0:	00021200 	sll	v0,v0,0x8

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    25c4:	00621021 	addu	v0,v1,v0
    25c8:	afc20010 	sw	v0,16(s8)
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);
    25cc:	8fc20010 	lw	v0,16(s8)
    25d0:	27c30014 	addiu	v1,s8,20
    25d4:	00602021 	addu	a0,v1,zero
    25d8:	00402821 	addu	a1,v0,zero
    25dc:	0c000000 	jal	0 <read_byte>
    25e0:	00000000 	sll	zero,zero,0x0

  ChenIDct (QuantBuff, out_buf);
    25e4:	27c20014 	addiu	v0,s8,20
    25e8:	00402021 	addu	a0,v0,zero
    25ec:	8fc50124 	lw	a1,292(s8)
    25f0:	0c000000 	jal	0 <read_byte>
    25f4:	00000000 	sll	zero,zero,0x0

  PostshiftIDctMatrix (out_buf, IDCT_SHIFT);
    25f8:	8fc40124 	lw	a0,292(s8)
    25fc:	24050080 	addiu	a1,zero,128
    2600:	0c000000 	jal	0 <read_byte>
    2604:	00000000 	sll	zero,zero,0x0

  BoundIDctMatrix (out_buf, IDCT_BOUNT);
    2608:	8fc40124 	lw	a0,292(s8)
    260c:	240500ff 	addiu	a1,zero,255
    2610:	0c000000 	jal	0 <read_byte>
    2614:	00000000 	sll	zero,zero,0x0

}
    2618:	03c0e821 	addu	sp,s8,zero
    261c:	8fbf011c 	lw	ra,284(sp)
    2620:	8fbe0118 	lw	s8,280(sp)
    2624:	27bd0120 	addiu	sp,sp,288
    2628:	03e00008 	jr	ra
    262c:	00000000 	sll	zero,zero,0x0

00002630 <decode_start>:


void
decode_start (int *out_data_image_width, int *out_data_image_height,
	      int *out_data_comp_vpos, int *out_data_comp_hpos)
{
    2630:	27bdf6d0 	addiu	sp,sp,-2352
    2634:	afbf092c 	sw	ra,2348(sp)
    2638:	afbe0928 	sw	s8,2344(sp)
    263c:	03a0f021 	addu	s8,sp,zero
    2640:	afc40930 	sw	a0,2352(s8)
    2644:	afc50934 	sw	a1,2356(s8)
    2648:	afc60938 	sw	a2,2360(s8)
    264c:	afc7093c 	sw	a3,2364(s8)
  int i;
  int CurrentMCU = 0;
    2650:	afc00024 	sw	zero,36(s8)
  int HuffBuff[NUM_COMPONENT][DCTSIZE2];
  int IDCTBuff[6][DCTSIZE2];

  /* Read buffer */
  CurHuffReadBuf = p_jinfo_jpeg_data;
    2654:	8f820000 	lw	v0,0(gp)
    2658:	00000000 	sll	zero,zero,0x0
    265c:	af820000 	sw	v0,0(gp)

  /*
   * Initial value of DC element is 0
   */
  for (i = 0; i < NUM_COMPONENT; i++)
    2660:	afc00020 	sw	zero,32(s8)
    2664:	080009a5 	j	2694 <decode_start+0x64>
    2668:	00000000 	sll	zero,zero,0x0
    {
      HuffBuff[i][0] = 0;
    266c:	8fc20020 	lw	v0,32(s8)
    2670:	00000000 	sll	zero,zero,0x0
    2674:	00021200 	sll	v0,v0,0x8
    2678:	27c30020 	addiu	v1,s8,32
    267c:	00621021 	addu	v0,v1,v0
    2680:	ac400008 	sw	zero,8(v0)
  CurHuffReadBuf = p_jinfo_jpeg_data;

  /*
   * Initial value of DC element is 0
   */
  for (i = 0; i < NUM_COMPONENT; i++)
    2684:	8fc20020 	lw	v0,32(s8)
    2688:	00000000 	sll	zero,zero,0x0
    268c:	24420001 	addiu	v0,v0,1
    2690:	afc20020 	sw	v0,32(s8)
    2694:	8fc20020 	lw	v0,32(s8)
    2698:	00000000 	sll	zero,zero,0x0
    269c:	28420003 	slti	v0,v0,3
    26a0:	1440fff2 	bnez	v0,266c <decode_start+0x3c>
    26a4:	00000000 	sll	zero,zero,0x0
    }

  /*
   * Set the size of image to output buffer
   */
  *out_data_image_width = p_jinfo_image_width;
    26a8:	87820000 	lh	v0,0(gp)
    26ac:	00000000 	sll	zero,zero,0x0
    26b0:	00401821 	addu	v1,v0,zero
    26b4:	8fc20930 	lw	v0,2352(s8)
    26b8:	00000000 	sll	zero,zero,0x0
    26bc:	ac430000 	sw	v1,0(v0)
  *out_data_image_height = p_jinfo_image_height;
    26c0:	87820000 	lh	v0,0(gp)
    26c4:	00000000 	sll	zero,zero,0x0
    26c8:	00401821 	addu	v1,v0,zero
    26cc:	8fc20934 	lw	v0,2356(s8)
    26d0:	00000000 	sll	zero,zero,0x0
    26d4:	ac430000 	sw	v1,0(v0)

  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    26d8:	afc00020 	sw	zero,32(s8)
    26dc:	080009cb 	j	272c <decode_start+0xfc>
    26e0:	00000000 	sll	zero,zero,0x0
    {
      out_data_comp_vpos[i] = 0;
    26e4:	8fc20020 	lw	v0,32(s8)
    26e8:	00000000 	sll	zero,zero,0x0
    26ec:	00021080 	sll	v0,v0,0x2
    26f0:	8fc30938 	lw	v1,2360(s8)
    26f4:	00000000 	sll	zero,zero,0x0
    26f8:	00621021 	addu	v0,v1,v0
    26fc:	ac400000 	sw	zero,0(v0)
      out_data_comp_hpos[i] = 0;
    2700:	8fc20020 	lw	v0,32(s8)
    2704:	00000000 	sll	zero,zero,0x0
    2708:	00021080 	sll	v0,v0,0x2
    270c:	8fc3093c 	lw	v1,2364(s8)
    2710:	00000000 	sll	zero,zero,0x0
    2714:	00621021 	addu	v0,v1,v0
    2718:	ac400000 	sw	zero,0(v0)
  *out_data_image_height = p_jinfo_image_height;

  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    271c:	8fc20020 	lw	v0,32(s8)
    2720:	00000000 	sll	zero,zero,0x0
    2724:	24420001 	addiu	v0,v0,1
    2728:	afc20020 	sw	v0,32(s8)
    272c:	8fc20020 	lw	v0,32(s8)
    2730:	00000000 	sll	zero,zero,0x0
    2734:	28420003 	slti	v0,v0,3
    2738:	1440ffea 	bnez	v0,26e4 <decode_start+0xb4>
    273c:	00000000 	sll	zero,zero,0x0
      out_data_comp_vpos[i] = 0;
      out_data_comp_hpos[i] = 0;
    }


  if (p_jinfo_smp_fact == SF1_1_1)
    2740:	8f820000 	lw	v0,0(gp)
    2744:	00000000 	sll	zero,zero,0x0
    2748:	1440006c 	bnez	v0,28fc <decode_start+0x2cc>
    274c:	00000000 	sll	zero,zero,0x0
    {
      printf ("Decode 1:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
    2750:	8f820000 	lw	v0,0(gp)
    2754:	3c030000 	lui	v1,0x0
    2758:	246457b8 	addiu	a0,v1,22456
    275c:	00402821 	addu	a1,v0,zero
    2760:	0c000000 	jal	0 <read_byte>
    2764:	00000000 	sll	zero,zero,0x0

      /*
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    2768:	08000a37 	j	28dc <decode_start+0x2ac>
    276c:	00000000 	sll	zero,zero,0x0
	{

	  for (i = 0; i < NUM_COMPONENT; i++)
    2770:	afc00020 	sw	zero,32(s8)
    2774:	080009f2 	j	27c8 <decode_start+0x198>
    2778:	00000000 	sll	zero,zero,0x0
	    {
	      decode_block (i, IDCTBuff[i], HuffBuff[i]);
    277c:	27c30328 	addiu	v1,s8,808
    2780:	8fc20020 	lw	v0,32(s8)
    2784:	00000000 	sll	zero,zero,0x0
    2788:	00021200 	sll	v0,v0,0x8
    278c:	00621821 	addu	v1,v1,v0
    2790:	27c40028 	addiu	a0,s8,40
    2794:	8fc20020 	lw	v0,32(s8)
    2798:	00000000 	sll	zero,zero,0x0
    279c:	00021200 	sll	v0,v0,0x8
    27a0:	00821021 	addu	v0,a0,v0
    27a4:	8fc40020 	lw	a0,32(s8)
    27a8:	00602821 	addu	a1,v1,zero
    27ac:	00403021 	addu	a2,v0,zero
    27b0:	0c000000 	jal	0 <read_byte>
    27b4:	00000000 	sll	zero,zero,0x0
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
	{

	  for (i = 0; i < NUM_COMPONENT; i++)
    27b8:	8fc20020 	lw	v0,32(s8)
    27bc:	00000000 	sll	zero,zero,0x0
    27c0:	24420001 	addiu	v0,v0,1
    27c4:	afc20020 	sw	v0,32(s8)
    27c8:	8fc20020 	lw	v0,32(s8)
    27cc:	00000000 	sll	zero,zero,0x0
    27d0:	28420003 	slti	v0,v0,3
    27d4:	1440ffe9 	bnez	v0,277c <decode_start+0x14c>
    27d8:	00000000 	sll	zero,zero,0x0
	    {
	      decode_block (i, IDCTBuff[i], HuffBuff[i]);
	    }


	  YuvToRgb (0, IDCTBuff[0], IDCTBuff[1], IDCTBuff[2]);
    27dc:	27c50328 	addiu	a1,s8,808
    27e0:	27c20328 	addiu	v0,s8,808
    27e4:	24430100 	addiu	v1,v0,256
    27e8:	27c20328 	addiu	v0,s8,808
    27ec:	24420200 	addiu	v0,v0,512
    27f0:	00002021 	addu	a0,zero,zero
    27f4:	00603021 	addu	a2,v1,zero
    27f8:	00403821 	addu	a3,v0,zero
    27fc:	0c000000 	jal	0 <read_byte>
    2800:	00000000 	sll	zero,zero,0x0
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
    2804:	afc00020 	sw	zero,32(s8)
    2808:	08000a2e 	j	28b8 <decode_start+0x288>
    280c:	00000000 	sll	zero,zero,0x0
	    {
	      WriteBlock (&rgb_buf[0][i][0],
    2810:	3c020000 	lui	v0,0x0
    2814:	24430000 	addiu	v1,v0,0
    2818:	8fc20020 	lw	v0,32(s8)
    281c:	00000000 	sll	zero,zero,0x0
    2820:	00021200 	sll	v0,v0,0x8
    2824:	00623821 	addu	a3,v1,v0
    2828:	8fc20020 	lw	v0,32(s8)
    282c:	00000000 	sll	zero,zero,0x0
			  &out_data_comp_vpos[i],
    2830:	00021080 	sll	v0,v0,0x2
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
	    {
	      WriteBlock (&rgb_buf[0][i][0],
    2834:	8fc30938 	lw	v1,2360(s8)
    2838:	00000000 	sll	zero,zero,0x0
    283c:	00622821 	addu	a1,v1,v0
    2840:	8fc20020 	lw	v0,32(s8)
    2844:	00000000 	sll	zero,zero,0x0
			  &out_data_comp_vpos[i],
			  &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
    2848:	00021080 	sll	v0,v0,0x2
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
	    {
	      WriteBlock (&rgb_buf[0][i][0],
    284c:	8fc3093c 	lw	v1,2364(s8)
    2850:	00000000 	sll	zero,zero,0x0
    2854:	00623021 	addu	a2,v1,v0
			  &out_data_comp_vpos[i],
			  &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
    2858:	3c020000 	lui	v0,0x0
    285c:	24480000 	addiu	t0,v0,0
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
	    {
	      WriteBlock (&rgb_buf[0][i][0],
    2860:	8fc40020 	lw	a0,32(s8)
    2864:	00000000 	sll	zero,zero,0x0
			  &out_data_comp_vpos[i],
			  &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
    2868:	00801821 	addu	v1,a0,zero
    286c:	00031080 	sll	v0,v1,0x2
    2870:	00401821 	addu	v1,v0,zero
    2874:	00031100 	sll	v0,v1,0x4
    2878:	00431023 	subu	v0,v0,v1
    287c:	00441023 	subu	v0,v0,a0
    2880:	00021880 	sll	v1,v0,0x2
    2884:	00621823 	subu	v1,v1,v0
    2888:	00031100 	sll	v0,v1,0x4
    288c:	00431023 	subu	v0,v0,v1
    2890:	00021040 	sll	v0,v0,0x1
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
	    {
	      WriteBlock (&rgb_buf[0][i][0],
    2894:	01021021 	addu	v0,t0,v0
    2898:	00e02021 	addu	a0,a3,zero
    289c:	00403821 	addu	a3,v0,zero
    28a0:	0c000000 	jal	0 <read_byte>
    28a4:	00000000 	sll	zero,zero,0x0

	  YuvToRgb (0, IDCTBuff[0], IDCTBuff[1], IDCTBuff[2]);
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
    28a8:	8fc20020 	lw	v0,32(s8)
    28ac:	00000000 	sll	zero,zero,0x0
    28b0:	24420001 	addiu	v0,v0,1
    28b4:	afc20020 	sw	v0,32(s8)
    28b8:	8fc20020 	lw	v0,32(s8)
    28bc:	00000000 	sll	zero,zero,0x0
    28c0:	28420003 	slti	v0,v0,3
    28c4:	1440ffd2 	bnez	v0,2810 <decode_start+0x1e0>
    28c8:	00000000 	sll	zero,zero,0x0
	    {
	      WriteBlock (&rgb_buf[0][i][0],
			  &out_data_comp_vpos[i],
			  &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
	    }
	  CurrentMCU++;
    28cc:	8fc20024 	lw	v0,36(s8)
    28d0:	00000000 	sll	zero,zero,0x0
    28d4:	24420001 	addiu	v0,v0,1
    28d8:	afc20024 	sw	v0,36(s8)
      printf ("Decode 1:1:1 NumMCU = %d\n", p_jinfo_NumMCU);

      /*
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    28dc:	8f820000 	lw	v0,0(gp)
    28e0:	8fc30024 	lw	v1,36(s8)
    28e4:	00000000 	sll	zero,zero,0x0
    28e8:	0062102a 	slt	v0,v1,v0
    28ec:	1440ffa0 	bnez	v0,2770 <decode_start+0x140>
    28f0:	00000000 	sll	zero,zero,0x0
    28f4:	08000add 	j	2b74 <decode_start+0x544>
    28f8:	00000000 	sll	zero,zero,0x0
	}

    }
  else
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
    28fc:	8f820000 	lw	v0,0(gp)
    2900:	3c030000 	lui	v1,0x0
    2904:	246457d4 	addiu	a0,v1,22484
    2908:	00402821 	addu	a1,v0,zero
    290c:	0c000000 	jal	0 <read_byte>
    2910:	00000000 	sll	zero,zero,0x0
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    2914:	08000ad7 	j	2b5c <decode_start+0x52c>
    2918:	00000000 	sll	zero,zero,0x0
	  /*
	   * Decode Y element
	   * Decoding Y, U and V elements should be sequentially conducted for the use of Huffman table
	   */

	  for (i = 0; i < 4; i++)
    291c:	afc00020 	sw	zero,32(s8)
    2920:	08000a59 	j	2964 <decode_start+0x334>
    2924:	00000000 	sll	zero,zero,0x0
	    {
	      decode_block (0, IDCTBuff[i], HuffBuff[0]);
    2928:	27c30328 	addiu	v1,s8,808
    292c:	8fc20020 	lw	v0,32(s8)
    2930:	00000000 	sll	zero,zero,0x0
    2934:	00021200 	sll	v0,v0,0x8
    2938:	00621821 	addu	v1,v1,v0
    293c:	27c20028 	addiu	v0,s8,40
    2940:	00002021 	addu	a0,zero,zero
    2944:	00602821 	addu	a1,v1,zero
    2948:	00403021 	addu	a2,v0,zero
    294c:	0c000000 	jal	0 <read_byte>
    2950:	00000000 	sll	zero,zero,0x0
	  /*
	   * Decode Y element
	   * Decoding Y, U and V elements should be sequentially conducted for the use of Huffman table
	   */

	  for (i = 0; i < 4; i++)
    2954:	8fc20020 	lw	v0,32(s8)
    2958:	00000000 	sll	zero,zero,0x0
    295c:	24420001 	addiu	v0,v0,1
    2960:	afc20020 	sw	v0,32(s8)
    2964:	8fc20020 	lw	v0,32(s8)
    2968:	00000000 	sll	zero,zero,0x0
    296c:	28420004 	slti	v0,v0,4
    2970:	1440ffed 	bnez	v0,2928 <decode_start+0x2f8>
    2974:	00000000 	sll	zero,zero,0x0
	    {
	      decode_block (0, IDCTBuff[i], HuffBuff[0]);
	    }

	  /* Decode U */
	  decode_block (1, IDCTBuff[4], HuffBuff[1]);
    2978:	27c20328 	addiu	v0,s8,808
    297c:	24430400 	addiu	v1,v0,1024
    2980:	27c20028 	addiu	v0,s8,40
    2984:	24420100 	addiu	v0,v0,256
    2988:	24040001 	addiu	a0,zero,1
    298c:	00602821 	addu	a1,v1,zero
    2990:	00403021 	addu	a2,v0,zero
    2994:	0c000000 	jal	0 <read_byte>
    2998:	00000000 	sll	zero,zero,0x0

	  /* Decode V */
	  decode_block (2, IDCTBuff[5], HuffBuff[2]);
    299c:	27c20328 	addiu	v0,s8,808
    29a0:	24430500 	addiu	v1,v0,1280
    29a4:	27c20028 	addiu	v0,s8,40
    29a8:	24420200 	addiu	v0,v0,512
    29ac:	24040002 	addiu	a0,zero,2
    29b0:	00602821 	addu	a1,v1,zero
    29b4:	00403021 	addu	a2,v0,zero
    29b8:	0c000000 	jal	0 <read_byte>
    29bc:	00000000 	sll	zero,zero,0x0


	  /* Transform from Yuv into RGB */

	  for (i = 0; i < 4; i++)
    29c0:	afc00020 	sw	zero,32(s8)
    29c4:	08000a85 	j	2a14 <decode_start+0x3e4>
    29c8:	00000000 	sll	zero,zero,0x0
	    {
	      YuvToRgb (i, IDCTBuff[i], IDCTBuff[4], IDCTBuff[5]);
    29cc:	27c30328 	addiu	v1,s8,808
    29d0:	8fc20020 	lw	v0,32(s8)
    29d4:	00000000 	sll	zero,zero,0x0
    29d8:	00021200 	sll	v0,v0,0x8
    29dc:	00622821 	addu	a1,v1,v0
    29e0:	27c20328 	addiu	v0,s8,808
    29e4:	24430400 	addiu	v1,v0,1024
    29e8:	27c20328 	addiu	v0,s8,808
    29ec:	24420500 	addiu	v0,v0,1280
    29f0:	8fc40020 	lw	a0,32(s8)
    29f4:	00603021 	addu	a2,v1,zero
    29f8:	00403821 	addu	a3,v0,zero
    29fc:	0c000000 	jal	0 <read_byte>
    2a00:	00000000 	sll	zero,zero,0x0
	  decode_block (2, IDCTBuff[5], HuffBuff[2]);


	  /* Transform from Yuv into RGB */

	  for (i = 0; i < 4; i++)
    2a04:	8fc20020 	lw	v0,32(s8)
    2a08:	00000000 	sll	zero,zero,0x0
    2a0c:	24420001 	addiu	v0,v0,1
    2a10:	afc20020 	sw	v0,32(s8)
    2a14:	8fc20020 	lw	v0,32(s8)
    2a18:	00000000 	sll	zero,zero,0x0
    2a1c:	28420004 	slti	v0,v0,4
    2a20:	1440ffea 	bnez	v0,29cc <decode_start+0x39c>
    2a24:	00000000 	sll	zero,zero,0x0
	    {
	      YuvToRgb (i, IDCTBuff[i], IDCTBuff[4], IDCTBuff[5]);
	    }


	  for (i = 0; i < RGB_NUM; i++)
    2a28:	afc00020 	sw	zero,32(s8)
    2a2c:	08000ace 	j	2b38 <decode_start+0x508>
    2a30:	00000000 	sll	zero,zero,0x0
	    {
	      Write4Blocks (&rgb_buf[0][i][0],
    2a34:	3c020000 	lui	v0,0x0
    2a38:	24430000 	addiu	v1,v0,0
    2a3c:	8fc20020 	lw	v0,32(s8)
    2a40:	00000000 	sll	zero,zero,0x0
    2a44:	00021200 	sll	v0,v0,0x8
    2a48:	00624021 	addu	t0,v1,v0
			    &rgb_buf[1][i][0],
    2a4c:	3c020000 	lui	v0,0x0
    2a50:	24430000 	addiu	v1,v0,0
    2a54:	8fc20020 	lw	v0,32(s8)
    2a58:	00000000 	sll	zero,zero,0x0
	    }


	  for (i = 0; i < RGB_NUM; i++)
	    {
	      Write4Blocks (&rgb_buf[0][i][0],
    2a5c:	24420003 	addiu	v0,v0,3
    2a60:	00021200 	sll	v0,v0,0x8
    2a64:	00622821 	addu	a1,v1,v0
			    &rgb_buf[1][i][0],
			    &rgb_buf[2][i][0],
    2a68:	3c020000 	lui	v0,0x0
    2a6c:	24430000 	addiu	v1,v0,0
    2a70:	8fc20020 	lw	v0,32(s8)
    2a74:	00000000 	sll	zero,zero,0x0
	    }


	  for (i = 0; i < RGB_NUM; i++)
	    {
	      Write4Blocks (&rgb_buf[0][i][0],
    2a78:	24420006 	addiu	v0,v0,6
    2a7c:	00021200 	sll	v0,v0,0x8
    2a80:	00623021 	addu	a2,v1,v0
			    &rgb_buf[1][i][0],
			    &rgb_buf[2][i][0],
			    &rgb_buf[3][i][0],
    2a84:	3c020000 	lui	v0,0x0
    2a88:	24430000 	addiu	v1,v0,0
    2a8c:	8fc20020 	lw	v0,32(s8)
    2a90:	00000000 	sll	zero,zero,0x0
	    }


	  for (i = 0; i < RGB_NUM; i++)
	    {
	      Write4Blocks (&rgb_buf[0][i][0],
    2a94:	24420009 	addiu	v0,v0,9
    2a98:	00021200 	sll	v0,v0,0x8
    2a9c:	00623821 	addu	a3,v1,v0
    2aa0:	8fc20020 	lw	v0,32(s8)
    2aa4:	00000000 	sll	zero,zero,0x0
			    &rgb_buf[1][i][0],
			    &rgb_buf[2][i][0],
			    &rgb_buf[3][i][0],
			    &out_data_comp_vpos[i],
    2aa8:	00021080 	sll	v0,v0,0x2
	    }


	  for (i = 0; i < RGB_NUM; i++)
	    {
	      Write4Blocks (&rgb_buf[0][i][0],
    2aac:	8fc30938 	lw	v1,2360(s8)
    2ab0:	00000000 	sll	zero,zero,0x0
    2ab4:	00625021 	addu	t2,v1,v0
    2ab8:	8fc20020 	lw	v0,32(s8)
    2abc:	00000000 	sll	zero,zero,0x0
			    &rgb_buf[1][i][0],
			    &rgb_buf[2][i][0],
			    &rgb_buf[3][i][0],
			    &out_data_comp_vpos[i],
			    &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
    2ac0:	00021080 	sll	v0,v0,0x2
	    }


	  for (i = 0; i < RGB_NUM; i++)
	    {
	      Write4Blocks (&rgb_buf[0][i][0],
    2ac4:	8fc3093c 	lw	v1,2364(s8)
    2ac8:	00000000 	sll	zero,zero,0x0
    2acc:	00624821 	addu	t1,v1,v0
			    &rgb_buf[1][i][0],
			    &rgb_buf[2][i][0],
			    &rgb_buf[3][i][0],
			    &out_data_comp_vpos[i],
			    &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
    2ad0:	3c020000 	lui	v0,0x0
    2ad4:	244b0000 	addiu	t3,v0,0
	    }


	  for (i = 0; i < RGB_NUM; i++)
	    {
	      Write4Blocks (&rgb_buf[0][i][0],
    2ad8:	8fc40020 	lw	a0,32(s8)
    2adc:	00000000 	sll	zero,zero,0x0
			    &rgb_buf[1][i][0],
			    &rgb_buf[2][i][0],
			    &rgb_buf[3][i][0],
			    &out_data_comp_vpos[i],
			    &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
    2ae0:	00801821 	addu	v1,a0,zero
    2ae4:	00031080 	sll	v0,v1,0x2
    2ae8:	00401821 	addu	v1,v0,zero
    2aec:	00031100 	sll	v0,v1,0x4
    2af0:	00431023 	subu	v0,v0,v1
    2af4:	00441023 	subu	v0,v0,a0
    2af8:	00021880 	sll	v1,v0,0x2
    2afc:	00621823 	subu	v1,v1,v0
    2b00:	00031100 	sll	v0,v1,0x4
    2b04:	00431023 	subu	v0,v0,v1
    2b08:	00021040 	sll	v0,v0,0x1
	    }


	  for (i = 0; i < RGB_NUM; i++)
	    {
	      Write4Blocks (&rgb_buf[0][i][0],
    2b0c:	01621021 	addu	v0,t3,v0
    2b10:	afaa0010 	sw	t2,16(sp)
    2b14:	afa90014 	sw	t1,20(sp)
    2b18:	afa20018 	sw	v0,24(sp)
    2b1c:	01002021 	addu	a0,t0,zero
    2b20:	0c000000 	jal	0 <read_byte>
    2b24:	00000000 	sll	zero,zero,0x0
	    {
	      YuvToRgb (i, IDCTBuff[i], IDCTBuff[4], IDCTBuff[5]);
	    }


	  for (i = 0; i < RGB_NUM; i++)
    2b28:	8fc20020 	lw	v0,32(s8)
    2b2c:	00000000 	sll	zero,zero,0x0
    2b30:	24420001 	addiu	v0,v0,1
    2b34:	afc20020 	sw	v0,32(s8)
    2b38:	8fc20020 	lw	v0,32(s8)
    2b3c:	00000000 	sll	zero,zero,0x0
    2b40:	28420003 	slti	v0,v0,3
    2b44:	1440ffbb 	bnez	v0,2a34 <decode_start+0x404>
    2b48:	00000000 	sll	zero,zero,0x0
			    &out_data_comp_vpos[i],
			    &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
	    }


	  CurrentMCU += 4;
    2b4c:	8fc20024 	lw	v0,36(s8)
    2b50:	00000000 	sll	zero,zero,0x0
    2b54:	24420004 	addiu	v0,v0,4
    2b58:	afc20024 	sw	v0,36(s8)
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    2b5c:	8f820000 	lw	v0,0(gp)
    2b60:	8fc30024 	lw	v1,36(s8)
    2b64:	00000000 	sll	zero,zero,0x0
    2b68:	0062102a 	slt	v0,v1,v0
    2b6c:	1440ff6b 	bnez	v0,291c <decode_start+0x2ec>
    2b70:	00000000 	sll	zero,zero,0x0


	  CurrentMCU += 4;
	}
    }
}
    2b74:	03c0e821 	addu	sp,s8,zero
    2b78:	8fbf092c 	lw	ra,2348(sp)
    2b7c:	8fbe0928 	lw	s8,2344(sp)
    2b80:	27bd0930 	addiu	sp,sp,2352
    2b84:	03e00008 	jr	ra
    2b88:	00000000 	sll	zero,zero,0x0

00002b8c <pgetc>:
 * pgetc() gets a character onto the stream but it checks to see
 * if there are any marker conflicts.
 */
static int
pgetc ()
{
    2b8c:	27bdffe0 	addiu	sp,sp,-32
    2b90:	afbf001c 	sw	ra,28(sp)
    2b94:	afbe0018 	sw	s8,24(sp)
    2b98:	03a0f021 	addu	s8,sp,zero
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    2b9c:	8f820000 	lw	v0,0(gp)
    2ba0:	00000000 	sll	zero,zero,0x0
    2ba4:	90430000 	lbu	v1,0(v0)
    2ba8:	00000000 	sll	zero,zero,0x0
    2bac:	afc30010 	sw	v1,16(s8)
    2bb0:	8fc30010 	lw	v1,16(s8)
    2bb4:	00000000 	sll	zero,zero,0x0
    2bb8:	386300ff 	xori	v1,v1,0xff
    2bbc:	2c630001 	sltiu	v1,v1,1
    2bc0:	306300ff 	andi	v1,v1,0xff
    2bc4:	24420001 	addiu	v0,v0,1
    2bc8:	af820000 	sw	v0,0(gp)
    2bcc:	10600017 	beqz	v1,2c2c <pgetc+0xa0>
    2bd0:	00000000 	sll	zero,zero,0x0
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
    2bd4:	8f820000 	lw	v0,0(gp)
    2bd8:	00000000 	sll	zero,zero,0x0
    2bdc:	90430000 	lbu	v1,0(v0)
    2be0:	00000000 	sll	zero,zero,0x0
    2be4:	afc30010 	sw	v1,16(s8)
    2be8:	8fc30010 	lw	v1,16(s8)
    2bec:	00000000 	sll	zero,zero,0x0
    2bf0:	0003182b 	sltu	v1,zero,v1
    2bf4:	306300ff 	andi	v1,v1,0xff
    2bf8:	24420001 	addiu	v0,v0,1
    2bfc:	af820000 	sw	v0,0(gp)
    2c00:	10600007 	beqz	v1,2c20 <pgetc+0x94>
    2c04:	00000000 	sll	zero,zero,0x0
	{			/* if next is not 0xff, then marker */
	  printf ("Unanticipated marker detected.\n");
    2c08:	3c020000 	lui	v0,0x0
    2c0c:	24445940 	addiu	a0,v0,22848
    2c10:	0c000000 	jal	0 <read_byte>
    2c14:	00000000 	sll	zero,zero,0x0
    2c18:	08000b0b 	j	2c2c <pgetc+0xa0>
    2c1c:	00000000 	sll	zero,zero,0x0
	}
      else
	{
	  return (MARKER_MARKER);
    2c20:	240200ff 	addiu	v0,zero,255
    2c24:	08000b0c 	j	2c30 <pgetc+0xa4>
    2c28:	00000000 	sll	zero,zero,0x0
	}
    }
  return (temp);
    2c2c:	8fc20010 	lw	v0,16(s8)
}
    2c30:	03c0e821 	addu	sp,s8,zero
    2c34:	8fbf001c 	lw	ra,28(sp)
    2c38:	8fbe0018 	lw	s8,24(sp)
    2c3c:	27bd0020 	addiu	sp,sp,32
    2c40:	03e00008 	jr	ra
    2c44:	00000000 	sll	zero,zero,0x0

00002c48 <buf_getb>:
/*
 * buf_getb() gets a bit from the read stream.
 */
int
buf_getb ()
{
    2c48:	27bdffe8 	addiu	sp,sp,-24
    2c4c:	afbf0014 	sw	ra,20(sp)
    2c50:	afbe0010 	sw	s8,16(sp)
    2c54:	03a0f021 	addu	s8,sp,zero
  if (read_position < 0)
    2c58:	8f82003c 	lw	v0,60(gp)
    2c5c:	00000000 	sll	zero,zero,0x0
    2c60:	04410006 	bgez	v0,2c7c <buf_getb+0x34>
    2c64:	00000000 	sll	zero,zero,0x0
    {
      current_read_byte = pgetc ();
    2c68:	0c000ae3 	jal	2b8c <pgetc>
    2c6c:	00000000 	sll	zero,zero,0x0
    2c70:	af820014 	sw	v0,20(gp)
      read_position = 7;
    2c74:	24020007 	addiu	v0,zero,7
    2c78:	af82003c 	sw	v0,60(gp)
    }

  if (current_read_byte & bit_set_mask[read_position--])
    2c7c:	8f82003c 	lw	v0,60(gp)
    2c80:	3c030000 	lui	v1,0x0
    2c84:	00022080 	sll	a0,v0,0x2
    2c88:	24630000 	addiu	v1,v1,0
    2c8c:	00831821 	addu	v1,a0,v1
    2c90:	8c630000 	lw	v1,0(v1)
    2c94:	00000000 	sll	zero,zero,0x0
    2c98:	00602021 	addu	a0,v1,zero
    2c9c:	8f830014 	lw	v1,20(gp)
    2ca0:	00000000 	sll	zero,zero,0x0
    2ca4:	00831824 	and	v1,a0,v1
    2ca8:	0003182b 	sltu	v1,zero,v1
    2cac:	306300ff 	andi	v1,v1,0xff
    2cb0:	2442ffff 	addiu	v0,v0,-1
    2cb4:	af82003c 	sw	v0,60(gp)
    2cb8:	10600004 	beqz	v1,2ccc <buf_getb+0x84>
    2cbc:	00000000 	sll	zero,zero,0x0
    {
      return (1);
    2cc0:	24020001 	addiu	v0,zero,1
    2cc4:	08000b34 	j	2cd0 <buf_getb+0x88>
    2cc8:	00000000 	sll	zero,zero,0x0
    }
  return (0);
    2ccc:	00001021 	addu	v0,zero,zero
}
    2cd0:	03c0e821 	addu	sp,s8,zero
    2cd4:	8fbf0014 	lw	ra,20(sp)
    2cd8:	8fbe0010 	lw	s8,16(sp)
    2cdc:	27bd0018 	addiu	sp,sp,24
    2ce0:	03e00008 	jr	ra
    2ce4:	00000000 	sll	zero,zero,0x0

00002ce8 <buf_getv>:
 * megetv() gets n bits from the read stream and returns it.
 *
 */
int
buf_getv (int n)
{
    2ce8:	27bdffd8 	addiu	sp,sp,-40
    2cec:	afbf0024 	sw	ra,36(sp)
    2cf0:	afbe0020 	sw	s8,32(sp)
    2cf4:	afb0001c 	sw	s0,28(sp)
    2cf8:	03a0f021 	addu	s8,sp,zero
    2cfc:	afc40028 	sw	a0,40(s8)
  int p, rv;

  n--;
    2d00:	8fc20028 	lw	v0,40(s8)
    2d04:	00000000 	sll	zero,zero,0x0
    2d08:	2442ffff 	addiu	v0,v0,-1
    2d0c:	afc20028 	sw	v0,40(s8)
  p = n - read_position;
    2d10:	8f82003c 	lw	v0,60(gp)
    2d14:	8fc30028 	lw	v1,40(s8)
    2d18:	00000000 	sll	zero,zero,0x0
    2d1c:	00621023 	subu	v0,v1,v0
    2d20:	afc20010 	sw	v0,16(s8)
  while (p > 0)
    2d24:	08000b82 	j	2e08 <buf_getv+0x120>
    2d28:	00000000 	sll	zero,zero,0x0
    {
      if (read_position > 23)
    2d2c:	8f82003c 	lw	v0,60(gp)
    2d30:	00000000 	sll	zero,zero,0x0
    2d34:	28420018 	slti	v0,v0,24
    2d38:	14400024 	bnez	v0,2dcc <buf_getv+0xe4>
    2d3c:	00000000 	sll	zero,zero,0x0
	{			/* If byte buffer contains almost entire word */
	  rv = (current_read_byte << p);	/* Manipulate buffer */
    2d40:	8f830014 	lw	v1,20(gp)
    2d44:	8fc20010 	lw	v0,16(s8)
    2d48:	00000000 	sll	zero,zero,0x0
    2d4c:	00431004 	sllv	v0,v1,v0
    2d50:	afc20014 	sw	v0,20(s8)
	  current_read_byte = pgetc ();	/* Change read bytes */
    2d54:	0c000ae3 	jal	2b8c <pgetc>
    2d58:	00000000 	sll	zero,zero,0x0
    2d5c:	af820014 	sw	v0,20(gp)

	  rv |= (current_read_byte >> (8 - p));
    2d60:	8f830014 	lw	v1,20(gp)
    2d64:	24040008 	addiu	a0,zero,8
    2d68:	8fc20010 	lw	v0,16(s8)
    2d6c:	00000000 	sll	zero,zero,0x0
    2d70:	00821023 	subu	v0,a0,v0
    2d74:	00431806 	srlv	v1,v1,v0
    2d78:	8fc20014 	lw	v0,20(s8)
    2d7c:	00000000 	sll	zero,zero,0x0
    2d80:	00621025 	or	v0,v1,v0
    2d84:	afc20014 	sw	v0,20(s8)
	  read_position = 7 - p;
    2d88:	24030007 	addiu	v1,zero,7
    2d8c:	8fc20010 	lw	v0,16(s8)
    2d90:	00000000 	sll	zero,zero,0x0
    2d94:	00621023 	subu	v0,v1,v0
    2d98:	af82003c 	sw	v0,60(gp)
	  return (rv & lmask[n]);
    2d9c:	3c020000 	lui	v0,0x0
    2da0:	8fc30028 	lw	v1,40(s8)
    2da4:	00000000 	sll	zero,zero,0x0
    2da8:	00031880 	sll	v1,v1,0x2
    2dac:	24420000 	addiu	v0,v0,0
    2db0:	00621021 	addu	v0,v1,v0
    2db4:	8c430000 	lw	v1,0(v0)
    2db8:	8fc20014 	lw	v0,20(s8)
    2dbc:	00000000 	sll	zero,zero,0x0
    2dc0:	00621024 	and	v0,v1,v0
    2dc4:	08000baf 	j	2ebc <buf_getv+0x1d4>
    2dc8:	00000000 	sll	zero,zero,0x0
	  /* Can return pending residual val */
	}
      current_read_byte = (current_read_byte << 8) | pgetc ();
    2dcc:	8f820014 	lw	v0,20(gp)
    2dd0:	00000000 	sll	zero,zero,0x0
    2dd4:	00028200 	sll	s0,v0,0x8
    2dd8:	0c000ae3 	jal	2b8c <pgetc>
    2ddc:	00000000 	sll	zero,zero,0x0
    2de0:	02021025 	or	v0,s0,v0
    2de4:	af820014 	sw	v0,20(gp)
      read_position += 8;	/* else shift in new information */
    2de8:	8f82003c 	lw	v0,60(gp)
    2dec:	00000000 	sll	zero,zero,0x0
    2df0:	24420008 	addiu	v0,v0,8
    2df4:	af82003c 	sw	v0,60(gp)
      p -= 8;
    2df8:	8fc20010 	lw	v0,16(s8)
    2dfc:	00000000 	sll	zero,zero,0x0
    2e00:	2442fff8 	addiu	v0,v0,-8
    2e04:	afc20010 	sw	v0,16(s8)
{
  int p, rv;

  n--;
  p = n - read_position;
  while (p > 0)
    2e08:	8fc20010 	lw	v0,16(s8)
    2e0c:	00000000 	sll	zero,zero,0x0
    2e10:	1c40ffc6 	bgtz	v0,2d2c <buf_getv+0x44>
    2e14:	00000000 	sll	zero,zero,0x0
      current_read_byte = (current_read_byte << 8) | pgetc ();
      read_position += 8;	/* else shift in new information */
      p -= 8;
    }

  if (!p)
    2e18:	8fc20010 	lw	v0,16(s8)
    2e1c:	00000000 	sll	zero,zero,0x0
    2e20:	14400011 	bnez	v0,2e68 <buf_getv+0x180>
    2e24:	00000000 	sll	zero,zero,0x0
    {				/* If position is zero */
      read_position = -1;
    2e28:	2402ffff 	addiu	v0,zero,-1
    2e2c:	af82003c 	sw	v0,60(gp)
      /* Can return current byte */
      return (current_read_byte & lmask[n]);
    2e30:	3c020000 	lui	v0,0x0
    2e34:	8fc30028 	lw	v1,40(s8)
    2e38:	00000000 	sll	zero,zero,0x0
    2e3c:	00031880 	sll	v1,v1,0x2
    2e40:	24420000 	addiu	v0,v0,0
    2e44:	00621021 	addu	v0,v1,v0
    2e48:	8c420000 	lw	v0,0(v0)
    2e4c:	00000000 	sll	zero,zero,0x0
    2e50:	00401821 	addu	v1,v0,zero
    2e54:	8f820014 	lw	v0,20(gp)
    2e58:	00000000 	sll	zero,zero,0x0
    2e5c:	00621024 	and	v0,v1,v0
    2e60:	08000baf 	j	2ebc <buf_getv+0x1d4>
    2e64:	00000000 	sll	zero,zero,0x0
    }

  p = -p;
    2e68:	8fc20010 	lw	v0,16(s8)
    2e6c:	00000000 	sll	zero,zero,0x0
    2e70:	00021023 	negu	v0,v0
    2e74:	afc20010 	sw	v0,16(s8)
  /* Else reverse position and shift */
  read_position = p - 1;
    2e78:	8fc20010 	lw	v0,16(s8)
    2e7c:	00000000 	sll	zero,zero,0x0
    2e80:	2442ffff 	addiu	v0,v0,-1
    2e84:	af82003c 	sw	v0,60(gp)
  return ((current_read_byte >> p) & lmask[n]);
    2e88:	8f830014 	lw	v1,20(gp)
    2e8c:	8fc20010 	lw	v0,16(s8)
    2e90:	00000000 	sll	zero,zero,0x0
    2e94:	00431806 	srlv	v1,v1,v0
    2e98:	3c020000 	lui	v0,0x0
    2e9c:	8fc40028 	lw	a0,40(s8)
    2ea0:	00000000 	sll	zero,zero,0x0
    2ea4:	00042080 	sll	a0,a0,0x2
    2ea8:	24420000 	addiu	v0,v0,0
    2eac:	00821021 	addu	v0,a0,v0
    2eb0:	8c420000 	lw	v0,0(v0)
    2eb4:	00000000 	sll	zero,zero,0x0
    2eb8:	00621024 	and	v0,v1,v0
}
    2ebc:	03c0e821 	addu	sp,s8,zero
    2ec0:	8fbf0024 	lw	ra,36(sp)
    2ec4:	8fbe0020 	lw	s8,32(sp)
    2ec8:	8fb0001c 	lw	s0,28(sp)
    2ecc:	27bd0028 	addiu	sp,sp,40
    2ed0:	03e00008 	jr	ra
    2ed4:	00000000 	sll	zero,zero,0x0

00002ed8 <huff_make_dhuff_tb>:
 */
int
huff_make_dhuff_tb (int *p_xhtbl_bits, int p_dhtbl_ml,
		    int *p_dhtbl_maxcode, int *p_dhtbl_mincode,
		    int *p_dhtbl_valptr)
{
    2ed8:	27bdf7d0 	addiu	sp,sp,-2096
    2edc:	afbe082c 	sw	s8,2092(sp)
    2ee0:	03a0f021 	addu	s8,sp,zero
    2ee4:	afc40830 	sw	a0,2096(s8)
    2ee8:	afc50834 	sw	a1,2100(s8)
    2eec:	afc60838 	sw	a2,2104(s8)
    2ef0:	afc7083c 	sw	a3,2108(s8)
  int lastp;

  /*
   * Get size
   */
  for (p = 0, i = 1; i < 17; i++)
    2ef4:	afc0000c 	sw	zero,12(s8)
    2ef8:	24020001 	addiu	v0,zero,1
    2efc:	afc20004 	sw	v0,4(s8)
    2f00:	08000be5 	j	2f94 <huff_make_dhuff_tb+0xbc>
    2f04:	00000000 	sll	zero,zero,0x0
    {
      for (j = 1; j <= p_xhtbl_bits[i]; j++)
    2f08:	24020001 	addiu	v0,zero,1
    2f0c:	afc20008 	sw	v0,8(s8)
    2f10:	08000bd5 	j	2f54 <huff_make_dhuff_tb+0x7c>
    2f14:	00000000 	sll	zero,zero,0x0
	{
	  huffsize[p++] = i;
    2f18:	8fc2000c 	lw	v0,12(s8)
    2f1c:	00000000 	sll	zero,zero,0x0
    2f20:	00021080 	sll	v0,v0,0x2
    2f24:	03c21021 	addu	v0,s8,v0
    2f28:	8fc30004 	lw	v1,4(s8)
    2f2c:	00000000 	sll	zero,zero,0x0
    2f30:	ac430020 	sw	v1,32(v0)
    2f34:	8fc2000c 	lw	v0,12(s8)
    2f38:	00000000 	sll	zero,zero,0x0
    2f3c:	24420001 	addiu	v0,v0,1
    2f40:	afc2000c 	sw	v0,12(s8)
  /*
   * Get size
   */
  for (p = 0, i = 1; i < 17; i++)
    {
      for (j = 1; j <= p_xhtbl_bits[i]; j++)
    2f44:	8fc20008 	lw	v0,8(s8)
    2f48:	00000000 	sll	zero,zero,0x0
    2f4c:	24420001 	addiu	v0,v0,1
    2f50:	afc20008 	sw	v0,8(s8)
    2f54:	8fc20004 	lw	v0,4(s8)
    2f58:	00000000 	sll	zero,zero,0x0
    2f5c:	00021080 	sll	v0,v0,0x2
    2f60:	8fc30830 	lw	v1,2096(s8)
    2f64:	00000000 	sll	zero,zero,0x0
    2f68:	00621021 	addu	v0,v1,v0
    2f6c:	8c430000 	lw	v1,0(v0)
    2f70:	8fc20008 	lw	v0,8(s8)
    2f74:	00000000 	sll	zero,zero,0x0
    2f78:	0062102a 	slt	v0,v1,v0
    2f7c:	1040ffe6 	beqz	v0,2f18 <huff_make_dhuff_tb+0x40>
    2f80:	00000000 	sll	zero,zero,0x0
  int lastp;

  /*
   * Get size
   */
  for (p = 0, i = 1; i < 17; i++)
    2f84:	8fc20004 	lw	v0,4(s8)
    2f88:	00000000 	sll	zero,zero,0x0
    2f8c:	24420001 	addiu	v0,v0,1
    2f90:	afc20004 	sw	v0,4(s8)
    2f94:	8fc20004 	lw	v0,4(s8)
    2f98:	00000000 	sll	zero,zero,0x0
    2f9c:	28420011 	slti	v0,v0,17
    2fa0:	1440ffd9 	bnez	v0,2f08 <huff_make_dhuff_tb+0x30>
    2fa4:	00000000 	sll	zero,zero,0x0
	{
	  huffsize[p++] = i;
	}
    }

  huffsize[p] = 0;
    2fa8:	8fc2000c 	lw	v0,12(s8)
    2fac:	00000000 	sll	zero,zero,0x0
    2fb0:	00021080 	sll	v0,v0,0x2
    2fb4:	03c21021 	addu	v0,s8,v0
    2fb8:	ac400020 	sw	zero,32(v0)
  lastp = p;
    2fbc:	8fc2000c 	lw	v0,12(s8)
    2fc0:	00000000 	sll	zero,zero,0x0
    2fc4:	afc2001c 	sw	v0,28(s8)

  p = 0;
    2fc8:	afc0000c 	sw	zero,12(s8)
  code = 0;
    2fcc:	afc00010 	sw	zero,16(s8)
  size = huffsize[0];
    2fd0:	8fc20020 	lw	v0,32(s8)
    2fd4:	00000000 	sll	zero,zero,0x0
    2fd8:	afc20014 	sw	v0,20(s8)
  while (1)
    {
      do
	{
	  huffcode[p++] = code++;
    2fdc:	8fc2000c 	lw	v0,12(s8)
    2fe0:	00000000 	sll	zero,zero,0x0
    2fe4:	00021080 	sll	v0,v0,0x2
    2fe8:	03c21021 	addu	v0,s8,v0
    2fec:	8fc30010 	lw	v1,16(s8)
    2ff0:	00000000 	sll	zero,zero,0x0
    2ff4:	ac430424 	sw	v1,1060(v0)
    2ff8:	8fc2000c 	lw	v0,12(s8)
    2ffc:	00000000 	sll	zero,zero,0x0
    3000:	24420001 	addiu	v0,v0,1
    3004:	afc2000c 	sw	v0,12(s8)
    3008:	8fc20010 	lw	v0,16(s8)
    300c:	00000000 	sll	zero,zero,0x0
    3010:	24420001 	addiu	v0,v0,1
    3014:	afc20010 	sw	v0,16(s8)
	}
      while ((huffsize[p] == size) && (p < 257));
    3018:	8fc2000c 	lw	v0,12(s8)
    301c:	00000000 	sll	zero,zero,0x0
    3020:	00021080 	sll	v0,v0,0x2
    3024:	03c21021 	addu	v0,s8,v0
    3028:	8c430020 	lw	v1,32(v0)
    302c:	8fc20014 	lw	v0,20(s8)
    3030:	00000000 	sll	zero,zero,0x0
    3034:	14620006 	bne	v1,v0,3050 <huff_make_dhuff_tb+0x178>
    3038:	00000000 	sll	zero,zero,0x0
    303c:	8fc2000c 	lw	v0,12(s8)
    3040:	00000000 	sll	zero,zero,0x0
    3044:	28420101 	slti	v0,v0,257
    3048:	1440ffe4 	bnez	v0,2fdc <huff_make_dhuff_tb+0x104>
    304c:	00000000 	sll	zero,zero,0x0
      /* Overflow Detection */
      if (!huffsize[p])
    3050:	8fc2000c 	lw	v0,12(s8)
    3054:	00000000 	sll	zero,zero,0x0
    3058:	00021080 	sll	v0,v0,0x2
    305c:	03c21021 	addu	v0,s8,v0
    3060:	8c420020 	lw	v0,32(v0)
    3064:	00000000 	sll	zero,zero,0x0
    3068:	14400008 	bnez	v0,308c <huff_make_dhuff_tb+0x1b4>
    306c:	00000000 	sll	zero,zero,0x0
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    3070:	24020001 	addiu	v0,zero,1
    3074:	afc20000 	sw	v0,0(s8)
    3078:	afc0000c 	sw	zero,12(s8)
    307c:	24020001 	addiu	v0,zero,1
    3080:	afc20018 	sw	v0,24(s8)
    3084:	08000c85 	j	3214 <huff_make_dhuff_tb+0x33c>
    3088:	00000000 	sll	zero,zero,0x0
	  break;
	}
      do
	{
	  /* Shift next code to expand prefix. */
	  code <<= 1;
    308c:	8fc20010 	lw	v0,16(s8)
    3090:	00000000 	sll	zero,zero,0x0
    3094:	00021040 	sll	v0,v0,0x1
    3098:	afc20010 	sw	v0,16(s8)
	  size++;
    309c:	8fc20014 	lw	v0,20(s8)
    30a0:	00000000 	sll	zero,zero,0x0
    30a4:	24420001 	addiu	v0,v0,1
    30a8:	afc20014 	sw	v0,20(s8)
	}
      while (huffsize[p] != size);
    30ac:	8fc2000c 	lw	v0,12(s8)
    30b0:	00000000 	sll	zero,zero,0x0
    30b4:	00021080 	sll	v0,v0,0x2
    30b8:	03c21021 	addu	v0,s8,v0
    30bc:	8c430020 	lw	v1,32(v0)
    30c0:	8fc20014 	lw	v0,20(s8)
    30c4:	00000000 	sll	zero,zero,0x0
    30c8:	1462fff0 	bne	v1,v0,308c <huff_make_dhuff_tb+0x1b4>
    30cc:	00000000 	sll	zero,zero,0x0
    }
    30d0:	08000bf7 	j	2fdc <huff_make_dhuff_tb+0x104>
    30d4:	00000000 	sll	zero,zero,0x0

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    30d8:	8fc20018 	lw	v0,24(s8)
    30dc:	00000000 	sll	zero,zero,0x0
    30e0:	00021080 	sll	v0,v0,0x2
    30e4:	8fc30830 	lw	v1,2096(s8)
    30e8:	00000000 	sll	zero,zero,0x0
    30ec:	00621021 	addu	v0,v1,v0
    30f0:	8c420000 	lw	v0,0(v0)
    30f4:	00000000 	sll	zero,zero,0x0
    30f8:	1440000b 	bnez	v0,3128 <huff_make_dhuff_tb+0x250>
    30fc:	00000000 	sll	zero,zero,0x0
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
    3100:	8fc20018 	lw	v0,24(s8)
    3104:	00000000 	sll	zero,zero,0x0
    3108:	00021080 	sll	v0,v0,0x2
    310c:	8fc30838 	lw	v1,2104(s8)
    3110:	00000000 	sll	zero,zero,0x0
    3114:	00621021 	addu	v0,v1,v0
    3118:	2403ffff 	addiu	v1,zero,-1
    311c:	ac430000 	sw	v1,0(v0)
    3120:	08000c81 	j	3204 <huff_make_dhuff_tb+0x32c>
    3124:	00000000 	sll	zero,zero,0x0
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    3128:	8fc20018 	lw	v0,24(s8)
    312c:	00000000 	sll	zero,zero,0x0
    3130:	00021080 	sll	v0,v0,0x2
    3134:	8fc30840 	lw	v1,2112(s8)
    3138:	00000000 	sll	zero,zero,0x0
    313c:	00621021 	addu	v0,v1,v0
    3140:	8fc3000c 	lw	v1,12(s8)
    3144:	00000000 	sll	zero,zero,0x0
    3148:	ac430000 	sw	v1,0(v0)
	  p_dhtbl_mincode[l] = huffcode[p];
    314c:	8fc20018 	lw	v0,24(s8)
    3150:	00000000 	sll	zero,zero,0x0
    3154:	00021080 	sll	v0,v0,0x2
    3158:	8fc3083c 	lw	v1,2108(s8)
    315c:	00000000 	sll	zero,zero,0x0
    3160:	00621821 	addu	v1,v1,v0
    3164:	8fc2000c 	lw	v0,12(s8)
    3168:	00000000 	sll	zero,zero,0x0
    316c:	00021080 	sll	v0,v0,0x2
    3170:	03c21021 	addu	v0,s8,v0
    3174:	8c420424 	lw	v0,1060(v0)
    3178:	00000000 	sll	zero,zero,0x0
    317c:	ac620000 	sw	v0,0(v1)
	  p += p_xhtbl_bits[l] - 1;
    3180:	8fc20018 	lw	v0,24(s8)
    3184:	00000000 	sll	zero,zero,0x0
    3188:	00021080 	sll	v0,v0,0x2
    318c:	8fc30830 	lw	v1,2096(s8)
    3190:	00000000 	sll	zero,zero,0x0
    3194:	00621021 	addu	v0,v1,v0
    3198:	8c420000 	lw	v0,0(v0)
    319c:	00000000 	sll	zero,zero,0x0
    31a0:	2442ffff 	addiu	v0,v0,-1
    31a4:	8fc3000c 	lw	v1,12(s8)
    31a8:	00000000 	sll	zero,zero,0x0
    31ac:	00621021 	addu	v0,v1,v0
    31b0:	afc2000c 	sw	v0,12(s8)
	  p_dhtbl_maxcode[l] = huffcode[p];
    31b4:	8fc20018 	lw	v0,24(s8)
    31b8:	00000000 	sll	zero,zero,0x0
    31bc:	00021080 	sll	v0,v0,0x2
    31c0:	8fc30838 	lw	v1,2104(s8)
    31c4:	00000000 	sll	zero,zero,0x0
    31c8:	00621821 	addu	v1,v1,v0
    31cc:	8fc2000c 	lw	v0,12(s8)
    31d0:	00000000 	sll	zero,zero,0x0
    31d4:	00021080 	sll	v0,v0,0x2
    31d8:	03c21021 	addu	v0,s8,v0
    31dc:	8c420424 	lw	v0,1060(v0)
    31e0:	00000000 	sll	zero,zero,0x0
    31e4:	ac620000 	sw	v0,0(v1)
	  p_dhtbl_ml = l;
    31e8:	8fc20018 	lw	v0,24(s8)
    31ec:	00000000 	sll	zero,zero,0x0
    31f0:	afc20000 	sw	v0,0(s8)
	  p++;
    31f4:	8fc2000c 	lw	v0,12(s8)
    31f8:	00000000 	sll	zero,zero,0x0
    31fc:	24420001 	addiu	v0,v0,1
    3200:	afc2000c 	sw	v0,12(s8)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    3204:	8fc20018 	lw	v0,24(s8)
    3208:	00000000 	sll	zero,zero,0x0
    320c:	24420001 	addiu	v0,v0,1
    3210:	afc20018 	sw	v0,24(s8)
    3214:	8fc20018 	lw	v0,24(s8)
    3218:	00000000 	sll	zero,zero,0x0
    321c:	28420011 	slti	v0,v0,17
    3220:	1440ffad 	bnez	v0,30d8 <huff_make_dhuff_tb+0x200>
    3224:	00000000 	sll	zero,zero,0x0
	  p_dhtbl_maxcode[l] = huffcode[p];
	  p_dhtbl_ml = l;
	  p++;
	}
    }
  p_dhtbl_maxcode[p_dhtbl_ml]++;
    3228:	8fc20000 	lw	v0,0(s8)
    322c:	00000000 	sll	zero,zero,0x0
    3230:	00021080 	sll	v0,v0,0x2
    3234:	8fc30838 	lw	v1,2104(s8)
    3238:	00000000 	sll	zero,zero,0x0
    323c:	00621021 	addu	v0,v1,v0
    3240:	8c430000 	lw	v1,0(v0)
    3244:	00000000 	sll	zero,zero,0x0
    3248:	24630001 	addiu	v1,v1,1
    324c:	ac430000 	sw	v1,0(v0)
  return p_dhtbl_ml;
    3250:	8fc20000 	lw	v0,0(s8)
}
    3254:	03c0e821 	addu	sp,s8,zero
    3258:	8fbe082c 	lw	s8,2092(sp)
    325c:	27bd0830 	addiu	sp,sp,2096
    3260:	03e00008 	jr	ra
    3264:	00000000 	sll	zero,zero,0x0

00003268 <DecodeHuffman>:
 *  
 */
int
DecodeHuffman (int *Xhuff_huffval, int Dhuff_ml,
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
    3268:	27bdffd0 	addiu	sp,sp,-48
    326c:	afbf002c 	sw	ra,44(sp)
    3270:	afbe0028 	sw	s8,40(sp)
    3274:	afb00024 	sw	s0,36(sp)
    3278:	03a0f021 	addu	s8,sp,zero
    327c:	afc40030 	sw	a0,48(s8)
    3280:	afc50034 	sw	a1,52(s8)
    3284:	afc60038 	sw	a2,56(s8)
    3288:	afc7003c 	sw	a3,60(s8)
  int code, l, p;

  code = buf_getb ();
    328c:	0c000000 	jal	0 <read_byte>
    3290:	00000000 	sll	zero,zero,0x0
    3294:	afc20010 	sw	v0,16(s8)
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    3298:	24020001 	addiu	v0,zero,1
    329c:	afc20014 	sw	v0,20(s8)
    32a0:	08000cb5 	j	32d4 <DecodeHuffman+0x6c>
    32a4:	00000000 	sll	zero,zero,0x0
    {
      code = (code << 1) + buf_getb ();
    32a8:	8fc20010 	lw	v0,16(s8)
    32ac:	00000000 	sll	zero,zero,0x0
    32b0:	00028040 	sll	s0,v0,0x1
    32b4:	0c000000 	jal	0 <read_byte>
    32b8:	00000000 	sll	zero,zero,0x0
    32bc:	02021021 	addu	v0,s0,v0
    32c0:	afc20010 	sw	v0,16(s8)
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
  int code, l, p;

  code = buf_getb ();
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    32c4:	8fc20014 	lw	v0,20(s8)
    32c8:	00000000 	sll	zero,zero,0x0
    32cc:	24420001 	addiu	v0,v0,1
    32d0:	afc20014 	sw	v0,20(s8)
    32d4:	8fc20014 	lw	v0,20(s8)
    32d8:	00000000 	sll	zero,zero,0x0
    32dc:	00021080 	sll	v0,v0,0x2
    32e0:	8fc30038 	lw	v1,56(s8)
    32e4:	00000000 	sll	zero,zero,0x0
    32e8:	00621021 	addu	v0,v1,v0
    32ec:	8c430000 	lw	v1,0(v0)
    32f0:	8fc20010 	lw	v0,16(s8)
    32f4:	00000000 	sll	zero,zero,0x0
    32f8:	0062102a 	slt	v0,v1,v0
    32fc:	1440ffea 	bnez	v0,32a8 <DecodeHuffman+0x40>
    3300:	00000000 	sll	zero,zero,0x0
    {
      code = (code << 1) + buf_getb ();
    }

  if (code < Dhuff_maxcode[Dhuff_ml])
    3304:	8fc20034 	lw	v0,52(s8)
    3308:	00000000 	sll	zero,zero,0x0
    330c:	00021080 	sll	v0,v0,0x2
    3310:	8fc30038 	lw	v1,56(s8)
    3314:	00000000 	sll	zero,zero,0x0
    3318:	00621021 	addu	v0,v1,v0
    331c:	8c430000 	lw	v1,0(v0)
    3320:	8fc20010 	lw	v0,16(s8)
    3324:	00000000 	sll	zero,zero,0x0
    3328:	0043102a 	slt	v0,v0,v1
    332c:	10400023 	beqz	v0,33bc <DecodeHuffman+0x154>
    3330:	00000000 	sll	zero,zero,0x0
    {
      p = Dhuff_valptr[l] + code - Dhuff_mincode[l];
    3334:	8fc20014 	lw	v0,20(s8)
    3338:	00000000 	sll	zero,zero,0x0
    333c:	00021080 	sll	v0,v0,0x2
    3340:	8fc30040 	lw	v1,64(s8)
    3344:	00000000 	sll	zero,zero,0x0
    3348:	00621021 	addu	v0,v1,v0
    334c:	8c430000 	lw	v1,0(v0)
    3350:	8fc20010 	lw	v0,16(s8)
    3354:	00000000 	sll	zero,zero,0x0
    3358:	00621821 	addu	v1,v1,v0
    335c:	8fc20014 	lw	v0,20(s8)
    3360:	00000000 	sll	zero,zero,0x0
    3364:	00021080 	sll	v0,v0,0x2
    3368:	8fc4003c 	lw	a0,60(s8)
    336c:	00000000 	sll	zero,zero,0x0
    3370:	00821021 	addu	v0,a0,v0
    3374:	8c420000 	lw	v0,0(v0)
    3378:	00000000 	sll	zero,zero,0x0
    337c:	00621023 	subu	v0,v1,v0
    3380:	afc20018 	sw	v0,24(s8)
      return (Xhuff_huffval[p]);
    3384:	8fc20018 	lw	v0,24(s8)
    3388:	00000000 	sll	zero,zero,0x0
    338c:	00021080 	sll	v0,v0,0x2
    3390:	8fc30030 	lw	v1,48(s8)
    3394:	00000000 	sll	zero,zero,0x0
    3398:	00621021 	addu	v0,v1,v0
    339c:	8c420000 	lw	v0,0(v0)
      main_result++;
      printf ("Huffman read error\n");
      EXIT;
    }

}
    33a0:	03c0e821 	addu	sp,s8,zero
    33a4:	8fbf002c 	lw	ra,44(sp)
    33a8:	8fbe0028 	lw	s8,40(sp)
    33ac:	8fb00024 	lw	s0,36(sp)
    33b0:	27bd0030 	addiu	sp,sp,48
    33b4:	03e00008 	jr	ra
    33b8:	00000000 	sll	zero,zero,0x0
      p = Dhuff_valptr[l] + code - Dhuff_mincode[l];
      return (Xhuff_huffval[p]);
    }
  else
    {
      main_result++;
    33bc:	8f820000 	lw	v0,0(gp)
    33c0:	00000000 	sll	zero,zero,0x0
    33c4:	24420001 	addiu	v0,v0,1
    33c8:	af820000 	sw	v0,0(gp)
      printf ("Huffman read error\n");
    33cc:	3c020000 	lui	v0,0x0
    33d0:	24445960 	addiu	a0,v0,22880
    33d4:	0c000000 	jal	0 <read_byte>
    33d8:	00000000 	sll	zero,zero,0x0
      EXIT;
    33dc:	00002021 	addu	a0,zero,zero
    33e0:	0c000000 	jal	0 <read_byte>
    33e4:	00000000 	sll	zero,zero,0x0

000033e8 <DecodeHuffMCU>:
/*
 * Decode one MCU
 */
void
DecodeHuffMCU (int *out_buf, int num_cmp)
{
    33e8:	27bdffb8 	addiu	sp,sp,-72
    33ec:	afbf0044 	sw	ra,68(sp)
    33f0:	afbe0040 	sw	s8,64(sp)
    33f4:	afb0003c 	sw	s0,60(sp)
    33f8:	03a0f021 	addu	s8,sp,zero
    33fc:	afc40048 	sw	a0,72(s8)
    3400:	afc5004c 	sw	a1,76(s8)
  int s, diff, tbl_no, *mptr, k, n, r;

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
    3404:	8fc3004c 	lw	v1,76(s8)
    3408:	27820000 	addiu	v0,gp,0
    340c:	00621021 	addu	v0,v1,v0
    3410:	80420000 	lb	v0,0(v0)
    3414:	00000000 	sll	zero,zero,0x0
    3418:	afc20024 	sw	v0,36(s8)
  s = DecodeHuffman (&p_jinfo_dc_xhuff_tbl_huffval[tbl_no][0],
    341c:	3c020000 	lui	v0,0x0
    3420:	24430000 	addiu	v1,v0,0
    3424:	8fc20024 	lw	v0,36(s8)
    3428:	00000000 	sll	zero,zero,0x0
    342c:	00021080 	sll	v0,v0,0x2
    3430:	00022200 	sll	a0,v0,0x8
    3434:	00441021 	addu	v0,v0,a0
    3438:	00622021 	addu	a0,v1,v0
    343c:	8fc20024 	lw	v0,36(s8)
    3440:	00000000 	sll	zero,zero,0x0
    3444:	00021880 	sll	v1,v0,0x2
    3448:	27820000 	addiu	v0,gp,0
    344c:	00621021 	addu	v0,v1,v0
    3450:	8c450000 	lw	a1,0(v0)
		     p_jinfo_dc_dhuff_tbl_ml[tbl_no],
		     &p_jinfo_dc_dhuff_tbl_maxcode[tbl_no][0],
    3454:	3c020000 	lui	v0,0x0
    3458:	24430000 	addiu	v1,v0,0

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
  s = DecodeHuffman (&p_jinfo_dc_xhuff_tbl_huffval[tbl_no][0],
    345c:	8fc20024 	lw	v0,36(s8)
    3460:	00000000 	sll	zero,zero,0x0
		     p_jinfo_dc_dhuff_tbl_ml[tbl_no],
		     &p_jinfo_dc_dhuff_tbl_maxcode[tbl_no][0],
    3464:	00021100 	sll	v0,v0,0x4
    3468:	000230c0 	sll	a2,v0,0x3
    346c:	00461021 	addu	v0,v0,a2

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
  s = DecodeHuffman (&p_jinfo_dc_xhuff_tbl_huffval[tbl_no][0],
    3470:	00623021 	addu	a2,v1,v0
		     p_jinfo_dc_dhuff_tbl_ml[tbl_no],
		     &p_jinfo_dc_dhuff_tbl_maxcode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_mincode[tbl_no][0],
    3474:	3c020000 	lui	v0,0x0
    3478:	24430000 	addiu	v1,v0,0

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
  s = DecodeHuffman (&p_jinfo_dc_xhuff_tbl_huffval[tbl_no][0],
    347c:	8fc20024 	lw	v0,36(s8)
    3480:	00000000 	sll	zero,zero,0x0
		     p_jinfo_dc_dhuff_tbl_ml[tbl_no],
		     &p_jinfo_dc_dhuff_tbl_maxcode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_mincode[tbl_no][0],
    3484:	00021100 	sll	v0,v0,0x4
    3488:	000238c0 	sll	a3,v0,0x3
    348c:	00471021 	addu	v0,v0,a3

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
  s = DecodeHuffman (&p_jinfo_dc_xhuff_tbl_huffval[tbl_no][0],
    3490:	00621821 	addu	v1,v1,v0
		     p_jinfo_dc_dhuff_tbl_ml[tbl_no],
		     &p_jinfo_dc_dhuff_tbl_maxcode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_mincode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_valptr[tbl_no][0]);
    3494:	3c020000 	lui	v0,0x0
    3498:	24470000 	addiu	a3,v0,0

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
  s = DecodeHuffman (&p_jinfo_dc_xhuff_tbl_huffval[tbl_no][0],
    349c:	8fc20024 	lw	v0,36(s8)
    34a0:	00000000 	sll	zero,zero,0x0
		     p_jinfo_dc_dhuff_tbl_ml[tbl_no],
		     &p_jinfo_dc_dhuff_tbl_maxcode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_mincode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_valptr[tbl_no][0]);
    34a4:	00021100 	sll	v0,v0,0x4
    34a8:	000240c0 	sll	t0,v0,0x3
    34ac:	00481021 	addu	v0,v0,t0

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
  s = DecodeHuffman (&p_jinfo_dc_xhuff_tbl_huffval[tbl_no][0],
    34b0:	00e21021 	addu	v0,a3,v0
    34b4:	afa20010 	sw	v0,16(sp)
    34b8:	00603821 	addu	a3,v1,zero
    34bc:	0c000000 	jal	0 <read_byte>
    34c0:	00000000 	sll	zero,zero,0x0
    34c4:	afc20028 	sw	v0,40(s8)
		     p_jinfo_dc_dhuff_tbl_ml[tbl_no],
		     &p_jinfo_dc_dhuff_tbl_maxcode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_mincode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_valptr[tbl_no][0]);

  if (s)
    34c8:	8fc20028 	lw	v0,40(s8)
    34cc:	00000000 	sll	zero,zero,0x0
    34d0:	1040002f 	beqz	v0,3590 <DecodeHuffMCU+0x1a8>
    34d4:	00000000 	sll	zero,zero,0x0
    {
      diff = buf_getv (s);
    34d8:	8fc40028 	lw	a0,40(s8)
    34dc:	0c000000 	jal	0 <read_byte>
    34e0:	00000000 	sll	zero,zero,0x0
    34e4:	afc20018 	sw	v0,24(s8)
      s--;
    34e8:	8fc20028 	lw	v0,40(s8)
    34ec:	00000000 	sll	zero,zero,0x0
    34f0:	2442ffff 	addiu	v0,v0,-1
    34f4:	afc20028 	sw	v0,40(s8)
      if ((diff & bit_set_mask[s]) == 0)
    34f8:	3c020000 	lui	v0,0x0
    34fc:	8fc30028 	lw	v1,40(s8)
    3500:	00000000 	sll	zero,zero,0x0
    3504:	00031880 	sll	v1,v1,0x2
    3508:	24420000 	addiu	v0,v0,0
    350c:	00621021 	addu	v0,v1,v0
    3510:	8c430000 	lw	v1,0(v0)
    3514:	8fc20018 	lw	v0,24(s8)
    3518:	00000000 	sll	zero,zero,0x0
    351c:	00621024 	and	v0,v1,v0
    3520:	14400010 	bnez	v0,3564 <DecodeHuffMCU+0x17c>
    3524:	00000000 	sll	zero,zero,0x0
	{
	  diff |= extend_mask[s];
    3528:	3c020000 	lui	v0,0x0
    352c:	8fc30028 	lw	v1,40(s8)
    3530:	00000000 	sll	zero,zero,0x0
    3534:	00031880 	sll	v1,v1,0x2
    3538:	244257f0 	addiu	v0,v0,22512
    353c:	00621021 	addu	v0,v1,v0
    3540:	8c420000 	lw	v0,0(v0)
    3544:	8fc30018 	lw	v1,24(s8)
    3548:	00000000 	sll	zero,zero,0x0
    354c:	00621025 	or	v0,v1,v0
    3550:	afc20018 	sw	v0,24(s8)
	  diff++;
    3554:	8fc20018 	lw	v0,24(s8)
    3558:	00000000 	sll	zero,zero,0x0
    355c:	24420001 	addiu	v0,v0,1
    3560:	afc20018 	sw	v0,24(s8)
	}

      diff += *out_buf;		/* Change the last DC */
    3564:	8fc20048 	lw	v0,72(s8)
    3568:	00000000 	sll	zero,zero,0x0
    356c:	8c420000 	lw	v0,0(v0)
    3570:	8fc30018 	lw	v1,24(s8)
    3574:	00000000 	sll	zero,zero,0x0
    3578:	00621021 	addu	v0,v1,v0
    357c:	afc20018 	sw	v0,24(s8)
      *out_buf = diff;
    3580:	8fc20048 	lw	v0,72(s8)
    3584:	8fc30018 	lw	v1,24(s8)
    3588:	00000000 	sll	zero,zero,0x0
    358c:	ac430000 	sw	v1,0(v0)

  /*
   * Decode AC
   */
  /* Set all values to zero */
  for (mptr = out_buf + 1; mptr < out_buf + DCTSIZE2; mptr++)
    3590:	8fc20048 	lw	v0,72(s8)
    3594:	00000000 	sll	zero,zero,0x0
    3598:	24420004 	addiu	v0,v0,4
    359c:	afc2001c 	sw	v0,28(s8)
    35a0:	08000d71 	j	35c4 <DecodeHuffMCU+0x1dc>
    35a4:	00000000 	sll	zero,zero,0x0
    {
      *mptr = 0;
    35a8:	8fc2001c 	lw	v0,28(s8)
    35ac:	00000000 	sll	zero,zero,0x0
    35b0:	ac400000 	sw	zero,0(v0)

  /*
   * Decode AC
   */
  /* Set all values to zero */
  for (mptr = out_buf + 1; mptr < out_buf + DCTSIZE2; mptr++)
    35b4:	8fc2001c 	lw	v0,28(s8)
    35b8:	00000000 	sll	zero,zero,0x0
    35bc:	24420004 	addiu	v0,v0,4
    35c0:	afc2001c 	sw	v0,28(s8)
    35c4:	8fc20048 	lw	v0,72(s8)
    35c8:	00000000 	sll	zero,zero,0x0
    35cc:	24430100 	addiu	v1,v0,256
    35d0:	8fc2001c 	lw	v0,28(s8)
    35d4:	00000000 	sll	zero,zero,0x0
    35d8:	0043102b 	sltu	v0,v0,v1
    35dc:	1440fff2 	bnez	v0,35a8 <DecodeHuffMCU+0x1c0>
    35e0:	00000000 	sll	zero,zero,0x0
    {
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    35e4:	24020001 	addiu	v0,zero,1
    35e8:	afc20020 	sw	v0,32(s8)
    35ec:	08000e0e 	j	3838 <DecodeHuffMCU+0x450>
    35f0:	00000000 	sll	zero,zero,0x0
    {				/* JPEG Mistake */
      r = DecodeHuffman (&p_jinfo_ac_xhuff_tbl_huffval[tbl_no][0],
    35f4:	3c020000 	lui	v0,0x0
    35f8:	24430000 	addiu	v1,v0,0
    35fc:	8fc20024 	lw	v0,36(s8)
    3600:	00000000 	sll	zero,zero,0x0
    3604:	00021080 	sll	v0,v0,0x2
    3608:	00022200 	sll	a0,v0,0x8
    360c:	00441021 	addu	v0,v0,a0
    3610:	00622021 	addu	a0,v1,v0
    3614:	8fc20024 	lw	v0,36(s8)
    3618:	00000000 	sll	zero,zero,0x0
    361c:	00021880 	sll	v1,v0,0x2
    3620:	27820000 	addiu	v0,gp,0
    3624:	00621021 	addu	v0,v1,v0
    3628:	8c450000 	lw	a1,0(v0)
			 p_jinfo_ac_dhuff_tbl_ml[tbl_no],
			 &p_jinfo_ac_dhuff_tbl_maxcode[tbl_no][0],
    362c:	3c020000 	lui	v0,0x0
    3630:	24430000 	addiu	v1,v0,0
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    {				/* JPEG Mistake */
      r = DecodeHuffman (&p_jinfo_ac_xhuff_tbl_huffval[tbl_no][0],
    3634:	8fc20024 	lw	v0,36(s8)
    3638:	00000000 	sll	zero,zero,0x0
			 p_jinfo_ac_dhuff_tbl_ml[tbl_no],
			 &p_jinfo_ac_dhuff_tbl_maxcode[tbl_no][0],
    363c:	00021100 	sll	v0,v0,0x4
    3640:	000230c0 	sll	a2,v0,0x3
    3644:	00461021 	addu	v0,v0,a2
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    {				/* JPEG Mistake */
      r = DecodeHuffman (&p_jinfo_ac_xhuff_tbl_huffval[tbl_no][0],
    3648:	00623021 	addu	a2,v1,v0
			 p_jinfo_ac_dhuff_tbl_ml[tbl_no],
			 &p_jinfo_ac_dhuff_tbl_maxcode[tbl_no][0],
			 &p_jinfo_ac_dhuff_tbl_mincode[tbl_no][0],
    364c:	3c020000 	lui	v0,0x0
    3650:	24430000 	addiu	v1,v0,0
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    {				/* JPEG Mistake */
      r = DecodeHuffman (&p_jinfo_ac_xhuff_tbl_huffval[tbl_no][0],
    3654:	8fc20024 	lw	v0,36(s8)
    3658:	00000000 	sll	zero,zero,0x0
			 p_jinfo_ac_dhuff_tbl_ml[tbl_no],
			 &p_jinfo_ac_dhuff_tbl_maxcode[tbl_no][0],
			 &p_jinfo_ac_dhuff_tbl_mincode[tbl_no][0],
    365c:	00021100 	sll	v0,v0,0x4
    3660:	000238c0 	sll	a3,v0,0x3
    3664:	00471021 	addu	v0,v0,a3
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    {				/* JPEG Mistake */
      r = DecodeHuffman (&p_jinfo_ac_xhuff_tbl_huffval[tbl_no][0],
    3668:	00621821 	addu	v1,v1,v0
			 p_jinfo_ac_dhuff_tbl_ml[tbl_no],
			 &p_jinfo_ac_dhuff_tbl_maxcode[tbl_no][0],
			 &p_jinfo_ac_dhuff_tbl_mincode[tbl_no][0],
			 &p_jinfo_ac_dhuff_tbl_valptr[tbl_no][0]);
    366c:	3c020000 	lui	v0,0x0
    3670:	24470000 	addiu	a3,v0,0
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    {				/* JPEG Mistake */
      r = DecodeHuffman (&p_jinfo_ac_xhuff_tbl_huffval[tbl_no][0],
    3674:	8fc20024 	lw	v0,36(s8)
    3678:	00000000 	sll	zero,zero,0x0
			 p_jinfo_ac_dhuff_tbl_ml[tbl_no],
			 &p_jinfo_ac_dhuff_tbl_maxcode[tbl_no][0],
			 &p_jinfo_ac_dhuff_tbl_mincode[tbl_no][0],
			 &p_jinfo_ac_dhuff_tbl_valptr[tbl_no][0]);
    367c:	00021100 	sll	v0,v0,0x4
    3680:	000240c0 	sll	t0,v0,0x3
    3684:	00481021 	addu	v0,v0,t0
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    {				/* JPEG Mistake */
      r = DecodeHuffman (&p_jinfo_ac_xhuff_tbl_huffval[tbl_no][0],
    3688:	00e21021 	addu	v0,a3,v0
    368c:	afa20010 	sw	v0,16(sp)
    3690:	00603821 	addu	a3,v1,zero
    3694:	0c000000 	jal	0 <read_byte>
    3698:	00000000 	sll	zero,zero,0x0
    369c:	afc2002c 	sw	v0,44(s8)
			 p_jinfo_ac_dhuff_tbl_ml[tbl_no],
			 &p_jinfo_ac_dhuff_tbl_maxcode[tbl_no][0],
			 &p_jinfo_ac_dhuff_tbl_mincode[tbl_no][0],
			 &p_jinfo_ac_dhuff_tbl_valptr[tbl_no][0]);

      s = r & 0xf;		/* Find significant bits */
    36a0:	8fc2002c 	lw	v0,44(s8)
    36a4:	00000000 	sll	zero,zero,0x0
    36a8:	3042000f 	andi	v0,v0,0xf
    36ac:	afc20028 	sw	v0,40(s8)
      n = (r >> 4) & 0xf;	/* n = run-length */
    36b0:	8fc2002c 	lw	v0,44(s8)
    36b4:	00000000 	sll	zero,zero,0x0
    36b8:	00021103 	sra	v0,v0,0x4
    36bc:	3042000f 	andi	v0,v0,0xf
    36c0:	afc20030 	sw	v0,48(s8)

      if (s)
    36c4:	8fc20028 	lw	v0,40(s8)
    36c8:	00000000 	sll	zero,zero,0x0
    36cc:	10400052 	beqz	v0,3818 <DecodeHuffMCU+0x430>
    36d0:	00000000 	sll	zero,zero,0x0
	{
	  if ((k += n) >= DCTSIZE2)	/* JPEG Mistake */
    36d4:	8fc30020 	lw	v1,32(s8)
    36d8:	8fc20030 	lw	v0,48(s8)
    36dc:	00000000 	sll	zero,zero,0x0
    36e0:	00621021 	addu	v0,v1,v0
    36e4:	afc20020 	sw	v0,32(s8)
    36e8:	8fc20020 	lw	v0,32(s8)
    36ec:	00000000 	sll	zero,zero,0x0
    36f0:	28420040 	slti	v0,v0,64
    36f4:	10400057 	beqz	v0,3854 <DecodeHuffMCU+0x46c>
    36f8:	00000000 	sll	zero,zero,0x0
	    break;
	  out_buf[k] = buf_getv (s);	/* Get s bits */
    36fc:	8fc20020 	lw	v0,32(s8)
    3700:	00000000 	sll	zero,zero,0x0
    3704:	00021080 	sll	v0,v0,0x2
    3708:	8fc30048 	lw	v1,72(s8)
    370c:	00000000 	sll	zero,zero,0x0
    3710:	00628021 	addu	s0,v1,v0
    3714:	8fc40028 	lw	a0,40(s8)
    3718:	0c000000 	jal	0 <read_byte>
    371c:	00000000 	sll	zero,zero,0x0
    3720:	ae020000 	sw	v0,0(s0)
	  s--;			/* Align s */
    3724:	8fc20028 	lw	v0,40(s8)
    3728:	00000000 	sll	zero,zero,0x0
    372c:	2442ffff 	addiu	v0,v0,-1
    3730:	afc20028 	sw	v0,40(s8)
	  if ((out_buf[k] & bit_set_mask[s]) == 0)
    3734:	8fc20020 	lw	v0,32(s8)
    3738:	00000000 	sll	zero,zero,0x0
    373c:	00021080 	sll	v0,v0,0x2
    3740:	8fc30048 	lw	v1,72(s8)
    3744:	00000000 	sll	zero,zero,0x0
    3748:	00621021 	addu	v0,v1,v0
    374c:	8c430000 	lw	v1,0(v0)
    3750:	3c020000 	lui	v0,0x0
    3754:	8fc40028 	lw	a0,40(s8)
    3758:	00000000 	sll	zero,zero,0x0
    375c:	00042080 	sll	a0,a0,0x2
    3760:	24420000 	addiu	v0,v0,0
    3764:	00821021 	addu	v0,a0,v0
    3768:	8c420000 	lw	v0,0(v0)
    376c:	00000000 	sll	zero,zero,0x0
    3770:	00621024 	and	v0,v1,v0
    3774:	14400022 	bnez	v0,3800 <DecodeHuffMCU+0x418>
    3778:	00000000 	sll	zero,zero,0x0
	    {			/* Also (1 << s) */
	      out_buf[k] |= extend_mask[s];	/* Also  (-1 << s) + 1 */
    377c:	8fc20020 	lw	v0,32(s8)
    3780:	00000000 	sll	zero,zero,0x0
    3784:	00021080 	sll	v0,v0,0x2
    3788:	8fc30048 	lw	v1,72(s8)
    378c:	00000000 	sll	zero,zero,0x0
    3790:	00621021 	addu	v0,v1,v0
    3794:	8fc30020 	lw	v1,32(s8)
    3798:	00000000 	sll	zero,zero,0x0
    379c:	00031880 	sll	v1,v1,0x2
    37a0:	8fc40048 	lw	a0,72(s8)
    37a4:	00000000 	sll	zero,zero,0x0
    37a8:	00831821 	addu	v1,a0,v1
    37ac:	8c640000 	lw	a0,0(v1)
    37b0:	3c030000 	lui	v1,0x0
    37b4:	8fc50028 	lw	a1,40(s8)
    37b8:	00000000 	sll	zero,zero,0x0
    37bc:	00052880 	sll	a1,a1,0x2
    37c0:	246357f0 	addiu	v1,v1,22512
    37c4:	00a31821 	addu	v1,a1,v1
    37c8:	8c630000 	lw	v1,0(v1)
    37cc:	00000000 	sll	zero,zero,0x0
    37d0:	00831825 	or	v1,a0,v1
    37d4:	ac430000 	sw	v1,0(v0)
	      out_buf[k]++;	/* Increment 2's c */
    37d8:	8fc20020 	lw	v0,32(s8)
    37dc:	00000000 	sll	zero,zero,0x0
    37e0:	00021080 	sll	v0,v0,0x2
    37e4:	8fc30048 	lw	v1,72(s8)
    37e8:	00000000 	sll	zero,zero,0x0
    37ec:	00621021 	addu	v0,v1,v0
    37f0:	8c430000 	lw	v1,0(v0)
    37f4:	00000000 	sll	zero,zero,0x0
    37f8:	24630001 	addiu	v1,v1,1
    37fc:	ac430000 	sw	v1,0(v0)
	    }
	  k++;			/* Goto next element */
    3800:	8fc20020 	lw	v0,32(s8)
    3804:	00000000 	sll	zero,zero,0x0
    3808:	24420001 	addiu	v0,v0,1
    380c:	afc20020 	sw	v0,32(s8)
    3810:	08000e0e 	j	3838 <DecodeHuffMCU+0x450>
    3814:	00000000 	sll	zero,zero,0x0
	}
      else if (n == 15)		/* Zero run length code extnd */
    3818:	8fc30030 	lw	v1,48(s8)
    381c:	2402000f 	addiu	v0,zero,15
    3820:	1462000f 	bne	v1,v0,3860 <DecodeHuffMCU+0x478>
    3824:	00000000 	sll	zero,zero,0x0
	k += 16;
    3828:	8fc20020 	lw	v0,32(s8)
    382c:	00000000 	sll	zero,zero,0x0
    3830:	24420010 	addiu	v0,v0,16
    3834:	afc20020 	sw	v0,32(s8)
  for (mptr = out_buf + 1; mptr < out_buf + DCTSIZE2; mptr++)
    {
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    3838:	8fc20020 	lw	v0,32(s8)
    383c:	00000000 	sll	zero,zero,0x0
    3840:	28420040 	slti	v0,v0,64
    3844:	1440ff6b 	bnez	v0,35f4 <DecodeHuffMCU+0x20c>
    3848:	00000000 	sll	zero,zero,0x0
    384c:	08000e19 	j	3864 <DecodeHuffMCU+0x47c>
    3850:	00000000 	sll	zero,zero,0x0
      n = (r >> 4) & 0xf;	/* n = run-length */

      if (s)
	{
	  if ((k += n) >= DCTSIZE2)	/* JPEG Mistake */
	    break;
    3854:	00000000 	sll	zero,zero,0x0
    3858:	08000e19 	j	3864 <DecodeHuffMCU+0x47c>
    385c:	00000000 	sll	zero,zero,0x0
	}
      else if (n == 15)		/* Zero run length code extnd */
	k += 16;
      else
	{
	  break;
    3860:	00000000 	sll	zero,zero,0x0
	}
    }
}
    3864:	03c0e821 	addu	sp,s8,zero
    3868:	8fbf0044 	lw	ra,68(sp)
    386c:	8fbe0040 	lw	s8,64(sp)
    3870:	8fb0003c 	lw	s0,60(sp)
    3874:	27bd0048 	addiu	sp,sp,72
    3878:	03e00008 	jr	ra
    387c:	00000000 	sll	zero,zero,0x0

00003880 <jpeg_init_decompress>:
/*
 * Initialize after reading markers
 */
void
jpeg_init_decompress ()
{
    3880:	27bdffd8 	addiu	sp,sp,-40
    3884:	afbf0024 	sw	ra,36(sp)
    3888:	afbe0020 	sw	s8,32(sp)
    388c:	03a0f021 	addu	s8,sp,zero
  int tmp;
  /*
   * Get MCU number
   */
  p_jinfo_MCUHeight = (p_jinfo_image_height - 1) / 8 + 1;
    3890:	87820000 	lh	v0,0(gp)
    3894:	00000000 	sll	zero,zero,0x0
    3898:	2442ffff 	addiu	v0,v0,-1
    389c:	04410002 	bgez	v0,38a8 <jpeg_init_decompress+0x28>
    38a0:	00000000 	sll	zero,zero,0x0
    38a4:	24420007 	addiu	v0,v0,7
    38a8:	000210c3 	sra	v0,v0,0x3
    38ac:	24420001 	addiu	v0,v0,1
    38b0:	af820000 	sw	v0,0(gp)
  p_jinfo_MCUWidth = (p_jinfo_image_width - 1) / 8 + 1;
    38b4:	87820000 	lh	v0,0(gp)
    38b8:	00000000 	sll	zero,zero,0x0
    38bc:	2442ffff 	addiu	v0,v0,-1
    38c0:	04410002 	bgez	v0,38cc <jpeg_init_decompress+0x4c>
    38c4:	00000000 	sll	zero,zero,0x0
    38c8:	24420007 	addiu	v0,v0,7
    38cc:	000210c3 	sra	v0,v0,0x3
    38d0:	24420001 	addiu	v0,v0,1
    38d4:	af820000 	sw	v0,0(gp)
  p_jinfo_NumMCU = p_jinfo_MCUHeight * p_jinfo_MCUWidth;
    38d8:	8f830000 	lw	v1,0(gp)
    38dc:	8f820000 	lw	v0,0(gp)
    38e0:	00000000 	sll	zero,zero,0x0
    38e4:	00620018 	mult	v1,v0
    38e8:	00001012 	mflo	v0
    38ec:	af820000 	sw	v0,0(gp)

  /*
   * Create Huffman Table for decoding
   */
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[0][0],
    38f0:	3c020000 	lui	v0,0x0
    38f4:	24440000 	addiu	a0,v0,0
    38f8:	8f850000 	lw	a1,0(gp)
    38fc:	3c020000 	lui	v0,0x0
    3900:	24430000 	addiu	v1,v0,0
    3904:	3c020000 	lui	v0,0x0
    3908:	24420000 	addiu	v0,v0,0
    390c:	3c060000 	lui	a2,0x0
    3910:	24c60000 	addiu	a2,a2,0
    3914:	afa60010 	sw	a2,16(sp)
    3918:	00603021 	addu	a2,v1,zero
    391c:	00403821 	addu	a3,v0,zero
    3920:	0c000000 	jal	0 <read_byte>
    3924:	00000000 	sll	zero,zero,0x0
    3928:	afc20018 	sw	v0,24(s8)
			    p_jinfo_dc_dhuff_tbl_ml[0],
			    &p_jinfo_dc_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[0][0],
			    &p_jinfo_dc_dhuff_tbl_valptr[0][0]);
  p_jinfo_dc_dhuff_tbl_ml[0] = tmp;
    392c:	8fc20018 	lw	v0,24(s8)
    3930:	00000000 	sll	zero,zero,0x0
    3934:	af820000 	sw	v0,0(gp)
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[1][0],
    3938:	3c020000 	lui	v0,0x0
    393c:	24420000 	addiu	v0,v0,0
    3940:	24440090 	addiu	a0,v0,144
    3944:	8f850004 	lw	a1,4(gp)
			    p_jinfo_dc_dhuff_tbl_ml[1],
			    &p_jinfo_dc_dhuff_tbl_maxcode[1][0],
    3948:	3c020000 	lui	v0,0x0
    394c:	24420000 	addiu	v0,v0,0
			    p_jinfo_dc_dhuff_tbl_ml[0],
			    &p_jinfo_dc_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[0][0],
			    &p_jinfo_dc_dhuff_tbl_valptr[0][0]);
  p_jinfo_dc_dhuff_tbl_ml[0] = tmp;
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[1][0],
    3950:	24430090 	addiu	v1,v0,144
			    p_jinfo_dc_dhuff_tbl_ml[1],
			    &p_jinfo_dc_dhuff_tbl_maxcode[1][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[1][0],
    3954:	3c020000 	lui	v0,0x0
    3958:	24420000 	addiu	v0,v0,0
			    p_jinfo_dc_dhuff_tbl_ml[0],
			    &p_jinfo_dc_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[0][0],
			    &p_jinfo_dc_dhuff_tbl_valptr[0][0]);
  p_jinfo_dc_dhuff_tbl_ml[0] = tmp;
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[1][0],
    395c:	24420090 	addiu	v0,v0,144
			    p_jinfo_dc_dhuff_tbl_ml[1],
			    &p_jinfo_dc_dhuff_tbl_maxcode[1][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[1][0],
			    &p_jinfo_dc_dhuff_tbl_valptr[1][0]);
    3960:	3c060000 	lui	a2,0x0
    3964:	24c60000 	addiu	a2,a2,0
			    p_jinfo_dc_dhuff_tbl_ml[0],
			    &p_jinfo_dc_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[0][0],
			    &p_jinfo_dc_dhuff_tbl_valptr[0][0]);
  p_jinfo_dc_dhuff_tbl_ml[0] = tmp;
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[1][0],
    3968:	24c60090 	addiu	a2,a2,144
    396c:	afa60010 	sw	a2,16(sp)
    3970:	00603021 	addu	a2,v1,zero
    3974:	00403821 	addu	a3,v0,zero
    3978:	0c000000 	jal	0 <read_byte>
    397c:	00000000 	sll	zero,zero,0x0
    3980:	afc20018 	sw	v0,24(s8)
			    p_jinfo_dc_dhuff_tbl_ml[1],
			    &p_jinfo_dc_dhuff_tbl_maxcode[1][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[1][0],
			    &p_jinfo_dc_dhuff_tbl_valptr[1][0]);
  p_jinfo_dc_dhuff_tbl_ml[1] = tmp;
    3984:	8fc20018 	lw	v0,24(s8)
    3988:	00000000 	sll	zero,zero,0x0
    398c:	af820004 	sw	v0,4(gp)
  tmp = huff_make_dhuff_tb (&p_jinfo_ac_xhuff_tbl_bits[0][0],
    3990:	3c020000 	lui	v0,0x0
    3994:	24440000 	addiu	a0,v0,0
    3998:	8f850000 	lw	a1,0(gp)
    399c:	3c020000 	lui	v0,0x0
    39a0:	24430000 	addiu	v1,v0,0
    39a4:	3c020000 	lui	v0,0x0
    39a8:	24420000 	addiu	v0,v0,0
    39ac:	3c060000 	lui	a2,0x0
    39b0:	24c60000 	addiu	a2,a2,0
    39b4:	afa60010 	sw	a2,16(sp)
    39b8:	00603021 	addu	a2,v1,zero
    39bc:	00403821 	addu	a3,v0,zero
    39c0:	0c000000 	jal	0 <read_byte>
    39c4:	00000000 	sll	zero,zero,0x0
    39c8:	afc20018 	sw	v0,24(s8)
			    p_jinfo_ac_dhuff_tbl_ml[0],
			    &p_jinfo_ac_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_ac_dhuff_tbl_mincode[0][0],
			    &p_jinfo_ac_dhuff_tbl_valptr[0][0]);
  p_jinfo_ac_dhuff_tbl_ml[0] = tmp;
    39cc:	8fc20018 	lw	v0,24(s8)
    39d0:	00000000 	sll	zero,zero,0x0
    39d4:	af820000 	sw	v0,0(gp)
  tmp = huff_make_dhuff_tb (&p_jinfo_ac_xhuff_tbl_bits[1][0],
    39d8:	3c020000 	lui	v0,0x0
    39dc:	24420000 	addiu	v0,v0,0
    39e0:	24440090 	addiu	a0,v0,144
    39e4:	8f850004 	lw	a1,4(gp)
			    p_jinfo_ac_dhuff_tbl_ml[1],
			    &p_jinfo_ac_dhuff_tbl_maxcode[1][0],
    39e8:	3c020000 	lui	v0,0x0
    39ec:	24420000 	addiu	v0,v0,0
			    p_jinfo_ac_dhuff_tbl_ml[0],
			    &p_jinfo_ac_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_ac_dhuff_tbl_mincode[0][0],
			    &p_jinfo_ac_dhuff_tbl_valptr[0][0]);
  p_jinfo_ac_dhuff_tbl_ml[0] = tmp;
  tmp = huff_make_dhuff_tb (&p_jinfo_ac_xhuff_tbl_bits[1][0],
    39f0:	24430090 	addiu	v1,v0,144
			    p_jinfo_ac_dhuff_tbl_ml[1],
			    &p_jinfo_ac_dhuff_tbl_maxcode[1][0],
			    &p_jinfo_ac_dhuff_tbl_mincode[1][0],
    39f4:	3c020000 	lui	v0,0x0
    39f8:	24420000 	addiu	v0,v0,0
			    p_jinfo_ac_dhuff_tbl_ml[0],
			    &p_jinfo_ac_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_ac_dhuff_tbl_mincode[0][0],
			    &p_jinfo_ac_dhuff_tbl_valptr[0][0]);
  p_jinfo_ac_dhuff_tbl_ml[0] = tmp;
  tmp = huff_make_dhuff_tb (&p_jinfo_ac_xhuff_tbl_bits[1][0],
    39fc:	24420090 	addiu	v0,v0,144
			    p_jinfo_ac_dhuff_tbl_ml[1],
			    &p_jinfo_ac_dhuff_tbl_maxcode[1][0],
			    &p_jinfo_ac_dhuff_tbl_mincode[1][0],
			    &p_jinfo_ac_dhuff_tbl_valptr[1][0]);
    3a00:	3c060000 	lui	a2,0x0
    3a04:	24c60000 	addiu	a2,a2,0
			    p_jinfo_ac_dhuff_tbl_ml[0],
			    &p_jinfo_ac_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_ac_dhuff_tbl_mincode[0][0],
			    &p_jinfo_ac_dhuff_tbl_valptr[0][0]);
  p_jinfo_ac_dhuff_tbl_ml[0] = tmp;
  tmp = huff_make_dhuff_tb (&p_jinfo_ac_xhuff_tbl_bits[1][0],
    3a08:	24c60090 	addiu	a2,a2,144
    3a0c:	afa60010 	sw	a2,16(sp)
    3a10:	00603021 	addu	a2,v1,zero
    3a14:	00403821 	addu	a3,v0,zero
    3a18:	0c000000 	jal	0 <read_byte>
    3a1c:	00000000 	sll	zero,zero,0x0
    3a20:	afc20018 	sw	v0,24(s8)
			    p_jinfo_ac_dhuff_tbl_ml[1],
			    &p_jinfo_ac_dhuff_tbl_maxcode[1][0],
			    &p_jinfo_ac_dhuff_tbl_mincode[1][0],
			    &p_jinfo_ac_dhuff_tbl_valptr[1][0]);
  p_jinfo_ac_dhuff_tbl_ml[1] = tmp;
    3a24:	8fc20018 	lw	v0,24(s8)
    3a28:	00000000 	sll	zero,zero,0x0
    3a2c:	af820004 	sw	v0,4(gp)
}
    3a30:	03c0e821 	addu	sp,s8,zero
    3a34:	8fbf0024 	lw	ra,36(sp)
    3a38:	8fbe0020 	lw	s8,32(sp)
    3a3c:	27bd0028 	addiu	sp,sp,40
    3a40:	03e00008 	jr	ra
    3a44:	00000000 	sll	zero,zero,0x0

00003a48 <jpeg_read>:



void
jpeg_read (unsigned char *read_buf)
{
    3a48:	27bdffe8 	addiu	sp,sp,-24
    3a4c:	afbf0014 	sw	ra,20(sp)
    3a50:	afbe0010 	sw	s8,16(sp)
    3a54:	03a0f021 	addu	s8,sp,zero
    3a58:	afc40018 	sw	a0,24(s8)

  /*
   * Read markers
   */
  read_markers (read_buf);
    3a5c:	8fc40018 	lw	a0,24(s8)
    3a60:	0c000000 	jal	0 <read_byte>
    3a64:	00000000 	sll	zero,zero,0x0


  /*
   * Initialize the information used for decoding
   */
  jpeg_init_decompress ();
    3a68:	0c000000 	jal	0 <read_byte>
    3a6c:	00000000 	sll	zero,zero,0x0

  /*
   * Start decoding
   */
  decode_start (&OutData_image_width, &OutData_image_height,
    3a70:	27840000 	addiu	a0,gp,0
    3a74:	27850000 	addiu	a1,gp,0
    3a78:	3c020000 	lui	v0,0x0
    3a7c:	24460000 	addiu	a2,v0,0
    3a80:	3c020000 	lui	v0,0x0
    3a84:	24470000 	addiu	a3,v0,0
    3a88:	0c000000 	jal	0 <read_byte>
    3a8c:	00000000 	sll	zero,zero,0x0
		&OutData_comp_vpos[0], &OutData_comp_hpos[0]);

}
    3a90:	03c0e821 	addu	sp,s8,zero
    3a94:	8fbf0014 	lw	ra,20(sp)
    3a98:	8fbe0010 	lw	s8,16(sp)
    3a9c:	27bd0018 	addiu	sp,sp,24
    3aa0:	03e00008 	jr	ra
    3aa4:	00000000 	sll	zero,zero,0x0

00003aa8 <jpeg2bmp_main>:
unsigned char JpegFileBuf[JPEG_FILE_SIZE];


int
jpeg2bmp_main ()
{
    3aa8:	27bdffd8 	addiu	sp,sp,-40
    3aac:	afbf0024 	sw	ra,36(sp)
    3ab0:	afbe0020 	sw	s8,32(sp)
    3ab4:	03a0f021 	addu	s8,sp,zero
  int i, j;

  /*
   * Store input data in buffer
   */
  c = JpegFileBuf;
    3ab8:	3c020000 	lui	v0,0x0
    3abc:	24420000 	addiu	v0,v0,0
    3ac0:	afc20010 	sw	v0,16(s8)
  for (i = 0; i < JPEGSIZE; i++)
    3ac4:	afc00014 	sw	zero,20(s8)
    3ac8:	08000eca 	j	3b28 <jpeg2bmp_main+0x80>
    3acc:	00000000 	sll	zero,zero,0x0
    
    {
        ci = hana_jpg[i];
    3ad0:	3c020000 	lui	v0,0x0
    3ad4:	24430000 	addiu	v1,v0,0
    3ad8:	8fc20014 	lw	v0,20(s8)
    3adc:	00000000 	sll	zero,zero,0x0
    3ae0:	00621021 	addu	v0,v1,v0
    3ae4:	90420000 	lbu	v0,0(v0)
    3ae8:	00000000 	sll	zero,zero,0x0
    3aec:	afc2001c 	sw	v0,28(s8)
        *c++ = ci;
    3af0:	8fc2001c 	lw	v0,28(s8)
    3af4:	00000000 	sll	zero,zero,0x0
    3af8:	304300ff 	andi	v1,v0,0xff
    3afc:	8fc20010 	lw	v0,16(s8)
    3b00:	00000000 	sll	zero,zero,0x0
    3b04:	a0430000 	sb	v1,0(v0)
    3b08:	8fc20010 	lw	v0,16(s8)
    3b0c:	00000000 	sll	zero,zero,0x0
    3b10:	24420001 	addiu	v0,v0,1
    3b14:	afc20010 	sw	v0,16(s8)

  /*
   * Store input data in buffer
   */
  c = JpegFileBuf;
  for (i = 0; i < JPEGSIZE; i++)
    3b18:	8fc20014 	lw	v0,20(s8)
    3b1c:	00000000 	sll	zero,zero,0x0
    3b20:	24420001 	addiu	v0,v0,1
    3b24:	afc20014 	sw	v0,20(s8)
    3b28:	8fc20014 	lw	v0,20(s8)
    3b2c:	00000000 	sll	zero,zero,0x0
    3b30:	28421457 	slti	v0,v0,5207
    3b34:	1440ffe6 	bnez	v0,3ad0 <jpeg2bmp_main+0x28>
    3b38:	00000000 	sll	zero,zero,0x0
    {
        ci = hana_jpg[i];
        *c++ = ci;
    }

  jpeg_read (JpegFileBuf);
    3b3c:	3c020000 	lui	v0,0x0
    3b40:	24440000 	addiu	a0,v0,0
    3b44:	0c000000 	jal	0 <read_byte>
    3b48:	00000000 	sll	zero,zero,0x0

  for (i = 0; i < RGB_NUM; i++)
    3b4c:	afc00014 	sw	zero,20(s8)
    3b50:	08000f15 	j	3c54 <jpeg2bmp_main+0x1ac>
    3b54:	00000000 	sll	zero,zero,0x0
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
    3b58:	afc00018 	sw	zero,24(s8)
    3b5c:	08000f0c 	j	3c30 <jpeg2bmp_main+0x188>
    3b60:	00000000 	sll	zero,zero,0x0
	{
	  if (OutData_comp_buf[i][j] != hana_bmp[i][j])
    3b64:	3c050000 	lui	a1,0x0
    3b68:	8fc40014 	lw	a0,20(s8)
    3b6c:	00000000 	sll	zero,zero,0x0
    3b70:	00801821 	addu	v1,a0,zero
    3b74:	00031080 	sll	v0,v1,0x2
    3b78:	00401821 	addu	v1,v0,zero
    3b7c:	00031100 	sll	v0,v1,0x4
    3b80:	00431023 	subu	v0,v0,v1
    3b84:	00441023 	subu	v0,v0,a0
    3b88:	00021880 	sll	v1,v0,0x2
    3b8c:	00621823 	subu	v1,v1,v0
    3b90:	00031100 	sll	v0,v1,0x4
    3b94:	00431023 	subu	v0,v0,v1
    3b98:	00021040 	sll	v0,v0,0x1
    3b9c:	8fc30018 	lw	v1,24(s8)
    3ba0:	00000000 	sll	zero,zero,0x0
    3ba4:	00431821 	addu	v1,v0,v1
    3ba8:	24a20000 	addiu	v0,a1,0
    3bac:	00621021 	addu	v0,v1,v0
    3bb0:	90450000 	lbu	a1,0(v0)
    3bb4:	3c060000 	lui	a2,0x0
    3bb8:	8fc40014 	lw	a0,20(s8)
    3bbc:	00000000 	sll	zero,zero,0x0
    3bc0:	00801821 	addu	v1,a0,zero
    3bc4:	00031080 	sll	v0,v1,0x2
    3bc8:	00401821 	addu	v1,v0,zero
    3bcc:	00031100 	sll	v0,v1,0x4
    3bd0:	00431023 	subu	v0,v0,v1
    3bd4:	00441023 	subu	v0,v0,a0
    3bd8:	00021880 	sll	v1,v0,0x2
    3bdc:	00621823 	subu	v1,v1,v0
    3be0:	00031100 	sll	v0,v1,0x4
    3be4:	00431023 	subu	v0,v0,v1
    3be8:	00021040 	sll	v0,v0,0x1
    3bec:	8fc30018 	lw	v1,24(s8)
    3bf0:	00000000 	sll	zero,zero,0x0
    3bf4:	00431821 	addu	v1,v0,v1
    3bf8:	24c20000 	addiu	v0,a2,0
    3bfc:	00621021 	addu	v0,v1,v0
    3c00:	90420000 	lbu	v0,0(v0)
    3c04:	00000000 	sll	zero,zero,0x0
    3c08:	10a20005 	beq	a1,v0,3c20 <jpeg2bmp_main+0x178>
    3c0c:	00000000 	sll	zero,zero,0x0
	    {
	      main_result++;
    3c10:	8f820000 	lw	v0,0(gp)
    3c14:	00000000 	sll	zero,zero,0x0
    3c18:	24420001 	addiu	v0,v0,1
    3c1c:	af820000 	sw	v0,0(gp)

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
    3c20:	8fc20018 	lw	v0,24(s8)
    3c24:	00000000 	sll	zero,zero,0x0
    3c28:	24420001 	addiu	v0,v0,1
    3c2c:	afc20018 	sw	v0,24(s8)
    3c30:	8fc20018 	lw	v0,24(s8)
    3c34:	00000000 	sll	zero,zero,0x0
    3c38:	284214be 	slti	v0,v0,5310
    3c3c:	1440ffc9 	bnez	v0,3b64 <jpeg2bmp_main+0xbc>
    3c40:	00000000 	sll	zero,zero,0x0
        *c++ = ci;
    }

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    3c44:	8fc20014 	lw	v0,20(s8)
    3c48:	00000000 	sll	zero,zero,0x0
    3c4c:	24420001 	addiu	v0,v0,1
    3c50:	afc20014 	sw	v0,20(s8)
    3c54:	8fc20014 	lw	v0,20(s8)
    3c58:	00000000 	sll	zero,zero,0x0
    3c5c:	28420003 	slti	v0,v0,3
    3c60:	1440ffbd 	bnez	v0,3b58 <jpeg2bmp_main+0xb0>
    3c64:	00000000 	sll	zero,zero,0x0
	    {
	      main_result++;
	    }
	}
    }
  if (OutData_image_width != out_width)
    3c68:	8f830000 	lw	v1,0(gp)
    3c6c:	8f820000 	lw	v0,0(gp)
    3c70:	00000000 	sll	zero,zero,0x0
    3c74:	10620005 	beq	v1,v0,3c8c <jpeg2bmp_main+0x1e4>
    3c78:	00000000 	sll	zero,zero,0x0
    {
      main_result++;
    3c7c:	8f820000 	lw	v0,0(gp)
    3c80:	00000000 	sll	zero,zero,0x0
    3c84:	24420001 	addiu	v0,v0,1
    3c88:	af820000 	sw	v0,0(gp)
    }
  if (OutData_image_height != out_length)
    3c8c:	8f830000 	lw	v1,0(gp)
    3c90:	8f820000 	lw	v0,0(gp)
    3c94:	00000000 	sll	zero,zero,0x0
    3c98:	10620005 	beq	v1,v0,3cb0 <jpeg2bmp_main+0x208>
    3c9c:	00000000 	sll	zero,zero,0x0
    {
      main_result++;
    3ca0:	8f820000 	lw	v0,0(gp)
    3ca4:	00000000 	sll	zero,zero,0x0
    3ca8:	24420001 	addiu	v0,v0,1
    3cac:	af820000 	sw	v0,0(gp)
    }
  return (0);
    3cb0:	00001021 	addu	v0,zero,zero
}
    3cb4:	03c0e821 	addu	sp,s8,zero
    3cb8:	8fbf0024 	lw	ra,36(sp)
    3cbc:	8fbe0020 	lw	s8,32(sp)
    3cc0:	27bd0028 	addiu	sp,sp,40
    3cc4:	03e00008 	jr	ra
    3cc8:	00000000 	sll	zero,zero,0x0

00003ccc <main>:
#include "jfif_read.c"
#include "jpeg2bmp.c"

int
main ()
{
    3ccc:	27bdffe8 	addiu	sp,sp,-24
    3cd0:	afbf0014 	sw	ra,20(sp)
    3cd4:	afbe0010 	sw	s8,16(sp)
    3cd8:	03a0f021 	addu	s8,sp,zero
  main_result = 0;
    3cdc:	af800000 	sw	zero,0(gp)
  jpeg2bmp_main ();
    3ce0:	0c000000 	jal	0 <read_byte>
    3ce4:	00000000 	sll	zero,zero,0x0

  printf ("%d\n", main_result);
    3ce8:	8f820000 	lw	v0,0(gp)
    3cec:	3c030000 	lui	v1,0x0
    3cf0:	24645974 	addiu	a0,v1,22900
    3cf4:	00402821 	addu	a1,v0,zero
    3cf8:	0c000000 	jal	0 <read_byte>
    3cfc:	00000000 	sll	zero,zero,0x0

  return main_result;
    3d00:	8f820000 	lw	v0,0(gp)
}
    3d04:	03c0e821 	addu	sp,s8,zero
    3d08:	8fbf0014 	lw	ra,20(sp)
    3d0c:	8fbe0010 	lw	s8,16(sp)
    3d10:	27bd0018 	addiu	sp,sp,24
    3d14:	03e00008 	jr	ra
    3d18:	00000000 	sll	zero,zero,0x0

Disassembly of section .rodata:

00000000 <hana_jpg>:
       0:	ffd8ffe0 	0xffd8ffe0
       4:	00104a46 	0x104a46
       8:	49460001 	0x49460001
       c:	01000001 	0x1000001
      10:	00010000 	sll	zero,at,0x0
      14:	ffdb0043 	0xffdb0043
      18:	00030202 	srl	zero,v1,0x8
      1c:	02020203 	0x2020203
      20:	02020203 	0x2020203
      24:	03030304 	0x3030304
      28:	06040404 	0x6040404
      2c:	04040806 	0x4040806
      30:	06050609 	0x6050609
      34:	080a0a09 	j	282824 <lmask+0x27cf64>
      38:	0809090a 	j	242428 <lmask+0x23cb68>
      3c:	0c0f0c0a 	jal	3c3028 <lmask+0x3bd768>
      40:	0b0e0b09 	j	c382c24 <lmask+0xc37d364>
      44:	090d110d 	j	4344434 <lmask+0x433eb74>
      48:	0e0f1010 	jal	83c4040 <lmask+0x83be780>
      4c:	11100a0c 	beq	t0,s0,2880 <hana_bmp+0x1428>
      50:	12131210 	beq	s0,s3,4894 <hana_bmp+0x343c>
      54:	130f1010 	beq	t8,t7,4098 <hana_bmp+0x2c40>
      58:	10ffdb00 	beq	a3,ra,ffff6c5c <lmask+0xffff139c>
      5c:	43010303 	c0	0x1010303
      60:	03040304 	0x3040304
      64:	08040408 	j	101020 <lmask+0xfb760>
      68:	100b090b 	beq	zero,t3,2498 <hana_bmp+0x1040>
      6c:	10101010 	beq	zero,s0,40b0 <hana_bmp+0x2c58>
      70:	10101010 	beq	zero,s0,40b4 <hana_bmp+0x2c5c>
      74:	10101010 	beq	zero,s0,40b8 <hana_bmp+0x2c60>
      78:	10101010 	beq	zero,s0,40bc <hana_bmp+0x2c64>
      7c:	10101010 	beq	zero,s0,40c0 <hana_bmp+0x2c68>
      80:	10101010 	beq	zero,s0,40c4 <hana_bmp+0x2c6c>
      84:	10101010 	beq	zero,s0,40c8 <hana_bmp+0x2c70>
      88:	10101010 	beq	zero,s0,40cc <hana_bmp+0x2c74>
      8c:	10101010 	beq	zero,s0,40d0 <hana_bmp+0x2c78>
      90:	10101010 	beq	zero,s0,40d4 <hana_bmp+0x2c7c>
      94:	10101010 	beq	zero,s0,40d8 <hana_bmp+0x2c80>
      98:	10101010 	beq	zero,s0,40dc <hana_bmp+0x2c84>
      9c:	1010ffc0 	beq	zero,s0,ffffffa0 <lmask+0xffffa6e0>
      a0:	00110800 	sll	at,s1,0x0
      a4:	3b005a03 	xori	zero,t8,0x5a03
      a8:	01220002 	0x1220002
      ac:	11010311 	beq	t0,at,cf4 <hana_jpg+0xcf4>
      b0:	01ffc400 	0x1ffc400
      b4:	1f000001 	bgtz	t8,bc <hana_jpg+0xbc>
      b8:	05010101 	bgez	t0,4c0 <hana_jpg+0x4c0>
      bc:	01010100 	0x1010100
      c0:	00000000 	sll	zero,zero,0x0
      c4:	00000001 	0x1
      c8:	02030405 	0x2030405
      cc:	06070809 	0x6070809
      d0:	0a0bffc4 	j	82fff10 <lmask+0x82fa650>
      d4:	00b51000 	0xb51000
      d8:	02010303 	0x2010303
      dc:	02040305 	0x2040305
      e0:	05040400 	0x5040400
      e4:	00017d01 	0x17d01
      e8:	02030004 	sllv	zero,v1,s0
      ec:	11051221 	beq	t0,a1,4974 <hana_bmp+0x351c>
      f0:	31410613 	andi	at,t2,0x613
      f4:	51610722 	0x51610722
      f8:	71143281 	0x71143281
      fc:	91a10823 	lbu	at,2083(t5)
     100:	42b1c115 	c0	0xb1c115
     104:	52d1f024 	0x52d1f024
     108:	33627282 	andi	v0,k1,0x7282
     10c:	090a1617 	j	428585c <lmask+0x427ff9c>
     110:	18191a25 	0x18191a25
     114:	26272829 	addiu	a3,s1,10281
     118:	2a343536 	slti	s4,s1,13622
     11c:	3738393a 	ori	t8,t9,0x393a
     120:	43444546 	c0	0x1444546
     124:	4748494a 	c1	0x148494a
     128:	53545556 	0x53545556
     12c:	5758595a 	0x5758595a
     130:	63646566 	0x63646566
     134:	6768696a 	0x6768696a
     138:	73747576 	0x73747576
     13c:	7778797a 	jalx	de1e5e8 <lmask+0xde18d28>
     140:	83848586 	lb	a0,-31354(gp)
     144:	8788898a 	lh	t0,-30326(gp)
     148:	92939495 	lbu	s3,-27499(s4)
     14c:	96979899 	lhu	s7,-26471(s4)
     150:	9aa2a3a4 	lwr	v0,-23644(s5)
     154:	a5a6a7a8 	sh	a2,-22616(t5)
     158:	a9aab2b3 	swl	t2,-19789(t5)
     15c:	b4b5b6b7 	0xb4b5b6b7
     160:	b8b9bac2 	swr	t9,-17726(a1)
     164:	c3c4c5c6 	lwc0	$4,-14906(s8)
     168:	c7c8c9ca 	lwc1	$f8,-13878(s8)
     16c:	d2d3d4d5 	0xd2d3d4d5
     170:	d6d7d8d9 	0xd6d7d8d9
     174:	dae1e2e3 	0xdae1e2e3
     178:	e4e5e6e7 	swc1	$f5,-6425(a3)
     17c:	e8e9eaf1 	swc2	$9,-5391(a3)
     180:	f2f3f4f5 	0xf2f3f4f5
     184:	f6f7f8f9 	0xf6f7f8f9
     188:	faffc400 	0xfaffc400
     18c:	1f010003 	0x1f010003
     190:	01010101 	0x1010101
     194:	01010101 	0x1010101
     198:	01000000 	0x1000000
     19c:	00000001 	0x1
     1a0:	02030405 	0x2030405
     1a4:	06070809 	0x6070809
     1a8:	0a0bffc4 	j	82fff10 <lmask+0x82fa650>
     1ac:	00b51100 	0xb51100
     1b0:	02010204 	0x2010204
     1b4:	04030407 	0x4030407
     1b8:	05040400 	0x5040400
     1bc:	01027700 	0x1027700
     1c0:	01020311 	0x1020311
     1c4:	04052131 	0x4052131
     1c8:	06124151 	0x6124151
     1cc:	07617113 	bgez	k1,1c61c <lmask+0x16d5c>
     1d0:	22328108 	addi	s2,s1,-32504
     1d4:	144291a1 	bne	v0,v0,fffe485c <lmask+0xfffdef9c>
     1d8:	b1c10923 	0xb1c10923
     1dc:	3352f015 	andi	s2,k0,0xf015
     1e0:	6272d10a 	0x6272d10a
     1e4:	162434e1 	bne	s1,a0,d56c <lmask+0x7cac>
     1e8:	25f11718 	addiu	s1,t7,5912
     1ec:	191a2627 	0x191a2627
     1f0:	28292a35 	slti	t1,at,10805
     1f4:	36373839 	ori	s7,s1,0x3839
     1f8:	3a434445 	xori	v1,s2,0x4445
     1fc:	46474849 	c1	0x474849
     200:	4a535455 	c2	0x535455
     204:	56575859 	0x56575859
     208:	5a636465 	0x5a636465
     20c:	66676869 	0x66676869
     210:	6a737475 	0x6a737475
     214:	76777879 	jalx	9dde1e4 <lmask+0x9dd8924>
     218:	7a828384 	0x7a828384
     21c:	85868788 	lh	a2,-30840(t4)
     220:	898a9293 	lwl	t2,-28013(t4)
     224:	94959697 	lhu	s5,-26985(a0)
     228:	98999aa2 	lwr	t9,-25950(a0)
     22c:	a3a4a5a6 	sb	a0,-23130(sp)
     230:	a7a8a9aa 	sh	t0,-22102(sp)
     234:	b2b3b4b5 	0xb2b3b4b5
     238:	b6b7b8b9 	0xb6b7b8b9
     23c:	bac2c3c4 	swr	v0,-15420(s6)
     240:	c5c6c7c8 	lwc1	$f6,-14392(t6)
     244:	c9cad2d3 	lwc2	$10,-11565(t6)
     248:	d4d5d6d7 	0xd4d5d6d7
     24c:	d8d9dae2 	0xd8d9dae2
     250:	e3e4e5e6 	swc0	$4,-6682(ra)
     254:	e7e8e9ea 	swc1	$f8,-5654(ra)
     258:	f2f3f4f5 	0xf2f3f4f5
     25c:	f6f7f8f9 	0xf6f7f8f9
     260:	faffda00 	0xfaffda00
     264:	0c030100 	jal	c0400 <lmask+0xbab40>
     268:	02110311 	0x2110311
     26c:	003f00f5 	0x3f00f5
     270:	af005aea 	sw	zero,23274(t8)
     274:	17b3af8a 	bne	sp,s3,fffec0a0 <lmask+0xfffe67e0>
     278:	3c4f31f1 	0x3c4f31f1
     27c:	a47a9bcf 	sh	k0,-25649(v1)
     280:	a9e9be22 	swl	t1,-16862(t7)
     284:	b067167a 	0xb067167a
     288:	6c56f12a 	0x6c56f12a
     28c:	5bdaac0c 	0x5bdaac0c
     290:	492cc7cc 	0x492cc7cc
     294:	26401964 	addiu	zero,s2,6500
     298:	2c78e30b 	sltiu	t8,v1,-7413
     29c:	c0e8ba37 	lwc0	$8,-17865(a3)
     2a0:	ed3ba34d 	swc3	$27,-23731(t1)
     2a4:	e34d3b5b 	swc0	$13,15195(k0)
     2a8:	f17f8535 	0xf17f8535
     2ac:	4d06d2d6 	0x4d06d2d6
     2b0:	e2f63bb8 	swc0	$22,15288(s7)
     2b4:	44f0dd58 	0x44f0dd58
     2b8:	4b720488 	c2	0x1720488
     2bc:	33905628 	andi	s0,gp,0x5628
     2c0:	903c982c 	lbu	gp,-26580(at)
     2c4:	55be51ec 	0x55be51ec
     2c8:	bf2a7833 	0xbf2a7833
     2cc:	f68bf10f 	0xf68bf10f
     2d0:	c25f886d 	lwc0	$31,-30611(s2)
     2d4:	a445acea 	sh	a1,-21270(v0)
     2d8:	67c2d1de 	0x67c2d1de
     2dc:	2c71dac3 	sltiu	s1,v1,-9533
     2e0:	759823b6 	jalx	6608ed8 <lmask+0x6603618>
     2e4:	918c8c21 	lbu	t4,-29663(t4)
     2e8:	8db70443 	lw	s7,1091(t5)
     2ec:	bf202000 	0xbf202000
     2f0:	02703a57 	0x2703a57
     2f4:	b0f817f6 	0xb0f817f6
     2f8:	c6f0c0f1 	lwc1	$f16,-16143(s7)
     2fc:	61f14788 	0x61f14788
     300:	fc312c1a 	0xfc312c1a
     304:	bf8eae23 	0xbf8eae23
     308:	b6bad512 	0xb6bad512
     30c:	ff00cbb6 	0xff00cbb6
     310:	d274f58e 	0xd274f58e
     314:	3b68a472 	xori	t0,k1,0xa472
     318:	dcc804b0 	0xdcc804b0
     31c:	b3485940 	0xb3485940
     320:	0ac48ea5 	j	b123a94 <lmask+0xb11e1d4>
     324:	1fb70d8e 	0x1fb70d8e
     328:	a5cf1929 	sh	t7,6441(t6)
     32c:	6b369bbe 	0x6b369bbe
     330:	9a35b79e 	lwr	s5,-18530(s1)
     334:	bdfef317 	0xbdfef317
     338:	24d2e87d 	addiu	s2,a2,-6019
     33c:	0ba96a16 	j	ea5a858 <lmask+0xea54f98>
     340:	1e35f818 	0x1e35f818
     344:	26f14e81 	addiu	s1,s7,20097
     348:	a478964d 	sh	t8,-27059(v1)
     34c:	46da3be9 	c1	0xda3be9
     350:	2d74eb69 	sltiu	s4,t3,-5271
     354:	efed750b 	swc3	$13,29963(ra)
     358:	79445baf 	0x79445baf
     35c:	e38a758e 	swc0	$10,30094(gp)
     360:	48900dd3 	0x48900dd3
     364:	18932c81 	0x18932c81
     368:	4152e181 	0x4152e181
     36c:	3f28f893 	0x3f28f893
     370:	f661f0ab 	0xf661f0ab
     374:	93a6e8cf 	lbu	a2,-5937(sp)
     378:	ac4b7f73 	sw	t3,32627(v0)
     37c:	316b3bab 	andi	t3,t3,0x3bab
     380:	0b792f74 	j	de4bdd0 <lmask+0xde46510>
     384:	bba8e55d 	swr	t0,-6819(sp)
     388:	e9115c97 	swc2	$17,23703(t0)
     38c:	b7751f2e 	0xb7751f2e
     390:	72c1801d 	0x72c1801d
     394:	49c0faab 	0x49c0faab
     398:	c59e0aba 	lwc1	$f30,2746(t4)
     39c:	d7bec91b 	0xd7bec91b
     3a0:	f8aad6ee 	0xf8aad6ee
     3a4:	41637535 	0x41637535
     3a8:	be95676b 	0xbe95676b
     3ac:	1dc59493 	0x1dc59493
     3b0:	88d53305 	lwl	s5,13061(a2)
     3b4:	c7ddb73c 	lwc1	$f29,-18628(s8)
     3b8:	432292e1 	c0	0x12292e1
     3bc:	88322f28 	lwl	s2,12072(at)
     3c0:	5ebc27e1 	0x5ebc27e1
     3c4:	87c54f8c 	lh	a1,20364(s8)
     3c8:	b07c4782 	0xb07c4782
     3cc:	d3c46356 	0xd3c46356
     3d0:	9f45b469 	0x9f45b469
     3d4:	2d66d2ac 	sltiu	a2,t3,-11604
     3d8:	6d125b95 	0x6d125b95
     3dc:	7384866d 	0x7384866d
     3e0:	ebf2ac46 	swc2	$18,-21434(ra)
     3e4:	56601d9f 	0x56601d9f
     3e8:	0e558f40 	jal	9563d00 <lmask+0x955e440>
     3ec:	71eaca18 	0x71eaca18
     3f0:	5a8b92b2 	0x5a8b92b2
     3f4:	4d6cb4f4 	0x4d6cb4f4
     3f8:	d2fd1dff 	0xd2fd1dff
     3fc:	0022bcd9 	0x22bcd9
     400:	f34fc2cd 	0xf34fc2cd
     404:	43c71f03 	c0	0x1c71f03
     408:	be25e95e 	0xbe25e95e
     40c:	2b83457d 	slti	v1,gp,17789
     410:	2843a8bf 	slti	v1,v0,-22337
     414:	87ef6eae 	lh	t7,28334(ra)
     418:	ad9fecf1 	sw	ra,-4879(t4)
     41c:	c9248ab2 	lwc2	$4,-30030(t1)
     420:	c5b98603 	lwc1	$f25,-31229(t5)
     424:	aaec6f50 	swl	t4,28496(s7)
     428:	3b57d61f 	xori	s7,k0,0xd61f
     42c:	b5642b60 	0xb5642b60
     430:	9a459788 	lwr	a1,-26744(s2)
     434:	fc09a09b 	0xfc09a09b
     438:	5d50c5a8 	0x5d50c5a8
     43c:	b6a5169e 	0xb6a5169e
     440:	0cdf6852 	jal	37da148 <lmask+0x37d4888>
     444:	4342d2e0 	c0	0x142d2e0
     448:	61f20120 	0x61f20120
     44c:	9e476ee3 	0x9e476ee3
     450:	63e16fc3 	0x63e16fc3
     454:	2f097c45 	sltiu	t1,t8,31813
     458:	b6f12f8a 	0xb6f12f8a
     45c:	7c753ebf 	0x7c753ebf
     460:	6ed67e36 	0x6ed67e36
     464:	d7e6b885 	0xd7e6b885
     468:	54ba3169 	0x54ba3169
     46c:	96239419 	lhu	v1,-27623(s1)
     470:	8ddc2864 	lw	gp,10340(t6)
     474:	257904b1 	addiu	t9,t3,1201
     478:	071c8eb7 	0x71c8eb7
     47c:	c3fe285d 	lwc0	$30,10333(ra)
     480:	416d3e0a 	0x416d3e0a
     484:	7c4ab5d4 	0x7c4ab5d4
     488:	b5d3a9d9 	0xb5d3a9d9
     48c:	dfedd42e 	0xdfedd42e
     490:	eda1316a 	swc3	$1,12650(t5)
     494:	91c5b544 	lbu	a1,-19132(t6)
     498:	de646020 	0xde646020
     49c:	66591002 	0x66591002
     4a0:	83767693 	lb	s6,30355(k1)
     4a4:	8eb5e752 	lw	s5,-6318(s5)
     4a8:	c0caae0e 	lwc0	$10,-20978(a2)
     4ac:	586a53b7 	0x586a53b7
     4b0:	3aded7b5 	xori	s8,s6,0xd7b5
     4b4:	fa7cccb5 	0xfa7cccb5
     4b8:	944f843c 	lhu	t7,-31684(v0)
     4bc:	4906b3ac 	0x4906b3ac
     4c0:	477dab5c 	c1	0x17dab5c
     4c4:	daac9692 	0xdaac9692
     4c8:	3036a817 	andi	s6,at,0xa817
     4cc:	e4b7801c 	swc1	$f23,-32740(a1)
     4d0:	023d73ec 	0x23d73ec
     4d4:	3bf1c569 	xori	s1,ra,0xc569
     4d8:	7c21f807 	0x7c21f807
     4dc:	e2af8e1a 	swc0	$15,-29158(s5)
     4e0:	f3be9dac 	0xf3be9dac
     4e4:	dbdac3a4 	0xdbdac3a4
     4e8:	5f5aa6a1 	0x5f5aa6a1
     4ec:	6e083711 	0x6e083711
     4f0:	d9499fdf 	0xd9499fdf
     4f4:	4487873b 	0x4487873b
     4f8:	94a6dec4 	lhu	a2,-8508(a1)
     4fc:	e79c60fd 	swc1	$f28,24829(gp)
     500:	11f113e0 	beq	t7,s1,5484 <izigzag_index+0x138>
     504:	9f823c2f 	0x9f823c2f
     508:	e1f7f057 	swc0	$23,-4009(t7)
     50c:	876dae13 	lh	t5,-20973(k1)
     510:	59f0edbc 	0x59f0edbc
     514:	7ac5adc5 	0x7ac5adc5
     518:	c995ee1b 	lwc2	$21,-4581(t4)
     51c:	4f09fbd5 	c3	0x109fbd5
     520:	b8919bcb 	swr	s1,-25653(a0)
     524:	7e598611 	0x7e598611
     528:	72180200 	0x72180200
     52c:	c1af09f8 	lwc0	$15,2552(t5)
     530:	7de16f88 	0x7de16f88
     534:	569e3b8f 	0x569e3b8f
     538:	e20fc22d 	swc0	$15,-15827(s0)
     53c:	404b3c12 	0x404b3c12
     540:	adacd029 	sw	t4,-12247(t5)
     544:	3e4bdc05 	0x3e4bdc05
     548:	12240541 	beq	s1,a0,1a50 <hana_bmp+0x5f8>
     54c:	076b0e41 	0x76b0e41
     550:	cf5e879c 	lwc3	$30,-30820(k0)
     554:	0f030f95 	jal	c0c3e54 <lmask+0xc0be594>
     558:	d5c162a1 	0xd5c162a1
     55c:	4eb2524d 	c3	0xb2524d
     560:	7476fcec 	jalx	1dbf3b0 <lmask+0x1db9af0>
     564:	f4eaec34 	0xf4eaec34
     568:	ef2d74b1 	swc3	$13,29873(t9)
     56c:	cefc6df8 	lwc3	$28,28152(s7)
     570:	0bf113e1 	j	fc44f84 <lmask+0xfc3f6c4>
     574:	7f89b54b 	0x7f89b54b
     578:	7bab35b9 	0x7bab35b9
     57c:	d222bc5b 	0xd222bc5b
     580:	7d3eea58 	0x7d3eea58
     584:	d6296f22 	0xd6296f22
     588:	c2956d99 	lwc0	$21,28057(s4)
     58c:	e0e0953d 	swc0	$0,-27331(a3)
     590:	065323ae 	0x65323ae
     594:	2b99f177 	slti	t9,gp,-3721
     598:	81679b5b 	lb	a3,-25765(t3)
     59c:	82e6c34d 	lb	a2,-15539(s7)
     5a0:	9155ec95 	lbu	s5,-4971(t2)
     5a4:	b705c046 	0xb705c046
     5a8:	f9bafe95 	0xf9bafe95
     5ac:	ec3f173e 	swc3	$31,5950(at)
     5b0:	3ef8ebe2 	0x3ef8ebe2
     5b4:	b78a756f 	0xb78a756f
     5b8:	02f8db51 	0x2f8db51
     5bc:	b7d16f6d 	0xb7d16f6d
     5c0:	8adbc36b 	lwl	k1,-15509(s6)
     5c4:	0c2ab1f9 	jal	aac7e4 <lmask+0xaa6f24>
     5c8:	e8a0ed67 	swc2	$0,-4761(a1)
     5cc:	7064ce7d 	0x7064ce7d
     5d0:	ff00a8a6 	0xff00a8a6
     5d4:	7c2eb6f1 	0x7c2eb6f1
     5d8:	ceb1e17b 	lwc3	$17,-7813(s5)
     5dc:	cb1f16e8 	lwc2	$31,5864(t8)
     5e0:	b3330864 	0xb3330864
     5e4:	fb2dd25b 	0xfb2dd25b
     5e8:	b3297418 	0xb3297418
     5ec:	20b018ef 	addi	s0,a1,6383
     5f0:	eb5e6673 	swc2	$30,26227(k0)
     5f4:	5650c53f 	0x5650c53f
     5f8:	aba7eee8 	swl	a3,-4376(sp)
     5fc:	d3f3fcd7 	0xd3f3fcd7
     600:	99a269e8 	lwr	v0,27112(t5)
     604:	d9f3769b 	0xd9f3769b
     608:	6da868b7 	0x6da868b7
     60c:	d1dd6a9a 	0xd1dd6a9a
     610:	44b32433 	0x44b32433
     614:	6e90943b 	0x6e90943b
     618:	5b19f5ea 	0x5b19f5ea
     61c:	2baa7f11 	slti	t2,sp,32529
     620:	f8765769 	0xf8765769
     624:	1745da1c 	bne	k0,a1,ffff6e98 <lmask+0xffff15d8>
     628:	96036af0 	lhu	v1,27376(s0)
     62c:	0fe3516a 	jal	f8d45a8 <lmask+0xf8cece8>
     630:	ba378c5b 	swr	s7,-29605(s1)
     634:	75f5d5b5 	jalx	7d756d4 <lmask+0x7d6fe14>
     638:	cbda292c 	lwc2	$26,10540(s8)
     63c:	e23c1007 	swc0	$28,4103(s1)
     640:	519039ee 	0x519039ee
     644:	3fad720f 	0x3fad720f
     648:	1de17629 	0x1de17629
     64c:	6d31524e 	0x6d31524e
     650:	38238aba 	xori	v1,at,0x8aba
     654:	78876be8 	0x78876be8
     658:	5f3ba7a2 	0x5f3ba7a2
     65c:	47affc24 	c1	0x1affc24
     660:	f875178e 	0xf875178e
     664:	6eaf6ff5 	0x6eaf6ff5
     668:	dd5b4b83 	0xdd5b4b83
     66c:	4fb3b8d2 	c3	0x1b3b8d2
     670:	ac5e39e4 	sw	s8,14820(v0)
     674:	586f248a 	0x586f248a
     678:	e2ee1844 	swc0	$14,6212(s7)
     67c:	d6cae31b 	0xd6cae31b
     680:	1158a315 	beq	t2,t8,fffe92d8 <lmask+0xfffe3a18>
     684:	63b0b47d 	0x63b0b47d
     688:	b19f4cf8 	0xb19f4cf8
     68c:	a1fb3f4d 	sb	k1,16205(t7)
     690:	f0efc156 	0xf0efc156
     694:	97fac689 	lhu	k0,-14711(ra)
     698:	f6bd1353 	0xf6bd1353
     69c:	b33fd8ba 	0xb33fd8ba
     6a0:	ea98183a 	swc2	$24,6202(s4)
     6a4:	cd034df6 	lwc3	$3,19958(t0)
     6a8:	79c06122 	0x79c06122
     6ac:	31c6e523 	andi	a2,t6,0xe523
     6b0:	31b97380 	andi	t9,t5,0x7380
     6b4:	4b28ae2b 	c2	0x128ae2b
     6b8:	e1bfc48d 	swc0	$31,-15219(t5)
     6bc:	5be067ed 	0x5be067ed
     6c0:	10fe13f0 	beq	a3,s8,5684 <izigzag_index+0x338>
     6c4:	d6a6975e 	0xd6a6975e
     6c8:	1683561a 	bne	s4,v1,15f34 <lmask+0x10674>
     6cc:	723f88a5 	0x723f88a5
     6d0:	fb27d92c 	0xfb27d92c
     6d4:	ae1e30f2 	sw	s8,12530(s0)
     6d8:	79b2305b 	0x79b2305b
     6dc:	60aacccc 	0x60aacccc
     6e0:	dc23a27c 	0xdc23a27c
     6e4:	c3a11f50 	lwc0	$1,8016(sp)
     6e8:	7c46f1ee 	0x7c46f1ee
     6ec:	81e34d63 	lb	v1,19811(t7)
     6f0:	e22e91e1 	swc0	$14,-28191(s1)
     6f4:	bd6f43d4 	0xbd6f43d4
     6f8:	fc05a0f8 	0xfc05a0f8
     6fc:	6a3536f1 	0x6a3536f1
     700:	5fdbcd61 	0x5fdbcd61
     704:	79afddc3 	0x79afddc3
     708:	21864b49 	addi	a2,t4,19273
     70c:	1cc8b1a5 	0x1cc8b1a5
     710:	bc2cf34a 	0xbc2cf34a
     714:	b1155fb5 	0xb1155fb5
     718:	300fb5d0 	andi	t7,zero,0xb5d0
     71c:	4d5f4b83 	0x4d5f4b83
     720:	8e1e7858 	lw	s8,30808(s0)
     724:	ca1abb3e 	lwc2	$26,-17602(s0)
     728:	8baa6fce 	lwl	t2,28622(sp)
     72c:	eb5f91ce 	swc2	$31,-28210(k0)
     730:	e16ba7b8 	swc0	$11,-22600(t3)
     734:	bf09355f 	0xbf09355f
     738:	885e29b0 	lwl	s8,10672(v0)
     73c:	f096a1f1 	0xf096a1f1
     740:	935a7d57 	lbu	k0,32087(k0)
     744:	4cf14e99 	0x4cf14e99
     748:	35c8b193 	ori	t0,t6,0xb193
     74c:	585b78e3 	0x585b78e3
     750:	d3e1b61e 	0xd3e1b61e
     754:	5de15908 	0x5de15908
     758:	591c80b1 	0x591c80b1
     75c:	bae1542c 	swr	at,21548(s7)
     760:	8db9c390 	lw	t9,-15472(t5)
     764:	6b85f13f 	0x6b85f13f
     768:	83fc2de1 	lb	gp,11745(ra)
     76c:	4f07fc5d 	c3	0x107fc5d
     770:	d5fe19fc 	0xd5fe19fc
     774:	6ebbd47c 	0x6ebbd47c
     778:	29a45ba3 	slti	a0,t5,23459
     77c:	c9a541a5 	lwc2	$5,16805(t5)
     780:	bdf4f186 	0xbdf4f186
     784:	8d02b417 	lw	v0,-19433(t0)
     788:	304c8235 	andi	t4,v0,0x8235
     78c:	f383c466 	0xf383c466
     790:	7561098c 	jalx	5842630 <lmask+0x583cd70>
     794:	97694fcd 	lhu	t1,20429(k1)
     798:	5e25e0ff 	0x5e25e0ff
     79c:	00da03e2 	0xda03e2
     7a0:	8784edcc 	lh	a0,-4660(gp)
     7a4:	9a6eaf0c 	lwr	t6,-20724(s3)
     7a8:	49e1bd1e 	0x49e1bd1e
     7ac:	ff00c316 	0xff00c316
     7b0:	8b3da2c8 	lwl	sp,-23864(t9)
     7b4:	23b5bc1b 	addi	s5,sp,-17381
     7b8:	c6c0c570 	lwc1	$f0,-14992(s6)
     7bc:	c26550c5 	lwc0	$5,20677(s3)
     7c0:	9b05428c 	lwr	a1,17036(t8)
     7c4:	654abfd8 	0x654abfd8
     7c8:	bf0061f8 	0xbf0061f8
     7cc:	6a9e11f0 	0x6a9e11f0
     7d0:	d69de24d 	0xd69de24d
     7d4:	1fc31a6e 	0x1fc31a6e
     7d8:	b3a6da47 	0xb3a6da47
     7dc:	a4a0b3d7 	sh	zero,-19497(a1)
     7e0:	ad22967b 	sw	v0,-27013(t1)
     7e4:	5088d0a4 	0x5088d0a4
     7e8:	72cf2c72 	0x72cf2c72
     7ec:	2cb20f20 	sltiu	s2,a1,3872
     7f0:	14246f95 	bne	at,a0,1c648 <lmask+0x16d88>
     7f4:	372b4885 	ori	t3,t9,0x4885
     7f8:	562db053 	0x562db053
     7fc:	866315da 	lh	v1,5594(s3)
     800:	1bb69df5 	0x1bb69df5
     804:	5b5d5bc9 	0x5b5d5bc9
     808:	efaadc77 	swc3	$10,-9097(sp)
     80c:	bab9f3af 	swr	t9,-3153(s5)
     810:	eccdf173 	swc3	$13,-3725(a2)
     814:	54d33c4b 	0x54d33c4b
     818:	e2af0ccd 	swc0	$15,3277(s5)
     81c:	e10d0afe 	swc0	$13,2814(t0)
     820:	43e18d4f 	c0	0x1e18d4f
     824:	53b6d667 	0x53b6d667
     828:	d2fcebbb 	0xd2fcebbb
     82c:	1bb7b231 	0x1bb7b231
     830:	ed926c11 	swc3	$18,27665(t4)
     834:	24771298 	addiu	s7,v1,4760
     838:	d584d805 	0xd584d805
     83c:	c0c31c98 	lwc0	$3,7320(a2)
     840:	64f5ef8b 	0x64f5ef8b
     844:	1f17bc2d 	0x1f17bc2d
     848:	a578a7c0 	sh	t8,-22592(t3)
     84c:	9e2cbcd2 	0x9e2cbcd2
     850:	753f0d78 	jalx	4fc35e0 <lmask+0x4fbdd20>
     854:	4ee88d5b 	c3	0xe88d5b
     858:	49f16e9f 	0x49f16e9f
     85c:	6cd24b67 	0x6cd24b67
     860:	6c6149a1 	0x6c6149a1
     864:	d38420b4 	0xd38420b4
     868:	4ea12741 	c3	0xa12741
     86c:	36e495c8 	ori	a0,s7,0x95c8
     870:	5655893e 	0x5655893e
     874:	fa75df13 	0xfa75df13
     878:	7e1b685f 	0x7e1b685f
     87c:	0b7e1dcd 	j	df87734 <lmask+0xdf81e74>
     880:	ab7c1a9f 	swl	gp,6815(k1)
     884:	4816f0de 	0x4816f0de
     888:	dde8fe27 	0xdde8fe27
     88c:	68a482e2 	0x68a482e2
     890:	7d520120 	0x7d520120
     894:	2ecf1c5f 	sltiu	t7,s6,7263
     898:	bb1751f9 	swr	s7,20985(t8)
     89c:	9b374881 	lwr	s7,18561(t9)
     8a0:	a342a23f 	sb	v0,-24001(k0)
     8a4:	2fe465e1 	sltiu	a0,ra,26081
     8a8:	acbe2078 	sw	s8,8312(a1)
     8ac:	934afd9d 	lbu	t2,-611(k0)
     8b0:	fc21e17f 	0xfc21e17f
     8b4:	087872e2 	j	1e1cb88 <lmask+0x1e172c8>
     8b8:	0d4ee64b 	jal	53b992c <lmask+0x53b406c>
     8bc:	9b0975b9 	lwr	t1,30137(t8)
     8c0:	46fb3b6b 	c1	0xfb3b6b
     8c4:	bb5996d7 	swr	t9,-26921(k0)
     8c8:	ce5de197 	lwc3	$29,-7785(s2)
     8cc:	734722c2 	0x734722c2
     8d0:	610aa59f 	0x610aa59f
     8d4:	2db76ac8 	sltiu	s7,t5,27336
     8d8:	e161e757 	swc0	$1,-6313(t3)
     8dc:	0d2851a5 	jal	4a14694 <lmask+0x4a0edd4>
     8e0:	539bddbe 	0x539bddbe
     8e4:	9e4d2d15 	0x9e4d2d15
     8e8:	fe57d013 	0xfe57d013
     8ec:	e5f764b5 	swc1	$f23,25781(t7)
     8f0:	47b4bf8a 	c1	0x1b4bf8a
     8f4:	be1c7c61 	0xbe1c7c61
     8f8:	f0a6a6da 	0xf0a6a6da
     8fc:	6ea3e13f 	0x6ea3e13f
     900:	17e2c256 	bne	ra,v0,ffff125c <lmask+0xfffeb99c>
     904:	d2ed6d23 	0xd2ed6d23
     908:	b8d2b518 	swr	s2,-19176(a2)
     90c:	6f17ce8e 	0x6f17ce8e
     910:	7f312667 	0x7f312667
     914:	68c4cc47 	0x68c4cc47
     918:	96ee9b4a 	lhu	t6,-25782(s7)
     91c:	c8bb8118 	lwc2	$27,-32488(a1)
     920:	91be78f8 	lbu	s8,30968(t5)
     924:	511eb1f0 	0x511eb1f0
     928:	33c4f1f8 	andi	a0,s8,0xf1f8
     92c:	a23f0e1f 	sb	ra,3615(s1)
     930:	15e89e3c 	bne	t7,t0,fffe8224 <lmask+0xfffe2964>
     934:	10be92d1 	beq	a1,s8,fffe547c <lmask+0xfffdfbbc>
     938:	c52db46b 	lwc1	$f13,-19349(t1)
     93c:	223960e8 	addi	t9,s1,24808
     940:	8549f906 	lh	t1,-1786(t2)
     944:	ecb90061 	swc3	$25,97(a1)
     948:	41caf7e0 	0x41caf7e0
     94c:	bc59e37d 	0xbc59e37d
     950:	4fc43e1f 	c3	0x1c43e1f
     954:	f050f868 	0xf050f868
     958:	b6b67aa4 	0xb6b67aa4
     95c:	fa79b7d4 	0xfa79b7d4
     960:	354b6d3e 	ori	t3,t2,0x6d3e
     964:	0b092c2e 	j	c24b0b8 <lmask+0xc2457f8>
     968:	2d945b0b 	sltiu	s4,t4,23307
     96c:	512c6776 	0x512c6776
     970:	c58d0c68 	lwc1	$f13,3176(t4)
     974:	32599157 	andi	t9,s2,0x9157
     978:	920e17d9 	lbu	t6,6105(s0)
     97c:	fe16fc5c 	0xfe16fc5c
     980:	d4fe2569 	0xd4fe2569
     984:	3e09f03f 	0x3e09f03f
     988:	c6af1458 	lwc1	$f15,5208(s5)
     98c:	6916baad 	0x6916baad
     990:	ddedc417 	0xddedc417
     994:	2d1ac13e 	sltiu	k0,t0,-16066
     998:	bb248d24 	swr	a0,-29404(t9)
     99c:	96cae500 	lhu	t2,-6912(s6)
     9a0:	5559da48 	0x5559da48
     9a4:	f0aa2359 	0xf0aa2359
     9a8:	54c21816 	0x54c21816
     9ac:	68986388 	0x68986388
     9b0:	cc695494 	lwc3	$9,21652(v1)
     9b4:	534f9afa 	0x534f9afa
     9b8:	3f376d35 	0x3f376d35
     9bc:	ec9bba7b 	swc3	$27,-17797(a0)
     9c0:	7c8b945a 	0x7c8b945a
     9c4:	d51e5bf1 	0xd51e5bf1
     9c8:	bfc0e3c6 	0xbfc0e3c6
     9cc:	3f1d63f1 	0x3f1d63f1
     9d0:	578cfc3d 	0x578cfc3d
     9d4:	ab6a1e10 	swl	t2,7696(k1)
     9d8:	b545b89b 	0xb545b89b
     9dc:	4ad39a2b 	c2	0xd39a2b
     9e0:	7bd8924d 	0x7bd8924d
     9e4:	a2499668 	sb	t1,-27032(s2)
     9e8:	f1e69525 	0xf1e69525
     9ec:	18824123 	0x18824123
     9f0:	1ea01fa3 	bgtz	s5,8880 <lmask+0x2fc0>
     9f4:	935bd03f 	lbu	k1,-12225(k0)
     9f8:	673d36d2 	0x673d36d2
     9fc:	18351d74 	0x18351d74
     a00:	f856dd63 	0xf856dd63
     a04:	b7bb637a 	0xb7bb637a
     a08:	9335bdc3 	lbu	s5,-16957(t9)
     a0c:	8df00c9c 	lw	s0,3228(t7)
     a10:	b646c6dc 	0xb646c6dc
     a14:	31b4ef03 	andi	s4,t5,0xef03
     a18:	3cf1f28f 	0x3cf1f28f
     a1c:	c57d7fc6 	lwc1	$f29,32710(t3)
     a20:	bf0e3c63 	0xbf0e3c63
     a24:	af78206b 	sw	t8,8299(k1)
     a28:	8e9acc16 	lw	k0,-13290(s4)
     a2c:	e82f05cc 	swc2	$15,1484(at)
     a30:	6aef771c 	0x6aef771c
     a34:	cbe6b8ca 	lwc2	$6,-18230(ra)
     a38:	911a6030 	lbu	k0,24624(t0)
     a3c:	042e39c0 	0x42e39c0
     a40:	180ab4db 	0x180ab4db
     a44:	9d1fc591 	0x9d1fc591
     a48:	fc1ab7d7 	0xfc1ab7d7
     a4c:	ae7ed6ba 	sw	s8,-10566(s3)
     a50:	1f896da3 	0x1f896da3
     a54:	32dd5c93 	andi	sp,s6,0x5c93
     a58:	3c6cd1b9 	0x3c6cd1b9
     a5c:	75d8d926 	jalx	7636498 <lmask+0x7630bd8>
     a60:	260ca415 	addiu	t4,s0,-23531
     a64:	eb8078ca 	swc2	$0,30922(gp)
     a68:	a83cf5f3 	swl	gp,-2573(at)
     a6c:	08c25353 	j	3094d4c <lmask+0x308f48c>
     a70:	837257bf 	lb	s2,22463(k1)
     a74:	5b2e976b 	0x5b2e976b
     a78:	a6da8d2d 	sh	k0,-29395(s6)
     a7c:	39918bfb 	xori	s1,t4,0x8bfb
     a80:	45eb7f08 	0x45eb7f08
     a84:	64d666f1 	0x64d666f1
     a88:	0fc18d46 	jal	f063518 <lmask+0xf05dc58>
     a8c:	458f57bb 	0x458f57bb
     a90:	37325a01 	ori	s2,t9,0x5a01
     a94:	32476ac7 	andi	a3,s2,0x6ac7
     a98:	e6900493 	swc1	$f16,1171(s4)
     a9c:	3b54b961 	xori	s4,k0,0xb961
     aa0:	b0700eec 	0xb0700eec
     aa4:	718ae2ad 	0x718ae2ad
     aa8:	f54d2de0 	0xf54d2de0
     aac:	8de74b33 	lw	a3,19251(t7)
     ab0:	2b202e41 	slti	zero,t9,11841
     ab4:	1f7b1cfe 	0x1f7b1cfe
     ab8:	b5cdd8e8 	0xb5cdd8e8
     abc:	76facc1a 	jalx	beb3068 <lmask+0xbead7a8>
     ac0:	84cf2b46 	lh	t7,11078(a2)
     ac4:	2296350e 	addi	s6,s4,13582
     ac8:	4f0aa5b0 	c3	0x10aa5b0
     acc:	c48fa633 	lwc1	$f15,-22989(a0)
     ad0:	5d3af823 	0x5d3af823
     ad4:	c1b10119 	lwc0	$17,281(t5)
     ad8:	f1cdbe50 	0xf1cdbe50
     adc:	6de08c71 	0x6de08c71
     ae0:	5f35889d 	0x5f35889d
     ae4:	1c44dc9a 	0x1c44dc9a
     ae8:	e5f25fd3 	swc1	$f18,24531(t7)
     aec:	1c6a24bd 	0x1c6a24bd
     af0:	e468788b 	swc1	$f8,30859(v1)
     af4:	44f0ecda 	0x44f0ecda
     af8:	febdafdb 	0xfebdafdb
     afc:	c77d76fa 	lwc1	$f29,30458(k1)
     b00:	1433d96a 	bne	at,s3,ffff70ac <lmask+0xffff17ec>
     b04:	36802c72 	ori	zero,s4,0x2c72
     b08:	c13b2084 	lwc0	$27,8324(t1)
     b0c:	5dc61c62 	0x5dc61c62
     b10:	48c5c310 	0x48c5c310
     b14:	f1fcad1c 	0xf1fcad1c
     b18:	8fb836d9 	lw	t8,14041(sp)
     b1c:	032fa7ff 	0x32fa7ff
     b20:	00c333fc 	0xc333fc
     b24:	67f0b784 	0x67f0b784
     b28:	2db481af 	sltiu	s4,t5,-32337
     b2c:	463c0baf 	c1	0x3c0baf
     b30:	dbdb6b17 	0xdbdb6b17
     b34:	d73044b7 	0xd73044b7
     b38:	36317da6 	ori	s1,s1,0x7da6
     b3c:	2851ae15 	slti	s1,v0,-20971
     b40:	236f32e3 	addi	t7,k1,13027
     b44:	742d1c70 	jalx	b471c0 <lmask+0xb41900>
     b48:	bee8c7ef 	0xbee8c7ef
     b4c:	48dc8cec 	0x48dc8cec
     b50:	4f55f09b 	c3	0x155f09b
     b54:	c05e24f8 	lwc0	$30,9464(v0)
     b58:	efe373e2 	swc3	$3,29666(ra)
     b5c:	3f8ade0f 	0x3f8ade0f
     b60:	d2bc67e1 	0xd2bc67e1
     b64:	d1a75ae9 	0xd1a75ae9
     b68:	57da9f9f 	0x57da9f9f
     b6c:	7163a9d8 	0x7163a9d8
     b70:	8b769162 	lwl	s6,-28318(k1)
     b74:	b9830c66 	swr	v1,3174(t4)
     b78:	95d1da48 	lhu	s1,-9656(t6)
     b7c:	4b30c98a 	c2	0x130c98a
     b80:	dd1792be 	0xdd1792be
     b84:	5b7d57a9 	0x5b7d57a9
     b88:	dd7c3dd0 	0xdd7c3dd0
     b8c:	7425f126 	jalx	97c498 <lmask+0x976bd8>
     b90:	9f71ac7d 	0x9f71ac7d
     b94:	8fe1d6b5 	lw	at,-10571(ra)
     b98:	a959bdb6 	swl	t9,-16970(t2)
     b9c:	96a2ce0b 	lhu	v0,-12789(s5)
     ba0:	78849b2f 	0x78849b2f
     ba4:	8deaa12b 	lw	t2,-24277(t7)
     ba8:	3942afbb 	xori	v0,t2,0xafbb
     bac:	040cdcb1 	0x40cdcb1
     bb0:	95763b13 	lhu	s6,15123(t3)
     bb4:	f4585c05 	0xf4585c05
     bb8:	e32a94fd 	swc0	$10,-27395(t9)
     bbc:	e8b7a59d 	swc2	$23,-23139(a1)
     bc0:	b44f55d9 	0xb44f55d9
     bc4:	adf6ec65 	sw	s6,-5019(t7)
     bc8:	0f79ddbb 	jal	de776ec <lmask+0xde71e2c>
     bcc:	1f9dba97 	0x1f9dba97
     bd0:	86f4af0f 	lh	s4,-20721(s7)
     bd4:	fc6fd6fc 	0xfc6fd6fc
     bd8:	316de24b 	andi	t5,t3,0xe24b
     bdc:	58b46d33 	0x58b46d33
     be0:	562ed79a 	0x562ed79a
     be4:	b5a178a6 	0xb5a178a6
     be8:	8e39bed1 	lw	t9,-16687(s1)
     bec:	e6cb6e84 	swc1	$f11,28292(s6)
     bf0:	9923df13 	lwr	v1,-8429(t1)
     bf4:	6e0ac3f7 	0x6e0ac3f7
     bf8:	7bb39195 	0x7bb39195
     bfc:	3cff0085 	0x3cff0085
     c00:	bc59e12f 	0xbc59e12f
     c04:	0578f6df 	0x578f6df
     c08:	c52efa75 	lwc1	$f14,-1419(t1)
     c0c:	c5adb6a3 	lwc1	$f13,-18781(t5)
     c10:	1ea77834 	0x1ea77834
     c14:	ddab05b4 	0xddab05b4
     c18:	b0dcbbc5 	0xb0dcbbc5
     c1c:	1dbc32a3 	0x1dbc32a3
     c20:	060ac639 	0x60ac639
     c24:	55241221 	0x55241221
     c28:	87707194 	lh	s0,29076(k1)
     c2c:	6c6c7c72 	0x6c6c7c72
     c30:	f8bb73e3 	0xf8bb73e3
     c34:	2f8a1acc 	sltiu	t2,gp,6860
     c38:	b6b71617 	0xb6b71617
     c3c:	f610eada 	0xf610eada
     c40:	8cb68d6e 	lw	s6,-29330(a1)
     c44:	64b8b79d 	0x64b8b79d
     c48:	5269137a 	0x5269137a
     c4c:	97666114 	lhu	a2,24852(k1)
     c50:	d16e63fc 	0xd16e63fc
     c54:	3b5d491d 	xori	sp,k0,0x491d
     c58:	5abebff8 	0x5abebff8
     c5c:	1163f05b 	beq	t3,v1,ffffcdcc <lmask+0xffff750c>
     c60:	e2af82fc 	swc0	$15,-32004(s5)
     c64:	03a75e5b 	0x3a75e5b
     c68:	6a3ab788 	0x6a3ab788
     c6c:	fc2a7ecb 	0xfc2a7ecb
     c70:	6bac6a4a 	0x6bac6a4a
     c74:	b6bab594 	0xb6bab594
     c78:	2b14a0b4 	slti	s4,t8,-24396
     c7c:	33081a29 	andi	t0,t8,0x1a29
     c80:	92221bca 	lbu	v0,7114(s1)
     c84:	473215f2 	c1	0x13215f2
     c88:	b24bbc6a 	0xb24bbc6a
     c8c:	42c061af 	c0	0xc061af
     c90:	5e71a32d 	0x5e71a32d
     c94:	22eebefb 	addi	t6,s7,-16645
     c98:	3d2f7d3f 	0x3d2f7d3f
     c9c:	2269dfe1 	addi	t1,s3,-8223
     ca0:	383f89df 	xori	ra,at,0x89df
     ca4:	b5e788ad 	0xb5e788ad
     ca8:	7c149f0f 	0x7c149f0f
     cac:	bc15e0af 	0xbc15e0af
     cb0:	b078a35d 	0xb078a35d
     cb4:	bf9af751 	0xbf9af751
     cb8:	8354b333 	lb	s4,-19661(k0)
     cbc:	2cfa75d8 	sltiu	k0,a3,30168
     cc0:	dd6d76ad 	0xdd6d76ad
     cc4:	03a4915c 	0x3a4915c
     cc8:	231481d6 	addi	s4,t8,-32298
     ccc:	42577126 	c0	0x577126
     cd0:	30ca7647 	andi	t2,a2,0x7647
     cd4:	b3f083f6 	0xb3f083f6
     cd8:	bed18781 	0xbed18781
     cdc:	63b4f176 	0x63b4f176
     ce0:	aba7f87e 	swl	a3,-1922(sp)
     ce4:	eb463616 	swc2	$6,13846(k0)
     ce8:	b35859e9 	0xb35859e9
     cec:	41adf525 	0x41adf525
     cf0:	78a58ee2 	0x78a58ee2
     cf4:	f3508821 	0xf3508821
     cf8:	ccb14c62 	lwc3	$17,19554(a1)
     cfc:	90c7a7b4 	lbu	a3,-22604(a2)
     d00:	3713cae4 	ori	s3,t8,0xcae4
     d04:	ba6c3be0 	swr	t4,15328(s3)
     d08:	d1f8451f 	0xd1f8451f
     d0c:	c6fbf7f8 	lwc1	$f27,-2056(s7)
     d10:	ebf0daf7 	swc2	$16,-9481(ra)
     d14:	e1f78535 	swc0	$23,-31435(t7)
     d18:	9f12dc6a 	0x9f12dc6a
     d1c:	0f349676 	jal	cd259d8 <lmask+0xcd20118>
     d20:	2c5b4d92 	sltiu	k1,v0,19858
     d24:	7bbd3825 	0x7bbd3825
     d28:	89331955 	lwl	s3,6485(t1)
     d2c:	e4b69520 	swc1	$f22,-27360(a1)
     d30:	289f3065 	slti	ra,a0,12389
     d34:	f2e532fe 	0xf2e532fe
     d38:	f092be35 	0xf092be35
     d3c:	e1bfd9e7 	swc0	$31,-9753(t5)
     d40:	c5b7826f 	lwc1	$f23,-32145(t5)
     d44:	05e8b069 	0x5e8b069
     d48:	7ad6a576 	0x7ad6a576
     d4c:	91497f6b 	lbu	t1,32619(t2)
     d50:	7f66226b 	0x7f66226b
     d54:	4b3dccb2 	c2	0x13dccb2
     d58:	5e88e41e 	0x5e88e41e
     d5c:	648b1c8a 	0x648b1c8a
     d60:	b1aec0ad 	0xb1aec0ad
     d64:	be647758 	0xbe647758
     d68:	95b15d15 	lhu	s1,23829(t5)
     d6c:	e18ba728 	swc0	$11,-22744(t4)
     d70:	fd56f25b 	0xfd56f25b
     d74:	5b6b6bfd 	0x5b6b6bfd
     d78:	6df91a37 	0x6df91a37
     d7c:	adcbbe3f 	sw	t3,-16833(t6)
     d80:	93c25e20 	lbu	v0,24096(s8)
     d84:	9f5cf02d 	0x9f5cf02d
     d88:	b6b175ae 	0xb6b175ae
     d8c:	69b79f65 	0x69b79f65
     d90:	6b8f14dd 	0x6b8f14dd
     d94:	dbc90dd2 	0xdbc90dd2
     d98:	de8650b0 	0xde8650b0
     d9c:	a5b92863 	sh	t9,10339(t5)
     da0:	916d6286 	lbu	t5,25222(t3)
     da4:	098b8791 	j	62e1e44 <lmask+0x62dc584>
     da8:	76cf0827 	jalx	b3c209c <lmask+0xb3bc7dc>
     dac:	31ac1e7b 	andi	t4,t5,0x1e7b
     db0:	a1f8ff00 	sb	t8,-256(t7)
     db4:	4fd0be25 	c3	0x1d0be25
     db8:	5a5d78f3 	0x5a5d78f3
     dbc:	50bbf146 	0x50bbf146
     dc0:	a4b34369 	sh	s3,17257(a1)
     dc4:	2caad025 	sltiu	t2,a1,-12251
     dc8:	8a69ec88 	lwl	t1,-4984(s3)
     dcc:	b2432431 	0xb2432431
     dd0:	298c6c8d 	slti	t4,t4,27789
     dd4:	4218d02b 	c0	0x18d02b
     dd8:	2bab2e55 	slti	t3,sp,11861
     ddc:	9414e8be 	lhu	s4,-5954(zero)
     de0:	12e91613 	beq	s7,t1,6630 <lmask+0xd70>
     de4:	f88bc3ba 	0xf88bc3ba
     de8:	a6bd7d77 	sh	sp,32119(s5)
     dec:	f1175bd6 	0xf1175bd6
     df0:	246d174a 	addiu	t5,v1,5962
     df4:	d12cee25 	0xd12cee25
     df8:	b4b796f2 	0xb4b796f2
     dfc:	658ed207 	0x658ed207
     e00:	b8d52e15 	swr	s5,11797(a2)
     e04:	45ac4208 	0x45ac4208
     e08:	602bb04b 	0x602bb04b
     e0c:	23838210 	addi	v1,gp,-32240
     e10:	3961eb7f 	xori	at,t3,0xeb7f
     e14:	0fbf660f 	jal	efd983c <lmask+0xefd3f7c>
     e18:	016bda46 	0x16bda46
     e1c:	9fe30d67 	0x9fe30d67
     e20:	c711f876 	lwc1	$f17,-1930(t8)
     e24:	da6bfbab 	0xda6bfbab
     e28:	7d62de3d 	0x7d62de3d
     e2c:	7ad9ac6d 	0x7ad9ac6d
     e30:	5a7bb9a0 	0x5a7bb9a0
     e34:	b7f2de45 	0xb7f2de45
     e38:	4b8897cf 	c2	0x18897cf
     e3c:	6b72ab31 	0x6b72ab31
     e40:	deeb2147 	0xdeeb2147
     e44:	d92a185f 	0xd92a185f
     e48:	9a586ad9 	lwr	t8,27353(s2)
     e4c:	8e21d482 	lw	at,-11134(s1)
     e50:	4947a376 	0x4947a376
     e54:	ddf57ae9 	0xddf57ae9
     e58:	f7bb5c6d 	0xf7bb5c6d
     e5c:	cd493470 	lwc3	$9,13424(t2)
     e60:	9fb44cd6 	0x9fb44cd6
     e64:	df1a344b 	0xdf1a344b
     e68:	7f1df81e 	0x7f1df81e
     e6c:	74d52d34 	jalx	354b4d0 <lmask+0x3545c10>
     e70:	3d3adb51 	0x3d3adb51
     e74:	bb8a568a 	swr	t2,22154(gp)
     e78:	19ed1e67 	0x19ed1e67
     e7c:	9a27b544 	lwr	a3,-19132(s1)
     e80:	004f2a2c 	0x4f2a2c
     e84:	50a48e8f 	0x50a48e8f
     e88:	26e8fce8 	addiu	t0,s7,-792
     e8c:	882f92aa 	lwl	t7,-27990(at)
     e90:	9f06ff00 	0x9f06ff00
     e94:	69ef86f3 	0x69ef86f3
     e98:	e993fc21 	swc2	$19,-991(t4)
     e9c:	f889e18b 	0xf889e18b
     ea0:	58bc3fac 	0x58bc3fac
     ea4:	a25b4ced 	sb	k1,19693(s2)
     ea8:	710456b0 	0x710456b0
     eac:	ca540128 	lwc2	$20,296(s2)
     eb0:	8a0b788c 	lwl	t3,30860(s0)
     eb4:	659de462 	0x659de462
     eb8:	e64623e5 	swc1	$f6,9189(s2)
     ebc:	0bb71585 	j	edc5614 <lmask+0xedbfd54>
     ec0:	f057c07a 	0xf057c07a
     ec4:	cdff00c4 	lwc3	$31,196(t7)
     ec8:	ab9d4df5 	swl	sp,19957(gp)
     ecc:	4b5bbd17 	c2	0x15bbd17
     ed0:	4ebcd434 	c3	0xbcd434
     ed4:	d58f56bd 	0xd58f56bd
     ed8:	7b08b53b 	0x7b08b53b
     edc:	749cc254 	jalx	2730950 <lmask+0x272b090>
     ee0:	4f83248c 	c3	0x183248c
     ee4:	4024ab23 	0x4024ab23
     ee8:	2c60b028 	sltiu	zero,v1,-20440
     eec:	7715afa0 	jalx	c56be80 <lmask+0xc5665c0>
     ef0:	fe2a7c19 	0xfe2a7c19
     ef4:	f036a1e2 	0xf036a1e2
     ef8:	4f167897 	c3	0x1167897
     efc:	c216da65 	lwc0	$22,-9627(s0)
     f00:	968fa568 	lhu	t7,-23192(s4)
     f04:	106a571a 	beq	v1,t2,16b70 <lmask+0x112b0>
     f08:	b4d690b6 	0xb4d690b6
     f0c:	9f722633 	0x9f722633
     f10:	abb5acfb 	swl	s5,-21253(sp)
     f14:	85bf96be 	lh	ra,-26946(t5)
     f18:	532c9fbd 	0x532c9fbd
     f1c:	011d1949 	0x11d1949
     f20:	db906a8f 	0xdb906a8f
     f24:	b6c54dd4 	0xb6c54dd4
     f28:	8349fc2d 	lb	t1,-979(k0)
     f2c:	3d53b745 	0x3d53b745
     f30:	75b74dcb 	jalx	6dd372c <lmask+0x6dcde6c>
     f34:	a7349de4 	sh	s4,-25116(t9)
     f38:	ae7c69a2 	sw	gp,27042(s3)
     f3c:	d9683e1f 	0xd9683e1f
     f40:	f1c6a3e1 	0xf1c6a3e1
     f44:	9d4b4eb9 	0x9d4b4eb9
     f48:	bcf0a4b7 	0xbcf0a4b7
     f4c:	93c09399 	lbu	zero,-27751(s8)
     f50:	9584a033 	lhu	a0,-24525(t4)
     f54:	18d048bc 	0x18d048bc
     f58:	36557d89 	ori	s5,s2,0x7d89
     f5c:	ebc574d2 	swc2	$5,29906(s8)
     f60:	f8abc191 	0xf8abc191
     f64:	4af1da7c 	c2	0xf1da7c
     f68:	39f042c0 	xori	s0,t7,0x42c0
     f6c:	8c562597 	lw	s6,9623(v0)
     f70:	51883840 	0x51883840
     f74:	780c33d7 	0x780c33d7
     f78:	18cd7277 	0x18cd7277
     f7c:	536876da 	0x536876da
     f80:	65ad8787 	0x65ad8787
     f84:	b5186fd2 	0xb5186fd2
     f88:	3d6a62f7 	0x3d6a62f7
     f8c:	a2dd6246 	sb	sp,25158(s6)
     f90:	90a332c4 	lbu	v1,12996(a1)
     f94:	02492232 	0x2492232
     f98:	8c2aef56 	lw	t2,-4266(at)
     f9c:	20ef3fdd 	addi	t7,a3,16349
     fa0:	39e657e0 	xori	a2,t7,0x57e0
     fa4:	ac5a8a8d 	sw	k0,-30067(v0)
     fa8:	4124d551 	0x4124d551
     fac:	6e879c15 	0x6e879c15
     fb0:	6c72006e 	0x6c72006e
     fb4:	700e791c 	0x700e791c
     fb8:	d7cbd5a3 	0xd7cbd5a3
     fbc:	055e71c4 	0x55e71c4
     fc0:	3e469f47 	0x3e469f47
     fc4:	75bf9335 	jalx	6fe4cd4 <lmask+0x6fdf414>
     fc8:	e5e47686 	swc1	$f4,30342(t7)
     fcc:	d64f6bee 	0xd64f6bee
     fd0:	775a7fed 	jalx	d69ffb4 <lmask+0xd69a6f4>
     fd4:	43e2cf0e 	c0	0x1e2cf0e
     fd8:	fda2fbc2 	0xfda2fbc2
     fdc:	7a80d375 	0x7a80d375
     fe0:	3b39a3b3 	xori	t9,t9,0xa3b3
     fe4:	5b789648 	0x5b789648
     fe8:	a1d434ff 	sb	s4,13567(t6)
     fec:	003a3936 	0x3a3936
     ff0:	f98ade6e 	0xf98ade6e
     ff4:	4cb0a798 	0x4cb0a798
     ff8:	85d77a48 	lh	s7,31304(t6)
     ffc:	fbb77ccb 	0xfbb77ccb
    1000:	5f5b78eb 	0x5f5b78eb
    1004:	e2b6bbfb 	swc0	$22,-17413(s5)
    1008:	41fc39f1 	0x41fc39f1
    100c:	f7862436 	0xf7862436
    1010:	3e1ed3a7 	0x3e1ed3a7
    1014:	d2b4f586 	0xd2b4f586
    1018:	3b6d5cbd 	xori	t5,k1,0x5cbd
    101c:	e2348632 	swc0	$20,-31182(s1)
    1020:	c8622433 	lwc2	$2,9267(v1)
    1024:	c4b3472a 	lwc1	$f19,18218(a1)
    1028:	17091a6c 	bne	t8,t1,79dc <lmask+0x211c>
    102c:	94a94612 	lhu	t1,17938(a1)
    1030:	b987f357 	swr	a3,-3241(t4)
    1034:	c596d0e9 	lwc1	$f22,-12055(t4)
    1038:	1e28d5ec 	0x1e28d5ec
    103c:	f4e0f145 	0xf4e0f145
    1040:	69ab5cc1 	0x69ab5cc1
    1044:	0fceccca 	jal	f3b3328 <lmask+0xf3ada68>
    1048:	91cae106 	lbu	t2,-7930(t6)
    104c:	e2493800 	swc0	$9,14336(s2)
    1050:	724e78af 	0x724e78af
    1054:	47f1578e 	c1	0x1f1578e
    1058:	3c4ba37c 	0x3c4ba37c
    105c:	28f869e2 	slti	t8,a3,27106
    1060:	cd3ef614 	lwc3	$30,-2540(t1)
    1064:	d5a75d47 	0xd5a75d47
    1068:	7dd3d9c3 	0x7dd3d9c3
    106c:	23168ef2 	addi	s6,t8,-28942
    1070:	e151f0e8 	swc0	$17,-3864(t2)
    1074:	40751230 	0x40751230
    1078:	0e06e1c6 	jal	81b8718 <lmask+0x81b2e58>
    107c:	0fcab8fa 	jal	f2ae3e8 <lmask+0xf2a8b28>
    1080:	dc1c1e1e 	0xdc1c1e1e
    1084:	94a9d3d9 	lhu	t1,-11303(a1)
    1088:	6b6e8fa3 	0x6b6e8fa3
    108c:	5b376773 	0x5b376773
    1090:	9946d747 	lwr	a2,-10425(t2)
    1094:	0ef7efa7 	jal	bdfbe9c <lmask+0xbdf65dc>
    1098:	b2886ca0 	0xb2886ca0
    109c:	86e21322 	lh	v0,4898(s7)
    10a0:	3ba48c58 	xori	a0,sp,0x8c58
    10a4:	1f994a19 	0x1f994a19
    10a8:	14ed6046 	bne	a3,t5,191c4 <lmask+0x13904>
    10ac:	ff00bbf2 	0xff00bbf2
    10b0:	b2b71919 	0xb2b71919
    10b4:	07dcb49f 	0x7dcb49f
    10b8:	8a5f19fc 	lwl	ra,6652(s2)
    10bc:	23e18f0c 	addi	at,ra,-28916
    10c0:	6ab369d7 	0x6ab369d7
    10c4:	769a3595 	jalx	a68d654 <lmask+0xa687d94>
    10c8:	c4706853 	lwc1	$f16,26707(v1)
    10cc:	cba0bc16 	lwc2	$0,-17386(sp)
    10d0:	f2dbb2cf 	0xf2dbb2cf
    10d4:	898cb12a 	lwl	t4,-20182(t4)
    10d8:	34dbd5ae 	ori	k1,a2,0xd5ae
    10dc:	42e64259 	c0	0xe64259
    10e0:	bcd28a5b 	0xbcd28a5b
    10e4:	cc6af1ed 	lwc3	$10,-3603(v1)
    10e8:	2acadb56 	slti	t2,s6,-9386
    10ec:	f037897c 	0xf037897c
    10f0:	41a9c66e 	0x41a9c66e
    10f4:	b52fed0b 	0xb52fed0b
    10f8:	343752b1 	ori	s7,at,0x52b1
    10fc:	69089a57 	0x69089a57
    1100:	32fcc4e7 	andi	gp,s7,0xc4e7
    1104:	2c4649eb 	sltiu	a2,v0,18923
    1108:	c9f535fa 	lwc2	$21,13818(t7)
    110c:	f1fb2e78 	0xf1fb2e78
    1110:	33c29f13 	andi	v0,s8,0x9f13
    1114:	7f64af87 	0x7f64af87
    1118:	3a278ef4 	xori	a3,s1,0x8ef4
    111c:	0b3d5f4f 	j	cf57d3c <lmask+0xcf5247c>
    1120:	f88515fe 	0xf88515fe
    1124:	99e23b69 	lwr	v0,15209(t7)
    1128:	630b1df4 	0x630b1df4
    112c:	36525cc3 	ori	s2,s2,0x5cc3
    1130:	68db5302 	0x68db5302
    1134:	29a28ede 	slti	v0,t5,-28962
    1138:	dd5278f6 	0xdd5278f6
    113c:	ca3c888e 	lwc2	$28,-30578(s1)
    1140:	fcc6a470 	0xfcc6a470
    1144:	509d4537 	0x509d4537
    1148:	1a4edd1f 	0x1a4edd1f
    114c:	e0d7aeb6 	swc0	$23,-20810(a2)
    1150:	2a14d493 	slti	s4,s0,-11117
    1154:	678b7c33 	0x678b7c33
    1158:	f8bbf03f 	0xf8bbf03f
    115c:	c4bfb3de 	lwc1	$f31,-19490(a1)
    1160:	8d1f8f3c 	lw	ra,-28868(t0)
    1164:	4f0690da 	c3	0x10690da
    1168:	95eeff00 	lhu	t6,-256(t7)
    116c:	14e9ba4e 	bne	a3,t1,fffefaa8 <lmask+0xfffea1e8>
    1170:	9d7315c6 	0x9d7315c6
    1174:	9b226a29 	lwr	v0,27177(t9)
    1178:	9bd9ee6d 	lwr	t9,-4499(s8)
    117c:	224f2e3c 	addi	t7,s2,11836
    1180:	cb04d2cb 	lwc2	$4,-11573(t8)
    1184:	88f73cfb 	lwl	s7,15611(a3)
    1188:	51bcc2ae 	0x51bcc2ae
    118c:	9b5abf8d 	lwr	k0,-16499(k0)
    1190:	3e356b3e 	0x3e356b3e
    1194:	3ff13eb7 	0x3ff13eb7
    1198:	f0e7c45a 	0xf0e7c45a
    119c:	347a4d96 	ori	k0,v1,0x4d96
    11a0:	9b6de21b 	lwr	t5,-7653(k1)
    11a4:	0d52477b 	jal	5491dec <lmask+0x548c52c>
    11a8:	8d3fc417 	lw	ra,-15337(t1)
    11ac:	822668ad 	lb	a2,26797(s1)
    11b0:	c4f712c7 	lwc1	$f23,4807(a3)
    11b4:	6f1c2f14 	0x6f1c2f14
    11b8:	522cd75e 	0x522cd75e
    11bc:	6315f390 	0x6315f390
    11c0:	0c6f623c 	jal	1bd88f0 <lmask+0x1bd3030>
    11c4:	07f68ff0 	0x7f68ff0
    11c8:	ae8df043 	sw	t5,-4029(s4)
    11cc:	5ef1859f 	0x5ef1859f
    11d0:	c2a8eefc 	lwc0	$8,-4356(s5)
    11d4:	3b0db7c2 	xori	t5,t8,0xb7c2
    11d8:	fd2a28d6 	0xfd2a28d6
    11dc:	dafa76f9 	0xdafa76f9
    11e0:	350d53ec 	ori	t5,t0,0x53ec
    11e4:	97aadbdd 	lhu	t2,-9251(sp)
    11e8:	b7896166 	0xb7896166
    11ec:	521b3863 	0x521b3863
    11f0:	bc61c06a 	0xbc61c06a
    11f4:	fa4fe035 	0xfa4fe035
    11f8:	85be8de0 	lh	s8,-29216(t5)
    11fc:	2d2534ff 	sltiu	a1,t1,13567
    1200:	003521b7 	0x3521b7
    1204:	d37c6f61 	0xd37c6f61
    1208:	15bc933c 	bne	t5,gp,fffe5efc <lmask+0xfffe063c>
    120c:	b02c1a6e 	0xb02c1a6e
    1210:	bf670592 	0xbf670592
    1214:	f94e4a66 	0xf94e4a66
    1218:	38de41bb 	xori	s8,a2,0x41bb
    121c:	1b98bbb3 	0x1b98bbb3
    1220:	966624fb 	lhu	a2,9467(s3)
    1224:	383a8ea5 	xori	k0,at,0x8ea5
    1228:	472a9bab 	c1	0x12a9bab
    122c:	276ebaff 	addiu	t6,k1,-17665
    1230:	00c1b94a 	0xc1b94a
    1234:	2dfbb7d8 	sltiu	k1,t7,-18472
    1238:	f9cb45d6 	0xf9cb45d6
    123c:	fe237c24 	0xfe237c24
    1240:	f1b78b7e 	0xf1b78b7e
    1244:	287c3df8 	slti	gp,v1,15864
    1248:	71693787 	0x71693787
    124c:	64b0d5af 	0x64b0d5af
    1250:	f46d2aeb 	0xf46d2aeb
    1254:	518a58f4 	0x518a58f4
    1258:	dd082491 	0xdd082491
    125c:	a3c3e5b1 	sb	v1,-6735(s8)
    1260:	778e1964 	jalx	e386590 <lmask+0xe380cd0>
    1264:	5966b68f 	0x5966b68f
    1268:	276dbb45 	addiu	t5,k1,-17595
    126c:	211e5ac8 	addi	s8,t0,23240
    1270:	bcb7ece7 	0xbcb7ece7
    1274:	f1c3c4b6 	0xf1c3c4b6
    1278:	9e394f16 	0x9e394f16
    127c:	fc4b8e4d 	0xfc4b8e4d
    1280:	6b45d564 	0x6b45d564
    1284:	6b4b612d 	0x6b4b612d
    1288:	9db470c7 	0x9db470c7
    128c:	2a5c5b4c 	slti	gp,s2,23372
    1290:	d3c41b08 	0xd3c41b08
    1294:	b2a9b585 	0xb2a9b585
    1298:	9a73ca3c 	lwr	s3,-13764(s3)
    129c:	30b19378 	andi	s1,a1,0x9378
    12a0:	dd5fa1ba 	0xdd5fa1ba
    12a4:	bf86b42b 	0xbf86b42b
    12a8:	4f8c56da 	c3	0x18c56da
    12ac:	adbe9b12 	sw	s8,-25838(t5)
    12b0:	5ce9de0d 	0x5ce9de0d
    12b4:	d42d6d9b 	0xd42d6d9b
    12b8:	92ab1477 	lbu	t3,5239(s5)
    12bc:	5a648885 	0x5a648885
    12c0:	4fcac15d 	c3	0x1cac15d
    12c4:	988dc0e3 	lwr	t5,-16157(a0)
    12c8:	730e848a 	0x730e848a
    12cc:	f803fe0a 	0xf803fe0a
    12d0:	0f696b63 	jal	da5ad8c <lmask+0xda554cc>
    12d4:	fb546a90 	0xfb546a90
    12d8:	58c096c9 	0x58c096c9
    12dc:	a8596933 	swl	t9,26931(v0)
    12e0:	5c8846cf 	0x5c8846cf
    12e4:	32470f0b 	andi	a3,s2,0xf0b
    12e8:	b1c7731c 	0xb1c7731c
    12ec:	31a93d4e 	andi	t1,t5,0x3d4e
    12f0:	df5249bc 	0xdf5249bc
    12f4:	6d3965eb 	0x6d3965eb
    12f8:	dad2778a 	0xdad2778a
    12fc:	96cfd3ca 	lhu	t7,-11318(s6)
    1300:	ddccb9a4 	0xddccb9a4
    1304:	9dae56f1 	0x9dae56f1
    1308:	2fc42d2f 	sltiu	a0,s8,11567
    130c:	5bf0ddf7 	0x5bf0ddf7
    1310:	89a5bc36 	lwl	a1,-17354(t5)
    1314:	de22d524 	0xde22d524
    1318:	7d435298 	0x7d435298
    131c:	ee9edf4d 	swc3	$30,-8371(s4)
    1320:	6954ec58 	0x6954ec58
    1324:	d5db6add 	0xd5db6add
    1328:	4ac0056e 	c2	0xc0056e
    132c:	91a8df21 	lbu	t0,-8415(t5)
    1330:	ddb1593e 	0xddb1593e
    1334:	1d7c7ef8 	0x1d7c7ef8
    1338:	a1a3f807 	sb	v1,-2041(t5)
    133c:	c37e1ff0 	lwc0	$30,8176(k1)
    1340:	d45e1ab7 	0xd45e1ab7
    1344:	f07f846f 	0xf07f846f
    1348:	aebedd1d 	sw	s8,-8931(s5)
    134c:	fcb6b6f6 	0xfcb6b6f6
    1350:	baa4571b 	swr	a0,22299(s5)
    1354:	d9ac2486 	0xd9ac2486
    1358:	77df750e 	jalx	f7dd438 <lmask+0xf7d7b78>
    135c:	c96e0111 	lwc2	$14,273(t3)
    1360:	24b237da 	addiu	s2,a1,14298
    1364:	30e1d993 	andi	at,a3,0xd993
    1368:	7785f88f 	jalx	e17e23c <lmask+0xe17897c>
    136c:	52d4342d 	0x52d4342d
    1370:	5ada1d1e 	0x5ada1d1e
    1374:	fae2ce38 	0xfae2ce38
    1378:	d400b0c8 	0xd400b0c8
    137c:	5473c927 	0x5473c927
    1380:	d49c9c93 	0xd49c9c93
    1384:	c9ef57ee 	lwc2	$15,22510(t7)
    1388:	2f26d774 	sltiu	a2,t9,-10380
    138c:	3d6b52d4 	0x3d6b52d4
    1390:	846f7561 	lh	t7,30049(v1)
    1394:	3048258e 	andi	t0,v0,0x258e
    1398:	25848066 	addiu	a0,t4,-32666
    139c:	2a776c03 	slti	s7,s3,27651
    13a0:	7f03f8b3 	0x7f03f8b3
    13a4:	dcf526be 	0xdcf526be
    13a8:	5238ba91 	0x5238ba91
    13ac:	93c4c5d9 	lbu	a0,-14887(s8)
    13b0:	cf7b69be 	lwc3	$27,27070(k1)
    13b4:	bf999733 	0xbf999733
    13b8:	5648b5e2 	0x5648b5e2
    13bc:	1b9f093d 	0x1b9f093d
    13c0:	edcd8f86 	swc3	$13,-28794(t6)
    13c4:	74d3a5e8 	jalx	34e97a0 <lmask+0x34e3ee0>
    13c8:	e6f1eeed 	swc1	$f17,-4371(s7)
    13cc:	ac2de733 	sw	t5,-6349(at)
    13d0:	2db96e06 	sltiu	t9,t5,28166
    13d4:	e7200925 	swc1	$f0,2341(t9)
    13d8:	55c2b18c 	0x55c2b18c
    13dc:	796595ca 	0x796595ca
    13e0:	6e5209f5 	0x6e5209f5
    13e4:	1b1fda3f 	0x1b1fda3f
    13e8:	c4965656 	lwc1	$f22,22102(a0)
    13ec:	f676ff00 	0xf676ff00
    13f0:	0db4c68a 	jal	6d31a28 <lmask+0x6d2c168>
    13f4:	0892243b 	j	24890ec <lmask+0x248382c>
    13f8:	e35caa80 	swc0	$28,-21888(k0)
    13fc:	071bb8e0 	0x71bb8e0
    1400:	74ae37e2 	jalx	2b8df88 <lmask+0x2b886c8>
    1404:	2f86741d 	sltiu	a2,gp,29725
    1408:	1f41b49b 	0x1f41b49b
    140c:	4cd322b7 	0x4cd322b7
    1410:	7096e859 	0x7096e859
    1414:	33960439 	andi	s6,gp,0x439
    1418:	cb73f31c 	lwc2	$19,-3300(k1)
    141c:	a8e4e4f5 	swl	a0,-6923(a3)
    1420:	e7935ecd 	swc1	$f19,24269(gp)
    1424:	e18f0278 	swc0	$15,632(t4)
    1428:	5af3c37a 	0x5af3c37a
    142c:	4dddce9a 	0x4dddce9a
    1430:	ef34f630 	swc3	$20,-2512(t9)
    1434:	49237da6 	0x49237da6
    1438:	51b99a35 	0x51b99a35
    143c:	24e0363a 	addiu	zero,a3,13882
    1440:	9af03152 	lwr	s0,12626(s7)
    1444:	8547cd35 	lh	a3,-13003(t2)
    1448:	7d5ef7fd 	0x7d5ef7fd
    144c:	19dd4ab5 	0x19dd4ab5
    1450:	58d49252 	0x58d49252
    1454:	3fffd900 	0x3fffd900

00001458 <hana_bmp>:
    1458:	bcd1be99 	0xbcd1be99
    145c:	8f6795c0 	lw	a3,-27200(k1)
    1460:	ac9dbdc0 	sw	sp,-16960(a0)
    1464:	a4c3bcb5 	sh	v1,-17227(a2)
    1468:	c1a7bcd2 	lwc0	$7,-17198(t5)
    146c:	b18e250a 	0xb18e250a
    1470:	1f282734 	0x1f282734
    1474:	201d220e 	addi	sp,zero,8718
    1478:	0a120e1a 	j	8483868 <lmask+0x847dfa8>
    147c:	076cb5be 	0x76cb5be
    1480:	b57f5b63 	0xb57f5b63
    1484:	49240b24 	0x49240b24
    1488:	425d5a41 	c0	0x5d5a41
    148c:	33202423 	andi	zero,t9,0x2423
    1490:	26353823 	addiu	s5,s1,14371
    1494:	19192031 	0x19192031
    1498:	2936201f 	slti	s6,t1,8223
    149c:	1f221819 	0x1f221819
    14a0:	262b200b 	addiu	t3,s1,8203
    14a4:	090d1419 	j	4345064 <lmask+0x433f7a4>
    14a8:	17111012 	bne	t8,s1,54f4 <izigzag_index+0x1a8>
    14ac:	1e19212d 	0x1e19212d
    14b0:	241da6c1 	addiu	sp,zero,-22847
    14b4:	655aaa81 	0x655aaa81
    14b8:	92d5a958 	lbu	s5,-22184(s6)
    14bc:	91c7cfa5 	lbu	a3,-12379(t6)
    14c0:	8971c99b 	lwl	s1,-13925(t3)
    14c4:	8bd1bfc9 	lwl	s1,-16439(s8)
    14c8:	ab67331d 	swl	a3,13085(k1)
    14cc:	11091d2b 	beq	t0,t1,897c <lmask+0x30bc>
    14d0:	2124180e 	addi	a0,t1,6158
    14d4:	1818046c 	0x1818046c
    14d8:	b9b4babc 	swr	s4,-17732(t5)
    14dc:	b7c3c06c 	0xb7c3c06c
    14e0:	304b6755 	andi	t3,v0,0x6755
    14e4:	45312e37 	0x45312e37
    14e8:	2c2a3233 	sltiu	t2,at,12851
    14ec:	291e120e 	slti	s8,t0,4622
    14f0:	1e303036 	0x1e303036
    14f4:	22282624 	addi	t0,s1,9764
    14f8:	1f1c3437 	0x1f1c3437
    14fc:	2d0f0e10 	sltiu	t7,t0,3600
    1500:	17150f0b 	bne	t8,s5,5130 <hana_bmp+0x3cd8>
    1504:	11191f1a 	beq	t0,t9,9170 <lmask+0x38b0>
    1508:	2c492227 	sltiu	t1,v0,8743
    150c:	91842eb5 	lbu	a0,11957(t4)
    1510:	cdd1bbaa 	lwc3	$17,-17494(t6)
    1514:	8c38348e 	lw	t8,13454(at)
    1518:	7ab0c653 	0x7ab0c653
    151c:	9ad7c8d1 	lwr	s7,-14127(s6)
    1520:	b8a4c4ae 	swr	a0,-15186(a1)
    1524:	8037594c 	lb	s7,22860(at)
    1528:	1c262f2e 	0x1c262f2e
    152c:	231b271f 	addi	k1,t8,10015
    1530:	103a7489 	beq	at,k0,1e758 <lmask+0x18e98>
    1534:	a9b8b4af 	swl	t8,-19281(t5)
    1538:	a678495b 	sh	t8,18779(s3)
    153c:	61542024 	0x61542024
    1540:	3e3a2829 	0x3e3a2829
    1544:	302d2014 	andi	t5,at,0x2014
    1548:	0f100c1b 	jal	c40306c <lmask+0xc3fd7ac>
    154c:	18242810 	0x18242810
    1550:	22181621 	addi	t8,s0,5665
    1554:	3d413712 	0x3d413712
    1558:	15161d13 	bne	t0,s6,89a8 <lmask+0x30e8>
    155c:	120f151c 	beq	s0,t7,69d0 <lmask+0x1110>
    1560:	211d304b 	addi	sp,t0,12363
    1564:	24266f0f 	addiu	a2,at,28431
    1568:	3ee2cfbb 	0x3ee2cfbb
    156c:	cdbc3d02 	lwc3	$28,15618(t5)
    1570:	0d1f0969 	jal	47c25a4 <lmask+0x47bcce4>
    1574:	8c3118bf 	lw	s1,6335(at)
    1578:	d1c6bab8 	0xd1c6bab8
    157c:	9375593a 	lbu	s5,22842(k1)
    1580:	8ab3873e 	lwl	s3,-30914(s5)
    1584:	34331714 	ori	s3,at,0x1714
    1588:	221c1a0a 	addi	gp,s0,6666
    158c:	2a70979d 	slti	s0,s3,-26723
    1590:	8b7a7136 	lwl	k0,28982(k1)
    1594:	4f54602e 	c3	0x154602e
    1598:	1320353a 	beqz	t9,ea84 <lmask+0x91c4>
    159c:	28282726 	slti	t0,at,10022
    15a0:	15151117 	bne	t0,s5,5a00 <lmask+0x140>
    15a4:	066e650e 	0x66e650e
    15a8:	12070f1b 	beq	s0,a3,5218 <hana_bmp+0x3dc0>
    15ac:	071b4046 	0x71b4046
    15b0:	3f161e20 	0x3f161e20
    15b4:	2616080a 	addiu	s6,s0,2058
    15b8:	12141a1b 	beq	s0,s4,7e28 <lmask+0x2568>
    15bc:	2b3a2c28 	slti	k0,t9,11304
    15c0:	8b8c819c 	lwl	t4,-32356(gp)
    15c4:	71b1d7ae 	0x71b1d7ae
    15c8:	6f65240e 	0x6f65240e
    15cc:	148b626a 	bne	a0,t3,19f78 <lmask+0x146b8>
    15d0:	512561df 	0x512561df
    15d4:	c8d99599 	lwc2	$25,-27239(a2)
    15d8:	94834692 	lhu	v1,18066(a0)
    15dc:	b2ac8350 	0xb2ac8350
    15e0:	0d112b10 	jal	444ac40 <lmask+0x4445380>
    15e4:	12141862 	beq	s0,s4,7770 <lmask+0x1eb0>
    15e8:	82a39055 	lb	v1,-28587(s5)
    15ec:	47514e58 	c1	0x1514e58
    15f0:	441d2738 	0x441d2738
    15f4:	3b312829 	xori	s1,t9,0x2829
    15f8:	27140b3f 	addiu	s4,t8,2879
    15fc:	500159b3 	0x500159b3
    1600:	ba600025 	swr	zero,37(s3)
    1604:	0f15141b 	jal	c54506c <lmask+0xc53f7ac>
    1608:	404c491d 	0x404c491d
    160c:	1f212b22 	0x1f212b22
    1610:	0d0c1310 	jal	4304c40 <lmask+0x42ff380>
    1614:	100e1c26 	beq	zero,t6,86b0 <lmask+0x2df0>
    1618:	3c32b3c4 	0x3c32b3c4
    161c:	d9843779 	0xd9843779
    1620:	d5b4b1b7 	0xd5b4b1b7
    1624:	ae66a1b6 	sw	a2,-24138(s3)
    1628:	8c93c5ce 	lw	s3,-14898(a0)
    162c:	a4d6d9af 	sh	s6,-9809(a2)
    1630:	288daeb7 	slti	t5,a0,-20809
    1634:	7b446177 	0x7b446177
    1638:	7b7e3115 	0x7b7e3115
    163c:	2711171c 	addiu	s1,t8,5916
    1640:	0e7b95c2 	jal	9ee5708 <lmask+0x9edfe48>
    1644:	c15f4b49 	lwc0	$31,19273(t2)
    1648:	463f3b32 	c1	0x3f3b32
    164c:	30373a2a 	andi	s7,at,0x3a2a
    1650:	30362024 	andi	s6,at,0x2024
    1654:	0c559f6e 	jal	1567db8 <lmask+0x15624f8>
    1658:	7db1bb89 	0x7db1bb89
    165c:	19363a37 	0x19363a37
    1660:	12133b4d 	beq	s0,s3,10398 <lmask+0xaad8>
    1664:	4c221e20 	0x4c221e20
    1668:	302f2212 	andi	t7,at,0x2212
    166c:	0d0d0c05 	jal	4343014 <lmask+0x433d754>
    1670:	0c123439 	jal	48d0e4 <lmask+0x487824>
    1674:	8886afd6 	lwl	a2,-20522(a0)
    1678:	86a1be8d 	lh	at,-16755(s5)
    167c:	b1bd8da4 	0xb1bd8da4
    1680:	cbb3b990 	lwc2	$19,-18032(sp)
    1684:	498dce94 	0x498dce94
    1688:	b5c07145 	0xb5c07145
    168c:	95b08d74 	lhu	s0,-29324(t5)
    1690:	532e6570 	0x532e6570
    1694:	4f1f1928 	c3	0x11f1928
    1698:	1e1a0c62 	0x1e1a0c62
    169c:	a2c3d77a 	sb	v1,-10374(s6)
    16a0:	37413d44 	ori	at,k0,0x3d44
    16a4:	402e4441 	0x402e4441
    16a8:	43503824 	c0	0x1503824
    16ac:	2c2f1b37 	sltiu	t7,at,6967
    16b0:	b1c8afa9 	0xb1c8afa9
    16b4:	b29c727e 	0xb29c727e
    16b8:	6b3d2e32 	0x6b3d2e32
    16bc:	3c4e4c2e 	0x3c4e4c2e
    16c0:	2a303b3a 	slti	s0,s1,15162
    16c4:	2d191416 	sltiu	t9,t0,5142
    16c8:	1a13130f 	0x1a13130f
    16cc:	383a2972 	xori	k0,at,0x2972
    16d0:	c4c3d0c5 	lwc1	$f3,-12091(a2)
    16d4:	bab0aecc 	swr	s0,-20788(s5)
    16d8:	7988d0cd 	0x7988d0cd
    16dc:	c9560cbe 	lwc2	$22,3262(t2)
    16e0:	b4b194b2 	0xb4b194b2
    16e4:	dd916192 	0xdd916192
    16e8:	8899a98a 	lwl	t9,-22134(a0)
    16ec:	93bfa739 	lbu	ra,-22727(sp)
    16f0:	2fa87c21 	sltiu	t0,sp,31777
    16f4:	0536bdb4 	0x536bdb4
    16f8:	c5bc8844 	lwc1	$f28,-30652(t5)
    16fc:	363f324e 	ori	ra,s1,0x324e
    1700:	534a505a 	0x534a505a
    1704:	3a2c3c2d 	xori	t4,s1,0x3c2d
    1708:	2c1280c2 	sltiu	s2,zero,-32574
    170c:	b0c9cbc4 	0xb0c9cbc4
    1710:	af8e6b3d 	sw	t6,27453(gp)
    1714:	2c3d4a56 	sltiu	sp,at,19030
    1718:	533e4047 	0x533e4047
    171c:	483f3f37 	0x483f3f37
    1720:	39343127 	xori	s4,t1,0x3127
    1724:	24183d39 	addiu	t8,zero,15673
    1728:	134bc2a5 	beq	k0,t3,ffff21c0 <lmask+0xfffec900>
    172c:	a8bac4bb 	swl	k0,-15173(a1)
    1730:	cbcf5641 	lwc2	$15,22081(s8)
    1734:	82c0d6b8 	lb	zero,-10568(s6)
    1738:	90aeb4d1 	lbu	t6,-19247(a1)
    173c:	934c6c74 	lbu	t4,27764(k0)
    1740:	9b9abbac 	lwr	k0,-17492(gp)
    1744:	b3b4bbc7 	0xb3b4bbc7
    1748:	cc3936a5 	lwc3	$25,13989(at)
    174c:	7f2f5a43 	0x7f2f5a43
    1750:	bdb3aad6 	0xbdb3aad6
    1754:	c39f6728 	lwc0	$31,26408(gp)
    1758:	20406142 	addi	zero,v0,24898
    175c:	3535434d 	ori	s5,t1,0x434d
    1760:	2e2f270a 	sltiu	t7,s1,9994
    1764:	357a97ca 	ori	k0,t3,0x97ca
    1768:	d5d6bca1 	0xd5d6bca1
    176c:	916a3c3a 	lbu	t2,15418(t3)
    1770:	4e5d6165 	c3	0x5d6165
    1774:	66565547 	0x66565547
    1778:	39323736 	xori	s2,t1,0x3736
    177c:	36342b28 	ori	s4,s1,0x2b28
    1780:	1516710b 	bne	t0,s6,1dbb0 <lmask+0x182f0>
    1784:	2e42688c 	sltiu	v0,s2,26764
    1788:	a4a7b1d2 	sh	a3,-20014(a1)
    178c:	477369be 	c1	0x17369be
    1790:	a3b5bbb8 	sb	s5,-17480(sp)
    1794:	8eb16bcf 	lw	s1,27599(s5)
    1798:	8071799c 	lb	s1,31132(v1)
    179c:	998fa19a 	lwr	t7,-24166(t4)
    17a0:	a5b6b637 	sh	s6,-18889(t5)
    17a4:	2d742a34 	sltiu	s4,t3,10804
    17a8:	785e7db4 	0x785e7db4
    17ac:	bbbac7bf 	swr	k0,-14401(sp)
    17b0:	ba4e002b 	swr	t6,43(s2)
    17b4:	60765213 	0x60765213
    17b8:	4c4c4737 	0x4c4c4737
    17bc:	1d09083b 	0x1d09083b
    17c0:	6fa8bdcd 	0x6fa8bdcd
    17c4:	bba68a6f 	swr	a2,-30097(sp)
    17c8:	3229374c 	andi	t1,s1,0x374c
    17cc:	5e6b7465 	0x5e6b7465
    17d0:	5c483332 	0x5c483332
    17d4:	2f272b25 	sltiu	a3,t9,11045
    17d8:	1d28191b 	0x1d28191b
    17dc:	6444332e 	0x6444332e
    17e0:	38515c98 	xori	s1,v0,0x5c98
    17e4:	b0ca478e 	0xb0ca478e
    17e8:	cfc4c590 	lwc3	$4,-14960(s8)
    17ec:	b5b56978 	0xb5b56978
    17f0:	4f40b370 	c3	0x140b370
    17f4:	6661403f 	0x6661403f
    17f8:	335eb4a4 	andi	s8,k0,0xb4a4
    17fc:	932544a9 	lbu	a1,17577(t9)
    1800:	5e64618a 	0x5e64618a
    1804:	0144b2b5 	0x144b2b5
    1808:	ada6b6a3 	sw	a2,-18781(t5)
    180c:	3377a5bb 	andi	s7,k1,0xa5bb
    1810:	bb41274f 	swr	at,10063(k0)
    1814:	52470f0e 	0x52470f0e
    1818:	0a0c4090 	j	8310240 <lmask+0x830a980>
    181c:	b9b07446 	swr	s0,29766(t5)
    1820:	3c292719 	0x3c292719
    1824:	172b3f56 	bne	t9,t3,11580 <lmask+0xbcc0>
    1828:	6e6e644b 	0x6e6e644b
    182c:	311b201b 	andi	k1,t0,0x201b
    1830:	12152425 	beq	s0,s5,a8c8 <lmask+0x5008>
    1834:	1d205d3e 	bgtz	t1,18d30 <lmask+0x13470>
    1838:	221f473e 	addi	ra,s0,18238
    183c:	66af906a 	0x66af906a
    1840:	3ac9aabf 	xori	t1,s6,0xaabf
    1844:	bda76eaa 	0xbda76eaa
    1848:	ae867954 	sw	a2,31060(s4)
    184c:	a178553e 	sb	t8,21822(t3)
    1850:	402b094e 	0x402b094e
    1854:	bab9aa14 	swr	t9,-21996(s5)
    1858:	64b49fb0 	0x64b49fb0
    185c:	acbd646a 	sw	sp,25706(a1)
    1860:	a9aa99b4 	swl	t2,-26188(t5)
    1864:	bdbbbf96 	0xbdbbbf96
    1868:	678a9b7d 	0x678a9b7d
    186c:	314d3d3e 	andi	t5,t2,0x3d3e
    1870:	48171215 	0x48171215
    1874:	1b275250 	0x1b275250
    1878:	35354754 	ori	s5,t1,0x4754
    187c:	3a210412 	xori	at,s1,0x412
    1880:	233f6578 	addi	ra,t9,25976
    1884:	6b46271c 	0x6b46271c
    1888:	1d191c18 	0x1d191c18
    188c:	2021221f 	addi	at,at,8735
    1890:	623b2011 	0x623b2011
    1894:	221c4579 	addi	gp,s0,17785
    1898:	1a2e4cac 	0x1a2e4cac
    189c:	6b138e99 	0x6b138e99
    18a0:	8892d6a5 	lwl	s2,-10587(a0)
    18a4:	bbcfb37e 	swr	t7,-19586(s8)
    18a8:	3f51262d 	0x3f51262d
    18ac:	2661adb8 	addiu	at,s3,-21064
    18b0:	9b1864ce 	lwr	t8,25806(t8)
    18b4:	b0c6cee2 	0xb0c6cee2
    18b8:	986b8199 	lwr	t3,-32359(v1)
    18bc:	92bcbbaa 	lbu	gp,-17494(s5)
    18c0:	b3b37c9b 	0xb3b37c9b
    18c4:	b39a5d49 	0xb39a5d49
    18c8:	41514239 	0x41514239
    18cc:	143a3c24 	bne	at,k0,10960 <lmask+0xb0a0>
    18d0:	2f381931 	sltiu	t8,t9,6449
    18d4:	4a5a552c 	c2	0x5a552c
    18d8:	080c1830 	j	3060c0 <lmask+0x300800>
    18dc:	537a7857 	0x537a7857
    18e0:	251d1c17 	addiu	sp,t0,7191
    18e4:	17141d1f 	bne	t8,s4,8d64 <lmask+0x34a4>
    18e8:	17146133 	bne	t8,s4,19db8 <lmask+0x144f8>
    18ec:	090f0e10 	j	43c3840 <lmask+0x43bdf80>
    18f0:	17582025 	bne	k0,t8,9988 <lmask+0x40c8>
    18f4:	4b301211 	c2	0x1301211
    18f8:	18c5c8aa 	0x18c5c8aa
    18fc:	c4bfcacd 	lwc1	$f31,-13619(a1)
    1900:	b6643823 	0xb6643823
    1904:	1c715c47 	0x1c715c47
    1908:	5d565622 	0x5d565622
    190c:	4ebac2b6 	c3	0xbac2b6
    1910:	c1b4a54e 	lwc0	$20,-23218(t5)
    1914:	567a4069 	0x567a4069
    1918:	c3a394bc 	lwc0	$3,-27460(sp)
    191c:	94969676 	lhu	s6,-27018(a0)
    1920:	785f494d 	0x785f494d
    1924:	4b463f4f 	c2	0x1463f4f
    1928:	5f40523b 	0x5f40523b
    192c:	1f142b46 	0x1f142b46
    1930:	5d541d1d 	0x5d541d1d
    1934:	2c3e4e70 	sltiu	s8,at,20080
    1938:	785d2c22 	0x785d2c22
    193c:	22231111 	addi	v1,s1,4369
    1940:	1c14171a 	0x1c14171a
    1944:	553a1518 	0x553a1518
    1948:	1d110d1f 	0x1d110d1f
    194c:	0d15591f 	jal	455647c <lmask+0x4550bbc>
    1950:	2d131592 	sltiu	s3,t0,5522
    1954:	e1d2ceb9 	swc0	$18,-12615(t6)
    1958:	42a4b7bf 	c0	0xa4b7bf
    195c:	953c4277 	lhu	gp,17015(t1)
    1960:	344a378e 	ori	t2,v0,0x378e
    1964:	9e144b9a 	0x9e144b9a
    1968:	a1c9938a 	sb	t1,-27766(t6)
    196c:	b68f7a54 	0xb68f7a54
    1970:	1574aeae 	bne	t3,s4,fffed42c <lmask+0xfffe7b6c>
    1974:	a8c68049 	swl	a2,-32695(a2)
    1978:	4ea69f4e 	c3	0xa69f4e
    197c:	49352471 	0x49352471
    1980:	7c58807f 	0x7c58807f
    1984:	6a420917 	0x6a420917
    1988:	14294a59 	bne	at,t1,142f0 <lmask+0xea30>
    198c:	41343e49 	0x41343e49
    1990:	3f5b6f62 	0x3f5b6f62
    1994:	36463d3f 	ori	a2,s2,0x3d3f
    1998:	3c321d16 	0x3c321d16
    199c:	191c2550 	0x191c2550
    19a0:	19171004 	0x19171004
    19a4:	0b160d16 	j	c583458 <lmask+0xc57db98>
    19a8:	561d1232 	0x561d1232
    19ac:	190877a3 	0x190877a3
    19b0:	a0b9a19e 	sb	t9,-24162(a1)
    19b4:	bdb38477 	0xbdb38477
    19b8:	742781ab 	jalx	9e06ac <lmask+0x9dadec>
    19bc:	89b4ae13 	lwl	s4,-20973(t5)
    19c0:	75c2c0c1 	jalx	70b0304 <lmask+0x70aaa44>
    19c4:	ae9f77a5 	sw	ra,30629(s4)
    19c8:	b1a82c79 	0xb1a82c79
    19cc:	a1b9c8c2 	sb	t9,-14142(t5)
    19d0:	a75252a2 	sh	s2,21154(k0)
    19d4:	a24a3337 	sb	t2,13111(s2)
    19d8:	0f639c76 	jal	d8e71d8 <lmask+0xd8e1918>
    19dc:	7fb1a348 	0x7fb1a348
    19e0:	090d0a05 	j	4342814 <lmask+0x433cf54>
    19e4:	25474d46 	addiu	a3,t2,19782
    19e8:	6d8d7b85 	0x6d8d7b85
    19ec:	8975494f 	lwl	s5,18767(t3)
    19f0:	45535052 	0x45535052
    19f4:	432f1c1a 	c0	0x12f1c1a
    19f8:	0d4d1712 	jal	5345c48 <lmask+0x5340388>
    19fc:	0f101022 	jal	c404088 <lmask+0xc3fe7c8>
    1a00:	2115550e 	addi	s5,t0,21774
    1a04:	00252c00 	0x252c00
    1a08:	b3e1bbce 	0xb3e1bbce
    1a0c:	d18d954e 	0xd18d954e
    1a10:	393f4881 	xori	ra,t1,0x4881
    1a14:	9fa46d61 	0x9fa46d61
    1a18:	731f245b 	0x731f245b
    1a1c:	195dd76c 	0x195dd76c
    1a20:	64b4b578 	0x64b4b578
    1a24:	4452a8c3 	0x4452a8c3
    1a28:	c295b9b3 	lwc0	$21,-17997(s4)
    1a2c:	8348834b 	lb	t0,-31925(k0)
    1a30:	372e203d 	ori	t6,t9,0x203d
    1a34:	909681c4 	lbu	s6,-32316(a0)
    1a38:	b6795751 	0xb6795751
    1a3c:	06051426 	0x6051426
    1a40:	386499ac 	xori	a0,v1,0x99ac
    1a44:	ccccc6d4 	lwc3	$12,-14636(a2)
    1a48:	56204133 	0x56204133
    1a4c:	3b393b34 	xori	t9,t9,0x3b34
    1a50:	332c2b1e 	andi	t4,t9,0x2b1e
    1a54:	20143246 	addi	s4,zero,12870
    1a58:	31131a28 	andi	s3,t0,0x1a28
    1a5c:	45644b32 	0x45644b32
    1a60:	281264c0 	slti	s2,zero,25792
    1a64:	68646976 	0x68646976
    1a68:	83812a4c 	lb	at,10828(gp)
    1a6c:	23497c92 	addi	t1,k0,31890
    1a70:	68011c4b 	0x68011c4b
    1a74:	62c5a6b1 	0x62c5a6b1
    1a78:	d4c9afae 	0xd4c9afae
    1a7c:	c08e6321 	lwc0	$14,25377(a0)
    1a80:	57d8bdc1 	0x57d8bdc1
    1a84:	d1b9bc7e 	0xd1b9bc7e
    1a88:	7e5c563a 	0x7e5c563a
    1a8c:	231c74ae 	addi	gp,t8,29870
    1a90:	b5bcb4a6 	0xb5bcb4a6
    1a94:	88561001 	lwl	s6,4097(v0)
    1a98:	0006173f 	0x6173f
    1a9c:	6788aec0 	0x6788aec0
    1aa0:	9bc6ad23 	lwr	a2,-21213(s8)
    1aa4:	102a3328 	beq	at,t2,e748 <lmask+0x8e88>
    1aa8:	263a2b2c 	addiu	k0,s1,11052
    1aac:	1a1d190e 	0x1a1d190e
    1ab0:	254b233b 	addiu	t3,t2,9019
    1ab4:	133b3d65 	beq	t9,k1,1104c <lmask+0xb78c>
    1ab8:	37514f1d 	ori	s1,k0,0x4f1d
    1abc:	30566d51 	andi	s6,v0,0x6d51
    1ac0:	42bb8fb6 	c0	0xbb8fb6
    1ac4:	8e0d0227 	lw	t5,551(s0)
    1ac8:	4e90691c 	c3	0x90691c
    1acc:	22541b5d 	addi	s4,s2,7005
    1ad0:	fda9f25d 	0xfda9f25d
    1ad4:	d8a19bc2 	0xd8a19bc2
    1ad8:	e78b075b 	swc1	$f11,1883(gp)
    1adc:	cdcce2b8 	lwc3	$12,-7496(t6)
    1ae0:	dfeabe70 	0xdfeabe70
    1ae4:	5c2b2514 	0x5c2b2514
    1ae8:	84c2c6cb 	lh	v0,-14645(a2)
    1aec:	ae8a3a07 	sw	t2,14855(s4)
    1af0:	001a666e 	0x1a666e
    1af4:	5b797884 	0x5b797884
    1af8:	6daba7a5 	0x6daba7a5
    1afc:	d9b0524d 	0xd9b0524d
    1b00:	44331626 	0x44331626
    1b04:	2c2c0516 	sltiu	t4,at,1302
    1b08:	1d1d0763 	0x1d1d0763
    1b0c:	1e8b6535 	0x1e8b6535
    1b10:	3c64874c 	0x3c64874c
    1b14:	40202433 	0x40202433
    1b18:	36576f93 	ori	s7,s2,0x6f93
    1b1c:	f0baaccd 	0xf0baaccd
    1b20:	2e002e15 	sltiu	zero,s0,11797
    1b24:	0b3e252d 	j	cf894b4 <lmask+0xcf83bf4>
    1b28:	1a002ec2 	blez	s0,d634 <lmask+0x7d74>
    1b2c:	ba3cef62 	swr	gp,-4254(s1)
    1b30:	8cc07913 	lw	zero,30995(a2)
    1b34:	b2a45eb7 	0xb2a45eb7
    1b38:	4357c2c2 	c0	0x157c2c2
    1b3c:	c4be5322 	lwc1	$f30,21282(a1)
    1b40:	203855ab 	addi	t8,at,21931
    1b44:	b6afce99 	0xb6afce99
    1b48:	3d010640 	0x3d010640
    1b4c:	a1c6b3ac 	sb	a2,-19540(t6)
    1b50:	b3aa70a2 	0xb3aa70a2
    1b54:	ddbfb9b5 	0xddbfb9b5
    1b58:	885a5639 	lwl	k0,22073(v0)
    1b5c:	1d1b2c2b 	0x1d1b2c2b
    1b60:	35140c12 	ori	s4,t0,0xc12
    1b64:	2160389c 	addi	zero,t3,14492
    1b68:	8b843d2f 	lwl	a0,15663(gp)
    1b6c:	75716524 	jalx	5c59490 <lmask+0x5c53bd0>
    1b70:	1b053fa6 	0x1b053fa6
    1b74:	7b15a3cf 	0x7b15a3cf
    1b78:	e0b481d4 	swc0	$20,-32300(a1)
    1b7c:	9fc1cd2a 	0x9fc1cd2a
    1b80:	1433171b 	bne	at,s3,77f0 <lmask+0x1f30>
    1b84:	1130f034 	beq	t1,s0,ffffdc58 <lmask+0xffff8398>
    1b88:	b1b19540 	0xb1b19540
    1b8c:	018cbab4 	0x18cbab4
    1b90:	ccd3d565 	lwc3	$19,-10907(a2)
    1b94:	bbc6963a 	swr	a2,-27078(s8)
    1b98:	70815637 	0x70815637
    1b9c:	3f4d4a66 	0x3f4d4a66
    1ba0:	929a6335 	lbu	k0,25397(s4)
    1ba4:	301c57b3 	andi	gp,zero,0x57b3
    1ba8:	b1afb2af 	0xb1afb2af
    1bac:	74869db2 	jalx	21a76c8 <lmask+0x21a1e08>
    1bb0:	c1b4947d 	lwc0	$20,-27523(t5)
    1bb4:	551c1412 	0x551c1412
    1bb8:	3a3b1f2b 	xori	k1,s1,0x1f2b
    1bbc:	0a47b192 	j	91ec648 <lmask+0x91e6d88>
    1bc0:	2d9976b8 	sltiu	t9,t4,30392
    1bc4:	8d331b38 	lw	s3,6968(t1)
    1bc8:	4d2d1e48 	0x4d2d1e48
    1bcc:	919f5a58 	lbu	ra,23128(t4)
    1bd0:	a88eb7d4 	swl	t6,-18476(a0)
    1bd4:	56adccc9 	0x56adccc9
    1bd8:	84002131 	lh	zero,8497(zero)
    1bdc:	1509007d 	bne	t0,t1,1dd4 <hana_bmp+0x97c>
    1be0:	be3d51b1 	0xbe3d51b1
    1be4:	5f48170f 	0x5f48170f
    1be8:	60add6b4 	0x60add6b4
    1bec:	e5dabab9 	swc1	$f26,-17735(t6)
    1bf0:	df4892a0 	0xdf4892a0
    1bf4:	81563e4e 	lb	s6,15950(t2)
    1bf8:	425d6f71 	c0	0x5d6f71
    1bfc:	5a49524a 	0x5a49524a
    1c00:	034296bf 	0x34296bf
    1c04:	b568785a 	0xb568785a
    1c08:	74727dab 	jalx	1c9f6ac <lmask+0x1c99dec>
    1c0c:	7a844215 	0x7a844215
    1c10:	191b3b3c 	0x191b3b3c
    1c14:	25210d1a 	addiu	at,t1,3354
    1c18:	c9bf34aa 	lwc2	$31,13482(t5)
    1c1c:	89bdd9d0 	lwl	sp,-9776(t5)
    1c20:	981a6f28 	lwr	k0,28456(zero)
    1c24:	0a94a9a2 	j	a52a688 <lmask+0xa524dc8>
    1c28:	9986cccb 	lwr	a2,-13109(t4)
    1c2c:	ab923d65 	swl	s2,15717(gp)
    1c30:	ca8e0009 	lwc2	$14,9(s4)
    1c34:	2c36130c 	sltiu	s6,at,4876
    1c38:	0024a752 	0x24a752
    1c3c:	1cd97b66 	0x1cd97b66
    1c40:	0c351700 	jal	d45c00 <lmask+0xd40340>
    1c44:	2f00c3c2 	sltiu	zero,t8,-15422
    1c48:	bcacb0ae 	0xbcacb0ae
    1c4c:	3d659d88 	0x3d659d88
    1c50:	6d282c7d 	0x6d282c7d
    1c54:	9293804d 	lbu	s3,-32691(s4)
    1c58:	61715336 	0x61715336
    1c5c:	acbea59f 	sw	s8,-23137(a1)
    1c60:	bf55413f 	0xbf55413f
    1c64:	212d3f3c 	addi	t5,t1,16188
    1c68:	21151310 	addi	s5,t0,4880
    1c6c:	3f3d2233 	0x3f3d2233
    1c70:	39302489 	xori	s0,t1,0x2489
    1c74:	187a5ae6 	0x187a5ae6
    1c78:	c2d2be50 	lwc0	$18,-16816(s6)
    1c7c:	2a331295 	slti	s3,s1,4757
    1c80:	d39f277b 	0xd39f277b
    1c84:	ac603f09 	sw	zero,16137(v1)
    1c88:	4a2a94e0 	c2	0x2a94e0
    1c8c:	77003534 	jalx	c00d4d0 <lmask+0xc007c10>
    1c90:	1e002bbd 	bgtz	s0,cb88 <lmask+0x72c8>
    1c94:	755e259f 	jalx	578967c <lmask+0x5783dbc>
    1c98:	9dd66716 	0x9dd66716
    1c9c:	1e0d3a3c 	0x1e0d3a3c
    1ca0:	2c4364a8 	sltiu	v1,v0,25768
    1ca4:	a3b3368b 	sb	s3,13963(sp)
    1ca8:	dbc17144 	0xdbc17144
    1cac:	8c8f8da5 	lw	t7,-29275(a0)
    1cb0:	797e5792 	0x797e5792
    1cb4:	7c5fa6a7 	0x7c5fa6a7
    1cb8:	829cbd6c 	lb	gp,-17044(s4)
    1cbc:	2a2b2911 	slti	t3,s1,10513
    1cc0:	281e1d17 	slti	s8,zero,7447
    1cc4:	13123d3c 	beq	t8,s2,111b8 <lmask+0xb8f8>
    1cc8:	0d235e7a 	jal	48d79e8 <lmask+0x48d2128>
    1ccc:	3275cdac 	andi	s5,s3,0xcdac
    1cd0:	936cddba 	lbu	t4,-8774(k1)
    1cd4:	b7892625 	0xb7892625
    1cd8:	1f6ad09c 	0x1f6ad09c
    1cdc:	12afe58b 	beq	s5,t7,ffffb30c <lmask+0xffff5a4c>
    1ce0:	00697263 	0x697263
    1ce4:	0c928da2 	jal	24a3688 <lmask+0x249ddc8>
    1ce8:	342a003e 	ori	t2,at,0x3e
    1cec:	b1ba885e 	0xb1ba885e
    1cf0:	207b92d2 	addi	k1,v1,-27950
    1cf4:	c16ca891 	lwc0	$12,-22383(t3)
    1cf8:	08c1243d 	j	30490f4 <lmask+0x3043834>
    1cfc:	453da69c 	0x453da69c
    1d00:	cb7fc3e4 	lwc2	$31,-15388(k1)
    1d04:	92a98d5a 	lbu	t1,-29350(s5)
    1d08:	886d5f62 	lwl	t5,24418(v1)
    1d0c:	5a998f56 	0x5a998f56
    1d10:	52616063 	0x52616063
    1d14:	7f84262e 	0x7f84262e
    1d18:	241e1823 	addiu	s8,zero,6179
    1d1c:	17191b0c 	bne	t8,t9,8950 <lmask+0x3090>
    1d20:	101e0e00 	beq	zero,s8,5524 <izigzag_index+0x1d8>
    1d24:	04167299 	0x4167299
    1d28:	9eadbcbc 	0x9eadbcbc
    1d2c:	2f70f86d 	sltiu	s0,k1,-1939
    1d30:	cd2e224f 	lwc3	$14,8783(t1)
    1d34:	b56a2cb6 	0xb56a2cb6
    1d38:	c98d0096 	lwc2	$13,150(t4)
    1d3c:	ac7eaaa0 	sw	s8,-21856(v1)
    1d40:	867a6b37 	lh	k0,27447(s3)
    1d44:	cc6d3e98 	lwc3	$13,16024(v1)
    1d48:	eb5c2686 	swc2	$28,9862(k0)
    1d4c:	65b7d994 	0x65b7d994
    1d50:	989f73bf 	lwr	ra,29631(a0)
    1d54:	b09b905f 	0xb09b905f
    1d58:	3e34ba92 	0x3e34ba92
    1d5c:	d8b2fb60 	0xd8b2fb60
    1d60:	497e8a38 	0x497e8a38
    1d64:	61376778 	0x61376778
    1d68:	7e493022 	0x7e493022
    1d6c:	39308d8a 	xori	s0,t1,0x8d8a
    1d70:	39212223 	xori	at,t1,0x2223
    1d74:	17161f1c 	bne	t8,s6,99e8 <lmask+0x4128>
    1d78:	1417211e 	bne	zero,s7,a1f4 <lmask+0x4934>
    1d7c:	2e01131d 	sltiu	at,s0,4893
    1d80:	1b7ca4ac 	0x1b7ca4ac
    1d84:	cadab064 	lwc2	$26,-20380(s6)
    1d88:	186ebd32 	0x186ebd32
    1d8c:	2c25631d 	sltiu	a1,at,25373
    1d90:	1f62a430 	0x1f62a430
    1d94:	47c599ca 	c1	0x1c599ca
    1d98:	a79cc4c0 	sh	gp,-15168(gp)
    1d9c:	3880d9af 	xori	zero,a0,0xd9af
    1da0:	7d99316a 	0x7d99316a
    1da4:	0f80efb6 	jal	e03bed8 <lmask+0xe036618>
    1da8:	c3ab5c25 	lwc0	$11,23589(sp)
    1dac:	6e567694 	0x6e567694
    1db0:	6237221e 	0x6237221e
    1db4:	1530e8d1 	bne	t1,s0,ffffc0fc <lmask+0xffff683c>
    1db8:	6a576bac 	0x6a576bac
    1dbc:	1e475658 	0x1e475658
    1dc0:	483e3142 	0x483e3142
    1dc4:	2e405044 	sltiu	zero,s2,20548
    1dc8:	4c6f2d2a 	0x4c6f2d2a
    1dcc:	23221c1a 	addi	v0,t9,7194
    1dd0:	312b161d 	andi	t3,t1,0x161d
    1dd4:	20209029 	addi	zero,at,-28631
    1dd8:	00150200 	sll	zero,s5,0x8
    1ddc:	58a0a7c0 	0x58a0a7c0
    1de0:	a85700a9 	swl	s7,169(v0)
    1de4:	eb322316 	swc2	$18,8982(t9)
    1de8:	0c620017 	jal	188005c <lmask+0x187a79c>
    1dec:	3d004735 	0x3d004735
    1df0:	f090ceb2 	0xf090ceb2
    1df4:	bce1c8a7 	0xbce1c8a7
    1df8:	cedf760c 	lwc3	$31,30220(s6)
    1dfc:	4b6d2451 	c2	0x16d2451
    1e00:	e1c290b6 	swc0	$2,-28490(t6)
    1e04:	49202070 	0x49202070
    1e08:	a75d322c 	sh	sp,12844(k0)
    1e0c:	1e11332b 	0x1e11332b
    1e10:	5d757149 	0x5d757149
    1e14:	d2a26357 	0xd2a26357
    1e18:	57412222 	0x57412222
    1e1c:	16152348 	bne	s0,s5,ab40 <lmask+0x5280>
    1e20:	67633a38 	0x67633a38
    1e24:	2f2d281a 	sltiu	t5,t9,10266
    1e28:	1e223e39 	0x1e223e39
    1e2c:	20251e1e 	addi	a1,at,7710
    1e30:	b7700008 	0xb7700008
    1e34:	0b1a0077 	j	c6801dc <lmask+0xc67a91c>
    1e38:	cd94d200 	lwc3	$20,-11776(t4)
    1e3c:	3ce1533a 	0x3ce1533a
    1e40:	231e0625 	addi	s8,t8,1573
    1e44:	3d07691f 	0x3d07691f
    1e48:	240759e5 	addiu	a3,zero,23013
    1e4c:	abacc3db 	swl	t4,-15397(sp)
    1e50:	d3afb1db 	0xd3afb1db
    1e54:	904a2f6a 	lbu	t2,12138(v0)
    1e58:	2532c2bc 	addiu	s2,t1,-15684
    1e5c:	64531940 	0x64531940
    1e60:	31bbaf84 	andi	k1,t5,0xaf84
    1e64:	192b1920 	0x192b1920
    1e68:	301e4a6c 	andi	s8,zero,0x4a6c
    1e6c:	5a8bd2c5 	0x5a8bd2c5
    1e70:	836a4f2a 	lb	t2,20266(k1)
    1e74:	56402324 	0x56402324
    1e78:	26445d57 	addiu	a0,s2,23895
    1e7c:	67365729 	0x67365729
    1e80:	2915181d 	slti	s5,t0,6173
    1e84:	3d3a2637 	0x3d3a2637
    1e88:	141e914c 	bne	zero,s8,fffe63bc <lmask+0xfffe0afc>
    1e8c:	050a0223 	0x50a0223
    1e90:	0091bfd7 	0x91bfd7
    1e94:	3b0596b3 	xori	a1,t8,0x96b3
    1e98:	892e2c18 	lwl	t6,11288(t1)
    1e9c:	0918463e 	j	46118f8 <lmask+0x460c038>
    1ea0:	150b418d 	bne	t0,t3,124d8 <lmask+0xcc18>
    1ea4:	577fad8b 	0x577fad8b
    1ea8:	a96cd4b5 	swl	t4,-11083(t3)
    1eac:	96c2ca9a 	lhu	v0,-13670(s6)
    1eb0:	523a503c 	0x523a503c
    1eb4:	598d5400 	0x598d5400
    1eb8:	68681a52 	0x68681a52
    1ebc:	a1550c10 	sb	s5,3088(t2)
    1ec0:	3c4c4802 	0x3c4c4802
    1ec4:	527c61a2 	0x527c61a2
    1ec8:	f1b97491 	0xf1b97491
    1ecc:	2a315844 	slti	s1,s1,22596
    1ed0:	2a141b41 	slti	s4,s0,6977
    1ed4:	55644f5d 	0x55644f5d
    1ed8:	3a4c1e16 	xori	t4,s2,0x1e16
    1edc:	151c3d3a 	bne	t0,gp,113c8 <lmask+0xbb08>
    1ee0:	2541201c 	addiu	at,t2,8220
    1ee4:	63280509 	0x63280509
    1ee8:	0b172adc 	j	c5cab70 <lmask+0xc5c52b0>
    1eec:	c4ff001a 	lwc1	$f31,26(a3)
    1ef0:	e2a4826e 	swc0	$4,-32146(s5)
    1ef4:	1d1f001f 	0x1d1f001f
    1ef8:	46292527 	c1	0x292527
    1efc:	667e9cd1 	0x667e9cd1
    1f00:	9ed7f9e2 	0x9ed7f9e2
    1f04:	dec3e8e2 	0xdec3e8e2
    1f08:	caa35d3f 	lwc2	$3,23871(s5)
    1f0c:	5433839d 	0x5433839d
    1f10:	008b4b72 	0x8b4b72
    1f14:	3b0b7c5e 	xori	t3,t8,0x7c5e
    1f18:	1c456e61 	0x1c456e61
    1f1c:	2f2c9168 	sltiu	t4,t9,-28312
    1f20:	6327b5bc 	0x6327b5bc
    1f24:	b9b73612 	swr	s7,13842(t5)
    1f28:	272e432d 	addiu	t6,t9,17197
    1f2c:	0767a386 	0x767a386
    1f30:	6d4d4b28 	0x6d4d4b28
    1f34:	1a161823 	0x1a161823
    1f38:	3e402532 	0x3e402532
    1f3c:	201f8768 	addi	ra,zero,-30872
    1f40:	0a021414 	j	8085050 <lmask+0x807f790>
    1f44:	1a001e0e 	blez	s0,9780 <lmask+0x3ec0>
    1f48:	154f886c 	bne	t2,t7,fffe40fc <lmask+0xfffde83c>
    1f4c:	65263816 	0x65263816
    1f50:	191f413d 	0x191f413d
    1f54:	0e163b77 	jal	858eddc <lmask+0x858951c>
    1f58:	3a52624a 	xori	s2,s2,0x624a
    1f5c:	299dc848 	slti	sp,t4,-14264
    1f60:	52da9da6 	0x52da9da6
    1f64:	79527111 	0x79527111
    1f68:	9ed1927f 	0x9ed1927f
    1f6c:	3e7e3807 	0x3e7e3807
    1f70:	46626149 	c1	0x626149
    1f74:	496204a6 	0x496204a6
    1f78:	6a752a25 	0x6a752a25
    1f7c:	01b6cbb2 	0x1b6cbb2
    1f80:	3c1e192d 	lui	s8,0x192d
    1f84:	37291640 	ori	t1,t9,0x1640
    1f88:	b7c5b461 	0xb7c5b461
    1f8c:	42272215 	c0	0x272215
    1f90:	16283844 	bne	s1,t0,100a4 <lmask+0xa7e4>
    1f94:	2c1f1f21 	sltiu	ra,zero,7969
    1f98:	55203e00 	0x55203e00
    1f9c:	1411232c 	bne	zero,s1,ac50 <lmask+0x5390>
    1fa0:	13170093 	beq	t8,s7,21f0 <hana_bmp+0xd98>
    1fa4:	d049550e 	0xd049550e
    1fa8:	46092425 	c1	0x92425
    1fac:	3a4e172f 	xori	t6,s2,0x172f
    1fb0:	040b1403 	0x40b1403
    1fb4:	3e411292 	0x3e411292
    1fb8:	c5866fc0 	lwc1	$f6,28608(t4)
    1fbc:	dfbaa07f 	0xdfbaa07f
    1fc0:	7d3cabd2 	0x7d3cabd2
    1fc4:	d4cfa8ae 	0xd4cfa8ae
    1fc8:	90bf0094 	lbu	ra,148(a1)
    1fcc:	7823421d 	0x7823421d
    1fd0:	4fb65f47 	c3	0x1b65f47
    1fd4:	195e7247 	0x195e7247
    1fd8:	a6bf9360 	sh	ra,-27808(s5)
    1fdc:	18142f1f 	0x18142f1f
    1fe0:	272870a8 	addiu	t0,t9,28840
    1fe4:	d1984d27 	0xd1984d27
    1fe8:	110c1d33 	beq	t0,t4,94b8 <lmask+0x3bf8>
    1fec:	414a2c0f 	0x414a2c0f
    1ff0:	07155142 	0x7155142
    1ff4:	0c28000d 	jal	a00034 <lmask+0x9fa774>
    1ff8:	5a181323 	0x5a181323
    1ffc:	01952f5c 	0x1952f5c
    2000:	5b07440a 	0x5b07440a
    2004:	2c1c1c5f 	sltiu	gp,zero,7263
    2008:	00a06a0e 	0xa06a0e
    200c:	1d0c452b 	0x1d0c452b
    2010:	15f5bf7a 	bne	t7,s5,ffff1dfc <lmask+0xfffec53c>
    2014:	c3e5d1cf 	lwc0	$5,-11825(ra)
    2018:	9b618afe 	lwr	at,-29954(k1)
    201c:	af76f7d9 	sw	s6,-2087(k1)
    2020:	d9b75e6b 	0xd9b75e6b
    2024:	7342668a 	0x7342668a
    2028:	0d109c80 	jal	4427200 <lmask+0x4421940>
    202c:	2f160f2c 	sltiu	s6,t8,3884
    2030:	a28a9ba5 	sb	t2,-25691(s4)
    2034:	a7ac5803 	sh	t4,22531(sp)
    2038:	231f8786 	addi	ra,t8,-30842
    203c:	b49bc0be 	0xb49bc0be
    2040:	a5350911 	sh	s5,2321(t1)
    2044:	1c354b4e 	0x1c354b4e
    2048:	46371e26 	c1	0x371e26
    204c:	39710721 	xori	s1,t3,0x721
    2050:	0a1f4517 	j	87d145c <lmask+0x87cbb9c>
    2054:	2a0d1c08 	slti	t5,s0,7176
    2058:	01371b3b 	0x1371b3b
    205c:	3d1b2921 	0x3d1b2921
    2060:	0d252884 	jal	494a210 <lmask+0x4944950>
    2064:	8f081610 	lw	t0,5648(t8)
    2068:	2c585448 	sltiu	t8,v0,21576
    206c:	98a8acc1 	lwr	t0,-21311(a1)
    2070:	93c9b265 	lbu	t1,-19867(s8)
    2074:	00e0e7fa 	0xe0e7fa
    2078:	3003c1e9 	andi	v1,zero,0xc1e9
    207c:	3c4e219f 	0x3c4e219f
    2080:	8fd40032 	lw	s4,50(s8)
    2084:	00090b4b 	0x90b4b
    2088:	274143c6 	addiu	at,k0,17350
    208c:	c8913852 	lwc2	$17,14418(a0)
    2090:	4f143253 	c3	0x1143253
    2094:	27693346 	addiu	t1,k1,13126
    2098:	b9d2d0bd 	swr	s2,-12099(t6)
    209c:	390f1929 	xori	t7,t0,0x1929
    20a0:	3b485070 	xori	t0,k0,0x5070
    20a4:	1f244072 	0x1f244072
    20a8:	61001858 	0x61001858
    20ac:	951c0f2e 	lhu	gp,3886(t0)
    20b0:	1009363e 	beq	zero,t1,f9ac <lmask+0xa0ec>
    20b4:	01006e3f 	0x1006e3f
    20b8:	101b2138 	beq	zero,k1,a59c <lmask+0x4cdc>
    20bc:	1711002b 	bne	t8,s1,216c <hana_bmp+0xd14>
    20c0:	2e423e0c 	sltiu	v0,s2,15884
    20c4:	7fa7bd39 	0x7fa7bd39
    20c8:	fbe37a02 	0xfbe37a02
    20cc:	00074436 	0x74436
    20d0:	5f50f7a5 	0x5f50f7a5
    20d4:	d4406f3e 	0xd4406f3e
    20d8:	db327f2b 	0xdb327f2b
    20dc:	53382411 	0x53382411
    20e0:	31427b6f 	andi	v0,t2,0x7b6f
    20e4:	79917faf 	0x79917faf
    20e8:	bb54605f 	swr	s4,24671(k0)
    20ec:	0f213882 	jal	c84e208 <lmask+0xc848948>
    20f0:	82cea8bb 	lb	t6,-22341(s6)
    20f4:	ceb3902d 	lwc3	$19,-28627(s5)
    20f8:	2b1b184b 	slti	k1,t8,6219
    20fc:	6e7a231d 	0x6e7a231d
    2100:	5e494b86 	0x5e494b86
    2104:	0d22504a 	jal	4894128 <lmask+0x488e868>
    2108:	0b796f2d 	j	de5bcb4 <lmask+0xde563f4>
    210c:	331d22be 	andi	sp,t8,0x22be
    2110:	d57a1119 	0xd57a1119
    2114:	190b6e73 	0x190b6e73
    2118:	212c420a 	addi	t4,t1,16906
    211c:	2b054273 	slti	a1,t8,17011
    2120:	85394af4 	lh	t9,19188(t1)
    2124:	82002310 	lb	zero,8976(s0)
    2128:	14592a3c 	bne	v0,t9,ca1c <lmask+0x715c>
    212c:	e6db4ec5 	swc1	$f27,20165(s6)
    2130:	eb8b932e 	swc2	$11,-27858(gp)
    2134:	0a7a756f 	j	9e9d5bc <lmask+0x9e97cfc>
    2138:	5a363843 	0x5a363843
    213c:	523a108b 	0x523a108b
    2140:	919ed267 	lbu	s8,-11673(t4)
    2144:	12253023 	beq	s1,a1,e1d4 <lmask+0x8914>
    2148:	20250921 	addi	a1,at,2337
    214c:	2378a1af 	addi	t8,k1,-24145
    2150:	79442e0e 	0x79442e0e
    2154:	1638677a 	bne	s1,t8,1bf40 <lmask+0x16680>
    2158:	475c5753 	c1	0x15c5753
    215c:	005c7f14 	0x5c7f14
    2160:	2c0f767c 	sltiu	t7,zero,30332
    2164:	79502f53 	0x79502f53
    2168:	958cb641 	lhu	t4,-18879(t4)
    216c:	111a3141 	beq	t0,k0,e674 <lmask+0x8db4>
    2170:	66ba7416 	0x66ba7416
    2174:	820d003f 	lb	t5,63(s0)
    2178:	28371865 	slti	s7,at,6245
    217c:	0a1c8202 	j	8720808 <lmask+0x871af48>
    2180:	152e082f 	bne	t1,t6,4240 <hana_bmp+0x2de8>
    2184:	3a7afb13 	xori	k0,s3,0xfb13
    2188:	6ad0b4d4 	0x6ad0b4d4
    218c:	6506375c 	0x6506375c
    2190:	3e7d4159 	0x3e7d4159
    2194:	27221e02 	addiu	v0,t9,7682
    2198:	216f5677 	addi	t7,t3,22135
    219c:	d500a35d 	0xd500a35d
    21a0:	1119231b 	beq	t0,t9,ae10 <lmask+0x5550>
    21a4:	1b25233f 	0x1b25233f
    21a8:	69aa7d32 	0x69aa7d32
    21ac:	1802102b 	0x1802102b
    21b0:	524e6261 	0x524e6261
    21b4:	58121b00 	0x58121b00
    21b8:	6f7c1722 	0x6f7c1722
    21bc:	8fd79cb9 	lw	s7,-25415(s8)
    21c0:	9f7c6e5c 	0x9f7c6e5c
    21c4:	a140160f 	sb	zero,5647(t2)
    21c8:	3b42414e 	xori	v0,k0,0x414e
    21cc:	3923162a 	xori	v1,t1,0x162a
    21d0:	0c580017 	jal	160005c <lmask+0x15fa79c>
    21d4:	2177532b 	addi	s7,t3,21291
    21d8:	00122036 	0x122036
    21dc:	16323703 	bne	s1,s2,fdec <lmask+0xa52c>
    21e0:	259d4000 	addiu	sp,t4,16384
    21e4:	0b921642 	j	e485908 <lmask+0xe480048>
    21e8:	63445c4e 	0x63445c4e
    21ec:	46a71a18 	c1	0xa71a18
    21f0:	070c2c3c 	0x70c2c3c
    21f4:	05579034 	0x5579034
    21f8:	c2aa5519 	lwc0	$10,21785(s5)
    21fc:	1c1e0f19 	0x1c1e0f19
    2200:	1615357c 	bne	s0,s5,f7f4 <lmask+0x9f34>
    2204:	7e52360c 	0x7e52360c
    2208:	1c24383d 	0x1c24383d
    220c:	676b870d 	0x676b870d
    2210:	1929188e 	0x1929188e
    2214:	2d1c13f3 	sltiu	gp,t0,5107
    2218:	cabaaaeb 	lwc2	$26,-21781(s5)
    221c:	606f8c50 	0x606f8c50
    2220:	2c082315 	sltiu	t0,zero,8981
    2224:	64140f09 	0x64140f09
    2228:	000b2500 	sll	a0,t3,0x14
    222c:	1f01678e 	0x1f01678e
    2230:	64000c56 	0x64000c56
    2234:	28683e0c 	slti	t0,v1,15884
    2238:	14303233 	bne	at,s0,eb08 <lmask+0x9248>
    223c:	13358e13 	beq	t9,s5,fffe5a8c <lmask+0xfffe01cc>
    2240:	3c546443 	0x3c546443
    2244:	3f5d5802 	0x3f5d5802
    2248:	2916161c 	slti	s6,t0,5660
    224c:	2a32282c 	slti	s2,s1,10284
    2250:	2356788b 	addi	s6,k0,30859
    2254:	77391214 	jalx	ce44850 <lmask+0xce3ef90>
    2258:	08021216 	j	84858 <lmask+0x7ef98>
    225c:	07263343 	0x7263343
    2260:	3a3c5b26 	xori	gp,s1,0x5b26
    2264:	30476a72 	andi	a3,v0,0x6a72
    2268:	a8f84614 	swl	t8,17940(a3)
    226c:	29001338 	slti	zero,t0,4920
    2270:	6d30d1bd 	0x6d30d1bd
    2274:	9c79fbac 	0x9c79fbac
    2278:	ca758273 	lwc2	$21,-32141(s3)
    227c:	3e115110 	0x3e115110
    2280:	2bbfa543 	slti	ra,sp,-23229
    2284:	021230b2 	0x21230b2
    2288:	a072008f 	sb	s2,143(v1)
    228c:	ccbba92b 	lwc3	$27,-22229(a1)
    2290:	28242e23 	slti	a0,at,11811
    2294:	4e390611 	c3	0x390611
    2298:	56b41e67 	0x56b41e67
    229c:	1c177362 	0x1c177362
    22a0:	3e14413a 	0x3e14413a
    22a4:	37485652 	ori	t0,k0,0x5652
    22a8:	51504117 	0x51504117
    22ac:	395c9a40 	xori	gp,t2,0x9a40
    22b0:	614e3a28 	0x614e3a28
    22b4:	212b5b27 	addi	t3,t1,23335
    22b8:	190a2049 	0x190a2049
    22bc:	48213138 	0x48213138
    22c0:	0c004e8c 	jal	13a30 <lmask+0xe170>
    22c4:	be005c6c 	0xbe005c6c
    22c8:	120d8bc4 	beq	s0,t5,fffe51dc <lmask+0xfffdf91c>
    22cc:	c7d73a4a 	lwc1	$f23,14922(s8)
    22d0:	5dd7ad60 	0x5dd7ad60
    22d4:	3a555f15 	xori	s5,s2,0x5f15
    22d8:	31520066 	andi	s2,t2,0x66
    22dc:	dbbe9603 	0xdbbe9603
    22e0:	977f9e9d 	lhu	ra,-24931(k1)
    22e4:	00cdddad 	0xcdddad
    22e8:	bc672b30 	0xbc672b30
    22ec:	24485b7b 	addiu	t0,v0,23419
    22f0:	6b38095d 	0x6b38095d
    22f4:	02580e51 	0x2580e51
    22f8:	60493c14 	0x60493c14
    22fc:	3e2d3644 	0x3e2d3644
    2300:	29391f18 	slti	t9,t1,7960
    2304:	3c5a0834 	0x3c5a0834
    2308:	5381c381 	0x5381c381
    230c:	5d4e5883 	0x5d4e5883
    2310:	6c68341d 	0x6c68341d
    2314:	2f594d33 	sltiu	t9,k0,19763
    2318:	34540103 	ori	s4,v0,0x103
    231c:	5a468201 	0x5a468201
    2320:	8ac1cc85 	lwl	at,-13179(s6)
    2324:	9fafb8dc 	0x9fafb8dc
    2328:	4d67b6b9 	0x4d67b6b9
    232c:	d183682c 	0xd183682c
    2330:	302d1a4a 	andi	t5,at,0x1a4a
    2334:	160088df 	bnez	s0,fffe46b4 <lmask+0xfffdedf4>
    2338:	bbb4a244 	swr	s4,-23996(sp)
    233c:	e23931a9 	swc0	$25,12713(s1)
    2340:	98d6d6b2 	lwr	s6,-10574(a2)
    2344:	15322c3c 	bne	t1,s2,d438 <lmask+0x7b78>
    2348:	3551673d 	ori	s1,t2,0x673d
    234c:	26201632 	addiu	zero,s1,5682
    2350:	0243acb7 	0x243acb7
    2354:	b11b2317 	0xb11b2317
    2358:	0f0e7250 	jal	c39c940 <lmask+0xc397080>
    235c:	282d1c0c 	slti	t5,at,7180
    2360:	0956acaf 	j	55ab2bc <lmask+0x55a59fc>
    2364:	b7b77d57 	0xb7b77d57
    2368:	7d58825a 	0x7d58825a
    236c:	3b12416f 	xori	s2,t8,0x416f
    2370:	4e25223c 	c3	0x25223c
    2374:	01050c1e 	0x1050c1e
    2378:	0811177c 	j	445df0 <lmask+0x440530>
    237c:	c4dfd492 	lwc1	$f31,-11118(a2)
    2380:	79c6e6e6 	0x79c6e6e6
    2384:	a2d48343 	sb	s4,-31933(s6)
    2388:	23270e1e 	addi	a3,t9,3614
    238c:	11262bba 	beq	t1,a2,d278 <lmask+0x79b8>
    2390:	c0b3dab8 	lwc0	$19,-9544(a1)
    2394:	d8f91e16 	0xd8f91e16
    2398:	052bada5 	0x52bada5
    239c:	9c003505 	0x9c003505
    23a0:	3a344467 	xori	s4,s1,0x4467
    23a4:	1f290e10 	0x1f290e10
    23a8:	50200e63 	0x50200e63
    23ac:	f8c35668 	0xf8c35668
    23b0:	bcca5752 	0xbcca5752
    23b4:	b68c5914 	0xb68c5914
    23b8:	12122f30 	beq	s0,s2,e07c <lmask+0x87bc>
    23bc:	6ce1b0c6 	0x6ce1b0c6
    23c0:	ce626175 	lwc3	$2,24949(s3)
    23c4:	5a47290e 	0x5a47290e
    23c8:	2a63351d 	slti	v1,s3,13597
    23cc:	1c290700 	0x1c290700
    23d0:	1f661a36 	0x1f661a36
    23d4:	09009cc5 	j	4027314 <lmask+0x4021a54>
    23d8:	e3c7cbc8 	swc0	$7,-13368(s8)
    23dc:	ebc28aca 	swc2	$2,-30006(s8)
    23e0:	9f0e2f20 	0x9f0e2f20
    23e4:	0034240c 	syscall	0xd090
    23e8:	6c96a4b3 	0x6c96a4b3
    23ec:	b3629dcf 	0xb3629dcf
    23f0:	010e0067 	0x10e0067
    23f4:	76989f00 	jalx	a627c00 <lmask+0xa622340>
    23f8:	2299604d 	addi	t9,s4,24653
    23fc:	7f120467 	0x7f120467
    2400:	131a4e40 	beq	t8,k0,15d04 <lmask+0x10444>
    2404:	a1e53400 	sb	a1,13312(t7)
    2408:	0044a982 	0x44a982
    240c:	e748d0c5 	swc1	$f8,-12091(k0)
    2410:	7c052e5d 	0x7c052e5d
    2414:	2f475437 	sltiu	a3,k0,21559
    2418:	e5cacc61 	swc1	$f10,-13215(t6)
    241c:	71969a88 	0x71969a88
    2420:	8a847d34 	lwl	a0,32052(s4)
    2424:	49164b29 	0x49164b29
    2428:	1600594b 	bnez	s0,18958 <lmask+0x13098>
    242c:	38494c88 	xori	t1,v0,0x4c88
    2430:	71e2b586 	0x71e2b586
    2434:	b0d6d667 	0xb0d6d667
    2438:	9687d500 	lhu	a3,-11008(s4)
    243c:	2f12050f 	sltiu	s2,t8,1295
    2440:	35181c3f 	ori	t8,t0,0x1c3f
    2444:	7fc6c5ab 	0x7fc6c5ab
    2448:	a1dbcc1e 	sb	k1,-13282(t6)
    244c:	00755d6e 	0x755d6e
    2450:	9a34955e 	lwr	s4,-27298(s1)
    2454:	678f9100 	0x678f9100
    2458:	7f927d43 	0x7f927d43
    245c:	b3b46b00 	0xb3b46b00
    2460:	0959c300 	j	5670c00 <lmask+0x566b340>
    2464:	d19a8cc3 	0xd19a8cc3
    2468:	97eba902 	lhu	t3,-22270(ra)
    246c:	2d31479a 	sltiu	s1,t1,18330
    2470:	94b0bdda 	lhu	s0,-16934(a1)
    2474:	6b47bcc7 	0x6b47bcc7
    2478:	974b3550 	lhu	t3,13648(k0)
    247c:	4a324415 	c2	0x324415
    2480:	4438040b 	0x4438040b
    2484:	20214d87 	addi	at,at,19847
    2488:	c5c0b493 	lwc1	$f0,-19309(t6)
    248c:	cf5b938d 	lwc3	$27,-27763(k0)
    2490:	c3b66164 	lwc0	$22,24932(sp)
    2494:	93012c14 	lbu	at,11284(t8)
    2498:	0c0d0821 	jal	342084 <lmask+0x33c7c4>
    249c:	20191e52 	addi	t9,zero,7762
    24a0:	7396d2c0 	0x7396d2c0
    24a4:	dfd6002d 	0xdfd6002d
    24a8:	c6b1b9dc 	lwc1	$f17,-17956(s5)
    24ac:	575c8434 	0x575c8434
    24b0:	a9ba9aa6 	swl	k0,-25946(t5)
    24b4:	3a29582d 	xori	t1,s1,0x582d
    24b8:	141857ff 	bne	zero,t8,184b8 <lmask+0x12bf8>
    24bc:	52a2bee6 	0x52a2bee6
    24c0:	d4c0c1f1 	0xd4c0c1f1
    24c4:	53132e3e 	0x53132e3e
    24c8:	81b4a8b6 	lb	s4,-22346(t5)
    24cc:	e4ed6507 	swc1	$f13,25863(a3)
    24d0:	aebfaba4 	sw	ra,-21596(s5)
    24d4:	6d430a3b 	0x6d430a3b
    24d8:	3c1b1f36 	lui	k1,0x1f36
    24dc:	0f0c551f 	jal	c31547c <lmask+0xc30fbbc>
    24e0:	895cadca 	lwl	gp,-21046(t2)
    24e4:	c0bceb1a 	lwc0	$28,-5350(a1)
    24e8:	5bdd9fd0 	0x5bdd9fd0
    24ec:	b5180b13 	0xb5180b13
    24f0:	0c12040e 	jal	481038 <lmask+0x47b778>
    24f4:	4119281a 	0x4119281a
    24f8:	6e4c866d 	0x6e4c866d
    24fc:	cbc0a0ab 	lwc2	$0,-24405(s8)
    2500:	4300f7c7 	c0	0x100f7c7
    2504:	d4f1a68d 	0xd4f1a68d
    2508:	8d4a1cd9 	lw	t2,7385(t2)
    250c:	cebf0b40 	lwc3	$31,2880(s5)
    2510:	3067643c 	andi	a3,v1,0x643c
    2514:	3ce67b31 	0x3ce67b31
    2518:	837aaed7 	lb	k0,-20777(k1)
    251c:	00776800 	0x776800
    2520:	6b88575c 	0x6b88575c
    2524:	74824f62 	jalx	2093d88 <lmask+0x208e4c8>
    2528:	f982cfd5 	0xf982cfd5
    252c:	a0000013 	sb	zero,19(zero)
    2530:	213a4d29 	addi	k0,t1,19753
    2534:	273f1112 	addiu	ra,t9,4370
    2538:	57487859 	0x57487859
    253c:	4adeddaf 	c2	0xdeddaf
    2540:	b6d3dfab 	0xb6d3dfab
    2544:	e1c18808 	swc0	$1,-30712(t6)
    2548:	0c0b0f00 	jal	2c3c00 <lmask+0x2be340>
    254c:	0d015219 	jal	4054864 <lmask+0x404efa4>
    2550:	222daf50 	addi	t5,s1,-20656
    2554:	9b3ea3a2 	lwr	s8,-23646(t9)
    2558:	85008dac 	lh	zero,-29268(t0)
    255c:	c0c84792 	lwc0	$8,18322(a2)
    2560:	f8c38cb5 	0xf8c38cb5
    2564:	f09dd8d3 	0xf09dd8d3
    2568:	02557159 	0x2557159
    256c:	1aa0e0a8 	blez	s5,ffffa810 <lmask+0xffff4f50>
    2570:	996151c1 	lwr	at,20929(t3)
    2574:	2ac903d1 	slti	t1,s6,977
    2578:	be5a4781 	0xbe5a4781
    257c:	593f3f6a 	0x593f3f6a
    2580:	0404d2b1 	0x404d2b1
    2584:	d69cec26 	0xd69cec26
    2588:	0b07195f 	j	c1c657c <lmask+0xc1c0cbc>
    258c:	6029313d 	0x6029313d
    2590:	4081367c 	0x4081367c
    2594:	67605fb9 	0x67605fb9
    2598:	1293d0b8 	beq	s4,s3,ffff687c <lmask+0xffff0fbc>
    259c:	a0b9a8d1 	sb	t9,-22319(a1)
    25a0:	000f1607 	0xf1607
    25a4:	151a1b15 	bne	t0,k0,91fc <lmask+0x393c>
    25a8:	041e188d 	0x41e188d
    25ac:	a5bc6d2d 	sh	gp,27949(t5)
    25b0:	7e798fb4 	0x7e798fb4
    25b4:	bac1e7a4 	swr	at,-6236(s6)
    25b8:	4408a4c1 	0x4408a4c1
    25bc:	717c8daf 	0x717c8daf
    25c0:	a8e37e24 	swl	v1,32292(a3)
    25c4:	3400a088 	ori	zero,zero,0xa088
    25c8:	bbcb6aaa 	swr	t3,27306(s8)
    25cc:	523b38cb 	0x523b38cb
    25d0:	e8aa9862 	swc2	$10,-26526(a1)
    25d4:	2a2c4f62 	slti	t4,s1,20322
    25d8:	84390b58 	lh	t9,2904(at)
    25dc:	c6c1ad56 	lwc1	$f1,-21162(s6)
    25e0:	a5f63f21 	sh	s6,16161(t7)
    25e4:	0c49382a 	jal	124e0a8 <lmask+0x12487e8>
    25e8:	29317a7c 	slti	s1,t1,31356
    25ec:	6d695154 	0x6d695154
    25f0:	16484194 	bne	s2,t0,12c44 <lmask+0xd384>
    25f4:	c3dcb8d3 	lwc0	$28,-18221(s8)
    25f8:	87ca3400 	lh	t2,13312(s8)
    25fc:	0e202e2f 	jal	880b8bc <lmask+0x8805ffc>
    2600:	2c19231d 	sltiu	t9,zero,8989
    2604:	19264408 	0x19264408
    2608:	394e5987 	xori	t6,t2,0x5987
    260c:	2c8ba5be 	sltiu	t3,a0,-23106
    2610:	aaca59c7 	swl	t2,22983(s6)
    2614:	c1c88880 	lwc0	$8,-30592(t6)
    2618:	9b6224c5 	lwr	v0,9413(k1)
    261c:	ea3a0025 	swc2	$26,37(s1)
    2620:	4872efa1 	0x4872efa1
    2624:	35001300 	ori	zero,t0,0x1300
    2628:	3fa39ab8 	0x3fa39ab8
    262c:	96596268 	lhu	t9,25192(s2)
    2630:	667b4a07 	0x667b4a07
    2634:	59067ee8 	0x59067ee8
    2638:	38113ec6 	xori	s1,zero,0x3ec6
    263c:	75694325 	jalx	5a50c94 <lmask+0x5a4b3d4>
    2640:	1c2b321c 	0x1c2b321c
    2644:	838d2f1c 	lb	t5,12060(gp)
    2648:	235b4623 	addi	k1,k0,17955
    264c:	1016cebc 	beq	zero,s6,ffff6140 <lmask+0xffff0880>
    2650:	4154c88e 	0x4154c88e
    2654:	6d1a2515 	0x6d1a2515
    2658:	061d051e 	0x61d051e
    265c:	0f111f0b 	jal	c447c2c <lmask+0xc44236c>
    2660:	0b2b3e26 	j	cacf898 <lmask+0xcac9fd8>
    2664:	08145e66 	j	517998 <lmask+0x5120d8>
    2668:	b2a19c92 	0xb2a19c92
    266c:	ebad9d87 	swc2	$13,-25209(sp)
    2670:	6f621827 	0x6f621827
    2674:	2326d473 	addi	a2,t9,-11149
    2678:	00303f14 	0x303f14
    267c:	ee00050c 	swc3	$0,1292(s0)
    2680:	01122286 	0x1122286
    2684:	8fcf3e55 	lw	t7,15957(s8)
    2688:	617d9a40 	0x617d9a40
    268c:	00340923 	0x340923
    2690:	3a641613 	xori	a0,s3,0x1613
    2694:	1966d631 	0x1966d631
    2698:	2e203734 	sltiu	zero,s1,14132
    269c:	2e318c89 	sltiu	s1,s1,-29559
    26a0:	3b170857 	xori	s7,t8,0x857
    26a4:	6e001702 	0x6e001702
    26a8:	1aa22559 	0x1aa22559
    26ac:	31be764f 	andi	s8,t5,0x764f
    26b0:	030b1115 	0x30b1115
    26b4:	150b1504 	bne	t0,t3,7ac8 <lmask+0x2208>
    26b8:	2e11172d 	sltiu	s1,s0,5933
    26bc:	332e1a36 	andi	t6,t9,0x1a36
    26c0:	000dfee9 	0xdfee9
    26c4:	b8d096f0 	swr	s0,-26896(a2)
    26c8:	a8905308 	swl	s0,21256(a0)
    26cc:	04eccc06 	0x4eccc06
    26d0:	b800223b 	swr	zero,8763(zero)
    26d4:	340f0019 	ori	t7,zero,0x19
    26d8:	2d030b37 	sltiu	v1,t0,2871
    26dc:	1c6876b6 	0x1c6876b6
    26e0:	1b445e9e 	0x1b445e9e
    26e4:	820a763b 	lb	t2,30267(s0)
    26e8:	1e293f15 	0x1e293f15
    26ec:	122b2c0b 	beq	s1,t3,d71c <lmask+0x7e5c>
    26f0:	60072c33 	0x60072c33
    26f4:	332d3335 	andi	t5,t9,0x3335
    26f8:	6d934400 	0x6d934400
    26fc:	01005b41 	0x1005b41
    2700:	070a4b6f 	0x70a4b6f
    2704:	4a18c78f 	c2	0x18c78f
    2708:	8d63000a 	lw	v1,10(t3)
    270c:	2f0c1619 	sltiu	t4,t8,5657
    2710:	1010260a 	beq	zero,s0,bf3c <lmask+0x667c>
    2714:	053c5908 	0x53c5908
    2718:	15441237 	bne	t2,a0,6ff8 <lmask+0x1738>
    271c:	ebdbffc3 	swc2	$27,-61(s8)
    2720:	6bffd3c0 	0x6bffd3c0
    2724:	7a0ba3a6 	0x7a0ba3a6
    2728:	b2174c23 	0xb2174c23
    272c:	214f1930 	addi	t7,t2,6448
    2730:	0e2c0d0d 	jal	8b03434 <lmask+0x8afdb74>
    2734:	13071a3c 	beq	t8,a3,9028 <lmask+0x3768>
    2738:	47531b33 	c1	0x1531b33
    273c:	857b005d 	lh	k1,93(t3)
    2740:	68132720 	0x68132720
    2744:	201f0002 	addi	ra,zero,2
    2748:	1568068c 	bne	t3,t0,417c <hana_bmp+0x2d24>
    274c:	2b23202a 	slti	v1,t9,8234
    2750:	21368890 	addi	s6,t1,-30576
    2754:	13180600 	beq	t8,t8,3f58 <hana_bmp+0x2b00>
    2758:	022f0413 	0x22f0413
    275c:	45586284 	0x45586284
    2760:	dbc76174 	0xdbc76174
    2764:	53001212 	0x53001212
    2768:	08141b0c 	j	506c30 <lmask+0x501370>
    276c:	0e0d1443 	jal	834510c <lmask+0x833f84c>
    2770:	040c2f09 	0x40c2f09
    2774:	19104cac 	0x19104cac
    2778:	55171962 	0x55171962
    277c:	c4b84a13 	lwc1	$f24,18963(a1)
    2780:	b18ddaf2 	0xb18ddaf2
    2784:	5bbb8055 	0x5bbb8055
    2788:	6bd85c00 	0x6bd85c00
    278c:	100f0b39 	beq	zero,t7,5474 <izigzag_index+0x128>
    2790:	55123592 	0x55123592
    2794:	17565503 	bne	k0,s6,17ba4 <lmask+0x122e4>
    2798:	583a2033 	0x583a2033
    279c:	1d100a2a 	0x1d100a2a
    27a0:	c89ba824 	lwc2	$27,-22492(a0)
    27a4:	6115161b 	0x6115161b
    27a8:	1d312a1d 	0x1d312a1d
    27ac:	989d1a0b 	lwr	sp,6667(a0)
    27b0:	0f0a0c0c 	jal	c283030 <lmask+0xc27d770>
    27b4:	0a195050 	j	8654140 <lmask+0x864e880>
    27b8:	4d1b5fa1 	0x4d1b5fa1
    27bc:	73681511 	0x73681511
    27c0:	0c0f280e 	jal	3ca038 <lmask+0x3c4778>
    27c4:	120d0473 	beq	s0,t5,3994 <hana_bmp+0x253c>
    27c8:	d46dc021 	0xd46dc021
    27cc:	1e372e1b 	0x1e372e1b
    27d0:	0f4f20de 	jal	d3c8378 <lmask+0xd3c2ab8>
    27d4:	3e08068f 	0x3e08068f
    27d8:	a8a0acb2 	swl	zero,-21326(a1)
    27dc:	b3555541 	0xb3555541
    27e0:	cd783789 	lwc3	$24,14217(t3)
    27e4:	d10b0e00 	0xd10b0e00
    27e8:	4d782227 	0x4d782227
    27ec:	4b312934 	c2	0x1312934
    27f0:	122b5b43 	beq	s1,t3,19500 <lmask+0x13c40>
    27f4:	0e0f0616 	jal	83c1858 <lmask+0x83bbf98>
    27f8:	1a6b3f1c 	0x1a6b3f1c
    27fc:	00272018 	0x272018
    2800:	1d14201f 	0x1d14201f
    2804:	272d989b 	addiu	t5,t9,-26469
    2808:	0f0d0000 	jal	c340000 <lmask+0xc33a740>
    280c:	0e0c0422 	jal	8301088 <lmask+0x82fb7c8>
    2810:	3e355d38 	0x3e355d38
    2814:	49062778 	0x49062778
    2818:	6e001000 	0x6e001000
    281c:	00090d00 	sll	at,t1,0x14
    2820:	20bc28cf 	addi	gp,a1,10447
    2824:	f3e20006 	0xf3e20006
    2828:	0e14602f 	jal	85180bc <lmask+0x85127fc>
    282c:	18b3f82b 	0x18b3f82b
    2830:	0656dc96 	0x656dc96
    2834:	b3cfa3a2 	0xb3cfa3a2
    2838:	8accd24a 	lwl	t4,-11702(s6)
    283c:	2bc6a6be 	slti	a2,s8,-22850
    2840:	d3ae0734 	0xd3ae0734
    2844:	2722381e 	addiu	v0,t9,14366
    2848:	1f0b333f 	0x1f0b333f
    284c:	373b5753 	ori	k1,t9,0x5753
    2850:	462c321b 	c1	0x2c321b
    2854:	20222320 	addi	v0,at,8992
    2858:	261f211a 	addiu	ra,s0,8474
    285c:	3b392d34 	xori	t9,t9,0x2d34
    2860:	43490000 	c0	0x1490000
    2864:	06030b08 	0x6030b08
    2868:	02052c23 	0x2052c23
    286c:	aa334c3a 	swl	s3,19514(s1)
    2870:	8d520f00 	lw	s2,3840(t2)
    2874:	0010213c 	0x10213c
    2878:	05003cae 	bltz	t0,11b34 <lmask+0xc274>
    287c:	c569e2f4 	lwc1	$f9,-7436(t3)
    2880:	f2000052 	0xf2000052
    2884:	411b102d 	0x411b102d
    2888:	a4000083 	sh	zero,131(zero)
    288c:	717148d7 	0x717148d7
    2890:	bfcdaec7 	0xbfcdaec7
    2894:	d08900cf 	0xd08900cf
    2898:	afead2f0 	sw	t2,-11536(ra)
    289c:	3a231a22 	xori	v1,s1,0x1a22
    28a0:	19140c38 	0x19140c38
    28a4:	3c121616 	lui	s2,0x1616
    28a8:	1a2e425e 	0x1a2e425e
    28ac:	4f561e10 	c3	0x1561e10
    28b0:	121d1650 	beq	s0,sp,81f4 <lmask+0x2934>
    28b4:	4d391e38 	0x4d391e38
    28b8:	262d464c 	addiu	t5,s1,17996
    28bc:	5b020409 	0x5b020409
    28c0:	12010304 	beq	s0,at,34d4 <hana_bmp+0x207c>
    28c4:	00007d63 	0x7d63
    28c8:	1a020000 	0x1a020000
    28cc:	0706061c 	0x706061c
    28d0:	603e0416 	0x603e0416
    28d4:	1f1df9f9 	0x1f1df9f9
    28d8:	d1a4ecef 	0xd1a4ecef
    28dc:	a4ceae07 	sh	t6,-20985(a2)
    28e0:	42a80007 	c0	0xa80007
    28e4:	8c00c1ef 	lw	zero,-15889(zero)
    28e8:	32dab997 	andi	k0,s6,0xb997
    28ec:	cfd8adbd 	lwc3	$24,-21059(s8)
    28f0:	4bdccba8 	c2	0x1dccba8
    28f4:	e0cd8000 	swc0	$13,-32768(a2)
    28f8:	2714032a 	addiu	s4,t8,810
    28fc:	33342c17 	andi	s4,t9,0x2c17
    2900:	0c0a0a14 	jal	282850 <lmask+0x27cf90>
    2904:	290a2122 	slti	t2,t0,8482
    2908:	3e441912 	0x3e441912
    290c:	4e565545 	c3	0x565545
    2910:	51312523 	0x51312523
    2914:	535bbfd5 	0x535bbfd5
    2918:	c29b8f63 	lwc0	$27,-28829(s4)
    291c:	93bcafa1 	lbu	gp,-20575(sp)
    2920:	c1c2a4bf 	lwc0	$2,-23361(t6)
    2924:	bab1c1a5 	swr	s1,-15963(s5)
    2928:	b9d3bc92 	swr	s3,-17262(t6)
    292c:	2f121f26 	sltiu	s2,t8,7974
    2930:	24352b21 	addiu	s5,at,11041
    2934:	2c16131a 	sltiu	s6,zero,4890
    2938:	1118086b 	beq	t0,t8,4ae8 <hana_bmp+0x3690>
    293c:	bbd2be87 	swr	s2,-16761(s8)
    2940:	5e614a23 	0x5e614a23
    2944:	1138546a 	beq	t1,t8,17af0 <lmask+0x12230>
    2948:	624d432e 	0x624d432e
    294c:	28203842 	slti	zero,at,14402
    2950:	402f2927 	0x402f2927
    2954:	242e2a37 	addiu	t6,at,10807
    2958:	21212526 	addi	at,t1,9510
    295c:	1e24272c 	0x1e24272c
    2960:	210d0f11 	addi	t5,t0,3857
    2964:	1a24241b 	0x1a24241b
    2968:	15131c15 	bne	t0,s3,99c0 <lmask+0x4100>
    296c:	1b263127 	0x1b263127
    2970:	a7bf6257 	sh	ra,25175(sp)
    2974:	ac8896d4 	sw	t0,-26924(a0)
    2978:	aa568ec4 	swl	s6,-28988(s2)
    297c:	d1ac8d70 	0xd1ac8d70
    2980:	c89788cf 	lwc2	$23,-30513(a0)
    2984:	bec6ad6a 	0xbec6ad6a
    2988:	32190e07 	andi	t9,s0,0xe07
    298c:	1c282327 	0x1c282327
    2990:	21181d18 	addi	t8,t0,7448
    2994:	016ac1c7 	0x16ac1c7
    2998:	c3c6bcc3 	lwc0	$6,-17213(s8)
    299c:	bd6a385e 	0xbd6a385e
    29a0:	765a493d 	jalx	96924f4 <lmask+0x968cc34>
    29a4:	3f46342d 	0x3f46342d
    29a8:	41382d2a 	0x41382d2a
    29ac:	231d2633 	addi	sp,t8,9779
    29b0:	363b242f 	ori	k1,s1,0x242f
    29b4:	322d2626 	andi	t5,s1,0x2626
    29b8:	3a3c2f16 	xori	gp,s1,0x2f16
    29bc:	1a191e1f 	0x1a191e1f
    29c0:	18121317 	0x18121317
    29c4:	1b132541 	0x1b132541
    29c8:	27288d81 	addiu	t0,t9,-29311
    29cc:	2fafcad9 	sltiu	t7,sp,-13607
    29d0:	c2ab8835 	lwc0	$11,-30667(s5)
    29d4:	358877b8 	ori	t0,t4,0x77b8
    29d8:	cd549ad6 	lwc3	$20,-25898(t2)
    29dc:	c7d0b6a2 	lwc1	$f16,-18782(s8)
    29e0:	beaa8036 	0xbeaa8036
    29e4:	584b1a24 	0x584b1a24
    29e8:	292a2e26 	slti	t2,t1,11814
    29ec:	2f210d3f 	sltiu	at,t9,3391
    29f0:	83a0b4c3 	lb	zero,-19261(sp)
    29f4:	bcb1a37d 	0xbcb1a37d
    29f8:	58726a5a 	0x58726a5a
    29fc:	27304e48 	addiu	s0,t9,20040
    2a00:	2e293933 	sltiu	t1,s1,14643
    2a04:	27201f1e 	addiu	zero,t9,7966
    2a08:	121b1b2a 	beq	s0,k1,96b4 <lmask+0x3df4>
    2a0c:	2f1a3026 	sltiu	k0,t8,12326
    2a10:	212a4047 	addi	t2,t1,16455
    2a14:	3e1c2324 	0x3e1c2324
    2a18:	281c1512 	slti	gp,zero,5394
    2a1c:	161a1f19 	bne	s0,k0,a684 <lmask+0x4dc4>
    2a20:	2e482222 	sltiu	t0,s2,8738
    2a24:	700c3dde 	0x700c3dde
    2a28:	cec5d2bc 	lwc3	$5,-11588(s6)
    2a2c:	3e000c1b 	0x3e000c1b
    2a30:	08739131 	j	1ce44c4 <lmask+0x1cdec04>
    2a34:	17bfd4c5 	bne	sp,ra,ffff7d4c <lmask+0xffff248c>
    2a38:	b9b68d6e 	swr	s6,-29330(t5)
    2a3c:	583a8db2 	0x583a8db2
    2a40:	863c2e2c 	lh	gp,11820(s1)
    2a44:	221e2720 	addi	s8,s0,10016
    2a48:	1b103985 	0x1b103985
    2a4c:	a2a7907e 	sb	a3,-28546(s5)
    2a50:	723c5e69 	0x723c5e69
    2a54:	6b3b202f 	0x6b3b202f
    2a58:	45462923 	0x45462923
    2a5c:	32332224 	andi	s3,s1,0x2224
    2a60:	21230769 	addi	v1,t1,1897
    2a64:	64101710 	0x64101710
    2a68:	19261125 	0x19261125
    2a6c:	3f48441f 	0x3f48441f
    2a70:	282b3020 	slti	t3,at,12320
    2a74:	0e0f1718 	jal	83c5c60 <lmask+0x83c03a0>
    2a78:	1e1f2f40 	0x1e1f2f40
    2a7c:	2621968c 	addiu	at,s1,-26996
    2a80:	7f9671bb 	0x7f9671bb
    2a84:	dba77a65 	0xdba77a65
    2a88:	22081495 	addi	t0,s0,5269
    2a8c:	66635124 	0x66635124
    2a90:	65dcc2d1 	0x65dcc2d1
    2a94:	8f959482 	lw	s5,-27518(gp)
    2a98:	4a8faca4 	c2	0x8faca4
    2a9c:	7d4c1918 	0x7d4c1918
    2aa0:	2e121414 	sltiu	s2,s0,5140
    2aa4:	1b6a8eaa 	0x1b6a8eaa
    2aa8:	93574951 	lbu	s7,18769(k0)
    2aac:	5160572c 	0x5160572c
    2ab0:	37494835 	ori	t1,k0,0x4835
    2ab4:	27273a23 	addiu	a3,t9,14883
    2ab8:	1b505d05 	0x1b505d05
    2abc:	58b1bc60 	0x58b1bc60
    2ac0:	002c191d 	0x2c191d
    2ac4:	1c22424c 	0x1c22424c
    2ac8:	48242929 	0x48242929
    2acc:	33291314 	andi	t1,t9,0x1314
    2ad0:	1a191b19 	0x1a191b19
    2ad4:	27314539 	addiu	s1,t9,17721
    2ad8:	c7cadb88 	lwc1	$f10,-9336(s8)
    2adc:	3a7cd3ad 	xori	gp,s3,0xd3ad
    2ae0:	c5bdb06a 	lwc1	$f29,-20374(t5)
    2ae4:	a4b98a8c 	sh	t9,-30068(a1)
    2ae8:	c4c9a5d1 	lwc1	$f9,-23087(a2)
    2aec:	d8a7238d 	0xd8a7238d
    2af0:	adb27c3f 	sw	s2,31807(t5)
    2af4:	606f767e 	0x606f767e
    2af8:	3d1b2813 	0x3d1b2813
    2afc:	191c0e7d 	0x191c0e7d
    2b00:	a1c8c261 	sb	t0,-15775(t6)
    2b04:	4d494641 	0x4d494641
    2b08:	3f343e4a 	0x3f343e4a
    2b0c:	47303232 	c1	0x1303232
    2b10:	24261a68 	addiu	a2,at,6760
    2b14:	ac747fad 	sw	s4,32685(v1)
    2b18:	bc8d203e 	0xbc8d203e
    2b1c:	40411c18 	0x40411c18
    2b20:	3c51532a 	0x3c51532a
    2b24:	242a3a34 	addiu	t2,at,14900
    2b28:	27191617 	addiu	t9,t8,5655
    2b2c:	1811191f 	0x1811191f
    2b30:	36379d90 	ori	s7,s1,0x9d90
    2b34:	b5dc8cab 	0xb5dc8cab
    2b38:	c68bc6c7 	lwc1	$f11,-14649(s4)
    2b3c:	93aad1bd 	lbu	t2,-11843(sp)
    2b40:	c18e4a8c 	lwc0	$14,19084(t4)
    2b44:	cb92b7bf 	lwc2	$18,-18497(gp)
    2b48:	734596af 	0x734596af
    2b4c:	8a72552d 	lwl	s2,21805(s3)
    2b50:	67705c25 	0x67705c25
    2b54:	1a2a1f1a 	0x1a2a1f1a
    2b58:	0d62afc9 	jal	58abf24 <lmask+0x58a6664>
    2b5c:	d87c3841 	0xd87c3841
    2b60:	3e444233 	0x3e444233
    2b64:	4f4b4751 	c3	0x14b4751
    2b68:	38232e34 	xori	v1,at,0x2e34
    2b6c:	2641b5c9 	addiu	at,s2,-18999
    2b70:	afa8b2a5 	sw	t0,-19803(sp)
    2b74:	838c7448 	lb	t4,29768(gp)
    2b78:	3a393c57 	xori	t9,s1,0x3c57
    2b7c:	5d3c333b 	0x5d3c333b
    2b80:	4741311e 	c1	0x141311e
    2b84:	1a1f241d 	0x1a1f241d
    2b88:	1d193433 	0x1d193433
    2b8c:	3876c6cc 	xori	s6,v1,0xc6cc
    2b90:	ddd6cbbb 	0xddd6cbbb
    2b94:	bdd07b91 	0xbdd07b91
    2b98:	dddeda61 	0xdddeda61
    2b9c:	0bc0b3ad 	j	f02ceb4 <lmask+0xf0275f4>
    2ba0:	90b5e592 	lbu	s5,-6766(a1)
    2ba4:	60948795 	0x60948795
    2ba8:	a58d9bc0 	sh	t5,-25664(t4)
    2bac:	b54032a9 	0xb54032a9
    2bb0:	761c0533 	jalx	87014cc <lmask+0x86fbc0c>
    2bb4:	cbbbc8bd 	lwc2	$27,-14147(sp)
    2bb8:	823f363c 	lb	ra,13884(s1)
    2bbc:	274d5955 	addiu	t5,k0,22869
    2bc0:	5f613f36 	0x5f613f36
    2bc4:	312c321d 	andi	t4,t1,0x321d
    2bc8:	8fc9b5d3 	lw	t1,-18989(s8)
    2bcc:	cccbbea2 	lwc3	$11,-16734(a2)
    2bd0:	7b4a3849 	0x7b4a3849
    2bd4:	4b5d6252 	c2	0x15d6252
    2bd8:	5054544b 	0x5054544b
    2bdc:	40393d3b 	0x40393d3b
    2be0:	38312b1f 	xori	s1,at,0x2b1f
    2be4:	3631164f 	ori	s1,s1,0x164f
    2be8:	c6a7a8b6 	lwc1	$f7,-22346(s5)
    2bec:	c2b7ced3 	lwc0	$23,-12589(s5)
    2bf0:	5a4382bc 	0x5a4382bc
    2bf4:	d4b490ac 	0xd4b490ac
    2bf8:	b1d29e50 	0xb1d29e50
    2bfc:	767c9b98 	jalx	9f26e60 <lmask+0x9f215a0>
    2c00:	b8adbeb8 	swr	t5,-16712(a1)
    2c04:	c5cfd541 	lwc1	$f15,-10943(t6)
    2c08:	39a3802e 	xori	v1,t5,0x802e
    2c0c:	6057c6bb 	0x6057c6bb
    2c10:	add4c49e 	sw	s4,-15202(t6)
    2c14:	6d3c324d 	0x6d3c324d
    2c18:	694e4543 	0x694e4543
    2c1c:	474a403c 	c1	0x14a403c
    2c20:	2f164588 	sltiu	s6,t8,17800
    2c24:	9bc7d6d7 	lwr	a3,-10537(s8)
    2c28:	bda3976e 	0xbda3976e
    2c2c:	42454f5e 	c0	0x454f5e
    2c30:	62676c5a 	0x62676c5a
    2c34:	5b52463c 	0x5b52463c
    2c38:	3c373430 	0x3c373430
    2c3c:	25212220 	addiu	at,t1,8736
    2c40:	72092b3f 	0x72092b3f
    2c44:	6a93a8a6 	0x6a93a8a6
    2c48:	b2d04470 	0xb2d04470
    2c4c:	6bc5a7b4 	0x6bc5a7b4
    2c50:	bab48baf 	swr	s4,-29777(s5)
    2c54:	6acc8274 	0x6acc8274
    2c58:	7898968d 	0x7898968d
    2c5c:	a097a7b9 	sb	s7,-22599(a0)
    2c60:	bf413274 	0xbf413274
    2c64:	27328071 	addiu	s2,t9,-32655
    2c68:	86bec0ba 	lh	s8,-16198(s5)
    2c6c:	c4bdc261 	lwc1	$f29,-15775(a1)
    2c70:	0f306482 	jal	cc19208 <lmask+0xcc13948>
    2c74:	6322544f 	0x6322544f
    2c78:	563c2115 	0x563c2115
    2c7c:	194a77ab 	0x194a77ab
    2c80:	c3d2bdad 	lwc0	$18,-16979(s8)
    2c84:	96783933 	lhu	t8,14643(s3)
    2c88:	3d516072 	0x3d516072
    2c8c:	806e6352 	lb	t6,25426(v1)
    2c90:	3c393125 	0x3c393125
    2c94:	271e1620 	addiu	s8,t8,5664
    2c98:	1e1c6041 	0x1e1c6041
    2c9c:	34283559 	ori	t0,at,0x3559
    2ca0:	6399acc7 	0x6399acc7
    2ca4:	4888cccc 	0x4888cccc
    2ca8:	cc91b5b4 	lwc3	$17,-19020(a0)
    2cac:	68774d3e 	0x68774d3e
    2cb0:	ad6c6660 	sw	t4,26208(t3)
    2cb4:	3f3e315c 	0x3f3e315c
    2cb8:	aea09e30 	sw	zero,-25040(s5)
    2cbc:	4cab5b69 	0x4cab5b69
    2cc0:	70a10c4f 	0x70a10c4f
    2cc4:	bab7aaab 	swr	s7,-21845(s5)
    2cc8:	c5ba3c7d 	lwc1	$f26,15485(t5)
    2ccc:	acc7cb4f 	sw	a3,-13489(a2)
    2cd0:	2d4f5b4d 	sltiu	t7,t2,23373
    2cd4:	161a1a1a 	bne	s0,k0,9540 <lmask+0x3c80>
    2cd8:	4690bcb6 	c1	0x90bcb6
    2cdc:	7b504a37 	0x7b504a37
    2ce0:	32221a31 	andi	v0,s1,0x1a31
    2ce4:	46607c7c 	c1	0x607c7c
    2ce8:	6f54341e 	0x6f54341e
    2cec:	21191011 	addi	t9,t0,4113
    2cf0:	22221b1c 	addi	v0,s1,6940
    2cf4:	5e3b211b 	0x5e3b211b
    2cf8:	46486baf 	c1	0x486baf
    2cfc:	916739c5 	lbu	a3,14789(t3)
    2d00:	a9c9c2a7 	swl	t1,-15705(t6)
    2d04:	6daab185 	0x6daab185
    2d08:	78529b71 	0x78529b71
    2d0c:	543e432a 	0x543e432a
    2d10:	084cb4b2 	j	132d2c8 <lmask+0x1327a08>
    2d14:	b51e69b8 	0xb51e69b8
    2d18:	a0b6bbd2 	sb	s6,-17454(a1)
    2d1c:	6f74aeae 	0x6f74aeae
    2d20:	9abaccd0 	lwr	k0,-13104(s5)
    2d24:	caa37499 	lwc2	$3,29849(s5)
    2d28:	ab893248 	swl	t1,12872(gp)
    2d2c:	484b5526 	0x484b5526
    2d30:	22211c22 	addi	at,s1,7202
    2d34:	51523a3e 	0x51523a3e
    2d38:	515f442b 	0x515f442b
    2d3c:	03142848 	0x3142848
    2d40:	6f837550 	0x6f837550
    2d44:	2d21221d 	sltiu	at,t1,8733
    2d48:	201c2427 	addi	gp,zero,9255
    2d4c:	1c186d3b 	0x1c186d3b
    2d50:	1e0b2226 	0x1e0b2226
    2d54:	4972252e 	0x4972252e
    2d58:	4aa66b1d 	c2	0xa66b1d
    2d5c:	92928891 	lbu	s2,-30575(s4)
    2d60:	daa2b5c7 	0xdaa2b5c7
    2d64:	ad7a3f50 	sw	k0,16208(t3)
    2d68:	2a2a2059 	slti	t2,s1,8281
    2d6c:	a7b4a71f 	sh	s4,-22753(sp)
    2d70:	67d0b2c6 	0x67d0b2c6
    2d74:	d1eaa472 	0xd1eaa472
    2d78:	849b94bc 	lh	k1,-27460(a0)
    2d7c:	beb2c6c2 	0xbeb2c6c2
    2d80:	8cacc09e 	lw	t4,-16226(a1)
    2d84:	5c475460 	0x5c475460
    2d88:	524a213e 	0x524a213e
    2d8c:	3b223138 	xori	v0,t9,0x3138
    2d90:	18385462 	0x18385462
    2d94:	5d330a0c 	0x5d330a0c
    2d98:	17375d82 	bne	t9,s7,1a3a4 <lmask+0x14ae4>
    2d9c:	805e2b25 	lb	s8,11045(v0)
    2da0:	2320221f 	addi	zero,t9,8735
    2da4:	282a201b 	slti	t2,at,8219
    2da8:	75390b13 	jalx	4e42c4c <lmask+0x4e3d38c>
    2dac:	11131551 	beq	t0,s3,82f4 <lmask+0x2a34>
    2db0:	342b4d34 	ori	t3,at,0x4d34
    2db4:	151416be 	bne	t0,s4,88b0 <lmask+0x2ff0>
    2db8:	c7a5c5ba 	lwc1	$f5,-14918(sp)
    2dbc:	c9c5b164 	lwc2	$5,-20124(t6)
    2dc0:	371e1d6c 	ori	s8,t8,0x1d6c
    2dc4:	5b3f5856 	0x5b3f5856
    2dc8:	62284fbc 	0x62284fbc
    2dcc:	c4b6c1b6 	lwc1	$f22,-15946(a1)
    2dd0:	b154577c 	0xb154577c
    2dd4:	4269c3a5 	c0	0x69c3a5
    2dd8:	98bea2a9 	lwr	s8,-23895(a1)
    2ddc:	a37c7a5b 	sb	gp,31323(k1)
    2de0:	4d4f5959 	0x4d4f5959
    2de4:	4c55613c 	0x4c55613c
    2de8:	533f261c 	0x533f261c
    2dec:	31506759 	andi	s0,t2,0x6759
    2df0:	1e213346 	0x1e213346
    2df4:	547a8262 	0x547a8262
    2df8:	31292b2d 	andi	t1,t1,0x2b2d
    2dfc:	1d1d2921 	0x1d1d2921
    2e00:	19186a44 	0x19186a44
    2e04:	1b1e231b 	0x1b1e231b
    2e08:	151d221f 	bne	t0,sp,b688 <lmask+0x5dc8>
    2e0c:	5f25331d 	0x5f25331d
    2e10:	1d90e2d1 	0x1d90e2d1
    2e14:	cbb744a3 	lwc2	$23,17571(sp)
    2e18:	b9bf963b 	swr	ra,-27077(t5)
    2e1c:	3f753649 	0x3f753649
    2e20:	398eab1a 	xori	t6,t4,0xab1a
    2e24:	4c9ca2c9 	0x4c9ca2c9
    2e28:	948ac395 	lhu	t2,-15467(a0)
    2e2c:	7b561674 	0x7b561674
    2e30:	afaeaacb 	sw	t6,-21813(sp)
    2e34:	8b5352a7 	lwl	s3,21159(k0)
    2e38:	9f4d4b3a 	0x9f4d4b3a
    2e3c:	2f7b8059 	sltiu	k1,k1,-32679
    2e40:	807e6a4b 	lb	s8,27211(v1)
    2e44:	1a251d34 	0x1a251d34
    2e48:	5660413d 	0x5660413d
    2e4c:	4f574866 	c3	0x1574866
    2e50:	7b693a4b 	0x7b693a4b
    2e54:	4348463c 	c0	0x148463c
    2e58:	27201515 	addiu	zero,t9,5397
    2e5c:	34541b20 	ori	s4,v0,0x1b20
    2e60:	1d151c21 	0x1d151c21
    2e64:	1c1a5826 	0x1c1a5826
    2e68:	1f432a13 	0x1f432a13
    2e6c:	76a59fb5 	jalx	a967ed4 <lmask+0xa962614>
    2e70:	9da1c5b4 	0x9da1c5b4
    2e74:	83797323 	lb	t9,29475(k1)
    2e78:	7dae91b5 	0x7dae91b5
    2e7c:	bc1a78c3 	0xbc1a78c3
    2e80:	babcae9c 	swr	gp,-20836(s5)
    2e84:	85acb4a9 	lh	t4,-19287(t5)
    2e88:	2674a1b6 	addiu	s4,s3,-24138
    2e8c:	bdc1ad5d 	0xbdc1ad5d
    2e90:	61a9a754 	0x61a9a754
    2e94:	2836156e 	slti	s6,at,5486
    2e98:	ab7d84bb 	swl	sp,-31557(k1)
    2e9c:	a44f1821 	sh	t7,6177(v0)
    2ea0:	1a123153 	0x1a123153
    2ea4:	4e4d7ca1 	c3	0x4d7ca1
    2ea8:	8b929581 	lwl	s2,-27263(gp)
    2eac:	4a51495a 	c2	0x51495a
    2eb0:	575c4a36 	0x575c4a36
    2eb4:	1512165b 	bne	t0,s2,8824 <lmask+0x2f64>
    2eb8:	22251b1b 	addi	a1,s1,6939
    2ebc:	18322a23 	0x18322a23
    2ec0:	60210b30 	0x60210b30
    2ec4:	3409b4e2 	ori	t1,zero,0xb4e2
    2ec8:	bcd0dd95 	0xbcd0dd95
    2ecc:	98543a40 	lwr	s4,14912(v0)
    2ed0:	4983abac 	0x4983abac
    2ed4:	70678521 	0x70678521
    2ed8:	22571c64 	addi	s7,s2,7268
    2edc:	d96376b6 	0xd96376b6
    2ee0:	b3744759 	0xb3744759
    2ee4:	aababf94 	swl	k0,-16492(s5)
    2ee8:	bab78950 	swr	s7,-30384(s5)
    2eec:	824a342d 	lb	t2,13357(s2)
    2ef0:	2141969e 	addi	at,t2,-26978
    2ef4:	80c3b679 	lb	v1,-18823(a2)
    2ef8:	5d580e06 	0x5d580e06
    2efc:	13253864 	beq	t9,a1,11090 <lmask+0xb7d0>
    2f00:	9fb3d4cd 	0x9fb3d4cd
    2f04:	c5d35f27 	lwc1	$f19,24359(t6)
    2f08:	493a4241 	0x493a4241
    2f0c:	44403c33 	0x44403c33
    2f10:	362e271b 	ori	t6,s1,0x271b
    2f14:	3950341d 	xori	s0,t2,0x341d
    2f18:	25384c6b 	addiu	t8,t1,19563
    2f1c:	523c2b1c 	0x523c2b1c
    2f20:	6bc06763 	0x6bc06763
    2f24:	6a7c8d89 	0x6a7c8d89
    2f28:	314c2248 	andi	t4,t2,0x2248
    2f2c:	7d987209 	0x7d987209
    2f30:	2c4f62c6 	sltiu	t7,v0,25286
    2f34:	abb4d4c5 	swl	s4,-11067(sp)
    2f38:	bfb2c08f 	0xbfb2c08f
    2f3c:	682457d4 	0x682457d4
    2f40:	bdc8d2ba 	0xbdc8d2ba
    2f44:	bf8a805c 	0xbf8a805c
    2f48:	5641241d 	0x5641241d
    2f4c:	77bab7bc 	jalx	eeadef0 <lmask+0xeea8630>
    2f50:	b7aa8c5a 	0xb7aa8c5a
    2f54:	15030007 	bne	t0,v1,2f74 <hana_bmp+0x1b1c>
    2f58:	1a436b8c 	0x1a436b8c
    2f5c:	b3c29bc7 	0xb3c29bc7
    2f60:	ae26142e 	sw	a2,5166(s1)
    2f64:	352e2c40 	ori	t6,t1,0x2c40
    2f68:	3333272b 	andi	s3,t9,0x272b
    2f6c:	21142650 	addi	s4,t0,9808
    2f70:	29492049 	slti	t1,t2,8265
    2f74:	456b3856 	0x456b3856
    2f78:	552b385e 	0x552b385e
    2f7c:	704e45c1 	0x704e45c1
    2f80:	8eb69615 	lw	s6,-27115(s5)
    2f84:	05245196 	0x5245196
    2f88:	681c365f 	0x681c365f
    2f8c:	195bfea7 	0x195bfea7
    2f90:	f459ecac 	0xf459ecac
    2f94:	99c0e889 	lwr	zero,-6007(t6)
    2f98:	0957c8ce 	j	55f2338 <lmask+0x55eca78>
    2f9c:	e5b7e2f0 	swc1	$f23,-7440(t5)
    2fa0:	c678572d 	lwc1	$f24,22317(s3)
    2fa4:	281387c8 	slti	s3,zero,-30776
    2fa8:	ced3af90 	lwc3	$19,-20592(s6)
    2fac:	3e08001c 	0x3e08001c
    2fb0:	666c5c7f 	0x666c5c7f
    2fb4:	7c856ead 	0x7c856ead
    2fb8:	a7a3d6af 	sh	v1,-10577(sp)
    2fbc:	524e4535 	0x524e4535
    2fc0:	18283334 	0x18283334
    2fc4:	14232421 	bne	at,v1,c04c <lmask+0x678c>
    2fc8:	0360219a 	0x360219a
    2fcc:	74424368 	jalx	1090da0 <lmask+0x108b4e0>
    2fd0:	8349432f 	lb	t1,17199(k0)
    2fd4:	29363a58 	slti	s6,t1,14936
    2fd8:	729ff3c2 	0x729ff3c2
    2fdc:	b1d03200 	0xb1d03200
    2fe0:	31210e46 	andi	at,t1,0xe46
    2fe4:	3c3b1f01 	0x3c3b1f01
    2fe8:	30c0be3c 	andi	zero,a2,0xbe3c
    2fec:	ff7091c1 	0xff7091c1
    2ff0:	7b11b6a4 	0x7b11b6a4
    2ff4:	5eb54355 	0x5eb54355
    2ff8:	c8c3cdc5 	lwc2	$3,-12859(a2)
    2ffc:	53202036 	0x53202036
    3000:	5bacbfb6 	0x5bacbfb6
    3004:	cb9e3d00 	lwc2	$30,15616(gp)
    3008:	0444a2cb 	0x444a2cb
    300c:	b0b1b3a9 	0xb0b1b3a9
    3010:	6ea6dec4 	0x6ea6dec4
    3014:	c1bc8e5d 	lwc0	$28,-29091(t5)
    3018:	56361a17 	0x56361a17
    301c:	35373f19 	ori	s7,t1,0x3f19
    3020:	0c0e1f60 	jal	387d80 <lmask+0x3824c0>
    3024:	38a99589 	xori	t1,a1,0x9589
    3028:	3d2b7371 	0x3d2b7371
    302c:	6531250a 	0x6531250a
    3030:	44ac7c1a 	0x44ac7c1a
    3034:	a3cfeab9 	sb	t7,-5447(s8)
    3038:	86daa0c6 	lh	k0,-24378(s6)
    303c:	cd2a2439 	lwc3	$10,9273(t1)
    3040:	1a201b33 	blez	s1,9d10 <lmask+0x4450>
    3044:	f338c1b7 	0xf338c1b7
    3048:	98450b8f 	lwr	a1,2959(v0)
    304c:	bdb8c9d4 	0xbdb8c9d4
    3050:	d466c2c9 	0xd466c2c9
    3054:	9f436d82 	0x9f436d82
    3058:	55384650 	0x55384650
    305c:	536f97a2 	0x536f97a2
    3060:	6334301e 	0x6334301e
    3064:	59bfb6b7 	0x59bfb6b7
    3068:	b2ae7488 	0xb2ae7488
    306c:	9fbecfc1 	0x9fbecfc1
    3070:	9f86591f 	0x9f86591f
    3074:	18173b3e 	0x18173b3e
    3078:	26321248 	addiu	s2,s1,4680
    307c:	b1932fa1 	0xb1932fa1
    3080:	7dbf9534 	0x7dbf9534
    3084:	1b394f35 	0x1b394f35
    3088:	2c5595a3 	sltiu	s5,v0,-27229
    308c:	5a56a791 	0x5a56a791
    3090:	c5e15ab1 	lwc1	$f1,23217(t7)
    3094:	ccc78300 	lwc3	$7,-32000(a2)
    3098:	24352016 	addiu	s5,at,8214
    309c:	0780c54a 	bltz	gp,ffff45c8 <lmask+0xfffeed08>
    30a0:	54b56a55 	0x54b56a55
    30a4:	241267ba 	addiu	s2,zero,26554
    30a8:	d6b0e8e0 	0xd6b0e8e0
    30ac:	bfbdec52 	0xbfbdec52
    30b0:	929c845c 	lbu	gp,-31652(s4)
    30b4:	43524f67 	c0	0x1524f67
    30b8:	777b5e4a 	jalx	ded7928 <lmask+0xded2068>
    30bc:	54510b4c 	0x54510b4c
    30c0:	9ec9b969 	0x9ec9b969
    30c4:	7a617c7c 	0x7a617c7c
    30c8:	91bd898f 	lbu	sp,-30321(t5)
    30cc:	4a1d2226 	c2	0x1d2226
    30d0:	3f402620 	0x3f402620
    30d4:	1621cac2 	bne	s1,at,ffff5be0 <lmask+0xffff0320>
    30d8:	37b08abc 	ori	s0,sp,0x8abc
    30dc:	e2d7991d 	swc0	$23,-26339(s6)
    30e0:	722e1aa4 	0x722e1aa4
    30e4:	b6ab9c86 	0xb6ab9c86
    30e8:	d1cfbba2 	0xd1cfbba2
    30ec:	4a6ecd8e 	c2	0x6ecd8e
    30f0:	030d2438 	0x30d2438
    30f4:	19180c26 	0x19180c26
    30f8:	ae5a14db 	sw	k0,5339(s2)
    30fc:	81721a37 	lb	s2,6711(t3)
    3100:	1e023700 	0x1e023700
    3104:	c8c5c2b1 	lwc2	$5,-15695(a2)
    3108:	bcb04562 	0xbcb04562
    310c:	a28b732d 	sb	t3,29485(s4)
    3110:	387f9599 	xori	ra,v1,0x9599
    3114:	874f6578 	lh	t7,25976(k0)
    3118:	5d41afc4 	0x5d41afc4
    311c:	aca1c35c 	sw	at,-15524(a1)
    3120:	4b4a2f3b 	c2	0x14a2f3b
    3124:	4b482d21 	c2	0x1482d21
    3128:	23224143 	addi	v0,t9,16707
    312c:	24334138 	addiu	s3,at,16696
    3130:	2c8e167d 	sltiu	t6,a0,5757
    3134:	5ce6cada 	0x5ce6cada
    3138:	c6552836 	lwc1	$f21,10294(s2)
    313c:	23a1e3a1 	addi	at,sp,-7263
    3140:	2279af66 	addi	t9,s3,-20634
    3144:	50155a2c 	0x50155a2c
    3148:	8fde7a02 	lw	s8,31234(s8)
    314c:	2b342409 	slti	s4,t9,9225
    3150:	3fbe7761 	0x3fbe7761
    3154:	1b9fa3e9 	0x1b9fa3e9
    3158:	7b172010 	0x7b172010
    315c:	38402f3f 	xori	zero,v0,0x2f3f
    3160:	65b1a8b7 	0x65b1a8b7
    3164:	348fdebd 	ori	t7,a0,0xdebd
    3168:	724d9193 	0x724d9193
    316c:	95a98184 	lhu	t1,-32380(t5)
    3170:	568a7d6b 	0x568a7d6b
    3174:	aeab8aa2 	sw	t3,-30046(s5)
    3178:	bc642b37 	0xbc642b37
    317c:	321c342a 	andi	gp,s0,0x342a
    3180:	29242222 	slti	a0,t1,8738
    3184:	43421631 	c0	0x1421631
    3188:	698d3e80 	0x698d3e80
    318c:	d5bc9c7a 	0xd5bc9c7a
    3190:	e8cdc394 	swc2	$13,-15468(a2)
    3194:	2e35206b 	sltiu	s5,s1,8299
    3198:	d19e1eb7 	0xd19e1eb7
    319c:	e891006a 	swc2	$17,106(a0)
    31a0:	7365189a 	0x7365189a
    31a4:	90a8462c 	lbu	t0,17964(a1)
    31a8:	003ab4c1 	0x3ab4c1
    31ac:	8a55327d 	lwl	s5,12925(s2)
    31b0:	90cec473 	lbu	t6,-15245(a2)
    31b4:	aa8805c0 	swl	t0,1472(s4)
    31b8:	25414b45 	addiu	at,t2,19269
    31bc:	a59bc87e 	sh	k1,-14210(t4)
    31c0:	c4e898b1 	lwc1	$f8,-26447(a3)
    31c4:	8c59886d 	lw	t9,-30611(v0)
    31c8:	6569629a 	0x6569629a
    31cc:	8e555261 	lw	s5,21089(s2)
    31d0:	666a8785 	0x666a8785
    31d4:	252d2d25 	addiu	t5,t1,11557
    31d8:	202a1e21 	addi	t2,at,7713
    31dc:	24181925 	addiu	t8,zero,6437
    31e0:	19100b1d 	0x19100b1d
    31e4:	79a3a1b7 	0x79a3a1b7
    31e8:	c7cc3677 	lwc1	$f12,13943(s8)
    31ec:	ff77d038 	0xff77d038
    31f0:	294fb469 	slti	t7,t2,-19351
    31f4:	2dbcd395 	sltiu	gp,t5,-11371
    31f8:	0496ab7d 	0x496ab7d
    31fc:	aba69082 	swl	a2,-28542(sp)
    3200:	7b3bcc6e 	0x7b3bcc6e
    3204:	439beb58 	c0	0x19beb58
    3208:	368a65b8 	ori	t2,s4,0x65b8
    320c:	de97989b 	0xde97989b
    3210:	73c6b19c 	0x73c6b19c
    3214:	936b4034 	lbu	t3,16436(k1)
    3218:	ba99d9b3 	swr	t9,-9805(s4)
    321c:	fe6c4b7e 	0xfe6c4b7e
    3220:	8d3c653b 	lw	gp,25915(t1)
    3224:	6c7a7e4a 	0x6c7a7e4a
    3228:	33263d34 	andi	a2,t9,0x3d34
    322c:	928c3922 	lbu	t4,14626(s4)
    3230:	23261b1a 	addi	a2,t9,6938
    3234:	21221a1d 	addi	v0,t1,6685
    3238:	29253b0f 	slti	a1,t1,15119
    323c:	1b231c81 	0x1b231c81
    3240:	aabad7e8 	swl	k0,-10264(s5)
    3244:	b86a1973 	swr	t2,6515(v1)
    3248:	c340342d 	lwc0	$0,13357(k0)
    324c:	661a2268 	0x661a2268
    3250:	a3304fcd 	sb	s0,20429(t9)
    3254:	9cc7aaa2 	0x9cc7aaa2
    3258:	c3c04c8b 	lwc0	$0,19595(s8)
    325c:	d7ad7e97 	0xd7ad7e97
    3260:	3366238b 	andi	a2,k1,0x238b
    3264:	edb4c4a9 	swc3	$20,-15191(t5)
    3268:	5e216958 	0x5e216958
    326c:	7993653d 	0x7993653d
    3270:	2a261032 	slti	a2,s1,4146
    3274:	ebd06d5d 	swc2	$16,27997(s8)
    3278:	73b41f4d 	0x73b41f4d
    327c:	5a594940 	0x5a594940
    3280:	31402f46 	andi	zero,t2,0x2f46
    3284:	54454d71 	0x54454d71
    3288:	2d282021 	sltiu	t0,t1,8225
    328c:	1c1b322d 	0x1c1b322d
    3290:	181f2728 	0x181f2728
    3294:	9f360019 	0x9f360019
    3298:	00005baf 	0x5baf
    329c:	b6cdaf5b 	0xb6cdaf5b
    32a0:	00a6ee41 	0xa6ee41
    32a4:	28191063 	slti	t9,zero,4195
    32a8:	02234004 	sllv	t0,v1,s1
    32ac:	4c38f491 	0x4c38f491
    32b0:	d1bebfe9 	0xd1bebfe9
    32b4:	dfb5d3e0 	0xdfb5d3e0
    32b8:	780a4f6d 	0x780a4f6d
    32bc:	3b5fe6c3 	xori	ra,k0,0xe6c3
    32c0:	92b44d20 	lbu	s4,19744(s5)
    32c4:	206ea75b 	addi	t6,v1,-22693
    32c8:	382d2718 	xori	t5,at,0x2718
    32cc:	33295d73 	andi	t1,t9,0x5d73
    32d0:	774adba9 	jalx	d2b6ea4 <lmask+0xd2b15e4>
    32d4:	605c5740 	0x605c5740
    32d8:	2026171a 	addi	a2,at,5914
    32dc:	204d6762 	addi	t5,v0,26466
    32e0:	383c3032 	xori	gp,at,0x3032
    32e4:	30212425 	andi	at,at,0x2425
    32e8:	3e361d21 	0x3e361d21
    32ec:	272ac175 	addiu	t2,t9,-16011
    32f0:	0004091a 	0x4091a
    32f4:	0084d799 	0x84d799
    32f8:	d2003ae1 	0xd2003ae1
    32fc:	53472d23 	0x53472d23
    3300:	0b2b3e0c 	j	cacf830 <lmask+0xcac9f70>
    3304:	691f2e0c 	0x691f2e0c
    3308:	5eebacb1 	0x5eebacb1
    330c:	c3dbe3b5 	lwc0	$27,-7243(s8)
    3310:	b4e09a4d 	0xb4e09a4d
    3314:	326e3538 	andi	t6,s3,0x3538
    3318:	c5c16e56 	lwc1	$f1,28246(t6)
    331c:	1c442ebc 	0x1c442ebc
    3320:	ae85202e 	sw	a1,8238(s4)
    3324:	22292d1f 	addi	t1,s1,11551
    3328:	496d618e 	0x496d618e
    332c:	dbce8872 	0xdbce8872
    3330:	4f295642 	c3	0x1295642
    3334:	25302b4c 	addiu	s0,t1,11084
    3338:	5d566738 	0x5d566738
    333c:	59353722 	0x59353722
    3340:	2326413d 	addi	a2,t9,16701
    3344:	2a3c1521 	slti	gp,s1,5409
    3348:	98530d0b 	lwr	s3,3339(v0)
    334c:	02240099 	0x2240099
    3350:	c6de4306 	lwc1	$f30,17158(s6)
    3354:	96b48b36 	lhu	s4,-29898(s5)
    3358:	3a250d1c 	xori	a1,s1,0xd1c
    335c:	463c140e 	c1	0x3c140e
    3360:	4f9a5b83 	c3	0x19a5b83
    3364:	ad89a86f 	sw	t1,-22417(t4)
    3368:	d7b9a1cf 	0xd7b9a1cf
    336c:	d79d5947 	0xd79d5947
    3370:	5340649a 	0x5340649a
    3374:	61016f75 	0x61016f75
    3378:	1a4ea45b 	0x1a4ea45b
    337c:	11144956 	beq	t0,s4,158d8 <lmask+0x10018>
    3380:	48005582 	0x48005582
    3384:	66a6fec3 	0x66a6fec3
    3388:	7c9b2e32 	0x7c9b2e32
    338c:	5a4b321e 	0x5a4b321e
    3390:	234b5965 	addi	t3,k0,22885
    3394:	51644256 	0x51644256
    3398:	32282427 	andi	t0,s1,0x2427
    339c:	45422e4c 	0x45422e4c
    33a0:	24206427 	addiu	zero,at,25639
    33a4:	0e100c1a 	jal	8403068 <lmask+0x83fd7a8>
    33a8:	2de2c5fe 	sltiu	v0,t7,-14850
    33ac:	0921e3a7 	j	4878e9c <lmask+0x48735dc>
    33b0:	85742d2f 	lh	s4,11567(t3)
    33b4:	0d284929 	jal	4a124a4 <lmask+0x4a0cbe4>
    33b8:	2a2b768e 	slti	t3,s1,30350
    33bc:	a9daa1d7 	swl	k0,-24105(t6)
    33c0:	fee6d6c5 	0xfee6d6c5
    33c4:	eeeed8a5 	swc3	$14,-10075(s7)
    33c8:	64474c35 	0x64474c35
    33cc:	89a90a8d 	lwl	t1,2701(t5)
    33d0:	527a4308 	0x527a4308
    33d4:	8161224a 	lb	at,8778(t3)
    33d8:	7a633729 	0x7a633729
    33dc:	966b692c 	lhu	t3,26924(s3)
    33e0:	c1bebcbd 	lwc0	$30,-17219(t5)
    33e4:	3d142b35 	0x3d142b35
    33e8:	4d380a6d 	0x4d380a6d
    33ec:	aa887154 	swl	t0,29012(s4)
    33f0:	55332824 	0x55332824
    33f4:	242f4a4c 	addiu	t7,at,19020
    33f8:	35442225 	ori	a0,t2,0x2225
    33fc:	8968120a 	lwl	t0,4618(t3)
    3400:	1c191800 	0x1c191800
    3404:	200e1d57 	addi	t6,zero,7511
    3408:	90716329 	lbu	s1,25385(v1)
    340c:	49222921 	0x49222921
    3410:	3c3b111c 	0x3c3b111c
    3414:	4c834a54 	0x4c834a54
    3418:	5d482ca3 	0x5d482ca3
    341c:	be4858ed 	0xbe4858ed
    3420:	b1a77b55 	0xb1a77b55
    3424:	6711a4e4 	0x6711a4e4
    3428:	a6804081 	sh	zero,16513(s4)
    342c:	360b495e 	ori	t3,s0,0x495e
    3430:	62524e66 	0x62524e66
    3434:	02aa6d71 	0x2aa6d71
    3438:	2b2e06ba 	slti	t6,t9,1722
    343c:	d3b64424 	0xd3b64424
    3440:	18253835 	0x18253835
    3444:	1e44bfcb 	0x1e44bfcb
    3448:	b3594333 	0xb3594333
    344c:	2b202234 	slti	zero,t9,8756
    3450:	44513b2f 	0x44513b2f
    3454:	2527612b 	addiu	a3,t1,24875
    3458:	470e1d13 	c1	0x10e1d13
    345c:	232d1f22 	addi	t5,t9,7970
    3460:	09a1d94b 	j	687652c <lmask+0x6870c6c>
    3464:	550f5b1a 	0x550f5b1a
    3468:	32283b53 	andi	t0,s1,0x3b53
    346c:	1a30191c 	0x1a30191c
    3470:	22063f46 	addi	a2,s0,16198
    3474:	1593c986 	bne	t4,s3,ffff5a90 <lmask+0xffff01d0>
    3478:	6dc2e3bd 	0x6dc2e3bd
    347c:	a07c813c 	sb	gp,-32452(v1)
    3480:	a9d4d8d2 	swl	s4,-10030(t6)
    3484:	a8ab8cbd 	swl	t3,-29507(a1)
    3488:	0099812a 	0x99812a
    348c:	3f174bb4 	0x3f174bb4
    3490:	5e4c2265 	0x5e4c2265
    3494:	6f41a2b7 	0x6f41a2b7
    3498:	946a2015 	lhu	t2,8213(v1)
    349c:	2e262320 	sltiu	a2,s1,8992
    34a0:	71b2d999 	0x71b2d999
    34a4:	4c2e2123 	0x4c2e2123
    34a8:	2a364650 	slti	s6,s1,18000
    34ac:	3416172c 	ori	s6,zero,0x172c
    34b0:	564e1a39 	0x564e1a39
    34b4:	081a651e 	j	699478 <lmask+0x693bb8>
    34b8:	182f0fa6 	0x182f0fa6
    34bc:	3c69660d 	0x3c69660d
    34c0:	571f3a22 	0x571f3a22
    34c4:	216703a3 	addi	a3,t3,931
    34c8:	7d232b12 	0x7d232b12
    34cc:	4a331bf8 	c2	0x331bf8
    34d0:	be7dc5ee 	0xbe7dc5ee
    34d4:	d9d2a063 	0xd9d2a063
    34d8:	89ffb17f 	lwl	ra,-20097(t7)
    34dc:	ffdcdeb9 	0xffdcdeb9
    34e0:	5e6b7147 	0x5e6b7147
    34e4:	7595130b 	jalx	6544c2c <lmask+0x653f36c>
    34e8:	9c802d1b 	0x9c802d1b
    34ec:	1e37a885 	0x1e37a885
    34f0:	9ca6abb3 	0x9ca6abb3
    34f4:	58001911 	0x58001911
    34f8:	8887b8a2 	lwl	a3,-18270(a0)
    34fc:	c0b89b27 	lwc0	$24,-25817(a1)
    3500:	15212639 	bne	t1,at,cde8 <lmask+0x7528>
    3504:	49493e2d 	0x49493e2d
    3508:	2b293f7e 	slti	t1,t9,16254
    350c:	152e122d 	bne	t1,t6,7dc4 <lmask+0x2504>
    3510:	541f301a 	0x541f301a
    3514:	2a150945 	slti	s5,s0,2373
    3518:	2a434a2d 	slti	v1,s2,18989
    351c:	382b162b 	xori	t3,at,0x162b
    3520:	2f879c1a 	sltiu	a3,gp,-25574
    3524:	251a355e 	addiu	k0,t0,13662
    3528:	5b4b9baa 	0x5b4b9baa
    352c:	b2cb9ed2 	0xb2cb9ed2
    3530:	b76603e2 	0xb76603e2
    3534:	edff3b0c 	swc3	$31,15116(t7)
    3538:	c6ea374f 	lwc1	$f10,14159(s7)
    353c:	26a7a0e3 	addiu	a3,s5,-24349
    3540:	0730000a 	bltzal	t9,356c <hana_bmp+0x2114>
    3544:	10533850 	beq	v0,s3,11688 <lmask+0xbdc8>
    3548:	4dc4c996 	0x4dc4c996
    354c:	3e5a510e 	0x3e5a510e
    3550:	273e286e 	addiu	s8,t9,10350
    3554:	394ebbcc 	xori	t6,t2,0xbbcc
    3558:	c5a8390f 	lwc1	$f8,14607(t5)
    355c:	1f35444f 	0x1f35444f
    3560:	5a76242a 	0x5a76242a
    3564:	477f740d 	c1	0x17f740d
    3568:	1e5c9b1c 	0x1e5c9b1c
    356c:	163b2318 	bne	s1,k1,c1d0 <lmask+0x6910>
    3570:	3c420700 	0x3c420700
    3574:	7d4f2128 	0x7d4f2128
    3578:	2a3f2019 	slti	ra,s1,8217
    357c:	0b3b3f4f 	j	cecfd3c <lmask+0xceca47c>
    3580:	471388af 	c1	0x11388af
    3584:	bc3effed 	0xbc3effed
    3588:	850a050d 	lh	t2,1293(t0)
    358c:	433b635a 	c0	0x13b635a
    3590:	ffaddc46 	0xffaddc46
    3594:	7141e043 	0x7141e043
    3598:	923c5d3c 	lbu	gp,23868(s1)
    359c:	26143653 	addiu	s4,s0,13907
    35a0:	8e808395 	lw	zero,-31851(s4)
    35a4:	8bb8be56 	lwl	t8,-16810(sp)
    35a8:	625a0815 	0x625a0815
    35ac:	448b85d0 	0x448b85d0
    35b0:	aab6c7a7 	swl	s6,-14425(s5)
    35b4:	8b242d2d 	lwl	a0,11565(t9)
    35b8:	2758828b 	addiu	t8,k0,-32117
    35bc:	2b246955 	slti	a0,t9,26965
    35c0:	59911420 	0x59911420
    35c4:	50461685 	0x50461685
    35c8:	7d383a1b 	0x7d383a1b
    35cc:	22badc84 	addi	k0,s5,-9084
    35d0:	2229200e 	addi	t1,s1,8206
    35d4:	71732836 	0x71732836
    35d8:	531a3208 	0x531a3208
    35dc:	4573843a 	0x4573843a
    35e0:	4afa8c0a 	c2	0xfa8c0a
    35e4:	321a135a 	andi	k0,s0,0x135a
    35e8:	2a42f0e7 	slti	v0,s2,-3865
    35ec:	5dcfef90 	0x5dcfef90
    35f0:	9b3e198b 	lwr	s8,6539(t9)
    35f4:	847f5e3b 	lh	ra,24123(v1)
    35f8:	4053614b 	0x4053614b
    35fc:	1f9b9fa8 	0x1f9b9fa8
    3600:	db6f1728 	0xdb6f1728
    3604:	2f242e2f 	sltiu	a0,t9,11823
    3608:	1229287b 	beq	s1,t1,d7f8 <lmask+0x7f38>
    360c:	a0b07b37 	sb	s0,31543(a1)
    3610:	2e1f172c 	sltiu	ra,s0,5932
    3614:	606e536c 	0x606e536c
    3618:	655f075d 	0x655f075d
    361c:	80112a07 	lb	s1,10759(zero)
    3620:	84888251 	lh	t0,-32175(a0)
    3624:	30509384 	andi	s0,v0,0x9384
    3628:	bc4f212e 	0xbc4f212e
    362c:	3c426bb6 	0x3c426bb6
    3630:	7a249221 	0x7a249221
    3634:	0a402d33 	j	900b4cc <lmask+0x9005c0c>
    3638:	1b660a1f 	0x1b660a1f
    363c:	8b102238 	lwl	s0,8760(t8)
    3640:	0b303a7d 	j	cc0e9f4 <lmask+0xcc09134>
    3644:	ff2177da 	0xff2177da
    3648:	bcdc6a0c 	0xbcdc6a0c
    364c:	4164497a 	0x4164497a
    3650:	49612c28 	0x49612c28
    3654:	280a2c6c 	slti	t2,zero,11372
    3658:	5c81e000 	0x5c81e000
    365c:	a460131f 	sh	zero,4895(v1)
    3660:	29252628 	slti	a1,t1,9768
    3664:	24426bb0 	addiu	v0,v0,27568
    3668:	8220171a 	lb	zero,5914(s1)
    366c:	1423554a 	bne	at,v1,18b98 <lmask+0x132d8>
    3670:	6c656120 	0x6c656120
    3674:	24036f78 	addiu	v1,zero,28536
    3678:	122098e5 	beqz	s1,fffe9a10 <lmask+0xfffe4150>
    367c:	a5bc9f78 	sh	gp,-24712(t5)
    3680:	695aaa50 	0x695aaa50
    3684:	211d433f 	addi	sp,t0,17215
    3688:	414b4233 	0x414b4233
    368c:	21381455 	addi	t8,t1,5205
    3690:	0014237d 	0x14237d
    3694:	55300116 	0x55300116
    3698:	28391838 	slti	t9,at,6200
    369c:	39082aa1 	xori	t0,t0,0x2aa1
    36a0:	48000f95 	0x48000f95
    36a4:	18466743 	0x18466743
    36a8:	5c454aaa 	0x5c454aaa
    36ac:	1c1c0b0b 	0x1c1c0b0b
    36b0:	2c330a64 	sltiu	s3,at,2660
    36b4:	9d3ac6ae 	0x9d3ac6ae
    36b8:	571a212b 	0x571a212b
    36bc:	1c1f1a19 	0x1c1f1a19
    36c0:	377d7d34 	ori	sp,k1,0x7d34
    36c4:	30282725 	andi	t0,at,0x2725
    36c8:	4c4f6566 	0x4c4f6566
    36cc:	971e1c2d 	lhu	s8,7213(t8)
    36d0:	1c952f23 	0x1c952f23
    36d4:	23ffcdbe 	addi	ra,ra,-12866
    36d8:	aef26276 	sw	s2,25206(s7)
    36dc:	94603b16 	lhu	zero,15126(v1)
    36e0:	31175f0e 	andi	s7,t0,0x5f0e
    36e4:	17190819 	bne	t8,t9,574c <zigzag_index+0x94>
    36e8:	33001a00 	andi	zero,t8,0x1a00
    36ec:	69926600 	0x69926600
    36f0:	0e582a66 	jal	960a998 <lmask+0x96050d8>
    36f4:	40101631 	0x40101631
    36f8:	34351533 	ori	s5,at,0x1533
    36fc:	8f133d58 	lw	s3,15704(t8)
    3700:	64423d5a 	0x64423d5a
    3704:	59022a1a 	0x59022a1a
    3708:	161b282f 	bne	s0,k1,d7c8 <lmask+0x7f08>
    370c:	313c2c58 	andi	gp,t1,0x2c58
    3710:	798d7734 	0x798d7734
    3714:	1b241104 	0x1b241104
    3718:	13180721 	beq	t8,t8,53a0 <izigzag_index+0x54>
    371c:	422d3554 	c0	0x2d3554
    3720:	56133146 	0x56133146
    3724:	6268b4ff 	0x6268b4ff
    3728:	4f223200 	c3	0x1223200
    372c:	1339793b 	beq	t9,t9,21c1c <lmask+0x1c35c>
    3730:	dacba57b 	0xdacba57b
    3734:	fbaddf86 	0xfbaddf86
    3738:	90763f16 	lbu	s6,16150(v1)
    373c:	541140d0 	0x541140d0
    3740:	b3460317 	0xb3460317
    3744:	33b3a472 	andi	s3,sp,0xa472
    3748:	0091d0be 	0x91d0be
    374c:	a9282c24 	swl	t0,11300(t1)
    3750:	2c25523c 	sltiu	a1,at,21052
    3754:	060e52b2 	0x60e52b2
    3758:	1d6c251e 	0x1d6c251e
    375c:	705c3a12 	0x705c3a12
    3760:	403f404f 	0x403f404f
    3764:	534c4d48 	0x534c4d48
    3768:	4221415d 	c0	0x21415d
    376c:	99475d46 	lwr	a3,23878(t2)
    3770:	3b32292c 	xori	s2,t9,0x292c
    3774:	5a2e2921 	0x5a2e2921
    3778:	2d4c4d27 	sltiu	t4,t2,19751
    377c:	393f1c0d 	xori	ra,t1,0x1c0d
    3780:	5398cc0a 	0x5398cc0a
    3784:	69791d13 	0x69791d13
    3788:	90d0d5e8 	lbu	s0,-10776(a2)
    378c:	475768dd 	c1	0x15768dd
    3790:	c075485b 	lwc0	$21,18523(v1)
    3794:	641d3755 	0x641d3755
    3798:	0d7be9c4 	jal	5efa710 <lmask+0x5ef4e50>
    379c:	9b0b9d82 	lwr	t3,-25214(t8)
    37a0:	9da000d6 	0x9da000d6
    37a4:	e5b0c169 	swc1	$f16,-16023(t5)
    37a8:	2a332651 	slti	s3,s1,9809
    37ac:	637e703a 	0x637e703a
    37b0:	095d005d 	j	5740174 <lmask+0x573a8b4>
    37b4:	1d5c6644 	0x1d5c6644
    37b8:	3c143c32 	lui	s4,0x3c32
    37bc:	454f2f34 	0x454f2f34
    37c0:	20194061 	addi	t9,zero,16481
    37c4:	082e4973 	j	b925cc <lmask+0xb8cd0c>
    37c8:	c4826155 	lwc1	$f2,24917(a0)
    37cc:	587d625a 	0x587d625a
    37d0:	402d395d 	0x402d395d
    37d4:	4b2e2c4a 	c2	0x12e2c4a
    37d8:	0e066053 	jal	819814c <lmask+0x819288c>
    37dc:	900e92cf 	lbu	t6,-27953(zero)
    37e0:	db8da5bc 	0xdb8da5bc
    37e4:	c6e95575 	lwc1	$f9,21877(s7)
    37e8:	c5c1de95 	lwc1	$f1,-8555(t6)
    37ec:	77363933 	jalx	cd8e4cc <lmask+0xcd88c0c>
    37f0:	214d230a 	addi	t5,t2,8970
    37f4:	97e9c4ba 	lhu	t1,-15174(ra)
    37f8:	a947e53b 	swl	a3,-6853(t2)
    37fc:	37b3a3df 	ori	s3,sp,0xa3df
    3800:	dbb31834 	0xdbb31834
    3804:	3246405a 	andi	a2,s2,0x405a
    3808:	6c3e2121 	0x6c3e2121
    380c:	1b3a1352 	0x1b3a1352
    3810:	b6b5ac1c 	0xb6b5ac1c
    3814:	281f201d 	slti	ra,zero,8221
    3818:	7c4e2932 	0x7c4e2932
    381c:	22140b50 	addi	s4,s0,2896
    3820:	a19ab8bc 	sb	k0,-18244(t4)
    3824:	835f7f52 	lb	ra,32594(k0)
    3828:	77453b12 	jalx	d14ec48 <lmask+0xd149388>
    382c:	477b572c 	c1	0x17b572c
    3830:	2c42060b 	sltiu	v0,v0,1547
    3834:	132b1b20 	beq	t9,t3,a4b8 <lmask+0x4bf8>
    3838:	1d80cadf 	bgtz	t4,ffff63b8 <lmask+0xffff0af8>
    383c:	db9f8cd5 	0xdb9f8cd5
    3840:	eceaa8d4 	swc3	$10,-22316(a3)
    3844:	92533434 	lbu	s3,13364(s2)
    3848:	17251a2e 	bne	t9,a1,a104 <lmask+0x4844>
    384c:	3acad1c0 	xori	t2,s6,0xd1c0
    3850:	e3bfe1ff 	swc0	$31,-7681(sp)
    3854:	1d1b0935 	0x1d1b0935
    3858:	b8ada403 	swr	t5,-23549(a1)
    385c:	340a3e3e 	ori	t2,zero,0x3e3e
    3860:	4f6f272f 	c3	0x16f272f
    3864:	10135531 	beq	zero,s3,18d2c <lmask+0x1346c>
    3868:	2174ffc7 	addi	s4,t3,-57
    386c:	586bc1db 	0x586bc1db
    3870:	6a63c090 	0x6a63c090
    3874:	651d1514 	0x651d1514
    3878:	312b65d5 	andi	t3,t1,0x65d5
    387c:	bccfd164 	0xbccfd164
    3880:	6370533b 	0x6370533b
    3884:	24052c75 	addiu	a1,zero,11381
    3888:	442a303a 	0x442a303a
    388c:	0f062a72 	jal	c18a9c8 <lmask+0xc185108>
    3890:	28411000 	slti	at,v0,4096
    3894:	9cc1eed3 	0x9cc1eed3
    3898:	d9d3f2c0 	0xd9d3f2c0
    389c:	8ac6a618 	lwl	a2,-23016(s6)
    38a0:	40300737 	0x40300737
    38a4:	270c73a0 	addiu	t4,t8,29600
    38a8:	b5c3ba65 	0xb5c3ba65
    38ac:	a0cf000f 	sb	t7,15(a2)
    38b0:	006d80a4 	0x6d80a4
    38b4:	ae07219a 	sw	a3,8602(s0)
    38b8:	6053891e 	0x6053891e
    38bc:	1371171f 	beq	k1,s1,953c <lmask+0x3c7c>
    38c0:	5650b0f6 	0x5650b0f6
    38c4:	430c0049 	c0	0x10c0049
    38c8:	b192f659 	0xb192f659
    38cc:	dfd58a0f 	0xdfd58a0f
    38d0:	3765344a 	ori	a1,k1,0x344a
    38d4:	5338f3d4 	0x5338f3d4
    38d8:	d5697699 	0xd5697699
    38dc:	99898c77 	lwr	t1,-29577(t4)
    38e0:	7d454a0a 	0x7d454a0a
    38e4:	441d220d 	0x441d220d
    38e8:	6757414a 	0x6757414a
    38ec:	4d856fda 	0x4d856fda
    38f0:	c392b9d7 	lwc0	$18,-17961(gp)
    38f4:	d764947f 	0xd764947f
    38f8:	db0d3f26 	0xdb0d3f26
    38fc:	10103a14 	beq	zero,s0,12150 <lmask+0xc890>
    3900:	224d8fda 	addi	t5,s2,-28710
    3904:	d0aca6d7 	0xd0aca6d7
    3908:	cf1f0078 	lwc3	$31,120(t8)
    390c:	667ca73e 	0x667ca73e
    3910:	985f6792 	lwr	ra,26514(v0)
    3914:	9a0a8c9c 	lwr	t2,-29540(s0)
    3918:	854bb8ba 	lh	t3,-18246(t2)
    391c:	75051456 	jalx	4145158 <lmask+0x413f898>
    3920:	cb08d6a0 	lwc2	$8,-10592(t8)
    3924:	96cba2e8 	lhu	t3,-23832(s6)
    3928:	af0c3834 	sw	t4,14388(t8)
    392c:	489d96b6 	0x489d96b6
    3930:	c3e4764a 	lwc0	$4,30282(ra)
    3934:	bdca9951 	0xbdca9951
    3938:	3a3e494a 	xori	s8,s1,0x494a
    393c:	480d4734 	0x480d4734
    3940:	0e0f292f 	jal	83ca4bc <lmask+0x83c4bfc>
    3944:	568ac5bc 	0x568ac5bc
    3948:	af91d869 	sw	s1,-10135(gp)
    394c:	9c90c3b2 	0x9c90c3b2
    3950:	5c629c11 	0x5c629c11
    3954:	3722140a 	ori	v0,t9,0x140a
    3958:	081e2929 	j	78a4a4 <lmask+0x784be4>
    395c:	29607b93 	slti	zero,t3,31635
    3960:	d2bde1dc 	0xd2bde1dc
    3964:	0032cbb5 	0x32cbb5
    3968:	c1df5962 	lwc0	$31,22882(t6)
    396c:	8639aebe 	lh	t9,-20802(s1)
    3970:	a2a93e2c 	sb	t1,15916(s5)
    3974:	5a311817 	0x5a311817
    3978:	57f656a5 	0x57f656a5
    397c:	c0ead8bf 	lwc0	$10,-10049(a3)
    3980:	c1e85820 	lwc0	$8,22560(t7)
    3984:	3b4485b8 	xori	a0,k0,0x85b8
    3988:	aab7e9fa 	swl	s7,-5638(s5)
    398c:	720db2c3 	0x720db2c3
    3990:	ada56c25 	sw	a1,27685(t5)
    3994:	0457471c 	0x457471c
    3998:	33480d07 	andi	t0,k0,0xd07
    399c:	65308c60 	0x65308c60
    39a0:	b1d1c2c3 	0xb1d1c2c3
    39a4:	fb2b5ee1 	0xfb2b5ee1
    39a8:	a3d7b71f 	sb	s7,-18657(s8)
    39ac:	13231b20 	beq	t9,v1,a630 <lmask+0x4d70>
    39b0:	12103c13 	beq	s0,s0,12a00 <lmask+0xd140>
    39b4:	302a7d5a 	andi	t2,at,0x7d5a
    39b8:	946fc6ba 	lhu	t7,-14662(v1)
    39bc:	a2af4500 	sb	t7,17664(s5)
    39c0:	f9c9d6ef 	0xf9c9d6ef
    39c4:	a8918f4b 	swl	s1,-28853(a0)
    39c8:	1edbd0bd 	0x1edbd0bd
    39cc:	0c40316b 	jal	100c5ac <lmask+0x1006cec>
    39d0:	643b3ae3 	0x643b3ae3
    39d4:	7c31847e 	0x7c31847e
    39d8:	aed60074 	sw	s6,116(s6)
    39dc:	710e748a 	0x710e748a
    39e0:	585e747d 	0x585e747d
    39e4:	5872ff84 	0x5872ff84
    39e8:	d0d7a000 	0xd0d7a000
    39ec:	09001c52 	j	4007148 <lmask+0x4001888>
    39f0:	4816283e 	0x4816283e
    39f4:	09086a5b 	j	421a96c <lmask+0x42150ac>
    39f8:	845f47dd 	lh	ra,18397(v0)
    39fc:	dabbc9e6 	0xdabbc9e6
    3a00:	ebb1dec0 	swc2	$17,-8512(sp)
    3a04:	85141518 	lh	s4,5400(t0)
    3a08:	1f0c1700 	0x1f0c1700
    3a0c:	5b212b3a 	0x5b212b3a
    3a10:	bf5ea53a 	0xbf5ea53a
    3a14:	acaa8900 	sw	t2,-30464(a1)
    3a18:	84abbec7 	lh	t3,-16697(a1)
    3a1c:	468efcc2 	c1	0x8efcc2
    3a20:	83b4ee9c 	lb	s4,-4452(sp)
    3a24:	d7cf0357 	0xd7cf0357
    3a28:	7054129f 	0x7054129f
    3a2c:	dba29a63 	0xdba29a63
    3a30:	50bc22c8 	0x50bc22c8
    3a34:	00cbc86a 	0xcbc86a
    3a38:	528d613f 	0x528d613f
    3a3c:	3f680e14 	0x3f680e14
    3a40:	ddbdde9c 	0xddbdde9c
    3a44:	ec240002 	swc3	$4,2(at)
    3a48:	195b5517 	0x195b5517
    3a4c:	1d2b307c 	0x1d2b307c
    3a50:	458d7563 	0x458d7563
    3a54:	5aba1398 	0x5aba1398
    3a58:	dfc9aebc 	0xdfc9aebc
    3a5c:	a3d20014 	sb	s2,20(s8)
    3a60:	20122127 	addi	s2,zero,8487
    3a64:	25160c25 	addiu	s6,t0,3109
    3a68:	2298b1c9 	addi	t8,s4,-20023
    3a6c:	772e8680 	jalx	cba1a00 <lmask+0xcb9c140>
    3a70:	97b5b5c2 	lhu	s5,-19006(sp)
    3a74:	e8a84806 	swc2	$8,18438(a1)
    3a78:	acc26c7d 	sw	v0,27773(a2)
    3a7c:	8eb3ace1 	lw	s3,-21279(s5)
    3a80:	82293903 	lb	t1,14595(s1)
    3a84:	9f8cbbc9 	0x9f8cbbc9
    3a88:	6eaf573e 	0x6eaf573e
    3a8c:	37cfe8a8 	ori	t7,s8,0xe8a8
    3a90:	a06e3237 	sb	t6,12855(v1)
    3a94:	5a6a8c41 	0x5a6a8c41
    3a98:	1364cecc 	beq	k1,a0,ffff75cc <lmask+0xffff1d0c>
    3a9c:	b85eadfe 	swr	s8,-20994(v0)
    3aa0:	3a271951 	xori	a3,s1,0x1951
    3aa4:	3823212c 	xori	v1,at,0x212c
    3aa8:	7a787474 	0x7a787474
    3aac:	605d164f 	0x605d164f
    3ab0:	4797cae7 	c1	0x197cae7
    3ab4:	c7dc87d1 	lwc1	$f28,-30767(s8)
    3ab8:	3a00142b 	xori	zero,s0,0x142b
    3abc:	3938321c 	xori	t8,t1,0x321c
    3ac0:	29261f31 	slti	a2,t1,7985
    3ac4:	4f113f51 	c3	0x1113f51
    3ac8:	5f903a8e 	0x5f903a8e
    3acc:	a4c0afd3 	sh	zero,-20525(a2)
    3ad0:	5fc8cfcb 	0x5fc8cfcb
    3ad4:	8782a06b 	lh	v0,-24469(gp)
    3ad8:	2ac6f345 	slti	a2,s6,-3259
    3adc:	062f507d 	0x62f507d
    3ae0:	f3a23e05 	0xf3a23e05
    3ae4:	1f0447ae 	0x1f0447ae
    3ae8:	9eb9a165 	0x9eb9a165
    3aec:	6d747489 	0x6d747489
    3af0:	58156412 	0x58156412
    3af4:	89f4461f 	lwl	s4,17951(t7)
    3af8:	4cd47979 	0x4cd47979
    3afc:	5936262c 	0x5936262c
    3b00:	311e787b 	andi	s8,t0,0x787b
    3b04:	38252d61 	xori	a1,at,0x2d61
    3b08:	43221419 	c0	0x1221419
    3b0c:	d7c54b5a 	0xd7c54b5a
    3b10:	c58d711d 	lwc1	$f13,28957(t4)
    3b14:	2b1e1024 	slti	s8,t8,4132
    3b18:	0921101a 	j	4844068 <lmask+0x483e7a8>
    3b1c:	25141532 	addiu	s4,t0,5426
    3b20:	4229091d 	c0	0x29091d
    3b24:	6c6db6a6 	0x6c6db6a6
    3b28:	9f96ecaa 	0x9f96ecaa
    3b2c:	ab8e7367 	swl	t6,29543(gp)
    3b30:	1b2b2423 	0x1b2b2423
    3b34:	d4780839 	0xd4780839
    3b38:	4a24fa08 	c2	0x24fa08
    3b3c:	05110b1b 	bgezal	t0,67ac <lmask+0xeec>
    3b40:	2d969bd9 	sltiu	s6,t4,-25639
    3b44:	50636d8a 	0x50636d8a
    3b48:	ab540742 	swl	s4,1858(k0)
    3b4c:	1b314671 	0x1b314671
    3b50:	27272774 	addiu	a3,t9,10100
    3b54:	dd434637 	0xdd434637
    3b58:	4940383c 	0x4940383c
    3b5c:	78773f1d 	0x78773f1d
    3b60:	115f6f00 	beq	t2,ra,1f764 <lmask+0x19ea4>
    3b64:	1a0f1ea8 	0x1a0f1ea8
    3b68:	2e6132bc 	sltiu	at,s3,12988
    3b6c:	795c0b14 	0x795c0b14
    3b70:	1a18150d 	0x1a18150d
    3b74:	1307361a 	beq	t8,a3,113e0 <lmask+0xbb20>
    3b78:	20303330 	addi	s0,at,13104
    3b7c:	18390312 	0x18390312
    3b80:	ffecb6cb 	0xffecb6cb
    3b84:	92e9ab95 	lbu	t1,-21611(s7)
    3b88:	560b02e7 	0x560b02e7
    3b8c:	c800b400 	lwc2	$0,-19456(zero)
    3b90:	293f3b1b 	slti	ra,t1,15131
    3b94:	07222903 	0x7222903
    3b98:	123b2374 	beq	s1,k1,c96c <lmask+0x70ac>
    3b9c:	80bf2d50 	lb	ra,11600(a1)
    3ba0:	69ac9220 	0x69ac9220
    3ba4:	874b3035 	lh	t3,12341(k0)
    3ba8:	4a232241 	c2	0x232241
    3bac:	3d1b5f12 	0x3d1b5f12
    3bb0:	3e444135 	0x3e444135
    3bb4:	3a3e6899 	xori	s8,s1,0x6899
    3bb8:	42040904 	c0	0x40904
    3bbc:	5d3a050e 	0x5d3a050e
    3bc0:	49745220 	0x49745220
    3bc4:	c9888b67 	lwc2	$8,-29849(t4)
    3bc8:	0513390d 	0x513390d
    3bcc:	13160b10 	beq	t8,s6,6810 <lmask+0xf50>
    3bd0:	2f130f3d 	sltiu	s3,t8,3901
    3bd4:	56051044 	0x56051044
    3bd8:	0d3af1de 	jal	4ebc778 <lmask+0x4eb6eb8>
    3bdc:	fdb768fa 	0xfdb768fa
    3be0:	cec3800e 	lwc3	$3,-32754(s6)
    3be4:	a09aaf0f 	sb	k0,-20721(a0)
    3be8:	47222551 	c1	0x1222551
    3bec:	1d371634 	0x1d371634
    3bf0:	080c1709 	j	305c24 <lmask+0x300364>
    3bf4:	1e434f5b 	0x1e434f5b
    3bf8:	2d3f9288 	sltiu	ra,t1,-28024
    3bfc:	08737a21 	j	1cde884 <lmask+0x1cd8fc4>
    3c00:	392c2d2c 	xori	t4,t1,0x2d2c
    3c04:	0c182776 	jal	609dd8 <lmask+0x604518>
    3c08:	05963d34 	0x5963d34
    3c0c:	2a2c2237 	slti	t4,s1,8759
    3c10:	9598101c 	lhu	t8,4124(t4)
    3c14:	0d03042a 	jal	40c10a8 <lmask+0x40bb7e8>
    3c18:	061a425c 	0x61a425c
    3c1c:	6989ddc2 	0x6989ddc2
    3c20:	637b5a05 	0x637b5a05
    3c24:	1f15030a 	0x1f15030a
    3c28:	180c1516 	0x180c1516
    3c2c:	21460002 	addi	a2,t2,2
    3c30:	2c091111 	sltiu	t1,zero,4369
    3c34:	55b3520c 	0x55b3520c
    3c38:	145dbcb9 	bne	v0,sp,ffff2f20 <lmask+0xfffed660>
    3c3c:	531aae82 	0x531aae82
    3c40:	d5ed56ba 	0xd5ed56ba
    3c44:	84566fe1 	lh	s6,28641(v0)
    3c48:	66070b0e 	0x66070b0e
    3c4c:	0f3a591b 	jal	ce9646c <lmask+0xce90bac>
    3c50:	3f9b2b63 	0x3f9b2b63
    3c54:	62116a4e 	0x62116a4e
    3c58:	303e311d 	andi	s8,at,0x311d
    3c5c:	1738daaf 	bne	t9,t8,ffffa71c <lmask+0xffff4e5c>
    3c60:	b82f5e20 	swr	t7,24096(at)
    3c64:	292c2a37 	slti	t4,t1,10807
    3c68:	2e229896 	sltiu	v0,s1,-26474
    3c6c:	190d1510 	0x190d1510
    3c70:	0f060a1b 	jal	c18286c <lmask+0xc17cfac>
    3c74:	4f525321 	c3	0x1525321
    3c78:	629b736a 	0x629b736a
    3c7c:	201c1a11 	addi	gp,zero,6673
    3c80:	2404110b 	addiu	a0,zero,4363
    3c84:	0f7ee26f 	jal	dfb89bc <lmask+0xdfb30fc>
    3c88:	bc171d35 	0xbc171d35
    3c8c:	281d1d58 	slti	sp,zero,7512
    3c90:	1ed63801 	0x1ed63801
    3c94:	0091b6a9 	0x91b6a9
    3c98:	aaaaad4e 	swl	t2,-21170(s5)
    3c9c:	5040d47b 	0x5040d47b
    3ca0:	3d93dd15 	0x3d93dd15
    3ca4:	0900547b 	j	40151ec <lmask+0x400f92c>
    3ca8:	2831573b 	slti	s1,at,22331
    3cac:	3e411f3a 	0x3e411f3a
    3cb0:	6d57201b 	0x6d57201b
    3cb4:	1b23277a 	0x1b23277a
    3cb8:	51300f33 	0x51300f33
    3cbc:	22273429 	addi	a3,s1,13353
    3cc0:	2e272c33 	sltiu	a3,s1,11315
    3cc4:	90962220 	lbu	s6,8736(a0)
    3cc8:	0a030b0b 	j	80c2c2c <lmask+0x80bd36c>
    3ccc:	012e5148 	0x12e5148
    3cd0:	693e4605 	0x693e4605
    3cd4:	24847707 	addiu	a0,a0,30471
    3cd8:	20090905 	addi	t1,zero,2309
    3cdc:	160629c9 	bne	s0,a2,e404 <lmask+0x8b44>
    3ce0:	38ddfdde 	xori	sp,a2,0xfdde
    3ce4:	030e1213 	0x30e1213
    3ce8:	572e16b2 	0x572e16b2
    3cec:	f7270a55 	0xf7270a55
    3cf0:	d395b1ce 	0xd395b1ce
    3cf4:	a29e8bce 	sb	s8,-29746(s4)
    3cf8:	d14523c5 	0xd14523c5
    3cfc:	a1b8d4b0 	sb	t8,-11088(t5)
    3d00:	062f1f21 	0x62f1f21
    3d04:	3318291b 	andi	t8,t8,0x291b
    3d08:	3e4b3f3b 	0x3e4b3f3b
    3d0c:	5751503c 	0x5751503c
    3d10:	3d272822 	0x3d272822
    3d14:	231e161a 	addi	s8,t8,5658
    3d18:	21163027 	addi	s6,t0,12327
    3d1c:	19223344 	0x19223344
    3d20:	0a0a1406 	j	8285018 <lmask+0x827f758>
    3d24:	0609030a 	0x609030a
    3d28:	3b34b836 	xori	s4,t9,0xb836
    3d2c:	473b8e57 	c1	0x13b8e57
    3d30:	19090c1d 	0x19090c1d
    3d34:	2b3d0d01 	slti	sp,t9,3329
    3d38:	46b9d176 	c1	0xb9d176
    3d3c:	ecf5fa01 	swc3	$21,-1535(a3)
    3d40:	02533c1c 	0x2533c1c
    3d44:	1131a800 	beq	t1,s1,fffedd48 <lmask+0xfffe8488>
    3d48:	06846c72 	0x6846c72
    3d4c:	49dbc3cb 	0x49dbc3cb
    3d50:	b2ccd58c 	0xb2ccd58c
    3d54:	00d3afe8 	0xd3afe8
    3d58:	d6f53f26 	0xd6f53f26
    3d5c:	19261912 	0x19261912
    3d60:	1444441d 	bne	v0,a0,14dd8 <lmask+0xf518>
    3d64:	211e2236 	addi	s8,t0,8758
    3d68:	4a6a5761 	c2	0x6a5761
    3d6c:	29181a25 	slti	t8,t0,6693
    3d70:	11565a41 	beq	t2,s6,1a678 <lmask+0x14db8>
    3d74:	1e311e28 	0x1e311e28
    3d78:	4648620d 	c1	0x48620d
    3d7c:	13121208 	beq	t8,s2,85a0 <lmask+0x2ce0>
    3d80:	09070308 	j	41c0c20 <lmask+0x41bb360>
    3d84:	8c6c1a09 	lw	t4,6665(v1)
    3d88:	03000d11 	0x3000d11
    3d8c:	11256641 	beq	t1,a1,1d694 <lmask+0x17dd4>
    3d90:	0a1f2528 	j	87c94a0 <lmask+0x87c3be0>
    3d94:	ffffd7a7 	0xffffd7a7
    3d98:	f2f8b2d1 	0xf2f8b2d1
    3d9c:	ad0947b1 	sw	t1,18353(t0)
    3da0:	00089a03 	sra	s3,t0,0x8
    3da4:	c0f137e3 	lwc0	$17,14307(a3)
    3da8:	bf98d8e3 	0xbf98d8e3
    3dac:	b9c753e7 	swr	a3,21479(t6)
    3db0:	cfa9e9d8 	lwc3	$9,-5672(sp)
    3db4:	8c062f1f 	lw	a2,12063(zero)
    3db8:	072b3e40 	0x72b3e40
    3dbc:	37231a18 	ori	v1,t9,0x1a18
    3dc0:	18223416 	0x18223416
    3dc4:	2c2e4c52 	sltiu	t6,at,19538
    3dc8:	27205266 	addiu	zero,t9,21094
    3dcc:	6b565b32 	0x6b565b32
    3dd0:	24254849 	addiu	a1,at,18505
    3dd4:	ecdeb496 	swc3	$30,-19306(a2)
    3dd8:	a995bbd4 	swl	s5,-17452(t4)
    3ddc:	dcaab3bd 	0xdcaab3bd
    3de0:	bef1e2c9 	0xbef1e2c9
    3de4:	c1bdd8e7 	lwc0	$29,-10009(t5)
    3de8:	9e930c00 	0x9e930c00
    3dec:	1f3e4349 	0x1f3e4349
    3df0:	0d220900 	jal	4882400 <lmask+0x487cb40>
    3df4:	00031830 	0x31830
    3df8:	1c93d39f 	0x1c93d39f
    3dfc:	a9706579 	swl	s0,25977(t3)
    3e00:	5e4b2905 	0x5e4b2905
    3e04:	203f3d25 	addi	ra,at,15653
    3e08:	1f131919 	0x1f131919
    3e0c:	04171b07 	0x4171b07
    3e10:	050c1527 	0x50c1527
    3e14:	2e321b0a 	sltiu	s2,s1,6922
    3e18:	00151400 	sll	v0,s5,0x10
    3e1c:	2b271b00 	slti	a3,t9,6912
    3e20:	00001000 	sll	v0,zero,0x0
    3e24:	09030001 	j	40c0004 <lmask+0x40ba744>
    3e28:	0d090f1c 	jal	4243c70 <lmask+0x423e3b0>
    3e2c:	160fb9cc 	bne	s0,t7,ffff2560 <lmask+0xfffecca0>
    3e30:	6b68b98e 	0x6b68b98e
    3e34:	affebc63 	sw	s8,-17309(ra)
    3e38:	97d5deb2 	lhu	s5,-8526(s8)
    3e3c:	a69adabc 	sh	k0,-9540(s4)
    3e40:	b3f4ddf5 	0xb3f4ddf5
    3e44:	bc61443e 	0xbc61443e
    3e48:	392c3b57 	xori	t4,t1,0x3b57
    3e4c:	321e0c00 	andi	s8,s0,0xc00
    3e50:	17302e99 	bne	t9,s0,f8b8 <lmask+0x9ff8>
    3e54:	cb99aeac 	lwc2	$25,-20820(gp)
    3e58:	b6dbea99 	0xb6dbea99
    3e5c:	42303d42 	c0	0x303d42
    3e60:	310f1533 	andi	t7,t0,0x1533
    3e64:	271c0820 	addiu	gp,t8,2080
    3e68:	1500000a 	bnez	t0,3e94 <hana_bmp+0x2a3c>
    3e6c:	19222a34 	0x19222a34
    3e70:	1f0e0002 	0x1f0e0002
    3e74:	140e2e35 	bne	zero,t6,f74c <lmask+0x9e8c>
    3e78:	2a000000 	slti	zero,s0,0
    3e7c:	0c070502 	jal	1c1408 <lmask+0x1bbb48>
    3e80:	050b120d 	0x50b120d
    3e84:	1f3e1116 	0x1f3e1116
    3e88:	a87a0fc9 	swl	k0,4041(v1)
    3e8c:	f7dbd4d7 	0xf7dbd4d7
    3e90:	a32e15a2 	sb	t6,5538(t9)
    3e94:	a4badf80 	sh	k0,-8320(a1)
    3e98:	b6f8e7f0 	0xb6f8e7f0
    3e9c:	dec7eccd 	0xdec7eccd
    3ea0:	9c58786b 	0x9c58786b
    3ea4:	4249574d 	c0	0x49574d
    3ea8:	2015202e 	addi	s5,zero,8238
    3eac:	38556258 	xori	s5,v0,0x6258
    3eb0:	a6b2adbe 	sh	s2,-21058(s5)
    3eb4:	ce93372a 	lwc3	$19,14122(s4)
    3eb8:	3d34060c 	0x3d34060c
    3ebc:	2a3b3c41 	slti	k1,s1,15425
    3ec0:	0c0d0600 	jal	341800 <lmask+0x33bf40>
    3ec4:	00112033 	0x112033
    3ec8:	2e261d00 	sltiu	a2,s1,7424
    3ecc:	0000000f 	0xf
    3ed0:	53432c00 	0x53432c00
    3ed4:	00000001 	0x1
    3ed8:	0000060d 	break	0x0,0x18
    3edc:	120e223f 	beq	s0,t6,c7dc <lmask+0x6f1c>
    3ee0:	1316721f 	beq	t8,s6,20760 <lmask+0x1aea0>
    3ee4:	39f9edbd 	xori	t9,t7,0xedbd
    3ee8:	e7e04012 	swc1	$f0,16402(ra)
    3eec:	0836276b 	j	d89dac <lmask+0xd844ec>
    3ef0:	a65536d9 	sh	s5,14041(s2)
    3ef4:	d9e4dbcd 	0xd9e4dbcd
    3ef8:	bba47754 	swr	a0,30548(sp)
    3efc:	92d1a853 	lbu	s1,-22445(s6)
    3f00:	5c621c1d 	0x5c621c1d
    3f04:	2a2c371c 	slti	t4,s1,14108
    3f08:	1c4c9ca6 	0x1c4c9ca6
    3f0c:	938a8e48 	lbu	t2,-29112(gp)
    3f10:	41304305 	0x41304305
    3f14:	00081432 	0x81432
    3f18:	454b0a00 	0x454b0a00
    3f1c:	0000000f 	0xf
    3f20:	23918e27 	addi	s1,gp,-29145
    3f24:	13000000 	beqz	t8,3f28 <hana_bmp+0x2ad0>
    3f28:	0000695f 	0x695f
    3f2c:	40000000 	mfc0	zero,c0_index
    3f30:	00000000 	sll	zero,zero,0x0
    3f34:	00000506 	0x506
    3f38:	16261a17 	bne	s1,a2,a798 <lmask+0x4ed8>
    3f3c:	92ae94c2 	lbu	t6,-27454(s5)
    3f40:	8998dcd3 	lwl	t8,-9005(t4)
    3f44:	76873734 	jalx	a1cdcd0 <lmask+0xa1c8410>
    3f48:	2c72678f 	sltiu	s2,v1,26511
    3f4c:	774c68ff 	jalx	d31a3fc <lmask+0xd314b3c>
    3f50:	f2ffbfb6 	0xf2ffbfb6
    3f54:	baaa4dbe 	swr	t2,19902(s5)
    3f58:	dcdfad6d 	0xdcdfad6d
    3f5c:	15284d2b 	bne	t1,t0,1740c <lmask+0x11b4c>
    3f60:	2a363c75 	slti	s6,s1,15477
    3f64:	8abab270 	lwl	k0,-19856(s5)
    3f68:	5f73726b 	0x5f73726b
    3f6c:	1f0d1d1d 	0x1f0d1d1d
    3f70:	1a242c2a 	0x1a242c2a
    3f74:	02040124 	0x2040124
    3f78:	2f005db4 	sltiu	zero,t8,23988
    3f7c:	c97c0c0b 	lwc2	$28,3083(t3)
    3f80:	00000000 	sll	zero,zero,0x0
    3f84:	4f685603 	c3	0x1685603
	...
    3f90:	00000913 	0x913
    3f94:	3229a2e2 	andi	t1,s1,0xa2e2
    3f98:	e7894381 	swc1	$f9,17281(gp)
    3f9c:	ebcca0d5 	swc2	$12,-24363(s8)
    3fa0:	bc6badbe 	0xbc6badbe
    3fa4:	a2abe3ff 	sb	t3,-7169(s5)
    3fa8:	bbf9eae0 	swr	t9,-5408(ra)
    3fac:	4ba9cce8 	c2	0x1a9cce8
    3fb0:	926772a8 	lbu	a3,29352(s3)
    3fb4:	9e9a3935 	0x9e9a3935
    3fb8:	542c253e 	0x542c253e
    3fbc:	40a49de2 	0x40a49de2
    3fc0:	ee7a596b 	swc3	$26,22891(s3)
    3fc4:	7868646d 	0x7868646d
    3fc8:	491d1b0c 	0x491d1b0c
    3fcc:	1a41495f 	0x1a41495f
    3fd0:	253b8050 	addiu	k1,t1,-32688
    3fd4:	67bcc17f 	0x67bcc17f
    3fd8:	00171a05 	0x171a05
    3fdc:	00004143 	sra	t0,zero,0x5
    3fe0:	31030000 	andi	v1,t0,0x0
    3fe4:	00000700 	sll	zero,zero,0x1c
    3fe8:	00000000 	sll	zero,zero,0x0
    3fec:	0004282b 	sltu	a1,zero,a0
    3ff0:	6588abce 	0x6588abce
    3ff4:	8aa2c8b3 	lwl	v0,-14157(s5)
    3ff8:	8ebf899c 	lw	ra,-30308(s5)
    3ffc:	cfb4c3b6 	lwc3	$20,-15434(sp)
    4000:	60abe6aa 	0x60abe6aa
    4004:	b2cd806b 	0xb2cd806b
    4008:	accea58a 	sw	t6,-23158(a2)
    400c:	503b7496 	0x503b7496
    4010:	553d3939 	0x553d3939
    4014:	31322986 	andi	s2,t1,0x2986
    4018:	a8e1f78b 	swl	at,-2165(a3)
    401c:	4a595a68 	c2	0x595a68
    4020:	4e506555 	c3	0x506555
    4024:	5255424d 	0x5255424d
    4028:	3a513c4b 	xori	s1,s2,0x3c4b
    402c:	c0cdb9d2 	lwc0	$13,-17966(a2)
    4030:	cc8a3b5b 	lwc3	$10,15195(a0)
    4034:	611e000f 	0x611e000f
    4038:	563c150b 	0x563c150b
    403c:	20110717 	addi	s1,zero,1815
    4040:	10000004 	beqz	zero,4054 <hana_bmp+0x2bfc>
    4044:	0a030300 	j	80c0c00 <lmask+0x80bb340>
    4048:	2b2d0f77 	slti	t5,t9,3959
    404c:	c5afc2b6 	lwc1	$f15,-15690(t5)
    4050:	a9bf94d1 	swl	ra,-27439(t5)
    4054:	7a74c2be 	0x7a74c2be
    4058:	b8652abb 	swr	a1,10939(v1)
    405c:	c3d0b1ba 	lwc0	$16,-20038(s8)
    4060:	dab07f8f 	0xdab07f8f
    4064:	97b8c692 	lhu	t8,-14702(sp)
    4068:	90dea452 	lbu	s8,-23470(a2)
    406c:	41bba644 	0x41bba644
    4070:	1f6abacd 	0x1f6abacd
    4074:	d7cfb267 	0xd7cfb267
    4078:	50734f6d 	0x50734f6d
    407c:	7b573451 	0x7b573451
    4080:	5540594c 	0x5540594c
    4084:	541f64b9 	0x541f64b9
    4088:	cbdde8d3 	lwc2	$29,-5933(s8)
    408c:	9765572f 	lhu	a1,22319(k1)
    4090:	12236765 	beq	s1,v1,1de28 <lmask+0x18568>
    4094:	3b152c39 	xori	s5,t8,0x2c39
    4098:	2e251612 	sltiu	a1,s1,5650
    409c:	1a19170f 	0x1a19170f
    40a0:	0900302e 	j	400c0b8 <lmask+0x40067f8>
    40a4:	4358b8a2 	c0	0x158b8a2
    40a8:	c2e8eacf 	lwc0	$8,-5425(s7)
    40ac:	fbdc4c3e 	0xfbdc4c3e
    40b0:	9ceefccc 	0x9ceefccc
    40b4:	90c4d0e6 	lbu	a0,-12058(a2)
    40b8:	80515363 	lb	s1,21347(v0)
    40bc:	9bb0d7c1 	lwr	s0,-10303(sp)
    40c0:	a0b9a2b6 	sb	t9,-23882(a1)
    40c4:	c02a40bb 	lwc0	$10,16571(at)
    40c8:	94567824 	lhu	s6,30756(v0)
    40cc:	b1a4b4ec 	0xb1a4b4ec
    40d0:	d8c68509 	0xd8c68509
    40d4:	00224426 	0x224426
    40d8:	21283843 	addi	t0,t1,14403
    40dc:	0c110a00 	jal	442800 <lmask+0x43cf40>
    40e0:	216d8cc0 	addi	t5,t3,-29504
    40e4:	dad2b78c 	0xdad2b78c
    40e8:	715d381d 	0x715d381d
    40ec:	53595c50 	0x53595c50
    40f0:	4649512a 	c1	0x49512a
    40f4:	2b242625 	slti	a0,t9,9765
    40f8:	25241917 	addiu	a0,t1,6423
    40fc:	07088416 	0x7088416
    4100:	34507799 	ori	s0,v0,0x7799
    4104:	c1d0c4dd 	lwc0	$16,-15139(t6)
    4108:	4d8178cb 	0x4d8178cb
    410c:	c0deccd9 	lwc0	$30,-13095(a2)
    4110:	b6d489fb 	0xb6d489fb
    4114:	916b8abd 	lbu	t3,-30019(t3)
    4118:	c1b2bfc6 	lwc0	$18,-16442(t5)
    411c:	b6b0aa27 	0xb6b0aa27
    4120:	2c8c5461 	sltiu	t4,a0,21601
    4124:	8a4371a4 	lwl	v1,29092(s2)
    4128:	bad2f1ec 	swr	s2,-3604(s6)
    412c:	cc330018 	lwc3	$19,24(at)
    4130:	4c54390f 	0x4c54390f
    4134:	473e1d24 	c1	0x13e1d24
    4138:	09000037 	j	40000dc <lmask+0x3ffa81c>
    413c:	6a9ab7cb 	0x6a9ab7cb
    4140:	b88c584d 	swr	t4,22605(a0)
    4144:	271b314a 	addiu	k1,t8,12618
    4148:	5b514243 	0x5b514243
    414c:	513a2929 	0x513a2929
    4150:	23191e18 	addi	t9,t8,7704
    4154:	101d080a 	beq	zero,sp,6180 <lmask+0x8c0>
    4158:	7b3a1442 	0x7b3a1442
    415c:	625b75c5 	0x625b75c5
    4160:	c7c028a2 	lwc1	$f0,10402(s8)
    4164:	f9cedebd 	0xf9cedebd
    4168:	d1d68897 	0xd1d68897
    416c:	7563db8f 	jalx	58f6e3c <lmask+0x58f157c>
    4170:	82825f5e 	lb	v0,24414(s4)
    4174:	5981dcc3 	0x5981dcc3
    4178:	901f3db8 	lbu	ra,15800(zero)
    417c:	867f4f59 	lh	ra,20313(s3)
    4180:	003eabc4 	0x3eabc4
    4184:	d5c1a472 	0xd5c1a472
    4188:	0f578ba3 	jal	d5e2e8c <lmask+0xd5dd5cc>
    418c:	a7423b67 	sh	v0,15207(k0)
    4190:	2e270000 	sltiu	a3,s1,0
    4194:	000d54a8 	0xd54a8
    4198:	cfb2692d 	lwc3	$18,26925(sp)
    419c:	0f000a07 	jal	c00281c <lmask+0xbffcf5c>
    41a0:	2d2d343d 	sltiu	t5,t1,13373
    41a4:	41414739 	0x41414739
    41a8:	1f0b110c 	0x1f0b110c
    41ac:	03061619 	0x3061619
    41b0:	0c10604e 	jal	418138 <lmask+0x412878>
    41b4:	1d366540 	0x1d366540
    41b8:	80d3937a 	lb	s3,-27782(a2)
    41bc:	35e0c8c1 	ori	zero,t7,0xc8c1
    41c0:	d7cb8cc4 	0xd7cb8cc4
    41c4:	b6a49a69 	0xb6a49a69
    41c8:	c9a77358 	lwc2	$7,29528(t5)
    41cc:	48492a63 	0x48492a63
    41d0:	e2e8af1d 	swc0	$8,-20707(s7)
    41d4:	6cc4bcc2 	0x6cc4bcc2
    41d8:	9e996973 	0x9e996973
    41dc:	b1bab6c6 	0xb1bab6c6
    41e0:	af97a26d 	sw	s7,-23955(gp)
    41e4:	48727a75 	0x48727a75
    41e8:	4e702015 	c3	0x702015
    41ec:	2900000d 	slti	zero,t0,13
    41f0:	384a7b69 	xori	t2,v0,0x7b69
    41f4:	361f1d25 	ori	ra,s0,0x1d25
    41f8:	0f002d2b 	jal	c00b4ac <lmask+0xc005bec>
    41fc:	24293b49 	addiu	t1,at,15177
    4200:	401b0b01 	0x401b0b01
    4204:	04020703 	0x4020703
    4208:	0b0d100e 	j	c344038 <lmask+0xc33e778>
    420c:	695d3337 	0x695d3337
    4210:	3a034a9e 	xori	v1,s0,0x4a9e
    4214:	21505fd2 	addi	s0,t2,24530
    4218:	830093be 	lb	zero,-27714(t8)
    421c:	aeb9ddd1 	sw	t9,-8751(s5)
    4220:	e5ffdd9b 	swc1	$f31,-8805(t7)
    4224:	65782d59 	0x65782d59
    4228:	5094d7d5 	0x5094d7d5
    422c:	a32f86e9 	sb	t7,-30999(t9)
    4230:	c8e8f2f5 	lwc2	$8,-3339(a3)
    4234:	a082a3b4 	sb	v0,-23628(a0)
    4238:	aadedfbd 	swl	s8,-8259(s6)
    423c:	8ea37280 	lw	v1,29312(s5)
    4240:	928d614a 	lbu	t5,24906(s4)
    4244:	1c41381e 	0x1c41381e
    4248:	002d4025 	or	t0,at,t5
    424c:	3e542617 	0x3e542617
    4250:	18272100 	0x18272100
    4254:	17282516 	bne	t9,t0,d6b0 <lmask+0x7df0>
    4258:	2147441b 	addi	a3,t2,17435
    425c:	05000101 	bltz	t0,4664 <hana_bmp+0x320c>
    4260:	04010a0c 	bgez	zero,6a94 <lmask+0x11d4>
    4264:	0d0b5051 	jal	42d4144 <lmask+0x42ce884>
    4268:	17141a18 	bne	t8,s4,aacc <lmask+0x520c>
    426c:	2d700f43 	sltiu	s0,t3,3907
    4270:	59351e19 	0x59351e19
    4274:	2edde6db 	sltiu	sp,s6,-6437
    4278:	dbe2dbfe 	0xdbe2dbfe
    427c:	d9805654 	0xd9805654
    4280:	33946d78 	andi	s4,gp,0x6d78
    4284:	80725e42 	lb	s2,24130(v1)
    4288:	7bd5d0d8 	0x7bd5d0d8
    428c:	f3ddad6e 	0xf3ddad6e
    4290:	83954e8b 	lb	s5,20107(gp)
    4294:	f5ccbdf7 	0xf5ccbdf7
    4298:	ad7c7758 	sw	gp,30552(t3)
    429c:	626a7288 	0x626a7288
    42a0:	642c2031 	0x642c2031
    42a4:	494b5831 	0x494b5831
    42a8:	04000b14 	bltz	zero,6efc <lmask+0x163c>
    42ac:	20212313 	addi	at,at,8979
    42b0:	111f2e3e 	beq	t0,ra,fbac <lmask+0xa2ec>
    42b4:	3b2a110a 	xori	t2,t9,0x110a
    42b8:	0e130505 	jal	84c1414 <lmask+0x84bbb54>
    42bc:	0e060b0c 	jal	8182c30 <lmask+0x817d370>
    42c0:	323c1110 	andi	gp,s1,0x1110
    42c4:	21121745 	addi	s2,t0,5957
    42c8:	00175517 	0x175517
    42cc:	31141fb8 	andi	s4,t0,0x1fb8
    42d0:	f8f0e6cf 	0xf8f0e6cf
    42d4:	3fb1c6e5 	0x3fb1c6e5
    42d8:	ac5a5a8d 	sw	k0,23181(v0)
    42dc:	315746b4 	andi	s7,t2,0x46b4
    42e0:	a4326bab 	sh	s2,27563(at)
    42e4:	b4e1b0ae 	0xb4e1b0ae
    42e8:	bcad9a65 	0xbcad9a65
    42ec:	288ccbd2 	slti	t4,a0,-13358
    42f0:	b6e8a15d 	0xb6e8a15d
    42f4:	5daba977 	0x5daba977
    42f8:	57574585 	0x57574585
    42fc:	8b5d8aa8 	lwl	sp,-30040(k0)
    4300:	84300000 	lh	s0,0(at)
    4304:	0a0a1636 	j	82858d8 <lmask+0x8280018>
    4308:	5b220726 	0x5b220726
    430c:	353c3b3f 	ori	gp,t1,0x3b3f
    4310:	192b272d 	0x192b272d
    4314:	2c220d05 	sltiu	v0,at,3333
    4318:	0c0f0b55 	jal	3c2d54 <lmask+0x3bd494>
    431c:	1a030200 	0x1a030200
    4320:	0025001b 	divu	zero,at,a1
    4324:	57090423 	0x57090423
    4328:	081795a0 	j	5e5680 <lmask+0x5dfdc0>
    432c:	afd8bea6 	sw	t8,-16730(s8)
    4330:	bad2a274 	swr	s2,-23948(s6)
    4334:	83469eb3 	lb	a2,-24909(k0)
    4338:	86d3ab2c 	lh	s3,-21716(s6)
    433c:	87d5eae4 	lh	s5,-5404(s8)
    4340:	c8d374be 	lwc2	$19,29886(a2)
    4344:	c3bb569c 	lwc0	$27,22172(sp)
    4348:	bbede5e1 	swr	t5,-6687(ra)
    434c:	cf5f3699 	lwc3	$31,13977(k0)
    4350:	bd5e5056 	0xbd5e5056
    4354:	3770806d 	ori	s0,k1,0x806d
    4358:	9ac5c057 	lwr	a1,-16297(s6)
    435c:	00000000 	sll	zero,zero,0x0
    4360:	0b2d6a55 	j	cb5a954 <lmask+0xcb55094>
    4364:	55646777 	0x55646777
    4368:	6f5b202a 	0x6f5b202a
    436c:	2638363a 	addiu	t8,s1,13882
    4370:	28140f0f 	slti	s4,zero,3855
    4374:	00372808 	0x372808
    4378:	0d0d2315 	jal	4348c54 <lmask+0x4343394>
    437c:	0b006604 	j	c019810 <lmask+0xc013f50>
    4380:	00223f00 	0x223f00
    4384:	c8f8d0e7 	lwc2	$24,-12057(a3)
    4388:	b788ab54 	0xb788ab54
    438c:	4e565d9a 	c3	0x565d9a
    4390:	859f8367 	lh	ra,-31897(t4)
    4394:	5f373789 	0x5f373789
    4398:	4781ffa2 	c1	0x181ffa2
    439c:	50ccc8a6 	0x50ccc8a6
    43a0:	7276d1f9 	0x7276d1f9
    43a4:	eabed6c3 	swc2	$30,-10557(s5)
    43a8:	8737925c 	lh	s7,-28068(t9)
    43ac:	5f573d4d 	0x5f573d4d
    43b0:	948590d5 	lhu	a1,-28459(a0)
    43b4:	d89d5d50 	0xd89d5d50
    43b8:	00181821 	addu	v1,zero,t8
    43bc:	5a889fab 	0x5a889fab
    43c0:	c5dfcacf 	lwc1	$f31,-13617(t6)
    43c4:	44062211 	0x44062211
    43c8:	1918170e 	0x1918170e
    43cc:	21122509 	addi	s2,t0,9481
    43d0:	44354148 	0x44354148
    43d4:	5f291413 	0x5f291413
    43d8:	69855a34 	0x69855a34
    43dc:	56285bda 	0x56285bda
    43e0:	898d887c 	lwl	t5,-30596(t4)
    43e4:	737e2166 	0x737e2166
    43e8:	44729b98 	0x44729b98
    43ec:	58000f58 	0x58000f58
    43f0:	62c0aed7 	0x62c0aed7
    43f4:	ecdea2bb 	swc3	$30,-23877(a2)
    43f8:	c0896b47 	lwc0	$9,27463(a0)
    43fc:	6fedd9c1 	0x6fedd9c1
    4400:	eed9d064 	swc3	$25,-12188(s6)
    4404:	8c76723a 	lw	s6,29242(v1)
    4408:	403c8894 	0x403c8894
    440c:	c3d6beb6 	lwc0	$22,-16714(s8)
    4410:	97651812 	lhu	a1,6162(k1)
    4414:	0901214f 	j	404853c <lmask+0x4042c7c>
    4418:	7697b6d1 	jalx	a5edb44 <lmask+0xa5e8284>
    441c:	a5c1b21d 	sh	at,-19939(t6)
    4420:	000b0d02 	srl	at,t3,0x14
    4424:	00100c0a 	0x100c0a
    4428:	13122e20 	beq	t8,s2,fcac <lmask+0xa3ec>
    442c:	384a373c 	xori	t2,v0,0x373c
    4430:	0c305277 	jal	c149dc <lmask+0xc0f11c>
    4434:	4a50631e 	c2	0x50631e
    4438:	2b4f7f7b 	slti	t7,k0,32635
    443c:	58bdbadc 	0x58bdbadc
    4440:	89061451 	lwl	a2,5201(t0)
    4444:	64929442 	0x64929442
    4448:	10512460 	beq	v0,s1,d5cc <lmask+0x7d0c>
    444c:	f9bef372 	0xf9bef372
    4450:	c69ea4c5 	lwc1	$f30,-23355(s4)
    4454:	e3a00870 	swc0	$0,2160(sp)
    4458:	f0ddf6df 	0xf0ddf6df
    445c:	f5fcb96d 	0xf5fcb96d
    4460:	7f3c393b 	0x7f3c393b
    4464:	9ad4c1c8 	lwr	s4,-15928(s6)
    4468:	c5823f1c 	lwc1	$f2,16156(t4)
    446c:	13287e81 	beq	t9,t0,23e74 <lmask+0x1e5b4>
    4470:	72717d99 	0x72717d99
    4474:	82b9bfb8 	lb	t9,-16456(s5)
    4478:	f5bd482f 	0xf5bd482f
    447c:	1d060000 	0x1d060000
    4480:	0a0b001c 	j	82c0070 <lmask+0x82ba7b0>
    4484:	342c267d 	ori	t4,at,0x267d
    4488:	4497533b 	0x4497533b
    448c:	5373a666 	0x5373a666
    4490:	662c2d49 	0x662c2d49
    4494:	466e7b77 	c1	0x6e7b77
    4498:	ffc5b5e3 	0xffc5b5e3
    449c:	3e143a00 	0x3e143a00
    44a0:	21491020 	addi	t1,t2,4128
    44a4:	1b0022cb 	blez	t8,cfd4 <lmask+0x7714>
    44a8:	b044da55 	0xb044da55
    44ac:	8dbc6d1c 	lw	gp,27932(t5)
    44b0:	a8ac6acc 	swl	t4,27340(a1)
    44b4:	5b86c6ef 	0x5b86c6ef
    44b8:	cccb5f37 	lwc3	$11,24375(a2)
    44bc:	386759d8 	xori	a3,v1,0x59d8
    44c0:	bebcf897 	0xbebcf897
    44c4:	47121947 	c1	0x1121947
    44c8:	b6c5ddaa 	0xb6c5ddaa
    44cc:	bdbb83a9 	0xbdbb83a9
    44d0:	f2beb6aa 	0xf2beb6aa
    44d4:	743e3c23 	jalx	f8f08c <lmask+0xf897cc>
    44d8:	0b0b0805 	j	c2c2014 <lmask+0xc2bc754>
    44dc:	362e3e40 	ori	t6,s1,0x3e40
    44e0:	376c5ea0 	ori	t4,k1,0x5ea0
    44e4:	8c9e6f5d 	lw	s8,28509(a0)
    44e8:	8b7d8b28 	lwl	sp,-29912(k1)
    44ec:	1c1f4a9e 	0x1c1f4a9e
    44f0:	901ec7ff 	lbu	s8,-14337(zero)
    44f4:	e1ce8ccc 	swc0	$14,-29492(t6)
    44f8:	b4caf15c 	0xb4caf15c
    44fc:	1a5d4526 	0x1a5d4526
    4500:	0038ff51 	0x38ff51
    4504:	b7dbc34b 	0xb7dbc34b
    4508:	0094d0d1 	0x94d0d1
    450c:	dad6e27c 	0xdad6e27c
    4510:	badc9e4a 	swr	gp,-25014(s6)
    4514:	7e84634e 	0x7e84634e
    4518:	3e635276 	0x3e635276
    451c:	918b6f3a 	lbu	t3,28474(t4)
    4520:	321b659b 	andi	k1,s0,0x659b
    4524:	b0a0beb4 	0xb0a0beb4
    4528:	7685ab9a 	jalx	a16ae68 <lmask+0xa1655a8>
    452c:	b4a5816b 	0xb4a5816b
    4530:	410a0000 	0x410a0000
    4534:	3f35042b 	0x3f35042b
    4538:	1566c997 	bne	t3,a2,ffff6b98 <lmask+0xffff12d8>
    453c:	45a35bb8 	0x45a35bb8
    4540:	9852333d 	lwr	s2,13117(v0)
    4544:	6537113a 	0x6537113a
    4548:	a0a67288 	sb	a2,29320(a1)
    454c:	d3b4aac6 	0xd3b4aac6
    4550:	65b4e4f9 	0x65b4e4f9
    4554:	af20455b 	sw	zero,17755(t9)
    4558:	340f0091 	ori	t7,zero,0x91
    455c:	cf3875db 	lwc3	$24,30171(t9)
    4560:	7e4e0823 	0x7e4e0823
    4564:	71a8d6c9 	0x71a8d6c9
    4568:	d5c6abc0 	0xd5c6abc0
    456c:	c14792b5 	lwc0	$7,-27979(t2)
    4570:	71422f55 	0x71422f55
    4574:	245c6856 	addiu	gp,v0,26710
    4578:	4d423c28 	0x4d423c28
    457c:	00318fa4 	0x318fa4
    4580:	a8616238 	swl	at,25144(v1)
    4584:	63615e8d 	0x63615e8d
    4588:	5e6f3106 	0x5e6f3106
    458c:	0706261d 	0x706261d
    4590:	0425052b 	0x425052b
    4594:	e9cb40ae 	swc2	$11,16558(t6)
    4598:	68c1d1e1 	0x68c1d1e1
    459c:	b8267b2c 	swr	a2,31532(at)
    45a0:	0080888c 	syscall	0x20222
    45a4:	a1a8e6e8 	sb	t0,-6424(t5)
    45a8:	967e1c4f 	lhu	s8,7247(s3)
    45ac:	d2b01826 	0xd2b01826
    45b0:	39473b24 	xori	a3,t2,0x3b24
    45b4:	003cb664 	0x3cb664
    45b8:	29eaa37e 	slti	t2,t7,-23682
    45bc:	034d260c 	syscall	0xd3498
    45c0:	0812aab2 	j	4aaac8 <lmask+0x4a5208>
    45c4:	9e9b8ec6 	0x9e9b8ec6
    45c8:	16778478 	bne	s3,s7,fffe57ac <lmask+0xfffdfeec>
    45cc:	4f170a95 	c3	0x1170a95
    45d0:	b8956637 	swr	s5,26167(a0)
    45d4:	404c2b17 	0x404c2b17
    45d8:	d2c08b89 	0xd2c08b89
    45dc:	9e301920 	0x9e301920
    45e0:	0e182520 	jal	8609480 <lmask+0x8603bc0>
    45e4:	07000000 	bltz	t8,45e8 <hana_bmp+0x3190>
    45e8:	19170029 	0x19170029
    45ec:	36422e92 	ori	v0,s2,0x2e92
    45f0:	3b841bdc 	xori	a0,gp,0x1bdc
    45f4:	bfe4c859 	0xbfe4c859
    45f8:	4d3d0097 	0x4d3d0097
    45fc:	a5ae58a1 	sh	t6,22689(t5)
    4600:	d0742c0b 	0xd0742c0b
    4604:	1c39c5ff 	0x1c39c5ff
    4608:	9b101f28 	lwr	s0,7976(t8)
    460c:	3e0000dd 	0x3e0000dd
    4610:	90840f93 	lbu	a0,3987(a0)
    4614:	bdc93c36 	0xbdc93c36
    4618:	39334328 	xori	s3,t1,0x4328
    461c:	14505578 	bne	v0,s0,19c00 <lmask+0x14340>
    4620:	90ba3f77 	lbu	k0,16247(a1)
    4624:	c3ce6214 	lwc0	$14,25108(s8)
    4628:	7996a2b2 	0x7996a2b2
    462c:	585844b1 	0x585844b1
    4630:	7f39bbb4 	0x7f39bbb4
    4634:	6176aa8b 	0x6176aa8b
    4638:	2d051300 	sltiu	a1,t0,4864
    463c:	04000000 	bltz	zero,4640 <hana_bmp+0x31e8>
    4640:	00001512 	0x1512
    4644:	000d6f70 	0xd6f70
    4648:	3072e09f 	andi	s2,v1,0xe09f
    464c:	7d56eeb0 	0x7d56eeb0
    4650:	b5863918 	0xb5863918
    4654:	3481e5b5 	ori	at,a0,0xe5b5
    4658:	00aafb91 	0xaafb91
    465c:	1280877c 	beqz	s4,fffe6450 <lmask+0xfffe0b90>
    4660:	008da3a8 	0x8da3a8
    4664:	2042126c 	addi	v0,v0,4716
    4668:	dfdeb194 	0xdfdeb194
    466c:	0c93a5ff 	jal	24e97fc <lmask+0x24e3f3c>
    4670:	ef90d1c7 	swc3	$16,-11833(gp)
    4674:	30ea414d 	andi	t2,a3,0x414d
    4678:	492cb5ad 	0x492cb5ad
    467c:	f3a8e0f4 	0xf3a8e0f4
    4680:	96989c6b 	lhu	t8,-25493(s4)
    4684:	aa916561 	swl	s1,25953(s4)
    4688:	53ac9351 	0x53ac9351
    468c:	74856662 	jalx	2159988 <lmask+0x21540c8>
    4690:	78972a29 	0x78972a29
    4694:	12040001 	beq	s0,a0,469c <hana_bmp+0x3244>
    4698:	00000000 	sll	zero,zero,0x0
    469c:	00040800 	sll	at,a0,0x0
    46a0:	2837819b 	slti	s7,at,-32357
    46a4:	ccc3b6a7 	lwc3	$3,-18777(a2)
    46a8:	5391ff6f 	0x5391ff6f
    46ac:	fb441969 	0xfb441969
    46b0:	d6934bbc 	0xd6934bbc
    46b4:	b98a00b0 	swr	t2,176(t4)
    46b8:	cda7c9a6 	lwc3	$7,-13914(t5)
    46bc:	76775e44 	jalx	9dd7910 <lmask+0x9dd2050>
    46c0:	cc6846be 	lwc3	$8,18110(v1)
    46c4:	ff711993 	0xff711993
    46c8:	65b2e1ba 	0x65b2e1ba
    46cc:	b0b48fbf 	0xb0b48fbf
    46d0:	cdbba445 	lwc3	$27,-23483(t5)
    46d4:	4c4ed692 	0x4c4ed692
    46d8:	f5d2ff46 	0xf5d2ff46
    46dc:	57989448 	0x57989448
    46e0:	70466f89 	0x70466f89
    46e4:	88443a32 	lwl	a0,14898(v0)
    46e8:	483f959b 	0x483f959b
    46ec:	431c271d 	c0	0x11c271d
    46f0:	02000000 	0x2000000
    46f4:	00000200 	sll	zero,zero,0x8
    46f8:	2700282f 	addiu	zero,t8,10287
    46fc:	2e7bb8ad 	sltiu	k1,s3,-18259
    4700:	c3cfc576 	lwc0	$15,-14986(s8)
    4704:	2b6dd133 	slti	t5,k1,-11981
    4708:	271e7547 	addiu	s8,t8,30023
    470c:	3564cf56 	ori	a0,t3,0xcf56
    4710:	42beabf4 	c0	0xbeabf4
    4714:	bd9eefe6 	0xbd9eefe6
    4718:	267de2b2 	addiu	sp,s3,-7502
    471c:	79ae327f 	0x79ae327f
    4720:	007df8b9 	0x7df8b9
    4724:	bfc05d3a 	0xbfc05d3a
    4728:	91678abb 	lbu	a3,-30021(t3)
    472c:	78491d1b 	0x78491d1b
    4730:	3841fcf8 	xori	at,v0,0xfcf8
    4734:	806966a9 	lb	t1,26281(v1)
    4738:	353f5b6d 	ori	ra,t1,0x5b6d
    473c:	5d4c4955 	0x5d4c4955
    4740:	45385559 	0x45385559
    4744:	617d453d 	0x617d453d
    4748:	3f2f1200 	0x3f2f1200
    474c:	0a000000 	j	8000000 <lmask+0x7ffa740>
    4750:	00007e2f 	0x7e2f
    4754:	10242119 	beq	at,a0,cbbc <lmask+0x72fc>
    4758:	7eac95c6 	0x7eac95c6
    475c:	bf661ec3 	0xbf661ec3
    4760:	ff3e2c2c 	0xff3e2c2c
    4764:	1c790b00 	0x1c790b00
    4768:	5307504b 	0x5307504b
    476c:	ffa7da96 	0xffa7da96
    4770:	d2ecb39a 	0xd2ecb39a
    4774:	cfdb6a15 	lwc3	$27,27157(s8)
    4778:	41750f44 	0x41750f44
    477c:	e2be84bf 	swc0	$30,-31553(s5)
    4780:	3f282c85 	0x3f282c85
    4784:	bf8c3659 	0xbf8c3659
    4788:	261e3f40 	addiu	s8,s0,16192
    478c:	75a47576 	jalx	691d5d8 <lmask+0x6917d18>
    4790:	daaf8d55 	0xdaaf8d55
    4794:	61523529 	0x61523529
    4798:	2b144d46 	slti	s4,t8,19782
    479c:	71744d3f 	0x71744d3f
    47a0:	442c250f 	0x442c250f
    47a4:	0a062423 	j	818908c <lmask+0x81837cc>
    47a8:	0e150000 	jal	8540000 <lmask+0x853a740>
    47ac:	b88a3036 	swr	t2,12342(a0)
    47b0:	2126227b 	addi	a2,t1,8827
    47b4:	ceaeff2b 	lwc3	$14,-213(s5)
    47b8:	52ed793e 	0x52ed793e
    47bc:	2438111d 	addiu	t8,at,4381
    47c0:	52108d51 	0x52108d51
    47c4:	252164dd 	addiu	at,t1,25821
    47c8:	c0b5e7ff 	lwc0	$21,-6145(a1)
    47cc:	d9d9dfe6 	0xd9d9dfe6
    47d0:	77524587 	jalx	d49161c <lmask+0xd48bd5c>
    47d4:	2b5cf0c7 	slti	gp,k0,-3897
    47d8:	4b5b2f5d 	c2	0x15b2f5d
    47dc:	3fbebc9b 	0x3fbebc9b
    47e0:	18412130 	0x18412130
    47e4:	3e215783 	0x3e215783
    47e8:	59a1dad5 	0x59a1dad5
    47ec:	825b5b2f 	lb	k1,23343(s2)
    47f0:	583f310c 	0x583f310c
    47f4:	2535695c 	addiu	s5,t1,26972
    47f8:	69356511 	0x69356511
    47fc:	1c06050b 	0x1c06050b
    4800:	2928111e 	slti	t0,t1,4382
    4804:	1918764c 	0x1918764c
    4808:	10291a28 	beq	at,t1,b0ac <lmask+0x57ec>
    480c:	149ba4d7 	bne	a0,k1,fffedb6c <lmask+0xfffe82ac>
    4810:	4624aeb8 	c1	0x24aeb8
    4814:	a1381f0a 	sb	t8,7946(t1)
    4818:	181f5e6e 	0x181f5e6e
    481c:	4031347f 	0x4031347f
    4820:	6686c5bb 	0x6686c5bb
    4824:	d492f8df 	0xd492f8df
    4828:	b5c8bbae 	0xb5c8bbae
    482c:	63357466 	0x63357466
    4830:	78934512 	0x78934512
    4834:	79631a67 	0x79631a67
    4838:	91410017 	lbu	at,23(t2)
    483c:	1e4b4817 	0x1e4b4817
    4840:	426852a9 	c0	0x6852a9
    4844:	d3b86d76 	0xd3b86d76
    4848:	1d2a4222 	0x1d2a4222
    484c:	19031426 	0x19031426
    4850:	485d393b 	0x485d393b
    4854:	293b0000 	slti	k1,t1,0
    4858:	00072c2b 	0x72c2b
    485c:	132c0b00 	beq	t9,t4,7460 <lmask+0x1ba0>
    4860:	422c001a 	c0	0x2c001a
    4864:	2b2336e0 	slti	v1,t9,14048
    4868:	a3ff002b 	sb	ra,43(ra)
    486c:	ffb08e72 	0xffb08e72
    4870:	080b0009 	j	2c0024 <lmask+0x2ba764>
    4874:	4e4b3f44 	c3	0x4b3f44
    4878:	516a7bbb 	0x516a7bbb
    487c:	a6f9ffff 	sh	t9,-1(s7)
    4880:	ebd4fffa 	swc2	$20,-6(s8)
    4884:	c1bb6c51 	lwc0	$27,27729(t5)
    4888:	6144abb5 	0x6144abb5
    488c:	00a35a84 	0xa35a84
    4890:	141d634e 	bne	zero,sp,1d5cc <lmask+0x17d0c>
    4894:	00344c79 	0x344c79
    4898:	083e7858 	j	f9e160 <lmask+0xf988a0>
    489c:	451693d4 	0x451693d4
    48a0:	dfb91c00 	0xdfb91c00
    48a4:	06091b0e 	0x6091b0e
    48a8:	2d698970 	sltiu	t1,t3,-30352
    48ac:	4c282309 	0x4c282309
    48b0:	07010007 	bgez	t8,48d0 <hana_bmp+0x3478>
    48b4:	24240610 	addiu	a0,at,1552
    48b8:	0000485e 	0x485e
    48bc:	07141e1d 	0x7141e1d
    48c0:	3d070004 	0x3d070004
    48c4:	12619275 	beq	s3,at,fffe929c <lmask+0xfffe39dc>
    48c8:	88302518 	lwl	s0,9496(at)
    48cc:	002e7263 	0x2e7263
    48d0:	322a2879 	andi	t2,s1,0x2879
    48d4:	0c619370 	jal	1864dc0 <lmask+0x185f500>
    48d8:	4db1b23c 	0x4db1b23c
    48dc:	72cd72c6 	0x72cd72c6
    48e0:	94785b05 	lhu	t8,23301(v1)
    48e4:	bec4679f 	0xbec4679f
    48e8:	59a44100 	0x59a44100
    48ec:	2e6f5219 	sltiu	t7,s3,21017
    48f0:	36690d92 	ori	t1,s3,0xd92
    48f4:	52821b00 	0x52821b00
    48f8:	00bde0bf 	0xbde0bf
    48fc:	1b00064c 	blez	t8,6230 <lmask+0x970>
    4900:	3a032b4d 	xori	v1,s0,0x2b4d
    4904:	969fa180 	lhu	ra,-24192(s4)
    4908:	45010c00 	bc1t	790c <lmask+0x204c>
    490c:	00021626 	0x21626
    4910:	12080000 	beq	s0,t0,4914 <hana_bmp+0x34bc>
    4914:	31093600 	andi	t1,t0,0x3600
    4918:	0a22251d 	j	8889474 <lmask+0x8883bb4>
    491c:	0000007e 	0x7e
    4920:	c65a5700 	lwc1	$f26,22272(s2)
    4924:	32000f2d 	andi	zero,s0,0xf2d
    4928:	3f3d234f 	0x3f3d234f
    492c:	0000000b 	0xb
    4930:	43301eb2 	c0	0x1301eb2
    4934:	b19092d9 	0xb19092d9
    4938:	eed0b89b 	swc3	$16,-18277(s6)
    493c:	6946ceeb 	0x6946ceeb
    4940:	e3e5c0ca 	swc0	$5,-16182(ra)
    4944:	a5c00485 	sh	zero,1157(t6)
    4948:	62093601 	0x62093601
    494c:	64b76338 	0x64b76338
    4950:	0344662b 	0x344662b
    4954:	a3e69947 	sb	a2,-26297(ra)
    4958:	13293c04 	beq	t9,t1,1396c <lmask+0xe0ac>
    495c:	244f768f 	addiu	t7,v0,30351
    4960:	ccad5a0c 	lwc3	$13,23052(a1)
    4964:	0400000b 	bltz	zero,4994 <hana_bmp+0x353c>
    4968:	1e2a0500 	0x1e2a0500
    496c:	00005028 	0x5028
    4970:	000f0000 	sll	zero,t7,0x0
    4974:	43121209 	c0	0x1121209
    4978:	007c2a4d 	break	0x7c,0xa9
    497c:	44013a00 	0x44013a00
    4980:	17140d52 	bne	t8,s4,7ecc <lmask+0x260c>
    4984:	00b46000 	0xb46000
    4988:	0804361e 	j	10d878 <lmask+0x107fb8>
    498c:	11ffc476 	beq	t7,ra,ffff5b68 <lmask+0xffff02a8>
    4990:	d2ddcce5 	0xd2ddcce5
    4994:	99628ffa 	lwr	v0,-28678(t3)
    4998:	be6ef2ef 	0xbe6ef2ef
    499c:	d7b8666b 	0xd7b8666b
    49a0:	86433e77 	lh	v1,15991(s2)
    49a4:	0005a480 	sll	s4,a1,0x12
    49a8:	42170019 	c0	0x170019
    49ac:	867fa0ab 	lh	ra,-24405(s3)
    49b0:	9c945a19 	0x9c945a19
    49b4:	34328c8c 	ori	s2,at,0x8c8c
    49b8:	a983c2d4 	swl	v1,-15660(t4)
    49bc:	b6480700 	0xb6480700
    49c0:	00000c0f 	0xc0f
    49c4:	00000000 	sll	zero,zero,0x0
    49c8:	3550001d 	ori	s0,t2,0x1d
    49cc:	261e352c 	addiu	s8,s0,13612
    49d0:	26000604 	addiu	zero,s0,1540
    49d4:	1d360b50 	0x1d360b50
    49d8:	50071711 	0x50071711
    49dc:	01212896 	0x1212896
    49e0:	a2000400 	sb	zero,1024(s0)
    49e4:	2054545a 	addi	s4,v0,21594
    49e8:	92a9a8b1 	lbu	t1,-22351(s5)
    49ec:	80bdb368 	lb	sp,-19608(a1)
    49f0:	00e1e3ea 	0xe1e3ea
    49f4:	1d00c2ec 	bgtz	t0,ffff55a8 <lmask+0xfffefce8>
    49f8:	6f53209a 	0x6f53209a
    49fc:	73c4003b 	0x73c4003b
    4a00:	320e0a46 	andi	t6,s0,0xa46
    4a04:	0b3128cf 	j	cc4a33c <lmask+0xcc44a7c>
    4a08:	e59a3433 	swc1	$f26,13363(t4)
    4a0c:	2c001151 	sltiu	zero,zero,4433
    4a10:	44722f27 	0x44722f27
    4a14:	96b4afbb 	lhu	s4,-20549(s5)
    4a18:	3b000007 	xori	zero,t8,0x7
    4a1c:	17262652 	bne	t9,a2,e368 <lmask+0x8aa8>
    4a20:	00044f63 	0x44f63
    4a24:	3c002c79 	lui	zero,0x2c79
    4a28:	99341e1f 	lwr	s4,7711(t1)
    4a2c:	00004a5f 	0x4a5f
    4a30:	05157633 	0x5157633
    4a34:	000c2537 	0xc2537
    4a38:	0f0a041f 	jal	c28107c <lmask+0xc27b7bc>
    4a3c:	1233420b 	beq	s1,s3,1526c <lmask+0xf9ac>
    4a40:	77a0cc3a 	jalx	e8330e8 <lmask+0xe82d828>
    4a44:	fed26700 	0xfed26700
    4a48:	00015337 	0x15337
    4a4c:	623fe4a0 	0x623fe4a0
    4a50:	c33a7e46 	lwc0	$26,32326(t9)
    4a54:	d90f621a 	0xd90f621a
    4a58:	5c3b3319 	0x5c3b3319
    4a5c:	2f1f5e5e 	sltiu	ra,t8,24158
    4a60:	829473b5 	lb	s4,29621(s4)
    4a64:	d1554d44 	0xd1554d44
    4a68:	00052c88 	0x52c88
    4a6c:	98cf95a0 	lwr	t7,-27232(a2)
    4a70:	aa977800 	swl	s7,30720(s4)
    4a74:	0605063a 	0x605063a
    4a78:	4f5f0003 	c3	0x15f0003
    4a7c:	6f553e83 	0x6f553e83
    4a80:	042d3847 	0x42d3847
    4a84:	1c85622a 	0x1c85622a
    4a88:	2a280abb 	slti	t0,s1,2747
    4a8c:	f88d0205 	0xf88d0205
    4a90:	2a21768b 	slti	at,s1,30347
    4a94:	443f3300 	0x443f3300
    4a98:	3c1b4a8b 	lui	k1,0x4a8b
    4a9c:	a44c64f6 	sh	t4,25846(v0)
    4aa0:	71000000 	0x71000000
    4aa4:	336c443e 	andi	t4,k1,0x443e
    4aa8:	d5c324aa 	0xd5c324aa
    4aac:	f88a840d 	0xf88a840d
    4ab0:	0278653e 	0x278653e
    4ab4:	67352922 	0x67352922
    4ab8:	4a38005a 	c2	0x38005a
    4abc:	6e8ec65a 	0x6e8ec65a
    4ac0:	00152d14 	0x152d14
    4ac4:	00150014 	0x150014
    4ac8:	10689ea0 	beq	v1,t0,fffec54c <lmask+0xfffe6c8c>
    4acc:	54000000 	0x54000000
    4ad0:	09305872 	j	4c161c8 <lmask+0x4c10908>
    4ad4:	453f665d 	0x453f665d
    4ad8:	0c7c821a 	jal	1f20868 <lmask+0x1f1afa8>
    4adc:	13048586 	beq	t8,a0,fffe60f8 <lmask+0xfffe0838>
    4ae0:	87703259 	lh	s0,12889(k1)
    4ae4:	7c81d442 	0x7c81d442
    4ae8:	07003461 	bltz	t8,11c70 <lmask+0xc3b0>
    4aec:	67d99217 	0x67d99217
    4af0:	7800025f 	0x7800025f
    4af4:	2956207a 	slti	s6,t2,8314
    4af8:	26307600 	addiu	s0,s1,30208
    4afc:	00201044 	0x201044
    4b00:	568eef00 	0x568eef00
    4b04:	4bc2a3b5 	c2	0x1c2a3b5
    4b08:	560c4271 	0x560c4271
    4b0c:	3ba5303a 	xori	a1,sp,0x303a
    4b10:	18282917 	0x18282917
    4b14:	1e975269 	0x1e975269
    4b18:	c20ec271 	lwc0	$14,-15759(s0)
    4b1c:	2a1d1f0d 	slti	sp,s0,7949
    4b20:	08374253 	j	dd094c <lmask+0xdcb08c>
    4b24:	82ae6c00 	lb	t6,27648(s5)
    4b28:	00000018 	mult	zero,zero
    4b2c:	444b3828 	0x444b3828
    4b30:	70052114 	0x70052114
    4b34:	899d302e 	lwl	sp,12334(t4)
    4b38:	a7caa2cd 	sh	t2,-23859(s8)
    4b3c:	b99d8768 	swr	sp,-30872(t4)
    4b40:	a92b1d10 	swl	t3,7440(t1)
    4b44:	4e744d5e 	c3	0x744d5e
    4b48:	410e1d2b 	0x410e1d2b
    4b4c:	1f8a0b27 	0x1f8a0b27
    4b50:	306f6234 	andi	t7,v1,0x6234
    4b54:	05221b48 	0x5221b48
    4b58:	252a460c 	addiu	t2,t1,17932
    4b5c:	2ead3b0f 	sltiu	t5,s5,15119
    4b60:	0e8a0b38 	jal	a282ce0 <lmask+0xa27d420>
    4b64:	727d787e 	0x727d787e
    4b68:	499f0f0e 	0x499f0f0e
    4b6c:	1645486c 	bne	s2,a1,16d20 <lmask+0x11460>
    4b70:	10386f38 	beq	at,t8,20854 <lmask+0x1af94>
    4b74:	d2b76e39 	0xd2b76e39
    4b78:	2700001d 	addiu	zero,t8,29
    4b7c:	26224e9c 	addiu	v0,s1,20124
    4b80:	a93e1a00 	swl	s8,6656(t1)
    4b84:	00051925 	0x51925
    4b88:	282c6a00 	slti	t4,at,27136
    4b8c:	3f48359d 	0x3f48359d
    4b90:	563500cd 	0x563500cd
    4b94:	f0d9c7fa 	0xf0d9c7fa
    4b98:	89889733 	lwl	t0,-26829(t4)
    4b9c:	1e001830 	bgtz	s0,ac60 <lmask+0x53a0>
    4ba0:	882a1a00 	lwl	t2,6656(at)
    4ba4:	00001a17 	0x1a17
    4ba8:	43177f9b 	c0	0x1177f9b
    4bac:	7314256e 	0x7314256e
    4bb0:	41955619 	0x41955619
    4bb4:	23474b4b 	addi	a3,k0,19275
    4bb8:	2c629111 	sltiu	v0,v1,-28399
    4bbc:	2f408062 	sltiu	zero,k0,-32670
    4bc0:	54655b00 	0x54655b00
    4bc4:	1c02323b 	0x1c02323b
    4bc8:	3f3a2c0d 	0x3f3a2c0d
    4bcc:	1b647d8c 	0x1b647d8c
    4bd0:	79521600 	0x79521600
    4bd4:	00101717 	0x101717
    4bd8:	093f4918 	j	4fd2460 <lmask+0x4fccba0>
    4bdc:	0d182c00 	jal	460b000 <lmask+0x4605740>
    4be0:	00102137 	0x102137
    4be4:	84e13e00 	lh	at,15872(a3)
    4be8:	1f0e1529 	0x1f0e1529
    4bec:	4919c9a8 	0x4919c9a8
    4bf0:	928afd9d 	lbu	t2,-611(s4)
    4bf4:	b6626d7b 	0xb6626d7b
    4bf8:	43005d30 	c0	0x1005d30
    4bfc:	17ac904b 	bne	sp,t4,fffe8d2c <lmask+0xfffe346c>
    4c00:	07013cd2 	bgez	t8,13f4c <lmask+0xe68c>
    4c04:	8c7c21a8 	lw	gp,8616(v1)
    4c08:	dbd1c147 	0xdbd1c147
    4c0c:	142e513c 	bne	at,t6,19100 <lmask+0x13840>
    4c10:	5d4f1e2d 	0x5d4f1e2d
    4c14:	6bb52258 	0x6bb52258
    4c18:	06006746 	bltz	s0,1e934 <lmask+0x19074>
    4c1c:	5315452b 	0x5315452b
    4c20:	212e4a36 	addi	t6,t1,18998
    4c24:	4e774700 	c3	0x774700
    4c28:	3471a725 	ori	s1,v1,0xa725
    4c2c:	5e75400f 	0x5e75400f
    4c30:	1c40680c 	bgtz	v0,1ec64 <lmask+0x193a4>
    4c34:	0c000121 	jal	484 <hana_jpg+0x484>
    4c38:	25010a1e 	addiu	at,t0,2590
    4c3c:	00004d72 	0x4d72
    4c40:	a800575d 	swl	zero,22365(zero)
    4c44:	00078aaa 	0x78aaa
    4c48:	b1be353b 	0xb1be353b
    4c4c:	46d1a33d 	c1	0xd1a33d
    4c50:	254d5008 	addiu	t5,t2,20488
    4c54:	2d660043 	sltiu	a2,t3,67
    4c58:	c6b68700 	lwc1	$f22,-30976(s5)
    4c5c:	9393a399 	lbu	s3,-23655(gp)
    4c60:	0cc5d8c3 	jal	317630c <lmask+0x3170a4c>
    4c64:	ba68302c 	swr	t0,12332(s3)
    4c68:	33405691 	andi	zero,k0,0x5691
    4c6c:	6939115d 	0x6939115d
    4c70:	1559003e 	bne	t2,t9,4d6c <hana_bmp+0x3914>
    4c74:	443e4414 	0x443e4414
    4c78:	512e0e31 	0x512e0e31
    4c7c:	0d2e241e 	jal	4b89078 <lmask+0x4b837b8>
    4c80:	31420a4a 	andi	v0,t2,0xa4a
    4c84:	6494c887 	0x6494c887
    4c88:	52365a99 	0x52365a99
    4c8c:	7d7b3200 	0x7d7b3200
    4c90:	05200e00 	bltz	t1,8494 <lmask+0x2bd4>
    4c94:	00190000 	sll	zero,t9,0x0
    4c98:	56256c00 	0x56256c00
    4c9c:	a6c0bc9a 	sh	zero,-17254(s6)
    4ca0:	9b8ea2d8 	lwr	t6,-23848(gp)
    4ca4:	6966a6ce 	0x6966a6ce
    4ca8:	e46f561c 	swc1	$f15,22044(v1)
    4cac:	24291a5c 	addiu	t1,at,6748
    4cb0:	290076cf 	slti	zero,t0,30415
    4cb4:	afb0a256 	sw	s0,-23978(sp)
    4cb8:	dc3a2d99 	0xdc3a2d99
    4cbc:	85cad7b5 	lh	t2,-10315(t6)
    4cc0:	0f33282c 	jal	ccca0b0 <lmask+0xccc47f0>
    4cc4:	22456840 	addi	a1,s2,26688
    4cc8:	5925152d 	0x5925152d
    4ccc:	003391c0 	0x3391c0
    4cd0:	e4202212 	swc1	$f0,8722(at)
    4cd4:	00005759 	0x5759
    4cd8:	45361800 	0x45361800
    4cdc:	00388bad 	0x388bad
    4ce0:	d4c07938 	0xd4c07938
    4ce4:	5a3a6158 	0x5a3a6158
    4ce8:	3d00234d 	0x3d00234d
    4cec:	2a03001e 	slti	v1,s0,30
    4cf0:	00001b0f 	0x1b0f
    4cf4:	00002b9d 	0x2b9d
    4cf8:	c8f7e383 	lwc2	$23,-7293(a3)
    4cfc:	54b4faff 	0x54b4faff
    4d00:	a6ec8b37 	sh	t4,-29897(s7)
    4d04:	0718121d 	0x718121d
    4d08:	091f33ae 	j	47cceb8 <lmask+0x47c75f8>
    4d0c:	a4a4deb7 	sh	a0,-8521(a1)
    4d10:	d0f22d17 	0xd0f22d17
    4d14:	081a9aa0 	j	6a6a80 <lmask+0x6a11c0>
    4d18:	8b004406 	lwl	zero,17414(t8)
    4d1c:	3d233162 	0x3d233162
    4d20:	0e231d18 	jal	88c7460 <lmask+0x88c1ba0>
    4d24:	4e000052 	c3	0x52
    4d28:	ffc66570 	0xffc66570
    4d2c:	baa73a41 	swr	a3,14913(s5)
    4d30:	bf8f4d1a 	0xbf8f4d1a
    4d34:	28131c15 	slti	s3,zero,7189
    4d38:	48c5a4cc 	0x48c5a4cc
    4d3c:	e4634e5a 	swc1	$f3,20058(v1)
    4d40:	362b1100 	ori	t3,s1,0x1100
    4d44:	054d230c 	0x54d230c
    4d48:	000e0000 	sll	zero,t6,0x0
    4d4c:	30720d33 	andi	s2,v1,0xd33
    4d50:	000b84c2 	srl	s0,t3,0x13
    4d54:	f4d3bec5 	0xf4d3bec5
    4d58:	e2cd72c7 	swc0	$13,29383(s6)
    4d5c:	c221200c 	lwc0	$1,8204(s1)
    4d60:	114a2c24 	beq	t2,t2,fdf4 <lmask+0xa534>
    4d64:	8fa9959f 	lw	t1,-27233(sp)
    4d68:	c478a5e7 	lwc1	$f24,-23065(v1)
    4d6c:	20211769 	addi	at,at,5993
    4d70:	65807500 	0x65807500
    4d74:	41ac7a4f 	0x41ac7a4f
    4d78:	6e00004c 	0x6e00004c
    4d7c:	20193f1f 	addi	t9,zero,16159
    4d80:	99e32400 	lwr	v1,9216(t7)
    4d84:	09439a61 	j	50e6984 <lmask+0x50e10c4>
    4d88:	df46c094 	0xdf46c094
    4d8c:	59002250 	0x59002250
    4d90:	1c375128 	0x1c375128
    4d94:	c2bac054 	lwc0	$26,-16300(s5)
    4d98:	5e869779 	0x5e869779
    4d9c:	65404b1b 	0x65404b1b
    4da0:	3c0e3c21 	lui	t6,0x3c21
    4da4:	14006855 	bnez	zero,1eefc <lmask+0x1963c>
    4da8:	46694f8e 	c1	0x694f8e
    4dac:	58d7c490 	0x58d7c490
    4db0:	bef6d96d 	0xbef6d96d
    4db4:	7d7cf300 	0x7d7cf300
    4db8:	2500082f 	addiu	zero,t0,2095
    4dbc:	36373a40 	ori	s7,s1,0x3a40
    4dc0:	75a5c8cb 	jalx	697232c <lmask+0x696ca6c>
    4dc4:	a2fad433 	sb	k0,-11213(s7)
    4dc8:	1b895147 	0x1b895147
    4dcc:	7b269d73 	0x7b269d73
    4dd0:	83a38500 	lb	v1,-31488(sp)
    4dd4:	60846c24 	0x60846c24
    4dd8:	a4ba7612 	sh	k0,30226(a1)
    4ddc:	0681b200 	bgez	s4,ffff15e0 <lmask+0xfffebd20>
    4de0:	c2a097d8 	lwc0	$0,-26664(s5)
    4de4:	94ffa500 	lhu	ra,-23296(a3)
    4de8:	1a4366ae 	0x1a4366ae
    4dec:	adb4b9cc 	sw	s4,-17972(t5)
    4df0:	5859dbdb 	0x5859dbdb
    4df4:	b04f240e 	0xb04f240e
    4df8:	100c2502 	beq	zero,t4,e204 <lmask+0x8944>
    4dfc:	36350000 	ori	s5,s1,0x0
    4e00:	3814539b 	xori	s4,zero,0x539b
    4e04:	dfe1cd9f 	0xdfe1cd9f
    4e08:	e74e99a1 	swc1	$f14,-26207(k0)
    4e0c:	ddd77a70 	0xddd77a70
    4e10:	9b003315 	lwr	zero,13077(t8)
    4e14:	1f3f1431 	0x1f3f1431
    4e18:	28042553 	slti	a0,zero,9555
    4e1c:	86c8ded0 	lh	t0,-8496(s6)
    4e20:	eece0c36 	swc3	$14,3126(s6)
    4e24:	cfc1b4ee 	lwc3	$1,-19218(s8)
    4e28:	6654933d 	0x6654933d
    4e2c:	b2ca95b8 	0xb2ca95b8
    4e30:	3d214d23 	0x3d214d23
    4e34:	235173ff 	addi	s1,k0,29695
    4e38:	559ab3dc 	0x559ab3dc
    4e3c:	e3f9ddff 	swc0	$25,-8705(ra)
    4e40:	5e000d42 	0x5e000d42
    4e44:	91c1c1d6 	lbu	at,-15914(t6)
    4e48:	efce440b 	swc3	$14,17419(s8)
    4e4c:	beccc4c4 	0xbeccc4c4
    4e50:	982f0026 	lwr	t7,38(at)
    4e54:	1f00001e 	bgtz	t8,4ed0 <hana_bmp+0x3a78>
    4e58:	00003800 	sll	a3,zero,0x0
    4e5c:	af7bcad9 	sw	k1,-13607(k1)
    4e60:	e9d5ce00 	swc2	$21,-12800(t6)
    4e64:	81fcbcdf 	lb	gp,-17185(t7)
    4e68:	de311600 	0xde311600
    4e6c:	00050029 	0x50029
    4e70:	652f3300 	0x652f3300
    4e74:	603f7b88 	0x603f7b88
    4e78:	efd6b8b8 	swc3	$22,-18248(s8)
    4e7c:	5214ffdf 	0x5214ffdf
    4e80:	edffbe9a 	swc3	$31,-16742(t7)
    4e84:	9c6135f1 	0x9c6135f1
    4e88:	e7ec0e3e 	swc1	$f12,3646(ra)
    4e8c:	2353805b 	addi	s3,k0,-32677
    4e90:	51ee7e2f 	0x51ee7e2f
    4e94:	7666caf6 	jalx	99b2bd8 <lmask+0x99ad318>
    4e98:	157f6c00 	bne	t3,ra,1fe9c <lmask+0x1a5dc>
    4e9c:	63965c5d 	0x63965c5d
    4ea0:	769b5343 	jalx	a6d4d0c <lmask+0xa6cf44c>
    4ea4:	f190d4d6 	0xf190d4d6
    4ea8:	a2191000 	sb	t9,4096(s0)
    4eac:	00161e00 	sll	v1,s6,0x18
    4eb0:	00080000 	sll	zero,t0,0x0
    4eb4:	3224766f 	andi	a0,s1,0x766f
    4eb8:	64efffa3 	0x64efffa3
    4ebc:	91afddc1 	lbu	t7,-8767(t5)
    4ec0:	fbd2b000 	0xfbd2b000
    4ec4:	00040500 	sll	zero,a0,0x14
    4ec8:	0e38562e 	jal	8e158b8 <lmask+0x8e0fff8>
    4ecc:	1626a547 	bne	s1,a2,fffee3ec <lmask+0xfffe8b2c>
    4ed0:	9c75a7b7 	0x9c75a7b7
    4ed4:	a207978d 	sb	a3,-26739(s0)
    4ed8:	c9e958a6 	lwc2	$9,22694(t7)
    4edc:	ffca9696 	0xffca9696
    4ee0:	f9bee9e7 	0xf9bee9e7
    4ee4:	004c756a 	0x4c756a
    4ee8:	379bf1be 	ori	k1,gp,0xf1be
    4eec:	945855d2 	lhu	t8,21970(v0)
    4ef0:	47c414e7 	c1	0x1c414e7
    4ef4:	e13d2a5d 	swc0	$29,10845(t1)
    4ef8:	4a65577f 	c2	0x65577f
    4efc:	2700b58d 	addiu	zero,t8,-19059
    4f00:	c7c2ff3b 	lwc1	$f2,-197(s8)
    4f04:	00000036 	0x36
    4f08:	1f000000 	bgtz	t8,4f0c <hana_bmp+0x3ab4>
    4f0c:	305f1c61 	andi	ra,v0,0x1c61
    4f10:	5c7282bc 	0x5c7282bc
    4f14:	29adb69d 	slti	t5,t5,-18787
    4f18:	95cbcbd4 	lhu	t3,-13356(t6)
    4f1c:	14290502 	bne	at,t1,6328 <lmask+0xa68>
    4f20:	17160d28 	bne	t8,s6,83c4 <lmask+0x2b04>
    4f24:	002d0788 	0x2d0788
    4f28:	a7b85f40 	sh	t8,24384(sp)
    4f2c:	7988a4c9 	0x7988a4c9
    4f30:	cdb2edb1 	lwc3	$18,-4687(t5)
    4f34:	541bb9d6 	0x541bb9d6
    4f38:	846d93bc 	lh	t5,-27716(v1)
    4f3c:	b8f68b25 	swr	s6,-29915(a3)
    4f40:	350ab17b 	ori	t2,t0,0xb17b
    4f44:	c7e177ab 	lwc1	$f1,30635(ra)
    4f48:	534549be 	0x534549be
    4f4c:	f4c0c45a 	0xf4c0c45a
    4f50:	190f3a6c 	0x190f3a6c
    4f54:	7f2c3750 	0x7f2c3750
    4f58:	b5a49860 	0xb5a49860
    4f5c:	a0e92400 	sb	t1,9216(a3)
    4f60:	00200000 	0x200000
    4f64:	00005653 	0x5653
    4f68:	6c66414a 	0x6c66414a
    4f6c:	202e39b8 	addi	t6,at,14776
    4f70:	c2d9a8c9 	lwc0	$25,-22327(s6)
    4f74:	91b02c1e 	lbu	s0,11294(t5)
    4f78:	061a2825 	0x61a2825
    4f7c:	18131d11 	0x18131d11
    4f80:	11203e00 	beqz	t1,14784 <lmask+0xeec4>
    4f84:	2548537b 	addiu	t0,t2,21371
    4f88:	2d9db6bb 	sltiu	sp,t4,-18757
    4f8c:	b3ce6fe6 	0xb3ce6fe6
    4f90:	c2da997d 	lwc0	$26,-26243(s6)
    4f94:	a4663ae4 	sh	a2,15076(v1)
    4f98:	f2350024 	0xf2350024
    4f9c:	536fffd0 	0x536fffd0
    4fa0:	3d000700 	0x3d000700
    4fa4:	4aa0b7e7 	c2	0xa0b7e7
    4fa8:	a34f4d50 	sb	t7,19792(k0)
    4fac:	50704100 	0x50704100
    4fb0:	660069d0 	0x660069d0
    4fb4:	220635b3 	addi	a2,s0,13747
    4fb8:	5e482b16 	0x5e482b16
    4fbc:	030c1b09 	0x30c1b09
    4fc0:	423b1b22 	c0	0x3b1b22
    4fc4:	255d6032 	addiu	sp,t2,24626
    4fc8:	1728bac2 	bne	t9,t0,ffff3ad4 <lmask+0xfffee214>
    4fcc:	4356e29d 	c0	0x156e29d
    4fd0:	742c210d 	jalx	b08434 <lmask+0xb02b74>
    4fd4:	00120006 	srlv	zero,s2,zero
    4fd8:	0b001b03 	j	c006c0c <lmask+0xc00134c>
    4fdc:	0020290e 	0x20290e
    4fe0:	04004b65 	bltz	zero,17d78 <lmask+0x124b8>
    4fe4:	b9a2a6a1 	swr	v0,-22879(t5)
    4fe8:	ffd78a86 	0xffd78a86
    4fec:	76632236 	jalx	98c88d8 <lmask+0x98c3018>
    4ff0:	3a50ff96 	xori	s0,s2,0xff96
    4ff4:	0a3e4400 	j	8f91000 <lmask+0x8f8b740>
    4ff8:	e400392f 	swc1	$f0,14639(zero)
    4ffc:	0d20276f 	jal	4809dbc <lmask+0x48044fc>
    5000:	85ce2640 	lh	t6,9792(t6)
    5004:	456c892f 	0x456c892f
    5008:	002b000e 	0x2b000e
    500c:	1e530502 	0x1e530502
    5010:	165dbe0f 	bne	s2,sp,ffff4850 <lmask+0xfffeef90>
    5014:	12090f00 	beq	s0,t1,8c18 <lmask+0x3358>
    5018:	00003b37 	0x3b37
    501c:	301b0c54 	andi	k1,zero,0xc54
    5020:	73120f00 	0x73120f00
    5024:	0fa62956 	jal	e98a558 <lmask+0xe984c98>
    5028:	36d16e30 	ori	s1,s6,0x6e30
    502c:	00030911 	0x30911
    5030:	00001400 	sll	v0,zero,0x10
    5034:	1f090f29 	0x1f090f29
    5038:	19081930 	0x19081930
    503c:	0000fae3 	0xfae3
    5040:	c3eca0ff 	lwc0	$12,-24321(ra)
    5044:	987d4f02 	lwr	sp,20226(v1)
    5048:	0fffd629 	jal	fff58a4 <lmask+0xffeffe4>
    504c:	e61e3358 	swc1	$f30,13144(s0)
    5050:	4503000f 	0x4503000f
    5054:	5b251c54 	0x5b251c54
    5058:	2d5c68ac 	sltiu	gp,t2,26796
    505c:	00384995 	0x384995
    5060:	75006727 	jalx	4019c9c <lmask+0x40143dc>
    5064:	001d2a0c 	syscall	0x74a8
    5068:	05101d00 	bltzal	t0,c46c <lmask+0x6bac>
    506c:	4d001620 	bc3f	a8f0 <lmask+0x5030>
    5070:	10000405 	beqz	zero,6088 <lmask+0x7c8>
    5074:	52694f00 	0x52694f00
    5078:	00005a63 	0x5a63
    507c:	1c0d566d 	0x1c0d566d
    5080:	4315c6b1 	c0	0x115c6b1
    5084:	a2660002 	sb	a2,2(s3)
    5088:	17050403 	bne	t8,a1,6098 <lmask+0x7d8>
    508c:	0f121e02 	jal	c487808 <lmask+0xc481f48>
    5090:	00354700 	0x354700
    5094:	14461429 	bne	v0,a2,a13c <lmask+0x487c>
    5098:	e5d5ffdf 	swc1	$f21,-33(t6)
    509c:	63ffd5b2 	0x63ffd5b2
    50a0:	7405abc2 	jalx	16af08 <lmask+0x165648>
    50a4:	aa287044 	swl	t0,28740(s1)
    50a8:	317a362f 	andi	k0,t3,0x362f
    50ac:	001b312e 	0x1b312e
    50b0:	2332373b 	addi	s2,t9,14139
    50b4:	3842002b 	xori	v0,v0,0x2b
    50b8:	77740042 	jalx	dd00108 <lmask+0xdcfa848>
    50bc:	52000518 	0x52000518
    50c0:	12180000 	beq	s0,t8,50c4 <hana_bmp+0x3c6c>
    50c4:	00520057 	0x520057
    50c8:	03080000 	0x3080000
    50cc:	000b6067 	0xb6067
    50d0:	170e0506 	bne	t8,t6,64ec <lmask+0xc2c>
    50d4:	0148030a 	0x148030a
    50d8:	494e618c 	0x494e618c
    50dc:	dae0606b 	0xdae0606b
    50e0:	53000004 	0x53000004
    50e4:	0013130e 	0x13130e
    50e8:	0e050035 	jal	81400d4 <lmask+0x813a814>
    50ec:	000b270b 	0xb270b
    50f0:	200b40ac 	addi	t3,zero,16556
    50f4:	5d2c1073 	0x5d2c1073
    50f8:	cbb33e13 	lwc2	$19,15891(sp)
    50fc:	b9a2d1ff 	swr	v0,-11777(t5)
    5100:	7eda8f86 	0x7eda8f86
    5104:	8ce04e00 	lw	zero,19968(a3)
    5108:	332e1a6a 	andi	t6,t9,0x1a6a
    510c:	761a2780 	jalx	8689e00 <lmask+0x8684540>
    5110:	00454600 	0x454600
    5114:	54280920 	0x54280920
    5118:	0000001f 	0x1f
    511c:	c4899111 	lwc1	$f9,-28399(a0)
    5120:	3b000000 	xori	zero,t8,0x0
    5124:	00000000 	sll	zero,zero,0x0
    5128:	5a52150a 	0x5a52150a
    512c:	130e082a 	beq	t8,t6,71d8 <lmask+0x1918>
    5130:	14274b4f 	bne	at,a3,17e70 <lmask+0x125b0>
    5134:	511f5bbf 	0x511f5bbf
    5138:	7d76100e 	0x7d76100e
    513c:	0004180c 	syscall	0x1060
    5140:	00190070 	0x190070
    5144:	b162b01f 	0xb162b01f
    5148:	0b432c18 	j	d0cb060 <lmask+0xd0c57a0>
    514c:	005529ef 	0x5529ef
    5150:	4222048c 	c0	0x22048c
    5154:	93a6b5c3 	lbu	a2,-19005(sp)
    5158:	b76f7860 	0xb76f7860
    515c:	dca85592 	0xdca85592
    5160:	c500311f 	lwc1	$f0,12575(t0)
    5164:	5ca84030 	0x5ca84030
    5168:	3f210523 	0x3f210523
    516c:	041d5531 	0x41d5531
    5170:	00000005 	0x5
    5174:	0c5d390a 	jal	174e428 <lmask+0x1748b68>
    5178:	000f0000 	sll	zero,t7,0x0
    517c:	00000000 	sll	zero,zero,0x0
    5180:	00005055 	0x5055
    5184:	00000013 	mtlo	zero
    5188:	281d2c16 	slti	sp,zero,11286
    518c:	19115b4e 	0x19115b4e
    5190:	63174f6c 	0x63174f6c
    5194:	62000600 	0x62000600
    5198:	00401113 	0x401113
    519c:	14b51ec6 	bne	a1,s5,ccb8 <lmask+0x73f8>
    51a0:	f4ff001b 	0xf4ff001b
    51a4:	2b1b6a10 	slti	k1,t8,27152
    51a8:	21d4ff3f 	addi	s4,t6,-193
    51ac:	235de677 	addi	sp,k0,-6537
    51b0:	bcf0b4b6 	0xbcf0b4b6
    51b4:	85c3d65b 	lh	v1,-10661(t6)
    51b8:	48c1b7d4 	0x48c1b7d4
    51bc:	cea50b45 	lwc3	$5,2885(s5)
    51c0:	441d4934 	0x441d4934
    51c4:	4200161b 	c0	0x161b
    51c8:	28616f68 	slti	at,v1,28520
    51cc:	690f1500 	0x690f1500
    51d0:	11483b35 	beq	t2,t0,13ea8 <lmask+0xe5e8>
    51d4:	16000000 	bnez	s0,51d8 <hana_bmp+0x3d80>
    51d8:	00000000 	sll	zero,zero,0x0
    51dc:	33270000 	andi	a3,t9,0x0
    51e0:	00152e0b 	0x152e0b
    51e4:	191f1208 	0x191f1208
    51e8:	9f456f3d 	0x9f456f3d
    51ec:	a46c0000 	sh	t4,0(v1)
    51f0:	020c134f 	0x20c134f
    51f4:	00092ba9 	0x92ba9
    51f8:	c765d4ff 	lwc1	$f5,-11009(k1)
    51fc:	ed090f67 	swc3	$9,3943(t0)
    5200:	540c163a 	0x540c163a
    5204:	b4131398 	0xb4131398
    5208:	84624ee4 	lh	v0,20196(v1)
    520c:	cfe0bbc8 	lwc3	$0,-17464(ra)
    5210:	d19310c2 	0xd19310c2
    5214:	bbffdff1 	swr	ra,-8207(ra)
    5218:	3b2d2b15 	xori	t5,t9,0x2b15
    521c:	252a3830 	addiu	t2,t1,14384
    5220:	2b000120 	slti	zero,t8,288
    5224:	15216e56 	bne	t1,at,20b80 <lmask+0x1b2c0>
    5228:	3e39091a 	0x3e39091a
    522c:	0d100026 	jal	4400098 <lmask+0x43fa7d8>
    5230:	25100000 	addiu	s0,t0,0
    5234:	00002223 	0x2223
    5238:	5a000000 	0x5a000000
    523c:	1c000028 	bgtz	zero,52e0 <out_v_samp_factor_get_sof>
    5240:	00006d59 	0x6d59
    5244:	2400001f 	addiu	zero,zero,31
    5248:	00000012 	mflo	zero
    524c:	4c38000a 	0x4c38000a
    5250:	1717f3ef 	bne	t8,s7,2210 <hana_bmp+0xdb8>
    5254:	bd9ee6e3 	0xbd9ee6e3
    5258:	a5e0bf04 	sh	zero,-16636(t7)
    525c:	4bac1026 	c2	0x1ac1026
    5260:	8d12d2ec 	lw	s2,-11540(t0)
    5264:	3bdecfb6 	xori	s8,s8,0xcfb6
    5268:	d7d3a1bc 	0xd7d3a1bc
    526c:	56d9e8d7 	0x56d9e8d7
    5270:	e8c87400 	swc2	$8,29696(a2)
    5274:	32112059 	andi	s1,s0,0x2059
    5278:	402a1700 	0x402a1700
    527c:	00000101 	0x101
    5280:	36000c0a 	ori	zero,s0,0xc0a
    5284:	28391000 	slti	t9,at,4096
    5288:	37353d36 	ori	s5,t9,0x3d36
    528c:	38120e10 	xori	s2,zero,0xe10
    5290:	12090000 	beq	s0,t1,5294 <out_unread_marker>

00005294 <out_unread_marker>:
    5294:	000000d8 	0xd8
    5298:	000000e0 	0xe0
    529c:	000000db 	0xdb
    52a0:	000000db 	0xdb
    52a4:	000000c0 	sll	zero,zero,0x3
    52a8:	000000c4 	0xc4
    52ac:	000000c4 	0xc4
    52b0:	000000c4 	0xc4
    52b4:	000000c4 	0xc4
    52b8:	000000da 	0xda

000052bc <out_index_get_sof>:
    52bc:	00000000 	sll	zero,zero,0x0
    52c0:	00000001 	0x1
    52c4:	00000002 	srl	zero,zero,0x0

000052c8 <out_id_get_sof>:
    52c8:	00000001 	0x1
    52cc:	00000002 	srl	zero,zero,0x0
    52d0:	00000003 	sra	zero,zero,0x0

000052d4 <out_h_samp_factor_get_sof>:
    52d4:	00000002 	srl	zero,zero,0x0
    52d8:	00000001 	0x1
    52dc:	00000001 	0x1

000052e0 <out_v_samp_factor_get_sof>:
    52e0:	00000002 	srl	zero,zero,0x0
    52e4:	00000001 	0x1
    52e8:	00000001 	0x1

000052ec <out_quant_tbl_no_get_sof>:
    52ec:	00000000 	sll	zero,zero,0x0
    52f0:	00000001 	0x1
    52f4:	00000001 	0x1

000052f8 <out_comp_id_get_sos>:
    52f8:	00000001 	0x1
    52fc:	00000002 	srl	zero,zero,0x0
    5300:	00000003 	sra	zero,zero,0x0

00005304 <out_dc_tbl_no_get_sos>:
    5304:	00000000 	sll	zero,zero,0x0
    5308:	00000001 	0x1
    530c:	00000001 	0x1

00005310 <out_ac_tbl_no_get_sos>:
    5310:	00000000 	sll	zero,zero,0x0
    5314:	00000001 	0x1
    5318:	00000001 	0x1

0000531c <out_length_get_dht>:
    531c:	0000001d 	0x1d
    5320:	000000b3 	0xb3
    5324:	0000001d 	0x1d
    5328:	000000b3 	0xb3

0000532c <out_index_get_dht>:
    532c:	00000000 	sll	zero,zero,0x0
    5330:	00000010 	mfhi	zero
    5334:	00000001 	0x1
    5338:	00000011 	mthi	zero

0000533c <out_count_get_dht>:
    533c:	0000000c 	syscall
    5340:	000000a2 	0xa2
    5344:	0000000c 	syscall
    5348:	000000a2 	0xa2

0000534c <izigzag_index>:
    534c:	00000000 	sll	zero,zero,0x0
    5350:	00000001 	0x1
    5354:	00000008 	jr	zero
    5358:	00000010 	mfhi	zero
    535c:	00000009 	jalr	zero,zero
    5360:	00000002 	srl	zero,zero,0x0
    5364:	00000003 	sra	zero,zero,0x0
    5368:	0000000a 	0xa
    536c:	00000011 	mthi	zero
    5370:	00000018 	mult	zero,zero
    5374:	00000020 	add	zero,zero,zero
    5378:	00000019 	multu	zero,zero
    537c:	00000012 	mflo	zero
    5380:	0000000b 	0xb
    5384:	00000004 	sllv	zero,zero,zero
    5388:	00000005 	0x5
    538c:	0000000c 	syscall
    5390:	00000013 	mtlo	zero
    5394:	0000001a 	div	zero,zero,zero
    5398:	00000021 	addu	zero,zero,zero
    539c:	00000028 	0x28
    53a0:	00000030 	0x30
    53a4:	00000029 	0x29
    53a8:	00000022 	neg	zero,zero
    53ac:	0000001b 	divu	zero,zero,zero
    53b0:	00000014 	0x14
    53b4:	0000000d 	break
    53b8:	00000006 	srlv	zero,zero,zero
    53bc:	00000007 	srav	zero,zero,zero
    53c0:	0000000e 	0xe
    53c4:	00000015 	0x15
    53c8:	0000001c 	0x1c
    53cc:	00000023 	negu	zero,zero
    53d0:	0000002a 	slt	zero,zero,zero
    53d4:	00000031 	0x31
    53d8:	00000038 	0x38
    53dc:	00000039 	0x39
    53e0:	00000032 	0x32
    53e4:	0000002b 	sltu	zero,zero,zero
    53e8:	00000024 	and	zero,zero,zero
    53ec:	0000001d 	0x1d
    53f0:	00000016 	0x16
    53f4:	0000000f 	0xf
    53f8:	00000017 	0x17
    53fc:	0000001e 	0x1e
    5400:	00000025 	or	zero,zero,zero
    5404:	0000002c 	0x2c
    5408:	00000033 	0x33
    540c:	0000003a 	0x3a
    5410:	0000003b 	0x3b
    5414:	00000034 	0x34
    5418:	0000002d 	0x2d
    541c:	00000026 	xor	zero,zero,zero
    5420:	0000001f 	0x1f
    5424:	00000027 	nor	zero,zero,zero
    5428:	0000002e 	0x2e
    542c:	00000035 	0x35
    5430:	0000003c 	0x3c
    5434:	0000003d 	0x3d
    5438:	00000036 	0x36
    543c:	0000002f 	0x2f
    5440:	00000037 	0x37
    5444:	0000003e 	0x3e
    5448:	0000003f 	0x3f
    544c:	4e6f7420 	c3	0x6f7420
    5450:	4a706567 	c2	0x706567
    5454:	2046696c 	addi	a2,v0,26988
    5458:	65210000 	0x65210000
    545c:	6c656e67 	0x6c656e67
    5460:	74682020 	jalx	1a08080 <lmask+0x1a027c0>
    5464:	20202020 	addi	zero,at,8224
    5468:	2020203d 	addi	zero,at,8253
    546c:	2025640a 	addi	a1,at,25610
    5470:	00000000 	sll	zero,zero,0x0
    5474:	64617461 	0x64617461
    5478:	5f707265 	0x5f707265
    547c:	63697369 	0x63697369
    5480:	6f6e203d 	0x6f6e203d
    5484:	2025640a 	addi	a1,at,25610
    5488:	00000000 	sll	zero,zero,0x0
    548c:	696d6167 	0x696d6167
    5490:	655f6865 	0x655f6865
    5494:	69676874 	0x69676874
    5498:	2020203d 	addi	zero,at,8253
    549c:	2025640a 	addi	a1,at,25610
    54a0:	00000000 	sll	zero,zero,0x0
    54a4:	696d6167 	0x696d6167
    54a8:	655f7769 	0x655f7769
    54ac:	64746820 	0x64746820
    54b0:	2020203d 	addi	zero,at,8253
    54b4:	2025640a 	addi	a1,at,25610
    54b8:	00000000 	sll	zero,zero,0x0
    54bc:	6e756d5f 	0x6e756d5f
    54c0:	636f6d70 	0x636f6d70
    54c4:	6f6e656e 	0x6f6e656e
    54c8:	7473203d 	jalx	1cc80f4 <lmask+0x1cc2834>
    54cc:	2025640a 	addi	a1,at,25610
    54d0:	00000000 	sll	zero,zero,0x0
    54d4:	20696e64 	addi	t1,v1,28260
    54d8:	65782020 	0x65782020
    54dc:	20202020 	addi	zero,at,8224
    54e0:	2020203d 	addi	zero,at,8253
    54e4:	2025640a 	addi	a1,at,25610
    54e8:	00000000 	sll	zero,zero,0x0
    54ec:	20696420 	addi	t1,v1,25632
    54f0:	20202020 	addi	zero,at,8224
    54f4:	20202020 	addi	zero,at,8224
    54f8:	2020203d 	addi	zero,at,8253
    54fc:	2025640a 	addi	a1,at,25610
    5500:	00000000 	sll	zero,zero,0x0
    5504:	20685f73 	addi	t0,v1,24435
    5508:	616d705f 	0x616d705f
    550c:	66616374 	0x66616374
    5510:	6f72203d 	0x6f72203d
    5514:	2025640a 	addi	a1,at,25610
    5518:	00000000 	sll	zero,zero,0x0
    551c:	20765f73 	addi	s6,v1,24435
    5520:	616d705f 	0x616d705f
    5524:	66616374 	0x66616374
    5528:	6f72203d 	0x6f72203d
    552c:	2025640a 	addi	a1,at,25610
    5530:	00000000 	sll	zero,zero,0x0
    5534:	20717561 	addi	s1,v1,30049
    5538:	6e745f74 	0x6e745f74
    553c:	626c5f6e 	0x626c5f6e
    5540:	6f20203d 	0x6f20203d
    5544:	2025640a 	addi	a1,at,25610
    5548:	0a000000 	j	8000000 <lmask+0x7ffa740>
    554c:	0a53616d 	j	94d85b4 <lmask+0x94d2cf4>
    5550:	706c696e 	0x706c696e
    5554:	67204661 	0x67204661
    5558:	63746f72 	0x63746f72
    555c:	20697320 	addi	t1,v1,29472
    5560:	343a313a 	ori	k0,at,0x313a
    5564:	31000000 	andi	zero,t0,0x0
    5568:	0a53616d 	j	94d85b4 <lmask+0x94d2cf4>
    556c:	706c696e 	0x706c696e
    5570:	67204661 	0x67204661
    5574:	63746f72 	0x63746f72
    5578:	20697320 	addi	t1,v1,29472
    557c:	313a313a 	andi	k0,t1,0x313a
    5580:	31000000 	andi	zero,t0,0x0
    5584:	206c656e 	addi	t4,v1,25966
    5588:	67746820 	0x67746820
    558c:	3d202564 	0x3d202564
    5590:	0a000000 	j	8000000 <lmask+0x7ffa740>
    5594:	206e756d 	addi	t6,v1,30061
    5598:	5f636f6d 	0x5f636f6d
    559c:	70203d20 	0x70203d20
    55a0:	25640a00 	addiu	a0,t3,2560
    55a4:	42616420 	c0	0x616420
    55a8:	436f6d70 	c0	0x16f6d70
    55ac:	6f6e656e 	0x6f6e656e
    55b0:	74204944 	jalx	812510 <lmask+0x80cc50>
    55b4:	21000000 	addi	zero,t0,0
    55b8:	20636f6d 	addi	v1,v1,28525
    55bc:	705f6964 	0x705f6964
    55c0:	20202020 	addi	zero,at,8224
    55c4:	2020203d 	addi	zero,at,8253
    55c8:	2025640a 	addi	a1,at,25610
    55cc:	00000000 	sll	zero,zero,0x0
    55d0:	2064635f 	addi	a0,v1,25439
    55d4:	74626c5f 	jalx	189b17c <lmask+0x18958bc>
    55d8:	6e6f2020 	0x6e6f2020
    55dc:	2020203d 	addi	zero,at,8253
    55e0:	2025640a 	addi	a1,at,25610
    55e4:	00000000 	sll	zero,zero,0x0
    55e8:	2061635f 	addi	at,v1,25439
    55ec:	74626c5f 	jalx	189b17c <lmask+0x18958bc>
    55f0:	6e6f2020 	0x6e6f2020
    55f4:	2020203d 	addi	zero,at,8253
    55f8:	2025640a 	addi	a1,at,25610
    55fc:	00000000 	sll	zero,zero,0x0
    5600:	20696e64 	addi	t1,v1,28260
    5604:	6578203d 	0x6578203d
    5608:	20307825 	addi	s0,at,30757
    560c:	780a0000 	0x780a0000
    5610:	20636f75 	addi	v1,v1,28533
    5614:	6e74203d 	0x6e74203d
    5618:	2025640a 	addi	a1,at,25610
    561c:	00000000 	sll	zero,zero,0x0
    5620:	20707265 	addi	s0,v1,29285
    5624:	63203d20 	0x63203d20
    5628:	25640a00 	addiu	a0,t3,2560
    562c:	206e756d 	addi	t6,v1,30061
    5630:	20203d20 	addi	zero,at,15648
    5634:	25640a00 	addiu	a0,t3,2560
    5638:	0a6d6172 	j	9b585c8 <lmask+0x9b52d08>
    563c:	6b657220 	0x6b657220
    5640:	3d203078 	0x3d203078
    5644:	25780a00 	addiu	t8,t3,2560
    5648:	00001174 	0x1174
    564c:	00001098 	0x1098
    5650:	00001098 	0x1098
    5654:	00001098 	0x1098
    5658:	00001194 	0x1194
    565c:	00001098 	0x1098
    5660:	00001098 	0x1098
    5664:	00001098 	0x1098
    5668:	00001098 	0x1098
    566c:	00001098 	0x1098
    5670:	00001098 	0x1098
    5674:	00001098 	0x1098
    5678:	00001098 	0x1098
    567c:	00001098 	0x1098
    5680:	00001098 	0x1098
    5684:	00001098 	0x1098
    5688:	00001098 	0x1098
    568c:	00001098 	0x1098
    5690:	00001098 	0x1098
    5694:	00001098 	0x1098
    5698:	00001098 	0x1098
    569c:	00001098 	0x1098
    56a0:	00001098 	0x1098
    56a4:	00001098 	0x1098
    56a8:	00001164 	0x1164
    56ac:	000011b8 	0x11b8
    56b0:	00001184 	0x1184
    56b4:	000011a4 	0x11a4

000056b8 <zigzag_index>:
    56b8:	00000000 	sll	zero,zero,0x0
    56bc:	00000001 	0x1
    56c0:	00000005 	0x5
    56c4:	00000006 	srlv	zero,zero,zero
    56c8:	0000000e 	0xe
    56cc:	0000000f 	0xf
    56d0:	0000001b 	divu	zero,zero,zero
    56d4:	0000001c 	0x1c
    56d8:	00000002 	srl	zero,zero,0x0
    56dc:	00000004 	sllv	zero,zero,zero
    56e0:	00000007 	srav	zero,zero,zero
    56e4:	0000000d 	break
    56e8:	00000010 	mfhi	zero
    56ec:	0000001a 	div	zero,zero,zero
    56f0:	0000001d 	0x1d
    56f4:	0000002a 	slt	zero,zero,zero
    56f8:	00000003 	sra	zero,zero,0x0
    56fc:	00000008 	jr	zero
    5700:	0000000c 	syscall
    5704:	00000011 	mthi	zero
    5708:	00000019 	multu	zero,zero
    570c:	0000001e 	0x1e
    5710:	00000029 	0x29
    5714:	0000002b 	sltu	zero,zero,zero
    5718:	00000009 	jalr	zero,zero
    571c:	0000000b 	0xb
    5720:	00000012 	mflo	zero
    5724:	00000018 	mult	zero,zero
    5728:	0000001f 	0x1f
    572c:	00000028 	0x28
    5730:	0000002c 	0x2c
    5734:	00000035 	0x35
    5738:	0000000a 	0xa
    573c:	00000013 	mtlo	zero
    5740:	00000017 	0x17
    5744:	00000020 	add	zero,zero,zero
    5748:	00000027 	nor	zero,zero,zero
    574c:	0000002d 	0x2d
    5750:	00000034 	0x34
    5754:	00000036 	0x36
    5758:	00000014 	0x14
    575c:	00000016 	0x16
    5760:	00000021 	addu	zero,zero,zero
    5764:	00000026 	xor	zero,zero,zero
    5768:	0000002e 	0x2e
    576c:	00000033 	0x33
    5770:	00000037 	0x37
    5774:	0000003c 	0x3c
    5778:	00000015 	0x15
    577c:	00000022 	neg	zero,zero
    5780:	00000025 	or	zero,zero,zero
    5784:	0000002f 	0x2f
    5788:	00000032 	0x32
    578c:	00000038 	0x38
    5790:	0000003b 	0x3b
    5794:	0000003d 	0x3d
    5798:	00000023 	negu	zero,zero
    579c:	00000024 	and	zero,zero,zero
    57a0:	00000030 	0x30
    57a4:	00000031 	0x31
    57a8:	00000039 	0x39
    57ac:	0000003a 	0x3a
    57b0:	0000003e 	0x3e
    57b4:	0000003f 	0x3f
    57b8:	4465636f 	0x4465636f
    57bc:	64652031 	0x64652031
    57c0:	3a313a31 	xori	s1,s1,0x3a31
    57c4:	204e756d 	addi	t6,v0,30061
    57c8:	4d435520 	0x4d435520
    57cc:	3d202564 	0x3d202564
    57d0:	0a000000 	j	8000000 <lmask+0x7ffa740>
    57d4:	4465636f 	0x4465636f
    57d8:	64652034 	0x64652034
    57dc:	3a313a31 	xori	s1,s1,0x3a31
    57e0:	204e756d 	addi	t6,v0,30061
    57e4:	4d435520 	0x4d435520
    57e8:	3d202564 	0x3d202564
    57ec:	0a000000 	j	8000000 <lmask+0x7ffa740>

000057f0 <extend_mask>:
    57f0:	fffffffe 	0xfffffffe
    57f4:	fffffffc 	0xfffffffc
    57f8:	fffffff8 	0xfffffff8
    57fc:	fffffff0 	0xfffffff0
    5800:	ffffffe0 	0xffffffe0
    5804:	ffffffc0 	0xffffffc0
    5808:	ffffff80 	0xffffff80
    580c:	ffffff00 	0xffffff00
    5810:	fffffe00 	0xfffffe00
    5814:	fffffc00 	0xfffffc00
    5818:	fffff800 	0xfffff800
    581c:	fffff000 	0xfffff000
    5820:	ffffe000 	0xffffe000
    5824:	ffffc000 	0xffffc000
    5828:	ffff8000 	0xffff8000
    582c:	ffff0000 	0xffff0000
    5830:	fffe0000 	0xfffe0000
    5834:	fffc0000 	0xfffc0000
    5838:	fff80000 	0xfff80000
    583c:	fff00000 	0xfff00000

00005840 <bit_set_mask>:
    5840:	00000001 	0x1
    5844:	00000002 	srl	zero,zero,0x0
    5848:	00000004 	sllv	zero,zero,zero
    584c:	00000008 	jr	zero
    5850:	00000010 	mfhi	zero
    5854:	00000020 	add	zero,zero,zero
    5858:	00000040 	sll	zero,zero,0x1
    585c:	00000080 	sll	zero,zero,0x2
    5860:	00000100 	sll	zero,zero,0x4
    5864:	00000200 	sll	zero,zero,0x8
    5868:	00000400 	sll	zero,zero,0x10
    586c:	00000800 	sll	at,zero,0x0
    5870:	00001000 	sll	v0,zero,0x0
    5874:	00002000 	sll	a0,zero,0x0
    5878:	00004000 	sll	t0,zero,0x0
    587c:	00008000 	sll	s0,zero,0x0
    5880:	00010000 	sll	zero,at,0x0
    5884:	00020000 	sll	zero,v0,0x0
    5888:	00040000 	sll	zero,a0,0x0
    588c:	00080000 	sll	zero,t0,0x0
    5890:	00100000 	sll	zero,s0,0x0
    5894:	00200000 	0x200000
    5898:	00400000 	0x400000
    589c:	00800000 	0x800000
    58a0:	01000000 	0x1000000
    58a4:	02000000 	0x2000000
    58a8:	04000000 	bltz	zero,58ac <bit_set_mask+0x6c>
    58ac:	08000000 	j	0 <hana_jpg>
    58b0:	10000000 	beqz	zero,58b4 <bit_set_mask+0x74>
    58b4:	20000000 	addi	zero,zero,0
    58b8:	40000000 	mfc0	zero,c0_index
    58bc:	80000000 	lb	zero,0(zero)

000058c0 <lmask>:
    58c0:	00000001 	0x1
    58c4:	00000003 	sra	zero,zero,0x0
    58c8:	00000007 	srav	zero,zero,zero
    58cc:	0000000f 	0xf
    58d0:	0000001f 	0x1f
    58d4:	0000003f 	0x3f
    58d8:	0000007f 	0x7f
    58dc:	000000ff 	0xff
    58e0:	000001ff 	0x1ff
    58e4:	000003ff 	0x3ff
    58e8:	000007ff 	0x7ff
    58ec:	00000fff 	0xfff
    58f0:	00001fff 	0x1fff
    58f4:	00003fff 	0x3fff
    58f8:	00007fff 	0x7fff
    58fc:	0000ffff 	0xffff
    5900:	0001ffff 	0x1ffff
    5904:	0003ffff 	0x3ffff
    5908:	0007ffff 	0x7ffff
    590c:	000fffff 	0xfffff
    5910:	001fffff 	0x1fffff
    5914:	003fffff 	0x3fffff
    5918:	007fffff 	0x7fffff
    591c:	00ffffff 	0xffffff
    5920:	01ffffff 	0x1ffffff
    5924:	03ffffff 	0x3ffffff
    5928:	07ffffff 	0x7ffffff
    592c:	0fffffff 	jal	ffffffc <lmask+0xfffa73c>
    5930:	1fffffff 	0x1fffffff
    5934:	3fffffff 	0x3fffffff
    5938:	7fffffff 	0x7fffffff
    593c:	ffffffff 	0xffffffff
    5940:	556e616e 	0x556e616e
    5944:	74696369 	jalx	1a58da4 <lmask+0x1a534e4>
    5948:	70617465 	0x70617465
    594c:	64206d61 	0x64206d61
    5950:	726b6572 	0x726b6572
    5954:	20646574 	addi	a0,v1,25972
    5958:	65637465 	0x65637465
    595c:	642e0000 	0x642e0000
    5960:	48756666 	0x48756666
    5964:	6d616e20 	0x6d616e20
    5968:	72656164 	0x72656164
    596c:	20657272 	addi	a1,v1,29298
    5970:	6f720000 	0x6f720000
    5974:	25640a00 	addiu	a0,t3,2560
