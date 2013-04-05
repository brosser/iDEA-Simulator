
main.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <pgetc>:
 * pgetc() gets a character onto the stream but it checks to see
 * if there are any marker conflicts.
 */
static int
pgetc ()
{
       0:	27bdffe8 	addiu	sp,sp,-24
       4:	afbf0014 	sw	ra,20(sp)
       8:	afb00010 	sw	s0,16(sp)
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
       c:	8f830000 	lw	v1,0(gp)
      10:	00000000 	sll	zero,zero,0x0
      14:	90620000 	lbu	v0,0(v1)
      18:	24640001 	addiu	a0,v1,1
      1c:	240500ff 	addiu	a1,zero,255
      20:	14450009 	bne	v0,a1,48 <pgetc+0x48>
      24:	af840000 	sw	a0,0(gp)
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
      28:	90700001 	lbu	s0,1(v1)
      2c:	24840001 	addiu	a0,a0,1
      30:	12000005 	beqz	s0,48 <pgetc+0x48>
      34:	af840000 	sw	a0,0(gp)
	{			/* if next is not 0xff, then marker */
	  printf ("Unanticipated marker detected.\n");
      38:	3c040000 	lui	a0,0x0
      3c:	0c000000 	jal	0 <pgetc>
      40:	24840000 	addiu	a0,a0,0
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
      44:	02001021 	addu	v0,s0,zero
	{
	  return (MARKER_MARKER);
	}
    }
  return (temp);
}
      48:	8fbf0014 	lw	ra,20(sp)
      4c:	8fb00010 	lw	s0,16(sp)
      50:	03e00008 	jr	ra
      54:	27bd0018 	addiu	sp,sp,24

00000058 <read_byte>:
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
      58:	8f830014 	lw	v1,20(gp)
      5c:	00000000 	sll	zero,zero,0x0
      60:	90620000 	lbu	v0,0(v1)
      64:	24630001 	addiu	v1,v1,1
}
      68:	03e00008 	jr	ra
      6c:	af830014 	sw	v1,20(gp)

00000070 <read_word>:
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
      70:	8f830014 	lw	v1,20(gp)
      74:	00000000 	sll	zero,zero,0x0
      78:	80620000 	lb	v0,0(v1)
      7c:	00000000 	sll	zero,zero,0x0
      80:	00021200 	sll	v0,v0,0x8
  c |= *ReadBuf++;
      84:	90640001 	lbu	a0,1(v1)
      88:	00000000 	sll	zero,zero,0x0
      8c:	00441025 	or	v0,v0,a0
      90:	24630002 	addiu	v1,v1,2
      94:	af830014 	sw	v1,20(gp)

  return c;
}
      98:	00021400 	sll	v0,v0,0x10
      9c:	03e00008 	jr	ra
      a0:	00021403 	sra	v0,v0,0x10

000000a4 <first_marker>:

int
first_marker (void)
{
      a4:	27bdffe8 	addiu	sp,sp,-24
      a8:	afbf0014 	sw	ra,20(sp)
  int c1, c2;
  c1 = read_byte ();
      ac:	0c000000 	jal	0 <pgetc>
      b0:	afb00010 	sw	s0,16(sp)
  c2 = read_byte ();
      b4:	0c000000 	jal	0 <pgetc>
      b8:	00408021 	addu	s0,v0,zero

  if (c1 != 0xFF || c2 != M_SOI)
      bc:	240300ff 	addiu	v1,zero,255
      c0:	16030003 	bne	s0,v1,d0 <first_marker+0x2c>
      c4:	240300d8 	addiu	v1,zero,216
      c8:	1043000a 	beq	v0,v1,f4 <first_marker+0x50>
      cc:	240200d8 	addiu	v0,zero,216
    {
      main_result++;
      d0:	8f820000 	lw	v0,0(gp)
      d4:	00000000 	sll	zero,zero,0x0
      d8:	24420001 	addiu	v0,v0,1
      dc:	af820000 	sw	v0,0(gp)
      printf ("Not Jpeg File!\n");
      e0:	3c040000 	lui	a0,0x0
      e4:	0c000000 	jal	0 <pgetc>
      e8:	24840000 	addiu	a0,a0,0
      EXIT;
      ec:	0c000000 	jal	0 <pgetc>
      f0:	00002021 	addu	a0,zero,zero
    }

  return c2;
}
      f4:	8fbf0014 	lw	ra,20(sp)
      f8:	8fb00010 	lw	s0,16(sp)
      fc:	03e00008 	jr	ra
     100:	27bd0018 	addiu	sp,sp,24

00000104 <next_marker>:


int
next_marker (void)
{
     104:	27bdffe8 	addiu	sp,sp,-24
     108:	afbf0014 	sw	ra,20(sp)
     10c:	afb00010 	sw	s0,16(sp)

  for (;;)
    {
      c = read_byte ();

      while (c != 0xff)
     110:	241000ff 	addiu	s0,zero,255
{
  int c;

  for (;;)
    {
      c = read_byte ();
     114:	0c000000 	jal	0 <pgetc>
     118:	00000000 	sll	zero,zero,0x0

      while (c != 0xff)
     11c:	10500005 	beq	v0,s0,134 <next_marker+0x30>
     120:	00000000 	sll	zero,zero,0x0
	c = read_byte ();
     124:	0c000000 	jal	0 <pgetc>
     128:	00000000 	sll	zero,zero,0x0

  for (;;)
    {
      c = read_byte ();

      while (c != 0xff)
     12c:	1450fffd 	bne	v0,s0,124 <next_marker+0x20>
     130:	00000000 	sll	zero,zero,0x0
	c = read_byte ();

      do
	{
	  c = read_byte ();
     134:	0c000000 	jal	0 <pgetc>
     138:	00000000 	sll	zero,zero,0x0
	}
      while (c == 0xff);
     13c:	1050fffd 	beq	v0,s0,134 <next_marker+0x30>
     140:	00000000 	sll	zero,zero,0x0
      if (c != 0)
     144:	1040fff3 	beqz	v0,114 <next_marker+0x10>
     148:	00000000 	sll	zero,zero,0x0
	break;
    }
  return c;
}
     14c:	8fbf0014 	lw	ra,20(sp)
     150:	8fb00010 	lw	s0,16(sp)
     154:	03e00008 	jr	ra
     158:	27bd0018 	addiu	sp,sp,24

0000015c <get_sof>:
/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
{
     15c:	27bdffc0 	addiu	sp,sp,-64
     160:	afbf003c 	sw	ra,60(sp)
     164:	afbe0038 	sw	s8,56(sp)
     168:	afb70034 	sw	s7,52(sp)
     16c:	afb60030 	sw	s6,48(sp)
     170:	afb5002c 	sw	s5,44(sp)
     174:	afb40028 	sw	s4,40(sp)
     178:	afb30024 	sw	s3,36(sp)
     17c:	afb20020 	sw	s2,32(sp)
     180:	afb1001c 	sw	s1,28(sp)
  char *p_comp_info_id;
  char *p_comp_info_h_samp_factor;
  char *p_comp_info_v_samp_factor;
  char *p_comp_info_quant_tbl_no;

  length = read_word ();
     184:	0c000000 	jal	0 <pgetc>
     188:	afb00018 	sw	s0,24(sp)
  p_jinfo_data_precision = read_byte ();
     18c:	0c000000 	jal	0 <pgetc>
     190:	00408021 	addu	s0,v0,zero
  p_jinfo_image_height = read_word ();
     194:	0c000000 	jal	0 <pgetc>
     198:	a3820000 	sb	v0,0(gp)
  p_jinfo_image_width = read_word ();
     19c:	0c000000 	jal	0 <pgetc>
     1a0:	a7820000 	sh	v0,0(gp)
  p_jinfo_num_components = read_byte ();
     1a4:	0c000000 	jal	0 <pgetc>
     1a8:	a7820000 	sh	v0,0(gp)
     1ac:	a3820000 	sb	v0,0(gp)

  printf ("length         = %d\n", length);
     1b0:	3c040000 	lui	a0,0x0
     1b4:	24840000 	addiu	a0,a0,0
     1b8:	0c000000 	jal	0 <pgetc>
     1bc:	02002821 	addu	a1,s0,zero
  printf ("data_precision = %d\n", p_jinfo_data_precision);
     1c0:	3c040000 	lui	a0,0x0
     1c4:	83850000 	lb	a1,0(gp)
     1c8:	0c000000 	jal	0 <pgetc>
     1cc:	24840000 	addiu	a0,a0,0
  printf ("image_height   = %d\n", p_jinfo_image_height);
     1d0:	3c040000 	lui	a0,0x0
     1d4:	87850000 	lh	a1,0(gp)
     1d8:	0c000000 	jal	0 <pgetc>
     1dc:	24840000 	addiu	a0,a0,0
  printf ("image_width    = %d\n", p_jinfo_image_width);
     1e0:	3c040000 	lui	a0,0x0
     1e4:	87850000 	lh	a1,0(gp)
     1e8:	0c000000 	jal	0 <pgetc>
     1ec:	24840000 	addiu	a0,a0,0
  printf ("num_components = %d\n", p_jinfo_num_components);
     1f0:	3c040000 	lui	a0,0x0
     1f4:	83850000 	lb	a1,0(gp)
     1f8:	0c000000 	jal	0 <pgetc>
     1fc:	24840000 	addiu	a0,a0,0

  if (length != out_length_get_sof)
     200:	8f820000 	lw	v0,0(gp)
     204:	00000000 	sll	zero,zero,0x0
     208:	12020005 	beq	s0,v0,220 <get_sof+0xc4>
     20c:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     210:	8f820000 	lw	v0,0(gp)
     214:	00000000 	sll	zero,zero,0x0
     218:	24420001 	addiu	v0,v0,1
     21c:	af820000 	sw	v0,0(gp)
    }
  if (p_jinfo_data_precision != out_data_precision_get_sof)
     220:	83830000 	lb	v1,0(gp)
     224:	8f820000 	lw	v0,0(gp)
     228:	00000000 	sll	zero,zero,0x0
     22c:	10620005 	beq	v1,v0,244 <get_sof+0xe8>
     230:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     234:	8f820000 	lw	v0,0(gp)
     238:	00000000 	sll	zero,zero,0x0
     23c:	24420001 	addiu	v0,v0,1
     240:	af820000 	sw	v0,0(gp)
    }
  if (p_jinfo_image_height != out_p_jinfo_image_height_get_sof)
     244:	87830000 	lh	v1,0(gp)
     248:	8f820000 	lw	v0,0(gp)
     24c:	00000000 	sll	zero,zero,0x0
     250:	10620005 	beq	v1,v0,268 <get_sof+0x10c>
     254:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     258:	8f820000 	lw	v0,0(gp)
     25c:	00000000 	sll	zero,zero,0x0
     260:	24420001 	addiu	v0,v0,1
     264:	af820000 	sw	v0,0(gp)
    }
  if (p_jinfo_image_width != out_p_jinfo_image_width_get_sof)
     268:	87830000 	lh	v1,0(gp)
     26c:	8f820000 	lw	v0,0(gp)
     270:	00000000 	sll	zero,zero,0x0
     274:	10620005 	beq	v1,v0,28c <get_sof+0x130>
     278:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     27c:	8f820000 	lw	v0,0(gp)
     280:	00000000 	sll	zero,zero,0x0
     284:	24420001 	addiu	v0,v0,1
     288:	af820000 	sw	v0,0(gp)
    }
  if (p_jinfo_num_components != out_p_jinfo_num_components_get_sof)
     28c:	83830000 	lb	v1,0(gp)
     290:	8f820000 	lw	v0,0(gp)
     294:	00000000 	sll	zero,zero,0x0
     298:	10620005 	beq	v1,v0,2b0 <get_sof+0x154>
     29c:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     2a0:	8f820000 	lw	v0,0(gp)
     2a4:	00000000 	sll	zero,zero,0x0
     2a8:	24420001 	addiu	v0,v0,1
     2ac:	af820000 	sw	v0,0(gp)
  length -= 8;

  /* Omit error check */

  /* Check components */
  for (ci = 0; ci < p_jinfo_num_components; ci++)
     2b0:	83820000 	lb	v0,0(gp)
     2b4:	00000000 	sll	zero,zero,0x0
     2b8:	18400075 	blez	v0,490 <get_sof+0x334>
     2bc:	27910000 	addiu	s1,gp,0
     2c0:	27920000 	addiu	s2,gp,0
     2c4:	27930000 	addiu	s3,gp,0
     2c8:	27940000 	addiu	s4,gp,0
     2cc:	27950000 	addiu	s5,gp,0
     2d0:	00008021 	addu	s0,zero,zero
     2d4:	0000b021 	addu	s6,zero,zero
      p_comp_info_h_samp_factor = &p_jinfo_comps_info_h_samp_factor[ci];
      p_comp_info_v_samp_factor = &p_jinfo_comps_info_v_samp_factor[ci];
      p_comp_info_quant_tbl_no = &p_jinfo_comps_info_quant_tbl_no[ci];

      *p_comp_info_index = ci;
      *p_comp_info_id = read_byte ();
     2d8:	0c000000 	jal	0 <pgetc>
     2dc:	a2360000 	sb	s6,0(s1)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     2e0:	0240b821 	addu	s7,s2,zero
      p_comp_info_v_samp_factor = &p_jinfo_comps_info_v_samp_factor[ci];
      p_comp_info_quant_tbl_no = &p_jinfo_comps_info_quant_tbl_no[ci];

      *p_comp_info_index = ci;
      *p_comp_info_id = read_byte ();
      c = read_byte ();
     2e4:	0c000000 	jal	0 <pgetc>
     2e8:	a2420000 	sb	v0,0(s2)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     2ec:	0260f021 	addu	s8,s3,zero
      p_comp_info_quant_tbl_no = &p_jinfo_comps_info_quant_tbl_no[ci];

      *p_comp_info_index = ci;
      *p_comp_info_id = read_byte ();
      c = read_byte ();
      *p_comp_info_h_samp_factor = (c >> 4) & 15;
     2f0:	00021903 	sra	v1,v0,0x4
     2f4:	3063000f 	andi	v1,v1,0xf
     2f8:	a2630000 	sb	v1,0(s3)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     2fc:	afb40010 	sw	s4,16(sp)

      *p_comp_info_index = ci;
      *p_comp_info_id = read_byte ();
      c = read_byte ();
      *p_comp_info_h_samp_factor = (c >> 4) & 15;
      *p_comp_info_v_samp_factor = (c) & 15;
     300:	3042000f 	andi	v0,v0,0xf
      *p_comp_info_quant_tbl_no = read_byte ();
     304:	0c000000 	jal	0 <pgetc>
     308:	a2820000 	sb	v0,0(s4)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     30c:	afb50014 	sw	s5,20(sp)
      *p_comp_info_index = ci;
      *p_comp_info_id = read_byte ();
      c = read_byte ();
      *p_comp_info_h_samp_factor = (c >> 4) & 15;
      *p_comp_info_v_samp_factor = (c) & 15;
      *p_comp_info_quant_tbl_no = read_byte ();
     310:	a2a20000 	sb	v0,0(s5)

      printf (" index         = %d\n", *p_comp_info_index);
     314:	3c040000 	lui	a0,0x0
     318:	82250000 	lb	a1,0(s1)
     31c:	0c000000 	jal	0 <pgetc>
     320:	24840000 	addiu	a0,a0,0
      printf (" id            = %d\n", *p_comp_info_id);
     324:	3c040000 	lui	a0,0x0
     328:	82450000 	lb	a1,0(s2)
     32c:	0c000000 	jal	0 <pgetc>
     330:	24840000 	addiu	a0,a0,0
      printf (" h_samp_factor = %d\n", *p_comp_info_h_samp_factor);
     334:	3c040000 	lui	a0,0x0
     338:	82650000 	lb	a1,0(s3)
     33c:	0c000000 	jal	0 <pgetc>
     340:	24840000 	addiu	a0,a0,0
      printf (" v_samp_factor = %d\n", *p_comp_info_v_samp_factor);
     344:	3c040000 	lui	a0,0x0
     348:	82850000 	lb	a1,0(s4)
     34c:	0c000000 	jal	0 <pgetc>
     350:	24840000 	addiu	a0,a0,0
      printf (" quant_tbl_no  = %d\n\n", *p_comp_info_quant_tbl_no);
     354:	3c040000 	lui	a0,0x0
     358:	82a50000 	lb	a1,0(s5)
     35c:	0c000000 	jal	0 <pgetc>
     360:	24840000 	addiu	a0,a0,0

      if (*p_comp_info_index != out_index_get_sof[ci])
     364:	82230000 	lb	v1,0(s1)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     368:	3c040000 	lui	a0,0x0
     36c:	24840000 	addiu	a0,a0,0
     370:	00901021 	addu	v0,a0,s0
      printf (" id            = %d\n", *p_comp_info_id);
      printf (" h_samp_factor = %d\n", *p_comp_info_h_samp_factor);
      printf (" v_samp_factor = %d\n", *p_comp_info_v_samp_factor);
      printf (" quant_tbl_no  = %d\n\n", *p_comp_info_quant_tbl_no);

      if (*p_comp_info_index != out_index_get_sof[ci])
     374:	8c420000 	lw	v0,0(v0)
     378:	00000000 	sll	zero,zero,0x0
     37c:	10620005 	beq	v1,v0,394 <get_sof+0x238>
     380:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     384:	8f820000 	lw	v0,0(gp)
     388:	00000000 	sll	zero,zero,0x0
     38c:	24420001 	addiu	v0,v0,1
     390:	af820000 	sw	v0,0(gp)
	}
      if (*p_comp_info_id != out_id_get_sof[ci])
     394:	82e30000 	lb	v1,0(s7)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     398:	3c040000 	lui	a0,0x0
     39c:	24840000 	addiu	a0,a0,0
     3a0:	00901021 	addu	v0,a0,s0

      if (*p_comp_info_index != out_index_get_sof[ci])
	{
		main_result++;
	}
      if (*p_comp_info_id != out_id_get_sof[ci])
     3a4:	8c420000 	lw	v0,0(v0)
     3a8:	00000000 	sll	zero,zero,0x0
     3ac:	10620005 	beq	v1,v0,3c4 <get_sof+0x268>
     3b0:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     3b4:	8f820000 	lw	v0,0(gp)
     3b8:	00000000 	sll	zero,zero,0x0
     3bc:	24420001 	addiu	v0,v0,1
     3c0:	af820000 	sw	v0,0(gp)
	}
      if (*p_comp_info_h_samp_factor != out_h_samp_factor_get_sof[ci])
     3c4:	83c30000 	lb	v1,0(s8)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     3c8:	3c040000 	lui	a0,0x0
     3cc:	24840000 	addiu	a0,a0,0
     3d0:	00901021 	addu	v0,a0,s0
	}
      if (*p_comp_info_id != out_id_get_sof[ci])
	{
		main_result++;
	}
      if (*p_comp_info_h_samp_factor != out_h_samp_factor_get_sof[ci])
     3d4:	8c420000 	lw	v0,0(v0)
     3d8:	00000000 	sll	zero,zero,0x0
     3dc:	10620005 	beq	v1,v0,3f4 <get_sof+0x298>
     3e0:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     3e4:	8f820000 	lw	v0,0(gp)
     3e8:	00000000 	sll	zero,zero,0x0
     3ec:	24420001 	addiu	v0,v0,1
     3f0:	af820000 	sw	v0,0(gp)
	}
      if (*p_comp_info_v_samp_factor != out_v_samp_factor_get_sof[ci])
     3f4:	8fa20010 	lw	v0,16(sp)
     3f8:	00000000 	sll	zero,zero,0x0
     3fc:	80430000 	lb	v1,0(v0)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     400:	3c040000 	lui	a0,0x0
     404:	24840000 	addiu	a0,a0,0
     408:	00901021 	addu	v0,a0,s0
	}
      if (*p_comp_info_h_samp_factor != out_h_samp_factor_get_sof[ci])
	{
		main_result++;
	}
      if (*p_comp_info_v_samp_factor != out_v_samp_factor_get_sof[ci])
     40c:	8c420000 	lw	v0,0(v0)
     410:	00000000 	sll	zero,zero,0x0
     414:	10620005 	beq	v1,v0,42c <get_sof+0x2d0>
     418:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     41c:	8f820000 	lw	v0,0(gp)
     420:	00000000 	sll	zero,zero,0x0
     424:	24420001 	addiu	v0,v0,1
     428:	af820000 	sw	v0,0(gp)
	}
      if (*p_comp_info_quant_tbl_no != out_quant_tbl_no_get_sof[ci])
     42c:	8fa20014 	lw	v0,20(sp)
     430:	00000000 	sll	zero,zero,0x0
     434:	80430000 	lb	v1,0(v0)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     438:	3c040000 	lui	a0,0x0
     43c:	24840000 	addiu	a0,a0,0
     440:	00901021 	addu	v0,a0,s0
	}
      if (*p_comp_info_v_samp_factor != out_v_samp_factor_get_sof[ci])
	{
		main_result++;
	}
      if (*p_comp_info_quant_tbl_no != out_quant_tbl_no_get_sof[ci])
     444:	8c420000 	lw	v0,0(v0)
     448:	00000000 	sll	zero,zero,0x0
     44c:	10620005 	beq	v1,v0,464 <get_sof+0x308>
     450:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     454:	8f820000 	lw	v0,0(gp)
     458:	00000000 	sll	zero,zero,0x0
     45c:	24420001 	addiu	v0,v0,1
     460:	af820000 	sw	v0,0(gp)
  length -= 8;

  /* Omit error check */

  /* Check components */
  for (ci = 0; ci < p_jinfo_num_components; ci++)
     464:	26d60001 	addiu	s6,s6,1
     468:	26310001 	addiu	s1,s1,1
     46c:	26520001 	addiu	s2,s2,1
     470:	26730001 	addiu	s3,s3,1
     474:	26940001 	addiu	s4,s4,1
     478:	26b50001 	addiu	s5,s5,1
     47c:	83820000 	lb	v0,0(gp)
     480:	00000000 	sll	zero,zero,0x0
     484:	02c2102a 	slt	v0,s6,v0
     488:	1440ff93 	bnez	v0,2d8 <get_sof+0x17c>
     48c:	26100004 	addiu	s0,s0,4

  /*
   *  Determine Sampling Factor
   *  Only 1_1_1 and 4_1_1 are supported
   */
  if (p_jinfo_comps_info_h_samp_factor[0] == 2)
     490:	83830000 	lb	v1,0(gp)
     494:	24020002 	addiu	v0,zero,2
     498:	14620007 	bne	v1,v0,4b8 <get_sof+0x35c>
     49c:	00000000 	sll	zero,zero,0x0
    {
      p_jinfo_smp_fact = SF4_1_1;
     4a0:	af820000 	sw	v0,0(gp)
      printf ("\nSampling Factor is 4:1:1\n");
     4a4:	3c040000 	lui	a0,0x0
     4a8:	0c000000 	jal	0 <pgetc>
     4ac:	24840000 	addiu	a0,a0,0
     4b0:	08000132 	j	4c8 <get_sof+0x36c>
     4b4:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      p_jinfo_smp_fact = SF1_1_1;
     4b8:	af800000 	sw	zero,0(gp)
      printf ("\nSampling Factor is 1:1:1\n");
     4bc:	3c040000 	lui	a0,0x0
     4c0:	0c000000 	jal	0 <pgetc>
     4c4:	24840000 	addiu	a0,a0,0
    }
}
     4c8:	8fbf003c 	lw	ra,60(sp)
     4cc:	8fbe0038 	lw	s8,56(sp)
     4d0:	8fb70034 	lw	s7,52(sp)
     4d4:	8fb60030 	lw	s6,48(sp)
     4d8:	8fb5002c 	lw	s5,44(sp)
     4dc:	8fb40028 	lw	s4,40(sp)
     4e0:	8fb30024 	lw	s3,36(sp)
     4e4:	8fb20020 	lw	s2,32(sp)
     4e8:	8fb1001c 	lw	s1,28(sp)
     4ec:	8fb00018 	lw	s0,24(sp)
     4f0:	03e00008 	jr	ra
     4f4:	27bd0040 	addiu	sp,sp,64

000004f8 <get_sos>:


void
get_sos ()
{
     4f8:	27bdffb0 	addiu	sp,sp,-80
     4fc:	afbf004c 	sw	ra,76(sp)
     500:	afbe0048 	sw	s8,72(sp)
     504:	afb70044 	sw	s7,68(sp)
     508:	afb60040 	sw	s6,64(sp)
     50c:	afb5003c 	sw	s5,60(sp)
     510:	afb40038 	sw	s4,56(sp)
     514:	afb30034 	sw	s3,52(sp)
     518:	afb20030 	sw	s2,48(sp)
     51c:	afb1002c 	sw	s1,44(sp)
  int i, c, cc, ci, j;
  char *p_comp_info_id;
  char *p_comp_info_dc_tbl_no;
  char *p_comp_info_ac_tbl_no;

  length = read_word ();
     520:	0c000000 	jal	0 <pgetc>
     524:	afb00028 	sw	s0,40(sp)
  num_comp = read_byte ();
     528:	0c000000 	jal	0 <pgetc>
     52c:	00408021 	addu	s0,v0,zero
     530:	0040b821 	addu	s7,v0,zero

  printf (" length = %d\n", length);
     534:	3c040000 	lui	a0,0x0
     538:	24840000 	addiu	a0,a0,0
     53c:	0c000000 	jal	0 <pgetc>
     540:	02002821 	addu	a1,s0,zero
  printf (" num_comp = %d\n", num_comp);
     544:	3c040000 	lui	a0,0x0
     548:	24840000 	addiu	a0,a0,0
     54c:	0c000000 	jal	0 <pgetc>
     550:	02e02821 	addu	a1,s7,zero

  if (length != out_length_get_sos)
     554:	8f820000 	lw	v0,0(gp)
     558:	00000000 	sll	zero,zero,0x0
     55c:	12020005 	beq	s0,v0,574 <get_sos+0x7c>
     560:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     564:	8f820000 	lw	v0,0(gp)
     568:	00000000 	sll	zero,zero,0x0
     56c:	24420001 	addiu	v0,v0,1
     570:	af820000 	sw	v0,0(gp)
    }
  if (num_comp != out_num_comp_get_sos)
     574:	8f820000 	lw	v0,0(gp)
     578:	00000000 	sll	zero,zero,0x0
     57c:	12e20005 	beq	s7,v0,594 <get_sos+0x9c>
     580:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     584:	8f820000 	lw	v0,0(gp)
     588:	00000000 	sll	zero,zero,0x0
     58c:	24420001 	addiu	v0,v0,1
     590:	af820000 	sw	v0,0(gp)
    }

  /* Decode each component */
  for (i = 0; i < num_comp; i++)
     594:	1ae00077 	blez	s7,774 <get_sos+0x27c>
     598:	00009021 	addu	s2,zero,zero
      main_result++;
      printf ("Bad Component ID!\n");
      EXIT;

    id_found:
      *p_comp_info_dc_tbl_no = (c >> 4) & 15;
     59c:	27950000 	addiu	s5,gp,0
      *p_comp_info_ac_tbl_no = (c) & 15;
     5a0:	27960000 	addiu	s6,gp,0

      printf (" comp_id       = %d\n", cc);
     5a4:	3c1e0000 	lui	s8,0x0
     5a8:	27de0000 	addiu	s8,s8,0
      printf (" dc_tbl_no     = %d\n", *p_comp_info_dc_tbl_no);
     5ac:	3c020000 	lui	v0,0x0
     5b0:	24420000 	addiu	v0,v0,0
     5b4:	afa20010 	sw	v0,16(sp)
      printf (" ac_tbl_no     = %d\n", *p_comp_info_ac_tbl_no);
     5b8:	3c020000 	lui	v0,0x0
     5bc:	24420000 	addiu	v0,v0,0
     5c0:	afa20014 	sw	v0,20(sp)

      if (cc != out_comp_id_get_sos[i_get_sos])
     5c4:	3c020000 	lui	v0,0x0
     5c8:	24420000 	addiu	v0,v0,0
     5cc:	afa20018 	sw	v0,24(sp)
	{
		main_result++;
	}
      if (*p_comp_info_dc_tbl_no != out_dc_tbl_no_get_sos[i_get_sos])
     5d0:	3c020000 	lui	v0,0x0
     5d4:	24420000 	addiu	v0,v0,0
     5d8:	afa2001c 	sw	v0,28(sp)
	{
		main_result++;
	}
      if (*p_comp_info_ac_tbl_no != out_ac_tbl_no_get_sos[i_get_sos])
     5dc:	3c020000 	lui	v0,0x0
     5e0:	24420000 	addiu	v0,v0,0
     5e4:	afa20020 	sw	v0,32(sp)
    }

  /* Decode each component */
  for (i = 0; i < num_comp; i++)
    {
      cc = read_byte ();
     5e8:	0c000000 	jal	0 <pgetc>
     5ec:	00000000 	sll	zero,zero,0x0
      c = read_byte ();
     5f0:	0c000000 	jal	0 <pgetc>
     5f4:	00408821 	addu	s1,v0,zero

      for (ci = 0; ci < p_jinfo_num_components; ci++)
     5f8:	83850000 	lb	a1,0(gp)
     5fc:	00000000 	sll	zero,zero,0x0
     600:	18a00010 	blez	a1,644 <get_sos+0x14c>
     604:	00000000 	sll	zero,zero,0x0
	{
	  p_comp_info_id = &p_jinfo_comps_info_id[ci];
	  p_comp_info_dc_tbl_no = &p_jinfo_comps_info_dc_tbl_no[ci];
	  p_comp_info_ac_tbl_no = &p_jinfo_comps_info_ac_tbl_no[ci];

	  if (cc == *p_comp_info_id)
     608:	83830000 	lb	v1,0(gp)
     60c:	00000000 	sll	zero,zero,0x0
     610:	10710015 	beq	v1,s1,668 <get_sos+0x170>
     614:	00001821 	addu	v1,zero,zero
    }
}


void
get_sos ()
     618:	0800018d 	j	634 <get_sos+0x13c>
     61c:	27860000 	addiu	a2,gp,0
     620:	00c32021 	addu	a0,a2,v1
	{
	  p_comp_info_id = &p_jinfo_comps_info_id[ci];
	  p_comp_info_dc_tbl_no = &p_jinfo_comps_info_dc_tbl_no[ci];
	  p_comp_info_ac_tbl_no = &p_jinfo_comps_info_ac_tbl_no[ci];

	  if (cc == *p_comp_info_id)
     624:	80840000 	lb	a0,0(a0)
     628:	00000000 	sll	zero,zero,0x0
     62c:	1091000f 	beq	a0,s1,66c <get_sos+0x174>
     630:	00608021 	addu	s0,v1,zero
  for (i = 0; i < num_comp; i++)
    {
      cc = read_byte ();
      c = read_byte ();

      for (ci = 0; ci < p_jinfo_num_components; ci++)
     634:	24630001 	addiu	v1,v1,1
     638:	0065202a 	slt	a0,v1,a1
     63c:	1480fff8 	bnez	a0,620 <get_sos+0x128>
     640:	00000000 	sll	zero,zero,0x0
	  p_comp_info_ac_tbl_no = &p_jinfo_comps_info_ac_tbl_no[ci];

	  if (cc == *p_comp_info_id)
	    goto id_found;
	}
      main_result++;
     644:	8f820000 	lw	v0,0(gp)
     648:	00000000 	sll	zero,zero,0x0
     64c:	24420001 	addiu	v0,v0,1
     650:	af820000 	sw	v0,0(gp)
      printf ("Bad Component ID!\n");
     654:	3c040000 	lui	a0,0x0
     658:	0c000000 	jal	0 <pgetc>
     65c:	24840000 	addiu	a0,a0,0
      EXIT;
     660:	0c000000 	jal	0 <pgetc>
     664:	00002021 	addu	a0,zero,zero
      cc = read_byte ();
      c = read_byte ();

      for (ci = 0; ci < p_jinfo_num_components; ci++)
	{
	  p_comp_info_id = &p_jinfo_comps_info_id[ci];
     668:	00008021 	addu	s0,zero,zero
      main_result++;
      printf ("Bad Component ID!\n");
      EXIT;

    id_found:
      *p_comp_info_dc_tbl_no = (c >> 4) & 15;
     66c:	02b09821 	addu	s3,s5,s0
     670:	00021903 	sra	v1,v0,0x4
     674:	3063000f 	andi	v1,v1,0xf
     678:	a2630000 	sb	v1,0(s3)
      *p_comp_info_ac_tbl_no = (c) & 15;
     67c:	02d0a021 	addu	s4,s6,s0
     680:	3042000f 	andi	v0,v0,0xf
     684:	a2820000 	sb	v0,0(s4)

      printf (" comp_id       = %d\n", cc);
     688:	03c02021 	addu	a0,s8,zero
     68c:	0c000000 	jal	0 <pgetc>
     690:	02202821 	addu	a1,s1,zero
      printf (" dc_tbl_no     = %d\n", *p_comp_info_dc_tbl_no);
     694:	8fa40010 	lw	a0,16(sp)
     698:	82650000 	lb	a1,0(s3)
     69c:	0c000000 	jal	0 <pgetc>
     6a0:	00000000 	sll	zero,zero,0x0
      printf (" ac_tbl_no     = %d\n", *p_comp_info_ac_tbl_no);
     6a4:	8fa40014 	lw	a0,20(sp)
     6a8:	82850000 	lb	a1,0(s4)
     6ac:	0c000000 	jal	0 <pgetc>
     6b0:	00000000 	sll	zero,zero,0x0

      if (cc != out_comp_id_get_sos[i_get_sos])
     6b4:	8f820000 	lw	v0,0(gp)
     6b8:	00000000 	sll	zero,zero,0x0
     6bc:	00021880 	sll	v1,v0,0x2
     6c0:	8fa40018 	lw	a0,24(sp)
     6c4:	00000000 	sll	zero,zero,0x0
     6c8:	00641821 	addu	v1,v1,a0
     6cc:	8c630000 	lw	v1,0(v1)
     6d0:	00000000 	sll	zero,zero,0x0
     6d4:	10710006 	beq	v1,s1,6f0 <get_sos+0x1f8>
     6d8:	02b01821 	addu	v1,s5,s0
	{
		main_result++;
     6dc:	8f830000 	lw	v1,0(gp)
     6e0:	00000000 	sll	zero,zero,0x0
     6e4:	24630001 	addiu	v1,v1,1
     6e8:	af830000 	sw	v1,0(gp)
	}
      if (*p_comp_info_dc_tbl_no != out_dc_tbl_no_get_sos[i_get_sos])
     6ec:	02b01821 	addu	v1,s5,s0
     6f0:	80640000 	lb	a0,0(v1)
     6f4:	00021880 	sll	v1,v0,0x2
     6f8:	8fa5001c 	lw	a1,28(sp)
     6fc:	00000000 	sll	zero,zero,0x0
     700:	00651821 	addu	v1,v1,a1
     704:	8c630000 	lw	v1,0(v1)
     708:	00000000 	sll	zero,zero,0x0
     70c:	10830005 	beq	a0,v1,724 <get_sos+0x22c>
     710:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     714:	8f830000 	lw	v1,0(gp)
     718:	00000000 	sll	zero,zero,0x0
     71c:	24630001 	addiu	v1,v1,1
     720:	af830000 	sw	v1,0(gp)
	}
      if (*p_comp_info_ac_tbl_no != out_ac_tbl_no_get_sos[i_get_sos])
     724:	02d08021 	addu	s0,s6,s0
     728:	82040000 	lb	a0,0(s0)
     72c:	00021880 	sll	v1,v0,0x2
     730:	8fa50020 	lw	a1,32(sp)
     734:	00000000 	sll	zero,zero,0x0
     738:	00651821 	addu	v1,v1,a1
     73c:	8c630000 	lw	v1,0(v1)
     740:	00000000 	sll	zero,zero,0x0
     744:	10830005 	beq	a0,v1,75c <get_sos+0x264>
     748:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     74c:	8f830000 	lw	v1,0(gp)
     750:	00000000 	sll	zero,zero,0x0
     754:	24630001 	addiu	v1,v1,1
     758:	af830000 	sw	v1,0(gp)
	}
      i_get_sos++;
     75c:	24420001 	addiu	v0,v0,1
     760:	af820000 	sw	v0,0(gp)
    {
        main_result++;
    }

  /* Decode each component */
  for (i = 0; i < num_comp; i++)
     764:	26520001 	addiu	s2,s2,1
     768:	0257102a 	slt	v0,s2,s7
     76c:	1440ff9e 	bnez	v0,5e8 <get_sos+0xf0>
     770:	00000000 	sll	zero,zero,0x0

  /* Pass parameters; Ss, Se, Ah and Al for progressive JPEG */
  j = 3;
  while (j--)
    {
      c = read_byte ();
     774:	0c000000 	jal	0 <pgetc>
     778:	00000000 	sll	zero,zero,0x0
     77c:	0c000000 	jal	0 <pgetc>
     780:	00000000 	sll	zero,zero,0x0
     784:	0c000000 	jal	0 <pgetc>
     788:	00000000 	sll	zero,zero,0x0
    }

  /*
   * Define the Buffer at this point as the head of data
   */
  p_jinfo_jpeg_data = ReadBuf;
     78c:	8f820014 	lw	v0,20(gp)
     790:	00000000 	sll	zero,zero,0x0
     794:	af820000 	sw	v0,0(gp)

}
     798:	8fbf004c 	lw	ra,76(sp)
     79c:	8fbe0048 	lw	s8,72(sp)
     7a0:	8fb70044 	lw	s7,68(sp)
     7a4:	8fb60040 	lw	s6,64(sp)
     7a8:	8fb5003c 	lw	s5,60(sp)
     7ac:	8fb40038 	lw	s4,56(sp)
     7b0:	8fb30034 	lw	s3,52(sp)
     7b4:	8fb20030 	lw	s2,48(sp)
     7b8:	8fb1002c 	lw	s1,44(sp)
     7bc:	8fb00028 	lw	s0,40(sp)
     7c0:	03e00008 	jr	ra
     7c4:	27bd0050 	addiu	sp,sp,80

000007c8 <get_dht>:
/*
 * Get Huffman Table
 */
void
get_dht ()
{
     7c8:	27bdffb8 	addiu	sp,sp,-72
     7cc:	afbf0044 	sw	ra,68(sp)
     7d0:	afbe0040 	sw	s8,64(sp)
     7d4:	afb7003c 	sw	s7,60(sp)
     7d8:	afb60038 	sw	s6,56(sp)
     7dc:	afb50034 	sw	s5,52(sp)
     7e0:	afb40030 	sw	s4,48(sp)
     7e4:	afb3002c 	sw	s3,44(sp)
     7e8:	afb20028 	sw	s2,40(sp)
     7ec:	afb10024 	sw	s1,36(sp)
  int length;
  int index, i, count;
  int *p_xhtbl_bits;
  int *p_xhtbl_huffval;

  length = read_word ();
     7f0:	0c000000 	jal	0 <pgetc>
     7f4:	afb00020 	sw	s0,32(sp)
  length -= 2;
     7f8:	2454fffe 	addiu	s4,v0,-2

  printf (" length = %d\n", length);
     7fc:	3c040000 	lui	a0,0x0
     800:	24840000 	addiu	a0,a0,0
     804:	0c000000 	jal	0 <pgetc>
     808:	02802821 	addu	a1,s4,zero

  if (length != out_length_get_dht[i_get_dht])
     80c:	8f830000 	lw	v1,0(gp)
     810:	00000000 	sll	zero,zero,0x0
     814:	00031880 	sll	v1,v1,0x2
     818:	3c020000 	lui	v0,0x0
     81c:	24420000 	addiu	v0,v0,0
     820:	00621021 	addu	v0,v1,v0
     824:	8c420000 	lw	v0,0(v0)
     828:	00000000 	sll	zero,zero,0x0
     82c:	10540006 	beq	v0,s4,848 <get_dht+0x80>
     830:	2a820011 	slti	v0,s4,17
    {
        main_result++;
     834:	8f820000 	lw	v0,0(gp)
     838:	00000000 	sll	zero,zero,0x0
     83c:	24420001 	addiu	v0,v0,1
     840:	af820000 	sw	v0,0(gp)
    }

  while (length > 16)
     844:	2a820011 	slti	v0,s4,17
     848:	1440006a 	bnez	v0,9f4 <get_dht+0x22c>
     84c:	3c160000 	lui	s6,0x0
    {
      index = read_byte ();

      printf (" index = 0x%x\n", index);
     850:	26d60000 	addiu	s6,s6,0

      if (index != out_index_get_dht[i_get_dht])
     854:	3c170000 	lui	s7,0x0
     858:	26f70000 	addiu	s7,s7,0
	  p_xhtbl_huffval = p_jinfo_ac_xhuff_tbl_huffval[index];
	}
      else
	{
	  /* DC */
	  p_xhtbl_bits = p_jinfo_dc_xhuff_tbl_bits[index];
     85c:	3c020000 	lui	v0,0x0
     860:	24420000 	addiu	v0,v0,0
     864:	afa20010 	sw	v0,16(sp)
	  p_xhtbl_huffval = p_jinfo_dc_xhuff_tbl_huffval[index];
     868:	3c020000 	lui	v0,0x0
     86c:	24420000 	addiu	v0,v0,0
     870:	afa20014 	sw	v0,20(sp)

      if (index & 0x10)
	{
	  /* AC */
	  index -= 0x10;
	  p_xhtbl_bits = p_jinfo_ac_xhuff_tbl_bits[index];
     874:	3c020000 	lui	v0,0x0
     878:	24420000 	addiu	v0,v0,0
     87c:	afa20018 	sw	v0,24(sp)
	  p_xhtbl_huffval = p_jinfo_ac_xhuff_tbl_huffval[index];
     880:	3c020000 	lui	v0,0x0
     884:	24420000 	addiu	v0,v0,0
     888:	afa2001c 	sw	v0,28(sp)
	  p_xhtbl_huffval = p_jinfo_dc_xhuff_tbl_huffval[index];
	}

      count = 0;

      for (i = 1; i <= 16; i++)
     88c:	24130040 	addiu	s3,zero,64
	{
        main_result++;
    }
      i_get_dht++;

      length -= 1 + 16;
     890:	241effef 	addiu	s8,zero,-17
        main_result++;
    }

  while (length > 16)
    {
      index = read_byte ();
     894:	0c000000 	jal	0 <pgetc>
     898:	00000000 	sll	zero,zero,0x0
     89c:	00408821 	addu	s1,v0,zero

      printf (" index = 0x%x\n", index);
     8a0:	02c02021 	addu	a0,s6,zero
     8a4:	0c000000 	jal	0 <pgetc>
     8a8:	00402821 	addu	a1,v0,zero

      if (index != out_index_get_dht[i_get_dht])
     8ac:	8f820000 	lw	v0,0(gp)
     8b0:	00000000 	sll	zero,zero,0x0
     8b4:	00021080 	sll	v0,v0,0x2
     8b8:	00571021 	addu	v0,v0,s7
     8bc:	8c420000 	lw	v0,0(v0)
     8c0:	00000000 	sll	zero,zero,0x0
     8c4:	10510006 	beq	v0,s1,8e0 <get_dht+0x118>
     8c8:	32220010 	andi	v0,s1,0x10
	{
        main_result++;
     8cc:	8f820000 	lw	v0,0(gp)
     8d0:	00000000 	sll	zero,zero,0x0
     8d4:	24420001 	addiu	v0,v0,1
     8d8:	af820000 	sw	v0,0(gp)
}

      if (index & 0x10)
     8dc:	32220010 	andi	v0,s1,0x10
     8e0:	1040000e 	beqz	v0,91c <get_dht+0x154>
     8e4:	001111c0 	sll	v0,s1,0x7
	{
	  /* AC */
	  index -= 0x10;
     8e8:	2631fff0 	addiu	s1,s1,-16
	  p_xhtbl_bits = p_jinfo_ac_xhuff_tbl_bits[index];
     8ec:	00119100 	sll	s2,s1,0x4
     8f0:	001111c0 	sll	v0,s1,0x7
     8f4:	02429021 	addu	s2,s2,v0
     8f8:	8fa20018 	lw	v0,24(sp)
     8fc:	00000000 	sll	zero,zero,0x0
     900:	00529021 	addu	s2,v0,s2
	  p_xhtbl_huffval = p_jinfo_ac_xhuff_tbl_huffval[index];
     904:	0011a880 	sll	s5,s1,0x2
     908:	00118a80 	sll	s1,s1,0xa
     90c:	02b1a821 	addu	s5,s5,s1
     910:	8fa4001c 	lw	a0,28(sp)
     914:	08000252 	j	948 <get_dht+0x180>
     918:	0095a821 	addu	s5,a0,s5
	}
      else
	{
	  /* DC */
	  p_xhtbl_bits = p_jinfo_dc_xhuff_tbl_bits[index];
     91c:	00119100 	sll	s2,s1,0x4
     920:	02429021 	addu	s2,s2,v0
     924:	8fa20010 	lw	v0,16(sp)
     928:	00000000 	sll	zero,zero,0x0
     92c:	00529021 	addu	s2,v0,s2
	  p_xhtbl_huffval = p_jinfo_dc_xhuff_tbl_huffval[index];
     930:	0011a880 	sll	s5,s1,0x2
     934:	00118a80 	sll	s1,s1,0xa
     938:	02b1a821 	addu	s5,s5,s1
     93c:	8fa40014 	lw	a0,20(sp)
     940:	00000000 	sll	zero,zero,0x0
     944:	0095a821 	addu	s5,a0,s5
/*
 * Get Huffman Table
 */
void
get_dht ()
{
     948:	00008021 	addu	s0,zero,zero
	  /* DC */
	  p_xhtbl_bits = p_jinfo_dc_xhuff_tbl_bits[index];
	  p_xhtbl_huffval = p_jinfo_dc_xhuff_tbl_huffval[index];
	}

      count = 0;
     94c:	00008821 	addu	s1,zero,zero

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     950:	0c000000 	jal	0 <pgetc>
     954:	00000000 	sll	zero,zero,0x0

/*
 * Get Huffman Table
 */
void
get_dht ()
     958:	02501821 	addu	v1,s2,s0

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     95c:	ac620004 	sw	v0,4(v1)
	  count += p_xhtbl_bits[i];
     960:	26100004 	addiu	s0,s0,4
	  p_xhtbl_huffval = p_jinfo_dc_xhuff_tbl_huffval[index];
	}

      count = 0;

      for (i = 1; i <= 16; i++)
     964:	1613fffa 	bne	s0,s3,950 <get_dht+0x188>
     968:	02228821 	addu	s1,s1,v0
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
	}

      printf (" count = %d\n", count);
     96c:	3c040000 	lui	a0,0x0
     970:	24840000 	addiu	a0,a0,0
     974:	0c000000 	jal	0 <pgetc>
     978:	02202821 	addu	a1,s1,zero

      if (count != out_count_get_dht[i_get_dht])
     97c:	8f820000 	lw	v0,0(gp)
     980:	00000000 	sll	zero,zero,0x0
     984:	00021880 	sll	v1,v0,0x2
     988:	3c040000 	lui	a0,0x0
     98c:	24840000 	addiu	a0,a0,0
     990:	00641821 	addu	v1,v1,a0
     994:	8c630000 	lw	v1,0(v1)
     998:	00000000 	sll	zero,zero,0x0
     99c:	10710005 	beq	v1,s1,9b4 <get_dht+0x1ec>
     9a0:	00000000 	sll	zero,zero,0x0
	{
        main_result++;
     9a4:	8f830000 	lw	v1,0(gp)
     9a8:	00000000 	sll	zero,zero,0x0
     9ac:	24630001 	addiu	v1,v1,1
     9b0:	af830000 	sw	v1,0(gp)
    }
      i_get_dht++;
     9b4:	24420001 	addiu	v0,v0,1

      length -= 1 + 16;

      for (i = 0; i < count; i++)
     9b8:	1a200009 	blez	s1,9e0 <get_dht+0x218>
     9bc:	af820000 	sw	v0,0(gp)
     9c0:	02a08021 	addu	s0,s5,zero
     9c4:	00009021 	addu	s2,zero,zero
	{
	  p_xhtbl_huffval[i] = read_byte ();
     9c8:	0c000000 	jal	0 <pgetc>
     9cc:	26520001 	addiu	s2,s2,1
     9d0:	ae020000 	sw	v0,0(s0)
    }
      i_get_dht++;

      length -= 1 + 16;

      for (i = 0; i < count; i++)
     9d4:	0251102a 	slt	v0,s2,s1
     9d8:	1440fffb 	bnez	v0,9c8 <get_dht+0x200>
     9dc:	26100004 	addiu	s0,s0,4
	{
        main_result++;
    }
      i_get_dht++;

      length -= 1 + 16;
     9e0:	03d18823 	subu	s1,s8,s1
      for (i = 0; i < count; i++)
	{
	  p_xhtbl_huffval[i] = read_byte ();
	}

      length -= count;
     9e4:	0291a021 	addu	s4,s4,s1
  if (length != out_length_get_dht[i_get_dht])
    {
        main_result++;
    }

  while (length > 16)
     9e8:	2a820011 	slti	v0,s4,17
     9ec:	1040ffa9 	beqz	v0,894 <get_dht+0xcc>
     9f0:	00000000 	sll	zero,zero,0x0
	  p_xhtbl_huffval[i] = read_byte ();
	}

      length -= count;
    }
}
     9f4:	8fbf0044 	lw	ra,68(sp)
     9f8:	8fbe0040 	lw	s8,64(sp)
     9fc:	8fb7003c 	lw	s7,60(sp)
     a00:	8fb60038 	lw	s6,56(sp)
     a04:	8fb50034 	lw	s5,52(sp)
     a08:	8fb40030 	lw	s4,48(sp)
     a0c:	8fb3002c 	lw	s3,44(sp)
     a10:	8fb20028 	lw	s2,40(sp)
     a14:	8fb10024 	lw	s1,36(sp)
     a18:	8fb00020 	lw	s0,32(sp)
     a1c:	03e00008 	jr	ra
     a20:	27bd0048 	addiu	sp,sp,72

00000a24 <get_dqt>:


void
get_dqt ()
{
     a24:	27bdffc8 	addiu	sp,sp,-56
     a28:	afbf0034 	sw	ra,52(sp)
     a2c:	afbe0030 	sw	s8,48(sp)
     a30:	afb7002c 	sw	s7,44(sp)
     a34:	afb60028 	sw	s6,40(sp)
     a38:	afb50024 	sw	s5,36(sp)
     a3c:	afb40020 	sw	s4,32(sp)
     a40:	afb3001c 	sw	s3,28(sp)
     a44:	afb20018 	sw	s2,24(sp)
     a48:	afb10014 	sw	s1,20(sp)
  int length;
  int prec, num, i;
  unsigned int tmp;
  unsigned int *p_quant_tbl;

  length = read_word ();
     a4c:	0c000000 	jal	0 <pgetc>
     a50:	afb00010 	sw	s0,16(sp)
  length -= 2;
     a54:	2454fffe 	addiu	s4,v0,-2

  printf (" length = %d\n", length);
     a58:	3c040000 	lui	a0,0x0
     a5c:	24840000 	addiu	a0,a0,0
     a60:	0c000000 	jal	0 <pgetc>
     a64:	02802821 	addu	a1,s4,zero

  if (length != out_length_get_dqt[i_get_dqt])
     a68:	8f820000 	lw	v0,0(gp)
     a6c:	00000000 	sll	zero,zero,0x0
     a70:	00021080 	sll	v0,v0,0x2
     a74:	27830000 	addiu	v1,gp,0
     a78:	00621021 	addu	v0,v1,v0
     a7c:	8c420000 	lw	v0,0(v0)
     a80:	00000000 	sll	zero,zero,0x0
     a84:	10540005 	beq	v0,s4,a9c <get_dqt+0x78>
     a88:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     a8c:	8f820000 	lw	v0,0(gp)
     a90:	00000000 	sll	zero,zero,0x0
     a94:	24420001 	addiu	v0,v0,1
     a98:	af820000 	sw	v0,0(gp)
    }

  while (length > 0)
     a9c:	1a800046 	blez	s4,bb8 <get_dqt+0x194>
     aa0:	3c160000 	lui	s6,0x0
      /* Precision 0:8bit, 1:16bit */
      prec = num >> 4;
      /* Table Number */
      num &= 0x0f;

      printf (" prec = %d\n", prec);
     aa4:	26d60000 	addiu	s6,s6,0
      printf (" num  = %d\n", num);
     aa8:	3c170000 	lui	s7,0x0
     aac:	26f70000 	addiu	s7,s7,0

      if (prec != out_prec_get_dht[i_get_dqt])
     ab0:	279e0000 	addiu	s8,gp,0
	{
        main_result++;
    }
      i_get_dqt++;

      p_quant_tbl = &p_jinfo_quant_tbl_quantval[num][DCTSIZE2];
     ab4:	3c150000 	lui	s5,0x0
     ab8:	26b50000 	addiu	s5,s5,0
    }
}


void
get_dqt ()
     abc:	26b30100 	addiu	s3,s5,256
        main_result++;
    }

  while (length > 0)
    {
      num = read_byte ();
     ac0:	0c000000 	jal	0 <pgetc>
     ac4:	00000000 	sll	zero,zero,0x0
      /* Precision 0:8bit, 1:16bit */
      prec = num >> 4;
     ac8:	00028903 	sra	s1,v0,0x4
      /* Table Number */
      num &= 0x0f;
     acc:	3050000f 	andi	s0,v0,0xf

      printf (" prec = %d\n", prec);
     ad0:	02c02021 	addu	a0,s6,zero
     ad4:	0c000000 	jal	0 <pgetc>
     ad8:	02202821 	addu	a1,s1,zero
      printf (" num  = %d\n", num);
     adc:	02e02021 	addu	a0,s7,zero
     ae0:	0c000000 	jal	0 <pgetc>
     ae4:	02002821 	addu	a1,s0,zero

      if (prec != out_prec_get_dht[i_get_dqt])
     ae8:	8f820000 	lw	v0,0(gp)
     aec:	00000000 	sll	zero,zero,0x0
     af0:	00021880 	sll	v1,v0,0x2
     af4:	03c31821 	addu	v1,s8,v1
     af8:	8c630000 	lw	v1,0(v1)
     afc:	00000000 	sll	zero,zero,0x0
     b00:	10710006 	beq	v1,s1,b1c <get_dqt+0xf8>
     b04:	00021880 	sll	v1,v0,0x2
	{
        main_result++;
     b08:	8f830000 	lw	v1,0(gp)
     b0c:	00000000 	sll	zero,zero,0x0
     b10:	24630001 	addiu	v1,v1,1
     b14:	af830000 	sw	v1,0(gp)
    }
      if (num != out_num_get_dht[i_get_dqt])
     b18:	00021880 	sll	v1,v0,0x2
     b1c:	27840000 	addiu	a0,gp,0
     b20:	00831821 	addu	v1,a0,v1
     b24:	8c630000 	lw	v1,0(v1)
     b28:	00000000 	sll	zero,zero,0x0
     b2c:	10700005 	beq	v1,s0,b44 <get_dqt+0x120>
     b30:	00000000 	sll	zero,zero,0x0
	{
        main_result++;
     b34:	8f830000 	lw	v1,0(gp)
     b38:	00000000 	sll	zero,zero,0x0
     b3c:	24630001 	addiu	v1,v1,1
     b40:	af830000 	sw	v1,0(gp)
    }
      i_get_dqt++;
     b44:	24420001 	addiu	v0,v0,1
     b48:	af820000 	sw	v0,0(gp)

      p_quant_tbl = &p_jinfo_quant_tbl_quantval[num][DCTSIZE2];
     b4c:	26120001 	addiu	s2,s0,1
     b50:	00129200 	sll	s2,s2,0x8
     b54:	3c020000 	lui	v0,0x0
     b58:	24420000 	addiu	v0,v0,0
     b5c:	00529021 	addu	s2,v0,s2
     b60:	02a08021 	addu	s0,s5,zero
      for (i = 0; i < DCTSIZE2; i++)
	{
	  if (prec)
     b64:	12200005 	beqz	s1,b7c <get_dqt+0x158>
     b68:	00000000 	sll	zero,zero,0x0
	    tmp = read_word ();
     b6c:	0c000000 	jal	0 <pgetc>
     b70:	00000000 	sll	zero,zero,0x0
     b74:	080002e1 	j	b84 <get_dqt+0x160>
     b78:	00000000 	sll	zero,zero,0x0
	  else
	    tmp = read_byte ();
     b7c:	0c000000 	jal	0 <pgetc>
     b80:	00000000 	sll	zero,zero,0x0
	  p_quant_tbl[izigzag_index[i]] = (unsigned short) tmp;
     b84:	8e030000 	lw	v1,0(s0)
     b88:	00000000 	sll	zero,zero,0x0
     b8c:	00031880 	sll	v1,v1,0x2
     b90:	02431821 	addu	v1,s2,v1
     b94:	3042ffff 	andi	v0,v0,0xffff
     b98:	26100004 	addiu	s0,s0,4
        main_result++;
    }
      i_get_dqt++;

      p_quant_tbl = &p_jinfo_quant_tbl_quantval[num][DCTSIZE2];
      for (i = 0; i < DCTSIZE2; i++)
     b9c:	1613fff1 	bne	s0,s3,b64 <get_dqt+0x140>
     ba0:	ac620000 	sw	v0,0(v1)
	    tmp = read_byte ();
	  p_quant_tbl[izigzag_index[i]] = (unsigned short) tmp;
	}

      length -= DCTSIZE2 + 1;
      if (prec)
     ba4:	12200002 	beqz	s1,bb0 <get_dqt+0x18c>
     ba8:	2694ffbf 	addiu	s4,s4,-65
	length -= DCTSIZE2;
     bac:	2694ffc0 	addiu	s4,s4,-64
  if (length != out_length_get_dqt[i_get_dqt])
    {
        main_result++;
    }

  while (length > 0)
     bb0:	1e80ffc3 	bgtz	s4,ac0 <get_dqt+0x9c>
     bb4:	00000000 	sll	zero,zero,0x0

      length -= DCTSIZE2 + 1;
      if (prec)
	length -= DCTSIZE2;
    }
}
     bb8:	8fbf0034 	lw	ra,52(sp)
     bbc:	8fbe0030 	lw	s8,48(sp)
     bc0:	8fb7002c 	lw	s7,44(sp)
     bc4:	8fb60028 	lw	s6,40(sp)
     bc8:	8fb50024 	lw	s5,36(sp)
     bcc:	8fb40020 	lw	s4,32(sp)
     bd0:	8fb3001c 	lw	s3,28(sp)
     bd4:	8fb20018 	lw	s2,24(sp)
     bd8:	8fb10014 	lw	s1,20(sp)
     bdc:	8fb00010 	lw	s0,16(sp)
     be0:	03e00008 	jr	ra
     be4:	27bd0038 	addiu	sp,sp,56

00000be8 <read_markers>:



void
read_markers (unsigned char *buf)
{
     be8:	27bdffd8 	addiu	sp,sp,-40
     bec:	afbf0024 	sw	ra,36(sp)
     bf0:	afb40020 	sw	s4,32(sp)
     bf4:	afb3001c 	sw	s3,28(sp)
     bf8:	afb20018 	sw	s2,24(sp)
     bfc:	afb10014 	sw	s1,20(sp)
     c00:	afb00010 	sw	s0,16(sp)
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     c04:	af840014 	sw	a0,20(gp)

  sow_SOI = 0;
     c08:	00008821 	addu	s1,zero,zero
      else
	{
	  unread_marker = next_marker ();
	}

      printf ("\nmarker = 0x%x\n", unread_marker);
     c0c:	3c120000 	lui	s2,0x0
     c10:	26520000 	addiu	s2,s2,0

      if (unread_marker != out_unread_marker[i_marker++])
     c14:	3c130000 	lui	s3,0x0
     c18:	26730000 	addiu	s3,s3,0
	{
		main_result++;
	}


      switch (unread_marker)
     c1c:	3c140000 	lui	s4,0x0
     c20:	0800030b 	j	c2c <read_markers+0x44>
     c24:	26940000 	addiu	s4,s4,0
	{
	case M_SOI:		/* Start of Image */
	  sow_SOI = 1;
     c28:	24110001 	addiu	s1,zero,1
  unread_marker = 0;

  /* Read the head of the marker */
  for (;;)
    {
      if (!sow_SOI)
     c2c:	16200005 	bnez	s1,c44 <read_markers+0x5c>
     c30:	00000000 	sll	zero,zero,0x0
	{
	  unread_marker = first_marker ();
     c34:	0c000000 	jal	0 <pgetc>
     c38:	00000000 	sll	zero,zero,0x0
     c3c:	08000314 	j	c50 <read_markers+0x68>
     c40:	00408021 	addu	s0,v0,zero
	}
      else
	{
	  unread_marker = next_marker ();
     c44:	0c000000 	jal	0 <pgetc>
     c48:	00000000 	sll	zero,zero,0x0
     c4c:	00408021 	addu	s0,v0,zero
	}

      printf ("\nmarker = 0x%x\n", unread_marker);
     c50:	02402021 	addu	a0,s2,zero
     c54:	0c000000 	jal	0 <pgetc>
     c58:	02002821 	addu	a1,s0,zero

      if (unread_marker != out_unread_marker[i_marker++])
     c5c:	8f820000 	lw	v0,0(gp)
     c60:	00000000 	sll	zero,zero,0x0
     c64:	00021880 	sll	v1,v0,0x2
     c68:	00731821 	addu	v1,v1,s3
     c6c:	8c630000 	lw	v1,0(v1)
     c70:	24420001 	addiu	v0,v0,1
     c74:	12030005 	beq	s0,v1,c8c <read_markers+0xa4>
     c78:	af820000 	sw	v0,0(gp)
	{
		main_result++;
     c7c:	8f820000 	lw	v0,0(gp)
     c80:	00000000 	sll	zero,zero,0x0
     c84:	24420001 	addiu	v0,v0,1
     c88:	af820000 	sw	v0,0(gp)
	}


      switch (unread_marker)
     c8c:	2610ff40 	addiu	s0,s0,-192
     c90:	2e02001c 	sltiu	v0,s0,28
     c94:	1040ffe5 	beqz	v0,c2c <read_markers+0x44>
     c98:	00108080 	sll	s0,s0,0x2
     c9c:	02908021 	addu	s0,s4,s0
     ca0:	8e020000 	lw	v0,0(s0)
     ca4:	00000000 	sll	zero,zero,0x0
     ca8:	00400008 	jr	v0
     cac:	00000000 	sll	zero,zero,0x0
	case M_SOI:		/* Start of Image */
	  sow_SOI = 1;
	  break;

	case M_SOF0:		/* Baseline DCT ( Huffman ) */
	  get_sof ();
     cb0:	0c000000 	jal	0 <pgetc>
     cb4:	00000000 	sll	zero,zero,0x0
	  break;
     cb8:	0800030b 	j	c2c <read_markers+0x44>
     cbc:	00000000 	sll	zero,zero,0x0

	case M_SOS:		/* Start of Scan ( Head of Compressed Data ) */
	  get_sos ();
     cc0:	0c000000 	jal	0 <pgetc>
     cc4:	00000000 	sll	zero,zero,0x0
     cc8:	0800033c 	j	cf0 <read_markers+0x108>
     ccc:	00000000 	sll	zero,zero,0x0
	  return;

	case M_DHT:
	  get_dht ();
     cd0:	0c000000 	jal	0 <pgetc>
     cd4:	00000000 	sll	zero,zero,0x0
	  break;
     cd8:	0800030b 	j	c2c <read_markers+0x44>
     cdc:	00000000 	sll	zero,zero,0x0

	case M_DQT:
	  get_dqt ();
     ce0:	0c000000 	jal	0 <pgetc>
     ce4:	00000000 	sll	zero,zero,0x0
     ce8:	0800030b 	j	c2c <read_markers+0x44>
     cec:	00000000 	sll	zero,zero,0x0

	case M_EOI:
	  return;
	}
    }
}
     cf0:	8fbf0024 	lw	ra,36(sp)
     cf4:	8fb40020 	lw	s4,32(sp)
     cf8:	8fb3001c 	lw	s3,28(sp)
     cfc:	8fb20018 	lw	s2,24(sp)
     d00:	8fb10014 	lw	s1,20(sp)
     d04:	8fb00010 	lw	s0,16(sp)
     d08:	03e00008 	jr	ra
     d0c:	27bd0028 	addiu	sp,sp,40

00000d10 <ChenIDct>:
 * input vectors that represent x=input, and y=output, and must be
 * defined (and storage allocated) before this routine is called.
 */
void
ChenIDct (int *x, int *y)
{
     d10:	27bdffe8 	addiu	sp,sp,-24
     d14:	afb50014 	sw	s5,20(sp)
     d18:	afb40010 	sw	s4,16(sp)
     d1c:	afb3000c 	sw	s3,12(sp)
     d20:	afb20008 	sw	s2,8(sp)
     d24:	afb10004 	sw	s1,4(sp)
     d28:	afb00000 	sw	s0,0(sp)
      *aptr = b0 - c3;
    }

  /* Loop over rows */

  for (i = 0; i < 8; i++)
     d2c:	00a01021 	addu	v0,a1,zero
  register int b0, b1, b2, b3;
  register int c0, c1, c2, c3;

  /* Loop over columns */

  for (i = 0; i < 8; i++)
     d30:	00005821 	addu	t3,zero,zero
     d34:	24180008 	addiu	t8,zero,8
    {
      aptr = x + i;
      b0 = LS (*aptr, 2);
     d38:	8c8d0000 	lw	t5,0(a0)
     d3c:	00000000 	sll	zero,zero,0x0
     d40:	000d6880 	sll	t5,t5,0x2
      aptr += 8;
      a0 = LS (*aptr, 2);
     d44:	8c8e0020 	lw	t6,32(a0)
     d48:	00000000 	sll	zero,zero,0x0
     d4c:	000e4080 	sll	t0,t6,0x2
      aptr += 8;
      b2 = LS (*aptr, 2);
     d50:	8c910040 	lw	s1,64(a0)
     d54:	00000000 	sll	zero,zero,0x0
     d58:	00111880 	sll	v1,s1,0x2
      aptr += 8;
      a1 = LS (*aptr, 2);
     d5c:	8c990060 	lw	t9,96(a0)
     d60:	00000000 	sll	zero,zero,0x0
     d64:	00195080 	sll	t2,t9,0x2
      aptr += 8;
      b1 = LS (*aptr, 2);
     d68:	8c870080 	lw	a3,128(a0)
     d6c:	00000000 	sll	zero,zero,0x0
     d70:	00073880 	sll	a3,a3,0x2
      aptr += 8;
      a2 = LS (*aptr, 2);
     d74:	8c9400a0 	lw	s4,160(a0)
     d78:	00000000 	sll	zero,zero,0x0
     d7c:	00149880 	sll	s3,s4,0x2
      aptr += 8;
      b3 = LS (*aptr, 2);
     d80:	8c8c00c0 	lw	t4,192(a0)
     d84:	00000000 	sll	zero,zero,0x0
     d88:	000c3080 	sll	a2,t4,0x2
      aptr += 8;
      a3 = LS (*aptr, 2);
     d8c:	8c9200e0 	lw	s2,224(a0)
     d90:	00000000 	sll	zero,zero,0x0
     d94:	00124880 	sll	t1,s2,0x2

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
     d98:	00129100 	sll	s2,s2,0x4
     d9c:	00098200 	sll	s0,t1,0x8
     da0:	02128023 	subu	s0,s0,s2
     da4:	01308023 	subu	s0,t1,s0
     da8:	00108040 	sll	s0,s0,0x1
     dac:	000e7100 	sll	t6,t6,0x4
     db0:	00087900 	sll	t7,t0,0x4
     db4:	01cf7821 	addu	t7,t6,t7
     db8:	000fa880 	sll	s5,t7,0x2
     dbc:	01f57821 	addu	t7,t7,s5
     dc0:	020f8021 	addu	s0,s0,t7
     dc4:	00108243 	sra	s0,s0,0x9
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
     dc8:	0019c940 	sll	t9,t9,0x5
     dcc:	000a7980 	sll	t7,t2,0x6
     dd0:	032fc821 	addu	t9,t9,t7
     dd4:	01597823 	subu	t7,t2,t9
     dd8:	000f7880 	sll	t7,t7,0x2
     ddc:	0014a140 	sll	s4,s4,0x5
     de0:	0013a980 	sll	s5,s3,0x6
     de4:	0295a021 	addu	s4,s4,s5
     de8:	0293a023 	subu	s4,s4,s3
     dec:	00149880 	sll	s3,s4,0x2
     df0:	0274a023 	subu	s4,s3,s4
     df4:	0014a040 	sll	s4,s4,0x1
     df8:	01f47821 	addu	t7,t7,s4
     dfc:	000f7a43 	sra	t7,t7,0x9
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
     e00:	032a5023 	subu	t2,t9,t2
     e04:	000ac880 	sll	t9,t2,0x2
     e08:	032a5023 	subu	t2,t9,t2
     e0c:	000ac840 	sll	t9,t2,0x1
     e10:	0279c821 	addu	t9,s3,t9
     e14:	0019ca43 	sra	t9,t9,0x9
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
     e18:	00094900 	sll	t1,t1,0x4
     e1c:	02494821 	addu	t1,s2,t1
     e20:	00095080 	sll	t2,t1,0x2
     e24:	012a4821 	addu	t1,t1,t2
     e28:	00085200 	sll	t2,t0,0x8
     e2c:	014e7023 	subu	t6,t2,t6
     e30:	01c84023 	subu	t0,t6,t0
     e34:	00084040 	sll	t0,t0,0x1
     e38:	01284821 	addu	t1,t1,t0
     e3c:	00094a43 	sra	t1,t1,0x9

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
     e40:	00ed4021 	addu	t0,a3,t5
     e44:	00085080 	sll	t2,t0,0x2
     e48:	00087100 	sll	t6,t0,0x4
     e4c:	01ca5023 	subu	t2,t6,t2
     e50:	000a7100 	sll	t6,t2,0x4
     e54:	01ca5023 	subu	t2,t6,t2
     e58:	01484021 	addu	t0,t2,t0
     e5c:	00084040 	sll	t0,t0,0x1
     e60:	00084243 	sra	t0,t0,0x9
      a1 = MSCALE (c1d4 * (b0 - b1));
     e64:	01a73823 	subu	a3,t5,a3
     e68:	00075080 	sll	t2,a3,0x2
     e6c:	00076900 	sll	t5,a3,0x4
     e70:	01aa5023 	subu	t2,t5,t2
     e74:	000a6900 	sll	t5,t2,0x4
     e78:	01aa5023 	subu	t2,t5,t2
     e7c:	01473821 	addu	a3,t2,a3
     e80:	00073840 	sll	a3,a3,0x1
     e84:	00073a43 	sra	a3,a3,0x9

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
     e88:	000c6100 	sll	t4,t4,0x4
     e8c:	00069180 	sll	s2,a2,0x6
     e90:	024c9023 	subu	s2,s2,t4
     e94:	02469023 	subu	s2,s2,a2
     e98:	001290c0 	sll	s2,s2,0x3
     e9c:	02469021 	addu	s2,s2,a2
     ea0:	00115100 	sll	t2,s1,0x4
     ea4:	00037140 	sll	t6,v1,0x5
     ea8:	01ca7023 	subu	t6,t6,t2
     eac:	000e68c0 	sll	t5,t6,0x3
     eb0:	01ae6823 	subu	t5,t5,t6
     eb4:	01b26823 	subu	t5,t5,s2
     eb8:	000d6a43 	sra	t5,t5,0x9
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
     ebc:	00063140 	sll	a2,a2,0x5
     ec0:	00cc3023 	subu	a2,a2,t4
     ec4:	000660c0 	sll	t4,a2,0x3
     ec8:	01863023 	subu	a2,t4,a2
     ecc:	00036180 	sll	t4,v1,0x6
     ed0:	018a5023 	subu	t2,t4,t2
     ed4:	01435023 	subu	t2,t2,v1
     ed8:	000a50c0 	sll	t2,t2,0x3
     edc:	01431821 	addu	v1,t2,v1
     ee0:	00c31821 	addu	v1,a2,v1
     ee4:	00031a43 	sra	v1,v1,0x9

      b0 = a0 + a3;
     ee8:	00685021 	addu	t2,v1,t0
      b1 = a1 + a2;
     eec:	00ed6021 	addu	t4,a3,t5
      b2 = a1 - a2;
     ef0:	00ed6823 	subu	t5,a3,t5
      b3 = a0 - a3;
     ef4:	01031823 	subu	v1,t0,v1

      /* Second Butterfly */

      a0 = c0 + c1;
     ef8:	01f07021 	addu	t6,t7,s0
      a1 = c0 - c1;
     efc:	020f3023 	subu	a2,s0,t7
      a2 = c3 - c2;
     f00:	01397823 	subu	t7,t1,t9
      a3 = c3 + c2;
     f04:	01394821 	addu	t1,t1,t9

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
     f08:	01e63823 	subu	a3,t7,a2
     f0c:	00074080 	sll	t0,a3,0x2
     f10:	0007c900 	sll	t9,a3,0x4
     f14:	03284023 	subu	t0,t9,t0
     f18:	0008c900 	sll	t9,t0,0x4
     f1c:	03284023 	subu	t0,t9,t0
     f20:	01073821 	addu	a3,t0,a3
     f24:	00073840 	sll	a3,a3,0x1
     f28:	00073a43 	sra	a3,a3,0x9
      c2 = MSCALE (c1d4 * (a2 + a1));
     f2c:	01e63021 	addu	a2,t7,a2
     f30:	00064080 	sll	t0,a2,0x2
     f34:	00067900 	sll	t7,a2,0x4
     f38:	01e84023 	subu	t0,t7,t0
     f3c:	00087900 	sll	t7,t0,0x4
     f40:	01e84023 	subu	t0,t7,t0
     f44:	01063021 	addu	a2,t0,a2
     f48:	00063040 	sll	a2,a2,0x1
     f4c:	00063243 	sra	a2,a2,0x9
      c3 = a3;

      aptr = y + i;
      *aptr = b0 + c3;
     f50:	012a4021 	addu	t0,t1,t2
     f54:	ac480000 	sw	t0,0(v0)
      aptr += 8;
      *aptr = b1 + c2;
     f58:	00cc4021 	addu	t0,a2,t4
     f5c:	ac480020 	sw	t0,32(v0)
      aptr += 8;
      *aptr = b2 + c1;
     f60:	00ed4021 	addu	t0,a3,t5
     f64:	ac480040 	sw	t0,64(v0)
      aptr += 8;
      *aptr = b3 + c0;
     f68:	01c34021 	addu	t0,t6,v1
     f6c:	ac480060 	sw	t0,96(v0)
      aptr += 8;
      *aptr = b3 - c0;
     f70:	006e7023 	subu	t6,v1,t6
     f74:	ac4e0080 	sw	t6,128(v0)
      aptr += 8;
      *aptr = b2 - c1;
     f78:	01a73823 	subu	a3,t5,a3
     f7c:	ac4700a0 	sw	a3,160(v0)
      aptr += 8;
      *aptr = b1 - c2;
     f80:	01863023 	subu	a2,t4,a2
     f84:	ac4600c0 	sw	a2,192(v0)
      aptr += 8;
      *aptr = b0 - c3;
     f88:	01494823 	subu	t1,t2,t1
     f8c:	ac4900e0 	sw	t1,224(v0)
  register int b0, b1, b2, b3;
  register int c0, c1, c2, c3;

  /* Loop over columns */

  for (i = 0; i < 8; i++)
     f90:	256b0001 	addiu	t3,t3,1
     f94:	24840004 	addiu	a0,a0,4
     f98:	1578ff67 	bne	t3,t8,d38 <ChenIDct+0x28>
     f9c:	24420004 	addiu	v0,v0,4
     fa0:	00004821 	addu	t1,zero,zero
      *aptr = b0 - c3;
    }

  /* Loop over rows */

  for (i = 0; i < 8; i++)
     fa4:	240e0008 	addiu	t6,zero,8
    {
      aptr = y + LS (i, 3);
     fa8:	00091140 	sll	v0,t1,0x5
     fac:	00a21021 	addu	v0,a1,v0
      b0 = *(aptr++);
     fb0:	8c4c0000 	lw	t4,0(v0)
      a0 = *(aptr++);
     fb4:	8c460004 	lw	a2,4(v0)
      b2 = *(aptr++);
     fb8:	8c430008 	lw	v1,8(v0)
      a1 = *(aptr++);
     fbc:	8c48000c 	lw	t0,12(v0)
      b1 = *(aptr++);
     fc0:	8c4b0010 	lw	t3,16(v0)
      a2 = *(aptr++);
     fc4:	8c4a0014 	lw	t2,20(v0)
      b3 = *(aptr++);
     fc8:	8c440018 	lw	a0,24(v0)
      a3 = *(aptr);
     fcc:	8c47001c 	lw	a3,28(v0)
     fd0:	00000000 	sll	zero,zero,0x0
      /*
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
     fd4:	00078080 	sll	s0,a3,0x2
     fd8:	0007ca00 	sll	t9,a3,0x8
     fdc:	0330c823 	subu	t9,t9,s0
     fe0:	00f9c823 	subu	t9,a3,t9
     fe4:	0019c840 	sll	t9,t9,0x1
     fe8:	00066880 	sll	t5,a2,0x2
     fec:	00067900 	sll	t7,a2,0x4
     ff0:	01af7821 	addu	t7,t5,t7
     ff4:	000fc080 	sll	t8,t7,0x2
     ff8:	01f87821 	addu	t7,t7,t8
     ffc:	032fc821 	addu	t9,t9,t7
    1000:	0019ca43 	sra	t9,t9,0x9
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    1004:	000ac0c0 	sll	t8,t2,0x3
    1008:	000a7980 	sll	t7,t2,0x6
    100c:	030f7821 	addu	t7,t8,t7
    1010:	01ea5023 	subu	t2,t7,t2
    1014:	000a8880 	sll	s1,t2,0x2
    1018:	022a5023 	subu	t2,s1,t2
    101c:	000a5040 	sll	t2,t2,0x1
    1020:	0008c0c0 	sll	t8,t0,0x3
    1024:	00087980 	sll	t7,t0,0x6
    1028:	030f7821 	addu	t7,t8,t7
    102c:	010fc023 	subu	t8,t0,t7
    1030:	0018c080 	sll	t8,t8,0x2
    1034:	0158c021 	addu	t8,t2,t8
    1038:	0018c243 	sra	t8,t8,0x9
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
    103c:	01e84023 	subu	t0,t7,t0
    1040:	00087880 	sll	t7,t0,0x2
    1044:	01e84023 	subu	t0,t7,t0
    1048:	00087840 	sll	t7,t0,0x1
    104c:	022f7821 	addu	t7,s1,t7
    1050:	000f7a43 	sra	t7,t7,0x9
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1054:	00073900 	sll	a3,a3,0x4
    1058:	02073821 	addu	a3,s0,a3
    105c:	00075080 	sll	t2,a3,0x2
    1060:	00ea3821 	addu	a3,a3,t2
    1064:	00065200 	sll	t2,a2,0x8
    1068:	014d6823 	subu	t5,t2,t5
    106c:	01a63023 	subu	a2,t5,a2
    1070:	00063040 	sll	a2,a2,0x1
    1074:	00e65021 	addu	t2,a3,a2
    1078:	000a5243 	sra	t2,t2,0x9

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    107c:	016c4021 	addu	t0,t3,t4
    1080:	00083080 	sll	a2,t0,0x2
    1084:	00083900 	sll	a3,t0,0x4
    1088:	00e63023 	subu	a2,a3,a2
    108c:	00063900 	sll	a3,a2,0x4
    1090:	00e63023 	subu	a2,a3,a2
    1094:	00c84021 	addu	t0,a2,t0
    1098:	00084040 	sll	t0,t0,0x1
    109c:	00084243 	sra	t0,t0,0x9
      a1 = MSCALE (c1d4 * (b0 - b1));
    10a0:	018b3823 	subu	a3,t4,t3
    10a4:	00073080 	sll	a2,a3,0x2
    10a8:	00075900 	sll	t3,a3,0x4
    10ac:	01663023 	subu	a2,t3,a2
    10b0:	00065900 	sll	t3,a2,0x4
    10b4:	01663023 	subu	a2,t3,a2
    10b8:	00c73821 	addu	a3,a2,a3
    10bc:	00073840 	sll	a3,a3,0x1
    10c0:	00073a43 	sra	a3,a3,0x9

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    10c4:	00046080 	sll	t4,a0,0x2
    10c8:	00048180 	sll	s0,a0,0x6
    10cc:	020c8023 	subu	s0,s0,t4
    10d0:	02048023 	subu	s0,s0,a0
    10d4:	001080c0 	sll	s0,s0,0x3
    10d8:	02048021 	addu	s0,s0,a0
    10dc:	00035880 	sll	t3,v1,0x2
    10e0:	00036940 	sll	t5,v1,0x5
    10e4:	01ab6823 	subu	t5,t5,t3
    10e8:	000d30c0 	sll	a2,t5,0x3
    10ec:	00cd3023 	subu	a2,a2,t5
    10f0:	00d03023 	subu	a2,a2,s0
    10f4:	00063243 	sra	a2,a2,0x9
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    10f8:	00042140 	sll	a0,a0,0x5
    10fc:	008c2023 	subu	a0,a0,t4
    1100:	000460c0 	sll	t4,a0,0x3
    1104:	01842023 	subu	a0,t4,a0
    1108:	00036180 	sll	t4,v1,0x6
    110c:	018b5823 	subu	t3,t4,t3
    1110:	01635823 	subu	t3,t3,v1
    1114:	000b58c0 	sll	t3,t3,0x3
    1118:	01631821 	addu	v1,t3,v1
    111c:	00831821 	addu	v1,a0,v1
    1120:	00031a43 	sra	v1,v1,0x9

      /* Calculate last set of b's */

      b0 = a0 + a3;
    1124:	00685821 	addu	t3,v1,t0
      b1 = a1 + a2;
    1128:	00c76021 	addu	t4,a2,a3
      b2 = a1 - a2;
    112c:	00e63823 	subu	a3,a3,a2
      b3 = a0 - a3;
    1130:	01031823 	subu	v1,t0,v1

      /* Second Butterfly */

      a0 = c0 + c1;
    1134:	03386821 	addu	t5,t9,t8
      a1 = c0 - c1;
    1138:	03382023 	subu	a0,t9,t8
      a2 = c3 - c2;
    113c:	014f4023 	subu	t0,t2,t7
      a3 = c3 + c2;
    1140:	014f5021 	addu	t2,t2,t7

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    1144:	01043023 	subu	a2,t0,a0
    1148:	00067880 	sll	t7,a2,0x2
    114c:	0006c100 	sll	t8,a2,0x4
    1150:	030f7823 	subu	t7,t8,t7
    1154:	000fc100 	sll	t8,t7,0x4
    1158:	030f7823 	subu	t7,t8,t7
    115c:	01e63021 	addu	a2,t7,a2
    1160:	00063040 	sll	a2,a2,0x1
    1164:	00063243 	sra	a2,a2,0x9
      c2 = MSCALE (c1d4 * (a2 + a1));
    1168:	01042021 	addu	a0,t0,a0
    116c:	00044080 	sll	t0,a0,0x2
    1170:	00047900 	sll	t7,a0,0x4
    1174:	01e84023 	subu	t0,t7,t0
    1178:	00087900 	sll	t7,t0,0x4
    117c:	01e84023 	subu	t0,t7,t0
    1180:	01042021 	addu	a0,t0,a0
    1184:	00042040 	sll	a0,a0,0x1
    1188:	00042243 	sra	a0,a0,0x9
      c3 = a3;

      aptr = y + LS (i, 3);
      *(aptr++) = b0 + c3;
    118c:	014b4021 	addu	t0,t2,t3
    1190:	ac480000 	sw	t0,0(v0)
      *(aptr++) = b1 + c2;
    1194:	008c4021 	addu	t0,a0,t4
    1198:	ac480004 	sw	t0,4(v0)
      *(aptr++) = b2 + c1;
    119c:	00c74021 	addu	t0,a2,a3
    11a0:	ac480008 	sw	t0,8(v0)
      *(aptr++) = b3 + c0;
    11a4:	01a34021 	addu	t0,t5,v1
    11a8:	ac48000c 	sw	t0,12(v0)
      *(aptr++) = b3 - c0;
    11ac:	006d6823 	subu	t5,v1,t5
    11b0:	ac4d0010 	sw	t5,16(v0)
      *(aptr++) = b2 - c1;
    11b4:	00e63023 	subu	a2,a3,a2
    11b8:	ac460014 	sw	a2,20(v0)
      *(aptr++) = b1 - c2;
    11bc:	01842023 	subu	a0,t4,a0
    11c0:	ac440018 	sw	a0,24(v0)
      *(aptr) = b0 - c3;
    11c4:	016a5023 	subu	t2,t3,t2
      *aptr = b0 - c3;
    }

  /* Loop over rows */

  for (i = 0; i < 8; i++)
    11c8:	25290001 	addiu	t1,t1,1
    11cc:	152eff76 	bne	t1,t6,fa8 <ChenIDct+0x298>
    11d0:	ac4a001c 	sw	t2,28(v0)
    11d4:	24020040 	addiu	v0,zero,64
     Retrieve correct accuracy. We have additional factor
     of 16 that must be removed.
   */

  for (i = 0, aptr = y; i < 64; i++, aptr++)
    *aptr = (((*aptr < 0) ? (*aptr - 8) : (*aptr + 8)) / 16);
    11d8:	8ca30000 	lw	v1,0(a1)
    11dc:	00000000 	sll	zero,zero,0x0
    11e0:	04610007 	bgez	v1,1200 <ChenIDct+0x4f0>
    11e4:	00000000 	sll	zero,zero,0x0
    11e8:	2463fff8 	addiu	v1,v1,-8
    11ec:	04610002 	bgez	v1,11f8 <ChenIDct+0x4e8>
    11f0:	00000000 	sll	zero,zero,0x0
    11f4:	2463000f 	addiu	v1,v1,15
    11f8:	08000485 	j	1214 <ChenIDct+0x504>
    11fc:	00031903 	sra	v1,v1,0x4
    1200:	24630008 	addiu	v1,v1,8
    1204:	04610002 	bgez	v1,1210 <ChenIDct+0x500>
    1208:	00000000 	sll	zero,zero,0x0
    120c:	2463000f 	addiu	v1,v1,15
    1210:	00031903 	sra	v1,v1,0x4
    1214:	2442ffff 	addiu	v0,v0,-1
  /*
     Retrieve correct accuracy. We have additional factor
     of 16 that must be removed.
   */

  for (i = 0, aptr = y; i < 64; i++, aptr++)
    1218:	10400003 	beqz	v0,1228 <ChenIDct+0x518>
    121c:	aca30000 	sw	v1,0(a1)
    1220:	08000476 	j	11d8 <ChenIDct+0x4c8>
    1224:	24a50004 	addiu	a1,a1,4
    *aptr = (((*aptr < 0) ? (*aptr - 8) : (*aptr + 8)) / 16);
}
    1228:	8fb50014 	lw	s5,20(sp)
    122c:	8fb40010 	lw	s4,16(sp)
    1230:	8fb3000c 	lw	s3,12(sp)
    1234:	8fb20008 	lw	s2,8(sp)
    1238:	8fb10004 	lw	s1,4(sp)
    123c:	8fb00000 	lw	s0,0(sp)
    1240:	03e00008 	jr	ra
    1244:	27bd0018 	addiu	sp,sp,24

00001248 <IZigzagMatrix>:
 * IZigzagMatrix() performs an inverse zig-zag translation on the
 * input imatrix and places the output in omatrix.
 */
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
    1248:	3c020000 	lui	v0,0x0
    124c:	24420000 	addiu	v0,v0,0
/*
 * IZigzagMatrix() performs an inverse zig-zag translation on the
 * input imatrix and places the output in omatrix.
 */
void
IZigzagMatrix (int *imatrix, int *omatrix)
    1250:	24460100 	addiu	a2,v0,256

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    1254:	8c430000 	lw	v1,0(v0)
    1258:	00000000 	sll	zero,zero,0x0
    125c:	00031880 	sll	v1,v1,0x2
    1260:	00831821 	addu	v1,a0,v1
    1264:	8c630000 	lw	v1,0(v1)
    1268:	00000000 	sll	zero,zero,0x0
    126c:	aca30000 	sw	v1,0(a1)
    1270:	24420004 	addiu	v0,v0,4
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    1274:	1446fff7 	bne	v0,a2,1254 <IZigzagMatrix+0xc>
    1278:	24a50004 	addiu	a1,a1,4
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    
}
}
    127c:	03e00008 	jr	ra
    1280:	00000000 	sll	zero,zero,0x0

00001284 <IQuantize>:
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1284:	24820100 	addiu	v0,a0,256
    1288:	0082102b 	sltu	v0,a0,v0
    128c:	1040000b 	beqz	v0,12bc <IQuantize+0x38>
    1290:	24020040 	addiu	v0,zero,64
    {
      *mptr = *mptr * (*qmatrix);
    1294:	8c860000 	lw	a2,0(a0)
    1298:	8ca30000 	lw	v1,0(a1)
    129c:	00000000 	sll	zero,zero,0x0
    12a0:	00c30018 	mult	a2,v1
    12a4:	00001812 	mflo	v1
    12a8:	ac830000 	sw	v1,0(a0)
      qmatrix++;
    12ac:	24a50004 	addiu	a1,a1,4
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    12b0:	2442ffff 	addiu	v0,v0,-1
    12b4:	1440fff7 	bnez	v0,1294 <IQuantize+0x10>
    12b8:	24840004 	addiu	a0,a0,4
    12bc:	03e00008 	jr	ra
    12c0:	00000000 	sll	zero,zero,0x0

000012c4 <PostshiftIDctMatrix>:
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    12c4:	24820100 	addiu	v0,a0,256
    12c8:	0082102b 	sltu	v0,a0,v0
    12cc:	10400008 	beqz	v0,12f0 <PostshiftIDctMatrix+0x2c>
    12d0:	24020040 	addiu	v0,zero,64
    {
      *mptr += shift;
    12d4:	8c830000 	lw	v1,0(a0)
    12d8:	00000000 	sll	zero,zero,0x0
    12dc:	00651821 	addu	v1,v1,a1
    12e0:	ac830000 	sw	v1,0(a0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    12e4:	2442ffff 	addiu	v0,v0,-1
    12e8:	1440fffa 	bnez	v0,12d4 <PostshiftIDctMatrix+0x10>
    12ec:	24840004 	addiu	a0,a0,4
    12f0:	03e00008 	jr	ra
    12f4:	00000000 	sll	zero,zero,0x0

000012f8 <BoundIDctMatrix>:
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    12f8:	24820100 	addiu	v0,a0,256
    12fc:	0082102b 	sltu	v0,a0,v0
    1300:	1040000e 	beqz	v0,133c <BoundIDctMatrix+0x44>
    1304:	24020040 	addiu	v0,zero,64
    {
      if (*mptr < 0)
    1308:	8c830000 	lw	v1,0(a0)
    130c:	00000000 	sll	zero,zero,0x0
    1310:	04610003 	bgez	v1,1320 <BoundIDctMatrix+0x28>
    1314:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = 0;
    1318:	080004cc 	j	1330 <BoundIDctMatrix+0x38>
    131c:	ac800000 	sw	zero,0(a0)
	}
      else if (*mptr > Bound)
    1320:	00a3182a 	slt	v1,a1,v1
    1324:	10600002 	beqz	v1,1330 <BoundIDctMatrix+0x38>
    1328:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = Bound;
    132c:	ac850000 	sw	a1,0(a0)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1330:	2442ffff 	addiu	v0,v0,-1
    1334:	1440fff4 	bnez	v0,1308 <BoundIDctMatrix+0x10>
    1338:	24840004 	addiu	a0,a0,4
    133c:	03e00008 	jr	ra
    1340:	00000000 	sll	zero,zero,0x0

00001344 <WriteOneBlock>:


void
WriteOneBlock (int *store, char *out_buf, int width, int height,
	       int voffs, int hoffs)
{
    1344:	8fa30010 	lw	v1,16(sp)
    1348:	8fa20014 	lw	v0,20(sp)
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    134c:	24680008 	addiu	t0,v1,8
    1350:	0068402a 	slt	t0,v1,t0
    1354:	11000026 	beqz	t0,13f0 <WriteOneBlock+0xac>
    1358:	0067402a 	slt	t0,v1,a3
    {
      if (i < height)
    135c:	11000024 	beqz	t0,13f0 <WriteOneBlock+0xac>
    1360:	00c04021 	addu	t0,a2,zero
}



void
WriteOneBlock (int *store, char *out_buf, int width, int height,
    1364:	00660018 	mult	v1,a2
    1368:	00004812 	mflo	t1
    136c:	01224821 	addu	t1,t1,v0
    1370:	00a92821 	addu	a1,a1,t1
    1374:	246e0008 	addiu	t6,v1,8
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    1378:	244d0008 	addiu	t5,v0,8
    137c:	004d682a 	slt	t5,v0,t5
	    {
	      if (e < width)
    1380:	080004e4 	j	1390 <WriteOneBlock+0x4c>
    1384:	0046782a 	slt	t7,v0,a2


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    1388:	11200019 	beqz	t1,13f0 <WriteOneBlock+0xac>
    138c:	00a82821 	addu	a1,a1,t0
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    1390:	11a00014 	beqz	t5,13e4 <WriteOneBlock+0xa0>
    1394:	00000000 	sll	zero,zero,0x0
	    {
	      if (e < width)
    1398:	15e00008 	bnez	t7,13bc <WriteOneBlock+0x78>
    139c:	00000000 	sll	zero,zero,0x0
{
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    13a0:	080004fa 	j	13e8 <WriteOneBlock+0xa4>
    13a4:	24630001 	addiu	v1,v1,1
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
	    {
	      if (e < width)
    13a8:	0146602a 	slt	t4,t2,a2
    13ac:	15800006 	bnez	t4,13c8 <WriteOneBlock+0x84>
    13b0:	256b0001 	addiu	t3,t3,1
{
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    13b4:	080004fa 	j	13e8 <WriteOneBlock+0xa4>
    13b8:	24630001 	addiu	v1,v1,1
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
	    {
	      if (e < width)
    13bc:	00a05821 	addu	t3,a1,zero
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    13c0:	00405021 	addu	t2,v0,zero
	    {
	      if (e < width)
    13c4:	24090008 	addiu	t1,zero,8
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    13c8:	8c8c0000 	lw	t4,0(a0)
    13cc:	00000000 	sll	zero,zero,0x0
    13d0:	a16c0000 	sb	t4,0(t3)
    13d4:	24840004 	addiu	a0,a0,4
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    13d8:	2529ffff 	addiu	t1,t1,-1
    13dc:	1520fff2 	bnez	t1,13a8 <WriteOneBlock+0x64>
    13e0:	254a0001 	addiu	t2,t2,1
{
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    13e4:	24630001 	addiu	v1,v1,1
    13e8:	146effe7 	bne	v1,t6,1388 <WriteOneBlock+0x44>
    13ec:	0067482a 	slt	t1,v1,a3
    13f0:	03e00008 	jr	ra
    13f4:	00000000 	sll	zero,zero,0x0

000013f8 <WriteBlock>:
 * ONLY for MCU 1:1:1
 */
void
WriteBlock (int *store, int *p_out_vpos, int *p_out_hpos,
	    unsigned char *p_out_buf)
{
    13f8:	27bdffe0 	addiu	sp,sp,-32
    13fc:	afbf001c 	sw	ra,28(sp)
    1400:	afb00018 	sw	s0,24(sp)
    1404:	00c08021 	addu	s0,a2,zero
  hoffs = *p_out_hpos * DCTSIZE;

  /*
   * Write block
   */
  WriteOneBlock (store,
    1408:	87860000 	lh	a2,0(gp)
    140c:	87820000 	lh	v0,0(gp)
  int voffs, hoffs;

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
    1410:	8ca30000 	lw	v1,0(a1)
    1414:	00000000 	sll	zero,zero,0x0
    1418:	000318c0 	sll	v1,v1,0x3
  hoffs = *p_out_hpos * DCTSIZE;

  /*
   * Write block
   */
  WriteOneBlock (store,
    141c:	afa30010 	sw	v1,16(sp)

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
  hoffs = *p_out_hpos * DCTSIZE;
    1420:	8e030000 	lw	v1,0(s0)
    1424:	00000000 	sll	zero,zero,0x0
    1428:	000318c0 	sll	v1,v1,0x3

  /*
   * Write block
   */
  WriteOneBlock (store,
    142c:	afa30014 	sw	v1,20(sp)
    1430:	00e02821 	addu	a1,a3,zero
    1434:	0c000000 	jal	0 <pgetc>
    1438:	00403821 	addu	a3,v0,zero
   *  Add positions
   */
  *p_out_hpos++;
  *p_out_vpos++;

  if (*p_out_hpos < p_jinfo_MCUWidth)
    143c:	8e030004 	lw	v1,4(s0)
    1440:	8f820000 	lw	v0,0(gp)
    1444:	00000000 	sll	zero,zero,0x0
    1448:	0062102a 	slt	v0,v1,v0
    144c:	14400002 	bnez	v0,1458 <WriteBlock+0x60>
    1450:	00000000 	sll	zero,zero,0x0
    {
      *p_out_vpos--;
    }
  else
    {
      *p_out_hpos = 0;		/* If at end of image (width) */
    1454:	ae000004 	sw	zero,4(s0)
    }
}
    1458:	8fbf001c 	lw	ra,28(sp)
    145c:	8fb00018 	lw	s0,24(sp)
    1460:	03e00008 	jr	ra
    1464:	27bd0020 	addiu	sp,sp,32

00001468 <Write4Blocks>:
 *  4:1:1
 */
void
Write4Blocks (int *store1, int *store2, int *store3, int *store4,
	      int *p_out_vpos, int *p_out_hpos, unsigned char *p_out_buf)
{
    1468:	27bdffc0 	addiu	sp,sp,-64
    146c:	afbf003c 	sw	ra,60(sp)
    1470:	afbe0038 	sw	s8,56(sp)
    1474:	afb70034 	sw	s7,52(sp)
    1478:	afb60030 	sw	s6,48(sp)
    147c:	afb5002c 	sw	s5,44(sp)
    1480:	afb40028 	sw	s4,40(sp)
    1484:	afb30024 	sw	s3,36(sp)
    1488:	afb20020 	sw	s2,32(sp)
    148c:	afb1001c 	sw	s1,28(sp)
    1490:	afb00018 	sw	s0,24(sp)
    1494:	00a0a821 	addu	s5,a1,zero
    1498:	00c0b021 	addu	s6,a2,zero
    149c:	00e0f021 	addu	s8,a3,zero
    14a0:	8fb20050 	lw	s2,80(sp)
    14a4:	8fb00054 	lw	s0,84(sp)
    14a8:	8fb10058 	lw	s1,88(sp)

  /*
   * OX
   * XX
   */
  voffs = *p_out_vpos * DCTSIZE;
    14ac:	8e530000 	lw	s3,0(s2)
    14b0:	00000000 	sll	zero,zero,0x0
    14b4:	001398c0 	sll	s3,s3,0x3
  hoffs = *p_out_hpos * DCTSIZE;
    14b8:	8e140000 	lw	s4,0(s0)
    14bc:	00000000 	sll	zero,zero,0x0
    14c0:	0014a0c0 	sll	s4,s4,0x3
  WriteOneBlock (store1, p_out_buf,
    14c4:	87860000 	lh	a2,0(gp)
    14c8:	87870000 	lh	a3,0(gp)
    14cc:	afb30010 	sw	s3,16(sp)
    14d0:	afb40014 	sw	s4,20(sp)
    14d4:	0c000000 	jal	0 <pgetc>
    14d8:	02202821 	addu	a1,s1,zero

  /*
   * XO
   * XX
   */
  hoffs += DCTSIZE;
    14dc:	26970008 	addiu	s7,s4,8
  WriteOneBlock (store2, p_out_buf,
    14e0:	87860000 	lh	a2,0(gp)
    14e4:	87870000 	lh	a3,0(gp)
    14e8:	afb30010 	sw	s3,16(sp)
    14ec:	afb70014 	sw	s7,20(sp)
    14f0:	02a02021 	addu	a0,s5,zero
    14f4:	0c000000 	jal	0 <pgetc>
    14f8:	02202821 	addu	a1,s1,zero

  /*
   * XX
   * OX
   */
  voffs += DCTSIZE;
    14fc:	26730008 	addiu	s3,s3,8
  hoffs -= DCTSIZE;
  WriteOneBlock (store3, p_out_buf,
    1500:	87860000 	lh	a2,0(gp)
    1504:	87870000 	lh	a3,0(gp)
    1508:	afb30010 	sw	s3,16(sp)
    150c:	afb40014 	sw	s4,20(sp)
    1510:	02c02021 	addu	a0,s6,zero
    1514:	0c000000 	jal	0 <pgetc>
    1518:	02202821 	addu	a1,s1,zero
  /*
   * XX
   * XO
   */
  hoffs += DCTSIZE;
  WriteOneBlock (store4,
    151c:	87860000 	lh	a2,0(gp)
    1520:	87870000 	lh	a3,0(gp)
    1524:	afb30010 	sw	s3,16(sp)
    1528:	afb70014 	sw	s7,20(sp)
    152c:	03c02021 	addu	a0,s8,zero
    1530:	0c000000 	jal	0 <pgetc>
    1534:	02202821 	addu	a1,s1,zero
		 voffs, hoffs);

  /*
   * Add positions
   */
  *p_out_hpos = *p_out_hpos + 2;
    1538:	8e020000 	lw	v0,0(s0)
    153c:	00000000 	sll	zero,zero,0x0
    1540:	24420002 	addiu	v0,v0,2
    1544:	ae020000 	sw	v0,0(s0)
  *p_out_vpos = *p_out_vpos + 2;
    1548:	8e420000 	lw	v0,0(s2)
    154c:	00000000 	sll	zero,zero,0x0
    1550:	24430002 	addiu	v1,v0,2
    1554:	ae430000 	sw	v1,0(s2)


  if (*p_out_hpos < p_jinfo_MCUWidth)
    1558:	8e040000 	lw	a0,0(s0)
    155c:	8f830000 	lw	v1,0(gp)
    1560:	00000000 	sll	zero,zero,0x0
    1564:	0083182a 	slt	v1,a0,v1
    1568:	10600003 	beqz	v1,1578 <Write4Blocks+0x110>
    156c:	00000000 	sll	zero,zero,0x0
    {
      *p_out_vpos = *p_out_vpos - 2;
    1570:	0800055f 	j	157c <Write4Blocks+0x114>
    1574:	ae420000 	sw	v0,0(s2)
    }
  else
    {
      *p_out_hpos = 0;		/* If at end of image (width) */
    1578:	ae000000 	sw	zero,0(s0)
    }
}
    157c:	8fbf003c 	lw	ra,60(sp)
    1580:	8fbe0038 	lw	s8,56(sp)
    1584:	8fb70034 	lw	s7,52(sp)
    1588:	8fb60030 	lw	s6,48(sp)
    158c:	8fb5002c 	lw	s5,44(sp)
    1590:	8fb40028 	lw	s4,40(sp)
    1594:	8fb30024 	lw	s3,36(sp)
    1598:	8fb20020 	lw	s2,32(sp)
    159c:	8fb1001c 	lw	s1,28(sp)
    15a0:	8fb00018 	lw	s0,24(sp)
    15a4:	03e00008 	jr	ra
    15a8:	27bd0040 	addiu	sp,sp,64

000015ac <YuvToRgb>:

/*
 * Transform from Yuv into RGB
 */
void
YuvToRgb (int p, int *y_buf, int *u_buf, int *v_buf)
    15ac:	00041200 	sll	v0,a0,0x8
    15b0:	00042280 	sll	a0,a0,0xa
    15b4:	00822023 	subu	a0,a0,v0
    15b8:	3c0a0000 	lui	t2,0x0
    15bc:	254a0000 	addiu	t2,t2,0
    15c0:	01445021 	addu	t2,t2,a0
    15c4:	00002021 	addu	a0,zero,zero
{
  int r, g, b;
  int y, u, v;
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    15c8:	240c0100 	addiu	t4,zero,256

/*
 * Transform from Yuv into RGB
 */
void
YuvToRgb (int p, int *y_buf, int *u_buf, int *v_buf)
    15cc:	00c41021 	addu	v0,a2,a0
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
    15d0:	8c420000 	lw	v0,0(v0)
    15d4:	00000000 	sll	zero,zero,0x0
    15d8:	2442ff80 	addiu	v0,v0,-128

/*
 * Transform from Yuv into RGB
 */
void
YuvToRgb (int p, int *y_buf, int *u_buf, int *v_buf)
    15dc:	00e41821 	addu	v1,a3,a0

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;
    15e0:	8c630000 	lw	v1,0(v1)
    15e4:	00000000 	sll	zero,zero,0x0
    15e8:	2463ff80 	addiu	v1,v1,-128

/*
 * Transform from Yuv into RGB
 */
void
YuvToRgb (int p, int *y_buf, int *u_buf, int *v_buf)
    15ec:	00a44021 	addu	t0,a1,a0
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    15f0:	8d080000 	lw	t0,0(t0)
    15f4:	00000000 	sll	zero,zero,0x0
    15f8:	00084200 	sll	t0,t0,0x8
    15fc:	25080080 	addiu	t0,t0,128
    1600:	000348c0 	sll	t1,v1,0x3
    1604:	00035940 	sll	t3,v1,0x5
    1608:	01694823 	subu	t1,t3,t1
    160c:	00095900 	sll	t3,t1,0x4
    1610:	01695823 	subu	t3,t3,t1
    1614:	01635823 	subu	t3,t3,v1
    1618:	010b5821 	addu	t3,t0,t3
    161c:	000b5a03 	sra	t3,t3,0x8
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    1620:	00024880 	sll	t1,v0,0x2
    1624:	00026900 	sll	t5,v0,0x4
    1628:	01a94823 	subu	t1,t5,t1
    162c:	00494823 	subu	t1,v0,t1
    1630:	000948c0 	sll	t1,t1,0x3
    1634:	01094821 	addu	t1,t0,t1
    1638:	00036880 	sll	t5,v1,0x2
    163c:	00037100 	sll	t6,v1,0x4
    1640:	01cd6823 	subu	t5,t6,t5
    1644:	01a31821 	addu	v1,t5,v1
    1648:	000368c0 	sll	t5,v1,0x3
    164c:	006d1823 	subu	v1,v1,t5
    1650:	00031840 	sll	v1,v1,0x1
    1654:	01231821 	addu	v1,t1,v1
    1658:	00031a03 	sra	v1,v1,0x8
      b = (y * 256 + u * 454 + 128) >> 8;
    165c:	000248c0 	sll	t1,v0,0x3
    1660:	00026980 	sll	t5,v0,0x6
    1664:	01a94823 	subu	t1,t5,t1
    1668:	01224821 	addu	t1,t1,v0
    166c:	00094880 	sll	t1,t1,0x2
    1670:	01221023 	subu	v0,t1,v0
    1674:	00021040 	sll	v0,v0,0x1
    1678:	01021021 	addu	v0,t0,v0
    167c:	01604821 	addu	t1,t3,zero
    1680:	296b0100 	slti	t3,t3,256
    1684:	15600002 	bnez	t3,1690 <YuvToRgb+0xe4>
    1688:	00021203 	sra	v0,v0,0x8
    168c:	240900ff 	addiu	t1,zero,255
    1690:	00604021 	addu	t0,v1,zero
    1694:	28630100 	slti	v1,v1,256
    1698:	14600002 	bnez	v1,16a4 <YuvToRgb+0xf8>
    169c:	00401821 	addu	v1,v0,zero
    16a0:	240800ff 	addiu	t0,zero,255
    16a4:	28420100 	slti	v0,v0,256
    16a8:	14400002 	bnez	v0,16b4 <YuvToRgb+0x108>
    16ac:	00000000 	sll	zero,zero,0x0
    16b0:	240300ff 	addiu	v1,zero,255
      if (b < 0)
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
    16b4:	05210002 	bgez	t1,16c0 <YuvToRgb+0x114>
    16b8:	01401021 	addu	v0,t2,zero
    16bc:	00004821 	addu	t1,zero,zero
      rgb_buf[p][1][i] = g;
    16c0:	05010002 	bgez	t0,16cc <YuvToRgb+0x120>
    16c4:	ac490000 	sw	t1,0(v0)
    16c8:	00004021 	addu	t0,zero,zero
      rgb_buf[p][2][i] = b;
    16cc:	04610002 	bgez	v1,16d8 <YuvToRgb+0x12c>
    16d0:	ac480100 	sw	t0,256(v0)
    16d4:	00001821 	addu	v1,zero,zero
    16d8:	ac430200 	sw	v1,512(v0)
    16dc:	24840004 	addiu	a0,a0,4
{
  int r, g, b;
  int y, u, v;
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    16e0:	148cffba 	bne	a0,t4,15cc <YuvToRgb+0x20>
    16e4:	254a0004 	addiu	t2,t2,4
      rgb_buf[p][0][i] = r;
      rgb_buf[p][1][i] = g;
      rgb_buf[p][2][i] = b;

    }
}
    16e8:	03e00008 	jr	ra
    16ec:	00000000 	sll	zero,zero,0x0

000016f0 <buf_getb>:
/*
 * buf_getb() gets a bit from the read stream.
 */
int
buf_getb ()
{
    16f0:	27bdffe8 	addiu	sp,sp,-24
    16f4:	afbf0014 	sw	ra,20(sp)
  if (read_position < 0)
    16f8:	8f82003c 	lw	v0,60(gp)
    16fc:	00000000 	sll	zero,zero,0x0
    1700:	04410006 	bgez	v0,171c <buf_getb+0x2c>
    1704:	00000000 	sll	zero,zero,0x0
    {
      current_read_byte = pgetc ();
    1708:	0c000000 	jal	0 <pgetc>
    170c:	00000000 	sll	zero,zero,0x0
    1710:	af820010 	sw	v0,16(gp)
      read_position = 7;
    1714:	24020007 	addiu	v0,zero,7
    1718:	af82003c 	sw	v0,60(gp)
    }

  if (current_read_byte & bit_set_mask[read_position--])
    171c:	8f83003c 	lw	v1,60(gp)
    1720:	00000000 	sll	zero,zero,0x0
    1724:	00032080 	sll	a0,v1,0x2
    1728:	3c020000 	lui	v0,0x0
    172c:	24420000 	addiu	v0,v0,0
    1730:	00821021 	addu	v0,a0,v0
    1734:	8c440000 	lw	a0,0(v0)
    1738:	8f820010 	lw	v0,16(gp)
    173c:	00000000 	sll	zero,zero,0x0
    1740:	00821024 	and	v0,a0,v0
    1744:	2463ffff 	addiu	v1,v1,-1
    1748:	af83003c 	sw	v1,60(gp)
    {
      return (1);
    }
  return (0);
}
    174c:	0002102b 	sltu	v0,zero,v0
    1750:	8fbf0014 	lw	ra,20(sp)
    1754:	00000000 	sll	zero,zero,0x0
    1758:	03e00008 	jr	ra
    175c:	27bd0018 	addiu	sp,sp,24

00001760 <buf_getv>:
 * megetv() gets n bits from the read stream and returns it.
 *
 */
int
buf_getv (int n)
{
    1760:	27bdffe0 	addiu	sp,sp,-32
    1764:	afbf001c 	sw	ra,28(sp)
    1768:	afb20018 	sw	s2,24(sp)
    176c:	afb10014 	sw	s1,20(sp)
    1770:	afb00010 	sw	s0,16(sp)
  int p, rv;

  n--;
    1774:	2492ffff 	addiu	s2,a0,-1
  p = n - read_position;
    1778:	8f82003c 	lw	v0,60(gp)
    177c:	00000000 	sll	zero,zero,0x0
    1780:	02428823 	subu	s1,s2,v0
  while (p > 0)
    1784:	1a200026 	blez	s1,1820 <buf_getv+0xc0>
    1788:	00000000 	sll	zero,zero,0x0
    {
      if (read_position > 23)
    178c:	28420018 	slti	v0,v0,24
    1790:	14400018 	bnez	v0,17f4 <buf_getv+0x94>
    1794:	00000000 	sll	zero,zero,0x0
    1798:	080005eb 	j	17ac <buf_getv+0x4c>
    179c:	00000000 	sll	zero,zero,0x0
    17a0:	28420018 	slti	v0,v0,24
    17a4:	14400013 	bnez	v0,17f4 <buf_getv+0x94>
    17a8:	00000000 	sll	zero,zero,0x0
	{			/* If byte buffer contains almost entire word */
	  rv = (current_read_byte << p);	/* Manipulate buffer */
    17ac:	8f900010 	lw	s0,16(gp)
	  current_read_byte = pgetc ();	/* Change read bytes */
    17b0:	0c000000 	jal	0 <pgetc>
    17b4:	02308004 	sllv	s0,s0,s1
    17b8:	af820010 	sw	v0,16(gp)

	  rv |= (current_read_byte >> (8 - p));
	  read_position = 7 - p;
    17bc:	24030007 	addiu	v1,zero,7
    17c0:	00711823 	subu	v1,v1,s1
    17c4:	af83003c 	sw	v1,60(gp)
      if (read_position > 23)
	{			/* If byte buffer contains almost entire word */
	  rv = (current_read_byte << p);	/* Manipulate buffer */
	  current_read_byte = pgetc ();	/* Change read bytes */

	  rv |= (current_read_byte >> (8 - p));
    17c8:	24030008 	addiu	v1,zero,8
    17cc:	00718823 	subu	s1,v1,s1
    17d0:	02221006 	srlv	v0,v0,s1
    17d4:	00501025 	or	v0,v0,s0
	  read_position = 7 - p;
	  return (rv & lmask[n]);
    17d8:	00129080 	sll	s2,s2,0x2
    17dc:	3c030000 	lui	v1,0x0
    17e0:	24630000 	addiu	v1,v1,0
    17e4:	02439021 	addu	s2,s2,v1
    17e8:	8e430000 	lw	v1,0(s2)
    17ec:	08000620 	j	1880 <buf_getv+0x120>
    17f0:	00431024 	and	v0,v0,v1
	  /* Can return pending residual val */
	}
      current_read_byte = (current_read_byte << 8) | pgetc ();
    17f4:	8f900010 	lw	s0,16(gp)
    17f8:	0c000000 	jal	0 <pgetc>
    17fc:	00108200 	sll	s0,s0,0x8
    1800:	00501025 	or	v0,v0,s0
    1804:	af820010 	sw	v0,16(gp)
      read_position += 8;	/* else shift in new information */
    1808:	8f82003c 	lw	v0,60(gp)
    180c:	00000000 	sll	zero,zero,0x0
    1810:	24420008 	addiu	v0,v0,8
      p -= 8;
    1814:	2631fff8 	addiu	s1,s1,-8
{
  int p, rv;

  n--;
  p = n - read_position;
  while (p > 0)
    1818:	1e20ffe1 	bgtz	s1,17a0 <buf_getv+0x40>
    181c:	af82003c 	sw	v0,60(gp)
      current_read_byte = (current_read_byte << 8) | pgetc ();
      read_position += 8;	/* else shift in new information */
      p -= 8;
    }

  if (!p)
    1820:	1620000b 	bnez	s1,1850 <buf_getv+0xf0>
    1824:	00118823 	negu	s1,s1
    {				/* If position is zero */
      read_position = -1;
    1828:	2402ffff 	addiu	v0,zero,-1
    182c:	af82003c 	sw	v0,60(gp)
      /* Can return current byte */
      return (current_read_byte & lmask[n]);
    1830:	00129080 	sll	s2,s2,0x2
    1834:	3c020000 	lui	v0,0x0
    1838:	24420000 	addiu	v0,v0,0
    183c:	02429021 	addu	s2,s2,v0
    1840:	8e430000 	lw	v1,0(s2)
    1844:	8f820010 	lw	v0,16(gp)
    1848:	08000620 	j	1880 <buf_getv+0x120>
    184c:	00621024 	and	v0,v1,v0
    }

  p = -p;
  /* Else reverse position and shift */
  read_position = p - 1;
    1850:	2622ffff 	addiu	v0,s1,-1
    1854:	af82003c 	sw	v0,60(gp)
  return ((current_read_byte >> p) & lmask[n]);
    1858:	8f820010 	lw	v0,16(gp)
    185c:	00000000 	sll	zero,zero,0x0
    1860:	02228806 	srlv	s1,v0,s1
    1864:	00129080 	sll	s2,s2,0x2
    1868:	3c020000 	lui	v0,0x0
    186c:	24420000 	addiu	v0,v0,0
    1870:	02429021 	addu	s2,s2,v0
    1874:	8e430000 	lw	v1,0(s2)
    1878:	00000000 	sll	zero,zero,0x0
    187c:	02231024 	and	v0,s1,v1
}
    1880:	8fbf001c 	lw	ra,28(sp)
    1884:	8fb20018 	lw	s2,24(sp)
    1888:	8fb10014 	lw	s1,20(sp)
    188c:	8fb00010 	lw	s0,16(sp)
    1890:	03e00008 	jr	ra
    1894:	27bd0020 	addiu	sp,sp,32

00001898 <huff_make_dhuff_tb>:
 */
int
huff_make_dhuff_tb (int *p_xhtbl_bits, int p_dhtbl_ml,
		    int *p_dhtbl_maxcode, int *p_dhtbl_mincode,
		    int *p_dhtbl_valptr)
{
    1898:	27bdf7f8 	addiu	sp,sp,-2056
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
	  p_dhtbl_ml = l;
	  p++;
    189c:	00805821 	addu	t3,a0,zero
  int lastp;

  /*
   * Get size
   */
  for (p = 0, i = 1; i < 17; i++)
    18a0:	24090001 	addiu	t1,zero,1
    18a4:	00002821 	addu	a1,zero,zero
    18a8:	08000635 	j	18d4 <huff_make_dhuff_tb+0x3c>
    18ac:	240c0011 	addiu	t4,zero,17
    {
      for (j = 1; j <= p_xhtbl_bits[i]; j++)
	{
	  huffsize[p++] = i;
    18b0:	ac690000 	sw	t1,0(v1)
    18b4:	24a50001 	addiu	a1,a1,1
  /*
   * Get size
   */
  for (p = 0, i = 1; i < 17; i++)
    {
      for (j = 1; j <= p_xhtbl_bits[i]; j++)
    18b8:	24420001 	addiu	v0,v0,1
    18bc:	0142402a 	slt	t0,t2,v0
    18c0:	1100fffb 	beqz	t0,18b0 <huff_make_dhuff_tb+0x18>
    18c4:	24630004 	addiu	v1,v1,4
  int lastp;

  /*
   * Get size
   */
  for (p = 0, i = 1; i < 17; i++)
    18c8:	25290001 	addiu	t1,t1,1
    18cc:	112c000a 	beq	t1,t4,18f8 <huff_make_dhuff_tb+0x60>
    18d0:	24840004 	addiu	a0,a0,4
    {
      for (j = 1; j <= p_xhtbl_bits[i]; j++)
    18d4:	8c820004 	lw	v0,4(a0)
    18d8:	00000000 	sll	zero,zero,0x0
    18dc:	1840fffa 	blez	v0,18c8 <huff_make_dhuff_tb+0x30>
    18e0:	00000000 	sll	zero,zero,0x0
    18e4:	00405021 	addu	t2,v0,zero

/*
 * Create Table for decoding
 */
int
huff_make_dhuff_tb (int *p_xhtbl_bits, int p_dhtbl_ml,
    18e8:	00051880 	sll	v1,a1,0x2
    18ec:	03a31821 	addu	v1,sp,v1
    18f0:	0800062c 	j	18b0 <huff_make_dhuff_tb+0x18>
    18f4:	24020001 	addiu	v0,zero,1
	{
	  huffsize[p++] = i;
	}
    }

  huffsize[p] = 0;
    18f8:	00052880 	sll	a1,a1,0x2
    18fc:	03a52821 	addu	a1,sp,a1
    1900:	aca00000 	sw	zero,0(a1)
  lastp = p;

  p = 0;
  code = 0;
  size = huffsize[0];
    1904:	8fa50000 	lw	a1,0(sp)
    1908:	27a90404 	addiu	t1,sp,1028
    190c:	27a80004 	addiu	t0,sp,4

  huffsize[p] = 0;
  lastp = p;

  p = 0;
  code = 0;
    1910:	00001821 	addu	v1,zero,zero
    }

  huffsize[p] = 0;
  lastp = p;

  p = 0;
    1914:	0800064a 	j	1928 <huff_make_dhuff_tb+0x90>
    1918:	00005021 	addu	t2,zero,zero
    {
      do
	{
	  huffcode[p++] = code++;
	}
      while ((huffsize[p] == size) && (p < 257));
    191c:	00802821 	addu	a1,a0,zero
  huffsize[p] = 0;
  lastp = p;

  p = 0;
  code = 0;
  size = huffsize[0];
    1920:	25290004 	addiu	t1,t1,4
    1924:	25080004 	addiu	t0,t0,4
  while (1)
    {
      do
	{
	  huffcode[p++] = code++;
    1928:	ad230000 	sw	v1,0(t1)
    192c:	254a0001 	addiu	t2,t2,1
	}
      while ((huffsize[p] == size) && (p < 257));
    1930:	8d040000 	lw	a0,0(t0)
    1934:	00000000 	sll	zero,zero,0x0
    1938:	14850004 	bne	a0,a1,194c <huff_make_dhuff_tb+0xb4>
    193c:	24630001 	addiu	v1,v1,1
    1940:	29420101 	slti	v0,t2,257
    1944:	1440fff5 	bnez	v0,191c <huff_make_dhuff_tb+0x84>
    1948:	00000000 	sll	zero,zero,0x0
      /* Overflow Detection */
      if (!huffsize[p])
    194c:	10800009 	beqz	a0,1974 <huff_make_dhuff_tb+0xdc>
    1950:	00a01021 	addu	v0,a1,zero
	}
      do
	{
	  /* Shift next code to expand prefix. */
	  code <<= 1;
	  size++;
    1954:	24420001 	addiu	v0,v0,1
	}
      while (huffsize[p] != size);
    1958:	1482fffe 	bne	a0,v0,1954 <huff_make_dhuff_tb+0xbc>
    195c:	00031840 	sll	v1,v1,0x1

/*
 * Create Table for decoding
 */
int
huff_make_dhuff_tb (int *p_xhtbl_bits, int p_dhtbl_ml,
    1960:	24a20001 	addiu	v0,a1,1
    1964:	00052827 	nor	a1,zero,a1
    1968:	00a42821 	addu	a1,a1,a0
    196c:	08000648 	j	1920 <huff_make_dhuff_tb+0x88>
    1970:	00452821 	addu	a1,v0,a1
    1974:	00c02021 	addu	a0,a2,zero
    1978:	8fa50818 	lw	a1,2072(sp)
	{
	  huffcode[p++] = code++;
	}
      while ((huffsize[p] == size) && (p < 257));
      /* Overflow Detection */
      if (!huffsize[p])
    197c:	24030001 	addiu	v1,zero,1
    1980:	00004021 	addu	t0,zero,zero
    1984:	24020001 	addiu	v0,zero,1

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
    1988:	240cffff 	addiu	t4,zero,-1
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    198c:	240a0011 	addiu	t2,zero,17
    {
      if (p_xhtbl_bits[l] == 0)
    1990:	8d690004 	lw	t1,4(t3)
    1994:	00000000 	sll	zero,zero,0x0
    1998:	15200003 	bnez	t1,19a8 <huff_make_dhuff_tb+0x110>
    199c:	00000000 	sll	zero,zero,0x0
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
    19a0:	0800067b 	j	19ec <huff_make_dhuff_tb+0x154>
    19a4:	ac8c0004 	sw	t4,4(a0)
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    19a8:	aca80004 	sw	t0,4(a1)
	  p_dhtbl_mincode[l] = huffcode[p];
    19ac:	00081080 	sll	v0,t0,0x2
    19b0:	03a21021 	addu	v0,sp,v0
    19b4:	8c420404 	lw	v0,1028(v0)
    19b8:	00000000 	sll	zero,zero,0x0
    19bc:	ace20004 	sw	v0,4(a3)
	  p += p_xhtbl_bits[l] - 1;
    19c0:	8d620004 	lw	v0,4(t3)
    19c4:	00000000 	sll	zero,zero,0x0
    19c8:	2442ffff 	addiu	v0,v0,-1
    19cc:	00484021 	addu	t0,v0,t0
	  p_dhtbl_maxcode[l] = huffcode[p];
    19d0:	00081080 	sll	v0,t0,0x2
    19d4:	03a21021 	addu	v0,sp,v0
    19d8:	8c420404 	lw	v0,1028(v0)
    19dc:	00000000 	sll	zero,zero,0x0
    19e0:	ac820004 	sw	v0,4(a0)
	  p_dhtbl_ml = l;
	  p++;
    19e4:	25080001 	addiu	t0,t0,1
    19e8:	00601021 	addu	v0,v1,zero
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    19ec:	24630001 	addiu	v1,v1,1
    19f0:	256b0004 	addiu	t3,t3,4
    19f4:	24840004 	addiu	a0,a0,4
    19f8:	24a50004 	addiu	a1,a1,4
    19fc:	146affe4 	bne	v1,t2,1990 <huff_make_dhuff_tb+0xf8>
    1a00:	24e70004 	addiu	a3,a3,4
	  p_dhtbl_maxcode[l] = huffcode[p];
	  p_dhtbl_ml = l;
	  p++;
	}
    }
  p_dhtbl_maxcode[p_dhtbl_ml]++;
    1a04:	00021880 	sll	v1,v0,0x2
    1a08:	00c33021 	addu	a2,a2,v1
    1a0c:	8cc30000 	lw	v1,0(a2)
    1a10:	00000000 	sll	zero,zero,0x0
    1a14:	24630001 	addiu	v1,v1,1
    1a18:	acc30000 	sw	v1,0(a2)
  return p_dhtbl_ml;
}
    1a1c:	03e00008 	jr	ra
    1a20:	27bd0808 	addiu	sp,sp,2056

00001a24 <DecodeHuffman>:
 *  
 */
int
DecodeHuffman (int *Xhuff_huffval, int Dhuff_ml,
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
    1a24:	27bdffd0 	addiu	sp,sp,-48
    1a28:	afbf002c 	sw	ra,44(sp)
    1a2c:	afb50028 	sw	s5,40(sp)
    1a30:	afb40024 	sw	s4,36(sp)
    1a34:	afb30020 	sw	s3,32(sp)
    1a38:	afb2001c 	sw	s2,28(sp)
    1a3c:	afb10018 	sw	s1,24(sp)
    1a40:	afb00014 	sw	s0,20(sp)
    1a44:	0080a821 	addu	s5,a0,zero
    1a48:	00a09821 	addu	s3,a1,zero
    1a4c:	00c09021 	addu	s2,a2,zero
  int code, l, p;

  code = buf_getb ();
    1a50:	0c000000 	jal	0 <pgetc>
    1a54:	00e0a021 	addu	s4,a3,zero
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    1a58:	8e430004 	lw	v1,4(s2)
    1a5c:	00000000 	sll	zero,zero,0x0
    1a60:	0062182a 	slt	v1,v1,v0
    1a64:	1060000f 	beqz	v1,1aa4 <DecodeHuffman+0x80>
    1a68:	24110008 	addiu	s1,zero,8
    1a6c:	0800069e 	j	1a78 <DecodeHuffman+0x54>
    1a70:	00000000 	sll	zero,zero,0x0
    1a74:	00808821 	addu	s1,a0,zero
    {
      code = (code << 1) + buf_getb ();
    1a78:	0c000000 	jal	0 <pgetc>
    1a7c:	00028040 	sll	s0,v0,0x1
    1a80:	02021021 	addu	v0,s0,v0

/*
 *  
 */
int
DecodeHuffman (int *Xhuff_huffval, int Dhuff_ml,
    1a84:	02511821 	addu	v1,s2,s1
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
  int code, l, p;

  code = buf_getb ();
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    1a88:	8c630000 	lw	v1,0(v1)
    1a8c:	00000000 	sll	zero,zero,0x0
    1a90:	0062182a 	slt	v1,v1,v0
    1a94:	1460fff7 	bnez	v1,1a74 <DecodeHuffman+0x50>
    1a98:	26240004 	addiu	a0,s1,4
    {
      code = (code << 1) + buf_getb ();
    }

  if (code < Dhuff_maxcode[Dhuff_ml])
    1a9c:	080006ab 	j	1aac <DecodeHuffman+0x88>
    1aa0:	00139880 	sll	s3,s3,0x2
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
  int code, l, p;

  code = buf_getb ();
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    1aa4:	24110004 	addiu	s1,zero,4
    {
      code = (code << 1) + buf_getb ();
    }

  if (code < Dhuff_maxcode[Dhuff_ml])
    1aa8:	00139880 	sll	s3,s3,0x2
    1aac:	02539021 	addu	s2,s2,s3
    1ab0:	8e430000 	lw	v1,0(s2)
    1ab4:	00000000 	sll	zero,zero,0x0
    1ab8:	0043182a 	slt	v1,v0,v1
    1abc:	10600017 	beqz	v1,1b1c <DecodeHuffman+0xf8>
    1ac0:	3c040000 	lui	a0,0x0
    {
      p = Dhuff_valptr[l] + code - Dhuff_mincode[l];
    1ac4:	8fa30040 	lw	v1,64(sp)
    1ac8:	00000000 	sll	zero,zero,0x0
    1acc:	00711821 	addu	v1,v1,s1
    1ad0:	02918821 	addu	s1,s4,s1
    1ad4:	8c700000 	lw	s0,0(v1)
    1ad8:	00000000 	sll	zero,zero,0x0
    1adc:	00501021 	addu	v0,v0,s0
    1ae0:	8e230000 	lw	v1,0(s1)
    1ae4:	00000000 	sll	zero,zero,0x0
    1ae8:	00431023 	subu	v0,v0,v1
      return (Xhuff_huffval[p]);
    1aec:	00021080 	sll	v0,v0,0x2
    1af0:	02a2a821 	addu	s5,s5,v0
      main_result++;
      printf ("Huffman read error\n");
      EXIT;
    }

}
    1af4:	8ea20000 	lw	v0,0(s5)
    1af8:	8fbf002c 	lw	ra,44(sp)
    1afc:	8fb50028 	lw	s5,40(sp)
    1b00:	8fb40024 	lw	s4,36(sp)
    1b04:	8fb30020 	lw	s3,32(sp)
    1b08:	8fb2001c 	lw	s2,28(sp)
    1b0c:	8fb10018 	lw	s1,24(sp)
    1b10:	8fb00014 	lw	s0,20(sp)
    1b14:	03e00008 	jr	ra
    1b18:	27bd0030 	addiu	sp,sp,48
      p = Dhuff_valptr[l] + code - Dhuff_mincode[l];
      return (Xhuff_huffval[p]);
    }
  else
    {
      main_result++;
    1b1c:	8f820000 	lw	v0,0(gp)
    1b20:	00000000 	sll	zero,zero,0x0
    1b24:	24420001 	addiu	v0,v0,1
    1b28:	af820000 	sw	v0,0(gp)
      printf ("Huffman read error\n");
    1b2c:	0c000000 	jal	0 <pgetc>
    1b30:	24840000 	addiu	a0,a0,0
      EXIT;
    1b34:	0c000000 	jal	0 <pgetc>
    1b38:	00002021 	addu	a0,zero,zero

00001b3c <DecodeHuffMCU>:
/*
 * Decode one MCU
 */
void
DecodeHuffMCU (int *out_buf, int num_cmp)
{
    1b3c:	27bdffb8 	addiu	sp,sp,-72
    1b40:	afbf0044 	sw	ra,68(sp)
    1b44:	afbe0040 	sw	s8,64(sp)
    1b48:	afb7003c 	sw	s7,60(sp)
    1b4c:	afb60038 	sw	s6,56(sp)
    1b50:	afb50034 	sw	s5,52(sp)
    1b54:	afb40030 	sw	s4,48(sp)
    1b58:	afb3002c 	sw	s3,44(sp)
    1b5c:	afb20028 	sw	s2,40(sp)
    1b60:	afb10024 	sw	s1,36(sp)
    1b64:	afb00020 	sw	s0,32(sp)
    1b68:	0080f021 	addu	s8,a0,zero
  int s, diff, tbl_no, *mptr, k, n, r;

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
    1b6c:	27820000 	addiu	v0,gp,0
    1b70:	00451021 	addu	v0,v0,a1
    1b74:	80520000 	lb	s2,0(v0)
    1b78:	00000000 	sll	zero,zero,0x0
  s = DecodeHuffman (&p_jinfo_dc_xhuff_tbl_huffval[tbl_no][0],
    1b7c:	00121080 	sll	v0,s2,0x2
    1b80:	00129a80 	sll	s3,s2,0xa
    1b84:	00539821 	addu	s3,v0,s3
		     p_jinfo_dc_dhuff_tbl_ml[tbl_no],
		     &p_jinfo_dc_dhuff_tbl_maxcode[tbl_no][0],
    1b88:	00128900 	sll	s1,s2,0x4
    1b8c:	001219c0 	sll	v1,s2,0x7
    1b90:	02238821 	addu	s1,s1,v1

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
  s = DecodeHuffman (&p_jinfo_dc_xhuff_tbl_huffval[tbl_no][0],
    1b94:	27830000 	addiu	v1,gp,0
    1b98:	00621021 	addu	v0,v1,v0
    1b9c:	8c450000 	lw	a1,0(v0)
    1ba0:	3c020000 	lui	v0,0x0
    1ba4:	24420000 	addiu	v0,v0,0
    1ba8:	00511021 	addu	v0,v0,s1
    1bac:	afa20010 	sw	v0,16(sp)
    1bb0:	3c040000 	lui	a0,0x0
    1bb4:	24840000 	addiu	a0,a0,0
    1bb8:	00932021 	addu	a0,a0,s3
    1bbc:	3c060000 	lui	a2,0x0
    1bc0:	24c60000 	addiu	a2,a2,0
    1bc4:	00d13021 	addu	a2,a2,s1
    1bc8:	3c070000 	lui	a3,0x0
    1bcc:	24e70000 	addiu	a3,a3,0
    1bd0:	0c000000 	jal	0 <pgetc>
    1bd4:	00f13821 	addu	a3,a3,s1
		     p_jinfo_dc_dhuff_tbl_ml[tbl_no],
		     &p_jinfo_dc_dhuff_tbl_maxcode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_mincode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_valptr[tbl_no][0]);

  if (s)
    1bd8:	10400017 	beqz	v0,1c38 <DecodeHuffMCU+0xfc>
    1bdc:	00408021 	addu	s0,v0,zero
    {
      diff = buf_getv (s);
    1be0:	0c000000 	jal	0 <pgetc>
    1be4:	00402021 	addu	a0,v0,zero
      s--;
    1be8:	2610ffff 	addiu	s0,s0,-1
      if ((diff & bit_set_mask[s]) == 0)
    1bec:	00102080 	sll	a0,s0,0x2
    1bf0:	3c030000 	lui	v1,0x0
    1bf4:	24630000 	addiu	v1,v1,0
    1bf8:	00831821 	addu	v1,a0,v1
    1bfc:	8c630000 	lw	v1,0(v1)
    1c00:	00000000 	sll	zero,zero,0x0
    1c04:	00431824 	and	v1,v0,v1
    1c08:	14600007 	bnez	v1,1c28 <DecodeHuffMCU+0xec>
    1c0c:	3c030000 	lui	v1,0x0
	{
	  diff |= extend_mask[s];
    1c10:	246356bc 	addiu	v1,v1,22204
    1c14:	00838021 	addu	s0,a0,v1
    1c18:	8e030000 	lw	v1,0(s0)
    1c1c:	00000000 	sll	zero,zero,0x0
    1c20:	00431025 	or	v0,v0,v1
	  diff++;
    1c24:	24420001 	addiu	v0,v0,1
	}

      diff += *out_buf;		/* Change the last DC */
    1c28:	8fc30000 	lw	v1,0(s8)
    1c2c:	00000000 	sll	zero,zero,0x0
    1c30:	00621021 	addu	v0,v1,v0
      *out_buf = diff;
    1c34:	afc20000 	sw	v0,0(s8)

  /*
   * Decode AC
   */
  /* Set all values to zero */
  for (mptr = out_buf + 1; mptr < out_buf + DCTSIZE2; mptr++)
    1c38:	27c20004 	addiu	v0,s8,4
    1c3c:	27c30100 	addiu	v1,s8,256
    1c40:	0043182b 	sltu	v1,v0,v1
    1c44:	10600005 	beqz	v1,1c5c <DecodeHuffMCU+0x120>
    1c48:	27c30100 	addiu	v1,s8,256
    {
      *mptr = 0;
    1c4c:	ac400000 	sw	zero,0(v0)

  /*
   * Decode AC
   */
  /* Set all values to zero */
  for (mptr = out_buf + 1; mptr < out_buf + DCTSIZE2; mptr++)
    1c50:	24420004 	addiu	v0,v0,4
    1c54:	1443fffd 	bne	v0,v1,1c4c <DecodeHuffMCU+0x110>
    1c58:	00000000 	sll	zero,zero,0x0
/*
 * Decode one MCU
 */
void
DecodeHuffMCU (int *out_buf, int num_cmp)
{
    1c5c:	24100001 	addiu	s0,zero,1
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    {				/* JPEG Mistake */
      r = DecodeHuffman (&p_jinfo_ac_xhuff_tbl_huffval[tbl_no][0],
    1c60:	3c140000 	lui	s4,0x0
    1c64:	26940000 	addiu	s4,s4,0
    1c68:	0293a021 	addu	s4,s4,s3
    1c6c:	00129080 	sll	s2,s2,0x2
    1c70:	27820000 	addiu	v0,gp,0
    1c74:	00529021 	addu	s2,v0,s2
    1c78:	3c150000 	lui	s5,0x0
    1c7c:	26b50000 	addiu	s5,s5,0
    1c80:	02b1a821 	addu	s5,s5,s1
    1c84:	3c160000 	lui	s6,0x0
    1c88:	26d60000 	addiu	s6,s6,0
    1c8c:	02d1b021 	addu	s6,s6,s1
    1c90:	3c170000 	lui	s7,0x0
    1c94:	26f70000 	addiu	s7,s7,0
    1c98:	02f1b821 	addu	s7,s7,s1
	{
	  if ((k += n) >= DCTSIZE2)	/* JPEG Mistake */
	    break;
	  out_buf[k] = buf_getv (s);	/* Get s bits */
	  s--;			/* Align s */
	  if ((out_buf[k] & bit_set_mask[s]) == 0)
    1c9c:	3c020000 	lui	v0,0x0
    1ca0:	24420000 	addiu	v0,v0,0
    1ca4:	afa20018 	sw	v0,24(sp)
	    {			/* Also (1 << s) */
	      out_buf[k] |= extend_mask[s];	/* Also  (-1 << s) + 1 */
    1ca8:	3c020000 	lui	v0,0x0
    1cac:	244256bc 	addiu	v0,v0,22204
    1cb0:	afa2001c 	sw	v0,28(sp)
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    {				/* JPEG Mistake */
      r = DecodeHuffman (&p_jinfo_ac_xhuff_tbl_huffval[tbl_no][0],
    1cb4:	8e450000 	lw	a1,0(s2)
    1cb8:	afb70010 	sw	s7,16(sp)
    1cbc:	02802021 	addu	a0,s4,zero
    1cc0:	02a03021 	addu	a2,s5,zero
    1cc4:	0c000000 	jal	0 <pgetc>
    1cc8:	02c03821 	addu	a3,s6,zero
			 p_jinfo_ac_dhuff_tbl_ml[tbl_no],
			 &p_jinfo_ac_dhuff_tbl_maxcode[tbl_no][0],
			 &p_jinfo_ac_dhuff_tbl_mincode[tbl_no][0],
			 &p_jinfo_ac_dhuff_tbl_valptr[tbl_no][0]);

      s = r & 0xf;		/* Find significant bits */
    1ccc:	3051000f 	andi	s1,v0,0xf
      n = (r >> 4) & 0xf;	/* n = run-length */
    1cd0:	00021103 	sra	v0,v0,0x4

      if (s)
    1cd4:	1220001d 	beqz	s1,1d4c <DecodeHuffMCU+0x210>
    1cd8:	3042000f 	andi	v0,v0,0xf
	{
	  if ((k += n) >= DCTSIZE2)	/* JPEG Mistake */
    1cdc:	00508021 	addu	s0,v0,s0
    1ce0:	2a020040 	slti	v0,s0,64
    1ce4:	1040001f 	beqz	v0,1d64 <DecodeHuffMCU+0x228>
    1ce8:	00109880 	sll	s3,s0,0x2
	    break;
	  out_buf[k] = buf_getv (s);	/* Get s bits */
    1cec:	03d39821 	addu	s3,s8,s3
    1cf0:	0c000000 	jal	0 <pgetc>
    1cf4:	02202021 	addu	a0,s1,zero
    1cf8:	ae620000 	sw	v0,0(s3)
	  s--;			/* Align s */
    1cfc:	2631ffff 	addiu	s1,s1,-1
	  if ((out_buf[k] & bit_set_mask[s]) == 0)
    1d00:	00111880 	sll	v1,s1,0x2
    1d04:	8fa40018 	lw	a0,24(sp)
    1d08:	00000000 	sll	zero,zero,0x0
    1d0c:	00641821 	addu	v1,v1,a0
    1d10:	8c630000 	lw	v1,0(v1)
    1d14:	00000000 	sll	zero,zero,0x0
    1d18:	00431824 	and	v1,v0,v1
    1d1c:	14600009 	bnez	v1,1d44 <DecodeHuffMCU+0x208>
    1d20:	00118880 	sll	s1,s1,0x2
	    {			/* Also (1 << s) */
	      out_buf[k] |= extend_mask[s];	/* Also  (-1 << s) + 1 */
    1d24:	8fa3001c 	lw	v1,28(sp)
    1d28:	00000000 	sll	zero,zero,0x0
    1d2c:	02238821 	addu	s1,s1,v1
    1d30:	8e230000 	lw	v1,0(s1)
    1d34:	00000000 	sll	zero,zero,0x0
    1d38:	00431025 	or	v0,v0,v1
	      out_buf[k]++;	/* Increment 2's c */
    1d3c:	24420001 	addiu	v0,v0,1
    1d40:	ae620000 	sw	v0,0(s3)
	    }
	  k++;			/* Goto next element */
    1d44:	08000756 	j	1d58 <DecodeHuffMCU+0x21c>
    1d48:	26100001 	addiu	s0,s0,1
	}
      else if (n == 15)		/* Zero run length code extnd */
    1d4c:	2404000f 	addiu	a0,zero,15
    1d50:	14440004 	bne	v0,a0,1d64 <DecodeHuffMCU+0x228>
    1d54:	26100010 	addiu	s0,s0,16
  for (mptr = out_buf + 1; mptr < out_buf + DCTSIZE2; mptr++)
    {
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    1d58:	2a020040 	slti	v0,s0,64
    1d5c:	1440ffd5 	bnez	v0,1cb4 <DecodeHuffMCU+0x178>
    1d60:	00000000 	sll	zero,zero,0x0
      else
	{
	  break;
	}
    }
}
    1d64:	8fbf0044 	lw	ra,68(sp)
    1d68:	8fbe0040 	lw	s8,64(sp)
    1d6c:	8fb7003c 	lw	s7,60(sp)
    1d70:	8fb60038 	lw	s6,56(sp)
    1d74:	8fb50034 	lw	s5,52(sp)
    1d78:	8fb40030 	lw	s4,48(sp)
    1d7c:	8fb3002c 	lw	s3,44(sp)
    1d80:	8fb20028 	lw	s2,40(sp)
    1d84:	8fb10024 	lw	s1,36(sp)
    1d88:	8fb00020 	lw	s0,32(sp)
    1d8c:	03e00008 	jr	ra
    1d90:	27bd0048 	addiu	sp,sp,72

00001d94 <decode_block>:
/*
 * Decode one block
 */
void
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
    1d94:	27bdfee0 	addiu	sp,sp,-288
    1d98:	afbf011c 	sw	ra,284(sp)
    1d9c:	afb20118 	sw	s2,280(sp)
    1da0:	afb10114 	sw	s1,276(sp)
    1da4:	afb00110 	sw	s0,272(sp)
    1da8:	00808821 	addu	s1,a0,zero
    1dac:	00a09021 	addu	s2,a1,zero
    1db0:	00c08021 	addu	s0,a2,zero
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    1db4:	00c02021 	addu	a0,a2,zero
    1db8:	0c000000 	jal	0 <pgetc>
    1dbc:	02202821 	addu	a1,s1,zero

  IZigzagMatrix (HuffBuff, QuantBuff);
    1dc0:	02002021 	addu	a0,s0,zero
    1dc4:	27b00010 	addiu	s0,sp,16
    1dc8:	0c000000 	jal	0 <pgetc>
    1dcc:	02002821 	addu	a1,s0,zero

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    1dd0:	27820000 	addiu	v0,gp,0
    1dd4:	00518821 	addu	s1,v0,s1
    1dd8:	82220000 	lb	v0,0(s1)
    1ddc:	00000000 	sll	zero,zero,0x0
    1de0:	24420001 	addiu	v0,v0,1
    1de4:	00021200 	sll	v0,v0,0x8
  IQuantize (QuantBuff, p_quant_tbl);
    1de8:	02002021 	addu	a0,s0,zero
    1dec:	3c050000 	lui	a1,0x0
    1df0:	24a50000 	addiu	a1,a1,0
    1df4:	0c000000 	jal	0 <pgetc>
    1df8:	00a22821 	addu	a1,a1,v0

  ChenIDct (QuantBuff, out_buf);
    1dfc:	02002021 	addu	a0,s0,zero
    1e00:	0c000000 	jal	0 <pgetc>
    1e04:	02402821 	addu	a1,s2,zero

  PostshiftIDctMatrix (out_buf, IDCT_SHIFT);
    1e08:	02402021 	addu	a0,s2,zero
    1e0c:	0c000000 	jal	0 <pgetc>
    1e10:	24050080 	addiu	a1,zero,128

  BoundIDctMatrix (out_buf, IDCT_BOUNT);
    1e14:	02402021 	addu	a0,s2,zero
    1e18:	0c000000 	jal	0 <pgetc>
    1e1c:	240500ff 	addiu	a1,zero,255

}
    1e20:	8fbf011c 	lw	ra,284(sp)
    1e24:	8fb20118 	lw	s2,280(sp)
    1e28:	8fb10114 	lw	s1,276(sp)
    1e2c:	8fb00110 	lw	s0,272(sp)
    1e30:	03e00008 	jr	ra
    1e34:	27bd0120 	addiu	sp,sp,288

00001e38 <decode_start>:


void
decode_start (int *out_data_image_width, int *out_data_image_height,
	      int *out_data_comp_vpos, int *out_data_comp_hpos)
{
    1e38:	27bdf6a8 	addiu	sp,sp,-2392
    1e3c:	afbf0954 	sw	ra,2388(sp)
    1e40:	afbe0950 	sw	s8,2384(sp)
    1e44:	afb7094c 	sw	s7,2380(sp)
    1e48:	afb60948 	sw	s6,2376(sp)
    1e4c:	afb50944 	sw	s5,2372(sp)
    1e50:	afb40940 	sw	s4,2368(sp)
    1e54:	afb3093c 	sw	s3,2364(sp)
    1e58:	afb20938 	sw	s2,2360(sp)
    1e5c:	afb10934 	sw	s1,2356(sp)
    1e60:	afb00930 	sw	s0,2352(sp)
    1e64:	00c0a821 	addu	s5,a2,zero
  int CurrentMCU = 0;
  int HuffBuff[NUM_COMPONENT][DCTSIZE2];
  int IDCTBuff[6][DCTSIZE2];

  /* Read buffer */
  CurHuffReadBuf = p_jinfo_jpeg_data;
    1e68:	8f820000 	lw	v0,0(gp)
    1e6c:	00000000 	sll	zero,zero,0x0
    1e70:	af820000 	sw	v0,0(gp)
  /*
   * Initial value of DC element is 0
   */
  for (i = 0; i < NUM_COMPONENT; i++)
    {
      HuffBuff[i][0] = 0;
    1e74:	afa00020 	sw	zero,32(sp)
    1e78:	afa00120 	sw	zero,288(sp)
    1e7c:	afa00220 	sw	zero,544(sp)
    }

  /*
   * Set the size of image to output buffer
   */
  *out_data_image_width = p_jinfo_image_width;
    1e80:	87820000 	lh	v0,0(gp)
    1e84:	00000000 	sll	zero,zero,0x0
    1e88:	ac820000 	sw	v0,0(a0)
  *out_data_image_height = p_jinfo_image_height;
    1e8c:	87820000 	lh	v0,0(gp)
    1e90:	00000000 	sll	zero,zero,0x0
    1e94:	aca20000 	sw	v0,0(a1)
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    1e98:	acc00000 	sw	zero,0(a2)
      out_data_comp_hpos[i] = 0;
    1e9c:	ace00000 	sw	zero,0(a3)
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    1ea0:	acc00004 	sw	zero,4(a2)
      out_data_comp_hpos[i] = 0;
    1ea4:	ace00004 	sw	zero,4(a3)
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    1ea8:	acc00008 	sw	zero,8(a2)
      out_data_comp_hpos[i] = 0;
    1eac:	ace00008 	sw	zero,8(a3)
    }


  if (p_jinfo_smp_fact == SF1_1_1)
    1eb0:	8f820000 	lw	v0,0(gp)
    1eb4:	00000000 	sll	zero,zero,0x0
    1eb8:	14400034 	bnez	v0,1f8c <decode_start+0x154>
    1ebc:	00e0a021 	addu	s4,a3,zero
    {
      printf ("Decode 1:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
    1ec0:	3c040000 	lui	a0,0x0
    1ec4:	8f850000 	lw	a1,0(gp)
    1ec8:	0c000000 	jal	0 <pgetc>
    1ecc:	24840000 	addiu	a0,a0,0

      /*
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    1ed0:	8f820000 	lw	v0,0(gp)
    1ed4:	00000000 	sll	zero,zero,0x0
    1ed8:	1c400026 	bgtz	v0,1f74 <decode_start+0x13c>
    1edc:	0000b021 	addu	s6,zero,zero
    1ee0:	08000830 	j	20c0 <decode_start+0x288>
    1ee4:	00000000 	sll	zero,zero,0x0
	{

	  for (i = 0; i < NUM_COMPONENT; i++)
	    {
	      decode_block (i, IDCTBuff[i], HuffBuff[i]);
    1ee8:	02202021 	addu	a0,s1,zero
    1eec:	02702821 	addu	a1,s3,s0
    1ef0:	27a20020 	addiu	v0,sp,32
    1ef4:	0c000000 	jal	0 <pgetc>
    1ef8:	00503021 	addu	a2,v0,s0
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
	{

	  for (i = 0; i < NUM_COMPONENT; i++)
    1efc:	26310001 	addiu	s1,s1,1
    1f00:	1637fff9 	bne	s1,s7,1ee8 <decode_start+0xb0>
    1f04:	26100100 	addiu	s0,s0,256
	    {
	      decode_block (i, IDCTBuff[i], HuffBuff[i]);
	    }


	  YuvToRgb (0, IDCTBuff[0], IDCTBuff[1], IDCTBuff[2]);
    1f08:	00002021 	addu	a0,zero,zero
    1f0c:	02602821 	addu	a1,s3,zero
    1f10:	27a60420 	addiu	a2,sp,1056
    1f14:	0c000000 	jal	0 <pgetc>
    1f18:	27a70520 	addiu	a3,sp,1312
    1f1c:	3c030000 	lui	v1,0x0
    1f20:	24720000 	addiu	s2,v1,0
    1f24:	3c020000 	lui	v0,0x0
    1f28:	24500000 	addiu	s0,v0,0
    1f2c:	00008821 	addu	s1,zero,zero
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
	    {
	      WriteBlock (&rgb_buf[0][i][0],
    1f30:	02402021 	addu	a0,s2,zero
    1f34:	02b12821 	addu	a1,s5,s1
    1f38:	02913021 	addu	a2,s4,s1
    1f3c:	0c000000 	jal	0 <pgetc>
    1f40:	02003821 	addu	a3,s0,zero
    1f44:	26520100 	addiu	s2,s2,256
    1f48:	26310004 	addiu	s1,s1,4

	  YuvToRgb (0, IDCTBuff[0], IDCTBuff[1], IDCTBuff[2]);
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
    1f4c:	163efff8 	bne	s1,s8,1f30 <decode_start+0xf8>
    1f50:	261014be 	addiu	s0,s0,5310
	    {
	      WriteBlock (&rgb_buf[0][i][0],
			  &out_data_comp_vpos[i],
			  &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
	    }
	  CurrentMCU++;
    1f54:	26d60001 	addiu	s6,s6,1
      printf ("Decode 1:1:1 NumMCU = %d\n", p_jinfo_NumMCU);

      /*
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    1f58:	8f820000 	lw	v0,0(gp)
    1f5c:	00000000 	sll	zero,zero,0x0
    1f60:	02c2102a 	slt	v0,s6,v0
    1f64:	14400007 	bnez	v0,1f84 <decode_start+0x14c>
    1f68:	00008021 	addu	s0,zero,zero
    1f6c:	08000830 	j	20c0 <decode_start+0x288>
    1f70:	00000000 	sll	zero,zero,0x0

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    1f74:	27b30320 	addiu	s3,sp,800
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
	{

	  for (i = 0; i < NUM_COMPONENT; i++)
    1f78:	24170003 	addiu	s7,zero,3

	  YuvToRgb (0, IDCTBuff[0], IDCTBuff[1], IDCTBuff[2]);
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
    1f7c:	241e000c 	addiu	s8,zero,12


void
decode_start (int *out_data_image_width, int *out_data_image_height,
	      int *out_data_comp_vpos, int *out_data_comp_hpos)
{
    1f80:	00008021 	addu	s0,zero,zero
    1f84:	080007ba 	j	1ee8 <decode_start+0xb0>
    1f88:	00008821 	addu	s1,zero,zero
	}

    }
  else
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
    1f8c:	3c040000 	lui	a0,0x0
    1f90:	8f850000 	lw	a1,0(gp)
    1f94:	0c000000 	jal	0 <pgetc>
    1f98:	24840000 	addiu	a0,a0,0
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    1f9c:	8f820000 	lw	v0,0(gp)
    1fa0:	00000000 	sll	zero,zero,0x0
    1fa4:	1c40003b 	bgtz	v0,2094 <decode_start+0x25c>
    1fa8:	27b30720 	addiu	s3,sp,1824
    1fac:	08000830 	j	20c0 <decode_start+0x288>
    1fb0:	00000000 	sll	zero,zero,0x0
	   * Decoding Y, U and V elements should be sequentially conducted for the use of Huffman table
	   */

	  for (i = 0; i < 4; i++)
	    {
	      decode_block (0, IDCTBuff[i], HuffBuff[0]);
    1fb4:	00002021 	addu	a0,zero,zero
    1fb8:	02002821 	addu	a1,s0,zero
    1fbc:	0c000000 	jal	0 <pgetc>
    1fc0:	02e03021 	addu	a2,s7,zero
    1fc4:	26100100 	addiu	s0,s0,256
	  /*
	   * Decode Y element
	   * Decoding Y, U and V elements should be sequentially conducted for the use of Huffman table
	   */

	  for (i = 0; i < 4; i++)
    1fc8:	1613fffb 	bne	s0,s3,1fb8 <decode_start+0x180>
    1fcc:	00002021 	addu	a0,zero,zero
	    {
	      decode_block (0, IDCTBuff[i], HuffBuff[0]);
	    }

	  /* Decode U */
	  decode_block (1, IDCTBuff[4], HuffBuff[1]);
    1fd0:	24040001 	addiu	a0,zero,1
    1fd4:	8fa60924 	lw	a2,2340(sp)
    1fd8:	0c000000 	jal	0 <pgetc>
    1fdc:	02602821 	addu	a1,s3,zero

	  /* Decode V */
	  decode_block (2, IDCTBuff[5], HuffBuff[2]);
    1fe0:	24040002 	addiu	a0,zero,2
    1fe4:	8fa60928 	lw	a2,2344(sp)
    1fe8:	0c000000 	jal	0 <pgetc>
    1fec:	02c02821 	addu	a1,s6,zero


	  /* Transform from Yuv into RGB */

	  for (i = 0; i < 4; i++)
    1ff0:	00008021 	addu	s0,zero,zero
	    {
	      YuvToRgb (i, IDCTBuff[i], IDCTBuff[4], IDCTBuff[5]);
    1ff4:	02002021 	addu	a0,s0,zero
    1ff8:	02202821 	addu	a1,s1,zero
    1ffc:	02603021 	addu	a2,s3,zero
    2000:	0c000000 	jal	0 <pgetc>
    2004:	02c03821 	addu	a3,s6,zero
	  decode_block (2, IDCTBuff[5], HuffBuff[2]);


	  /* Transform from Yuv into RGB */

	  for (i = 0; i < 4; i++)
    2008:	26100001 	addiu	s0,s0,1
    200c:	161efff9 	bne	s0,s8,1ff4 <decode_start+0x1bc>
    2010:	26310100 	addiu	s1,s1,256
    2014:	3c030000 	lui	v1,0x0
    2018:	24700000 	addiu	s0,v1,0
    201c:	3c020000 	lui	v0,0x0
    2020:	24520000 	addiu	s2,v0,0
    2024:	00008821 	addu	s1,zero,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2028:	02b11021 	addu	v0,s5,s1
	    }


	  for (i = 0; i < RGB_NUM; i++)
	    {
	      Write4Blocks (&rgb_buf[0][i][0],
    202c:	afa20010 	sw	v0,16(sp)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2030:	02911021 	addu	v0,s4,s1
	    }


	  for (i = 0; i < RGB_NUM; i++)
	    {
	      Write4Blocks (&rgb_buf[0][i][0],
    2034:	afa20014 	sw	v0,20(sp)
    2038:	afb20018 	sw	s2,24(sp)
    203c:	02002021 	addu	a0,s0,zero
    2040:	26050300 	addiu	a1,s0,768
    2044:	26060600 	addiu	a2,s0,1536
    2048:	0c000000 	jal	0 <pgetc>
    204c:	26070900 	addiu	a3,s0,2304
    2050:	26100100 	addiu	s0,s0,256
    2054:	26310004 	addiu	s1,s1,4
	    {
	      YuvToRgb (i, IDCTBuff[i], IDCTBuff[4], IDCTBuff[5]);
	    }


	  for (i = 0; i < RGB_NUM; i++)
    2058:	2403000c 	addiu	v1,zero,12
    205c:	1623fff2 	bne	s1,v1,2028 <decode_start+0x1f0>
    2060:	265214be 	addiu	s2,s2,5310
			    &out_data_comp_vpos[i],
			    &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
	    }


	  CurrentMCU += 4;
    2064:	8fa20920 	lw	v0,2336(sp)
    2068:	00000000 	sll	zero,zero,0x0
    206c:	24420004 	addiu	v0,v0,4
    2070:	afa20920 	sw	v0,2336(sp)
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    2074:	8f820000 	lw	v0,0(gp)
    2078:	8fa30920 	lw	v1,2336(sp)
    207c:	00000000 	sll	zero,zero,0x0
    2080:	0062102a 	slt	v0,v1,v0
    2084:	1440000c 	bnez	v0,20b8 <decode_start+0x280>
    2088:	27b10320 	addiu	s1,sp,800
    208c:	08000830 	j	20c0 <decode_start+0x288>
    2090:	00000000 	sll	zero,zero,0x0
void
decode_start (int *out_data_image_width, int *out_data_image_height,
	      int *out_data_comp_vpos, int *out_data_comp_hpos)
{
  int i;
  int CurrentMCU = 0;
    2094:	afa00920 	sw	zero,2336(sp)
	   * Decoding Y, U and V elements should be sequentially conducted for the use of Huffman table
	   */

	  for (i = 0; i < 4; i++)
	    {
	      decode_block (0, IDCTBuff[i], HuffBuff[0]);
    2098:	27b70020 	addiu	s7,sp,32
	    }

	  /* Decode U */
	  decode_block (1, IDCTBuff[4], HuffBuff[1]);
    209c:	26e20100 	addiu	v0,s7,256
    20a0:	afa20924 	sw	v0,2340(sp)

	  /* Decode V */
	  decode_block (2, IDCTBuff[5], HuffBuff[2]);
    20a4:	27b60820 	addiu	s6,sp,2080
    20a8:	26e30200 	addiu	v1,s7,512
    20ac:	afa30928 	sw	v1,2344(sp)


	  /* Transform from Yuv into RGB */

	  for (i = 0; i < 4; i++)
    20b0:	241e0004 	addiu	s8,zero,4
	   * Decoding Y, U and V elements should be sequentially conducted for the use of Huffman table
	   */

	  for (i = 0; i < 4; i++)
	    {
	      decode_block (0, IDCTBuff[i], HuffBuff[0]);
    20b4:	27b10320 	addiu	s1,sp,800

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    20b8:	080007ed 	j	1fb4 <decode_start+0x17c>
    20bc:	02208021 	addu	s0,s1,zero


	  CurrentMCU += 4;
	}
    }
}
    20c0:	8fbf0954 	lw	ra,2388(sp)
    20c4:	8fbe0950 	lw	s8,2384(sp)
    20c8:	8fb7094c 	lw	s7,2380(sp)
    20cc:	8fb60948 	lw	s6,2376(sp)
    20d0:	8fb50944 	lw	s5,2372(sp)
    20d4:	8fb40940 	lw	s4,2368(sp)
    20d8:	8fb3093c 	lw	s3,2364(sp)
    20dc:	8fb20938 	lw	s2,2360(sp)
    20e0:	8fb10934 	lw	s1,2356(sp)
    20e4:	8fb00930 	lw	s0,2352(sp)
    20e8:	03e00008 	jr	ra
    20ec:	27bd0958 	addiu	sp,sp,2392

000020f0 <jpeg_init_decompress>:
/*
 * Initialize after reading markers
 */
void
jpeg_init_decompress ()
{
    20f0:	27bdffd0 	addiu	sp,sp,-48
    20f4:	afbf002c 	sw	ra,44(sp)
    20f8:	afb40028 	sw	s4,40(sp)
    20fc:	afb30024 	sw	s3,36(sp)
    2100:	afb20020 	sw	s2,32(sp)
    2104:	afb1001c 	sw	s1,28(sp)
    2108:	afb00018 	sw	s0,24(sp)
  int tmp;
  /*
   * Get MCU number
   */
  p_jinfo_MCUHeight = (p_jinfo_image_height - 1) / 8 + 1;
    210c:	87820000 	lh	v0,0(gp)
    2110:	00000000 	sll	zero,zero,0x0
    2114:	2442ffff 	addiu	v0,v0,-1
    2118:	04410002 	bgez	v0,2124 <jpeg_init_decompress+0x34>
    211c:	00000000 	sll	zero,zero,0x0
    2120:	24420007 	addiu	v0,v0,7
    2124:	000210c3 	sra	v0,v0,0x3
    2128:	24430001 	addiu	v1,v0,1
    212c:	af830000 	sw	v1,0(gp)
  p_jinfo_MCUWidth = (p_jinfo_image_width - 1) / 8 + 1;
    2130:	87820000 	lh	v0,0(gp)
    2134:	00000000 	sll	zero,zero,0x0
    2138:	2442ffff 	addiu	v0,v0,-1
    213c:	04410002 	bgez	v0,2148 <jpeg_init_decompress+0x58>
    2140:	00000000 	sll	zero,zero,0x0
    2144:	24420007 	addiu	v0,v0,7
    2148:	000210c3 	sra	v0,v0,0x3
    214c:	24420001 	addiu	v0,v0,1
    2150:	af820000 	sw	v0,0(gp)
  p_jinfo_NumMCU = p_jinfo_MCUHeight * p_jinfo_MCUWidth;
    2154:	00430018 	mult	v0,v1
    2158:	00001012 	mflo	v0
    215c:	af820000 	sw	v0,0(gp)

  /*
   * Create Huffman Table for decoding
   */
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[0][0],
    2160:	3c120000 	lui	s2,0x0
    2164:	26520000 	addiu	s2,s2,0
    2168:	3c130000 	lui	s3,0x0
    216c:	26730000 	addiu	s3,s3,0
    2170:	3c140000 	lui	s4,0x0
    2174:	26940000 	addiu	s4,s4,0
    2178:	3c110000 	lui	s1,0x0
    217c:	26310000 	addiu	s1,s1,0
    2180:	27900000 	addiu	s0,gp,0
    2184:	8e050000 	lw	a1,0(s0)
    2188:	afb10010 	sw	s1,16(sp)
    218c:	02402021 	addu	a0,s2,zero
    2190:	02603021 	addu	a2,s3,zero
    2194:	0c000000 	jal	0 <pgetc>
    2198:	02803821 	addu	a3,s4,zero
			    p_jinfo_dc_dhuff_tbl_ml[0],
			    &p_jinfo_dc_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[0][0],
			    &p_jinfo_dc_dhuff_tbl_valptr[0][0]);
  p_jinfo_dc_dhuff_tbl_ml[0] = tmp;
    219c:	ae020000 	sw	v0,0(s0)
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[1][0],
    21a0:	27900004 	addiu	s0,gp,4
    21a4:	8e050000 	lw	a1,0(s0)
    21a8:	26310090 	addiu	s1,s1,144
    21ac:	afb10010 	sw	s1,16(sp)
    21b0:	26440090 	addiu	a0,s2,144
    21b4:	26660090 	addiu	a2,s3,144
    21b8:	0c000000 	jal	0 <pgetc>
    21bc:	26870090 	addiu	a3,s4,144
			    p_jinfo_dc_dhuff_tbl_ml[1],
			    &p_jinfo_dc_dhuff_tbl_maxcode[1][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[1][0],
			    &p_jinfo_dc_dhuff_tbl_valptr[1][0]);
  p_jinfo_dc_dhuff_tbl_ml[1] = tmp;
    21c0:	ae020000 	sw	v0,0(s0)
  tmp = huff_make_dhuff_tb (&p_jinfo_ac_xhuff_tbl_bits[0][0],
    21c4:	3c120000 	lui	s2,0x0
    21c8:	26520000 	addiu	s2,s2,0
    21cc:	3c130000 	lui	s3,0x0
    21d0:	26730000 	addiu	s3,s3,0
    21d4:	3c140000 	lui	s4,0x0
    21d8:	26940000 	addiu	s4,s4,0
    21dc:	3c110000 	lui	s1,0x0
    21e0:	26310000 	addiu	s1,s1,0
    21e4:	27900000 	addiu	s0,gp,0
    21e8:	8e050000 	lw	a1,0(s0)
    21ec:	afb10010 	sw	s1,16(sp)
    21f0:	02402021 	addu	a0,s2,zero
    21f4:	02603021 	addu	a2,s3,zero
    21f8:	0c000000 	jal	0 <pgetc>
    21fc:	02803821 	addu	a3,s4,zero
			    p_jinfo_ac_dhuff_tbl_ml[0],
			    &p_jinfo_ac_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_ac_dhuff_tbl_mincode[0][0],
			    &p_jinfo_ac_dhuff_tbl_valptr[0][0]);
  p_jinfo_ac_dhuff_tbl_ml[0] = tmp;
    2200:	ae020000 	sw	v0,0(s0)
  tmp = huff_make_dhuff_tb (&p_jinfo_ac_xhuff_tbl_bits[1][0],
    2204:	27900004 	addiu	s0,gp,4
    2208:	8e050000 	lw	a1,0(s0)
    220c:	26310090 	addiu	s1,s1,144
    2210:	afb10010 	sw	s1,16(sp)
    2214:	26440090 	addiu	a0,s2,144
    2218:	26660090 	addiu	a2,s3,144
    221c:	0c000000 	jal	0 <pgetc>
    2220:	26870090 	addiu	a3,s4,144
			    p_jinfo_ac_dhuff_tbl_ml[1],
			    &p_jinfo_ac_dhuff_tbl_maxcode[1][0],
			    &p_jinfo_ac_dhuff_tbl_mincode[1][0],
			    &p_jinfo_ac_dhuff_tbl_valptr[1][0]);
  p_jinfo_ac_dhuff_tbl_ml[1] = tmp;
    2224:	ae020000 	sw	v0,0(s0)
}
    2228:	8fbf002c 	lw	ra,44(sp)
    222c:	8fb40028 	lw	s4,40(sp)
    2230:	8fb30024 	lw	s3,36(sp)
    2234:	8fb20020 	lw	s2,32(sp)
    2238:	8fb1001c 	lw	s1,28(sp)
    223c:	8fb00018 	lw	s0,24(sp)
    2240:	03e00008 	jr	ra
    2244:	27bd0030 	addiu	sp,sp,48

00002248 <jpeg_read>:



void
jpeg_read (unsigned char *read_buf)
{
    2248:	27bdffe8 	addiu	sp,sp,-24
    224c:	afbf0014 	sw	ra,20(sp)

  /*
   * Read markers
   */
  read_markers (read_buf);
    2250:	0c000000 	jal	0 <pgetc>
    2254:	00000000 	sll	zero,zero,0x0


  /*
   * Initialize the information used for decoding
   */
  jpeg_init_decompress ();
    2258:	0c000000 	jal	0 <pgetc>
    225c:	00000000 	sll	zero,zero,0x0

  /*
   * Start decoding
   */
  decode_start (&OutData_image_width, &OutData_image_height,
    2260:	27840000 	addiu	a0,gp,0
    2264:	27850000 	addiu	a1,gp,0
    2268:	3c060000 	lui	a2,0x0
    226c:	24c60000 	addiu	a2,a2,0
    2270:	3c070000 	lui	a3,0x0
    2274:	0c000000 	jal	0 <pgetc>
    2278:	24e70000 	addiu	a3,a3,0
		&OutData_comp_vpos[0], &OutData_comp_hpos[0]);

}
    227c:	8fbf0014 	lw	ra,20(sp)
    2280:	00000000 	sll	zero,zero,0x0
    2284:	03e00008 	jr	ra
    2288:	27bd0018 	addiu	sp,sp,24

0000228c <jpeg2bmp_main>:
unsigned char JpegFileBuf[JPEG_FILE_SIZE];


int
jpeg2bmp_main ()
{
    228c:	27bdffe8 	addiu	sp,sp,-24
    2290:	afbf0014 	sw	ra,20(sp)
        *c++ = ci;
    }

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    2294:	3c030000 	lui	v1,0x0
    2298:	24630000 	addiu	v1,v1,0
 */
unsigned char JpegFileBuf[JPEG_FILE_SIZE];


int
jpeg2bmp_main ()
    229c:	3c020000 	lui	v0,0x0
    22a0:	24420000 	addiu	v0,v0,0
    22a4:	24451457 	addiu	a1,v0,5207
  c = JpegFileBuf;
  for (i = 0; i < JPEGSIZE; i++)
    
    {
        ci = hana_jpg[i];
        *c++ = ci;
    22a8:	90640000 	lbu	a0,0(v1)
    22ac:	00000000 	sll	zero,zero,0x0
    22b0:	a0440000 	sb	a0,0(v0)
    22b4:	24420001 	addiu	v0,v0,1

  /*
   * Store input data in buffer
   */
  c = JpegFileBuf;
  for (i = 0; i < JPEGSIZE; i++)
    22b8:	1445fffb 	bne	v0,a1,22a8 <jpeg2bmp_main+0x1c>
    22bc:	24630001 	addiu	v1,v1,1
    {
        ci = hana_jpg[i];
        *c++ = ci;
    }

  jpeg_read (JpegFileBuf);
    22c0:	3c040000 	lui	a0,0x0
    22c4:	0c000000 	jal	0 <pgetc>
    22c8:	24840000 	addiu	a0,a0,0
    22cc:	8f870000 	lw	a3,0(gp)

  for (i = 0; i < RGB_NUM; i++)
    22d0:	00004821 	addu	t1,zero,zero
 */
unsigned char JpegFileBuf[JPEG_FILE_SIZE];


int
jpeg2bmp_main ()
    22d4:	3c0c0000 	lui	t4,0x0
    22d8:	258c0000 	addiu	t4,t4,0
    22dc:	3c0b0000 	lui	t3,0x0
    22e0:	256b0000 	addiu	t3,t3,0

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
    22e4:	240814be 	addiu	t0,zero,5310
        *c++ = ci;
    }

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    22e8:	080008c9 	j	2324 <jpeg2bmp_main+0x98>
    22ec:	240a0003 	addiu	t2,zero,3
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
	{
	  if (OutData_comp_buf[i][j] != hana_bmp[i][j])
    22f0:	90860000 	lbu	a2,0(a0)
    22f4:	90650000 	lbu	a1,0(v1)
    22f8:	00000000 	sll	zero,zero,0x0
    22fc:	10c50002 	beq	a2,a1,2308 <jpeg2bmp_main+0x7c>
    2300:	00000000 	sll	zero,zero,0x0
	    {
	      main_result++;
    2304:	24e70001 	addiu	a3,a3,1

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
    2308:	24420001 	addiu	v0,v0,1
    230c:	24840001 	addiu	a0,a0,1
    2310:	1448fff7 	bne	v0,t0,22f0 <jpeg2bmp_main+0x64>
    2314:	24630001 	addiu	v1,v1,1
        *c++ = ci;
    }

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    2318:	25290001 	addiu	t1,t1,1
    231c:	112a0010 	beq	t1,t2,2360 <jpeg2bmp_main+0xd4>
    2320:	00000000 	sll	zero,zero,0x0
 */
unsigned char JpegFileBuf[JPEG_FILE_SIZE];


int
jpeg2bmp_main ()
    2324:	00091080 	sll	v0,t1,0x2
    2328:	00091980 	sll	v1,t1,0x6
    232c:	00621023 	subu	v0,v1,v0
    2330:	00491023 	subu	v0,v0,t1
    2334:	00021880 	sll	v1,v0,0x2
    2338:	00621023 	subu	v0,v1,v0
    233c:	00021900 	sll	v1,v0,0x4
    2340:	00622023 	subu	a0,v1,v0
    2344:	00042040 	sll	a0,a0,0x1
    2348:	01842021 	addu	a0,t4,a0
    234c:	00621823 	subu	v1,v1,v0
    2350:	00031840 	sll	v1,v1,0x1
    2354:	01631821 	addu	v1,t3,v1
    2358:	080008bc 	j	22f0 <jpeg2bmp_main+0x64>
    235c:	00001021 	addu	v0,zero,zero
        *c++ = ci;
    }

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    2360:	af870000 	sw	a3,0(gp)
	    {
	      main_result++;
	    }
	}
    }
  if (OutData_image_width != out_width)
    2364:	8f820000 	lw	v0,0(gp)
    2368:	8f830000 	lw	v1,0(gp)
    236c:	00000000 	sll	zero,zero,0x0
    2370:	10620002 	beq	v1,v0,237c <jpeg2bmp_main+0xf0>
    2374:	24e70001 	addiu	a3,a3,1
    {
      main_result++;
    2378:	af870000 	sw	a3,0(gp)
    }
  if (OutData_image_height != out_length)
    237c:	8f820000 	lw	v0,0(gp)
    2380:	8f830000 	lw	v1,0(gp)
    2384:	00000000 	sll	zero,zero,0x0
    2388:	10620006 	beq	v1,v0,23a4 <jpeg2bmp_main+0x118>
    238c:	00001021 	addu	v0,zero,zero
    {
      main_result++;
    2390:	8f820000 	lw	v0,0(gp)
    2394:	00000000 	sll	zero,zero,0x0
    2398:	24420001 	addiu	v0,v0,1
    239c:	af820000 	sw	v0,0(gp)
    }
  return (0);
}
    23a0:	00001021 	addu	v0,zero,zero
    23a4:	8fbf0014 	lw	ra,20(sp)
    23a8:	00000000 	sll	zero,zero,0x0
    23ac:	03e00008 	jr	ra
    23b0:	27bd0018 	addiu	sp,sp,24

000023b4 <main>:
#include "jfif_read.c"
#include "jpeg2bmp.c"

int
main ()
{
    23b4:	27bdffe8 	addiu	sp,sp,-24
    23b8:	afbf0014 	sw	ra,20(sp)
  main_result = 0;
  jpeg2bmp_main ();
    23bc:	0c000000 	jal	0 <pgetc>
    23c0:	af800000 	sw	zero,0(gp)

  printf ("%d\n", main_result);
    23c4:	3c040000 	lui	a0,0x0
    23c8:	8f850000 	lw	a1,0(gp)
    23cc:	0c000000 	jal	0 <pgetc>
    23d0:	24840000 	addiu	a0,a0,0

  return main_result;
}
    23d4:	8f820000 	lw	v0,0(gp)
    23d8:	8fbf0014 	lw	ra,20(sp)
    23dc:	00000000 	sll	zero,zero,0x0
    23e0:	03e00008 	jr	ra
    23e4:	27bd0018 	addiu	sp,sp,24

Disassembly of section .rodata:

00000000 <hana_jpg-0x70>:
       0:	00000cb0 	0xcb0
       4:	00000c2c 	0xc2c
       8:	00000c2c 	0xc2c
       c:	00000c2c 	0xc2c
      10:	00000cd0 	0xcd0
      14:	00000c2c 	0xc2c
      18:	00000c2c 	0xc2c
      1c:	00000c2c 	0xc2c
      20:	00000c2c 	0xc2c
      24:	00000c2c 	0xc2c
      28:	00000c2c 	0xc2c
      2c:	00000c2c 	0xc2c
      30:	00000c2c 	0xc2c
      34:	00000c2c 	0xc2c
      38:	00000c2c 	0xc2c
      3c:	00000c2c 	0xc2c
      40:	00000c2c 	0xc2c
      44:	00000c2c 	0xc2c
      48:	00000c2c 	0xc2c
      4c:	00000c2c 	0xc2c
      50:	00000c2c 	0xc2c
      54:	00000c2c 	0xc2c
      58:	00000c2c 	0xc2c
      5c:	00000c2c 	0xc2c
      60:	00000c28 	0xc28
      64:	00000cf0 	0xcf0
      68:	00000cc0 	sll	at,zero,0x13
      6c:	00000ce0 	0xce0

00000070 <hana_jpg>:
      70:	ffd8ffe0 	0xffd8ffe0
      74:	00104a46 	0x104a46
      78:	49460001 	0x49460001
      7c:	01000001 	0x1000001
      80:	00010000 	sll	zero,at,0x0
      84:	ffdb0043 	0xffdb0043
      88:	00030202 	srl	zero,v1,0x8
      8c:	02020203 	0x2020203
      90:	02020203 	0x2020203
      94:	03030304 	0x3030304
      98:	06040404 	0x6040404
      9c:	04040806 	0x4040806
      a0:	06050609 	0x6050609
      a4:	080a0a09 	j	282824 <extend_mask+0x27d168>
      a8:	0809090a 	j	242428 <extend_mask+0x23cd6c>
      ac:	0c0f0c0a 	jal	3c3028 <extend_mask+0x3bd96c>
      b0:	0b0e0b09 	j	c382c24 <extend_mask+0xc37d568>
      b4:	090d110d 	j	4344434 <extend_mask+0x433ed78>
      b8:	0e0f1010 	jal	83c4040 <extend_mask+0x83be984>
      bc:	11100a0c 	beq	t0,s0,28f0 <hana_bmp+0x1428>
      c0:	12131210 	beq	s0,s3,4904 <hana_bmp+0x343c>
      c4:	130f1010 	beq	t8,t7,4108 <hana_bmp+0x2c40>
      c8:	10ffdb00 	beq	a3,ra,ffff6ccc <extend_mask+0xffff1610>
      cc:	43010303 	c0	0x1010303
      d0:	03040304 	0x3040304
      d4:	08040408 	j	101020 <extend_mask+0xfb964>
      d8:	100b090b 	beq	zero,t3,2508 <hana_bmp+0x1040>
      dc:	10101010 	beq	zero,s0,4120 <hana_bmp+0x2c58>
      e0:	10101010 	beq	zero,s0,4124 <hana_bmp+0x2c5c>
      e4:	10101010 	beq	zero,s0,4128 <hana_bmp+0x2c60>
      e8:	10101010 	beq	zero,s0,412c <hana_bmp+0x2c64>
      ec:	10101010 	beq	zero,s0,4130 <hana_bmp+0x2c68>
      f0:	10101010 	beq	zero,s0,4134 <hana_bmp+0x2c6c>
      f4:	10101010 	beq	zero,s0,4138 <hana_bmp+0x2c70>
      f8:	10101010 	beq	zero,s0,413c <hana_bmp+0x2c74>
      fc:	10101010 	beq	zero,s0,4140 <hana_bmp+0x2c78>
     100:	10101010 	beq	zero,s0,4144 <hana_bmp+0x2c7c>
     104:	10101010 	beq	zero,s0,4148 <hana_bmp+0x2c80>
     108:	10101010 	beq	zero,s0,414c <hana_bmp+0x2c84>
     10c:	1010ffc0 	beq	zero,s0,10 <hana_jpg-0x60>
     110:	00110800 	sll	at,s1,0x0
     114:	3b005a03 	xori	zero,t8,0x5a03
     118:	01220002 	0x1220002
     11c:	11010311 	beq	t0,at,d64 <hana_jpg+0xcf4>
     120:	01ffc400 	0x1ffc400
     124:	1f000001 	bgtz	t8,12c <hana_jpg+0xbc>
     128:	05010101 	bgez	t0,530 <hana_jpg+0x4c0>
     12c:	01010100 	0x1010100
     130:	00000000 	sll	zero,zero,0x0
     134:	00000001 	0x1
     138:	02030405 	0x2030405
     13c:	06070809 	0x6070809
     140:	0a0bffc4 	j	82fff10 <extend_mask+0x82fa854>
     144:	00b51000 	0xb51000
     148:	02010303 	0x2010303
     14c:	02040305 	0x2040305
     150:	05040400 	0x5040400
     154:	00017d01 	0x17d01
     158:	02030004 	sllv	zero,v1,s0
     15c:	11051221 	beq	t0,a1,49e4 <hana_bmp+0x351c>
     160:	31410613 	andi	at,t2,0x613
     164:	51610722 	0x51610722
     168:	71143281 	0x71143281
     16c:	91a10823 	lbu	at,2083(t5)
     170:	42b1c115 	c0	0xb1c115
     174:	52d1f024 	0x52d1f024
     178:	33627282 	andi	v0,k1,0x7282
     17c:	090a1617 	j	428585c <extend_mask+0x42801a0>
     180:	18191a25 	0x18191a25
     184:	26272829 	addiu	a3,s1,10281
     188:	2a343536 	slti	s4,s1,13622
     18c:	3738393a 	ori	t8,t9,0x393a
     190:	43444546 	c0	0x1444546
     194:	4748494a 	c1	0x148494a
     198:	53545556 	0x53545556
     19c:	5758595a 	0x5758595a
     1a0:	63646566 	0x63646566
     1a4:	6768696a 	0x6768696a
     1a8:	73747576 	0x73747576
     1ac:	7778797a 	jalx	de1e5e8 <extend_mask+0xde18f2c>
     1b0:	83848586 	lb	a0,-31354(gp)
     1b4:	8788898a 	lh	t0,-30326(gp)
     1b8:	92939495 	lbu	s3,-27499(s4)
     1bc:	96979899 	lhu	s7,-26471(s4)
     1c0:	9aa2a3a4 	lwr	v0,-23644(s5)
     1c4:	a5a6a7a8 	sh	a2,-22616(t5)
     1c8:	a9aab2b3 	swl	t2,-19789(t5)
     1cc:	b4b5b6b7 	0xb4b5b6b7
     1d0:	b8b9bac2 	swr	t9,-17726(a1)
     1d4:	c3c4c5c6 	lwc0	$4,-14906(s8)
     1d8:	c7c8c9ca 	lwc1	$f8,-13878(s8)
     1dc:	d2d3d4d5 	0xd2d3d4d5
     1e0:	d6d7d8d9 	0xd6d7d8d9
     1e4:	dae1e2e3 	0xdae1e2e3
     1e8:	e4e5e6e7 	swc1	$f5,-6425(a3)
     1ec:	e8e9eaf1 	swc2	$9,-5391(a3)
     1f0:	f2f3f4f5 	0xf2f3f4f5
     1f4:	f6f7f8f9 	0xf6f7f8f9
     1f8:	faffc400 	0xfaffc400
     1fc:	1f010003 	0x1f010003
     200:	01010101 	0x1010101
     204:	01010101 	0x1010101
     208:	01000000 	0x1000000
     20c:	00000001 	0x1
     210:	02030405 	0x2030405
     214:	06070809 	0x6070809
     218:	0a0bffc4 	j	82fff10 <extend_mask+0x82fa854>
     21c:	00b51100 	0xb51100
     220:	02010204 	0x2010204
     224:	04030407 	0x4030407
     228:	05040400 	0x5040400
     22c:	01027700 	0x1027700
     230:	01020311 	0x1020311
     234:	04052131 	0x4052131
     238:	06124151 	0x6124151
     23c:	07617113 	bgez	k1,1c68c <extend_mask+0x16fd0>
     240:	22328108 	addi	s2,s1,-32504
     244:	144291a1 	bne	v0,v0,fffe48cc <extend_mask+0xfffdf210>
     248:	b1c10923 	0xb1c10923
     24c:	3352f015 	andi	s2,k0,0xf015
     250:	6272d10a 	0x6272d10a
     254:	162434e1 	bne	s1,a0,d5dc <extend_mask+0x7f20>
     258:	25f11718 	addiu	s1,t7,5912
     25c:	191a2627 	0x191a2627
     260:	28292a35 	slti	t1,at,10805
     264:	36373839 	ori	s7,s1,0x3839
     268:	3a434445 	xori	v1,s2,0x4445
     26c:	46474849 	c1	0x474849
     270:	4a535455 	c2	0x535455
     274:	56575859 	0x56575859
     278:	5a636465 	0x5a636465
     27c:	66676869 	0x66676869
     280:	6a737475 	0x6a737475
     284:	76777879 	jalx	9dde1e4 <extend_mask+0x9dd8b28>
     288:	7a828384 	0x7a828384
     28c:	85868788 	lh	a2,-30840(t4)
     290:	898a9293 	lwl	t2,-28013(t4)
     294:	94959697 	lhu	s5,-26985(a0)
     298:	98999aa2 	lwr	t9,-25950(a0)
     29c:	a3a4a5a6 	sb	a0,-23130(sp)
     2a0:	a7a8a9aa 	sh	t0,-22102(sp)
     2a4:	b2b3b4b5 	0xb2b3b4b5
     2a8:	b6b7b8b9 	0xb6b7b8b9
     2ac:	bac2c3c4 	swr	v0,-15420(s6)
     2b0:	c5c6c7c8 	lwc1	$f6,-14392(t6)
     2b4:	c9cad2d3 	lwc2	$10,-11565(t6)
     2b8:	d4d5d6d7 	0xd4d5d6d7
     2bc:	d8d9dae2 	0xd8d9dae2
     2c0:	e3e4e5e6 	swc0	$4,-6682(ra)
     2c4:	e7e8e9ea 	swc1	$f8,-5654(ra)
     2c8:	f2f3f4f5 	0xf2f3f4f5
     2cc:	f6f7f8f9 	0xf6f7f8f9
     2d0:	faffda00 	0xfaffda00
     2d4:	0c030100 	jal	c0400 <extend_mask+0xbad44>
     2d8:	02110311 	0x2110311
     2dc:	003f00f5 	0x3f00f5
     2e0:	af005aea 	sw	zero,23274(t8)
     2e4:	17b3af8a 	bne	sp,s3,fffec110 <extend_mask+0xfffe6a54>
     2e8:	3c4f31f1 	0x3c4f31f1
     2ec:	a47a9bcf 	sh	k0,-25649(v1)
     2f0:	a9e9be22 	swl	t1,-16862(t7)
     2f4:	b067167a 	0xb067167a
     2f8:	6c56f12a 	0x6c56f12a
     2fc:	5bdaac0c 	0x5bdaac0c
     300:	492cc7cc 	0x492cc7cc
     304:	26401964 	addiu	zero,s2,6500
     308:	2c78e30b 	sltiu	t8,v1,-7413
     30c:	c0e8ba37 	lwc0	$8,-17865(a3)
     310:	ed3ba34d 	swc3	$27,-23731(t1)
     314:	e34d3b5b 	swc0	$13,15195(k0)
     318:	f17f8535 	0xf17f8535
     31c:	4d06d2d6 	0x4d06d2d6
     320:	e2f63bb8 	swc0	$22,15288(s7)
     324:	44f0dd58 	0x44f0dd58
     328:	4b720488 	c2	0x1720488
     32c:	33905628 	andi	s0,gp,0x5628
     330:	903c982c 	lbu	gp,-26580(at)
     334:	55be51ec 	0x55be51ec
     338:	bf2a7833 	0xbf2a7833
     33c:	f68bf10f 	0xf68bf10f
     340:	c25f886d 	lwc0	$31,-30611(s2)
     344:	a445acea 	sh	a1,-21270(v0)
     348:	67c2d1de 	0x67c2d1de
     34c:	2c71dac3 	sltiu	s1,v1,-9533
     350:	759823b6 	jalx	6608ed8 <extend_mask+0x660381c>
     354:	918c8c21 	lbu	t4,-29663(t4)
     358:	8db70443 	lw	s7,1091(t5)
     35c:	bf202000 	0xbf202000
     360:	02703a57 	0x2703a57
     364:	b0f817f6 	0xb0f817f6
     368:	c6f0c0f1 	lwc1	$f16,-16143(s7)
     36c:	61f14788 	0x61f14788
     370:	fc312c1a 	0xfc312c1a
     374:	bf8eae23 	0xbf8eae23
     378:	b6bad512 	0xb6bad512
     37c:	ff00cbb6 	0xff00cbb6
     380:	d274f58e 	0xd274f58e
     384:	3b68a472 	xori	t0,k1,0xa472
     388:	dcc804b0 	0xdcc804b0
     38c:	b3485940 	0xb3485940
     390:	0ac48ea5 	j	b123a94 <extend_mask+0xb11e3d8>
     394:	1fb70d8e 	0x1fb70d8e
     398:	a5cf1929 	sh	t7,6441(t6)
     39c:	6b369bbe 	0x6b369bbe
     3a0:	9a35b79e 	lwr	s5,-18530(s1)
     3a4:	bdfef317 	0xbdfef317
     3a8:	24d2e87d 	addiu	s2,a2,-6019
     3ac:	0ba96a16 	j	ea5a858 <extend_mask+0xea5519c>
     3b0:	1e35f818 	0x1e35f818
     3b4:	26f14e81 	addiu	s1,s7,20097
     3b8:	a478964d 	sh	t8,-27059(v1)
     3bc:	46da3be9 	c1	0xda3be9
     3c0:	2d74eb69 	sltiu	s4,t3,-5271
     3c4:	efed750b 	swc3	$13,29963(ra)
     3c8:	79445baf 	0x79445baf
     3cc:	e38a758e 	swc0	$10,30094(gp)
     3d0:	48900dd3 	0x48900dd3
     3d4:	18932c81 	0x18932c81
     3d8:	4152e181 	0x4152e181
     3dc:	3f28f893 	0x3f28f893
     3e0:	f661f0ab 	0xf661f0ab
     3e4:	93a6e8cf 	lbu	a2,-5937(sp)
     3e8:	ac4b7f73 	sw	t3,32627(v0)
     3ec:	316b3bab 	andi	t3,t3,0x3bab
     3f0:	0b792f74 	j	de4bdd0 <extend_mask+0xde46714>
     3f4:	bba8e55d 	swr	t0,-6819(sp)
     3f8:	e9115c97 	swc2	$17,23703(t0)
     3fc:	b7751f2e 	0xb7751f2e
     400:	72c1801d 	0x72c1801d
     404:	49c0faab 	0x49c0faab
     408:	c59e0aba 	lwc1	$f30,2746(t4)
     40c:	d7bec91b 	0xd7bec91b
     410:	f8aad6ee 	0xf8aad6ee
     414:	41637535 	0x41637535
     418:	be95676b 	0xbe95676b
     41c:	1dc59493 	0x1dc59493
     420:	88d53305 	lwl	s5,13061(a2)
     424:	c7ddb73c 	lwc1	$f29,-18628(s8)
     428:	432292e1 	c0	0x12292e1
     42c:	88322f28 	lwl	s2,12072(at)
     430:	5ebc27e1 	0x5ebc27e1
     434:	87c54f8c 	lh	a1,20364(s8)
     438:	b07c4782 	0xb07c4782
     43c:	d3c46356 	0xd3c46356
     440:	9f45b469 	0x9f45b469
     444:	2d66d2ac 	sltiu	a2,t3,-11604
     448:	6d125b95 	0x6d125b95
     44c:	7384866d 	0x7384866d
     450:	ebf2ac46 	swc2	$18,-21434(ra)
     454:	56601d9f 	0x56601d9f
     458:	0e558f40 	jal	9563d00 <extend_mask+0x955e644>
     45c:	71eaca18 	0x71eaca18
     460:	5a8b92b2 	0x5a8b92b2
     464:	4d6cb4f4 	0x4d6cb4f4
     468:	d2fd1dff 	0xd2fd1dff
     46c:	0022bcd9 	0x22bcd9
     470:	f34fc2cd 	0xf34fc2cd
     474:	43c71f03 	c0	0x1c71f03
     478:	be25e95e 	0xbe25e95e
     47c:	2b83457d 	slti	v1,gp,17789
     480:	2843a8bf 	slti	v1,v0,-22337
     484:	87ef6eae 	lh	t7,28334(ra)
     488:	ad9fecf1 	sw	ra,-4879(t4)
     48c:	c9248ab2 	lwc2	$4,-30030(t1)
     490:	c5b98603 	lwc1	$f25,-31229(t5)
     494:	aaec6f50 	swl	t4,28496(s7)
     498:	3b57d61f 	xori	s7,k0,0xd61f
     49c:	b5642b60 	0xb5642b60
     4a0:	9a459788 	lwr	a1,-26744(s2)
     4a4:	fc09a09b 	0xfc09a09b
     4a8:	5d50c5a8 	0x5d50c5a8
     4ac:	b6a5169e 	0xb6a5169e
     4b0:	0cdf6852 	jal	37da148 <extend_mask+0x37d4a8c>
     4b4:	4342d2e0 	c0	0x142d2e0
     4b8:	61f20120 	0x61f20120
     4bc:	9e476ee3 	0x9e476ee3
     4c0:	63e16fc3 	0x63e16fc3
     4c4:	2f097c45 	sltiu	t1,t8,31813
     4c8:	b6f12f8a 	0xb6f12f8a
     4cc:	7c753ebf 	0x7c753ebf
     4d0:	6ed67e36 	0x6ed67e36
     4d4:	d7e6b885 	0xd7e6b885
     4d8:	54ba3169 	0x54ba3169
     4dc:	96239419 	lhu	v1,-27623(s1)
     4e0:	8ddc2864 	lw	gp,10340(t6)
     4e4:	257904b1 	addiu	t9,t3,1201
     4e8:	071c8eb7 	0x71c8eb7
     4ec:	c3fe285d 	lwc0	$30,10333(ra)
     4f0:	416d3e0a 	0x416d3e0a
     4f4:	7c4ab5d4 	0x7c4ab5d4
     4f8:	b5d3a9d9 	0xb5d3a9d9
     4fc:	dfedd42e 	0xdfedd42e
     500:	eda1316a 	swc3	$1,12650(t5)
     504:	91c5b544 	lbu	a1,-19132(t6)
     508:	de646020 	0xde646020
     50c:	66591002 	0x66591002
     510:	83767693 	lb	s6,30355(k1)
     514:	8eb5e752 	lw	s5,-6318(s5)
     518:	c0caae0e 	lwc0	$10,-20978(a2)
     51c:	586a53b7 	0x586a53b7
     520:	3aded7b5 	xori	s8,s6,0xd7b5
     524:	fa7cccb5 	0xfa7cccb5
     528:	944f843c 	lhu	t7,-31684(v0)
     52c:	4906b3ac 	0x4906b3ac
     530:	477dab5c 	c1	0x17dab5c
     534:	daac9692 	0xdaac9692
     538:	3036a817 	andi	s6,at,0xa817
     53c:	e4b7801c 	swc1	$f23,-32740(a1)
     540:	023d73ec 	0x23d73ec
     544:	3bf1c569 	xori	s1,ra,0xc569
     548:	7c21f807 	0x7c21f807
     54c:	e2af8e1a 	swc0	$15,-29158(s5)
     550:	f3be9dac 	0xf3be9dac
     554:	dbdac3a4 	0xdbdac3a4
     558:	5f5aa6a1 	0x5f5aa6a1
     55c:	6e083711 	0x6e083711
     560:	d9499fdf 	0xd9499fdf
     564:	4487873b 	0x4487873b
     568:	94a6dec4 	lhu	a2,-8508(a1)
     56c:	e79c60fd 	swc1	$f28,24829(gp)
     570:	11f113e0 	beq	t7,s1,54f4 <zigzag_index+0x38>
     574:	9f823c2f 	0x9f823c2f
     578:	e1f7f057 	swc0	$23,-4009(t7)
     57c:	876dae13 	lh	t5,-20973(k1)
     580:	59f0edbc 	0x59f0edbc
     584:	7ac5adc5 	0x7ac5adc5
     588:	c995ee1b 	lwc2	$21,-4581(t4)
     58c:	4f09fbd5 	c3	0x109fbd5
     590:	b8919bcb 	swr	s1,-25653(a0)
     594:	7e598611 	0x7e598611
     598:	72180200 	0x72180200
     59c:	c1af09f8 	lwc0	$15,2552(t5)
     5a0:	7de16f88 	0x7de16f88
     5a4:	569e3b8f 	0x569e3b8f
     5a8:	e20fc22d 	swc0	$15,-15827(s0)
     5ac:	404b3c12 	0x404b3c12
     5b0:	adacd029 	sw	t4,-12247(t5)
     5b4:	3e4bdc05 	0x3e4bdc05
     5b8:	12240541 	beq	s1,a0,1ac0 <hana_bmp+0x5f8>
     5bc:	076b0e41 	0x76b0e41
     5c0:	cf5e879c 	lwc3	$30,-30820(k0)
     5c4:	0f030f95 	jal	c0c3e54 <extend_mask+0xc0be798>
     5c8:	d5c162a1 	0xd5c162a1
     5cc:	4eb2524d 	c3	0xb2524d
     5d0:	7476fcec 	jalx	1dbf3b0 <extend_mask+0x1db9cf4>
     5d4:	f4eaec34 	0xf4eaec34
     5d8:	ef2d74b1 	swc3	$13,29873(t9)
     5dc:	cefc6df8 	lwc3	$28,28152(s7)
     5e0:	0bf113e1 	j	fc44f84 <extend_mask+0xfc3f8c8>
     5e4:	7f89b54b 	0x7f89b54b
     5e8:	7bab35b9 	0x7bab35b9
     5ec:	d222bc5b 	0xd222bc5b
     5f0:	7d3eea58 	0x7d3eea58
     5f4:	d6296f22 	0xd6296f22
     5f8:	c2956d99 	lwc0	$21,28057(s4)
     5fc:	e0e0953d 	swc0	$0,-27331(a3)
     600:	065323ae 	0x65323ae
     604:	2b99f177 	slti	t9,gp,-3721
     608:	81679b5b 	lb	a3,-25765(t3)
     60c:	82e6c34d 	lb	a2,-15539(s7)
     610:	9155ec95 	lbu	s5,-4971(t2)
     614:	b705c046 	0xb705c046
     618:	f9bafe95 	0xf9bafe95
     61c:	ec3f173e 	swc3	$31,5950(at)
     620:	3ef8ebe2 	0x3ef8ebe2
     624:	b78a756f 	0xb78a756f
     628:	02f8db51 	0x2f8db51
     62c:	b7d16f6d 	0xb7d16f6d
     630:	8adbc36b 	lwl	k1,-15509(s6)
     634:	0c2ab1f9 	jal	aac7e4 <extend_mask+0xaa7128>
     638:	e8a0ed67 	swc2	$0,-4761(a1)
     63c:	7064ce7d 	0x7064ce7d
     640:	ff00a8a6 	0xff00a8a6
     644:	7c2eb6f1 	0x7c2eb6f1
     648:	ceb1e17b 	lwc3	$17,-7813(s5)
     64c:	cb1f16e8 	lwc2	$31,5864(t8)
     650:	b3330864 	0xb3330864
     654:	fb2dd25b 	0xfb2dd25b
     658:	b3297418 	0xb3297418
     65c:	20b018ef 	addi	s0,a1,6383
     660:	eb5e6673 	swc2	$30,26227(k0)
     664:	5650c53f 	0x5650c53f
     668:	aba7eee8 	swl	a3,-4376(sp)
     66c:	d3f3fcd7 	0xd3f3fcd7
     670:	99a269e8 	lwr	v0,27112(t5)
     674:	d9f3769b 	0xd9f3769b
     678:	6da868b7 	0x6da868b7
     67c:	d1dd6a9a 	0xd1dd6a9a
     680:	44b32433 	0x44b32433
     684:	6e90943b 	0x6e90943b
     688:	5b19f5ea 	0x5b19f5ea
     68c:	2baa7f11 	slti	t2,sp,32529
     690:	f8765769 	0xf8765769
     694:	1745da1c 	bne	k0,a1,ffff6f08 <extend_mask+0xffff184c>
     698:	96036af0 	lhu	v1,27376(s0)
     69c:	0fe3516a 	jal	f8d45a8 <extend_mask+0xf8ceeec>
     6a0:	ba378c5b 	swr	s7,-29605(s1)
     6a4:	75f5d5b5 	jalx	7d756d4 <extend_mask+0x7d70018>
     6a8:	cbda292c 	lwc2	$26,10540(s8)
     6ac:	e23c1007 	swc0	$28,4103(s1)
     6b0:	519039ee 	0x519039ee
     6b4:	3fad720f 	0x3fad720f
     6b8:	1de17629 	0x1de17629
     6bc:	6d31524e 	0x6d31524e
     6c0:	38238aba 	xori	v1,at,0x8aba
     6c4:	78876be8 	0x78876be8
     6c8:	5f3ba7a2 	0x5f3ba7a2
     6cc:	47affc24 	c1	0x1affc24
     6d0:	f875178e 	0xf875178e
     6d4:	6eaf6ff5 	0x6eaf6ff5
     6d8:	dd5b4b83 	0xdd5b4b83
     6dc:	4fb3b8d2 	c3	0x1b3b8d2
     6e0:	ac5e39e4 	sw	s8,14820(v0)
     6e4:	586f248a 	0x586f248a
     6e8:	e2ee1844 	swc0	$14,6212(s7)
     6ec:	d6cae31b 	0xd6cae31b
     6f0:	1158a315 	beq	t2,t8,fffe9348 <extend_mask+0xfffe3c8c>
     6f4:	63b0b47d 	0x63b0b47d
     6f8:	b19f4cf8 	0xb19f4cf8
     6fc:	a1fb3f4d 	sb	k1,16205(t7)
     700:	f0efc156 	0xf0efc156
     704:	97fac689 	lhu	k0,-14711(ra)
     708:	f6bd1353 	0xf6bd1353
     70c:	b33fd8ba 	0xb33fd8ba
     710:	ea98183a 	swc2	$24,6202(s4)
     714:	cd034df6 	lwc3	$3,19958(t0)
     718:	79c06122 	0x79c06122
     71c:	31c6e523 	andi	a2,t6,0xe523
     720:	31b97380 	andi	t9,t5,0x7380
     724:	4b28ae2b 	c2	0x128ae2b
     728:	e1bfc48d 	swc0	$31,-15219(t5)
     72c:	5be067ed 	0x5be067ed
     730:	10fe13f0 	beq	a3,s8,56f4 <extend_mask+0x38>
     734:	d6a6975e 	0xd6a6975e
     738:	1683561a 	bne	s4,v1,15fa4 <extend_mask+0x108e8>
     73c:	723f88a5 	0x723f88a5
     740:	fb27d92c 	0xfb27d92c
     744:	ae1e30f2 	sw	s8,12530(s0)
     748:	79b2305b 	0x79b2305b
     74c:	60aacccc 	0x60aacccc
     750:	dc23a27c 	0xdc23a27c
     754:	c3a11f50 	lwc0	$1,8016(sp)
     758:	7c46f1ee 	0x7c46f1ee
     75c:	81e34d63 	lb	v1,19811(t7)
     760:	e22e91e1 	swc0	$14,-28191(s1)
     764:	bd6f43d4 	0xbd6f43d4
     768:	fc05a0f8 	0xfc05a0f8
     76c:	6a3536f1 	0x6a3536f1
     770:	5fdbcd61 	0x5fdbcd61
     774:	79afddc3 	0x79afddc3
     778:	21864b49 	addi	a2,t4,19273
     77c:	1cc8b1a5 	0x1cc8b1a5
     780:	bc2cf34a 	0xbc2cf34a
     784:	b1155fb5 	0xb1155fb5
     788:	300fb5d0 	andi	t7,zero,0xb5d0
     78c:	4d5f4b83 	0x4d5f4b83
     790:	8e1e7858 	lw	s8,30808(s0)
     794:	ca1abb3e 	lwc2	$26,-17602(s0)
     798:	8baa6fce 	lwl	t2,28622(sp)
     79c:	eb5f91ce 	swc2	$31,-28210(k0)
     7a0:	e16ba7b8 	swc0	$11,-22600(t3)
     7a4:	bf09355f 	0xbf09355f
     7a8:	885e29b0 	lwl	s8,10672(v0)
     7ac:	f096a1f1 	0xf096a1f1
     7b0:	935a7d57 	lbu	k0,32087(k0)
     7b4:	4cf14e99 	0x4cf14e99
     7b8:	35c8b193 	ori	t0,t6,0xb193
     7bc:	585b78e3 	0x585b78e3
     7c0:	d3e1b61e 	0xd3e1b61e
     7c4:	5de15908 	0x5de15908
     7c8:	591c80b1 	0x591c80b1
     7cc:	bae1542c 	swr	at,21548(s7)
     7d0:	8db9c390 	lw	t9,-15472(t5)
     7d4:	6b85f13f 	0x6b85f13f
     7d8:	83fc2de1 	lb	gp,11745(ra)
     7dc:	4f07fc5d 	c3	0x107fc5d
     7e0:	d5fe19fc 	0xd5fe19fc
     7e4:	6ebbd47c 	0x6ebbd47c
     7e8:	29a45ba3 	slti	a0,t5,23459
     7ec:	c9a541a5 	lwc2	$5,16805(t5)
     7f0:	bdf4f186 	0xbdf4f186
     7f4:	8d02b417 	lw	v0,-19433(t0)
     7f8:	304c8235 	andi	t4,v0,0x8235
     7fc:	f383c466 	0xf383c466
     800:	7561098c 	jalx	5842630 <extend_mask+0x583cf74>
     804:	97694fcd 	lhu	t1,20429(k1)
     808:	5e25e0ff 	0x5e25e0ff
     80c:	00da03e2 	0xda03e2
     810:	8784edcc 	lh	a0,-4660(gp)
     814:	9a6eaf0c 	lwr	t6,-20724(s3)
     818:	49e1bd1e 	0x49e1bd1e
     81c:	ff00c316 	0xff00c316
     820:	8b3da2c8 	lwl	sp,-23864(t9)
     824:	23b5bc1b 	addi	s5,sp,-17381
     828:	c6c0c570 	lwc1	$f0,-14992(s6)
     82c:	c26550c5 	lwc0	$5,20677(s3)
     830:	9b05428c 	lwr	a1,17036(t8)
     834:	654abfd8 	0x654abfd8
     838:	bf0061f8 	0xbf0061f8
     83c:	6a9e11f0 	0x6a9e11f0
     840:	d69de24d 	0xd69de24d
     844:	1fc31a6e 	0x1fc31a6e
     848:	b3a6da47 	0xb3a6da47
     84c:	a4a0b3d7 	sh	zero,-19497(a1)
     850:	ad22967b 	sw	v0,-27013(t1)
     854:	5088d0a4 	0x5088d0a4
     858:	72cf2c72 	0x72cf2c72
     85c:	2cb20f20 	sltiu	s2,a1,3872
     860:	14246f95 	bne	at,a0,1c6b8 <extend_mask+0x16ffc>
     864:	372b4885 	ori	t3,t9,0x4885
     868:	562db053 	0x562db053
     86c:	866315da 	lh	v1,5594(s3)
     870:	1bb69df5 	0x1bb69df5
     874:	5b5d5bc9 	0x5b5d5bc9
     878:	efaadc77 	swc3	$10,-9097(sp)
     87c:	bab9f3af 	swr	t9,-3153(s5)
     880:	eccdf173 	swc3	$13,-3725(a2)
     884:	54d33c4b 	0x54d33c4b
     888:	e2af0ccd 	swc0	$15,3277(s5)
     88c:	e10d0afe 	swc0	$13,2814(t0)
     890:	43e18d4f 	c0	0x1e18d4f
     894:	53b6d667 	0x53b6d667
     898:	d2fcebbb 	0xd2fcebbb
     89c:	1bb7b231 	0x1bb7b231
     8a0:	ed926c11 	swc3	$18,27665(t4)
     8a4:	24771298 	addiu	s7,v1,4760
     8a8:	d584d805 	0xd584d805
     8ac:	c0c31c98 	lwc0	$3,7320(a2)
     8b0:	64f5ef8b 	0x64f5ef8b
     8b4:	1f17bc2d 	0x1f17bc2d
     8b8:	a578a7c0 	sh	t8,-22592(t3)
     8bc:	9e2cbcd2 	0x9e2cbcd2
     8c0:	753f0d78 	jalx	4fc35e0 <extend_mask+0x4fbdf24>
     8c4:	4ee88d5b 	c3	0xe88d5b
     8c8:	49f16e9f 	0x49f16e9f
     8cc:	6cd24b67 	0x6cd24b67
     8d0:	6c6149a1 	0x6c6149a1
     8d4:	d38420b4 	0xd38420b4
     8d8:	4ea12741 	c3	0xa12741
     8dc:	36e495c8 	ori	a0,s7,0x95c8
     8e0:	5655893e 	0x5655893e
     8e4:	fa75df13 	0xfa75df13
     8e8:	7e1b685f 	0x7e1b685f
     8ec:	0b7e1dcd 	j	df87734 <extend_mask+0xdf82078>
     8f0:	ab7c1a9f 	swl	gp,6815(k1)
     8f4:	4816f0de 	0x4816f0de
     8f8:	dde8fe27 	0xdde8fe27
     8fc:	68a482e2 	0x68a482e2
     900:	7d520120 	0x7d520120
     904:	2ecf1c5f 	sltiu	t7,s6,7263
     908:	bb1751f9 	swr	s7,20985(t8)
     90c:	9b374881 	lwr	s7,18561(t9)
     910:	a342a23f 	sb	v0,-24001(k0)
     914:	2fe465e1 	sltiu	a0,ra,26081
     918:	acbe2078 	sw	s8,8312(a1)
     91c:	934afd9d 	lbu	t2,-611(k0)
     920:	fc21e17f 	0xfc21e17f
     924:	087872e2 	j	1e1cb88 <extend_mask+0x1e174cc>
     928:	0d4ee64b 	jal	53b992c <extend_mask+0x53b4270>
     92c:	9b0975b9 	lwr	t1,30137(t8)
     930:	46fb3b6b 	c1	0xfb3b6b
     934:	bb5996d7 	swr	t9,-26921(k0)
     938:	ce5de197 	lwc3	$29,-7785(s2)
     93c:	734722c2 	0x734722c2
     940:	610aa59f 	0x610aa59f
     944:	2db76ac8 	sltiu	s7,t5,27336
     948:	e161e757 	swc0	$1,-6313(t3)
     94c:	0d2851a5 	jal	4a14694 <extend_mask+0x4a0efd8>
     950:	539bddbe 	0x539bddbe
     954:	9e4d2d15 	0x9e4d2d15
     958:	fe57d013 	0xfe57d013
     95c:	e5f764b5 	swc1	$f23,25781(t7)
     960:	47b4bf8a 	c1	0x1b4bf8a
     964:	be1c7c61 	0xbe1c7c61
     968:	f0a6a6da 	0xf0a6a6da
     96c:	6ea3e13f 	0x6ea3e13f
     970:	17e2c256 	bne	ra,v0,ffff12cc <extend_mask+0xfffebc10>
     974:	d2ed6d23 	0xd2ed6d23
     978:	b8d2b518 	swr	s2,-19176(a2)
     97c:	6f17ce8e 	0x6f17ce8e
     980:	7f312667 	0x7f312667
     984:	68c4cc47 	0x68c4cc47
     988:	96ee9b4a 	lhu	t6,-25782(s7)
     98c:	c8bb8118 	lwc2	$27,-32488(a1)
     990:	91be78f8 	lbu	s8,30968(t5)
     994:	511eb1f0 	0x511eb1f0
     998:	33c4f1f8 	andi	a0,s8,0xf1f8
     99c:	a23f0e1f 	sb	ra,3615(s1)
     9a0:	15e89e3c 	bne	t7,t0,fffe8294 <extend_mask+0xfffe2bd8>
     9a4:	10be92d1 	beq	a1,s8,fffe54ec <extend_mask+0xfffdfe30>
     9a8:	c52db46b 	lwc1	$f13,-19349(t1)
     9ac:	223960e8 	addi	t9,s1,24808
     9b0:	8549f906 	lh	t1,-1786(t2)
     9b4:	ecb90061 	swc3	$25,97(a1)
     9b8:	41caf7e0 	0x41caf7e0
     9bc:	bc59e37d 	0xbc59e37d
     9c0:	4fc43e1f 	c3	0x1c43e1f
     9c4:	f050f868 	0xf050f868
     9c8:	b6b67aa4 	0xb6b67aa4
     9cc:	fa79b7d4 	0xfa79b7d4
     9d0:	354b6d3e 	ori	t3,t2,0x6d3e
     9d4:	0b092c2e 	j	c24b0b8 <extend_mask+0xc2459fc>
     9d8:	2d945b0b 	sltiu	s4,t4,23307
     9dc:	512c6776 	0x512c6776
     9e0:	c58d0c68 	lwc1	$f13,3176(t4)
     9e4:	32599157 	andi	t9,s2,0x9157
     9e8:	920e17d9 	lbu	t6,6105(s0)
     9ec:	fe16fc5c 	0xfe16fc5c
     9f0:	d4fe2569 	0xd4fe2569
     9f4:	3e09f03f 	0x3e09f03f
     9f8:	c6af1458 	lwc1	$f15,5208(s5)
     9fc:	6916baad 	0x6916baad
     a00:	ddedc417 	0xddedc417
     a04:	2d1ac13e 	sltiu	k0,t0,-16066
     a08:	bb248d24 	swr	a0,-29404(t9)
     a0c:	96cae500 	lhu	t2,-6912(s6)
     a10:	5559da48 	0x5559da48
     a14:	f0aa2359 	0xf0aa2359
     a18:	54c21816 	0x54c21816
     a1c:	68986388 	0x68986388
     a20:	cc695494 	lwc3	$9,21652(v1)
     a24:	534f9afa 	0x534f9afa
     a28:	3f376d35 	0x3f376d35
     a2c:	ec9bba7b 	swc3	$27,-17797(a0)
     a30:	7c8b945a 	0x7c8b945a
     a34:	d51e5bf1 	0xd51e5bf1
     a38:	bfc0e3c6 	0xbfc0e3c6
     a3c:	3f1d63f1 	0x3f1d63f1
     a40:	578cfc3d 	0x578cfc3d
     a44:	ab6a1e10 	swl	t2,7696(k1)
     a48:	b545b89b 	0xb545b89b
     a4c:	4ad39a2b 	c2	0xd39a2b
     a50:	7bd8924d 	0x7bd8924d
     a54:	a2499668 	sb	t1,-27032(s2)
     a58:	f1e69525 	0xf1e69525
     a5c:	18824123 	0x18824123
     a60:	1ea01fa3 	bgtz	s5,88f0 <extend_mask+0x3234>
     a64:	935bd03f 	lbu	k1,-12225(k0)
     a68:	673d36d2 	0x673d36d2
     a6c:	18351d74 	0x18351d74
     a70:	f856dd63 	0xf856dd63
     a74:	b7bb637a 	0xb7bb637a
     a78:	9335bdc3 	lbu	s5,-16957(t9)
     a7c:	8df00c9c 	lw	s0,3228(t7)
     a80:	b646c6dc 	0xb646c6dc
     a84:	31b4ef03 	andi	s4,t5,0xef03
     a88:	3cf1f28f 	0x3cf1f28f
     a8c:	c57d7fc6 	lwc1	$f29,32710(t3)
     a90:	bf0e3c63 	0xbf0e3c63
     a94:	af78206b 	sw	t8,8299(k1)
     a98:	8e9acc16 	lw	k0,-13290(s4)
     a9c:	e82f05cc 	swc2	$15,1484(at)
     aa0:	6aef771c 	0x6aef771c
     aa4:	cbe6b8ca 	lwc2	$6,-18230(ra)
     aa8:	911a6030 	lbu	k0,24624(t0)
     aac:	042e39c0 	0x42e39c0
     ab0:	180ab4db 	0x180ab4db
     ab4:	9d1fc591 	0x9d1fc591
     ab8:	fc1ab7d7 	0xfc1ab7d7
     abc:	ae7ed6ba 	sw	s8,-10566(s3)
     ac0:	1f896da3 	0x1f896da3
     ac4:	32dd5c93 	andi	sp,s6,0x5c93
     ac8:	3c6cd1b9 	0x3c6cd1b9
     acc:	75d8d926 	jalx	7636498 <extend_mask+0x7630ddc>
     ad0:	260ca415 	addiu	t4,s0,-23531
     ad4:	eb8078ca 	swc2	$0,30922(gp)
     ad8:	a83cf5f3 	swl	gp,-2573(at)
     adc:	08c25353 	j	3094d4c <extend_mask+0x308f690>
     ae0:	837257bf 	lb	s2,22463(k1)
     ae4:	5b2e976b 	0x5b2e976b
     ae8:	a6da8d2d 	sh	k0,-29395(s6)
     aec:	39918bfb 	xori	s1,t4,0x8bfb
     af0:	45eb7f08 	0x45eb7f08
     af4:	64d666f1 	0x64d666f1
     af8:	0fc18d46 	jal	f063518 <extend_mask+0xf05de5c>
     afc:	458f57bb 	0x458f57bb
     b00:	37325a01 	ori	s2,t9,0x5a01
     b04:	32476ac7 	andi	a3,s2,0x6ac7
     b08:	e6900493 	swc1	$f16,1171(s4)
     b0c:	3b54b961 	xori	s4,k0,0xb961
     b10:	b0700eec 	0xb0700eec
     b14:	718ae2ad 	0x718ae2ad
     b18:	f54d2de0 	0xf54d2de0
     b1c:	8de74b33 	lw	a3,19251(t7)
     b20:	2b202e41 	slti	zero,t9,11841
     b24:	1f7b1cfe 	0x1f7b1cfe
     b28:	b5cdd8e8 	0xb5cdd8e8
     b2c:	76facc1a 	jalx	beb3068 <extend_mask+0xbead9ac>
     b30:	84cf2b46 	lh	t7,11078(a2)
     b34:	2296350e 	addi	s6,s4,13582
     b38:	4f0aa5b0 	c3	0x10aa5b0
     b3c:	c48fa633 	lwc1	$f15,-22989(a0)
     b40:	5d3af823 	0x5d3af823
     b44:	c1b10119 	lwc0	$17,281(t5)
     b48:	f1cdbe50 	0xf1cdbe50
     b4c:	6de08c71 	0x6de08c71
     b50:	5f35889d 	0x5f35889d
     b54:	1c44dc9a 	0x1c44dc9a
     b58:	e5f25fd3 	swc1	$f18,24531(t7)
     b5c:	1c6a24bd 	0x1c6a24bd
     b60:	e468788b 	swc1	$f8,30859(v1)
     b64:	44f0ecda 	0x44f0ecda
     b68:	febdafdb 	0xfebdafdb
     b6c:	c77d76fa 	lwc1	$f29,30458(k1)
     b70:	1433d96a 	bne	at,s3,ffff711c <extend_mask+0xffff1a60>
     b74:	36802c72 	ori	zero,s4,0x2c72
     b78:	c13b2084 	lwc0	$27,8324(t1)
     b7c:	5dc61c62 	0x5dc61c62
     b80:	48c5c310 	0x48c5c310
     b84:	f1fcad1c 	0xf1fcad1c
     b88:	8fb836d9 	lw	t8,14041(sp)
     b8c:	032fa7ff 	0x32fa7ff
     b90:	00c333fc 	0xc333fc
     b94:	67f0b784 	0x67f0b784
     b98:	2db481af 	sltiu	s4,t5,-32337
     b9c:	463c0baf 	c1	0x3c0baf
     ba0:	dbdb6b17 	0xdbdb6b17
     ba4:	d73044b7 	0xd73044b7
     ba8:	36317da6 	ori	s1,s1,0x7da6
     bac:	2851ae15 	slti	s1,v0,-20971
     bb0:	236f32e3 	addi	t7,k1,13027
     bb4:	742d1c70 	jalx	b471c0 <extend_mask+0xb41b04>
     bb8:	bee8c7ef 	0xbee8c7ef
     bbc:	48dc8cec 	0x48dc8cec
     bc0:	4f55f09b 	c3	0x155f09b
     bc4:	c05e24f8 	lwc0	$30,9464(v0)
     bc8:	efe373e2 	swc3	$3,29666(ra)
     bcc:	3f8ade0f 	0x3f8ade0f
     bd0:	d2bc67e1 	0xd2bc67e1
     bd4:	d1a75ae9 	0xd1a75ae9
     bd8:	57da9f9f 	0x57da9f9f
     bdc:	7163a9d8 	0x7163a9d8
     be0:	8b769162 	lwl	s6,-28318(k1)
     be4:	b9830c66 	swr	v1,3174(t4)
     be8:	95d1da48 	lhu	s1,-9656(t6)
     bec:	4b30c98a 	c2	0x130c98a
     bf0:	dd1792be 	0xdd1792be
     bf4:	5b7d57a9 	0x5b7d57a9
     bf8:	dd7c3dd0 	0xdd7c3dd0
     bfc:	7425f126 	jalx	97c498 <extend_mask+0x976ddc>
     c00:	9f71ac7d 	0x9f71ac7d
     c04:	8fe1d6b5 	lw	at,-10571(ra)
     c08:	a959bdb6 	swl	t9,-16970(t2)
     c0c:	96a2ce0b 	lhu	v0,-12789(s5)
     c10:	78849b2f 	0x78849b2f
     c14:	8deaa12b 	lw	t2,-24277(t7)
     c18:	3942afbb 	xori	v0,t2,0xafbb
     c1c:	040cdcb1 	0x40cdcb1
     c20:	95763b13 	lhu	s6,15123(t3)
     c24:	f4585c05 	0xf4585c05
     c28:	e32a94fd 	swc0	$10,-27395(t9)
     c2c:	e8b7a59d 	swc2	$23,-23139(a1)
     c30:	b44f55d9 	0xb44f55d9
     c34:	adf6ec65 	sw	s6,-5019(t7)
     c38:	0f79ddbb 	jal	de776ec <extend_mask+0xde72030>
     c3c:	1f9dba97 	0x1f9dba97
     c40:	86f4af0f 	lh	s4,-20721(s7)
     c44:	fc6fd6fc 	0xfc6fd6fc
     c48:	316de24b 	andi	t5,t3,0xe24b
     c4c:	58b46d33 	0x58b46d33
     c50:	562ed79a 	0x562ed79a
     c54:	b5a178a6 	0xb5a178a6
     c58:	8e39bed1 	lw	t9,-16687(s1)
     c5c:	e6cb6e84 	swc1	$f11,28292(s6)
     c60:	9923df13 	lwr	v1,-8429(t1)
     c64:	6e0ac3f7 	0x6e0ac3f7
     c68:	7bb39195 	0x7bb39195
     c6c:	3cff0085 	0x3cff0085
     c70:	bc59e12f 	0xbc59e12f
     c74:	0578f6df 	0x578f6df
     c78:	c52efa75 	lwc1	$f14,-1419(t1)
     c7c:	c5adb6a3 	lwc1	$f13,-18781(t5)
     c80:	1ea77834 	0x1ea77834
     c84:	ddab05b4 	0xddab05b4
     c88:	b0dcbbc5 	0xb0dcbbc5
     c8c:	1dbc32a3 	0x1dbc32a3
     c90:	060ac639 	0x60ac639
     c94:	55241221 	0x55241221
     c98:	87707194 	lh	s0,29076(k1)
     c9c:	6c6c7c72 	0x6c6c7c72
     ca0:	f8bb73e3 	0xf8bb73e3
     ca4:	2f8a1acc 	sltiu	t2,gp,6860
     ca8:	b6b71617 	0xb6b71617
     cac:	f610eada 	0xf610eada
     cb0:	8cb68d6e 	lw	s6,-29330(a1)
     cb4:	64b8b79d 	0x64b8b79d
     cb8:	5269137a 	0x5269137a
     cbc:	97666114 	lhu	a2,24852(k1)
     cc0:	d16e63fc 	0xd16e63fc
     cc4:	3b5d491d 	xori	sp,k0,0x491d
     cc8:	5abebff8 	0x5abebff8
     ccc:	1163f05b 	beq	t3,v1,ffffce3c <extend_mask+0xffff7780>
     cd0:	e2af82fc 	swc0	$15,-32004(s5)
     cd4:	03a75e5b 	0x3a75e5b
     cd8:	6a3ab788 	0x6a3ab788
     cdc:	fc2a7ecb 	0xfc2a7ecb
     ce0:	6bac6a4a 	0x6bac6a4a
     ce4:	b6bab594 	0xb6bab594
     ce8:	2b14a0b4 	slti	s4,t8,-24396
     cec:	33081a29 	andi	t0,t8,0x1a29
     cf0:	92221bca 	lbu	v0,7114(s1)
     cf4:	473215f2 	c1	0x13215f2
     cf8:	b24bbc6a 	0xb24bbc6a
     cfc:	42c061af 	c0	0xc061af
     d00:	5e71a32d 	0x5e71a32d
     d04:	22eebefb 	addi	t6,s7,-16645
     d08:	3d2f7d3f 	0x3d2f7d3f
     d0c:	2269dfe1 	addi	t1,s3,-8223
     d10:	383f89df 	xori	ra,at,0x89df
     d14:	b5e788ad 	0xb5e788ad
     d18:	7c149f0f 	0x7c149f0f
     d1c:	bc15e0af 	0xbc15e0af
     d20:	b078a35d 	0xb078a35d
     d24:	bf9af751 	0xbf9af751
     d28:	8354b333 	lb	s4,-19661(k0)
     d2c:	2cfa75d8 	sltiu	k0,a3,30168
     d30:	dd6d76ad 	0xdd6d76ad
     d34:	03a4915c 	0x3a4915c
     d38:	231481d6 	addi	s4,t8,-32298
     d3c:	42577126 	c0	0x577126
     d40:	30ca7647 	andi	t2,a2,0x7647
     d44:	b3f083f6 	0xb3f083f6
     d48:	bed18781 	0xbed18781
     d4c:	63b4f176 	0x63b4f176
     d50:	aba7f87e 	swl	a3,-1922(sp)
     d54:	eb463616 	swc2	$6,13846(k0)
     d58:	b35859e9 	0xb35859e9
     d5c:	41adf525 	0x41adf525
     d60:	78a58ee2 	0x78a58ee2
     d64:	f3508821 	0xf3508821
     d68:	ccb14c62 	lwc3	$17,19554(a1)
     d6c:	90c7a7b4 	lbu	a3,-22604(a2)
     d70:	3713cae4 	ori	s3,t8,0xcae4
     d74:	ba6c3be0 	swr	t4,15328(s3)
     d78:	d1f8451f 	0xd1f8451f
     d7c:	c6fbf7f8 	lwc1	$f27,-2056(s7)
     d80:	ebf0daf7 	swc2	$16,-9481(ra)
     d84:	e1f78535 	swc0	$23,-31435(t7)
     d88:	9f12dc6a 	0x9f12dc6a
     d8c:	0f349676 	jal	cd259d8 <extend_mask+0xcd2031c>
     d90:	2c5b4d92 	sltiu	k1,v0,19858
     d94:	7bbd3825 	0x7bbd3825
     d98:	89331955 	lwl	s3,6485(t1)
     d9c:	e4b69520 	swc1	$f22,-27360(a1)
     da0:	289f3065 	slti	ra,a0,12389
     da4:	f2e532fe 	0xf2e532fe
     da8:	f092be35 	0xf092be35
     dac:	e1bfd9e7 	swc0	$31,-9753(t5)
     db0:	c5b7826f 	lwc1	$f23,-32145(t5)
     db4:	05e8b069 	0x5e8b069
     db8:	7ad6a576 	0x7ad6a576
     dbc:	91497f6b 	lbu	t1,32619(t2)
     dc0:	7f66226b 	0x7f66226b
     dc4:	4b3dccb2 	c2	0x13dccb2
     dc8:	5e88e41e 	0x5e88e41e
     dcc:	648b1c8a 	0x648b1c8a
     dd0:	b1aec0ad 	0xb1aec0ad
     dd4:	be647758 	0xbe647758
     dd8:	95b15d15 	lhu	s1,23829(t5)
     ddc:	e18ba728 	swc0	$11,-22744(t4)
     de0:	fd56f25b 	0xfd56f25b
     de4:	5b6b6bfd 	0x5b6b6bfd
     de8:	6df91a37 	0x6df91a37
     dec:	adcbbe3f 	sw	t3,-16833(t6)
     df0:	93c25e20 	lbu	v0,24096(s8)
     df4:	9f5cf02d 	0x9f5cf02d
     df8:	b6b175ae 	0xb6b175ae
     dfc:	69b79f65 	0x69b79f65
     e00:	6b8f14dd 	0x6b8f14dd
     e04:	dbc90dd2 	0xdbc90dd2
     e08:	de8650b0 	0xde8650b0
     e0c:	a5b92863 	sh	t9,10339(t5)
     e10:	916d6286 	lbu	t5,25222(t3)
     e14:	098b8791 	j	62e1e44 <extend_mask+0x62dc788>
     e18:	76cf0827 	jalx	b3c209c <extend_mask+0xb3bc9e0>
     e1c:	31ac1e7b 	andi	t4,t5,0x1e7b
     e20:	a1f8ff00 	sb	t8,-256(t7)
     e24:	4fd0be25 	c3	0x1d0be25
     e28:	5a5d78f3 	0x5a5d78f3
     e2c:	50bbf146 	0x50bbf146
     e30:	a4b34369 	sh	s3,17257(a1)
     e34:	2caad025 	sltiu	t2,a1,-12251
     e38:	8a69ec88 	lwl	t1,-4984(s3)
     e3c:	b2432431 	0xb2432431
     e40:	298c6c8d 	slti	t4,t4,27789
     e44:	4218d02b 	c0	0x18d02b
     e48:	2bab2e55 	slti	t3,sp,11861
     e4c:	9414e8be 	lhu	s4,-5954(zero)
     e50:	12e91613 	beq	s7,t1,66a0 <extend_mask+0xfe4>
     e54:	f88bc3ba 	0xf88bc3ba
     e58:	a6bd7d77 	sh	sp,32119(s5)
     e5c:	f1175bd6 	0xf1175bd6
     e60:	246d174a 	addiu	t5,v1,5962
     e64:	d12cee25 	0xd12cee25
     e68:	b4b796f2 	0xb4b796f2
     e6c:	658ed207 	0x658ed207
     e70:	b8d52e15 	swr	s5,11797(a2)
     e74:	45ac4208 	0x45ac4208
     e78:	602bb04b 	0x602bb04b
     e7c:	23838210 	addi	v1,gp,-32240
     e80:	3961eb7f 	xori	at,t3,0xeb7f
     e84:	0fbf660f 	jal	efd983c <extend_mask+0xefd4180>
     e88:	016bda46 	0x16bda46
     e8c:	9fe30d67 	0x9fe30d67
     e90:	c711f876 	lwc1	$f17,-1930(t8)
     e94:	da6bfbab 	0xda6bfbab
     e98:	7d62de3d 	0x7d62de3d
     e9c:	7ad9ac6d 	0x7ad9ac6d
     ea0:	5a7bb9a0 	0x5a7bb9a0
     ea4:	b7f2de45 	0xb7f2de45
     ea8:	4b8897cf 	c2	0x18897cf
     eac:	6b72ab31 	0x6b72ab31
     eb0:	deeb2147 	0xdeeb2147
     eb4:	d92a185f 	0xd92a185f
     eb8:	9a586ad9 	lwr	t8,27353(s2)
     ebc:	8e21d482 	lw	at,-11134(s1)
     ec0:	4947a376 	0x4947a376
     ec4:	ddf57ae9 	0xddf57ae9
     ec8:	f7bb5c6d 	0xf7bb5c6d
     ecc:	cd493470 	lwc3	$9,13424(t2)
     ed0:	9fb44cd6 	0x9fb44cd6
     ed4:	df1a344b 	0xdf1a344b
     ed8:	7f1df81e 	0x7f1df81e
     edc:	74d52d34 	jalx	354b4d0 <extend_mask+0x3545e14>
     ee0:	3d3adb51 	0x3d3adb51
     ee4:	bb8a568a 	swr	t2,22154(gp)
     ee8:	19ed1e67 	0x19ed1e67
     eec:	9a27b544 	lwr	a3,-19132(s1)
     ef0:	004f2a2c 	0x4f2a2c
     ef4:	50a48e8f 	0x50a48e8f
     ef8:	26e8fce8 	addiu	t0,s7,-792
     efc:	882f92aa 	lwl	t7,-27990(at)
     f00:	9f06ff00 	0x9f06ff00
     f04:	69ef86f3 	0x69ef86f3
     f08:	e993fc21 	swc2	$19,-991(t4)
     f0c:	f889e18b 	0xf889e18b
     f10:	58bc3fac 	0x58bc3fac
     f14:	a25b4ced 	sb	k1,19693(s2)
     f18:	710456b0 	0x710456b0
     f1c:	ca540128 	lwc2	$20,296(s2)
     f20:	8a0b788c 	lwl	t3,30860(s0)
     f24:	659de462 	0x659de462
     f28:	e64623e5 	swc1	$f6,9189(s2)
     f2c:	0bb71585 	j	edc5614 <extend_mask+0xedbff58>
     f30:	f057c07a 	0xf057c07a
     f34:	cdff00c4 	lwc3	$31,196(t7)
     f38:	ab9d4df5 	swl	sp,19957(gp)
     f3c:	4b5bbd17 	c2	0x15bbd17
     f40:	4ebcd434 	c3	0xbcd434
     f44:	d58f56bd 	0xd58f56bd
     f48:	7b08b53b 	0x7b08b53b
     f4c:	749cc254 	jalx	2730950 <extend_mask+0x272b294>
     f50:	4f83248c 	c3	0x183248c
     f54:	4024ab23 	0x4024ab23
     f58:	2c60b028 	sltiu	zero,v1,-20440
     f5c:	7715afa0 	jalx	c56be80 <extend_mask+0xc5667c4>
     f60:	fe2a7c19 	0xfe2a7c19
     f64:	f036a1e2 	0xf036a1e2
     f68:	4f167897 	c3	0x1167897
     f6c:	c216da65 	lwc0	$22,-9627(s0)
     f70:	968fa568 	lhu	t7,-23192(s4)
     f74:	106a571a 	beq	v1,t2,16be0 <extend_mask+0x11524>
     f78:	b4d690b6 	0xb4d690b6
     f7c:	9f722633 	0x9f722633
     f80:	abb5acfb 	swl	s5,-21253(sp)
     f84:	85bf96be 	lh	ra,-26946(t5)
     f88:	532c9fbd 	0x532c9fbd
     f8c:	011d1949 	0x11d1949
     f90:	db906a8f 	0xdb906a8f
     f94:	b6c54dd4 	0xb6c54dd4
     f98:	8349fc2d 	lb	t1,-979(k0)
     f9c:	3d53b745 	0x3d53b745
     fa0:	75b74dcb 	jalx	6dd372c <extend_mask+0x6dce070>
     fa4:	a7349de4 	sh	s4,-25116(t9)
     fa8:	ae7c69a2 	sw	gp,27042(s3)
     fac:	d9683e1f 	0xd9683e1f
     fb0:	f1c6a3e1 	0xf1c6a3e1
     fb4:	9d4b4eb9 	0x9d4b4eb9
     fb8:	bcf0a4b7 	0xbcf0a4b7
     fbc:	93c09399 	lbu	zero,-27751(s8)
     fc0:	9584a033 	lhu	a0,-24525(t4)
     fc4:	18d048bc 	0x18d048bc
     fc8:	36557d89 	ori	s5,s2,0x7d89
     fcc:	ebc574d2 	swc2	$5,29906(s8)
     fd0:	f8abc191 	0xf8abc191
     fd4:	4af1da7c 	c2	0xf1da7c
     fd8:	39f042c0 	xori	s0,t7,0x42c0
     fdc:	8c562597 	lw	s6,9623(v0)
     fe0:	51883840 	0x51883840
     fe4:	780c33d7 	0x780c33d7
     fe8:	18cd7277 	0x18cd7277
     fec:	536876da 	0x536876da
     ff0:	65ad8787 	0x65ad8787
     ff4:	b5186fd2 	0xb5186fd2
     ff8:	3d6a62f7 	0x3d6a62f7
     ffc:	a2dd6246 	sb	sp,25158(s6)
    1000:	90a332c4 	lbu	v1,12996(a1)
    1004:	02492232 	0x2492232
    1008:	8c2aef56 	lw	t2,-4266(at)
    100c:	20ef3fdd 	addi	t7,a3,16349
    1010:	39e657e0 	xori	a2,t7,0x57e0
    1014:	ac5a8a8d 	sw	k0,-30067(v0)
    1018:	4124d551 	0x4124d551
    101c:	6e879c15 	0x6e879c15
    1020:	6c72006e 	0x6c72006e
    1024:	700e791c 	0x700e791c
    1028:	d7cbd5a3 	0xd7cbd5a3
    102c:	055e71c4 	0x55e71c4
    1030:	3e469f47 	0x3e469f47
    1034:	75bf9335 	jalx	6fe4cd4 <extend_mask+0x6fdf618>
    1038:	e5e47686 	swc1	$f4,30342(t7)
    103c:	d64f6bee 	0xd64f6bee
    1040:	775a7fed 	jalx	d69ffb4 <extend_mask+0xd69a8f8>
    1044:	43e2cf0e 	c0	0x1e2cf0e
    1048:	fda2fbc2 	0xfda2fbc2
    104c:	7a80d375 	0x7a80d375
    1050:	3b39a3b3 	xori	t9,t9,0xa3b3
    1054:	5b789648 	0x5b789648
    1058:	a1d434ff 	sb	s4,13567(t6)
    105c:	003a3936 	0x3a3936
    1060:	f98ade6e 	0xf98ade6e
    1064:	4cb0a798 	0x4cb0a798
    1068:	85d77a48 	lh	s7,31304(t6)
    106c:	fbb77ccb 	0xfbb77ccb
    1070:	5f5b78eb 	0x5f5b78eb
    1074:	e2b6bbfb 	swc0	$22,-17413(s5)
    1078:	41fc39f1 	0x41fc39f1
    107c:	f7862436 	0xf7862436
    1080:	3e1ed3a7 	0x3e1ed3a7
    1084:	d2b4f586 	0xd2b4f586
    1088:	3b6d5cbd 	xori	t5,k1,0x5cbd
    108c:	e2348632 	swc0	$20,-31182(s1)
    1090:	c8622433 	lwc2	$2,9267(v1)
    1094:	c4b3472a 	lwc1	$f19,18218(a1)
    1098:	17091a6c 	bne	t8,t1,7a4c <extend_mask+0x2390>
    109c:	94a94612 	lhu	t1,17938(a1)
    10a0:	b987f357 	swr	a3,-3241(t4)
    10a4:	c596d0e9 	lwc1	$f22,-12055(t4)
    10a8:	1e28d5ec 	0x1e28d5ec
    10ac:	f4e0f145 	0xf4e0f145
    10b0:	69ab5cc1 	0x69ab5cc1
    10b4:	0fceccca 	jal	f3b3328 <extend_mask+0xf3adc6c>
    10b8:	91cae106 	lbu	t2,-7930(t6)
    10bc:	e2493800 	swc0	$9,14336(s2)
    10c0:	724e78af 	0x724e78af
    10c4:	47f1578e 	c1	0x1f1578e
    10c8:	3c4ba37c 	0x3c4ba37c
    10cc:	28f869e2 	slti	t8,a3,27106
    10d0:	cd3ef614 	lwc3	$30,-2540(t1)
    10d4:	d5a75d47 	0xd5a75d47
    10d8:	7dd3d9c3 	0x7dd3d9c3
    10dc:	23168ef2 	addi	s6,t8,-28942
    10e0:	e151f0e8 	swc0	$17,-3864(t2)
    10e4:	40751230 	0x40751230
    10e8:	0e06e1c6 	jal	81b8718 <extend_mask+0x81b305c>
    10ec:	0fcab8fa 	jal	f2ae3e8 <extend_mask+0xf2a8d2c>
    10f0:	dc1c1e1e 	0xdc1c1e1e
    10f4:	94a9d3d9 	lhu	t1,-11303(a1)
    10f8:	6b6e8fa3 	0x6b6e8fa3
    10fc:	5b376773 	0x5b376773
    1100:	9946d747 	lwr	a2,-10425(t2)
    1104:	0ef7efa7 	jal	bdfbe9c <extend_mask+0xbdf67e0>
    1108:	b2886ca0 	0xb2886ca0
    110c:	86e21322 	lh	v0,4898(s7)
    1110:	3ba48c58 	xori	a0,sp,0x8c58
    1114:	1f994a19 	0x1f994a19
    1118:	14ed6046 	bne	a3,t5,19234 <extend_mask+0x13b78>
    111c:	ff00bbf2 	0xff00bbf2
    1120:	b2b71919 	0xb2b71919
    1124:	07dcb49f 	0x7dcb49f
    1128:	8a5f19fc 	lwl	ra,6652(s2)
    112c:	23e18f0c 	addi	at,ra,-28916
    1130:	6ab369d7 	0x6ab369d7
    1134:	769a3595 	jalx	a68d654 <extend_mask+0xa687f98>
    1138:	c4706853 	lwc1	$f16,26707(v1)
    113c:	cba0bc16 	lwc2	$0,-17386(sp)
    1140:	f2dbb2cf 	0xf2dbb2cf
    1144:	898cb12a 	lwl	t4,-20182(t4)
    1148:	34dbd5ae 	ori	k1,a2,0xd5ae
    114c:	42e64259 	c0	0xe64259
    1150:	bcd28a5b 	0xbcd28a5b
    1154:	cc6af1ed 	lwc3	$10,-3603(v1)
    1158:	2acadb56 	slti	t2,s6,-9386
    115c:	f037897c 	0xf037897c
    1160:	41a9c66e 	0x41a9c66e
    1164:	b52fed0b 	0xb52fed0b
    1168:	343752b1 	ori	s7,at,0x52b1
    116c:	69089a57 	0x69089a57
    1170:	32fcc4e7 	andi	gp,s7,0xc4e7
    1174:	2c4649eb 	sltiu	a2,v0,18923
    1178:	c9f535fa 	lwc2	$21,13818(t7)
    117c:	f1fb2e78 	0xf1fb2e78
    1180:	33c29f13 	andi	v0,s8,0x9f13
    1184:	7f64af87 	0x7f64af87
    1188:	3a278ef4 	xori	a3,s1,0x8ef4
    118c:	0b3d5f4f 	j	cf57d3c <extend_mask+0xcf52680>
    1190:	f88515fe 	0xf88515fe
    1194:	99e23b69 	lwr	v0,15209(t7)
    1198:	630b1df4 	0x630b1df4
    119c:	36525cc3 	ori	s2,s2,0x5cc3
    11a0:	68db5302 	0x68db5302
    11a4:	29a28ede 	slti	v0,t5,-28962
    11a8:	dd5278f6 	0xdd5278f6
    11ac:	ca3c888e 	lwc2	$28,-30578(s1)
    11b0:	fcc6a470 	0xfcc6a470
    11b4:	509d4537 	0x509d4537
    11b8:	1a4edd1f 	0x1a4edd1f
    11bc:	e0d7aeb6 	swc0	$23,-20810(a2)
    11c0:	2a14d493 	slti	s4,s0,-11117
    11c4:	678b7c33 	0x678b7c33
    11c8:	f8bbf03f 	0xf8bbf03f
    11cc:	c4bfb3de 	lwc1	$f31,-19490(a1)
    11d0:	8d1f8f3c 	lw	ra,-28868(t0)
    11d4:	4f0690da 	c3	0x10690da
    11d8:	95eeff00 	lhu	t6,-256(t7)
    11dc:	14e9ba4e 	bne	a3,t1,fffefb18 <extend_mask+0xfffea45c>
    11e0:	9d7315c6 	0x9d7315c6
    11e4:	9b226a29 	lwr	v0,27177(t9)
    11e8:	9bd9ee6d 	lwr	t9,-4499(s8)
    11ec:	224f2e3c 	addi	t7,s2,11836
    11f0:	cb04d2cb 	lwc2	$4,-11573(t8)
    11f4:	88f73cfb 	lwl	s7,15611(a3)
    11f8:	51bcc2ae 	0x51bcc2ae
    11fc:	9b5abf8d 	lwr	k0,-16499(k0)
    1200:	3e356b3e 	0x3e356b3e
    1204:	3ff13eb7 	0x3ff13eb7
    1208:	f0e7c45a 	0xf0e7c45a
    120c:	347a4d96 	ori	k0,v1,0x4d96
    1210:	9b6de21b 	lwr	t5,-7653(k1)
    1214:	0d52477b 	jal	5491dec <extend_mask+0x548c730>
    1218:	8d3fc417 	lw	ra,-15337(t1)
    121c:	822668ad 	lb	a2,26797(s1)
    1220:	c4f712c7 	lwc1	$f23,4807(a3)
    1224:	6f1c2f14 	0x6f1c2f14
    1228:	522cd75e 	0x522cd75e
    122c:	6315f390 	0x6315f390
    1230:	0c6f623c 	jal	1bd88f0 <extend_mask+0x1bd3234>
    1234:	07f68ff0 	0x7f68ff0
    1238:	ae8df043 	sw	t5,-4029(s4)
    123c:	5ef1859f 	0x5ef1859f
    1240:	c2a8eefc 	lwc0	$8,-4356(s5)
    1244:	3b0db7c2 	xori	t5,t8,0xb7c2
    1248:	fd2a28d6 	0xfd2a28d6
    124c:	dafa76f9 	0xdafa76f9
    1250:	350d53ec 	ori	t5,t0,0x53ec
    1254:	97aadbdd 	lhu	t2,-9251(sp)
    1258:	b7896166 	0xb7896166
    125c:	521b3863 	0x521b3863
    1260:	bc61c06a 	0xbc61c06a
    1264:	fa4fe035 	0xfa4fe035
    1268:	85be8de0 	lh	s8,-29216(t5)
    126c:	2d2534ff 	sltiu	a1,t1,13567
    1270:	003521b7 	0x3521b7
    1274:	d37c6f61 	0xd37c6f61
    1278:	15bc933c 	bne	t5,gp,fffe5f6c <extend_mask+0xfffe08b0>
    127c:	b02c1a6e 	0xb02c1a6e
    1280:	bf670592 	0xbf670592
    1284:	f94e4a66 	0xf94e4a66
    1288:	38de41bb 	xori	s8,a2,0x41bb
    128c:	1b98bbb3 	0x1b98bbb3
    1290:	966624fb 	lhu	a2,9467(s3)
    1294:	383a8ea5 	xori	k0,at,0x8ea5
    1298:	472a9bab 	c1	0x12a9bab
    129c:	276ebaff 	addiu	t6,k1,-17665
    12a0:	00c1b94a 	0xc1b94a
    12a4:	2dfbb7d8 	sltiu	k1,t7,-18472
    12a8:	f9cb45d6 	0xf9cb45d6
    12ac:	fe237c24 	0xfe237c24
    12b0:	f1b78b7e 	0xf1b78b7e
    12b4:	287c3df8 	slti	gp,v1,15864
    12b8:	71693787 	0x71693787
    12bc:	64b0d5af 	0x64b0d5af
    12c0:	f46d2aeb 	0xf46d2aeb
    12c4:	518a58f4 	0x518a58f4
    12c8:	dd082491 	0xdd082491
    12cc:	a3c3e5b1 	sb	v1,-6735(s8)
    12d0:	778e1964 	jalx	e386590 <extend_mask+0xe380ed4>
    12d4:	5966b68f 	0x5966b68f
    12d8:	276dbb45 	addiu	t5,k1,-17595
    12dc:	211e5ac8 	addi	s8,t0,23240
    12e0:	bcb7ece7 	0xbcb7ece7
    12e4:	f1c3c4b6 	0xf1c3c4b6
    12e8:	9e394f16 	0x9e394f16
    12ec:	fc4b8e4d 	0xfc4b8e4d
    12f0:	6b45d564 	0x6b45d564
    12f4:	6b4b612d 	0x6b4b612d
    12f8:	9db470c7 	0x9db470c7
    12fc:	2a5c5b4c 	slti	gp,s2,23372
    1300:	d3c41b08 	0xd3c41b08
    1304:	b2a9b585 	0xb2a9b585
    1308:	9a73ca3c 	lwr	s3,-13764(s3)
    130c:	30b19378 	andi	s1,a1,0x9378
    1310:	dd5fa1ba 	0xdd5fa1ba
    1314:	bf86b42b 	0xbf86b42b
    1318:	4f8c56da 	c3	0x18c56da
    131c:	adbe9b12 	sw	s8,-25838(t5)
    1320:	5ce9de0d 	0x5ce9de0d
    1324:	d42d6d9b 	0xd42d6d9b
    1328:	92ab1477 	lbu	t3,5239(s5)
    132c:	5a648885 	0x5a648885
    1330:	4fcac15d 	c3	0x1cac15d
    1334:	988dc0e3 	lwr	t5,-16157(a0)
    1338:	730e848a 	0x730e848a
    133c:	f803fe0a 	0xf803fe0a
    1340:	0f696b63 	jal	da5ad8c <extend_mask+0xda556d0>
    1344:	fb546a90 	0xfb546a90
    1348:	58c096c9 	0x58c096c9
    134c:	a8596933 	swl	t9,26931(v0)
    1350:	5c8846cf 	0x5c8846cf
    1354:	32470f0b 	andi	a3,s2,0xf0b
    1358:	b1c7731c 	0xb1c7731c
    135c:	31a93d4e 	andi	t1,t5,0x3d4e
    1360:	df5249bc 	0xdf5249bc
    1364:	6d3965eb 	0x6d3965eb
    1368:	dad2778a 	0xdad2778a
    136c:	96cfd3ca 	lhu	t7,-11318(s6)
    1370:	ddccb9a4 	0xddccb9a4
    1374:	9dae56f1 	0x9dae56f1
    1378:	2fc42d2f 	sltiu	a0,s8,11567
    137c:	5bf0ddf7 	0x5bf0ddf7
    1380:	89a5bc36 	lwl	a1,-17354(t5)
    1384:	de22d524 	0xde22d524
    1388:	7d435298 	0x7d435298
    138c:	ee9edf4d 	swc3	$30,-8371(s4)
    1390:	6954ec58 	0x6954ec58
    1394:	d5db6add 	0xd5db6add
    1398:	4ac0056e 	c2	0xc0056e
    139c:	91a8df21 	lbu	t0,-8415(t5)
    13a0:	ddb1593e 	0xddb1593e
    13a4:	1d7c7ef8 	0x1d7c7ef8
    13a8:	a1a3f807 	sb	v1,-2041(t5)
    13ac:	c37e1ff0 	lwc0	$30,8176(k1)
    13b0:	d45e1ab7 	0xd45e1ab7
    13b4:	f07f846f 	0xf07f846f
    13b8:	aebedd1d 	sw	s8,-8931(s5)
    13bc:	fcb6b6f6 	0xfcb6b6f6
    13c0:	baa4571b 	swr	a0,22299(s5)
    13c4:	d9ac2486 	0xd9ac2486
    13c8:	77df750e 	jalx	f7dd438 <extend_mask+0xf7d7d7c>
    13cc:	c96e0111 	lwc2	$14,273(t3)
    13d0:	24b237da 	addiu	s2,a1,14298
    13d4:	30e1d993 	andi	at,a3,0xd993
    13d8:	7785f88f 	jalx	e17e23c <extend_mask+0xe178b80>
    13dc:	52d4342d 	0x52d4342d
    13e0:	5ada1d1e 	0x5ada1d1e
    13e4:	fae2ce38 	0xfae2ce38
    13e8:	d400b0c8 	0xd400b0c8
    13ec:	5473c927 	0x5473c927
    13f0:	d49c9c93 	0xd49c9c93
    13f4:	c9ef57ee 	lwc2	$15,22510(t7)
    13f8:	2f26d774 	sltiu	a2,t9,-10380
    13fc:	3d6b52d4 	0x3d6b52d4
    1400:	846f7561 	lh	t7,30049(v1)
    1404:	3048258e 	andi	t0,v0,0x258e
    1408:	25848066 	addiu	a0,t4,-32666
    140c:	2a776c03 	slti	s7,s3,27651
    1410:	7f03f8b3 	0x7f03f8b3
    1414:	dcf526be 	0xdcf526be
    1418:	5238ba91 	0x5238ba91
    141c:	93c4c5d9 	lbu	a0,-14887(s8)
    1420:	cf7b69be 	lwc3	$27,27070(k1)
    1424:	bf999733 	0xbf999733
    1428:	5648b5e2 	0x5648b5e2
    142c:	1b9f093d 	0x1b9f093d
    1430:	edcd8f86 	swc3	$13,-28794(t6)
    1434:	74d3a5e8 	jalx	34e97a0 <extend_mask+0x34e40e4>
    1438:	e6f1eeed 	swc1	$f17,-4371(s7)
    143c:	ac2de733 	sw	t5,-6349(at)
    1440:	2db96e06 	sltiu	t9,t5,28166
    1444:	e7200925 	swc1	$f0,2341(t9)
    1448:	55c2b18c 	0x55c2b18c
    144c:	796595ca 	0x796595ca
    1450:	6e5209f5 	0x6e5209f5
    1454:	1b1fda3f 	0x1b1fda3f
    1458:	c4965656 	lwc1	$f22,22102(a0)
    145c:	f676ff00 	0xf676ff00
    1460:	0db4c68a 	jal	6d31a28 <extend_mask+0x6d2c36c>
    1464:	0892243b 	j	24890ec <extend_mask+0x2483a30>
    1468:	e35caa80 	swc0	$28,-21888(k0)
    146c:	071bb8e0 	0x71bb8e0
    1470:	74ae37e2 	jalx	2b8df88 <extend_mask+0x2b888cc>
    1474:	2f86741d 	sltiu	a2,gp,29725
    1478:	1f41b49b 	0x1f41b49b
    147c:	4cd322b7 	0x4cd322b7
    1480:	7096e859 	0x7096e859
    1484:	33960439 	andi	s6,gp,0x439
    1488:	cb73f31c 	lwc2	$19,-3300(k1)
    148c:	a8e4e4f5 	swl	a0,-6923(a3)
    1490:	e7935ecd 	swc1	$f19,24269(gp)
    1494:	e18f0278 	swc0	$15,632(t4)
    1498:	5af3c37a 	0x5af3c37a
    149c:	4dddce9a 	0x4dddce9a
    14a0:	ef34f630 	swc3	$20,-2512(t9)
    14a4:	49237da6 	0x49237da6
    14a8:	51b99a35 	0x51b99a35
    14ac:	24e0363a 	addiu	zero,a3,13882
    14b0:	9af03152 	lwr	s0,12626(s7)
    14b4:	8547cd35 	lh	a3,-13003(t2)
    14b8:	7d5ef7fd 	0x7d5ef7fd
    14bc:	19dd4ab5 	0x19dd4ab5
    14c0:	58d49252 	0x58d49252
    14c4:	3fffd900 	0x3fffd900

000014c8 <hana_bmp>:
    14c8:	bcd1be99 	0xbcd1be99
    14cc:	8f6795c0 	lw	a3,-27200(k1)
    14d0:	ac9dbdc0 	sw	sp,-16960(a0)
    14d4:	a4c3bcb5 	sh	v1,-17227(a2)
    14d8:	c1a7bcd2 	lwc0	$7,-17198(t5)
    14dc:	b18e250a 	0xb18e250a
    14e0:	1f282734 	0x1f282734
    14e4:	201d220e 	addi	sp,zero,8718
    14e8:	0a120e1a 	j	8483868 <extend_mask+0x847e1ac>
    14ec:	076cb5be 	0x76cb5be
    14f0:	b57f5b63 	0xb57f5b63
    14f4:	49240b24 	0x49240b24
    14f8:	425d5a41 	c0	0x5d5a41
    14fc:	33202423 	andi	zero,t9,0x2423
    1500:	26353823 	addiu	s5,s1,14371
    1504:	19192031 	0x19192031
    1508:	2936201f 	slti	s6,t1,8223
    150c:	1f221819 	0x1f221819
    1510:	262b200b 	addiu	t3,s1,8203
    1514:	090d1419 	j	4345064 <extend_mask+0x433f9a8>
    1518:	17111012 	bne	t8,s1,5564 <zigzag_index+0xa8>
    151c:	1e19212d 	0x1e19212d
    1520:	241da6c1 	addiu	sp,zero,-22847
    1524:	655aaa81 	0x655aaa81
    1528:	92d5a958 	lbu	s5,-22184(s6)
    152c:	91c7cfa5 	lbu	a3,-12379(t6)
    1530:	8971c99b 	lwl	s1,-13925(t3)
    1534:	8bd1bfc9 	lwl	s1,-16439(s8)
    1538:	ab67331d 	swl	a3,13085(k1)
    153c:	11091d2b 	beq	t0,t1,89ec <extend_mask+0x3330>
    1540:	2124180e 	addi	a0,t1,6158
    1544:	1818046c 	0x1818046c
    1548:	b9b4babc 	swr	s4,-17732(t5)
    154c:	b7c3c06c 	0xb7c3c06c
    1550:	304b6755 	andi	t3,v0,0x6755
    1554:	45312e37 	0x45312e37
    1558:	2c2a3233 	sltiu	t2,at,12851
    155c:	291e120e 	slti	s8,t0,4622
    1560:	1e303036 	0x1e303036
    1564:	22282624 	addi	t0,s1,9764
    1568:	1f1c3437 	0x1f1c3437
    156c:	2d0f0e10 	sltiu	t7,t0,3600
    1570:	17150f0b 	bne	t8,s5,51a0 <hana_bmp+0x3cd8>
    1574:	11191f1a 	beq	t0,t9,91e0 <extend_mask+0x3b24>
    1578:	2c492227 	sltiu	t1,v0,8743
    157c:	91842eb5 	lbu	a0,11957(t4)
    1580:	cdd1bbaa 	lwc3	$17,-17494(t6)
    1584:	8c38348e 	lw	t8,13454(at)
    1588:	7ab0c653 	0x7ab0c653
    158c:	9ad7c8d1 	lwr	s7,-14127(s6)
    1590:	b8a4c4ae 	swr	a0,-15186(a1)
    1594:	8037594c 	lb	s7,22860(at)
    1598:	1c262f2e 	0x1c262f2e
    159c:	231b271f 	addi	k1,t8,10015
    15a0:	103a7489 	beq	at,k0,1e7c8 <extend_mask+0x1910c>
    15a4:	a9b8b4af 	swl	t8,-19281(t5)
    15a8:	a678495b 	sh	t8,18779(s3)
    15ac:	61542024 	0x61542024
    15b0:	3e3a2829 	0x3e3a2829
    15b4:	302d2014 	andi	t5,at,0x2014
    15b8:	0f100c1b 	jal	c40306c <extend_mask+0xc3fd9b0>
    15bc:	18242810 	0x18242810
    15c0:	22181621 	addi	t8,s0,5665
    15c4:	3d413712 	0x3d413712
    15c8:	15161d13 	bne	t0,s6,8a18 <extend_mask+0x335c>
    15cc:	120f151c 	beq	s0,t7,6a40 <extend_mask+0x1384>
    15d0:	211d304b 	addi	sp,t0,12363
    15d4:	24266f0f 	addiu	a2,at,28431
    15d8:	3ee2cfbb 	0x3ee2cfbb
    15dc:	cdbc3d02 	lwc3	$28,15618(t5)
    15e0:	0d1f0969 	jal	47c25a4 <extend_mask+0x47bcee8>
    15e4:	8c3118bf 	lw	s1,6335(at)
    15e8:	d1c6bab8 	0xd1c6bab8
    15ec:	9375593a 	lbu	s5,22842(k1)
    15f0:	8ab3873e 	lwl	s3,-30914(s5)
    15f4:	34331714 	ori	s3,at,0x1714
    15f8:	221c1a0a 	addi	gp,s0,6666
    15fc:	2a70979d 	slti	s0,s3,-26723
    1600:	8b7a7136 	lwl	k0,28982(k1)
    1604:	4f54602e 	c3	0x154602e
    1608:	1320353a 	beqz	t9,eaf4 <extend_mask+0x9438>
    160c:	28282726 	slti	t0,at,10022
    1610:	15151117 	bne	t0,s5,5a70 <extend_mask+0x3b4>
    1614:	066e650e 	0x66e650e
    1618:	12070f1b 	beq	s0,a3,5288 <hana_bmp+0x3dc0>
    161c:	071b4046 	0x71b4046
    1620:	3f161e20 	0x3f161e20
    1624:	2616080a 	addiu	s6,s0,2058
    1628:	12141a1b 	beq	s0,s4,7e98 <extend_mask+0x27dc>
    162c:	2b3a2c28 	slti	k0,t9,11304
    1630:	8b8c819c 	lwl	t4,-32356(gp)
    1634:	71b1d7ae 	0x71b1d7ae
    1638:	6f65240e 	0x6f65240e
    163c:	148b626a 	bne	a0,t3,19fe8 <extend_mask+0x1492c>
    1640:	512561df 	0x512561df
    1644:	c8d99599 	lwc2	$25,-27239(a2)
    1648:	94834692 	lhu	v1,18066(a0)
    164c:	b2ac8350 	0xb2ac8350
    1650:	0d112b10 	jal	444ac40 <extend_mask+0x4445584>
    1654:	12141862 	beq	s0,s4,77e0 <extend_mask+0x2124>
    1658:	82a39055 	lb	v1,-28587(s5)
    165c:	47514e58 	c1	0x1514e58
    1660:	441d2738 	0x441d2738
    1664:	3b312829 	xori	s1,t9,0x2829
    1668:	27140b3f 	addiu	s4,t8,2879
    166c:	500159b3 	0x500159b3
    1670:	ba600025 	swr	zero,37(s3)
    1674:	0f15141b 	jal	c54506c <extend_mask+0xc53f9b0>
    1678:	404c491d 	0x404c491d
    167c:	1f212b22 	0x1f212b22
    1680:	0d0c1310 	jal	4304c40 <extend_mask+0x42ff584>
    1684:	100e1c26 	beq	zero,t6,8720 <extend_mask+0x3064>
    1688:	3c32b3c4 	0x3c32b3c4
    168c:	d9843779 	0xd9843779
    1690:	d5b4b1b7 	0xd5b4b1b7
    1694:	ae66a1b6 	sw	a2,-24138(s3)
    1698:	8c93c5ce 	lw	s3,-14898(a0)
    169c:	a4d6d9af 	sh	s6,-9809(a2)
    16a0:	288daeb7 	slti	t5,a0,-20809
    16a4:	7b446177 	0x7b446177
    16a8:	7b7e3115 	0x7b7e3115
    16ac:	2711171c 	addiu	s1,t8,5916
    16b0:	0e7b95c2 	jal	9ee5708 <extend_mask+0x9ee004c>
    16b4:	c15f4b49 	lwc0	$31,19273(t2)
    16b8:	463f3b32 	c1	0x3f3b32
    16bc:	30373a2a 	andi	s7,at,0x3a2a
    16c0:	30362024 	andi	s6,at,0x2024
    16c4:	0c559f6e 	jal	1567db8 <extend_mask+0x15626fc>
    16c8:	7db1bb89 	0x7db1bb89
    16cc:	19363a37 	0x19363a37
    16d0:	12133b4d 	beq	s0,s3,10408 <extend_mask+0xad4c>
    16d4:	4c221e20 	0x4c221e20
    16d8:	302f2212 	andi	t7,at,0x2212
    16dc:	0d0d0c05 	jal	4343014 <extend_mask+0x433d958>
    16e0:	0c123439 	jal	48d0e4 <extend_mask+0x487a28>
    16e4:	8886afd6 	lwl	a2,-20522(a0)
    16e8:	86a1be8d 	lh	at,-16755(s5)
    16ec:	b1bd8da4 	0xb1bd8da4
    16f0:	cbb3b990 	lwc2	$19,-18032(sp)
    16f4:	498dce94 	0x498dce94
    16f8:	b5c07145 	0xb5c07145
    16fc:	95b08d74 	lhu	s0,-29324(t5)
    1700:	532e6570 	0x532e6570
    1704:	4f1f1928 	c3	0x11f1928
    1708:	1e1a0c62 	0x1e1a0c62
    170c:	a2c3d77a 	sb	v1,-10374(s6)
    1710:	37413d44 	ori	at,k0,0x3d44
    1714:	402e4441 	0x402e4441
    1718:	43503824 	c0	0x1503824
    171c:	2c2f1b37 	sltiu	t7,at,6967
    1720:	b1c8afa9 	0xb1c8afa9
    1724:	b29c727e 	0xb29c727e
    1728:	6b3d2e32 	0x6b3d2e32
    172c:	3c4e4c2e 	0x3c4e4c2e
    1730:	2a303b3a 	slti	s0,s1,15162
    1734:	2d191416 	sltiu	t9,t0,5142
    1738:	1a13130f 	0x1a13130f
    173c:	383a2972 	xori	k0,at,0x2972
    1740:	c4c3d0c5 	lwc1	$f3,-12091(a2)
    1744:	bab0aecc 	swr	s0,-20788(s5)
    1748:	7988d0cd 	0x7988d0cd
    174c:	c9560cbe 	lwc2	$22,3262(t2)
    1750:	b4b194b2 	0xb4b194b2
    1754:	dd916192 	0xdd916192
    1758:	8899a98a 	lwl	t9,-22134(a0)
    175c:	93bfa739 	lbu	ra,-22727(sp)
    1760:	2fa87c21 	sltiu	t0,sp,31777
    1764:	0536bdb4 	0x536bdb4
    1768:	c5bc8844 	lwc1	$f28,-30652(t5)
    176c:	363f324e 	ori	ra,s1,0x324e
    1770:	534a505a 	0x534a505a
    1774:	3a2c3c2d 	xori	t4,s1,0x3c2d
    1778:	2c1280c2 	sltiu	s2,zero,-32574
    177c:	b0c9cbc4 	0xb0c9cbc4
    1780:	af8e6b3d 	sw	t6,27453(gp)
    1784:	2c3d4a56 	sltiu	sp,at,19030
    1788:	533e4047 	0x533e4047
    178c:	483f3f37 	0x483f3f37
    1790:	39343127 	xori	s4,t1,0x3127
    1794:	24183d39 	addiu	t8,zero,15673
    1798:	134bc2a5 	beq	k0,t3,ffff2230 <extend_mask+0xfffecb74>
    179c:	a8bac4bb 	swl	k0,-15173(a1)
    17a0:	cbcf5641 	lwc2	$15,22081(s8)
    17a4:	82c0d6b8 	lb	zero,-10568(s6)
    17a8:	90aeb4d1 	lbu	t6,-19247(a1)
    17ac:	934c6c74 	lbu	t4,27764(k0)
    17b0:	9b9abbac 	lwr	k0,-17492(gp)
    17b4:	b3b4bbc7 	0xb3b4bbc7
    17b8:	cc3936a5 	lwc3	$25,13989(at)
    17bc:	7f2f5a43 	0x7f2f5a43
    17c0:	bdb3aad6 	0xbdb3aad6
    17c4:	c39f6728 	lwc0	$31,26408(gp)
    17c8:	20406142 	addi	zero,v0,24898
    17cc:	3535434d 	ori	s5,t1,0x434d
    17d0:	2e2f270a 	sltiu	t7,s1,9994
    17d4:	357a97ca 	ori	k0,t3,0x97ca
    17d8:	d5d6bca1 	0xd5d6bca1
    17dc:	916a3c3a 	lbu	t2,15418(t3)
    17e0:	4e5d6165 	c3	0x5d6165
    17e4:	66565547 	0x66565547
    17e8:	39323736 	xori	s2,t1,0x3736
    17ec:	36342b28 	ori	s4,s1,0x2b28
    17f0:	1516710b 	bne	t0,s6,1dc20 <extend_mask+0x18564>
    17f4:	2e42688c 	sltiu	v0,s2,26764
    17f8:	a4a7b1d2 	sh	a3,-20014(a1)
    17fc:	477369be 	c1	0x17369be
    1800:	a3b5bbb8 	sb	s5,-17480(sp)
    1804:	8eb16bcf 	lw	s1,27599(s5)
    1808:	8071799c 	lb	s1,31132(v1)
    180c:	998fa19a 	lwr	t7,-24166(t4)
    1810:	a5b6b637 	sh	s6,-18889(t5)
    1814:	2d742a34 	sltiu	s4,t3,10804
    1818:	785e7db4 	0x785e7db4
    181c:	bbbac7bf 	swr	k0,-14401(sp)
    1820:	ba4e002b 	swr	t6,43(s2)
    1824:	60765213 	0x60765213
    1828:	4c4c4737 	0x4c4c4737
    182c:	1d09083b 	0x1d09083b
    1830:	6fa8bdcd 	0x6fa8bdcd
    1834:	bba68a6f 	swr	a2,-30097(sp)
    1838:	3229374c 	andi	t1,s1,0x374c
    183c:	5e6b7465 	0x5e6b7465
    1840:	5c483332 	0x5c483332
    1844:	2f272b25 	sltiu	a3,t9,11045
    1848:	1d28191b 	0x1d28191b
    184c:	6444332e 	0x6444332e
    1850:	38515c98 	xori	s1,v0,0x5c98
    1854:	b0ca478e 	0xb0ca478e
    1858:	cfc4c590 	lwc3	$4,-14960(s8)
    185c:	b5b56978 	0xb5b56978
    1860:	4f40b370 	c3	0x140b370
    1864:	6661403f 	0x6661403f
    1868:	335eb4a4 	andi	s8,k0,0xb4a4
    186c:	932544a9 	lbu	a1,17577(t9)
    1870:	5e64618a 	0x5e64618a
    1874:	0144b2b5 	0x144b2b5
    1878:	ada6b6a3 	sw	a2,-18781(t5)
    187c:	3377a5bb 	andi	s7,k1,0xa5bb
    1880:	bb41274f 	swr	at,10063(k0)
    1884:	52470f0e 	0x52470f0e
    1888:	0a0c4090 	j	8310240 <extend_mask+0x830ab84>
    188c:	b9b07446 	swr	s0,29766(t5)
    1890:	3c292719 	0x3c292719
    1894:	172b3f56 	bne	t9,t3,115f0 <extend_mask+0xbf34>
    1898:	6e6e644b 	0x6e6e644b
    189c:	311b201b 	andi	k1,t0,0x201b
    18a0:	12152425 	beq	s0,s5,a938 <extend_mask+0x527c>
    18a4:	1d205d3e 	bgtz	t1,18da0 <extend_mask+0x136e4>
    18a8:	221f473e 	addi	ra,s0,18238
    18ac:	66af906a 	0x66af906a
    18b0:	3ac9aabf 	xori	t1,s6,0xaabf
    18b4:	bda76eaa 	0xbda76eaa
    18b8:	ae867954 	sw	a2,31060(s4)
    18bc:	a178553e 	sb	t8,21822(t3)
    18c0:	402b094e 	0x402b094e
    18c4:	bab9aa14 	swr	t9,-21996(s5)
    18c8:	64b49fb0 	0x64b49fb0
    18cc:	acbd646a 	sw	sp,25706(a1)
    18d0:	a9aa99b4 	swl	t2,-26188(t5)
    18d4:	bdbbbf96 	0xbdbbbf96
    18d8:	678a9b7d 	0x678a9b7d
    18dc:	314d3d3e 	andi	t5,t2,0x3d3e
    18e0:	48171215 	0x48171215
    18e4:	1b275250 	0x1b275250
    18e8:	35354754 	ori	s5,t1,0x4754
    18ec:	3a210412 	xori	at,s1,0x412
    18f0:	233f6578 	addi	ra,t9,25976
    18f4:	6b46271c 	0x6b46271c
    18f8:	1d191c18 	0x1d191c18
    18fc:	2021221f 	addi	at,at,8735
    1900:	623b2011 	0x623b2011
    1904:	221c4579 	addi	gp,s0,17785
    1908:	1a2e4cac 	0x1a2e4cac
    190c:	6b138e99 	0x6b138e99
    1910:	8892d6a5 	lwl	s2,-10587(a0)
    1914:	bbcfb37e 	swr	t7,-19586(s8)
    1918:	3f51262d 	0x3f51262d
    191c:	2661adb8 	addiu	at,s3,-21064
    1920:	9b1864ce 	lwr	t8,25806(t8)
    1924:	b0c6cee2 	0xb0c6cee2
    1928:	986b8199 	lwr	t3,-32359(v1)
    192c:	92bcbbaa 	lbu	gp,-17494(s5)
    1930:	b3b37c9b 	0xb3b37c9b
    1934:	b39a5d49 	0xb39a5d49
    1938:	41514239 	0x41514239
    193c:	143a3c24 	bne	at,k0,109d0 <extend_mask+0xb314>
    1940:	2f381931 	sltiu	t8,t9,6449
    1944:	4a5a552c 	c2	0x5a552c
    1948:	080c1830 	j	3060c0 <extend_mask+0x300a04>
    194c:	537a7857 	0x537a7857
    1950:	251d1c17 	addiu	sp,t0,7191
    1954:	17141d1f 	bne	t8,s4,8dd4 <extend_mask+0x3718>
    1958:	17146133 	bne	t8,s4,19e28 <extend_mask+0x1476c>
    195c:	090f0e10 	j	43c3840 <extend_mask+0x43be184>
    1960:	17582025 	bne	k0,t8,99f8 <extend_mask+0x433c>
    1964:	4b301211 	c2	0x1301211
    1968:	18c5c8aa 	0x18c5c8aa
    196c:	c4bfcacd 	lwc1	$f31,-13619(a1)
    1970:	b6643823 	0xb6643823
    1974:	1c715c47 	0x1c715c47
    1978:	5d565622 	0x5d565622
    197c:	4ebac2b6 	c3	0xbac2b6
    1980:	c1b4a54e 	lwc0	$20,-23218(t5)
    1984:	567a4069 	0x567a4069
    1988:	c3a394bc 	lwc0	$3,-27460(sp)
    198c:	94969676 	lhu	s6,-27018(a0)
    1990:	785f494d 	0x785f494d
    1994:	4b463f4f 	c2	0x1463f4f
    1998:	5f40523b 	0x5f40523b
    199c:	1f142b46 	0x1f142b46
    19a0:	5d541d1d 	0x5d541d1d
    19a4:	2c3e4e70 	sltiu	s8,at,20080
    19a8:	785d2c22 	0x785d2c22
    19ac:	22231111 	addi	v1,s1,4369
    19b0:	1c14171a 	0x1c14171a
    19b4:	553a1518 	0x553a1518
    19b8:	1d110d1f 	0x1d110d1f
    19bc:	0d15591f 	jal	455647c <extend_mask+0x4550dc0>
    19c0:	2d131592 	sltiu	s3,t0,5522
    19c4:	e1d2ceb9 	swc0	$18,-12615(t6)
    19c8:	42a4b7bf 	c0	0xa4b7bf
    19cc:	953c4277 	lhu	gp,17015(t1)
    19d0:	344a378e 	ori	t2,v0,0x378e
    19d4:	9e144b9a 	0x9e144b9a
    19d8:	a1c9938a 	sb	t1,-27766(t6)
    19dc:	b68f7a54 	0xb68f7a54
    19e0:	1574aeae 	bne	t3,s4,fffed49c <extend_mask+0xfffe7de0>
    19e4:	a8c68049 	swl	a2,-32695(a2)
    19e8:	4ea69f4e 	c3	0xa69f4e
    19ec:	49352471 	0x49352471
    19f0:	7c58807f 	0x7c58807f
    19f4:	6a420917 	0x6a420917
    19f8:	14294a59 	bne	at,t1,14360 <extend_mask+0xeca4>
    19fc:	41343e49 	0x41343e49
    1a00:	3f5b6f62 	0x3f5b6f62
    1a04:	36463d3f 	ori	a2,s2,0x3d3f
    1a08:	3c321d16 	0x3c321d16
    1a0c:	191c2550 	0x191c2550
    1a10:	19171004 	0x19171004
    1a14:	0b160d16 	j	c583458 <extend_mask+0xc57dd9c>
    1a18:	561d1232 	0x561d1232
    1a1c:	190877a3 	0x190877a3
    1a20:	a0b9a19e 	sb	t9,-24162(a1)
    1a24:	bdb38477 	0xbdb38477
    1a28:	742781ab 	jalx	9e06ac <extend_mask+0x9daff0>
    1a2c:	89b4ae13 	lwl	s4,-20973(t5)
    1a30:	75c2c0c1 	jalx	70b0304 <extend_mask+0x70aac48>
    1a34:	ae9f77a5 	sw	ra,30629(s4)
    1a38:	b1a82c79 	0xb1a82c79
    1a3c:	a1b9c8c2 	sb	t9,-14142(t5)
    1a40:	a75252a2 	sh	s2,21154(k0)
    1a44:	a24a3337 	sb	t2,13111(s2)
    1a48:	0f639c76 	jal	d8e71d8 <extend_mask+0xd8e1b1c>
    1a4c:	7fb1a348 	0x7fb1a348
    1a50:	090d0a05 	j	4342814 <extend_mask+0x433d158>
    1a54:	25474d46 	addiu	a3,t2,19782
    1a58:	6d8d7b85 	0x6d8d7b85
    1a5c:	8975494f 	lwl	s5,18767(t3)
    1a60:	45535052 	0x45535052
    1a64:	432f1c1a 	c0	0x12f1c1a
    1a68:	0d4d1712 	jal	5345c48 <extend_mask+0x534058c>
    1a6c:	0f101022 	jal	c404088 <extend_mask+0xc3fe9cc>
    1a70:	2115550e 	addi	s5,t0,21774
    1a74:	00252c00 	0x252c00
    1a78:	b3e1bbce 	0xb3e1bbce
    1a7c:	d18d954e 	0xd18d954e
    1a80:	393f4881 	xori	ra,t1,0x4881
    1a84:	9fa46d61 	0x9fa46d61
    1a88:	731f245b 	0x731f245b
    1a8c:	195dd76c 	0x195dd76c
    1a90:	64b4b578 	0x64b4b578
    1a94:	4452a8c3 	0x4452a8c3
    1a98:	c295b9b3 	lwc0	$21,-17997(s4)
    1a9c:	8348834b 	lb	t0,-31925(k0)
    1aa0:	372e203d 	ori	t6,t9,0x203d
    1aa4:	909681c4 	lbu	s6,-32316(a0)
    1aa8:	b6795751 	0xb6795751
    1aac:	06051426 	0x6051426
    1ab0:	386499ac 	xori	a0,v1,0x99ac
    1ab4:	ccccc6d4 	lwc3	$12,-14636(a2)
    1ab8:	56204133 	0x56204133
    1abc:	3b393b34 	xori	t9,t9,0x3b34
    1ac0:	332c2b1e 	andi	t4,t9,0x2b1e
    1ac4:	20143246 	addi	s4,zero,12870
    1ac8:	31131a28 	andi	s3,t0,0x1a28
    1acc:	45644b32 	0x45644b32
    1ad0:	281264c0 	slti	s2,zero,25792
    1ad4:	68646976 	0x68646976
    1ad8:	83812a4c 	lb	at,10828(gp)
    1adc:	23497c92 	addi	t1,k0,31890
    1ae0:	68011c4b 	0x68011c4b
    1ae4:	62c5a6b1 	0x62c5a6b1
    1ae8:	d4c9afae 	0xd4c9afae
    1aec:	c08e6321 	lwc0	$14,25377(a0)
    1af0:	57d8bdc1 	0x57d8bdc1
    1af4:	d1b9bc7e 	0xd1b9bc7e
    1af8:	7e5c563a 	0x7e5c563a
    1afc:	231c74ae 	addi	gp,t8,29870
    1b00:	b5bcb4a6 	0xb5bcb4a6
    1b04:	88561001 	lwl	s6,4097(v0)
    1b08:	0006173f 	0x6173f
    1b0c:	6788aec0 	0x6788aec0
    1b10:	9bc6ad23 	lwr	a2,-21213(s8)
    1b14:	102a3328 	beq	at,t2,e7b8 <extend_mask+0x90fc>
    1b18:	263a2b2c 	addiu	k0,s1,11052
    1b1c:	1a1d190e 	0x1a1d190e
    1b20:	254b233b 	addiu	t3,t2,9019
    1b24:	133b3d65 	beq	t9,k1,110bc <extend_mask+0xba00>
    1b28:	37514f1d 	ori	s1,k0,0x4f1d
    1b2c:	30566d51 	andi	s6,v0,0x6d51
    1b30:	42bb8fb6 	c0	0xbb8fb6
    1b34:	8e0d0227 	lw	t5,551(s0)
    1b38:	4e90691c 	c3	0x90691c
    1b3c:	22541b5d 	addi	s4,s2,7005
    1b40:	fda9f25d 	0xfda9f25d
    1b44:	d8a19bc2 	0xd8a19bc2
    1b48:	e78b075b 	swc1	$f11,1883(gp)
    1b4c:	cdcce2b8 	lwc3	$12,-7496(t6)
    1b50:	dfeabe70 	0xdfeabe70
    1b54:	5c2b2514 	0x5c2b2514
    1b58:	84c2c6cb 	lh	v0,-14645(a2)
    1b5c:	ae8a3a07 	sw	t2,14855(s4)
    1b60:	001a666e 	0x1a666e
    1b64:	5b797884 	0x5b797884
    1b68:	6daba7a5 	0x6daba7a5
    1b6c:	d9b0524d 	0xd9b0524d
    1b70:	44331626 	0x44331626
    1b74:	2c2c0516 	sltiu	t4,at,1302
    1b78:	1d1d0763 	0x1d1d0763
    1b7c:	1e8b6535 	0x1e8b6535
    1b80:	3c64874c 	0x3c64874c
    1b84:	40202433 	0x40202433
    1b88:	36576f93 	ori	s7,s2,0x6f93
    1b8c:	f0baaccd 	0xf0baaccd
    1b90:	2e002e15 	sltiu	zero,s0,11797
    1b94:	0b3e252d 	j	cf894b4 <extend_mask+0xcf83df8>
    1b98:	1a002ec2 	blez	s0,d6a4 <extend_mask+0x7fe8>
    1b9c:	ba3cef62 	swr	gp,-4254(s1)
    1ba0:	8cc07913 	lw	zero,30995(a2)
    1ba4:	b2a45eb7 	0xb2a45eb7
    1ba8:	4357c2c2 	c0	0x157c2c2
    1bac:	c4be5322 	lwc1	$f30,21282(a1)
    1bb0:	203855ab 	addi	t8,at,21931
    1bb4:	b6afce99 	0xb6afce99
    1bb8:	3d010640 	0x3d010640
    1bbc:	a1c6b3ac 	sb	a2,-19540(t6)
    1bc0:	b3aa70a2 	0xb3aa70a2
    1bc4:	ddbfb9b5 	0xddbfb9b5
    1bc8:	885a5639 	lwl	k0,22073(v0)
    1bcc:	1d1b2c2b 	0x1d1b2c2b
    1bd0:	35140c12 	ori	s4,t0,0xc12
    1bd4:	2160389c 	addi	zero,t3,14492
    1bd8:	8b843d2f 	lwl	a0,15663(gp)
    1bdc:	75716524 	jalx	5c59490 <extend_mask+0x5c53dd4>
    1be0:	1b053fa6 	0x1b053fa6
    1be4:	7b15a3cf 	0x7b15a3cf
    1be8:	e0b481d4 	swc0	$20,-32300(a1)
    1bec:	9fc1cd2a 	0x9fc1cd2a
    1bf0:	1433171b 	bne	at,s3,7860 <extend_mask+0x21a4>
    1bf4:	1130f034 	beq	t1,s0,ffffdcc8 <extend_mask+0xffff860c>
    1bf8:	b1b19540 	0xb1b19540
    1bfc:	018cbab4 	0x18cbab4
    1c00:	ccd3d565 	lwc3	$19,-10907(a2)
    1c04:	bbc6963a 	swr	a2,-27078(s8)
    1c08:	70815637 	0x70815637
    1c0c:	3f4d4a66 	0x3f4d4a66
    1c10:	929a6335 	lbu	k0,25397(s4)
    1c14:	301c57b3 	andi	gp,zero,0x57b3
    1c18:	b1afb2af 	0xb1afb2af
    1c1c:	74869db2 	jalx	21a76c8 <extend_mask+0x21a200c>
    1c20:	c1b4947d 	lwc0	$20,-27523(t5)
    1c24:	551c1412 	0x551c1412
    1c28:	3a3b1f2b 	xori	k1,s1,0x1f2b
    1c2c:	0a47b192 	j	91ec648 <extend_mask+0x91e6f8c>
    1c30:	2d9976b8 	sltiu	t9,t4,30392
    1c34:	8d331b38 	lw	s3,6968(t1)
    1c38:	4d2d1e48 	0x4d2d1e48
    1c3c:	919f5a58 	lbu	ra,23128(t4)
    1c40:	a88eb7d4 	swl	t6,-18476(a0)
    1c44:	56adccc9 	0x56adccc9
    1c48:	84002131 	lh	zero,8497(zero)
    1c4c:	1509007d 	bne	t0,t1,1e44 <hana_bmp+0x97c>
    1c50:	be3d51b1 	0xbe3d51b1
    1c54:	5f48170f 	0x5f48170f
    1c58:	60add6b4 	0x60add6b4
    1c5c:	e5dabab9 	swc1	$f26,-17735(t6)
    1c60:	df4892a0 	0xdf4892a0
    1c64:	81563e4e 	lb	s6,15950(t2)
    1c68:	425d6f71 	c0	0x5d6f71
    1c6c:	5a49524a 	0x5a49524a
    1c70:	034296bf 	0x34296bf
    1c74:	b568785a 	0xb568785a
    1c78:	74727dab 	jalx	1c9f6ac <extend_mask+0x1c99ff0>
    1c7c:	7a844215 	0x7a844215
    1c80:	191b3b3c 	0x191b3b3c
    1c84:	25210d1a 	addiu	at,t1,3354
    1c88:	c9bf34aa 	lwc2	$31,13482(t5)
    1c8c:	89bdd9d0 	lwl	sp,-9776(t5)
    1c90:	981a6f28 	lwr	k0,28456(zero)
    1c94:	0a94a9a2 	j	a52a688 <extend_mask+0xa524fcc>
    1c98:	9986cccb 	lwr	a2,-13109(t4)
    1c9c:	ab923d65 	swl	s2,15717(gp)
    1ca0:	ca8e0009 	lwc2	$14,9(s4)
    1ca4:	2c36130c 	sltiu	s6,at,4876
    1ca8:	0024a752 	0x24a752
    1cac:	1cd97b66 	0x1cd97b66
    1cb0:	0c351700 	jal	d45c00 <extend_mask+0xd40544>
    1cb4:	2f00c3c2 	sltiu	zero,t8,-15422
    1cb8:	bcacb0ae 	0xbcacb0ae
    1cbc:	3d659d88 	0x3d659d88
    1cc0:	6d282c7d 	0x6d282c7d
    1cc4:	9293804d 	lbu	s3,-32691(s4)
    1cc8:	61715336 	0x61715336
    1ccc:	acbea59f 	sw	s8,-23137(a1)
    1cd0:	bf55413f 	0xbf55413f
    1cd4:	212d3f3c 	addi	t5,t1,16188
    1cd8:	21151310 	addi	s5,t0,4880
    1cdc:	3f3d2233 	0x3f3d2233
    1ce0:	39302489 	xori	s0,t1,0x2489
    1ce4:	187a5ae6 	0x187a5ae6
    1ce8:	c2d2be50 	lwc0	$18,-16816(s6)
    1cec:	2a331295 	slti	s3,s1,4757
    1cf0:	d39f277b 	0xd39f277b
    1cf4:	ac603f09 	sw	zero,16137(v1)
    1cf8:	4a2a94e0 	c2	0x2a94e0
    1cfc:	77003534 	jalx	c00d4d0 <extend_mask+0xc007e14>
    1d00:	1e002bbd 	bgtz	s0,cbf8 <extend_mask+0x753c>
    1d04:	755e259f 	jalx	578967c <extend_mask+0x5783fc0>
    1d08:	9dd66716 	0x9dd66716
    1d0c:	1e0d3a3c 	0x1e0d3a3c
    1d10:	2c4364a8 	sltiu	v1,v0,25768
    1d14:	a3b3368b 	sb	s3,13963(sp)
    1d18:	dbc17144 	0xdbc17144
    1d1c:	8c8f8da5 	lw	t7,-29275(a0)
    1d20:	797e5792 	0x797e5792
    1d24:	7c5fa6a7 	0x7c5fa6a7
    1d28:	829cbd6c 	lb	gp,-17044(s4)
    1d2c:	2a2b2911 	slti	t3,s1,10513
    1d30:	281e1d17 	slti	s8,zero,7447
    1d34:	13123d3c 	beq	t8,s2,11228 <extend_mask+0xbb6c>
    1d38:	0d235e7a 	jal	48d79e8 <extend_mask+0x48d232c>
    1d3c:	3275cdac 	andi	s5,s3,0xcdac
    1d40:	936cddba 	lbu	t4,-8774(k1)
    1d44:	b7892625 	0xb7892625
    1d48:	1f6ad09c 	0x1f6ad09c
    1d4c:	12afe58b 	beq	s5,t7,ffffb37c <extend_mask+0xffff5cc0>
    1d50:	00697263 	0x697263
    1d54:	0c928da2 	jal	24a3688 <extend_mask+0x249dfcc>
    1d58:	342a003e 	ori	t2,at,0x3e
    1d5c:	b1ba885e 	0xb1ba885e
    1d60:	207b92d2 	addi	k1,v1,-27950
    1d64:	c16ca891 	lwc0	$12,-22383(t3)
    1d68:	08c1243d 	j	30490f4 <extend_mask+0x3043a38>
    1d6c:	453da69c 	0x453da69c
    1d70:	cb7fc3e4 	lwc2	$31,-15388(k1)
    1d74:	92a98d5a 	lbu	t1,-29350(s5)
    1d78:	886d5f62 	lwl	t5,24418(v1)
    1d7c:	5a998f56 	0x5a998f56
    1d80:	52616063 	0x52616063
    1d84:	7f84262e 	0x7f84262e
    1d88:	241e1823 	addiu	s8,zero,6179
    1d8c:	17191b0c 	bne	t8,t9,89c0 <extend_mask+0x3304>
    1d90:	101e0e00 	beq	zero,s8,5594 <zigzag_index+0xd8>
    1d94:	04167299 	0x4167299
    1d98:	9eadbcbc 	0x9eadbcbc
    1d9c:	2f70f86d 	sltiu	s0,k1,-1939
    1da0:	cd2e224f 	lwc3	$14,8783(t1)
    1da4:	b56a2cb6 	0xb56a2cb6
    1da8:	c98d0096 	lwc2	$13,150(t4)
    1dac:	ac7eaaa0 	sw	s8,-21856(v1)
    1db0:	867a6b37 	lh	k0,27447(s3)
    1db4:	cc6d3e98 	lwc3	$13,16024(v1)
    1db8:	eb5c2686 	swc2	$28,9862(k0)
    1dbc:	65b7d994 	0x65b7d994
    1dc0:	989f73bf 	lwr	ra,29631(a0)
    1dc4:	b09b905f 	0xb09b905f
    1dc8:	3e34ba92 	0x3e34ba92
    1dcc:	d8b2fb60 	0xd8b2fb60
    1dd0:	497e8a38 	0x497e8a38
    1dd4:	61376778 	0x61376778
    1dd8:	7e493022 	0x7e493022
    1ddc:	39308d8a 	xori	s0,t1,0x8d8a
    1de0:	39212223 	xori	at,t1,0x2223
    1de4:	17161f1c 	bne	t8,s6,9a58 <extend_mask+0x439c>
    1de8:	1417211e 	bne	zero,s7,a264 <extend_mask+0x4ba8>
    1dec:	2e01131d 	sltiu	at,s0,4893
    1df0:	1b7ca4ac 	0x1b7ca4ac
    1df4:	cadab064 	lwc2	$26,-20380(s6)
    1df8:	186ebd32 	0x186ebd32
    1dfc:	2c25631d 	sltiu	a1,at,25373
    1e00:	1f62a430 	0x1f62a430
    1e04:	47c599ca 	c1	0x1c599ca
    1e08:	a79cc4c0 	sh	gp,-15168(gp)
    1e0c:	3880d9af 	xori	zero,a0,0xd9af
    1e10:	7d99316a 	0x7d99316a
    1e14:	0f80efb6 	jal	e03bed8 <extend_mask+0xe03681c>
    1e18:	c3ab5c25 	lwc0	$11,23589(sp)
    1e1c:	6e567694 	0x6e567694
    1e20:	6237221e 	0x6237221e
    1e24:	1530e8d1 	bne	t1,s0,ffffc16c <extend_mask+0xffff6ab0>
    1e28:	6a576bac 	0x6a576bac
    1e2c:	1e475658 	0x1e475658
    1e30:	483e3142 	0x483e3142
    1e34:	2e405044 	sltiu	zero,s2,20548
    1e38:	4c6f2d2a 	0x4c6f2d2a
    1e3c:	23221c1a 	addi	v0,t9,7194
    1e40:	312b161d 	andi	t3,t1,0x161d
    1e44:	20209029 	addi	zero,at,-28631
    1e48:	00150200 	sll	zero,s5,0x8
    1e4c:	58a0a7c0 	0x58a0a7c0
    1e50:	a85700a9 	swl	s7,169(v0)
    1e54:	eb322316 	swc2	$18,8982(t9)
    1e58:	0c620017 	jal	188005c <extend_mask+0x187a9a0>
    1e5c:	3d004735 	0x3d004735
    1e60:	f090ceb2 	0xf090ceb2
    1e64:	bce1c8a7 	0xbce1c8a7
    1e68:	cedf760c 	lwc3	$31,30220(s6)
    1e6c:	4b6d2451 	c2	0x16d2451
    1e70:	e1c290b6 	swc0	$2,-28490(t6)
    1e74:	49202070 	0x49202070
    1e78:	a75d322c 	sh	sp,12844(k0)
    1e7c:	1e11332b 	0x1e11332b
    1e80:	5d757149 	0x5d757149
    1e84:	d2a26357 	0xd2a26357
    1e88:	57412222 	0x57412222
    1e8c:	16152348 	bne	s0,s5,abb0 <extend_mask+0x54f4>
    1e90:	67633a38 	0x67633a38
    1e94:	2f2d281a 	sltiu	t5,t9,10266
    1e98:	1e223e39 	0x1e223e39
    1e9c:	20251e1e 	addi	a1,at,7710
    1ea0:	b7700008 	0xb7700008
    1ea4:	0b1a0077 	j	c6801dc <extend_mask+0xc67ab20>
    1ea8:	cd94d200 	lwc3	$20,-11776(t4)
    1eac:	3ce1533a 	0x3ce1533a
    1eb0:	231e0625 	addi	s8,t8,1573
    1eb4:	3d07691f 	0x3d07691f
    1eb8:	240759e5 	addiu	a3,zero,23013
    1ebc:	abacc3db 	swl	t4,-15397(sp)
    1ec0:	d3afb1db 	0xd3afb1db
    1ec4:	904a2f6a 	lbu	t2,12138(v0)
    1ec8:	2532c2bc 	addiu	s2,t1,-15684
    1ecc:	64531940 	0x64531940
    1ed0:	31bbaf84 	andi	k1,t5,0xaf84
    1ed4:	192b1920 	0x192b1920
    1ed8:	301e4a6c 	andi	s8,zero,0x4a6c
    1edc:	5a8bd2c5 	0x5a8bd2c5
    1ee0:	836a4f2a 	lb	t2,20266(k1)
    1ee4:	56402324 	0x56402324
    1ee8:	26445d57 	addiu	a0,s2,23895
    1eec:	67365729 	0x67365729
    1ef0:	2915181d 	slti	s5,t0,6173
    1ef4:	3d3a2637 	0x3d3a2637
    1ef8:	141e914c 	bne	zero,s8,fffe642c <extend_mask+0xfffe0d70>
    1efc:	050a0223 	0x50a0223
    1f00:	0091bfd7 	0x91bfd7
    1f04:	3b0596b3 	xori	a1,t8,0x96b3
    1f08:	892e2c18 	lwl	t6,11288(t1)
    1f0c:	0918463e 	j	46118f8 <extend_mask+0x460c23c>
    1f10:	150b418d 	bne	t0,t3,12548 <extend_mask+0xce8c>
    1f14:	577fad8b 	0x577fad8b
    1f18:	a96cd4b5 	swl	t4,-11083(t3)
    1f1c:	96c2ca9a 	lhu	v0,-13670(s6)
    1f20:	523a503c 	0x523a503c
    1f24:	598d5400 	0x598d5400
    1f28:	68681a52 	0x68681a52
    1f2c:	a1550c10 	sb	s5,3088(t2)
    1f30:	3c4c4802 	0x3c4c4802
    1f34:	527c61a2 	0x527c61a2
    1f38:	f1b97491 	0xf1b97491
    1f3c:	2a315844 	slti	s1,s1,22596
    1f40:	2a141b41 	slti	s4,s0,6977
    1f44:	55644f5d 	0x55644f5d
    1f48:	3a4c1e16 	xori	t4,s2,0x1e16
    1f4c:	151c3d3a 	bne	t0,gp,11438 <extend_mask+0xbd7c>
    1f50:	2541201c 	addiu	at,t2,8220
    1f54:	63280509 	0x63280509
    1f58:	0b172adc 	j	c5cab70 <extend_mask+0xc5c54b4>
    1f5c:	c4ff001a 	lwc1	$f31,26(a3)
    1f60:	e2a4826e 	swc0	$4,-32146(s5)
    1f64:	1d1f001f 	0x1d1f001f
    1f68:	46292527 	c1	0x292527
    1f6c:	667e9cd1 	0x667e9cd1
    1f70:	9ed7f9e2 	0x9ed7f9e2
    1f74:	dec3e8e2 	0xdec3e8e2
    1f78:	caa35d3f 	lwc2	$3,23871(s5)
    1f7c:	5433839d 	0x5433839d
    1f80:	008b4b72 	0x8b4b72
    1f84:	3b0b7c5e 	xori	t3,t8,0x7c5e
    1f88:	1c456e61 	0x1c456e61
    1f8c:	2f2c9168 	sltiu	t4,t9,-28312
    1f90:	6327b5bc 	0x6327b5bc
    1f94:	b9b73612 	swr	s7,13842(t5)
    1f98:	272e432d 	addiu	t6,t9,17197
    1f9c:	0767a386 	0x767a386
    1fa0:	6d4d4b28 	0x6d4d4b28
    1fa4:	1a161823 	0x1a161823
    1fa8:	3e402532 	0x3e402532
    1fac:	201f8768 	addi	ra,zero,-30872
    1fb0:	0a021414 	j	8085050 <extend_mask+0x807f994>
    1fb4:	1a001e0e 	blez	s0,97f0 <extend_mask+0x4134>
    1fb8:	154f886c 	bne	t2,t7,fffe416c <extend_mask+0xfffdeab0>
    1fbc:	65263816 	0x65263816
    1fc0:	191f413d 	0x191f413d
    1fc4:	0e163b77 	jal	858eddc <extend_mask+0x8589720>
    1fc8:	3a52624a 	xori	s2,s2,0x624a
    1fcc:	299dc848 	slti	sp,t4,-14264
    1fd0:	52da9da6 	0x52da9da6
    1fd4:	79527111 	0x79527111
    1fd8:	9ed1927f 	0x9ed1927f
    1fdc:	3e7e3807 	0x3e7e3807
    1fe0:	46626149 	c1	0x626149
    1fe4:	496204a6 	0x496204a6
    1fe8:	6a752a25 	0x6a752a25
    1fec:	01b6cbb2 	0x1b6cbb2
    1ff0:	3c1e192d 	lui	s8,0x192d
    1ff4:	37291640 	ori	t1,t9,0x1640
    1ff8:	b7c5b461 	0xb7c5b461
    1ffc:	42272215 	c0	0x272215
    2000:	16283844 	bne	s1,t0,10114 <extend_mask+0xaa58>
    2004:	2c1f1f21 	sltiu	ra,zero,7969
    2008:	55203e00 	0x55203e00
    200c:	1411232c 	bne	zero,s1,acc0 <extend_mask+0x5604>
    2010:	13170093 	beq	t8,s7,2260 <hana_bmp+0xd98>
    2014:	d049550e 	0xd049550e
    2018:	46092425 	c1	0x92425
    201c:	3a4e172f 	xori	t6,s2,0x172f
    2020:	040b1403 	0x40b1403
    2024:	3e411292 	0x3e411292
    2028:	c5866fc0 	lwc1	$f6,28608(t4)
    202c:	dfbaa07f 	0xdfbaa07f
    2030:	7d3cabd2 	0x7d3cabd2
    2034:	d4cfa8ae 	0xd4cfa8ae
    2038:	90bf0094 	lbu	ra,148(a1)
    203c:	7823421d 	0x7823421d
    2040:	4fb65f47 	c3	0x1b65f47
    2044:	195e7247 	0x195e7247
    2048:	a6bf9360 	sh	ra,-27808(s5)
    204c:	18142f1f 	0x18142f1f
    2050:	272870a8 	addiu	t0,t9,28840
    2054:	d1984d27 	0xd1984d27
    2058:	110c1d33 	beq	t0,t4,9528 <extend_mask+0x3e6c>
    205c:	414a2c0f 	0x414a2c0f
    2060:	07155142 	0x7155142
    2064:	0c28000d 	jal	a00034 <extend_mask+0x9fa978>
    2068:	5a181323 	0x5a181323
    206c:	01952f5c 	0x1952f5c
    2070:	5b07440a 	0x5b07440a
    2074:	2c1c1c5f 	sltiu	gp,zero,7263
    2078:	00a06a0e 	0xa06a0e
    207c:	1d0c452b 	0x1d0c452b
    2080:	15f5bf7a 	bne	t7,s5,ffff1e6c <extend_mask+0xfffec7b0>
    2084:	c3e5d1cf 	lwc0	$5,-11825(ra)
    2088:	9b618afe 	lwr	at,-29954(k1)
    208c:	af76f7d9 	sw	s6,-2087(k1)
    2090:	d9b75e6b 	0xd9b75e6b
    2094:	7342668a 	0x7342668a
    2098:	0d109c80 	jal	4427200 <extend_mask+0x4421b44>
    209c:	2f160f2c 	sltiu	s6,t8,3884
    20a0:	a28a9ba5 	sb	t2,-25691(s4)
    20a4:	a7ac5803 	sh	t4,22531(sp)
    20a8:	231f8786 	addi	ra,t8,-30842
    20ac:	b49bc0be 	0xb49bc0be
    20b0:	a5350911 	sh	s5,2321(t1)
    20b4:	1c354b4e 	0x1c354b4e
    20b8:	46371e26 	c1	0x371e26
    20bc:	39710721 	xori	s1,t3,0x721
    20c0:	0a1f4517 	j	87d145c <extend_mask+0x87cbda0>
    20c4:	2a0d1c08 	slti	t5,s0,7176
    20c8:	01371b3b 	0x1371b3b
    20cc:	3d1b2921 	0x3d1b2921
    20d0:	0d252884 	jal	494a210 <extend_mask+0x4944b54>
    20d4:	8f081610 	lw	t0,5648(t8)
    20d8:	2c585448 	sltiu	t8,v0,21576
    20dc:	98a8acc1 	lwr	t0,-21311(a1)
    20e0:	93c9b265 	lbu	t1,-19867(s8)
    20e4:	00e0e7fa 	0xe0e7fa
    20e8:	3003c1e9 	andi	v1,zero,0xc1e9
    20ec:	3c4e219f 	0x3c4e219f
    20f0:	8fd40032 	lw	s4,50(s8)
    20f4:	00090b4b 	0x90b4b
    20f8:	274143c6 	addiu	at,k0,17350
    20fc:	c8913852 	lwc2	$17,14418(a0)
    2100:	4f143253 	c3	0x1143253
    2104:	27693346 	addiu	t1,k1,13126
    2108:	b9d2d0bd 	swr	s2,-12099(t6)
    210c:	390f1929 	xori	t7,t0,0x1929
    2110:	3b485070 	xori	t0,k0,0x5070
    2114:	1f244072 	0x1f244072
    2118:	61001858 	0x61001858
    211c:	951c0f2e 	lhu	gp,3886(t0)
    2120:	1009363e 	beq	zero,t1,fa1c <extend_mask+0xa360>
    2124:	01006e3f 	0x1006e3f
    2128:	101b2138 	beq	zero,k1,a60c <extend_mask+0x4f50>
    212c:	1711002b 	bne	t8,s1,21dc <hana_bmp+0xd14>
    2130:	2e423e0c 	sltiu	v0,s2,15884
    2134:	7fa7bd39 	0x7fa7bd39
    2138:	fbe37a02 	0xfbe37a02
    213c:	00074436 	0x74436
    2140:	5f50f7a5 	0x5f50f7a5
    2144:	d4406f3e 	0xd4406f3e
    2148:	db327f2b 	0xdb327f2b
    214c:	53382411 	0x53382411
    2150:	31427b6f 	andi	v0,t2,0x7b6f
    2154:	79917faf 	0x79917faf
    2158:	bb54605f 	swr	s4,24671(k0)
    215c:	0f213882 	jal	c84e208 <extend_mask+0xc848b4c>
    2160:	82cea8bb 	lb	t6,-22341(s6)
    2164:	ceb3902d 	lwc3	$19,-28627(s5)
    2168:	2b1b184b 	slti	k1,t8,6219
    216c:	6e7a231d 	0x6e7a231d
    2170:	5e494b86 	0x5e494b86
    2174:	0d22504a 	jal	4894128 <extend_mask+0x488ea6c>
    2178:	0b796f2d 	j	de5bcb4 <extend_mask+0xde565f8>
    217c:	331d22be 	andi	sp,t8,0x22be
    2180:	d57a1119 	0xd57a1119
    2184:	190b6e73 	0x190b6e73
    2188:	212c420a 	addi	t4,t1,16906
    218c:	2b054273 	slti	a1,t8,17011
    2190:	85394af4 	lh	t9,19188(t1)
    2194:	82002310 	lb	zero,8976(s0)
    2198:	14592a3c 	bne	v0,t9,ca8c <extend_mask+0x73d0>
    219c:	e6db4ec5 	swc1	$f27,20165(s6)
    21a0:	eb8b932e 	swc2	$11,-27858(gp)
    21a4:	0a7a756f 	j	9e9d5bc <extend_mask+0x9e97f00>
    21a8:	5a363843 	0x5a363843
    21ac:	523a108b 	0x523a108b
    21b0:	919ed267 	lbu	s8,-11673(t4)
    21b4:	12253023 	beq	s1,a1,e244 <extend_mask+0x8b88>
    21b8:	20250921 	addi	a1,at,2337
    21bc:	2378a1af 	addi	t8,k1,-24145
    21c0:	79442e0e 	0x79442e0e
    21c4:	1638677a 	bne	s1,t8,1bfb0 <extend_mask+0x168f4>
    21c8:	475c5753 	c1	0x15c5753
    21cc:	005c7f14 	0x5c7f14
    21d0:	2c0f767c 	sltiu	t7,zero,30332
    21d4:	79502f53 	0x79502f53
    21d8:	958cb641 	lhu	t4,-18879(t4)
    21dc:	111a3141 	beq	t0,k0,e6e4 <extend_mask+0x9028>
    21e0:	66ba7416 	0x66ba7416
    21e4:	820d003f 	lb	t5,63(s0)
    21e8:	28371865 	slti	s7,at,6245
    21ec:	0a1c8202 	j	8720808 <extend_mask+0x871b14c>
    21f0:	152e082f 	bne	t1,t6,42b0 <hana_bmp+0x2de8>
    21f4:	3a7afb13 	xori	k0,s3,0xfb13
    21f8:	6ad0b4d4 	0x6ad0b4d4
    21fc:	6506375c 	0x6506375c
    2200:	3e7d4159 	0x3e7d4159
    2204:	27221e02 	addiu	v0,t9,7682
    2208:	216f5677 	addi	t7,t3,22135
    220c:	d500a35d 	0xd500a35d
    2210:	1119231b 	beq	t0,t9,ae80 <extend_mask+0x57c4>
    2214:	1b25233f 	0x1b25233f
    2218:	69aa7d32 	0x69aa7d32
    221c:	1802102b 	0x1802102b
    2220:	524e6261 	0x524e6261
    2224:	58121b00 	0x58121b00
    2228:	6f7c1722 	0x6f7c1722
    222c:	8fd79cb9 	lw	s7,-25415(s8)
    2230:	9f7c6e5c 	0x9f7c6e5c
    2234:	a140160f 	sb	zero,5647(t2)
    2238:	3b42414e 	xori	v0,k0,0x414e
    223c:	3923162a 	xori	v1,t1,0x162a
    2240:	0c580017 	jal	160005c <extend_mask+0x15fa9a0>
    2244:	2177532b 	addi	s7,t3,21291
    2248:	00122036 	0x122036
    224c:	16323703 	bne	s1,s2,fe5c <extend_mask+0xa7a0>
    2250:	259d4000 	addiu	sp,t4,16384
    2254:	0b921642 	j	e485908 <extend_mask+0xe48024c>
    2258:	63445c4e 	0x63445c4e
    225c:	46a71a18 	c1	0xa71a18
    2260:	070c2c3c 	0x70c2c3c
    2264:	05579034 	0x5579034
    2268:	c2aa5519 	lwc0	$10,21785(s5)
    226c:	1c1e0f19 	0x1c1e0f19
    2270:	1615357c 	bne	s0,s5,f864 <extend_mask+0xa1a8>
    2274:	7e52360c 	0x7e52360c
    2278:	1c24383d 	0x1c24383d
    227c:	676b870d 	0x676b870d
    2280:	1929188e 	0x1929188e
    2284:	2d1c13f3 	sltiu	gp,t0,5107
    2288:	cabaaaeb 	lwc2	$26,-21781(s5)
    228c:	606f8c50 	0x606f8c50
    2290:	2c082315 	sltiu	t0,zero,8981
    2294:	64140f09 	0x64140f09
    2298:	000b2500 	sll	a0,t3,0x14
    229c:	1f01678e 	0x1f01678e
    22a0:	64000c56 	0x64000c56
    22a4:	28683e0c 	slti	t0,v1,15884
    22a8:	14303233 	bne	at,s0,eb78 <extend_mask+0x94bc>
    22ac:	13358e13 	beq	t9,s5,fffe5afc <extend_mask+0xfffe0440>
    22b0:	3c546443 	0x3c546443
    22b4:	3f5d5802 	0x3f5d5802
    22b8:	2916161c 	slti	s6,t0,5660
    22bc:	2a32282c 	slti	s2,s1,10284
    22c0:	2356788b 	addi	s6,k0,30859
    22c4:	77391214 	jalx	ce44850 <extend_mask+0xce3f194>
    22c8:	08021216 	j	84858 <extend_mask+0x7f19c>
    22cc:	07263343 	0x7263343
    22d0:	3a3c5b26 	xori	gp,s1,0x5b26
    22d4:	30476a72 	andi	a3,v0,0x6a72
    22d8:	a8f84614 	swl	t8,17940(a3)
    22dc:	29001338 	slti	zero,t0,4920
    22e0:	6d30d1bd 	0x6d30d1bd
    22e4:	9c79fbac 	0x9c79fbac
    22e8:	ca758273 	lwc2	$21,-32141(s3)
    22ec:	3e115110 	0x3e115110
    22f0:	2bbfa543 	slti	ra,sp,-23229
    22f4:	021230b2 	0x21230b2
    22f8:	a072008f 	sb	s2,143(v1)
    22fc:	ccbba92b 	lwc3	$27,-22229(a1)
    2300:	28242e23 	slti	a0,at,11811
    2304:	4e390611 	c3	0x390611
    2308:	56b41e67 	0x56b41e67
    230c:	1c177362 	0x1c177362
    2310:	3e14413a 	0x3e14413a
    2314:	37485652 	ori	t0,k0,0x5652
    2318:	51504117 	0x51504117
    231c:	395c9a40 	xori	gp,t2,0x9a40
    2320:	614e3a28 	0x614e3a28
    2324:	212b5b27 	addi	t3,t1,23335
    2328:	190a2049 	0x190a2049
    232c:	48213138 	0x48213138
    2330:	0c004e8c 	jal	13a30 <extend_mask+0xe374>
    2334:	be005c6c 	0xbe005c6c
    2338:	120d8bc4 	beq	s0,t5,fffe524c <extend_mask+0xfffdfb90>
    233c:	c7d73a4a 	lwc1	$f23,14922(s8)
    2340:	5dd7ad60 	0x5dd7ad60
    2344:	3a555f15 	xori	s5,s2,0x5f15
    2348:	31520066 	andi	s2,t2,0x66
    234c:	dbbe9603 	0xdbbe9603
    2350:	977f9e9d 	lhu	ra,-24931(k1)
    2354:	00cdddad 	0xcdddad
    2358:	bc672b30 	0xbc672b30
    235c:	24485b7b 	addiu	t0,v0,23419
    2360:	6b38095d 	0x6b38095d
    2364:	02580e51 	0x2580e51
    2368:	60493c14 	0x60493c14
    236c:	3e2d3644 	0x3e2d3644
    2370:	29391f18 	slti	t9,t1,7960
    2374:	3c5a0834 	0x3c5a0834
    2378:	5381c381 	0x5381c381
    237c:	5d4e5883 	0x5d4e5883
    2380:	6c68341d 	0x6c68341d
    2384:	2f594d33 	sltiu	t9,k0,19763
    2388:	34540103 	ori	s4,v0,0x103
    238c:	5a468201 	0x5a468201
    2390:	8ac1cc85 	lwl	at,-13179(s6)
    2394:	9fafb8dc 	0x9fafb8dc
    2398:	4d67b6b9 	0x4d67b6b9
    239c:	d183682c 	0xd183682c
    23a0:	302d1a4a 	andi	t5,at,0x1a4a
    23a4:	160088df 	bnez	s0,fffe4724 <extend_mask+0xfffdf068>
    23a8:	bbb4a244 	swr	s4,-23996(sp)
    23ac:	e23931a9 	swc0	$25,12713(s1)
    23b0:	98d6d6b2 	lwr	s6,-10574(a2)
    23b4:	15322c3c 	bne	t1,s2,d4a8 <extend_mask+0x7dec>
    23b8:	3551673d 	ori	s1,t2,0x673d
    23bc:	26201632 	addiu	zero,s1,5682
    23c0:	0243acb7 	0x243acb7
    23c4:	b11b2317 	0xb11b2317
    23c8:	0f0e7250 	jal	c39c940 <extend_mask+0xc397284>
    23cc:	282d1c0c 	slti	t5,at,7180
    23d0:	0956acaf 	j	55ab2bc <extend_mask+0x55a5c00>
    23d4:	b7b77d57 	0xb7b77d57
    23d8:	7d58825a 	0x7d58825a
    23dc:	3b12416f 	xori	s2,t8,0x416f
    23e0:	4e25223c 	c3	0x25223c
    23e4:	01050c1e 	0x1050c1e
    23e8:	0811177c 	j	445df0 <extend_mask+0x440734>
    23ec:	c4dfd492 	lwc1	$f31,-11118(a2)
    23f0:	79c6e6e6 	0x79c6e6e6
    23f4:	a2d48343 	sb	s4,-31933(s6)
    23f8:	23270e1e 	addi	a3,t9,3614
    23fc:	11262bba 	beq	t1,a2,d2e8 <extend_mask+0x7c2c>
    2400:	c0b3dab8 	lwc0	$19,-9544(a1)
    2404:	d8f91e16 	0xd8f91e16
    2408:	052bada5 	0x52bada5
    240c:	9c003505 	0x9c003505
    2410:	3a344467 	xori	s4,s1,0x4467
    2414:	1f290e10 	0x1f290e10
    2418:	50200e63 	0x50200e63
    241c:	f8c35668 	0xf8c35668
    2420:	bcca5752 	0xbcca5752
    2424:	b68c5914 	0xb68c5914
    2428:	12122f30 	beq	s0,s2,e0ec <extend_mask+0x8a30>
    242c:	6ce1b0c6 	0x6ce1b0c6
    2430:	ce626175 	lwc3	$2,24949(s3)
    2434:	5a47290e 	0x5a47290e
    2438:	2a63351d 	slti	v1,s3,13597
    243c:	1c290700 	0x1c290700
    2440:	1f661a36 	0x1f661a36
    2444:	09009cc5 	j	4027314 <extend_mask+0x4021c58>
    2448:	e3c7cbc8 	swc0	$7,-13368(s8)
    244c:	ebc28aca 	swc2	$2,-30006(s8)
    2450:	9f0e2f20 	0x9f0e2f20
    2454:	0034240c 	syscall	0xd090
    2458:	6c96a4b3 	0x6c96a4b3
    245c:	b3629dcf 	0xb3629dcf
    2460:	010e0067 	0x10e0067
    2464:	76989f00 	jalx	a627c00 <extend_mask+0xa622544>
    2468:	2299604d 	addi	t9,s4,24653
    246c:	7f120467 	0x7f120467
    2470:	131a4e40 	beq	t8,k0,15d74 <extend_mask+0x106b8>
    2474:	a1e53400 	sb	a1,13312(t7)
    2478:	0044a982 	0x44a982
    247c:	e748d0c5 	swc1	$f8,-12091(k0)
    2480:	7c052e5d 	0x7c052e5d
    2484:	2f475437 	sltiu	a3,k0,21559
    2488:	e5cacc61 	swc1	$f10,-13215(t6)
    248c:	71969a88 	0x71969a88
    2490:	8a847d34 	lwl	a0,32052(s4)
    2494:	49164b29 	0x49164b29
    2498:	1600594b 	bnez	s0,189c8 <extend_mask+0x1330c>
    249c:	38494c88 	xori	t1,v0,0x4c88
    24a0:	71e2b586 	0x71e2b586
    24a4:	b0d6d667 	0xb0d6d667
    24a8:	9687d500 	lhu	a3,-11008(s4)
    24ac:	2f12050f 	sltiu	s2,t8,1295
    24b0:	35181c3f 	ori	t8,t0,0x1c3f
    24b4:	7fc6c5ab 	0x7fc6c5ab
    24b8:	a1dbcc1e 	sb	k1,-13282(t6)
    24bc:	00755d6e 	0x755d6e
    24c0:	9a34955e 	lwr	s4,-27298(s1)
    24c4:	678f9100 	0x678f9100
    24c8:	7f927d43 	0x7f927d43
    24cc:	b3b46b00 	0xb3b46b00
    24d0:	0959c300 	j	5670c00 <extend_mask+0x566b544>
    24d4:	d19a8cc3 	0xd19a8cc3
    24d8:	97eba902 	lhu	t3,-22270(ra)
    24dc:	2d31479a 	sltiu	s1,t1,18330
    24e0:	94b0bdda 	lhu	s0,-16934(a1)
    24e4:	6b47bcc7 	0x6b47bcc7
    24e8:	974b3550 	lhu	t3,13648(k0)
    24ec:	4a324415 	c2	0x324415
    24f0:	4438040b 	0x4438040b
    24f4:	20214d87 	addi	at,at,19847
    24f8:	c5c0b493 	lwc1	$f0,-19309(t6)
    24fc:	cf5b938d 	lwc3	$27,-27763(k0)
    2500:	c3b66164 	lwc0	$22,24932(sp)
    2504:	93012c14 	lbu	at,11284(t8)
    2508:	0c0d0821 	jal	342084 <extend_mask+0x33c9c8>
    250c:	20191e52 	addi	t9,zero,7762
    2510:	7396d2c0 	0x7396d2c0
    2514:	dfd6002d 	0xdfd6002d
    2518:	c6b1b9dc 	lwc1	$f17,-17956(s5)
    251c:	575c8434 	0x575c8434
    2520:	a9ba9aa6 	swl	k0,-25946(t5)
    2524:	3a29582d 	xori	t1,s1,0x582d
    2528:	141857ff 	bne	zero,t8,18528 <extend_mask+0x12e6c>
    252c:	52a2bee6 	0x52a2bee6
    2530:	d4c0c1f1 	0xd4c0c1f1
    2534:	53132e3e 	0x53132e3e
    2538:	81b4a8b6 	lb	s4,-22346(t5)
    253c:	e4ed6507 	swc1	$f13,25863(a3)
    2540:	aebfaba4 	sw	ra,-21596(s5)
    2544:	6d430a3b 	0x6d430a3b
    2548:	3c1b1f36 	lui	k1,0x1f36
    254c:	0f0c551f 	jal	c31547c <extend_mask+0xc30fdc0>
    2550:	895cadca 	lwl	gp,-21046(t2)
    2554:	c0bceb1a 	lwc0	$28,-5350(a1)
    2558:	5bdd9fd0 	0x5bdd9fd0
    255c:	b5180b13 	0xb5180b13
    2560:	0c12040e 	jal	481038 <extend_mask+0x47b97c>
    2564:	4119281a 	0x4119281a
    2568:	6e4c866d 	0x6e4c866d
    256c:	cbc0a0ab 	lwc2	$0,-24405(s8)
    2570:	4300f7c7 	c0	0x100f7c7
    2574:	d4f1a68d 	0xd4f1a68d
    2578:	8d4a1cd9 	lw	t2,7385(t2)
    257c:	cebf0b40 	lwc3	$31,2880(s5)
    2580:	3067643c 	andi	a3,v1,0x643c
    2584:	3ce67b31 	0x3ce67b31
    2588:	837aaed7 	lb	k0,-20777(k1)
    258c:	00776800 	0x776800
    2590:	6b88575c 	0x6b88575c
    2594:	74824f62 	jalx	2093d88 <extend_mask+0x208e6cc>
    2598:	f982cfd5 	0xf982cfd5
    259c:	a0000013 	sb	zero,19(zero)
    25a0:	213a4d29 	addi	k0,t1,19753
    25a4:	273f1112 	addiu	ra,t9,4370
    25a8:	57487859 	0x57487859
    25ac:	4adeddaf 	c2	0xdeddaf
    25b0:	b6d3dfab 	0xb6d3dfab
    25b4:	e1c18808 	swc0	$1,-30712(t6)
    25b8:	0c0b0f00 	jal	2c3c00 <extend_mask+0x2be544>
    25bc:	0d015219 	jal	4054864 <extend_mask+0x404f1a8>
    25c0:	222daf50 	addi	t5,s1,-20656
    25c4:	9b3ea3a2 	lwr	s8,-23646(t9)
    25c8:	85008dac 	lh	zero,-29268(t0)
    25cc:	c0c84792 	lwc0	$8,18322(a2)
    25d0:	f8c38cb5 	0xf8c38cb5
    25d4:	f09dd8d3 	0xf09dd8d3
    25d8:	02557159 	0x2557159
    25dc:	1aa0e0a8 	blez	s5,ffffa880 <extend_mask+0xffff51c4>
    25e0:	996151c1 	lwr	at,20929(t3)
    25e4:	2ac903d1 	slti	t1,s6,977
    25e8:	be5a4781 	0xbe5a4781
    25ec:	593f3f6a 	0x593f3f6a
    25f0:	0404d2b1 	0x404d2b1
    25f4:	d69cec26 	0xd69cec26
    25f8:	0b07195f 	j	c1c657c <extend_mask+0xc1c0ec0>
    25fc:	6029313d 	0x6029313d
    2600:	4081367c 	0x4081367c
    2604:	67605fb9 	0x67605fb9
    2608:	1293d0b8 	beq	s4,s3,ffff68ec <extend_mask+0xffff1230>
    260c:	a0b9a8d1 	sb	t9,-22319(a1)
    2610:	000f1607 	0xf1607
    2614:	151a1b15 	bne	t0,k0,926c <extend_mask+0x3bb0>
    2618:	041e188d 	0x41e188d
    261c:	a5bc6d2d 	sh	gp,27949(t5)
    2620:	7e798fb4 	0x7e798fb4
    2624:	bac1e7a4 	swr	at,-6236(s6)
    2628:	4408a4c1 	0x4408a4c1
    262c:	717c8daf 	0x717c8daf
    2630:	a8e37e24 	swl	v1,32292(a3)
    2634:	3400a088 	ori	zero,zero,0xa088
    2638:	bbcb6aaa 	swr	t3,27306(s8)
    263c:	523b38cb 	0x523b38cb
    2640:	e8aa9862 	swc2	$10,-26526(a1)
    2644:	2a2c4f62 	slti	t4,s1,20322
    2648:	84390b58 	lh	t9,2904(at)
    264c:	c6c1ad56 	lwc1	$f1,-21162(s6)
    2650:	a5f63f21 	sh	s6,16161(t7)
    2654:	0c49382a 	jal	124e0a8 <extend_mask+0x12489ec>
    2658:	29317a7c 	slti	s1,t1,31356
    265c:	6d695154 	0x6d695154
    2660:	16484194 	bne	s2,t0,12cb4 <extend_mask+0xd5f8>
    2664:	c3dcb8d3 	lwc0	$28,-18221(s8)
    2668:	87ca3400 	lh	t2,13312(s8)
    266c:	0e202e2f 	jal	880b8bc <extend_mask+0x8806200>
    2670:	2c19231d 	sltiu	t9,zero,8989
    2674:	19264408 	0x19264408
    2678:	394e5987 	xori	t6,t2,0x5987
    267c:	2c8ba5be 	sltiu	t3,a0,-23106
    2680:	aaca59c7 	swl	t2,22983(s6)
    2684:	c1c88880 	lwc0	$8,-30592(t6)
    2688:	9b6224c5 	lwr	v0,9413(k1)
    268c:	ea3a0025 	swc2	$26,37(s1)
    2690:	4872efa1 	0x4872efa1
    2694:	35001300 	ori	zero,t0,0x1300
    2698:	3fa39ab8 	0x3fa39ab8
    269c:	96596268 	lhu	t9,25192(s2)
    26a0:	667b4a07 	0x667b4a07
    26a4:	59067ee8 	0x59067ee8
    26a8:	38113ec6 	xori	s1,zero,0x3ec6
    26ac:	75694325 	jalx	5a50c94 <extend_mask+0x5a4b5d8>
    26b0:	1c2b321c 	0x1c2b321c
    26b4:	838d2f1c 	lb	t5,12060(gp)
    26b8:	235b4623 	addi	k1,k0,17955
    26bc:	1016cebc 	beq	zero,s6,ffff61b0 <extend_mask+0xffff0af4>
    26c0:	4154c88e 	0x4154c88e
    26c4:	6d1a2515 	0x6d1a2515
    26c8:	061d051e 	0x61d051e
    26cc:	0f111f0b 	jal	c447c2c <extend_mask+0xc442570>
    26d0:	0b2b3e26 	j	cacf898 <extend_mask+0xcaca1dc>
    26d4:	08145e66 	j	517998 <extend_mask+0x5122dc>
    26d8:	b2a19c92 	0xb2a19c92
    26dc:	ebad9d87 	swc2	$13,-25209(sp)
    26e0:	6f621827 	0x6f621827
    26e4:	2326d473 	addi	a2,t9,-11149
    26e8:	00303f14 	0x303f14
    26ec:	ee00050c 	swc3	$0,1292(s0)
    26f0:	01122286 	0x1122286
    26f4:	8fcf3e55 	lw	t7,15957(s8)
    26f8:	617d9a40 	0x617d9a40
    26fc:	00340923 	0x340923
    2700:	3a641613 	xori	a0,s3,0x1613
    2704:	1966d631 	0x1966d631
    2708:	2e203734 	sltiu	zero,s1,14132
    270c:	2e318c89 	sltiu	s1,s1,-29559
    2710:	3b170857 	xori	s7,t8,0x857
    2714:	6e001702 	0x6e001702
    2718:	1aa22559 	0x1aa22559
    271c:	31be764f 	andi	s8,t5,0x764f
    2720:	030b1115 	0x30b1115
    2724:	150b1504 	bne	t0,t3,7b38 <extend_mask+0x247c>
    2728:	2e11172d 	sltiu	s1,s0,5933
    272c:	332e1a36 	andi	t6,t9,0x1a36
    2730:	000dfee9 	0xdfee9
    2734:	b8d096f0 	swr	s0,-26896(a2)
    2738:	a8905308 	swl	s0,21256(a0)
    273c:	04eccc06 	0x4eccc06
    2740:	b800223b 	swr	zero,8763(zero)
    2744:	340f0019 	ori	t7,zero,0x19
    2748:	2d030b37 	sltiu	v1,t0,2871
    274c:	1c6876b6 	0x1c6876b6
    2750:	1b445e9e 	0x1b445e9e
    2754:	820a763b 	lb	t2,30267(s0)
    2758:	1e293f15 	0x1e293f15
    275c:	122b2c0b 	beq	s1,t3,d78c <extend_mask+0x80d0>
    2760:	60072c33 	0x60072c33
    2764:	332d3335 	andi	t5,t9,0x3335
    2768:	6d934400 	0x6d934400
    276c:	01005b41 	0x1005b41
    2770:	070a4b6f 	0x70a4b6f
    2774:	4a18c78f 	c2	0x18c78f
    2778:	8d63000a 	lw	v1,10(t3)
    277c:	2f0c1619 	sltiu	t4,t8,5657
    2780:	1010260a 	beq	zero,s0,bfac <extend_mask+0x68f0>
    2784:	053c5908 	0x53c5908
    2788:	15441237 	bne	t2,a0,7068 <extend_mask+0x19ac>
    278c:	ebdbffc3 	swc2	$27,-61(s8)
    2790:	6bffd3c0 	0x6bffd3c0
    2794:	7a0ba3a6 	0x7a0ba3a6
    2798:	b2174c23 	0xb2174c23
    279c:	214f1930 	addi	t7,t2,6448
    27a0:	0e2c0d0d 	jal	8b03434 <extend_mask+0x8afdd78>
    27a4:	13071a3c 	beq	t8,a3,9098 <extend_mask+0x39dc>
    27a8:	47531b33 	c1	0x1531b33
    27ac:	857b005d 	lh	k1,93(t3)
    27b0:	68132720 	0x68132720
    27b4:	201f0002 	addi	ra,zero,2
    27b8:	1568068c 	bne	t3,t0,41ec <hana_bmp+0x2d24>
    27bc:	2b23202a 	slti	v1,t9,8234
    27c0:	21368890 	addi	s6,t1,-30576
    27c4:	13180600 	beq	t8,t8,3fc8 <hana_bmp+0x2b00>
    27c8:	022f0413 	0x22f0413
    27cc:	45586284 	0x45586284
    27d0:	dbc76174 	0xdbc76174
    27d4:	53001212 	0x53001212
    27d8:	08141b0c 	j	506c30 <extend_mask+0x501574>
    27dc:	0e0d1443 	jal	834510c <extend_mask+0x833fa50>
    27e0:	040c2f09 	0x40c2f09
    27e4:	19104cac 	0x19104cac
    27e8:	55171962 	0x55171962
    27ec:	c4b84a13 	lwc1	$f24,18963(a1)
    27f0:	b18ddaf2 	0xb18ddaf2
    27f4:	5bbb8055 	0x5bbb8055
    27f8:	6bd85c00 	0x6bd85c00
    27fc:	100f0b39 	beq	zero,t7,54e4 <zigzag_index+0x28>
    2800:	55123592 	0x55123592
    2804:	17565503 	bne	k0,s6,17c14 <extend_mask+0x12558>
    2808:	583a2033 	0x583a2033
    280c:	1d100a2a 	0x1d100a2a
    2810:	c89ba824 	lwc2	$27,-22492(a0)
    2814:	6115161b 	0x6115161b
    2818:	1d312a1d 	0x1d312a1d
    281c:	989d1a0b 	lwr	sp,6667(a0)
    2820:	0f0a0c0c 	jal	c283030 <extend_mask+0xc27d974>
    2824:	0a195050 	j	8654140 <extend_mask+0x864ea84>
    2828:	4d1b5fa1 	0x4d1b5fa1
    282c:	73681511 	0x73681511
    2830:	0c0f280e 	jal	3ca038 <extend_mask+0x3c497c>
    2834:	120d0473 	beq	s0,t5,3a04 <hana_bmp+0x253c>
    2838:	d46dc021 	0xd46dc021
    283c:	1e372e1b 	0x1e372e1b
    2840:	0f4f20de 	jal	d3c8378 <extend_mask+0xd3c2cbc>
    2844:	3e08068f 	0x3e08068f
    2848:	a8a0acb2 	swl	zero,-21326(a1)
    284c:	b3555541 	0xb3555541
    2850:	cd783789 	lwc3	$24,14217(t3)
    2854:	d10b0e00 	0xd10b0e00
    2858:	4d782227 	0x4d782227
    285c:	4b312934 	c2	0x1312934
    2860:	122b5b43 	beq	s1,t3,19570 <extend_mask+0x13eb4>
    2864:	0e0f0616 	jal	83c1858 <extend_mask+0x83bc19c>
    2868:	1a6b3f1c 	0x1a6b3f1c
    286c:	00272018 	0x272018
    2870:	1d14201f 	0x1d14201f
    2874:	272d989b 	addiu	t5,t9,-26469
    2878:	0f0d0000 	jal	c340000 <extend_mask+0xc33a944>
    287c:	0e0c0422 	jal	8301088 <extend_mask+0x82fb9cc>
    2880:	3e355d38 	0x3e355d38
    2884:	49062778 	0x49062778
    2888:	6e001000 	0x6e001000
    288c:	00090d00 	sll	at,t1,0x14
    2890:	20bc28cf 	addi	gp,a1,10447
    2894:	f3e20006 	0xf3e20006
    2898:	0e14602f 	jal	85180bc <extend_mask+0x8512a00>
    289c:	18b3f82b 	0x18b3f82b
    28a0:	0656dc96 	0x656dc96
    28a4:	b3cfa3a2 	0xb3cfa3a2
    28a8:	8accd24a 	lwl	t4,-11702(s6)
    28ac:	2bc6a6be 	slti	a2,s8,-22850
    28b0:	d3ae0734 	0xd3ae0734
    28b4:	2722381e 	addiu	v0,t9,14366
    28b8:	1f0b333f 	0x1f0b333f
    28bc:	373b5753 	ori	k1,t9,0x5753
    28c0:	462c321b 	c1	0x2c321b
    28c4:	20222320 	addi	v0,at,8992
    28c8:	261f211a 	addiu	ra,s0,8474
    28cc:	3b392d34 	xori	t9,t9,0x2d34
    28d0:	43490000 	c0	0x1490000
    28d4:	06030b08 	0x6030b08
    28d8:	02052c23 	0x2052c23
    28dc:	aa334c3a 	swl	s3,19514(s1)
    28e0:	8d520f00 	lw	s2,3840(t2)
    28e4:	0010213c 	0x10213c
    28e8:	05003cae 	bltz	t0,11ba4 <extend_mask+0xc4e8>
    28ec:	c569e2f4 	lwc1	$f9,-7436(t3)
    28f0:	f2000052 	0xf2000052
    28f4:	411b102d 	0x411b102d
    28f8:	a4000083 	sh	zero,131(zero)
    28fc:	717148d7 	0x717148d7
    2900:	bfcdaec7 	0xbfcdaec7
    2904:	d08900cf 	0xd08900cf
    2908:	afead2f0 	sw	t2,-11536(ra)
    290c:	3a231a22 	xori	v1,s1,0x1a22
    2910:	19140c38 	0x19140c38
    2914:	3c121616 	lui	s2,0x1616
    2918:	1a2e425e 	0x1a2e425e
    291c:	4f561e10 	c3	0x1561e10
    2920:	121d1650 	beq	s0,sp,8264 <extend_mask+0x2ba8>
    2924:	4d391e38 	0x4d391e38
    2928:	262d464c 	addiu	t5,s1,17996
    292c:	5b020409 	0x5b020409
    2930:	12010304 	beq	s0,at,3544 <hana_bmp+0x207c>
    2934:	00007d63 	0x7d63
    2938:	1a020000 	0x1a020000
    293c:	0706061c 	0x706061c
    2940:	603e0416 	0x603e0416
    2944:	1f1df9f9 	0x1f1df9f9
    2948:	d1a4ecef 	0xd1a4ecef
    294c:	a4ceae07 	sh	t6,-20985(a2)
    2950:	42a80007 	c0	0xa80007
    2954:	8c00c1ef 	lw	zero,-15889(zero)
    2958:	32dab997 	andi	k0,s6,0xb997
    295c:	cfd8adbd 	lwc3	$24,-21059(s8)
    2960:	4bdccba8 	c2	0x1dccba8
    2964:	e0cd8000 	swc0	$13,-32768(a2)
    2968:	2714032a 	addiu	s4,t8,810
    296c:	33342c17 	andi	s4,t9,0x2c17
    2970:	0c0a0a14 	jal	282850 <extend_mask+0x27d194>
    2974:	290a2122 	slti	t2,t0,8482
    2978:	3e441912 	0x3e441912
    297c:	4e565545 	c3	0x565545
    2980:	51312523 	0x51312523
    2984:	535bbfd5 	0x535bbfd5
    2988:	c29b8f63 	lwc0	$27,-28829(s4)
    298c:	93bcafa1 	lbu	gp,-20575(sp)
    2990:	c1c2a4bf 	lwc0	$2,-23361(t6)
    2994:	bab1c1a5 	swr	s1,-15963(s5)
    2998:	b9d3bc92 	swr	s3,-17262(t6)
    299c:	2f121f26 	sltiu	s2,t8,7974
    29a0:	24352b21 	addiu	s5,at,11041
    29a4:	2c16131a 	sltiu	s6,zero,4890
    29a8:	1118086b 	beq	t0,t8,4b58 <hana_bmp+0x3690>
    29ac:	bbd2be87 	swr	s2,-16761(s8)
    29b0:	5e614a23 	0x5e614a23
    29b4:	1138546a 	beq	t1,t8,17b60 <extend_mask+0x124a4>
    29b8:	624d432e 	0x624d432e
    29bc:	28203842 	slti	zero,at,14402
    29c0:	402f2927 	0x402f2927
    29c4:	242e2a37 	addiu	t6,at,10807
    29c8:	21212526 	addi	at,t1,9510
    29cc:	1e24272c 	0x1e24272c
    29d0:	210d0f11 	addi	t5,t0,3857
    29d4:	1a24241b 	0x1a24241b
    29d8:	15131c15 	bne	t0,s3,9a30 <extend_mask+0x4374>
    29dc:	1b263127 	0x1b263127
    29e0:	a7bf6257 	sh	ra,25175(sp)
    29e4:	ac8896d4 	sw	t0,-26924(a0)
    29e8:	aa568ec4 	swl	s6,-28988(s2)
    29ec:	d1ac8d70 	0xd1ac8d70
    29f0:	c89788cf 	lwc2	$23,-30513(a0)
    29f4:	bec6ad6a 	0xbec6ad6a
    29f8:	32190e07 	andi	t9,s0,0xe07
    29fc:	1c282327 	0x1c282327
    2a00:	21181d18 	addi	t8,t0,7448
    2a04:	016ac1c7 	0x16ac1c7
    2a08:	c3c6bcc3 	lwc0	$6,-17213(s8)
    2a0c:	bd6a385e 	0xbd6a385e
    2a10:	765a493d 	jalx	96924f4 <extend_mask+0x968ce38>
    2a14:	3f46342d 	0x3f46342d
    2a18:	41382d2a 	0x41382d2a
    2a1c:	231d2633 	addi	sp,t8,9779
    2a20:	363b242f 	ori	k1,s1,0x242f
    2a24:	322d2626 	andi	t5,s1,0x2626
    2a28:	3a3c2f16 	xori	gp,s1,0x2f16
    2a2c:	1a191e1f 	0x1a191e1f
    2a30:	18121317 	0x18121317
    2a34:	1b132541 	0x1b132541
    2a38:	27288d81 	addiu	t0,t9,-29311
    2a3c:	2fafcad9 	sltiu	t7,sp,-13607
    2a40:	c2ab8835 	lwc0	$11,-30667(s5)
    2a44:	358877b8 	ori	t0,t4,0x77b8
    2a48:	cd549ad6 	lwc3	$20,-25898(t2)
    2a4c:	c7d0b6a2 	lwc1	$f16,-18782(s8)
    2a50:	beaa8036 	0xbeaa8036
    2a54:	584b1a24 	0x584b1a24
    2a58:	292a2e26 	slti	t2,t1,11814
    2a5c:	2f210d3f 	sltiu	at,t9,3391
    2a60:	83a0b4c3 	lb	zero,-19261(sp)
    2a64:	bcb1a37d 	0xbcb1a37d
    2a68:	58726a5a 	0x58726a5a
    2a6c:	27304e48 	addiu	s0,t9,20040
    2a70:	2e293933 	sltiu	t1,s1,14643
    2a74:	27201f1e 	addiu	zero,t9,7966
    2a78:	121b1b2a 	beq	s0,k1,9724 <extend_mask+0x4068>
    2a7c:	2f1a3026 	sltiu	k0,t8,12326
    2a80:	212a4047 	addi	t2,t1,16455
    2a84:	3e1c2324 	0x3e1c2324
    2a88:	281c1512 	slti	gp,zero,5394
    2a8c:	161a1f19 	bne	s0,k0,a6f4 <extend_mask+0x5038>
    2a90:	2e482222 	sltiu	t0,s2,8738
    2a94:	700c3dde 	0x700c3dde
    2a98:	cec5d2bc 	lwc3	$5,-11588(s6)
    2a9c:	3e000c1b 	0x3e000c1b
    2aa0:	08739131 	j	1ce44c4 <extend_mask+0x1cdee08>
    2aa4:	17bfd4c5 	bne	sp,ra,ffff7dbc <extend_mask+0xffff2700>
    2aa8:	b9b68d6e 	swr	s6,-29330(t5)
    2aac:	583a8db2 	0x583a8db2
    2ab0:	863c2e2c 	lh	gp,11820(s1)
    2ab4:	221e2720 	addi	s8,s0,10016
    2ab8:	1b103985 	0x1b103985
    2abc:	a2a7907e 	sb	a3,-28546(s5)
    2ac0:	723c5e69 	0x723c5e69
    2ac4:	6b3b202f 	0x6b3b202f
    2ac8:	45462923 	0x45462923
    2acc:	32332224 	andi	s3,s1,0x2224
    2ad0:	21230769 	addi	v1,t1,1897
    2ad4:	64101710 	0x64101710
    2ad8:	19261125 	0x19261125
    2adc:	3f48441f 	0x3f48441f
    2ae0:	282b3020 	slti	t3,at,12320
    2ae4:	0e0f1718 	jal	83c5c60 <extend_mask+0x83c05a4>
    2ae8:	1e1f2f40 	0x1e1f2f40
    2aec:	2621968c 	addiu	at,s1,-26996
    2af0:	7f9671bb 	0x7f9671bb
    2af4:	dba77a65 	0xdba77a65
    2af8:	22081495 	addi	t0,s0,5269
    2afc:	66635124 	0x66635124
    2b00:	65dcc2d1 	0x65dcc2d1
    2b04:	8f959482 	lw	s5,-27518(gp)
    2b08:	4a8faca4 	c2	0x8faca4
    2b0c:	7d4c1918 	0x7d4c1918
    2b10:	2e121414 	sltiu	s2,s0,5140
    2b14:	1b6a8eaa 	0x1b6a8eaa
    2b18:	93574951 	lbu	s7,18769(k0)
    2b1c:	5160572c 	0x5160572c
    2b20:	37494835 	ori	t1,k0,0x4835
    2b24:	27273a23 	addiu	a3,t9,14883
    2b28:	1b505d05 	0x1b505d05
    2b2c:	58b1bc60 	0x58b1bc60
    2b30:	002c191d 	0x2c191d
    2b34:	1c22424c 	0x1c22424c
    2b38:	48242929 	0x48242929
    2b3c:	33291314 	andi	t1,t9,0x1314
    2b40:	1a191b19 	0x1a191b19
    2b44:	27314539 	addiu	s1,t9,17721
    2b48:	c7cadb88 	lwc1	$f10,-9336(s8)
    2b4c:	3a7cd3ad 	xori	gp,s3,0xd3ad
    2b50:	c5bdb06a 	lwc1	$f29,-20374(t5)
    2b54:	a4b98a8c 	sh	t9,-30068(a1)
    2b58:	c4c9a5d1 	lwc1	$f9,-23087(a2)
    2b5c:	d8a7238d 	0xd8a7238d
    2b60:	adb27c3f 	sw	s2,31807(t5)
    2b64:	606f767e 	0x606f767e
    2b68:	3d1b2813 	0x3d1b2813
    2b6c:	191c0e7d 	0x191c0e7d
    2b70:	a1c8c261 	sb	t0,-15775(t6)
    2b74:	4d494641 	0x4d494641
    2b78:	3f343e4a 	0x3f343e4a
    2b7c:	47303232 	c1	0x1303232
    2b80:	24261a68 	addiu	a2,at,6760
    2b84:	ac747fad 	sw	s4,32685(v1)
    2b88:	bc8d203e 	0xbc8d203e
    2b8c:	40411c18 	0x40411c18
    2b90:	3c51532a 	0x3c51532a
    2b94:	242a3a34 	addiu	t2,at,14900
    2b98:	27191617 	addiu	t9,t8,5655
    2b9c:	1811191f 	0x1811191f
    2ba0:	36379d90 	ori	s7,s1,0x9d90
    2ba4:	b5dc8cab 	0xb5dc8cab
    2ba8:	c68bc6c7 	lwc1	$f11,-14649(s4)
    2bac:	93aad1bd 	lbu	t2,-11843(sp)
    2bb0:	c18e4a8c 	lwc0	$14,19084(t4)
    2bb4:	cb92b7bf 	lwc2	$18,-18497(gp)
    2bb8:	734596af 	0x734596af
    2bbc:	8a72552d 	lwl	s2,21805(s3)
    2bc0:	67705c25 	0x67705c25
    2bc4:	1a2a1f1a 	0x1a2a1f1a
    2bc8:	0d62afc9 	jal	58abf24 <extend_mask+0x58a6868>
    2bcc:	d87c3841 	0xd87c3841
    2bd0:	3e444233 	0x3e444233
    2bd4:	4f4b4751 	c3	0x14b4751
    2bd8:	38232e34 	xori	v1,at,0x2e34
    2bdc:	2641b5c9 	addiu	at,s2,-18999
    2be0:	afa8b2a5 	sw	t0,-19803(sp)
    2be4:	838c7448 	lb	t4,29768(gp)
    2be8:	3a393c57 	xori	t9,s1,0x3c57
    2bec:	5d3c333b 	0x5d3c333b
    2bf0:	4741311e 	c1	0x141311e
    2bf4:	1a1f241d 	0x1a1f241d
    2bf8:	1d193433 	0x1d193433
    2bfc:	3876c6cc 	xori	s6,v1,0xc6cc
    2c00:	ddd6cbbb 	0xddd6cbbb
    2c04:	bdd07b91 	0xbdd07b91
    2c08:	dddeda61 	0xdddeda61
    2c0c:	0bc0b3ad 	j	f02ceb4 <extend_mask+0xf0277f8>
    2c10:	90b5e592 	lbu	s5,-6766(a1)
    2c14:	60948795 	0x60948795
    2c18:	a58d9bc0 	sh	t5,-25664(t4)
    2c1c:	b54032a9 	0xb54032a9
    2c20:	761c0533 	jalx	87014cc <extend_mask+0x86fbe10>
    2c24:	cbbbc8bd 	lwc2	$27,-14147(sp)
    2c28:	823f363c 	lb	ra,13884(s1)
    2c2c:	274d5955 	addiu	t5,k0,22869
    2c30:	5f613f36 	0x5f613f36
    2c34:	312c321d 	andi	t4,t1,0x321d
    2c38:	8fc9b5d3 	lw	t1,-18989(s8)
    2c3c:	cccbbea2 	lwc3	$11,-16734(a2)
    2c40:	7b4a3849 	0x7b4a3849
    2c44:	4b5d6252 	c2	0x15d6252
    2c48:	5054544b 	0x5054544b
    2c4c:	40393d3b 	0x40393d3b
    2c50:	38312b1f 	xori	s1,at,0x2b1f
    2c54:	3631164f 	ori	s1,s1,0x164f
    2c58:	c6a7a8b6 	lwc1	$f7,-22346(s5)
    2c5c:	c2b7ced3 	lwc0	$23,-12589(s5)
    2c60:	5a4382bc 	0x5a4382bc
    2c64:	d4b490ac 	0xd4b490ac
    2c68:	b1d29e50 	0xb1d29e50
    2c6c:	767c9b98 	jalx	9f26e60 <extend_mask+0x9f217a4>
    2c70:	b8adbeb8 	swr	t5,-16712(a1)
    2c74:	c5cfd541 	lwc1	$f15,-10943(t6)
    2c78:	39a3802e 	xori	v1,t5,0x802e
    2c7c:	6057c6bb 	0x6057c6bb
    2c80:	add4c49e 	sw	s4,-15202(t6)
    2c84:	6d3c324d 	0x6d3c324d
    2c88:	694e4543 	0x694e4543
    2c8c:	474a403c 	c1	0x14a403c
    2c90:	2f164588 	sltiu	s6,t8,17800
    2c94:	9bc7d6d7 	lwr	a3,-10537(s8)
    2c98:	bda3976e 	0xbda3976e
    2c9c:	42454f5e 	c0	0x454f5e
    2ca0:	62676c5a 	0x62676c5a
    2ca4:	5b52463c 	0x5b52463c
    2ca8:	3c373430 	0x3c373430
    2cac:	25212220 	addiu	at,t1,8736
    2cb0:	72092b3f 	0x72092b3f
    2cb4:	6a93a8a6 	0x6a93a8a6
    2cb8:	b2d04470 	0xb2d04470
    2cbc:	6bc5a7b4 	0x6bc5a7b4
    2cc0:	bab48baf 	swr	s4,-29777(s5)
    2cc4:	6acc8274 	0x6acc8274
    2cc8:	7898968d 	0x7898968d
    2ccc:	a097a7b9 	sb	s7,-22599(a0)
    2cd0:	bf413274 	0xbf413274
    2cd4:	27328071 	addiu	s2,t9,-32655
    2cd8:	86bec0ba 	lh	s8,-16198(s5)
    2cdc:	c4bdc261 	lwc1	$f29,-15775(a1)
    2ce0:	0f306482 	jal	cc19208 <extend_mask+0xcc13b4c>
    2ce4:	6322544f 	0x6322544f
    2ce8:	563c2115 	0x563c2115
    2cec:	194a77ab 	0x194a77ab
    2cf0:	c3d2bdad 	lwc0	$18,-16979(s8)
    2cf4:	96783933 	lhu	t8,14643(s3)
    2cf8:	3d516072 	0x3d516072
    2cfc:	806e6352 	lb	t6,25426(v1)
    2d00:	3c393125 	0x3c393125
    2d04:	271e1620 	addiu	s8,t8,5664
    2d08:	1e1c6041 	0x1e1c6041
    2d0c:	34283559 	ori	t0,at,0x3559
    2d10:	6399acc7 	0x6399acc7
    2d14:	4888cccc 	0x4888cccc
    2d18:	cc91b5b4 	lwc3	$17,-19020(a0)
    2d1c:	68774d3e 	0x68774d3e
    2d20:	ad6c6660 	sw	t4,26208(t3)
    2d24:	3f3e315c 	0x3f3e315c
    2d28:	aea09e30 	sw	zero,-25040(s5)
    2d2c:	4cab5b69 	0x4cab5b69
    2d30:	70a10c4f 	0x70a10c4f
    2d34:	bab7aaab 	swr	s7,-21845(s5)
    2d38:	c5ba3c7d 	lwc1	$f26,15485(t5)
    2d3c:	acc7cb4f 	sw	a3,-13489(a2)
    2d40:	2d4f5b4d 	sltiu	t7,t2,23373
    2d44:	161a1a1a 	bne	s0,k0,95b0 <extend_mask+0x3ef4>
    2d48:	4690bcb6 	c1	0x90bcb6
    2d4c:	7b504a37 	0x7b504a37
    2d50:	32221a31 	andi	v0,s1,0x1a31
    2d54:	46607c7c 	c1	0x607c7c
    2d58:	6f54341e 	0x6f54341e
    2d5c:	21191011 	addi	t9,t0,4113
    2d60:	22221b1c 	addi	v0,s1,6940
    2d64:	5e3b211b 	0x5e3b211b
    2d68:	46486baf 	c1	0x486baf
    2d6c:	916739c5 	lbu	a3,14789(t3)
    2d70:	a9c9c2a7 	swl	t1,-15705(t6)
    2d74:	6daab185 	0x6daab185
    2d78:	78529b71 	0x78529b71
    2d7c:	543e432a 	0x543e432a
    2d80:	084cb4b2 	j	132d2c8 <extend_mask+0x1327c0c>
    2d84:	b51e69b8 	0xb51e69b8
    2d88:	a0b6bbd2 	sb	s6,-17454(a1)
    2d8c:	6f74aeae 	0x6f74aeae
    2d90:	9abaccd0 	lwr	k0,-13104(s5)
    2d94:	caa37499 	lwc2	$3,29849(s5)
    2d98:	ab893248 	swl	t1,12872(gp)
    2d9c:	484b5526 	0x484b5526
    2da0:	22211c22 	addi	at,s1,7202
    2da4:	51523a3e 	0x51523a3e
    2da8:	515f442b 	0x515f442b
    2dac:	03142848 	0x3142848
    2db0:	6f837550 	0x6f837550
    2db4:	2d21221d 	sltiu	at,t1,8733
    2db8:	201c2427 	addi	gp,zero,9255
    2dbc:	1c186d3b 	0x1c186d3b
    2dc0:	1e0b2226 	0x1e0b2226
    2dc4:	4972252e 	0x4972252e
    2dc8:	4aa66b1d 	c2	0xa66b1d
    2dcc:	92928891 	lbu	s2,-30575(s4)
    2dd0:	daa2b5c7 	0xdaa2b5c7
    2dd4:	ad7a3f50 	sw	k0,16208(t3)
    2dd8:	2a2a2059 	slti	t2,s1,8281
    2ddc:	a7b4a71f 	sh	s4,-22753(sp)
    2de0:	67d0b2c6 	0x67d0b2c6
    2de4:	d1eaa472 	0xd1eaa472
    2de8:	849b94bc 	lh	k1,-27460(a0)
    2dec:	beb2c6c2 	0xbeb2c6c2
    2df0:	8cacc09e 	lw	t4,-16226(a1)
    2df4:	5c475460 	0x5c475460
    2df8:	524a213e 	0x524a213e
    2dfc:	3b223138 	xori	v0,t9,0x3138
    2e00:	18385462 	0x18385462
    2e04:	5d330a0c 	0x5d330a0c
    2e08:	17375d82 	bne	t9,s7,1a414 <extend_mask+0x14d58>
    2e0c:	805e2b25 	lb	s8,11045(v0)
    2e10:	2320221f 	addi	zero,t9,8735
    2e14:	282a201b 	slti	t2,at,8219
    2e18:	75390b13 	jalx	4e42c4c <extend_mask+0x4e3d590>
    2e1c:	11131551 	beq	t0,s3,8364 <extend_mask+0x2ca8>
    2e20:	342b4d34 	ori	t3,at,0x4d34
    2e24:	151416be 	bne	t0,s4,8920 <extend_mask+0x3264>
    2e28:	c7a5c5ba 	lwc1	$f5,-14918(sp)
    2e2c:	c9c5b164 	lwc2	$5,-20124(t6)
    2e30:	371e1d6c 	ori	s8,t8,0x1d6c
    2e34:	5b3f5856 	0x5b3f5856
    2e38:	62284fbc 	0x62284fbc
    2e3c:	c4b6c1b6 	lwc1	$f22,-15946(a1)
    2e40:	b154577c 	0xb154577c
    2e44:	4269c3a5 	c0	0x69c3a5
    2e48:	98bea2a9 	lwr	s8,-23895(a1)
    2e4c:	a37c7a5b 	sb	gp,31323(k1)
    2e50:	4d4f5959 	0x4d4f5959
    2e54:	4c55613c 	0x4c55613c
    2e58:	533f261c 	0x533f261c
    2e5c:	31506759 	andi	s0,t2,0x6759
    2e60:	1e213346 	0x1e213346
    2e64:	547a8262 	0x547a8262
    2e68:	31292b2d 	andi	t1,t1,0x2b2d
    2e6c:	1d1d2921 	0x1d1d2921
    2e70:	19186a44 	0x19186a44
    2e74:	1b1e231b 	0x1b1e231b
    2e78:	151d221f 	bne	t0,sp,b6f8 <extend_mask+0x603c>
    2e7c:	5f25331d 	0x5f25331d
    2e80:	1d90e2d1 	0x1d90e2d1
    2e84:	cbb744a3 	lwc2	$23,17571(sp)
    2e88:	b9bf963b 	swr	ra,-27077(t5)
    2e8c:	3f753649 	0x3f753649
    2e90:	398eab1a 	xori	t6,t4,0xab1a
    2e94:	4c9ca2c9 	0x4c9ca2c9
    2e98:	948ac395 	lhu	t2,-15467(a0)
    2e9c:	7b561674 	0x7b561674
    2ea0:	afaeaacb 	sw	t6,-21813(sp)
    2ea4:	8b5352a7 	lwl	s3,21159(k0)
    2ea8:	9f4d4b3a 	0x9f4d4b3a
    2eac:	2f7b8059 	sltiu	k1,k1,-32679
    2eb0:	807e6a4b 	lb	s8,27211(v1)
    2eb4:	1a251d34 	0x1a251d34
    2eb8:	5660413d 	0x5660413d
    2ebc:	4f574866 	c3	0x1574866
    2ec0:	7b693a4b 	0x7b693a4b
    2ec4:	4348463c 	c0	0x148463c
    2ec8:	27201515 	addiu	zero,t9,5397
    2ecc:	34541b20 	ori	s4,v0,0x1b20
    2ed0:	1d151c21 	0x1d151c21
    2ed4:	1c1a5826 	0x1c1a5826
    2ed8:	1f432a13 	0x1f432a13
    2edc:	76a59fb5 	jalx	a967ed4 <extend_mask+0xa962818>
    2ee0:	9da1c5b4 	0x9da1c5b4
    2ee4:	83797323 	lb	t9,29475(k1)
    2ee8:	7dae91b5 	0x7dae91b5
    2eec:	bc1a78c3 	0xbc1a78c3
    2ef0:	babcae9c 	swr	gp,-20836(s5)
    2ef4:	85acb4a9 	lh	t4,-19287(t5)
    2ef8:	2674a1b6 	addiu	s4,s3,-24138
    2efc:	bdc1ad5d 	0xbdc1ad5d
    2f00:	61a9a754 	0x61a9a754
    2f04:	2836156e 	slti	s6,at,5486
    2f08:	ab7d84bb 	swl	sp,-31557(k1)
    2f0c:	a44f1821 	sh	t7,6177(v0)
    2f10:	1a123153 	0x1a123153
    2f14:	4e4d7ca1 	c3	0x4d7ca1
    2f18:	8b929581 	lwl	s2,-27263(gp)
    2f1c:	4a51495a 	c2	0x51495a
    2f20:	575c4a36 	0x575c4a36
    2f24:	1512165b 	bne	t0,s2,8894 <extend_mask+0x31d8>
    2f28:	22251b1b 	addi	a1,s1,6939
    2f2c:	18322a23 	0x18322a23
    2f30:	60210b30 	0x60210b30
    2f34:	3409b4e2 	ori	t1,zero,0xb4e2
    2f38:	bcd0dd95 	0xbcd0dd95
    2f3c:	98543a40 	lwr	s4,14912(v0)
    2f40:	4983abac 	0x4983abac
    2f44:	70678521 	0x70678521
    2f48:	22571c64 	addi	s7,s2,7268
    2f4c:	d96376b6 	0xd96376b6
    2f50:	b3744759 	0xb3744759
    2f54:	aababf94 	swl	k0,-16492(s5)
    2f58:	bab78950 	swr	s7,-30384(s5)
    2f5c:	824a342d 	lb	t2,13357(s2)
    2f60:	2141969e 	addi	at,t2,-26978
    2f64:	80c3b679 	lb	v1,-18823(a2)
    2f68:	5d580e06 	0x5d580e06
    2f6c:	13253864 	beq	t9,a1,11100 <extend_mask+0xba44>
    2f70:	9fb3d4cd 	0x9fb3d4cd
    2f74:	c5d35f27 	lwc1	$f19,24359(t6)
    2f78:	493a4241 	0x493a4241
    2f7c:	44403c33 	0x44403c33
    2f80:	362e271b 	ori	t6,s1,0x271b
    2f84:	3950341d 	xori	s0,t2,0x341d
    2f88:	25384c6b 	addiu	t8,t1,19563
    2f8c:	523c2b1c 	0x523c2b1c
    2f90:	6bc06763 	0x6bc06763
    2f94:	6a7c8d89 	0x6a7c8d89
    2f98:	314c2248 	andi	t4,t2,0x2248
    2f9c:	7d987209 	0x7d987209
    2fa0:	2c4f62c6 	sltiu	t7,v0,25286
    2fa4:	abb4d4c5 	swl	s4,-11067(sp)
    2fa8:	bfb2c08f 	0xbfb2c08f
    2fac:	682457d4 	0x682457d4
    2fb0:	bdc8d2ba 	0xbdc8d2ba
    2fb4:	bf8a805c 	0xbf8a805c
    2fb8:	5641241d 	0x5641241d
    2fbc:	77bab7bc 	jalx	eeadef0 <extend_mask+0xeea8834>
    2fc0:	b7aa8c5a 	0xb7aa8c5a
    2fc4:	15030007 	bne	t0,v1,2fe4 <hana_bmp+0x1b1c>
    2fc8:	1a436b8c 	0x1a436b8c
    2fcc:	b3c29bc7 	0xb3c29bc7
    2fd0:	ae26142e 	sw	a2,5166(s1)
    2fd4:	352e2c40 	ori	t6,t1,0x2c40
    2fd8:	3333272b 	andi	s3,t9,0x272b
    2fdc:	21142650 	addi	s4,t0,9808
    2fe0:	29492049 	slti	t1,t2,8265
    2fe4:	456b3856 	0x456b3856
    2fe8:	552b385e 	0x552b385e
    2fec:	704e45c1 	0x704e45c1
    2ff0:	8eb69615 	lw	s6,-27115(s5)
    2ff4:	05245196 	0x5245196
    2ff8:	681c365f 	0x681c365f
    2ffc:	195bfea7 	0x195bfea7
    3000:	f459ecac 	0xf459ecac
    3004:	99c0e889 	lwr	zero,-6007(t6)
    3008:	0957c8ce 	j	55f2338 <extend_mask+0x55ecc7c>
    300c:	e5b7e2f0 	swc1	$f23,-7440(t5)
    3010:	c678572d 	lwc1	$f24,22317(s3)
    3014:	281387c8 	slti	s3,zero,-30776
    3018:	ced3af90 	lwc3	$19,-20592(s6)
    301c:	3e08001c 	0x3e08001c
    3020:	666c5c7f 	0x666c5c7f
    3024:	7c856ead 	0x7c856ead
    3028:	a7a3d6af 	sh	v1,-10577(sp)
    302c:	524e4535 	0x524e4535
    3030:	18283334 	0x18283334
    3034:	14232421 	bne	at,v1,c0bc <extend_mask+0x6a00>
    3038:	0360219a 	0x360219a
    303c:	74424368 	jalx	1090da0 <extend_mask+0x108b6e4>
    3040:	8349432f 	lb	t1,17199(k0)
    3044:	29363a58 	slti	s6,t1,14936
    3048:	729ff3c2 	0x729ff3c2
    304c:	b1d03200 	0xb1d03200
    3050:	31210e46 	andi	at,t1,0xe46
    3054:	3c3b1f01 	0x3c3b1f01
    3058:	30c0be3c 	andi	zero,a2,0xbe3c
    305c:	ff7091c1 	0xff7091c1
    3060:	7b11b6a4 	0x7b11b6a4
    3064:	5eb54355 	0x5eb54355
    3068:	c8c3cdc5 	lwc2	$3,-12859(a2)
    306c:	53202036 	0x53202036
    3070:	5bacbfb6 	0x5bacbfb6
    3074:	cb9e3d00 	lwc2	$30,15616(gp)
    3078:	0444a2cb 	0x444a2cb
    307c:	b0b1b3a9 	0xb0b1b3a9
    3080:	6ea6dec4 	0x6ea6dec4
    3084:	c1bc8e5d 	lwc0	$28,-29091(t5)
    3088:	56361a17 	0x56361a17
    308c:	35373f19 	ori	s7,t1,0x3f19
    3090:	0c0e1f60 	jal	387d80 <extend_mask+0x3826c4>
    3094:	38a99589 	xori	t1,a1,0x9589
    3098:	3d2b7371 	0x3d2b7371
    309c:	6531250a 	0x6531250a
    30a0:	44ac7c1a 	0x44ac7c1a
    30a4:	a3cfeab9 	sb	t7,-5447(s8)
    30a8:	86daa0c6 	lh	k0,-24378(s6)
    30ac:	cd2a2439 	lwc3	$10,9273(t1)
    30b0:	1a201b33 	blez	s1,9d80 <extend_mask+0x46c4>
    30b4:	f338c1b7 	0xf338c1b7
    30b8:	98450b8f 	lwr	a1,2959(v0)
    30bc:	bdb8c9d4 	0xbdb8c9d4
    30c0:	d466c2c9 	0xd466c2c9
    30c4:	9f436d82 	0x9f436d82
    30c8:	55384650 	0x55384650
    30cc:	536f97a2 	0x536f97a2
    30d0:	6334301e 	0x6334301e
    30d4:	59bfb6b7 	0x59bfb6b7
    30d8:	b2ae7488 	0xb2ae7488
    30dc:	9fbecfc1 	0x9fbecfc1
    30e0:	9f86591f 	0x9f86591f
    30e4:	18173b3e 	0x18173b3e
    30e8:	26321248 	addiu	s2,s1,4680
    30ec:	b1932fa1 	0xb1932fa1
    30f0:	7dbf9534 	0x7dbf9534
    30f4:	1b394f35 	0x1b394f35
    30f8:	2c5595a3 	sltiu	s5,v0,-27229
    30fc:	5a56a791 	0x5a56a791
    3100:	c5e15ab1 	lwc1	$f1,23217(t7)
    3104:	ccc78300 	lwc3	$7,-32000(a2)
    3108:	24352016 	addiu	s5,at,8214
    310c:	0780c54a 	bltz	gp,ffff4638 <extend_mask+0xfffeef7c>
    3110:	54b56a55 	0x54b56a55
    3114:	241267ba 	addiu	s2,zero,26554
    3118:	d6b0e8e0 	0xd6b0e8e0
    311c:	bfbdec52 	0xbfbdec52
    3120:	929c845c 	lbu	gp,-31652(s4)
    3124:	43524f67 	c0	0x1524f67
    3128:	777b5e4a 	jalx	ded7928 <extend_mask+0xded226c>
    312c:	54510b4c 	0x54510b4c
    3130:	9ec9b969 	0x9ec9b969
    3134:	7a617c7c 	0x7a617c7c
    3138:	91bd898f 	lbu	sp,-30321(t5)
    313c:	4a1d2226 	c2	0x1d2226
    3140:	3f402620 	0x3f402620
    3144:	1621cac2 	bne	s1,at,ffff5c50 <extend_mask+0xffff0594>
    3148:	37b08abc 	ori	s0,sp,0x8abc
    314c:	e2d7991d 	swc0	$23,-26339(s6)
    3150:	722e1aa4 	0x722e1aa4
    3154:	b6ab9c86 	0xb6ab9c86
    3158:	d1cfbba2 	0xd1cfbba2
    315c:	4a6ecd8e 	c2	0x6ecd8e
    3160:	030d2438 	0x30d2438
    3164:	19180c26 	0x19180c26
    3168:	ae5a14db 	sw	k0,5339(s2)
    316c:	81721a37 	lb	s2,6711(t3)
    3170:	1e023700 	0x1e023700
    3174:	c8c5c2b1 	lwc2	$5,-15695(a2)
    3178:	bcb04562 	0xbcb04562
    317c:	a28b732d 	sb	t3,29485(s4)
    3180:	387f9599 	xori	ra,v1,0x9599
    3184:	874f6578 	lh	t7,25976(k0)
    3188:	5d41afc4 	0x5d41afc4
    318c:	aca1c35c 	sw	at,-15524(a1)
    3190:	4b4a2f3b 	c2	0x14a2f3b
    3194:	4b482d21 	c2	0x1482d21
    3198:	23224143 	addi	v0,t9,16707
    319c:	24334138 	addiu	s3,at,16696
    31a0:	2c8e167d 	sltiu	t6,a0,5757
    31a4:	5ce6cada 	0x5ce6cada
    31a8:	c6552836 	lwc1	$f21,10294(s2)
    31ac:	23a1e3a1 	addi	at,sp,-7263
    31b0:	2279af66 	addi	t9,s3,-20634
    31b4:	50155a2c 	0x50155a2c
    31b8:	8fde7a02 	lw	s8,31234(s8)
    31bc:	2b342409 	slti	s4,t9,9225
    31c0:	3fbe7761 	0x3fbe7761
    31c4:	1b9fa3e9 	0x1b9fa3e9
    31c8:	7b172010 	0x7b172010
    31cc:	38402f3f 	xori	zero,v0,0x2f3f
    31d0:	65b1a8b7 	0x65b1a8b7
    31d4:	348fdebd 	ori	t7,a0,0xdebd
    31d8:	724d9193 	0x724d9193
    31dc:	95a98184 	lhu	t1,-32380(t5)
    31e0:	568a7d6b 	0x568a7d6b
    31e4:	aeab8aa2 	sw	t3,-30046(s5)
    31e8:	bc642b37 	0xbc642b37
    31ec:	321c342a 	andi	gp,s0,0x342a
    31f0:	29242222 	slti	a0,t1,8738
    31f4:	43421631 	c0	0x1421631
    31f8:	698d3e80 	0x698d3e80
    31fc:	d5bc9c7a 	0xd5bc9c7a
    3200:	e8cdc394 	swc2	$13,-15468(a2)
    3204:	2e35206b 	sltiu	s5,s1,8299
    3208:	d19e1eb7 	0xd19e1eb7
    320c:	e891006a 	swc2	$17,106(a0)
    3210:	7365189a 	0x7365189a
    3214:	90a8462c 	lbu	t0,17964(a1)
    3218:	003ab4c1 	0x3ab4c1
    321c:	8a55327d 	lwl	s5,12925(s2)
    3220:	90cec473 	lbu	t6,-15245(a2)
    3224:	aa8805c0 	swl	t0,1472(s4)
    3228:	25414b45 	addiu	at,t2,19269
    322c:	a59bc87e 	sh	k1,-14210(t4)
    3230:	c4e898b1 	lwc1	$f8,-26447(a3)
    3234:	8c59886d 	lw	t9,-30611(v0)
    3238:	6569629a 	0x6569629a
    323c:	8e555261 	lw	s5,21089(s2)
    3240:	666a8785 	0x666a8785
    3244:	252d2d25 	addiu	t5,t1,11557
    3248:	202a1e21 	addi	t2,at,7713
    324c:	24181925 	addiu	t8,zero,6437
    3250:	19100b1d 	0x19100b1d
    3254:	79a3a1b7 	0x79a3a1b7
    3258:	c7cc3677 	lwc1	$f12,13943(s8)
    325c:	ff77d038 	0xff77d038
    3260:	294fb469 	slti	t7,t2,-19351
    3264:	2dbcd395 	sltiu	gp,t5,-11371
    3268:	0496ab7d 	0x496ab7d
    326c:	aba69082 	swl	a2,-28542(sp)
    3270:	7b3bcc6e 	0x7b3bcc6e
    3274:	439beb58 	c0	0x19beb58
    3278:	368a65b8 	ori	t2,s4,0x65b8
    327c:	de97989b 	0xde97989b
    3280:	73c6b19c 	0x73c6b19c
    3284:	936b4034 	lbu	t3,16436(k1)
    3288:	ba99d9b3 	swr	t9,-9805(s4)
    328c:	fe6c4b7e 	0xfe6c4b7e
    3290:	8d3c653b 	lw	gp,25915(t1)
    3294:	6c7a7e4a 	0x6c7a7e4a
    3298:	33263d34 	andi	a2,t9,0x3d34
    329c:	928c3922 	lbu	t4,14626(s4)
    32a0:	23261b1a 	addi	a2,t9,6938
    32a4:	21221a1d 	addi	v0,t1,6685
    32a8:	29253b0f 	slti	a1,t1,15119
    32ac:	1b231c81 	0x1b231c81
    32b0:	aabad7e8 	swl	k0,-10264(s5)
    32b4:	b86a1973 	swr	t2,6515(v1)
    32b8:	c340342d 	lwc0	$0,13357(k0)
    32bc:	661a2268 	0x661a2268
    32c0:	a3304fcd 	sb	s0,20429(t9)
    32c4:	9cc7aaa2 	0x9cc7aaa2
    32c8:	c3c04c8b 	lwc0	$0,19595(s8)
    32cc:	d7ad7e97 	0xd7ad7e97
    32d0:	3366238b 	andi	a2,k1,0x238b
    32d4:	edb4c4a9 	swc3	$20,-15191(t5)
    32d8:	5e216958 	0x5e216958
    32dc:	7993653d 	0x7993653d
    32e0:	2a261032 	slti	a2,s1,4146
    32e4:	ebd06d5d 	swc2	$16,27997(s8)
    32e8:	73b41f4d 	0x73b41f4d
    32ec:	5a594940 	0x5a594940
    32f0:	31402f46 	andi	zero,t2,0x2f46
    32f4:	54454d71 	0x54454d71
    32f8:	2d282021 	sltiu	t0,t1,8225
    32fc:	1c1b322d 	0x1c1b322d
    3300:	181f2728 	0x181f2728
    3304:	9f360019 	0x9f360019
    3308:	00005baf 	0x5baf
    330c:	b6cdaf5b 	0xb6cdaf5b
    3310:	00a6ee41 	0xa6ee41
    3314:	28191063 	slti	t9,zero,4195
    3318:	02234004 	sllv	t0,v1,s1
    331c:	4c38f491 	0x4c38f491
    3320:	d1bebfe9 	0xd1bebfe9
    3324:	dfb5d3e0 	0xdfb5d3e0
    3328:	780a4f6d 	0x780a4f6d
    332c:	3b5fe6c3 	xori	ra,k0,0xe6c3
    3330:	92b44d20 	lbu	s4,19744(s5)
    3334:	206ea75b 	addi	t6,v1,-22693
    3338:	382d2718 	xori	t5,at,0x2718
    333c:	33295d73 	andi	t1,t9,0x5d73
    3340:	774adba9 	jalx	d2b6ea4 <extend_mask+0xd2b17e8>
    3344:	605c5740 	0x605c5740
    3348:	2026171a 	addi	a2,at,5914
    334c:	204d6762 	addi	t5,v0,26466
    3350:	383c3032 	xori	gp,at,0x3032
    3354:	30212425 	andi	at,at,0x2425
    3358:	3e361d21 	0x3e361d21
    335c:	272ac175 	addiu	t2,t9,-16011
    3360:	0004091a 	0x4091a
    3364:	0084d799 	0x84d799
    3368:	d2003ae1 	0xd2003ae1
    336c:	53472d23 	0x53472d23
    3370:	0b2b3e0c 	j	cacf830 <extend_mask+0xcaca174>
    3374:	691f2e0c 	0x691f2e0c
    3378:	5eebacb1 	0x5eebacb1
    337c:	c3dbe3b5 	lwc0	$27,-7243(s8)
    3380:	b4e09a4d 	0xb4e09a4d
    3384:	326e3538 	andi	t6,s3,0x3538
    3388:	c5c16e56 	lwc1	$f1,28246(t6)
    338c:	1c442ebc 	0x1c442ebc
    3390:	ae85202e 	sw	a1,8238(s4)
    3394:	22292d1f 	addi	t1,s1,11551
    3398:	496d618e 	0x496d618e
    339c:	dbce8872 	0xdbce8872
    33a0:	4f295642 	c3	0x1295642
    33a4:	25302b4c 	addiu	s0,t1,11084
    33a8:	5d566738 	0x5d566738
    33ac:	59353722 	0x59353722
    33b0:	2326413d 	addi	a2,t9,16701
    33b4:	2a3c1521 	slti	gp,s1,5409
    33b8:	98530d0b 	lwr	s3,3339(v0)
    33bc:	02240099 	0x2240099
    33c0:	c6de4306 	lwc1	$f30,17158(s6)
    33c4:	96b48b36 	lhu	s4,-29898(s5)
    33c8:	3a250d1c 	xori	a1,s1,0xd1c
    33cc:	463c140e 	c1	0x3c140e
    33d0:	4f9a5b83 	c3	0x19a5b83
    33d4:	ad89a86f 	sw	t1,-22417(t4)
    33d8:	d7b9a1cf 	0xd7b9a1cf
    33dc:	d79d5947 	0xd79d5947
    33e0:	5340649a 	0x5340649a
    33e4:	61016f75 	0x61016f75
    33e8:	1a4ea45b 	0x1a4ea45b
    33ec:	11144956 	beq	t0,s4,15948 <extend_mask+0x1028c>
    33f0:	48005582 	0x48005582
    33f4:	66a6fec3 	0x66a6fec3
    33f8:	7c9b2e32 	0x7c9b2e32
    33fc:	5a4b321e 	0x5a4b321e
    3400:	234b5965 	addi	t3,k0,22885
    3404:	51644256 	0x51644256
    3408:	32282427 	andi	t0,s1,0x2427
    340c:	45422e4c 	0x45422e4c
    3410:	24206427 	addiu	zero,at,25639
    3414:	0e100c1a 	jal	8403068 <extend_mask+0x83fd9ac>
    3418:	2de2c5fe 	sltiu	v0,t7,-14850
    341c:	0921e3a7 	j	4878e9c <extend_mask+0x48737e0>
    3420:	85742d2f 	lh	s4,11567(t3)
    3424:	0d284929 	jal	4a124a4 <extend_mask+0x4a0cde8>
    3428:	2a2b768e 	slti	t3,s1,30350
    342c:	a9daa1d7 	swl	k0,-24105(t6)
    3430:	fee6d6c5 	0xfee6d6c5
    3434:	eeeed8a5 	swc3	$14,-10075(s7)
    3438:	64474c35 	0x64474c35
    343c:	89a90a8d 	lwl	t1,2701(t5)
    3440:	527a4308 	0x527a4308
    3444:	8161224a 	lb	at,8778(t3)
    3448:	7a633729 	0x7a633729
    344c:	966b692c 	lhu	t3,26924(s3)
    3450:	c1bebcbd 	lwc0	$30,-17219(t5)
    3454:	3d142b35 	0x3d142b35
    3458:	4d380a6d 	0x4d380a6d
    345c:	aa887154 	swl	t0,29012(s4)
    3460:	55332824 	0x55332824
    3464:	242f4a4c 	addiu	t7,at,19020
    3468:	35442225 	ori	a0,t2,0x2225
    346c:	8968120a 	lwl	t0,4618(t3)
    3470:	1c191800 	0x1c191800
    3474:	200e1d57 	addi	t6,zero,7511
    3478:	90716329 	lbu	s1,25385(v1)
    347c:	49222921 	0x49222921
    3480:	3c3b111c 	0x3c3b111c
    3484:	4c834a54 	0x4c834a54
    3488:	5d482ca3 	0x5d482ca3
    348c:	be4858ed 	0xbe4858ed
    3490:	b1a77b55 	0xb1a77b55
    3494:	6711a4e4 	0x6711a4e4
    3498:	a6804081 	sh	zero,16513(s4)
    349c:	360b495e 	ori	t3,s0,0x495e
    34a0:	62524e66 	0x62524e66
    34a4:	02aa6d71 	0x2aa6d71
    34a8:	2b2e06ba 	slti	t6,t9,1722
    34ac:	d3b64424 	0xd3b64424
    34b0:	18253835 	0x18253835
    34b4:	1e44bfcb 	0x1e44bfcb
    34b8:	b3594333 	0xb3594333
    34bc:	2b202234 	slti	zero,t9,8756
    34c0:	44513b2f 	0x44513b2f
    34c4:	2527612b 	addiu	a3,t1,24875
    34c8:	470e1d13 	c1	0x10e1d13
    34cc:	232d1f22 	addi	t5,t9,7970
    34d0:	09a1d94b 	j	687652c <extend_mask+0x6870e70>
    34d4:	550f5b1a 	0x550f5b1a
    34d8:	32283b53 	andi	t0,s1,0x3b53
    34dc:	1a30191c 	0x1a30191c
    34e0:	22063f46 	addi	a2,s0,16198
    34e4:	1593c986 	bne	t4,s3,ffff5b00 <extend_mask+0xffff0444>
    34e8:	6dc2e3bd 	0x6dc2e3bd
    34ec:	a07c813c 	sb	gp,-32452(v1)
    34f0:	a9d4d8d2 	swl	s4,-10030(t6)
    34f4:	a8ab8cbd 	swl	t3,-29507(a1)
    34f8:	0099812a 	0x99812a
    34fc:	3f174bb4 	0x3f174bb4
    3500:	5e4c2265 	0x5e4c2265
    3504:	6f41a2b7 	0x6f41a2b7
    3508:	946a2015 	lhu	t2,8213(v1)
    350c:	2e262320 	sltiu	a2,s1,8992
    3510:	71b2d999 	0x71b2d999
    3514:	4c2e2123 	0x4c2e2123
    3518:	2a364650 	slti	s6,s1,18000
    351c:	3416172c 	ori	s6,zero,0x172c
    3520:	564e1a39 	0x564e1a39
    3524:	081a651e 	j	699478 <extend_mask+0x693dbc>
    3528:	182f0fa6 	0x182f0fa6
    352c:	3c69660d 	0x3c69660d
    3530:	571f3a22 	0x571f3a22
    3534:	216703a3 	addi	a3,t3,931
    3538:	7d232b12 	0x7d232b12
    353c:	4a331bf8 	c2	0x331bf8
    3540:	be7dc5ee 	0xbe7dc5ee
    3544:	d9d2a063 	0xd9d2a063
    3548:	89ffb17f 	lwl	ra,-20097(t7)
    354c:	ffdcdeb9 	0xffdcdeb9
    3550:	5e6b7147 	0x5e6b7147
    3554:	7595130b 	jalx	6544c2c <extend_mask+0x653f570>
    3558:	9c802d1b 	0x9c802d1b
    355c:	1e37a885 	0x1e37a885
    3560:	9ca6abb3 	0x9ca6abb3
    3564:	58001911 	0x58001911
    3568:	8887b8a2 	lwl	a3,-18270(a0)
    356c:	c0b89b27 	lwc0	$24,-25817(a1)
    3570:	15212639 	bne	t1,at,ce58 <extend_mask+0x779c>
    3574:	49493e2d 	0x49493e2d
    3578:	2b293f7e 	slti	t1,t9,16254
    357c:	152e122d 	bne	t1,t6,7e34 <extend_mask+0x2778>
    3580:	541f301a 	0x541f301a
    3584:	2a150945 	slti	s5,s0,2373
    3588:	2a434a2d 	slti	v1,s2,18989
    358c:	382b162b 	xori	t3,at,0x162b
    3590:	2f879c1a 	sltiu	a3,gp,-25574
    3594:	251a355e 	addiu	k0,t0,13662
    3598:	5b4b9baa 	0x5b4b9baa
    359c:	b2cb9ed2 	0xb2cb9ed2
    35a0:	b76603e2 	0xb76603e2
    35a4:	edff3b0c 	swc3	$31,15116(t7)
    35a8:	c6ea374f 	lwc1	$f10,14159(s7)
    35ac:	26a7a0e3 	addiu	a3,s5,-24349
    35b0:	0730000a 	bltzal	t9,35dc <hana_bmp+0x2114>
    35b4:	10533850 	beq	v0,s3,116f8 <extend_mask+0xc03c>
    35b8:	4dc4c996 	0x4dc4c996
    35bc:	3e5a510e 	0x3e5a510e
    35c0:	273e286e 	addiu	s8,t9,10350
    35c4:	394ebbcc 	xori	t6,t2,0xbbcc
    35c8:	c5a8390f 	lwc1	$f8,14607(t5)
    35cc:	1f35444f 	0x1f35444f
    35d0:	5a76242a 	0x5a76242a
    35d4:	477f740d 	c1	0x17f740d
    35d8:	1e5c9b1c 	0x1e5c9b1c
    35dc:	163b2318 	bne	s1,k1,c240 <extend_mask+0x6b84>
    35e0:	3c420700 	0x3c420700
    35e4:	7d4f2128 	0x7d4f2128
    35e8:	2a3f2019 	slti	ra,s1,8217
    35ec:	0b3b3f4f 	j	cecfd3c <extend_mask+0xceca680>
    35f0:	471388af 	c1	0x11388af
    35f4:	bc3effed 	0xbc3effed
    35f8:	850a050d 	lh	t2,1293(t0)
    35fc:	433b635a 	c0	0x13b635a
    3600:	ffaddc46 	0xffaddc46
    3604:	7141e043 	0x7141e043
    3608:	923c5d3c 	lbu	gp,23868(s1)
    360c:	26143653 	addiu	s4,s0,13907
    3610:	8e808395 	lw	zero,-31851(s4)
    3614:	8bb8be56 	lwl	t8,-16810(sp)
    3618:	625a0815 	0x625a0815
    361c:	448b85d0 	0x448b85d0
    3620:	aab6c7a7 	swl	s6,-14425(s5)
    3624:	8b242d2d 	lwl	a0,11565(t9)
    3628:	2758828b 	addiu	t8,k0,-32117
    362c:	2b246955 	slti	a0,t9,26965
    3630:	59911420 	0x59911420
    3634:	50461685 	0x50461685
    3638:	7d383a1b 	0x7d383a1b
    363c:	22badc84 	addi	k0,s5,-9084
    3640:	2229200e 	addi	t1,s1,8206
    3644:	71732836 	0x71732836
    3648:	531a3208 	0x531a3208
    364c:	4573843a 	0x4573843a
    3650:	4afa8c0a 	c2	0xfa8c0a
    3654:	321a135a 	andi	k0,s0,0x135a
    3658:	2a42f0e7 	slti	v0,s2,-3865
    365c:	5dcfef90 	0x5dcfef90
    3660:	9b3e198b 	lwr	s8,6539(t9)
    3664:	847f5e3b 	lh	ra,24123(v1)
    3668:	4053614b 	0x4053614b
    366c:	1f9b9fa8 	0x1f9b9fa8
    3670:	db6f1728 	0xdb6f1728
    3674:	2f242e2f 	sltiu	a0,t9,11823
    3678:	1229287b 	beq	s1,t1,d868 <extend_mask+0x81ac>
    367c:	a0b07b37 	sb	s0,31543(a1)
    3680:	2e1f172c 	sltiu	ra,s0,5932
    3684:	606e536c 	0x606e536c
    3688:	655f075d 	0x655f075d
    368c:	80112a07 	lb	s1,10759(zero)
    3690:	84888251 	lh	t0,-32175(a0)
    3694:	30509384 	andi	s0,v0,0x9384
    3698:	bc4f212e 	0xbc4f212e
    369c:	3c426bb6 	0x3c426bb6
    36a0:	7a249221 	0x7a249221
    36a4:	0a402d33 	j	900b4cc <extend_mask+0x9005e10>
    36a8:	1b660a1f 	0x1b660a1f
    36ac:	8b102238 	lwl	s0,8760(t8)
    36b0:	0b303a7d 	j	cc0e9f4 <extend_mask+0xcc09338>
    36b4:	ff2177da 	0xff2177da
    36b8:	bcdc6a0c 	0xbcdc6a0c
    36bc:	4164497a 	0x4164497a
    36c0:	49612c28 	0x49612c28
    36c4:	280a2c6c 	slti	t2,zero,11372
    36c8:	5c81e000 	0x5c81e000
    36cc:	a460131f 	sh	zero,4895(v1)
    36d0:	29252628 	slti	a1,t1,9768
    36d4:	24426bb0 	addiu	v0,v0,27568
    36d8:	8220171a 	lb	zero,5914(s1)
    36dc:	1423554a 	bne	at,v1,18c08 <extend_mask+0x1354c>
    36e0:	6c656120 	0x6c656120
    36e4:	24036f78 	addiu	v1,zero,28536
    36e8:	122098e5 	beqz	s1,fffe9a80 <extend_mask+0xfffe43c4>
    36ec:	a5bc9f78 	sh	gp,-24712(t5)
    36f0:	695aaa50 	0x695aaa50
    36f4:	211d433f 	addi	sp,t0,17215
    36f8:	414b4233 	0x414b4233
    36fc:	21381455 	addi	t8,t1,5205
    3700:	0014237d 	0x14237d
    3704:	55300116 	0x55300116
    3708:	28391838 	slti	t9,at,6200
    370c:	39082aa1 	xori	t0,t0,0x2aa1
    3710:	48000f95 	0x48000f95
    3714:	18466743 	0x18466743
    3718:	5c454aaa 	0x5c454aaa
    371c:	1c1c0b0b 	0x1c1c0b0b
    3720:	2c330a64 	sltiu	s3,at,2660
    3724:	9d3ac6ae 	0x9d3ac6ae
    3728:	571a212b 	0x571a212b
    372c:	1c1f1a19 	0x1c1f1a19
    3730:	377d7d34 	ori	sp,k1,0x7d34
    3734:	30282725 	andi	t0,at,0x2725
    3738:	4c4f6566 	0x4c4f6566
    373c:	971e1c2d 	lhu	s8,7213(t8)
    3740:	1c952f23 	0x1c952f23
    3744:	23ffcdbe 	addi	ra,ra,-12866
    3748:	aef26276 	sw	s2,25206(s7)
    374c:	94603b16 	lhu	zero,15126(v1)
    3750:	31175f0e 	andi	s7,t0,0x5f0e
    3754:	17190819 	bne	t8,t9,57bc <extend_mask+0x100>
    3758:	33001a00 	andi	zero,t8,0x1a00
    375c:	69926600 	0x69926600
    3760:	0e582a66 	jal	960a998 <extend_mask+0x96052dc>
    3764:	40101631 	0x40101631
    3768:	34351533 	ori	s5,at,0x1533
    376c:	8f133d58 	lw	s3,15704(t8)
    3770:	64423d5a 	0x64423d5a
    3774:	59022a1a 	0x59022a1a
    3778:	161b282f 	bne	s0,k1,d838 <extend_mask+0x817c>
    377c:	313c2c58 	andi	gp,t1,0x2c58
    3780:	798d7734 	0x798d7734
    3784:	1b241104 	0x1b241104
    3788:	13180721 	beq	t8,t8,5410 <izigzag_index+0x54>
    378c:	422d3554 	c0	0x2d3554
    3790:	56133146 	0x56133146
    3794:	6268b4ff 	0x6268b4ff
    3798:	4f223200 	c3	0x1223200
    379c:	1339793b 	beq	t9,t9,21c8c <extend_mask+0x1c5d0>
    37a0:	dacba57b 	0xdacba57b
    37a4:	fbaddf86 	0xfbaddf86
    37a8:	90763f16 	lbu	s6,16150(v1)
    37ac:	541140d0 	0x541140d0
    37b0:	b3460317 	0xb3460317
    37b4:	33b3a472 	andi	s3,sp,0xa472
    37b8:	0091d0be 	0x91d0be
    37bc:	a9282c24 	swl	t0,11300(t1)
    37c0:	2c25523c 	sltiu	a1,at,21052
    37c4:	060e52b2 	0x60e52b2
    37c8:	1d6c251e 	0x1d6c251e
    37cc:	705c3a12 	0x705c3a12
    37d0:	403f404f 	0x403f404f
    37d4:	534c4d48 	0x534c4d48
    37d8:	4221415d 	c0	0x21415d
    37dc:	99475d46 	lwr	a3,23878(t2)
    37e0:	3b32292c 	xori	s2,t9,0x292c
    37e4:	5a2e2921 	0x5a2e2921
    37e8:	2d4c4d27 	sltiu	t4,t2,19751
    37ec:	393f1c0d 	xori	ra,t1,0x1c0d
    37f0:	5398cc0a 	0x5398cc0a
    37f4:	69791d13 	0x69791d13
    37f8:	90d0d5e8 	lbu	s0,-10776(a2)
    37fc:	475768dd 	c1	0x15768dd
    3800:	c075485b 	lwc0	$21,18523(v1)
    3804:	641d3755 	0x641d3755
    3808:	0d7be9c4 	jal	5efa710 <extend_mask+0x5ef5054>
    380c:	9b0b9d82 	lwr	t3,-25214(t8)
    3810:	9da000d6 	0x9da000d6
    3814:	e5b0c169 	swc1	$f16,-16023(t5)
    3818:	2a332651 	slti	s3,s1,9809
    381c:	637e703a 	0x637e703a
    3820:	095d005d 	j	5740174 <extend_mask+0x573aab8>
    3824:	1d5c6644 	0x1d5c6644
    3828:	3c143c32 	lui	s4,0x3c32
    382c:	454f2f34 	0x454f2f34
    3830:	20194061 	addi	t9,zero,16481
    3834:	082e4973 	j	b925cc <extend_mask+0xb8cf10>
    3838:	c4826155 	lwc1	$f2,24917(a0)
    383c:	587d625a 	0x587d625a
    3840:	402d395d 	0x402d395d
    3844:	4b2e2c4a 	c2	0x12e2c4a
    3848:	0e066053 	jal	819814c <extend_mask+0x8192a90>
    384c:	900e92cf 	lbu	t6,-27953(zero)
    3850:	db8da5bc 	0xdb8da5bc
    3854:	c6e95575 	lwc1	$f9,21877(s7)
    3858:	c5c1de95 	lwc1	$f1,-8555(t6)
    385c:	77363933 	jalx	cd8e4cc <extend_mask+0xcd88e10>
    3860:	214d230a 	addi	t5,t2,8970
    3864:	97e9c4ba 	lhu	t1,-15174(ra)
    3868:	a947e53b 	swl	a3,-6853(t2)
    386c:	37b3a3df 	ori	s3,sp,0xa3df
    3870:	dbb31834 	0xdbb31834
    3874:	3246405a 	andi	a2,s2,0x405a
    3878:	6c3e2121 	0x6c3e2121
    387c:	1b3a1352 	0x1b3a1352
    3880:	b6b5ac1c 	0xb6b5ac1c
    3884:	281f201d 	slti	ra,zero,8221
    3888:	7c4e2932 	0x7c4e2932
    388c:	22140b50 	addi	s4,s0,2896
    3890:	a19ab8bc 	sb	k0,-18244(t4)
    3894:	835f7f52 	lb	ra,32594(k0)
    3898:	77453b12 	jalx	d14ec48 <extend_mask+0xd14958c>
    389c:	477b572c 	c1	0x17b572c
    38a0:	2c42060b 	sltiu	v0,v0,1547
    38a4:	132b1b20 	beq	t9,t3,a528 <extend_mask+0x4e6c>
    38a8:	1d80cadf 	bgtz	t4,ffff6428 <extend_mask+0xffff0d6c>
    38ac:	db9f8cd5 	0xdb9f8cd5
    38b0:	eceaa8d4 	swc3	$10,-22316(a3)
    38b4:	92533434 	lbu	s3,13364(s2)
    38b8:	17251a2e 	bne	t9,a1,a174 <extend_mask+0x4ab8>
    38bc:	3acad1c0 	xori	t2,s6,0xd1c0
    38c0:	e3bfe1ff 	swc0	$31,-7681(sp)
    38c4:	1d1b0935 	0x1d1b0935
    38c8:	b8ada403 	swr	t5,-23549(a1)
    38cc:	340a3e3e 	ori	t2,zero,0x3e3e
    38d0:	4f6f272f 	c3	0x16f272f
    38d4:	10135531 	beq	zero,s3,18d9c <extend_mask+0x136e0>
    38d8:	2174ffc7 	addi	s4,t3,-57
    38dc:	586bc1db 	0x586bc1db
    38e0:	6a63c090 	0x6a63c090
    38e4:	651d1514 	0x651d1514
    38e8:	312b65d5 	andi	t3,t1,0x65d5
    38ec:	bccfd164 	0xbccfd164
    38f0:	6370533b 	0x6370533b
    38f4:	24052c75 	addiu	a1,zero,11381
    38f8:	442a303a 	0x442a303a
    38fc:	0f062a72 	jal	c18a9c8 <extend_mask+0xc18530c>
    3900:	28411000 	slti	at,v0,4096
    3904:	9cc1eed3 	0x9cc1eed3
    3908:	d9d3f2c0 	0xd9d3f2c0
    390c:	8ac6a618 	lwl	a2,-23016(s6)
    3910:	40300737 	0x40300737
    3914:	270c73a0 	addiu	t4,t8,29600
    3918:	b5c3ba65 	0xb5c3ba65
    391c:	a0cf000f 	sb	t7,15(a2)
    3920:	006d80a4 	0x6d80a4
    3924:	ae07219a 	sw	a3,8602(s0)
    3928:	6053891e 	0x6053891e
    392c:	1371171f 	beq	k1,s1,95ac <extend_mask+0x3ef0>
    3930:	5650b0f6 	0x5650b0f6
    3934:	430c0049 	c0	0x10c0049
    3938:	b192f659 	0xb192f659
    393c:	dfd58a0f 	0xdfd58a0f
    3940:	3765344a 	ori	a1,k1,0x344a
    3944:	5338f3d4 	0x5338f3d4
    3948:	d5697699 	0xd5697699
    394c:	99898c77 	lwr	t1,-29577(t4)
    3950:	7d454a0a 	0x7d454a0a
    3954:	441d220d 	0x441d220d
    3958:	6757414a 	0x6757414a
    395c:	4d856fda 	0x4d856fda
    3960:	c392b9d7 	lwc0	$18,-17961(gp)
    3964:	d764947f 	0xd764947f
    3968:	db0d3f26 	0xdb0d3f26
    396c:	10103a14 	beq	zero,s0,121c0 <extend_mask+0xcb04>
    3970:	224d8fda 	addi	t5,s2,-28710
    3974:	d0aca6d7 	0xd0aca6d7
    3978:	cf1f0078 	lwc3	$31,120(t8)
    397c:	667ca73e 	0x667ca73e
    3980:	985f6792 	lwr	ra,26514(v0)
    3984:	9a0a8c9c 	lwr	t2,-29540(s0)
    3988:	854bb8ba 	lh	t3,-18246(t2)
    398c:	75051456 	jalx	4145158 <extend_mask+0x413fa9c>
    3990:	cb08d6a0 	lwc2	$8,-10592(t8)
    3994:	96cba2e8 	lhu	t3,-23832(s6)
    3998:	af0c3834 	sw	t4,14388(t8)
    399c:	489d96b6 	0x489d96b6
    39a0:	c3e4764a 	lwc0	$4,30282(ra)
    39a4:	bdca9951 	0xbdca9951
    39a8:	3a3e494a 	xori	s8,s1,0x494a
    39ac:	480d4734 	0x480d4734
    39b0:	0e0f292f 	jal	83ca4bc <extend_mask+0x83c4e00>
    39b4:	568ac5bc 	0x568ac5bc
    39b8:	af91d869 	sw	s1,-10135(gp)
    39bc:	9c90c3b2 	0x9c90c3b2
    39c0:	5c629c11 	0x5c629c11
    39c4:	3722140a 	ori	v0,t9,0x140a
    39c8:	081e2929 	j	78a4a4 <extend_mask+0x784de8>
    39cc:	29607b93 	slti	zero,t3,31635
    39d0:	d2bde1dc 	0xd2bde1dc
    39d4:	0032cbb5 	0x32cbb5
    39d8:	c1df5962 	lwc0	$31,22882(t6)
    39dc:	8639aebe 	lh	t9,-20802(s1)
    39e0:	a2a93e2c 	sb	t1,15916(s5)
    39e4:	5a311817 	0x5a311817
    39e8:	57f656a5 	0x57f656a5
    39ec:	c0ead8bf 	lwc0	$10,-10049(a3)
    39f0:	c1e85820 	lwc0	$8,22560(t7)
    39f4:	3b4485b8 	xori	a0,k0,0x85b8
    39f8:	aab7e9fa 	swl	s7,-5638(s5)
    39fc:	720db2c3 	0x720db2c3
    3a00:	ada56c25 	sw	a1,27685(t5)
    3a04:	0457471c 	0x457471c
    3a08:	33480d07 	andi	t0,k0,0xd07
    3a0c:	65308c60 	0x65308c60
    3a10:	b1d1c2c3 	0xb1d1c2c3
    3a14:	fb2b5ee1 	0xfb2b5ee1
    3a18:	a3d7b71f 	sb	s7,-18657(s8)
    3a1c:	13231b20 	beq	t9,v1,a6a0 <extend_mask+0x4fe4>
    3a20:	12103c13 	beq	s0,s0,12a70 <extend_mask+0xd3b4>
    3a24:	302a7d5a 	andi	t2,at,0x7d5a
    3a28:	946fc6ba 	lhu	t7,-14662(v1)
    3a2c:	a2af4500 	sb	t7,17664(s5)
    3a30:	f9c9d6ef 	0xf9c9d6ef
    3a34:	a8918f4b 	swl	s1,-28853(a0)
    3a38:	1edbd0bd 	0x1edbd0bd
    3a3c:	0c40316b 	jal	100c5ac <extend_mask+0x1006ef0>
    3a40:	643b3ae3 	0x643b3ae3
    3a44:	7c31847e 	0x7c31847e
    3a48:	aed60074 	sw	s6,116(s6)
    3a4c:	710e748a 	0x710e748a
    3a50:	585e747d 	0x585e747d
    3a54:	5872ff84 	0x5872ff84
    3a58:	d0d7a000 	0xd0d7a000
    3a5c:	09001c52 	j	4007148 <extend_mask+0x4001a8c>
    3a60:	4816283e 	0x4816283e
    3a64:	09086a5b 	j	421a96c <extend_mask+0x42152b0>
    3a68:	845f47dd 	lh	ra,18397(v0)
    3a6c:	dabbc9e6 	0xdabbc9e6
    3a70:	ebb1dec0 	swc2	$17,-8512(sp)
    3a74:	85141518 	lh	s4,5400(t0)
    3a78:	1f0c1700 	0x1f0c1700
    3a7c:	5b212b3a 	0x5b212b3a
    3a80:	bf5ea53a 	0xbf5ea53a
    3a84:	acaa8900 	sw	t2,-30464(a1)
    3a88:	84abbec7 	lh	t3,-16697(a1)
    3a8c:	468efcc2 	c1	0x8efcc2
    3a90:	83b4ee9c 	lb	s4,-4452(sp)
    3a94:	d7cf0357 	0xd7cf0357
    3a98:	7054129f 	0x7054129f
    3a9c:	dba29a63 	0xdba29a63
    3aa0:	50bc22c8 	0x50bc22c8
    3aa4:	00cbc86a 	0xcbc86a
    3aa8:	528d613f 	0x528d613f
    3aac:	3f680e14 	0x3f680e14
    3ab0:	ddbdde9c 	0xddbdde9c
    3ab4:	ec240002 	swc3	$4,2(at)
    3ab8:	195b5517 	0x195b5517
    3abc:	1d2b307c 	0x1d2b307c
    3ac0:	458d7563 	0x458d7563
    3ac4:	5aba1398 	0x5aba1398
    3ac8:	dfc9aebc 	0xdfc9aebc
    3acc:	a3d20014 	sb	s2,20(s8)
    3ad0:	20122127 	addi	s2,zero,8487
    3ad4:	25160c25 	addiu	s6,t0,3109
    3ad8:	2298b1c9 	addi	t8,s4,-20023
    3adc:	772e8680 	jalx	cba1a00 <extend_mask+0xcb9c344>
    3ae0:	97b5b5c2 	lhu	s5,-19006(sp)
    3ae4:	e8a84806 	swc2	$8,18438(a1)
    3ae8:	acc26c7d 	sw	v0,27773(a2)
    3aec:	8eb3ace1 	lw	s3,-21279(s5)
    3af0:	82293903 	lb	t1,14595(s1)
    3af4:	9f8cbbc9 	0x9f8cbbc9
    3af8:	6eaf573e 	0x6eaf573e
    3afc:	37cfe8a8 	ori	t7,s8,0xe8a8
    3b00:	a06e3237 	sb	t6,12855(v1)
    3b04:	5a6a8c41 	0x5a6a8c41
    3b08:	1364cecc 	beq	k1,a0,ffff763c <extend_mask+0xffff1f80>
    3b0c:	b85eadfe 	swr	s8,-20994(v0)
    3b10:	3a271951 	xori	a3,s1,0x1951
    3b14:	3823212c 	xori	v1,at,0x212c
    3b18:	7a787474 	0x7a787474
    3b1c:	605d164f 	0x605d164f
    3b20:	4797cae7 	c1	0x197cae7
    3b24:	c7dc87d1 	lwc1	$f28,-30767(s8)
    3b28:	3a00142b 	xori	zero,s0,0x142b
    3b2c:	3938321c 	xori	t8,t1,0x321c
    3b30:	29261f31 	slti	a2,t1,7985
    3b34:	4f113f51 	c3	0x1113f51
    3b38:	5f903a8e 	0x5f903a8e
    3b3c:	a4c0afd3 	sh	zero,-20525(a2)
    3b40:	5fc8cfcb 	0x5fc8cfcb
    3b44:	8782a06b 	lh	v0,-24469(gp)
    3b48:	2ac6f345 	slti	a2,s6,-3259
    3b4c:	062f507d 	0x62f507d
    3b50:	f3a23e05 	0xf3a23e05
    3b54:	1f0447ae 	0x1f0447ae
    3b58:	9eb9a165 	0x9eb9a165
    3b5c:	6d747489 	0x6d747489
    3b60:	58156412 	0x58156412
    3b64:	89f4461f 	lwl	s4,17951(t7)
    3b68:	4cd47979 	0x4cd47979
    3b6c:	5936262c 	0x5936262c
    3b70:	311e787b 	andi	s8,t0,0x787b
    3b74:	38252d61 	xori	a1,at,0x2d61
    3b78:	43221419 	c0	0x1221419
    3b7c:	d7c54b5a 	0xd7c54b5a
    3b80:	c58d711d 	lwc1	$f13,28957(t4)
    3b84:	2b1e1024 	slti	s8,t8,4132
    3b88:	0921101a 	j	4844068 <extend_mask+0x483e9ac>
    3b8c:	25141532 	addiu	s4,t0,5426
    3b90:	4229091d 	c0	0x29091d
    3b94:	6c6db6a6 	0x6c6db6a6
    3b98:	9f96ecaa 	0x9f96ecaa
    3b9c:	ab8e7367 	swl	t6,29543(gp)
    3ba0:	1b2b2423 	0x1b2b2423
    3ba4:	d4780839 	0xd4780839
    3ba8:	4a24fa08 	c2	0x24fa08
    3bac:	05110b1b 	bgezal	t0,681c <extend_mask+0x1160>
    3bb0:	2d969bd9 	sltiu	s6,t4,-25639
    3bb4:	50636d8a 	0x50636d8a
    3bb8:	ab540742 	swl	s4,1858(k0)
    3bbc:	1b314671 	0x1b314671
    3bc0:	27272774 	addiu	a3,t9,10100
    3bc4:	dd434637 	0xdd434637
    3bc8:	4940383c 	0x4940383c
    3bcc:	78773f1d 	0x78773f1d
    3bd0:	115f6f00 	beq	t2,ra,1f7d4 <extend_mask+0x1a118>
    3bd4:	1a0f1ea8 	0x1a0f1ea8
    3bd8:	2e6132bc 	sltiu	at,s3,12988
    3bdc:	795c0b14 	0x795c0b14
    3be0:	1a18150d 	0x1a18150d
    3be4:	1307361a 	beq	t8,a3,11450 <extend_mask+0xbd94>
    3be8:	20303330 	addi	s0,at,13104
    3bec:	18390312 	0x18390312
    3bf0:	ffecb6cb 	0xffecb6cb
    3bf4:	92e9ab95 	lbu	t1,-21611(s7)
    3bf8:	560b02e7 	0x560b02e7
    3bfc:	c800b400 	lwc2	$0,-19456(zero)
    3c00:	293f3b1b 	slti	ra,t1,15131
    3c04:	07222903 	0x7222903
    3c08:	123b2374 	beq	s1,k1,c9dc <extend_mask+0x7320>
    3c0c:	80bf2d50 	lb	ra,11600(a1)
    3c10:	69ac9220 	0x69ac9220
    3c14:	874b3035 	lh	t3,12341(k0)
    3c18:	4a232241 	c2	0x232241
    3c1c:	3d1b5f12 	0x3d1b5f12
    3c20:	3e444135 	0x3e444135
    3c24:	3a3e6899 	xori	s8,s1,0x6899
    3c28:	42040904 	c0	0x40904
    3c2c:	5d3a050e 	0x5d3a050e
    3c30:	49745220 	0x49745220
    3c34:	c9888b67 	lwc2	$8,-29849(t4)
    3c38:	0513390d 	0x513390d
    3c3c:	13160b10 	beq	t8,s6,6880 <extend_mask+0x11c4>
    3c40:	2f130f3d 	sltiu	s3,t8,3901
    3c44:	56051044 	0x56051044
    3c48:	0d3af1de 	jal	4ebc778 <extend_mask+0x4eb70bc>
    3c4c:	fdb768fa 	0xfdb768fa
    3c50:	cec3800e 	lwc3	$3,-32754(s6)
    3c54:	a09aaf0f 	sb	k0,-20721(a0)
    3c58:	47222551 	c1	0x1222551
    3c5c:	1d371634 	0x1d371634
    3c60:	080c1709 	j	305c24 <extend_mask+0x300568>
    3c64:	1e434f5b 	0x1e434f5b
    3c68:	2d3f9288 	sltiu	ra,t1,-28024
    3c6c:	08737a21 	j	1cde884 <extend_mask+0x1cd91c8>
    3c70:	392c2d2c 	xori	t4,t1,0x2d2c
    3c74:	0c182776 	jal	609dd8 <extend_mask+0x60471c>
    3c78:	05963d34 	0x5963d34
    3c7c:	2a2c2237 	slti	t4,s1,8759
    3c80:	9598101c 	lhu	t8,4124(t4)
    3c84:	0d03042a 	jal	40c10a8 <extend_mask+0x40bb9ec>
    3c88:	061a425c 	0x61a425c
    3c8c:	6989ddc2 	0x6989ddc2
    3c90:	637b5a05 	0x637b5a05
    3c94:	1f15030a 	0x1f15030a
    3c98:	180c1516 	0x180c1516
    3c9c:	21460002 	addi	a2,t2,2
    3ca0:	2c091111 	sltiu	t1,zero,4369
    3ca4:	55b3520c 	0x55b3520c
    3ca8:	145dbcb9 	bne	v0,sp,ffff2f90 <extend_mask+0xfffed8d4>
    3cac:	531aae82 	0x531aae82
    3cb0:	d5ed56ba 	0xd5ed56ba
    3cb4:	84566fe1 	lh	s6,28641(v0)
    3cb8:	66070b0e 	0x66070b0e
    3cbc:	0f3a591b 	jal	ce9646c <extend_mask+0xce90db0>
    3cc0:	3f9b2b63 	0x3f9b2b63
    3cc4:	62116a4e 	0x62116a4e
    3cc8:	303e311d 	andi	s8,at,0x311d
    3ccc:	1738daaf 	bne	t9,t8,ffffa78c <extend_mask+0xffff50d0>
    3cd0:	b82f5e20 	swr	t7,24096(at)
    3cd4:	292c2a37 	slti	t4,t1,10807
    3cd8:	2e229896 	sltiu	v0,s1,-26474
    3cdc:	190d1510 	0x190d1510
    3ce0:	0f060a1b 	jal	c18286c <extend_mask+0xc17d1b0>
    3ce4:	4f525321 	c3	0x1525321
    3ce8:	629b736a 	0x629b736a
    3cec:	201c1a11 	addi	gp,zero,6673
    3cf0:	2404110b 	addiu	a0,zero,4363
    3cf4:	0f7ee26f 	jal	dfb89bc <extend_mask+0xdfb3300>
    3cf8:	bc171d35 	0xbc171d35
    3cfc:	281d1d58 	slti	sp,zero,7512
    3d00:	1ed63801 	0x1ed63801
    3d04:	0091b6a9 	0x91b6a9
    3d08:	aaaaad4e 	swl	t2,-21170(s5)
    3d0c:	5040d47b 	0x5040d47b
    3d10:	3d93dd15 	0x3d93dd15
    3d14:	0900547b 	j	40151ec <extend_mask+0x400fb30>
    3d18:	2831573b 	slti	s1,at,22331
    3d1c:	3e411f3a 	0x3e411f3a
    3d20:	6d57201b 	0x6d57201b
    3d24:	1b23277a 	0x1b23277a
    3d28:	51300f33 	0x51300f33
    3d2c:	22273429 	addi	a3,s1,13353
    3d30:	2e272c33 	sltiu	a3,s1,11315
    3d34:	90962220 	lbu	s6,8736(a0)
    3d38:	0a030b0b 	j	80c2c2c <extend_mask+0x80bd570>
    3d3c:	012e5148 	0x12e5148
    3d40:	693e4605 	0x693e4605
    3d44:	24847707 	addiu	a0,a0,30471
    3d48:	20090905 	addi	t1,zero,2309
    3d4c:	160629c9 	bne	s0,a2,e474 <extend_mask+0x8db8>
    3d50:	38ddfdde 	xori	sp,a2,0xfdde
    3d54:	030e1213 	0x30e1213
    3d58:	572e16b2 	0x572e16b2
    3d5c:	f7270a55 	0xf7270a55
    3d60:	d395b1ce 	0xd395b1ce
    3d64:	a29e8bce 	sb	s8,-29746(s4)
    3d68:	d14523c5 	0xd14523c5
    3d6c:	a1b8d4b0 	sb	t8,-11088(t5)
    3d70:	062f1f21 	0x62f1f21
    3d74:	3318291b 	andi	t8,t8,0x291b
    3d78:	3e4b3f3b 	0x3e4b3f3b
    3d7c:	5751503c 	0x5751503c
    3d80:	3d272822 	0x3d272822
    3d84:	231e161a 	addi	s8,t8,5658
    3d88:	21163027 	addi	s6,t0,12327
    3d8c:	19223344 	0x19223344
    3d90:	0a0a1406 	j	8285018 <extend_mask+0x827f95c>
    3d94:	0609030a 	0x609030a
    3d98:	3b34b836 	xori	s4,t9,0xb836
    3d9c:	473b8e57 	c1	0x13b8e57
    3da0:	19090c1d 	0x19090c1d
    3da4:	2b3d0d01 	slti	sp,t9,3329
    3da8:	46b9d176 	c1	0xb9d176
    3dac:	ecf5fa01 	swc3	$21,-1535(a3)
    3db0:	02533c1c 	0x2533c1c
    3db4:	1131a800 	beq	t1,s1,fffeddb8 <extend_mask+0xfffe86fc>
    3db8:	06846c72 	0x6846c72
    3dbc:	49dbc3cb 	0x49dbc3cb
    3dc0:	b2ccd58c 	0xb2ccd58c
    3dc4:	00d3afe8 	0xd3afe8
    3dc8:	d6f53f26 	0xd6f53f26
    3dcc:	19261912 	0x19261912
    3dd0:	1444441d 	bne	v0,a0,14e48 <extend_mask+0xf78c>
    3dd4:	211e2236 	addi	s8,t0,8758
    3dd8:	4a6a5761 	c2	0x6a5761
    3ddc:	29181a25 	slti	t8,t0,6693
    3de0:	11565a41 	beq	t2,s6,1a6e8 <extend_mask+0x1502c>
    3de4:	1e311e28 	0x1e311e28
    3de8:	4648620d 	c1	0x48620d
    3dec:	13121208 	beq	t8,s2,8610 <extend_mask+0x2f54>
    3df0:	09070308 	j	41c0c20 <extend_mask+0x41bb564>
    3df4:	8c6c1a09 	lw	t4,6665(v1)
    3df8:	03000d11 	0x3000d11
    3dfc:	11256641 	beq	t1,a1,1d704 <extend_mask+0x18048>
    3e00:	0a1f2528 	j	87c94a0 <extend_mask+0x87c3de4>
    3e04:	ffffd7a7 	0xffffd7a7
    3e08:	f2f8b2d1 	0xf2f8b2d1
    3e0c:	ad0947b1 	sw	t1,18353(t0)
    3e10:	00089a03 	sra	s3,t0,0x8
    3e14:	c0f137e3 	lwc0	$17,14307(a3)
    3e18:	bf98d8e3 	0xbf98d8e3
    3e1c:	b9c753e7 	swr	a3,21479(t6)
    3e20:	cfa9e9d8 	lwc3	$9,-5672(sp)
    3e24:	8c062f1f 	lw	a2,12063(zero)
    3e28:	072b3e40 	0x72b3e40
    3e2c:	37231a18 	ori	v1,t9,0x1a18
    3e30:	18223416 	0x18223416
    3e34:	2c2e4c52 	sltiu	t6,at,19538
    3e38:	27205266 	addiu	zero,t9,21094
    3e3c:	6b565b32 	0x6b565b32
    3e40:	24254849 	addiu	a1,at,18505
    3e44:	ecdeb496 	swc3	$30,-19306(a2)
    3e48:	a995bbd4 	swl	s5,-17452(t4)
    3e4c:	dcaab3bd 	0xdcaab3bd
    3e50:	bef1e2c9 	0xbef1e2c9
    3e54:	c1bdd8e7 	lwc0	$29,-10009(t5)
    3e58:	9e930c00 	0x9e930c00
    3e5c:	1f3e4349 	0x1f3e4349
    3e60:	0d220900 	jal	4882400 <extend_mask+0x487cd44>
    3e64:	00031830 	0x31830
    3e68:	1c93d39f 	0x1c93d39f
    3e6c:	a9706579 	swl	s0,25977(t3)
    3e70:	5e4b2905 	0x5e4b2905
    3e74:	203f3d25 	addi	ra,at,15653
    3e78:	1f131919 	0x1f131919
    3e7c:	04171b07 	0x4171b07
    3e80:	050c1527 	0x50c1527
    3e84:	2e321b0a 	sltiu	s2,s1,6922
    3e88:	00151400 	sll	v0,s5,0x10
    3e8c:	2b271b00 	slti	a3,t9,6912
    3e90:	00001000 	sll	v0,zero,0x0
    3e94:	09030001 	j	40c0004 <extend_mask+0x40ba948>
    3e98:	0d090f1c 	jal	4243c70 <extend_mask+0x423e5b4>
    3e9c:	160fb9cc 	bne	s0,t7,ffff25d0 <extend_mask+0xfffecf14>
    3ea0:	6b68b98e 	0x6b68b98e
    3ea4:	affebc63 	sw	s8,-17309(ra)
    3ea8:	97d5deb2 	lhu	s5,-8526(s8)
    3eac:	a69adabc 	sh	k0,-9540(s4)
    3eb0:	b3f4ddf5 	0xb3f4ddf5
    3eb4:	bc61443e 	0xbc61443e
    3eb8:	392c3b57 	xori	t4,t1,0x3b57
    3ebc:	321e0c00 	andi	s8,s0,0xc00
    3ec0:	17302e99 	bne	t9,s0,f928 <extend_mask+0xa26c>
    3ec4:	cb99aeac 	lwc2	$25,-20820(gp)
    3ec8:	b6dbea99 	0xb6dbea99
    3ecc:	42303d42 	c0	0x303d42
    3ed0:	310f1533 	andi	t7,t0,0x1533
    3ed4:	271c0820 	addiu	gp,t8,2080
    3ed8:	1500000a 	bnez	t0,3f04 <hana_bmp+0x2a3c>
    3edc:	19222a34 	0x19222a34
    3ee0:	1f0e0002 	0x1f0e0002
    3ee4:	140e2e35 	bne	zero,t6,f7bc <extend_mask+0xa100>
    3ee8:	2a000000 	slti	zero,s0,0
    3eec:	0c070502 	jal	1c1408 <extend_mask+0x1bbd4c>
    3ef0:	050b120d 	0x50b120d
    3ef4:	1f3e1116 	0x1f3e1116
    3ef8:	a87a0fc9 	swl	k0,4041(v1)
    3efc:	f7dbd4d7 	0xf7dbd4d7
    3f00:	a32e15a2 	sb	t6,5538(t9)
    3f04:	a4badf80 	sh	k0,-8320(a1)
    3f08:	b6f8e7f0 	0xb6f8e7f0
    3f0c:	dec7eccd 	0xdec7eccd
    3f10:	9c58786b 	0x9c58786b
    3f14:	4249574d 	c0	0x49574d
    3f18:	2015202e 	addi	s5,zero,8238
    3f1c:	38556258 	xori	s5,v0,0x6258
    3f20:	a6b2adbe 	sh	s2,-21058(s5)
    3f24:	ce93372a 	lwc3	$19,14122(s4)
    3f28:	3d34060c 	0x3d34060c
    3f2c:	2a3b3c41 	slti	k1,s1,15425
    3f30:	0c0d0600 	jal	341800 <extend_mask+0x33c144>
    3f34:	00112033 	0x112033
    3f38:	2e261d00 	sltiu	a2,s1,7424
    3f3c:	0000000f 	0xf
    3f40:	53432c00 	0x53432c00
    3f44:	00000001 	0x1
    3f48:	0000060d 	break	0x0,0x18
    3f4c:	120e223f 	beq	s0,t6,c84c <extend_mask+0x7190>
    3f50:	1316721f 	beq	t8,s6,207d0 <extend_mask+0x1b114>
    3f54:	39f9edbd 	xori	t9,t7,0xedbd
    3f58:	e7e04012 	swc1	$f0,16402(ra)
    3f5c:	0836276b 	j	d89dac <extend_mask+0xd846f0>
    3f60:	a65536d9 	sh	s5,14041(s2)
    3f64:	d9e4dbcd 	0xd9e4dbcd
    3f68:	bba47754 	swr	a0,30548(sp)
    3f6c:	92d1a853 	lbu	s1,-22445(s6)
    3f70:	5c621c1d 	0x5c621c1d
    3f74:	2a2c371c 	slti	t4,s1,14108
    3f78:	1c4c9ca6 	0x1c4c9ca6
    3f7c:	938a8e48 	lbu	t2,-29112(gp)
    3f80:	41304305 	0x41304305
    3f84:	00081432 	0x81432
    3f88:	454b0a00 	0x454b0a00
    3f8c:	0000000f 	0xf
    3f90:	23918e27 	addi	s1,gp,-29145
    3f94:	13000000 	beqz	t8,3f98 <hana_bmp+0x2ad0>
    3f98:	0000695f 	0x695f
    3f9c:	40000000 	mfc0	zero,c0_index
    3fa0:	00000000 	sll	zero,zero,0x0
    3fa4:	00000506 	0x506
    3fa8:	16261a17 	bne	s1,a2,a808 <extend_mask+0x514c>
    3fac:	92ae94c2 	lbu	t6,-27454(s5)
    3fb0:	8998dcd3 	lwl	t8,-9005(t4)
    3fb4:	76873734 	jalx	a1cdcd0 <extend_mask+0xa1c8614>
    3fb8:	2c72678f 	sltiu	s2,v1,26511
    3fbc:	774c68ff 	jalx	d31a3fc <extend_mask+0xd314d40>
    3fc0:	f2ffbfb6 	0xf2ffbfb6
    3fc4:	baaa4dbe 	swr	t2,19902(s5)
    3fc8:	dcdfad6d 	0xdcdfad6d
    3fcc:	15284d2b 	bne	t1,t0,1747c <extend_mask+0x11dc0>
    3fd0:	2a363c75 	slti	s6,s1,15477
    3fd4:	8abab270 	lwl	k0,-19856(s5)
    3fd8:	5f73726b 	0x5f73726b
    3fdc:	1f0d1d1d 	0x1f0d1d1d
    3fe0:	1a242c2a 	0x1a242c2a
    3fe4:	02040124 	0x2040124
    3fe8:	2f005db4 	sltiu	zero,t8,23988
    3fec:	c97c0c0b 	lwc2	$28,3083(t3)
    3ff0:	00000000 	sll	zero,zero,0x0
    3ff4:	4f685603 	c3	0x1685603
	...
    4000:	00000913 	0x913
    4004:	3229a2e2 	andi	t1,s1,0xa2e2
    4008:	e7894381 	swc1	$f9,17281(gp)
    400c:	ebcca0d5 	swc2	$12,-24363(s8)
    4010:	bc6badbe 	0xbc6badbe
    4014:	a2abe3ff 	sb	t3,-7169(s5)
    4018:	bbf9eae0 	swr	t9,-5408(ra)
    401c:	4ba9cce8 	c2	0x1a9cce8
    4020:	926772a8 	lbu	a3,29352(s3)
    4024:	9e9a3935 	0x9e9a3935
    4028:	542c253e 	0x542c253e
    402c:	40a49de2 	0x40a49de2
    4030:	ee7a596b 	swc3	$26,22891(s3)
    4034:	7868646d 	0x7868646d
    4038:	491d1b0c 	0x491d1b0c
    403c:	1a41495f 	0x1a41495f
    4040:	253b8050 	addiu	k1,t1,-32688
    4044:	67bcc17f 	0x67bcc17f
    4048:	00171a05 	0x171a05
    404c:	00004143 	sra	t0,zero,0x5
    4050:	31030000 	andi	v1,t0,0x0
    4054:	00000700 	sll	zero,zero,0x1c
    4058:	00000000 	sll	zero,zero,0x0
    405c:	0004282b 	sltu	a1,zero,a0
    4060:	6588abce 	0x6588abce
    4064:	8aa2c8b3 	lwl	v0,-14157(s5)
    4068:	8ebf899c 	lw	ra,-30308(s5)
    406c:	cfb4c3b6 	lwc3	$20,-15434(sp)
    4070:	60abe6aa 	0x60abe6aa
    4074:	b2cd806b 	0xb2cd806b
    4078:	accea58a 	sw	t6,-23158(a2)
    407c:	503b7496 	0x503b7496
    4080:	553d3939 	0x553d3939
    4084:	31322986 	andi	s2,t1,0x2986
    4088:	a8e1f78b 	swl	at,-2165(a3)
    408c:	4a595a68 	c2	0x595a68
    4090:	4e506555 	c3	0x506555
    4094:	5255424d 	0x5255424d
    4098:	3a513c4b 	xori	s1,s2,0x3c4b
    409c:	c0cdb9d2 	lwc0	$13,-17966(a2)
    40a0:	cc8a3b5b 	lwc3	$10,15195(a0)
    40a4:	611e000f 	0x611e000f
    40a8:	563c150b 	0x563c150b
    40ac:	20110717 	addi	s1,zero,1815
    40b0:	10000004 	beqz	zero,40c4 <hana_bmp+0x2bfc>
    40b4:	0a030300 	j	80c0c00 <extend_mask+0x80bb544>
    40b8:	2b2d0f77 	slti	t5,t9,3959
    40bc:	c5afc2b6 	lwc1	$f15,-15690(t5)
    40c0:	a9bf94d1 	swl	ra,-27439(t5)
    40c4:	7a74c2be 	0x7a74c2be
    40c8:	b8652abb 	swr	a1,10939(v1)
    40cc:	c3d0b1ba 	lwc0	$16,-20038(s8)
    40d0:	dab07f8f 	0xdab07f8f
    40d4:	97b8c692 	lhu	t8,-14702(sp)
    40d8:	90dea452 	lbu	s8,-23470(a2)
    40dc:	41bba644 	0x41bba644
    40e0:	1f6abacd 	0x1f6abacd
    40e4:	d7cfb267 	0xd7cfb267
    40e8:	50734f6d 	0x50734f6d
    40ec:	7b573451 	0x7b573451
    40f0:	5540594c 	0x5540594c
    40f4:	541f64b9 	0x541f64b9
    40f8:	cbdde8d3 	lwc2	$29,-5933(s8)
    40fc:	9765572f 	lhu	a1,22319(k1)
    4100:	12236765 	beq	s1,v1,1de98 <extend_mask+0x187dc>
    4104:	3b152c39 	xori	s5,t8,0x2c39
    4108:	2e251612 	sltiu	a1,s1,5650
    410c:	1a19170f 	0x1a19170f
    4110:	0900302e 	j	400c0b8 <extend_mask+0x40069fc>
    4114:	4358b8a2 	c0	0x158b8a2
    4118:	c2e8eacf 	lwc0	$8,-5425(s7)
    411c:	fbdc4c3e 	0xfbdc4c3e
    4120:	9ceefccc 	0x9ceefccc
    4124:	90c4d0e6 	lbu	a0,-12058(a2)
    4128:	80515363 	lb	s1,21347(v0)
    412c:	9bb0d7c1 	lwr	s0,-10303(sp)
    4130:	a0b9a2b6 	sb	t9,-23882(a1)
    4134:	c02a40bb 	lwc0	$10,16571(at)
    4138:	94567824 	lhu	s6,30756(v0)
    413c:	b1a4b4ec 	0xb1a4b4ec
    4140:	d8c68509 	0xd8c68509
    4144:	00224426 	0x224426
    4148:	21283843 	addi	t0,t1,14403
    414c:	0c110a00 	jal	442800 <extend_mask+0x43d144>
    4150:	216d8cc0 	addi	t5,t3,-29504
    4154:	dad2b78c 	0xdad2b78c
    4158:	715d381d 	0x715d381d
    415c:	53595c50 	0x53595c50
    4160:	4649512a 	c1	0x49512a
    4164:	2b242625 	slti	a0,t9,9765
    4168:	25241917 	addiu	a0,t1,6423
    416c:	07088416 	0x7088416
    4170:	34507799 	ori	s0,v0,0x7799
    4174:	c1d0c4dd 	lwc0	$16,-15139(t6)
    4178:	4d8178cb 	0x4d8178cb
    417c:	c0deccd9 	lwc0	$30,-13095(a2)
    4180:	b6d489fb 	0xb6d489fb
    4184:	916b8abd 	lbu	t3,-30019(t3)
    4188:	c1b2bfc6 	lwc0	$18,-16442(t5)
    418c:	b6b0aa27 	0xb6b0aa27
    4190:	2c8c5461 	sltiu	t4,a0,21601
    4194:	8a4371a4 	lwl	v1,29092(s2)
    4198:	bad2f1ec 	swr	s2,-3604(s6)
    419c:	cc330018 	lwc3	$19,24(at)
    41a0:	4c54390f 	0x4c54390f
    41a4:	473e1d24 	c1	0x13e1d24
    41a8:	09000037 	j	40000dc <extend_mask+0x3ffaa20>
    41ac:	6a9ab7cb 	0x6a9ab7cb
    41b0:	b88c584d 	swr	t4,22605(a0)
    41b4:	271b314a 	addiu	k1,t8,12618
    41b8:	5b514243 	0x5b514243
    41bc:	513a2929 	0x513a2929
    41c0:	23191e18 	addi	t9,t8,7704
    41c4:	101d080a 	beq	zero,sp,61f0 <extend_mask+0xb34>
    41c8:	7b3a1442 	0x7b3a1442
    41cc:	625b75c5 	0x625b75c5
    41d0:	c7c028a2 	lwc1	$f0,10402(s8)
    41d4:	f9cedebd 	0xf9cedebd
    41d8:	d1d68897 	0xd1d68897
    41dc:	7563db8f 	jalx	58f6e3c <extend_mask+0x58f1780>
    41e0:	82825f5e 	lb	v0,24414(s4)
    41e4:	5981dcc3 	0x5981dcc3
    41e8:	901f3db8 	lbu	ra,15800(zero)
    41ec:	867f4f59 	lh	ra,20313(s3)
    41f0:	003eabc4 	0x3eabc4
    41f4:	d5c1a472 	0xd5c1a472
    41f8:	0f578ba3 	jal	d5e2e8c <extend_mask+0xd5dd7d0>
    41fc:	a7423b67 	sh	v0,15207(k0)
    4200:	2e270000 	sltiu	a3,s1,0
    4204:	000d54a8 	0xd54a8
    4208:	cfb2692d 	lwc3	$18,26925(sp)
    420c:	0f000a07 	jal	c00281c <extend_mask+0xbffd160>
    4210:	2d2d343d 	sltiu	t5,t1,13373
    4214:	41414739 	0x41414739
    4218:	1f0b110c 	0x1f0b110c
    421c:	03061619 	0x3061619
    4220:	0c10604e 	jal	418138 <extend_mask+0x412a7c>
    4224:	1d366540 	0x1d366540
    4228:	80d3937a 	lb	s3,-27782(a2)
    422c:	35e0c8c1 	ori	zero,t7,0xc8c1
    4230:	d7cb8cc4 	0xd7cb8cc4
    4234:	b6a49a69 	0xb6a49a69
    4238:	c9a77358 	lwc2	$7,29528(t5)
    423c:	48492a63 	0x48492a63
    4240:	e2e8af1d 	swc0	$8,-20707(s7)
    4244:	6cc4bcc2 	0x6cc4bcc2
    4248:	9e996973 	0x9e996973
    424c:	b1bab6c6 	0xb1bab6c6
    4250:	af97a26d 	sw	s7,-23955(gp)
    4254:	48727a75 	0x48727a75
    4258:	4e702015 	c3	0x702015
    425c:	2900000d 	slti	zero,t0,13
    4260:	384a7b69 	xori	t2,v0,0x7b69
    4264:	361f1d25 	ori	ra,s0,0x1d25
    4268:	0f002d2b 	jal	c00b4ac <extend_mask+0xc005df0>
    426c:	24293b49 	addiu	t1,at,15177
    4270:	401b0b01 	0x401b0b01
    4274:	04020703 	0x4020703
    4278:	0b0d100e 	j	c344038 <extend_mask+0xc33e97c>
    427c:	695d3337 	0x695d3337
    4280:	3a034a9e 	xori	v1,s0,0x4a9e
    4284:	21505fd2 	addi	s0,t2,24530
    4288:	830093be 	lb	zero,-27714(t8)
    428c:	aeb9ddd1 	sw	t9,-8751(s5)
    4290:	e5ffdd9b 	swc1	$f31,-8805(t7)
    4294:	65782d59 	0x65782d59
    4298:	5094d7d5 	0x5094d7d5
    429c:	a32f86e9 	sb	t7,-30999(t9)
    42a0:	c8e8f2f5 	lwc2	$8,-3339(a3)
    42a4:	a082a3b4 	sb	v0,-23628(a0)
    42a8:	aadedfbd 	swl	s8,-8259(s6)
    42ac:	8ea37280 	lw	v1,29312(s5)
    42b0:	928d614a 	lbu	t5,24906(s4)
    42b4:	1c41381e 	0x1c41381e
    42b8:	002d4025 	or	t0,at,t5
    42bc:	3e542617 	0x3e542617
    42c0:	18272100 	0x18272100
    42c4:	17282516 	bne	t9,t0,d720 <extend_mask+0x8064>
    42c8:	2147441b 	addi	a3,t2,17435
    42cc:	05000101 	bltz	t0,46d4 <hana_bmp+0x320c>
    42d0:	04010a0c 	bgez	zero,6b04 <extend_mask+0x1448>
    42d4:	0d0b5051 	jal	42d4144 <extend_mask+0x42cea88>
    42d8:	17141a18 	bne	t8,s4,ab3c <extend_mask+0x5480>
    42dc:	2d700f43 	sltiu	s0,t3,3907
    42e0:	59351e19 	0x59351e19
    42e4:	2edde6db 	sltiu	sp,s6,-6437
    42e8:	dbe2dbfe 	0xdbe2dbfe
    42ec:	d9805654 	0xd9805654
    42f0:	33946d78 	andi	s4,gp,0x6d78
    42f4:	80725e42 	lb	s2,24130(v1)
    42f8:	7bd5d0d8 	0x7bd5d0d8
    42fc:	f3ddad6e 	0xf3ddad6e
    4300:	83954e8b 	lb	s5,20107(gp)
    4304:	f5ccbdf7 	0xf5ccbdf7
    4308:	ad7c7758 	sw	gp,30552(t3)
    430c:	626a7288 	0x626a7288
    4310:	642c2031 	0x642c2031
    4314:	494b5831 	0x494b5831
    4318:	04000b14 	bltz	zero,6f6c <extend_mask+0x18b0>
    431c:	20212313 	addi	at,at,8979
    4320:	111f2e3e 	beq	t0,ra,fc1c <extend_mask+0xa560>
    4324:	3b2a110a 	xori	t2,t9,0x110a
    4328:	0e130505 	jal	84c1414 <extend_mask+0x84bbd58>
    432c:	0e060b0c 	jal	8182c30 <extend_mask+0x817d574>
    4330:	323c1110 	andi	gp,s1,0x1110
    4334:	21121745 	addi	s2,t0,5957
    4338:	00175517 	0x175517
    433c:	31141fb8 	andi	s4,t0,0x1fb8
    4340:	f8f0e6cf 	0xf8f0e6cf
    4344:	3fb1c6e5 	0x3fb1c6e5
    4348:	ac5a5a8d 	sw	k0,23181(v0)
    434c:	315746b4 	andi	s7,t2,0x46b4
    4350:	a4326bab 	sh	s2,27563(at)
    4354:	b4e1b0ae 	0xb4e1b0ae
    4358:	bcad9a65 	0xbcad9a65
    435c:	288ccbd2 	slti	t4,a0,-13358
    4360:	b6e8a15d 	0xb6e8a15d
    4364:	5daba977 	0x5daba977
    4368:	57574585 	0x57574585
    436c:	8b5d8aa8 	lwl	sp,-30040(k0)
    4370:	84300000 	lh	s0,0(at)
    4374:	0a0a1636 	j	82858d8 <extend_mask+0x828021c>
    4378:	5b220726 	0x5b220726
    437c:	353c3b3f 	ori	gp,t1,0x3b3f
    4380:	192b272d 	0x192b272d
    4384:	2c220d05 	sltiu	v0,at,3333
    4388:	0c0f0b55 	jal	3c2d54 <extend_mask+0x3bd698>
    438c:	1a030200 	0x1a030200
    4390:	0025001b 	divu	zero,at,a1
    4394:	57090423 	0x57090423
    4398:	081795a0 	j	5e5680 <extend_mask+0x5dffc4>
    439c:	afd8bea6 	sw	t8,-16730(s8)
    43a0:	bad2a274 	swr	s2,-23948(s6)
    43a4:	83469eb3 	lb	a2,-24909(k0)
    43a8:	86d3ab2c 	lh	s3,-21716(s6)
    43ac:	87d5eae4 	lh	s5,-5404(s8)
    43b0:	c8d374be 	lwc2	$19,29886(a2)
    43b4:	c3bb569c 	lwc0	$27,22172(sp)
    43b8:	bbede5e1 	swr	t5,-6687(ra)
    43bc:	cf5f3699 	lwc3	$31,13977(k0)
    43c0:	bd5e5056 	0xbd5e5056
    43c4:	3770806d 	ori	s0,k1,0x806d
    43c8:	9ac5c057 	lwr	a1,-16297(s6)
    43cc:	00000000 	sll	zero,zero,0x0
    43d0:	0b2d6a55 	j	cb5a954 <extend_mask+0xcb55298>
    43d4:	55646777 	0x55646777
    43d8:	6f5b202a 	0x6f5b202a
    43dc:	2638363a 	addiu	t8,s1,13882
    43e0:	28140f0f 	slti	s4,zero,3855
    43e4:	00372808 	0x372808
    43e8:	0d0d2315 	jal	4348c54 <extend_mask+0x4343598>
    43ec:	0b006604 	j	c019810 <extend_mask+0xc014154>
    43f0:	00223f00 	0x223f00
    43f4:	c8f8d0e7 	lwc2	$24,-12057(a3)
    43f8:	b788ab54 	0xb788ab54
    43fc:	4e565d9a 	c3	0x565d9a
    4400:	859f8367 	lh	ra,-31897(t4)
    4404:	5f373789 	0x5f373789
    4408:	4781ffa2 	c1	0x181ffa2
    440c:	50ccc8a6 	0x50ccc8a6
    4410:	7276d1f9 	0x7276d1f9
    4414:	eabed6c3 	swc2	$30,-10557(s5)
    4418:	8737925c 	lh	s7,-28068(t9)
    441c:	5f573d4d 	0x5f573d4d
    4420:	948590d5 	lhu	a1,-28459(a0)
    4424:	d89d5d50 	0xd89d5d50
    4428:	00181821 	addu	v1,zero,t8
    442c:	5a889fab 	0x5a889fab
    4430:	c5dfcacf 	lwc1	$f31,-13617(t6)
    4434:	44062211 	0x44062211
    4438:	1918170e 	0x1918170e
    443c:	21122509 	addi	s2,t0,9481
    4440:	44354148 	0x44354148
    4444:	5f291413 	0x5f291413
    4448:	69855a34 	0x69855a34
    444c:	56285bda 	0x56285bda
    4450:	898d887c 	lwl	t5,-30596(t4)
    4454:	737e2166 	0x737e2166
    4458:	44729b98 	0x44729b98
    445c:	58000f58 	0x58000f58
    4460:	62c0aed7 	0x62c0aed7
    4464:	ecdea2bb 	swc3	$30,-23877(a2)
    4468:	c0896b47 	lwc0	$9,27463(a0)
    446c:	6fedd9c1 	0x6fedd9c1
    4470:	eed9d064 	swc3	$25,-12188(s6)
    4474:	8c76723a 	lw	s6,29242(v1)
    4478:	403c8894 	0x403c8894
    447c:	c3d6beb6 	lwc0	$22,-16714(s8)
    4480:	97651812 	lhu	a1,6162(k1)
    4484:	0901214f 	j	404853c <extend_mask+0x4042e80>
    4488:	7697b6d1 	jalx	a5edb44 <extend_mask+0xa5e8488>
    448c:	a5c1b21d 	sh	at,-19939(t6)
    4490:	000b0d02 	srl	at,t3,0x14
    4494:	00100c0a 	0x100c0a
    4498:	13122e20 	beq	t8,s2,fd1c <extend_mask+0xa660>
    449c:	384a373c 	xori	t2,v0,0x373c
    44a0:	0c305277 	jal	c149dc <extend_mask+0xc0f320>
    44a4:	4a50631e 	c2	0x50631e
    44a8:	2b4f7f7b 	slti	t7,k0,32635
    44ac:	58bdbadc 	0x58bdbadc
    44b0:	89061451 	lwl	a2,5201(t0)
    44b4:	64929442 	0x64929442
    44b8:	10512460 	beq	v0,s1,d63c <extend_mask+0x7f80>
    44bc:	f9bef372 	0xf9bef372
    44c0:	c69ea4c5 	lwc1	$f30,-23355(s4)
    44c4:	e3a00870 	swc0	$0,2160(sp)
    44c8:	f0ddf6df 	0xf0ddf6df
    44cc:	f5fcb96d 	0xf5fcb96d
    44d0:	7f3c393b 	0x7f3c393b
    44d4:	9ad4c1c8 	lwr	s4,-15928(s6)
    44d8:	c5823f1c 	lwc1	$f2,16156(t4)
    44dc:	13287e81 	beq	t9,t0,23ee4 <extend_mask+0x1e828>
    44e0:	72717d99 	0x72717d99
    44e4:	82b9bfb8 	lb	t9,-16456(s5)
    44e8:	f5bd482f 	0xf5bd482f
    44ec:	1d060000 	0x1d060000
    44f0:	0a0b001c 	j	82c0070 <extend_mask+0x82ba9b4>
    44f4:	342c267d 	ori	t4,at,0x267d
    44f8:	4497533b 	0x4497533b
    44fc:	5373a666 	0x5373a666
    4500:	662c2d49 	0x662c2d49
    4504:	466e7b77 	c1	0x6e7b77
    4508:	ffc5b5e3 	0xffc5b5e3
    450c:	3e143a00 	0x3e143a00
    4510:	21491020 	addi	t1,t2,4128
    4514:	1b0022cb 	blez	t8,d044 <extend_mask+0x7988>
    4518:	b044da55 	0xb044da55
    451c:	8dbc6d1c 	lw	gp,27932(t5)
    4520:	a8ac6acc 	swl	t4,27340(a1)
    4524:	5b86c6ef 	0x5b86c6ef
    4528:	cccb5f37 	lwc3	$11,24375(a2)
    452c:	386759d8 	xori	a3,v1,0x59d8
    4530:	bebcf897 	0xbebcf897
    4534:	47121947 	c1	0x1121947
    4538:	b6c5ddaa 	0xb6c5ddaa
    453c:	bdbb83a9 	0xbdbb83a9
    4540:	f2beb6aa 	0xf2beb6aa
    4544:	743e3c23 	jalx	f8f08c <extend_mask+0xf899d0>
    4548:	0b0b0805 	j	c2c2014 <extend_mask+0xc2bc958>
    454c:	362e3e40 	ori	t6,s1,0x3e40
    4550:	376c5ea0 	ori	t4,k1,0x5ea0
    4554:	8c9e6f5d 	lw	s8,28509(a0)
    4558:	8b7d8b28 	lwl	sp,-29912(k1)
    455c:	1c1f4a9e 	0x1c1f4a9e
    4560:	901ec7ff 	lbu	s8,-14337(zero)
    4564:	e1ce8ccc 	swc0	$14,-29492(t6)
    4568:	b4caf15c 	0xb4caf15c
    456c:	1a5d4526 	0x1a5d4526
    4570:	0038ff51 	0x38ff51
    4574:	b7dbc34b 	0xb7dbc34b
    4578:	0094d0d1 	0x94d0d1
    457c:	dad6e27c 	0xdad6e27c
    4580:	badc9e4a 	swr	gp,-25014(s6)
    4584:	7e84634e 	0x7e84634e
    4588:	3e635276 	0x3e635276
    458c:	918b6f3a 	lbu	t3,28474(t4)
    4590:	321b659b 	andi	k1,s0,0x659b
    4594:	b0a0beb4 	0xb0a0beb4
    4598:	7685ab9a 	jalx	a16ae68 <extend_mask+0xa1657ac>
    459c:	b4a5816b 	0xb4a5816b
    45a0:	410a0000 	0x410a0000
    45a4:	3f35042b 	0x3f35042b
    45a8:	1566c997 	bne	t3,a2,ffff6c08 <extend_mask+0xffff154c>
    45ac:	45a35bb8 	0x45a35bb8
    45b0:	9852333d 	lwr	s2,13117(v0)
    45b4:	6537113a 	0x6537113a
    45b8:	a0a67288 	sb	a2,29320(a1)
    45bc:	d3b4aac6 	0xd3b4aac6
    45c0:	65b4e4f9 	0x65b4e4f9
    45c4:	af20455b 	sw	zero,17755(t9)
    45c8:	340f0091 	ori	t7,zero,0x91
    45cc:	cf3875db 	lwc3	$24,30171(t9)
    45d0:	7e4e0823 	0x7e4e0823
    45d4:	71a8d6c9 	0x71a8d6c9
    45d8:	d5c6abc0 	0xd5c6abc0
    45dc:	c14792b5 	lwc0	$7,-27979(t2)
    45e0:	71422f55 	0x71422f55
    45e4:	245c6856 	addiu	gp,v0,26710
    45e8:	4d423c28 	0x4d423c28
    45ec:	00318fa4 	0x318fa4
    45f0:	a8616238 	swl	at,25144(v1)
    45f4:	63615e8d 	0x63615e8d
    45f8:	5e6f3106 	0x5e6f3106
    45fc:	0706261d 	0x706261d
    4600:	0425052b 	0x425052b
    4604:	e9cb40ae 	swc2	$11,16558(t6)
    4608:	68c1d1e1 	0x68c1d1e1
    460c:	b8267b2c 	swr	a2,31532(at)
    4610:	0080888c 	syscall	0x20222
    4614:	a1a8e6e8 	sb	t0,-6424(t5)
    4618:	967e1c4f 	lhu	s8,7247(s3)
    461c:	d2b01826 	0xd2b01826
    4620:	39473b24 	xori	a3,t2,0x3b24
    4624:	003cb664 	0x3cb664
    4628:	29eaa37e 	slti	t2,t7,-23682
    462c:	034d260c 	syscall	0xd3498
    4630:	0812aab2 	j	4aaac8 <extend_mask+0x4a540c>
    4634:	9e9b8ec6 	0x9e9b8ec6
    4638:	16778478 	bne	s3,s7,fffe581c <extend_mask+0xfffe0160>
    463c:	4f170a95 	c3	0x1170a95
    4640:	b8956637 	swr	s5,26167(a0)
    4644:	404c2b17 	0x404c2b17
    4648:	d2c08b89 	0xd2c08b89
    464c:	9e301920 	0x9e301920
    4650:	0e182520 	jal	8609480 <extend_mask+0x8603dc4>
    4654:	07000000 	bltz	t8,4658 <hana_bmp+0x3190>
    4658:	19170029 	0x19170029
    465c:	36422e92 	ori	v0,s2,0x2e92
    4660:	3b841bdc 	xori	a0,gp,0x1bdc
    4664:	bfe4c859 	0xbfe4c859
    4668:	4d3d0097 	0x4d3d0097
    466c:	a5ae58a1 	sh	t6,22689(t5)
    4670:	d0742c0b 	0xd0742c0b
    4674:	1c39c5ff 	0x1c39c5ff
    4678:	9b101f28 	lwr	s0,7976(t8)
    467c:	3e0000dd 	0x3e0000dd
    4680:	90840f93 	lbu	a0,3987(a0)
    4684:	bdc93c36 	0xbdc93c36
    4688:	39334328 	xori	s3,t1,0x4328
    468c:	14505578 	bne	v0,s0,19c70 <extend_mask+0x145b4>
    4690:	90ba3f77 	lbu	k0,16247(a1)
    4694:	c3ce6214 	lwc0	$14,25108(s8)
    4698:	7996a2b2 	0x7996a2b2
    469c:	585844b1 	0x585844b1
    46a0:	7f39bbb4 	0x7f39bbb4
    46a4:	6176aa8b 	0x6176aa8b
    46a8:	2d051300 	sltiu	a1,t0,4864
    46ac:	04000000 	bltz	zero,46b0 <hana_bmp+0x31e8>
    46b0:	00001512 	0x1512
    46b4:	000d6f70 	0xd6f70
    46b8:	3072e09f 	andi	s2,v1,0xe09f
    46bc:	7d56eeb0 	0x7d56eeb0
    46c0:	b5863918 	0xb5863918
    46c4:	3481e5b5 	ori	at,a0,0xe5b5
    46c8:	00aafb91 	0xaafb91
    46cc:	1280877c 	beqz	s4,fffe64c0 <extend_mask+0xfffe0e04>
    46d0:	008da3a8 	0x8da3a8
    46d4:	2042126c 	addi	v0,v0,4716
    46d8:	dfdeb194 	0xdfdeb194
    46dc:	0c93a5ff 	jal	24e97fc <extend_mask+0x24e4140>
    46e0:	ef90d1c7 	swc3	$16,-11833(gp)
    46e4:	30ea414d 	andi	t2,a3,0x414d
    46e8:	492cb5ad 	0x492cb5ad
    46ec:	f3a8e0f4 	0xf3a8e0f4
    46f0:	96989c6b 	lhu	t8,-25493(s4)
    46f4:	aa916561 	swl	s1,25953(s4)
    46f8:	53ac9351 	0x53ac9351
    46fc:	74856662 	jalx	2159988 <extend_mask+0x21542cc>
    4700:	78972a29 	0x78972a29
    4704:	12040001 	beq	s0,a0,470c <hana_bmp+0x3244>
    4708:	00000000 	sll	zero,zero,0x0
    470c:	00040800 	sll	at,a0,0x0
    4710:	2837819b 	slti	s7,at,-32357
    4714:	ccc3b6a7 	lwc3	$3,-18777(a2)
    4718:	5391ff6f 	0x5391ff6f
    471c:	fb441969 	0xfb441969
    4720:	d6934bbc 	0xd6934bbc
    4724:	b98a00b0 	swr	t2,176(t4)
    4728:	cda7c9a6 	lwc3	$7,-13914(t5)
    472c:	76775e44 	jalx	9dd7910 <extend_mask+0x9dd2254>
    4730:	cc6846be 	lwc3	$8,18110(v1)
    4734:	ff711993 	0xff711993
    4738:	65b2e1ba 	0x65b2e1ba
    473c:	b0b48fbf 	0xb0b48fbf
    4740:	cdbba445 	lwc3	$27,-23483(t5)
    4744:	4c4ed692 	0x4c4ed692
    4748:	f5d2ff46 	0xf5d2ff46
    474c:	57989448 	0x57989448
    4750:	70466f89 	0x70466f89
    4754:	88443a32 	lwl	a0,14898(v0)
    4758:	483f959b 	0x483f959b
    475c:	431c271d 	c0	0x11c271d
    4760:	02000000 	0x2000000
    4764:	00000200 	sll	zero,zero,0x8
    4768:	2700282f 	addiu	zero,t8,10287
    476c:	2e7bb8ad 	sltiu	k1,s3,-18259
    4770:	c3cfc576 	lwc0	$15,-14986(s8)
    4774:	2b6dd133 	slti	t5,k1,-11981
    4778:	271e7547 	addiu	s8,t8,30023
    477c:	3564cf56 	ori	a0,t3,0xcf56
    4780:	42beabf4 	c0	0xbeabf4
    4784:	bd9eefe6 	0xbd9eefe6
    4788:	267de2b2 	addiu	sp,s3,-7502
    478c:	79ae327f 	0x79ae327f
    4790:	007df8b9 	0x7df8b9
    4794:	bfc05d3a 	0xbfc05d3a
    4798:	91678abb 	lbu	a3,-30021(t3)
    479c:	78491d1b 	0x78491d1b
    47a0:	3841fcf8 	xori	at,v0,0xfcf8
    47a4:	806966a9 	lb	t1,26281(v1)
    47a8:	353f5b6d 	ori	ra,t1,0x5b6d
    47ac:	5d4c4955 	0x5d4c4955
    47b0:	45385559 	0x45385559
    47b4:	617d453d 	0x617d453d
    47b8:	3f2f1200 	0x3f2f1200
    47bc:	0a000000 	j	8000000 <extend_mask+0x7ffa944>
    47c0:	00007e2f 	0x7e2f
    47c4:	10242119 	beq	at,a0,cc2c <extend_mask+0x7570>
    47c8:	7eac95c6 	0x7eac95c6
    47cc:	bf661ec3 	0xbf661ec3
    47d0:	ff3e2c2c 	0xff3e2c2c
    47d4:	1c790b00 	0x1c790b00
    47d8:	5307504b 	0x5307504b
    47dc:	ffa7da96 	0xffa7da96
    47e0:	d2ecb39a 	0xd2ecb39a
    47e4:	cfdb6a15 	lwc3	$27,27157(s8)
    47e8:	41750f44 	0x41750f44
    47ec:	e2be84bf 	swc0	$30,-31553(s5)
    47f0:	3f282c85 	0x3f282c85
    47f4:	bf8c3659 	0xbf8c3659
    47f8:	261e3f40 	addiu	s8,s0,16192
    47fc:	75a47576 	jalx	691d5d8 <extend_mask+0x6917f1c>
    4800:	daaf8d55 	0xdaaf8d55
    4804:	61523529 	0x61523529
    4808:	2b144d46 	slti	s4,t8,19782
    480c:	71744d3f 	0x71744d3f
    4810:	442c250f 	0x442c250f
    4814:	0a062423 	j	818908c <extend_mask+0x81839d0>
    4818:	0e150000 	jal	8540000 <extend_mask+0x853a944>
    481c:	b88a3036 	swr	t2,12342(a0)
    4820:	2126227b 	addi	a2,t1,8827
    4824:	ceaeff2b 	lwc3	$14,-213(s5)
    4828:	52ed793e 	0x52ed793e
    482c:	2438111d 	addiu	t8,at,4381
    4830:	52108d51 	0x52108d51
    4834:	252164dd 	addiu	at,t1,25821
    4838:	c0b5e7ff 	lwc0	$21,-6145(a1)
    483c:	d9d9dfe6 	0xd9d9dfe6
    4840:	77524587 	jalx	d49161c <extend_mask+0xd48bf60>
    4844:	2b5cf0c7 	slti	gp,k0,-3897
    4848:	4b5b2f5d 	c2	0x15b2f5d
    484c:	3fbebc9b 	0x3fbebc9b
    4850:	18412130 	0x18412130
    4854:	3e215783 	0x3e215783
    4858:	59a1dad5 	0x59a1dad5
    485c:	825b5b2f 	lb	k1,23343(s2)
    4860:	583f310c 	0x583f310c
    4864:	2535695c 	addiu	s5,t1,26972
    4868:	69356511 	0x69356511
    486c:	1c06050b 	0x1c06050b
    4870:	2928111e 	slti	t0,t1,4382
    4874:	1918764c 	0x1918764c
    4878:	10291a28 	beq	at,t1,b11c <extend_mask+0x5a60>
    487c:	149ba4d7 	bne	a0,k1,fffedbdc <extend_mask+0xfffe8520>
    4880:	4624aeb8 	c1	0x24aeb8
    4884:	a1381f0a 	sb	t8,7946(t1)
    4888:	181f5e6e 	0x181f5e6e
    488c:	4031347f 	0x4031347f
    4890:	6686c5bb 	0x6686c5bb
    4894:	d492f8df 	0xd492f8df
    4898:	b5c8bbae 	0xb5c8bbae
    489c:	63357466 	0x63357466
    48a0:	78934512 	0x78934512
    48a4:	79631a67 	0x79631a67
    48a8:	91410017 	lbu	at,23(t2)
    48ac:	1e4b4817 	0x1e4b4817
    48b0:	426852a9 	c0	0x6852a9
    48b4:	d3b86d76 	0xd3b86d76
    48b8:	1d2a4222 	0x1d2a4222
    48bc:	19031426 	0x19031426
    48c0:	485d393b 	0x485d393b
    48c4:	293b0000 	slti	k1,t1,0
    48c8:	00072c2b 	0x72c2b
    48cc:	132c0b00 	beq	t9,t4,74d0 <extend_mask+0x1e14>
    48d0:	422c001a 	c0	0x2c001a
    48d4:	2b2336e0 	slti	v1,t9,14048
    48d8:	a3ff002b 	sb	ra,43(ra)
    48dc:	ffb08e72 	0xffb08e72
    48e0:	080b0009 	j	2c0024 <extend_mask+0x2ba968>
    48e4:	4e4b3f44 	c3	0x4b3f44
    48e8:	516a7bbb 	0x516a7bbb
    48ec:	a6f9ffff 	sh	t9,-1(s7)
    48f0:	ebd4fffa 	swc2	$20,-6(s8)
    48f4:	c1bb6c51 	lwc0	$27,27729(t5)
    48f8:	6144abb5 	0x6144abb5
    48fc:	00a35a84 	0xa35a84
    4900:	141d634e 	bne	zero,sp,1d63c <extend_mask+0x17f80>
    4904:	00344c79 	0x344c79
    4908:	083e7858 	j	f9e160 <extend_mask+0xf98aa4>
    490c:	451693d4 	0x451693d4
    4910:	dfb91c00 	0xdfb91c00
    4914:	06091b0e 	0x6091b0e
    4918:	2d698970 	sltiu	t1,t3,-30352
    491c:	4c282309 	0x4c282309
    4920:	07010007 	bgez	t8,4940 <hana_bmp+0x3478>
    4924:	24240610 	addiu	a0,at,1552
    4928:	0000485e 	0x485e
    492c:	07141e1d 	0x7141e1d
    4930:	3d070004 	0x3d070004
    4934:	12619275 	beq	s3,at,fffe930c <extend_mask+0xfffe3c50>
    4938:	88302518 	lwl	s0,9496(at)
    493c:	002e7263 	0x2e7263
    4940:	322a2879 	andi	t2,s1,0x2879
    4944:	0c619370 	jal	1864dc0 <extend_mask+0x185f704>
    4948:	4db1b23c 	0x4db1b23c
    494c:	72cd72c6 	0x72cd72c6
    4950:	94785b05 	lhu	t8,23301(v1)
    4954:	bec4679f 	0xbec4679f
    4958:	59a44100 	0x59a44100
    495c:	2e6f5219 	sltiu	t7,s3,21017
    4960:	36690d92 	ori	t1,s3,0xd92
    4964:	52821b00 	0x52821b00
    4968:	00bde0bf 	0xbde0bf
    496c:	1b00064c 	blez	t8,62a0 <extend_mask+0xbe4>
    4970:	3a032b4d 	xori	v1,s0,0x2b4d
    4974:	969fa180 	lhu	ra,-24192(s4)
    4978:	45010c00 	bc1t	797c <extend_mask+0x22c0>
    497c:	00021626 	0x21626
    4980:	12080000 	beq	s0,t0,4984 <hana_bmp+0x34bc>
    4984:	31093600 	andi	t1,t0,0x3600
    4988:	0a22251d 	j	8889474 <extend_mask+0x8883db8>
    498c:	0000007e 	0x7e
    4990:	c65a5700 	lwc1	$f26,22272(s2)
    4994:	32000f2d 	andi	zero,s0,0xf2d
    4998:	3f3d234f 	0x3f3d234f
    499c:	0000000b 	0xb
    49a0:	43301eb2 	c0	0x1301eb2
    49a4:	b19092d9 	0xb19092d9
    49a8:	eed0b89b 	swc3	$16,-18277(s6)
    49ac:	6946ceeb 	0x6946ceeb
    49b0:	e3e5c0ca 	swc0	$5,-16182(ra)
    49b4:	a5c00485 	sh	zero,1157(t6)
    49b8:	62093601 	0x62093601
    49bc:	64b76338 	0x64b76338
    49c0:	0344662b 	0x344662b
    49c4:	a3e69947 	sb	a2,-26297(ra)
    49c8:	13293c04 	beq	t9,t1,139dc <extend_mask+0xe320>
    49cc:	244f768f 	addiu	t7,v0,30351
    49d0:	ccad5a0c 	lwc3	$13,23052(a1)
    49d4:	0400000b 	bltz	zero,4a04 <hana_bmp+0x353c>
    49d8:	1e2a0500 	0x1e2a0500
    49dc:	00005028 	0x5028
    49e0:	000f0000 	sll	zero,t7,0x0
    49e4:	43121209 	c0	0x1121209
    49e8:	007c2a4d 	break	0x7c,0xa9
    49ec:	44013a00 	0x44013a00
    49f0:	17140d52 	bne	t8,s4,7f3c <extend_mask+0x2880>
    49f4:	00b46000 	0xb46000
    49f8:	0804361e 	j	10d878 <extend_mask+0x1081bc>
    49fc:	11ffc476 	beq	t7,ra,ffff5bd8 <extend_mask+0xffff051c>
    4a00:	d2ddcce5 	0xd2ddcce5
    4a04:	99628ffa 	lwr	v0,-28678(t3)
    4a08:	be6ef2ef 	0xbe6ef2ef
    4a0c:	d7b8666b 	0xd7b8666b
    4a10:	86433e77 	lh	v1,15991(s2)
    4a14:	0005a480 	sll	s4,a1,0x12
    4a18:	42170019 	c0	0x170019
    4a1c:	867fa0ab 	lh	ra,-24405(s3)
    4a20:	9c945a19 	0x9c945a19
    4a24:	34328c8c 	ori	s2,at,0x8c8c
    4a28:	a983c2d4 	swl	v1,-15660(t4)
    4a2c:	b6480700 	0xb6480700
    4a30:	00000c0f 	0xc0f
    4a34:	00000000 	sll	zero,zero,0x0
    4a38:	3550001d 	ori	s0,t2,0x1d
    4a3c:	261e352c 	addiu	s8,s0,13612
    4a40:	26000604 	addiu	zero,s0,1540
    4a44:	1d360b50 	0x1d360b50
    4a48:	50071711 	0x50071711
    4a4c:	01212896 	0x1212896
    4a50:	a2000400 	sb	zero,1024(s0)
    4a54:	2054545a 	addi	s4,v0,21594
    4a58:	92a9a8b1 	lbu	t1,-22351(s5)
    4a5c:	80bdb368 	lb	sp,-19608(a1)
    4a60:	00e1e3ea 	0xe1e3ea
    4a64:	1d00c2ec 	bgtz	t0,ffff5618 <extend_mask+0xfffeff5c>
    4a68:	6f53209a 	0x6f53209a
    4a6c:	73c4003b 	0x73c4003b
    4a70:	320e0a46 	andi	t6,s0,0xa46
    4a74:	0b3128cf 	j	cc4a33c <extend_mask+0xcc44c80>
    4a78:	e59a3433 	swc1	$f26,13363(t4)
    4a7c:	2c001151 	sltiu	zero,zero,4433
    4a80:	44722f27 	0x44722f27
    4a84:	96b4afbb 	lhu	s4,-20549(s5)
    4a88:	3b000007 	xori	zero,t8,0x7
    4a8c:	17262652 	bne	t9,a2,e3d8 <extend_mask+0x8d1c>
    4a90:	00044f63 	0x44f63
    4a94:	3c002c79 	lui	zero,0x2c79
    4a98:	99341e1f 	lwr	s4,7711(t1)
    4a9c:	00004a5f 	0x4a5f
    4aa0:	05157633 	0x5157633
    4aa4:	000c2537 	0xc2537
    4aa8:	0f0a041f 	jal	c28107c <extend_mask+0xc27b9c0>
    4aac:	1233420b 	beq	s1,s3,152dc <extend_mask+0xfc20>
    4ab0:	77a0cc3a 	jalx	e8330e8 <extend_mask+0xe82da2c>
    4ab4:	fed26700 	0xfed26700
    4ab8:	00015337 	0x15337
    4abc:	623fe4a0 	0x623fe4a0
    4ac0:	c33a7e46 	lwc0	$26,32326(t9)
    4ac4:	d90f621a 	0xd90f621a
    4ac8:	5c3b3319 	0x5c3b3319
    4acc:	2f1f5e5e 	sltiu	ra,t8,24158
    4ad0:	829473b5 	lb	s4,29621(s4)
    4ad4:	d1554d44 	0xd1554d44
    4ad8:	00052c88 	0x52c88
    4adc:	98cf95a0 	lwr	t7,-27232(a2)
    4ae0:	aa977800 	swl	s7,30720(s4)
    4ae4:	0605063a 	0x605063a
    4ae8:	4f5f0003 	c3	0x15f0003
    4aec:	6f553e83 	0x6f553e83
    4af0:	042d3847 	0x42d3847
    4af4:	1c85622a 	0x1c85622a
    4af8:	2a280abb 	slti	t0,s1,2747
    4afc:	f88d0205 	0xf88d0205
    4b00:	2a21768b 	slti	at,s1,30347
    4b04:	443f3300 	0x443f3300
    4b08:	3c1b4a8b 	lui	k1,0x4a8b
    4b0c:	a44c64f6 	sh	t4,25846(v0)
    4b10:	71000000 	0x71000000
    4b14:	336c443e 	andi	t4,k1,0x443e
    4b18:	d5c324aa 	0xd5c324aa
    4b1c:	f88a840d 	0xf88a840d
    4b20:	0278653e 	0x278653e
    4b24:	67352922 	0x67352922
    4b28:	4a38005a 	c2	0x38005a
    4b2c:	6e8ec65a 	0x6e8ec65a
    4b30:	00152d14 	0x152d14
    4b34:	00150014 	0x150014
    4b38:	10689ea0 	beq	v1,t0,fffec5bc <extend_mask+0xfffe6f00>
    4b3c:	54000000 	0x54000000
    4b40:	09305872 	j	4c161c8 <extend_mask+0x4c10b0c>
    4b44:	453f665d 	0x453f665d
    4b48:	0c7c821a 	jal	1f20868 <extend_mask+0x1f1b1ac>
    4b4c:	13048586 	beq	t8,a0,fffe6168 <extend_mask+0xfffe0aac>
    4b50:	87703259 	lh	s0,12889(k1)
    4b54:	7c81d442 	0x7c81d442
    4b58:	07003461 	bltz	t8,11ce0 <extend_mask+0xc624>
    4b5c:	67d99217 	0x67d99217
    4b60:	7800025f 	0x7800025f
    4b64:	2956207a 	slti	s6,t2,8314
    4b68:	26307600 	addiu	s0,s1,30208
    4b6c:	00201044 	0x201044
    4b70:	568eef00 	0x568eef00
    4b74:	4bc2a3b5 	c2	0x1c2a3b5
    4b78:	560c4271 	0x560c4271
    4b7c:	3ba5303a 	xori	a1,sp,0x303a
    4b80:	18282917 	0x18282917
    4b84:	1e975269 	0x1e975269
    4b88:	c20ec271 	lwc0	$14,-15759(s0)
    4b8c:	2a1d1f0d 	slti	sp,s0,7949
    4b90:	08374253 	j	dd094c <extend_mask+0xdcb290>
    4b94:	82ae6c00 	lb	t6,27648(s5)
    4b98:	00000018 	mult	zero,zero
    4b9c:	444b3828 	0x444b3828
    4ba0:	70052114 	0x70052114
    4ba4:	899d302e 	lwl	sp,12334(t4)
    4ba8:	a7caa2cd 	sh	t2,-23859(s8)
    4bac:	b99d8768 	swr	sp,-30872(t4)
    4bb0:	a92b1d10 	swl	t3,7440(t1)
    4bb4:	4e744d5e 	c3	0x744d5e
    4bb8:	410e1d2b 	0x410e1d2b
    4bbc:	1f8a0b27 	0x1f8a0b27
    4bc0:	306f6234 	andi	t7,v1,0x6234
    4bc4:	05221b48 	0x5221b48
    4bc8:	252a460c 	addiu	t2,t1,17932
    4bcc:	2ead3b0f 	sltiu	t5,s5,15119
    4bd0:	0e8a0b38 	jal	a282ce0 <extend_mask+0xa27d624>
    4bd4:	727d787e 	0x727d787e
    4bd8:	499f0f0e 	0x499f0f0e
    4bdc:	1645486c 	bne	s2,a1,16d90 <extend_mask+0x116d4>
    4be0:	10386f38 	beq	at,t8,208c4 <extend_mask+0x1b208>
    4be4:	d2b76e39 	0xd2b76e39
    4be8:	2700001d 	addiu	zero,t8,29
    4bec:	26224e9c 	addiu	v0,s1,20124
    4bf0:	a93e1a00 	swl	s8,6656(t1)
    4bf4:	00051925 	0x51925
    4bf8:	282c6a00 	slti	t4,at,27136
    4bfc:	3f48359d 	0x3f48359d
    4c00:	563500cd 	0x563500cd
    4c04:	f0d9c7fa 	0xf0d9c7fa
    4c08:	89889733 	lwl	t0,-26829(t4)
    4c0c:	1e001830 	bgtz	s0,acd0 <extend_mask+0x5614>
    4c10:	882a1a00 	lwl	t2,6656(at)
    4c14:	00001a17 	0x1a17
    4c18:	43177f9b 	c0	0x1177f9b
    4c1c:	7314256e 	0x7314256e
    4c20:	41955619 	0x41955619
    4c24:	23474b4b 	addi	a3,k0,19275
    4c28:	2c629111 	sltiu	v0,v1,-28399
    4c2c:	2f408062 	sltiu	zero,k0,-32670
    4c30:	54655b00 	0x54655b00
    4c34:	1c02323b 	0x1c02323b
    4c38:	3f3a2c0d 	0x3f3a2c0d
    4c3c:	1b647d8c 	0x1b647d8c
    4c40:	79521600 	0x79521600
    4c44:	00101717 	0x101717
    4c48:	093f4918 	j	4fd2460 <extend_mask+0x4fccda4>
    4c4c:	0d182c00 	jal	460b000 <extend_mask+0x4605944>
    4c50:	00102137 	0x102137
    4c54:	84e13e00 	lh	at,15872(a3)
    4c58:	1f0e1529 	0x1f0e1529
    4c5c:	4919c9a8 	0x4919c9a8
    4c60:	928afd9d 	lbu	t2,-611(s4)
    4c64:	b6626d7b 	0xb6626d7b
    4c68:	43005d30 	c0	0x1005d30
    4c6c:	17ac904b 	bne	sp,t4,fffe8d9c <extend_mask+0xfffe36e0>
    4c70:	07013cd2 	bgez	t8,13fbc <extend_mask+0xe900>
    4c74:	8c7c21a8 	lw	gp,8616(v1)
    4c78:	dbd1c147 	0xdbd1c147
    4c7c:	142e513c 	bne	at,t6,19170 <extend_mask+0x13ab4>
    4c80:	5d4f1e2d 	0x5d4f1e2d
    4c84:	6bb52258 	0x6bb52258
    4c88:	06006746 	bltz	s0,1e9a4 <extend_mask+0x192e8>
    4c8c:	5315452b 	0x5315452b
    4c90:	212e4a36 	addi	t6,t1,18998
    4c94:	4e774700 	c3	0x774700
    4c98:	3471a725 	ori	s1,v1,0xa725
    4c9c:	5e75400f 	0x5e75400f
    4ca0:	1c40680c 	bgtz	v0,1ecd4 <extend_mask+0x19618>
    4ca4:	0c000121 	jal	484 <hana_jpg+0x414>
    4ca8:	25010a1e 	addiu	at,t0,2590
    4cac:	00004d72 	0x4d72
    4cb0:	a800575d 	swl	zero,22365(zero)
    4cb4:	00078aaa 	0x78aaa
    4cb8:	b1be353b 	0xb1be353b
    4cbc:	46d1a33d 	c1	0xd1a33d
    4cc0:	254d5008 	addiu	t5,t2,20488
    4cc4:	2d660043 	sltiu	a2,t3,67
    4cc8:	c6b68700 	lwc1	$f22,-30976(s5)
    4ccc:	9393a399 	lbu	s3,-23655(gp)
    4cd0:	0cc5d8c3 	jal	317630c <extend_mask+0x3170c50>
    4cd4:	ba68302c 	swr	t0,12332(s3)
    4cd8:	33405691 	andi	zero,k0,0x5691
    4cdc:	6939115d 	0x6939115d
    4ce0:	1559003e 	bne	t2,t9,4ddc <hana_bmp+0x3914>
    4ce4:	443e4414 	0x443e4414
    4ce8:	512e0e31 	0x512e0e31
    4cec:	0d2e241e 	jal	4b89078 <extend_mask+0x4b839bc>
    4cf0:	31420a4a 	andi	v0,t2,0xa4a
    4cf4:	6494c887 	0x6494c887
    4cf8:	52365a99 	0x52365a99
    4cfc:	7d7b3200 	0x7d7b3200
    4d00:	05200e00 	bltz	t1,8504 <extend_mask+0x2e48>
    4d04:	00190000 	sll	zero,t9,0x0
    4d08:	56256c00 	0x56256c00
    4d0c:	a6c0bc9a 	sh	zero,-17254(s6)
    4d10:	9b8ea2d8 	lwr	t6,-23848(gp)
    4d14:	6966a6ce 	0x6966a6ce
    4d18:	e46f561c 	swc1	$f15,22044(v1)
    4d1c:	24291a5c 	addiu	t1,at,6748
    4d20:	290076cf 	slti	zero,t0,30415
    4d24:	afb0a256 	sw	s0,-23978(sp)
    4d28:	dc3a2d99 	0xdc3a2d99
    4d2c:	85cad7b5 	lh	t2,-10315(t6)
    4d30:	0f33282c 	jal	ccca0b0 <extend_mask+0xccc49f4>
    4d34:	22456840 	addi	a1,s2,26688
    4d38:	5925152d 	0x5925152d
    4d3c:	003391c0 	0x3391c0
    4d40:	e4202212 	swc1	$f0,8722(at)
    4d44:	00005759 	0x5759
    4d48:	45361800 	0x45361800
    4d4c:	00388bad 	0x388bad
    4d50:	d4c07938 	0xd4c07938
    4d54:	5a3a6158 	0x5a3a6158
    4d58:	3d00234d 	0x3d00234d
    4d5c:	2a03001e 	slti	v1,s0,30
    4d60:	00001b0f 	0x1b0f
    4d64:	00002b9d 	0x2b9d
    4d68:	c8f7e383 	lwc2	$23,-7293(a3)
    4d6c:	54b4faff 	0x54b4faff
    4d70:	a6ec8b37 	sh	t4,-29897(s7)
    4d74:	0718121d 	0x718121d
    4d78:	091f33ae 	j	47cceb8 <extend_mask+0x47c77fc>
    4d7c:	a4a4deb7 	sh	a0,-8521(a1)
    4d80:	d0f22d17 	0xd0f22d17
    4d84:	081a9aa0 	j	6a6a80 <extend_mask+0x6a13c4>
    4d88:	8b004406 	lwl	zero,17414(t8)
    4d8c:	3d233162 	0x3d233162
    4d90:	0e231d18 	jal	88c7460 <extend_mask+0x88c1da4>
    4d94:	4e000052 	c3	0x52
    4d98:	ffc66570 	0xffc66570
    4d9c:	baa73a41 	swr	a3,14913(s5)
    4da0:	bf8f4d1a 	0xbf8f4d1a
    4da4:	28131c15 	slti	s3,zero,7189
    4da8:	48c5a4cc 	0x48c5a4cc
    4dac:	e4634e5a 	swc1	$f3,20058(v1)
    4db0:	362b1100 	ori	t3,s1,0x1100
    4db4:	054d230c 	0x54d230c
    4db8:	000e0000 	sll	zero,t6,0x0
    4dbc:	30720d33 	andi	s2,v1,0xd33
    4dc0:	000b84c2 	srl	s0,t3,0x13
    4dc4:	f4d3bec5 	0xf4d3bec5
    4dc8:	e2cd72c7 	swc0	$13,29383(s6)
    4dcc:	c221200c 	lwc0	$1,8204(s1)
    4dd0:	114a2c24 	beq	t2,t2,fe64 <extend_mask+0xa7a8>
    4dd4:	8fa9959f 	lw	t1,-27233(sp)
    4dd8:	c478a5e7 	lwc1	$f24,-23065(v1)
    4ddc:	20211769 	addi	at,at,5993
    4de0:	65807500 	0x65807500
    4de4:	41ac7a4f 	0x41ac7a4f
    4de8:	6e00004c 	0x6e00004c
    4dec:	20193f1f 	addi	t9,zero,16159
    4df0:	99e32400 	lwr	v1,9216(t7)
    4df4:	09439a61 	j	50e6984 <extend_mask+0x50e12c8>
    4df8:	df46c094 	0xdf46c094
    4dfc:	59002250 	0x59002250
    4e00:	1c375128 	0x1c375128
    4e04:	c2bac054 	lwc0	$26,-16300(s5)
    4e08:	5e869779 	0x5e869779
    4e0c:	65404b1b 	0x65404b1b
    4e10:	3c0e3c21 	lui	t6,0x3c21
    4e14:	14006855 	bnez	zero,1ef6c <extend_mask+0x198b0>
    4e18:	46694f8e 	c1	0x694f8e
    4e1c:	58d7c490 	0x58d7c490
    4e20:	bef6d96d 	0xbef6d96d
    4e24:	7d7cf300 	0x7d7cf300
    4e28:	2500082f 	addiu	zero,t0,2095
    4e2c:	36373a40 	ori	s7,s1,0x3a40
    4e30:	75a5c8cb 	jalx	697232c <extend_mask+0x696cc70>
    4e34:	a2fad433 	sb	k0,-11213(s7)
    4e38:	1b895147 	0x1b895147
    4e3c:	7b269d73 	0x7b269d73
    4e40:	83a38500 	lb	v1,-31488(sp)
    4e44:	60846c24 	0x60846c24
    4e48:	a4ba7612 	sh	k0,30226(a1)
    4e4c:	0681b200 	bgez	s4,ffff1650 <extend_mask+0xfffebf94>
    4e50:	c2a097d8 	lwc0	$0,-26664(s5)
    4e54:	94ffa500 	lhu	ra,-23296(a3)
    4e58:	1a4366ae 	0x1a4366ae
    4e5c:	adb4b9cc 	sw	s4,-17972(t5)
    4e60:	5859dbdb 	0x5859dbdb
    4e64:	b04f240e 	0xb04f240e
    4e68:	100c2502 	beq	zero,t4,e274 <extend_mask+0x8bb8>
    4e6c:	36350000 	ori	s5,s1,0x0
    4e70:	3814539b 	xori	s4,zero,0x539b
    4e74:	dfe1cd9f 	0xdfe1cd9f
    4e78:	e74e99a1 	swc1	$f14,-26207(k0)
    4e7c:	ddd77a70 	0xddd77a70
    4e80:	9b003315 	lwr	zero,13077(t8)
    4e84:	1f3f1431 	0x1f3f1431
    4e88:	28042553 	slti	a0,zero,9555
    4e8c:	86c8ded0 	lh	t0,-8496(s6)
    4e90:	eece0c36 	swc3	$14,3126(s6)
    4e94:	cfc1b4ee 	lwc3	$1,-19218(s8)
    4e98:	6654933d 	0x6654933d
    4e9c:	b2ca95b8 	0xb2ca95b8
    4ea0:	3d214d23 	0x3d214d23
    4ea4:	235173ff 	addi	s1,k0,29695
    4ea8:	559ab3dc 	0x559ab3dc
    4eac:	e3f9ddff 	swc0	$25,-8705(ra)
    4eb0:	5e000d42 	0x5e000d42
    4eb4:	91c1c1d6 	lbu	at,-15914(t6)
    4eb8:	efce440b 	swc3	$14,17419(s8)
    4ebc:	beccc4c4 	0xbeccc4c4
    4ec0:	982f0026 	lwr	t7,38(at)
    4ec4:	1f00001e 	bgtz	t8,4f40 <hana_bmp+0x3a78>
    4ec8:	00003800 	sll	a3,zero,0x0
    4ecc:	af7bcad9 	sw	k1,-13607(k1)
    4ed0:	e9d5ce00 	swc2	$21,-12800(t6)
    4ed4:	81fcbcdf 	lb	gp,-17185(t7)
    4ed8:	de311600 	0xde311600
    4edc:	00050029 	0x50029
    4ee0:	652f3300 	0x652f3300
    4ee4:	603f7b88 	0x603f7b88
    4ee8:	efd6b8b8 	swc3	$22,-18248(s8)
    4eec:	5214ffdf 	0x5214ffdf
    4ef0:	edffbe9a 	swc3	$31,-16742(t7)
    4ef4:	9c6135f1 	0x9c6135f1
    4ef8:	e7ec0e3e 	swc1	$f12,3646(ra)
    4efc:	2353805b 	addi	s3,k0,-32677
    4f00:	51ee7e2f 	0x51ee7e2f
    4f04:	7666caf6 	jalx	99b2bd8 <extend_mask+0x99ad51c>
    4f08:	157f6c00 	bne	t3,ra,1ff0c <extend_mask+0x1a850>
    4f0c:	63965c5d 	0x63965c5d
    4f10:	769b5343 	jalx	a6d4d0c <extend_mask+0xa6cf650>
    4f14:	f190d4d6 	0xf190d4d6
    4f18:	a2191000 	sb	t9,4096(s0)
    4f1c:	00161e00 	sll	v1,s6,0x18
    4f20:	00080000 	sll	zero,t0,0x0
    4f24:	3224766f 	andi	a0,s1,0x766f
    4f28:	64efffa3 	0x64efffa3
    4f2c:	91afddc1 	lbu	t7,-8767(t5)
    4f30:	fbd2b000 	0xfbd2b000
    4f34:	00040500 	sll	zero,a0,0x14
    4f38:	0e38562e 	jal	8e158b8 <extend_mask+0x8e101fc>
    4f3c:	1626a547 	bne	s1,a2,fffee45c <extend_mask+0xfffe8da0>
    4f40:	9c75a7b7 	0x9c75a7b7
    4f44:	a207978d 	sb	a3,-26739(s0)
    4f48:	c9e958a6 	lwc2	$9,22694(t7)
    4f4c:	ffca9696 	0xffca9696
    4f50:	f9bee9e7 	0xf9bee9e7
    4f54:	004c756a 	0x4c756a
    4f58:	379bf1be 	ori	k1,gp,0xf1be
    4f5c:	945855d2 	lhu	t8,21970(v0)
    4f60:	47c414e7 	c1	0x1c414e7
    4f64:	e13d2a5d 	swc0	$29,10845(t1)
    4f68:	4a65577f 	c2	0x65577f
    4f6c:	2700b58d 	addiu	zero,t8,-19059
    4f70:	c7c2ff3b 	lwc1	$f2,-197(s8)
    4f74:	00000036 	0x36
    4f78:	1f000000 	bgtz	t8,4f7c <hana_bmp+0x3ab4>
    4f7c:	305f1c61 	andi	ra,v0,0x1c61
    4f80:	5c7282bc 	0x5c7282bc
    4f84:	29adb69d 	slti	t5,t5,-18787
    4f88:	95cbcbd4 	lhu	t3,-13356(t6)
    4f8c:	14290502 	bne	at,t1,6398 <extend_mask+0xcdc>
    4f90:	17160d28 	bne	t8,s6,8434 <extend_mask+0x2d78>
    4f94:	002d0788 	0x2d0788
    4f98:	a7b85f40 	sh	t8,24384(sp)
    4f9c:	7988a4c9 	0x7988a4c9
    4fa0:	cdb2edb1 	lwc3	$18,-4687(t5)
    4fa4:	541bb9d6 	0x541bb9d6
    4fa8:	846d93bc 	lh	t5,-27716(v1)
    4fac:	b8f68b25 	swr	s6,-29915(a3)
    4fb0:	350ab17b 	ori	t2,t0,0xb17b
    4fb4:	c7e177ab 	lwc1	$f1,30635(ra)
    4fb8:	534549be 	0x534549be
    4fbc:	f4c0c45a 	0xf4c0c45a
    4fc0:	190f3a6c 	0x190f3a6c
    4fc4:	7f2c3750 	0x7f2c3750
    4fc8:	b5a49860 	0xb5a49860
    4fcc:	a0e92400 	sb	t1,9216(a3)
    4fd0:	00200000 	0x200000
    4fd4:	00005653 	0x5653
    4fd8:	6c66414a 	0x6c66414a
    4fdc:	202e39b8 	addi	t6,at,14776
    4fe0:	c2d9a8c9 	lwc0	$25,-22327(s6)
    4fe4:	91b02c1e 	lbu	s0,11294(t5)
    4fe8:	061a2825 	0x61a2825
    4fec:	18131d11 	0x18131d11
    4ff0:	11203e00 	beqz	t1,147f4 <extend_mask+0xf138>
    4ff4:	2548537b 	addiu	t0,t2,21371
    4ff8:	2d9db6bb 	sltiu	sp,t4,-18757
    4ffc:	b3ce6fe6 	0xb3ce6fe6
    5000:	c2da997d 	lwc0	$26,-26243(s6)
    5004:	a4663ae4 	sh	a2,15076(v1)
    5008:	f2350024 	0xf2350024
    500c:	536fffd0 	0x536fffd0
    5010:	3d000700 	0x3d000700
    5014:	4aa0b7e7 	c2	0xa0b7e7
    5018:	a34f4d50 	sb	t7,19792(k0)
    501c:	50704100 	0x50704100
    5020:	660069d0 	0x660069d0
    5024:	220635b3 	addi	a2,s0,13747
    5028:	5e482b16 	0x5e482b16
    502c:	030c1b09 	0x30c1b09
    5030:	423b1b22 	c0	0x3b1b22
    5034:	255d6032 	addiu	sp,t2,24626
    5038:	1728bac2 	bne	t9,t0,ffff3b44 <extend_mask+0xfffee488>
    503c:	4356e29d 	c0	0x156e29d
    5040:	742c210d 	jalx	b08434 <extend_mask+0xb02d78>
    5044:	00120006 	srlv	zero,s2,zero
    5048:	0b001b03 	j	c006c0c <extend_mask+0xc001550>
    504c:	0020290e 	0x20290e
    5050:	04004b65 	bltz	zero,17de8 <extend_mask+0x1272c>
    5054:	b9a2a6a1 	swr	v0,-22879(t5)
    5058:	ffd78a86 	0xffd78a86
    505c:	76632236 	jalx	98c88d8 <extend_mask+0x98c321c>
    5060:	3a50ff96 	xori	s0,s2,0xff96
    5064:	0a3e4400 	j	8f91000 <extend_mask+0x8f8b944>
    5068:	e400392f 	swc1	$f0,14639(zero)
    506c:	0d20276f 	jal	4809dbc <extend_mask+0x4804700>
    5070:	85ce2640 	lh	t6,9792(t6)
    5074:	456c892f 	0x456c892f
    5078:	002b000e 	0x2b000e
    507c:	1e530502 	0x1e530502
    5080:	165dbe0f 	bne	s2,sp,ffff48c0 <extend_mask+0xfffef204>
    5084:	12090f00 	beq	s0,t1,8c88 <extend_mask+0x35cc>
    5088:	00003b37 	0x3b37
    508c:	301b0c54 	andi	k1,zero,0xc54
    5090:	73120f00 	0x73120f00
    5094:	0fa62956 	jal	e98a558 <extend_mask+0xe984e9c>
    5098:	36d16e30 	ori	s1,s6,0x6e30
    509c:	00030911 	0x30911
    50a0:	00001400 	sll	v0,zero,0x10
    50a4:	1f090f29 	0x1f090f29
    50a8:	19081930 	0x19081930
    50ac:	0000fae3 	0xfae3
    50b0:	c3eca0ff 	lwc0	$12,-24321(ra)
    50b4:	987d4f02 	lwr	sp,20226(v1)
    50b8:	0fffd629 	jal	fff58a4 <extend_mask+0xfff01e8>
    50bc:	e61e3358 	swc1	$f30,13144(s0)
    50c0:	4503000f 	0x4503000f
    50c4:	5b251c54 	0x5b251c54
    50c8:	2d5c68ac 	sltiu	gp,t2,26796
    50cc:	00384995 	0x384995
    50d0:	75006727 	jalx	4019c9c <extend_mask+0x40145e0>
    50d4:	001d2a0c 	syscall	0x74a8
    50d8:	05101d00 	bltzal	t0,c4dc <extend_mask+0x6e20>
    50dc:	4d001620 	bc3f	a960 <extend_mask+0x52a4>
    50e0:	10000405 	beqz	zero,60f8 <extend_mask+0xa3c>
    50e4:	52694f00 	0x52694f00
    50e8:	00005a63 	0x5a63
    50ec:	1c0d566d 	0x1c0d566d
    50f0:	4315c6b1 	c0	0x115c6b1
    50f4:	a2660002 	sb	a2,2(s3)
    50f8:	17050403 	bne	t8,a1,6108 <extend_mask+0xa4c>
    50fc:	0f121e02 	jal	c487808 <extend_mask+0xc48214c>
    5100:	00354700 	0x354700
    5104:	14461429 	bne	v0,a2,a1ac <extend_mask+0x4af0>
    5108:	e5d5ffdf 	swc1	$f21,-33(t6)
    510c:	63ffd5b2 	0x63ffd5b2
    5110:	7405abc2 	jalx	16af08 <extend_mask+0x16584c>
    5114:	aa287044 	swl	t0,28740(s1)
    5118:	317a362f 	andi	k0,t3,0x362f
    511c:	001b312e 	0x1b312e
    5120:	2332373b 	addi	s2,t9,14139
    5124:	3842002b 	xori	v0,v0,0x2b
    5128:	77740042 	jalx	dd00108 <extend_mask+0xdcfaa4c>
    512c:	52000518 	0x52000518
    5130:	12180000 	beq	s0,t8,5134 <hana_bmp+0x3c6c>
    5134:	00520057 	0x520057
    5138:	03080000 	0x3080000
    513c:	000b6067 	0xb6067
    5140:	170e0506 	bne	t8,t6,655c <extend_mask+0xea0>
    5144:	0148030a 	0x148030a
    5148:	494e618c 	0x494e618c
    514c:	dae0606b 	0xdae0606b
    5150:	53000004 	0x53000004
    5154:	0013130e 	0x13130e
    5158:	0e050035 	jal	81400d4 <extend_mask+0x813aa18>
    515c:	000b270b 	0xb270b
    5160:	200b40ac 	addi	t3,zero,16556
    5164:	5d2c1073 	0x5d2c1073
    5168:	cbb33e13 	lwc2	$19,15891(sp)
    516c:	b9a2d1ff 	swr	v0,-11777(t5)
    5170:	7eda8f86 	0x7eda8f86
    5174:	8ce04e00 	lw	zero,19968(a3)
    5178:	332e1a6a 	andi	t6,t9,0x1a6a
    517c:	761a2780 	jalx	8689e00 <extend_mask+0x8684744>
    5180:	00454600 	0x454600
    5184:	54280920 	0x54280920
    5188:	0000001f 	0x1f
    518c:	c4899111 	lwc1	$f9,-28399(a0)
    5190:	3b000000 	xori	zero,t8,0x0
    5194:	00000000 	sll	zero,zero,0x0
    5198:	5a52150a 	0x5a52150a
    519c:	130e082a 	beq	t8,t6,7248 <extend_mask+0x1b8c>
    51a0:	14274b4f 	bne	at,a3,17ee0 <extend_mask+0x12824>
    51a4:	511f5bbf 	0x511f5bbf
    51a8:	7d76100e 	0x7d76100e
    51ac:	0004180c 	syscall	0x1060
    51b0:	00190070 	0x190070
    51b4:	b162b01f 	0xb162b01f
    51b8:	0b432c18 	j	d0cb060 <extend_mask+0xd0c59a4>
    51bc:	005529ef 	0x5529ef
    51c0:	4222048c 	c0	0x22048c
    51c4:	93a6b5c3 	lbu	a2,-19005(sp)
    51c8:	b76f7860 	0xb76f7860
    51cc:	dca85592 	0xdca85592
    51d0:	c500311f 	lwc1	$f0,12575(t0)
    51d4:	5ca84030 	0x5ca84030
    51d8:	3f210523 	0x3f210523
    51dc:	041d5531 	0x41d5531
    51e0:	00000005 	0x5
    51e4:	0c5d390a 	jal	174e428 <extend_mask+0x1748d6c>
    51e8:	000f0000 	sll	zero,t7,0x0
    51ec:	00000000 	sll	zero,zero,0x0
    51f0:	00005055 	0x5055
    51f4:	00000013 	mtlo	zero
    51f8:	281d2c16 	slti	sp,zero,11286
    51fc:	19115b4e 	0x19115b4e
    5200:	63174f6c 	0x63174f6c
    5204:	62000600 	0x62000600
    5208:	00401113 	0x401113
    520c:	14b51ec6 	bne	a1,s5,cd28 <extend_mask+0x766c>
    5210:	f4ff001b 	0xf4ff001b
    5214:	2b1b6a10 	slti	k1,t8,27152
    5218:	21d4ff3f 	addi	s4,t6,-193
    521c:	235de677 	addi	sp,k0,-6537
    5220:	bcf0b4b6 	0xbcf0b4b6
    5224:	85c3d65b 	lh	v1,-10661(t6)
    5228:	48c1b7d4 	0x48c1b7d4
    522c:	cea50b45 	lwc3	$5,2885(s5)
    5230:	441d4934 	0x441d4934
    5234:	4200161b 	c0	0x161b
    5238:	28616f68 	slti	at,v1,28520
    523c:	690f1500 	0x690f1500
    5240:	11483b35 	beq	t2,t0,13f18 <extend_mask+0xe85c>
    5244:	16000000 	bnez	s0,5248 <hana_bmp+0x3d80>
    5248:	00000000 	sll	zero,zero,0x0
    524c:	33270000 	andi	a3,t9,0x0
    5250:	00152e0b 	0x152e0b
    5254:	191f1208 	0x191f1208
    5258:	9f456f3d 	0x9f456f3d
    525c:	a46c0000 	sh	t4,0(v1)
    5260:	020c134f 	0x20c134f
    5264:	00092ba9 	0x92ba9
    5268:	c765d4ff 	lwc1	$f5,-11009(k1)
    526c:	ed090f67 	swc3	$9,3943(t0)
    5270:	540c163a 	0x540c163a
    5274:	b4131398 	0xb4131398
    5278:	84624ee4 	lh	v0,20196(v1)
    527c:	cfe0bbc8 	lwc3	$0,-17464(ra)
    5280:	d19310c2 	0xd19310c2
    5284:	bbffdff1 	swr	ra,-8207(ra)
    5288:	3b2d2b15 	xori	t5,t9,0x2b15
    528c:	252a3830 	addiu	t2,t1,14384
    5290:	2b000120 	slti	zero,t8,288
    5294:	15216e56 	bne	t1,at,20bf0 <extend_mask+0x1b534>
    5298:	3e39091a 	0x3e39091a
    529c:	0d100026 	jal	4400098 <extend_mask+0x43fa9dc>
    52a0:	25100000 	addiu	s0,t0,0
    52a4:	00002223 	0x2223
    52a8:	5a000000 	0x5a000000
    52ac:	1c000028 	bgtz	zero,5350 <out_v_samp_factor_get_sof>
    52b0:	00006d59 	0x6d59
    52b4:	2400001f 	addiu	zero,zero,31
    52b8:	00000012 	mflo	zero
    52bc:	4c38000a 	0x4c38000a
    52c0:	1717f3ef 	bne	t8,s7,2280 <hana_bmp+0xdb8>
    52c4:	bd9ee6e3 	0xbd9ee6e3
    52c8:	a5e0bf04 	sh	zero,-16636(t7)
    52cc:	4bac1026 	c2	0x1ac1026
    52d0:	8d12d2ec 	lw	s2,-11540(t0)
    52d4:	3bdecfb6 	xori	s8,s8,0xcfb6
    52d8:	d7d3a1bc 	0xd7d3a1bc
    52dc:	56d9e8d7 	0x56d9e8d7
    52e0:	e8c87400 	swc2	$8,29696(a2)
    52e4:	32112059 	andi	s1,s0,0x2059
    52e8:	402a1700 	0x402a1700
    52ec:	00000101 	0x101
    52f0:	36000c0a 	ori	zero,s0,0xc0a
    52f4:	28391000 	slti	t9,at,4096
    52f8:	37353d36 	ori	s5,t9,0x3d36
    52fc:	38120e10 	xori	s2,zero,0xe10
    5300:	12090000 	beq	s0,t1,5304 <out_unread_marker>

00005304 <out_unread_marker>:
    5304:	000000d8 	0xd8
    5308:	000000e0 	0xe0
    530c:	000000db 	0xdb
    5310:	000000db 	0xdb
    5314:	000000c0 	sll	zero,zero,0x3
    5318:	000000c4 	0xc4
    531c:	000000c4 	0xc4
    5320:	000000c4 	0xc4
    5324:	000000c4 	0xc4
    5328:	000000da 	0xda

0000532c <out_index_get_sof>:
    532c:	00000000 	sll	zero,zero,0x0
    5330:	00000001 	0x1
    5334:	00000002 	srl	zero,zero,0x0

00005338 <out_id_get_sof>:
    5338:	00000001 	0x1
    533c:	00000002 	srl	zero,zero,0x0
    5340:	00000003 	sra	zero,zero,0x0

00005344 <out_h_samp_factor_get_sof>:
    5344:	00000002 	srl	zero,zero,0x0
    5348:	00000001 	0x1
    534c:	00000001 	0x1

00005350 <out_v_samp_factor_get_sof>:
    5350:	00000002 	srl	zero,zero,0x0
    5354:	00000001 	0x1
    5358:	00000001 	0x1

0000535c <out_quant_tbl_no_get_sof>:
    535c:	00000000 	sll	zero,zero,0x0
    5360:	00000001 	0x1
    5364:	00000001 	0x1

00005368 <out_comp_id_get_sos>:
    5368:	00000001 	0x1
    536c:	00000002 	srl	zero,zero,0x0
    5370:	00000003 	sra	zero,zero,0x0

00005374 <out_dc_tbl_no_get_sos>:
    5374:	00000000 	sll	zero,zero,0x0
    5378:	00000001 	0x1
    537c:	00000001 	0x1

00005380 <out_ac_tbl_no_get_sos>:
    5380:	00000000 	sll	zero,zero,0x0
    5384:	00000001 	0x1
    5388:	00000001 	0x1

0000538c <out_length_get_dht>:
    538c:	0000001d 	0x1d
    5390:	000000b3 	0xb3
    5394:	0000001d 	0x1d
    5398:	000000b3 	0xb3

0000539c <out_index_get_dht>:
    539c:	00000000 	sll	zero,zero,0x0
    53a0:	00000010 	mfhi	zero
    53a4:	00000001 	0x1
    53a8:	00000011 	mthi	zero

000053ac <out_count_get_dht>:
    53ac:	0000000c 	syscall
    53b0:	000000a2 	0xa2
    53b4:	0000000c 	syscall
    53b8:	000000a2 	0xa2

000053bc <izigzag_index>:
    53bc:	00000000 	sll	zero,zero,0x0
    53c0:	00000001 	0x1
    53c4:	00000008 	jr	zero
    53c8:	00000010 	mfhi	zero
    53cc:	00000009 	jalr	zero,zero
    53d0:	00000002 	srl	zero,zero,0x0
    53d4:	00000003 	sra	zero,zero,0x0
    53d8:	0000000a 	0xa
    53dc:	00000011 	mthi	zero
    53e0:	00000018 	mult	zero,zero
    53e4:	00000020 	add	zero,zero,zero
    53e8:	00000019 	multu	zero,zero
    53ec:	00000012 	mflo	zero
    53f0:	0000000b 	0xb
    53f4:	00000004 	sllv	zero,zero,zero
    53f8:	00000005 	0x5
    53fc:	0000000c 	syscall
    5400:	00000013 	mtlo	zero
    5404:	0000001a 	div	zero,zero,zero
    5408:	00000021 	addu	zero,zero,zero
    540c:	00000028 	0x28
    5410:	00000030 	0x30
    5414:	00000029 	0x29
    5418:	00000022 	neg	zero,zero
    541c:	0000001b 	divu	zero,zero,zero
    5420:	00000014 	0x14
    5424:	0000000d 	break
    5428:	00000006 	srlv	zero,zero,zero
    542c:	00000007 	srav	zero,zero,zero
    5430:	0000000e 	0xe
    5434:	00000015 	0x15
    5438:	0000001c 	0x1c
    543c:	00000023 	negu	zero,zero
    5440:	0000002a 	slt	zero,zero,zero
    5444:	00000031 	0x31
    5448:	00000038 	0x38
    544c:	00000039 	0x39
    5450:	00000032 	0x32
    5454:	0000002b 	sltu	zero,zero,zero
    5458:	00000024 	and	zero,zero,zero
    545c:	0000001d 	0x1d
    5460:	00000016 	0x16
    5464:	0000000f 	0xf
    5468:	00000017 	0x17
    546c:	0000001e 	0x1e
    5470:	00000025 	or	zero,zero,zero
    5474:	0000002c 	0x2c
    5478:	00000033 	0x33
    547c:	0000003a 	0x3a
    5480:	0000003b 	0x3b
    5484:	00000034 	0x34
    5488:	0000002d 	0x2d
    548c:	00000026 	xor	zero,zero,zero
    5490:	0000001f 	0x1f
    5494:	00000027 	nor	zero,zero,zero
    5498:	0000002e 	0x2e
    549c:	00000035 	0x35
    54a0:	0000003c 	0x3c
    54a4:	0000003d 	0x3d
    54a8:	00000036 	0x36
    54ac:	0000002f 	0x2f
    54b0:	00000037 	0x37
    54b4:	0000003e 	0x3e
    54b8:	0000003f 	0x3f

000054bc <zigzag_index>:
    54bc:	00000000 	sll	zero,zero,0x0
    54c0:	00000001 	0x1
    54c4:	00000005 	0x5
    54c8:	00000006 	srlv	zero,zero,zero
    54cc:	0000000e 	0xe
    54d0:	0000000f 	0xf
    54d4:	0000001b 	divu	zero,zero,zero
    54d8:	0000001c 	0x1c
    54dc:	00000002 	srl	zero,zero,0x0
    54e0:	00000004 	sllv	zero,zero,zero
    54e4:	00000007 	srav	zero,zero,zero
    54e8:	0000000d 	break
    54ec:	00000010 	mfhi	zero
    54f0:	0000001a 	div	zero,zero,zero
    54f4:	0000001d 	0x1d
    54f8:	0000002a 	slt	zero,zero,zero
    54fc:	00000003 	sra	zero,zero,0x0
    5500:	00000008 	jr	zero
    5504:	0000000c 	syscall
    5508:	00000011 	mthi	zero
    550c:	00000019 	multu	zero,zero
    5510:	0000001e 	0x1e
    5514:	00000029 	0x29
    5518:	0000002b 	sltu	zero,zero,zero
    551c:	00000009 	jalr	zero,zero
    5520:	0000000b 	0xb
    5524:	00000012 	mflo	zero
    5528:	00000018 	mult	zero,zero
    552c:	0000001f 	0x1f
    5530:	00000028 	0x28
    5534:	0000002c 	0x2c
    5538:	00000035 	0x35
    553c:	0000000a 	0xa
    5540:	00000013 	mtlo	zero
    5544:	00000017 	0x17
    5548:	00000020 	add	zero,zero,zero
    554c:	00000027 	nor	zero,zero,zero
    5550:	0000002d 	0x2d
    5554:	00000034 	0x34
    5558:	00000036 	0x36
    555c:	00000014 	0x14
    5560:	00000016 	0x16
    5564:	00000021 	addu	zero,zero,zero
    5568:	00000026 	xor	zero,zero,zero
    556c:	0000002e 	0x2e
    5570:	00000033 	0x33
    5574:	00000037 	0x37
    5578:	0000003c 	0x3c
    557c:	00000015 	0x15
    5580:	00000022 	neg	zero,zero
    5584:	00000025 	or	zero,zero,zero
    5588:	0000002f 	0x2f
    558c:	00000032 	0x32
    5590:	00000038 	0x38
    5594:	0000003b 	0x3b
    5598:	0000003d 	0x3d
    559c:	00000023 	negu	zero,zero
    55a0:	00000024 	and	zero,zero,zero
    55a4:	00000030 	0x30
    55a8:	00000031 	0x31
    55ac:	00000039 	0x39
    55b0:	0000003a 	0x3a
    55b4:	0000003e 	0x3e
    55b8:	0000003f 	0x3f

000055bc <bit_set_mask>:
    55bc:	00000001 	0x1
    55c0:	00000002 	srl	zero,zero,0x0
    55c4:	00000004 	sllv	zero,zero,zero
    55c8:	00000008 	jr	zero
    55cc:	00000010 	mfhi	zero
    55d0:	00000020 	add	zero,zero,zero
    55d4:	00000040 	sll	zero,zero,0x1
    55d8:	00000080 	sll	zero,zero,0x2
    55dc:	00000100 	sll	zero,zero,0x4
    55e0:	00000200 	sll	zero,zero,0x8
    55e4:	00000400 	sll	zero,zero,0x10
    55e8:	00000800 	sll	at,zero,0x0
    55ec:	00001000 	sll	v0,zero,0x0
    55f0:	00002000 	sll	a0,zero,0x0
    55f4:	00004000 	sll	t0,zero,0x0
    55f8:	00008000 	sll	s0,zero,0x0
    55fc:	00010000 	sll	zero,at,0x0
    5600:	00020000 	sll	zero,v0,0x0
    5604:	00040000 	sll	zero,a0,0x0
    5608:	00080000 	sll	zero,t0,0x0
    560c:	00100000 	sll	zero,s0,0x0
    5610:	00200000 	0x200000
    5614:	00400000 	0x400000
    5618:	00800000 	0x800000
    561c:	01000000 	0x1000000
    5620:	02000000 	0x2000000
    5624:	04000000 	bltz	zero,5628 <bit_set_mask+0x6c>
    5628:	08000000 	j	0 <hana_jpg-0x70>
    562c:	10000000 	beqz	zero,5630 <bit_set_mask+0x74>
    5630:	20000000 	addi	zero,zero,0
    5634:	40000000 	mfc0	zero,c0_index
    5638:	80000000 	lb	zero,0(zero)

0000563c <lmask>:
    563c:	00000001 	0x1
    5640:	00000003 	sra	zero,zero,0x0
    5644:	00000007 	srav	zero,zero,zero
    5648:	0000000f 	0xf
    564c:	0000001f 	0x1f
    5650:	0000003f 	0x3f
    5654:	0000007f 	0x7f
    5658:	000000ff 	0xff
    565c:	000001ff 	0x1ff
    5660:	000003ff 	0x3ff
    5664:	000007ff 	0x7ff
    5668:	00000fff 	0xfff
    566c:	00001fff 	0x1fff
    5670:	00003fff 	0x3fff
    5674:	00007fff 	0x7fff
    5678:	0000ffff 	0xffff
    567c:	0001ffff 	0x1ffff
    5680:	0003ffff 	0x3ffff
    5684:	0007ffff 	0x7ffff
    5688:	000fffff 	0xfffff
    568c:	001fffff 	0x1fffff
    5690:	003fffff 	0x3fffff
    5694:	007fffff 	0x7fffff
    5698:	00ffffff 	0xffffff
    569c:	01ffffff 	0x1ffffff
    56a0:	03ffffff 	0x3ffffff
    56a4:	07ffffff 	0x7ffffff
    56a8:	0fffffff 	jal	ffffffc <extend_mask+0xfffa940>
    56ac:	1fffffff 	0x1fffffff
    56b0:	3fffffff 	0x3fffffff
    56b4:	7fffffff 	0x7fffffff
    56b8:	ffffffff 	0xffffffff

000056bc <extend_mask>:
    56bc:	fffffffe 	0xfffffffe
    56c0:	fffffffc 	0xfffffffc
    56c4:	fffffff8 	0xfffffff8
    56c8:	fffffff0 	0xfffffff0
    56cc:	ffffffe0 	0xffffffe0
    56d0:	ffffffc0 	0xffffffc0
    56d4:	ffffff80 	0xffffff80
    56d8:	ffffff00 	0xffffff00
    56dc:	fffffe00 	0xfffffe00
    56e0:	fffffc00 	0xfffffc00
    56e4:	fffff800 	0xfffff800
    56e8:	fffff000 	0xfffff000
    56ec:	ffffe000 	0xffffe000
    56f0:	ffffc000 	0xffffc000
    56f4:	ffff8000 	0xffff8000
    56f8:	ffff0000 	0xffff0000
    56fc:	fffe0000 	0xfffe0000
    5700:	fffc0000 	0xfffc0000
    5704:	fff80000 	0xfff80000
    5708:	fff00000 	0xfff00000
