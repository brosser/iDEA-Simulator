
main.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <read_byte>:
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
       0:	8f830014 	lw	v1,20(gp)
       4:	00000000 	sll	zero,zero,0x0
       8:	90620000 	lbu	v0,0(v1)
       c:	24630001 	addiu	v1,v1,1
}
      10:	03e00008 	jr	ra
      14:	af830014 	sw	v1,20(gp)

00000018 <read_word>:
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
      18:	8f830014 	lw	v1,20(gp)
      1c:	00000000 	sll	zero,zero,0x0
      20:	80620000 	lb	v0,0(v1)
  c |= *ReadBuf++;
      24:	90640001 	lbu	a0,1(v1)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
      28:	00021200 	sll	v0,v0,0x8
  c |= *ReadBuf++;
      2c:	24630002 	addiu	v1,v1,2
      30:	af830014 	sw	v1,20(gp)

  return c;
}
      34:	03e00008 	jr	ra
      38:	00441025 	or	v0,v0,a0

0000003c <first_marker>:
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
      3c:	8f820014 	lw	v0,20(gp)
  return c;
}

int
first_marker (void)
{
      40:	27bdffe8 	addiu	sp,sp,-24
      44:	afbf0014 	sw	ra,20(sp)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
      48:	90430000 	lbu	v1,0(v0)
      4c:	24440002 	addiu	a0,v0,2
      50:	90450001 	lbu	a1,1(v0)
{
  int c1, c2;
  c1 = read_byte ();
  c2 = read_byte ();

  if (c1 != 0xFF || c2 != M_SOI)
      54:	240200ff 	addiu	v0,zero,255
      58:	14620008 	bne	v1,v0,7c <first_marker+0x40>
      5c:	af840014 	sw	a0,20(gp)
      60:	240200d8 	addiu	v0,zero,216
      64:	14a20005 	bne	a1,v0,7c <first_marker+0x40>
      68:	00000000 	sll	zero,zero,0x0
      printf ("Not Jpeg File!\n");
      EXIT;
    }

  return c2;
}
      6c:	8fbf0014 	lw	ra,20(sp)
      70:	00000000 	sll	zero,zero,0x0
      74:	03e00008 	jr	ra
      78:	27bd0018 	addiu	sp,sp,24
  c1 = read_byte ();
  c2 = read_byte ();

  if (c1 != 0xFF || c2 != M_SOI)
    {
      main_result++;
      7c:	8f820000 	lw	v0,0(gp)
      printf ("Not Jpeg File!\n");
      80:	3c040000 	lui	a0,0x0
  c1 = read_byte ();
  c2 = read_byte ();

  if (c1 != 0xFF || c2 != M_SOI)
    {
      main_result++;
      84:	24420001 	addiu	v0,v0,1
      printf ("Not Jpeg File!\n");
      88:	24840000 	addiu	a0,a0,0
      8c:	0c000000 	jal	0 <read_byte>
      90:	af820000 	sw	v0,0(gp)
      EXIT;
      94:	0c000000 	jal	0 <read_byte>
      98:	00002021 	addu	a0,zero,zero

0000009c <next_marker>:

      do
	{
	  c = read_byte ();
	}
      while (c == 0xff);
      9c:	8f830014 	lw	v1,20(gp)

  for (;;)
    {
      c = read_byte ();

      while (c != 0xff)
      a0:	240400ff 	addiu	a0,zero,255
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
      a4:	90620000 	lbu	v0,0(v1)
      a8:	00000000 	sll	zero,zero,0x0

  for (;;)
    {
      c = read_byte ();

      while (c != 0xff)
      ac:	1444fffd 	bne	v0,a0,a4 <next_marker+0x8>
      b0:	24630001 	addiu	v1,v1,1
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
      b4:	90620000 	lbu	v0,0(v1)
      b8:	00000000 	sll	zero,zero,0x0

      do
	{
	  c = read_byte ();
	}
      while (c == 0xff);
      bc:	1044fffd 	beq	v0,a0,b4 <next_marker+0x18>
      c0:	24630001 	addiu	v1,v1,1
      if (c != 0)
      c4:	1040fff7 	beqz	v0,a4 <next_marker+0x8>
      c8:	00000000 	sll	zero,zero,0x0
	break;
    }
  return c;
}
      cc:	03e00008 	jr	ra
      d0:	af830014 	sw	v1,20(gp)

000000d4 <get_sof>:
/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
{
      d4:	27bdffc8 	addiu	sp,sp,-56
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
      d8:	8f830014 	lw	v1,20(gp)
/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
{
      dc:	afbf0034 	sw	ra,52(sp)
      e0:	afbe0030 	sw	s8,48(sp)
      e4:	afb7002c 	sw	s7,44(sp)
      e8:	afb60028 	sw	s6,40(sp)
      ec:	afb50024 	sw	s5,36(sp)
      f0:	afb40020 	sw	s4,32(sp)
      f4:	afb3001c 	sw	s3,28(sp)
      f8:	afb20018 	sw	s2,24(sp)
      fc:	afb10014 	sw	s1,20(sp)
     100:	afb00010 	sw	s0,16(sp)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     104:	90620002 	lbu	v0,2(v1)
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
  c |= *ReadBuf++;
     108:	90640001 	lbu	a0,1(v1)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     10c:	80700000 	lb	s0,0(v1)
  char *p_comp_info_h_samp_factor;
  char *p_comp_info_v_samp_factor;
  char *p_comp_info_quant_tbl_no;

  length = read_word ();
  p_jinfo_data_precision = read_byte ();
     110:	a3820000 	sb	v0,0(gp)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     114:	80620003 	lb	v0,3(v1)
  c |= *ReadBuf++;
     118:	90650004 	lbu	a1,4(v1)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     11c:	00021200 	sll	v0,v0,0x8
  c |= *ReadBuf++;
     120:	00451025 	or	v0,v0,a1
  char *p_comp_info_v_samp_factor;
  char *p_comp_info_quant_tbl_no;

  length = read_word ();
  p_jinfo_data_precision = read_byte ();
  p_jinfo_image_height = read_word ();
     124:	a7820000 	sh	v0,0(gp)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     128:	80620005 	lb	v0,5(v1)
  c |= *ReadBuf++;
     12c:	90650006 	lbu	a1,6(v1)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     130:	00021200 	sll	v0,v0,0x8
  c |= *ReadBuf++;
     134:	00451025 	or	v0,v0,a1
  char *p_comp_info_quant_tbl_no;

  length = read_word ();
  p_jinfo_data_precision = read_byte ();
  p_jinfo_image_height = read_word ();
  p_jinfo_image_width = read_word ();
     138:	a7820000 	sh	v0,0(gp)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     13c:	00108200 	sll	s0,s0,0x8
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     140:	90620007 	lbu	v0,7(v1)
  char *p_comp_info_id;
  char *p_comp_info_h_samp_factor;
  char *p_comp_info_v_samp_factor;
  char *p_comp_info_quant_tbl_no;

  length = read_word ();
     144:	02048025 	or	s0,s0,a0
  p_jinfo_data_precision = read_byte ();
  p_jinfo_image_height = read_word ();
  p_jinfo_image_width = read_word ();
  p_jinfo_num_components = read_byte ();

  printf ("length         = %d\n", length);
     148:	3c040000 	lui	a0,0x0
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     14c:	24630008 	addiu	v1,v1,8
  p_jinfo_data_precision = read_byte ();
  p_jinfo_image_height = read_word ();
  p_jinfo_image_width = read_word ();
  p_jinfo_num_components = read_byte ();

  printf ("length         = %d\n", length);
     150:	24840000 	addiu	a0,a0,0
     154:	02002821 	addu	a1,s0,zero
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     158:	af830014 	sw	v1,20(gp)
  p_jinfo_data_precision = read_byte ();
  p_jinfo_image_height = read_word ();
  p_jinfo_image_width = read_word ();
  p_jinfo_num_components = read_byte ();

  printf ("length         = %d\n", length);
     15c:	0c000000 	jal	0 <read_byte>
     160:	a3820000 	sb	v0,0(gp)
  printf ("data_precision = %d\n", p_jinfo_data_precision);
     164:	83850000 	lb	a1,0(gp)
     168:	3c040000 	lui	a0,0x0
     16c:	0c000000 	jal	0 <read_byte>
     170:	24840000 	addiu	a0,a0,0
  printf ("image_height   = %d\n", p_jinfo_image_height);
     174:	87850000 	lh	a1,0(gp)
     178:	3c040000 	lui	a0,0x0
     17c:	0c000000 	jal	0 <read_byte>
     180:	24840000 	addiu	a0,a0,0
  printf ("image_width    = %d\n", p_jinfo_image_width);
     184:	87850000 	lh	a1,0(gp)
     188:	3c040000 	lui	a0,0x0
     18c:	0c000000 	jal	0 <read_byte>
     190:	24840000 	addiu	a0,a0,0
  printf ("num_components = %d\n", p_jinfo_num_components);
     194:	83850000 	lb	a1,0(gp)
     198:	3c040000 	lui	a0,0x0
     19c:	0c000000 	jal	0 <read_byte>
     1a0:	24840000 	addiu	a0,a0,0

  if (length != out_length_get_sof)
     1a4:	8f820000 	lw	v0,0(gp)
     1a8:	00000000 	sll	zero,zero,0x0
     1ac:	12020005 	beq	s0,v0,1c4 <get_sof+0xf0>
     1b0:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     1b4:	8f820000 	lw	v0,0(gp)
     1b8:	00000000 	sll	zero,zero,0x0
     1bc:	24420001 	addiu	v0,v0,1
     1c0:	af820000 	sw	v0,0(gp)
    }
  if (p_jinfo_data_precision != out_data_precision_get_sof)
     1c4:	83830000 	lb	v1,0(gp)
     1c8:	8f820000 	lw	v0,0(gp)
     1cc:	00000000 	sll	zero,zero,0x0
     1d0:	10620005 	beq	v1,v0,1e8 <get_sof+0x114>
     1d4:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     1d8:	8f820000 	lw	v0,0(gp)
     1dc:	00000000 	sll	zero,zero,0x0
     1e0:	24420001 	addiu	v0,v0,1
     1e4:	af820000 	sw	v0,0(gp)
    }
  if (p_jinfo_image_height != out_p_jinfo_image_height_get_sof)
     1e8:	87830000 	lh	v1,0(gp)
     1ec:	8f820000 	lw	v0,0(gp)
     1f0:	00000000 	sll	zero,zero,0x0
     1f4:	10620005 	beq	v1,v0,20c <get_sof+0x138>
     1f8:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     1fc:	8f820000 	lw	v0,0(gp)
     200:	00000000 	sll	zero,zero,0x0
     204:	24420001 	addiu	v0,v0,1
     208:	af820000 	sw	v0,0(gp)
    }
  if (p_jinfo_image_width != out_p_jinfo_image_width_get_sof)
     20c:	87830000 	lh	v1,0(gp)
     210:	8f820000 	lw	v0,0(gp)
     214:	00000000 	sll	zero,zero,0x0
     218:	10620005 	beq	v1,v0,230 <get_sof+0x15c>
     21c:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     220:	8f820000 	lw	v0,0(gp)
     224:	00000000 	sll	zero,zero,0x0
     228:	24420001 	addiu	v0,v0,1
     22c:	af820000 	sw	v0,0(gp)
    }
  if (p_jinfo_num_components != out_p_jinfo_num_components_get_sof)
     230:	83820000 	lb	v0,0(gp)
     234:	8f830000 	lw	v1,0(gp)
     238:	00000000 	sll	zero,zero,0x0
     23c:	10430005 	beq	v0,v1,254 <get_sof+0x180>
     240:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     244:	8f830000 	lw	v1,0(gp)
     248:	00000000 	sll	zero,zero,0x0
     24c:	24630001 	addiu	v1,v1,1
     250:	af830000 	sw	v1,0(gp)
  length -= 8;

  /* Omit error check */

  /* Check components */
  for (ci = 0; ci < p_jinfo_num_components; ci++)
     254:	1840006c 	blez	v0,408 <get_sof+0x334>
     258:	3c1e0000 	lui	s8,0x0
      *p_comp_info_quant_tbl_no = read_byte ();

      printf (" index         = %d\n", *p_comp_info_index);
      printf (" id            = %d\n", *p_comp_info_id);
      printf (" h_samp_factor = %d\n", *p_comp_info_h_samp_factor);
      printf (" v_samp_factor = %d\n", *p_comp_info_v_samp_factor);
     25c:	3c170000 	lui	s7,0x0
  length -= 8;

  /* Omit error check */

  /* Check components */
  for (ci = 0; ci < p_jinfo_num_components; ci++)
     260:	27960000 	addiu	s6,gp,0
     264:	27950000 	addiu	s5,gp,0
     268:	27940000 	addiu	s4,gp,0
     26c:	27930000 	addiu	s3,gp,0
     270:	27920000 	addiu	s2,gp,0
     274:	00008021 	addu	s0,zero,zero
     278:	00008821 	addu	s1,zero,zero
      *p_comp_info_v_samp_factor = (c) & 15;
      *p_comp_info_quant_tbl_no = read_byte ();

      printf (" index         = %d\n", *p_comp_info_index);
      printf (" id            = %d\n", *p_comp_info_id);
      printf (" h_samp_factor = %d\n", *p_comp_info_h_samp_factor);
     27c:	27de0000 	addiu	s8,s8,0
      printf (" v_samp_factor = %d\n", *p_comp_info_v_samp_factor);
     280:	26f70000 	addiu	s7,s7,0
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     284:	8f820014 	lw	v0,20(gp)
      p_comp_info_id = &p_jinfo_comps_info_id[ci];
      p_comp_info_h_samp_factor = &p_jinfo_comps_info_h_samp_factor[ci];
      p_comp_info_v_samp_factor = &p_jinfo_comps_info_v_samp_factor[ci];
      p_comp_info_quant_tbl_no = &p_jinfo_comps_info_quant_tbl_no[ci];

      *p_comp_info_index = ci;
     288:	a2d10000 	sb	s1,0(s6)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     28c:	90440000 	lbu	a0,0(v0)
     290:	24430003 	addiu	v1,v0,3
      p_comp_info_h_samp_factor = &p_jinfo_comps_info_h_samp_factor[ci];
      p_comp_info_v_samp_factor = &p_jinfo_comps_info_v_samp_factor[ci];
      p_comp_info_quant_tbl_no = &p_jinfo_comps_info_quant_tbl_no[ci];

      *p_comp_info_index = ci;
      *p_comp_info_id = read_byte ();
     294:	a2a40000 	sb	a0,0(s5)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     298:	90440001 	lbu	a0,1(v0)
      c = read_byte ();
      *p_comp_info_h_samp_factor = (c >> 4) & 15;
      *p_comp_info_v_samp_factor = (c) & 15;
      *p_comp_info_quant_tbl_no = read_byte ();

      printf (" index         = %d\n", *p_comp_info_index);
     29c:	02202821 	addu	a1,s1,zero
      p_comp_info_quant_tbl_no = &p_jinfo_comps_info_quant_tbl_no[ci];

      *p_comp_info_index = ci;
      *p_comp_info_id = read_byte ();
      c = read_byte ();
      *p_comp_info_h_samp_factor = (c >> 4) & 15;
     2a0:	00043102 	srl	a2,a0,0x4
      *p_comp_info_v_samp_factor = (c) & 15;
     2a4:	3084000f 	andi	a0,a0,0xf
      p_comp_info_quant_tbl_no = &p_jinfo_comps_info_quant_tbl_no[ci];

      *p_comp_info_index = ci;
      *p_comp_info_id = read_byte ();
      c = read_byte ();
      *p_comp_info_h_samp_factor = (c >> 4) & 15;
     2a8:	a2860000 	sb	a2,0(s4)
      *p_comp_info_v_samp_factor = (c) & 15;
     2ac:	a2640000 	sb	a0,0(s3)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     2b0:	90420002 	lbu	v0,2(v0)
      c = read_byte ();
      *p_comp_info_h_samp_factor = (c >> 4) & 15;
      *p_comp_info_v_samp_factor = (c) & 15;
      *p_comp_info_quant_tbl_no = read_byte ();

      printf (" index         = %d\n", *p_comp_info_index);
     2b4:	3c040000 	lui	a0,0x0
     2b8:	24840000 	addiu	a0,a0,0
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     2bc:	af830014 	sw	v1,20(gp)
      c = read_byte ();
      *p_comp_info_h_samp_factor = (c >> 4) & 15;
      *p_comp_info_v_samp_factor = (c) & 15;
      *p_comp_info_quant_tbl_no = read_byte ();

      printf (" index         = %d\n", *p_comp_info_index);
     2c0:	0c000000 	jal	0 <read_byte>
     2c4:	a2420000 	sb	v0,0(s2)
      printf (" id            = %d\n", *p_comp_info_id);
     2c8:	82a50000 	lb	a1,0(s5)
     2cc:	3c040000 	lui	a0,0x0
     2d0:	0c000000 	jal	0 <read_byte>
     2d4:	24840000 	addiu	a0,a0,0
      printf (" h_samp_factor = %d\n", *p_comp_info_h_samp_factor);
     2d8:	82850000 	lb	a1,0(s4)
     2dc:	0c000000 	jal	0 <read_byte>
     2e0:	03c02021 	addu	a0,s8,zero
      printf (" v_samp_factor = %d\n", *p_comp_info_v_samp_factor);
     2e4:	82650000 	lb	a1,0(s3)
     2e8:	0c000000 	jal	0 <read_byte>
     2ec:	02e02021 	addu	a0,s7,zero
      printf (" quant_tbl_no  = %d\n\n", *p_comp_info_quant_tbl_no);
     2f0:	3c040000 	lui	a0,0x0
     2f4:	82450000 	lb	a1,0(s2)
     2f8:	0c000000 	jal	0 <read_byte>
     2fc:	24840000 	addiu	a0,a0,0

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     300:	3c030000 	lui	v1,0x0
     304:	24630000 	addiu	v1,v1,0
     308:	00701021 	addu	v0,v1,s0
      printf (" id            = %d\n", *p_comp_info_id);
      printf (" h_samp_factor = %d\n", *p_comp_info_h_samp_factor);
      printf (" v_samp_factor = %d\n", *p_comp_info_v_samp_factor);
      printf (" quant_tbl_no  = %d\n\n", *p_comp_info_quant_tbl_no);

      if (*p_comp_info_index != out_index_get_sof[ci])
     30c:	8c420000 	lw	v0,0(v0)
     310:	82c30000 	lb	v1,0(s6)
     314:	00000000 	sll	zero,zero,0x0
     318:	10620005 	beq	v1,v0,330 <get_sof+0x25c>
     31c:	3c030000 	lui	v1,0x0
	{
		main_result++;
     320:	8f820000 	lw	v0,0(gp)
     324:	00000000 	sll	zero,zero,0x0
     328:	24420001 	addiu	v0,v0,1
     32c:	af820000 	sw	v0,0(gp)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     330:	24630000 	addiu	v1,v1,0
     334:	00701021 	addu	v0,v1,s0

      if (*p_comp_info_index != out_index_get_sof[ci])
	{
		main_result++;
	}
      if (*p_comp_info_id != out_id_get_sof[ci])
     338:	8c420000 	lw	v0,0(v0)
     33c:	82a30000 	lb	v1,0(s5)
     340:	00000000 	sll	zero,zero,0x0
     344:	10620005 	beq	v1,v0,35c <get_sof+0x288>
     348:	3c030000 	lui	v1,0x0
	{
		main_result++;
     34c:	8f820000 	lw	v0,0(gp)
     350:	00000000 	sll	zero,zero,0x0
     354:	24420001 	addiu	v0,v0,1
     358:	af820000 	sw	v0,0(gp)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     35c:	24630000 	addiu	v1,v1,0
     360:	00701021 	addu	v0,v1,s0
	}
      if (*p_comp_info_id != out_id_get_sof[ci])
	{
		main_result++;
	}
      if (*p_comp_info_h_samp_factor != out_h_samp_factor_get_sof[ci])
     364:	8c420000 	lw	v0,0(v0)
     368:	82830000 	lb	v1,0(s4)
     36c:	00000000 	sll	zero,zero,0x0
     370:	10620005 	beq	v1,v0,388 <get_sof+0x2b4>
     374:	3c030000 	lui	v1,0x0
	{
		main_result++;
     378:	8f820000 	lw	v0,0(gp)
     37c:	00000000 	sll	zero,zero,0x0
     380:	24420001 	addiu	v0,v0,1
     384:	af820000 	sw	v0,0(gp)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     388:	24630000 	addiu	v1,v1,0
     38c:	00701021 	addu	v0,v1,s0
	}
      if (*p_comp_info_h_samp_factor != out_h_samp_factor_get_sof[ci])
	{
		main_result++;
	}
      if (*p_comp_info_v_samp_factor != out_v_samp_factor_get_sof[ci])
     390:	8c420000 	lw	v0,0(v0)
     394:	82630000 	lb	v1,0(s3)
     398:	00000000 	sll	zero,zero,0x0
     39c:	10620005 	beq	v1,v0,3b4 <get_sof+0x2e0>
     3a0:	3c030000 	lui	v1,0x0
	{
		main_result++;
     3a4:	8f820000 	lw	v0,0(gp)
     3a8:	00000000 	sll	zero,zero,0x0
     3ac:	24420001 	addiu	v0,v0,1
     3b0:	af820000 	sw	v0,0(gp)

/*
 *  Baseline DCT ( Huffman )  
 */
void
get_sof ()
     3b4:	24630000 	addiu	v1,v1,0
     3b8:	00701021 	addu	v0,v1,s0
	}
      if (*p_comp_info_v_samp_factor != out_v_samp_factor_get_sof[ci])
	{
		main_result++;
	}
      if (*p_comp_info_quant_tbl_no != out_quant_tbl_no_get_sof[ci])
     3bc:	8c420000 	lw	v0,0(v0)
     3c0:	82430000 	lb	v1,0(s2)
     3c4:	00000000 	sll	zero,zero,0x0
     3c8:	10620005 	beq	v1,v0,3e0 <get_sof+0x30c>
     3cc:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     3d0:	8f820000 	lw	v0,0(gp)
     3d4:	00000000 	sll	zero,zero,0x0
     3d8:	24420001 	addiu	v0,v0,1
     3dc:	af820000 	sw	v0,0(gp)
  length -= 8;

  /* Omit error check */

  /* Check components */
  for (ci = 0; ci < p_jinfo_num_components; ci++)
     3e0:	83820000 	lb	v0,0(gp)
     3e4:	26310001 	addiu	s1,s1,1
     3e8:	0222102a 	slt	v0,s1,v0
     3ec:	26d60001 	addiu	s6,s6,1
     3f0:	26b50001 	addiu	s5,s5,1
     3f4:	26940001 	addiu	s4,s4,1
     3f8:	26730001 	addiu	s3,s3,1
     3fc:	26520001 	addiu	s2,s2,1
     400:	1440ffa0 	bnez	v0,284 <get_sof+0x1b0>
     404:	26100004 	addiu	s0,s0,4

  /*
   *  Determine Sampling Factor
   *  Only 1_1_1 and 4_1_1 are supported
   */
  if (p_jinfo_comps_info_h_samp_factor[0] == 2)
     408:	83820000 	lb	v0,0(gp)
     40c:	24030002 	addiu	v1,zero,2
     410:	1043000f 	beq	v0,v1,450 <get_sof+0x37c>
     414:	3c040000 	lui	a0,0x0
      printf ("\nSampling Factor is 4:1:1\n");
    }
  else
    {
      p_jinfo_smp_fact = SF1_1_1;
      printf ("\nSampling Factor is 1:1:1\n");
     418:	24840000 	addiu	a0,a0,0
      p_jinfo_smp_fact = SF4_1_1;
      printf ("\nSampling Factor is 4:1:1\n");
    }
  else
    {
      p_jinfo_smp_fact = SF1_1_1;
     41c:	af800000 	sw	zero,0(gp)
      printf ("\nSampling Factor is 1:1:1\n");
    }
}
     420:	8fbf0034 	lw	ra,52(sp)
     424:	8fbe0030 	lw	s8,48(sp)
     428:	8fb7002c 	lw	s7,44(sp)
     42c:	8fb60028 	lw	s6,40(sp)
     430:	8fb50024 	lw	s5,36(sp)
     434:	8fb40020 	lw	s4,32(sp)
     438:	8fb3001c 	lw	s3,28(sp)
     43c:	8fb20018 	lw	s2,24(sp)
     440:	8fb10014 	lw	s1,20(sp)
     444:	8fb00010 	lw	s0,16(sp)
      printf ("\nSampling Factor is 4:1:1\n");
    }
  else
    {
      p_jinfo_smp_fact = SF1_1_1;
      printf ("\nSampling Factor is 1:1:1\n");
     448:	08000000 	j	0 <read_byte>
     44c:	27bd0038 	addiu	sp,sp,56
   *  Only 1_1_1 and 4_1_1 are supported
   */
  if (p_jinfo_comps_info_h_samp_factor[0] == 2)
    {
      p_jinfo_smp_fact = SF4_1_1;
      printf ("\nSampling Factor is 4:1:1\n");
     450:	3c040000 	lui	a0,0x0
     454:	24840000 	addiu	a0,a0,0
   *  Determine Sampling Factor
   *  Only 1_1_1 and 4_1_1 are supported
   */
  if (p_jinfo_comps_info_h_samp_factor[0] == 2)
    {
      p_jinfo_smp_fact = SF4_1_1;
     458:	08000108 	j	420 <get_sof+0x34c>
     45c:	af820000 	sw	v0,0(gp)

00000460 <get_sos>:
}


void
get_sos ()
{
     460:	27bdffc8 	addiu	sp,sp,-56
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     464:	8f820014 	lw	v0,20(gp)
}


void
get_sos ()
{
     468:	afbf0034 	sw	ra,52(sp)
     46c:	afbe0030 	sw	s8,48(sp)
     470:	afb7002c 	sw	s7,44(sp)
     474:	afb60028 	sw	s6,40(sp)
     478:	afb50024 	sw	s5,36(sp)
     47c:	afb40020 	sw	s4,32(sp)
     480:	afb3001c 	sw	s3,28(sp)
     484:	afb20018 	sw	s2,24(sp)
     488:	afb10014 	sw	s1,20(sp)
     48c:	afb00010 	sw	s0,16(sp)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     490:	80500000 	lb	s0,0(v0)
  c |= *ReadBuf++;
     494:	90430001 	lbu	v1,1(v0)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     498:	00108200 	sll	s0,s0,0x8
  int i, c, cc, ci, j;
  char *p_comp_info_id;
  char *p_comp_info_dc_tbl_no;
  char *p_comp_info_ac_tbl_no;

  length = read_word ();
     49c:	02038025 	or	s0,s0,v1
  num_comp = read_byte ();

  printf (" length = %d\n", length);
     4a0:	3c040000 	lui	a0,0x0
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     4a4:	905e0002 	lbu	s8,2(v0)
  char *p_comp_info_ac_tbl_no;

  length = read_word ();
  num_comp = read_byte ();

  printf (" length = %d\n", length);
     4a8:	24840000 	addiu	a0,a0,0
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     4ac:	24420003 	addiu	v0,v0,3
  char *p_comp_info_ac_tbl_no;

  length = read_word ();
  num_comp = read_byte ();

  printf (" length = %d\n", length);
     4b0:	02002821 	addu	a1,s0,zero
     4b4:	0c000000 	jal	0 <read_byte>
     4b8:	af820014 	sw	v0,20(gp)
  printf (" num_comp = %d\n", num_comp);
     4bc:	3c040000 	lui	a0,0x0
     4c0:	24840000 	addiu	a0,a0,0
     4c4:	0c000000 	jal	0 <read_byte>
     4c8:	03c02821 	addu	a1,s8,zero

  if (length != out_length_get_sos)
     4cc:	8f820000 	lw	v0,0(gp)
     4d0:	00000000 	sll	zero,zero,0x0
     4d4:	12020005 	beq	s0,v0,4ec <get_sos+0x8c>
     4d8:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     4dc:	8f820000 	lw	v0,0(gp)
     4e0:	00000000 	sll	zero,zero,0x0
     4e4:	24420001 	addiu	v0,v0,1
     4e8:	af820000 	sw	v0,0(gp)
    }
  if (num_comp != out_num_comp_get_sos)
     4ec:	8f820000 	lw	v0,0(gp)
     4f0:	00000000 	sll	zero,zero,0x0
     4f4:	105e0005 	beq	v0,s8,50c <get_sos+0xac>
     4f8:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     4fc:	8f820000 	lw	v0,0(gp)
     500:	00000000 	sll	zero,zero,0x0
     504:	24420001 	addiu	v0,v0,1
     508:	af820000 	sw	v0,0(gp)
    }

  /* Decode each component */
  for (i = 0; i < num_comp; i++)
     50c:	13c00055 	beqz	s8,664 <get_sos+0x204>
     510:	00009821 	addu	s3,zero,zero
    }
}


void
get_sos ()
     514:	27920000 	addiu	s2,gp,0
      main_result++;
      printf ("Bad Component ID!\n");
      EXIT;

    id_found:
      *p_comp_info_dc_tbl_no = (c >> 4) & 15;
     518:	27970000 	addiu	s7,gp,0
      *p_comp_info_ac_tbl_no = (c) & 15;
     51c:	27960000 	addiu	s6,gp,0
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     520:	8f820014 	lw	v0,20(gp)
  for (i = 0; i < num_comp; i++)
    {
      cc = read_byte ();
      c = read_byte ();

      for (ci = 0; ci < p_jinfo_num_components; ci++)
     524:	83850000 	lb	a1,0(gp)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     528:	24430002 	addiu	v1,v0,2
     52c:	90510000 	lbu	s1,0(v0)
     530:	90420001 	lbu	v0,1(v0)
  for (i = 0; i < num_comp; i++)
    {
      cc = read_byte ();
      c = read_byte ();

      for (ci = 0; ci < p_jinfo_num_components; ci++)
     534:	18a0005d 	blez	a1,6ac <get_sos+0x24c>
     538:	af830014 	sw	v1,20(gp)
	{
	  p_comp_info_id = &p_jinfo_comps_info_id[ci];
	  p_comp_info_dc_tbl_no = &p_jinfo_comps_info_dc_tbl_no[ci];
	  p_comp_info_ac_tbl_no = &p_jinfo_comps_info_ac_tbl_no[ci];

	  if (cc == *p_comp_info_id)
     53c:	83830000 	lb	v1,0(gp)
     540:	00000000 	sll	zero,zero,0x0
     544:	10710057 	beq	v1,s1,6a4 <get_sos+0x244>
     548:	00001821 	addu	v1,zero,zero
  for (i = 0; i < num_comp; i++)
    {
      cc = read_byte ();
      c = read_byte ();

      for (ci = 0; ci < p_jinfo_num_components; ci++)
     54c:	24630001 	addiu	v1,v1,1
     550:	0065202a 	slt	a0,v1,a1
     554:	10800055 	beqz	a0,6ac <get_sos+0x24c>
     558:	00000000 	sll	zero,zero,0x0
    }
}


void
get_sos ()
     55c:	02432021 	addu	a0,s2,v1
	{
	  p_comp_info_id = &p_jinfo_comps_info_id[ci];
	  p_comp_info_dc_tbl_no = &p_jinfo_comps_info_dc_tbl_no[ci];
	  p_comp_info_ac_tbl_no = &p_jinfo_comps_info_ac_tbl_no[ci];

	  if (cc == *p_comp_info_id)
     560:	80840000 	lb	a0,0(a0)
     564:	00000000 	sll	zero,zero,0x0
     568:	1491fff8 	bne	a0,s1,54c <get_sos+0xec>
     56c:	00608021 	addu	s0,v1,zero
      main_result++;
      printf ("Bad Component ID!\n");
      EXIT;

    id_found:
      *p_comp_info_dc_tbl_no = (c >> 4) & 15;
     570:	00021902 	srl	v1,v0,0x4
     574:	02f0a821 	addu	s5,s7,s0
      *p_comp_info_ac_tbl_no = (c) & 15;
     578:	02d0a021 	addu	s4,s6,s0
     57c:	3042000f 	andi	v0,v0,0xf

      printf (" comp_id       = %d\n", cc);
     580:	3c040000 	lui	a0,0x0
      main_result++;
      printf ("Bad Component ID!\n");
      EXIT;

    id_found:
      *p_comp_info_dc_tbl_no = (c >> 4) & 15;
     584:	a2a30000 	sb	v1,0(s5)
      *p_comp_info_ac_tbl_no = (c) & 15;

      printf (" comp_id       = %d\n", cc);
     588:	02202821 	addu	a1,s1,zero
     58c:	24840000 	addiu	a0,a0,0
     590:	0c000000 	jal	0 <read_byte>
     594:	a2820000 	sb	v0,0(s4)
      printf (" dc_tbl_no     = %d\n", *p_comp_info_dc_tbl_no);
     598:	82a50000 	lb	a1,0(s5)
     59c:	3c040000 	lui	a0,0x0
     5a0:	0c000000 	jal	0 <read_byte>
     5a4:	24840000 	addiu	a0,a0,0
      printf (" ac_tbl_no     = %d\n", *p_comp_info_ac_tbl_no);
     5a8:	82850000 	lb	a1,0(s4)
     5ac:	3c040000 	lui	a0,0x0
     5b0:	0c000000 	jal	0 <read_byte>
     5b4:	24840000 	addiu	a0,a0,0

      if (cc != out_comp_id_get_sos[i_get_sos])
     5b8:	8f830000 	lw	v1,0(gp)
     5bc:	3c050000 	lui	a1,0x0
     5c0:	00031080 	sll	v0,v1,0x2
     5c4:	24a50000 	addiu	a1,a1,0
     5c8:	00a22021 	addu	a0,a1,v0
     5cc:	8c840000 	lw	a0,0(a0)
     5d0:	00000000 	sll	zero,zero,0x0
     5d4:	10910005 	beq	a0,s1,5ec <get_sos+0x18c>
     5d8:	3c060000 	lui	a2,0x0
	{
		main_result++;
     5dc:	8f840000 	lw	a0,0(gp)
     5e0:	00000000 	sll	zero,zero,0x0
     5e4:	24840001 	addiu	a0,a0,1
     5e8:	af840000 	sw	a0,0(gp)
	}
      if (*p_comp_info_dc_tbl_no != out_dc_tbl_no_get_sos[i_get_sos])
     5ec:	24c60000 	addiu	a2,a2,0
     5f0:	02f02821 	addu	a1,s7,s0
     5f4:	00c22021 	addu	a0,a2,v0
     5f8:	80a50000 	lb	a1,0(a1)
     5fc:	8c840000 	lw	a0,0(a0)
     600:	00000000 	sll	zero,zero,0x0
     604:	10a40006 	beq	a1,a0,620 <get_sos+0x1c0>
     608:	3c040000 	lui	a0,0x0
	{
		main_result++;
     60c:	8f840000 	lw	a0,0(gp)
     610:	00000000 	sll	zero,zero,0x0
     614:	24840001 	addiu	a0,a0,1
     618:	af840000 	sw	a0,0(gp)
	}
      if (*p_comp_info_ac_tbl_no != out_ac_tbl_no_get_sos[i_get_sos])
     61c:	3c040000 	lui	a0,0x0
     620:	24840000 	addiu	a0,a0,0
     624:	00821021 	addu	v0,a0,v0
     628:	02d08021 	addu	s0,s6,s0
     62c:	82040000 	lb	a0,0(s0)
     630:	8c420000 	lw	v0,0(v0)
     634:	00000000 	sll	zero,zero,0x0
     638:	10820005 	beq	a0,v0,650 <get_sos+0x1f0>
     63c:	00000000 	sll	zero,zero,0x0
	{
		main_result++;
     640:	8f820000 	lw	v0,0(gp)
     644:	00000000 	sll	zero,zero,0x0
     648:	24420001 	addiu	v0,v0,1
     64c:	af820000 	sw	v0,0(gp)
    {
        main_result++;
    }

  /* Decode each component */
  for (i = 0; i < num_comp; i++)
     650:	26730001 	addiu	s3,s3,1
	}
      if (*p_comp_info_ac_tbl_no != out_ac_tbl_no_get_sos[i_get_sos])
	{
		main_result++;
	}
      i_get_sos++;
     654:	24630001 	addiu	v1,v1,1
    {
        main_result++;
    }

  /* Decode each component */
  for (i = 0; i < num_comp; i++)
     658:	027e102a 	slt	v0,s3,s8
     65c:	1440ffb0 	bnez	v0,520 <get_sos+0xc0>
     660:	af830000 	sw	v1,0(gp)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     664:	8f820014 	lw	v0,20(gp)
  /*
   * Define the Buffer at this point as the head of data
   */
  p_jinfo_jpeg_data = ReadBuf;

}
     668:	8fbf0034 	lw	ra,52(sp)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     66c:	24420003 	addiu	v0,v0,3
  /*
   * Define the Buffer at this point as the head of data
   */
  p_jinfo_jpeg_data = ReadBuf;

}
     670:	8fbe0030 	lw	s8,48(sp)
     674:	8fb7002c 	lw	s7,44(sp)
     678:	8fb60028 	lw	s6,40(sp)
     67c:	8fb50024 	lw	s5,36(sp)
     680:	8fb40020 	lw	s4,32(sp)
     684:	8fb3001c 	lw	s3,28(sp)
     688:	8fb20018 	lw	s2,24(sp)
     68c:	8fb10014 	lw	s1,20(sp)
     690:	8fb00010 	lw	s0,16(sp)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     694:	af820014 	sw	v0,20(gp)
    }

  /*
   * Define the Buffer at this point as the head of data
   */
  p_jinfo_jpeg_data = ReadBuf;
     698:	af820000 	sw	v0,0(gp)

}
     69c:	03e00008 	jr	ra
     6a0:	27bd0038 	addiu	sp,sp,56
      cc = read_byte ();
      c = read_byte ();

      for (ci = 0; ci < p_jinfo_num_components; ci++)
	{
	  p_comp_info_id = &p_jinfo_comps_info_id[ci];
     6a4:	0800015c 	j	570 <get_sos+0x110>
     6a8:	00008021 	addu	s0,zero,zero
	  p_comp_info_ac_tbl_no = &p_jinfo_comps_info_ac_tbl_no[ci];

	  if (cc == *p_comp_info_id)
	    goto id_found;
	}
      main_result++;
     6ac:	8f820000 	lw	v0,0(gp)
      printf ("Bad Component ID!\n");
     6b0:	3c040000 	lui	a0,0x0
	  p_comp_info_ac_tbl_no = &p_jinfo_comps_info_ac_tbl_no[ci];

	  if (cc == *p_comp_info_id)
	    goto id_found;
	}
      main_result++;
     6b4:	24420001 	addiu	v0,v0,1
      printf ("Bad Component ID!\n");
     6b8:	24840000 	addiu	a0,a0,0
     6bc:	0c000000 	jal	0 <read_byte>
     6c0:	af820000 	sw	v0,0(gp)
      EXIT;
     6c4:	0c000000 	jal	0 <read_byte>
     6c8:	00002021 	addu	a0,zero,zero

000006cc <get_dht>:
/*
 * Get Huffman Table
 */
void
get_dht ()
{
     6cc:	27bdffc8 	addiu	sp,sp,-56
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     6d0:	8f820014 	lw	v0,20(gp)
/*
 * Get Huffman Table
 */
void
get_dht ()
{
     6d4:	afbf0034 	sw	ra,52(sp)
     6d8:	afbe0030 	sw	s8,48(sp)
     6dc:	afb7002c 	sw	s7,44(sp)
     6e0:	afb60028 	sw	s6,40(sp)
     6e4:	afb50024 	sw	s5,36(sp)
     6e8:	afb40020 	sw	s4,32(sp)
     6ec:	afb3001c 	sw	s3,28(sp)
     6f0:	afb20018 	sw	s2,24(sp)
     6f4:	afb10014 	sw	s1,20(sp)
     6f8:	afb00010 	sw	s0,16(sp)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     6fc:	80510000 	lb	s1,0(v0)
  c |= *ReadBuf++;
     700:	90430001 	lbu	v1,1(v0)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     704:	00118a00 	sll	s1,s1,0x8
  c |= *ReadBuf++;
     708:	02238825 	or	s1,s1,v1
  int index, i, count;
  int *p_xhtbl_bits;
  int *p_xhtbl_huffval;

  length = read_word ();
  length -= 2;
     70c:	2631fffe 	addiu	s1,s1,-2

  printf (" length = %d\n", length);
     710:	3c040000 	lui	a0,0x0
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
  c |= *ReadBuf++;
     714:	24420002 	addiu	v0,v0,2
  int *p_xhtbl_huffval;

  length = read_word ();
  length -= 2;

  printf (" length = %d\n", length);
     718:	24840000 	addiu	a0,a0,0
     71c:	02202821 	addu	a1,s1,zero
     720:	0c000000 	jal	0 <read_byte>
     724:	af820014 	sw	v0,20(gp)

  if (length != out_length_get_dht[i_get_dht])
     728:	8f830000 	lw	v1,0(gp)
     72c:	3c020000 	lui	v0,0x0
     730:	00031880 	sll	v1,v1,0x2
     734:	24420000 	addiu	v0,v0,0
     738:	00621021 	addu	v0,v1,v0
     73c:	8c420000 	lw	v0,0(v0)
     740:	00000000 	sll	zero,zero,0x0
     744:	10510006 	beq	v0,s1,760 <get_dht+0x94>
     748:	2a220011 	slti	v0,s1,17
    {
        main_result++;
     74c:	8f820000 	lw	v0,0(gp)
     750:	00000000 	sll	zero,zero,0x0
     754:	24420001 	addiu	v0,v0,1
     758:	af820000 	sw	v0,0(gp)
    }

  while (length > 16)
     75c:	2a220011 	slti	v0,s1,17
     760:	14400080 	bnez	v0,964 <get_dht+0x298>
     764:	3c170000 	lui	s7,0x0
     768:	3c160000 	lui	s6,0x0
    {
      index = read_byte ();

      printf (" index = 0x%x\n", index);
     76c:	3c150000 	lui	s5,0x0
      if (index & 0x10)
	{
	  /* AC */
	  index -= 0x10;
	  p_xhtbl_bits = p_jinfo_ac_xhuff_tbl_bits[index];
	  p_xhtbl_huffval = p_jinfo_ac_xhuff_tbl_huffval[index];
     770:	3c1e0000 	lui	s8,0x0
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
	}

      printf (" count = %d\n", count);
     774:	3c140000 	lui	s4,0x0
     778:	26f70000 	addiu	s7,s7,0
     77c:	26d60000 	addiu	s6,s6,0

  while (length > 16)
    {
      index = read_byte ();

      printf (" index = 0x%x\n", index);
     780:	26b50000 	addiu	s5,s5,0
      if (index & 0x10)
	{
	  /* AC */
	  index -= 0x10;
	  p_xhtbl_bits = p_jinfo_ac_xhuff_tbl_bits[index];
	  p_xhtbl_huffval = p_jinfo_ac_xhuff_tbl_huffval[index];
     784:	27de0000 	addiu	s8,s8,0
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
	}

      printf (" count = %d\n", count);
     788:	26940000 	addiu	s4,s4,0
	{
        main_result++;
    }
      i_get_dht++;

      length -= 1 + 16;
     78c:	2413ffef 	addiu	s3,zero,-17
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     790:	8f820014 	lw	v0,20(gp)

  while (length > 16)
    {
      index = read_byte ();

      printf (" index = 0x%x\n", index);
     794:	02a02021 	addu	a0,s5,zero
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     798:	90500000 	lbu	s0,0(v0)
     79c:	24420001 	addiu	v0,v0,1

  while (length > 16)
    {
      index = read_byte ();

      printf (" index = 0x%x\n", index);
     7a0:	02002821 	addu	a1,s0,zero
     7a4:	0c000000 	jal	0 <read_byte>
     7a8:	af820014 	sw	v0,20(gp)

      if (index != out_index_get_dht[i_get_dht])
     7ac:	8f820000 	lw	v0,0(gp)
     7b0:	00000000 	sll	zero,zero,0x0
     7b4:	00021080 	sll	v0,v0,0x2
     7b8:	02e21021 	addu	v0,s7,v0
     7bc:	8c420000 	lw	v0,0(v0)
     7c0:	00000000 	sll	zero,zero,0x0
     7c4:	10500006 	beq	v0,s0,7e0 <get_dht+0x114>
     7c8:	32020010 	andi	v0,s0,0x10
	{
        main_result++;
     7cc:	8f820000 	lw	v0,0(gp)
     7d0:	00000000 	sll	zero,zero,0x0
     7d4:	24420001 	addiu	v0,v0,1
     7d8:	af820000 	sw	v0,0(gp)
}

      if (index & 0x10)
     7dc:	32020010 	andi	v0,s0,0x10
     7e0:	1040006c 	beqz	v0,994 <get_dht+0x2c8>
     7e4:	00101900 	sll	v1,s0,0x4
	{
	  /* AC */
	  index -= 0x10;
     7e8:	2610fff0 	addiu	s0,s0,-16
	  p_xhtbl_bits = p_jinfo_ac_xhuff_tbl_bits[index];
     7ec:	00101900 	sll	v1,s0,0x4
     7f0:	001011c0 	sll	v0,s0,0x7
	  p_xhtbl_huffval = p_jinfo_ac_xhuff_tbl_huffval[index];
     7f4:	00109080 	sll	s2,s0,0x2

      if (index & 0x10)
	{
	  /* AC */
	  index -= 0x10;
	  p_xhtbl_bits = p_jinfo_ac_xhuff_tbl_bits[index];
     7f8:	00621021 	addu	v0,v1,v0
	  p_xhtbl_huffval = p_jinfo_ac_xhuff_tbl_huffval[index];
     7fc:	00108280 	sll	s0,s0,0xa

      if (index & 0x10)
	{
	  /* AC */
	  index -= 0x10;
	  p_xhtbl_bits = p_jinfo_ac_xhuff_tbl_bits[index];
     800:	3c030000 	lui	v1,0x0
	  p_xhtbl_huffval = p_jinfo_ac_xhuff_tbl_huffval[index];
     804:	02509021 	addu	s2,s2,s0

      if (index & 0x10)
	{
	  /* AC */
	  index -= 0x10;
	  p_xhtbl_bits = p_jinfo_ac_xhuff_tbl_bits[index];
     808:	24630000 	addiu	v1,v1,0
     80c:	00621021 	addu	v0,v1,v0
	  p_xhtbl_huffval = p_jinfo_ac_xhuff_tbl_huffval[index];
     810:	03d29021 	addu	s2,s8,s2
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     814:	8f830014 	lw	v1,20(gp)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
	}

      printf (" count = %d\n", count);
     818:	02802021 	addu	a0,s4,zero
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     81c:	90670000 	lbu	a3,0(v1)
     820:	24660010 	addiu	a2,v1,16

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     824:	ac470004 	sw	a3,4(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     828:	90680001 	lbu	t0,1(v1)
     82c:	00000000 	sll	zero,zero,0x0

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     830:	ac480008 	sw	t0,8(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     834:	90650002 	lbu	a1,2(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     838:	01078021 	addu	s0,t0,a3

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     83c:	ac45000c 	sw	a1,12(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     840:	90670003 	lbu	a3,3(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     844:	02058021 	addu	s0,s0,a1

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     848:	ac470010 	sw	a3,16(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     84c:	90650004 	lbu	a1,4(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     850:	02078021 	addu	s0,s0,a3

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     854:	ac450014 	sw	a1,20(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     858:	90670005 	lbu	a3,5(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     85c:	02058021 	addu	s0,s0,a1

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     860:	ac470018 	sw	a3,24(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     864:	90650006 	lbu	a1,6(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     868:	02078021 	addu	s0,s0,a3

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     86c:	ac45001c 	sw	a1,28(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     870:	90670007 	lbu	a3,7(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     874:	02058021 	addu	s0,s0,a1

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     878:	ac470020 	sw	a3,32(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     87c:	90650008 	lbu	a1,8(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     880:	02078021 	addu	s0,s0,a3

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     884:	ac450024 	sw	a1,36(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     888:	90670009 	lbu	a3,9(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     88c:	02058021 	addu	s0,s0,a1

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     890:	ac470028 	sw	a3,40(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     894:	9065000a 	lbu	a1,10(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     898:	02078021 	addu	s0,s0,a3

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     89c:	ac45002c 	sw	a1,44(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     8a0:	9067000b 	lbu	a3,11(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     8a4:	02058021 	addu	s0,s0,a1

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     8a8:	ac470030 	sw	a3,48(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     8ac:	9065000c 	lbu	a1,12(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     8b0:	02078021 	addu	s0,s0,a3

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     8b4:	ac450034 	sw	a1,52(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     8b8:	9067000d 	lbu	a3,13(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     8bc:	02058021 	addu	s0,s0,a1

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     8c0:	ac470038 	sw	a3,56(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     8c4:	9065000e 	lbu	a1,14(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     8c8:	02073821 	addu	a3,s0,a3

      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
     8cc:	ac45003c 	sw	a1,60(v0)
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     8d0:	9063000f 	lbu	v1,15(v1)
      count = 0;

      for (i = 1; i <= 16; i++)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
     8d4:	00e52821 	addu	a1,a3,a1
     8d8:	00a38021 	addu	s0,a1,v1
	}

      printf (" count = %d\n", count);
     8dc:	02002821 	addu	a1,s0,zero
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     8e0:	af860014 	sw	a2,20(gp)
	{
	  p_xhtbl_bits[i] = read_byte ();
	  count += p_xhtbl_bits[i];
	}

      printf (" count = %d\n", count);
     8e4:	0c000000 	jal	0 <read_byte>
     8e8:	ac430040 	sw	v1,64(v0)

      if (count != out_count_get_dht[i_get_dht])
     8ec:	8f820000 	lw	v0,0(gp)
     8f0:	00000000 	sll	zero,zero,0x0
     8f4:	00021880 	sll	v1,v0,0x2
     8f8:	02c31821 	addu	v1,s6,v1
     8fc:	8c630000 	lw	v1,0(v1)
     900:	00000000 	sll	zero,zero,0x0
     904:	10700005 	beq	v1,s0,91c <get_dht+0x250>
     908:	00000000 	sll	zero,zero,0x0
	{
        main_result++;
     90c:	8f830000 	lw	v1,0(gp)
     910:	00000000 	sll	zero,zero,0x0
     914:	24630001 	addiu	v1,v1,1
     918:	af830000 	sw	v1,0(gp)
    }
      i_get_dht++;
     91c:	24420001 	addiu	v0,v0,1

      length -= 1 + 16;

      for (i = 0; i < count; i++)
     920:	1200000b 	beqz	s0,950 <get_dht+0x284>
     924:	af820000 	sw	v0,0(gp)
     928:	8f840014 	lw	a0,20(gp)
     92c:	00001021 	addu	v0,zero,zero

/*
 * Get Huffman Table
 */
void
get_dht ()
     930:	00821821 	addu	v1,a0,v0
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     934:	90630000 	lbu	v1,0(v1)
    }
      i_get_dht++;

      length -= 1 + 16;

      for (i = 0; i < count; i++)
     938:	24420001 	addiu	v0,v0,1
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     93c:	ae430000 	sw	v1,0(s2)
    }
      i_get_dht++;

      length -= 1 + 16;

      for (i = 0; i < count; i++)
     940:	1450fffb 	bne	v0,s0,930 <get_dht+0x264>
     944:	26520004 	addiu	s2,s2,4
     948:	00902021 	addu	a0,a0,s0
     94c:	af840014 	sw	a0,20(gp)
	{
        main_result++;
    }
      i_get_dht++;

      length -= 1 + 16;
     950:	02708023 	subu	s0,s3,s0
      for (i = 0; i < count; i++)
	{
	  p_xhtbl_huffval[i] = read_byte ();
	}

      length -= count;
     954:	02308821 	addu	s1,s1,s0
  if (length != out_length_get_dht[i_get_dht])
    {
        main_result++;
    }

  while (length > 16)
     958:	2a220011 	slti	v0,s1,17
     95c:	1040ff8c 	beqz	v0,790 <get_dht+0xc4>
     960:	00000000 	sll	zero,zero,0x0
	  p_xhtbl_huffval[i] = read_byte ();
	}

      length -= count;
    }
}
     964:	8fbf0034 	lw	ra,52(sp)
     968:	8fbe0030 	lw	s8,48(sp)
     96c:	8fb7002c 	lw	s7,44(sp)
     970:	8fb60028 	lw	s6,40(sp)
     974:	8fb50024 	lw	s5,36(sp)
     978:	8fb40020 	lw	s4,32(sp)
     97c:	8fb3001c 	lw	s3,28(sp)
     980:	8fb20018 	lw	s2,24(sp)
     984:	8fb10014 	lw	s1,20(sp)
     988:	8fb00010 	lw	s0,16(sp)
     98c:	03e00008 	jr	ra
     990:	27bd0038 	addiu	sp,sp,56
	  p_xhtbl_huffval = p_jinfo_ac_xhuff_tbl_huffval[index];
	}
      else
	{
	  /* DC */
	  p_xhtbl_bits = p_jinfo_dc_xhuff_tbl_bits[index];
     994:	001011c0 	sll	v0,s0,0x7
     998:	00621021 	addu	v0,v1,v0
     99c:	3c030000 	lui	v1,0x0
     9a0:	24630000 	addiu	v1,v1,0
	  p_xhtbl_huffval = p_jinfo_dc_xhuff_tbl_huffval[index];
     9a4:	00109080 	sll	s2,s0,0x2
	  p_xhtbl_huffval = p_jinfo_ac_xhuff_tbl_huffval[index];
	}
      else
	{
	  /* DC */
	  p_xhtbl_bits = p_jinfo_dc_xhuff_tbl_bits[index];
     9a8:	00621021 	addu	v0,v1,v0
	  p_xhtbl_huffval = p_jinfo_dc_xhuff_tbl_huffval[index];
     9ac:	00108280 	sll	s0,s0,0xa
     9b0:	3c030000 	lui	v1,0x0
     9b4:	02509021 	addu	s2,s2,s0
     9b8:	24630000 	addiu	v1,v1,0
     9bc:	08000205 	j	814 <get_dht+0x148>
     9c0:	00729021 	addu	s2,v1,s2

000009c4 <get_dqt>:
}


void
get_dqt ()
{
     9c4:	27bdffc8 	addiu	sp,sp,-56
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     9c8:	8f820014 	lw	v0,20(gp)
}


void
get_dqt ()
{
     9cc:	afbf0034 	sw	ra,52(sp)
     9d0:	afbe0030 	sw	s8,48(sp)
     9d4:	afb7002c 	sw	s7,44(sp)
     9d8:	afb60028 	sw	s6,40(sp)
     9dc:	afb50024 	sw	s5,36(sp)
     9e0:	afb40020 	sw	s4,32(sp)
     9e4:	afb3001c 	sw	s3,28(sp)
     9e8:	afb20018 	sw	s2,24(sp)
     9ec:	afb10014 	sw	s1,20(sp)
     9f0:	afb00010 	sw	s0,16(sp)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     9f4:	80530000 	lb	s3,0(v0)
  c |= *ReadBuf++;
     9f8:	90430001 	lbu	v1,1(v0)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     9fc:	00139a00 	sll	s3,s3,0x8
  c |= *ReadBuf++;
     a00:	02639825 	or	s3,s3,v1
  int prec, num, i;
  unsigned int tmp;
  unsigned int *p_quant_tbl;

  length = read_word ();
  length -= 2;
     a04:	2673fffe 	addiu	s3,s3,-2

  printf (" length = %d\n", length);
     a08:	3c040000 	lui	a0,0x0
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
  c |= *ReadBuf++;
     a0c:	24420002 	addiu	v0,v0,2
  unsigned int *p_quant_tbl;

  length = read_word ();
  length -= 2;

  printf (" length = %d\n", length);
     a10:	24840000 	addiu	a0,a0,0
     a14:	02602821 	addu	a1,s3,zero
     a18:	0c000000 	jal	0 <read_byte>
     a1c:	af820014 	sw	v0,20(gp)

  if (length != out_length_get_dqt[i_get_dqt])
     a20:	8f820000 	lw	v0,0(gp)
     a24:	27830000 	addiu	v1,gp,0
     a28:	00021080 	sll	v0,v0,0x2
     a2c:	00621021 	addu	v0,v1,v0
     a30:	8c420000 	lw	v0,0(v0)
     a34:	00000000 	sll	zero,zero,0x0
     a38:	10530005 	beq	v0,s3,a50 <get_dqt+0x8c>
     a3c:	00000000 	sll	zero,zero,0x0
    {
        main_result++;
     a40:	8f820000 	lw	v0,0(gp)
     a44:	00000000 	sll	zero,zero,0x0
     a48:	24420001 	addiu	v0,v0,1
     a4c:	af820000 	sw	v0,0(gp)
    }

  while (length > 0)
     a50:	1a600041 	blez	s3,b58 <get_dqt+0x194>
     a54:	3c1e0000 	lui	s8,0x0
      /* Precision 0:8bit, 1:16bit */
      prec = num >> 4;
      /* Table Number */
      num &= 0x0f;

      printf (" prec = %d\n", prec);
     a58:	3c150000 	lui	s5,0x0
      printf (" num  = %d\n", num);
     a5c:	3c140000 	lui	s4,0x0
    }
}


void
get_dqt ()
     a60:	3c100000 	lui	s0,0x0
  if (length != out_length_get_dqt[i_get_dqt])
    {
        main_result++;
    }

  while (length > 0)
     a64:	8f820014 	lw	v0,20(gp)
     a68:	27de0000 	addiu	s8,s8,0
     a6c:	27970000 	addiu	s7,gp,0
     a70:	27960000 	addiu	s6,gp,0
      /* Precision 0:8bit, 1:16bit */
      prec = num >> 4;
      /* Table Number */
      num &= 0x0f;

      printf (" prec = %d\n", prec);
     a74:	26b50000 	addiu	s5,s5,0
      printf (" num  = %d\n", num);
     a78:	26940000 	addiu	s4,s4,0
    }
}


void
get_dqt ()
     a7c:	26100100 	addiu	s0,s0,256
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     a80:	90520000 	lbu	s2,0(v0)
      /* Precision 0:8bit, 1:16bit */
      prec = num >> 4;
      /* Table Number */
      num &= 0x0f;

      printf (" prec = %d\n", prec);
     a84:	02a02021 	addu	a0,s5,zero

  while (length > 0)
    {
      num = read_byte ();
      /* Precision 0:8bit, 1:16bit */
      prec = num >> 4;
     a88:	00128903 	sra	s1,s2,0x4
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     a8c:	24420001 	addiu	v0,v0,1
      /* Precision 0:8bit, 1:16bit */
      prec = num >> 4;
      /* Table Number */
      num &= 0x0f;

      printf (" prec = %d\n", prec);
     a90:	02202821 	addu	a1,s1,zero
    {
      num = read_byte ();
      /* Precision 0:8bit, 1:16bit */
      prec = num >> 4;
      /* Table Number */
      num &= 0x0f;
     a94:	3252000f 	andi	s2,s2,0xf

      printf (" prec = %d\n", prec);
     a98:	0c000000 	jal	0 <read_byte>
     a9c:	af820014 	sw	v0,20(gp)
      printf (" num  = %d\n", num);
     aa0:	02802021 	addu	a0,s4,zero
     aa4:	0c000000 	jal	0 <read_byte>
     aa8:	02402821 	addu	a1,s2,zero

      if (prec != out_prec_get_dht[i_get_dqt])
     aac:	8f820000 	lw	v0,0(gp)
     ab0:	00000000 	sll	zero,zero,0x0
     ab4:	00021880 	sll	v1,v0,0x2
     ab8:	02e32021 	addu	a0,s7,v1
     abc:	8c840000 	lw	a0,0(a0)
     ac0:	00000000 	sll	zero,zero,0x0
     ac4:	10910005 	beq	a0,s1,adc <get_dqt+0x118>
     ac8:	00000000 	sll	zero,zero,0x0
	{
        main_result++;
     acc:	8f840000 	lw	a0,0(gp)
     ad0:	00000000 	sll	zero,zero,0x0
     ad4:	24840001 	addiu	a0,a0,1
     ad8:	af840000 	sw	a0,0(gp)
    }
      if (num != out_num_get_dht[i_get_dqt])
     adc:	02c31821 	addu	v1,s6,v1
     ae0:	8c630000 	lw	v1,0(v1)
     ae4:	00000000 	sll	zero,zero,0x0
     ae8:	10720005 	beq	v1,s2,b00 <get_dqt+0x13c>
     aec:	00000000 	sll	zero,zero,0x0
	{
        main_result++;
     af0:	8f830000 	lw	v1,0(gp)
     af4:	00000000 	sll	zero,zero,0x0
     af8:	24630001 	addiu	v1,v1,1
     afc:	af830000 	sw	v1,0(gp)
    }
      i_get_dqt++;

      p_quant_tbl = &p_jinfo_quant_tbl_quantval[num][DCTSIZE2];
     b00:	26450001 	addiu	a1,s2,1
    }
      if (num != out_num_get_dht[i_get_dqt])
	{
        main_result++;
    }
      i_get_dqt++;
     b04:	24420001 	addiu	v0,v0,1

      p_quant_tbl = &p_jinfo_quant_tbl_quantval[num][DCTSIZE2];
     b08:	00052a00 	sll	a1,a1,0x8
    }
      if (num != out_num_get_dht[i_get_dqt])
	{
        main_result++;
    }
      i_get_dqt++;
     b0c:	af820000 	sw	v0,0(gp)

      p_quant_tbl = &p_jinfo_quant_tbl_quantval[num][DCTSIZE2];
     b10:	8f820014 	lw	v0,20(gp)
     b14:	1620001c 	bnez	s1,b88 <get_dqt+0x1c4>
     b18:	03c52821 	addu	a1,s8,a1
     b1c:	3c030000 	lui	v1,0x0
     b20:	00402021 	addu	a0,v0,zero
     b24:	24630000 	addiu	v1,v1,0
	{
	  if (prec)
	    tmp = read_word ();
	  else
	    tmp = read_byte ();
	  p_quant_tbl[izigzag_index[i]] = (unsigned short) tmp;
     b28:	8c660000 	lw	a2,0(v1)
     b2c:	90870000 	lbu	a3,0(a0)
     b30:	00063080 	sll	a2,a2,0x2
     b34:	00a63021 	addu	a2,a1,a2
     b38:	24630004 	addiu	v1,v1,4
     b3c:	acc70000 	sw	a3,0(a2)
        main_result++;
    }
      i_get_dqt++;

      p_quant_tbl = &p_jinfo_quant_tbl_quantval[num][DCTSIZE2];
      for (i = 0; i < DCTSIZE2; i++)
     b40:	1470fff9 	bne	v1,s0,b28 <get_dqt+0x164>
     b44:	24840001 	addiu	a0,a0,1
	  p_quant_tbl[izigzag_index[i]] = (unsigned short) tmp;
	}

      length -= DCTSIZE2 + 1;
      if (prec)
	length -= DCTSIZE2;
     b48:	24420040 	addiu	v0,v0,64
	  else
	    tmp = read_byte ();
	  p_quant_tbl[izigzag_index[i]] = (unsigned short) tmp;
	}

      length -= DCTSIZE2 + 1;
     b4c:	2673ffbf 	addiu	s3,s3,-65
  if (length != out_length_get_dqt[i_get_dqt])
    {
        main_result++;
    }

  while (length > 0)
     b50:	1e60ffcb 	bgtz	s3,a80 <get_dqt+0xbc>
     b54:	af820014 	sw	v0,20(gp)

      length -= DCTSIZE2 + 1;
      if (prec)
	length -= DCTSIZE2;
    }
}
     b58:	8fbf0034 	lw	ra,52(sp)
     b5c:	8fbe0030 	lw	s8,48(sp)
     b60:	8fb7002c 	lw	s7,44(sp)
     b64:	8fb60028 	lw	s6,40(sp)
     b68:	8fb50024 	lw	s5,36(sp)
     b6c:	8fb40020 	lw	s4,32(sp)
     b70:	8fb3001c 	lw	s3,28(sp)
     b74:	8fb20018 	lw	s2,24(sp)
     b78:	8fb10014 	lw	s1,20(sp)
     b7c:	8fb00010 	lw	s0,16(sp)
     b80:	03e00008 	jr	ra
     b84:	27bd0038 	addiu	sp,sp,56
        main_result++;
    }
      i_get_dqt++;

      p_quant_tbl = &p_jinfo_quant_tbl_quantval[num][DCTSIZE2];
      for (i = 0; i < DCTSIZE2; i++)
     b88:	3c030000 	lui	v1,0x0
     b8c:	00402021 	addu	a0,v0,zero
     b90:	24630000 	addiu	v1,v1,0
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     b94:	80870000 	lb	a3,0(a0)
  c |= *ReadBuf++;
     b98:	90880001 	lbu	t0,1(a0)
	{
	  if (prec)
	    tmp = read_word ();
	  else
	    tmp = read_byte ();
	  p_quant_tbl[izigzag_index[i]] = (unsigned short) tmp;
     b9c:	8c660000 	lw	a2,0(v1)
short
read_word (void)
{
  short c;

  c = *ReadBuf++ << 8;
     ba0:	00073a00 	sll	a3,a3,0x8
	{
	  if (prec)
	    tmp = read_word ();
	  else
	    tmp = read_byte ();
	  p_quant_tbl[izigzag_index[i]] = (unsigned short) tmp;
     ba4:	00063080 	sll	a2,a2,0x2

      p_quant_tbl = &p_jinfo_quant_tbl_quantval[num][DCTSIZE2];
      for (i = 0; i < DCTSIZE2; i++)
	{
	  if (prec)
	    tmp = read_word ();
     ba8:	00e83825 	or	a3,a3,t0
	  else
	    tmp = read_byte ();
	  p_quant_tbl[izigzag_index[i]] = (unsigned short) tmp;
     bac:	00a63021 	addu	a2,a1,a2
     bb0:	30e7ffff 	andi	a3,a3,0xffff
     bb4:	24630004 	addiu	v1,v1,4
     bb8:	acc70000 	sw	a3,0(a2)
        main_result++;
    }
      i_get_dqt++;

      p_quant_tbl = &p_jinfo_quant_tbl_quantval[num][DCTSIZE2];
      for (i = 0; i < DCTSIZE2; i++)
     bbc:	1470fff5 	bne	v1,s0,b94 <get_dqt+0x1d0>
     bc0:	24840002 	addiu	a0,a0,2
     bc4:	24420080 	addiu	v0,v0,128
	  p_quant_tbl[izigzag_index[i]] = (unsigned short) tmp;
	}

      length -= DCTSIZE2 + 1;
      if (prec)
	length -= DCTSIZE2;
     bc8:	2673ff7f 	addiu	s3,s3,-129
  if (length != out_length_get_dqt[i_get_dqt])
    {
        main_result++;
    }

  while (length > 0)
     bcc:	1e60ffac 	bgtz	s3,a80 <get_dqt+0xbc>
     bd0:	af820014 	sw	v0,20(gp)
     bd4:	080002d6 	j	b58 <get_dqt+0x194>
     bd8:	00000000 	sll	zero,zero,0x0

00000bdc <read_markers.clone.2>:
}



void
read_markers (unsigned char *buf)
     bdc:	27bdffd0 	addiu	sp,sp,-48
{
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     be0:	3c020000 	lui	v0,0x0
}



void
read_markers (unsigned char *buf)
     be4:	afb50024 	sw	s5,36(sp)
     be8:	afb40020 	sw	s4,32(sp)
     bec:	afb3001c 	sw	s3,28(sp)
{
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     bf0:	24420000 	addiu	v0,v0,0
      else
	{
	  unread_marker = next_marker ();
	}

      printf ("\nmarker = 0x%x\n", unread_marker);
     bf4:	3c140000 	lui	s4,0x0

      if (unread_marker != out_unread_marker[i_marker++])
     bf8:	3c130000 	lui	s3,0x0
	{
		main_result++;
	}


      switch (unread_marker)
     bfc:	3c150000 	lui	s5,0x0
}



void
read_markers (unsigned char *buf)
     c00:	afb60028 	sw	s6,40(sp)
     c04:	afb20018 	sw	s2,24(sp)
     c08:	afb00010 	sw	s0,16(sp)
     c0c:	afbf002c 	sw	ra,44(sp)
     c10:	afb10014 	sw	s1,20(sp)
{
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     c14:	af820014 	sw	v0,20(gp)

  sow_SOI = 0;
     c18:	00009021 	addu	s2,zero,zero

  for (;;)
    {
      c = read_byte ();

      while (c != 0xff)
     c1c:	241000ff 	addiu	s0,zero,255
{
  int c1, c2;
  c1 = read_byte ();
  c2 = read_byte ();

  if (c1 != 0xFF || c2 != M_SOI)
     c20:	241600d8 	addiu	s6,zero,216
      else
	{
	  unread_marker = next_marker ();
	}

      printf ("\nmarker = 0x%x\n", unread_marker);
     c24:	26940000 	addiu	s4,s4,0

      if (unread_marker != out_unread_marker[i_marker++])
     c28:	26730000 	addiu	s3,s3,0
	{
		main_result++;
	}


      switch (unread_marker)
     c2c:	26b50000 	addiu	s5,s5,0
  unread_marker = 0;

  /* Read the head of the marker */
  for (;;)
    {
      if (!sow_SOI)
     c30:	16400025 	bnez	s2,cc8 <read_markers.clone.2+0xec>
     c34:	24440002 	addiu	a0,v0,2
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     c38:	90430000 	lbu	v1,0(v0)
     c3c:	90420001 	lbu	v0,1(v0)
{
  int c1, c2;
  c1 = read_byte ();
  c2 = read_byte ();

  if (c1 != 0xFF || c2 != M_SOI)
     c40:	14700054 	bne	v1,s0,d94 <read_markers.clone.2+0x1b8>
     c44:	af840014 	sw	a0,20(gp)
     c48:	14560052 	bne	v0,s6,d94 <read_markers.clone.2+0x1b8>
     c4c:	241100d8 	addiu	s1,zero,216
      else
	{
	  unread_marker = next_marker ();
	}

      printf ("\nmarker = 0x%x\n", unread_marker);
     c50:	02802021 	addu	a0,s4,zero
     c54:	0c000000 	jal	0 <read_byte>
     c58:	02202821 	addu	a1,s1,zero

      if (unread_marker != out_unread_marker[i_marker++])
     c5c:	8f820000 	lw	v0,0(gp)
     c60:	00000000 	sll	zero,zero,0x0
     c64:	00021880 	sll	v1,v0,0x2
     c68:	00731821 	addu	v1,v1,s3
     c6c:	8c630000 	lw	v1,0(v1)
     c70:	24420001 	addiu	v0,v0,1
     c74:	12230005 	beq	s1,v1,c8c <read_markers.clone.2+0xb0>
     c78:	af820000 	sw	v0,0(gp)
	{
		main_result++;
     c7c:	8f820000 	lw	v0,0(gp)
     c80:	00000000 	sll	zero,zero,0x0
     c84:	24420001 	addiu	v0,v0,1
     c88:	af820000 	sw	v0,0(gp)
	}


      switch (unread_marker)
     c8c:	2631ff40 	addiu	s1,s1,-192
     c90:	2e22001c 	sltiu	v0,s1,28
     c94:	10400019 	beqz	v0,cfc <read_markers.clone.2+0x120>
     c98:	00118880 	sll	s1,s1,0x2
     c9c:	02b18821 	addu	s1,s5,s1
     ca0:	8e220000 	lw	v0,0(s1)
     ca4:	00000000 	sll	zero,zero,0x0
     ca8:	00400008 	jr	v0
     cac:	00000000 	sll	zero,zero,0x0
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     cb0:	90510000 	lbu	s1,0(v0)
     cb4:	00000000 	sll	zero,zero,0x0

      do
	{
	  c = read_byte ();
	}
      while (c == 0xff);
     cb8:	1230fffd 	beq	s1,s0,cb0 <read_markers.clone.2+0xd4>
     cbc:	24420001 	addiu	v0,v0,1
      if (c != 0)
     cc0:	1620000b 	bnez	s1,cf0 <read_markers.clone.2+0x114>
     cc4:	00000000 	sll	zero,zero,0x0
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     cc8:	90430000 	lbu	v1,0(v0)
     ccc:	00000000 	sll	zero,zero,0x0

  for (;;)
    {
      c = read_byte ();

      while (c != 0xff)
     cd0:	1070fff7 	beq	v1,s0,cb0 <read_markers.clone.2+0xd4>
     cd4:	24420001 	addiu	v0,v0,1
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     cd8:	90430000 	lbu	v1,0(v0)
     cdc:	00000000 	sll	zero,zero,0x0

  for (;;)
    {
      c = read_byte ();

      while (c != 0xff)
     ce0:	1470fff9 	bne	v1,s0,cc8 <read_markers.clone.2+0xec>
     ce4:	24420001 	addiu	v0,v0,1
     ce8:	0800032c 	j	cb0 <read_markers.clone.2+0xd4>
     cec:	00000000 	sll	zero,zero,0x0
      do
	{
	  c = read_byte ();
	}
      while (c == 0xff);
      if (c != 0)
     cf0:	08000314 	j	c50 <read_markers.clone.2+0x74>
     cf4:	af820014 	sw	v0,20(gp)


      switch (unread_marker)
	{
	case M_SOI:		/* Start of Image */
	  sow_SOI = 1;
     cf8:	24120001 	addiu	s2,zero,1
read_markers (unsigned char *buf)
{
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     cfc:	8f820014 	lw	v0,20(gp)
     d00:	0800030c 	j	c30 <read_markers.clone.2+0x54>
     d04:	00000000 	sll	zero,zero,0x0

	case M_EOI:
	  return;
	}
    }
}
     d08:	8fbf002c 	lw	ra,44(sp)
     d0c:	8fb60028 	lw	s6,40(sp)
     d10:	8fb50024 	lw	s5,36(sp)
     d14:	8fb40020 	lw	s4,32(sp)
     d18:	8fb3001c 	lw	s3,28(sp)
     d1c:	8fb20018 	lw	s2,24(sp)
     d20:	8fb10014 	lw	s1,20(sp)
     d24:	8fb00010 	lw	s0,16(sp)
	case M_SOF0:		/* Baseline DCT ( Huffman ) */
	  get_sof ();
	  break;

	case M_SOS:		/* Start of Scan ( Head of Compressed Data ) */
	  get_sos ();
     d28:	08000000 	j	0 <read_byte>
     d2c:	27bd0030 	addiu	sp,sp,48

	case M_EOI:
	  return;
	}
    }
}
     d30:	8fbf002c 	lw	ra,44(sp)
     d34:	8fb60028 	lw	s6,40(sp)
     d38:	8fb50024 	lw	s5,36(sp)
     d3c:	8fb40020 	lw	s4,32(sp)
     d40:	8fb3001c 	lw	s3,28(sp)
     d44:	8fb20018 	lw	s2,24(sp)
     d48:	8fb10014 	lw	s1,20(sp)
     d4c:	8fb00010 	lw	s0,16(sp)
     d50:	03e00008 	jr	ra
     d54:	27bd0030 	addiu	sp,sp,48
	case M_DHT:
	  get_dht ();
	  break;

	case M_DQT:
	  get_dqt ();
     d58:	0c000000 	jal	0 <read_byte>
     d5c:	00000000 	sll	zero,zero,0x0
read_markers (unsigned char *buf)
{
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     d60:	8f820014 	lw	v0,20(gp)
     d64:	0800030c 	j	c30 <read_markers.clone.2+0x54>
     d68:	00000000 	sll	zero,zero,0x0
	case M_SOI:		/* Start of Image */
	  sow_SOI = 1;
	  break;

	case M_SOF0:		/* Baseline DCT ( Huffman ) */
	  get_sof ();
     d6c:	0c000000 	jal	0 <read_byte>
     d70:	00000000 	sll	zero,zero,0x0
read_markers (unsigned char *buf)
{
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     d74:	8f820014 	lw	v0,20(gp)
     d78:	0800030c 	j	c30 <read_markers.clone.2+0x54>
     d7c:	00000000 	sll	zero,zero,0x0
	case M_SOS:		/* Start of Scan ( Head of Compressed Data ) */
	  get_sos ();
	  return;

	case M_DHT:
	  get_dht ();
     d80:	0c000000 	jal	0 <read_byte>
     d84:	00000000 	sll	zero,zero,0x0
read_markers (unsigned char *buf)
{
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     d88:	8f820014 	lw	v0,20(gp)
     d8c:	0800030c 	j	c30 <read_markers.clone.2+0x54>
     d90:	00000000 	sll	zero,zero,0x0
  c1 = read_byte ();
  c2 = read_byte ();

  if (c1 != 0xFF || c2 != M_SOI)
    {
      main_result++;
     d94:	8f820000 	lw	v0,0(gp)
      printf ("Not Jpeg File!\n");
     d98:	3c040000 	lui	a0,0x0
  c1 = read_byte ();
  c2 = read_byte ();

  if (c1 != 0xFF || c2 != M_SOI)
    {
      main_result++;
     d9c:	24420001 	addiu	v0,v0,1
      printf ("Not Jpeg File!\n");
     da0:	24840000 	addiu	a0,a0,0
     da4:	0c000000 	jal	0 <read_byte>
     da8:	af820000 	sw	v0,0(gp)
      EXIT;
     dac:	0c000000 	jal	0 <read_byte>
     db0:	00002021 	addu	a0,zero,zero

00000db4 <read_markers>:



void
read_markers (unsigned char *buf)
{
     db4:	27bdffd0 	addiu	sp,sp,-48
     db8:	afb50024 	sw	s5,36(sp)
     dbc:	afb40020 	sw	s4,32(sp)
     dc0:	afb3001c 	sw	s3,28(sp)
      else
	{
	  unread_marker = next_marker ();
	}

      printf ("\nmarker = 0x%x\n", unread_marker);
     dc4:	3c140000 	lui	s4,0x0

      if (unread_marker != out_unread_marker[i_marker++])
     dc8:	3c130000 	lui	s3,0x0
	{
		main_result++;
	}


      switch (unread_marker)
     dcc:	3c150000 	lui	s5,0x0



void
read_markers (unsigned char *buf)
{
     dd0:	afb60028 	sw	s6,40(sp)
     dd4:	afb20018 	sw	s2,24(sp)
     dd8:	afb00010 	sw	s0,16(sp)
     ddc:	afbf002c 	sw	ra,44(sp)
     de0:	afb10014 	sw	s1,20(sp)
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     de4:	af840014 	sw	a0,20(gp)

  sow_SOI = 0;
     de8:	00009021 	addu	s2,zero,zero

  for (;;)
    {
      c = read_byte ();

      while (c != 0xff)
     dec:	241000ff 	addiu	s0,zero,255
{
  int c1, c2;
  c1 = read_byte ();
  c2 = read_byte ();

  if (c1 != 0xFF || c2 != M_SOI)
     df0:	241600d8 	addiu	s6,zero,216
      else
	{
	  unread_marker = next_marker ();
	}

      printf ("\nmarker = 0x%x\n", unread_marker);
     df4:	26940000 	addiu	s4,s4,0

      if (unread_marker != out_unread_marker[i_marker++])
     df8:	26730000 	addiu	s3,s3,0
	{
		main_result++;
	}


      switch (unread_marker)
     dfc:	26b50070 	addiu	s5,s5,112
  unread_marker = 0;

  /* Read the head of the marker */
  for (;;)
    {
      if (!sow_SOI)
     e00:	16400025 	bnez	s2,e98 <read_markers+0xe4>
     e04:	24850002 	addiu	a1,a0,2
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     e08:	90830000 	lbu	v1,0(a0)
     e0c:	90820001 	lbu	v0,1(a0)
{
  int c1, c2;
  c1 = read_byte ();
  c2 = read_byte ();

  if (c1 != 0xFF || c2 != M_SOI)
     e10:	14700054 	bne	v1,s0,f64 <read_markers+0x1b0>
     e14:	af850014 	sw	a1,20(gp)
     e18:	14560052 	bne	v0,s6,f64 <read_markers+0x1b0>
     e1c:	241100d8 	addiu	s1,zero,216
      else
	{
	  unread_marker = next_marker ();
	}

      printf ("\nmarker = 0x%x\n", unread_marker);
     e20:	02802021 	addu	a0,s4,zero
     e24:	0c000000 	jal	0 <read_byte>
     e28:	02202821 	addu	a1,s1,zero

      if (unread_marker != out_unread_marker[i_marker++])
     e2c:	8f820000 	lw	v0,0(gp)
     e30:	00000000 	sll	zero,zero,0x0
     e34:	00021880 	sll	v1,v0,0x2
     e38:	00731821 	addu	v1,v1,s3
     e3c:	8c630000 	lw	v1,0(v1)
     e40:	24420001 	addiu	v0,v0,1
     e44:	12230005 	beq	s1,v1,e5c <read_markers+0xa8>
     e48:	af820000 	sw	v0,0(gp)
	{
		main_result++;
     e4c:	8f820000 	lw	v0,0(gp)
     e50:	00000000 	sll	zero,zero,0x0
     e54:	24420001 	addiu	v0,v0,1
     e58:	af820000 	sw	v0,0(gp)
	}


      switch (unread_marker)
     e5c:	2631ff40 	addiu	s1,s1,-192
     e60:	2e22001c 	sltiu	v0,s1,28
     e64:	10400019 	beqz	v0,ecc <read_markers+0x118>
     e68:	00118880 	sll	s1,s1,0x2
     e6c:	02b18821 	addu	s1,s5,s1
     e70:	8e220000 	lw	v0,0(s1)
     e74:	00000000 	sll	zero,zero,0x0
     e78:	00400008 	jr	v0
     e7c:	00000000 	sll	zero,zero,0x0
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     e80:	90910000 	lbu	s1,0(a0)
     e84:	00000000 	sll	zero,zero,0x0

      do
	{
	  c = read_byte ();
	}
      while (c == 0xff);
     e88:	1230fffd 	beq	s1,s0,e80 <read_markers+0xcc>
     e8c:	24840001 	addiu	a0,a0,1
      if (c != 0)
     e90:	1620000b 	bnez	s1,ec0 <read_markers+0x10c>
     e94:	00000000 	sll	zero,zero,0x0
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     e98:	90820000 	lbu	v0,0(a0)
     e9c:	00000000 	sll	zero,zero,0x0

  for (;;)
    {
      c = read_byte ();

      while (c != 0xff)
     ea0:	1050fff7 	beq	v0,s0,e80 <read_markers+0xcc>
     ea4:	24840001 	addiu	a0,a0,1
 *  Read from Buffer
 */
int
read_byte (void)
{
  return *ReadBuf++;
     ea8:	90820000 	lbu	v0,0(a0)
     eac:	00000000 	sll	zero,zero,0x0

  for (;;)
    {
      c = read_byte ();

      while (c != 0xff)
     eb0:	1450fff9 	bne	v0,s0,e98 <read_markers+0xe4>
     eb4:	24840001 	addiu	a0,a0,1
     eb8:	080003a0 	j	e80 <read_markers+0xcc>
     ebc:	00000000 	sll	zero,zero,0x0
      do
	{
	  c = read_byte ();
	}
      while (c == 0xff);
      if (c != 0)
     ec0:	08000388 	j	e20 <read_markers+0x6c>
     ec4:	af840014 	sw	a0,20(gp)


      switch (unread_marker)
	{
	case M_SOI:		/* Start of Image */
	  sow_SOI = 1;
     ec8:	24120001 	addiu	s2,zero,1
read_markers (unsigned char *buf)
{
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     ecc:	8f840014 	lw	a0,20(gp)
     ed0:	08000380 	j	e00 <read_markers+0x4c>
     ed4:	00000000 	sll	zero,zero,0x0

	case M_EOI:
	  return;
	}
    }
}
     ed8:	8fbf002c 	lw	ra,44(sp)
     edc:	8fb60028 	lw	s6,40(sp)
     ee0:	8fb50024 	lw	s5,36(sp)
     ee4:	8fb40020 	lw	s4,32(sp)
     ee8:	8fb3001c 	lw	s3,28(sp)
     eec:	8fb20018 	lw	s2,24(sp)
     ef0:	8fb10014 	lw	s1,20(sp)
     ef4:	8fb00010 	lw	s0,16(sp)
	case M_SOF0:		/* Baseline DCT ( Huffman ) */
	  get_sof ();
	  break;

	case M_SOS:		/* Start of Scan ( Head of Compressed Data ) */
	  get_sos ();
     ef8:	08000000 	j	0 <read_byte>
     efc:	27bd0030 	addiu	sp,sp,48

	case M_EOI:
	  return;
	}
    }
}
     f00:	8fbf002c 	lw	ra,44(sp)
     f04:	8fb60028 	lw	s6,40(sp)
     f08:	8fb50024 	lw	s5,36(sp)
     f0c:	8fb40020 	lw	s4,32(sp)
     f10:	8fb3001c 	lw	s3,28(sp)
     f14:	8fb20018 	lw	s2,24(sp)
     f18:	8fb10014 	lw	s1,20(sp)
     f1c:	8fb00010 	lw	s0,16(sp)
     f20:	03e00008 	jr	ra
     f24:	27bd0030 	addiu	sp,sp,48
	case M_DHT:
	  get_dht ();
	  break;

	case M_DQT:
	  get_dqt ();
     f28:	0c000000 	jal	0 <read_byte>
     f2c:	00000000 	sll	zero,zero,0x0
read_markers (unsigned char *buf)
{
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     f30:	8f840014 	lw	a0,20(gp)
     f34:	08000380 	j	e00 <read_markers+0x4c>
     f38:	00000000 	sll	zero,zero,0x0
	case M_SOI:		/* Start of Image */
	  sow_SOI = 1;
	  break;

	case M_SOF0:		/* Baseline DCT ( Huffman ) */
	  get_sof ();
     f3c:	0c000000 	jal	0 <read_byte>
     f40:	00000000 	sll	zero,zero,0x0
read_markers (unsigned char *buf)
{
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     f44:	8f840014 	lw	a0,20(gp)
     f48:	08000380 	j	e00 <read_markers+0x4c>
     f4c:	00000000 	sll	zero,zero,0x0
	case M_SOS:		/* Start of Scan ( Head of Compressed Data ) */
	  get_sos ();
	  return;

	case M_DHT:
	  get_dht ();
     f50:	0c000000 	jal	0 <read_byte>
     f54:	00000000 	sll	zero,zero,0x0
read_markers (unsigned char *buf)
{
  int unread_marker;
  int sow_SOI;

  ReadBuf = buf;
     f58:	8f840014 	lw	a0,20(gp)
     f5c:	08000380 	j	e00 <read_markers+0x4c>
     f60:	00000000 	sll	zero,zero,0x0
  c1 = read_byte ();
  c2 = read_byte ();

  if (c1 != 0xFF || c2 != M_SOI)
    {
      main_result++;
     f64:	8f820000 	lw	v0,0(gp)
      printf ("Not Jpeg File!\n");
     f68:	3c040000 	lui	a0,0x0
  c1 = read_byte ();
  c2 = read_byte ();

  if (c1 != 0xFF || c2 != M_SOI)
    {
      main_result++;
     f6c:	24420001 	addiu	v0,v0,1
      printf ("Not Jpeg File!\n");
     f70:	24840000 	addiu	a0,a0,0
     f74:	0c000000 	jal	0 <read_byte>
     f78:	af820000 	sw	v0,0(gp)
      EXIT;
     f7c:	0c000000 	jal	0 <read_byte>
     f80:	00002021 	addu	a0,zero,zero

00000f84 <ChenIDct>:
 * input vectors that represent x=input, and y=output, and must be
 * defined (and storage allocated) before this routine is called.
 */
void
ChenIDct (int *x, int *y)
{
     f84:	27bdffd8 	addiu	sp,sp,-40
     f88:	afbe0024 	sw	s8,36(sp)
     f8c:	afb70020 	sw	s7,32(sp)
     f90:	afb6001c 	sw	s6,28(sp)
     f94:	afb50018 	sw	s5,24(sp)
     f98:	afb40014 	sw	s4,20(sp)
     f9c:	afb30010 	sw	s3,16(sp)
     fa0:	afb2000c 	sw	s2,12(sp)
     fa4:	afb10008 	sw	s1,8(sp)
     fa8:	afb00004 	sw	s0,4(sp)
     fac:	afa5002c 	sw	a1,44(sp)
      *aptr = b0 - c3;
    }

  /* Loop over rows */

  for (i = 0; i < 8; i++)
     fb0:	00a01021 	addu	v0,a1,zero
  register int b0, b1, b2, b3;
  register int c0, c1, c2, c3;

  /* Loop over columns */

  for (i = 0; i < 8; i++)
     fb4:	00004021 	addu	t0,zero,zero
      aptr += 8;
      a0 = LS (*aptr, 2);
      aptr += 8;
      b2 = LS (*aptr, 2);
      aptr += 8;
      a1 = LS (*aptr, 2);
     fb8:	8c870060 	lw	a3,96(a0)
      aptr += 8;
      b1 = LS (*aptr, 2);
      aptr += 8;
      a2 = LS (*aptr, 2);
     fbc:	8c8600a0 	lw	a2,160(a0)
  for (i = 0; i < 8; i++)
    {
      aptr = x + i;
      b0 = LS (*aptr, 2);
      aptr += 8;
      a0 = LS (*aptr, 2);
     fc0:	8c850020 	lw	a1,32(a0)
      aptr += 8;
      a2 = LS (*aptr, 2);
      aptr += 8;
      b3 = LS (*aptr, 2);
      aptr += 8;
      a3 = LS (*aptr, 2);
     fc4:	8c8300e0 	lw	v1,224(a0)
      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
     fc8:	00076140 	sll	t4,a3,0x5
     fcc:	00064a00 	sll	t1,a2,0x8
     fd0:	00075a00 	sll	t3,a3,0x8
     fd4:	00065140 	sll	t2,a2,0x5
     fd8:	018b5821 	addu	t3,t4,t3
     fdc:	01495021 	addu	t2,t2,t1
      aptr += 8;
      a0 = LS (*aptr, 2);
      aptr += 8;
      b2 = LS (*aptr, 2);
      aptr += 8;
      a1 = LS (*aptr, 2);
     fe0:	00073880 	sll	a3,a3,0x2
      aptr += 8;
      b1 = LS (*aptr, 2);
      aptr += 8;
      a2 = LS (*aptr, 2);
     fe4:	00063080 	sll	a2,a2,0x2

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
     fe8:	00036100 	sll	t4,v1,0x4
     fec:	00054900 	sll	t1,a1,0x4
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
     ff0:	01673823 	subu	a3,t3,a3
     ff4:	01463023 	subu	a2,t2,a2

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
     ff8:	00035a80 	sll	t3,v1,0xa
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
     ffc:	00055280 	sll	t2,a1,0xa

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1000:	0005c980 	sll	t9,a1,0x6
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1004:	0003c180 	sll	t8,v1,0x6

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1008:	0139c821 	addu	t9,t1,t9
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    100c:	00077880 	sll	t7,a3,0x2
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1010:	0198c021 	addu	t8,t4,t8
    1014:	01494823 	subu	t1,t2,t1
      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    1018:	00067080 	sll	t6,a2,0x2
      aptr += 8;
      a2 = LS (*aptr, 2);
      aptr += 8;
      b3 = LS (*aptr, 2);
      aptr += 8;
      a3 = LS (*aptr, 2);
    101c:	00031880 	sll	v1,v1,0x2

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1020:	016c6023 	subu	t4,t3,t4
  for (i = 0; i < 8; i++)
    {
      aptr = x + i;
      b0 = LS (*aptr, 2);
      aptr += 8;
      a0 = LS (*aptr, 2);
    1024:	00052880 	sll	a1,a1,0x2

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1028:	006c5823 	subu	t3,v1,t4
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    102c:	01c63023 	subu	a2,t6,a2

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1030:	00198880 	sll	s1,t9,0x2
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
    1034:	01e73823 	subu	a3,t7,a3
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1038:	00185080 	sll	t2,t8,0x2
    103c:	01252823 	subu	a1,t1,a1
      aptr += 8;
      b2 = LS (*aptr, 2);
      aptr += 8;
      a1 = LS (*aptr, 2);
      aptr += 8;
      b1 = LS (*aptr, 2);
    1040:	8c900080 	lw	s0,128(a0)
  /* Loop over columns */

  for (i = 0; i < 8; i++)
    {
      aptr = x + i;
      b0 = LS (*aptr, 2);
    1044:	8c8d0000 	lw	t5,0(a0)

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1048:	0331c821 	addu	t9,t9,s1
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    104c:	00066040 	sll	t4,a2,0x1
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
    1050:	00073840 	sll	a3,a3,0x1
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1054:	030ac021 	addu	t8,t8,t2
    1058:	00052840 	sll	a1,a1,0x1

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    105c:	000b5840 	sll	t3,t3,0x1
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
    1060:	01c77021 	addu	t6,t6,a3
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1064:	03055021 	addu	t2,t8,a1

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1068:	01795821 	addu	t3,t3,t9
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    106c:	018f6023 	subu	t4,t4,t7
      aptr += 8;
      b1 = LS (*aptr, 2);
      aptr += 8;
      a2 = LS (*aptr, 2);
      aptr += 8;
      b3 = LS (*aptr, 2);
    1070:	8c9800c0 	lw	t8,192(a0)
  /* Loop over columns */

  for (i = 0; i < 8; i++)
    {
      aptr = x + i;
      b0 = LS (*aptr, 2);
    1074:	000d6880 	sll	t5,t5,0x2
      aptr += 8;
      b2 = LS (*aptr, 2);
      aptr += 8;
      a1 = LS (*aptr, 2);
      aptr += 8;
      b1 = LS (*aptr, 2);
    1078:	00103080 	sll	a2,s0,0x2
      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    107c:	000c6243 	sra	t4,t4,0x9
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
    1080:	000e4a43 	sra	t1,t6,0x9
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1084:	000a5243 	sra	t2,t2,0x9

      /* Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1088:	000b5a43 	sra	t3,t3,0x9
      aptr = x + i;
      b0 = LS (*aptr, 2);
      aptr += 8;
      a0 = LS (*aptr, 2);
      aptr += 8;
      b2 = LS (*aptr, 2);
    108c:	8c990040 	lw	t9,64(a0)
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    1090:	00cd3821 	addu	a3,a2,t5
      b3 = a0 - a3;

      /* Second Butterfly */

      a0 = c0 + c1;
      a1 = c0 - c1;
    1094:	016c1823 	subu	v1,t3,t4
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));
    1098:	01a63023 	subu	a2,t5,a2

      /* Second Butterfly */

      a0 = c0 + c1;
      a1 = c0 - c1;
      a2 = c3 - c2;
    109c:	01496823 	subu	t5,t2,t1
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    10a0:	01a32823 	subu	a1,t5,v1
      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    10a4:	00189900 	sll	s3,t8,0x4
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
      c2 = MSCALE (c1d4 * (a2 + a1));
    10a8:	01a31821 	addu	v1,t5,v1
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));
    10ac:	00068900 	sll	s1,a2,0x4
    10b0:	00066880 	sll	t5,a2,0x2

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    10b4:	0018f200 	sll	s8,t8,0x8
    10b8:	0019a100 	sll	s4,t9,0x4
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    10bc:	00077080 	sll	t6,a3,0x2
      aptr = x + i;
      b0 = LS (*aptr, 2);
      aptr += 8;
      a0 = LS (*aptr, 2);
      aptr += 8;
      b2 = LS (*aptr, 2);
    10c0:	00197880 	sll	t7,t9,0x2
      aptr += 8;
      b1 = LS (*aptr, 2);
      aptr += 8;
      a2 = LS (*aptr, 2);
      aptr += 8;
      b3 = LS (*aptr, 2);
    10c4:	00188080 	sll	s0,t8,0x2
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));
    10c8:	022d8823 	subu	s1,s1,t5
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
      c2 = MSCALE (c1d4 * (a2 + a1));
    10cc:	0003b100 	sll	s6,v1,0x4
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    10d0:	00079100 	sll	s2,a3,0x4
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    10d4:	0019aa00 	sll	s5,t9,0x8
      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    10d8:	03d3f023 	subu	s8,s8,s3
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
      c2 = MSCALE (c1d4 * (a2 + a1));
    10dc:	00036880 	sll	t5,v1,0x2
      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    10e0:	0019c9c0 	sll	t9,t9,0x7
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    10e4:	0018c1c0 	sll	t8,t8,0x7
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    10e8:	024e9023 	subu	s2,s2,t6
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    10ec:	0005b900 	sll	s7,a1,0x4
      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    10f0:	0334c823 	subu	t9,t9,s4
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    10f4:	0313c023 	subu	t8,t8,s3
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
      c2 = MSCALE (c1d4 * (a2 + a1));
    10f8:	02cd6823 	subu	t5,s6,t5

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    10fc:	02b4a823 	subu	s5,s5,s4
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    1100:	00057080 	sll	t6,a1,0x2
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));
    1104:	00119900 	sll	s3,s1,0x4

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    1108:	03d0f023 	subu	s8,s8,s0
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    110c:	02ee7023 	subu	t6,s7,t6
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    1110:	0012a100 	sll	s4,s2,0x4
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    1114:	02afa823 	subu	s5,s5,t7
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));
    1118:	02718823 	subu	s1,s3,s1

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    111c:	001ef0c0 	sll	s8,s8,0x3
    1120:	0019b8c0 	sll	s7,t9,0x3
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
      c2 = MSCALE (c1d4 * (a2 + a1));
    1124:	000d9900 	sll	s3,t5,0x4
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    1128:	02929023 	subu	s2,s4,s2
      a1 = MSCALE (c1d4 * (b0 - b1));
    112c:	02268821 	addu	s1,s1,a2
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
      c2 = MSCALE (c1d4 * (a2 + a1));
    1130:	026d6823 	subu	t5,s3,t5

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    1134:	0018b0c0 	sll	s6,t8,0x3
    1138:	0015a8c0 	sll	s5,s5,0x3
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    113c:	000ea100 	sll	s4,t6,0x4
      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    1140:	03d08021 	addu	s0,s8,s0
    1144:	02f9c823 	subu	t9,s7,t9
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    1148:	02479021 	addu	s2,s2,a3
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    114c:	028e7023 	subu	t6,s4,t6
      c2 = MSCALE (c1d4 * (a2 + a1));
    1150:	01a31821 	addu	v1,t5,v1

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    1154:	02d8c023 	subu	t8,s6,t8
    1158:	02af7821 	addu	t7,s5,t7
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));
    115c:	00118840 	sll	s1,s1,0x1

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    1160:	0330c823 	subu	t9,t9,s0
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    1164:	01c52821 	addu	a1,t6,a1
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));
    1168:	00118a43 	sra	s1,s1,0x9

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    116c:	0019ca43 	sra	t9,t9,0x9
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    1170:	00129040 	sll	s2,s2,0x1
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    1174:	030f7821 	addu	t7,t8,t7
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
      c2 = MSCALE (c1d4 * (a2 + a1));
    1178:	00031840 	sll	v1,v1,0x1

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));

      b0 = a0 + a3;
      b1 = a1 + a2;
    117c:	02396821 	addu	t5,s1,t9
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    1180:	00129243 	sra	s2,s2,0x9
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    1184:	000f7a43 	sra	t7,t7,0x9
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
      c2 = MSCALE (c1d4 * (a2 + a1));
    1188:	00031a43 	sra	v1,v1,0x9
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    118c:	00052840 	sll	a1,a1,0x1
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));

      b0 = a0 + a3;
    1190:	01f23021 	addu	a2,t7,s2
      b2 = a1 - a2;
      b3 = a0 - a3;

      /* Second Butterfly */

      a0 = c0 + c1;
    1194:	018b5821 	addu	t3,t4,t3
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;
    1198:	01494821 	addu	t1,t2,t1
      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));

      b0 = a0 + a3;
      b1 = a1 + a2;
      b2 = a1 - a2;
    119c:	0239c823 	subu	t9,s1,t9
      b3 = a0 - a3;
    11a0:	024f9023 	subu	s2,s2,t7
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    11a4:	00052a43 	sra	a1,a1,0x9
      c3 = a3;

      aptr = y + i;
      *aptr = b0 + c3;
      aptr += 8;
      *aptr = b1 + c2;
    11a8:	006d6021 	addu	t4,v1,t5
      aptr += 8;
      *aptr = b3 - c0;
      aptr += 8;
      *aptr = b2 - c1;
      aptr += 8;
      *aptr = b1 - c2;
    11ac:	01a31823 	subu	v1,t5,v1
      c1 = MSCALE (c1d4 * (a2 - a1));
      c2 = MSCALE (c1d4 * (a2 + a1));
      c3 = a3;

      aptr = y + i;
      *aptr = b0 + c3;
    11b0:	01267021 	addu	t6,t1,a2
      aptr += 8;
      *aptr = b1 + c2;
      aptr += 8;
      *aptr = b2 + c1;
    11b4:	00b95021 	addu	t2,a1,t9
      aptr += 8;
      *aptr = b3 + c0;
    11b8:	01723821 	addu	a3,t3,s2
      aptr += 8;
      *aptr = b3 - c0;
      aptr += 8;
      *aptr = b2 - c1;
      aptr += 8;
      *aptr = b1 - c2;
    11bc:	ac4300c0 	sw	v1,192(v0)
      aptr += 8;
      *aptr = b2 + c1;
      aptr += 8;
      *aptr = b3 + c0;
      aptr += 8;
      *aptr = b3 - c0;
    11c0:	024b5823 	subu	t3,s2,t3
      aptr += 8;
      *aptr = b2 - c1;
    11c4:	03252823 	subu	a1,t9,a1
      aptr += 8;
      *aptr = b1 - c2;
      aptr += 8;
      *aptr = b0 - c3;
    11c8:	00c94823 	subu	t1,a2,t1
  register int b0, b1, b2, b3;
  register int c0, c1, c2, c3;

  /* Loop over columns */

  for (i = 0; i < 8; i++)
    11cc:	25080001 	addiu	t0,t0,1
    11d0:	24030008 	addiu	v1,zero,8
      c1 = MSCALE (c1d4 * (a2 - a1));
      c2 = MSCALE (c1d4 * (a2 + a1));
      c3 = a3;

      aptr = y + i;
      *aptr = b0 + c3;
    11d4:	ac4e0000 	sw	t6,0(v0)
      aptr += 8;
      *aptr = b1 + c2;
    11d8:	ac4c0020 	sw	t4,32(v0)
      aptr += 8;
      *aptr = b2 + c1;
    11dc:	ac4a0040 	sw	t2,64(v0)
      aptr += 8;
      *aptr = b3 + c0;
    11e0:	ac470060 	sw	a3,96(v0)
      aptr += 8;
      *aptr = b3 - c0;
    11e4:	ac4b0080 	sw	t3,128(v0)
      aptr += 8;
      *aptr = b2 - c1;
    11e8:	ac4500a0 	sw	a1,160(v0)
      aptr += 8;
      *aptr = b1 - c2;
      aptr += 8;
      *aptr = b0 - c3;
    11ec:	ac4900e0 	sw	t1,224(v0)
  register int b0, b1, b2, b3;
  register int c0, c1, c2, c3;

  /* Loop over columns */

  for (i = 0; i < 8; i++)
    11f0:	24840004 	addiu	a0,a0,4
    11f4:	1503ff70 	bne	t0,v1,fb8 <ChenIDct+0x34>
    11f8:	24420004 	addiu	v0,v0,4
    11fc:	00002821 	addu	a1,zero,zero
      *aptr = b0 - c3;
    }

  /* Loop over rows */

  for (i = 0; i < 8; i++)
    1200:	24160008 	addiu	s6,zero,8
    {
      aptr = y + LS (i, 3);
    1204:	8fa3002c 	lw	v1,44(sp)
    1208:	00051140 	sll	v0,a1,0x5
    120c:	00621021 	addu	v0,v1,v0
      b0 = *(aptr++);
      a0 = *(aptr++);
      b2 = *(aptr++);
      a1 = *(aptr++);
    1210:	8c46000c 	lw	a2,12(v0)
      b1 = *(aptr++);
      a2 = *(aptr++);
    1214:	8c470014 	lw	a3,20(v0)

  for (i = 0; i < 8; i++)
    {
      aptr = y + LS (i, 3);
      b0 = *(aptr++);
      a0 = *(aptr++);
    1218:	8c430004 	lw	v1,4(v0)
      b2 = *(aptr++);
      a1 = *(aptr++);
      b1 = *(aptr++);
      a2 = *(aptr++);
      b3 = *(aptr++);
      a3 = *(aptr);
    121c:	8c44001c 	lw	a0,28(v0)
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    1220:	000758c0 	sll	t3,a3,0x3
    1224:	000650c0 	sll	t2,a2,0x3
    1228:	00074980 	sll	t1,a3,0x6
    122c:	00064180 	sll	t0,a2,0x6
    1230:	01694821 	addu	t1,t3,t1
    1234:	01484021 	addu	t0,t2,t0
      /*
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1238:	00046080 	sll	t4,a0,0x2
    123c:	00035080 	sll	t2,v1,0x2
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    1240:	01063023 	subu	a2,t0,a2
      /*
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1244:	00046a00 	sll	t5,a0,0x8
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1248:	00035a00 	sll	t3,v1,0x8
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    124c:	01273823 	subu	a3,t1,a3
      /*
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1250:	00037100 	sll	t6,v1,0x4
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1254:	00044100 	sll	t0,a0,0x4
      /*
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1258:	014e7021 	addu	t6,t2,t6
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    125c:	01884021 	addu	t0,t4,t0
    1260:	016a5023 	subu	t2,t3,t2
      /*
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1264:	01ac6023 	subu	t4,t5,t4
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    1268:	00074880 	sll	t1,a3,0x2
    126c:	00067880 	sll	t7,a2,0x2
      /*
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1270:	008c2023 	subu	a0,a0,t4
    1274:	000e6880 	sll	t5,t6,0x2
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    1278:	01273823 	subu	a3,t1,a3
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
    127c:	01e63023 	subu	a2,t7,a2
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1280:	00085880 	sll	t3,t0,0x2
    1284:	01431823 	subu	v1,t2,v1
      /*
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    1288:	00042040 	sll	a0,a0,0x1
    128c:	01cd6821 	addu	t5,t6,t5
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    1290:	00073840 	sll	a3,a3,0x1
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
    1294:	00063040 	sll	a2,a2,0x1
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    1298:	010b5821 	addu	t3,t0,t3
    129c:	00031840 	sll	v1,v1,0x1
  /* Loop over rows */

  for (i = 0; i < 8; i++)
    {
      aptr = y + LS (i, 3);
      b0 = *(aptr++);
    12a0:	8c4e0000 	lw	t6,0(v0)
      a0 = *(aptr++);
      b2 = *(aptr++);
      a1 = *(aptr++);
      b1 = *(aptr++);
    12a4:	8c480010 	lw	t0,16(v0)
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    12a8:	00ef7823 	subu	t7,a3,t7
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
    12ac:	01264821 	addu	t1,t1,a2
      /*
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    12b0:	008d6821 	addu	t5,a0,t5
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    12b4:	01635821 	addu	t3,t3,v1
      a0 = *(aptr++);
      b2 = *(aptr++);
      a1 = *(aptr++);
      b1 = *(aptr++);
      a2 = *(aptr++);
      b3 = *(aptr++);
    12b8:	8c440018 	lw	a0,24(v0)
  for (i = 0; i < 8; i++)
    {
      aptr = y + LS (i, 3);
      b0 = *(aptr++);
      a0 = *(aptr++);
      b2 = *(aptr++);
    12bc:	8c430008 	lw	v1,8(v0)
      /*
         Split into even mode  b0 = x0  b1 = x4  b2 = x2  b3 = x6.
         And the odd terms a0 = x1 a1 = x3 a2 = x5 a3 = x7.
       */

      c0 = MSCALE ((c7d16 * a0) - (c1d16 * a3));
    12c0:	000d6a43 	sra	t5,t5,0x9
      c1 = MSCALE ((c3d16 * a2) - (c5d16 * a1));
    12c4:	000f6243 	sra	t4,t7,0x9
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
    12c8:	00095243 	sra	t2,t1,0x9
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));
    12cc:	000b5a43 	sra	t3,t3,0x9

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    12d0:	010e4821 	addu	t1,t0,t6
      b3 = a0 - a3;

      /* Second Butterfly */

      a0 = c0 + c1;
      a1 = c0 - c1;
    12d4:	01ac3023 	subu	a2,t5,t4
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));
    12d8:	01c84023 	subu	t0,t6,t0

      /* Second Butterfly */

      a0 = c0 + c1;
      a1 = c0 - c1;
      a2 = c3 - c2;
    12dc:	016a7023 	subu	t6,t3,t2
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    12e0:	01c63823 	subu	a3,t6,a2
      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    12e4:	0004c080 	sll	t8,a0,0x2
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
      c2 = MSCALE (c1d4 * (a2 + a1));
    12e8:	01c63021 	addu	a2,t6,a2
      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    12ec:	0003c880 	sll	t9,v1,0x2
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    12f0:	00097880 	sll	t7,t1,0x2
      a1 = MSCALE (c1d4 * (b0 - b1));
    12f4:	00087080 	sll	t6,t0,0x2
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    12f8:	00098900 	sll	s1,t1,0x4
      a1 = MSCALE (c1d4 * (b0 - b1));
    12fc:	00088100 	sll	s0,t0,0x4

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    1300:	0004f180 	sll	s8,a0,0x6
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    1304:	0003a180 	sll	s4,v1,0x6
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    1308:	022f8823 	subu	s1,s1,t7
      a1 = MSCALE (c1d4 * (b0 - b1));
    130c:	020e8023 	subu	s0,s0,t6

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    1310:	0003b940 	sll	s7,v1,0x5
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    1314:	0004a940 	sll	s5,a0,0x5
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    1318:	00079900 	sll	s3,a3,0x4
      c2 = MSCALE (c1d4 * (a2 + a1));
    131c:	00069100 	sll	s2,a2,0x4
      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    1320:	03d8f023 	subu	s8,s8,t8
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    1324:	0299a023 	subu	s4,s4,t9
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    1328:	00077880 	sll	t7,a3,0x2
      c2 = MSCALE (c1d4 * (a2 + a1));
    132c:	00067080 	sll	t6,a2,0x2
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    1330:	026f7823 	subu	t7,s3,t7
      c2 = MSCALE (c1d4 * (a2 + a1));
    1334:	024e7023 	subu	t6,s2,t6
      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    1338:	02f9c823 	subu	t9,s7,t9
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    133c:	02b8c023 	subu	t8,s5,t8
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    1340:	00119900 	sll	s3,s1,0x4
      a1 = MSCALE (c1d4 * (b0 - b1));
    1344:	00109100 	sll	s2,s0,0x4

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    1348:	03c4f023 	subu	s8,s8,a0
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    134c:	0283a023 	subu	s4,s4,v1
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    1350:	02718823 	subu	s1,s3,s1
      a1 = MSCALE (c1d4 * (b0 - b1));
    1354:	02508023 	subu	s0,s2,s0

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    1358:	001ef0c0 	sll	s8,s8,0x3
    135c:	0019b8c0 	sll	s7,t9,0x3
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    1360:	0018a8c0 	sll	s5,t8,0x3
    1364:	0014a0c0 	sll	s4,s4,0x3
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    1368:	000f9900 	sll	s3,t7,0x4
      c2 = MSCALE (c1d4 * (a2 + a1));
    136c:	000e9100 	sll	s2,t6,0x4
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
      a1 = MSCALE (c1d4 * (b0 - b1));
    1370:	02088021 	addu	s0,s0,t0

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    1374:	02831821 	addu	v1,s4,v1
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    1378:	026f7823 	subu	t7,s3,t7
      c2 = MSCALE (c1d4 * (a2 + a1));
    137c:	024e7023 	subu	t6,s2,t6
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    1380:	02294821 	addu	t1,s1,t1
      a1 = MSCALE (c1d4 * (b0 - b1));

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    1384:	03c42021 	addu	a0,s8,a0
    1388:	02f9c823 	subu	t9,s7,t9
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    138c:	02b8c023 	subu	t8,s5,t8
    1390:	0303c021 	addu	t8,t8,v1
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    1394:	01e73821 	addu	a3,t7,a3
      c2 = MSCALE (c1d4 * (a2 + a1));
    1398:	01c63021 	addu	a2,t6,a2
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    139c:	00094840 	sll	t1,t1,0x1
      a1 = MSCALE (c1d4 * (b0 - b1));
    13a0:	00108040 	sll	s0,s0,0x1

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    13a4:	03242023 	subu	a0,t9,a0
      c2 = MSCALE ((c3d16 * a1) + (c5d16 * a2));
      c3 = MSCALE ((c1d16 * a0) + (c7d16 * a3));

      /* First Butterfly on even terms. */

      a0 = MSCALE (c1d4 * (b0 + b1));
    13a8:	00094a43 	sra	t1,t1,0x9
      a1 = MSCALE (c1d4 * (b0 - b1));
    13ac:	00108243 	sra	s0,s0,0x9

      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
    13b0:	00042243 	sra	a0,a0,0x9
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));
    13b4:	0018c243 	sra	t8,t8,0x9
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    13b8:	00073840 	sll	a3,a3,0x1
      c2 = MSCALE (c1d4 * (a2 + a1));
    13bc:	00063040 	sll	a2,a2,0x1
      a2 = MSCALE ((c3d8 * b2) - (c1d8 * b3));
      a3 = MSCALE ((c1d8 * b2) + (c3d8 * b3));

      /* Calculate last set of b's */

      b0 = a0 + a3;
    13c0:	03091821 	addu	v1,t8,t1
      b1 = a1 + a2;
    13c4:	00907021 	addu	t6,a0,s0
      b2 = a1 - a2;
      b3 = a0 - a3;

      /* Second Butterfly */

      a0 = c0 + c1;
    13c8:	01ac6021 	addu	t4,t5,t4
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;
    13cc:	016a5021 	addu	t2,t3,t2

      /* Calculate last set of b's */

      b0 = a0 + a3;
      b1 = a1 + a2;
      b2 = a1 - a2;
    13d0:	02042023 	subu	a0,s0,a0
      b3 = a0 - a3;
    13d4:	01384823 	subu	t1,t1,t8
      a1 = c0 - c1;
      a2 = c3 - c2;
      a3 = c3 + c2;

      c0 = a0;
      c1 = MSCALE (c1d4 * (a2 - a1));
    13d8:	00073a43 	sra	a3,a3,0x9
      c2 = MSCALE (c1d4 * (a2 + a1));
    13dc:	00063243 	sra	a2,a2,0x9
      c3 = a3;

      aptr = y + LS (i, 3);
      *(aptr++) = b0 + c3;
    13e0:	01437821 	addu	t7,t2,v1
      *(aptr++) = b1 + c2;
    13e4:	00ce6821 	addu	t5,a2,t6
      *(aptr++) = b2 + c1;
    13e8:	00e45821 	addu	t3,a3,a0
      *(aptr++) = b3 + c0;
    13ec:	01894021 	addu	t0,t4,t1
      *(aptr++) = b3 - c0;
      *(aptr++) = b2 - c1;
    13f0:	00873823 	subu	a3,a0,a3
      aptr = y + LS (i, 3);
      *(aptr++) = b0 + c3;
      *(aptr++) = b1 + c2;
      *(aptr++) = b2 + c1;
      *(aptr++) = b3 + c0;
      *(aptr++) = b3 - c0;
    13f4:	012c6023 	subu	t4,t1,t4
      *(aptr++) = b2 - c1;
      *(aptr++) = b1 - c2;
    13f8:	01c63023 	subu	a2,t6,a2
      *(aptr) = b0 - c3;
    13fc:	006a5023 	subu	t2,v1,t2
      *aptr = b0 - c3;
    }

  /* Loop over rows */

  for (i = 0; i < 8; i++)
    1400:	24a50001 	addiu	a1,a1,1
      c1 = MSCALE (c1d4 * (a2 - a1));
      c2 = MSCALE (c1d4 * (a2 + a1));
      c3 = a3;

      aptr = y + LS (i, 3);
      *(aptr++) = b0 + c3;
    1404:	ac4f0000 	sw	t7,0(v0)
      *(aptr++) = b1 + c2;
    1408:	ac4d0004 	sw	t5,4(v0)
      *(aptr++) = b2 + c1;
    140c:	ac4b0008 	sw	t3,8(v0)
      *(aptr++) = b3 + c0;
    1410:	ac48000c 	sw	t0,12(v0)
      *(aptr++) = b3 - c0;
    1414:	ac4c0010 	sw	t4,16(v0)
      *(aptr++) = b2 - c1;
    1418:	ac470014 	sw	a3,20(v0)
      *(aptr++) = b1 - c2;
    141c:	ac460018 	sw	a2,24(v0)
      *aptr = b0 - c3;
    }

  /* Loop over rows */

  for (i = 0; i < 8; i++)
    1420:	14b6ff78 	bne	a1,s6,1204 <ChenIDct+0x280>
    1424:	ac4a001c 	sw	t2,28(v0)
    1428:	8fa2002c 	lw	v0,44(sp)
    142c:	08000512 	j	1448 <ChenIDct+0x4c4>
    1430:	24040040 	addiu	a0,zero,64
     Retrieve correct accuracy. We have additional factor
     of 16 that must be removed.
   */

  for (i = 0, aptr = y; i < 64; i++, aptr++)
    *aptr = (((*aptr < 0) ? (*aptr - 8) : (*aptr + 8)) / 16);
    1434:	00051903 	sra	v1,a1,0x4
    1438:	2484ffff 	addiu	a0,a0,-1
  /*
     Retrieve correct accuracy. We have additional factor
     of 16 that must be removed.
   */

  for (i = 0, aptr = y; i < 64; i++, aptr++)
    143c:	1080000e 	beqz	a0,1478 <ChenIDct+0x4f4>
    1440:	ac430000 	sw	v1,0(v0)
    1444:	24420004 	addiu	v0,v0,4
    *aptr = (((*aptr < 0) ? (*aptr - 8) : (*aptr + 8)) / 16);
    1448:	8c430000 	lw	v1,0(v0)
    144c:	00000000 	sll	zero,zero,0x0
    1450:	0461fff8 	bgez	v1,1434 <ChenIDct+0x4b0>
    1454:	24650008 	addiu	a1,v1,8
    1458:	2465fff8 	addiu	a1,v1,-8
    145c:	04a1fff5 	bgez	a1,1434 <ChenIDct+0x4b0>
    1460:	00000000 	sll	zero,zero,0x0
    1464:	24650007 	addiu	a1,v1,7
    1468:	00051903 	sra	v1,a1,0x4
    146c:	2484ffff 	addiu	a0,a0,-1
  /*
     Retrieve correct accuracy. We have additional factor
     of 16 that must be removed.
   */

  for (i = 0, aptr = y; i < 64; i++, aptr++)
    1470:	1480fff4 	bnez	a0,1444 <ChenIDct+0x4c0>
    1474:	ac430000 	sw	v1,0(v0)
    *aptr = (((*aptr < 0) ? (*aptr - 8) : (*aptr + 8)) / 16);
}
    1478:	8fbe0024 	lw	s8,36(sp)
    147c:	8fb70020 	lw	s7,32(sp)
    1480:	8fb6001c 	lw	s6,28(sp)
    1484:	8fb50018 	lw	s5,24(sp)
    1488:	8fb40014 	lw	s4,20(sp)
    148c:	8fb30010 	lw	s3,16(sp)
    1490:	8fb2000c 	lw	s2,12(sp)
    1494:	8fb10008 	lw	s1,8(sp)
    1498:	8fb00004 	lw	s0,4(sp)
    149c:	03e00008 	jr	ra
    14a0:	27bd0028 	addiu	sp,sp,40

000014a4 <IZigzagMatrix>:
 * IZigzagMatrix() performs an inverse zig-zag translation on the
 * input imatrix and places the output in omatrix.
 */
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
    14a4:	3c020000 	lui	v0,0x0
    14a8:	24420000 	addiu	v0,v0,0
/*
 * IZigzagMatrix() performs an inverse zig-zag translation on the
 * input imatrix and places the output in omatrix.
 */
void
IZigzagMatrix (int *imatrix, int *omatrix)
    14ac:	24460100 	addiu	a2,v0,256

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    14b0:	8c430000 	lw	v1,0(v0)
    14b4:	24420004 	addiu	v0,v0,4
    14b8:	00031880 	sll	v1,v1,0x2
    14bc:	00831821 	addu	v1,a0,v1
    14c0:	8c630000 	lw	v1,0(v1)
    14c4:	00000000 	sll	zero,zero,0x0
    14c8:	aca30000 	sw	v1,0(a1)
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    14cc:	1446fff8 	bne	v0,a2,14b0 <IZigzagMatrix+0xc>
    14d0:	24a50004 	addiu	a1,a1,4
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    
}
}
    14d4:	03e00008 	jr	ra
    14d8:	00000000 	sll	zero,zero,0x0

000014dc <IQuantize>:
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    14dc:	24020040 	addiu	v0,zero,64
    {
      *mptr = *mptr * (*qmatrix);
    14e0:	8ca30000 	lw	v1,0(a1)
    14e4:	8c860000 	lw	a2,0(a0)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    14e8:	2442ffff 	addiu	v0,v0,-1
    {
      *mptr = *mptr * (*qmatrix);
    14ec:	00c30018 	mult	a2,v1
      qmatrix++;
    14f0:	24a50004 	addiu	a1,a1,4
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    14f4:	00001812 	mflo	v1
    14f8:	ac830000 	sw	v1,0(a0)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    14fc:	1440fff8 	bnez	v0,14e0 <IQuantize+0x4>
    1500:	24840004 	addiu	a0,a0,4
    {
      *mptr = *mptr * (*qmatrix);
      qmatrix++;
    }
}
    1504:	03e00008 	jr	ra
    1508:	00000000 	sll	zero,zero,0x0

0000150c <PostshiftIDctMatrix>:
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    150c:	24020040 	addiu	v0,zero,64
    {
      *mptr += shift;
    1510:	8c830000 	lw	v1,0(a0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1514:	2442ffff 	addiu	v0,v0,-1
    {
      *mptr += shift;
    1518:	00651821 	addu	v1,v1,a1
    151c:	ac830000 	sw	v1,0(a0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1520:	1440fffb 	bnez	v0,1510 <PostshiftIDctMatrix+0x4>
    1524:	24840004 	addiu	a0,a0,4
    {
      *mptr += shift;
    }
}
    1528:	03e00008 	jr	ra
    152c:	00000000 	sll	zero,zero,0x0

00001530 <BoundIDctMatrix>:
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1530:	08000554 	j	1550 <BoundIDctMatrix+0x20>
    1534:	24020040 	addiu	v0,zero,64
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
    1538:	10c00002 	beqz	a2,1544 <BoundIDctMatrix+0x14>
    153c:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = Bound;
    1540:	ac850000 	sw	a1,0(a0)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1544:	2442ffff 	addiu	v0,v0,-1
    1548:	10400009 	beqz	v0,1570 <BoundIDctMatrix+0x40>
    154c:	24840004 	addiu	a0,a0,4
    {
      if (*mptr < 0)
    1550:	8c830000 	lw	v1,0(a0)
    1554:	00000000 	sll	zero,zero,0x0
    1558:	0461fff7 	bgez	v1,1538 <BoundIDctMatrix+0x8>
    155c:	00a3302a 	slt	a2,a1,v1
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1560:	2442ffff 	addiu	v0,v0,-1
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
    1564:	ac800000 	sw	zero,0(a0)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    1568:	1440fff9 	bnez	v0,1550 <BoundIDctMatrix+0x20>
    156c:	24840004 	addiu	a0,a0,4
      else if (*mptr > Bound)
	{
	  *mptr = Bound;
	}
    }
}
    1570:	03e00008 	jr	ra
    1574:	00000000 	sll	zero,zero,0x0

00001578 <WriteOneBlock>:


void
WriteOneBlock (int *store, char *out_buf, int width, int height,
	       int voffs, int hoffs)
{
    1578:	8fa20010 	lw	v0,16(sp)
    157c:	8fa80014 	lw	t0,20(sp)


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    1580:	0047182a 	slt	v1,v0,a3
    1584:	1060001a 	beqz	v1,15f0 <WriteOneBlock+0x78>
    1588:	24490007 	addiu	t1,v0,7
}



void
WriteOneBlock (int *store, char *out_buf, int width, int height,
    158c:	00460018 	mult	v0,a2


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    1590:	250e0007 	addiu	t6,t0,7
    1594:	0106782a 	slt	t7,t0,a2
}



void
WriteOneBlock (int *store, char *out_buf, int width, int height,
    1598:	00001812 	mflo	v1
    159c:	00681821 	addu	v1,v1,t0
    15a0:	00a32821 	addu	a1,a1,v1
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
	    {
	      if (e < width)
    15a4:	11e0000c 	beqz	t7,15d8 <WriteOneBlock+0x60>
    15a8:	01001821 	addu	v1,t0,zero
    15ac:	0800056f 	j	15bc <WriteOneBlock+0x44>
    15b0:	00a05021 	addu	t2,a1,zero
    15b4:	11a00008 	beqz	t5,15d8 <WriteOneBlock+0x60>
    15b8:	254a0001 	addiu	t2,t2,1
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    15bc:	8c8c0000 	lw	t4,0(a0)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    15c0:	24630001 	addiu	v1,v1,1
    15c4:	01c3582a 	slt	t3,t6,v1
	    {
	      if (e < width)
    15c8:	0066682a 	slt	t5,v1,a2
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    15cc:	a14c0000 	sb	t4,0(t2)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    15d0:	1160fff8 	beqz	t3,15b4 <WriteOneBlock+0x3c>
    15d4:	24840004 	addiu	a0,a0,4
{
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    15d8:	24420001 	addiu	v0,v0,1
    15dc:	0122182a 	slt	v1,t1,v0
    15e0:	14600003 	bnez	v1,15f0 <WriteOneBlock+0x78>
    15e4:	0047182a 	slt	v1,v0,a3
    {
      if (i < height)
    15e8:	1460ffee 	bnez	v1,15a4 <WriteOneBlock+0x2c>
    15ec:	00a62821 	addu	a1,a1,a2
    15f0:	03e00008 	jr	ra
    15f4:	00000000 	sll	zero,zero,0x0

000015f8 <WriteBlock>:
  int voffs, hoffs;

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
    15f8:	8ca20000 	lw	v0,0(a1)
  hoffs = *p_out_hpos * DCTSIZE;

  /*
   * Write block
   */
  WriteOneBlock (store,
    15fc:	87830000 	lh	v1,0(gp)
  int voffs, hoffs;

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
    1600:	000210c0 	sll	v0,v0,0x3


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    1604:	0043282a 	slt	a1,v0,v1

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
  hoffs = *p_out_hpos * DCTSIZE;
    1608:	8cca0000 	lw	t2,0(a2)

  /*
   * Write block
   */
  WriteOneBlock (store,
    160c:	87880000 	lh	t0,0(gp)


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    1610:	10a0001b 	beqz	a1,1680 <WriteBlock+0x88>
    1614:	24490007 	addiu	t1,v0,7
 * stored in row-major form, that is, the first row of (8) elements, the
 * second row of (8) elements....
 * ONLY for MCU 1:1:1
 */
void
WriteBlock (int *store, int *p_out_vpos, int *p_out_hpos,
    1618:	00480018 	mult	v0,t0

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
  hoffs = *p_out_hpos * DCTSIZE;
    161c:	000a50c0 	sll	t2,t2,0x3
    1620:	254f0007 	addiu	t7,t2,7
    1624:	0148c02a 	slt	t8,t2,t0
 * stored in row-major form, that is, the first row of (8) elements, the
 * second row of (8) elements....
 * ONLY for MCU 1:1:1
 */
void
WriteBlock (int *store, int *p_out_vpos, int *p_out_hpos,
    1628:	00002812 	mflo	a1
    162c:	00aa2821 	addu	a1,a1,t2
    1630:	00e53821 	addu	a3,a3,a1
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
	    {
	      if (e < width)
    1634:	1300000c 	beqz	t8,1668 <WriteBlock+0x70>
    1638:	01402821 	addu	a1,t2,zero
    163c:	08000593 	j	164c <WriteBlock+0x54>
    1640:	00e05821 	addu	t3,a3,zero
    1644:	11c00008 	beqz	t6,1668 <WriteBlock+0x70>
    1648:	256b0001 	addiu	t3,t3,1
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    164c:	8c8d0000 	lw	t5,0(a0)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    1650:	24a50001 	addiu	a1,a1,1
    1654:	01e5602a 	slt	t4,t7,a1
	    {
	      if (e < width)
    1658:	00a8702a 	slt	t6,a1,t0
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    165c:	a16d0000 	sb	t5,0(t3)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    1660:	1180fff8 	beqz	t4,1644 <WriteBlock+0x4c>
    1664:	24840004 	addiu	a0,a0,4
{
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    1668:	24420001 	addiu	v0,v0,1
    166c:	0122282a 	slt	a1,t1,v0
    1670:	14a00003 	bnez	a1,1680 <WriteBlock+0x88>
    1674:	0043282a 	slt	a1,v0,v1
    {
      if (i < height)
    1678:	14a0ffee 	bnez	a1,1634 <WriteBlock+0x3c>
    167c:	00e83821 	addu	a3,a3,t0
   *  Add positions
   */
  *p_out_hpos++;
  *p_out_vpos++;

  if (*p_out_hpos < p_jinfo_MCUWidth)
    1680:	8cc30004 	lw	v1,4(a2)
    1684:	8f820000 	lw	v0,0(gp)
    1688:	00000000 	sll	zero,zero,0x0
    168c:	0062102a 	slt	v0,v1,v0
    1690:	14400002 	bnez	v0,169c <WriteBlock+0xa4>
    1694:	00000000 	sll	zero,zero,0x0
    {
      *p_out_vpos--;
    }
  else
    {
      *p_out_hpos = 0;		/* If at end of image (width) */
    1698:	acc00004 	sw	zero,4(a2)
    169c:	03e00008 	jr	ra
    16a0:	00000000 	sll	zero,zero,0x0

000016a4 <Write4Blocks>:
 *  4:1:1
 */
void
Write4Blocks (int *store1, int *store2, int *store3, int *store4,
	      int *p_out_vpos, int *p_out_hpos, unsigned char *p_out_buf)
{
    16a4:	27bdffe8 	addiu	sp,sp,-24
    16a8:	8fa90028 	lw	t1,40(sp)
    16ac:	8fa8002c 	lw	t0,44(sp)

  /*
   * OX
   * XX
   */
  voffs = *p_out_vpos * DCTSIZE;
    16b0:	8d230000 	lw	v1,0(t1)
  hoffs = *p_out_hpos * DCTSIZE;
  WriteOneBlock (store1, p_out_buf,
    16b4:	87820000 	lh	v0,0(gp)

  /*
   * OX
   * XX
   */
  voffs = *p_out_vpos * DCTSIZE;
    16b8:	000318c0 	sll	v1,v1,0x3
  hoffs = *p_out_hpos * DCTSIZE;
    16bc:	8d0b0000 	lw	t3,0(t0)


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    16c0:	0062502a 	slt	t2,v1,v0
 *  4:1:1
 */
void
Write4Blocks (int *store1, int *store2, int *store3, int *store4,
	      int *p_out_vpos, int *p_out_hpos, unsigned char *p_out_buf)
{
    16c4:	afb40014 	sw	s4,20(sp)
    16c8:	afb30010 	sw	s3,16(sp)
    16cc:	afb2000c 	sw	s2,12(sp)
    16d0:	afb10008 	sw	s1,8(sp)
    16d4:	afb00004 	sw	s0,4(sp)
    16d8:	8fae0030 	lw	t6,48(sp)
  /*
   * OX
   * XX
   */
  voffs = *p_out_vpos * DCTSIZE;
  hoffs = *p_out_hpos * DCTSIZE;
    16dc:	000b58c0 	sll	t3,t3,0x3
  WriteOneBlock (store1, p_out_buf,
    16e0:	878c0000 	lh	t4,0(gp)


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    16e4:	11400096 	beqz	t2,1940 <Write4Blocks+0x29c>
    16e8:	246d0007 	addiu	t5,v1,7

/*
 *  4:1:1
 */
void
Write4Blocks (int *store1, int *store2, int *store3, int *store4,
    16ec:	006c0018 	mult	v1,t4


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    16f0:	25710007 	addiu	s1,t3,7

/*
 *  4:1:1
 */
void
Write4Blocks (int *store1, int *store2, int *store3, int *store4,
    16f4:	00609021 	addu	s2,v1,zero
    16f8:	016ca02a 	slt	s4,t3,t4
    16fc:	00009812 	mflo	s3
    1700:	026b9821 	addu	s3,s3,t3
    1704:	01d39821 	addu	s3,t6,s3
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
	    {
	      if (e < width)
    1708:	1280000c 	beqz	s4,173c <Write4Blocks+0x98>
    170c:	01605021 	addu	t2,t3,zero
    1710:	080005c8 	j	1720 <Write4Blocks+0x7c>
    1714:	02607821 	addu	t7,s3,zero
    1718:	12000008 	beqz	s0,173c <Write4Blocks+0x98>
    171c:	25ef0001 	addiu	t7,t7,1
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    1720:	8c990000 	lw	t9,0(a0)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    1724:	254a0001 	addiu	t2,t2,1
    1728:	022ac02a 	slt	t8,s1,t2
	    {
	      if (e < width)
    172c:	014c802a 	slt	s0,t2,t4
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    1730:	a1f90000 	sb	t9,0(t7)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    1734:	1300fff8 	beqz	t8,1718 <Write4Blocks+0x74>
    1738:	24840004 	addiu	a0,a0,4
{
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    173c:	26520001 	addiu	s2,s2,1
    1740:	01b2502a 	slt	t2,t5,s2
    1744:	15400003 	bnez	t2,1754 <Write4Blocks+0xb0>
    1748:	0242502a 	slt	t2,s2,v0
    {
      if (i < height)
    174c:	1540ffee 	bnez	t2,1708 <Write4Blocks+0x64>
    1750:	026c9821 	addu	s3,s3,t4
  /*
   * XO
   * XX
   */
  hoffs += DCTSIZE;
  WriteOneBlock (store2, p_out_buf,
    1754:	87820000 	lh	v0,0(gp)
    1758:	00000000 	sll	zero,zero,0x0


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    175c:	0062202a 	slt	a0,v1,v0
  /*
   * XO
   * XX
   */
  hoffs += DCTSIZE;
  WriteOneBlock (store2, p_out_buf,
    1760:	878c0000 	lh	t4,0(gp)


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    1764:	1080001d 	beqz	a0,17dc <Write4Blocks+0x138>
    1768:	256a0008 	addiu	t2,t3,8

/*
 *  4:1:1
 */
void
Write4Blocks (int *store1, int *store2, int *store3, int *store4,
    176c:	006c0018 	mult	v1,t4


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    1770:	2571000f 	addiu	s1,t3,15

/*
 *  4:1:1
 */
void
Write4Blocks (int *store1, int *store2, int *store3, int *store4,
    1774:	00609021 	addu	s2,v1,zero
    1778:	014ca02a 	slt	s4,t2,t4
    177c:	00009812 	mflo	s3
    1780:	026b9821 	addu	s3,s3,t3
    1784:	01d39821 	addu	s3,t6,s3
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
	    {
	      if (e < width)
    1788:	1280000c 	beqz	s4,17bc <Write4Blocks+0x118>
    178c:	01402021 	addu	a0,t2,zero
    1790:	080005e8 	j	17a0 <Write4Blocks+0xfc>
    1794:	02607821 	addu	t7,s3,zero
    1798:	12000008 	beqz	s0,17bc <Write4Blocks+0x118>
    179c:	25ef0001 	addiu	t7,t7,1
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    17a0:	8cb90000 	lw	t9,0(a1)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    17a4:	24840001 	addiu	a0,a0,1
    17a8:	0224c02a 	slt	t8,s1,a0
	    {
	      if (e < width)
    17ac:	008c802a 	slt	s0,a0,t4
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    17b0:	a1f90008 	sb	t9,8(t7)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    17b4:	1300fff8 	beqz	t8,1798 <Write4Blocks+0xf4>
    17b8:	24a50004 	addiu	a1,a1,4
{
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    17bc:	26520001 	addiu	s2,s2,1
    17c0:	01b2202a 	slt	a0,t5,s2
    17c4:	14800003 	bnez	a0,17d4 <Write4Blocks+0x130>
    17c8:	0242202a 	slt	a0,s2,v0
    {
      if (i < height)
    17cc:	1480ffee 	bnez	a0,1788 <Write4Blocks+0xe4>
    17d0:	026c9821 	addu	s3,s3,t4
    17d4:	878c0000 	lh	t4,0(gp)
    17d8:	87820000 	lh	v0,0(gp)

  /*
   * XX
   * OX
   */
  voffs += DCTSIZE;
    17dc:	24640008 	addiu	a0,v1,8


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    17e0:	0082282a 	slt	a1,a0,v0
    17e4:	10a00038 	beqz	a1,18c8 <Write4Blocks+0x224>
    17e8:	2463000f 	addiu	v1,v1,15

/*
 *  4:1:1
 */
void
Write4Blocks (int *store1, int *store2, int *store3, int *store4,
    17ec:	008c0018 	mult	a0,t4


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    17f0:	25700007 	addiu	s0,t3,7

/*
 *  4:1:1
 */
void
Write4Blocks (int *store1, int *store2, int *store3, int *store4,
    17f4:	00808821 	addu	s1,a0,zero
    17f8:	016c982a 	slt	s3,t3,t4
    17fc:	00009012 	mflo	s2
    1800:	024b9021 	addu	s2,s2,t3
    1804:	01d29021 	addu	s2,t6,s2
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
	    {
	      if (e < width)
    1808:	1260000c 	beqz	s3,183c <Write4Blocks+0x198>
    180c:	01602821 	addu	a1,t3,zero
    1810:	08000608 	j	1820 <Write4Blocks+0x17c>
    1814:	02406821 	addu	t5,s2,zero
    1818:	13200008 	beqz	t9,183c <Write4Blocks+0x198>
    181c:	25ad0001 	addiu	t5,t5,1
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    1820:	8cd80000 	lw	t8,0(a2)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    1824:	24a50001 	addiu	a1,a1,1
    1828:	0205782a 	slt	t7,s0,a1
	    {
	      if (e < width)
    182c:	00acc82a 	slt	t9,a1,t4
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    1830:	a1b80000 	sb	t8,0(t5)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    1834:	11e0fff8 	beqz	t7,1818 <Write4Blocks+0x174>
    1838:	24c60004 	addiu	a2,a2,4
{
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    183c:	26310001 	addiu	s1,s1,1
    1840:	0071282a 	slt	a1,v1,s1
    1844:	14a00003 	bnez	a1,1854 <Write4Blocks+0x1b0>
    1848:	0222282a 	slt	a1,s1,v0
    {
      if (i < height)
    184c:	14a0ffee 	bnez	a1,1808 <Write4Blocks+0x164>
    1850:	024c9021 	addu	s2,s2,t4
  /*
   * XX
   * XO
   */
  hoffs += DCTSIZE;
  WriteOneBlock (store4,
    1854:	87850000 	lh	a1,0(gp)
    1858:	87820000 	lh	v0,0(gp)


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    185c:	0085302a 	slt	a2,a0,a1
    1860:	10c00019 	beqz	a2,18c8 <Write4Blocks+0x224>
    1864:	00820018 	mult	a0,v0
    1868:	25590007 	addiu	t9,t2,7
    186c:	0142802a 	slt	s0,t2,v0

/*
 *  4:1:1
 */
void
Write4Blocks (int *store1, int *store2, int *store3, int *store4,
    1870:	00003012 	mflo	a2
    1874:	00cb5821 	addu	t3,a2,t3
    1878:	01cb7021 	addu	t6,t6,t3
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
	    {
	      if (e < width)
    187c:	1200000c 	beqz	s0,18b0 <Write4Blocks+0x20c>
    1880:	01403021 	addu	a2,t2,zero
    1884:	08000625 	j	1894 <Write4Blocks+0x1f0>
    1888:	01c06021 	addu	t4,t6,zero
    188c:	13000008 	beqz	t8,18b0 <Write4Blocks+0x20c>
    1890:	258c0001 	addiu	t4,t4,1
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    1894:	8cef0000 	lw	t7,0(a3)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    1898:	24c60001 	addiu	a2,a2,1
    189c:	0326682a 	slt	t5,t9,a2
	    {
	      if (e < width)
    18a0:	00c2c02a 	slt	t8,a2,v0
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    18a4:	a18f0008 	sb	t7,8(t4)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    18a8:	11a0fff8 	beqz	t5,188c <Write4Blocks+0x1e8>
    18ac:	24e70004 	addiu	a3,a3,4
{
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    18b0:	24840001 	addiu	a0,a0,1
    18b4:	0064302a 	slt	a2,v1,a0
    18b8:	14c00003 	bnez	a2,18c8 <Write4Blocks+0x224>
    18bc:	0085302a 	slt	a2,a0,a1
    {
      if (i < height)
    18c0:	14c0ffee 	bnez	a2,187c <Write4Blocks+0x1d8>
    18c4:	01c27021 	addu	t6,t6,v0
		 voffs, hoffs);

  /*
   * Add positions
   */
  *p_out_hpos = *p_out_hpos + 2;
    18c8:	8d020000 	lw	v0,0(t0)
    18cc:	00000000 	sll	zero,zero,0x0
    18d0:	24420002 	addiu	v0,v0,2
    18d4:	ad020000 	sw	v0,0(t0)
  *p_out_vpos = *p_out_vpos + 2;
    18d8:	8d220000 	lw	v0,0(t1)
    18dc:	00000000 	sll	zero,zero,0x0
    18e0:	24430002 	addiu	v1,v0,2
    18e4:	ad230000 	sw	v1,0(t1)


  if (*p_out_hpos < p_jinfo_MCUWidth)
    18e8:	8d040000 	lw	a0,0(t0)
    18ec:	8f830000 	lw	v1,0(gp)
    18f0:	00000000 	sll	zero,zero,0x0
    18f4:	0083182a 	slt	v1,a0,v1
    18f8:	14600009 	bnez	v1,1920 <Write4Blocks+0x27c>
    18fc:	00000000 	sll	zero,zero,0x0
    }
  else
    {
      *p_out_hpos = 0;		/* If at end of image (width) */
    }
}
    1900:	8fb40014 	lw	s4,20(sp)
    1904:	8fb30010 	lw	s3,16(sp)
    1908:	8fb2000c 	lw	s2,12(sp)
    190c:	8fb10008 	lw	s1,8(sp)
    1910:	8fb00004 	lw	s0,4(sp)
    {
      *p_out_vpos = *p_out_vpos - 2;
    }
  else
    {
      *p_out_hpos = 0;		/* If at end of image (width) */
    1914:	ad000000 	sw	zero,0(t0)
    }
}
    1918:	03e00008 	jr	ra
    191c:	27bd0018 	addiu	sp,sp,24
    1920:	8fb40014 	lw	s4,20(sp)
    1924:	8fb30010 	lw	s3,16(sp)
    1928:	8fb2000c 	lw	s2,12(sp)
    192c:	8fb10008 	lw	s1,8(sp)
    1930:	8fb00004 	lw	s0,4(sp)
  *p_out_vpos = *p_out_vpos + 2;


  if (*p_out_hpos < p_jinfo_MCUWidth)
    {
      *p_out_vpos = *p_out_vpos - 2;
    1934:	ad220000 	sw	v0,0(t1)
    }
  else
    {
      *p_out_hpos = 0;		/* If at end of image (width) */
    }
}
    1938:	03e00008 	jr	ra
    193c:	27bd0018 	addiu	sp,sp,24

  /*
   * XO
   * XX
   */
  hoffs += DCTSIZE;
    1940:	080005f7 	j	17dc <Write4Blocks+0x138>
    1944:	256a0008 	addiu	t2,t3,8

00001948 <YuvToRgb>:

/*
 * Transform from Yuv into RGB
 */
void
YuvToRgb (int p, int *y_buf, int *u_buf, int *v_buf)
    1948:	00041200 	sll	v0,a0,0x8
    194c:	00042280 	sll	a0,a0,0xa
    1950:	00822023 	subu	a0,a0,v0
    1954:	3c020000 	lui	v0,0x0
{
    1958:	27bdfff8 	addiu	sp,sp,-8

/*
 * Transform from Yuv into RGB
 */
void
YuvToRgb (int p, int *y_buf, int *u_buf, int *v_buf)
    195c:	24420000 	addiu	v0,v0,0
{
    1960:	afb00004 	sw	s0,4(sp)

/*
 * Transform from Yuv into RGB
 */
void
YuvToRgb (int p, int *y_buf, int *u_buf, int *v_buf)
    1964:	00442021 	addu	a0,v0,a0
    1968:	00004021 	addu	t0,zero,zero
{
  int r, g, b;
  int y, u, v;
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    196c:	240d0100 	addiu	t5,zero,256

/*
 * Transform from Yuv into RGB
 */
void
YuvToRgb (int p, int *y_buf, int *u_buf, int *v_buf)
    1970:	00e81821 	addu	v1,a3,t0
    1974:	00c81021 	addu	v0,a2,t0

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;
    1978:	8c630000 	lw	v1,0(v1)
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
    197c:	8c420000 	lw	v0,0(v0)
      v = v_buf[i] - 128;
    1980:	2463ff80 	addiu	v1,v1,-128
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
    1984:	2442ff80 	addiu	v0,v0,-128
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    1988:	00035940 	sll	t3,v1,0x5
    198c:	000350c0 	sll	t2,v1,0x3

/*
 * Transform from Yuv into RGB
 */
void
YuvToRgb (int p, int *y_buf, int *u_buf, int *v_buf)
    1990:	00a84821 	addu	t1,a1,t0
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    1994:	016a5023 	subu	t2,t3,t2
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    1998:	00038100 	sll	s0,v1,0x4
    199c:	00035880 	sll	t3,v1,0x2
      b = (y * 256 + u * 454 + 128) >> 8;
    19a0:	000260c0 	sll	t4,v0,0x3
    19a4:	0002c980 	sll	t9,v0,0x6
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    19a8:	8d290000 	lw	t1,0(t1)
    19ac:	000a7100 	sll	t6,t2,0x4
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    19b0:	00027880 	sll	t7,v0,0x2
    19b4:	0002c100 	sll	t8,v0,0x4
    19b8:	020b5823 	subu	t3,s0,t3
      b = (y * 256 + u * 454 + 128) >> 8;
    19bc:	032c6023 	subu	t4,t9,t4
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    19c0:	01635821 	addu	t3,t3,v1
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    19c4:	01ca7023 	subu	t6,t6,t2
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
      b = (y * 256 + u * 454 + 128) >> 8;
    19c8:	01826021 	addu	t4,t4,v0
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    19cc:	00094a00 	sll	t1,t1,0x8
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    19d0:	030f5023 	subu	t2,t8,t7
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    19d4:	25290080 	addiu	t1,t1,128
    19d8:	01c31823 	subu	v1,t6,v1
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    19dc:	004a5023 	subu	t2,v0,t2
      b = (y * 256 + u * 454 + 128) >> 8;
    19e0:	000c6080 	sll	t4,t4,0x2
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    19e4:	000b70c0 	sll	t6,t3,0x3
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    19e8:	01231821 	addu	v1,t1,v1
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
      b = (y * 256 + u * 454 + 128) >> 8;
    19ec:	01821023 	subu	v0,t4,v0
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    19f0:	000a50c0 	sll	t2,t2,0x3
    19f4:	016e5823 	subu	t3,t3,t6
    19f8:	01495021 	addu	t2,t2,t1
    19fc:	000b5840 	sll	t3,t3,0x1
      b = (y * 256 + u * 454 + 128) >> 8;
    1a00:	00021040 	sll	v0,v0,0x1
    1a04:	00031a03 	sra	v1,v1,0x8
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    1a08:	014b5021 	addu	t2,t2,t3
      b = (y * 256 + u * 454 + 128) >> 8;
    1a0c:	00494821 	addu	t1,v0,t1
    1a10:	286c0100 	slti	t4,v1,256
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    1a14:	000a5203 	sra	t2,t2,0x8
      b = (y * 256 + u * 454 + 128) >> 8;
    1a18:	15800002 	bnez	t4,1a24 <YuvToRgb+0xdc>
    1a1c:	00094a03 	sra	t1,t1,0x8
    1a20:	240300ff 	addiu	v1,zero,255
    1a24:	29420100 	slti	v0,t2,256
    1a28:	14400002 	bnez	v0,1a34 <YuvToRgb+0xec>
    1a2c:	29220100 	slti	v0,t1,256
    1a30:	240a00ff 	addiu	t2,zero,255
    1a34:	14400002 	bnez	v0,1a40 <YuvToRgb+0xf8>
    1a38:	00000000 	sll	zero,zero,0x0
    1a3c:	240900ff 	addiu	t1,zero,255
      if (b < 0)
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
    1a40:	04600010 	bltz	v1,1a84 <YuvToRgb+0x13c>
    1a44:	00000000 	sll	zero,zero,0x0
      rgb_buf[p][1][i] = g;
    1a48:	0540000c 	bltz	t2,1a7c <YuvToRgb+0x134>
    1a4c:	ac830000 	sw	v1,0(a0)
      rgb_buf[p][2][i] = b;
    1a50:	05200008 	bltz	t1,1a74 <YuvToRgb+0x12c>
    1a54:	ac8a0100 	sw	t2,256(a0)
    1a58:	25080004 	addiu	t0,t0,4
    1a5c:	ac890200 	sw	t1,512(a0)
{
  int r, g, b;
  int y, u, v;
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    1a60:	150dffc3 	bne	t0,t5,1970 <YuvToRgb+0x28>
    1a64:	24840004 	addiu	a0,a0,4
      rgb_buf[p][0][i] = r;
      rgb_buf[p][1][i] = g;
      rgb_buf[p][2][i] = b;

    }
}
    1a68:	8fb00004 	lw	s0,4(sp)
    1a6c:	03e00008 	jr	ra
    1a70:	27bd0008 	addiu	sp,sp,8
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
      rgb_buf[p][1][i] = g;
      rgb_buf[p][2][i] = b;
    1a74:	08000696 	j	1a58 <YuvToRgb+0x110>
    1a78:	00004821 	addu	t1,zero,zero
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
      rgb_buf[p][1][i] = g;
    1a7c:	08000694 	j	1a50 <YuvToRgb+0x108>
    1a80:	00005021 	addu	t2,zero,zero
      if (b < 0)
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
    1a84:	08000692 	j	1a48 <YuvToRgb+0x100>
    1a88:	00001821 	addu	v1,zero,zero

00001a8c <buf_getb>:
 * buf_getb() gets a bit from the read stream.
 */
int
buf_getb ()
{
  if (read_position < 0)
    1a8c:	8f83003c 	lw	v1,60(gp)
/*
 * buf_getb() gets a bit from the read stream.
 */
int
buf_getb ()
{
    1a90:	27bdffe8 	addiu	sp,sp,-24
    1a94:	afbf0014 	sw	ra,20(sp)
  if (read_position < 0)
    1a98:	0460000f 	bltz	v1,1ad8 <buf_getb+0x4c>
    1a9c:	afb00010 	sw	s0,16(sp)
    {
      current_read_byte = pgetc ();
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    1aa0:	3c020000 	lui	v0,0x0
 * buf_getb() gets a bit from the read stream.
 */
int
buf_getb ()
{
  if (read_position < 0)
    1aa4:	2464ffff 	addiu	a0,v1,-1
    {
      current_read_byte = pgetc ();
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    1aa8:	24420000 	addiu	v0,v0,0
    1aac:	00031880 	sll	v1,v1,0x2
    1ab0:	00621821 	addu	v1,v1,v0
    1ab4:	8c620000 	lw	v0,0(v1)
 * buf_getb() gets a bit from the read stream.
 */
int
buf_getb ()
{
  if (read_position < 0)
    1ab8:	8f900010 	lw	s0,16(gp)
  if (current_read_byte & bit_set_mask[read_position--])
    {
      return (1);
    }
  return (0);
}
    1abc:	8fbf0014 	lw	ra,20(sp)
    {
      current_read_byte = pgetc ();
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    1ac0:	02028024 	and	s0,s0,v0
    {
      return (1);
    }
  return (0);
}
    1ac4:	0010102b 	sltu	v0,zero,s0
    1ac8:	8fb00010 	lw	s0,16(sp)
    {
      current_read_byte = pgetc ();
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    1acc:	af84003c 	sw	a0,60(gp)
    {
      return (1);
    }
  return (0);
}
    1ad0:	03e00008 	jr	ra
    1ad4:	27bd0018 	addiu	sp,sp,24
static int
pgetc ()
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    1ad8:	8f820000 	lw	v0,0(gp)
    1adc:	00000000 	sll	zero,zero,0x0
    1ae0:	24430001 	addiu	v1,v0,1
    1ae4:	90500000 	lbu	s0,0(v0)
    1ae8:	af830000 	sw	v1,0(gp)
    1aec:	240300ff 	addiu	v1,zero,255
    1af0:	12030010 	beq	s0,v1,1b34 <buf_getb+0xa8>
    1af4:	00000000 	sll	zero,zero,0x0
int
buf_getb ()
{
  if (read_position < 0)
    {
      current_read_byte = pgetc ();
    1af8:	24030007 	addiu	v1,zero,7
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    1afc:	3c020000 	lui	v0,0x0
    1b00:	24420000 	addiu	v0,v0,0
    1b04:	00031880 	sll	v1,v1,0x2
    1b08:	00621821 	addu	v1,v1,v0
    1b0c:	8c620000 	lw	v0,0(v1)
    {
      return (1);
    }
  return (0);
}
    1b10:	8fbf0014 	lw	ra,20(sp)
int
buf_getb ()
{
  if (read_position < 0)
    {
      current_read_byte = pgetc ();
    1b14:	af900010 	sw	s0,16(gp)
    1b18:	24040006 	addiu	a0,zero,6
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    1b1c:	02028024 	and	s0,s0,v0
    {
      return (1);
    }
  return (0);
}
    1b20:	0010102b 	sltu	v0,zero,s0
    1b24:	8fb00010 	lw	s0,16(sp)
    {
      current_read_byte = pgetc ();
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    1b28:	af84003c 	sw	a0,60(gp)
    {
      return (1);
    }
  return (0);
}
    1b2c:	03e00008 	jr	ra
    1b30:	27bd0018 	addiu	sp,sp,24
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
    1b34:	90500001 	lbu	s0,1(v0)
    1b38:	24420002 	addiu	v0,v0,2
    1b3c:	16000003 	bnez	s0,1b4c <buf_getb+0xc0>
    1b40:	af820000 	sw	v0,0(gp)
    1b44:	080006be 	j	1af8 <buf_getb+0x6c>
    1b48:	241000ff 	addiu	s0,zero,255
	{			/* if next is not 0xff, then marker */
	  printf ("Unanticipated marker detected.\n");
    1b4c:	3c040000 	lui	a0,0x0
    1b50:	0c000000 	jal	0 <read_byte>
    1b54:	24840000 	addiu	a0,a0,0
int
buf_getb ()
{
  if (read_position < 0)
    {
      current_read_byte = pgetc ();
    1b58:	080006bf 	j	1afc <buf_getb+0x70>
    1b5c:	24030007 	addiu	v1,zero,7

00001b60 <buf_getv>:
 * megetv() gets n bits from the read stream and returns it.
 *
 */
int
buf_getv (int n)
{
    1b60:	27bdffd0 	addiu	sp,sp,-48
  int p, rv;

  n--;
  p = n - read_position;
    1b64:	8f83003c 	lw	v1,60(gp)
 * megetv() gets n bits from the read stream and returns it.
 *
 */
int
buf_getv (int n)
{
    1b68:	afb40024 	sw	s4,36(sp)
  int p, rv;

  n--;
    1b6c:	2494ffff 	addiu	s4,a0,-1
 * megetv() gets n bits from the read stream and returns it.
 *
 */
int
buf_getv (int n)
{
    1b70:	afb00014 	sw	s0,20(sp)
  int p, rv;

  n--;
  p = n - read_position;
    1b74:	02838023 	subu	s0,s4,v1
 * megetv() gets n bits from the read stream and returns it.
 *
 */
int
buf_getv (int n)
{
    1b78:	afbf002c 	sw	ra,44(sp)
    1b7c:	afb50028 	sw	s5,40(sp)
    1b80:	afb30020 	sw	s3,32(sp)
    1b84:	afb2001c 	sw	s2,28(sp)
  int p, rv;

  n--;
  p = n - read_position;
  while (p > 0)
    1b88:	1a000069 	blez	s0,1d30 <buf_getv+0x1d0>
    1b8c:	afb10018 	sw	s1,24(sp)
    {
      if (read_position > 23)
    1b90:	28620018 	slti	v0,v1,24
    1b94:	1040003b 	beqz	v0,1c84 <buf_getv+0x124>
    1b98:	3c150000 	lui	s5,0x0
	  rv = (current_read_byte << p);	/* Manipulate buffer */
	  current_read_byte = pgetc ();	/* Change read bytes */

	  rv |= (current_read_byte >> (8 - p));
	  read_position = 7 - p;
	  return (rv & lmask[n]);
    1b9c:	8f910010 	lw	s1,16(gp)
static int
pgetc ()
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    1ba0:	241200ff 	addiu	s2,zero,255
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
	{			/* if next is not 0xff, then marker */
	  printf ("Unanticipated marker detected.\n");
    1ba4:	080006f4 	j	1bd0 <buf_getv+0x70>
    1ba8:	26b50000 	addiu	s5,s5,0
	  read_position = 7 - p;
	  return (rv & lmask[n]);
	  /* Can return pending residual val */
	}
      current_read_byte = (current_read_byte << 8) | pgetc ();
      read_position += 8;	/* else shift in new information */
    1bac:	24630008 	addiu	v1,v1,8
	  rv |= (current_read_byte >> (8 - p));
	  read_position = 7 - p;
	  return (rv & lmask[n]);
	  /* Can return pending residual val */
	}
      current_read_byte = (current_read_byte << 8) | pgetc ();
    1bb0:	02718825 	or	s1,s3,s1
      read_position += 8;	/* else shift in new information */
      p -= 8;
    1bb4:	2610fff8 	addiu	s0,s0,-8

  n--;
  p = n - read_position;
  while (p > 0)
    {
      if (read_position > 23)
    1bb8:	28620018 	slti	v0,v1,24
	  rv |= (current_read_byte >> (8 - p));
	  read_position = 7 - p;
	  return (rv & lmask[n]);
	  /* Can return pending residual val */
	}
      current_read_byte = (current_read_byte << 8) | pgetc ();
    1bbc:	af910010 	sw	s1,16(gp)
{
  int p, rv;

  n--;
  p = n - read_position;
  while (p > 0)
    1bc0:	1a000016 	blez	s0,1c1c <buf_getv+0xbc>
    1bc4:	af83003c 	sw	v1,60(gp)
    {
      if (read_position > 23)
    1bc8:	1040002f 	beqz	v0,1c88 <buf_getv+0x128>
    1bcc:	00000000 	sll	zero,zero,0x0
static int
pgetc ()
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    1bd0:	8f840000 	lw	a0,0(gp)
	  rv |= (current_read_byte >> (8 - p));
	  read_position = 7 - p;
	  return (rv & lmask[n]);
	  /* Can return pending residual val */
	}
      current_read_byte = (current_read_byte << 8) | pgetc ();
    1bd4:	00118a00 	sll	s1,s1,0x8
static int
pgetc ()
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    1bd8:	90930000 	lbu	s3,0(a0)
    1bdc:	24820001 	addiu	v0,a0,1
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
    1be0:	24850002 	addiu	a1,a0,2
static int
pgetc ()
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    1be4:	1672fff1 	bne	s3,s2,1bac <buf_getv+0x4c>
    1be8:	af820000 	sw	v0,0(gp)
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
    1bec:	90930001 	lbu	s3,1(a0)
    1bf0:	00000000 	sll	zero,zero,0x0
    1bf4:	1660001e 	bnez	s3,1c70 <buf_getv+0x110>
    1bf8:	af850000 	sw	a1,0(gp)
    1bfc:	241300ff 	addiu	s3,zero,255
	  read_position = 7 - p;
	  return (rv & lmask[n]);
	  /* Can return pending residual val */
	}
      current_read_byte = (current_read_byte << 8) | pgetc ();
      read_position += 8;	/* else shift in new information */
    1c00:	24630008 	addiu	v1,v1,8
	  rv |= (current_read_byte >> (8 - p));
	  read_position = 7 - p;
	  return (rv & lmask[n]);
	  /* Can return pending residual val */
	}
      current_read_byte = (current_read_byte << 8) | pgetc ();
    1c04:	02718825 	or	s1,s3,s1
      read_position += 8;	/* else shift in new information */
      p -= 8;
    1c08:	2610fff8 	addiu	s0,s0,-8

  n--;
  p = n - read_position;
  while (p > 0)
    {
      if (read_position > 23)
    1c0c:	28620018 	slti	v0,v1,24
	  rv |= (current_read_byte >> (8 - p));
	  read_position = 7 - p;
	  return (rv & lmask[n]);
	  /* Can return pending residual val */
	}
      current_read_byte = (current_read_byte << 8) | pgetc ();
    1c10:	af910010 	sw	s1,16(gp)
{
  int p, rv;

  n--;
  p = n - read_position;
  while (p > 0)
    1c14:	1e00ffec 	bgtz	s0,1bc8 <buf_getv+0x68>
    1c18:	af83003c 	sw	v1,60(gp)
      current_read_byte = (current_read_byte << 8) | pgetc ();
      read_position += 8;	/* else shift in new information */
      p -= 8;
    }

  if (!p)
    1c1c:	12000037 	beqz	s0,1cfc <buf_getv+0x19c>
    1c20:	3c020000 	lui	v0,0x0
    }

  p = -p;
  /* Else reverse position and shift */
  read_position = p - 1;
  return ((current_read_byte >> p) & lmask[n]);
    1c24:	3c020000 	lui	v0,0x0
    1c28:	24420000 	addiu	v0,v0,0
    1c2c:	0014a080 	sll	s4,s4,0x2
    1c30:	0282a021 	addu	s4,s4,v0
      read_position = -1;
      /* Can return current byte */
      return (current_read_byte & lmask[n]);
    }

  p = -p;
    1c34:	00108023 	negu	s0,s0
  /* Else reverse position and shift */
  read_position = p - 1;
  return ((current_read_byte >> p) & lmask[n]);
    1c38:	8e830000 	lw	v1,0(s4)
      return (current_read_byte & lmask[n]);
    }

  p = -p;
  /* Else reverse position and shift */
  read_position = p - 1;
    1c3c:	2602ffff 	addiu	v0,s0,-1
  return ((current_read_byte >> p) & lmask[n]);
    1c40:	02118806 	srlv	s1,s1,s0
      return (current_read_byte & lmask[n]);
    }

  p = -p;
  /* Else reverse position and shift */
  read_position = p - 1;
    1c44:	af82003c 	sw	v0,60(gp)
  return ((current_read_byte >> p) & lmask[n]);
    1c48:	02231024 	and	v0,s1,v1
}
    1c4c:	8fbf002c 	lw	ra,44(sp)
    1c50:	8fb50028 	lw	s5,40(sp)
    1c54:	8fb40024 	lw	s4,36(sp)
    1c58:	8fb30020 	lw	s3,32(sp)
    1c5c:	8fb2001c 	lw	s2,28(sp)
    1c60:	8fb10018 	lw	s1,24(sp)
    1c64:	8fb00014 	lw	s0,20(sp)
    1c68:	03e00008 	jr	ra
    1c6c:	27bd0030 	addiu	sp,sp,48

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
	{			/* if next is not 0xff, then marker */
	  printf ("Unanticipated marker detected.\n");
    1c70:	0c000000 	jal	0 <read_byte>
    1c74:	02a02021 	addu	a0,s5,zero
    1c78:	8f83003c 	lw	v1,60(gp)
	  read_position = 7 - p;
	  return (rv & lmask[n]);
	  /* Can return pending residual val */
	}
      current_read_byte = (current_read_byte << 8) | pgetc ();
      read_position += 8;	/* else shift in new information */
    1c7c:	080006ec 	j	1bb0 <buf_getv+0x50>
    1c80:	24630008 	addiu	v1,v1,8

  n--;
  p = n - read_position;
  while (p > 0)
    {
      if (read_position > 23)
    1c84:	8f910010 	lw	s1,16(gp)
static int
pgetc ()
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    1c88:	8f820000 	lw	v0,0(gp)
    1c8c:	00000000 	sll	zero,zero,0x0
    1c90:	24430001 	addiu	v1,v0,1
    1c94:	90520000 	lbu	s2,0(v0)
    1c98:	af830000 	sw	v1,0(gp)
    1c9c:	240300ff 	addiu	v1,zero,255
    1ca0:	12430010 	beq	s2,v1,1ce4 <buf_getv+0x184>
    1ca4:	02118804 	sllv	s1,s1,s0
	  rv = (current_read_byte << p);	/* Manipulate buffer */
	  current_read_byte = pgetc ();	/* Change read bytes */

	  rv |= (current_read_byte >> (8 - p));
	  read_position = 7 - p;
	  return (rv & lmask[n]);
    1ca8:	3c030000 	lui	v1,0x0
    1cac:	24630000 	addiu	v1,v1,0
    1cb0:	0014a080 	sll	s4,s4,0x2
      if (read_position > 23)
	{			/* If byte buffer contains almost entire word */
	  rv = (current_read_byte << p);	/* Manipulate buffer */
	  current_read_byte = pgetc ();	/* Change read bytes */

	  rv |= (current_read_byte >> (8 - p));
    1cb4:	24020008 	addiu	v0,zero,8
    1cb8:	00501023 	subu	v0,v0,s0
	  read_position = 7 - p;
	  return (rv & lmask[n]);
    1cbc:	0283a021 	addu	s4,s4,v1
      if (read_position > 23)
	{			/* If byte buffer contains almost entire word */
	  rv = (current_read_byte << p);	/* Manipulate buffer */
	  current_read_byte = pgetc ();	/* Change read bytes */

	  rv |= (current_read_byte >> (8 - p));
    1cc0:	00521006 	srlv	v0,s2,v0
	  read_position = 7 - p;
	  return (rv & lmask[n]);
    1cc4:	8e830000 	lw	v1,0(s4)
	{			/* If byte buffer contains almost entire word */
	  rv = (current_read_byte << p);	/* Manipulate buffer */
	  current_read_byte = pgetc ();	/* Change read bytes */

	  rv |= (current_read_byte >> (8 - p));
	  read_position = 7 - p;
    1cc8:	24040007 	addiu	a0,zero,7
    1ccc:	00908023 	subu	s0,a0,s0
      if (read_position > 23)
	{			/* If byte buffer contains almost entire word */
	  rv = (current_read_byte << p);	/* Manipulate buffer */
	  current_read_byte = pgetc ();	/* Change read bytes */

	  rv |= (current_read_byte >> (8 - p));
    1cd0:	00518825 	or	s1,v0,s1
  while (p > 0)
    {
      if (read_position > 23)
	{			/* If byte buffer contains almost entire word */
	  rv = (current_read_byte << p);	/* Manipulate buffer */
	  current_read_byte = pgetc ();	/* Change read bytes */
    1cd4:	af920010 	sw	s2,16(gp)

	  rv |= (current_read_byte >> (8 - p));
	  read_position = 7 - p;
    1cd8:	af90003c 	sw	s0,60(gp)
	  return (rv & lmask[n]);
    1cdc:	08000713 	j	1c4c <buf_getv+0xec>
    1ce0:	02231024 	and	v0,s1,v1
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
    1ce4:	90520001 	lbu	s2,1(v0)
    1ce8:	24420002 	addiu	v0,v0,2
    1cec:	1640000b 	bnez	s2,1d1c <buf_getv+0x1bc>
    1cf0:	af820000 	sw	v0,0(gp)
    1cf4:	0800072a 	j	1ca8 <buf_getv+0x148>
    1cf8:	241200ff 	addiu	s2,zero,255

  if (!p)
    {				/* If position is zero */
      read_position = -1;
      /* Can return current byte */
      return (current_read_byte & lmask[n]);
    1cfc:	24420000 	addiu	v0,v0,0
    1d00:	0014a080 	sll	s4,s4,0x2
    1d04:	0282a021 	addu	s4,s4,v0
    1d08:	8e820000 	lw	v0,0(s4)
      p -= 8;
    }

  if (!p)
    {				/* If position is zero */
      read_position = -1;
    1d0c:	2403ffff 	addiu	v1,zero,-1
    1d10:	af83003c 	sw	v1,60(gp)
      /* Can return current byte */
      return (current_read_byte & lmask[n]);
    1d14:	08000713 	j	1c4c <buf_getv+0xec>
    1d18:	02221024 	and	v0,s1,v0

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
	{			/* if next is not 0xff, then marker */
	  printf ("Unanticipated marker detected.\n");
    1d1c:	3c040000 	lui	a0,0x0
    1d20:	0c000000 	jal	0 <read_byte>
    1d24:	24840000 	addiu	a0,a0,0
	  rv = (current_read_byte << p);	/* Manipulate buffer */
	  current_read_byte = pgetc ();	/* Change read bytes */

	  rv |= (current_read_byte >> (8 - p));
	  read_position = 7 - p;
	  return (rv & lmask[n]);
    1d28:	0800072b 	j	1cac <buf_getv+0x14c>
    1d2c:	3c030000 	lui	v1,0x0
{
  int p, rv;

  n--;
  p = n - read_position;
  while (p > 0)
    1d30:	8f910010 	lw	s1,16(gp)
      current_read_byte = (current_read_byte << 8) | pgetc ();
      read_position += 8;	/* else shift in new information */
      p -= 8;
    }

  if (!p)
    1d34:	1600ffbb 	bnez	s0,1c24 <buf_getv+0xc4>
    1d38:	3c020000 	lui	v0,0x0
    {				/* If position is zero */
      read_position = -1;
      /* Can return current byte */
      return (current_read_byte & lmask[n]);
    1d3c:	08000740 	j	1d00 <buf_getv+0x1a0>
    1d40:	24420000 	addiu	v0,v0,0

00001d44 <huff_make_dhuff_tb>:
 */
int
huff_make_dhuff_tb (int *p_xhtbl_bits, int p_dhtbl_ml,
		    int *p_dhtbl_maxcode, int *p_dhtbl_mincode,
		    int *p_dhtbl_valptr)
{
    1d44:	27bdf7f8 	addiu	sp,sp,-2056
    1d48:	8fac0818 	lw	t4,2072(sp)
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    1d4c:	00805021 	addu	t2,a0,zero
  int lastp;

  /*
   * Get size
   */
  for (p = 0, i = 1; i < 17; i++)
    1d50:	24080001 	addiu	t0,zero,1
    1d54:	00005821 	addu	t3,zero,zero
    1d58:	240d0011 	addiu	t5,zero,17
    {
      for (j = 1; j <= p_xhtbl_bits[i]; j++)
    1d5c:	8d490004 	lw	t1,4(t2)
    1d60:	00000000 	sll	zero,zero,0x0
    1d64:	1920000a 	blez	t1,1d90 <huff_make_dhuff_tb+0x4c>
    1d68:	00000000 	sll	zero,zero,0x0

/*
 * Create Table for decoding
 */
int
huff_make_dhuff_tb (int *p_xhtbl_bits, int p_dhtbl_ml,
    1d6c:	000b1880 	sll	v1,t3,0x2
    1d70:	03a31821 	addu	v1,sp,v1
    1d74:	24020001 	addiu	v0,zero,1
  /*
   * Get size
   */
  for (p = 0, i = 1; i < 17; i++)
    {
      for (j = 1; j <= p_xhtbl_bits[i]; j++)
    1d78:	24420001 	addiu	v0,v0,1
    1d7c:	0122282a 	slt	a1,t1,v0
	{
	  huffsize[p++] = i;
    1d80:	ac680000 	sw	t0,0(v1)
  /*
   * Get size
   */
  for (p = 0, i = 1; i < 17; i++)
    {
      for (j = 1; j <= p_xhtbl_bits[i]; j++)
    1d84:	10a0fffc 	beqz	a1,1d78 <huff_make_dhuff_tb+0x34>
    1d88:	24630004 	addiu	v1,v1,4
    1d8c:	01695821 	addu	t3,t3,t1
  int lastp;

  /*
   * Get size
   */
  for (p = 0, i = 1; i < 17; i++)
    1d90:	25080001 	addiu	t0,t0,1
    1d94:	150dfff1 	bne	t0,t5,1d5c <huff_make_dhuff_tb+0x18>
    1d98:	254a0004 	addiu	t2,t2,4
	{
	  huffsize[p++] = i;
	}
    }

  huffsize[p] = 0;
    1d9c:	000b5880 	sll	t3,t3,0x2
    1da0:	03ab5821 	addu	t3,sp,t3
    1da4:	ad600000 	sw	zero,0(t3)
  lastp = p;

  p = 0;
  code = 0;
  size = huffsize[0];
    1da8:	27a90004 	addiu	t1,sp,4
    1dac:	8fa80000 	lw	t0,0(sp)
    {
      do
	{
	  huffcode[p++] = code++;
	}
      while ((huffsize[p] == size) && (p < 257));
    1db0:	8d250000 	lw	a1,0(t1)

  huffsize[p] = 0;
  lastp = p;

  p = 0;
  code = 0;
    1db4:	00001821 	addu	v1,zero,zero
  size = huffsize[0];
    1db8:	27aa0404 	addiu	t2,sp,1028
    }

  huffsize[p] = 0;
  lastp = p;

  p = 0;
    1dbc:	00005821 	addu	t3,zero,zero
  size = huffsize[0];
  while (1)
    {
      do
	{
	  huffcode[p++] = code++;
    1dc0:	ad430000 	sw	v1,0(t2)
    1dc4:	256b0001 	addiu	t3,t3,1
	}
      while ((huffsize[p] == size) && (p < 257));
    1dc8:	10a80011 	beq	a1,t0,1e10 <huff_make_dhuff_tb+0xcc>
    1dcc:	24630001 	addiu	v1,v1,1
      /* Overflow Detection */
      if (!huffsize[p])
    1dd0:	10a00015 	beqz	a1,1e28 <huff_make_dhuff_tb+0xe4>
    1dd4:	01001021 	addu	v0,t0,zero
	}
      do
	{
	  /* Shift next code to expand prefix. */
	  code <<= 1;
	  size++;
    1dd8:	24420001 	addiu	v0,v0,1
	}
      while (huffsize[p] != size);
    1ddc:	14a2fffe 	bne	a1,v0,1dd8 <huff_make_dhuff_tb+0x94>
    1de0:	00031840 	sll	v1,v1,0x1

/*
 * Create Table for decoding
 */
int
huff_make_dhuff_tb (int *p_xhtbl_bits, int p_dhtbl_ml,
    1de4:	00081027 	nor	v0,zero,t0
    1de8:	00452821 	addu	a1,v0,a1
    1dec:	25080001 	addiu	t0,t0,1
    1df0:	01054021 	addu	t0,t0,a1
  huffsize[p] = 0;
  lastp = p;

  p = 0;
  code = 0;
  size = huffsize[0];
    1df4:	254a0004 	addiu	t2,t2,4
    1df8:	25290004 	addiu	t1,t1,4
    {
      do
	{
	  huffcode[p++] = code++;
	}
      while ((huffsize[p] == size) && (p < 257));
    1dfc:	8d250000 	lw	a1,0(t1)
  size = huffsize[0];
  while (1)
    {
      do
	{
	  huffcode[p++] = code++;
    1e00:	ad430000 	sw	v1,0(t2)
    1e04:	256b0001 	addiu	t3,t3,1
	}
      while ((huffsize[p] == size) && (p < 257));
    1e08:	14a8fff1 	bne	a1,t0,1dd0 <huff_make_dhuff_tb+0x8c>
    1e0c:	24630001 	addiu	v1,v1,1
    1e10:	29620101 	slti	v0,t3,257
    1e14:	1040ffee 	beqz	v0,1dd0 <huff_make_dhuff_tb+0x8c>
    1e18:	00000000 	sll	zero,zero,0x0
  huffsize[p] = 0;
  lastp = p;

  p = 0;
  code = 0;
  size = huffsize[0];
    1e1c:	254a0004 	addiu	t2,t2,4
    1e20:	0800077f 	j	1dfc <huff_make_dhuff_tb+0xb8>
    1e24:	25290004 	addiu	t1,t1,4
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    1e28:	8c820004 	lw	v0,4(a0)
    1e2c:	00000000 	sll	zero,zero,0x0
    1e30:	10400115 	beqz	v0,2288 <huff_make_dhuff_tb+0x544>
    1e34:	2402ffff 	addiu	v0,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    1e38:	8fa20404 	lw	v0,1028(sp)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    1e3c:	ad800004 	sw	zero,4(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    1e40:	ace20004 	sw	v0,4(a3)
	  p += p_xhtbl_bits[l] - 1;
    1e44:	8c830004 	lw	v1,4(a0)
    1e48:	00000000 	sll	zero,zero,0x0
    1e4c:	2462ffff 	addiu	v0,v1,-1
	  p_dhtbl_maxcode[l] = huffcode[p];
    1e50:	00021080 	sll	v0,v0,0x2
    1e54:	03a21021 	addu	v0,sp,v0
    1e58:	8c420404 	lw	v0,1028(v0)
    1e5c:	00000000 	sll	zero,zero,0x0
    1e60:	acc20004 	sw	v0,4(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    1e64:	8c820008 	lw	v0,8(a0)
    1e68:	00000000 	sll	zero,zero,0x0
    1e6c:	10400131 	beqz	v0,2334 <huff_make_dhuff_tb+0x5f0>
    1e70:	2402ffff 	addiu	v0,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    1e74:	00031080 	sll	v0,v1,0x2
    1e78:	03a21021 	addu	v0,sp,v0
    1e7c:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    1e80:	ad830008 	sw	v1,8(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    1e84:	ace20008 	sw	v0,8(a3)
	  p += p_xhtbl_bits[l] - 1;
    1e88:	8c850008 	lw	a1,8(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    1e8c:	24020002 	addiu	v0,zero,2
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    1e90:	24a5ffff 	addiu	a1,a1,-1
    1e94:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    1e98:	00032880 	sll	a1,v1,0x2
    1e9c:	03a52821 	addu	a1,sp,a1
    1ea0:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    1ea4:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    1ea8:	acc50008 	sw	a1,8(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    1eac:	8c85000c 	lw	a1,12(a0)
    1eb0:	00000000 	sll	zero,zero,0x0
    1eb4:	10a0011d 	beqz	a1,232c <huff_make_dhuff_tb+0x5e8>
    1eb8:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    1ebc:	00031080 	sll	v0,v1,0x2
    1ec0:	03a21021 	addu	v0,sp,v0
    1ec4:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    1ec8:	ad83000c 	sw	v1,12(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    1ecc:	ace2000c 	sw	v0,12(a3)
	  p += p_xhtbl_bits[l] - 1;
    1ed0:	8c85000c 	lw	a1,12(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    1ed4:	24020003 	addiu	v0,zero,3
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    1ed8:	24a5ffff 	addiu	a1,a1,-1
    1edc:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    1ee0:	00032880 	sll	a1,v1,0x2
    1ee4:	03a52821 	addu	a1,sp,a1
    1ee8:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    1eec:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    1ef0:	acc5000c 	sw	a1,12(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    1ef4:	8c850010 	lw	a1,16(a0)
    1ef8:	00000000 	sll	zero,zero,0x0
    1efc:	10a00109 	beqz	a1,2324 <huff_make_dhuff_tb+0x5e0>
    1f00:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    1f04:	00031080 	sll	v0,v1,0x2
    1f08:	03a21021 	addu	v0,sp,v0
    1f0c:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    1f10:	ad830010 	sw	v1,16(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    1f14:	ace20010 	sw	v0,16(a3)
	  p += p_xhtbl_bits[l] - 1;
    1f18:	8c850010 	lw	a1,16(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    1f1c:	24020004 	addiu	v0,zero,4
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    1f20:	24a5ffff 	addiu	a1,a1,-1
    1f24:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    1f28:	00032880 	sll	a1,v1,0x2
    1f2c:	03a52821 	addu	a1,sp,a1
    1f30:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    1f34:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    1f38:	acc50010 	sw	a1,16(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    1f3c:	8c850014 	lw	a1,20(a0)
    1f40:	00000000 	sll	zero,zero,0x0
    1f44:	10a000f5 	beqz	a1,231c <huff_make_dhuff_tb+0x5d8>
    1f48:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    1f4c:	00031080 	sll	v0,v1,0x2
    1f50:	03a21021 	addu	v0,sp,v0
    1f54:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    1f58:	ad830014 	sw	v1,20(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    1f5c:	ace20014 	sw	v0,20(a3)
	  p += p_xhtbl_bits[l] - 1;
    1f60:	8c850014 	lw	a1,20(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    1f64:	24020005 	addiu	v0,zero,5
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    1f68:	24a5ffff 	addiu	a1,a1,-1
    1f6c:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    1f70:	00032880 	sll	a1,v1,0x2
    1f74:	03a52821 	addu	a1,sp,a1
    1f78:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    1f7c:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    1f80:	acc50014 	sw	a1,20(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    1f84:	8c850018 	lw	a1,24(a0)
    1f88:	00000000 	sll	zero,zero,0x0
    1f8c:	10a000e1 	beqz	a1,2314 <huff_make_dhuff_tb+0x5d0>
    1f90:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    1f94:	00031080 	sll	v0,v1,0x2
    1f98:	03a21021 	addu	v0,sp,v0
    1f9c:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    1fa0:	ad830018 	sw	v1,24(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    1fa4:	ace20018 	sw	v0,24(a3)
	  p += p_xhtbl_bits[l] - 1;
    1fa8:	8c850018 	lw	a1,24(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    1fac:	24020006 	addiu	v0,zero,6
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    1fb0:	24a5ffff 	addiu	a1,a1,-1
    1fb4:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    1fb8:	00032880 	sll	a1,v1,0x2
    1fbc:	03a52821 	addu	a1,sp,a1
    1fc0:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    1fc4:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    1fc8:	acc50018 	sw	a1,24(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    1fcc:	8c85001c 	lw	a1,28(a0)
    1fd0:	00000000 	sll	zero,zero,0x0
    1fd4:	10a000cd 	beqz	a1,230c <huff_make_dhuff_tb+0x5c8>
    1fd8:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    1fdc:	00031080 	sll	v0,v1,0x2
    1fe0:	03a21021 	addu	v0,sp,v0
    1fe4:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    1fe8:	ad83001c 	sw	v1,28(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    1fec:	ace2001c 	sw	v0,28(a3)
	  p += p_xhtbl_bits[l] - 1;
    1ff0:	8c85001c 	lw	a1,28(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    1ff4:	24020007 	addiu	v0,zero,7
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    1ff8:	24a5ffff 	addiu	a1,a1,-1
    1ffc:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    2000:	00032880 	sll	a1,v1,0x2
    2004:	03a52821 	addu	a1,sp,a1
    2008:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    200c:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    2010:	acc5001c 	sw	a1,28(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    2014:	8c850020 	lw	a1,32(a0)
    2018:	00000000 	sll	zero,zero,0x0
    201c:	10a000b9 	beqz	a1,2304 <huff_make_dhuff_tb+0x5c0>
    2020:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    2024:	00031080 	sll	v0,v1,0x2
    2028:	03a21021 	addu	v0,sp,v0
    202c:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    2030:	ad830020 	sw	v1,32(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    2034:	ace20020 	sw	v0,32(a3)
	  p += p_xhtbl_bits[l] - 1;
    2038:	8c850020 	lw	a1,32(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    203c:	24020008 	addiu	v0,zero,8
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    2040:	24a5ffff 	addiu	a1,a1,-1
    2044:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    2048:	00032880 	sll	a1,v1,0x2
    204c:	03a52821 	addu	a1,sp,a1
    2050:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    2054:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    2058:	acc50020 	sw	a1,32(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    205c:	8c850024 	lw	a1,36(a0)
    2060:	00000000 	sll	zero,zero,0x0
    2064:	10a000a5 	beqz	a1,22fc <huff_make_dhuff_tb+0x5b8>
    2068:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    206c:	00031080 	sll	v0,v1,0x2
    2070:	03a21021 	addu	v0,sp,v0
    2074:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    2078:	ad830024 	sw	v1,36(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    207c:	ace20024 	sw	v0,36(a3)
	  p += p_xhtbl_bits[l] - 1;
    2080:	8c850024 	lw	a1,36(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    2084:	24020009 	addiu	v0,zero,9
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    2088:	24a5ffff 	addiu	a1,a1,-1
    208c:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    2090:	00032880 	sll	a1,v1,0x2
    2094:	03a52821 	addu	a1,sp,a1
    2098:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    209c:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    20a0:	acc50024 	sw	a1,36(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    20a4:	8c850028 	lw	a1,40(a0)
    20a8:	00000000 	sll	zero,zero,0x0
    20ac:	10a00091 	beqz	a1,22f4 <huff_make_dhuff_tb+0x5b0>
    20b0:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    20b4:	00031080 	sll	v0,v1,0x2
    20b8:	03a21021 	addu	v0,sp,v0
    20bc:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    20c0:	ad830028 	sw	v1,40(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    20c4:	ace20028 	sw	v0,40(a3)
	  p += p_xhtbl_bits[l] - 1;
    20c8:	8c850028 	lw	a1,40(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    20cc:	2402000a 	addiu	v0,zero,10
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    20d0:	24a5ffff 	addiu	a1,a1,-1
    20d4:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    20d8:	00032880 	sll	a1,v1,0x2
    20dc:	03a52821 	addu	a1,sp,a1
    20e0:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    20e4:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    20e8:	acc50028 	sw	a1,40(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    20ec:	8c85002c 	lw	a1,44(a0)
    20f0:	00000000 	sll	zero,zero,0x0
    20f4:	10a0007d 	beqz	a1,22ec <huff_make_dhuff_tb+0x5a8>
    20f8:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    20fc:	00031080 	sll	v0,v1,0x2
    2100:	03a21021 	addu	v0,sp,v0
    2104:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    2108:	ad83002c 	sw	v1,44(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    210c:	ace2002c 	sw	v0,44(a3)
	  p += p_xhtbl_bits[l] - 1;
    2110:	8c85002c 	lw	a1,44(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    2114:	2402000b 	addiu	v0,zero,11
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    2118:	24a5ffff 	addiu	a1,a1,-1
    211c:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    2120:	00032880 	sll	a1,v1,0x2
    2124:	03a52821 	addu	a1,sp,a1
    2128:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    212c:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    2130:	acc5002c 	sw	a1,44(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    2134:	8c850030 	lw	a1,48(a0)
    2138:	00000000 	sll	zero,zero,0x0
    213c:	10a00069 	beqz	a1,22e4 <huff_make_dhuff_tb+0x5a0>
    2140:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    2144:	00031080 	sll	v0,v1,0x2
    2148:	03a21021 	addu	v0,sp,v0
    214c:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    2150:	ad830030 	sw	v1,48(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    2154:	ace20030 	sw	v0,48(a3)
	  p += p_xhtbl_bits[l] - 1;
    2158:	8c850030 	lw	a1,48(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    215c:	2402000c 	addiu	v0,zero,12
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    2160:	24a5ffff 	addiu	a1,a1,-1
    2164:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    2168:	00032880 	sll	a1,v1,0x2
    216c:	03a52821 	addu	a1,sp,a1
    2170:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    2174:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    2178:	acc50030 	sw	a1,48(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    217c:	8c850034 	lw	a1,52(a0)
    2180:	00000000 	sll	zero,zero,0x0
    2184:	10a00055 	beqz	a1,22dc <huff_make_dhuff_tb+0x598>
    2188:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    218c:	00031080 	sll	v0,v1,0x2
    2190:	03a21021 	addu	v0,sp,v0
    2194:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    2198:	ad830034 	sw	v1,52(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    219c:	ace20034 	sw	v0,52(a3)
	  p += p_xhtbl_bits[l] - 1;
    21a0:	8c850034 	lw	a1,52(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    21a4:	2402000d 	addiu	v0,zero,13
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    21a8:	24a5ffff 	addiu	a1,a1,-1
    21ac:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    21b0:	00032880 	sll	a1,v1,0x2
    21b4:	03a52821 	addu	a1,sp,a1
    21b8:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    21bc:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    21c0:	acc50034 	sw	a1,52(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    21c4:	8c850038 	lw	a1,56(a0)
    21c8:	00000000 	sll	zero,zero,0x0
    21cc:	10a00041 	beqz	a1,22d4 <huff_make_dhuff_tb+0x590>
    21d0:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    21d4:	00031080 	sll	v0,v1,0x2
    21d8:	03a21021 	addu	v0,sp,v0
    21dc:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    21e0:	ad830038 	sw	v1,56(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    21e4:	ace20038 	sw	v0,56(a3)
	  p += p_xhtbl_bits[l] - 1;
    21e8:	8c850038 	lw	a1,56(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    21ec:	2402000e 	addiu	v0,zero,14
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    21f0:	24a5ffff 	addiu	a1,a1,-1
    21f4:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    21f8:	00032880 	sll	a1,v1,0x2
    21fc:	03a52821 	addu	a1,sp,a1
    2200:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    2204:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    2208:	acc50038 	sw	a1,56(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    220c:	8c85003c 	lw	a1,60(a0)
    2210:	00000000 	sll	zero,zero,0x0
    2214:	10a0002d 	beqz	a1,22cc <huff_make_dhuff_tb+0x588>
    2218:	2405ffff 	addiu	a1,zero,-1
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    221c:	00031080 	sll	v0,v1,0x2
    2220:	03a21021 	addu	v0,sp,v0
    2224:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    2228:	ad83003c 	sw	v1,60(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    222c:	ace2003c 	sw	v0,60(a3)
	  p += p_xhtbl_bits[l] - 1;
    2230:	8c85003c 	lw	a1,60(a0)
	  size++;
	}
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    2234:	2402000f 	addiu	v0,zero,15
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
    2238:	24a5ffff 	addiu	a1,a1,-1
    223c:	00a31821 	addu	v1,a1,v1
	  p_dhtbl_maxcode[l] = huffcode[p];
    2240:	00032880 	sll	a1,v1,0x2
    2244:	03a52821 	addu	a1,sp,a1
    2248:	8ca50404 	lw	a1,1028(a1)
	  p_dhtbl_ml = l;
	  p++;
    224c:	24630001 	addiu	v1,v1,1
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    2250:	acc5003c 	sw	a1,60(a2)
      while (huffsize[p] != size);
    }

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
    2254:	8c850040 	lw	a1,64(a0)
    2258:	00000000 	sll	zero,zero,0x0
    225c:	14a0000d 	bnez	a1,2294 <huff_make_dhuff_tb+0x550>
    2260:	00000000 	sll	zero,zero,0x0
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
    2264:	2403ffff 	addiu	v1,zero,-1
    2268:	acc30040 	sw	v1,64(a2)
	  p_dhtbl_maxcode[l] = huffcode[p];
	  p_dhtbl_ml = l;
	  p++;
	}
    }
  p_dhtbl_maxcode[p_dhtbl_ml]++;
    226c:	00021880 	sll	v1,v0,0x2
    2270:	00c33021 	addu	a2,a2,v1
    2274:	8cc30000 	lw	v1,0(a2)
  return p_dhtbl_ml;
}
    2278:	27bd0808 	addiu	sp,sp,2056
	  p_dhtbl_maxcode[l] = huffcode[p];
	  p_dhtbl_ml = l;
	  p++;
	}
    }
  p_dhtbl_maxcode[p_dhtbl_ml]++;
    227c:	24630001 	addiu	v1,v1,1
  return p_dhtbl_ml;
}
    2280:	03e00008 	jr	ra
    2284:	acc30000 	sw	v1,0(a2)

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
    2288:	acc20004 	sw	v0,4(a2)
    228c:	08000799 	j	1e64 <huff_make_dhuff_tb+0x120>
    2290:	00001821 	addu	v1,zero,zero
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
	  p_dhtbl_mincode[l] = huffcode[p];
    2294:	00031080 	sll	v0,v1,0x2
    2298:	03a21021 	addu	v0,sp,v0
    229c:	8c420404 	lw	v0,1028(v0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
	}
      else
	{			/* We use -1 to indicate skipping. */
	  p_dhtbl_valptr[l] = p;
    22a0:	ad830040 	sw	v1,64(t4)
	  p_dhtbl_mincode[l] = huffcode[p];
    22a4:	ace20040 	sw	v0,64(a3)
	  p += p_xhtbl_bits[l] - 1;
	  p_dhtbl_maxcode[l] = huffcode[p];
    22a8:	8c840040 	lw	a0,64(a0)
    22ac:	24020010 	addiu	v0,zero,16
    22b0:	00641821 	addu	v1,v1,a0
    22b4:	2463ffff 	addiu	v1,v1,-1
    22b8:	00031880 	sll	v1,v1,0x2
    22bc:	03a31821 	addu	v1,sp,v1
    22c0:	8c630404 	lw	v1,1028(v1)
    22c4:	0800089b 	j	226c <huff_make_dhuff_tb+0x528>
    22c8:	acc30040 	sw	v1,64(a2)

  for (p_dhtbl_ml = 1, p = 0, l = 1; l <= 16; l++)
    {
      if (p_xhtbl_bits[l] == 0)
	{
	  p_dhtbl_maxcode[l] = -1;	/* Watch out JPEG is wrong here */
    22cc:	08000895 	j	2254 <huff_make_dhuff_tb+0x510>
    22d0:	acc5003c 	sw	a1,60(a2)
    22d4:	08000883 	j	220c <huff_make_dhuff_tb+0x4c8>
    22d8:	acc50038 	sw	a1,56(a2)
    22dc:	08000871 	j	21c4 <huff_make_dhuff_tb+0x480>
    22e0:	acc50034 	sw	a1,52(a2)
    22e4:	0800085f 	j	217c <huff_make_dhuff_tb+0x438>
    22e8:	acc50030 	sw	a1,48(a2)
    22ec:	0800084d 	j	2134 <huff_make_dhuff_tb+0x3f0>
    22f0:	acc5002c 	sw	a1,44(a2)
    22f4:	0800083b 	j	20ec <huff_make_dhuff_tb+0x3a8>
    22f8:	acc50028 	sw	a1,40(a2)
    22fc:	08000829 	j	20a4 <huff_make_dhuff_tb+0x360>
    2300:	acc50024 	sw	a1,36(a2)
    2304:	08000817 	j	205c <huff_make_dhuff_tb+0x318>
    2308:	acc50020 	sw	a1,32(a2)
    230c:	08000805 	j	2014 <huff_make_dhuff_tb+0x2d0>
    2310:	acc5001c 	sw	a1,28(a2)
    2314:	080007f3 	j	1fcc <huff_make_dhuff_tb+0x288>
    2318:	acc50018 	sw	a1,24(a2)
    231c:	080007e1 	j	1f84 <huff_make_dhuff_tb+0x240>
    2320:	acc50014 	sw	a1,20(a2)
    2324:	080007cf 	j	1f3c <huff_make_dhuff_tb+0x1f8>
    2328:	acc50010 	sw	a1,16(a2)
    232c:	080007bd 	j	1ef4 <huff_make_dhuff_tb+0x1b0>
    2330:	acc5000c 	sw	a1,12(a2)
    2334:	acc20008 	sw	v0,8(a2)
    2338:	080007ab 	j	1eac <huff_make_dhuff_tb+0x168>
    233c:	24020001 	addiu	v0,zero,1

00002340 <DecodeHuffman>:
 * buf_getb() gets a bit from the read stream.
 */
int
buf_getb ()
{
  if (read_position < 0)
    2340:	8f82003c 	lw	v0,60(gp)
 *  
 */
int
DecodeHuffman (int *Xhuff_huffval, int Dhuff_ml,
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
    2344:	27bdffb8 	addiu	sp,sp,-72
    2348:	afb00024 	sw	s0,36(sp)
    234c:	afbf0044 	sw	ra,68(sp)
    2350:	afb70040 	sw	s7,64(sp)
    2354:	afb6003c 	sw	s6,60(sp)
    2358:	afb50038 	sw	s5,56(sp)
    235c:	afb40034 	sw	s4,52(sp)
    2360:	afb30030 	sw	s3,48(sp)
    2364:	afb2002c 	sw	s2,44(sp)
    2368:	afb10028 	sw	s1,40(sp)
 * buf_getb() gets a bit from the read stream.
 */
int
buf_getb ()
{
  if (read_position < 0)
    236c:	04400067 	bltz	v0,250c <DecodeHuffman+0x1cc>
    2370:	00808021 	addu	s0,a0,zero
    2374:	8f960010 	lw	s6,16(gp)
    2378:	2443ffff 	addiu	v1,v0,-1
    {
      current_read_byte = pgetc ();
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    237c:	3c130000 	lui	s3,0x0
    2380:	00021080 	sll	v0,v0,0x2
    2384:	26730000 	addiu	s3,s3,0
    2388:	02621021 	addu	v0,s3,v0
    238c:	8c520000 	lw	s2,0(v0)
    2390:	af83003c 	sw	v1,60(gp)
    2394:	02d29024 	and	s2,s6,s2
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
  int code, l, p;

  code = buf_getb ();
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    2398:	8cc20004 	lw	v0,4(a2)
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    {
      return (1);
    239c:	0012902b 	sltu	s2,zero,s2
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
  int code, l, p;

  code = buf_getb ();
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    23a0:	0052102a 	slt	v0,v0,s2
    23a4:	10400065 	beqz	v0,253c <DecodeHuffman+0x1fc>
    23a8:	00000000 	sll	zero,zero,0x0

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
	{			/* if next is not 0xff, then marker */
	  printf ("Unanticipated marker detected.\n");
    23ac:	3c170000 	lui	s7,0x0
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
  int code, l, p;

  code = buf_getb ();
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    23b0:	24110008 	addiu	s1,zero,8
 * buf_getb() gets a bit from the read stream.
 */
int
buf_getb ()
{
  if (read_position < 0)
    23b4:	2414ffff 	addiu	s4,zero,-1
static int
pgetc ()
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    23b8:	241500ff 	addiu	s5,zero,255
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
	{			/* if next is not 0xff, then marker */
	  printf ("Unanticipated marker detected.\n");
    23bc:	08000900 	j	2400 <DecodeHuffman+0xc0>
    23c0:	26f70000 	addiu	s7,s7,0
 * buf_getb() gets a bit from the read stream.
 */
int
buf_getb ()
{
  if (read_position < 0)
    23c4:	00601021 	addu	v0,v1,zero
    {
      current_read_byte = pgetc ();
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    23c8:	00021080 	sll	v0,v0,0x2
    23cc:	02621021 	addu	v0,s3,v0
    23d0:	8c440000 	lw	a0,0(v0)
 * buf_getb() gets a bit from the read stream.
 */
int
buf_getb ()
{
  if (read_position < 0)
    23d4:	2463ffff 	addiu	v1,v1,-1
    {
      current_read_byte = pgetc ();
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    23d8:	af83003c 	sw	v1,60(gp)
    23dc:	02c42024 	and	a0,s6,a0

/*
 *  
 */
int
DecodeHuffman (int *Xhuff_huffval, int Dhuff_ml,
    23e0:	00d11021 	addu	v0,a2,s1
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    {
      return (1);
    23e4:	0004202b 	sltu	a0,zero,a0
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
  int code, l, p;

  code = buf_getb ();
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    23e8:	8c420000 	lw	v0,0(v0)
    {
      code = (code << 1) + buf_getb ();
    23ec:	00929021 	addu	s2,a0,s2
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
  int code, l, p;

  code = buf_getb ();
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    23f0:	0052102a 	slt	v0,v0,s2
    23f4:	10400019 	beqz	v0,245c <DecodeHuffman+0x11c>
    23f8:	26240004 	addiu	a0,s1,4
    23fc:	00808821 	addu	s1,a0,zero
 * buf_getb() gets a bit from the read stream.
 */
int
buf_getb ()
{
  if (read_position < 0)
    2400:	1474fff0 	bne	v1,s4,23c4 <DecodeHuffman+0x84>
    2404:	00129040 	sll	s2,s2,0x1
static int
pgetc ()
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    2408:	8f820000 	lw	v0,0(gp)
    240c:	00000000 	sll	zero,zero,0x0
    2410:	90560000 	lbu	s6,0(v0)
    2414:	24430001 	addiu	v1,v0,1
    2418:	12d5002c 	beq	s6,s5,24cc <DecodeHuffman+0x18c>
    241c:	af830000 	sw	v1,0(gp)
int
buf_getb ()
{
  if (read_position < 0)
    {
      current_read_byte = pgetc ();
    2420:	24020007 	addiu	v0,zero,7
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    2424:	00021080 	sll	v0,v0,0x2
    2428:	02621021 	addu	v0,s3,v0
    242c:	8c440000 	lw	a0,0(v0)
int
buf_getb ()
{
  if (read_position < 0)
    {
      current_read_byte = pgetc ();
    2430:	24030006 	addiu	v1,zero,6
    2434:	af960010 	sw	s6,16(gp)
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    2438:	af83003c 	sw	v1,60(gp)
    243c:	02c42024 	and	a0,s6,a0

/*
 *  
 */
int
DecodeHuffman (int *Xhuff_huffval, int Dhuff_ml,
    2440:	00d11021 	addu	v0,a2,s1
      read_position = 7;
    }

  if (current_read_byte & bit_set_mask[read_position--])
    {
      return (1);
    2444:	0004202b 	sltu	a0,zero,a0
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
  int code, l, p;

  code = buf_getb ();
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    2448:	8c420000 	lw	v0,0(v0)
    {
      code = (code << 1) + buf_getb ();
    244c:	00929021 	addu	s2,a0,s2
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
  int code, l, p;

  code = buf_getb ();
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    2450:	0052102a 	slt	v0,v0,s2
    2454:	1440ffe9 	bnez	v0,23fc <DecodeHuffman+0xbc>
    2458:	26240004 	addiu	a0,s1,4
    {
      code = (code << 1) + buf_getb ();
    }

  if (code < Dhuff_maxcode[Dhuff_ml])
    245c:	00052880 	sll	a1,a1,0x2
    2460:	00c53021 	addu	a2,a2,a1
    2464:	8cc20000 	lw	v0,0(a2)
    2468:	00000000 	sll	zero,zero,0x0
    246c:	0242102a 	slt	v0,s2,v0
    2470:	10400045 	beqz	v0,2588 <DecodeHuffman+0x248>
    2474:	00000000 	sll	zero,zero,0x0
    {
      p = Dhuff_valptr[l] + code - Dhuff_mincode[l];
    2478:	8fa20058 	lw	v0,88(sp)
      main_result++;
      printf ("Huffman read error\n");
      EXIT;
    }

}
    247c:	8fbf0044 	lw	ra,68(sp)
      code = (code << 1) + buf_getb ();
    }

  if (code < Dhuff_maxcode[Dhuff_ml])
    {
      p = Dhuff_valptr[l] + code - Dhuff_mincode[l];
    2480:	00511021 	addu	v0,v0,s1
    2484:	8c430000 	lw	v1,0(v0)
    2488:	00f18821 	addu	s1,a3,s1
    248c:	8e220000 	lw	v0,0(s1)
    2490:	02439021 	addu	s2,s2,v1
    2494:	02429023 	subu	s2,s2,v0
      return (Xhuff_huffval[p]);
    2498:	00129080 	sll	s2,s2,0x2
    249c:	02128021 	addu	s0,s0,s2
      main_result++;
      printf ("Huffman read error\n");
      EXIT;
    }

}
    24a0:	8e020000 	lw	v0,0(s0)
    24a4:	8fb70040 	lw	s7,64(sp)
    24a8:	8fb6003c 	lw	s6,60(sp)
    24ac:	8fb50038 	lw	s5,56(sp)
    24b0:	8fb40034 	lw	s4,52(sp)
    24b4:	8fb30030 	lw	s3,48(sp)
    24b8:	8fb2002c 	lw	s2,44(sp)
    24bc:	8fb10028 	lw	s1,40(sp)
    24c0:	8fb00024 	lw	s0,36(sp)
    24c4:	03e00008 	jr	ra
    24c8:	27bd0048 	addiu	sp,sp,72
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
    24cc:	90560001 	lbu	s6,1(v0)
    24d0:	24420002 	addiu	v0,v0,2
    24d4:	16c00003 	bnez	s6,24e4 <DecodeHuffman+0x1a4>
    24d8:	af820000 	sw	v0,0(gp)
    24dc:	08000908 	j	2420 <DecodeHuffman+0xe0>
    24e0:	241600ff 	addiu	s6,zero,255
	{			/* if next is not 0xff, then marker */
	  printf ("Unanticipated marker detected.\n");
    24e4:	02e02021 	addu	a0,s7,zero
    24e8:	afa50010 	sw	a1,16(sp)
    24ec:	afa60014 	sw	a2,20(sp)
    24f0:	0c000000 	jal	0 <read_byte>
    24f4:	afa70018 	sw	a3,24(sp)
    24f8:	8fa50010 	lw	a1,16(sp)
    24fc:	8fa60014 	lw	a2,20(sp)
    2500:	8fa70018 	lw	a3,24(sp)
int
buf_getb ()
{
  if (read_position < 0)
    {
      current_read_byte = pgetc ();
    2504:	08000909 	j	2424 <DecodeHuffman+0xe4>
    2508:	24020007 	addiu	v0,zero,7
static int
pgetc ()
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    250c:	8f820000 	lw	v0,0(gp)
    2510:	00000000 	sll	zero,zero,0x0
    2514:	24430001 	addiu	v1,v0,1
    2518:	90560000 	lbu	s6,0(v0)
    251c:	af830000 	sw	v1,0(gp)
    2520:	240300ff 	addiu	v1,zero,255
    2524:	12c30007 	beq	s6,v1,2544 <DecodeHuffman+0x204>
    2528:	00000000 	sll	zero,zero,0x0
int
buf_getb ()
{
  if (read_position < 0)
    {
      current_read_byte = pgetc ();
    252c:	af960010 	sw	s6,16(gp)
    2530:	24030006 	addiu	v1,zero,6
    2534:	080008df 	j	237c <DecodeHuffman+0x3c>
    2538:	24020007 	addiu	v0,zero,7
	       int *Dhuff_maxcode, int *Dhuff_mincode, int *Dhuff_valptr)
{
  int code, l, p;

  code = buf_getb ();
  for (l = 1; code > Dhuff_maxcode[l]; l++)
    253c:	08000917 	j	245c <DecodeHuffman+0x11c>
    2540:	24110004 	addiu	s1,zero,4
{
  int temp;

  if ((temp = *CurHuffReadBuf++) == MARKER_MARKER)
    {				/* If MARKER then */
      if ((temp = *CurHuffReadBuf++))
    2544:	90560001 	lbu	s6,1(v0)
    2548:	24420002 	addiu	v0,v0,2
    254c:	16c00003 	bnez	s6,255c <DecodeHuffman+0x21c>
    2550:	af820000 	sw	v0,0(gp)
    2554:	0800094b 	j	252c <DecodeHuffman+0x1ec>
    2558:	241600ff 	addiu	s6,zero,255
	{			/* if next is not 0xff, then marker */
	  printf ("Unanticipated marker detected.\n");
    255c:	3c040000 	lui	a0,0x0
    2560:	24840000 	addiu	a0,a0,0
    2564:	afa50010 	sw	a1,16(sp)
    2568:	afa60014 	sw	a2,20(sp)
    256c:	0c000000 	jal	0 <read_byte>
    2570:	afa70018 	sw	a3,24(sp)
    2574:	8fa50010 	lw	a1,16(sp)
    2578:	8fa60014 	lw	a2,20(sp)
    257c:	8fa70018 	lw	a3,24(sp)
int
buf_getb ()
{
  if (read_position < 0)
    {
      current_read_byte = pgetc ();
    2580:	0800094c 	j	2530 <DecodeHuffman+0x1f0>
    2584:	af960010 	sw	s6,16(gp)
      p = Dhuff_valptr[l] + code - Dhuff_mincode[l];
      return (Xhuff_huffval[p]);
    }
  else
    {
      main_result++;
    2588:	8f820000 	lw	v0,0(gp)
      printf ("Huffman read error\n");
    258c:	3c040000 	lui	a0,0x0
      p = Dhuff_valptr[l] + code - Dhuff_mincode[l];
      return (Xhuff_huffval[p]);
    }
  else
    {
      main_result++;
    2590:	24420001 	addiu	v0,v0,1
      printf ("Huffman read error\n");
    2594:	24840000 	addiu	a0,a0,0
    2598:	0c000000 	jal	0 <read_byte>
    259c:	af820000 	sw	v0,0(gp)
      EXIT;
    25a0:	0c000000 	jal	0 <read_byte>
    25a4:	00002021 	addu	a0,zero,zero

000025a8 <DecodeHuffMCU>:
/*
 * Decode one MCU
 */
void
DecodeHuffMCU (int *out_buf, int num_cmp)
{
    25a8:	27bdffb0 	addiu	sp,sp,-80
  int s, diff, tbl_no, *mptr, k, n, r;

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
    25ac:	27820000 	addiu	v0,gp,0
/*
 * Decode one MCU
 */
void
DecodeHuffMCU (int *out_buf, int num_cmp)
{
    25b0:	afb40038 	sw	s4,56(sp)
    25b4:	afb30034 	sw	s3,52(sp)
    25b8:	afb20030 	sw	s2,48(sp)
    25bc:	afb1002c 	sw	s1,44(sp)
    25c0:	afb00028 	sw	s0,40(sp)
    25c4:	afbf004c 	sw	ra,76(sp)
    25c8:	afbe0048 	sw	s8,72(sp)
    25cc:	afb70044 	sw	s7,68(sp)
    25d0:	afb60040 	sw	s6,64(sp)
    25d4:	afb5003c 	sw	s5,60(sp)
  int s, diff, tbl_no, *mptr, k, n, r;

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
    25d8:	00451021 	addu	v0,v0,a1
    25dc:	80420000 	lb	v0,0(v0)
  s = DecodeHuffman (&p_jinfo_dc_xhuff_tbl_huffval[tbl_no][0],
    25e0:	27830000 	addiu	v1,gp,0
    25e4:	00029080 	sll	s2,v0,0x2
    25e8:	00029a80 	sll	s3,v0,0xa
		     p_jinfo_dc_dhuff_tbl_ml[tbl_no],
		     &p_jinfo_dc_dhuff_tbl_maxcode[tbl_no][0],
    25ec:	00028100 	sll	s0,v0,0x4
    25f0:	000211c0 	sll	v0,v0,0x7
    25f4:	02028021 	addu	s0,s0,v0

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
  s = DecodeHuffman (&p_jinfo_dc_xhuff_tbl_huffval[tbl_no][0],
    25f8:	00721821 	addu	v1,v1,s2
    25fc:	3c020000 	lui	v0,0x0
/*
 * Decode one MCU
 */
void
DecodeHuffMCU (int *out_buf, int num_cmp)
{
    2600:	00808821 	addu	s1,a0,zero

  /*
   * Decode DC
   */
  tbl_no = p_jinfo_comps_info_dc_tbl_no[num_cmp];
  s = DecodeHuffman (&p_jinfo_dc_xhuff_tbl_huffval[tbl_no][0],
    2604:	3c060000 	lui	a2,0x0
    2608:	3c040000 	lui	a0,0x0
    260c:	3c070000 	lui	a3,0x0
    2610:	8c650000 	lw	a1,0(v1)
    2614:	02539821 	addu	s3,s2,s3
    2618:	24420000 	addiu	v0,v0,0
    261c:	24840000 	addiu	a0,a0,0
    2620:	24c60000 	addiu	a2,a2,0
    2624:	24e70000 	addiu	a3,a3,0
    2628:	00501021 	addu	v0,v0,s0
    262c:	00932021 	addu	a0,a0,s3
    2630:	00d03021 	addu	a2,a2,s0
    2634:	00f03821 	addu	a3,a3,s0
    2638:	0c000000 	jal	0 <read_byte>
    263c:	afa20010 	sw	v0,16(sp)
		     p_jinfo_dc_dhuff_tbl_ml[tbl_no],
		     &p_jinfo_dc_dhuff_tbl_maxcode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_mincode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_valptr[tbl_no][0]);

  if (s)
    2640:	14400053 	bnez	v0,2790 <DecodeHuffMCU+0x1e8>
    2644:	0040a021 	addu	s4,v0,zero

  /*
   * Decode AC
   */
  /* Set all values to zero */
  for (mptr = out_buf + 1; mptr < out_buf + DCTSIZE2; mptr++)
    2648:	26220004 	addiu	v0,s1,4

/*
 * Decode one MCU
 */
void
DecodeHuffMCU (int *out_buf, int num_cmp)
    264c:	26230100 	addiu	v1,s1,256
   * Decode AC
   */
  /* Set all values to zero */
  for (mptr = out_buf + 1; mptr < out_buf + DCTSIZE2; mptr++)
    {
      *mptr = 0;
    2650:	ac400000 	sw	zero,0(v0)

  /*
   * Decode AC
   */
  /* Set all values to zero */
  for (mptr = out_buf + 1; mptr < out_buf + DCTSIZE2; mptr++)
    2654:	24420004 	addiu	v0,v0,4
    2658:	1443fffd 	bne	v0,v1,2650 <DecodeHuffMCU+0xa8>
    265c:	3c160000 	lui	s6,0x0
      else
	{
	  break;
	}
    }
}
    2660:	26d60000 	addiu	s6,s6,0
    2664:	02d3b021 	addu	s6,s6,s3
    2668:	3c150000 	lui	s5,0x0
    266c:	3c140000 	lui	s4,0x0
    2670:	3c130000 	lui	s3,0x0
    2674:	26b50000 	addiu	s5,s5,0
    2678:	26940000 	addiu	s4,s4,0
    267c:	26730000 	addiu	s3,s3,0
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    {				/* JPEG Mistake */
      r = DecodeHuffman (&p_jinfo_ac_xhuff_tbl_huffval[tbl_no][0],
    2680:	27820000 	addiu	v0,gp,0
	    break;
	  out_buf[k] = buf_getv (s);	/* Get s bits */
	  s--;			/* Align s */
	  if ((out_buf[k] & bit_set_mask[s]) == 0)
	    {			/* Also (1 << s) */
	      out_buf[k] |= extend_mask[s];	/* Also  (-1 << s) + 1 */
    2684:	3c1e0000 	lui	s8,0x0
      else
	{
	  break;
	}
    }
}
    2688:	02b0a821 	addu	s5,s5,s0
    268c:	0290a021 	addu	s4,s4,s0
    2690:	02709821 	addu	s3,s3,s0
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    {				/* JPEG Mistake */
      r = DecodeHuffman (&p_jinfo_ac_xhuff_tbl_huffval[tbl_no][0],
    2694:	00529021 	addu	s2,v0,s2

  /*
   * Decode AC
   */
  /* Set all values to zero */
  for (mptr = out_buf + 1; mptr < out_buf + DCTSIZE2; mptr++)
    2698:	24100001 	addiu	s0,zero,1
	      out_buf[k] |= extend_mask[s];	/* Also  (-1 << s) + 1 */
	      out_buf[k]++;	/* Increment 2's c */
	    }
	  k++;			/* Goto next element */
	}
      else if (n == 15)		/* Zero run length code extnd */
    269c:	2417000f 	addiu	s7,zero,15
	    break;
	  out_buf[k] = buf_getv (s);	/* Get s bits */
	  s--;			/* Align s */
	  if ((out_buf[k] & bit_set_mask[s]) == 0)
	    {			/* Also (1 << s) */
	      out_buf[k] |= extend_mask[s];	/* Also  (-1 << s) + 1 */
    26a0:	27de572c 	addiu	s8,s8,22316
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    {				/* JPEG Mistake */
      r = DecodeHuffman (&p_jinfo_ac_xhuff_tbl_huffval[tbl_no][0],
    26a4:	8e450000 	lw	a1,0(s2)
    26a8:	02c02021 	addu	a0,s6,zero
    26ac:	02a03021 	addu	a2,s5,zero
    26b0:	02803821 	addu	a3,s4,zero
    26b4:	0c000000 	jal	0 <read_byte>
    26b8:	afb30010 	sw	s3,16(sp)
			 p_jinfo_ac_dhuff_tbl_ml[tbl_no],
			 &p_jinfo_ac_dhuff_tbl_maxcode[tbl_no][0],
			 &p_jinfo_ac_dhuff_tbl_mincode[tbl_no][0],
			 &p_jinfo_ac_dhuff_tbl_valptr[tbl_no][0]);

      s = r & 0xf;		/* Find significant bits */
    26bc:	3045000f 	andi	a1,v0,0xf
      n = (r >> 4) & 0xf;	/* n = run-length */
    26c0:	00021103 	sra	v0,v0,0x4
    26c4:	3042000f 	andi	v0,v0,0xf

      if (s)
	{
	  if ((k += n) >= DCTSIZE2)	/* JPEG Mistake */
    26c8:	00501821 	addu	v1,v0,s0
	    break;
	  out_buf[k] = buf_getv (s);	/* Get s bits */
    26cc:	00033080 	sll	a2,v1,0x2
    26d0:	00a02021 	addu	a0,a1,zero
    26d4:	02263021 	addu	a2,s1,a2
			 &p_jinfo_ac_dhuff_tbl_valptr[tbl_no][0]);

      s = r & 0xf;		/* Find significant bits */
      n = (r >> 4) & 0xf;	/* n = run-length */

      if (s)
    26d8:	10a00029 	beqz	a1,2780 <DecodeHuffMCU+0x1d8>
    26dc:	28670040 	slti	a3,v1,64
	{
	  if ((k += n) >= DCTSIZE2)	/* JPEG Mistake */
    26e0:	10e0001b 	beqz	a3,2750 <DecodeHuffMCU+0x1a8>
    26e4:	00000000 	sll	zero,zero,0x0
	    break;
	  out_buf[k] = buf_getv (s);	/* Get s bits */
    26e8:	afa3001c 	sw	v1,28(sp)
    26ec:	afa50018 	sw	a1,24(sp)
    26f0:	0c000000 	jal	0 <read_byte>
    26f4:	afa60020 	sw	a2,32(sp)
	  s--;			/* Align s */
    26f8:	8fa50018 	lw	a1,24(sp)
	  if ((out_buf[k] & bit_set_mask[s]) == 0)
    26fc:	3c040000 	lui	a0,0x0
      if (s)
	{
	  if ((k += n) >= DCTSIZE2)	/* JPEG Mistake */
	    break;
	  out_buf[k] = buf_getv (s);	/* Get s bits */
	  s--;			/* Align s */
    2700:	24a5ffff 	addiu	a1,a1,-1
	  if ((out_buf[k] & bit_set_mask[s]) == 0)
    2704:	00052880 	sll	a1,a1,0x2
    2708:	24840000 	addiu	a0,a0,0
	    {			/* Also (1 << s) */
	      out_buf[k] |= extend_mask[s];	/* Also  (-1 << s) + 1 */
    270c:	00be3821 	addu	a3,a1,s8
	{
	  if ((k += n) >= DCTSIZE2)	/* JPEG Mistake */
	    break;
	  out_buf[k] = buf_getv (s);	/* Get s bits */
	  s--;			/* Align s */
	  if ((out_buf[k] & bit_set_mask[s]) == 0)
    2710:	00a42821 	addu	a1,a1,a0
    2714:	8ca40000 	lw	a0,0(a1)

      if (s)
	{
	  if ((k += n) >= DCTSIZE2)	/* JPEG Mistake */
	    break;
	  out_buf[k] = buf_getv (s);	/* Get s bits */
    2718:	8fa60020 	lw	a2,32(sp)
	  s--;			/* Align s */
	  if ((out_buf[k] & bit_set_mask[s]) == 0)
    271c:	00442024 	and	a0,v0,a0

      if (s)
	{
	  if ((k += n) >= DCTSIZE2)	/* JPEG Mistake */
	    break;
	  out_buf[k] = buf_getv (s);	/* Get s bits */
    2720:	acc20000 	sw	v0,0(a2)
	  s--;			/* Align s */
	  if ((out_buf[k] & bit_set_mask[s]) == 0)
    2724:	8fa3001c 	lw	v1,28(sp)
    2728:	14800006 	bnez	a0,2744 <DecodeHuffMCU+0x19c>
    272c:	24700001 	addiu	s0,v1,1
	    {			/* Also (1 << s) */
	      out_buf[k] |= extend_mask[s];	/* Also  (-1 << s) + 1 */
    2730:	8ce40000 	lw	a0,0(a3)
    2734:	00000000 	sll	zero,zero,0x0
    2738:	00441025 	or	v0,v0,a0
	      out_buf[k]++;	/* Increment 2's c */
    273c:	24420001 	addiu	v0,v0,1
    2740:	acc20000 	sw	v0,0(a2)
  for (mptr = out_buf + 1; mptr < out_buf + DCTSIZE2; mptr++)
    {
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    2744:	2a020040 	slti	v0,s0,64
    2748:	1440ffd6 	bnez	v0,26a4 <DecodeHuffMCU+0xfc>
    274c:	00000000 	sll	zero,zero,0x0
      else
	{
	  break;
	}
    }
}
    2750:	8fbf004c 	lw	ra,76(sp)
    2754:	8fbe0048 	lw	s8,72(sp)
    2758:	8fb70044 	lw	s7,68(sp)
    275c:	8fb60040 	lw	s6,64(sp)
    2760:	8fb5003c 	lw	s5,60(sp)
    2764:	8fb40038 	lw	s4,56(sp)
    2768:	8fb30034 	lw	s3,52(sp)
    276c:	8fb20030 	lw	s2,48(sp)
    2770:	8fb1002c 	lw	s1,44(sp)
    2774:	8fb00028 	lw	s0,40(sp)
    2778:	03e00008 	jr	ra
    277c:	27bd0050 	addiu	sp,sp,80
	      out_buf[k] |= extend_mask[s];	/* Also  (-1 << s) + 1 */
	      out_buf[k]++;	/* Increment 2's c */
	    }
	  k++;			/* Goto next element */
	}
      else if (n == 15)		/* Zero run length code extnd */
    2780:	1457fff3 	bne	v0,s7,2750 <DecodeHuffMCU+0x1a8>
    2784:	26100010 	addiu	s0,s0,16
  for (mptr = out_buf + 1; mptr < out_buf + DCTSIZE2; mptr++)
    {
      *mptr = 0;
    }

  for (k = 1; k < DCTSIZE2;)
    2788:	080009d2 	j	2748 <DecodeHuffMCU+0x1a0>
    278c:	2a020040 	slti	v0,s0,64
		     &p_jinfo_dc_dhuff_tbl_mincode[tbl_no][0],
		     &p_jinfo_dc_dhuff_tbl_valptr[tbl_no][0]);

  if (s)
    {
      diff = buf_getv (s);
    2790:	0c000000 	jal	0 <read_byte>
    2794:	00402021 	addu	a0,v0,zero
      s--;
    2798:	2694ffff 	addiu	s4,s4,-1
      if ((diff & bit_set_mask[s]) == 0)
    279c:	3c030000 	lui	v1,0x0
    27a0:	0014a080 	sll	s4,s4,0x2
    27a4:	24630000 	addiu	v1,v1,0
    27a8:	02831821 	addu	v1,s4,v1
    27ac:	8c630000 	lw	v1,0(v1)
    27b0:	00000000 	sll	zero,zero,0x0
    27b4:	00431824 	and	v1,v0,v1
    27b8:	14600007 	bnez	v1,27d8 <DecodeHuffMCU+0x230>
    27bc:	3c030000 	lui	v1,0x0
	{
	  diff |= extend_mask[s];
    27c0:	2463572c 	addiu	v1,v1,22316
    27c4:	0283a021 	addu	s4,s4,v1
    27c8:	8e830000 	lw	v1,0(s4)
    27cc:	00000000 	sll	zero,zero,0x0
    27d0:	00431025 	or	v0,v0,v1
	  diff++;
    27d4:	24420001 	addiu	v0,v0,1
	}

      diff += *out_buf;		/* Change the last DC */
    27d8:	8e230000 	lw	v1,0(s1)
    27dc:	00000000 	sll	zero,zero,0x0
    27e0:	00621021 	addu	v0,v1,v0
      *out_buf = diff;
    27e4:	08000992 	j	2648 <DecodeHuffMCU+0xa0>
    27e8:	ae220000 	sw	v0,0(s1)

000027ec <decode_block>:
/*
 * Decode one block
 */
void
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
    27ec:	27bdfed8 	addiu	sp,sp,-296
    27f0:	afb0011c 	sw	s0,284(sp)
    27f4:	00808021 	addu	s0,a0,zero
    27f8:	afb10120 	sw	s1,288(sp)
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    27fc:	00c02021 	addu	a0,a2,zero
/*
 * Decode one block
 */
void
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
    2800:	00a08821 	addu	s1,a1,zero
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    2804:	afa60110 	sw	a2,272(sp)
/*
 * Decode one block
 */
void
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
    2808:	afbf0124 	sw	ra,292(sp)
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    280c:	0c000000 	jal	0 <read_byte>
    2810:	02002821 	addu	a1,s0,zero
    2814:	3c080000 	lui	t0,0x0
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    2818:	8fa60110 	lw	a2,272(sp)
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    281c:	00001021 	addu	v0,zero,zero
    2820:	27a40010 	addiu	a0,sp,16
    2824:	25080000 	addiu	t0,t0,0
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    2828:	24070100 	addiu	a3,zero,256

/*
 * Decode one block
 */
void
decode_block (int comp_no, int *out_buf, int *HuffBuff)
    282c:	01021821 	addu	v1,t0,v0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    2830:	8c650000 	lw	a1,0(v1)

/*
 * Decode one block
 */
void
decode_block (int comp_no, int *out_buf, int *HuffBuff)
    2834:	00821821 	addu	v1,a0,v0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    2838:	00052880 	sll	a1,a1,0x2
    283c:	00c52821 	addu	a1,a2,a1
    2840:	8ca50000 	lw	a1,0(a1)
    2844:	24420004 	addiu	v0,v0,4
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    2848:	1447fff8 	bne	v0,a3,282c <decode_block+0x40>
    284c:	ac650000 	sw	a1,0(v1)
  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    2850:	27820000 	addiu	v0,gp,0
    2854:	00508021 	addu	s0,v0,s0
    2858:	82020000 	lb	v0,0(s0)

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    285c:	3c030000 	lui	v1,0x0
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    2860:	24420001 	addiu	v0,v0,1
    2864:	00021200 	sll	v0,v0,0x8

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    2868:	24630000 	addiu	v1,v1,0
    286c:	00621821 	addu	v1,v1,v0

/*
 * Decode one block
 */
void
decode_block (int comp_no, int *out_buf, int *HuffBuff)
    2870:	27a50110 	addiu	a1,sp,272
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2874:	00801021 	addu	v0,a0,zero
    {
      *mptr = *mptr * (*qmatrix);
    2878:	8c660000 	lw	a2,0(v1)
    287c:	8c470000 	lw	a3,0(v0)
    2880:	00000000 	sll	zero,zero,0x0
    2884:	00e60018 	mult	a3,a2
    2888:	00003012 	mflo	a2
    288c:	ac460000 	sw	a2,0(v0)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2890:	24420004 	addiu	v0,v0,4
    2894:	1445fff8 	bne	v0,a1,2878 <decode_block+0x8c>
    2898:	24630004 	addiu	v1,v1,4

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    289c:	0c000000 	jal	0 <read_byte>
    28a0:	02202821 	addu	a1,s1,zero
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    28a4:	02201021 	addu	v0,s1,zero

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    28a8:	24030040 	addiu	v1,zero,64
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr += shift;
    28ac:	8c440000 	lw	a0,0(v0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    28b0:	2463ffff 	addiu	v1,v1,-1
    {
      *mptr += shift;
    28b4:	24840080 	addiu	a0,a0,128
    28b8:	ac440000 	sw	a0,0(v0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    28bc:	1460fffb 	bnez	v1,28ac <decode_block+0xc0>
    28c0:	24420004 	addiu	v0,v0,4
    28c4:	24020040 	addiu	v0,zero,64
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
	{
	  *mptr = Bound;
    28c8:	08000a3a 	j	28e8 <decode_block+0xfc>
    28cc:	240500ff 	addiu	a1,zero,255
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
    28d0:	14800002 	bnez	a0,28dc <decode_block+0xf0>
    28d4:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = Bound;
    28d8:	ae250000 	sw	a1,0(s1)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    28dc:	2442ffff 	addiu	v0,v0,-1
    28e0:	10400009 	beqz	v0,2908 <decode_block+0x11c>
    28e4:	26310004 	addiu	s1,s1,4
    {
      if (*mptr < 0)
    28e8:	8e230000 	lw	v1,0(s1)
    28ec:	00000000 	sll	zero,zero,0x0
    28f0:	0461fff7 	bgez	v1,28d0 <decode_block+0xe4>
    28f4:	28640100 	slti	a0,v1,256
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    28f8:	2442ffff 	addiu	v0,v0,-1
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
    28fc:	ae200000 	sw	zero,0(s1)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2900:	1440fff9 	bnez	v0,28e8 <decode_block+0xfc>
    2904:	26310004 	addiu	s1,s1,4

  PostshiftIDctMatrix (out_buf, IDCT_SHIFT);

  BoundIDctMatrix (out_buf, IDCT_BOUNT);

}
    2908:	8fbf0124 	lw	ra,292(sp)
    290c:	8fb10120 	lw	s1,288(sp)
    2910:	8fb0011c 	lw	s0,284(sp)
    2914:	03e00008 	jr	ra
    2918:	27bd0128 	addiu	sp,sp,296

0000291c <decode_start>:


void
decode_start (int *out_data_image_width, int *out_data_image_height,
	      int *out_data_comp_vpos, int *out_data_comp_hpos)
{
    291c:	27bdf588 	addiu	sp,sp,-2680
    2920:	afa60a80 	sw	a2,2688(sp)
    }

  /*
   * Set the size of image to output buffer
   */
  *out_data_image_width = p_jinfo_image_width;
    2924:	87830000 	lh	v1,0(gp)
  int CurrentMCU = 0;
  int HuffBuff[NUM_COMPONENT][DCTSIZE2];
  int IDCTBuff[6][DCTSIZE2];

  /* Read buffer */
  CurHuffReadBuf = p_jinfo_jpeg_data;
    2928:	8f860000 	lw	a2,0(gp)

  /*
   * Set the size of image to output buffer
   */
  *out_data_image_width = p_jinfo_image_width;
  *out_data_image_height = p_jinfo_image_height;
    292c:	87820000 	lh	v0,0(gp)
  int CurrentMCU = 0;
  int HuffBuff[NUM_COMPONENT][DCTSIZE2];
  int IDCTBuff[6][DCTSIZE2];

  /* Read buffer */
  CurHuffReadBuf = p_jinfo_jpeg_data;
    2930:	af860000 	sw	a2,0(gp)


void
decode_start (int *out_data_image_width, int *out_data_image_height,
	      int *out_data_comp_vpos, int *out_data_comp_hpos)
{
    2934:	afbf0a74 	sw	ra,2676(sp)
    2938:	afbe0a70 	sw	s8,2672(sp)
    293c:	afb70a6c 	sw	s7,2668(sp)
    2940:	afb60a68 	sw	s6,2664(sp)
    2944:	afb50a64 	sw	s5,2660(sp)
    2948:	afb40a60 	sw	s4,2656(sp)
    294c:	afb30a5c 	sw	s3,2652(sp)
    2950:	afb20a58 	sw	s2,2648(sp)
    2954:	afb10a54 	sw	s1,2644(sp)
    2958:	afb00a50 	sw	s0,2640(sp)
    295c:	afa70a84 	sw	a3,2692(sp)
  /*
   * Initial value of DC element is 0
   */
  for (i = 0; i < NUM_COMPONENT; i++)
    {
      HuffBuff[i][0] = 0;
    2960:	afa00120 	sw	zero,288(sp)
    2964:	afa00220 	sw	zero,544(sp)
    2968:	afa00320 	sw	zero,800(sp)
    }

  /*
   * Set the size of image to output buffer
   */
  *out_data_image_width = p_jinfo_image_width;
    296c:	ac830000 	sw	v1,0(a0)
  *out_data_image_height = p_jinfo_image_height;
    2970:	aca20000 	sw	v0,0(a1)
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    2974:	8fa20a80 	lw	v0,2688(sp)
      out_data_comp_hpos[i] = 0;
    2978:	24e40004 	addiu	a0,a3,4
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    297c:	ac400000 	sw	zero,0(v0)
      out_data_comp_hpos[i] = 0;
    2980:	ace00000 	sw	zero,0(a3)
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    2984:	ac400004 	sw	zero,4(v0)
      out_data_comp_hpos[i] = 0;
    2988:	ace00004 	sw	zero,4(a3)
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    298c:	ac400008 	sw	zero,8(v0)
      out_data_comp_hpos[i] = 0;
    2990:	ace00008 	sw	zero,8(a3)
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    2994:	24430004 	addiu	v1,v0,4
    2998:	24450008 	addiu	a1,v0,8
      out_data_comp_hpos[i] = 0;
    }


  if (p_jinfo_smp_fact == SF1_1_1)
    299c:	8f820000 	lw	v0,0(gp)
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
      out_data_comp_hpos[i] = 0;
    29a0:	24e60008 	addiu	a2,a3,8
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    29a4:	afa30a2c 	sw	v1,2604(sp)
      out_data_comp_hpos[i] = 0;
    29a8:	afa40a30 	sw	a0,2608(sp)
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    29ac:	afa50a34 	sw	a1,2612(sp)
      out_data_comp_hpos[i] = 0;
    }


  if (p_jinfo_smp_fact == SF1_1_1)
    29b0:	144000ec 	bnez	v0,2d64 <decode_start+0x448>
    29b4:	afa60a38 	sw	a2,2616(sp)
    {
      printf ("Decode 1:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
    29b8:	8f850000 	lw	a1,0(gp)
    29bc:	3c040000 	lui	a0,0x0
    29c0:	0c000000 	jal	0 <read_byte>
    29c4:	24840000 	addiu	a0,a0,0

      /*
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    29c8:	8f820000 	lw	v0,0(gp)
    29cc:	00000000 	sll	zero,zero,0x0
    29d0:	184000d1 	blez	v0,2d18 <decode_start+0x3fc>
    29d4:	3c020000 	lui	v0,0x0
    29d8:	3c110000 	lui	s1,0x0


	  CurrentMCU += 4;
	}
    }
}
    29dc:	3c170000 	lui	s7,0x0
    29e0:	27a50420 	addiu	a1,sp,1056
    29e4:	24420000 	addiu	v0,v0,0
    29e8:	26f70000 	addiu	s7,s7,0
void
decode_start (int *out_data_image_width, int *out_data_image_height,
	      int *out_data_comp_vpos, int *out_data_comp_hpos)
{
  int i;
  int CurrentMCU = 0;
    29ec:	afa00a2c 	sw	zero,2604(sp)
    29f0:	afa50a20 	sw	a1,2592(sp)
    29f4:	27be0120 	addiu	s8,sp,288
    29f8:	27b00020 	addiu	s0,sp,32
    29fc:	26310000 	addiu	s1,s1,0
    2a00:	afa20a24 	sw	v0,2596(sp)
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    2a04:	24120100 	addiu	s2,zero,256
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
	{
	  *mptr = Bound;
    2a08:	241300ff 	addiu	s3,zero,255

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2a0c:	27b40520 	addiu	s4,sp,1312
	      int *out_data_comp_vpos, int *out_data_comp_hpos)
{
    2a10:	00003021 	addu	a2,zero,zero
    2a14:	00001821 	addu	v1,zero,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2a18:	03c6b021 	addu	s6,s8,a2
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    2a1c:	00602821 	addu	a1,v1,zero
    2a20:	02c02021 	addu	a0,s6,zero
    2a24:	afa30a44 	sw	v1,2628(sp)
    2a28:	0c000000 	jal	0 <read_byte>
    2a2c:	afa60a40 	sw	a2,2624(sp)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2a30:	8fa70a20 	lw	a3,2592(sp)
    2a34:	8fa60a40 	lw	a2,2624(sp)
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    2a38:	8fa30a44 	lw	v1,2628(sp)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2a3c:	afa70a28 	sw	a3,2600(sp)
    2a40:	00e6a821 	addu	s5,a3,a2
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    2a44:	00001021 	addu	v0,zero,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2a48:	02222021 	addu	a0,s1,v0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    2a4c:	8c850000 	lw	a1,0(a0)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2a50:	02022021 	addu	a0,s0,v0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    2a54:	00052880 	sll	a1,a1,0x2
    2a58:	02c52821 	addu	a1,s6,a1
    2a5c:	8ca50000 	lw	a1,0(a1)
    2a60:	24420004 	addiu	v0,v0,4
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    2a64:	1452fff8 	bne	v0,s2,2a48 <decode_start+0x12c>
    2a68:	ac850000 	sw	a1,0(a0)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2a6c:	27880000 	addiu	t0,gp,0
    2a70:	01031021 	addu	v0,t0,v1
  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    2a74:	80420000 	lb	v0,0(v0)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2a78:	02002021 	addu	a0,s0,zero
  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    2a7c:	24420001 	addiu	v0,v0,1
    2a80:	00021200 	sll	v0,v0,0x8

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    2a84:	02e21021 	addu	v0,s7,v0

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2a88:	24450100 	addiu	a1,v0,256
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    2a8c:	8c470000 	lw	a3,0(v0)
    2a90:	8c880000 	lw	t0,0(a0)
      qmatrix++;
    2a94:	24420004 	addiu	v0,v0,4
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    2a98:	01070018 	mult	t0,a3
    2a9c:	00003812 	mflo	a3
    2aa0:	ac870000 	sw	a3,0(a0)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2aa4:	1445fff9 	bne	v0,a1,2a8c <decode_start+0x170>
    2aa8:	24840004 	addiu	a0,a0,4

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    2aac:	02002021 	addu	a0,s0,zero
    2ab0:	02a02821 	addu	a1,s5,zero
    2ab4:	afa30a44 	sw	v1,2628(sp)
    2ab8:	0c000000 	jal	0 <read_byte>
    2abc:	afa60a40 	sw	a2,2624(sp)
    2ac0:	8fa60a40 	lw	a2,2624(sp)
    2ac4:	8fa30a44 	lw	v1,2628(sp)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2ac8:	02a01021 	addu	v0,s5,zero

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    2acc:	24040040 	addiu	a0,zero,64
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr += shift;
    2ad0:	8c450000 	lw	a1,0(v0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2ad4:	2484ffff 	addiu	a0,a0,-1
    {
      *mptr += shift;
    2ad8:	24a50080 	addiu	a1,a1,128
    2adc:	ac450000 	sw	a1,0(v0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2ae0:	1480fffb 	bnez	a0,2ad0 <decode_start+0x1b4>
    2ae4:	24420004 	addiu	v0,v0,4
    2ae8:	08000ac2 	j	2b08 <decode_start+0x1ec>
    2aec:	24020040 	addiu	v0,zero,64
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
    2af0:	14a00002 	bnez	a1,2afc <decode_start+0x1e0>
    2af4:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = Bound;
    2af8:	aeb30000 	sw	s3,0(s5)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2afc:	2442ffff 	addiu	v0,v0,-1
    2b00:	10400009 	beqz	v0,2b28 <decode_start+0x20c>
    2b04:	26b50004 	addiu	s5,s5,4
    {
      if (*mptr < 0)
    2b08:	8ea40000 	lw	a0,0(s5)
    2b0c:	00000000 	sll	zero,zero,0x0
    2b10:	0481fff7 	bgez	a0,2af0 <decode_start+0x1d4>
    2b14:	28850100 	slti	a1,a0,256
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2b18:	2442ffff 	addiu	v0,v0,-1
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
    2b1c:	aea00000 	sw	zero,0(s5)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2b20:	1440fff9 	bnez	v0,2b08 <decode_start+0x1ec>
    2b24:	26b50004 	addiu	s5,s5,4
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
	{

	  for (i = 0; i < NUM_COMPONENT; i++)
    2b28:	24630001 	addiu	v1,v1,1
    2b2c:	24080003 	addiu	t0,zero,3
    2b30:	1468ffb9 	bne	v1,t0,2a18 <decode_start+0xfc>
    2b34:	24c60100 	addiu	a2,a2,256
    2b38:	8fb60a28 	lw	s6,2600(sp)
    2b3c:	8fa40a24 	lw	a0,2596(sp)

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;
    2b40:	8ec30200 	lw	v1,512(s6)
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
    2b44:	8ec20100 	lw	v0,256(s6)
      v = v_buf[i] - 128;
    2b48:	2463ff80 	addiu	v1,v1,-128
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
    2b4c:	2442ff80 	addiu	v0,v0,-128
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    2b50:	000328c0 	sll	a1,v1,0x3
    2b54:	00033140 	sll	a2,v1,0x5
    2b58:	00c53023 	subu	a2,a2,a1
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    2b5c:	00033880 	sll	a3,v1,0x2
    2b60:	00036900 	sll	t5,v1,0x4
      b = (y * 256 + u * 454 + 128) >> 8;
    2b64:	000240c0 	sll	t0,v0,0x3
    2b68:	00026180 	sll	t4,v0,0x6
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    2b6c:	8ec50000 	lw	a1,0(s6)
    2b70:	00064900 	sll	t1,a2,0x4
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    2b74:	00025080 	sll	t2,v0,0x2
    2b78:	00025900 	sll	t3,v0,0x4
    2b7c:	01a73823 	subu	a3,t5,a3
      b = (y * 256 + u * 454 + 128) >> 8;
    2b80:	01884023 	subu	t0,t4,t0
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    2b84:	00e33821 	addu	a3,a3,v1
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    2b88:	01264823 	subu	t1,t1,a2
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
      b = (y * 256 + u * 454 + 128) >> 8;
    2b8c:	01024021 	addu	t0,t0,v0
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    2b90:	00052a00 	sll	a1,a1,0x8
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    2b94:	016a3023 	subu	a2,t3,t2
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    2b98:	24a50080 	addiu	a1,a1,128
    2b9c:	01231823 	subu	v1,t1,v1
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    2ba0:	00463023 	subu	a2,v0,a2
      b = (y * 256 + u * 454 + 128) >> 8;
    2ba4:	00084080 	sll	t0,t0,0x2
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    2ba8:	000748c0 	sll	t1,a3,0x3
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    2bac:	00a31821 	addu	v1,a1,v1
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
      b = (y * 256 + u * 454 + 128) >> 8;
    2bb0:	01021023 	subu	v0,t0,v0
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    2bb4:	000630c0 	sll	a2,a2,0x3
    2bb8:	00e93823 	subu	a3,a3,t1
    2bbc:	00c53021 	addu	a2,a2,a1
    2bc0:	00073840 	sll	a3,a3,0x1
      b = (y * 256 + u * 454 + 128) >> 8;
    2bc4:	00021040 	sll	v0,v0,0x1
    2bc8:	00031a03 	sra	v1,v1,0x8
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    2bcc:	00c73021 	addu	a2,a2,a3
      b = (y * 256 + u * 454 + 128) >> 8;
    2bd0:	00452821 	addu	a1,v0,a1
    2bd4:	28680100 	slti	t0,v1,256
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    2bd8:	00063203 	sra	a2,a2,0x8
      b = (y * 256 + u * 454 + 128) >> 8;
    2bdc:	15000002 	bnez	t0,2be8 <decode_start+0x2cc>
    2be0:	00052a03 	sra	a1,a1,0x8
    2be4:	240300ff 	addiu	v1,zero,255
    2be8:	28c70100 	slti	a3,a2,256
    2bec:	14e00002 	bnez	a3,2bf8 <decode_start+0x2dc>
    2bf0:	28a20100 	slti	v0,a1,256
    2bf4:	240600ff 	addiu	a2,zero,255
    2bf8:	14400002 	bnez	v0,2c04 <decode_start+0x2e8>
    2bfc:	00000000 	sll	zero,zero,0x0
    2c00:	240500ff 	addiu	a1,zero,255
      if (b < 0)
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
    2c04:	04600055 	bltz	v1,2d5c <decode_start+0x440>
    2c08:	00000000 	sll	zero,zero,0x0
      rgb_buf[p][1][i] = g;
    2c0c:	04c0004e 	bltz	a2,2d48 <decode_start+0x42c>
    2c10:	ac830000 	sw	v1,0(a0)
      rgb_buf[p][2][i] = b;
    2c14:	04a0004f 	bltz	a1,2d54 <decode_start+0x438>
    2c18:	ac860100 	sw	a2,256(a0)
    2c1c:	26d60004 	addiu	s6,s6,4
    2c20:	ac850200 	sw	a1,512(a0)
{
  int r, g, b;
  int y, u, v;
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    2c24:	16d4ffc6 	bne	s6,s4,2b40 <decode_start+0x224>
    2c28:	24840004 	addiu	a0,a0,4
  hoffs = *p_out_hpos * DCTSIZE;

  /*
   * Write block
   */
  WriteOneBlock (store,
    2c2c:	3c080000 	lui	t0,0x0
    2c30:	87820000 	lh	v0,0(gp)
    2c34:	87850000 	lh	a1,0(gp)
    2c38:	8fa90a80 	lw	t1,2688(sp)
    2c3c:	8fa60a84 	lw	a2,2692(sp)
    2c40:	8fa70a24 	lw	a3,2596(sp)
    2c44:	25080000 	addiu	t0,t0,0
  int voffs, hoffs;

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
    2c48:	8d230000 	lw	v1,0(t1)
  hoffs = *p_out_hpos * DCTSIZE;
    2c4c:	8cd50000 	lw	s5,0(a2)
  int voffs, hoffs;

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
    2c50:	000318c0 	sll	v1,v1,0x3


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    2c54:	0065502a 	slt	t2,v1,a1
    2c58:	1140001c 	beqz	t2,2ccc <decode_start+0x3b0>
    2c5c:	24640007 	addiu	a0,v1,7

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2c60:	00620018 	mult	v1,v0

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
  hoffs = *p_out_hpos * DCTSIZE;
    2c64:	0015a8c0 	sll	s5,s5,0x3


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    2c68:	00e05821 	addu	t3,a3,zero

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
  hoffs = *p_out_hpos * DCTSIZE;
    2c6c:	26b80007 	addiu	t8,s5,7
    2c70:	02a2b02a 	slt	s6,s5,v0

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2c74:	0000c812 	mflo	t9
    2c78:	0335c821 	addu	t9,t9,s5
    2c7c:	0119c821 	addu	t9,t0,t9
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
	    {
	      if (e < width)
    2c80:	12c0000c 	beqz	s6,2cb4 <decode_start+0x398>
    2c84:	02a05021 	addu	t2,s5,zero
    2c88:	08000b26 	j	2c98 <decode_start+0x37c>
    2c8c:	03206021 	addu	t4,t9,zero
    2c90:	11e00008 	beqz	t7,2cb4 <decode_start+0x398>
    2c94:	258c0001 	addiu	t4,t4,1
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    2c98:	8d6e0000 	lw	t6,0(t3)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    2c9c:	254a0001 	addiu	t2,t2,1
    2ca0:	030a682a 	slt	t5,t8,t2
	    {
	      if (e < width)
    2ca4:	0142782a 	slt	t7,t2,v0
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    2ca8:	a18e0000 	sb	t6,0(t4)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    2cac:	11a0fff8 	beqz	t5,2c90 <decode_start+0x374>
    2cb0:	256b0004 	addiu	t3,t3,4
{
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    2cb4:	24630001 	addiu	v1,v1,1
    2cb8:	0083502a 	slt	t2,a0,v1
    2cbc:	15400003 	bnez	t2,2ccc <decode_start+0x3b0>
    2cc0:	0065502a 	slt	t2,v1,a1
    {
      if (i < height)
    2cc4:	1540ffee 	bnez	t2,2c80 <decode_start+0x364>
    2cc8:	0322c821 	addu	t9,t9,v0
   *  Add positions
   */
  *p_out_hpos++;
  *p_out_vpos++;

  if (*p_out_hpos < p_jinfo_MCUWidth)
    2ccc:	8cc40004 	lw	a0,4(a2)
    2cd0:	8f830000 	lw	v1,0(gp)
    2cd4:	00000000 	sll	zero,zero,0x0
    2cd8:	0083182a 	slt	v1,a0,v1
    2cdc:	14600002 	bnez	v1,2ce8 <decode_start+0x3cc>
    2ce0:	3c030000 	lui	v1,0x0
    {
      *p_out_vpos--;
    }
  else
    {
      *p_out_hpos = 0;		/* If at end of image (width) */
    2ce4:	acc00004 	sw	zero,4(a2)
    2ce8:	24e70100 	addiu	a3,a3,256

	  YuvToRgb (0, IDCTBuff[0], IDCTBuff[1], IDCTBuff[2]);
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
    2cec:	24630300 	addiu	v1,v1,768
    {
      *p_out_vpos--;
    }
  else
    {
      *p_out_hpos = 0;		/* If at end of image (width) */
    2cf0:	25290004 	addiu	t1,t1,4
    2cf4:	24c60004 	addiu	a2,a2,4

	  YuvToRgb (0, IDCTBuff[0], IDCTBuff[1], IDCTBuff[2]);
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
    2cf8:	14e3ffd3 	bne	a3,v1,2c48 <decode_start+0x32c>
    2cfc:	250814be 	addiu	t0,t0,5310
	    {
	      WriteBlock (&rgb_buf[0][i][0],
			  &out_data_comp_vpos[i],
			  &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
	    }
	  CurrentMCU++;
    2d00:	8fa40a2c 	lw	a0,2604(sp)
      printf ("Decode 1:1:1 NumMCU = %d\n", p_jinfo_NumMCU);

      /*
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    2d04:	8f820000 	lw	v0,0(gp)
	    {
	      WriteBlock (&rgb_buf[0][i][0],
			  &out_data_comp_vpos[i],
			  &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
	    }
	  CurrentMCU++;
    2d08:	24840001 	addiu	a0,a0,1
      printf ("Decode 1:1:1 NumMCU = %d\n", p_jinfo_NumMCU);

      /*
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    2d0c:	0082102a 	slt	v0,a0,v0
    2d10:	1440ff3f 	bnez	v0,2a10 <decode_start+0xf4>
    2d14:	afa40a2c 	sw	a0,2604(sp)


	  CurrentMCU += 4;
	}
    }
}
    2d18:	8fbf0a74 	lw	ra,2676(sp)
    2d1c:	8fbe0a70 	lw	s8,2672(sp)
    2d20:	8fb70a6c 	lw	s7,2668(sp)
    2d24:	8fb60a68 	lw	s6,2664(sp)
    2d28:	8fb50a64 	lw	s5,2660(sp)
    2d2c:	8fb40a60 	lw	s4,2656(sp)
    2d30:	8fb30a5c 	lw	s3,2652(sp)
    2d34:	8fb20a58 	lw	s2,2648(sp)
    2d38:	8fb10a54 	lw	s1,2644(sp)
    2d3c:	8fb00a50 	lw	s0,2640(sp)
    2d40:	03e00008 	jr	ra
    2d44:	27bd0a78 	addiu	sp,sp,2680
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
      rgb_buf[p][1][i] = g;
    2d48:	00003021 	addu	a2,zero,zero
      rgb_buf[p][2][i] = b;
    2d4c:	04a1ffb3 	bgez	a1,2c1c <decode_start+0x300>
    2d50:	ac860100 	sw	a2,256(a0)
    2d54:	08000b07 	j	2c1c <decode_start+0x300>
    2d58:	00002821 	addu	a1,zero,zero
      if (b < 0)
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
    2d5c:	08000b03 	j	2c0c <decode_start+0x2f0>
    2d60:	00001821 	addu	v1,zero,zero
	}

    }
  else
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
    2d64:	8f850000 	lw	a1,0(gp)
    2d68:	3c040000 	lui	a0,0x0
    2d6c:	0c000000 	jal	0 <read_byte>
    2d70:	24840000 	addiu	a0,a0,0
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    2d74:	8f820000 	lw	v0,0(gp)
    2d78:	00000000 	sll	zero,zero,0x0
    2d7c:	1840ffe6 	blez	v0,2d18 <decode_start+0x3fc>
    2d80:	3c020000 	lui	v0,0x0


	  CurrentMCU += 4;
	}
    }
}
    2d84:	24420000 	addiu	v0,v0,0
    2d88:	3c110000 	lui	s1,0x0
      while (CurrentMCU < p_jinfo_NumMCU)
	{

	  for (i = 0; i < NUM_COMPONENT; i++)
	    {
	      decode_block (i, IDCTBuff[i], HuffBuff[i]);
    2d8c:	27a60420 	addiu	a2,sp,1056


	  CurrentMCU += 4;
	}
    }
}
    2d90:	27a70820 	addiu	a3,sp,2080
    2d94:	afa20a24 	sw	v0,2596(sp)
      while (CurrentMCU < p_jinfo_NumMCU)
	{

	  for (i = 0; i < NUM_COMPONENT; i++)
	    {
	      decode_block (i, IDCTBuff[i], HuffBuff[i]);
    2d98:	27b30120 	addiu	s3,sp,288
    2d9c:	afa60a20 	sw	a2,2592(sp)


	  CurrentMCU += 4;
	}
    }
}
    2da0:	afa70a48 	sw	a3,2632(sp)
void
decode_start (int *out_data_image_width, int *out_data_image_height,
	      int *out_data_comp_vpos, int *out_data_comp_hpos)
{
  int i;
  int CurrentMCU = 0;
    2da4:	afa00a28 	sw	zero,2600(sp)
    2da8:	27b00020 	addiu	s0,sp,32
    2dac:	26310000 	addiu	s1,s1,0
    2db0:	27a20220 	addiu	v0,sp,544
    2db4:	27be0320 	addiu	s8,sp,800
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    2db8:	24120100 	addiu	s2,zero,256
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
	{
	  *mptr = Bound;
    2dbc:	241500ff 	addiu	s5,zero,255

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2dc0:	27b70920 	addiu	s7,sp,2336
    2dc4:	27b60a20 	addiu	s6,sp,2592
    2dc8:	27b40520 	addiu	s4,sp,1312
    2dcc:	8fa60a20 	lw	a2,2592(sp)
    2dd0:	02201821 	addu	v1,s1,zero
    2dd4:	02008821 	addu	s1,s0,zero
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    2dd8:	02602021 	addu	a0,s3,zero
    2ddc:	00002821 	addu	a1,zero,zero
    2de0:	afa20a3c 	sw	v0,2620(sp)
    2de4:	afa30a44 	sw	v1,2628(sp)
    2de8:	0c000000 	jal	0 <read_byte>
    2dec:	afa60a40 	sw	a2,2624(sp)
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    2df0:	8fa60a40 	lw	a2,2624(sp)
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    2df4:	8fa30a44 	lw	v1,2628(sp)
    2df8:	8fa20a3c 	lw	v0,2620(sp)
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    2dfc:	00c08021 	addu	s0,a2,zero
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    2e00:	00002021 	addu	a0,zero,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2e04:	00642821 	addu	a1,v1,a0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    2e08:	8ca70000 	lw	a3,0(a1)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2e0c:	02242821 	addu	a1,s1,a0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    2e10:	00073880 	sll	a3,a3,0x2
    2e14:	02673821 	addu	a3,s3,a3
    2e18:	8ce70000 	lw	a3,0(a3)
    2e1c:	24840004 	addiu	a0,a0,4
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    2e20:	1492fff8 	bne	a0,s2,2e04 <decode_start+0x4e8>
    2e24:	aca70000 	sw	a3,0(a1)
  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    2e28:	83840000 	lb	a0,0(gp)

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    2e2c:	3c070000 	lui	a3,0x0
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    2e30:	24840001 	addiu	a0,a0,1

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    2e34:	24e70000 	addiu	a3,a3,0
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    2e38:	00042200 	sll	a0,a0,0x8

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    2e3c:	00e42021 	addu	a0,a3,a0
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2e40:	02202821 	addu	a1,s1,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2e44:	24870100 	addiu	a3,a0,256
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    2e48:	8c880000 	lw	t0,0(a0)
    2e4c:	8ca90000 	lw	t1,0(a1)
      qmatrix++;
    2e50:	24840004 	addiu	a0,a0,4
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    2e54:	01280018 	mult	t1,t0
    2e58:	00004012 	mflo	t0
    2e5c:	aca80000 	sw	t0,0(a1)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2e60:	1487fff9 	bne	a0,a3,2e48 <decode_start+0x52c>
    2e64:	24a50004 	addiu	a1,a1,4

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    2e68:	00c02821 	addu	a1,a2,zero
    2e6c:	02202021 	addu	a0,s1,zero
    2e70:	afa20a3c 	sw	v0,2620(sp)
    2e74:	afa30a44 	sw	v1,2628(sp)
    2e78:	0c000000 	jal	0 <read_byte>
    2e7c:	afa60a40 	sw	a2,2624(sp)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2e80:	8fa60a40 	lw	a2,2624(sp)

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    2e84:	8fa30a44 	lw	v1,2628(sp)
    2e88:	8fa20a3c 	lw	v0,2620(sp)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2e8c:	00c02021 	addu	a0,a2,zero

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    2e90:	24050040 	addiu	a1,zero,64
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr += shift;
    2e94:	8c870000 	lw	a3,0(a0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2e98:	24a5ffff 	addiu	a1,a1,-1
    {
      *mptr += shift;
    2e9c:	24e70080 	addiu	a3,a3,128
    2ea0:	ac870000 	sw	a3,0(a0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2ea4:	14a0fffb 	bnez	a1,2e94 <decode_start+0x578>
    2ea8:	24840004 	addiu	a0,a0,4
    2eac:	08000bb3 	j	2ecc <decode_start+0x5b0>
    2eb0:	24040040 	addiu	a0,zero,64
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
    2eb4:	14e00002 	bnez	a3,2ec0 <decode_start+0x5a4>
    2eb8:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = Bound;
    2ebc:	ae150000 	sw	s5,0(s0)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2ec0:	2484ffff 	addiu	a0,a0,-1
    2ec4:	10800009 	beqz	a0,2eec <decode_start+0x5d0>
    2ec8:	26100004 	addiu	s0,s0,4
    {
      if (*mptr < 0)
    2ecc:	8e050000 	lw	a1,0(s0)
    2ed0:	00000000 	sll	zero,zero,0x0
    2ed4:	04a1fff7 	bgez	a1,2eb4 <decode_start+0x598>
    2ed8:	28a70100 	slti	a3,a1,256
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2edc:	2484ffff 	addiu	a0,a0,-1
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
    2ee0:	ae000000 	sw	zero,0(s0)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2ee4:	1480fff9 	bnez	a0,2ecc <decode_start+0x5b0>
    2ee8:	26100004 	addiu	s0,s0,4
	  /*
	   * Decode Y element
	   * Decoding Y, U and V elements should be sequentially conducted for the use of Huffman table
	   */

	  for (i = 0; i < 4; i++)
    2eec:	8fa40a48 	lw	a0,2632(sp)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2ef0:	24c60100 	addiu	a2,a2,256
	  /*
	   * Decode Y element
	   * Decoding Y, U and V elements should be sequentially conducted for the use of Huffman table
	   */

	  for (i = 0; i < 4; i++)
    2ef4:	1486ffb9 	bne	a0,a2,2ddc <decode_start+0x4c0>
    2ef8:	02602021 	addu	a0,s3,zero
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    2efc:	00402021 	addu	a0,v0,zero
    2f00:	24050001 	addiu	a1,zero,1
    2f04:	afa20a3c 	sw	v0,2620(sp)
    2f08:	02208021 	addu	s0,s1,zero
    2f0c:	0c000000 	jal	0 <read_byte>
    2f10:	00608821 	addu	s1,v1,zero
    2f14:	8fa20a3c 	lw	v0,2620(sp)
    2f18:	00001821 	addu	v1,zero,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2f1c:	02232021 	addu	a0,s1,v1

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    2f20:	8c850000 	lw	a1,0(a0)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2f24:	02032021 	addu	a0,s0,v1

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    2f28:	00052880 	sll	a1,a1,0x2
    2f2c:	00452821 	addu	a1,v0,a1
    2f30:	8ca50000 	lw	a1,0(a1)
    2f34:	24630004 	addiu	v1,v1,4
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    2f38:	1472fff8 	bne	v1,s2,2f1c <decode_start+0x600>
    2f3c:	ac850000 	sw	a1,0(a0)
  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    2f40:	83830001 	lb	v1,1(gp)

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    2f44:	3c050000 	lui	a1,0x0
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    2f48:	24630001 	addiu	v1,v1,1

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    2f4c:	24a50000 	addiu	a1,a1,0
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    2f50:	00031a00 	sll	v1,v1,0x8

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    2f54:	00a31821 	addu	v1,a1,v1
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2f58:	02002021 	addu	a0,s0,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    2f5c:	24650100 	addiu	a1,v1,256
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    2f60:	8c660000 	lw	a2,0(v1)
    2f64:	8c870000 	lw	a3,0(a0)
      qmatrix++;
    2f68:	24630004 	addiu	v1,v1,4
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    2f6c:	00e60018 	mult	a3,a2
    2f70:	00003012 	mflo	a2
    2f74:	ac860000 	sw	a2,0(a0)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2f78:	1465fff9 	bne	v1,a1,2f60 <decode_start+0x644>
    2f7c:	24840004 	addiu	a0,a0,4

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    2f80:	02002021 	addu	a0,s0,zero
    2f84:	27a50820 	addiu	a1,sp,2080
    2f88:	0c000000 	jal	0 <read_byte>
    2f8c:	afa20a3c 	sw	v0,2620(sp)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2f90:	8fa20a3c 	lw	v0,2620(sp)
    2f94:	27a30820 	addiu	v1,sp,2080
    {
      *mptr += shift;
    2f98:	8c640000 	lw	a0,0(v1)
    2f9c:	00000000 	sll	zero,zero,0x0
    2fa0:	24840080 	addiu	a0,a0,128
    2fa4:	ac640000 	sw	a0,0(v1)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2fa8:	24630004 	addiu	v1,v1,4
    2fac:	1477fffa 	bne	v1,s7,2f98 <decode_start+0x67c>
    2fb0:	00000000 	sll	zero,zero,0x0
    2fb4:	08000bf5 	j	2fd4 <decode_start+0x6b8>
    2fb8:	27a30820 	addiu	v1,sp,2080
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
    2fbc:	14a00002 	bnez	a1,2fc8 <decode_start+0x6ac>
    2fc0:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = Bound;
    2fc4:	ac750000 	sw	s5,0(v1)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2fc8:	24630004 	addiu	v1,v1,4
    2fcc:	10770009 	beq	v1,s7,2ff4 <decode_start+0x6d8>
    2fd0:	03c02021 	addu	a0,s8,zero
    {
      if (*mptr < 0)
    2fd4:	8c640000 	lw	a0,0(v1)
    2fd8:	00000000 	sll	zero,zero,0x0
    2fdc:	0481fff7 	bgez	a0,2fbc <decode_start+0x6a0>
    2fe0:	28850100 	slti	a1,a0,256
	{
	  *mptr = 0;
    2fe4:	ac600000 	sw	zero,0(v1)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    2fe8:	24630004 	addiu	v1,v1,4
    2fec:	1477fff9 	bne	v1,s7,2fd4 <decode_start+0x6b8>
    2ff0:	03c02021 	addu	a0,s8,zero
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    2ff4:	24050002 	addiu	a1,zero,2
    2ff8:	0c000000 	jal	0 <read_byte>
    2ffc:	afa20a3c 	sw	v0,2620(sp)
    3000:	8fa20a3c 	lw	v0,2620(sp)

	  /* Decode U */
	  decode_block (1, IDCTBuff[4], HuffBuff[1]);

	  /* Decode V */
	  decode_block (2, IDCTBuff[5], HuffBuff[2]);
    3004:	27a30920 	addiu	v1,sp,2336
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    3008:	00002021 	addu	a0,zero,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    300c:	02242821 	addu	a1,s1,a0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    3010:	8ca60000 	lw	a2,0(a1)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3014:	02042821 	addu	a1,s0,a0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    3018:	00063080 	sll	a2,a2,0x2
    301c:	03c63021 	addu	a2,s8,a2
    3020:	8cc60000 	lw	a2,0(a2)
    3024:	24840004 	addiu	a0,a0,4
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    3028:	1492fff8 	bne	a0,s2,300c <decode_start+0x6f0>
    302c:	aca60000 	sw	a2,0(a1)
  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    3030:	83840002 	lb	a0,2(gp)

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    3034:	3c070000 	lui	a3,0x0
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    3038:	24840001 	addiu	a0,a0,1
    303c:	00042200 	sll	a0,a0,0x8

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    3040:	24e70000 	addiu	a3,a3,0
    3044:	00e42021 	addu	a0,a3,a0
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3048:	02002821 	addu	a1,s0,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    304c:	24860100 	addiu	a2,a0,256
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    3050:	8ca80000 	lw	t0,0(a1)
    3054:	8c870000 	lw	a3,0(a0)
      qmatrix++;
    3058:	24840004 	addiu	a0,a0,4
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    305c:	01070018 	mult	t0,a3
    3060:	00004012 	mflo	t0
    3064:	aca80000 	sw	t0,0(a1)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3068:	1486fff9 	bne	a0,a2,3050 <decode_start+0x734>
    306c:	24a50004 	addiu	a1,a1,4

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    3070:	02002021 	addu	a0,s0,zero
    3074:	27a50920 	addiu	a1,sp,2336
    3078:	afa20a3c 	sw	v0,2620(sp)
    307c:	0c000000 	jal	0 <read_byte>
    3080:	afa30a44 	sw	v1,2628(sp)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3084:	8fa30a44 	lw	v1,2628(sp)
    3088:	8fa20a3c 	lw	v0,2620(sp)
    308c:	27a40920 	addiu	a0,sp,2336
    {
      *mptr += shift;
    3090:	8c850000 	lw	a1,0(a0)
    3094:	00000000 	sll	zero,zero,0x0
    3098:	24a50080 	addiu	a1,a1,128
    309c:	ac850000 	sw	a1,0(a0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    30a0:	24840004 	addiu	a0,a0,4
    30a4:	1496fffa 	bne	a0,s6,3090 <decode_start+0x774>
    30a8:	00000000 	sll	zero,zero,0x0
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      if (*mptr < 0)
    30ac:	8c640000 	lw	a0,0(v1)
    30b0:	00000000 	sll	zero,zero,0x0
    30b4:	0480000b 	bltz	a0,30e4 <decode_start+0x7c8>
    30b8:	28850100 	slti	a1,a0,256
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
    30bc:	14a00002 	bnez	a1,30c8 <decode_start+0x7ac>
    30c0:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = Bound;
    30c4:	ac750000 	sw	s5,0(v1)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    30c8:	24630004 	addiu	v1,v1,4
    30cc:	10760009 	beq	v1,s6,30f4 <decode_start+0x7d8>
    30d0:	00000000 	sll	zero,zero,0x0
    {
      if (*mptr < 0)
    30d4:	8c640000 	lw	a0,0(v1)
    30d8:	00000000 	sll	zero,zero,0x0
    30dc:	0481fff7 	bgez	a0,30bc <decode_start+0x7a0>
    30e0:	28850100 	slti	a1,a0,256
	{
	  *mptr = 0;
    30e4:	ac600000 	sw	zero,0(v1)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    30e8:	24630004 	addiu	v1,v1,4
    30ec:	1476fff9 	bne	v1,s6,30d4 <decode_start+0x7b8>
    30f0:	00000000 	sll	zero,zero,0x0
    30f4:	8fbf0a20 	lw	ra,2592(sp)
    30f8:	0000c821 	addu	t9,zero,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    30fc:	00191a00 	sll	v1,t9,0x8
    3100:	00193280 	sll	a2,t9,0xa
    3104:	00c33023 	subu	a2,a2,v1
    3108:	8fa30a24 	lw	v1,2596(sp)
    310c:	8fa50a20 	lw	a1,2592(sp)
    3110:	00663021 	addu	a2,v1,a2
    3114:	03e03821 	addu	a3,ra,zero

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;
    3118:	8ca40500 	lw	a0,1280(a1)
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
    311c:	8ca30400 	lw	v1,1024(a1)
      v = v_buf[i] - 128;
    3120:	2484ff80 	addiu	a0,a0,-128
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
    3124:	2463ff80 	addiu	v1,v1,-128
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3128:	00044940 	sll	t1,a0,0x5
    312c:	000440c0 	sll	t0,a0,0x3
    3130:	01284023 	subu	t0,t1,t0
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3134:	0004c100 	sll	t8,a0,0x4
    3138:	00047880 	sll	t7,a0,0x2
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    313c:	8cec0000 	lw	t4,0(a3)
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
      b = (y * 256 + u * 454 + 128) >> 8;
    3140:	000368c0 	sll	t5,v1,0x3
    3144:	00037180 	sll	t6,v1,0x6
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3148:	030f7823 	subu	t7,t8,t7
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    314c:	00085900 	sll	t3,t0,0x4
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3150:	00034880 	sll	t1,v1,0x2
    3154:	00035100 	sll	t2,v1,0x4
      b = (y * 256 + u * 454 + 128) >> 8;
    3158:	01cd6823 	subu	t5,t6,t5
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    315c:	01e47821 	addu	t7,t7,a0
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3160:	000c6200 	sll	t4,t4,0x8
    3164:	01684023 	subu	t0,t3,t0
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3168:	01494823 	subu	t1,t2,t1
      b = (y * 256 + u * 454 + 128) >> 8;
    316c:	01a36821 	addu	t5,t5,v1
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3170:	258c0080 	addiu	t4,t4,128
    3174:	01044023 	subu	t0,t0,a0
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3178:	00694823 	subu	t1,v1,t1
    317c:	000fc0c0 	sll	t8,t7,0x3
      b = (y * 256 + u * 454 + 128) >> 8;
    3180:	000d6880 	sll	t5,t5,0x2
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3184:	01884021 	addu	t0,t4,t0
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3188:	000948c0 	sll	t1,t1,0x3
    318c:	01f87823 	subu	t7,t7,t8
      b = (y * 256 + u * 454 + 128) >> 8;
    3190:	01a36823 	subu	t5,t5,v1
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3194:	012c4821 	addu	t1,t1,t4
    3198:	000f7840 	sll	t7,t7,0x1
      b = (y * 256 + u * 454 + 128) >> 8;
    319c:	000d6840 	sll	t5,t5,0x1
    31a0:	00084203 	sra	t0,t0,0x8
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    31a4:	012f4821 	addu	t1,t1,t7
      b = (y * 256 + u * 454 + 128) >> 8;
    31a8:	01ac6821 	addu	t5,t5,t4
    31ac:	29040100 	slti	a0,t0,256
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    31b0:	00094a03 	sra	t1,t1,0x8
      b = (y * 256 + u * 454 + 128) >> 8;
    31b4:	14800002 	bnez	a0,31c0 <decode_start+0x8a4>
    31b8:	000d6a03 	sra	t5,t5,0x8
    31bc:	240800ff 	addiu	t0,zero,255
    31c0:	29230100 	slti	v1,t1,256
    31c4:	14600002 	bnez	v1,31d0 <decode_start+0x8b4>
    31c8:	29a30100 	slti	v1,t5,256
    31cc:	240900ff 	addiu	t1,zero,255
    31d0:	14600002 	bnez	v1,31dc <decode_start+0x8c0>
    31d4:	00000000 	sll	zero,zero,0x0
    31d8:	240d00ff 	addiu	t5,zero,255
      if (b < 0)
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
    31dc:	0500004f 	bltz	t0,331c <decode_start+0xa00>
    31e0:	00000000 	sll	zero,zero,0x0
      rgb_buf[p][1][i] = g;
    31e4:	0520004b 	bltz	t1,3314 <decode_start+0x9f8>
    31e8:	acc80000 	sw	t0,0(a2)
      rgb_buf[p][2][i] = b;
    31ec:	05a00047 	bltz	t5,330c <decode_start+0x9f0>
    31f0:	acc90100 	sw	t1,256(a2)
    31f4:	24a50004 	addiu	a1,a1,4
    31f8:	accd0200 	sw	t5,512(a2)
    31fc:	24e70004 	addiu	a3,a3,4
{
  int r, g, b;
  int y, u, v;
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    3200:	14b4ffc5 	bne	a1,s4,3118 <decode_start+0x7fc>
    3204:	24c60004 	addiu	a2,a2,4
	  decode_block (2, IDCTBuff[5], HuffBuff[2]);


	  /* Transform from Yuv into RGB */

	  for (i = 0; i < 4; i++)
    3208:	27390001 	addiu	t9,t9,1
    320c:	24040004 	addiu	a0,zero,4
    3210:	1724ffba 	bne	t9,a0,30fc <decode_start+0x7e0>
    3214:	27ff0100 	addiu	ra,ra,256
	    }


	  for (i = 0; i < RGB_NUM; i++)
	    {
	      Write4Blocks (&rgb_buf[0][i][0],
    3218:	8fa80a80 	lw	t0,2688(sp)
    321c:	8fa30a84 	lw	v1,2692(sp)
    3220:	afa80010 	sw	t0,16(sp)
    3224:	3c040000 	lui	a0,0x0
    3228:	3c050000 	lui	a1,0x0
    322c:	3c060000 	lui	a2,0x0
    3230:	3c070000 	lui	a3,0x0
    3234:	3c080000 	lui	t0,0x0
    3238:	25080000 	addiu	t0,t0,0
    323c:	24840000 	addiu	a0,a0,0
    3240:	24a50300 	addiu	a1,a1,768
    3244:	24c60600 	addiu	a2,a2,1536
    3248:	24e70900 	addiu	a3,a3,2304
    324c:	afa20a3c 	sw	v0,2620(sp)
    3250:	afa30014 	sw	v1,20(sp)
    3254:	0c000000 	jal	0 <read_byte>
    3258:	afa80018 	sw	t0,24(sp)
    325c:	8fa30a2c 	lw	v1,2604(sp)
    3260:	8fa80a30 	lw	t0,2608(sp)
    3264:	afa30010 	sw	v1,16(sp)
    3268:	3c040000 	lui	a0,0x0
    326c:	3c050000 	lui	a1,0x0
    3270:	3c060000 	lui	a2,0x0
    3274:	3c070000 	lui	a3,0x0
    3278:	3c030000 	lui	v1,0x0
    327c:	246314be 	addiu	v1,v1,5310
    3280:	24840100 	addiu	a0,a0,256
    3284:	24a50400 	addiu	a1,a1,1024
    3288:	24c60700 	addiu	a2,a2,1792
    328c:	24e70a00 	addiu	a3,a3,2560
    3290:	afa80014 	sw	t0,20(sp)
    3294:	0c000000 	jal	0 <read_byte>
    3298:	afa30018 	sw	v1,24(sp)
    329c:	8fa80a34 	lw	t0,2612(sp)
    32a0:	8fa30a38 	lw	v1,2616(sp)
    32a4:	afa80010 	sw	t0,16(sp)
    32a8:	3c040000 	lui	a0,0x0
    32ac:	3c050000 	lui	a1,0x0
    32b0:	3c060000 	lui	a2,0x0
    32b4:	3c070000 	lui	a3,0x0
    32b8:	3c080000 	lui	t0,0x0
    32bc:	24840200 	addiu	a0,a0,512
    32c0:	2508297c 	addiu	t0,t0,10620
    32c4:	24a50500 	addiu	a1,a1,1280
    32c8:	24c60800 	addiu	a2,a2,2048
    32cc:	24e70b00 	addiu	a3,a3,2816
    32d0:	afa30014 	sw	v1,20(sp)
    32d4:	0c000000 	jal	0 <read_byte>
    32d8:	afa80018 	sw	t0,24(sp)
			    &out_data_comp_vpos[i],
			    &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
	    }


	  CurrentMCU += 4;
    32dc:	8fa30a28 	lw	v1,2600(sp)
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    32e0:	8fa20a3c 	lw	v0,2620(sp)
			    &out_data_comp_vpos[i],
			    &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
	    }


	  CurrentMCU += 4;
    32e4:	24630004 	addiu	v1,v1,4
    32e8:	afa30a28 	sw	v1,2600(sp)
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    32ec:	8fa40a28 	lw	a0,2600(sp)
    32f0:	8f830000 	lw	v1,0(gp)
    32f4:	00000000 	sll	zero,zero,0x0
    32f8:	0083182a 	slt	v1,a0,v1
    32fc:	1460feb3 	bnez	v1,2dcc <decode_start+0x4b0>
    3300:	00000000 	sll	zero,zero,0x0
    3304:	08000b46 	j	2d18 <decode_start+0x3fc>
    3308:	00000000 	sll	zero,zero,0x0
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
      rgb_buf[p][1][i] = g;
      rgb_buf[p][2][i] = b;
    330c:	08000c7d 	j	31f4 <decode_start+0x8d8>
    3310:	00006821 	addu	t5,zero,zero
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
      rgb_buf[p][1][i] = g;
    3314:	08000c7b 	j	31ec <decode_start+0x8d0>
    3318:	00004821 	addu	t1,zero,zero
      if (b < 0)
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
    331c:	08000c79 	j	31e4 <decode_start+0x8c8>
    3320:	00004021 	addu	t0,zero,zero

00003324 <decode_start.clone.3>:
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    3324:	3c030000 	lui	v1,0x0
      out_data_comp_hpos[i] = 0;
    3328:	3c020000 	lui	v0,0x0

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    332c:	27bdf590 	addiu	sp,sp,-2672
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
      out_data_comp_hpos[i] = 0;
    3330:	ac400000 	sw	zero,0(v0)
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    3334:	24620000 	addiu	v0,v1,0

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3338:	afbf0a6c 	sw	ra,2668(sp)
    333c:	afbe0a68 	sw	s8,2664(sp)
    3340:	afb70a64 	sw	s7,2660(sp)
    3344:	afb60a60 	sw	s6,2656(sp)
    3348:	afb50a5c 	sw	s5,2652(sp)
    334c:	afb40a58 	sw	s4,2648(sp)
    3350:	afb30a54 	sw	s3,2644(sp)
    3354:	afb20a50 	sw	s2,2640(sp)
    3358:	afb10a4c 	sw	s1,2636(sp)
    335c:	afb00a48 	sw	s0,2632(sp)
    }

  /*
   * Set the size of image to output buffer
   */
  *out_data_image_width = p_jinfo_image_width;
    3360:	87850000 	lh	a1,0(gp)
  *out_data_image_height = p_jinfo_image_height;
    3364:	87840000 	lh	a0,0(gp)
  int CurrentMCU = 0;
  int HuffBuff[NUM_COMPONENT][DCTSIZE2];
  int IDCTBuff[6][DCTSIZE2];

  /* Read buffer */
  CurHuffReadBuf = p_jinfo_jpeg_data;
    3368:	8f860000 	lw	a2,0(gp)
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    336c:	ac600000 	sw	zero,0(v1)
    3370:	ac400004 	sw	zero,4(v0)
      out_data_comp_hpos[i] = 0;
    3374:	3c030000 	lui	v1,0x0
  /*
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
    3378:	ac400008 	sw	zero,8(v0)
      out_data_comp_hpos[i] = 0;
    }


  if (p_jinfo_smp_fact == SF1_1_1)
    337c:	8f820000 	lw	v0,0(gp)
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
      out_data_comp_hpos[i] = 0;
    3380:	24630000 	addiu	v1,v1,0
  int CurrentMCU = 0;
  int HuffBuff[NUM_COMPONENT][DCTSIZE2];
  int IDCTBuff[6][DCTSIZE2];

  /* Read buffer */
  CurHuffReadBuf = p_jinfo_jpeg_data;
    3384:	af860000 	sw	a2,0(gp)
  /*
   * Initial value of DC element is 0
   */
  for (i = 0; i < NUM_COMPONENT; i++)
    {
      HuffBuff[i][0] = 0;
    3388:	afa00120 	sw	zero,288(sp)
    338c:	afa00220 	sw	zero,544(sp)
    3390:	afa00320 	sw	zero,800(sp)
    }

  /*
   * Set the size of image to output buffer
   */
  *out_data_image_width = p_jinfo_image_width;
    3394:	af850000 	sw	a1,0(gp)
  *out_data_image_height = p_jinfo_image_height;
    3398:	af840000 	sw	a0,0(gp)
   * Initialize output buffer
   */
  for (i = 0; i < RGB_NUM; i++)
    {
      out_data_comp_vpos[i] = 0;
      out_data_comp_hpos[i] = 0;
    339c:	ac600004 	sw	zero,4(v1)
    }


  if (p_jinfo_smp_fact == SF1_1_1)
    33a0:	144000f1 	bnez	v0,3768 <decode_start.clone.3+0x444>
    33a4:	ac600008 	sw	zero,8(v1)
    {
      printf ("Decode 1:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
    33a8:	8f850000 	lw	a1,0(gp)
    33ac:	3c040000 	lui	a0,0x0
    33b0:	0c000000 	jal	0 <read_byte>
    33b4:	24840000 	addiu	a0,a0,0

      /*
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    33b8:	8f820000 	lw	v0,0(gp)
    33bc:	00000000 	sll	zero,zero,0x0
    33c0:	184000d6 	blez	v0,371c <decode_start.clone.3+0x3f8>
    33c4:	3c020000 	lui	v0,0x0
    33c8:	3c110000 	lui	s1,0x0
    33cc:	27b30420 	addiu	s3,sp,1056
    33d0:	27b20120 	addiu	s2,sp,288
    33d4:	24420000 	addiu	v0,v0,0
void
decode_start (int *out_data_image_width, int *out_data_image_height,
	      int *out_data_comp_vpos, int *out_data_comp_hpos)
{
  int i;
  int CurrentMCU = 0;
    33d8:	afa00a30 	sw	zero,2608(sp)
    33dc:	27b00020 	addiu	s0,sp,32
    33e0:	26310000 	addiu	s1,s1,0
    33e4:	afa20a20 	sw	v0,2592(sp)
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    33e8:	24140100 	addiu	s4,zero,256
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
	{
	  *mptr = Bound;
    33ec:	241500ff 	addiu	s5,zero,255

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    33f0:	27b60520 	addiu	s6,sp,1312
    33f4:	afb30a24 	sw	s3,2596(sp)
    33f8:	afb20a2c 	sw	s2,2604(sp)
    33fc:	00001021 	addu	v0,zero,zero
    3400:	0000f021 	addu	s8,zero,zero
    3404:	00409821 	addu	s3,v0,zero
    3408:	8fa40a2c 	lw	a0,2604(sp)
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    340c:	03c02821 	addu	a1,s8,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3410:	0093b821 	addu	s7,a0,s3
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    3414:	0c000000 	jal	0 <read_byte>
    3418:	02e02021 	addu	a0,s7,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    341c:	8fa50a24 	lw	a1,2596(sp)
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    3420:	00001021 	addu	v0,zero,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3424:	afa50a28 	sw	a1,2600(sp)
    3428:	00b39021 	addu	s2,a1,s3
    342c:	02221821 	addu	v1,s1,v0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    3430:	8c640000 	lw	a0,0(v1)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3434:	02021821 	addu	v1,s0,v0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    3438:	00042080 	sll	a0,a0,0x2
    343c:	02e42021 	addu	a0,s7,a0
    3440:	8c840000 	lw	a0,0(a0)
    3444:	24420004 	addiu	v0,v0,4
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    3448:	1454fff8 	bne	v0,s4,342c <decode_start.clone.3+0x108>
    344c:	ac640000 	sw	a0,0(v1)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3450:	27860000 	addiu	a2,gp,0
    3454:	00de1021 	addu	v0,a2,s8
  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    3458:	80420000 	lb	v0,0(v0)

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    345c:	3c070000 	lui	a3,0x0
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    3460:	24420001 	addiu	v0,v0,1
    3464:	00021200 	sll	v0,v0,0x8

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    3468:	24e70000 	addiu	a3,a3,0
    346c:	00e21021 	addu	v0,a3,v0
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3470:	02001821 	addu	v1,s0,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3474:	24440100 	addiu	a0,v0,256
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    3478:	8c660000 	lw	a2,0(v1)
    347c:	8c450000 	lw	a1,0(v0)
      qmatrix++;
    3480:	24420004 	addiu	v0,v0,4
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    3484:	00c50018 	mult	a2,a1
    3488:	00004012 	mflo	t0
    348c:	ac680000 	sw	t0,0(v1)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3490:	1444fff9 	bne	v0,a0,3478 <decode_start.clone.3+0x154>
    3494:	24630004 	addiu	v1,v1,4

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    3498:	02002021 	addu	a0,s0,zero
    349c:	0c000000 	jal	0 <read_byte>
    34a0:	02402821 	addu	a1,s2,zero
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    34a4:	02401021 	addu	v0,s2,zero

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    34a8:	24030040 	addiu	v1,zero,64
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr += shift;
    34ac:	8c440000 	lw	a0,0(v0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    34b0:	2463ffff 	addiu	v1,v1,-1
    {
      *mptr += shift;
    34b4:	24840080 	addiu	a0,a0,128
    34b8:	ac440000 	sw	a0,0(v0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    34bc:	1460fffb 	bnez	v1,34ac <decode_start.clone.3+0x188>
    34c0:	24420004 	addiu	v0,v0,4
    34c4:	08000d39 	j	34e4 <decode_start.clone.3+0x1c0>
    34c8:	24020040 	addiu	v0,zero,64
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
    34cc:	14800002 	bnez	a0,34d8 <decode_start.clone.3+0x1b4>
    34d0:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = Bound;
    34d4:	ae550000 	sw	s5,0(s2)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    34d8:	2442ffff 	addiu	v0,v0,-1
    34dc:	10400009 	beqz	v0,3504 <decode_start.clone.3+0x1e0>
    34e0:	26520004 	addiu	s2,s2,4
    {
      if (*mptr < 0)
    34e4:	8e430000 	lw	v1,0(s2)
    34e8:	00000000 	sll	zero,zero,0x0
    34ec:	0461fff7 	bgez	v1,34cc <decode_start.clone.3+0x1a8>
    34f0:	28640100 	slti	a0,v1,256
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    34f4:	2442ffff 	addiu	v0,v0,-1
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
    34f8:	ae400000 	sw	zero,0(s2)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    34fc:	1440fff9 	bnez	v0,34e4 <decode_start.clone.3+0x1c0>
    3500:	26520004 	addiu	s2,s2,4
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
	{

	  for (i = 0; i < NUM_COMPONENT; i++)
    3504:	27de0001 	addiu	s8,s8,1
    3508:	24020003 	addiu	v0,zero,3
    350c:	17c2ffbe 	bne	s8,v0,3408 <decode_start.clone.3+0xe4>
    3510:	26730100 	addiu	s3,s3,256
    3514:	8fb30a28 	lw	s3,2600(sp)
    3518:	8fa40a20 	lw	a0,2592(sp)

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;
    351c:	8e630200 	lw	v1,512(s3)
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
    3520:	8e620100 	lw	v0,256(s3)
      v = v_buf[i] - 128;
    3524:	2463ff80 	addiu	v1,v1,-128
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
    3528:	2442ff80 	addiu	v0,v0,-128
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    352c:	000328c0 	sll	a1,v1,0x3
    3530:	00033140 	sll	a2,v1,0x5
    3534:	00c53023 	subu	a2,a2,a1
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3538:	00033880 	sll	a3,v1,0x2
    353c:	00036900 	sll	t5,v1,0x4
      b = (y * 256 + u * 454 + 128) >> 8;
    3540:	000240c0 	sll	t0,v0,0x3
    3544:	00026180 	sll	t4,v0,0x6
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3548:	8e650000 	lw	a1,0(s3)
    354c:	00064900 	sll	t1,a2,0x4
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3550:	00025080 	sll	t2,v0,0x2
    3554:	00025900 	sll	t3,v0,0x4
    3558:	01a73823 	subu	a3,t5,a3
      b = (y * 256 + u * 454 + 128) >> 8;
    355c:	01884023 	subu	t0,t4,t0
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3560:	00e33821 	addu	a3,a3,v1
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3564:	01264823 	subu	t1,t1,a2
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
      b = (y * 256 + u * 454 + 128) >> 8;
    3568:	01024021 	addu	t0,t0,v0
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    356c:	00052a00 	sll	a1,a1,0x8
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3570:	016a3023 	subu	a2,t3,t2
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3574:	24a50080 	addiu	a1,a1,128
    3578:	01231823 	subu	v1,t1,v1
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    357c:	00463023 	subu	a2,v0,a2
      b = (y * 256 + u * 454 + 128) >> 8;
    3580:	00084080 	sll	t0,t0,0x2
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3584:	000748c0 	sll	t1,a3,0x3
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3588:	00a31821 	addu	v1,a1,v1
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
      b = (y * 256 + u * 454 + 128) >> 8;
    358c:	01021023 	subu	v0,t0,v0
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3590:	000630c0 	sll	a2,a2,0x3
    3594:	00e93823 	subu	a3,a3,t1
    3598:	00c53021 	addu	a2,a2,a1
    359c:	00073840 	sll	a3,a3,0x1
      b = (y * 256 + u * 454 + 128) >> 8;
    35a0:	00021040 	sll	v0,v0,0x1
    35a4:	00031a03 	sra	v1,v1,0x8
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    35a8:	00c73021 	addu	a2,a2,a3
      b = (y * 256 + u * 454 + 128) >> 8;
    35ac:	00452821 	addu	a1,v0,a1
    35b0:	28680100 	slti	t0,v1,256
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    35b4:	00063203 	sra	a2,a2,0x8
      b = (y * 256 + u * 454 + 128) >> 8;
    35b8:	15000002 	bnez	t0,35c4 <decode_start.clone.3+0x2a0>
    35bc:	00052a03 	sra	a1,a1,0x8
    35c0:	240300ff 	addiu	v1,zero,255
    35c4:	28c70100 	slti	a3,a2,256
    35c8:	14e00002 	bnez	a3,35d4 <decode_start.clone.3+0x2b0>
    35cc:	28a20100 	slti	v0,a1,256
    35d0:	240600ff 	addiu	a2,zero,255
    35d4:	14400002 	bnez	v0,35e0 <decode_start.clone.3+0x2bc>
    35d8:	00000000 	sll	zero,zero,0x0
    35dc:	240500ff 	addiu	a1,zero,255
      if (b < 0)
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
    35e0:	0460005f 	bltz	v1,3760 <decode_start.clone.3+0x43c>
    35e4:	00000000 	sll	zero,zero,0x0
      rgb_buf[p][1][i] = g;
    35e8:	04c00058 	bltz	a2,374c <decode_start.clone.3+0x428>
    35ec:	ac830000 	sw	v1,0(a0)
      rgb_buf[p][2][i] = b;
    35f0:	04a00059 	bltz	a1,3758 <decode_start.clone.3+0x434>
    35f4:	ac860100 	sw	a2,256(a0)
    35f8:	26730004 	addiu	s3,s3,4
    35fc:	ac850200 	sw	a1,512(a0)
{
  int r, g, b;
  int y, u, v;
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    3600:	1676ffc6 	bne	s3,s6,351c <decode_start.clone.3+0x1f8>
    3604:	24840004 	addiu	a0,a0,4
   *  Add positions
   */
  *p_out_hpos++;
  *p_out_vpos++;

  if (*p_out_hpos < p_jinfo_MCUWidth)
    3608:	8f830000 	lw	v1,0(gp)
    360c:	3c0a0000 	lui	t2,0x0
    3610:	3c090000 	lui	t1,0x0
    3614:	3c070000 	lui	a3,0x0
  hoffs = *p_out_hpos * DCTSIZE;

  /*
   * Write block
   */
  WriteOneBlock (store,
    3618:	87820000 	lh	v0,0(gp)
    361c:	87850000 	lh	a1,0(gp)
   *  Add positions
   */
  *p_out_hpos++;
  *p_out_vpos++;

  if (*p_out_hpos < p_jinfo_MCUWidth)
    3620:	8fa80a20 	lw	t0,2592(sp)
    3624:	afa30a28 	sw	v1,2600(sp)
    3628:	254a0000 	addiu	t2,t2,0
    362c:	25290000 	addiu	t1,t1,0
    3630:	24e70000 	addiu	a3,a3,0
    3634:	00003021 	addu	a2,zero,zero
  int voffs, hoffs;

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
    3638:	8d430000 	lw	v1,0(t2)
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
	    {
	      WriteBlock (&rgb_buf[0][i][0],
    363c:	3c040000 	lui	a0,0x0
  int voffs, hoffs;

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
    3640:	000318c0 	sll	v1,v1,0x3
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
	    {
	      WriteBlock (&rgb_buf[0][i][0],
    3644:	24840000 	addiu	a0,a0,0
    3648:	00065880 	sll	t3,a2,0x2


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    364c:	0065602a 	slt	t4,v1,a1
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
	    {
	      WriteBlock (&rgb_buf[0][i][0],
    3650:	008b5821 	addu	t3,a0,t3

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
  hoffs = *p_out_hpos * DCTSIZE;
    3654:	8d370000 	lw	s7,0(t1)


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    3658:	1180001c 	beqz	t4,36cc <decode_start.clone.3+0x3a8>
    365c:	24640007 	addiu	a0,v1,7

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3660:	00620018 	mult	v1,v0

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
  hoffs = *p_out_hpos * DCTSIZE;
    3664:	0017b8c0 	sll	s7,s7,0x3


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    {
      if (i < height)
    3668:	01006821 	addu	t5,t0,zero

  /*
   * Get vertical offsets
   */
  voffs = *p_out_vpos * DCTSIZE;
  hoffs = *p_out_hpos * DCTSIZE;
    366c:	26f20007 	addiu	s2,s7,7
    3670:	02e2f02a 	slt	s8,s7,v0

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3674:	00009812 	mflo	s3
    3678:	02779821 	addu	s3,s3,s7
    367c:	00f39821 	addu	s3,a3,s3
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
	    {
	      if (e < width)
    3680:	13c0000c 	beqz	s8,36b4 <decode_start.clone.3+0x390>
    3684:	02e06021 	addu	t4,s7,zero
    3688:	08000da6 	j	3698 <decode_start.clone.3+0x374>
    368c:	02607021 	addu	t6,s3,zero
    3690:	13200008 	beqz	t9,36b4 <decode_start.clone.3+0x390>
    3694:	25ce0001 	addiu	t6,t6,1
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    3698:	8db80000 	lw	t8,0(t5)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    369c:	258c0001 	addiu	t4,t4,1
    36a0:	024c782a 	slt	t7,s2,t4
	    {
	      if (e < width)
    36a4:	0182c82a 	slt	t9,t4,v0
		{
		  out_buf[diff + e] = (unsigned char) (*(store++));
    36a8:	a1d80000 	sb	t8,0(t6)
    {
      if (i < height)
	{
	  int diff;
	  diff = width * i;
	  for (e = hoffs; e < hoffs + DCTSIZE; e++)
    36ac:	11e0fff8 	beqz	t7,3690 <decode_start.clone.3+0x36c>
    36b0:	25ad0004 	addiu	t5,t5,4
{
  int i, e;


  /* Find vertical buffer offs. */
  for (i = voffs; i < voffs + DCTSIZE; i++)
    36b4:	24630001 	addiu	v1,v1,1
    36b8:	0083602a 	slt	t4,a0,v1
    36bc:	15800003 	bnez	t4,36cc <decode_start.clone.3+0x3a8>
    36c0:	0065602a 	slt	t4,v1,a1
    {
      if (i < height)
    36c4:	1580ffee 	bnez	t4,3680 <decode_start.clone.3+0x35c>
    36c8:	02629821 	addu	s3,s3,v0
   *  Add positions
   */
  *p_out_hpos++;
  *p_out_vpos++;

  if (*p_out_hpos < p_jinfo_MCUWidth)
    36cc:	8d630004 	lw	v1,4(t3)
    36d0:	8fa40a28 	lw	a0,2600(sp)
    36d4:	00000000 	sll	zero,zero,0x0
    36d8:	0064182a 	slt	v1,v1,a0
    36dc:	14600002 	bnez	v1,36e8 <decode_start.clone.3+0x3c4>
    36e0:	00000000 	sll	zero,zero,0x0
    {
      *p_out_vpos--;
    }
  else
    {
      *p_out_hpos = 0;		/* If at end of image (width) */
    36e4:	ad600004 	sw	zero,4(t3)

	  YuvToRgb (0, IDCTBuff[0], IDCTBuff[1], IDCTBuff[2]);
	  /*
	   * Write
	   */
	  for (i = 0; i < RGB_NUM; i++)
    36e8:	24c60001 	addiu	a2,a2,1
    36ec:	24030003 	addiu	v1,zero,3
    36f0:	254a0004 	addiu	t2,t2,4
    36f4:	25290004 	addiu	t1,t1,4
    36f8:	25080100 	addiu	t0,t0,256
    36fc:	14c3ffce 	bne	a2,v1,3638 <decode_start.clone.3+0x314>
    3700:	24e714be 	addiu	a3,a3,5310
	    {
	      WriteBlock (&rgb_buf[0][i][0],
			  &out_data_comp_vpos[i],
			  &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
	    }
	  CurrentMCU++;
    3704:	8fa40a30 	lw	a0,2608(sp)
      printf ("Decode 1:1:1 NumMCU = %d\n", p_jinfo_NumMCU);

      /*
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    3708:	8f820000 	lw	v0,0(gp)
	    {
	      WriteBlock (&rgb_buf[0][i][0],
			  &out_data_comp_vpos[i],
			  &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
	    }
	  CurrentMCU++;
    370c:	24840001 	addiu	a0,a0,1
      printf ("Decode 1:1:1 NumMCU = %d\n", p_jinfo_NumMCU);

      /*
       * 1_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    3710:	0082102a 	slt	v0,a0,v0
    3714:	1440ff39 	bnez	v0,33fc <decode_start.clone.3+0xd8>
    3718:	afa40a30 	sw	a0,2608(sp)


	  CurrentMCU += 4;
	}
    }
}
    371c:	8fbf0a6c 	lw	ra,2668(sp)
    3720:	8fbe0a68 	lw	s8,2664(sp)
    3724:	8fb70a64 	lw	s7,2660(sp)
    3728:	8fb60a60 	lw	s6,2656(sp)
    372c:	8fb50a5c 	lw	s5,2652(sp)
    3730:	8fb40a58 	lw	s4,2648(sp)
    3734:	8fb30a54 	lw	s3,2644(sp)
    3738:	8fb20a50 	lw	s2,2640(sp)
    373c:	8fb10a4c 	lw	s1,2636(sp)
    3740:	8fb00a48 	lw	s0,2632(sp)
    3744:	03e00008 	jr	ra
    3748:	27bd0a70 	addiu	sp,sp,2672
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
      rgb_buf[p][1][i] = g;
    374c:	00003021 	addu	a2,zero,zero
      rgb_buf[p][2][i] = b;
    3750:	04a1ffa9 	bgez	a1,35f8 <decode_start.clone.3+0x2d4>
    3754:	ac860100 	sw	a2,256(a0)
    3758:	08000d7e 	j	35f8 <decode_start.clone.3+0x2d4>
    375c:	00002821 	addu	a1,zero,zero
      if (b < 0)
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
    3760:	08000d7a 	j	35e8 <decode_start.clone.3+0x2c4>
    3764:	00001821 	addu	v1,zero,zero
	}

    }
  else
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
    3768:	8f850000 	lw	a1,0(gp)
    376c:	3c040000 	lui	a0,0x0
    3770:	0c000000 	jal	0 <read_byte>
    3774:	24840000 	addiu	a0,a0,0
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    3778:	8f820000 	lw	v0,0(gp)
    377c:	00000000 	sll	zero,zero,0x0
    3780:	1840ffe6 	blez	v0,371c <decode_start.clone.3+0x3f8>
    3784:	3c020000 	lui	v0,0x0


	  CurrentMCU += 4;
	}
    }
}
    3788:	24420000 	addiu	v0,v0,0
    378c:	3c110000 	lui	s1,0x0
    3790:	27a60820 	addiu	a2,sp,2080
    3794:	afa20a20 	sw	v0,2592(sp)
      while (CurrentMCU < p_jinfo_NumMCU)
	{

	  for (i = 0; i < NUM_COMPONENT; i++)
	    {
	      decode_block (i, IDCTBuff[i], HuffBuff[i]);
    3798:	27b30420 	addiu	s3,sp,1056
    379c:	27b20120 	addiu	s2,sp,288


	  CurrentMCU += 4;
	}
    }
}
    37a0:	afa60a40 	sw	a2,2624(sp)
void
decode_start (int *out_data_image_width, int *out_data_image_height,
	      int *out_data_comp_vpos, int *out_data_comp_hpos)
{
  int i;
  int CurrentMCU = 0;
    37a4:	afa00a24 	sw	zero,2596(sp)
    37a8:	27b00020 	addiu	s0,sp,32
    37ac:	26310000 	addiu	s1,s1,0
    37b0:	27a30220 	addiu	v1,sp,544
    37b4:	27a20320 	addiu	v0,sp,800
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    37b8:	24140100 	addiu	s4,zero,256
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
	{
	  *mptr = Bound;
    37bc:	241600ff 	addiu	s6,zero,255

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    37c0:	27be0920 	addiu	s8,sp,2336
    37c4:	27b70a20 	addiu	s7,sp,2592
    37c8:	27b50520 	addiu	s5,sp,1312
    37cc:	02603821 	addu	a3,s3,zero
    37d0:	afb30a28 	sw	s3,2600(sp)
    37d4:	02209821 	addu	s3,s1,zero
    37d8:	02008821 	addu	s1,s0,zero
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    37dc:	02402021 	addu	a0,s2,zero
    37e0:	00002821 	addu	a1,zero,zero
    37e4:	afa20a38 	sw	v0,2616(sp)
    37e8:	afa30a3c 	sw	v1,2620(sp)
    37ec:	0c000000 	jal	0 <read_byte>
    37f0:	afa70a34 	sw	a3,2612(sp)
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    37f4:	8fa70a34 	lw	a3,2612(sp)
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    37f8:	8fa30a3c 	lw	v1,2620(sp)
    37fc:	8fa20a38 	lw	v0,2616(sp)
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    3800:	00e08021 	addu	s0,a3,zero
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    3804:	00002021 	addu	a0,zero,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3808:	02642821 	addu	a1,s3,a0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    380c:	8ca60000 	lw	a2,0(a1)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3810:	02242821 	addu	a1,s1,a0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    3814:	00063080 	sll	a2,a2,0x2
    3818:	02463021 	addu	a2,s2,a2
    381c:	8cc60000 	lw	a2,0(a2)
    3820:	24840004 	addiu	a0,a0,4
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    3824:	1494fff8 	bne	a0,s4,3808 <decode_start.clone.3+0x4e4>
    3828:	aca60000 	sw	a2,0(a1)
  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    382c:	83840000 	lb	a0,0(gp)

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    3830:	3c060000 	lui	a2,0x0
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    3834:	24840001 	addiu	a0,a0,1

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    3838:	24c60000 	addiu	a2,a2,0
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    383c:	00042200 	sll	a0,a0,0x8

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    3840:	00c42021 	addu	a0,a2,a0
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3844:	02202821 	addu	a1,s1,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3848:	24860100 	addiu	a2,a0,256
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    384c:	8c880000 	lw	t0,0(a0)
    3850:	8ca90000 	lw	t1,0(a1)
      qmatrix++;
    3854:	24840004 	addiu	a0,a0,4
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    3858:	01280018 	mult	t1,t0
    385c:	00004012 	mflo	t0
    3860:	aca80000 	sw	t0,0(a1)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3864:	1486fff9 	bne	a0,a2,384c <decode_start.clone.3+0x528>
    3868:	24a50004 	addiu	a1,a1,4

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    386c:	00e02821 	addu	a1,a3,zero
    3870:	02202021 	addu	a0,s1,zero
    3874:	afa20a38 	sw	v0,2616(sp)
    3878:	afa30a3c 	sw	v1,2620(sp)
    387c:	0c000000 	jal	0 <read_byte>
    3880:	afa70a34 	sw	a3,2612(sp)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3884:	8fa70a34 	lw	a3,2612(sp)

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    3888:	8fa30a3c 	lw	v1,2620(sp)
    388c:	8fa20a38 	lw	v0,2616(sp)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3890:	00e02021 	addu	a0,a3,zero

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    3894:	24050040 	addiu	a1,zero,64
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr += shift;
    3898:	8c860000 	lw	a2,0(a0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    389c:	24a5ffff 	addiu	a1,a1,-1
    {
      *mptr += shift;
    38a0:	24c60080 	addiu	a2,a2,128
    38a4:	ac860000 	sw	a2,0(a0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    38a8:	14a0fffb 	bnez	a1,3898 <decode_start.clone.3+0x574>
    38ac:	24840004 	addiu	a0,a0,4
    38b0:	08000e34 	j	38d0 <decode_start.clone.3+0x5ac>
    38b4:	24040040 	addiu	a0,zero,64
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
    38b8:	14c00002 	bnez	a2,38c4 <decode_start.clone.3+0x5a0>
    38bc:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = Bound;
    38c0:	ae160000 	sw	s6,0(s0)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    38c4:	2484ffff 	addiu	a0,a0,-1
    38c8:	10800009 	beqz	a0,38f0 <decode_start.clone.3+0x5cc>
    38cc:	26100004 	addiu	s0,s0,4
    {
      if (*mptr < 0)
    38d0:	8e050000 	lw	a1,0(s0)
    38d4:	00000000 	sll	zero,zero,0x0
    38d8:	04a1fff7 	bgez	a1,38b8 <decode_start.clone.3+0x594>
    38dc:	28a60100 	slti	a2,a1,256
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    38e0:	2484ffff 	addiu	a0,a0,-1
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
    38e4:	ae000000 	sw	zero,0(s0)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    38e8:	1480fff9 	bnez	a0,38d0 <decode_start.clone.3+0x5ac>
    38ec:	26100004 	addiu	s0,s0,4
	  /*
	   * Decode Y element
	   * Decoding Y, U and V elements should be sequentially conducted for the use of Huffman table
	   */

	  for (i = 0; i < 4; i++)
    38f0:	8fa40a40 	lw	a0,2624(sp)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    38f4:	24e70100 	addiu	a3,a3,256
	  /*
	   * Decode Y element
	   * Decoding Y, U and V elements should be sequentially conducted for the use of Huffman table
	   */

	  for (i = 0; i < 4; i++)
    38f8:	1487ffb9 	bne	a0,a3,37e0 <decode_start.clone.3+0x4bc>
    38fc:	02402021 	addu	a0,s2,zero
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    3900:	00602021 	addu	a0,v1,zero
    3904:	afa20a38 	sw	v0,2616(sp)
    3908:	afa30a3c 	sw	v1,2620(sp)
    390c:	02208021 	addu	s0,s1,zero
    3910:	02608821 	addu	s1,s3,zero
    3914:	8fb30a28 	lw	s3,2600(sp)
    3918:	0c000000 	jal	0 <read_byte>
    391c:	24050001 	addiu	a1,zero,1
    3920:	8fa30a3c 	lw	v1,2620(sp)
    3924:	8fa20a38 	lw	v0,2616(sp)
    3928:	00002021 	addu	a0,zero,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    392c:	02242821 	addu	a1,s1,a0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    3930:	8ca60000 	lw	a2,0(a1)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3934:	02042821 	addu	a1,s0,a0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    3938:	00063080 	sll	a2,a2,0x2
    393c:	00663021 	addu	a2,v1,a2
    3940:	8cc60000 	lw	a2,0(a2)
    3944:	24840004 	addiu	a0,a0,4
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    3948:	1494fff8 	bne	a0,s4,392c <decode_start.clone.3+0x608>
    394c:	aca60000 	sw	a2,0(a1)
  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    3950:	83840001 	lb	a0,1(gp)

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    3954:	3c060000 	lui	a2,0x0
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    3958:	24840001 	addiu	a0,a0,1

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    395c:	24c60000 	addiu	a2,a2,0
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    3960:	00042200 	sll	a0,a0,0x8

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    3964:	00c42021 	addu	a0,a2,a0
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3968:	02002821 	addu	a1,s0,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    396c:	24860100 	addiu	a2,a0,256
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    3970:	8c870000 	lw	a3,0(a0)
    3974:	8ca80000 	lw	t0,0(a1)
      qmatrix++;
    3978:	24840004 	addiu	a0,a0,4
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    397c:	01070018 	mult	t0,a3
    3980:	00003812 	mflo	a3
    3984:	aca70000 	sw	a3,0(a1)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3988:	1486fff9 	bne	a0,a2,3970 <decode_start.clone.3+0x64c>
    398c:	24a50004 	addiu	a1,a1,4

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    3990:	02002021 	addu	a0,s0,zero
    3994:	27a50820 	addiu	a1,sp,2080
    3998:	afa20a38 	sw	v0,2616(sp)
    399c:	0c000000 	jal	0 <read_byte>
    39a0:	afa30a3c 	sw	v1,2620(sp)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    39a4:	8fa30a3c 	lw	v1,2620(sp)
    39a8:	8fa20a38 	lw	v0,2616(sp)
    39ac:	27a40820 	addiu	a0,sp,2080
    {
      *mptr += shift;
    39b0:	8c850000 	lw	a1,0(a0)
    39b4:	00000000 	sll	zero,zero,0x0
    39b8:	24a50080 	addiu	a1,a1,128
    39bc:	ac850000 	sw	a1,0(a0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    39c0:	24840004 	addiu	a0,a0,4
    39c4:	149efffa 	bne	a0,s8,39b0 <decode_start.clone.3+0x68c>
    39c8:	00000000 	sll	zero,zero,0x0
    39cc:	08000e7b 	j	39ec <decode_start.clone.3+0x6c8>
    39d0:	27a40820 	addiu	a0,sp,2080
    {
      if (*mptr < 0)
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
    39d4:	14c00002 	bnez	a2,39e0 <decode_start.clone.3+0x6bc>
    39d8:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = Bound;
    39dc:	ac960000 	sw	s6,0(a0)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    39e0:	24840004 	addiu	a0,a0,4
    39e4:	109e0009 	beq	a0,s8,3a0c <decode_start.clone.3+0x6e8>
    39e8:	00000000 	sll	zero,zero,0x0
    {
      if (*mptr < 0)
    39ec:	8c850000 	lw	a1,0(a0)
    39f0:	00000000 	sll	zero,zero,0x0
    39f4:	04a1fff7 	bgez	a1,39d4 <decode_start.clone.3+0x6b0>
    39f8:	28a60100 	slti	a2,a1,256
	{
	  *mptr = 0;
    39fc:	ac800000 	sw	zero,0(a0)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3a00:	24840004 	addiu	a0,a0,4
    3a04:	149efff9 	bne	a0,s8,39ec <decode_start.clone.3+0x6c8>
    3a08:	00000000 	sll	zero,zero,0x0
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    3a0c:	00402021 	addu	a0,v0,zero
    3a10:	24050002 	addiu	a1,zero,2
    3a14:	afa20a38 	sw	v0,2616(sp)
    3a18:	0c000000 	jal	0 <read_byte>
    3a1c:	afa30a3c 	sw	v1,2620(sp)
    3a20:	8fa30a3c 	lw	v1,2620(sp)
    3a24:	8fa20a38 	lw	v0,2616(sp)

	  /* Decode U */
	  decode_block (1, IDCTBuff[4], HuffBuff[1]);

	  /* Decode V */
	  decode_block (2, IDCTBuff[5], HuffBuff[2]);
    3a28:	27a60920 	addiu	a2,sp,2336
decode_block (int comp_no, int *out_buf, int *HuffBuff)
{
  int QuantBuff[DCTSIZE2];
  unsigned int *p_quant_tbl;

  DecodeHuffMCU (HuffBuff, comp_no);
    3a2c:	00002021 	addu	a0,zero,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3a30:	02242821 	addu	a1,s1,a0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    3a34:	8ca70000 	lw	a3,0(a1)

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3a38:	02042821 	addu	a1,s0,a0

  for (i = 0; i < DCTSIZE2; i++)
    
    {
      
*(omatrix++) = imatrix[zigzag_index[i]];
    3a3c:	00073880 	sll	a3,a3,0x2
    3a40:	00473821 	addu	a3,v0,a3
    3a44:	8ce70000 	lw	a3,0(a3)
    3a48:	24840004 	addiu	a0,a0,4
void
IZigzagMatrix (int *imatrix, int *omatrix)
{
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    3a4c:	1494fff8 	bne	a0,s4,3a30 <decode_start.clone.3+0x70c>
    3a50:	aca70000 	sw	a3,0(a1)
  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    3a54:	83850002 	lb	a1,2(gp)

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    3a58:	3c080000 	lui	t0,0x0
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
    3a5c:	24a50001 	addiu	a1,a1,1
    3a60:	00052a00 	sll	a1,a1,0x8

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    3a64:	25080000 	addiu	t0,t0,0
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3a68:	02002021 	addu	a0,s0,zero

  DecodeHuffMCU (HuffBuff, comp_no);

  IZigzagMatrix (HuffBuff, QuantBuff);

  p_quant_tbl =
    3a6c:	01052821 	addu	a1,t0,a1
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      *mptr = *mptr * (*qmatrix);
    3a70:	8ca70000 	lw	a3,0(a1)
    3a74:	8c880000 	lw	t0,0(a0)
    3a78:	00000000 	sll	zero,zero,0x0
    3a7c:	01070018 	mult	t0,a3
    3a80:	00003812 	mflo	a3
    3a84:	ac870000 	sw	a3,0(a0)
void
IQuantize (int *matrix, int *qmatrix)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3a88:	24840004 	addiu	a0,a0,4
    3a8c:	1492fff8 	bne	a0,s2,3a70 <decode_start.clone.3+0x74c>
    3a90:	24a50004 	addiu	a1,a1,4

  p_quant_tbl =
    &p_jinfo_quant_tbl_quantval[(int)p_jinfo_comps_info_quant_tbl_no[comp_no]][DCTSIZE2];
  IQuantize (QuantBuff, p_quant_tbl);

  ChenIDct (QuantBuff, out_buf);
    3a94:	02002021 	addu	a0,s0,zero
    3a98:	27a50920 	addiu	a1,sp,2336
    3a9c:	afa20a38 	sw	v0,2616(sp)
    3aa0:	afa30a3c 	sw	v1,2620(sp)
    3aa4:	0c000000 	jal	0 <read_byte>
    3aa8:	afa60a34 	sw	a2,2612(sp)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3aac:	8fa60a34 	lw	a2,2612(sp)
    3ab0:	8fa30a3c 	lw	v1,2620(sp)
    3ab4:	8fa20a38 	lw	v0,2616(sp)
    3ab8:	27a40920 	addiu	a0,sp,2336
    {
      *mptr += shift;
    3abc:	8c850000 	lw	a1,0(a0)
    3ac0:	00000000 	sll	zero,zero,0x0
    3ac4:	24a50080 	addiu	a1,a1,128
    3ac8:	ac850000 	sw	a1,0(a0)
 */
void
PostshiftIDctMatrix (int *matrix, int shift)
{
  int *mptr;
  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3acc:	24840004 	addiu	a0,a0,4
    3ad0:	1497fffa 	bne	a0,s7,3abc <decode_start.clone.3+0x798>
    3ad4:	00000000 	sll	zero,zero,0x0
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    {
      if (*mptr < 0)
    3ad8:	8cc40000 	lw	a0,0(a2)
    3adc:	00000000 	sll	zero,zero,0x0
    3ae0:	0480000b 	bltz	a0,3b10 <decode_start.clone.3+0x7ec>
    3ae4:	28850100 	slti	a1,a0,256
	{
	  *mptr = 0;
	}
      else if (*mptr > Bound)
    3ae8:	14a00002 	bnez	a1,3af4 <decode_start.clone.3+0x7d0>
    3aec:	00000000 	sll	zero,zero,0x0
	{
	  *mptr = Bound;
    3af0:	acd60000 	sw	s6,0(a2)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3af4:	24c60004 	addiu	a2,a2,4
    3af8:	10d70009 	beq	a2,s7,3b20 <decode_start.clone.3+0x7fc>
    3afc:	02000013 	mtlo	s0
    {
      if (*mptr < 0)
    3b00:	8cc40000 	lw	a0,0(a2)
    3b04:	00000000 	sll	zero,zero,0x0
    3b08:	0481fff7 	bgez	a0,3ae8 <decode_start.clone.3+0x7c4>
    3b0c:	28850100 	slti	a1,a0,256
	{
	  *mptr = 0;
    3b10:	acc00000 	sw	zero,0(a2)
void
BoundIDctMatrix (int *matrix, int Bound)
{
  int *mptr;

  for (mptr = matrix; mptr < matrix + DCTSIZE2; mptr++)
    3b14:	24c60004 	addiu	a2,a2,4
    3b18:	14d7fff9 	bne	a2,s7,3b00 <decode_start.clone.3+0x7dc>
    3b1c:	02000013 	mtlo	s0
    3b20:	0000f821 	addu	ra,zero,zero
    3b24:	02608021 	addu	s0,s3,zero

}


void
decode_start (int *out_data_image_width, int *out_data_image_height,
    3b28:	8fa80a20 	lw	t0,2592(sp)
    3b2c:	001f2200 	sll	a0,ra,0x8
    3b30:	001f3a80 	sll	a3,ra,0xa
    3b34:	00e43823 	subu	a3,a3,a0
    3b38:	01073821 	addu	a3,t0,a3
    3b3c:	02603021 	addu	a2,s3,zero
    3b40:	02004021 	addu	t0,s0,zero

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;
    3b44:	8cc50500 	lw	a1,1280(a2)
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
    3b48:	8cc40400 	lw	a0,1024(a2)
      v = v_buf[i] - 128;
    3b4c:	24a5ff80 	addiu	a1,a1,-128
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
    3b50:	2484ff80 	addiu	a0,a0,-128
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3b54:	00055140 	sll	t2,a1,0x5
    3b58:	000548c0 	sll	t1,a1,0x3
    3b5c:	01494823 	subu	t1,t2,t1
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3b60:	0005c900 	sll	t9,a1,0x4
    3b64:	0005c080 	sll	t8,a1,0x2
      b = (y * 256 + u * 454 + 128) >> 8;
    3b68:	000470c0 	sll	t6,a0,0x3
    3b6c:	00047980 	sll	t7,a0,0x6
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3b70:	8d0d0000 	lw	t5,0(t0)
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3b74:	00045080 	sll	t2,a0,0x2
    3b78:	00045900 	sll	t3,a0,0x4
    3b7c:	0338c023 	subu	t8,t9,t8
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3b80:	00096100 	sll	t4,t1,0x4
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
      b = (y * 256 + u * 454 + 128) >> 8;
    3b84:	01ee7023 	subu	t6,t7,t6
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3b88:	0305c021 	addu	t8,t8,a1
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3b8c:	01894823 	subu	t1,t4,t1
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
      b = (y * 256 + u * 454 + 128) >> 8;
    3b90:	01c47021 	addu	t6,t6,a0
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3b94:	000d6a00 	sll	t5,t5,0x8
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3b98:	016a5023 	subu	t2,t3,t2
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3b9c:	25ad0080 	addiu	t5,t5,128
    3ba0:	01252823 	subu	a1,t1,a1
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3ba4:	008a5023 	subu	t2,a0,t2
    3ba8:	0018c8c0 	sll	t9,t8,0x3
      b = (y * 256 + u * 454 + 128) >> 8;
    3bac:	000e7080 	sll	t6,t6,0x2
    {
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
    3bb0:	01a52821 	addu	a1,t5,a1
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3bb4:	000a50c0 	sll	t2,t2,0x3
    3bb8:	0319c023 	subu	t8,t8,t9
      b = (y * 256 + u * 454 + 128) >> 8;
    3bbc:	01c42023 	subu	a0,t6,a0
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3bc0:	014d5021 	addu	t2,t2,t5
    3bc4:	0018c040 	sll	t8,t8,0x1
      b = (y * 256 + u * 454 + 128) >> 8;
    3bc8:	00042040 	sll	a0,a0,0x1
    3bcc:	00052a03 	sra	a1,a1,0x8
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3bd0:	0158c021 	addu	t8,t2,t8
      b = (y * 256 + u * 454 + 128) >> 8;
    3bd4:	008d6821 	addu	t5,a0,t5
    3bd8:	28a90100 	slti	t1,a1,256
      y = y_buf[i];
      u = u_buf[i] - 128;
      v = v_buf[i] - 128;

      r = (y * 256 + v * 359 + 128) >> 8;
      g = (y * 256 - u * 88 - v * 182 + 128) >> 8;
    3bdc:	0018c203 	sra	t8,t8,0x8
      b = (y * 256 + u * 454 + 128) >> 8;
    3be0:	15200002 	bnez	t1,3bec <decode_start.clone.3+0x8c8>
    3be4:	000d6a03 	sra	t5,t5,0x8
    3be8:	240500ff 	addiu	a1,zero,255
    3bec:	2b040100 	slti	a0,t8,256
    3bf0:	14800002 	bnez	a0,3bfc <decode_start.clone.3+0x8d8>
    3bf4:	29a40100 	slti	a0,t5,256
    3bf8:	241800ff 	addiu	t8,zero,255
    3bfc:	14800002 	bnez	a0,3c08 <decode_start.clone.3+0x8e4>
    3c00:	00000000 	sll	zero,zero,0x0
    3c04:	240d00ff 	addiu	t5,zero,255
      if (b < 0)
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
    3c08:	04a00057 	bltz	a1,3d68 <decode_start.clone.3+0xa44>
    3c0c:	00000000 	sll	zero,zero,0x0
      rgb_buf[p][1][i] = g;
    3c10:	07000053 	bltz	t8,3d60 <decode_start.clone.3+0xa3c>
    3c14:	ace50000 	sw	a1,0(a3)
      rgb_buf[p][2][i] = b;
    3c18:	05a0004f 	bltz	t5,3d58 <decode_start.clone.3+0xa34>
    3c1c:	acf80100 	sw	t8,256(a3)
    3c20:	24c60004 	addiu	a2,a2,4
    3c24:	aced0200 	sw	t5,512(a3)
    3c28:	25080004 	addiu	t0,t0,4
{
  int r, g, b;
  int y, u, v;
  int i;

  for (i = 0; i < DCTSIZE2; i++)
    3c2c:	14d5ffc5 	bne	a2,s5,3b44 <decode_start.clone.3+0x820>
    3c30:	24e70004 	addiu	a3,a3,4
	  decode_block (2, IDCTBuff[5], HuffBuff[2]);


	  /* Transform from Yuv into RGB */

	  for (i = 0; i < 4; i++)
    3c34:	27ff0001 	addiu	ra,ra,1
    3c38:	24040004 	addiu	a0,zero,4
    3c3c:	17e4ffba 	bne	ra,a0,3b28 <decode_start.clone.3+0x804>
    3c40:	26100100 	addiu	s0,s0,256
	    }


	  for (i = 0; i < RGB_NUM; i++)
	    {
	      Write4Blocks (&rgb_buf[0][i][0],
    3c44:	3c080000 	lui	t0,0x0
    3c48:	00008012 	mflo	s0
    3c4c:	25080000 	addiu	t0,t0,0
    3c50:	afa80010 	sw	t0,16(sp)
    3c54:	3c080000 	lui	t0,0x0
    3c58:	25080000 	addiu	t0,t0,0
    3c5c:	afa80014 	sw	t0,20(sp)
    3c60:	3c040000 	lui	a0,0x0
    3c64:	3c050000 	lui	a1,0x0
    3c68:	3c060000 	lui	a2,0x0
    3c6c:	3c070000 	lui	a3,0x0
    3c70:	3c080000 	lui	t0,0x0
    3c74:	25080000 	addiu	t0,t0,0
    3c78:	24840000 	addiu	a0,a0,0
    3c7c:	24a50300 	addiu	a1,a1,768
    3c80:	24c60600 	addiu	a2,a2,1536
    3c84:	24e70900 	addiu	a3,a3,2304
    3c88:	afa20a38 	sw	v0,2616(sp)
    3c8c:	afa30a3c 	sw	v1,2620(sp)
    3c90:	0c000000 	jal	0 <read_byte>
    3c94:	afa80018 	sw	t0,24(sp)
    3c98:	3c080000 	lui	t0,0x0
    3c9c:	25080004 	addiu	t0,t0,4
    3ca0:	afa80010 	sw	t0,16(sp)
    3ca4:	3c080000 	lui	t0,0x0
    3ca8:	25080004 	addiu	t0,t0,4
    3cac:	afa80014 	sw	t0,20(sp)
    3cb0:	3c040000 	lui	a0,0x0
    3cb4:	3c050000 	lui	a1,0x0
    3cb8:	3c060000 	lui	a2,0x0
    3cbc:	3c070000 	lui	a3,0x0
    3cc0:	3c080000 	lui	t0,0x0
    3cc4:	250814be 	addiu	t0,t0,5310
    3cc8:	24840100 	addiu	a0,a0,256
    3ccc:	24a50400 	addiu	a1,a1,1024
    3cd0:	24c60700 	addiu	a2,a2,1792
    3cd4:	24e70a00 	addiu	a3,a3,2560
    3cd8:	0c000000 	jal	0 <read_byte>
    3cdc:	afa80018 	sw	t0,24(sp)
    3ce0:	3c080000 	lui	t0,0x0
    3ce4:	25080008 	addiu	t0,t0,8
    3ce8:	afa80010 	sw	t0,16(sp)
    3cec:	3c080000 	lui	t0,0x0
    3cf0:	25080008 	addiu	t0,t0,8
    3cf4:	afa80014 	sw	t0,20(sp)
    3cf8:	3c040000 	lui	a0,0x0
    3cfc:	3c050000 	lui	a1,0x0
    3d00:	3c060000 	lui	a2,0x0
    3d04:	3c070000 	lui	a3,0x0
    3d08:	3c080000 	lui	t0,0x0
    3d0c:	24840200 	addiu	a0,a0,512
    3d10:	24a50500 	addiu	a1,a1,1280
    3d14:	2508297c 	addiu	t0,t0,10620
    3d18:	24c60800 	addiu	a2,a2,2048
    3d1c:	24e70b00 	addiu	a3,a3,2816
    3d20:	0c000000 	jal	0 <read_byte>
    3d24:	afa80018 	sw	t0,24(sp)
			    &out_data_comp_vpos[i],
			    &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
	    }


	  CurrentMCU += 4;
    3d28:	8fa40a24 	lw	a0,2596(sp)
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    3d2c:	8fa20a38 	lw	v0,2616(sp)
			    &out_data_comp_vpos[i],
			    &out_data_comp_hpos[i], &OutData_comp_buf[i][0]);
	    }


	  CurrentMCU += 4;
    3d30:	24840004 	addiu	a0,a0,4
    3d34:	afa40a24 	sw	a0,2596(sp)
    {
      printf ("Decode 4:1:1 NumMCU = %d\n", p_jinfo_NumMCU);
      /*
       * 4_1_1
       */
      while (CurrentMCU < p_jinfo_NumMCU)
    3d38:	8fa50a24 	lw	a1,2596(sp)
    3d3c:	8f840000 	lw	a0,0(gp)
    3d40:	8fa30a3c 	lw	v1,2620(sp)
    3d44:	00a4202a 	slt	a0,a1,a0
    3d48:	1480fea0 	bnez	a0,37cc <decode_start.clone.3+0x4a8>
    3d4c:	00000000 	sll	zero,zero,0x0
    3d50:	08000dc7 	j	371c <decode_start.clone.3+0x3f8>
    3d54:	00000000 	sll	zero,zero,0x0
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
      rgb_buf[p][1][i] = g;
      rgb_buf[p][2][i] = b;
    3d58:	08000f08 	j	3c20 <decode_start.clone.3+0x8fc>
    3d5c:	00006821 	addu	t5,zero,zero
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
      rgb_buf[p][1][i] = g;
    3d60:	08000f06 	j	3c18 <decode_start.clone.3+0x8f4>
    3d64:	0000c021 	addu	t8,zero,zero
      if (b < 0)
	b = 0;
      else if (b > 255)
	b = 255;

      rgb_buf[p][0][i] = r;
    3d68:	08000f04 	j	3c10 <decode_start.clone.3+0x8ec>
    3d6c:	00002821 	addu	a1,zero,zero

00003d70 <jpeg_init_decompress>:
{
  int tmp;
  /*
   * Get MCU number
   */
  p_jinfo_MCUHeight = (p_jinfo_image_height - 1) / 8 + 1;
    3d70:	87830000 	lh	v1,0(gp)
/*
 * Initialize after reading markers
 */
void
jpeg_init_decompress ()
{
    3d74:	27bdffd0 	addiu	sp,sp,-48
  int tmp;
  /*
   * Get MCU number
   */
  p_jinfo_MCUHeight = (p_jinfo_image_height - 1) / 8 + 1;
    3d78:	2462ffff 	addiu	v0,v1,-1
/*
 * Initialize after reading markers
 */
void
jpeg_init_decompress ()
{
    3d7c:	afbf002c 	sw	ra,44(sp)
    3d80:	afb30028 	sw	s3,40(sp)
    3d84:	afb20024 	sw	s2,36(sp)
    3d88:	afb10020 	sw	s1,32(sp)
  int tmp;
  /*
   * Get MCU number
   */
  p_jinfo_MCUHeight = (p_jinfo_image_height - 1) / 8 + 1;
    3d8c:	04400042 	bltz	v0,3e98 <jpeg_init_decompress+0x128>
    3d90:	afb0001c 	sw	s0,28(sp)
  p_jinfo_MCUWidth = (p_jinfo_image_width - 1) / 8 + 1;
    3d94:	87840000 	lh	a0,0(gp)
{
  int tmp;
  /*
   * Get MCU number
   */
  p_jinfo_MCUHeight = (p_jinfo_image_height - 1) / 8 + 1;
    3d98:	000210c3 	sra	v0,v0,0x3
    3d9c:	24430001 	addiu	v1,v0,1
  p_jinfo_MCUWidth = (p_jinfo_image_width - 1) / 8 + 1;
    3da0:	2482ffff 	addiu	v0,a0,-1
    3da4:	04400043 	bltz	v0,3eb4 <jpeg_init_decompress+0x144>
    3da8:	af830000 	sw	v1,0(gp)
    3dac:	000210c3 	sra	v0,v0,0x3
    3db0:	24420001 	addiu	v0,v0,1
  p_jinfo_NumMCU = p_jinfo_MCUHeight * p_jinfo_MCUWidth;
    3db4:	00430018 	mult	v0,v1

  /*
   * Create Huffman Table for decoding
   */
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[0][0],
    3db8:	3c130000 	lui	s3,0x0
    3dbc:	3c120000 	lui	s2,0x0
    3dc0:	3c110000 	lui	s1,0x0
    3dc4:	26730000 	addiu	s3,s3,0
    3dc8:	26520000 	addiu	s2,s2,0
    3dcc:	26310000 	addiu	s1,s1,0
    3dd0:	8f850000 	lw	a1,0(gp)
    3dd4:	3c100000 	lui	s0,0x0
    3dd8:	02602021 	addu	a0,s3,zero
    3ddc:	02403021 	addu	a2,s2,zero
    3de0:	02203821 	addu	a3,s1,zero
    3de4:	26100000 	addiu	s0,s0,0
  int tmp;
  /*
   * Get MCU number
   */
  p_jinfo_MCUHeight = (p_jinfo_image_height - 1) / 8 + 1;
  p_jinfo_MCUWidth = (p_jinfo_image_width - 1) / 8 + 1;
    3de8:	af820000 	sw	v0,0(gp)
  p_jinfo_NumMCU = p_jinfo_MCUHeight * p_jinfo_MCUWidth;
    3dec:	00001012 	mflo	v0

  /*
   * Create Huffman Table for decoding
   */
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[0][0],
    3df0:	afb00010 	sw	s0,16(sp)
  /*
   * Get MCU number
   */
  p_jinfo_MCUHeight = (p_jinfo_image_height - 1) / 8 + 1;
  p_jinfo_MCUWidth = (p_jinfo_image_width - 1) / 8 + 1;
  p_jinfo_NumMCU = p_jinfo_MCUHeight * p_jinfo_MCUWidth;
    3df4:	af820000 	sw	v0,0(gp)

  /*
   * Create Huffman Table for decoding
   */
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[0][0],
    3df8:	0c000000 	jal	0 <read_byte>
    3dfc:	26100090 	addiu	s0,s0,144
			    p_jinfo_dc_dhuff_tbl_ml[0],
			    &p_jinfo_dc_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[0][0],
			    &p_jinfo_dc_dhuff_tbl_valptr[0][0]);
  p_jinfo_dc_dhuff_tbl_ml[0] = tmp;
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[1][0],
    3e00:	8f850004 	lw	a1,4(gp)
    3e04:	26640090 	addiu	a0,s3,144
    3e08:	26460090 	addiu	a2,s2,144
    3e0c:	26270090 	addiu	a3,s1,144
    3e10:	afb00010 	sw	s0,16(sp)
			    p_jinfo_dc_dhuff_tbl_ml[1],
			    &p_jinfo_dc_dhuff_tbl_maxcode[1][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[1][0],
			    &p_jinfo_dc_dhuff_tbl_valptr[1][0]);
  p_jinfo_dc_dhuff_tbl_ml[1] = tmp;
  tmp = huff_make_dhuff_tb (&p_jinfo_ac_xhuff_tbl_bits[0][0],
    3e14:	3c120000 	lui	s2,0x0
    3e18:	3c110000 	lui	s1,0x0
    3e1c:	3c100000 	lui	s0,0x0
    3e20:	26520000 	addiu	s2,s2,0
    3e24:	26310000 	addiu	s1,s1,0
    3e28:	26100000 	addiu	s0,s0,0
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[0][0],
			    p_jinfo_dc_dhuff_tbl_ml[0],
			    &p_jinfo_dc_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[0][0],
			    &p_jinfo_dc_dhuff_tbl_valptr[0][0]);
  p_jinfo_dc_dhuff_tbl_ml[0] = tmp;
    3e2c:	af820000 	sw	v0,0(gp)
  tmp = huff_make_dhuff_tb (&p_jinfo_dc_xhuff_tbl_bits[1][0],
    3e30:	0c000000 	jal	0 <read_byte>
    3e34:	3c130000 	lui	s3,0x0
			    p_jinfo_dc_dhuff_tbl_ml[1],
			    &p_jinfo_dc_dhuff_tbl_maxcode[1][0],
			    &p_jinfo_dc_dhuff_tbl_mincode[1][0],
			    &p_jinfo_dc_dhuff_tbl_valptr[1][0]);
  p_jinfo_dc_dhuff_tbl_ml[1] = tmp;
  tmp = huff_make_dhuff_tb (&p_jinfo_ac_xhuff_tbl_bits[0][0],
    3e38:	8f850000 	lw	a1,0(gp)
    3e3c:	02402021 	addu	a0,s2,zero
    3e40:	02203021 	addu	a2,s1,zero
    3e44:	02003821 	addu	a3,s0,zero
    3e48:	26730000 	addiu	s3,s3,0
    3e4c:	afb30010 	sw	s3,16(sp)
    3e50:	0c000000 	jal	0 <read_byte>
    3e54:	af820004 	sw	v0,4(gp)
			    p_jinfo_ac_dhuff_tbl_ml[0],
			    &p_jinfo_ac_dhuff_tbl_maxcode[0][0],
			    &p_jinfo_ac_dhuff_tbl_mincode[0][0],
			    &p_jinfo_ac_dhuff_tbl_valptr[0][0]);
  p_jinfo_ac_dhuff_tbl_ml[0] = tmp;
  tmp = huff_make_dhuff_tb (&p_jinfo_ac_xhuff_tbl_bits[1][0],
    3e58:	8f850004 	lw	a1,4(gp)
    3e5c:	26730090 	addiu	s3,s3,144
    3e60:	26440090 	addiu	a0,s2,144
    3e64:	26260090 	addiu	a2,s1,144
    3e68:	26070090 	addiu	a3,s0,144
    3e6c:	afb30010 	sw	s3,16(sp)
    3e70:	0c000000 	jal	0 <read_byte>
    3e74:	af820000 	sw	v0,0(gp)
			    p_jinfo_ac_dhuff_tbl_ml[1],
			    &p_jinfo_ac_dhuff_tbl_maxcode[1][0],
			    &p_jinfo_ac_dhuff_tbl_mincode[1][0],
			    &p_jinfo_ac_dhuff_tbl_valptr[1][0]);
  p_jinfo_ac_dhuff_tbl_ml[1] = tmp;
}
    3e78:	8fbf002c 	lw	ra,44(sp)
    3e7c:	8fb30028 	lw	s3,40(sp)
    3e80:	8fb20024 	lw	s2,36(sp)
    3e84:	8fb10020 	lw	s1,32(sp)
    3e88:	8fb0001c 	lw	s0,28(sp)
  tmp = huff_make_dhuff_tb (&p_jinfo_ac_xhuff_tbl_bits[1][0],
			    p_jinfo_ac_dhuff_tbl_ml[1],
			    &p_jinfo_ac_dhuff_tbl_maxcode[1][0],
			    &p_jinfo_ac_dhuff_tbl_mincode[1][0],
			    &p_jinfo_ac_dhuff_tbl_valptr[1][0]);
  p_jinfo_ac_dhuff_tbl_ml[1] = tmp;
    3e8c:	af820004 	sw	v0,4(gp)
}
    3e90:	03e00008 	jr	ra
    3e94:	27bd0030 	addiu	sp,sp,48
{
  int tmp;
  /*
   * Get MCU number
   */
  p_jinfo_MCUHeight = (p_jinfo_image_height - 1) / 8 + 1;
    3e98:	24620006 	addiu	v0,v1,6
  p_jinfo_MCUWidth = (p_jinfo_image_width - 1) / 8 + 1;
    3e9c:	87840000 	lh	a0,0(gp)
{
  int tmp;
  /*
   * Get MCU number
   */
  p_jinfo_MCUHeight = (p_jinfo_image_height - 1) / 8 + 1;
    3ea0:	000210c3 	sra	v0,v0,0x3
    3ea4:	24430001 	addiu	v1,v0,1
  p_jinfo_MCUWidth = (p_jinfo_image_width - 1) / 8 + 1;
    3ea8:	2482ffff 	addiu	v0,a0,-1
    3eac:	0441ffbf 	bgez	v0,3dac <jpeg_init_decompress+0x3c>
    3eb0:	af830000 	sw	v1,0(gp)
    3eb4:	08000f6b 	j	3dac <jpeg_init_decompress+0x3c>
    3eb8:	24820006 	addiu	v0,a0,6

00003ebc <jpeg_read>:



void
jpeg_read (unsigned char *read_buf)
{
    3ebc:	27bdffe8 	addiu	sp,sp,-24
    3ec0:	afbf0014 	sw	ra,20(sp)

  /*
   * Read markers
   */
  read_markers (read_buf);
    3ec4:	0c000000 	jal	0 <read_byte>
    3ec8:	00000000 	sll	zero,zero,0x0


  /*
   * Initialize the information used for decoding
   */
  jpeg_init_decompress ();
    3ecc:	0c000000 	jal	0 <read_byte>
    3ed0:	00000000 	sll	zero,zero,0x0
   * Start decoding
   */
  decode_start (&OutData_image_width, &OutData_image_height,
		&OutData_comp_vpos[0], &OutData_comp_hpos[0]);

}
    3ed4:	8fbf0014 	lw	ra,20(sp)
  jpeg_init_decompress ();

  /*
   * Start decoding
   */
  decode_start (&OutData_image_width, &OutData_image_height,
    3ed8:	08000cc9 	j	3324 <decode_start.clone.3>
    3edc:	27bd0018 	addiu	sp,sp,24

00003ee0 <jpeg2bmp_main>:
unsigned char JpegFileBuf[JPEG_FILE_SIZE];


int
jpeg2bmp_main ()
{
    3ee0:	27bdffe8 	addiu	sp,sp,-24
    3ee4:	3c050000 	lui	a1,0x0
    3ee8:	3c070000 	lui	a3,0x0
    3eec:	afbf0014 	sw	ra,20(sp)
    3ef0:	00001021 	addu	v0,zero,zero
    3ef4:	24a50000 	addiu	a1,a1,0
    3ef8:	24e70000 	addiu	a3,a3,0
  c = JpegFileBuf;
  for (i = 0; i < JPEGSIZE; i++)
    
    {
        ci = hana_jpg[i];
        *c++ = ci;
    3efc:	24061454 	addiu	a2,zero,5204
 */
unsigned char JpegFileBuf[JPEG_FILE_SIZE];


int
jpeg2bmp_main ()
    3f00:	00e21821 	addu	v1,a3,v0
  c = JpegFileBuf;
  for (i = 0; i < JPEGSIZE; i++)
    
    {
        ci = hana_jpg[i];
        *c++ = ci;
    3f04:	8c640000 	lw	a0,0(v1)
 */
unsigned char JpegFileBuf[JPEG_FILE_SIZE];


int
jpeg2bmp_main ()
    3f08:	00a21821 	addu	v1,a1,v0
  c = JpegFileBuf;
  for (i = 0; i < JPEGSIZE; i++)
    
    {
        ci = hana_jpg[i];
        *c++ = ci;
    3f0c:	24420004 	addiu	v0,v0,4
    3f10:	1446fffb 	bne	v0,a2,3f00 <jpeg2bmp_main+0x20>
    3f14:	ac640000 	sw	a0,0(v1)
    3f18:	2402003f 	addiu	v0,zero,63
    3f1c:	a0a21454 	sb	v0,5204(a1)
    3f20:	2402ffff 	addiu	v0,zero,-1
    3f24:	a0a21455 	sb	v0,5205(a1)
    3f28:	2402ffd9 	addiu	v0,zero,-39
{

  /*
   * Read markers
   */
  read_markers (read_buf);
    3f2c:	0c0002f7 	jal	bdc <read_markers.clone.2>
    3f30:	a0a21456 	sb	v0,5206(a1)


  /*
   * Initialize the information used for decoding
   */
  jpeg_init_decompress ();
    3f34:	0c000000 	jal	0 <read_byte>
    3f38:	00000000 	sll	zero,zero,0x0

  /*
   * Start decoding
   */
  decode_start (&OutData_image_width, &OutData_image_height,
    3f3c:	0c000cc9 	jal	3324 <decode_start.clone.3>
    3f40:	00000000 	sll	zero,zero,0x0
    3f44:	3c0c0000 	lui	t4,0x0
    3f48:	3c0b0000 	lui	t3,0x0
    3f4c:	8f870000 	lw	a3,0(gp)
    }

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    3f50:	00004821 	addu	t1,zero,zero
    3f54:	258c0000 	addiu	t4,t4,0
    3f58:	256b0000 	addiu	t3,t3,0
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
    3f5c:	240814be 	addiu	t0,zero,5310
        *c++ = ci;
    }

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    3f60:	240a0003 	addiu	t2,zero,3
 */
unsigned char JpegFileBuf[JPEG_FILE_SIZE];


int
jpeg2bmp_main ()
    3f64:	00091980 	sll	v1,t1,0x6
    3f68:	00091080 	sll	v0,t1,0x2
    3f6c:	00621023 	subu	v0,v1,v0
    3f70:	00491023 	subu	v0,v0,t1
    3f74:	00021880 	sll	v1,v0,0x2
    3f78:	00621023 	subu	v0,v1,v0
    3f7c:	00021900 	sll	v1,v0,0x4
    3f80:	00621823 	subu	v1,v1,v0
    3f84:	00031840 	sll	v1,v1,0x1
    3f88:	01832021 	addu	a0,t4,v1
    3f8c:	00001021 	addu	v0,zero,zero
    3f90:	01631821 	addu	v1,t3,v1

  for (i = 0; i < RGB_NUM; i++)
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
	{
	  if (OutData_comp_buf[i][j] != hana_bmp[i][j])
    3f94:	90860000 	lbu	a2,0(a0)
    3f98:	90650000 	lbu	a1,0(v1)
    3f9c:	00000000 	sll	zero,zero,0x0
    3fa0:	10c50002 	beq	a2,a1,3fac <jpeg2bmp_main+0xcc>
    3fa4:	24420001 	addiu	v0,v0,1
	    {
	      main_result++;
    3fa8:	24e70001 	addiu	a3,a3,1

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
    3fac:	24840001 	addiu	a0,a0,1
    3fb0:	1448fff8 	bne	v0,t0,3f94 <jpeg2bmp_main+0xb4>
    3fb4:	24630001 	addiu	v1,v1,1
        *c++ = ci;
    }

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    3fb8:	25290001 	addiu	t1,t1,1
    3fbc:	152affea 	bne	t1,t2,3f68 <jpeg2bmp_main+0x88>
    3fc0:	00091980 	sll	v1,t1,0x6
	    {
	      main_result++;
	    }
	}
    }
  if (OutData_image_width != out_width)
    3fc4:	8f820000 	lw	v0,0(gp)
    3fc8:	8f830000 	lw	v1,0(gp)
    3fcc:	00000000 	sll	zero,zero,0x0
    3fd0:	10620003 	beq	v1,v0,3fe0 <jpeg2bmp_main+0x100>
    3fd4:	af870000 	sw	a3,0(gp)
    {
      main_result++;
    3fd8:	24e70001 	addiu	a3,a3,1
    3fdc:	af870000 	sw	a3,0(gp)
    }
  if (OutData_image_height != out_length)
    3fe0:	8f820000 	lw	v0,0(gp)
    3fe4:	8f830000 	lw	v1,0(gp)
    3fe8:	00000000 	sll	zero,zero,0x0
    3fec:	10620005 	beq	v1,v0,4004 <jpeg2bmp_main+0x124>
    3ff0:	00000000 	sll	zero,zero,0x0
    {
      main_result++;
    3ff4:	8f820000 	lw	v0,0(gp)
    3ff8:	00000000 	sll	zero,zero,0x0
    3ffc:	24420001 	addiu	v0,v0,1
    4000:	af820000 	sw	v0,0(gp)
    }
  return (0);
}
    4004:	8fbf0014 	lw	ra,20(sp)
    4008:	00001021 	addu	v0,zero,zero
    400c:	03e00008 	jr	ra
    4010:	27bd0018 	addiu	sp,sp,24

00004014 <main>:
#include "jfif_read.c"
#include "jpeg2bmp.c"

int
main ()
{
    4014:	27bdffe8 	addiu	sp,sp,-24
    4018:	3c050000 	lui	a1,0x0
    401c:	3c070000 	lui	a3,0x0
    4020:	afbf0014 	sw	ra,20(sp)
  main_result = 0;
    4024:	af800000 	sw	zero,0(gp)
    4028:	00001021 	addu	v0,zero,zero
    402c:	24a50000 	addiu	a1,a1,0
    4030:	24e70000 	addiu	a3,a3,0
  c = JpegFileBuf;
  for (i = 0; i < JPEGSIZE; i++)
    
    {
        ci = hana_jpg[i];
        *c++ = ci;
    4034:	24061454 	addiu	a2,zero,5204
#include "huffman.c"
#include "jfif_read.c"
#include "jpeg2bmp.c"

int
main ()
    4038:	00e21821 	addu	v1,a3,v0
    403c:	8c640000 	lw	a0,0(v1)
    4040:	00a21821 	addu	v1,a1,v0
    4044:	24420004 	addiu	v0,v0,4
    4048:	1446fffb 	bne	v0,a2,4038 <main+0x24>
    404c:	ac640000 	sw	a0,0(v1)
    4050:	2402003f 	addiu	v0,zero,63
    4054:	a0a21454 	sb	v0,5204(a1)
    4058:	2402ffff 	addiu	v0,zero,-1
    405c:	a0a21455 	sb	v0,5205(a1)
    4060:	2402ffd9 	addiu	v0,zero,-39
{

  /*
   * Read markers
   */
  read_markers (read_buf);
    4064:	0c0002f7 	jal	bdc <read_markers.clone.2>
    4068:	a0a21456 	sb	v0,5206(a1)


  /*
   * Initialize the information used for decoding
   */
  jpeg_init_decompress ();
    406c:	0c000000 	jal	0 <read_byte>
    4070:	00000000 	sll	zero,zero,0x0

  /*
   * Start decoding
   */
  decode_start (&OutData_image_width, &OutData_image_height,
    4074:	0c000cc9 	jal	3324 <decode_start.clone.3>
    4078:	00000000 	sll	zero,zero,0x0
    407c:	8f850000 	lw	a1,0(gp)
    4080:	3c0d0000 	lui	t5,0x0
    4084:	3c0c0000 	lui	t4,0x0
    4088:	00a04021 	addu	t0,a1,zero
    }

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    408c:	00005021 	addu	t2,zero,zero
    4090:	25ad0000 	addiu	t5,t5,0
    4094:	258c0000 	addiu	t4,t4,0
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
    4098:	240914be 	addiu	t1,zero,5310
        *c++ = ci;
    }

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    409c:	240b0003 	addiu	t3,zero,3
    40a0:	000a1980 	sll	v1,t2,0x6
    40a4:	000a1080 	sll	v0,t2,0x2
    40a8:	00621023 	subu	v0,v1,v0
    40ac:	004a1023 	subu	v0,v0,t2
    40b0:	00021880 	sll	v1,v0,0x2
    40b4:	00621023 	subu	v0,v1,v0
    40b8:	00021900 	sll	v1,v0,0x4
    40bc:	00621823 	subu	v1,v1,v0
    40c0:	00031840 	sll	v1,v1,0x1
    40c4:	01a32021 	addu	a0,t5,v1
    40c8:	00001021 	addu	v0,zero,zero
    40cc:	0800103a 	j	40e8 <main+0xd4>
    40d0:	01831821 	addu	v1,t4,v1
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
    40d4:	24420001 	addiu	v0,v0,1
	{
	  if (OutData_comp_buf[i][j] != hana_bmp[i][j])
	    {
	      main_result++;
    40d8:	00a04021 	addu	t0,a1,zero

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
    40dc:	24840001 	addiu	a0,a0,1
    40e0:	1049000b 	beq	v0,t1,4110 <main+0xfc>
    40e4:	24630001 	addiu	v1,v1,1
	{
	  if (OutData_comp_buf[i][j] != hana_bmp[i][j])
    40e8:	90870000 	lbu	a3,0(a0)
    40ec:	90660000 	lbu	a2,0(v1)
    40f0:	00000000 	sll	zero,zero,0x0
    40f4:	14e6fff7 	bne	a3,a2,40d4 <main+0xc0>
    40f8:	24a50001 	addiu	a1,a1,1

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
    40fc:	24420001 	addiu	v0,v0,1
	{
	  if (OutData_comp_buf[i][j] != hana_bmp[i][j])
    4100:	01002821 	addu	a1,t0,zero

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    {
      for (j = 0; j < BMP_OUT_SIZE; j++)
    4104:	24840001 	addiu	a0,a0,1
    4108:	1449fff7 	bne	v0,t1,40e8 <main+0xd4>
    410c:	24630001 	addiu	v1,v1,1
        *c++ = ci;
    }

  jpeg_read (JpegFileBuf);

  for (i = 0; i < RGB_NUM; i++)
    4110:	254a0001 	addiu	t2,t2,1
    4114:	154bffe3 	bne	t2,t3,40a4 <main+0x90>
    4118:	000a1980 	sll	v1,t2,0x6
	    {
	      main_result++;
	    }
	}
    }
  if (OutData_image_width != out_width)
    411c:	8f820000 	lw	v0,0(gp)
    4120:	8f830000 	lw	v1,0(gp)
    4124:	00000000 	sll	zero,zero,0x0
    4128:	10620003 	beq	v1,v0,4138 <main+0x124>
    412c:	af880000 	sw	t0,0(gp)
    {
      main_result++;
    4130:	25050001 	addiu	a1,t0,1
    4134:	af850000 	sw	a1,0(gp)
    }
  if (OutData_image_height != out_length)
    4138:	8f820000 	lw	v0,0(gp)
    413c:	8f830000 	lw	v1,0(gp)
    4140:	00000000 	sll	zero,zero,0x0
    4144:	10620003 	beq	v1,v0,4154 <main+0x140>
    4148:	00000000 	sll	zero,zero,0x0
    {
      main_result++;
    414c:	24a50001 	addiu	a1,a1,1
    4150:	af850000 	sw	a1,0(gp)
{
  main_result = 0;
  jpeg2bmp_main ();

  printf ("%d\n", main_result);
    4154:	3c040000 	lui	a0,0x0
    4158:	0c000000 	jal	0 <read_byte>
    415c:	24840000 	addiu	a0,a0,0

  return main_result;
}
    4160:	8fbf0014 	lw	ra,20(sp)
    4164:	8f820000 	lw	v0,0(gp)
    4168:	03e00008 	jr	ra
    416c:	27bd0018 	addiu	sp,sp,24

Disassembly of section .rodata:

00000000 <hana_jpg-0xe0>:
       0:	00000d6c 	0xd6c
       4:	00000cfc 	0xcfc
       8:	00000cfc 	0xcfc
       c:	00000cfc 	0xcfc
      10:	00000d80 	sll	at,zero,0x16
      14:	00000cfc 	0xcfc
      18:	00000cfc 	0xcfc
      1c:	00000cfc 	0xcfc
      20:	00000cfc 	0xcfc
      24:	00000cfc 	0xcfc
      28:	00000cfc 	0xcfc
      2c:	00000cfc 	0xcfc
      30:	00000cfc 	0xcfc
      34:	00000cfc 	0xcfc
      38:	00000cfc 	0xcfc
      3c:	00000cfc 	0xcfc
      40:	00000cfc 	0xcfc
      44:	00000cfc 	0xcfc
      48:	00000cfc 	0xcfc
      4c:	00000cfc 	0xcfc
      50:	00000cfc 	0xcfc
      54:	00000cfc 	0xcfc
      58:	00000cfc 	0xcfc
      5c:	00000cfc 	0xcfc
      60:	00000cf8 	0xcf8
      64:	00000d30 	0xd30
      68:	00000d08 	0xd08
      6c:	00000d58 	0xd58
      70:	00000f3c 	0xf3c
      74:	00000ecc 	syscall	0x3b
      78:	00000ecc 	syscall	0x3b
      7c:	00000ecc 	syscall	0x3b
      80:	00000f50 	0xf50
      84:	00000ecc 	syscall	0x3b
      88:	00000ecc 	syscall	0x3b
      8c:	00000ecc 	syscall	0x3b
      90:	00000ecc 	syscall	0x3b
      94:	00000ecc 	syscall	0x3b
      98:	00000ecc 	syscall	0x3b
      9c:	00000ecc 	syscall	0x3b
      a0:	00000ecc 	syscall	0x3b
      a4:	00000ecc 	syscall	0x3b
      a8:	00000ecc 	syscall	0x3b
      ac:	00000ecc 	syscall	0x3b
      b0:	00000ecc 	syscall	0x3b
      b4:	00000ecc 	syscall	0x3b
      b8:	00000ecc 	syscall	0x3b
      bc:	00000ecc 	syscall	0x3b
      c0:	00000ecc 	syscall	0x3b
      c4:	00000ecc 	syscall	0x3b
      c8:	00000ecc 	syscall	0x3b
      cc:	00000ecc 	syscall	0x3b
      d0:	00000ec8 	0xec8
      d4:	00000f00 	sll	at,zero,0x1c
      d8:	00000ed8 	0xed8
      dc:	00000f28 	0xf28

000000e0 <hana_jpg>:
      e0:	ffd8ffe0 	0xffd8ffe0
      e4:	00104a46 	0x104a46
      e8:	49460001 	0x49460001
      ec:	01000001 	0x1000001
      f0:	00010000 	sll	zero,at,0x0
      f4:	ffdb0043 	0xffdb0043
      f8:	00030202 	srl	zero,v1,0x8
      fc:	02020203 	0x2020203
     100:	02020203 	0x2020203
     104:	03030304 	0x3030304
     108:	06040404 	0x6040404
     10c:	04040806 	0x4040806
     110:	06050609 	0x6050609
     114:	080a0a09 	j	282824 <extend_mask+0x27d0f8>
     118:	0809090a 	j	242428 <extend_mask+0x23ccfc>
     11c:	0c0f0c0a 	jal	3c3028 <extend_mask+0x3bd8fc>
     120:	0b0e0b09 	j	c382c24 <extend_mask+0xc37d4f8>
     124:	090d110d 	j	4344434 <extend_mask+0x433ed08>
     128:	0e0f1010 	jal	83c4040 <extend_mask+0x83be914>
     12c:	11100a0c 	beq	t0,s0,2960 <hana_bmp+0x1428>
     130:	12131210 	beq	s0,s3,4974 <hana_bmp+0x343c>
     134:	130f1010 	beq	t8,t7,4178 <hana_bmp+0x2c40>
     138:	10ffdb00 	beq	a3,ra,ffff6d3c <extend_mask+0xffff1610>
     13c:	43010303 	c0	0x1010303
     140:	03040304 	0x3040304
     144:	08040408 	j	101020 <extend_mask+0xfb8f4>
     148:	100b090b 	beq	zero,t3,2578 <hana_bmp+0x1040>
     14c:	10101010 	beq	zero,s0,4190 <hana_bmp+0x2c58>
     150:	10101010 	beq	zero,s0,4194 <hana_bmp+0x2c5c>
     154:	10101010 	beq	zero,s0,4198 <hana_bmp+0x2c60>
     158:	10101010 	beq	zero,s0,419c <hana_bmp+0x2c64>
     15c:	10101010 	beq	zero,s0,41a0 <hana_bmp+0x2c68>
     160:	10101010 	beq	zero,s0,41a4 <hana_bmp+0x2c6c>
     164:	10101010 	beq	zero,s0,41a8 <hana_bmp+0x2c70>
     168:	10101010 	beq	zero,s0,41ac <hana_bmp+0x2c74>
     16c:	10101010 	beq	zero,s0,41b0 <hana_bmp+0x2c78>
     170:	10101010 	beq	zero,s0,41b4 <hana_bmp+0x2c7c>
     174:	10101010 	beq	zero,s0,41b8 <hana_bmp+0x2c80>
     178:	10101010 	beq	zero,s0,41bc <hana_bmp+0x2c84>
     17c:	1010ffc0 	beq	zero,s0,80 <hana_jpg-0x60>
     180:	00110800 	sll	at,s1,0x0
     184:	3b005a03 	xori	zero,t8,0x5a03
     188:	01220002 	0x1220002
     18c:	11010311 	beq	t0,at,dd4 <hana_jpg+0xcf4>
     190:	01ffc400 	0x1ffc400
     194:	1f000001 	bgtz	t8,19c <hana_jpg+0xbc>
     198:	05010101 	bgez	t0,5a0 <hana_jpg+0x4c0>
     19c:	01010100 	0x1010100
     1a0:	00000000 	sll	zero,zero,0x0
     1a4:	00000001 	0x1
     1a8:	02030405 	0x2030405
     1ac:	06070809 	0x6070809
     1b0:	0a0bffc4 	j	82fff10 <extend_mask+0x82fa7e4>
     1b4:	00b51000 	0xb51000
     1b8:	02010303 	0x2010303
     1bc:	02040305 	0x2040305
     1c0:	05040400 	0x5040400
     1c4:	00017d01 	0x17d01
     1c8:	02030004 	sllv	zero,v1,s0
     1cc:	11051221 	beq	t0,a1,4a54 <hana_bmp+0x351c>
     1d0:	31410613 	andi	at,t2,0x613
     1d4:	51610722 	0x51610722
     1d8:	71143281 	0x71143281
     1dc:	91a10823 	lbu	at,2083(t5)
     1e0:	42b1c115 	c0	0xb1c115
     1e4:	52d1f024 	0x52d1f024
     1e8:	33627282 	andi	v0,k1,0x7282
     1ec:	090a1617 	j	428585c <extend_mask+0x4280130>
     1f0:	18191a25 	0x18191a25
     1f4:	26272829 	addiu	a3,s1,10281
     1f8:	2a343536 	slti	s4,s1,13622
     1fc:	3738393a 	ori	t8,t9,0x393a
     200:	43444546 	c0	0x1444546
     204:	4748494a 	c1	0x148494a
     208:	53545556 	0x53545556
     20c:	5758595a 	0x5758595a
     210:	63646566 	0x63646566
     214:	6768696a 	0x6768696a
     218:	73747576 	0x73747576
     21c:	7778797a 	jalx	de1e5e8 <extend_mask+0xde18ebc>
     220:	83848586 	lb	a0,-31354(gp)
     224:	8788898a 	lh	t0,-30326(gp)
     228:	92939495 	lbu	s3,-27499(s4)
     22c:	96979899 	lhu	s7,-26471(s4)
     230:	9aa2a3a4 	lwr	v0,-23644(s5)
     234:	a5a6a7a8 	sh	a2,-22616(t5)
     238:	a9aab2b3 	swl	t2,-19789(t5)
     23c:	b4b5b6b7 	0xb4b5b6b7
     240:	b8b9bac2 	swr	t9,-17726(a1)
     244:	c3c4c5c6 	lwc0	$4,-14906(s8)
     248:	c7c8c9ca 	lwc1	$f8,-13878(s8)
     24c:	d2d3d4d5 	0xd2d3d4d5
     250:	d6d7d8d9 	0xd6d7d8d9
     254:	dae1e2e3 	0xdae1e2e3
     258:	e4e5e6e7 	swc1	$f5,-6425(a3)
     25c:	e8e9eaf1 	swc2	$9,-5391(a3)
     260:	f2f3f4f5 	0xf2f3f4f5
     264:	f6f7f8f9 	0xf6f7f8f9
     268:	faffc400 	0xfaffc400
     26c:	1f010003 	0x1f010003
     270:	01010101 	0x1010101
     274:	01010101 	0x1010101
     278:	01000000 	0x1000000
     27c:	00000001 	0x1
     280:	02030405 	0x2030405
     284:	06070809 	0x6070809
     288:	0a0bffc4 	j	82fff10 <extend_mask+0x82fa7e4>
     28c:	00b51100 	0xb51100
     290:	02010204 	0x2010204
     294:	04030407 	0x4030407
     298:	05040400 	0x5040400
     29c:	01027700 	0x1027700
     2a0:	01020311 	0x1020311
     2a4:	04052131 	0x4052131
     2a8:	06124151 	0x6124151
     2ac:	07617113 	bgez	k1,1c6fc <extend_mask+0x16fd0>
     2b0:	22328108 	addi	s2,s1,-32504
     2b4:	144291a1 	bne	v0,v0,fffe493c <extend_mask+0xfffdf210>
     2b8:	b1c10923 	0xb1c10923
     2bc:	3352f015 	andi	s2,k0,0xf015
     2c0:	6272d10a 	0x6272d10a
     2c4:	162434e1 	bne	s1,a0,d64c <extend_mask+0x7f20>
     2c8:	25f11718 	addiu	s1,t7,5912
     2cc:	191a2627 	0x191a2627
     2d0:	28292a35 	slti	t1,at,10805
     2d4:	36373839 	ori	s7,s1,0x3839
     2d8:	3a434445 	xori	v1,s2,0x4445
     2dc:	46474849 	c1	0x474849
     2e0:	4a535455 	c2	0x535455
     2e4:	56575859 	0x56575859
     2e8:	5a636465 	0x5a636465
     2ec:	66676869 	0x66676869
     2f0:	6a737475 	0x6a737475
     2f4:	76777879 	jalx	9dde1e4 <extend_mask+0x9dd8ab8>
     2f8:	7a828384 	0x7a828384
     2fc:	85868788 	lh	a2,-30840(t4)
     300:	898a9293 	lwl	t2,-28013(t4)
     304:	94959697 	lhu	s5,-26985(a0)
     308:	98999aa2 	lwr	t9,-25950(a0)
     30c:	a3a4a5a6 	sb	a0,-23130(sp)
     310:	a7a8a9aa 	sh	t0,-22102(sp)
     314:	b2b3b4b5 	0xb2b3b4b5
     318:	b6b7b8b9 	0xb6b7b8b9
     31c:	bac2c3c4 	swr	v0,-15420(s6)
     320:	c5c6c7c8 	lwc1	$f6,-14392(t6)
     324:	c9cad2d3 	lwc2	$10,-11565(t6)
     328:	d4d5d6d7 	0xd4d5d6d7
     32c:	d8d9dae2 	0xd8d9dae2
     330:	e3e4e5e6 	swc0	$4,-6682(ra)
     334:	e7e8e9ea 	swc1	$f8,-5654(ra)
     338:	f2f3f4f5 	0xf2f3f4f5
     33c:	f6f7f8f9 	0xf6f7f8f9
     340:	faffda00 	0xfaffda00
     344:	0c030100 	jal	c0400 <extend_mask+0xbacd4>
     348:	02110311 	0x2110311
     34c:	003f00f5 	0x3f00f5
     350:	af005aea 	sw	zero,23274(t8)
     354:	17b3af8a 	bne	sp,s3,fffec180 <extend_mask+0xfffe6a54>
     358:	3c4f31f1 	0x3c4f31f1
     35c:	a47a9bcf 	sh	k0,-25649(v1)
     360:	a9e9be22 	swl	t1,-16862(t7)
     364:	b067167a 	0xb067167a
     368:	6c56f12a 	0x6c56f12a
     36c:	5bdaac0c 	0x5bdaac0c
     370:	492cc7cc 	0x492cc7cc
     374:	26401964 	addiu	zero,s2,6500
     378:	2c78e30b 	sltiu	t8,v1,-7413
     37c:	c0e8ba37 	lwc0	$8,-17865(a3)
     380:	ed3ba34d 	swc3	$27,-23731(t1)
     384:	e34d3b5b 	swc0	$13,15195(k0)
     388:	f17f8535 	0xf17f8535
     38c:	4d06d2d6 	0x4d06d2d6
     390:	e2f63bb8 	swc0	$22,15288(s7)
     394:	44f0dd58 	0x44f0dd58
     398:	4b720488 	c2	0x1720488
     39c:	33905628 	andi	s0,gp,0x5628
     3a0:	903c982c 	lbu	gp,-26580(at)
     3a4:	55be51ec 	0x55be51ec
     3a8:	bf2a7833 	0xbf2a7833
     3ac:	f68bf10f 	0xf68bf10f
     3b0:	c25f886d 	lwc0	$31,-30611(s2)
     3b4:	a445acea 	sh	a1,-21270(v0)
     3b8:	67c2d1de 	0x67c2d1de
     3bc:	2c71dac3 	sltiu	s1,v1,-9533
     3c0:	759823b6 	jalx	6608ed8 <extend_mask+0x66037ac>
     3c4:	918c8c21 	lbu	t4,-29663(t4)
     3c8:	8db70443 	lw	s7,1091(t5)
     3cc:	bf202000 	0xbf202000
     3d0:	02703a57 	0x2703a57
     3d4:	b0f817f6 	0xb0f817f6
     3d8:	c6f0c0f1 	lwc1	$f16,-16143(s7)
     3dc:	61f14788 	0x61f14788
     3e0:	fc312c1a 	0xfc312c1a
     3e4:	bf8eae23 	0xbf8eae23
     3e8:	b6bad512 	0xb6bad512
     3ec:	ff00cbb6 	0xff00cbb6
     3f0:	d274f58e 	0xd274f58e
     3f4:	3b68a472 	xori	t0,k1,0xa472
     3f8:	dcc804b0 	0xdcc804b0
     3fc:	b3485940 	0xb3485940
     400:	0ac48ea5 	j	b123a94 <extend_mask+0xb11e368>
     404:	1fb70d8e 	0x1fb70d8e
     408:	a5cf1929 	sh	t7,6441(t6)
     40c:	6b369bbe 	0x6b369bbe
     410:	9a35b79e 	lwr	s5,-18530(s1)
     414:	bdfef317 	0xbdfef317
     418:	24d2e87d 	addiu	s2,a2,-6019
     41c:	0ba96a16 	j	ea5a858 <extend_mask+0xea5512c>
     420:	1e35f818 	0x1e35f818
     424:	26f14e81 	addiu	s1,s7,20097
     428:	a478964d 	sh	t8,-27059(v1)
     42c:	46da3be9 	c1	0xda3be9
     430:	2d74eb69 	sltiu	s4,t3,-5271
     434:	efed750b 	swc3	$13,29963(ra)
     438:	79445baf 	0x79445baf
     43c:	e38a758e 	swc0	$10,30094(gp)
     440:	48900dd3 	0x48900dd3
     444:	18932c81 	0x18932c81
     448:	4152e181 	0x4152e181
     44c:	3f28f893 	0x3f28f893
     450:	f661f0ab 	0xf661f0ab
     454:	93a6e8cf 	lbu	a2,-5937(sp)
     458:	ac4b7f73 	sw	t3,32627(v0)
     45c:	316b3bab 	andi	t3,t3,0x3bab
     460:	0b792f74 	j	de4bdd0 <extend_mask+0xde466a4>
     464:	bba8e55d 	swr	t0,-6819(sp)
     468:	e9115c97 	swc2	$17,23703(t0)
     46c:	b7751f2e 	0xb7751f2e
     470:	72c1801d 	0x72c1801d
     474:	49c0faab 	0x49c0faab
     478:	c59e0aba 	lwc1	$f30,2746(t4)
     47c:	d7bec91b 	0xd7bec91b
     480:	f8aad6ee 	0xf8aad6ee
     484:	41637535 	0x41637535
     488:	be95676b 	0xbe95676b
     48c:	1dc59493 	0x1dc59493
     490:	88d53305 	lwl	s5,13061(a2)
     494:	c7ddb73c 	lwc1	$f29,-18628(s8)
     498:	432292e1 	c0	0x12292e1
     49c:	88322f28 	lwl	s2,12072(at)
     4a0:	5ebc27e1 	0x5ebc27e1
     4a4:	87c54f8c 	lh	a1,20364(s8)
     4a8:	b07c4782 	0xb07c4782
     4ac:	d3c46356 	0xd3c46356
     4b0:	9f45b469 	0x9f45b469
     4b4:	2d66d2ac 	sltiu	a2,t3,-11604
     4b8:	6d125b95 	0x6d125b95
     4bc:	7384866d 	0x7384866d
     4c0:	ebf2ac46 	swc2	$18,-21434(ra)
     4c4:	56601d9f 	0x56601d9f
     4c8:	0e558f40 	jal	9563d00 <extend_mask+0x955e5d4>
     4cc:	71eaca18 	0x71eaca18
     4d0:	5a8b92b2 	0x5a8b92b2
     4d4:	4d6cb4f4 	0x4d6cb4f4
     4d8:	d2fd1dff 	0xd2fd1dff
     4dc:	0022bcd9 	0x22bcd9
     4e0:	f34fc2cd 	0xf34fc2cd
     4e4:	43c71f03 	c0	0x1c71f03
     4e8:	be25e95e 	0xbe25e95e
     4ec:	2b83457d 	slti	v1,gp,17789
     4f0:	2843a8bf 	slti	v1,v0,-22337
     4f4:	87ef6eae 	lh	t7,28334(ra)
     4f8:	ad9fecf1 	sw	ra,-4879(t4)
     4fc:	c9248ab2 	lwc2	$4,-30030(t1)
     500:	c5b98603 	lwc1	$f25,-31229(t5)
     504:	aaec6f50 	swl	t4,28496(s7)
     508:	3b57d61f 	xori	s7,k0,0xd61f
     50c:	b5642b60 	0xb5642b60
     510:	9a459788 	lwr	a1,-26744(s2)
     514:	fc09a09b 	0xfc09a09b
     518:	5d50c5a8 	0x5d50c5a8
     51c:	b6a5169e 	0xb6a5169e
     520:	0cdf6852 	jal	37da148 <extend_mask+0x37d4a1c>
     524:	4342d2e0 	c0	0x142d2e0
     528:	61f20120 	0x61f20120
     52c:	9e476ee3 	0x9e476ee3
     530:	63e16fc3 	0x63e16fc3
     534:	2f097c45 	sltiu	t1,t8,31813
     538:	b6f12f8a 	0xb6f12f8a
     53c:	7c753ebf 	0x7c753ebf
     540:	6ed67e36 	0x6ed67e36
     544:	d7e6b885 	0xd7e6b885
     548:	54ba3169 	0x54ba3169
     54c:	96239419 	lhu	v1,-27623(s1)
     550:	8ddc2864 	lw	gp,10340(t6)
     554:	257904b1 	addiu	t9,t3,1201
     558:	071c8eb7 	0x71c8eb7
     55c:	c3fe285d 	lwc0	$30,10333(ra)
     560:	416d3e0a 	0x416d3e0a
     564:	7c4ab5d4 	0x7c4ab5d4
     568:	b5d3a9d9 	0xb5d3a9d9
     56c:	dfedd42e 	0xdfedd42e
     570:	eda1316a 	swc3	$1,12650(t5)
     574:	91c5b544 	lbu	a1,-19132(t6)
     578:	de646020 	0xde646020
     57c:	66591002 	0x66591002
     580:	83767693 	lb	s6,30355(k1)
     584:	8eb5e752 	lw	s5,-6318(s5)
     588:	c0caae0e 	lwc0	$10,-20978(a2)
     58c:	586a53b7 	0x586a53b7
     590:	3aded7b5 	xori	s8,s6,0xd7b5
     594:	fa7cccb5 	0xfa7cccb5
     598:	944f843c 	lhu	t7,-31684(v0)
     59c:	4906b3ac 	0x4906b3ac
     5a0:	477dab5c 	c1	0x17dab5c
     5a4:	daac9692 	0xdaac9692
     5a8:	3036a817 	andi	s6,at,0xa817
     5ac:	e4b7801c 	swc1	$f23,-32740(a1)
     5b0:	023d73ec 	0x23d73ec
     5b4:	3bf1c569 	xori	s1,ra,0xc569
     5b8:	7c21f807 	0x7c21f807
     5bc:	e2af8e1a 	swc0	$15,-29158(s5)
     5c0:	f3be9dac 	0xf3be9dac
     5c4:	dbdac3a4 	0xdbdac3a4
     5c8:	5f5aa6a1 	0x5f5aa6a1
     5cc:	6e083711 	0x6e083711
     5d0:	d9499fdf 	0xd9499fdf
     5d4:	4487873b 	0x4487873b
     5d8:	94a6dec4 	lhu	a2,-8508(a1)
     5dc:	e79c60fd 	swc1	$f28,24829(gp)
     5e0:	11f113e0 	beq	t7,s1,5564 <zigzag_index+0x38>
     5e4:	9f823c2f 	0x9f823c2f
     5e8:	e1f7f057 	swc0	$23,-4009(t7)
     5ec:	876dae13 	lh	t5,-20973(k1)
     5f0:	59f0edbc 	0x59f0edbc
     5f4:	7ac5adc5 	0x7ac5adc5
     5f8:	c995ee1b 	lwc2	$21,-4581(t4)
     5fc:	4f09fbd5 	c3	0x109fbd5
     600:	b8919bcb 	swr	s1,-25653(a0)
     604:	7e598611 	0x7e598611
     608:	72180200 	0x72180200
     60c:	c1af09f8 	lwc0	$15,2552(t5)
     610:	7de16f88 	0x7de16f88
     614:	569e3b8f 	0x569e3b8f
     618:	e20fc22d 	swc0	$15,-15827(s0)
     61c:	404b3c12 	0x404b3c12
     620:	adacd029 	sw	t4,-12247(t5)
     624:	3e4bdc05 	0x3e4bdc05
     628:	12240541 	beq	s1,a0,1b30 <hana_bmp+0x5f8>
     62c:	076b0e41 	0x76b0e41
     630:	cf5e879c 	lwc3	$30,-30820(k0)
     634:	0f030f95 	jal	c0c3e54 <extend_mask+0xc0be728>
     638:	d5c162a1 	0xd5c162a1
     63c:	4eb2524d 	c3	0xb2524d
     640:	7476fcec 	jalx	1dbf3b0 <extend_mask+0x1db9c84>
     644:	f4eaec34 	0xf4eaec34
     648:	ef2d74b1 	swc3	$13,29873(t9)
     64c:	cefc6df8 	lwc3	$28,28152(s7)
     650:	0bf113e1 	j	fc44f84 <extend_mask+0xfc3f858>
     654:	7f89b54b 	0x7f89b54b
     658:	7bab35b9 	0x7bab35b9
     65c:	d222bc5b 	0xd222bc5b
     660:	7d3eea58 	0x7d3eea58
     664:	d6296f22 	0xd6296f22
     668:	c2956d99 	lwc0	$21,28057(s4)
     66c:	e0e0953d 	swc0	$0,-27331(a3)
     670:	065323ae 	0x65323ae
     674:	2b99f177 	slti	t9,gp,-3721
     678:	81679b5b 	lb	a3,-25765(t3)
     67c:	82e6c34d 	lb	a2,-15539(s7)
     680:	9155ec95 	lbu	s5,-4971(t2)
     684:	b705c046 	0xb705c046
     688:	f9bafe95 	0xf9bafe95
     68c:	ec3f173e 	swc3	$31,5950(at)
     690:	3ef8ebe2 	0x3ef8ebe2
     694:	b78a756f 	0xb78a756f
     698:	02f8db51 	0x2f8db51
     69c:	b7d16f6d 	0xb7d16f6d
     6a0:	8adbc36b 	lwl	k1,-15509(s6)
     6a4:	0c2ab1f9 	jal	aac7e4 <extend_mask+0xaa70b8>
     6a8:	e8a0ed67 	swc2	$0,-4761(a1)
     6ac:	7064ce7d 	0x7064ce7d
     6b0:	ff00a8a6 	0xff00a8a6
     6b4:	7c2eb6f1 	0x7c2eb6f1
     6b8:	ceb1e17b 	lwc3	$17,-7813(s5)
     6bc:	cb1f16e8 	lwc2	$31,5864(t8)
     6c0:	b3330864 	0xb3330864
     6c4:	fb2dd25b 	0xfb2dd25b
     6c8:	b3297418 	0xb3297418
     6cc:	20b018ef 	addi	s0,a1,6383
     6d0:	eb5e6673 	swc2	$30,26227(k0)
     6d4:	5650c53f 	0x5650c53f
     6d8:	aba7eee8 	swl	a3,-4376(sp)
     6dc:	d3f3fcd7 	0xd3f3fcd7
     6e0:	99a269e8 	lwr	v0,27112(t5)
     6e4:	d9f3769b 	0xd9f3769b
     6e8:	6da868b7 	0x6da868b7
     6ec:	d1dd6a9a 	0xd1dd6a9a
     6f0:	44b32433 	0x44b32433
     6f4:	6e90943b 	0x6e90943b
     6f8:	5b19f5ea 	0x5b19f5ea
     6fc:	2baa7f11 	slti	t2,sp,32529
     700:	f8765769 	0xf8765769
     704:	1745da1c 	bne	k0,a1,ffff6f78 <extend_mask+0xffff184c>
     708:	96036af0 	lhu	v1,27376(s0)
     70c:	0fe3516a 	jal	f8d45a8 <extend_mask+0xf8cee7c>
     710:	ba378c5b 	swr	s7,-29605(s1)
     714:	75f5d5b5 	jalx	7d756d4 <extend_mask+0x7d6ffa8>
     718:	cbda292c 	lwc2	$26,10540(s8)
     71c:	e23c1007 	swc0	$28,4103(s1)
     720:	519039ee 	0x519039ee
     724:	3fad720f 	0x3fad720f
     728:	1de17629 	0x1de17629
     72c:	6d31524e 	0x6d31524e
     730:	38238aba 	xori	v1,at,0x8aba
     734:	78876be8 	0x78876be8
     738:	5f3ba7a2 	0x5f3ba7a2
     73c:	47affc24 	c1	0x1affc24
     740:	f875178e 	0xf875178e
     744:	6eaf6ff5 	0x6eaf6ff5
     748:	dd5b4b83 	0xdd5b4b83
     74c:	4fb3b8d2 	c3	0x1b3b8d2
     750:	ac5e39e4 	sw	s8,14820(v0)
     754:	586f248a 	0x586f248a
     758:	e2ee1844 	swc0	$14,6212(s7)
     75c:	d6cae31b 	0xd6cae31b
     760:	1158a315 	beq	t2,t8,fffe93b8 <extend_mask+0xfffe3c8c>
     764:	63b0b47d 	0x63b0b47d
     768:	b19f4cf8 	0xb19f4cf8
     76c:	a1fb3f4d 	sb	k1,16205(t7)
     770:	f0efc156 	0xf0efc156
     774:	97fac689 	lhu	k0,-14711(ra)
     778:	f6bd1353 	0xf6bd1353
     77c:	b33fd8ba 	0xb33fd8ba
     780:	ea98183a 	swc2	$24,6202(s4)
     784:	cd034df6 	lwc3	$3,19958(t0)
     788:	79c06122 	0x79c06122
     78c:	31c6e523 	andi	a2,t6,0xe523
     790:	31b97380 	andi	t9,t5,0x7380
     794:	4b28ae2b 	c2	0x128ae2b
     798:	e1bfc48d 	swc0	$31,-15219(t5)
     79c:	5be067ed 	0x5be067ed
     7a0:	10fe13f0 	beq	a3,s8,5764 <extend_mask+0x38>
     7a4:	d6a6975e 	0xd6a6975e
     7a8:	1683561a 	bne	s4,v1,16014 <extend_mask+0x108e8>
     7ac:	723f88a5 	0x723f88a5
     7b0:	fb27d92c 	0xfb27d92c
     7b4:	ae1e30f2 	sw	s8,12530(s0)
     7b8:	79b2305b 	0x79b2305b
     7bc:	60aacccc 	0x60aacccc
     7c0:	dc23a27c 	0xdc23a27c
     7c4:	c3a11f50 	lwc0	$1,8016(sp)
     7c8:	7c46f1ee 	0x7c46f1ee
     7cc:	81e34d63 	lb	v1,19811(t7)
     7d0:	e22e91e1 	swc0	$14,-28191(s1)
     7d4:	bd6f43d4 	0xbd6f43d4
     7d8:	fc05a0f8 	0xfc05a0f8
     7dc:	6a3536f1 	0x6a3536f1
     7e0:	5fdbcd61 	0x5fdbcd61
     7e4:	79afddc3 	0x79afddc3
     7e8:	21864b49 	addi	a2,t4,19273
     7ec:	1cc8b1a5 	0x1cc8b1a5
     7f0:	bc2cf34a 	0xbc2cf34a
     7f4:	b1155fb5 	0xb1155fb5
     7f8:	300fb5d0 	andi	t7,zero,0xb5d0
     7fc:	4d5f4b83 	0x4d5f4b83
     800:	8e1e7858 	lw	s8,30808(s0)
     804:	ca1abb3e 	lwc2	$26,-17602(s0)
     808:	8baa6fce 	lwl	t2,28622(sp)
     80c:	eb5f91ce 	swc2	$31,-28210(k0)
     810:	e16ba7b8 	swc0	$11,-22600(t3)
     814:	bf09355f 	0xbf09355f
     818:	885e29b0 	lwl	s8,10672(v0)
     81c:	f096a1f1 	0xf096a1f1
     820:	935a7d57 	lbu	k0,32087(k0)
     824:	4cf14e99 	0x4cf14e99
     828:	35c8b193 	ori	t0,t6,0xb193
     82c:	585b78e3 	0x585b78e3
     830:	d3e1b61e 	0xd3e1b61e
     834:	5de15908 	0x5de15908
     838:	591c80b1 	0x591c80b1
     83c:	bae1542c 	swr	at,21548(s7)
     840:	8db9c390 	lw	t9,-15472(t5)
     844:	6b85f13f 	0x6b85f13f
     848:	83fc2de1 	lb	gp,11745(ra)
     84c:	4f07fc5d 	c3	0x107fc5d
     850:	d5fe19fc 	0xd5fe19fc
     854:	6ebbd47c 	0x6ebbd47c
     858:	29a45ba3 	slti	a0,t5,23459
     85c:	c9a541a5 	lwc2	$5,16805(t5)
     860:	bdf4f186 	0xbdf4f186
     864:	8d02b417 	lw	v0,-19433(t0)
     868:	304c8235 	andi	t4,v0,0x8235
     86c:	f383c466 	0xf383c466
     870:	7561098c 	jalx	5842630 <extend_mask+0x583cf04>
     874:	97694fcd 	lhu	t1,20429(k1)
     878:	5e25e0ff 	0x5e25e0ff
     87c:	00da03e2 	0xda03e2
     880:	8784edcc 	lh	a0,-4660(gp)
     884:	9a6eaf0c 	lwr	t6,-20724(s3)
     888:	49e1bd1e 	0x49e1bd1e
     88c:	ff00c316 	0xff00c316
     890:	8b3da2c8 	lwl	sp,-23864(t9)
     894:	23b5bc1b 	addi	s5,sp,-17381
     898:	c6c0c570 	lwc1	$f0,-14992(s6)
     89c:	c26550c5 	lwc0	$5,20677(s3)
     8a0:	9b05428c 	lwr	a1,17036(t8)
     8a4:	654abfd8 	0x654abfd8
     8a8:	bf0061f8 	0xbf0061f8
     8ac:	6a9e11f0 	0x6a9e11f0
     8b0:	d69de24d 	0xd69de24d
     8b4:	1fc31a6e 	0x1fc31a6e
     8b8:	b3a6da47 	0xb3a6da47
     8bc:	a4a0b3d7 	sh	zero,-19497(a1)
     8c0:	ad22967b 	sw	v0,-27013(t1)
     8c4:	5088d0a4 	0x5088d0a4
     8c8:	72cf2c72 	0x72cf2c72
     8cc:	2cb20f20 	sltiu	s2,a1,3872
     8d0:	14246f95 	bne	at,a0,1c728 <extend_mask+0x16ffc>
     8d4:	372b4885 	ori	t3,t9,0x4885
     8d8:	562db053 	0x562db053
     8dc:	866315da 	lh	v1,5594(s3)
     8e0:	1bb69df5 	0x1bb69df5
     8e4:	5b5d5bc9 	0x5b5d5bc9
     8e8:	efaadc77 	swc3	$10,-9097(sp)
     8ec:	bab9f3af 	swr	t9,-3153(s5)
     8f0:	eccdf173 	swc3	$13,-3725(a2)
     8f4:	54d33c4b 	0x54d33c4b
     8f8:	e2af0ccd 	swc0	$15,3277(s5)
     8fc:	e10d0afe 	swc0	$13,2814(t0)
     900:	43e18d4f 	c0	0x1e18d4f
     904:	53b6d667 	0x53b6d667
     908:	d2fcebbb 	0xd2fcebbb
     90c:	1bb7b231 	0x1bb7b231
     910:	ed926c11 	swc3	$18,27665(t4)
     914:	24771298 	addiu	s7,v1,4760
     918:	d584d805 	0xd584d805
     91c:	c0c31c98 	lwc0	$3,7320(a2)
     920:	64f5ef8b 	0x64f5ef8b
     924:	1f17bc2d 	0x1f17bc2d
     928:	a578a7c0 	sh	t8,-22592(t3)
     92c:	9e2cbcd2 	0x9e2cbcd2
     930:	753f0d78 	jalx	4fc35e0 <extend_mask+0x4fbdeb4>
     934:	4ee88d5b 	c3	0xe88d5b
     938:	49f16e9f 	0x49f16e9f
     93c:	6cd24b67 	0x6cd24b67
     940:	6c6149a1 	0x6c6149a1
     944:	d38420b4 	0xd38420b4
     948:	4ea12741 	c3	0xa12741
     94c:	36e495c8 	ori	a0,s7,0x95c8
     950:	5655893e 	0x5655893e
     954:	fa75df13 	0xfa75df13
     958:	7e1b685f 	0x7e1b685f
     95c:	0b7e1dcd 	j	df87734 <extend_mask+0xdf82008>
     960:	ab7c1a9f 	swl	gp,6815(k1)
     964:	4816f0de 	0x4816f0de
     968:	dde8fe27 	0xdde8fe27
     96c:	68a482e2 	0x68a482e2
     970:	7d520120 	0x7d520120
     974:	2ecf1c5f 	sltiu	t7,s6,7263
     978:	bb1751f9 	swr	s7,20985(t8)
     97c:	9b374881 	lwr	s7,18561(t9)
     980:	a342a23f 	sb	v0,-24001(k0)
     984:	2fe465e1 	sltiu	a0,ra,26081
     988:	acbe2078 	sw	s8,8312(a1)
     98c:	934afd9d 	lbu	t2,-611(k0)
     990:	fc21e17f 	0xfc21e17f
     994:	087872e2 	j	1e1cb88 <extend_mask+0x1e1745c>
     998:	0d4ee64b 	jal	53b992c <extend_mask+0x53b4200>
     99c:	9b0975b9 	lwr	t1,30137(t8)
     9a0:	46fb3b6b 	c1	0xfb3b6b
     9a4:	bb5996d7 	swr	t9,-26921(k0)
     9a8:	ce5de197 	lwc3	$29,-7785(s2)
     9ac:	734722c2 	0x734722c2
     9b0:	610aa59f 	0x610aa59f
     9b4:	2db76ac8 	sltiu	s7,t5,27336
     9b8:	e161e757 	swc0	$1,-6313(t3)
     9bc:	0d2851a5 	jal	4a14694 <extend_mask+0x4a0ef68>
     9c0:	539bddbe 	0x539bddbe
     9c4:	9e4d2d15 	0x9e4d2d15
     9c8:	fe57d013 	0xfe57d013
     9cc:	e5f764b5 	swc1	$f23,25781(t7)
     9d0:	47b4bf8a 	c1	0x1b4bf8a
     9d4:	be1c7c61 	0xbe1c7c61
     9d8:	f0a6a6da 	0xf0a6a6da
     9dc:	6ea3e13f 	0x6ea3e13f
     9e0:	17e2c256 	bne	ra,v0,ffff133c <extend_mask+0xfffebc10>
     9e4:	d2ed6d23 	0xd2ed6d23
     9e8:	b8d2b518 	swr	s2,-19176(a2)
     9ec:	6f17ce8e 	0x6f17ce8e
     9f0:	7f312667 	0x7f312667
     9f4:	68c4cc47 	0x68c4cc47
     9f8:	96ee9b4a 	lhu	t6,-25782(s7)
     9fc:	c8bb8118 	lwc2	$27,-32488(a1)
     a00:	91be78f8 	lbu	s8,30968(t5)
     a04:	511eb1f0 	0x511eb1f0
     a08:	33c4f1f8 	andi	a0,s8,0xf1f8
     a0c:	a23f0e1f 	sb	ra,3615(s1)
     a10:	15e89e3c 	bne	t7,t0,fffe8304 <extend_mask+0xfffe2bd8>
     a14:	10be92d1 	beq	a1,s8,fffe555c <extend_mask+0xfffdfe30>
     a18:	c52db46b 	lwc1	$f13,-19349(t1)
     a1c:	223960e8 	addi	t9,s1,24808
     a20:	8549f906 	lh	t1,-1786(t2)
     a24:	ecb90061 	swc3	$25,97(a1)
     a28:	41caf7e0 	0x41caf7e0
     a2c:	bc59e37d 	0xbc59e37d
     a30:	4fc43e1f 	c3	0x1c43e1f
     a34:	f050f868 	0xf050f868
     a38:	b6b67aa4 	0xb6b67aa4
     a3c:	fa79b7d4 	0xfa79b7d4
     a40:	354b6d3e 	ori	t3,t2,0x6d3e
     a44:	0b092c2e 	j	c24b0b8 <extend_mask+0xc24598c>
     a48:	2d945b0b 	sltiu	s4,t4,23307
     a4c:	512c6776 	0x512c6776
     a50:	c58d0c68 	lwc1	$f13,3176(t4)
     a54:	32599157 	andi	t9,s2,0x9157
     a58:	920e17d9 	lbu	t6,6105(s0)
     a5c:	fe16fc5c 	0xfe16fc5c
     a60:	d4fe2569 	0xd4fe2569
     a64:	3e09f03f 	0x3e09f03f
     a68:	c6af1458 	lwc1	$f15,5208(s5)
     a6c:	6916baad 	0x6916baad
     a70:	ddedc417 	0xddedc417
     a74:	2d1ac13e 	sltiu	k0,t0,-16066
     a78:	bb248d24 	swr	a0,-29404(t9)
     a7c:	96cae500 	lhu	t2,-6912(s6)
     a80:	5559da48 	0x5559da48
     a84:	f0aa2359 	0xf0aa2359
     a88:	54c21816 	0x54c21816
     a8c:	68986388 	0x68986388
     a90:	cc695494 	lwc3	$9,21652(v1)
     a94:	534f9afa 	0x534f9afa
     a98:	3f376d35 	0x3f376d35
     a9c:	ec9bba7b 	swc3	$27,-17797(a0)
     aa0:	7c8b945a 	0x7c8b945a
     aa4:	d51e5bf1 	0xd51e5bf1
     aa8:	bfc0e3c6 	0xbfc0e3c6
     aac:	3f1d63f1 	0x3f1d63f1
     ab0:	578cfc3d 	0x578cfc3d
     ab4:	ab6a1e10 	swl	t2,7696(k1)
     ab8:	b545b89b 	0xb545b89b
     abc:	4ad39a2b 	c2	0xd39a2b
     ac0:	7bd8924d 	0x7bd8924d
     ac4:	a2499668 	sb	t1,-27032(s2)
     ac8:	f1e69525 	0xf1e69525
     acc:	18824123 	0x18824123
     ad0:	1ea01fa3 	bgtz	s5,8960 <extend_mask+0x3234>
     ad4:	935bd03f 	lbu	k1,-12225(k0)
     ad8:	673d36d2 	0x673d36d2
     adc:	18351d74 	0x18351d74
     ae0:	f856dd63 	0xf856dd63
     ae4:	b7bb637a 	0xb7bb637a
     ae8:	9335bdc3 	lbu	s5,-16957(t9)
     aec:	8df00c9c 	lw	s0,3228(t7)
     af0:	b646c6dc 	0xb646c6dc
     af4:	31b4ef03 	andi	s4,t5,0xef03
     af8:	3cf1f28f 	0x3cf1f28f
     afc:	c57d7fc6 	lwc1	$f29,32710(t3)
     b00:	bf0e3c63 	0xbf0e3c63
     b04:	af78206b 	sw	t8,8299(k1)
     b08:	8e9acc16 	lw	k0,-13290(s4)
     b0c:	e82f05cc 	swc2	$15,1484(at)
     b10:	6aef771c 	0x6aef771c
     b14:	cbe6b8ca 	lwc2	$6,-18230(ra)
     b18:	911a6030 	lbu	k0,24624(t0)
     b1c:	042e39c0 	0x42e39c0
     b20:	180ab4db 	0x180ab4db
     b24:	9d1fc591 	0x9d1fc591
     b28:	fc1ab7d7 	0xfc1ab7d7
     b2c:	ae7ed6ba 	sw	s8,-10566(s3)
     b30:	1f896da3 	0x1f896da3
     b34:	32dd5c93 	andi	sp,s6,0x5c93
     b38:	3c6cd1b9 	0x3c6cd1b9
     b3c:	75d8d926 	jalx	7636498 <extend_mask+0x7630d6c>
     b40:	260ca415 	addiu	t4,s0,-23531
     b44:	eb8078ca 	swc2	$0,30922(gp)
     b48:	a83cf5f3 	swl	gp,-2573(at)
     b4c:	08c25353 	j	3094d4c <extend_mask+0x308f620>
     b50:	837257bf 	lb	s2,22463(k1)
     b54:	5b2e976b 	0x5b2e976b
     b58:	a6da8d2d 	sh	k0,-29395(s6)
     b5c:	39918bfb 	xori	s1,t4,0x8bfb
     b60:	45eb7f08 	0x45eb7f08
     b64:	64d666f1 	0x64d666f1
     b68:	0fc18d46 	jal	f063518 <extend_mask+0xf05ddec>
     b6c:	458f57bb 	0x458f57bb
     b70:	37325a01 	ori	s2,t9,0x5a01
     b74:	32476ac7 	andi	a3,s2,0x6ac7
     b78:	e6900493 	swc1	$f16,1171(s4)
     b7c:	3b54b961 	xori	s4,k0,0xb961
     b80:	b0700eec 	0xb0700eec
     b84:	718ae2ad 	0x718ae2ad
     b88:	f54d2de0 	0xf54d2de0
     b8c:	8de74b33 	lw	a3,19251(t7)
     b90:	2b202e41 	slti	zero,t9,11841
     b94:	1f7b1cfe 	0x1f7b1cfe
     b98:	b5cdd8e8 	0xb5cdd8e8
     b9c:	76facc1a 	jalx	beb3068 <extend_mask+0xbead93c>
     ba0:	84cf2b46 	lh	t7,11078(a2)
     ba4:	2296350e 	addi	s6,s4,13582
     ba8:	4f0aa5b0 	c3	0x10aa5b0
     bac:	c48fa633 	lwc1	$f15,-22989(a0)
     bb0:	5d3af823 	0x5d3af823
     bb4:	c1b10119 	lwc0	$17,281(t5)
     bb8:	f1cdbe50 	0xf1cdbe50
     bbc:	6de08c71 	0x6de08c71
     bc0:	5f35889d 	0x5f35889d
     bc4:	1c44dc9a 	0x1c44dc9a
     bc8:	e5f25fd3 	swc1	$f18,24531(t7)
     bcc:	1c6a24bd 	0x1c6a24bd
     bd0:	e468788b 	swc1	$f8,30859(v1)
     bd4:	44f0ecda 	0x44f0ecda
     bd8:	febdafdb 	0xfebdafdb
     bdc:	c77d76fa 	lwc1	$f29,30458(k1)
     be0:	1433d96a 	bne	at,s3,ffff718c <extend_mask+0xffff1a60>
     be4:	36802c72 	ori	zero,s4,0x2c72
     be8:	c13b2084 	lwc0	$27,8324(t1)
     bec:	5dc61c62 	0x5dc61c62
     bf0:	48c5c310 	0x48c5c310
     bf4:	f1fcad1c 	0xf1fcad1c
     bf8:	8fb836d9 	lw	t8,14041(sp)
     bfc:	032fa7ff 	0x32fa7ff
     c00:	00c333fc 	0xc333fc
     c04:	67f0b784 	0x67f0b784
     c08:	2db481af 	sltiu	s4,t5,-32337
     c0c:	463c0baf 	c1	0x3c0baf
     c10:	dbdb6b17 	0xdbdb6b17
     c14:	d73044b7 	0xd73044b7
     c18:	36317da6 	ori	s1,s1,0x7da6
     c1c:	2851ae15 	slti	s1,v0,-20971
     c20:	236f32e3 	addi	t7,k1,13027
     c24:	742d1c70 	jalx	b471c0 <extend_mask+0xb41a94>
     c28:	bee8c7ef 	0xbee8c7ef
     c2c:	48dc8cec 	0x48dc8cec
     c30:	4f55f09b 	c3	0x155f09b
     c34:	c05e24f8 	lwc0	$30,9464(v0)
     c38:	efe373e2 	swc3	$3,29666(ra)
     c3c:	3f8ade0f 	0x3f8ade0f
     c40:	d2bc67e1 	0xd2bc67e1
     c44:	d1a75ae9 	0xd1a75ae9
     c48:	57da9f9f 	0x57da9f9f
     c4c:	7163a9d8 	0x7163a9d8
     c50:	8b769162 	lwl	s6,-28318(k1)
     c54:	b9830c66 	swr	v1,3174(t4)
     c58:	95d1da48 	lhu	s1,-9656(t6)
     c5c:	4b30c98a 	c2	0x130c98a
     c60:	dd1792be 	0xdd1792be
     c64:	5b7d57a9 	0x5b7d57a9
     c68:	dd7c3dd0 	0xdd7c3dd0
     c6c:	7425f126 	jalx	97c498 <extend_mask+0x976d6c>
     c70:	9f71ac7d 	0x9f71ac7d
     c74:	8fe1d6b5 	lw	at,-10571(ra)
     c78:	a959bdb6 	swl	t9,-16970(t2)
     c7c:	96a2ce0b 	lhu	v0,-12789(s5)
     c80:	78849b2f 	0x78849b2f
     c84:	8deaa12b 	lw	t2,-24277(t7)
     c88:	3942afbb 	xori	v0,t2,0xafbb
     c8c:	040cdcb1 	0x40cdcb1
     c90:	95763b13 	lhu	s6,15123(t3)
     c94:	f4585c05 	0xf4585c05
     c98:	e32a94fd 	swc0	$10,-27395(t9)
     c9c:	e8b7a59d 	swc2	$23,-23139(a1)
     ca0:	b44f55d9 	0xb44f55d9
     ca4:	adf6ec65 	sw	s6,-5019(t7)
     ca8:	0f79ddbb 	jal	de776ec <extend_mask+0xde71fc0>
     cac:	1f9dba97 	0x1f9dba97
     cb0:	86f4af0f 	lh	s4,-20721(s7)
     cb4:	fc6fd6fc 	0xfc6fd6fc
     cb8:	316de24b 	andi	t5,t3,0xe24b
     cbc:	58b46d33 	0x58b46d33
     cc0:	562ed79a 	0x562ed79a
     cc4:	b5a178a6 	0xb5a178a6
     cc8:	8e39bed1 	lw	t9,-16687(s1)
     ccc:	e6cb6e84 	swc1	$f11,28292(s6)
     cd0:	9923df13 	lwr	v1,-8429(t1)
     cd4:	6e0ac3f7 	0x6e0ac3f7
     cd8:	7bb39195 	0x7bb39195
     cdc:	3cff0085 	0x3cff0085
     ce0:	bc59e12f 	0xbc59e12f
     ce4:	0578f6df 	0x578f6df
     ce8:	c52efa75 	lwc1	$f14,-1419(t1)
     cec:	c5adb6a3 	lwc1	$f13,-18781(t5)
     cf0:	1ea77834 	0x1ea77834
     cf4:	ddab05b4 	0xddab05b4
     cf8:	b0dcbbc5 	0xb0dcbbc5
     cfc:	1dbc32a3 	0x1dbc32a3
     d00:	060ac639 	0x60ac639
     d04:	55241221 	0x55241221
     d08:	87707194 	lh	s0,29076(k1)
     d0c:	6c6c7c72 	0x6c6c7c72
     d10:	f8bb73e3 	0xf8bb73e3
     d14:	2f8a1acc 	sltiu	t2,gp,6860
     d18:	b6b71617 	0xb6b71617
     d1c:	f610eada 	0xf610eada
     d20:	8cb68d6e 	lw	s6,-29330(a1)
     d24:	64b8b79d 	0x64b8b79d
     d28:	5269137a 	0x5269137a
     d2c:	97666114 	lhu	a2,24852(k1)
     d30:	d16e63fc 	0xd16e63fc
     d34:	3b5d491d 	xori	sp,k0,0x491d
     d38:	5abebff8 	0x5abebff8
     d3c:	1163f05b 	beq	t3,v1,ffffceac <extend_mask+0xffff7780>
     d40:	e2af82fc 	swc0	$15,-32004(s5)
     d44:	03a75e5b 	0x3a75e5b
     d48:	6a3ab788 	0x6a3ab788
     d4c:	fc2a7ecb 	0xfc2a7ecb
     d50:	6bac6a4a 	0x6bac6a4a
     d54:	b6bab594 	0xb6bab594
     d58:	2b14a0b4 	slti	s4,t8,-24396
     d5c:	33081a29 	andi	t0,t8,0x1a29
     d60:	92221bca 	lbu	v0,7114(s1)
     d64:	473215f2 	c1	0x13215f2
     d68:	b24bbc6a 	0xb24bbc6a
     d6c:	42c061af 	c0	0xc061af
     d70:	5e71a32d 	0x5e71a32d
     d74:	22eebefb 	addi	t6,s7,-16645
     d78:	3d2f7d3f 	0x3d2f7d3f
     d7c:	2269dfe1 	addi	t1,s3,-8223
     d80:	383f89df 	xori	ra,at,0x89df
     d84:	b5e788ad 	0xb5e788ad
     d88:	7c149f0f 	0x7c149f0f
     d8c:	bc15e0af 	0xbc15e0af
     d90:	b078a35d 	0xb078a35d
     d94:	bf9af751 	0xbf9af751
     d98:	8354b333 	lb	s4,-19661(k0)
     d9c:	2cfa75d8 	sltiu	k0,a3,30168
     da0:	dd6d76ad 	0xdd6d76ad
     da4:	03a4915c 	0x3a4915c
     da8:	231481d6 	addi	s4,t8,-32298
     dac:	42577126 	c0	0x577126
     db0:	30ca7647 	andi	t2,a2,0x7647
     db4:	b3f083f6 	0xb3f083f6
     db8:	bed18781 	0xbed18781
     dbc:	63b4f176 	0x63b4f176
     dc0:	aba7f87e 	swl	a3,-1922(sp)
     dc4:	eb463616 	swc2	$6,13846(k0)
     dc8:	b35859e9 	0xb35859e9
     dcc:	41adf525 	0x41adf525
     dd0:	78a58ee2 	0x78a58ee2
     dd4:	f3508821 	0xf3508821
     dd8:	ccb14c62 	lwc3	$17,19554(a1)
     ddc:	90c7a7b4 	lbu	a3,-22604(a2)
     de0:	3713cae4 	ori	s3,t8,0xcae4
     de4:	ba6c3be0 	swr	t4,15328(s3)
     de8:	d1f8451f 	0xd1f8451f
     dec:	c6fbf7f8 	lwc1	$f27,-2056(s7)
     df0:	ebf0daf7 	swc2	$16,-9481(ra)
     df4:	e1f78535 	swc0	$23,-31435(t7)
     df8:	9f12dc6a 	0x9f12dc6a
     dfc:	0f349676 	jal	cd259d8 <extend_mask+0xcd202ac>
     e00:	2c5b4d92 	sltiu	k1,v0,19858
     e04:	7bbd3825 	0x7bbd3825
     e08:	89331955 	lwl	s3,6485(t1)
     e0c:	e4b69520 	swc1	$f22,-27360(a1)
     e10:	289f3065 	slti	ra,a0,12389
     e14:	f2e532fe 	0xf2e532fe
     e18:	f092be35 	0xf092be35
     e1c:	e1bfd9e7 	swc0	$31,-9753(t5)
     e20:	c5b7826f 	lwc1	$f23,-32145(t5)
     e24:	05e8b069 	0x5e8b069
     e28:	7ad6a576 	0x7ad6a576
     e2c:	91497f6b 	lbu	t1,32619(t2)
     e30:	7f66226b 	0x7f66226b
     e34:	4b3dccb2 	c2	0x13dccb2
     e38:	5e88e41e 	0x5e88e41e
     e3c:	648b1c8a 	0x648b1c8a
     e40:	b1aec0ad 	0xb1aec0ad
     e44:	be647758 	0xbe647758
     e48:	95b15d15 	lhu	s1,23829(t5)
     e4c:	e18ba728 	swc0	$11,-22744(t4)
     e50:	fd56f25b 	0xfd56f25b
     e54:	5b6b6bfd 	0x5b6b6bfd
     e58:	6df91a37 	0x6df91a37
     e5c:	adcbbe3f 	sw	t3,-16833(t6)
     e60:	93c25e20 	lbu	v0,24096(s8)
     e64:	9f5cf02d 	0x9f5cf02d
     e68:	b6b175ae 	0xb6b175ae
     e6c:	69b79f65 	0x69b79f65
     e70:	6b8f14dd 	0x6b8f14dd
     e74:	dbc90dd2 	0xdbc90dd2
     e78:	de8650b0 	0xde8650b0
     e7c:	a5b92863 	sh	t9,10339(t5)
     e80:	916d6286 	lbu	t5,25222(t3)
     e84:	098b8791 	j	62e1e44 <extend_mask+0x62dc718>
     e88:	76cf0827 	jalx	b3c209c <extend_mask+0xb3bc970>
     e8c:	31ac1e7b 	andi	t4,t5,0x1e7b
     e90:	a1f8ff00 	sb	t8,-256(t7)
     e94:	4fd0be25 	c3	0x1d0be25
     e98:	5a5d78f3 	0x5a5d78f3
     e9c:	50bbf146 	0x50bbf146
     ea0:	a4b34369 	sh	s3,17257(a1)
     ea4:	2caad025 	sltiu	t2,a1,-12251
     ea8:	8a69ec88 	lwl	t1,-4984(s3)
     eac:	b2432431 	0xb2432431
     eb0:	298c6c8d 	slti	t4,t4,27789
     eb4:	4218d02b 	c0	0x18d02b
     eb8:	2bab2e55 	slti	t3,sp,11861
     ebc:	9414e8be 	lhu	s4,-5954(zero)
     ec0:	12e91613 	beq	s7,t1,6710 <extend_mask+0xfe4>
     ec4:	f88bc3ba 	0xf88bc3ba
     ec8:	a6bd7d77 	sh	sp,32119(s5)
     ecc:	f1175bd6 	0xf1175bd6
     ed0:	246d174a 	addiu	t5,v1,5962
     ed4:	d12cee25 	0xd12cee25
     ed8:	b4b796f2 	0xb4b796f2
     edc:	658ed207 	0x658ed207
     ee0:	b8d52e15 	swr	s5,11797(a2)
     ee4:	45ac4208 	0x45ac4208
     ee8:	602bb04b 	0x602bb04b
     eec:	23838210 	addi	v1,gp,-32240
     ef0:	3961eb7f 	xori	at,t3,0xeb7f
     ef4:	0fbf660f 	jal	efd983c <extend_mask+0xefd4110>
     ef8:	016bda46 	0x16bda46
     efc:	9fe30d67 	0x9fe30d67
     f00:	c711f876 	lwc1	$f17,-1930(t8)
     f04:	da6bfbab 	0xda6bfbab
     f08:	7d62de3d 	0x7d62de3d
     f0c:	7ad9ac6d 	0x7ad9ac6d
     f10:	5a7bb9a0 	0x5a7bb9a0
     f14:	b7f2de45 	0xb7f2de45
     f18:	4b8897cf 	c2	0x18897cf
     f1c:	6b72ab31 	0x6b72ab31
     f20:	deeb2147 	0xdeeb2147
     f24:	d92a185f 	0xd92a185f
     f28:	9a586ad9 	lwr	t8,27353(s2)
     f2c:	8e21d482 	lw	at,-11134(s1)
     f30:	4947a376 	0x4947a376
     f34:	ddf57ae9 	0xddf57ae9
     f38:	f7bb5c6d 	0xf7bb5c6d
     f3c:	cd493470 	lwc3	$9,13424(t2)
     f40:	9fb44cd6 	0x9fb44cd6
     f44:	df1a344b 	0xdf1a344b
     f48:	7f1df81e 	0x7f1df81e
     f4c:	74d52d34 	jalx	354b4d0 <extend_mask+0x3545da4>
     f50:	3d3adb51 	0x3d3adb51
     f54:	bb8a568a 	swr	t2,22154(gp)
     f58:	19ed1e67 	0x19ed1e67
     f5c:	9a27b544 	lwr	a3,-19132(s1)
     f60:	004f2a2c 	0x4f2a2c
     f64:	50a48e8f 	0x50a48e8f
     f68:	26e8fce8 	addiu	t0,s7,-792
     f6c:	882f92aa 	lwl	t7,-27990(at)
     f70:	9f06ff00 	0x9f06ff00
     f74:	69ef86f3 	0x69ef86f3
     f78:	e993fc21 	swc2	$19,-991(t4)
     f7c:	f889e18b 	0xf889e18b
     f80:	58bc3fac 	0x58bc3fac
     f84:	a25b4ced 	sb	k1,19693(s2)
     f88:	710456b0 	0x710456b0
     f8c:	ca540128 	lwc2	$20,296(s2)
     f90:	8a0b788c 	lwl	t3,30860(s0)
     f94:	659de462 	0x659de462
     f98:	e64623e5 	swc1	$f6,9189(s2)
     f9c:	0bb71585 	j	edc5614 <extend_mask+0xedbfee8>
     fa0:	f057c07a 	0xf057c07a
     fa4:	cdff00c4 	lwc3	$31,196(t7)
     fa8:	ab9d4df5 	swl	sp,19957(gp)
     fac:	4b5bbd17 	c2	0x15bbd17
     fb0:	4ebcd434 	c3	0xbcd434
     fb4:	d58f56bd 	0xd58f56bd
     fb8:	7b08b53b 	0x7b08b53b
     fbc:	749cc254 	jalx	2730950 <extend_mask+0x272b224>
     fc0:	4f83248c 	c3	0x183248c
     fc4:	4024ab23 	0x4024ab23
     fc8:	2c60b028 	sltiu	zero,v1,-20440
     fcc:	7715afa0 	jalx	c56be80 <extend_mask+0xc566754>
     fd0:	fe2a7c19 	0xfe2a7c19
     fd4:	f036a1e2 	0xf036a1e2
     fd8:	4f167897 	c3	0x1167897
     fdc:	c216da65 	lwc0	$22,-9627(s0)
     fe0:	968fa568 	lhu	t7,-23192(s4)
     fe4:	106a571a 	beq	v1,t2,16c50 <extend_mask+0x11524>
     fe8:	b4d690b6 	0xb4d690b6
     fec:	9f722633 	0x9f722633
     ff0:	abb5acfb 	swl	s5,-21253(sp)
     ff4:	85bf96be 	lh	ra,-26946(t5)
     ff8:	532c9fbd 	0x532c9fbd
     ffc:	011d1949 	0x11d1949
    1000:	db906a8f 	0xdb906a8f
    1004:	b6c54dd4 	0xb6c54dd4
    1008:	8349fc2d 	lb	t1,-979(k0)
    100c:	3d53b745 	0x3d53b745
    1010:	75b74dcb 	jalx	6dd372c <extend_mask+0x6dce000>
    1014:	a7349de4 	sh	s4,-25116(t9)
    1018:	ae7c69a2 	sw	gp,27042(s3)
    101c:	d9683e1f 	0xd9683e1f
    1020:	f1c6a3e1 	0xf1c6a3e1
    1024:	9d4b4eb9 	0x9d4b4eb9
    1028:	bcf0a4b7 	0xbcf0a4b7
    102c:	93c09399 	lbu	zero,-27751(s8)
    1030:	9584a033 	lhu	a0,-24525(t4)
    1034:	18d048bc 	0x18d048bc
    1038:	36557d89 	ori	s5,s2,0x7d89
    103c:	ebc574d2 	swc2	$5,29906(s8)
    1040:	f8abc191 	0xf8abc191
    1044:	4af1da7c 	c2	0xf1da7c
    1048:	39f042c0 	xori	s0,t7,0x42c0
    104c:	8c562597 	lw	s6,9623(v0)
    1050:	51883840 	0x51883840
    1054:	780c33d7 	0x780c33d7
    1058:	18cd7277 	0x18cd7277
    105c:	536876da 	0x536876da
    1060:	65ad8787 	0x65ad8787
    1064:	b5186fd2 	0xb5186fd2
    1068:	3d6a62f7 	0x3d6a62f7
    106c:	a2dd6246 	sb	sp,25158(s6)
    1070:	90a332c4 	lbu	v1,12996(a1)
    1074:	02492232 	0x2492232
    1078:	8c2aef56 	lw	t2,-4266(at)
    107c:	20ef3fdd 	addi	t7,a3,16349
    1080:	39e657e0 	xori	a2,t7,0x57e0
    1084:	ac5a8a8d 	sw	k0,-30067(v0)
    1088:	4124d551 	0x4124d551
    108c:	6e879c15 	0x6e879c15
    1090:	6c72006e 	0x6c72006e
    1094:	700e791c 	0x700e791c
    1098:	d7cbd5a3 	0xd7cbd5a3
    109c:	055e71c4 	0x55e71c4
    10a0:	3e469f47 	0x3e469f47
    10a4:	75bf9335 	jalx	6fe4cd4 <extend_mask+0x6fdf5a8>
    10a8:	e5e47686 	swc1	$f4,30342(t7)
    10ac:	d64f6bee 	0xd64f6bee
    10b0:	775a7fed 	jalx	d69ffb4 <extend_mask+0xd69a888>
    10b4:	43e2cf0e 	c0	0x1e2cf0e
    10b8:	fda2fbc2 	0xfda2fbc2
    10bc:	7a80d375 	0x7a80d375
    10c0:	3b39a3b3 	xori	t9,t9,0xa3b3
    10c4:	5b789648 	0x5b789648
    10c8:	a1d434ff 	sb	s4,13567(t6)
    10cc:	003a3936 	0x3a3936
    10d0:	f98ade6e 	0xf98ade6e
    10d4:	4cb0a798 	0x4cb0a798
    10d8:	85d77a48 	lh	s7,31304(t6)
    10dc:	fbb77ccb 	0xfbb77ccb
    10e0:	5f5b78eb 	0x5f5b78eb
    10e4:	e2b6bbfb 	swc0	$22,-17413(s5)
    10e8:	41fc39f1 	0x41fc39f1
    10ec:	f7862436 	0xf7862436
    10f0:	3e1ed3a7 	0x3e1ed3a7
    10f4:	d2b4f586 	0xd2b4f586
    10f8:	3b6d5cbd 	xori	t5,k1,0x5cbd
    10fc:	e2348632 	swc0	$20,-31182(s1)
    1100:	c8622433 	lwc2	$2,9267(v1)
    1104:	c4b3472a 	lwc1	$f19,18218(a1)
    1108:	17091a6c 	bne	t8,t1,7abc <extend_mask+0x2390>
    110c:	94a94612 	lhu	t1,17938(a1)
    1110:	b987f357 	swr	a3,-3241(t4)
    1114:	c596d0e9 	lwc1	$f22,-12055(t4)
    1118:	1e28d5ec 	0x1e28d5ec
    111c:	f4e0f145 	0xf4e0f145
    1120:	69ab5cc1 	0x69ab5cc1
    1124:	0fceccca 	jal	f3b3328 <extend_mask+0xf3adbfc>
    1128:	91cae106 	lbu	t2,-7930(t6)
    112c:	e2493800 	swc0	$9,14336(s2)
    1130:	724e78af 	0x724e78af
    1134:	47f1578e 	c1	0x1f1578e
    1138:	3c4ba37c 	0x3c4ba37c
    113c:	28f869e2 	slti	t8,a3,27106
    1140:	cd3ef614 	lwc3	$30,-2540(t1)
    1144:	d5a75d47 	0xd5a75d47
    1148:	7dd3d9c3 	0x7dd3d9c3
    114c:	23168ef2 	addi	s6,t8,-28942
    1150:	e151f0e8 	swc0	$17,-3864(t2)
    1154:	40751230 	0x40751230
    1158:	0e06e1c6 	jal	81b8718 <extend_mask+0x81b2fec>
    115c:	0fcab8fa 	jal	f2ae3e8 <extend_mask+0xf2a8cbc>
    1160:	dc1c1e1e 	0xdc1c1e1e
    1164:	94a9d3d9 	lhu	t1,-11303(a1)
    1168:	6b6e8fa3 	0x6b6e8fa3
    116c:	5b376773 	0x5b376773
    1170:	9946d747 	lwr	a2,-10425(t2)
    1174:	0ef7efa7 	jal	bdfbe9c <extend_mask+0xbdf6770>
    1178:	b2886ca0 	0xb2886ca0
    117c:	86e21322 	lh	v0,4898(s7)
    1180:	3ba48c58 	xori	a0,sp,0x8c58
    1184:	1f994a19 	0x1f994a19
    1188:	14ed6046 	bne	a3,t5,192a4 <extend_mask+0x13b78>
    118c:	ff00bbf2 	0xff00bbf2
    1190:	b2b71919 	0xb2b71919
    1194:	07dcb49f 	0x7dcb49f
    1198:	8a5f19fc 	lwl	ra,6652(s2)
    119c:	23e18f0c 	addi	at,ra,-28916
    11a0:	6ab369d7 	0x6ab369d7
    11a4:	769a3595 	jalx	a68d654 <extend_mask+0xa687f28>
    11a8:	c4706853 	lwc1	$f16,26707(v1)
    11ac:	cba0bc16 	lwc2	$0,-17386(sp)
    11b0:	f2dbb2cf 	0xf2dbb2cf
    11b4:	898cb12a 	lwl	t4,-20182(t4)
    11b8:	34dbd5ae 	ori	k1,a2,0xd5ae
    11bc:	42e64259 	c0	0xe64259
    11c0:	bcd28a5b 	0xbcd28a5b
    11c4:	cc6af1ed 	lwc3	$10,-3603(v1)
    11c8:	2acadb56 	slti	t2,s6,-9386
    11cc:	f037897c 	0xf037897c
    11d0:	41a9c66e 	0x41a9c66e
    11d4:	b52fed0b 	0xb52fed0b
    11d8:	343752b1 	ori	s7,at,0x52b1
    11dc:	69089a57 	0x69089a57
    11e0:	32fcc4e7 	andi	gp,s7,0xc4e7
    11e4:	2c4649eb 	sltiu	a2,v0,18923
    11e8:	c9f535fa 	lwc2	$21,13818(t7)
    11ec:	f1fb2e78 	0xf1fb2e78
    11f0:	33c29f13 	andi	v0,s8,0x9f13
    11f4:	7f64af87 	0x7f64af87
    11f8:	3a278ef4 	xori	a3,s1,0x8ef4
    11fc:	0b3d5f4f 	j	cf57d3c <extend_mask+0xcf52610>
    1200:	f88515fe 	0xf88515fe
    1204:	99e23b69 	lwr	v0,15209(t7)
    1208:	630b1df4 	0x630b1df4
    120c:	36525cc3 	ori	s2,s2,0x5cc3
    1210:	68db5302 	0x68db5302
    1214:	29a28ede 	slti	v0,t5,-28962
    1218:	dd5278f6 	0xdd5278f6
    121c:	ca3c888e 	lwc2	$28,-30578(s1)
    1220:	fcc6a470 	0xfcc6a470
    1224:	509d4537 	0x509d4537
    1228:	1a4edd1f 	0x1a4edd1f
    122c:	e0d7aeb6 	swc0	$23,-20810(a2)
    1230:	2a14d493 	slti	s4,s0,-11117
    1234:	678b7c33 	0x678b7c33
    1238:	f8bbf03f 	0xf8bbf03f
    123c:	c4bfb3de 	lwc1	$f31,-19490(a1)
    1240:	8d1f8f3c 	lw	ra,-28868(t0)
    1244:	4f0690da 	c3	0x10690da
    1248:	95eeff00 	lhu	t6,-256(t7)
    124c:	14e9ba4e 	bne	a3,t1,fffefb88 <extend_mask+0xfffea45c>
    1250:	9d7315c6 	0x9d7315c6
    1254:	9b226a29 	lwr	v0,27177(t9)
    1258:	9bd9ee6d 	lwr	t9,-4499(s8)
    125c:	224f2e3c 	addi	t7,s2,11836
    1260:	cb04d2cb 	lwc2	$4,-11573(t8)
    1264:	88f73cfb 	lwl	s7,15611(a3)
    1268:	51bcc2ae 	0x51bcc2ae
    126c:	9b5abf8d 	lwr	k0,-16499(k0)
    1270:	3e356b3e 	0x3e356b3e
    1274:	3ff13eb7 	0x3ff13eb7
    1278:	f0e7c45a 	0xf0e7c45a
    127c:	347a4d96 	ori	k0,v1,0x4d96
    1280:	9b6de21b 	lwr	t5,-7653(k1)
    1284:	0d52477b 	jal	5491dec <extend_mask+0x548c6c0>
    1288:	8d3fc417 	lw	ra,-15337(t1)
    128c:	822668ad 	lb	a2,26797(s1)
    1290:	c4f712c7 	lwc1	$f23,4807(a3)
    1294:	6f1c2f14 	0x6f1c2f14
    1298:	522cd75e 	0x522cd75e
    129c:	6315f390 	0x6315f390
    12a0:	0c6f623c 	jal	1bd88f0 <extend_mask+0x1bd31c4>
    12a4:	07f68ff0 	0x7f68ff0
    12a8:	ae8df043 	sw	t5,-4029(s4)
    12ac:	5ef1859f 	0x5ef1859f
    12b0:	c2a8eefc 	lwc0	$8,-4356(s5)
    12b4:	3b0db7c2 	xori	t5,t8,0xb7c2
    12b8:	fd2a28d6 	0xfd2a28d6
    12bc:	dafa76f9 	0xdafa76f9
    12c0:	350d53ec 	ori	t5,t0,0x53ec
    12c4:	97aadbdd 	lhu	t2,-9251(sp)
    12c8:	b7896166 	0xb7896166
    12cc:	521b3863 	0x521b3863
    12d0:	bc61c06a 	0xbc61c06a
    12d4:	fa4fe035 	0xfa4fe035
    12d8:	85be8de0 	lh	s8,-29216(t5)
    12dc:	2d2534ff 	sltiu	a1,t1,13567
    12e0:	003521b7 	0x3521b7
    12e4:	d37c6f61 	0xd37c6f61
    12e8:	15bc933c 	bne	t5,gp,fffe5fdc <extend_mask+0xfffe08b0>
    12ec:	b02c1a6e 	0xb02c1a6e
    12f0:	bf670592 	0xbf670592
    12f4:	f94e4a66 	0xf94e4a66
    12f8:	38de41bb 	xori	s8,a2,0x41bb
    12fc:	1b98bbb3 	0x1b98bbb3
    1300:	966624fb 	lhu	a2,9467(s3)
    1304:	383a8ea5 	xori	k0,at,0x8ea5
    1308:	472a9bab 	c1	0x12a9bab
    130c:	276ebaff 	addiu	t6,k1,-17665
    1310:	00c1b94a 	0xc1b94a
    1314:	2dfbb7d8 	sltiu	k1,t7,-18472
    1318:	f9cb45d6 	0xf9cb45d6
    131c:	fe237c24 	0xfe237c24
    1320:	f1b78b7e 	0xf1b78b7e
    1324:	287c3df8 	slti	gp,v1,15864
    1328:	71693787 	0x71693787
    132c:	64b0d5af 	0x64b0d5af
    1330:	f46d2aeb 	0xf46d2aeb
    1334:	518a58f4 	0x518a58f4
    1338:	dd082491 	0xdd082491
    133c:	a3c3e5b1 	sb	v1,-6735(s8)
    1340:	778e1964 	jalx	e386590 <extend_mask+0xe380e64>
    1344:	5966b68f 	0x5966b68f
    1348:	276dbb45 	addiu	t5,k1,-17595
    134c:	211e5ac8 	addi	s8,t0,23240
    1350:	bcb7ece7 	0xbcb7ece7
    1354:	f1c3c4b6 	0xf1c3c4b6
    1358:	9e394f16 	0x9e394f16
    135c:	fc4b8e4d 	0xfc4b8e4d
    1360:	6b45d564 	0x6b45d564
    1364:	6b4b612d 	0x6b4b612d
    1368:	9db470c7 	0x9db470c7
    136c:	2a5c5b4c 	slti	gp,s2,23372
    1370:	d3c41b08 	0xd3c41b08
    1374:	b2a9b585 	0xb2a9b585
    1378:	9a73ca3c 	lwr	s3,-13764(s3)
    137c:	30b19378 	andi	s1,a1,0x9378
    1380:	dd5fa1ba 	0xdd5fa1ba
    1384:	bf86b42b 	0xbf86b42b
    1388:	4f8c56da 	c3	0x18c56da
    138c:	adbe9b12 	sw	s8,-25838(t5)
    1390:	5ce9de0d 	0x5ce9de0d
    1394:	d42d6d9b 	0xd42d6d9b
    1398:	92ab1477 	lbu	t3,5239(s5)
    139c:	5a648885 	0x5a648885
    13a0:	4fcac15d 	c3	0x1cac15d
    13a4:	988dc0e3 	lwr	t5,-16157(a0)
    13a8:	730e848a 	0x730e848a
    13ac:	f803fe0a 	0xf803fe0a
    13b0:	0f696b63 	jal	da5ad8c <extend_mask+0xda55660>
    13b4:	fb546a90 	0xfb546a90
    13b8:	58c096c9 	0x58c096c9
    13bc:	a8596933 	swl	t9,26931(v0)
    13c0:	5c8846cf 	0x5c8846cf
    13c4:	32470f0b 	andi	a3,s2,0xf0b
    13c8:	b1c7731c 	0xb1c7731c
    13cc:	31a93d4e 	andi	t1,t5,0x3d4e
    13d0:	df5249bc 	0xdf5249bc
    13d4:	6d3965eb 	0x6d3965eb
    13d8:	dad2778a 	0xdad2778a
    13dc:	96cfd3ca 	lhu	t7,-11318(s6)
    13e0:	ddccb9a4 	0xddccb9a4
    13e4:	9dae56f1 	0x9dae56f1
    13e8:	2fc42d2f 	sltiu	a0,s8,11567
    13ec:	5bf0ddf7 	0x5bf0ddf7
    13f0:	89a5bc36 	lwl	a1,-17354(t5)
    13f4:	de22d524 	0xde22d524
    13f8:	7d435298 	0x7d435298
    13fc:	ee9edf4d 	swc3	$30,-8371(s4)
    1400:	6954ec58 	0x6954ec58
    1404:	d5db6add 	0xd5db6add
    1408:	4ac0056e 	c2	0xc0056e
    140c:	91a8df21 	lbu	t0,-8415(t5)
    1410:	ddb1593e 	0xddb1593e
    1414:	1d7c7ef8 	0x1d7c7ef8
    1418:	a1a3f807 	sb	v1,-2041(t5)
    141c:	c37e1ff0 	lwc0	$30,8176(k1)
    1420:	d45e1ab7 	0xd45e1ab7
    1424:	f07f846f 	0xf07f846f
    1428:	aebedd1d 	sw	s8,-8931(s5)
    142c:	fcb6b6f6 	0xfcb6b6f6
    1430:	baa4571b 	swr	a0,22299(s5)
    1434:	d9ac2486 	0xd9ac2486
    1438:	77df750e 	jalx	f7dd438 <extend_mask+0xf7d7d0c>
    143c:	c96e0111 	lwc2	$14,273(t3)
    1440:	24b237da 	addiu	s2,a1,14298
    1444:	30e1d993 	andi	at,a3,0xd993
    1448:	7785f88f 	jalx	e17e23c <extend_mask+0xe178b10>
    144c:	52d4342d 	0x52d4342d
    1450:	5ada1d1e 	0x5ada1d1e
    1454:	fae2ce38 	0xfae2ce38
    1458:	d400b0c8 	0xd400b0c8
    145c:	5473c927 	0x5473c927
    1460:	d49c9c93 	0xd49c9c93
    1464:	c9ef57ee 	lwc2	$15,22510(t7)
    1468:	2f26d774 	sltiu	a2,t9,-10380
    146c:	3d6b52d4 	0x3d6b52d4
    1470:	846f7561 	lh	t7,30049(v1)
    1474:	3048258e 	andi	t0,v0,0x258e
    1478:	25848066 	addiu	a0,t4,-32666
    147c:	2a776c03 	slti	s7,s3,27651
    1480:	7f03f8b3 	0x7f03f8b3
    1484:	dcf526be 	0xdcf526be
    1488:	5238ba91 	0x5238ba91
    148c:	93c4c5d9 	lbu	a0,-14887(s8)
    1490:	cf7b69be 	lwc3	$27,27070(k1)
    1494:	bf999733 	0xbf999733
    1498:	5648b5e2 	0x5648b5e2
    149c:	1b9f093d 	0x1b9f093d
    14a0:	edcd8f86 	swc3	$13,-28794(t6)
    14a4:	74d3a5e8 	jalx	34e97a0 <extend_mask+0x34e4074>
    14a8:	e6f1eeed 	swc1	$f17,-4371(s7)
    14ac:	ac2de733 	sw	t5,-6349(at)
    14b0:	2db96e06 	sltiu	t9,t5,28166
    14b4:	e7200925 	swc1	$f0,2341(t9)
    14b8:	55c2b18c 	0x55c2b18c
    14bc:	796595ca 	0x796595ca
    14c0:	6e5209f5 	0x6e5209f5
    14c4:	1b1fda3f 	0x1b1fda3f
    14c8:	c4965656 	lwc1	$f22,22102(a0)
    14cc:	f676ff00 	0xf676ff00
    14d0:	0db4c68a 	jal	6d31a28 <extend_mask+0x6d2c2fc>
    14d4:	0892243b 	j	24890ec <extend_mask+0x24839c0>
    14d8:	e35caa80 	swc0	$28,-21888(k0)
    14dc:	071bb8e0 	0x71bb8e0
    14e0:	74ae37e2 	jalx	2b8df88 <extend_mask+0x2b8885c>
    14e4:	2f86741d 	sltiu	a2,gp,29725
    14e8:	1f41b49b 	0x1f41b49b
    14ec:	4cd322b7 	0x4cd322b7
    14f0:	7096e859 	0x7096e859
    14f4:	33960439 	andi	s6,gp,0x439
    14f8:	cb73f31c 	lwc2	$19,-3300(k1)
    14fc:	a8e4e4f5 	swl	a0,-6923(a3)
    1500:	e7935ecd 	swc1	$f19,24269(gp)
    1504:	e18f0278 	swc0	$15,632(t4)
    1508:	5af3c37a 	0x5af3c37a
    150c:	4dddce9a 	0x4dddce9a
    1510:	ef34f630 	swc3	$20,-2512(t9)
    1514:	49237da6 	0x49237da6
    1518:	51b99a35 	0x51b99a35
    151c:	24e0363a 	addiu	zero,a3,13882
    1520:	9af03152 	lwr	s0,12626(s7)
    1524:	8547cd35 	lh	a3,-13003(t2)
    1528:	7d5ef7fd 	0x7d5ef7fd
    152c:	19dd4ab5 	0x19dd4ab5
    1530:	58d49252 	0x58d49252
    1534:	3fffd900 	0x3fffd900

00001538 <hana_bmp>:
    1538:	bcd1be99 	0xbcd1be99
    153c:	8f6795c0 	lw	a3,-27200(k1)
    1540:	ac9dbdc0 	sw	sp,-16960(a0)
    1544:	a4c3bcb5 	sh	v1,-17227(a2)
    1548:	c1a7bcd2 	lwc0	$7,-17198(t5)
    154c:	b18e250a 	0xb18e250a
    1550:	1f282734 	0x1f282734
    1554:	201d220e 	addi	sp,zero,8718
    1558:	0a120e1a 	j	8483868 <extend_mask+0x847e13c>
    155c:	076cb5be 	0x76cb5be
    1560:	b57f5b63 	0xb57f5b63
    1564:	49240b24 	0x49240b24
    1568:	425d5a41 	c0	0x5d5a41
    156c:	33202423 	andi	zero,t9,0x2423
    1570:	26353823 	addiu	s5,s1,14371
    1574:	19192031 	0x19192031
    1578:	2936201f 	slti	s6,t1,8223
    157c:	1f221819 	0x1f221819
    1580:	262b200b 	addiu	t3,s1,8203
    1584:	090d1419 	j	4345064 <extend_mask+0x433f938>
    1588:	17111012 	bne	t8,s1,55d4 <zigzag_index+0xa8>
    158c:	1e19212d 	0x1e19212d
    1590:	241da6c1 	addiu	sp,zero,-22847
    1594:	655aaa81 	0x655aaa81
    1598:	92d5a958 	lbu	s5,-22184(s6)
    159c:	91c7cfa5 	lbu	a3,-12379(t6)
    15a0:	8971c99b 	lwl	s1,-13925(t3)
    15a4:	8bd1bfc9 	lwl	s1,-16439(s8)
    15a8:	ab67331d 	swl	a3,13085(k1)
    15ac:	11091d2b 	beq	t0,t1,8a5c <extend_mask+0x3330>
    15b0:	2124180e 	addi	a0,t1,6158
    15b4:	1818046c 	0x1818046c
    15b8:	b9b4babc 	swr	s4,-17732(t5)
    15bc:	b7c3c06c 	0xb7c3c06c
    15c0:	304b6755 	andi	t3,v0,0x6755
    15c4:	45312e37 	0x45312e37
    15c8:	2c2a3233 	sltiu	t2,at,12851
    15cc:	291e120e 	slti	s8,t0,4622
    15d0:	1e303036 	0x1e303036
    15d4:	22282624 	addi	t0,s1,9764
    15d8:	1f1c3437 	0x1f1c3437
    15dc:	2d0f0e10 	sltiu	t7,t0,3600
    15e0:	17150f0b 	bne	t8,s5,5210 <hana_bmp+0x3cd8>
    15e4:	11191f1a 	beq	t0,t9,9250 <extend_mask+0x3b24>
    15e8:	2c492227 	sltiu	t1,v0,8743
    15ec:	91842eb5 	lbu	a0,11957(t4)
    15f0:	cdd1bbaa 	lwc3	$17,-17494(t6)
    15f4:	8c38348e 	lw	t8,13454(at)
    15f8:	7ab0c653 	0x7ab0c653
    15fc:	9ad7c8d1 	lwr	s7,-14127(s6)
    1600:	b8a4c4ae 	swr	a0,-15186(a1)
    1604:	8037594c 	lb	s7,22860(at)
    1608:	1c262f2e 	0x1c262f2e
    160c:	231b271f 	addi	k1,t8,10015
    1610:	103a7489 	beq	at,k0,1e838 <extend_mask+0x1910c>
    1614:	a9b8b4af 	swl	t8,-19281(t5)
    1618:	a678495b 	sh	t8,18779(s3)
    161c:	61542024 	0x61542024
    1620:	3e3a2829 	0x3e3a2829
    1624:	302d2014 	andi	t5,at,0x2014
    1628:	0f100c1b 	jal	c40306c <extend_mask+0xc3fd940>
    162c:	18242810 	0x18242810
    1630:	22181621 	addi	t8,s0,5665
    1634:	3d413712 	0x3d413712
    1638:	15161d13 	bne	t0,s6,8a88 <extend_mask+0x335c>
    163c:	120f151c 	beq	s0,t7,6ab0 <extend_mask+0x1384>
    1640:	211d304b 	addi	sp,t0,12363
    1644:	24266f0f 	addiu	a2,at,28431
    1648:	3ee2cfbb 	0x3ee2cfbb
    164c:	cdbc3d02 	lwc3	$28,15618(t5)
    1650:	0d1f0969 	jal	47c25a4 <extend_mask+0x47bce78>
    1654:	8c3118bf 	lw	s1,6335(at)
    1658:	d1c6bab8 	0xd1c6bab8
    165c:	9375593a 	lbu	s5,22842(k1)
    1660:	8ab3873e 	lwl	s3,-30914(s5)
    1664:	34331714 	ori	s3,at,0x1714
    1668:	221c1a0a 	addi	gp,s0,6666
    166c:	2a70979d 	slti	s0,s3,-26723
    1670:	8b7a7136 	lwl	k0,28982(k1)
    1674:	4f54602e 	c3	0x154602e
    1678:	1320353a 	beqz	t9,eb64 <extend_mask+0x9438>
    167c:	28282726 	slti	t0,at,10022
    1680:	15151117 	bne	t0,s5,5ae0 <extend_mask+0x3b4>
    1684:	066e650e 	0x66e650e
    1688:	12070f1b 	beq	s0,a3,52f8 <hana_bmp+0x3dc0>
    168c:	071b4046 	0x71b4046
    1690:	3f161e20 	0x3f161e20
    1694:	2616080a 	addiu	s6,s0,2058
    1698:	12141a1b 	beq	s0,s4,7f08 <extend_mask+0x27dc>
    169c:	2b3a2c28 	slti	k0,t9,11304
    16a0:	8b8c819c 	lwl	t4,-32356(gp)
    16a4:	71b1d7ae 	0x71b1d7ae
    16a8:	6f65240e 	0x6f65240e
    16ac:	148b626a 	bne	a0,t3,1a058 <extend_mask+0x1492c>
    16b0:	512561df 	0x512561df
    16b4:	c8d99599 	lwc2	$25,-27239(a2)
    16b8:	94834692 	lhu	v1,18066(a0)
    16bc:	b2ac8350 	0xb2ac8350
    16c0:	0d112b10 	jal	444ac40 <extend_mask+0x4445514>
    16c4:	12141862 	beq	s0,s4,7850 <extend_mask+0x2124>
    16c8:	82a39055 	lb	v1,-28587(s5)
    16cc:	47514e58 	c1	0x1514e58
    16d0:	441d2738 	0x441d2738
    16d4:	3b312829 	xori	s1,t9,0x2829
    16d8:	27140b3f 	addiu	s4,t8,2879
    16dc:	500159b3 	0x500159b3
    16e0:	ba600025 	swr	zero,37(s3)
    16e4:	0f15141b 	jal	c54506c <extend_mask+0xc53f940>
    16e8:	404c491d 	0x404c491d
    16ec:	1f212b22 	0x1f212b22
    16f0:	0d0c1310 	jal	4304c40 <extend_mask+0x42ff514>
    16f4:	100e1c26 	beq	zero,t6,8790 <extend_mask+0x3064>
    16f8:	3c32b3c4 	0x3c32b3c4
    16fc:	d9843779 	0xd9843779
    1700:	d5b4b1b7 	0xd5b4b1b7
    1704:	ae66a1b6 	sw	a2,-24138(s3)
    1708:	8c93c5ce 	lw	s3,-14898(a0)
    170c:	a4d6d9af 	sh	s6,-9809(a2)
    1710:	288daeb7 	slti	t5,a0,-20809
    1714:	7b446177 	0x7b446177
    1718:	7b7e3115 	0x7b7e3115
    171c:	2711171c 	addiu	s1,t8,5916
    1720:	0e7b95c2 	jal	9ee5708 <extend_mask+0x9edffdc>
    1724:	c15f4b49 	lwc0	$31,19273(t2)
    1728:	463f3b32 	c1	0x3f3b32
    172c:	30373a2a 	andi	s7,at,0x3a2a
    1730:	30362024 	andi	s6,at,0x2024
    1734:	0c559f6e 	jal	1567db8 <extend_mask+0x156268c>
    1738:	7db1bb89 	0x7db1bb89
    173c:	19363a37 	0x19363a37
    1740:	12133b4d 	beq	s0,s3,10478 <extend_mask+0xad4c>
    1744:	4c221e20 	0x4c221e20
    1748:	302f2212 	andi	t7,at,0x2212
    174c:	0d0d0c05 	jal	4343014 <extend_mask+0x433d8e8>
    1750:	0c123439 	jal	48d0e4 <extend_mask+0x4879b8>
    1754:	8886afd6 	lwl	a2,-20522(a0)
    1758:	86a1be8d 	lh	at,-16755(s5)
    175c:	b1bd8da4 	0xb1bd8da4
    1760:	cbb3b990 	lwc2	$19,-18032(sp)
    1764:	498dce94 	0x498dce94
    1768:	b5c07145 	0xb5c07145
    176c:	95b08d74 	lhu	s0,-29324(t5)
    1770:	532e6570 	0x532e6570
    1774:	4f1f1928 	c3	0x11f1928
    1778:	1e1a0c62 	0x1e1a0c62
    177c:	a2c3d77a 	sb	v1,-10374(s6)
    1780:	37413d44 	ori	at,k0,0x3d44
    1784:	402e4441 	0x402e4441
    1788:	43503824 	c0	0x1503824
    178c:	2c2f1b37 	sltiu	t7,at,6967
    1790:	b1c8afa9 	0xb1c8afa9
    1794:	b29c727e 	0xb29c727e
    1798:	6b3d2e32 	0x6b3d2e32
    179c:	3c4e4c2e 	0x3c4e4c2e
    17a0:	2a303b3a 	slti	s0,s1,15162
    17a4:	2d191416 	sltiu	t9,t0,5142
    17a8:	1a13130f 	0x1a13130f
    17ac:	383a2972 	xori	k0,at,0x2972
    17b0:	c4c3d0c5 	lwc1	$f3,-12091(a2)
    17b4:	bab0aecc 	swr	s0,-20788(s5)
    17b8:	7988d0cd 	0x7988d0cd
    17bc:	c9560cbe 	lwc2	$22,3262(t2)
    17c0:	b4b194b2 	0xb4b194b2
    17c4:	dd916192 	0xdd916192
    17c8:	8899a98a 	lwl	t9,-22134(a0)
    17cc:	93bfa739 	lbu	ra,-22727(sp)
    17d0:	2fa87c21 	sltiu	t0,sp,31777
    17d4:	0536bdb4 	0x536bdb4
    17d8:	c5bc8844 	lwc1	$f28,-30652(t5)
    17dc:	363f324e 	ori	ra,s1,0x324e
    17e0:	534a505a 	0x534a505a
    17e4:	3a2c3c2d 	xori	t4,s1,0x3c2d
    17e8:	2c1280c2 	sltiu	s2,zero,-32574
    17ec:	b0c9cbc4 	0xb0c9cbc4
    17f0:	af8e6b3d 	sw	t6,27453(gp)
    17f4:	2c3d4a56 	sltiu	sp,at,19030
    17f8:	533e4047 	0x533e4047
    17fc:	483f3f37 	0x483f3f37
    1800:	39343127 	xori	s4,t1,0x3127
    1804:	24183d39 	addiu	t8,zero,15673
    1808:	134bc2a5 	beq	k0,t3,ffff22a0 <extend_mask+0xfffecb74>
    180c:	a8bac4bb 	swl	k0,-15173(a1)
    1810:	cbcf5641 	lwc2	$15,22081(s8)
    1814:	82c0d6b8 	lb	zero,-10568(s6)
    1818:	90aeb4d1 	lbu	t6,-19247(a1)
    181c:	934c6c74 	lbu	t4,27764(k0)
    1820:	9b9abbac 	lwr	k0,-17492(gp)
    1824:	b3b4bbc7 	0xb3b4bbc7
    1828:	cc3936a5 	lwc3	$25,13989(at)
    182c:	7f2f5a43 	0x7f2f5a43
    1830:	bdb3aad6 	0xbdb3aad6
    1834:	c39f6728 	lwc0	$31,26408(gp)
    1838:	20406142 	addi	zero,v0,24898
    183c:	3535434d 	ori	s5,t1,0x434d
    1840:	2e2f270a 	sltiu	t7,s1,9994
    1844:	357a97ca 	ori	k0,t3,0x97ca
    1848:	d5d6bca1 	0xd5d6bca1
    184c:	916a3c3a 	lbu	t2,15418(t3)
    1850:	4e5d6165 	c3	0x5d6165
    1854:	66565547 	0x66565547
    1858:	39323736 	xori	s2,t1,0x3736
    185c:	36342b28 	ori	s4,s1,0x2b28
    1860:	1516710b 	bne	t0,s6,1dc90 <extend_mask+0x18564>
    1864:	2e42688c 	sltiu	v0,s2,26764
    1868:	a4a7b1d2 	sh	a3,-20014(a1)
    186c:	477369be 	c1	0x17369be
    1870:	a3b5bbb8 	sb	s5,-17480(sp)
    1874:	8eb16bcf 	lw	s1,27599(s5)
    1878:	8071799c 	lb	s1,31132(v1)
    187c:	998fa19a 	lwr	t7,-24166(t4)
    1880:	a5b6b637 	sh	s6,-18889(t5)
    1884:	2d742a34 	sltiu	s4,t3,10804
    1888:	785e7db4 	0x785e7db4
    188c:	bbbac7bf 	swr	k0,-14401(sp)
    1890:	ba4e002b 	swr	t6,43(s2)
    1894:	60765213 	0x60765213
    1898:	4c4c4737 	0x4c4c4737
    189c:	1d09083b 	0x1d09083b
    18a0:	6fa8bdcd 	0x6fa8bdcd
    18a4:	bba68a6f 	swr	a2,-30097(sp)
    18a8:	3229374c 	andi	t1,s1,0x374c
    18ac:	5e6b7465 	0x5e6b7465
    18b0:	5c483332 	0x5c483332
    18b4:	2f272b25 	sltiu	a3,t9,11045
    18b8:	1d28191b 	0x1d28191b
    18bc:	6444332e 	0x6444332e
    18c0:	38515c98 	xori	s1,v0,0x5c98
    18c4:	b0ca478e 	0xb0ca478e
    18c8:	cfc4c590 	lwc3	$4,-14960(s8)
    18cc:	b5b56978 	0xb5b56978
    18d0:	4f40b370 	c3	0x140b370
    18d4:	6661403f 	0x6661403f
    18d8:	335eb4a4 	andi	s8,k0,0xb4a4
    18dc:	932544a9 	lbu	a1,17577(t9)
    18e0:	5e64618a 	0x5e64618a
    18e4:	0144b2b5 	0x144b2b5
    18e8:	ada6b6a3 	sw	a2,-18781(t5)
    18ec:	3377a5bb 	andi	s7,k1,0xa5bb
    18f0:	bb41274f 	swr	at,10063(k0)
    18f4:	52470f0e 	0x52470f0e
    18f8:	0a0c4090 	j	8310240 <extend_mask+0x830ab14>
    18fc:	b9b07446 	swr	s0,29766(t5)
    1900:	3c292719 	0x3c292719
    1904:	172b3f56 	bne	t9,t3,11660 <extend_mask+0xbf34>
    1908:	6e6e644b 	0x6e6e644b
    190c:	311b201b 	andi	k1,t0,0x201b
    1910:	12152425 	beq	s0,s5,a9a8 <extend_mask+0x527c>
    1914:	1d205d3e 	bgtz	t1,18e10 <extend_mask+0x136e4>
    1918:	221f473e 	addi	ra,s0,18238
    191c:	66af906a 	0x66af906a
    1920:	3ac9aabf 	xori	t1,s6,0xaabf
    1924:	bda76eaa 	0xbda76eaa
    1928:	ae867954 	sw	a2,31060(s4)
    192c:	a178553e 	sb	t8,21822(t3)
    1930:	402b094e 	0x402b094e
    1934:	bab9aa14 	swr	t9,-21996(s5)
    1938:	64b49fb0 	0x64b49fb0
    193c:	acbd646a 	sw	sp,25706(a1)
    1940:	a9aa99b4 	swl	t2,-26188(t5)
    1944:	bdbbbf96 	0xbdbbbf96
    1948:	678a9b7d 	0x678a9b7d
    194c:	314d3d3e 	andi	t5,t2,0x3d3e
    1950:	48171215 	0x48171215
    1954:	1b275250 	0x1b275250
    1958:	35354754 	ori	s5,t1,0x4754
    195c:	3a210412 	xori	at,s1,0x412
    1960:	233f6578 	addi	ra,t9,25976
    1964:	6b46271c 	0x6b46271c
    1968:	1d191c18 	0x1d191c18
    196c:	2021221f 	addi	at,at,8735
    1970:	623b2011 	0x623b2011
    1974:	221c4579 	addi	gp,s0,17785
    1978:	1a2e4cac 	0x1a2e4cac
    197c:	6b138e99 	0x6b138e99
    1980:	8892d6a5 	lwl	s2,-10587(a0)
    1984:	bbcfb37e 	swr	t7,-19586(s8)
    1988:	3f51262d 	0x3f51262d
    198c:	2661adb8 	addiu	at,s3,-21064
    1990:	9b1864ce 	lwr	t8,25806(t8)
    1994:	b0c6cee2 	0xb0c6cee2
    1998:	986b8199 	lwr	t3,-32359(v1)
    199c:	92bcbbaa 	lbu	gp,-17494(s5)
    19a0:	b3b37c9b 	0xb3b37c9b
    19a4:	b39a5d49 	0xb39a5d49
    19a8:	41514239 	0x41514239
    19ac:	143a3c24 	bne	at,k0,10a40 <extend_mask+0xb314>
    19b0:	2f381931 	sltiu	t8,t9,6449
    19b4:	4a5a552c 	c2	0x5a552c
    19b8:	080c1830 	j	3060c0 <extend_mask+0x300994>
    19bc:	537a7857 	0x537a7857
    19c0:	251d1c17 	addiu	sp,t0,7191
    19c4:	17141d1f 	bne	t8,s4,8e44 <extend_mask+0x3718>
    19c8:	17146133 	bne	t8,s4,19e98 <extend_mask+0x1476c>
    19cc:	090f0e10 	j	43c3840 <extend_mask+0x43be114>
    19d0:	17582025 	bne	k0,t8,9a68 <extend_mask+0x433c>
    19d4:	4b301211 	c2	0x1301211
    19d8:	18c5c8aa 	0x18c5c8aa
    19dc:	c4bfcacd 	lwc1	$f31,-13619(a1)
    19e0:	b6643823 	0xb6643823
    19e4:	1c715c47 	0x1c715c47
    19e8:	5d565622 	0x5d565622
    19ec:	4ebac2b6 	c3	0xbac2b6
    19f0:	c1b4a54e 	lwc0	$20,-23218(t5)
    19f4:	567a4069 	0x567a4069
    19f8:	c3a394bc 	lwc0	$3,-27460(sp)
    19fc:	94969676 	lhu	s6,-27018(a0)
    1a00:	785f494d 	0x785f494d
    1a04:	4b463f4f 	c2	0x1463f4f
    1a08:	5f40523b 	0x5f40523b
    1a0c:	1f142b46 	0x1f142b46
    1a10:	5d541d1d 	0x5d541d1d
    1a14:	2c3e4e70 	sltiu	s8,at,20080
    1a18:	785d2c22 	0x785d2c22
    1a1c:	22231111 	addi	v1,s1,4369
    1a20:	1c14171a 	0x1c14171a
    1a24:	553a1518 	0x553a1518
    1a28:	1d110d1f 	0x1d110d1f
    1a2c:	0d15591f 	jal	455647c <extend_mask+0x4550d50>
    1a30:	2d131592 	sltiu	s3,t0,5522
    1a34:	e1d2ceb9 	swc0	$18,-12615(t6)
    1a38:	42a4b7bf 	c0	0xa4b7bf
    1a3c:	953c4277 	lhu	gp,17015(t1)
    1a40:	344a378e 	ori	t2,v0,0x378e
    1a44:	9e144b9a 	0x9e144b9a
    1a48:	a1c9938a 	sb	t1,-27766(t6)
    1a4c:	b68f7a54 	0xb68f7a54
    1a50:	1574aeae 	bne	t3,s4,fffed50c <extend_mask+0xfffe7de0>
    1a54:	a8c68049 	swl	a2,-32695(a2)
    1a58:	4ea69f4e 	c3	0xa69f4e
    1a5c:	49352471 	0x49352471
    1a60:	7c58807f 	0x7c58807f
    1a64:	6a420917 	0x6a420917
    1a68:	14294a59 	bne	at,t1,143d0 <extend_mask+0xeca4>
    1a6c:	41343e49 	0x41343e49
    1a70:	3f5b6f62 	0x3f5b6f62
    1a74:	36463d3f 	ori	a2,s2,0x3d3f
    1a78:	3c321d16 	0x3c321d16
    1a7c:	191c2550 	0x191c2550
    1a80:	19171004 	0x19171004
    1a84:	0b160d16 	j	c583458 <extend_mask+0xc57dd2c>
    1a88:	561d1232 	0x561d1232
    1a8c:	190877a3 	0x190877a3
    1a90:	a0b9a19e 	sb	t9,-24162(a1)
    1a94:	bdb38477 	0xbdb38477
    1a98:	742781ab 	jalx	9e06ac <extend_mask+0x9daf80>
    1a9c:	89b4ae13 	lwl	s4,-20973(t5)
    1aa0:	75c2c0c1 	jalx	70b0304 <extend_mask+0x70aabd8>
    1aa4:	ae9f77a5 	sw	ra,30629(s4)
    1aa8:	b1a82c79 	0xb1a82c79
    1aac:	a1b9c8c2 	sb	t9,-14142(t5)
    1ab0:	a75252a2 	sh	s2,21154(k0)
    1ab4:	a24a3337 	sb	t2,13111(s2)
    1ab8:	0f639c76 	jal	d8e71d8 <extend_mask+0xd8e1aac>
    1abc:	7fb1a348 	0x7fb1a348
    1ac0:	090d0a05 	j	4342814 <extend_mask+0x433d0e8>
    1ac4:	25474d46 	addiu	a3,t2,19782
    1ac8:	6d8d7b85 	0x6d8d7b85
    1acc:	8975494f 	lwl	s5,18767(t3)
    1ad0:	45535052 	0x45535052
    1ad4:	432f1c1a 	c0	0x12f1c1a
    1ad8:	0d4d1712 	jal	5345c48 <extend_mask+0x534051c>
    1adc:	0f101022 	jal	c404088 <extend_mask+0xc3fe95c>
    1ae0:	2115550e 	addi	s5,t0,21774
    1ae4:	00252c00 	0x252c00
    1ae8:	b3e1bbce 	0xb3e1bbce
    1aec:	d18d954e 	0xd18d954e
    1af0:	393f4881 	xori	ra,t1,0x4881
    1af4:	9fa46d61 	0x9fa46d61
    1af8:	731f245b 	0x731f245b
    1afc:	195dd76c 	0x195dd76c
    1b00:	64b4b578 	0x64b4b578
    1b04:	4452a8c3 	0x4452a8c3
    1b08:	c295b9b3 	lwc0	$21,-17997(s4)
    1b0c:	8348834b 	lb	t0,-31925(k0)
    1b10:	372e203d 	ori	t6,t9,0x203d
    1b14:	909681c4 	lbu	s6,-32316(a0)
    1b18:	b6795751 	0xb6795751
    1b1c:	06051426 	0x6051426
    1b20:	386499ac 	xori	a0,v1,0x99ac
    1b24:	ccccc6d4 	lwc3	$12,-14636(a2)
    1b28:	56204133 	0x56204133
    1b2c:	3b393b34 	xori	t9,t9,0x3b34
    1b30:	332c2b1e 	andi	t4,t9,0x2b1e
    1b34:	20143246 	addi	s4,zero,12870
    1b38:	31131a28 	andi	s3,t0,0x1a28
    1b3c:	45644b32 	0x45644b32
    1b40:	281264c0 	slti	s2,zero,25792
    1b44:	68646976 	0x68646976
    1b48:	83812a4c 	lb	at,10828(gp)
    1b4c:	23497c92 	addi	t1,k0,31890
    1b50:	68011c4b 	0x68011c4b
    1b54:	62c5a6b1 	0x62c5a6b1
    1b58:	d4c9afae 	0xd4c9afae
    1b5c:	c08e6321 	lwc0	$14,25377(a0)
    1b60:	57d8bdc1 	0x57d8bdc1
    1b64:	d1b9bc7e 	0xd1b9bc7e
    1b68:	7e5c563a 	0x7e5c563a
    1b6c:	231c74ae 	addi	gp,t8,29870
    1b70:	b5bcb4a6 	0xb5bcb4a6
    1b74:	88561001 	lwl	s6,4097(v0)
    1b78:	0006173f 	0x6173f
    1b7c:	6788aec0 	0x6788aec0
    1b80:	9bc6ad23 	lwr	a2,-21213(s8)
    1b84:	102a3328 	beq	at,t2,e828 <extend_mask+0x90fc>
    1b88:	263a2b2c 	addiu	k0,s1,11052
    1b8c:	1a1d190e 	0x1a1d190e
    1b90:	254b233b 	addiu	t3,t2,9019
    1b94:	133b3d65 	beq	t9,k1,1112c <extend_mask+0xba00>
    1b98:	37514f1d 	ori	s1,k0,0x4f1d
    1b9c:	30566d51 	andi	s6,v0,0x6d51
    1ba0:	42bb8fb6 	c0	0xbb8fb6
    1ba4:	8e0d0227 	lw	t5,551(s0)
    1ba8:	4e90691c 	c3	0x90691c
    1bac:	22541b5d 	addi	s4,s2,7005
    1bb0:	fda9f25d 	0xfda9f25d
    1bb4:	d8a19bc2 	0xd8a19bc2
    1bb8:	e78b075b 	swc1	$f11,1883(gp)
    1bbc:	cdcce2b8 	lwc3	$12,-7496(t6)
    1bc0:	dfeabe70 	0xdfeabe70
    1bc4:	5c2b2514 	0x5c2b2514
    1bc8:	84c2c6cb 	lh	v0,-14645(a2)
    1bcc:	ae8a3a07 	sw	t2,14855(s4)
    1bd0:	001a666e 	0x1a666e
    1bd4:	5b797884 	0x5b797884
    1bd8:	6daba7a5 	0x6daba7a5
    1bdc:	d9b0524d 	0xd9b0524d
    1be0:	44331626 	0x44331626
    1be4:	2c2c0516 	sltiu	t4,at,1302
    1be8:	1d1d0763 	0x1d1d0763
    1bec:	1e8b6535 	0x1e8b6535
    1bf0:	3c64874c 	0x3c64874c
    1bf4:	40202433 	0x40202433
    1bf8:	36576f93 	ori	s7,s2,0x6f93
    1bfc:	f0baaccd 	0xf0baaccd
    1c00:	2e002e15 	sltiu	zero,s0,11797
    1c04:	0b3e252d 	j	cf894b4 <extend_mask+0xcf83d88>
    1c08:	1a002ec2 	blez	s0,d714 <extend_mask+0x7fe8>
    1c0c:	ba3cef62 	swr	gp,-4254(s1)
    1c10:	8cc07913 	lw	zero,30995(a2)
    1c14:	b2a45eb7 	0xb2a45eb7
    1c18:	4357c2c2 	c0	0x157c2c2
    1c1c:	c4be5322 	lwc1	$f30,21282(a1)
    1c20:	203855ab 	addi	t8,at,21931
    1c24:	b6afce99 	0xb6afce99
    1c28:	3d010640 	0x3d010640
    1c2c:	a1c6b3ac 	sb	a2,-19540(t6)
    1c30:	b3aa70a2 	0xb3aa70a2
    1c34:	ddbfb9b5 	0xddbfb9b5
    1c38:	885a5639 	lwl	k0,22073(v0)
    1c3c:	1d1b2c2b 	0x1d1b2c2b
    1c40:	35140c12 	ori	s4,t0,0xc12
    1c44:	2160389c 	addi	zero,t3,14492
    1c48:	8b843d2f 	lwl	a0,15663(gp)
    1c4c:	75716524 	jalx	5c59490 <extend_mask+0x5c53d64>
    1c50:	1b053fa6 	0x1b053fa6
    1c54:	7b15a3cf 	0x7b15a3cf
    1c58:	e0b481d4 	swc0	$20,-32300(a1)
    1c5c:	9fc1cd2a 	0x9fc1cd2a
    1c60:	1433171b 	bne	at,s3,78d0 <extend_mask+0x21a4>
    1c64:	1130f034 	beq	t1,s0,ffffdd38 <extend_mask+0xffff860c>
    1c68:	b1b19540 	0xb1b19540
    1c6c:	018cbab4 	0x18cbab4
    1c70:	ccd3d565 	lwc3	$19,-10907(a2)
    1c74:	bbc6963a 	swr	a2,-27078(s8)
    1c78:	70815637 	0x70815637
    1c7c:	3f4d4a66 	0x3f4d4a66
    1c80:	929a6335 	lbu	k0,25397(s4)
    1c84:	301c57b3 	andi	gp,zero,0x57b3
    1c88:	b1afb2af 	0xb1afb2af
    1c8c:	74869db2 	jalx	21a76c8 <extend_mask+0x21a1f9c>
    1c90:	c1b4947d 	lwc0	$20,-27523(t5)
    1c94:	551c1412 	0x551c1412
    1c98:	3a3b1f2b 	xori	k1,s1,0x1f2b
    1c9c:	0a47b192 	j	91ec648 <extend_mask+0x91e6f1c>
    1ca0:	2d9976b8 	sltiu	t9,t4,30392
    1ca4:	8d331b38 	lw	s3,6968(t1)
    1ca8:	4d2d1e48 	0x4d2d1e48
    1cac:	919f5a58 	lbu	ra,23128(t4)
    1cb0:	a88eb7d4 	swl	t6,-18476(a0)
    1cb4:	56adccc9 	0x56adccc9
    1cb8:	84002131 	lh	zero,8497(zero)
    1cbc:	1509007d 	bne	t0,t1,1eb4 <hana_bmp+0x97c>
    1cc0:	be3d51b1 	0xbe3d51b1
    1cc4:	5f48170f 	0x5f48170f
    1cc8:	60add6b4 	0x60add6b4
    1ccc:	e5dabab9 	swc1	$f26,-17735(t6)
    1cd0:	df4892a0 	0xdf4892a0
    1cd4:	81563e4e 	lb	s6,15950(t2)
    1cd8:	425d6f71 	c0	0x5d6f71
    1cdc:	5a49524a 	0x5a49524a
    1ce0:	034296bf 	0x34296bf
    1ce4:	b568785a 	0xb568785a
    1ce8:	74727dab 	jalx	1c9f6ac <extend_mask+0x1c99f80>
    1cec:	7a844215 	0x7a844215
    1cf0:	191b3b3c 	0x191b3b3c
    1cf4:	25210d1a 	addiu	at,t1,3354
    1cf8:	c9bf34aa 	lwc2	$31,13482(t5)
    1cfc:	89bdd9d0 	lwl	sp,-9776(t5)
    1d00:	981a6f28 	lwr	k0,28456(zero)
    1d04:	0a94a9a2 	j	a52a688 <extend_mask+0xa524f5c>
    1d08:	9986cccb 	lwr	a2,-13109(t4)
    1d0c:	ab923d65 	swl	s2,15717(gp)
    1d10:	ca8e0009 	lwc2	$14,9(s4)
    1d14:	2c36130c 	sltiu	s6,at,4876
    1d18:	0024a752 	0x24a752
    1d1c:	1cd97b66 	0x1cd97b66
    1d20:	0c351700 	jal	d45c00 <extend_mask+0xd404d4>
    1d24:	2f00c3c2 	sltiu	zero,t8,-15422
    1d28:	bcacb0ae 	0xbcacb0ae
    1d2c:	3d659d88 	0x3d659d88
    1d30:	6d282c7d 	0x6d282c7d
    1d34:	9293804d 	lbu	s3,-32691(s4)
    1d38:	61715336 	0x61715336
    1d3c:	acbea59f 	sw	s8,-23137(a1)
    1d40:	bf55413f 	0xbf55413f
    1d44:	212d3f3c 	addi	t5,t1,16188
    1d48:	21151310 	addi	s5,t0,4880
    1d4c:	3f3d2233 	0x3f3d2233
    1d50:	39302489 	xori	s0,t1,0x2489
    1d54:	187a5ae6 	0x187a5ae6
    1d58:	c2d2be50 	lwc0	$18,-16816(s6)
    1d5c:	2a331295 	slti	s3,s1,4757
    1d60:	d39f277b 	0xd39f277b
    1d64:	ac603f09 	sw	zero,16137(v1)
    1d68:	4a2a94e0 	c2	0x2a94e0
    1d6c:	77003534 	jalx	c00d4d0 <extend_mask+0xc007da4>
    1d70:	1e002bbd 	bgtz	s0,cc68 <extend_mask+0x753c>
    1d74:	755e259f 	jalx	578967c <extend_mask+0x5783f50>
    1d78:	9dd66716 	0x9dd66716
    1d7c:	1e0d3a3c 	0x1e0d3a3c
    1d80:	2c4364a8 	sltiu	v1,v0,25768
    1d84:	a3b3368b 	sb	s3,13963(sp)
    1d88:	dbc17144 	0xdbc17144
    1d8c:	8c8f8da5 	lw	t7,-29275(a0)
    1d90:	797e5792 	0x797e5792
    1d94:	7c5fa6a7 	0x7c5fa6a7
    1d98:	829cbd6c 	lb	gp,-17044(s4)
    1d9c:	2a2b2911 	slti	t3,s1,10513
    1da0:	281e1d17 	slti	s8,zero,7447
    1da4:	13123d3c 	beq	t8,s2,11298 <extend_mask+0xbb6c>
    1da8:	0d235e7a 	jal	48d79e8 <extend_mask+0x48d22bc>
    1dac:	3275cdac 	andi	s5,s3,0xcdac
    1db0:	936cddba 	lbu	t4,-8774(k1)
    1db4:	b7892625 	0xb7892625
    1db8:	1f6ad09c 	0x1f6ad09c
    1dbc:	12afe58b 	beq	s5,t7,ffffb3ec <extend_mask+0xffff5cc0>
    1dc0:	00697263 	0x697263
    1dc4:	0c928da2 	jal	24a3688 <extend_mask+0x249df5c>
    1dc8:	342a003e 	ori	t2,at,0x3e
    1dcc:	b1ba885e 	0xb1ba885e
    1dd0:	207b92d2 	addi	k1,v1,-27950
    1dd4:	c16ca891 	lwc0	$12,-22383(t3)
    1dd8:	08c1243d 	j	30490f4 <extend_mask+0x30439c8>
    1ddc:	453da69c 	0x453da69c
    1de0:	cb7fc3e4 	lwc2	$31,-15388(k1)
    1de4:	92a98d5a 	lbu	t1,-29350(s5)
    1de8:	886d5f62 	lwl	t5,24418(v1)
    1dec:	5a998f56 	0x5a998f56
    1df0:	52616063 	0x52616063
    1df4:	7f84262e 	0x7f84262e
    1df8:	241e1823 	addiu	s8,zero,6179
    1dfc:	17191b0c 	bne	t8,t9,8a30 <extend_mask+0x3304>
    1e00:	101e0e00 	beq	zero,s8,5604 <zigzag_index+0xd8>
    1e04:	04167299 	0x4167299
    1e08:	9eadbcbc 	0x9eadbcbc
    1e0c:	2f70f86d 	sltiu	s0,k1,-1939
    1e10:	cd2e224f 	lwc3	$14,8783(t1)
    1e14:	b56a2cb6 	0xb56a2cb6
    1e18:	c98d0096 	lwc2	$13,150(t4)
    1e1c:	ac7eaaa0 	sw	s8,-21856(v1)
    1e20:	867a6b37 	lh	k0,27447(s3)
    1e24:	cc6d3e98 	lwc3	$13,16024(v1)
    1e28:	eb5c2686 	swc2	$28,9862(k0)
    1e2c:	65b7d994 	0x65b7d994
    1e30:	989f73bf 	lwr	ra,29631(a0)
    1e34:	b09b905f 	0xb09b905f
    1e38:	3e34ba92 	0x3e34ba92
    1e3c:	d8b2fb60 	0xd8b2fb60
    1e40:	497e8a38 	0x497e8a38
    1e44:	61376778 	0x61376778
    1e48:	7e493022 	0x7e493022
    1e4c:	39308d8a 	xori	s0,t1,0x8d8a
    1e50:	39212223 	xori	at,t1,0x2223
    1e54:	17161f1c 	bne	t8,s6,9ac8 <extend_mask+0x439c>
    1e58:	1417211e 	bne	zero,s7,a2d4 <extend_mask+0x4ba8>
    1e5c:	2e01131d 	sltiu	at,s0,4893
    1e60:	1b7ca4ac 	0x1b7ca4ac
    1e64:	cadab064 	lwc2	$26,-20380(s6)
    1e68:	186ebd32 	0x186ebd32
    1e6c:	2c25631d 	sltiu	a1,at,25373
    1e70:	1f62a430 	0x1f62a430
    1e74:	47c599ca 	c1	0x1c599ca
    1e78:	a79cc4c0 	sh	gp,-15168(gp)
    1e7c:	3880d9af 	xori	zero,a0,0xd9af
    1e80:	7d99316a 	0x7d99316a
    1e84:	0f80efb6 	jal	e03bed8 <extend_mask+0xe0367ac>
    1e88:	c3ab5c25 	lwc0	$11,23589(sp)
    1e8c:	6e567694 	0x6e567694
    1e90:	6237221e 	0x6237221e
    1e94:	1530e8d1 	bne	t1,s0,ffffc1dc <extend_mask+0xffff6ab0>
    1e98:	6a576bac 	0x6a576bac
    1e9c:	1e475658 	0x1e475658
    1ea0:	483e3142 	0x483e3142
    1ea4:	2e405044 	sltiu	zero,s2,20548
    1ea8:	4c6f2d2a 	0x4c6f2d2a
    1eac:	23221c1a 	addi	v0,t9,7194
    1eb0:	312b161d 	andi	t3,t1,0x161d
    1eb4:	20209029 	addi	zero,at,-28631
    1eb8:	00150200 	sll	zero,s5,0x8
    1ebc:	58a0a7c0 	0x58a0a7c0
    1ec0:	a85700a9 	swl	s7,169(v0)
    1ec4:	eb322316 	swc2	$18,8982(t9)
    1ec8:	0c620017 	jal	188005c <extend_mask+0x187a930>
    1ecc:	3d004735 	0x3d004735
    1ed0:	f090ceb2 	0xf090ceb2
    1ed4:	bce1c8a7 	0xbce1c8a7
    1ed8:	cedf760c 	lwc3	$31,30220(s6)
    1edc:	4b6d2451 	c2	0x16d2451
    1ee0:	e1c290b6 	swc0	$2,-28490(t6)
    1ee4:	49202070 	0x49202070
    1ee8:	a75d322c 	sh	sp,12844(k0)
    1eec:	1e11332b 	0x1e11332b
    1ef0:	5d757149 	0x5d757149
    1ef4:	d2a26357 	0xd2a26357
    1ef8:	57412222 	0x57412222
    1efc:	16152348 	bne	s0,s5,ac20 <extend_mask+0x54f4>
    1f00:	67633a38 	0x67633a38
    1f04:	2f2d281a 	sltiu	t5,t9,10266
    1f08:	1e223e39 	0x1e223e39
    1f0c:	20251e1e 	addi	a1,at,7710
    1f10:	b7700008 	0xb7700008
    1f14:	0b1a0077 	j	c6801dc <extend_mask+0xc67aab0>
    1f18:	cd94d200 	lwc3	$20,-11776(t4)
    1f1c:	3ce1533a 	0x3ce1533a
    1f20:	231e0625 	addi	s8,t8,1573
    1f24:	3d07691f 	0x3d07691f
    1f28:	240759e5 	addiu	a3,zero,23013
    1f2c:	abacc3db 	swl	t4,-15397(sp)
    1f30:	d3afb1db 	0xd3afb1db
    1f34:	904a2f6a 	lbu	t2,12138(v0)
    1f38:	2532c2bc 	addiu	s2,t1,-15684
    1f3c:	64531940 	0x64531940
    1f40:	31bbaf84 	andi	k1,t5,0xaf84
    1f44:	192b1920 	0x192b1920
    1f48:	301e4a6c 	andi	s8,zero,0x4a6c
    1f4c:	5a8bd2c5 	0x5a8bd2c5
    1f50:	836a4f2a 	lb	t2,20266(k1)
    1f54:	56402324 	0x56402324
    1f58:	26445d57 	addiu	a0,s2,23895
    1f5c:	67365729 	0x67365729
    1f60:	2915181d 	slti	s5,t0,6173
    1f64:	3d3a2637 	0x3d3a2637
    1f68:	141e914c 	bne	zero,s8,fffe649c <extend_mask+0xfffe0d70>
    1f6c:	050a0223 	0x50a0223
    1f70:	0091bfd7 	0x91bfd7
    1f74:	3b0596b3 	xori	a1,t8,0x96b3
    1f78:	892e2c18 	lwl	t6,11288(t1)
    1f7c:	0918463e 	j	46118f8 <extend_mask+0x460c1cc>
    1f80:	150b418d 	bne	t0,t3,125b8 <extend_mask+0xce8c>
    1f84:	577fad8b 	0x577fad8b
    1f88:	a96cd4b5 	swl	t4,-11083(t3)
    1f8c:	96c2ca9a 	lhu	v0,-13670(s6)
    1f90:	523a503c 	0x523a503c
    1f94:	598d5400 	0x598d5400
    1f98:	68681a52 	0x68681a52
    1f9c:	a1550c10 	sb	s5,3088(t2)
    1fa0:	3c4c4802 	0x3c4c4802
    1fa4:	527c61a2 	0x527c61a2
    1fa8:	f1b97491 	0xf1b97491
    1fac:	2a315844 	slti	s1,s1,22596
    1fb0:	2a141b41 	slti	s4,s0,6977
    1fb4:	55644f5d 	0x55644f5d
    1fb8:	3a4c1e16 	xori	t4,s2,0x1e16
    1fbc:	151c3d3a 	bne	t0,gp,114a8 <extend_mask+0xbd7c>
    1fc0:	2541201c 	addiu	at,t2,8220
    1fc4:	63280509 	0x63280509
    1fc8:	0b172adc 	j	c5cab70 <extend_mask+0xc5c5444>
    1fcc:	c4ff001a 	lwc1	$f31,26(a3)
    1fd0:	e2a4826e 	swc0	$4,-32146(s5)
    1fd4:	1d1f001f 	0x1d1f001f
    1fd8:	46292527 	c1	0x292527
    1fdc:	667e9cd1 	0x667e9cd1
    1fe0:	9ed7f9e2 	0x9ed7f9e2
    1fe4:	dec3e8e2 	0xdec3e8e2
    1fe8:	caa35d3f 	lwc2	$3,23871(s5)
    1fec:	5433839d 	0x5433839d
    1ff0:	008b4b72 	0x8b4b72
    1ff4:	3b0b7c5e 	xori	t3,t8,0x7c5e
    1ff8:	1c456e61 	0x1c456e61
    1ffc:	2f2c9168 	sltiu	t4,t9,-28312
    2000:	6327b5bc 	0x6327b5bc
    2004:	b9b73612 	swr	s7,13842(t5)
    2008:	272e432d 	addiu	t6,t9,17197
    200c:	0767a386 	0x767a386
    2010:	6d4d4b28 	0x6d4d4b28
    2014:	1a161823 	0x1a161823
    2018:	3e402532 	0x3e402532
    201c:	201f8768 	addi	ra,zero,-30872
    2020:	0a021414 	j	8085050 <extend_mask+0x807f924>
    2024:	1a001e0e 	blez	s0,9860 <extend_mask+0x4134>
    2028:	154f886c 	bne	t2,t7,fffe41dc <extend_mask+0xfffdeab0>
    202c:	65263816 	0x65263816
    2030:	191f413d 	0x191f413d
    2034:	0e163b77 	jal	858eddc <extend_mask+0x85896b0>
    2038:	3a52624a 	xori	s2,s2,0x624a
    203c:	299dc848 	slti	sp,t4,-14264
    2040:	52da9da6 	0x52da9da6
    2044:	79527111 	0x79527111
    2048:	9ed1927f 	0x9ed1927f
    204c:	3e7e3807 	0x3e7e3807
    2050:	46626149 	c1	0x626149
    2054:	496204a6 	0x496204a6
    2058:	6a752a25 	0x6a752a25
    205c:	01b6cbb2 	0x1b6cbb2
    2060:	3c1e192d 	lui	s8,0x192d
    2064:	37291640 	ori	t1,t9,0x1640
    2068:	b7c5b461 	0xb7c5b461
    206c:	42272215 	c0	0x272215
    2070:	16283844 	bne	s1,t0,10184 <extend_mask+0xaa58>
    2074:	2c1f1f21 	sltiu	ra,zero,7969
    2078:	55203e00 	0x55203e00
    207c:	1411232c 	bne	zero,s1,ad30 <extend_mask+0x5604>
    2080:	13170093 	beq	t8,s7,22d0 <hana_bmp+0xd98>
    2084:	d049550e 	0xd049550e
    2088:	46092425 	c1	0x92425
    208c:	3a4e172f 	xori	t6,s2,0x172f
    2090:	040b1403 	0x40b1403
    2094:	3e411292 	0x3e411292
    2098:	c5866fc0 	lwc1	$f6,28608(t4)
    209c:	dfbaa07f 	0xdfbaa07f
    20a0:	7d3cabd2 	0x7d3cabd2
    20a4:	d4cfa8ae 	0xd4cfa8ae
    20a8:	90bf0094 	lbu	ra,148(a1)
    20ac:	7823421d 	0x7823421d
    20b0:	4fb65f47 	c3	0x1b65f47
    20b4:	195e7247 	0x195e7247
    20b8:	a6bf9360 	sh	ra,-27808(s5)
    20bc:	18142f1f 	0x18142f1f
    20c0:	272870a8 	addiu	t0,t9,28840
    20c4:	d1984d27 	0xd1984d27
    20c8:	110c1d33 	beq	t0,t4,9598 <extend_mask+0x3e6c>
    20cc:	414a2c0f 	0x414a2c0f
    20d0:	07155142 	0x7155142
    20d4:	0c28000d 	jal	a00034 <extend_mask+0x9fa908>
    20d8:	5a181323 	0x5a181323
    20dc:	01952f5c 	0x1952f5c
    20e0:	5b07440a 	0x5b07440a
    20e4:	2c1c1c5f 	sltiu	gp,zero,7263
    20e8:	00a06a0e 	0xa06a0e
    20ec:	1d0c452b 	0x1d0c452b
    20f0:	15f5bf7a 	bne	t7,s5,ffff1edc <extend_mask+0xfffec7b0>
    20f4:	c3e5d1cf 	lwc0	$5,-11825(ra)
    20f8:	9b618afe 	lwr	at,-29954(k1)
    20fc:	af76f7d9 	sw	s6,-2087(k1)
    2100:	d9b75e6b 	0xd9b75e6b
    2104:	7342668a 	0x7342668a
    2108:	0d109c80 	jal	4427200 <extend_mask+0x4421ad4>
    210c:	2f160f2c 	sltiu	s6,t8,3884
    2110:	a28a9ba5 	sb	t2,-25691(s4)
    2114:	a7ac5803 	sh	t4,22531(sp)
    2118:	231f8786 	addi	ra,t8,-30842
    211c:	b49bc0be 	0xb49bc0be
    2120:	a5350911 	sh	s5,2321(t1)
    2124:	1c354b4e 	0x1c354b4e
    2128:	46371e26 	c1	0x371e26
    212c:	39710721 	xori	s1,t3,0x721
    2130:	0a1f4517 	j	87d145c <extend_mask+0x87cbd30>
    2134:	2a0d1c08 	slti	t5,s0,7176
    2138:	01371b3b 	0x1371b3b
    213c:	3d1b2921 	0x3d1b2921
    2140:	0d252884 	jal	494a210 <extend_mask+0x4944ae4>
    2144:	8f081610 	lw	t0,5648(t8)
    2148:	2c585448 	sltiu	t8,v0,21576
    214c:	98a8acc1 	lwr	t0,-21311(a1)
    2150:	93c9b265 	lbu	t1,-19867(s8)
    2154:	00e0e7fa 	0xe0e7fa
    2158:	3003c1e9 	andi	v1,zero,0xc1e9
    215c:	3c4e219f 	0x3c4e219f
    2160:	8fd40032 	lw	s4,50(s8)
    2164:	00090b4b 	0x90b4b
    2168:	274143c6 	addiu	at,k0,17350
    216c:	c8913852 	lwc2	$17,14418(a0)
    2170:	4f143253 	c3	0x1143253
    2174:	27693346 	addiu	t1,k1,13126
    2178:	b9d2d0bd 	swr	s2,-12099(t6)
    217c:	390f1929 	xori	t7,t0,0x1929
    2180:	3b485070 	xori	t0,k0,0x5070
    2184:	1f244072 	0x1f244072
    2188:	61001858 	0x61001858
    218c:	951c0f2e 	lhu	gp,3886(t0)
    2190:	1009363e 	beq	zero,t1,fa8c <extend_mask+0xa360>
    2194:	01006e3f 	0x1006e3f
    2198:	101b2138 	beq	zero,k1,a67c <extend_mask+0x4f50>
    219c:	1711002b 	bne	t8,s1,224c <hana_bmp+0xd14>
    21a0:	2e423e0c 	sltiu	v0,s2,15884
    21a4:	7fa7bd39 	0x7fa7bd39
    21a8:	fbe37a02 	0xfbe37a02
    21ac:	00074436 	0x74436
    21b0:	5f50f7a5 	0x5f50f7a5
    21b4:	d4406f3e 	0xd4406f3e
    21b8:	db327f2b 	0xdb327f2b
    21bc:	53382411 	0x53382411
    21c0:	31427b6f 	andi	v0,t2,0x7b6f
    21c4:	79917faf 	0x79917faf
    21c8:	bb54605f 	swr	s4,24671(k0)
    21cc:	0f213882 	jal	c84e208 <extend_mask+0xc848adc>
    21d0:	82cea8bb 	lb	t6,-22341(s6)
    21d4:	ceb3902d 	lwc3	$19,-28627(s5)
    21d8:	2b1b184b 	slti	k1,t8,6219
    21dc:	6e7a231d 	0x6e7a231d
    21e0:	5e494b86 	0x5e494b86
    21e4:	0d22504a 	jal	4894128 <extend_mask+0x488e9fc>
    21e8:	0b796f2d 	j	de5bcb4 <extend_mask+0xde56588>
    21ec:	331d22be 	andi	sp,t8,0x22be
    21f0:	d57a1119 	0xd57a1119
    21f4:	190b6e73 	0x190b6e73
    21f8:	212c420a 	addi	t4,t1,16906
    21fc:	2b054273 	slti	a1,t8,17011
    2200:	85394af4 	lh	t9,19188(t1)
    2204:	82002310 	lb	zero,8976(s0)
    2208:	14592a3c 	bne	v0,t9,cafc <extend_mask+0x73d0>
    220c:	e6db4ec5 	swc1	$f27,20165(s6)
    2210:	eb8b932e 	swc2	$11,-27858(gp)
    2214:	0a7a756f 	j	9e9d5bc <extend_mask+0x9e97e90>
    2218:	5a363843 	0x5a363843
    221c:	523a108b 	0x523a108b
    2220:	919ed267 	lbu	s8,-11673(t4)
    2224:	12253023 	beq	s1,a1,e2b4 <extend_mask+0x8b88>
    2228:	20250921 	addi	a1,at,2337
    222c:	2378a1af 	addi	t8,k1,-24145
    2230:	79442e0e 	0x79442e0e
    2234:	1638677a 	bne	s1,t8,1c020 <extend_mask+0x168f4>
    2238:	475c5753 	c1	0x15c5753
    223c:	005c7f14 	0x5c7f14
    2240:	2c0f767c 	sltiu	t7,zero,30332
    2244:	79502f53 	0x79502f53
    2248:	958cb641 	lhu	t4,-18879(t4)
    224c:	111a3141 	beq	t0,k0,e754 <extend_mask+0x9028>
    2250:	66ba7416 	0x66ba7416
    2254:	820d003f 	lb	t5,63(s0)
    2258:	28371865 	slti	s7,at,6245
    225c:	0a1c8202 	j	8720808 <extend_mask+0x871b0dc>
    2260:	152e082f 	bne	t1,t6,4320 <hana_bmp+0x2de8>
    2264:	3a7afb13 	xori	k0,s3,0xfb13
    2268:	6ad0b4d4 	0x6ad0b4d4
    226c:	6506375c 	0x6506375c
    2270:	3e7d4159 	0x3e7d4159
    2274:	27221e02 	addiu	v0,t9,7682
    2278:	216f5677 	addi	t7,t3,22135
    227c:	d500a35d 	0xd500a35d
    2280:	1119231b 	beq	t0,t9,aef0 <extend_mask+0x57c4>
    2284:	1b25233f 	0x1b25233f
    2288:	69aa7d32 	0x69aa7d32
    228c:	1802102b 	0x1802102b
    2290:	524e6261 	0x524e6261
    2294:	58121b00 	0x58121b00
    2298:	6f7c1722 	0x6f7c1722
    229c:	8fd79cb9 	lw	s7,-25415(s8)
    22a0:	9f7c6e5c 	0x9f7c6e5c
    22a4:	a140160f 	sb	zero,5647(t2)
    22a8:	3b42414e 	xori	v0,k0,0x414e
    22ac:	3923162a 	xori	v1,t1,0x162a
    22b0:	0c580017 	jal	160005c <extend_mask+0x15fa930>
    22b4:	2177532b 	addi	s7,t3,21291
    22b8:	00122036 	0x122036
    22bc:	16323703 	bne	s1,s2,fecc <extend_mask+0xa7a0>
    22c0:	259d4000 	addiu	sp,t4,16384
    22c4:	0b921642 	j	e485908 <extend_mask+0xe4801dc>
    22c8:	63445c4e 	0x63445c4e
    22cc:	46a71a18 	c1	0xa71a18
    22d0:	070c2c3c 	0x70c2c3c
    22d4:	05579034 	0x5579034
    22d8:	c2aa5519 	lwc0	$10,21785(s5)
    22dc:	1c1e0f19 	0x1c1e0f19
    22e0:	1615357c 	bne	s0,s5,f8d4 <extend_mask+0xa1a8>
    22e4:	7e52360c 	0x7e52360c
    22e8:	1c24383d 	0x1c24383d
    22ec:	676b870d 	0x676b870d
    22f0:	1929188e 	0x1929188e
    22f4:	2d1c13f3 	sltiu	gp,t0,5107
    22f8:	cabaaaeb 	lwc2	$26,-21781(s5)
    22fc:	606f8c50 	0x606f8c50
    2300:	2c082315 	sltiu	t0,zero,8981
    2304:	64140f09 	0x64140f09
    2308:	000b2500 	sll	a0,t3,0x14
    230c:	1f01678e 	0x1f01678e
    2310:	64000c56 	0x64000c56
    2314:	28683e0c 	slti	t0,v1,15884
    2318:	14303233 	bne	at,s0,ebe8 <extend_mask+0x94bc>
    231c:	13358e13 	beq	t9,s5,fffe5b6c <extend_mask+0xfffe0440>
    2320:	3c546443 	0x3c546443
    2324:	3f5d5802 	0x3f5d5802
    2328:	2916161c 	slti	s6,t0,5660
    232c:	2a32282c 	slti	s2,s1,10284
    2330:	2356788b 	addi	s6,k0,30859
    2334:	77391214 	jalx	ce44850 <extend_mask+0xce3f124>
    2338:	08021216 	j	84858 <extend_mask+0x7f12c>
    233c:	07263343 	0x7263343
    2340:	3a3c5b26 	xori	gp,s1,0x5b26
    2344:	30476a72 	andi	a3,v0,0x6a72
    2348:	a8f84614 	swl	t8,17940(a3)
    234c:	29001338 	slti	zero,t0,4920
    2350:	6d30d1bd 	0x6d30d1bd
    2354:	9c79fbac 	0x9c79fbac
    2358:	ca758273 	lwc2	$21,-32141(s3)
    235c:	3e115110 	0x3e115110
    2360:	2bbfa543 	slti	ra,sp,-23229
    2364:	021230b2 	0x21230b2
    2368:	a072008f 	sb	s2,143(v1)
    236c:	ccbba92b 	lwc3	$27,-22229(a1)
    2370:	28242e23 	slti	a0,at,11811
    2374:	4e390611 	c3	0x390611
    2378:	56b41e67 	0x56b41e67
    237c:	1c177362 	0x1c177362
    2380:	3e14413a 	0x3e14413a
    2384:	37485652 	ori	t0,k0,0x5652
    2388:	51504117 	0x51504117
    238c:	395c9a40 	xori	gp,t2,0x9a40
    2390:	614e3a28 	0x614e3a28
    2394:	212b5b27 	addi	t3,t1,23335
    2398:	190a2049 	0x190a2049
    239c:	48213138 	0x48213138
    23a0:	0c004e8c 	jal	13a30 <extend_mask+0xe304>
    23a4:	be005c6c 	0xbe005c6c
    23a8:	120d8bc4 	beq	s0,t5,fffe52bc <extend_mask+0xfffdfb90>
    23ac:	c7d73a4a 	lwc1	$f23,14922(s8)
    23b0:	5dd7ad60 	0x5dd7ad60
    23b4:	3a555f15 	xori	s5,s2,0x5f15
    23b8:	31520066 	andi	s2,t2,0x66
    23bc:	dbbe9603 	0xdbbe9603
    23c0:	977f9e9d 	lhu	ra,-24931(k1)
    23c4:	00cdddad 	0xcdddad
    23c8:	bc672b30 	0xbc672b30
    23cc:	24485b7b 	addiu	t0,v0,23419
    23d0:	6b38095d 	0x6b38095d
    23d4:	02580e51 	0x2580e51
    23d8:	60493c14 	0x60493c14
    23dc:	3e2d3644 	0x3e2d3644
    23e0:	29391f18 	slti	t9,t1,7960
    23e4:	3c5a0834 	0x3c5a0834
    23e8:	5381c381 	0x5381c381
    23ec:	5d4e5883 	0x5d4e5883
    23f0:	6c68341d 	0x6c68341d
    23f4:	2f594d33 	sltiu	t9,k0,19763
    23f8:	34540103 	ori	s4,v0,0x103
    23fc:	5a468201 	0x5a468201
    2400:	8ac1cc85 	lwl	at,-13179(s6)
    2404:	9fafb8dc 	0x9fafb8dc
    2408:	4d67b6b9 	0x4d67b6b9
    240c:	d183682c 	0xd183682c
    2410:	302d1a4a 	andi	t5,at,0x1a4a
    2414:	160088df 	bnez	s0,fffe4794 <extend_mask+0xfffdf068>
    2418:	bbb4a244 	swr	s4,-23996(sp)
    241c:	e23931a9 	swc0	$25,12713(s1)
    2420:	98d6d6b2 	lwr	s6,-10574(a2)
    2424:	15322c3c 	bne	t1,s2,d518 <extend_mask+0x7dec>
    2428:	3551673d 	ori	s1,t2,0x673d
    242c:	26201632 	addiu	zero,s1,5682
    2430:	0243acb7 	0x243acb7
    2434:	b11b2317 	0xb11b2317
    2438:	0f0e7250 	jal	c39c940 <extend_mask+0xc397214>
    243c:	282d1c0c 	slti	t5,at,7180
    2440:	0956acaf 	j	55ab2bc <extend_mask+0x55a5b90>
    2444:	b7b77d57 	0xb7b77d57
    2448:	7d58825a 	0x7d58825a
    244c:	3b12416f 	xori	s2,t8,0x416f
    2450:	4e25223c 	c3	0x25223c
    2454:	01050c1e 	0x1050c1e
    2458:	0811177c 	j	445df0 <extend_mask+0x4406c4>
    245c:	c4dfd492 	lwc1	$f31,-11118(a2)
    2460:	79c6e6e6 	0x79c6e6e6
    2464:	a2d48343 	sb	s4,-31933(s6)
    2468:	23270e1e 	addi	a3,t9,3614
    246c:	11262bba 	beq	t1,a2,d358 <extend_mask+0x7c2c>
    2470:	c0b3dab8 	lwc0	$19,-9544(a1)
    2474:	d8f91e16 	0xd8f91e16
    2478:	052bada5 	0x52bada5
    247c:	9c003505 	0x9c003505
    2480:	3a344467 	xori	s4,s1,0x4467
    2484:	1f290e10 	0x1f290e10
    2488:	50200e63 	0x50200e63
    248c:	f8c35668 	0xf8c35668
    2490:	bcca5752 	0xbcca5752
    2494:	b68c5914 	0xb68c5914
    2498:	12122f30 	beq	s0,s2,e15c <extend_mask+0x8a30>
    249c:	6ce1b0c6 	0x6ce1b0c6
    24a0:	ce626175 	lwc3	$2,24949(s3)
    24a4:	5a47290e 	0x5a47290e
    24a8:	2a63351d 	slti	v1,s3,13597
    24ac:	1c290700 	0x1c290700
    24b0:	1f661a36 	0x1f661a36
    24b4:	09009cc5 	j	4027314 <extend_mask+0x4021be8>
    24b8:	e3c7cbc8 	swc0	$7,-13368(s8)
    24bc:	ebc28aca 	swc2	$2,-30006(s8)
    24c0:	9f0e2f20 	0x9f0e2f20
    24c4:	0034240c 	syscall	0xd090
    24c8:	6c96a4b3 	0x6c96a4b3
    24cc:	b3629dcf 	0xb3629dcf
    24d0:	010e0067 	0x10e0067
    24d4:	76989f00 	jalx	a627c00 <extend_mask+0xa6224d4>
    24d8:	2299604d 	addi	t9,s4,24653
    24dc:	7f120467 	0x7f120467
    24e0:	131a4e40 	beq	t8,k0,15de4 <extend_mask+0x106b8>
    24e4:	a1e53400 	sb	a1,13312(t7)
    24e8:	0044a982 	0x44a982
    24ec:	e748d0c5 	swc1	$f8,-12091(k0)
    24f0:	7c052e5d 	0x7c052e5d
    24f4:	2f475437 	sltiu	a3,k0,21559
    24f8:	e5cacc61 	swc1	$f10,-13215(t6)
    24fc:	71969a88 	0x71969a88
    2500:	8a847d34 	lwl	a0,32052(s4)
    2504:	49164b29 	0x49164b29
    2508:	1600594b 	bnez	s0,18a38 <extend_mask+0x1330c>
    250c:	38494c88 	xori	t1,v0,0x4c88
    2510:	71e2b586 	0x71e2b586
    2514:	b0d6d667 	0xb0d6d667
    2518:	9687d500 	lhu	a3,-11008(s4)
    251c:	2f12050f 	sltiu	s2,t8,1295
    2520:	35181c3f 	ori	t8,t0,0x1c3f
    2524:	7fc6c5ab 	0x7fc6c5ab
    2528:	a1dbcc1e 	sb	k1,-13282(t6)
    252c:	00755d6e 	0x755d6e
    2530:	9a34955e 	lwr	s4,-27298(s1)
    2534:	678f9100 	0x678f9100
    2538:	7f927d43 	0x7f927d43
    253c:	b3b46b00 	0xb3b46b00
    2540:	0959c300 	j	5670c00 <extend_mask+0x566b4d4>
    2544:	d19a8cc3 	0xd19a8cc3
    2548:	97eba902 	lhu	t3,-22270(ra)
    254c:	2d31479a 	sltiu	s1,t1,18330
    2550:	94b0bdda 	lhu	s0,-16934(a1)
    2554:	6b47bcc7 	0x6b47bcc7
    2558:	974b3550 	lhu	t3,13648(k0)
    255c:	4a324415 	c2	0x324415
    2560:	4438040b 	0x4438040b
    2564:	20214d87 	addi	at,at,19847
    2568:	c5c0b493 	lwc1	$f0,-19309(t6)
    256c:	cf5b938d 	lwc3	$27,-27763(k0)
    2570:	c3b66164 	lwc0	$22,24932(sp)
    2574:	93012c14 	lbu	at,11284(t8)
    2578:	0c0d0821 	jal	342084 <extend_mask+0x33c958>
    257c:	20191e52 	addi	t9,zero,7762
    2580:	7396d2c0 	0x7396d2c0
    2584:	dfd6002d 	0xdfd6002d
    2588:	c6b1b9dc 	lwc1	$f17,-17956(s5)
    258c:	575c8434 	0x575c8434
    2590:	a9ba9aa6 	swl	k0,-25946(t5)
    2594:	3a29582d 	xori	t1,s1,0x582d
    2598:	141857ff 	bne	zero,t8,18598 <extend_mask+0x12e6c>
    259c:	52a2bee6 	0x52a2bee6
    25a0:	d4c0c1f1 	0xd4c0c1f1
    25a4:	53132e3e 	0x53132e3e
    25a8:	81b4a8b6 	lb	s4,-22346(t5)
    25ac:	e4ed6507 	swc1	$f13,25863(a3)
    25b0:	aebfaba4 	sw	ra,-21596(s5)
    25b4:	6d430a3b 	0x6d430a3b
    25b8:	3c1b1f36 	lui	k1,0x1f36
    25bc:	0f0c551f 	jal	c31547c <extend_mask+0xc30fd50>
    25c0:	895cadca 	lwl	gp,-21046(t2)
    25c4:	c0bceb1a 	lwc0	$28,-5350(a1)
    25c8:	5bdd9fd0 	0x5bdd9fd0
    25cc:	b5180b13 	0xb5180b13
    25d0:	0c12040e 	jal	481038 <extend_mask+0x47b90c>
    25d4:	4119281a 	0x4119281a
    25d8:	6e4c866d 	0x6e4c866d
    25dc:	cbc0a0ab 	lwc2	$0,-24405(s8)
    25e0:	4300f7c7 	c0	0x100f7c7
    25e4:	d4f1a68d 	0xd4f1a68d
    25e8:	8d4a1cd9 	lw	t2,7385(t2)
    25ec:	cebf0b40 	lwc3	$31,2880(s5)
    25f0:	3067643c 	andi	a3,v1,0x643c
    25f4:	3ce67b31 	0x3ce67b31
    25f8:	837aaed7 	lb	k0,-20777(k1)
    25fc:	00776800 	0x776800
    2600:	6b88575c 	0x6b88575c
    2604:	74824f62 	jalx	2093d88 <extend_mask+0x208e65c>
    2608:	f982cfd5 	0xf982cfd5
    260c:	a0000013 	sb	zero,19(zero)
    2610:	213a4d29 	addi	k0,t1,19753
    2614:	273f1112 	addiu	ra,t9,4370
    2618:	57487859 	0x57487859
    261c:	4adeddaf 	c2	0xdeddaf
    2620:	b6d3dfab 	0xb6d3dfab
    2624:	e1c18808 	swc0	$1,-30712(t6)
    2628:	0c0b0f00 	jal	2c3c00 <extend_mask+0x2be4d4>
    262c:	0d015219 	jal	4054864 <extend_mask+0x404f138>
    2630:	222daf50 	addi	t5,s1,-20656
    2634:	9b3ea3a2 	lwr	s8,-23646(t9)
    2638:	85008dac 	lh	zero,-29268(t0)
    263c:	c0c84792 	lwc0	$8,18322(a2)
    2640:	f8c38cb5 	0xf8c38cb5
    2644:	f09dd8d3 	0xf09dd8d3
    2648:	02557159 	0x2557159
    264c:	1aa0e0a8 	blez	s5,ffffa8f0 <extend_mask+0xffff51c4>
    2650:	996151c1 	lwr	at,20929(t3)
    2654:	2ac903d1 	slti	t1,s6,977
    2658:	be5a4781 	0xbe5a4781
    265c:	593f3f6a 	0x593f3f6a
    2660:	0404d2b1 	0x404d2b1
    2664:	d69cec26 	0xd69cec26
    2668:	0b07195f 	j	c1c657c <extend_mask+0xc1c0e50>
    266c:	6029313d 	0x6029313d
    2670:	4081367c 	0x4081367c
    2674:	67605fb9 	0x67605fb9
    2678:	1293d0b8 	beq	s4,s3,ffff695c <extend_mask+0xffff1230>
    267c:	a0b9a8d1 	sb	t9,-22319(a1)
    2680:	000f1607 	0xf1607
    2684:	151a1b15 	bne	t0,k0,92dc <extend_mask+0x3bb0>
    2688:	041e188d 	0x41e188d
    268c:	a5bc6d2d 	sh	gp,27949(t5)
    2690:	7e798fb4 	0x7e798fb4
    2694:	bac1e7a4 	swr	at,-6236(s6)
    2698:	4408a4c1 	0x4408a4c1
    269c:	717c8daf 	0x717c8daf
    26a0:	a8e37e24 	swl	v1,32292(a3)
    26a4:	3400a088 	ori	zero,zero,0xa088
    26a8:	bbcb6aaa 	swr	t3,27306(s8)
    26ac:	523b38cb 	0x523b38cb
    26b0:	e8aa9862 	swc2	$10,-26526(a1)
    26b4:	2a2c4f62 	slti	t4,s1,20322
    26b8:	84390b58 	lh	t9,2904(at)
    26bc:	c6c1ad56 	lwc1	$f1,-21162(s6)
    26c0:	a5f63f21 	sh	s6,16161(t7)
    26c4:	0c49382a 	jal	124e0a8 <extend_mask+0x124897c>
    26c8:	29317a7c 	slti	s1,t1,31356
    26cc:	6d695154 	0x6d695154
    26d0:	16484194 	bne	s2,t0,12d24 <extend_mask+0xd5f8>
    26d4:	c3dcb8d3 	lwc0	$28,-18221(s8)
    26d8:	87ca3400 	lh	t2,13312(s8)
    26dc:	0e202e2f 	jal	880b8bc <extend_mask+0x8806190>
    26e0:	2c19231d 	sltiu	t9,zero,8989
    26e4:	19264408 	0x19264408
    26e8:	394e5987 	xori	t6,t2,0x5987
    26ec:	2c8ba5be 	sltiu	t3,a0,-23106
    26f0:	aaca59c7 	swl	t2,22983(s6)
    26f4:	c1c88880 	lwc0	$8,-30592(t6)
    26f8:	9b6224c5 	lwr	v0,9413(k1)
    26fc:	ea3a0025 	swc2	$26,37(s1)
    2700:	4872efa1 	0x4872efa1
    2704:	35001300 	ori	zero,t0,0x1300
    2708:	3fa39ab8 	0x3fa39ab8
    270c:	96596268 	lhu	t9,25192(s2)
    2710:	667b4a07 	0x667b4a07
    2714:	59067ee8 	0x59067ee8
    2718:	38113ec6 	xori	s1,zero,0x3ec6
    271c:	75694325 	jalx	5a50c94 <extend_mask+0x5a4b568>
    2720:	1c2b321c 	0x1c2b321c
    2724:	838d2f1c 	lb	t5,12060(gp)
    2728:	235b4623 	addi	k1,k0,17955
    272c:	1016cebc 	beq	zero,s6,ffff6220 <extend_mask+0xffff0af4>
    2730:	4154c88e 	0x4154c88e
    2734:	6d1a2515 	0x6d1a2515
    2738:	061d051e 	0x61d051e
    273c:	0f111f0b 	jal	c447c2c <extend_mask+0xc442500>
    2740:	0b2b3e26 	j	cacf898 <extend_mask+0xcaca16c>
    2744:	08145e66 	j	517998 <extend_mask+0x51226c>
    2748:	b2a19c92 	0xb2a19c92
    274c:	ebad9d87 	swc2	$13,-25209(sp)
    2750:	6f621827 	0x6f621827
    2754:	2326d473 	addi	a2,t9,-11149
    2758:	00303f14 	0x303f14
    275c:	ee00050c 	swc3	$0,1292(s0)
    2760:	01122286 	0x1122286
    2764:	8fcf3e55 	lw	t7,15957(s8)
    2768:	617d9a40 	0x617d9a40
    276c:	00340923 	0x340923
    2770:	3a641613 	xori	a0,s3,0x1613
    2774:	1966d631 	0x1966d631
    2778:	2e203734 	sltiu	zero,s1,14132
    277c:	2e318c89 	sltiu	s1,s1,-29559
    2780:	3b170857 	xori	s7,t8,0x857
    2784:	6e001702 	0x6e001702
    2788:	1aa22559 	0x1aa22559
    278c:	31be764f 	andi	s8,t5,0x764f
    2790:	030b1115 	0x30b1115
    2794:	150b1504 	bne	t0,t3,7ba8 <extend_mask+0x247c>
    2798:	2e11172d 	sltiu	s1,s0,5933
    279c:	332e1a36 	andi	t6,t9,0x1a36
    27a0:	000dfee9 	0xdfee9
    27a4:	b8d096f0 	swr	s0,-26896(a2)
    27a8:	a8905308 	swl	s0,21256(a0)
    27ac:	04eccc06 	0x4eccc06
    27b0:	b800223b 	swr	zero,8763(zero)
    27b4:	340f0019 	ori	t7,zero,0x19
    27b8:	2d030b37 	sltiu	v1,t0,2871
    27bc:	1c6876b6 	0x1c6876b6
    27c0:	1b445e9e 	0x1b445e9e
    27c4:	820a763b 	lb	t2,30267(s0)
    27c8:	1e293f15 	0x1e293f15
    27cc:	122b2c0b 	beq	s1,t3,d7fc <extend_mask+0x80d0>
    27d0:	60072c33 	0x60072c33
    27d4:	332d3335 	andi	t5,t9,0x3335
    27d8:	6d934400 	0x6d934400
    27dc:	01005b41 	0x1005b41
    27e0:	070a4b6f 	0x70a4b6f
    27e4:	4a18c78f 	c2	0x18c78f
    27e8:	8d63000a 	lw	v1,10(t3)
    27ec:	2f0c1619 	sltiu	t4,t8,5657
    27f0:	1010260a 	beq	zero,s0,c01c <extend_mask+0x68f0>
    27f4:	053c5908 	0x53c5908
    27f8:	15441237 	bne	t2,a0,70d8 <extend_mask+0x19ac>
    27fc:	ebdbffc3 	swc2	$27,-61(s8)
    2800:	6bffd3c0 	0x6bffd3c0
    2804:	7a0ba3a6 	0x7a0ba3a6
    2808:	b2174c23 	0xb2174c23
    280c:	214f1930 	addi	t7,t2,6448
    2810:	0e2c0d0d 	jal	8b03434 <extend_mask+0x8afdd08>
    2814:	13071a3c 	beq	t8,a3,9108 <extend_mask+0x39dc>
    2818:	47531b33 	c1	0x1531b33
    281c:	857b005d 	lh	k1,93(t3)
    2820:	68132720 	0x68132720
    2824:	201f0002 	addi	ra,zero,2
    2828:	1568068c 	bne	t3,t0,425c <hana_bmp+0x2d24>
    282c:	2b23202a 	slti	v1,t9,8234
    2830:	21368890 	addi	s6,t1,-30576
    2834:	13180600 	beq	t8,t8,4038 <hana_bmp+0x2b00>
    2838:	022f0413 	0x22f0413
    283c:	45586284 	0x45586284
    2840:	dbc76174 	0xdbc76174
    2844:	53001212 	0x53001212
    2848:	08141b0c 	j	506c30 <extend_mask+0x501504>
    284c:	0e0d1443 	jal	834510c <extend_mask+0x833f9e0>
    2850:	040c2f09 	0x40c2f09
    2854:	19104cac 	0x19104cac
    2858:	55171962 	0x55171962
    285c:	c4b84a13 	lwc1	$f24,18963(a1)
    2860:	b18ddaf2 	0xb18ddaf2
    2864:	5bbb8055 	0x5bbb8055
    2868:	6bd85c00 	0x6bd85c00
    286c:	100f0b39 	beq	zero,t7,5554 <zigzag_index+0x28>
    2870:	55123592 	0x55123592
    2874:	17565503 	bne	k0,s6,17c84 <extend_mask+0x12558>
    2878:	583a2033 	0x583a2033
    287c:	1d100a2a 	0x1d100a2a
    2880:	c89ba824 	lwc2	$27,-22492(a0)
    2884:	6115161b 	0x6115161b
    2888:	1d312a1d 	0x1d312a1d
    288c:	989d1a0b 	lwr	sp,6667(a0)
    2890:	0f0a0c0c 	jal	c283030 <extend_mask+0xc27d904>
    2894:	0a195050 	j	8654140 <extend_mask+0x864ea14>
    2898:	4d1b5fa1 	0x4d1b5fa1
    289c:	73681511 	0x73681511
    28a0:	0c0f280e 	jal	3ca038 <extend_mask+0x3c490c>
    28a4:	120d0473 	beq	s0,t5,3a74 <hana_bmp+0x253c>
    28a8:	d46dc021 	0xd46dc021
    28ac:	1e372e1b 	0x1e372e1b
    28b0:	0f4f20de 	jal	d3c8378 <extend_mask+0xd3c2c4c>
    28b4:	3e08068f 	0x3e08068f
    28b8:	a8a0acb2 	swl	zero,-21326(a1)
    28bc:	b3555541 	0xb3555541
    28c0:	cd783789 	lwc3	$24,14217(t3)
    28c4:	d10b0e00 	0xd10b0e00
    28c8:	4d782227 	0x4d782227
    28cc:	4b312934 	c2	0x1312934
    28d0:	122b5b43 	beq	s1,t3,195e0 <extend_mask+0x13eb4>
    28d4:	0e0f0616 	jal	83c1858 <extend_mask+0x83bc12c>
    28d8:	1a6b3f1c 	0x1a6b3f1c
    28dc:	00272018 	0x272018
    28e0:	1d14201f 	0x1d14201f
    28e4:	272d989b 	addiu	t5,t9,-26469
    28e8:	0f0d0000 	jal	c340000 <extend_mask+0xc33a8d4>
    28ec:	0e0c0422 	jal	8301088 <extend_mask+0x82fb95c>
    28f0:	3e355d38 	0x3e355d38
    28f4:	49062778 	0x49062778
    28f8:	6e001000 	0x6e001000
    28fc:	00090d00 	sll	at,t1,0x14
    2900:	20bc28cf 	addi	gp,a1,10447
    2904:	f3e20006 	0xf3e20006
    2908:	0e14602f 	jal	85180bc <extend_mask+0x8512990>
    290c:	18b3f82b 	0x18b3f82b
    2910:	0656dc96 	0x656dc96
    2914:	b3cfa3a2 	0xb3cfa3a2
    2918:	8accd24a 	lwl	t4,-11702(s6)
    291c:	2bc6a6be 	slti	a2,s8,-22850
    2920:	d3ae0734 	0xd3ae0734
    2924:	2722381e 	addiu	v0,t9,14366
    2928:	1f0b333f 	0x1f0b333f
    292c:	373b5753 	ori	k1,t9,0x5753
    2930:	462c321b 	c1	0x2c321b
    2934:	20222320 	addi	v0,at,8992
    2938:	261f211a 	addiu	ra,s0,8474
    293c:	3b392d34 	xori	t9,t9,0x2d34
    2940:	43490000 	c0	0x1490000
    2944:	06030b08 	0x6030b08
    2948:	02052c23 	0x2052c23
    294c:	aa334c3a 	swl	s3,19514(s1)
    2950:	8d520f00 	lw	s2,3840(t2)
    2954:	0010213c 	0x10213c
    2958:	05003cae 	bltz	t0,11c14 <extend_mask+0xc4e8>
    295c:	c569e2f4 	lwc1	$f9,-7436(t3)
    2960:	f2000052 	0xf2000052
    2964:	411b102d 	0x411b102d
    2968:	a4000083 	sh	zero,131(zero)
    296c:	717148d7 	0x717148d7
    2970:	bfcdaec7 	0xbfcdaec7
    2974:	d08900cf 	0xd08900cf
    2978:	afead2f0 	sw	t2,-11536(ra)
    297c:	3a231a22 	xori	v1,s1,0x1a22
    2980:	19140c38 	0x19140c38
    2984:	3c121616 	lui	s2,0x1616
    2988:	1a2e425e 	0x1a2e425e
    298c:	4f561e10 	c3	0x1561e10
    2990:	121d1650 	beq	s0,sp,82d4 <extend_mask+0x2ba8>
    2994:	4d391e38 	0x4d391e38
    2998:	262d464c 	addiu	t5,s1,17996
    299c:	5b020409 	0x5b020409
    29a0:	12010304 	beq	s0,at,35b4 <hana_bmp+0x207c>
    29a4:	00007d63 	0x7d63
    29a8:	1a020000 	0x1a020000
    29ac:	0706061c 	0x706061c
    29b0:	603e0416 	0x603e0416
    29b4:	1f1df9f9 	0x1f1df9f9
    29b8:	d1a4ecef 	0xd1a4ecef
    29bc:	a4ceae07 	sh	t6,-20985(a2)
    29c0:	42a80007 	c0	0xa80007
    29c4:	8c00c1ef 	lw	zero,-15889(zero)
    29c8:	32dab997 	andi	k0,s6,0xb997
    29cc:	cfd8adbd 	lwc3	$24,-21059(s8)
    29d0:	4bdccba8 	c2	0x1dccba8
    29d4:	e0cd8000 	swc0	$13,-32768(a2)
    29d8:	2714032a 	addiu	s4,t8,810
    29dc:	33342c17 	andi	s4,t9,0x2c17
    29e0:	0c0a0a14 	jal	282850 <extend_mask+0x27d124>
    29e4:	290a2122 	slti	t2,t0,8482
    29e8:	3e441912 	0x3e441912
    29ec:	4e565545 	c3	0x565545
    29f0:	51312523 	0x51312523
    29f4:	535bbfd5 	0x535bbfd5
    29f8:	c29b8f63 	lwc0	$27,-28829(s4)
    29fc:	93bcafa1 	lbu	gp,-20575(sp)
    2a00:	c1c2a4bf 	lwc0	$2,-23361(t6)
    2a04:	bab1c1a5 	swr	s1,-15963(s5)
    2a08:	b9d3bc92 	swr	s3,-17262(t6)
    2a0c:	2f121f26 	sltiu	s2,t8,7974
    2a10:	24352b21 	addiu	s5,at,11041
    2a14:	2c16131a 	sltiu	s6,zero,4890
    2a18:	1118086b 	beq	t0,t8,4bc8 <hana_bmp+0x3690>
    2a1c:	bbd2be87 	swr	s2,-16761(s8)
    2a20:	5e614a23 	0x5e614a23
    2a24:	1138546a 	beq	t1,t8,17bd0 <extend_mask+0x124a4>
    2a28:	624d432e 	0x624d432e
    2a2c:	28203842 	slti	zero,at,14402
    2a30:	402f2927 	0x402f2927
    2a34:	242e2a37 	addiu	t6,at,10807
    2a38:	21212526 	addi	at,t1,9510
    2a3c:	1e24272c 	0x1e24272c
    2a40:	210d0f11 	addi	t5,t0,3857
    2a44:	1a24241b 	0x1a24241b
    2a48:	15131c15 	bne	t0,s3,9aa0 <extend_mask+0x4374>
    2a4c:	1b263127 	0x1b263127
    2a50:	a7bf6257 	sh	ra,25175(sp)
    2a54:	ac8896d4 	sw	t0,-26924(a0)
    2a58:	aa568ec4 	swl	s6,-28988(s2)
    2a5c:	d1ac8d70 	0xd1ac8d70
    2a60:	c89788cf 	lwc2	$23,-30513(a0)
    2a64:	bec6ad6a 	0xbec6ad6a
    2a68:	32190e07 	andi	t9,s0,0xe07
    2a6c:	1c282327 	0x1c282327
    2a70:	21181d18 	addi	t8,t0,7448
    2a74:	016ac1c7 	0x16ac1c7
    2a78:	c3c6bcc3 	lwc0	$6,-17213(s8)
    2a7c:	bd6a385e 	0xbd6a385e
    2a80:	765a493d 	jalx	96924f4 <extend_mask+0x968cdc8>
    2a84:	3f46342d 	0x3f46342d
    2a88:	41382d2a 	0x41382d2a
    2a8c:	231d2633 	addi	sp,t8,9779
    2a90:	363b242f 	ori	k1,s1,0x242f
    2a94:	322d2626 	andi	t5,s1,0x2626
    2a98:	3a3c2f16 	xori	gp,s1,0x2f16
    2a9c:	1a191e1f 	0x1a191e1f
    2aa0:	18121317 	0x18121317
    2aa4:	1b132541 	0x1b132541
    2aa8:	27288d81 	addiu	t0,t9,-29311
    2aac:	2fafcad9 	sltiu	t7,sp,-13607
    2ab0:	c2ab8835 	lwc0	$11,-30667(s5)
    2ab4:	358877b8 	ori	t0,t4,0x77b8
    2ab8:	cd549ad6 	lwc3	$20,-25898(t2)
    2abc:	c7d0b6a2 	lwc1	$f16,-18782(s8)
    2ac0:	beaa8036 	0xbeaa8036
    2ac4:	584b1a24 	0x584b1a24
    2ac8:	292a2e26 	slti	t2,t1,11814
    2acc:	2f210d3f 	sltiu	at,t9,3391
    2ad0:	83a0b4c3 	lb	zero,-19261(sp)
    2ad4:	bcb1a37d 	0xbcb1a37d
    2ad8:	58726a5a 	0x58726a5a
    2adc:	27304e48 	addiu	s0,t9,20040
    2ae0:	2e293933 	sltiu	t1,s1,14643
    2ae4:	27201f1e 	addiu	zero,t9,7966
    2ae8:	121b1b2a 	beq	s0,k1,9794 <extend_mask+0x4068>
    2aec:	2f1a3026 	sltiu	k0,t8,12326
    2af0:	212a4047 	addi	t2,t1,16455
    2af4:	3e1c2324 	0x3e1c2324
    2af8:	281c1512 	slti	gp,zero,5394
    2afc:	161a1f19 	bne	s0,k0,a764 <extend_mask+0x5038>
    2b00:	2e482222 	sltiu	t0,s2,8738
    2b04:	700c3dde 	0x700c3dde
    2b08:	cec5d2bc 	lwc3	$5,-11588(s6)
    2b0c:	3e000c1b 	0x3e000c1b
    2b10:	08739131 	j	1ce44c4 <extend_mask+0x1cded98>
    2b14:	17bfd4c5 	bne	sp,ra,ffff7e2c <extend_mask+0xffff2700>
    2b18:	b9b68d6e 	swr	s6,-29330(t5)
    2b1c:	583a8db2 	0x583a8db2
    2b20:	863c2e2c 	lh	gp,11820(s1)
    2b24:	221e2720 	addi	s8,s0,10016
    2b28:	1b103985 	0x1b103985
    2b2c:	a2a7907e 	sb	a3,-28546(s5)
    2b30:	723c5e69 	0x723c5e69
    2b34:	6b3b202f 	0x6b3b202f
    2b38:	45462923 	0x45462923
    2b3c:	32332224 	andi	s3,s1,0x2224
    2b40:	21230769 	addi	v1,t1,1897
    2b44:	64101710 	0x64101710
    2b48:	19261125 	0x19261125
    2b4c:	3f48441f 	0x3f48441f
    2b50:	282b3020 	slti	t3,at,12320
    2b54:	0e0f1718 	jal	83c5c60 <extend_mask+0x83c0534>
    2b58:	1e1f2f40 	0x1e1f2f40
    2b5c:	2621968c 	addiu	at,s1,-26996
    2b60:	7f9671bb 	0x7f9671bb
    2b64:	dba77a65 	0xdba77a65
    2b68:	22081495 	addi	t0,s0,5269
    2b6c:	66635124 	0x66635124
    2b70:	65dcc2d1 	0x65dcc2d1
    2b74:	8f959482 	lw	s5,-27518(gp)
    2b78:	4a8faca4 	c2	0x8faca4
    2b7c:	7d4c1918 	0x7d4c1918
    2b80:	2e121414 	sltiu	s2,s0,5140
    2b84:	1b6a8eaa 	0x1b6a8eaa
    2b88:	93574951 	lbu	s7,18769(k0)
    2b8c:	5160572c 	0x5160572c
    2b90:	37494835 	ori	t1,k0,0x4835
    2b94:	27273a23 	addiu	a3,t9,14883
    2b98:	1b505d05 	0x1b505d05
    2b9c:	58b1bc60 	0x58b1bc60
    2ba0:	002c191d 	0x2c191d
    2ba4:	1c22424c 	0x1c22424c
    2ba8:	48242929 	0x48242929
    2bac:	33291314 	andi	t1,t9,0x1314
    2bb0:	1a191b19 	0x1a191b19
    2bb4:	27314539 	addiu	s1,t9,17721
    2bb8:	c7cadb88 	lwc1	$f10,-9336(s8)
    2bbc:	3a7cd3ad 	xori	gp,s3,0xd3ad
    2bc0:	c5bdb06a 	lwc1	$f29,-20374(t5)
    2bc4:	a4b98a8c 	sh	t9,-30068(a1)
    2bc8:	c4c9a5d1 	lwc1	$f9,-23087(a2)
    2bcc:	d8a7238d 	0xd8a7238d
    2bd0:	adb27c3f 	sw	s2,31807(t5)
    2bd4:	606f767e 	0x606f767e
    2bd8:	3d1b2813 	0x3d1b2813
    2bdc:	191c0e7d 	0x191c0e7d
    2be0:	a1c8c261 	sb	t0,-15775(t6)
    2be4:	4d494641 	0x4d494641
    2be8:	3f343e4a 	0x3f343e4a
    2bec:	47303232 	c1	0x1303232
    2bf0:	24261a68 	addiu	a2,at,6760
    2bf4:	ac747fad 	sw	s4,32685(v1)
    2bf8:	bc8d203e 	0xbc8d203e
    2bfc:	40411c18 	0x40411c18
    2c00:	3c51532a 	0x3c51532a
    2c04:	242a3a34 	addiu	t2,at,14900
    2c08:	27191617 	addiu	t9,t8,5655
    2c0c:	1811191f 	0x1811191f
    2c10:	36379d90 	ori	s7,s1,0x9d90
    2c14:	b5dc8cab 	0xb5dc8cab
    2c18:	c68bc6c7 	lwc1	$f11,-14649(s4)
    2c1c:	93aad1bd 	lbu	t2,-11843(sp)
    2c20:	c18e4a8c 	lwc0	$14,19084(t4)
    2c24:	cb92b7bf 	lwc2	$18,-18497(gp)
    2c28:	734596af 	0x734596af
    2c2c:	8a72552d 	lwl	s2,21805(s3)
    2c30:	67705c25 	0x67705c25
    2c34:	1a2a1f1a 	0x1a2a1f1a
    2c38:	0d62afc9 	jal	58abf24 <extend_mask+0x58a67f8>
    2c3c:	d87c3841 	0xd87c3841
    2c40:	3e444233 	0x3e444233
    2c44:	4f4b4751 	c3	0x14b4751
    2c48:	38232e34 	xori	v1,at,0x2e34
    2c4c:	2641b5c9 	addiu	at,s2,-18999
    2c50:	afa8b2a5 	sw	t0,-19803(sp)
    2c54:	838c7448 	lb	t4,29768(gp)
    2c58:	3a393c57 	xori	t9,s1,0x3c57
    2c5c:	5d3c333b 	0x5d3c333b
    2c60:	4741311e 	c1	0x141311e
    2c64:	1a1f241d 	0x1a1f241d
    2c68:	1d193433 	0x1d193433
    2c6c:	3876c6cc 	xori	s6,v1,0xc6cc
    2c70:	ddd6cbbb 	0xddd6cbbb
    2c74:	bdd07b91 	0xbdd07b91
    2c78:	dddeda61 	0xdddeda61
    2c7c:	0bc0b3ad 	j	f02ceb4 <extend_mask+0xf027788>
    2c80:	90b5e592 	lbu	s5,-6766(a1)
    2c84:	60948795 	0x60948795
    2c88:	a58d9bc0 	sh	t5,-25664(t4)
    2c8c:	b54032a9 	0xb54032a9
    2c90:	761c0533 	jalx	87014cc <extend_mask+0x86fbda0>
    2c94:	cbbbc8bd 	lwc2	$27,-14147(sp)
    2c98:	823f363c 	lb	ra,13884(s1)
    2c9c:	274d5955 	addiu	t5,k0,22869
    2ca0:	5f613f36 	0x5f613f36
    2ca4:	312c321d 	andi	t4,t1,0x321d
    2ca8:	8fc9b5d3 	lw	t1,-18989(s8)
    2cac:	cccbbea2 	lwc3	$11,-16734(a2)
    2cb0:	7b4a3849 	0x7b4a3849
    2cb4:	4b5d6252 	c2	0x15d6252
    2cb8:	5054544b 	0x5054544b
    2cbc:	40393d3b 	0x40393d3b
    2cc0:	38312b1f 	xori	s1,at,0x2b1f
    2cc4:	3631164f 	ori	s1,s1,0x164f
    2cc8:	c6a7a8b6 	lwc1	$f7,-22346(s5)
    2ccc:	c2b7ced3 	lwc0	$23,-12589(s5)
    2cd0:	5a4382bc 	0x5a4382bc
    2cd4:	d4b490ac 	0xd4b490ac
    2cd8:	b1d29e50 	0xb1d29e50
    2cdc:	767c9b98 	jalx	9f26e60 <extend_mask+0x9f21734>
    2ce0:	b8adbeb8 	swr	t5,-16712(a1)
    2ce4:	c5cfd541 	lwc1	$f15,-10943(t6)
    2ce8:	39a3802e 	xori	v1,t5,0x802e
    2cec:	6057c6bb 	0x6057c6bb
    2cf0:	add4c49e 	sw	s4,-15202(t6)
    2cf4:	6d3c324d 	0x6d3c324d
    2cf8:	694e4543 	0x694e4543
    2cfc:	474a403c 	c1	0x14a403c
    2d00:	2f164588 	sltiu	s6,t8,17800
    2d04:	9bc7d6d7 	lwr	a3,-10537(s8)
    2d08:	bda3976e 	0xbda3976e
    2d0c:	42454f5e 	c0	0x454f5e
    2d10:	62676c5a 	0x62676c5a
    2d14:	5b52463c 	0x5b52463c
    2d18:	3c373430 	0x3c373430
    2d1c:	25212220 	addiu	at,t1,8736
    2d20:	72092b3f 	0x72092b3f
    2d24:	6a93a8a6 	0x6a93a8a6
    2d28:	b2d04470 	0xb2d04470
    2d2c:	6bc5a7b4 	0x6bc5a7b4
    2d30:	bab48baf 	swr	s4,-29777(s5)
    2d34:	6acc8274 	0x6acc8274
    2d38:	7898968d 	0x7898968d
    2d3c:	a097a7b9 	sb	s7,-22599(a0)
    2d40:	bf413274 	0xbf413274
    2d44:	27328071 	addiu	s2,t9,-32655
    2d48:	86bec0ba 	lh	s8,-16198(s5)
    2d4c:	c4bdc261 	lwc1	$f29,-15775(a1)
    2d50:	0f306482 	jal	cc19208 <extend_mask+0xcc13adc>
    2d54:	6322544f 	0x6322544f
    2d58:	563c2115 	0x563c2115
    2d5c:	194a77ab 	0x194a77ab
    2d60:	c3d2bdad 	lwc0	$18,-16979(s8)
    2d64:	96783933 	lhu	t8,14643(s3)
    2d68:	3d516072 	0x3d516072
    2d6c:	806e6352 	lb	t6,25426(v1)
    2d70:	3c393125 	0x3c393125
    2d74:	271e1620 	addiu	s8,t8,5664
    2d78:	1e1c6041 	0x1e1c6041
    2d7c:	34283559 	ori	t0,at,0x3559
    2d80:	6399acc7 	0x6399acc7
    2d84:	4888cccc 	0x4888cccc
    2d88:	cc91b5b4 	lwc3	$17,-19020(a0)
    2d8c:	68774d3e 	0x68774d3e
    2d90:	ad6c6660 	sw	t4,26208(t3)
    2d94:	3f3e315c 	0x3f3e315c
    2d98:	aea09e30 	sw	zero,-25040(s5)
    2d9c:	4cab5b69 	0x4cab5b69
    2da0:	70a10c4f 	0x70a10c4f
    2da4:	bab7aaab 	swr	s7,-21845(s5)
    2da8:	c5ba3c7d 	lwc1	$f26,15485(t5)
    2dac:	acc7cb4f 	sw	a3,-13489(a2)
    2db0:	2d4f5b4d 	sltiu	t7,t2,23373
    2db4:	161a1a1a 	bne	s0,k0,9620 <extend_mask+0x3ef4>
    2db8:	4690bcb6 	c1	0x90bcb6
    2dbc:	7b504a37 	0x7b504a37
    2dc0:	32221a31 	andi	v0,s1,0x1a31
    2dc4:	46607c7c 	c1	0x607c7c
    2dc8:	6f54341e 	0x6f54341e
    2dcc:	21191011 	addi	t9,t0,4113
    2dd0:	22221b1c 	addi	v0,s1,6940
    2dd4:	5e3b211b 	0x5e3b211b
    2dd8:	46486baf 	c1	0x486baf
    2ddc:	916739c5 	lbu	a3,14789(t3)
    2de0:	a9c9c2a7 	swl	t1,-15705(t6)
    2de4:	6daab185 	0x6daab185
    2de8:	78529b71 	0x78529b71
    2dec:	543e432a 	0x543e432a
    2df0:	084cb4b2 	j	132d2c8 <extend_mask+0x1327b9c>
    2df4:	b51e69b8 	0xb51e69b8
    2df8:	a0b6bbd2 	sb	s6,-17454(a1)
    2dfc:	6f74aeae 	0x6f74aeae
    2e00:	9abaccd0 	lwr	k0,-13104(s5)
    2e04:	caa37499 	lwc2	$3,29849(s5)
    2e08:	ab893248 	swl	t1,12872(gp)
    2e0c:	484b5526 	0x484b5526
    2e10:	22211c22 	addi	at,s1,7202
    2e14:	51523a3e 	0x51523a3e
    2e18:	515f442b 	0x515f442b
    2e1c:	03142848 	0x3142848
    2e20:	6f837550 	0x6f837550
    2e24:	2d21221d 	sltiu	at,t1,8733
    2e28:	201c2427 	addi	gp,zero,9255
    2e2c:	1c186d3b 	0x1c186d3b
    2e30:	1e0b2226 	0x1e0b2226
    2e34:	4972252e 	0x4972252e
    2e38:	4aa66b1d 	c2	0xa66b1d
    2e3c:	92928891 	lbu	s2,-30575(s4)
    2e40:	daa2b5c7 	0xdaa2b5c7
    2e44:	ad7a3f50 	sw	k0,16208(t3)
    2e48:	2a2a2059 	slti	t2,s1,8281
    2e4c:	a7b4a71f 	sh	s4,-22753(sp)
    2e50:	67d0b2c6 	0x67d0b2c6
    2e54:	d1eaa472 	0xd1eaa472
    2e58:	849b94bc 	lh	k1,-27460(a0)
    2e5c:	beb2c6c2 	0xbeb2c6c2
    2e60:	8cacc09e 	lw	t4,-16226(a1)
    2e64:	5c475460 	0x5c475460
    2e68:	524a213e 	0x524a213e
    2e6c:	3b223138 	xori	v0,t9,0x3138
    2e70:	18385462 	0x18385462
    2e74:	5d330a0c 	0x5d330a0c
    2e78:	17375d82 	bne	t9,s7,1a484 <extend_mask+0x14d58>
    2e7c:	805e2b25 	lb	s8,11045(v0)
    2e80:	2320221f 	addi	zero,t9,8735
    2e84:	282a201b 	slti	t2,at,8219
    2e88:	75390b13 	jalx	4e42c4c <extend_mask+0x4e3d520>
    2e8c:	11131551 	beq	t0,s3,83d4 <extend_mask+0x2ca8>
    2e90:	342b4d34 	ori	t3,at,0x4d34
    2e94:	151416be 	bne	t0,s4,8990 <extend_mask+0x3264>
    2e98:	c7a5c5ba 	lwc1	$f5,-14918(sp)
    2e9c:	c9c5b164 	lwc2	$5,-20124(t6)
    2ea0:	371e1d6c 	ori	s8,t8,0x1d6c
    2ea4:	5b3f5856 	0x5b3f5856
    2ea8:	62284fbc 	0x62284fbc
    2eac:	c4b6c1b6 	lwc1	$f22,-15946(a1)
    2eb0:	b154577c 	0xb154577c
    2eb4:	4269c3a5 	c0	0x69c3a5
    2eb8:	98bea2a9 	lwr	s8,-23895(a1)
    2ebc:	a37c7a5b 	sb	gp,31323(k1)
    2ec0:	4d4f5959 	0x4d4f5959
    2ec4:	4c55613c 	0x4c55613c
    2ec8:	533f261c 	0x533f261c
    2ecc:	31506759 	andi	s0,t2,0x6759
    2ed0:	1e213346 	0x1e213346
    2ed4:	547a8262 	0x547a8262
    2ed8:	31292b2d 	andi	t1,t1,0x2b2d
    2edc:	1d1d2921 	0x1d1d2921
    2ee0:	19186a44 	0x19186a44
    2ee4:	1b1e231b 	0x1b1e231b
    2ee8:	151d221f 	bne	t0,sp,b768 <extend_mask+0x603c>
    2eec:	5f25331d 	0x5f25331d
    2ef0:	1d90e2d1 	0x1d90e2d1
    2ef4:	cbb744a3 	lwc2	$23,17571(sp)
    2ef8:	b9bf963b 	swr	ra,-27077(t5)
    2efc:	3f753649 	0x3f753649
    2f00:	398eab1a 	xori	t6,t4,0xab1a
    2f04:	4c9ca2c9 	0x4c9ca2c9
    2f08:	948ac395 	lhu	t2,-15467(a0)
    2f0c:	7b561674 	0x7b561674
    2f10:	afaeaacb 	sw	t6,-21813(sp)
    2f14:	8b5352a7 	lwl	s3,21159(k0)
    2f18:	9f4d4b3a 	0x9f4d4b3a
    2f1c:	2f7b8059 	sltiu	k1,k1,-32679
    2f20:	807e6a4b 	lb	s8,27211(v1)
    2f24:	1a251d34 	0x1a251d34
    2f28:	5660413d 	0x5660413d
    2f2c:	4f574866 	c3	0x1574866
    2f30:	7b693a4b 	0x7b693a4b
    2f34:	4348463c 	c0	0x148463c
    2f38:	27201515 	addiu	zero,t9,5397
    2f3c:	34541b20 	ori	s4,v0,0x1b20
    2f40:	1d151c21 	0x1d151c21
    2f44:	1c1a5826 	0x1c1a5826
    2f48:	1f432a13 	0x1f432a13
    2f4c:	76a59fb5 	jalx	a967ed4 <extend_mask+0xa9627a8>
    2f50:	9da1c5b4 	0x9da1c5b4
    2f54:	83797323 	lb	t9,29475(k1)
    2f58:	7dae91b5 	0x7dae91b5
    2f5c:	bc1a78c3 	0xbc1a78c3
    2f60:	babcae9c 	swr	gp,-20836(s5)
    2f64:	85acb4a9 	lh	t4,-19287(t5)
    2f68:	2674a1b6 	addiu	s4,s3,-24138
    2f6c:	bdc1ad5d 	0xbdc1ad5d
    2f70:	61a9a754 	0x61a9a754
    2f74:	2836156e 	slti	s6,at,5486
    2f78:	ab7d84bb 	swl	sp,-31557(k1)
    2f7c:	a44f1821 	sh	t7,6177(v0)
    2f80:	1a123153 	0x1a123153
    2f84:	4e4d7ca1 	c3	0x4d7ca1
    2f88:	8b929581 	lwl	s2,-27263(gp)
    2f8c:	4a51495a 	c2	0x51495a
    2f90:	575c4a36 	0x575c4a36
    2f94:	1512165b 	bne	t0,s2,8904 <extend_mask+0x31d8>
    2f98:	22251b1b 	addi	a1,s1,6939
    2f9c:	18322a23 	0x18322a23
    2fa0:	60210b30 	0x60210b30
    2fa4:	3409b4e2 	ori	t1,zero,0xb4e2
    2fa8:	bcd0dd95 	0xbcd0dd95
    2fac:	98543a40 	lwr	s4,14912(v0)
    2fb0:	4983abac 	0x4983abac
    2fb4:	70678521 	0x70678521
    2fb8:	22571c64 	addi	s7,s2,7268
    2fbc:	d96376b6 	0xd96376b6
    2fc0:	b3744759 	0xb3744759
    2fc4:	aababf94 	swl	k0,-16492(s5)
    2fc8:	bab78950 	swr	s7,-30384(s5)
    2fcc:	824a342d 	lb	t2,13357(s2)
    2fd0:	2141969e 	addi	at,t2,-26978
    2fd4:	80c3b679 	lb	v1,-18823(a2)
    2fd8:	5d580e06 	0x5d580e06
    2fdc:	13253864 	beq	t9,a1,11170 <extend_mask+0xba44>
    2fe0:	9fb3d4cd 	0x9fb3d4cd
    2fe4:	c5d35f27 	lwc1	$f19,24359(t6)
    2fe8:	493a4241 	0x493a4241
    2fec:	44403c33 	0x44403c33
    2ff0:	362e271b 	ori	t6,s1,0x271b
    2ff4:	3950341d 	xori	s0,t2,0x341d
    2ff8:	25384c6b 	addiu	t8,t1,19563
    2ffc:	523c2b1c 	0x523c2b1c
    3000:	6bc06763 	0x6bc06763
    3004:	6a7c8d89 	0x6a7c8d89
    3008:	314c2248 	andi	t4,t2,0x2248
    300c:	7d987209 	0x7d987209
    3010:	2c4f62c6 	sltiu	t7,v0,25286
    3014:	abb4d4c5 	swl	s4,-11067(sp)
    3018:	bfb2c08f 	0xbfb2c08f
    301c:	682457d4 	0x682457d4
    3020:	bdc8d2ba 	0xbdc8d2ba
    3024:	bf8a805c 	0xbf8a805c
    3028:	5641241d 	0x5641241d
    302c:	77bab7bc 	jalx	eeadef0 <extend_mask+0xeea87c4>
    3030:	b7aa8c5a 	0xb7aa8c5a
    3034:	15030007 	bne	t0,v1,3054 <hana_bmp+0x1b1c>
    3038:	1a436b8c 	0x1a436b8c
    303c:	b3c29bc7 	0xb3c29bc7
    3040:	ae26142e 	sw	a2,5166(s1)
    3044:	352e2c40 	ori	t6,t1,0x2c40
    3048:	3333272b 	andi	s3,t9,0x272b
    304c:	21142650 	addi	s4,t0,9808
    3050:	29492049 	slti	t1,t2,8265
    3054:	456b3856 	0x456b3856
    3058:	552b385e 	0x552b385e
    305c:	704e45c1 	0x704e45c1
    3060:	8eb69615 	lw	s6,-27115(s5)
    3064:	05245196 	0x5245196
    3068:	681c365f 	0x681c365f
    306c:	195bfea7 	0x195bfea7
    3070:	f459ecac 	0xf459ecac
    3074:	99c0e889 	lwr	zero,-6007(t6)
    3078:	0957c8ce 	j	55f2338 <extend_mask+0x55ecc0c>
    307c:	e5b7e2f0 	swc1	$f23,-7440(t5)
    3080:	c678572d 	lwc1	$f24,22317(s3)
    3084:	281387c8 	slti	s3,zero,-30776
    3088:	ced3af90 	lwc3	$19,-20592(s6)
    308c:	3e08001c 	0x3e08001c
    3090:	666c5c7f 	0x666c5c7f
    3094:	7c856ead 	0x7c856ead
    3098:	a7a3d6af 	sh	v1,-10577(sp)
    309c:	524e4535 	0x524e4535
    30a0:	18283334 	0x18283334
    30a4:	14232421 	bne	at,v1,c12c <extend_mask+0x6a00>
    30a8:	0360219a 	0x360219a
    30ac:	74424368 	jalx	1090da0 <extend_mask+0x108b674>
    30b0:	8349432f 	lb	t1,17199(k0)
    30b4:	29363a58 	slti	s6,t1,14936
    30b8:	729ff3c2 	0x729ff3c2
    30bc:	b1d03200 	0xb1d03200
    30c0:	31210e46 	andi	at,t1,0xe46
    30c4:	3c3b1f01 	0x3c3b1f01
    30c8:	30c0be3c 	andi	zero,a2,0xbe3c
    30cc:	ff7091c1 	0xff7091c1
    30d0:	7b11b6a4 	0x7b11b6a4
    30d4:	5eb54355 	0x5eb54355
    30d8:	c8c3cdc5 	lwc2	$3,-12859(a2)
    30dc:	53202036 	0x53202036
    30e0:	5bacbfb6 	0x5bacbfb6
    30e4:	cb9e3d00 	lwc2	$30,15616(gp)
    30e8:	0444a2cb 	0x444a2cb
    30ec:	b0b1b3a9 	0xb0b1b3a9
    30f0:	6ea6dec4 	0x6ea6dec4
    30f4:	c1bc8e5d 	lwc0	$28,-29091(t5)
    30f8:	56361a17 	0x56361a17
    30fc:	35373f19 	ori	s7,t1,0x3f19
    3100:	0c0e1f60 	jal	387d80 <extend_mask+0x382654>
    3104:	38a99589 	xori	t1,a1,0x9589
    3108:	3d2b7371 	0x3d2b7371
    310c:	6531250a 	0x6531250a
    3110:	44ac7c1a 	0x44ac7c1a
    3114:	a3cfeab9 	sb	t7,-5447(s8)
    3118:	86daa0c6 	lh	k0,-24378(s6)
    311c:	cd2a2439 	lwc3	$10,9273(t1)
    3120:	1a201b33 	blez	s1,9df0 <extend_mask+0x46c4>
    3124:	f338c1b7 	0xf338c1b7
    3128:	98450b8f 	lwr	a1,2959(v0)
    312c:	bdb8c9d4 	0xbdb8c9d4
    3130:	d466c2c9 	0xd466c2c9
    3134:	9f436d82 	0x9f436d82
    3138:	55384650 	0x55384650
    313c:	536f97a2 	0x536f97a2
    3140:	6334301e 	0x6334301e
    3144:	59bfb6b7 	0x59bfb6b7
    3148:	b2ae7488 	0xb2ae7488
    314c:	9fbecfc1 	0x9fbecfc1
    3150:	9f86591f 	0x9f86591f
    3154:	18173b3e 	0x18173b3e
    3158:	26321248 	addiu	s2,s1,4680
    315c:	b1932fa1 	0xb1932fa1
    3160:	7dbf9534 	0x7dbf9534
    3164:	1b394f35 	0x1b394f35
    3168:	2c5595a3 	sltiu	s5,v0,-27229
    316c:	5a56a791 	0x5a56a791
    3170:	c5e15ab1 	lwc1	$f1,23217(t7)
    3174:	ccc78300 	lwc3	$7,-32000(a2)
    3178:	24352016 	addiu	s5,at,8214
    317c:	0780c54a 	bltz	gp,ffff46a8 <extend_mask+0xfffeef7c>
    3180:	54b56a55 	0x54b56a55
    3184:	241267ba 	addiu	s2,zero,26554
    3188:	d6b0e8e0 	0xd6b0e8e0
    318c:	bfbdec52 	0xbfbdec52
    3190:	929c845c 	lbu	gp,-31652(s4)
    3194:	43524f67 	c0	0x1524f67
    3198:	777b5e4a 	jalx	ded7928 <extend_mask+0xded21fc>
    319c:	54510b4c 	0x54510b4c
    31a0:	9ec9b969 	0x9ec9b969
    31a4:	7a617c7c 	0x7a617c7c
    31a8:	91bd898f 	lbu	sp,-30321(t5)
    31ac:	4a1d2226 	c2	0x1d2226
    31b0:	3f402620 	0x3f402620
    31b4:	1621cac2 	bne	s1,at,ffff5cc0 <extend_mask+0xffff0594>
    31b8:	37b08abc 	ori	s0,sp,0x8abc
    31bc:	e2d7991d 	swc0	$23,-26339(s6)
    31c0:	722e1aa4 	0x722e1aa4
    31c4:	b6ab9c86 	0xb6ab9c86
    31c8:	d1cfbba2 	0xd1cfbba2
    31cc:	4a6ecd8e 	c2	0x6ecd8e
    31d0:	030d2438 	0x30d2438
    31d4:	19180c26 	0x19180c26
    31d8:	ae5a14db 	sw	k0,5339(s2)
    31dc:	81721a37 	lb	s2,6711(t3)
    31e0:	1e023700 	0x1e023700
    31e4:	c8c5c2b1 	lwc2	$5,-15695(a2)
    31e8:	bcb04562 	0xbcb04562
    31ec:	a28b732d 	sb	t3,29485(s4)
    31f0:	387f9599 	xori	ra,v1,0x9599
    31f4:	874f6578 	lh	t7,25976(k0)
    31f8:	5d41afc4 	0x5d41afc4
    31fc:	aca1c35c 	sw	at,-15524(a1)
    3200:	4b4a2f3b 	c2	0x14a2f3b
    3204:	4b482d21 	c2	0x1482d21
    3208:	23224143 	addi	v0,t9,16707
    320c:	24334138 	addiu	s3,at,16696
    3210:	2c8e167d 	sltiu	t6,a0,5757
    3214:	5ce6cada 	0x5ce6cada
    3218:	c6552836 	lwc1	$f21,10294(s2)
    321c:	23a1e3a1 	addi	at,sp,-7263
    3220:	2279af66 	addi	t9,s3,-20634
    3224:	50155a2c 	0x50155a2c
    3228:	8fde7a02 	lw	s8,31234(s8)
    322c:	2b342409 	slti	s4,t9,9225
    3230:	3fbe7761 	0x3fbe7761
    3234:	1b9fa3e9 	0x1b9fa3e9
    3238:	7b172010 	0x7b172010
    323c:	38402f3f 	xori	zero,v0,0x2f3f
    3240:	65b1a8b7 	0x65b1a8b7
    3244:	348fdebd 	ori	t7,a0,0xdebd
    3248:	724d9193 	0x724d9193
    324c:	95a98184 	lhu	t1,-32380(t5)
    3250:	568a7d6b 	0x568a7d6b
    3254:	aeab8aa2 	sw	t3,-30046(s5)
    3258:	bc642b37 	0xbc642b37
    325c:	321c342a 	andi	gp,s0,0x342a
    3260:	29242222 	slti	a0,t1,8738
    3264:	43421631 	c0	0x1421631
    3268:	698d3e80 	0x698d3e80
    326c:	d5bc9c7a 	0xd5bc9c7a
    3270:	e8cdc394 	swc2	$13,-15468(a2)
    3274:	2e35206b 	sltiu	s5,s1,8299
    3278:	d19e1eb7 	0xd19e1eb7
    327c:	e891006a 	swc2	$17,106(a0)
    3280:	7365189a 	0x7365189a
    3284:	90a8462c 	lbu	t0,17964(a1)
    3288:	003ab4c1 	0x3ab4c1
    328c:	8a55327d 	lwl	s5,12925(s2)
    3290:	90cec473 	lbu	t6,-15245(a2)
    3294:	aa8805c0 	swl	t0,1472(s4)
    3298:	25414b45 	addiu	at,t2,19269
    329c:	a59bc87e 	sh	k1,-14210(t4)
    32a0:	c4e898b1 	lwc1	$f8,-26447(a3)
    32a4:	8c59886d 	lw	t9,-30611(v0)
    32a8:	6569629a 	0x6569629a
    32ac:	8e555261 	lw	s5,21089(s2)
    32b0:	666a8785 	0x666a8785
    32b4:	252d2d25 	addiu	t5,t1,11557
    32b8:	202a1e21 	addi	t2,at,7713
    32bc:	24181925 	addiu	t8,zero,6437
    32c0:	19100b1d 	0x19100b1d
    32c4:	79a3a1b7 	0x79a3a1b7
    32c8:	c7cc3677 	lwc1	$f12,13943(s8)
    32cc:	ff77d038 	0xff77d038
    32d0:	294fb469 	slti	t7,t2,-19351
    32d4:	2dbcd395 	sltiu	gp,t5,-11371
    32d8:	0496ab7d 	0x496ab7d
    32dc:	aba69082 	swl	a2,-28542(sp)
    32e0:	7b3bcc6e 	0x7b3bcc6e
    32e4:	439beb58 	c0	0x19beb58
    32e8:	368a65b8 	ori	t2,s4,0x65b8
    32ec:	de97989b 	0xde97989b
    32f0:	73c6b19c 	0x73c6b19c
    32f4:	936b4034 	lbu	t3,16436(k1)
    32f8:	ba99d9b3 	swr	t9,-9805(s4)
    32fc:	fe6c4b7e 	0xfe6c4b7e
    3300:	8d3c653b 	lw	gp,25915(t1)
    3304:	6c7a7e4a 	0x6c7a7e4a
    3308:	33263d34 	andi	a2,t9,0x3d34
    330c:	928c3922 	lbu	t4,14626(s4)
    3310:	23261b1a 	addi	a2,t9,6938
    3314:	21221a1d 	addi	v0,t1,6685
    3318:	29253b0f 	slti	a1,t1,15119
    331c:	1b231c81 	0x1b231c81
    3320:	aabad7e8 	swl	k0,-10264(s5)
    3324:	b86a1973 	swr	t2,6515(v1)
    3328:	c340342d 	lwc0	$0,13357(k0)
    332c:	661a2268 	0x661a2268
    3330:	a3304fcd 	sb	s0,20429(t9)
    3334:	9cc7aaa2 	0x9cc7aaa2
    3338:	c3c04c8b 	lwc0	$0,19595(s8)
    333c:	d7ad7e97 	0xd7ad7e97
    3340:	3366238b 	andi	a2,k1,0x238b
    3344:	edb4c4a9 	swc3	$20,-15191(t5)
    3348:	5e216958 	0x5e216958
    334c:	7993653d 	0x7993653d
    3350:	2a261032 	slti	a2,s1,4146
    3354:	ebd06d5d 	swc2	$16,27997(s8)
    3358:	73b41f4d 	0x73b41f4d
    335c:	5a594940 	0x5a594940
    3360:	31402f46 	andi	zero,t2,0x2f46
    3364:	54454d71 	0x54454d71
    3368:	2d282021 	sltiu	t0,t1,8225
    336c:	1c1b322d 	0x1c1b322d
    3370:	181f2728 	0x181f2728
    3374:	9f360019 	0x9f360019
    3378:	00005baf 	0x5baf
    337c:	b6cdaf5b 	0xb6cdaf5b
    3380:	00a6ee41 	0xa6ee41
    3384:	28191063 	slti	t9,zero,4195
    3388:	02234004 	sllv	t0,v1,s1
    338c:	4c38f491 	0x4c38f491
    3390:	d1bebfe9 	0xd1bebfe9
    3394:	dfb5d3e0 	0xdfb5d3e0
    3398:	780a4f6d 	0x780a4f6d
    339c:	3b5fe6c3 	xori	ra,k0,0xe6c3
    33a0:	92b44d20 	lbu	s4,19744(s5)
    33a4:	206ea75b 	addi	t6,v1,-22693
    33a8:	382d2718 	xori	t5,at,0x2718
    33ac:	33295d73 	andi	t1,t9,0x5d73
    33b0:	774adba9 	jalx	d2b6ea4 <extend_mask+0xd2b1778>
    33b4:	605c5740 	0x605c5740
    33b8:	2026171a 	addi	a2,at,5914
    33bc:	204d6762 	addi	t5,v0,26466
    33c0:	383c3032 	xori	gp,at,0x3032
    33c4:	30212425 	andi	at,at,0x2425
    33c8:	3e361d21 	0x3e361d21
    33cc:	272ac175 	addiu	t2,t9,-16011
    33d0:	0004091a 	0x4091a
    33d4:	0084d799 	0x84d799
    33d8:	d2003ae1 	0xd2003ae1
    33dc:	53472d23 	0x53472d23
    33e0:	0b2b3e0c 	j	cacf830 <extend_mask+0xcaca104>
    33e4:	691f2e0c 	0x691f2e0c
    33e8:	5eebacb1 	0x5eebacb1
    33ec:	c3dbe3b5 	lwc0	$27,-7243(s8)
    33f0:	b4e09a4d 	0xb4e09a4d
    33f4:	326e3538 	andi	t6,s3,0x3538
    33f8:	c5c16e56 	lwc1	$f1,28246(t6)
    33fc:	1c442ebc 	0x1c442ebc
    3400:	ae85202e 	sw	a1,8238(s4)
    3404:	22292d1f 	addi	t1,s1,11551
    3408:	496d618e 	0x496d618e
    340c:	dbce8872 	0xdbce8872
    3410:	4f295642 	c3	0x1295642
    3414:	25302b4c 	addiu	s0,t1,11084
    3418:	5d566738 	0x5d566738
    341c:	59353722 	0x59353722
    3420:	2326413d 	addi	a2,t9,16701
    3424:	2a3c1521 	slti	gp,s1,5409
    3428:	98530d0b 	lwr	s3,3339(v0)
    342c:	02240099 	0x2240099
    3430:	c6de4306 	lwc1	$f30,17158(s6)
    3434:	96b48b36 	lhu	s4,-29898(s5)
    3438:	3a250d1c 	xori	a1,s1,0xd1c
    343c:	463c140e 	c1	0x3c140e
    3440:	4f9a5b83 	c3	0x19a5b83
    3444:	ad89a86f 	sw	t1,-22417(t4)
    3448:	d7b9a1cf 	0xd7b9a1cf
    344c:	d79d5947 	0xd79d5947
    3450:	5340649a 	0x5340649a
    3454:	61016f75 	0x61016f75
    3458:	1a4ea45b 	0x1a4ea45b
    345c:	11144956 	beq	t0,s4,159b8 <extend_mask+0x1028c>
    3460:	48005582 	0x48005582
    3464:	66a6fec3 	0x66a6fec3
    3468:	7c9b2e32 	0x7c9b2e32
    346c:	5a4b321e 	0x5a4b321e
    3470:	234b5965 	addi	t3,k0,22885
    3474:	51644256 	0x51644256
    3478:	32282427 	andi	t0,s1,0x2427
    347c:	45422e4c 	0x45422e4c
    3480:	24206427 	addiu	zero,at,25639
    3484:	0e100c1a 	jal	8403068 <extend_mask+0x83fd93c>
    3488:	2de2c5fe 	sltiu	v0,t7,-14850
    348c:	0921e3a7 	j	4878e9c <extend_mask+0x4873770>
    3490:	85742d2f 	lh	s4,11567(t3)
    3494:	0d284929 	jal	4a124a4 <extend_mask+0x4a0cd78>
    3498:	2a2b768e 	slti	t3,s1,30350
    349c:	a9daa1d7 	swl	k0,-24105(t6)
    34a0:	fee6d6c5 	0xfee6d6c5
    34a4:	eeeed8a5 	swc3	$14,-10075(s7)
    34a8:	64474c35 	0x64474c35
    34ac:	89a90a8d 	lwl	t1,2701(t5)
    34b0:	527a4308 	0x527a4308
    34b4:	8161224a 	lb	at,8778(t3)
    34b8:	7a633729 	0x7a633729
    34bc:	966b692c 	lhu	t3,26924(s3)
    34c0:	c1bebcbd 	lwc0	$30,-17219(t5)
    34c4:	3d142b35 	0x3d142b35
    34c8:	4d380a6d 	0x4d380a6d
    34cc:	aa887154 	swl	t0,29012(s4)
    34d0:	55332824 	0x55332824
    34d4:	242f4a4c 	addiu	t7,at,19020
    34d8:	35442225 	ori	a0,t2,0x2225
    34dc:	8968120a 	lwl	t0,4618(t3)
    34e0:	1c191800 	0x1c191800
    34e4:	200e1d57 	addi	t6,zero,7511
    34e8:	90716329 	lbu	s1,25385(v1)
    34ec:	49222921 	0x49222921
    34f0:	3c3b111c 	0x3c3b111c
    34f4:	4c834a54 	0x4c834a54
    34f8:	5d482ca3 	0x5d482ca3
    34fc:	be4858ed 	0xbe4858ed
    3500:	b1a77b55 	0xb1a77b55
    3504:	6711a4e4 	0x6711a4e4
    3508:	a6804081 	sh	zero,16513(s4)
    350c:	360b495e 	ori	t3,s0,0x495e
    3510:	62524e66 	0x62524e66
    3514:	02aa6d71 	0x2aa6d71
    3518:	2b2e06ba 	slti	t6,t9,1722
    351c:	d3b64424 	0xd3b64424
    3520:	18253835 	0x18253835
    3524:	1e44bfcb 	0x1e44bfcb
    3528:	b3594333 	0xb3594333
    352c:	2b202234 	slti	zero,t9,8756
    3530:	44513b2f 	0x44513b2f
    3534:	2527612b 	addiu	a3,t1,24875
    3538:	470e1d13 	c1	0x10e1d13
    353c:	232d1f22 	addi	t5,t9,7970
    3540:	09a1d94b 	j	687652c <extend_mask+0x6870e00>
    3544:	550f5b1a 	0x550f5b1a
    3548:	32283b53 	andi	t0,s1,0x3b53
    354c:	1a30191c 	0x1a30191c
    3550:	22063f46 	addi	a2,s0,16198
    3554:	1593c986 	bne	t4,s3,ffff5b70 <extend_mask+0xffff0444>
    3558:	6dc2e3bd 	0x6dc2e3bd
    355c:	a07c813c 	sb	gp,-32452(v1)
    3560:	a9d4d8d2 	swl	s4,-10030(t6)
    3564:	a8ab8cbd 	swl	t3,-29507(a1)
    3568:	0099812a 	0x99812a
    356c:	3f174bb4 	0x3f174bb4
    3570:	5e4c2265 	0x5e4c2265
    3574:	6f41a2b7 	0x6f41a2b7
    3578:	946a2015 	lhu	t2,8213(v1)
    357c:	2e262320 	sltiu	a2,s1,8992
    3580:	71b2d999 	0x71b2d999
    3584:	4c2e2123 	0x4c2e2123
    3588:	2a364650 	slti	s6,s1,18000
    358c:	3416172c 	ori	s6,zero,0x172c
    3590:	564e1a39 	0x564e1a39
    3594:	081a651e 	j	699478 <extend_mask+0x693d4c>
    3598:	182f0fa6 	0x182f0fa6
    359c:	3c69660d 	0x3c69660d
    35a0:	571f3a22 	0x571f3a22
    35a4:	216703a3 	addi	a3,t3,931
    35a8:	7d232b12 	0x7d232b12
    35ac:	4a331bf8 	c2	0x331bf8
    35b0:	be7dc5ee 	0xbe7dc5ee
    35b4:	d9d2a063 	0xd9d2a063
    35b8:	89ffb17f 	lwl	ra,-20097(t7)
    35bc:	ffdcdeb9 	0xffdcdeb9
    35c0:	5e6b7147 	0x5e6b7147
    35c4:	7595130b 	jalx	6544c2c <extend_mask+0x653f500>
    35c8:	9c802d1b 	0x9c802d1b
    35cc:	1e37a885 	0x1e37a885
    35d0:	9ca6abb3 	0x9ca6abb3
    35d4:	58001911 	0x58001911
    35d8:	8887b8a2 	lwl	a3,-18270(a0)
    35dc:	c0b89b27 	lwc0	$24,-25817(a1)
    35e0:	15212639 	bne	t1,at,cec8 <extend_mask+0x779c>
    35e4:	49493e2d 	0x49493e2d
    35e8:	2b293f7e 	slti	t1,t9,16254
    35ec:	152e122d 	bne	t1,t6,7ea4 <extend_mask+0x2778>
    35f0:	541f301a 	0x541f301a
    35f4:	2a150945 	slti	s5,s0,2373
    35f8:	2a434a2d 	slti	v1,s2,18989
    35fc:	382b162b 	xori	t3,at,0x162b
    3600:	2f879c1a 	sltiu	a3,gp,-25574
    3604:	251a355e 	addiu	k0,t0,13662
    3608:	5b4b9baa 	0x5b4b9baa
    360c:	b2cb9ed2 	0xb2cb9ed2
    3610:	b76603e2 	0xb76603e2
    3614:	edff3b0c 	swc3	$31,15116(t7)
    3618:	c6ea374f 	lwc1	$f10,14159(s7)
    361c:	26a7a0e3 	addiu	a3,s5,-24349
    3620:	0730000a 	bltzal	t9,364c <hana_bmp+0x2114>
    3624:	10533850 	beq	v0,s3,11768 <extend_mask+0xc03c>
    3628:	4dc4c996 	0x4dc4c996
    362c:	3e5a510e 	0x3e5a510e
    3630:	273e286e 	addiu	s8,t9,10350
    3634:	394ebbcc 	xori	t6,t2,0xbbcc
    3638:	c5a8390f 	lwc1	$f8,14607(t5)
    363c:	1f35444f 	0x1f35444f
    3640:	5a76242a 	0x5a76242a
    3644:	477f740d 	c1	0x17f740d
    3648:	1e5c9b1c 	0x1e5c9b1c
    364c:	163b2318 	bne	s1,k1,c2b0 <extend_mask+0x6b84>
    3650:	3c420700 	0x3c420700
    3654:	7d4f2128 	0x7d4f2128
    3658:	2a3f2019 	slti	ra,s1,8217
    365c:	0b3b3f4f 	j	cecfd3c <extend_mask+0xceca610>
    3660:	471388af 	c1	0x11388af
    3664:	bc3effed 	0xbc3effed
    3668:	850a050d 	lh	t2,1293(t0)
    366c:	433b635a 	c0	0x13b635a
    3670:	ffaddc46 	0xffaddc46
    3674:	7141e043 	0x7141e043
    3678:	923c5d3c 	lbu	gp,23868(s1)
    367c:	26143653 	addiu	s4,s0,13907
    3680:	8e808395 	lw	zero,-31851(s4)
    3684:	8bb8be56 	lwl	t8,-16810(sp)
    3688:	625a0815 	0x625a0815
    368c:	448b85d0 	0x448b85d0
    3690:	aab6c7a7 	swl	s6,-14425(s5)
    3694:	8b242d2d 	lwl	a0,11565(t9)
    3698:	2758828b 	addiu	t8,k0,-32117
    369c:	2b246955 	slti	a0,t9,26965
    36a0:	59911420 	0x59911420
    36a4:	50461685 	0x50461685
    36a8:	7d383a1b 	0x7d383a1b
    36ac:	22badc84 	addi	k0,s5,-9084
    36b0:	2229200e 	addi	t1,s1,8206
    36b4:	71732836 	0x71732836
    36b8:	531a3208 	0x531a3208
    36bc:	4573843a 	0x4573843a
    36c0:	4afa8c0a 	c2	0xfa8c0a
    36c4:	321a135a 	andi	k0,s0,0x135a
    36c8:	2a42f0e7 	slti	v0,s2,-3865
    36cc:	5dcfef90 	0x5dcfef90
    36d0:	9b3e198b 	lwr	s8,6539(t9)
    36d4:	847f5e3b 	lh	ra,24123(v1)
    36d8:	4053614b 	0x4053614b
    36dc:	1f9b9fa8 	0x1f9b9fa8
    36e0:	db6f1728 	0xdb6f1728
    36e4:	2f242e2f 	sltiu	a0,t9,11823
    36e8:	1229287b 	beq	s1,t1,d8d8 <extend_mask+0x81ac>
    36ec:	a0b07b37 	sb	s0,31543(a1)
    36f0:	2e1f172c 	sltiu	ra,s0,5932
    36f4:	606e536c 	0x606e536c
    36f8:	655f075d 	0x655f075d
    36fc:	80112a07 	lb	s1,10759(zero)
    3700:	84888251 	lh	t0,-32175(a0)
    3704:	30509384 	andi	s0,v0,0x9384
    3708:	bc4f212e 	0xbc4f212e
    370c:	3c426bb6 	0x3c426bb6
    3710:	7a249221 	0x7a249221
    3714:	0a402d33 	j	900b4cc <extend_mask+0x9005da0>
    3718:	1b660a1f 	0x1b660a1f
    371c:	8b102238 	lwl	s0,8760(t8)
    3720:	0b303a7d 	j	cc0e9f4 <extend_mask+0xcc092c8>
    3724:	ff2177da 	0xff2177da
    3728:	bcdc6a0c 	0xbcdc6a0c
    372c:	4164497a 	0x4164497a
    3730:	49612c28 	0x49612c28
    3734:	280a2c6c 	slti	t2,zero,11372
    3738:	5c81e000 	0x5c81e000
    373c:	a460131f 	sh	zero,4895(v1)
    3740:	29252628 	slti	a1,t1,9768
    3744:	24426bb0 	addiu	v0,v0,27568
    3748:	8220171a 	lb	zero,5914(s1)
    374c:	1423554a 	bne	at,v1,18c78 <extend_mask+0x1354c>
    3750:	6c656120 	0x6c656120
    3754:	24036f78 	addiu	v1,zero,28536
    3758:	122098e5 	beqz	s1,fffe9af0 <extend_mask+0xfffe43c4>
    375c:	a5bc9f78 	sh	gp,-24712(t5)
    3760:	695aaa50 	0x695aaa50
    3764:	211d433f 	addi	sp,t0,17215
    3768:	414b4233 	0x414b4233
    376c:	21381455 	addi	t8,t1,5205
    3770:	0014237d 	0x14237d
    3774:	55300116 	0x55300116
    3778:	28391838 	slti	t9,at,6200
    377c:	39082aa1 	xori	t0,t0,0x2aa1
    3780:	48000f95 	0x48000f95
    3784:	18466743 	0x18466743
    3788:	5c454aaa 	0x5c454aaa
    378c:	1c1c0b0b 	0x1c1c0b0b
    3790:	2c330a64 	sltiu	s3,at,2660
    3794:	9d3ac6ae 	0x9d3ac6ae
    3798:	571a212b 	0x571a212b
    379c:	1c1f1a19 	0x1c1f1a19
    37a0:	377d7d34 	ori	sp,k1,0x7d34
    37a4:	30282725 	andi	t0,at,0x2725
    37a8:	4c4f6566 	0x4c4f6566
    37ac:	971e1c2d 	lhu	s8,7213(t8)
    37b0:	1c952f23 	0x1c952f23
    37b4:	23ffcdbe 	addi	ra,ra,-12866
    37b8:	aef26276 	sw	s2,25206(s7)
    37bc:	94603b16 	lhu	zero,15126(v1)
    37c0:	31175f0e 	andi	s7,t0,0x5f0e
    37c4:	17190819 	bne	t8,t9,582c <extend_mask+0x100>
    37c8:	33001a00 	andi	zero,t8,0x1a00
    37cc:	69926600 	0x69926600
    37d0:	0e582a66 	jal	960a998 <extend_mask+0x960526c>
    37d4:	40101631 	0x40101631
    37d8:	34351533 	ori	s5,at,0x1533
    37dc:	8f133d58 	lw	s3,15704(t8)
    37e0:	64423d5a 	0x64423d5a
    37e4:	59022a1a 	0x59022a1a
    37e8:	161b282f 	bne	s0,k1,d8a8 <extend_mask+0x817c>
    37ec:	313c2c58 	andi	gp,t1,0x2c58
    37f0:	798d7734 	0x798d7734
    37f4:	1b241104 	0x1b241104
    37f8:	13180721 	beq	t8,t8,5480 <izigzag_index+0x54>
    37fc:	422d3554 	c0	0x2d3554
    3800:	56133146 	0x56133146
    3804:	6268b4ff 	0x6268b4ff
    3808:	4f223200 	c3	0x1223200
    380c:	1339793b 	beq	t9,t9,21cfc <extend_mask+0x1c5d0>
    3810:	dacba57b 	0xdacba57b
    3814:	fbaddf86 	0xfbaddf86
    3818:	90763f16 	lbu	s6,16150(v1)
    381c:	541140d0 	0x541140d0
    3820:	b3460317 	0xb3460317
    3824:	33b3a472 	andi	s3,sp,0xa472
    3828:	0091d0be 	0x91d0be
    382c:	a9282c24 	swl	t0,11300(t1)
    3830:	2c25523c 	sltiu	a1,at,21052
    3834:	060e52b2 	0x60e52b2
    3838:	1d6c251e 	0x1d6c251e
    383c:	705c3a12 	0x705c3a12
    3840:	403f404f 	0x403f404f
    3844:	534c4d48 	0x534c4d48
    3848:	4221415d 	c0	0x21415d
    384c:	99475d46 	lwr	a3,23878(t2)
    3850:	3b32292c 	xori	s2,t9,0x292c
    3854:	5a2e2921 	0x5a2e2921
    3858:	2d4c4d27 	sltiu	t4,t2,19751
    385c:	393f1c0d 	xori	ra,t1,0x1c0d
    3860:	5398cc0a 	0x5398cc0a
    3864:	69791d13 	0x69791d13
    3868:	90d0d5e8 	lbu	s0,-10776(a2)
    386c:	475768dd 	c1	0x15768dd
    3870:	c075485b 	lwc0	$21,18523(v1)
    3874:	641d3755 	0x641d3755
    3878:	0d7be9c4 	jal	5efa710 <extend_mask+0x5ef4fe4>
    387c:	9b0b9d82 	lwr	t3,-25214(t8)
    3880:	9da000d6 	0x9da000d6
    3884:	e5b0c169 	swc1	$f16,-16023(t5)
    3888:	2a332651 	slti	s3,s1,9809
    388c:	637e703a 	0x637e703a
    3890:	095d005d 	j	5740174 <extend_mask+0x573aa48>
    3894:	1d5c6644 	0x1d5c6644
    3898:	3c143c32 	lui	s4,0x3c32
    389c:	454f2f34 	0x454f2f34
    38a0:	20194061 	addi	t9,zero,16481
    38a4:	082e4973 	j	b925cc <extend_mask+0xb8cea0>
    38a8:	c4826155 	lwc1	$f2,24917(a0)
    38ac:	587d625a 	0x587d625a
    38b0:	402d395d 	0x402d395d
    38b4:	4b2e2c4a 	c2	0x12e2c4a
    38b8:	0e066053 	jal	819814c <extend_mask+0x8192a20>
    38bc:	900e92cf 	lbu	t6,-27953(zero)
    38c0:	db8da5bc 	0xdb8da5bc
    38c4:	c6e95575 	lwc1	$f9,21877(s7)
    38c8:	c5c1de95 	lwc1	$f1,-8555(t6)
    38cc:	77363933 	jalx	cd8e4cc <extend_mask+0xcd88da0>
    38d0:	214d230a 	addi	t5,t2,8970
    38d4:	97e9c4ba 	lhu	t1,-15174(ra)
    38d8:	a947e53b 	swl	a3,-6853(t2)
    38dc:	37b3a3df 	ori	s3,sp,0xa3df
    38e0:	dbb31834 	0xdbb31834
    38e4:	3246405a 	andi	a2,s2,0x405a
    38e8:	6c3e2121 	0x6c3e2121
    38ec:	1b3a1352 	0x1b3a1352
    38f0:	b6b5ac1c 	0xb6b5ac1c
    38f4:	281f201d 	slti	ra,zero,8221
    38f8:	7c4e2932 	0x7c4e2932
    38fc:	22140b50 	addi	s4,s0,2896
    3900:	a19ab8bc 	sb	k0,-18244(t4)
    3904:	835f7f52 	lb	ra,32594(k0)
    3908:	77453b12 	jalx	d14ec48 <extend_mask+0xd14951c>
    390c:	477b572c 	c1	0x17b572c
    3910:	2c42060b 	sltiu	v0,v0,1547
    3914:	132b1b20 	beq	t9,t3,a598 <extend_mask+0x4e6c>
    3918:	1d80cadf 	bgtz	t4,ffff6498 <extend_mask+0xffff0d6c>
    391c:	db9f8cd5 	0xdb9f8cd5
    3920:	eceaa8d4 	swc3	$10,-22316(a3)
    3924:	92533434 	lbu	s3,13364(s2)
    3928:	17251a2e 	bne	t9,a1,a1e4 <extend_mask+0x4ab8>
    392c:	3acad1c0 	xori	t2,s6,0xd1c0
    3930:	e3bfe1ff 	swc0	$31,-7681(sp)
    3934:	1d1b0935 	0x1d1b0935
    3938:	b8ada403 	swr	t5,-23549(a1)
    393c:	340a3e3e 	ori	t2,zero,0x3e3e
    3940:	4f6f272f 	c3	0x16f272f
    3944:	10135531 	beq	zero,s3,18e0c <extend_mask+0x136e0>
    3948:	2174ffc7 	addi	s4,t3,-57
    394c:	586bc1db 	0x586bc1db
    3950:	6a63c090 	0x6a63c090
    3954:	651d1514 	0x651d1514
    3958:	312b65d5 	andi	t3,t1,0x65d5
    395c:	bccfd164 	0xbccfd164
    3960:	6370533b 	0x6370533b
    3964:	24052c75 	addiu	a1,zero,11381
    3968:	442a303a 	0x442a303a
    396c:	0f062a72 	jal	c18a9c8 <extend_mask+0xc18529c>
    3970:	28411000 	slti	at,v0,4096
    3974:	9cc1eed3 	0x9cc1eed3
    3978:	d9d3f2c0 	0xd9d3f2c0
    397c:	8ac6a618 	lwl	a2,-23016(s6)
    3980:	40300737 	0x40300737
    3984:	270c73a0 	addiu	t4,t8,29600
    3988:	b5c3ba65 	0xb5c3ba65
    398c:	a0cf000f 	sb	t7,15(a2)
    3990:	006d80a4 	0x6d80a4
    3994:	ae07219a 	sw	a3,8602(s0)
    3998:	6053891e 	0x6053891e
    399c:	1371171f 	beq	k1,s1,961c <extend_mask+0x3ef0>
    39a0:	5650b0f6 	0x5650b0f6
    39a4:	430c0049 	c0	0x10c0049
    39a8:	b192f659 	0xb192f659
    39ac:	dfd58a0f 	0xdfd58a0f
    39b0:	3765344a 	ori	a1,k1,0x344a
    39b4:	5338f3d4 	0x5338f3d4
    39b8:	d5697699 	0xd5697699
    39bc:	99898c77 	lwr	t1,-29577(t4)
    39c0:	7d454a0a 	0x7d454a0a
    39c4:	441d220d 	0x441d220d
    39c8:	6757414a 	0x6757414a
    39cc:	4d856fda 	0x4d856fda
    39d0:	c392b9d7 	lwc0	$18,-17961(gp)
    39d4:	d764947f 	0xd764947f
    39d8:	db0d3f26 	0xdb0d3f26
    39dc:	10103a14 	beq	zero,s0,12230 <extend_mask+0xcb04>
    39e0:	224d8fda 	addi	t5,s2,-28710
    39e4:	d0aca6d7 	0xd0aca6d7
    39e8:	cf1f0078 	lwc3	$31,120(t8)
    39ec:	667ca73e 	0x667ca73e
    39f0:	985f6792 	lwr	ra,26514(v0)
    39f4:	9a0a8c9c 	lwr	t2,-29540(s0)
    39f8:	854bb8ba 	lh	t3,-18246(t2)
    39fc:	75051456 	jalx	4145158 <extend_mask+0x413fa2c>
    3a00:	cb08d6a0 	lwc2	$8,-10592(t8)
    3a04:	96cba2e8 	lhu	t3,-23832(s6)
    3a08:	af0c3834 	sw	t4,14388(t8)
    3a0c:	489d96b6 	0x489d96b6
    3a10:	c3e4764a 	lwc0	$4,30282(ra)
    3a14:	bdca9951 	0xbdca9951
    3a18:	3a3e494a 	xori	s8,s1,0x494a
    3a1c:	480d4734 	0x480d4734
    3a20:	0e0f292f 	jal	83ca4bc <extend_mask+0x83c4d90>
    3a24:	568ac5bc 	0x568ac5bc
    3a28:	af91d869 	sw	s1,-10135(gp)
    3a2c:	9c90c3b2 	0x9c90c3b2
    3a30:	5c629c11 	0x5c629c11
    3a34:	3722140a 	ori	v0,t9,0x140a
    3a38:	081e2929 	j	78a4a4 <extend_mask+0x784d78>
    3a3c:	29607b93 	slti	zero,t3,31635
    3a40:	d2bde1dc 	0xd2bde1dc
    3a44:	0032cbb5 	0x32cbb5
    3a48:	c1df5962 	lwc0	$31,22882(t6)
    3a4c:	8639aebe 	lh	t9,-20802(s1)
    3a50:	a2a93e2c 	sb	t1,15916(s5)
    3a54:	5a311817 	0x5a311817
    3a58:	57f656a5 	0x57f656a5
    3a5c:	c0ead8bf 	lwc0	$10,-10049(a3)
    3a60:	c1e85820 	lwc0	$8,22560(t7)
    3a64:	3b4485b8 	xori	a0,k0,0x85b8
    3a68:	aab7e9fa 	swl	s7,-5638(s5)
    3a6c:	720db2c3 	0x720db2c3
    3a70:	ada56c25 	sw	a1,27685(t5)
    3a74:	0457471c 	0x457471c
    3a78:	33480d07 	andi	t0,k0,0xd07
    3a7c:	65308c60 	0x65308c60
    3a80:	b1d1c2c3 	0xb1d1c2c3
    3a84:	fb2b5ee1 	0xfb2b5ee1
    3a88:	a3d7b71f 	sb	s7,-18657(s8)
    3a8c:	13231b20 	beq	t9,v1,a710 <extend_mask+0x4fe4>
    3a90:	12103c13 	beq	s0,s0,12ae0 <extend_mask+0xd3b4>
    3a94:	302a7d5a 	andi	t2,at,0x7d5a
    3a98:	946fc6ba 	lhu	t7,-14662(v1)
    3a9c:	a2af4500 	sb	t7,17664(s5)
    3aa0:	f9c9d6ef 	0xf9c9d6ef
    3aa4:	a8918f4b 	swl	s1,-28853(a0)
    3aa8:	1edbd0bd 	0x1edbd0bd
    3aac:	0c40316b 	jal	100c5ac <extend_mask+0x1006e80>
    3ab0:	643b3ae3 	0x643b3ae3
    3ab4:	7c31847e 	0x7c31847e
    3ab8:	aed60074 	sw	s6,116(s6)
    3abc:	710e748a 	0x710e748a
    3ac0:	585e747d 	0x585e747d
    3ac4:	5872ff84 	0x5872ff84
    3ac8:	d0d7a000 	0xd0d7a000
    3acc:	09001c52 	j	4007148 <extend_mask+0x4001a1c>
    3ad0:	4816283e 	0x4816283e
    3ad4:	09086a5b 	j	421a96c <extend_mask+0x4215240>
    3ad8:	845f47dd 	lh	ra,18397(v0)
    3adc:	dabbc9e6 	0xdabbc9e6
    3ae0:	ebb1dec0 	swc2	$17,-8512(sp)
    3ae4:	85141518 	lh	s4,5400(t0)
    3ae8:	1f0c1700 	0x1f0c1700
    3aec:	5b212b3a 	0x5b212b3a
    3af0:	bf5ea53a 	0xbf5ea53a
    3af4:	acaa8900 	sw	t2,-30464(a1)
    3af8:	84abbec7 	lh	t3,-16697(a1)
    3afc:	468efcc2 	c1	0x8efcc2
    3b00:	83b4ee9c 	lb	s4,-4452(sp)
    3b04:	d7cf0357 	0xd7cf0357
    3b08:	7054129f 	0x7054129f
    3b0c:	dba29a63 	0xdba29a63
    3b10:	50bc22c8 	0x50bc22c8
    3b14:	00cbc86a 	0xcbc86a
    3b18:	528d613f 	0x528d613f
    3b1c:	3f680e14 	0x3f680e14
    3b20:	ddbdde9c 	0xddbdde9c
    3b24:	ec240002 	swc3	$4,2(at)
    3b28:	195b5517 	0x195b5517
    3b2c:	1d2b307c 	0x1d2b307c
    3b30:	458d7563 	0x458d7563
    3b34:	5aba1398 	0x5aba1398
    3b38:	dfc9aebc 	0xdfc9aebc
    3b3c:	a3d20014 	sb	s2,20(s8)
    3b40:	20122127 	addi	s2,zero,8487
    3b44:	25160c25 	addiu	s6,t0,3109
    3b48:	2298b1c9 	addi	t8,s4,-20023
    3b4c:	772e8680 	jalx	cba1a00 <extend_mask+0xcb9c2d4>
    3b50:	97b5b5c2 	lhu	s5,-19006(sp)
    3b54:	e8a84806 	swc2	$8,18438(a1)
    3b58:	acc26c7d 	sw	v0,27773(a2)
    3b5c:	8eb3ace1 	lw	s3,-21279(s5)
    3b60:	82293903 	lb	t1,14595(s1)
    3b64:	9f8cbbc9 	0x9f8cbbc9
    3b68:	6eaf573e 	0x6eaf573e
    3b6c:	37cfe8a8 	ori	t7,s8,0xe8a8
    3b70:	a06e3237 	sb	t6,12855(v1)
    3b74:	5a6a8c41 	0x5a6a8c41
    3b78:	1364cecc 	beq	k1,a0,ffff76ac <extend_mask+0xffff1f80>
    3b7c:	b85eadfe 	swr	s8,-20994(v0)
    3b80:	3a271951 	xori	a3,s1,0x1951
    3b84:	3823212c 	xori	v1,at,0x212c
    3b88:	7a787474 	0x7a787474
    3b8c:	605d164f 	0x605d164f
    3b90:	4797cae7 	c1	0x197cae7
    3b94:	c7dc87d1 	lwc1	$f28,-30767(s8)
    3b98:	3a00142b 	xori	zero,s0,0x142b
    3b9c:	3938321c 	xori	t8,t1,0x321c
    3ba0:	29261f31 	slti	a2,t1,7985
    3ba4:	4f113f51 	c3	0x1113f51
    3ba8:	5f903a8e 	0x5f903a8e
    3bac:	a4c0afd3 	sh	zero,-20525(a2)
    3bb0:	5fc8cfcb 	0x5fc8cfcb
    3bb4:	8782a06b 	lh	v0,-24469(gp)
    3bb8:	2ac6f345 	slti	a2,s6,-3259
    3bbc:	062f507d 	0x62f507d
    3bc0:	f3a23e05 	0xf3a23e05
    3bc4:	1f0447ae 	0x1f0447ae
    3bc8:	9eb9a165 	0x9eb9a165
    3bcc:	6d747489 	0x6d747489
    3bd0:	58156412 	0x58156412
    3bd4:	89f4461f 	lwl	s4,17951(t7)
    3bd8:	4cd47979 	0x4cd47979
    3bdc:	5936262c 	0x5936262c
    3be0:	311e787b 	andi	s8,t0,0x787b
    3be4:	38252d61 	xori	a1,at,0x2d61
    3be8:	43221419 	c0	0x1221419
    3bec:	d7c54b5a 	0xd7c54b5a
    3bf0:	c58d711d 	lwc1	$f13,28957(t4)
    3bf4:	2b1e1024 	slti	s8,t8,4132
    3bf8:	0921101a 	j	4844068 <extend_mask+0x483e93c>
    3bfc:	25141532 	addiu	s4,t0,5426
    3c00:	4229091d 	c0	0x29091d
    3c04:	6c6db6a6 	0x6c6db6a6
    3c08:	9f96ecaa 	0x9f96ecaa
    3c0c:	ab8e7367 	swl	t6,29543(gp)
    3c10:	1b2b2423 	0x1b2b2423
    3c14:	d4780839 	0xd4780839
    3c18:	4a24fa08 	c2	0x24fa08
    3c1c:	05110b1b 	bgezal	t0,688c <extend_mask+0x1160>
    3c20:	2d969bd9 	sltiu	s6,t4,-25639
    3c24:	50636d8a 	0x50636d8a
    3c28:	ab540742 	swl	s4,1858(k0)
    3c2c:	1b314671 	0x1b314671
    3c30:	27272774 	addiu	a3,t9,10100
    3c34:	dd434637 	0xdd434637
    3c38:	4940383c 	0x4940383c
    3c3c:	78773f1d 	0x78773f1d
    3c40:	115f6f00 	beq	t2,ra,1f844 <extend_mask+0x1a118>
    3c44:	1a0f1ea8 	0x1a0f1ea8
    3c48:	2e6132bc 	sltiu	at,s3,12988
    3c4c:	795c0b14 	0x795c0b14
    3c50:	1a18150d 	0x1a18150d
    3c54:	1307361a 	beq	t8,a3,114c0 <extend_mask+0xbd94>
    3c58:	20303330 	addi	s0,at,13104
    3c5c:	18390312 	0x18390312
    3c60:	ffecb6cb 	0xffecb6cb
    3c64:	92e9ab95 	lbu	t1,-21611(s7)
    3c68:	560b02e7 	0x560b02e7
    3c6c:	c800b400 	lwc2	$0,-19456(zero)
    3c70:	293f3b1b 	slti	ra,t1,15131
    3c74:	07222903 	0x7222903
    3c78:	123b2374 	beq	s1,k1,ca4c <extend_mask+0x7320>
    3c7c:	80bf2d50 	lb	ra,11600(a1)
    3c80:	69ac9220 	0x69ac9220
    3c84:	874b3035 	lh	t3,12341(k0)
    3c88:	4a232241 	c2	0x232241
    3c8c:	3d1b5f12 	0x3d1b5f12
    3c90:	3e444135 	0x3e444135
    3c94:	3a3e6899 	xori	s8,s1,0x6899
    3c98:	42040904 	c0	0x40904
    3c9c:	5d3a050e 	0x5d3a050e
    3ca0:	49745220 	0x49745220
    3ca4:	c9888b67 	lwc2	$8,-29849(t4)
    3ca8:	0513390d 	0x513390d
    3cac:	13160b10 	beq	t8,s6,68f0 <extend_mask+0x11c4>
    3cb0:	2f130f3d 	sltiu	s3,t8,3901
    3cb4:	56051044 	0x56051044
    3cb8:	0d3af1de 	jal	4ebc778 <extend_mask+0x4eb704c>
    3cbc:	fdb768fa 	0xfdb768fa
    3cc0:	cec3800e 	lwc3	$3,-32754(s6)
    3cc4:	a09aaf0f 	sb	k0,-20721(a0)
    3cc8:	47222551 	c1	0x1222551
    3ccc:	1d371634 	0x1d371634
    3cd0:	080c1709 	j	305c24 <extend_mask+0x3004f8>
    3cd4:	1e434f5b 	0x1e434f5b
    3cd8:	2d3f9288 	sltiu	ra,t1,-28024
    3cdc:	08737a21 	j	1cde884 <extend_mask+0x1cd9158>
    3ce0:	392c2d2c 	xori	t4,t1,0x2d2c
    3ce4:	0c182776 	jal	609dd8 <extend_mask+0x6046ac>
    3ce8:	05963d34 	0x5963d34
    3cec:	2a2c2237 	slti	t4,s1,8759
    3cf0:	9598101c 	lhu	t8,4124(t4)
    3cf4:	0d03042a 	jal	40c10a8 <extend_mask+0x40bb97c>
    3cf8:	061a425c 	0x61a425c
    3cfc:	6989ddc2 	0x6989ddc2
    3d00:	637b5a05 	0x637b5a05
    3d04:	1f15030a 	0x1f15030a
    3d08:	180c1516 	0x180c1516
    3d0c:	21460002 	addi	a2,t2,2
    3d10:	2c091111 	sltiu	t1,zero,4369
    3d14:	55b3520c 	0x55b3520c
    3d18:	145dbcb9 	bne	v0,sp,ffff3000 <extend_mask+0xfffed8d4>
    3d1c:	531aae82 	0x531aae82
    3d20:	d5ed56ba 	0xd5ed56ba
    3d24:	84566fe1 	lh	s6,28641(v0)
    3d28:	66070b0e 	0x66070b0e
    3d2c:	0f3a591b 	jal	ce9646c <extend_mask+0xce90d40>
    3d30:	3f9b2b63 	0x3f9b2b63
    3d34:	62116a4e 	0x62116a4e
    3d38:	303e311d 	andi	s8,at,0x311d
    3d3c:	1738daaf 	bne	t9,t8,ffffa7fc <extend_mask+0xffff50d0>
    3d40:	b82f5e20 	swr	t7,24096(at)
    3d44:	292c2a37 	slti	t4,t1,10807
    3d48:	2e229896 	sltiu	v0,s1,-26474
    3d4c:	190d1510 	0x190d1510
    3d50:	0f060a1b 	jal	c18286c <extend_mask+0xc17d140>
    3d54:	4f525321 	c3	0x1525321
    3d58:	629b736a 	0x629b736a
    3d5c:	201c1a11 	addi	gp,zero,6673
    3d60:	2404110b 	addiu	a0,zero,4363
    3d64:	0f7ee26f 	jal	dfb89bc <extend_mask+0xdfb3290>
    3d68:	bc171d35 	0xbc171d35
    3d6c:	281d1d58 	slti	sp,zero,7512
    3d70:	1ed63801 	0x1ed63801
    3d74:	0091b6a9 	0x91b6a9
    3d78:	aaaaad4e 	swl	t2,-21170(s5)
    3d7c:	5040d47b 	0x5040d47b
    3d80:	3d93dd15 	0x3d93dd15
    3d84:	0900547b 	j	40151ec <extend_mask+0x400fac0>
    3d88:	2831573b 	slti	s1,at,22331
    3d8c:	3e411f3a 	0x3e411f3a
    3d90:	6d57201b 	0x6d57201b
    3d94:	1b23277a 	0x1b23277a
    3d98:	51300f33 	0x51300f33
    3d9c:	22273429 	addi	a3,s1,13353
    3da0:	2e272c33 	sltiu	a3,s1,11315
    3da4:	90962220 	lbu	s6,8736(a0)
    3da8:	0a030b0b 	j	80c2c2c <extend_mask+0x80bd500>
    3dac:	012e5148 	0x12e5148
    3db0:	693e4605 	0x693e4605
    3db4:	24847707 	addiu	a0,a0,30471
    3db8:	20090905 	addi	t1,zero,2309
    3dbc:	160629c9 	bne	s0,a2,e4e4 <extend_mask+0x8db8>
    3dc0:	38ddfdde 	xori	sp,a2,0xfdde
    3dc4:	030e1213 	0x30e1213
    3dc8:	572e16b2 	0x572e16b2
    3dcc:	f7270a55 	0xf7270a55
    3dd0:	d395b1ce 	0xd395b1ce
    3dd4:	a29e8bce 	sb	s8,-29746(s4)
    3dd8:	d14523c5 	0xd14523c5
    3ddc:	a1b8d4b0 	sb	t8,-11088(t5)
    3de0:	062f1f21 	0x62f1f21
    3de4:	3318291b 	andi	t8,t8,0x291b
    3de8:	3e4b3f3b 	0x3e4b3f3b
    3dec:	5751503c 	0x5751503c
    3df0:	3d272822 	0x3d272822
    3df4:	231e161a 	addi	s8,t8,5658
    3df8:	21163027 	addi	s6,t0,12327
    3dfc:	19223344 	0x19223344
    3e00:	0a0a1406 	j	8285018 <extend_mask+0x827f8ec>
    3e04:	0609030a 	0x609030a
    3e08:	3b34b836 	xori	s4,t9,0xb836
    3e0c:	473b8e57 	c1	0x13b8e57
    3e10:	19090c1d 	0x19090c1d
    3e14:	2b3d0d01 	slti	sp,t9,3329
    3e18:	46b9d176 	c1	0xb9d176
    3e1c:	ecf5fa01 	swc3	$21,-1535(a3)
    3e20:	02533c1c 	0x2533c1c
    3e24:	1131a800 	beq	t1,s1,fffede28 <extend_mask+0xfffe86fc>
    3e28:	06846c72 	0x6846c72
    3e2c:	49dbc3cb 	0x49dbc3cb
    3e30:	b2ccd58c 	0xb2ccd58c
    3e34:	00d3afe8 	0xd3afe8
    3e38:	d6f53f26 	0xd6f53f26
    3e3c:	19261912 	0x19261912
    3e40:	1444441d 	bne	v0,a0,14eb8 <extend_mask+0xf78c>
    3e44:	211e2236 	addi	s8,t0,8758
    3e48:	4a6a5761 	c2	0x6a5761
    3e4c:	29181a25 	slti	t8,t0,6693
    3e50:	11565a41 	beq	t2,s6,1a758 <extend_mask+0x1502c>
    3e54:	1e311e28 	0x1e311e28
    3e58:	4648620d 	c1	0x48620d
    3e5c:	13121208 	beq	t8,s2,8680 <extend_mask+0x2f54>
    3e60:	09070308 	j	41c0c20 <extend_mask+0x41bb4f4>
    3e64:	8c6c1a09 	lw	t4,6665(v1)
    3e68:	03000d11 	0x3000d11
    3e6c:	11256641 	beq	t1,a1,1d774 <extend_mask+0x18048>
    3e70:	0a1f2528 	j	87c94a0 <extend_mask+0x87c3d74>
    3e74:	ffffd7a7 	0xffffd7a7
    3e78:	f2f8b2d1 	0xf2f8b2d1
    3e7c:	ad0947b1 	sw	t1,18353(t0)
    3e80:	00089a03 	sra	s3,t0,0x8
    3e84:	c0f137e3 	lwc0	$17,14307(a3)
    3e88:	bf98d8e3 	0xbf98d8e3
    3e8c:	b9c753e7 	swr	a3,21479(t6)
    3e90:	cfa9e9d8 	lwc3	$9,-5672(sp)
    3e94:	8c062f1f 	lw	a2,12063(zero)
    3e98:	072b3e40 	0x72b3e40
    3e9c:	37231a18 	ori	v1,t9,0x1a18
    3ea0:	18223416 	0x18223416
    3ea4:	2c2e4c52 	sltiu	t6,at,19538
    3ea8:	27205266 	addiu	zero,t9,21094
    3eac:	6b565b32 	0x6b565b32
    3eb0:	24254849 	addiu	a1,at,18505
    3eb4:	ecdeb496 	swc3	$30,-19306(a2)
    3eb8:	a995bbd4 	swl	s5,-17452(t4)
    3ebc:	dcaab3bd 	0xdcaab3bd
    3ec0:	bef1e2c9 	0xbef1e2c9
    3ec4:	c1bdd8e7 	lwc0	$29,-10009(t5)
    3ec8:	9e930c00 	0x9e930c00
    3ecc:	1f3e4349 	0x1f3e4349
    3ed0:	0d220900 	jal	4882400 <extend_mask+0x487ccd4>
    3ed4:	00031830 	0x31830
    3ed8:	1c93d39f 	0x1c93d39f
    3edc:	a9706579 	swl	s0,25977(t3)
    3ee0:	5e4b2905 	0x5e4b2905
    3ee4:	203f3d25 	addi	ra,at,15653
    3ee8:	1f131919 	0x1f131919
    3eec:	04171b07 	0x4171b07
    3ef0:	050c1527 	0x50c1527
    3ef4:	2e321b0a 	sltiu	s2,s1,6922
    3ef8:	00151400 	sll	v0,s5,0x10
    3efc:	2b271b00 	slti	a3,t9,6912
    3f00:	00001000 	sll	v0,zero,0x0
    3f04:	09030001 	j	40c0004 <extend_mask+0x40ba8d8>
    3f08:	0d090f1c 	jal	4243c70 <extend_mask+0x423e544>
    3f0c:	160fb9cc 	bne	s0,t7,ffff2640 <extend_mask+0xfffecf14>
    3f10:	6b68b98e 	0x6b68b98e
    3f14:	affebc63 	sw	s8,-17309(ra)
    3f18:	97d5deb2 	lhu	s5,-8526(s8)
    3f1c:	a69adabc 	sh	k0,-9540(s4)
    3f20:	b3f4ddf5 	0xb3f4ddf5
    3f24:	bc61443e 	0xbc61443e
    3f28:	392c3b57 	xori	t4,t1,0x3b57
    3f2c:	321e0c00 	andi	s8,s0,0xc00
    3f30:	17302e99 	bne	t9,s0,f998 <extend_mask+0xa26c>
    3f34:	cb99aeac 	lwc2	$25,-20820(gp)
    3f38:	b6dbea99 	0xb6dbea99
    3f3c:	42303d42 	c0	0x303d42
    3f40:	310f1533 	andi	t7,t0,0x1533
    3f44:	271c0820 	addiu	gp,t8,2080
    3f48:	1500000a 	bnez	t0,3f74 <hana_bmp+0x2a3c>
    3f4c:	19222a34 	0x19222a34
    3f50:	1f0e0002 	0x1f0e0002
    3f54:	140e2e35 	bne	zero,t6,f82c <extend_mask+0xa100>
    3f58:	2a000000 	slti	zero,s0,0
    3f5c:	0c070502 	jal	1c1408 <extend_mask+0x1bbcdc>
    3f60:	050b120d 	0x50b120d
    3f64:	1f3e1116 	0x1f3e1116
    3f68:	a87a0fc9 	swl	k0,4041(v1)
    3f6c:	f7dbd4d7 	0xf7dbd4d7
    3f70:	a32e15a2 	sb	t6,5538(t9)
    3f74:	a4badf80 	sh	k0,-8320(a1)
    3f78:	b6f8e7f0 	0xb6f8e7f0
    3f7c:	dec7eccd 	0xdec7eccd
    3f80:	9c58786b 	0x9c58786b
    3f84:	4249574d 	c0	0x49574d
    3f88:	2015202e 	addi	s5,zero,8238
    3f8c:	38556258 	xori	s5,v0,0x6258
    3f90:	a6b2adbe 	sh	s2,-21058(s5)
    3f94:	ce93372a 	lwc3	$19,14122(s4)
    3f98:	3d34060c 	0x3d34060c
    3f9c:	2a3b3c41 	slti	k1,s1,15425
    3fa0:	0c0d0600 	jal	341800 <extend_mask+0x33c0d4>
    3fa4:	00112033 	0x112033
    3fa8:	2e261d00 	sltiu	a2,s1,7424
    3fac:	0000000f 	0xf
    3fb0:	53432c00 	0x53432c00
    3fb4:	00000001 	0x1
    3fb8:	0000060d 	break	0x0,0x18
    3fbc:	120e223f 	beq	s0,t6,c8bc <extend_mask+0x7190>
    3fc0:	1316721f 	beq	t8,s6,20840 <extend_mask+0x1b114>
    3fc4:	39f9edbd 	xori	t9,t7,0xedbd
    3fc8:	e7e04012 	swc1	$f0,16402(ra)
    3fcc:	0836276b 	j	d89dac <extend_mask+0xd84680>
    3fd0:	a65536d9 	sh	s5,14041(s2)
    3fd4:	d9e4dbcd 	0xd9e4dbcd
    3fd8:	bba47754 	swr	a0,30548(sp)
    3fdc:	92d1a853 	lbu	s1,-22445(s6)
    3fe0:	5c621c1d 	0x5c621c1d
    3fe4:	2a2c371c 	slti	t4,s1,14108
    3fe8:	1c4c9ca6 	0x1c4c9ca6
    3fec:	938a8e48 	lbu	t2,-29112(gp)
    3ff0:	41304305 	0x41304305
    3ff4:	00081432 	0x81432
    3ff8:	454b0a00 	0x454b0a00
    3ffc:	0000000f 	0xf
    4000:	23918e27 	addi	s1,gp,-29145
    4004:	13000000 	beqz	t8,4008 <hana_bmp+0x2ad0>
    4008:	0000695f 	0x695f
    400c:	40000000 	mfc0	zero,c0_index
    4010:	00000000 	sll	zero,zero,0x0
    4014:	00000506 	0x506
    4018:	16261a17 	bne	s1,a2,a878 <extend_mask+0x514c>
    401c:	92ae94c2 	lbu	t6,-27454(s5)
    4020:	8998dcd3 	lwl	t8,-9005(t4)
    4024:	76873734 	jalx	a1cdcd0 <extend_mask+0xa1c85a4>
    4028:	2c72678f 	sltiu	s2,v1,26511
    402c:	774c68ff 	jalx	d31a3fc <extend_mask+0xd314cd0>
    4030:	f2ffbfb6 	0xf2ffbfb6
    4034:	baaa4dbe 	swr	t2,19902(s5)
    4038:	dcdfad6d 	0xdcdfad6d
    403c:	15284d2b 	bne	t1,t0,174ec <extend_mask+0x11dc0>
    4040:	2a363c75 	slti	s6,s1,15477
    4044:	8abab270 	lwl	k0,-19856(s5)
    4048:	5f73726b 	0x5f73726b
    404c:	1f0d1d1d 	0x1f0d1d1d
    4050:	1a242c2a 	0x1a242c2a
    4054:	02040124 	0x2040124
    4058:	2f005db4 	sltiu	zero,t8,23988
    405c:	c97c0c0b 	lwc2	$28,3083(t3)
    4060:	00000000 	sll	zero,zero,0x0
    4064:	4f685603 	c3	0x1685603
	...
    4070:	00000913 	0x913
    4074:	3229a2e2 	andi	t1,s1,0xa2e2
    4078:	e7894381 	swc1	$f9,17281(gp)
    407c:	ebcca0d5 	swc2	$12,-24363(s8)
    4080:	bc6badbe 	0xbc6badbe
    4084:	a2abe3ff 	sb	t3,-7169(s5)
    4088:	bbf9eae0 	swr	t9,-5408(ra)
    408c:	4ba9cce8 	c2	0x1a9cce8
    4090:	926772a8 	lbu	a3,29352(s3)
    4094:	9e9a3935 	0x9e9a3935
    4098:	542c253e 	0x542c253e
    409c:	40a49de2 	0x40a49de2
    40a0:	ee7a596b 	swc3	$26,22891(s3)
    40a4:	7868646d 	0x7868646d
    40a8:	491d1b0c 	0x491d1b0c
    40ac:	1a41495f 	0x1a41495f
    40b0:	253b8050 	addiu	k1,t1,-32688
    40b4:	67bcc17f 	0x67bcc17f
    40b8:	00171a05 	0x171a05
    40bc:	00004143 	sra	t0,zero,0x5
    40c0:	31030000 	andi	v1,t0,0x0
    40c4:	00000700 	sll	zero,zero,0x1c
    40c8:	00000000 	sll	zero,zero,0x0
    40cc:	0004282b 	sltu	a1,zero,a0
    40d0:	6588abce 	0x6588abce
    40d4:	8aa2c8b3 	lwl	v0,-14157(s5)
    40d8:	8ebf899c 	lw	ra,-30308(s5)
    40dc:	cfb4c3b6 	lwc3	$20,-15434(sp)
    40e0:	60abe6aa 	0x60abe6aa
    40e4:	b2cd806b 	0xb2cd806b
    40e8:	accea58a 	sw	t6,-23158(a2)
    40ec:	503b7496 	0x503b7496
    40f0:	553d3939 	0x553d3939
    40f4:	31322986 	andi	s2,t1,0x2986
    40f8:	a8e1f78b 	swl	at,-2165(a3)
    40fc:	4a595a68 	c2	0x595a68
    4100:	4e506555 	c3	0x506555
    4104:	5255424d 	0x5255424d
    4108:	3a513c4b 	xori	s1,s2,0x3c4b
    410c:	c0cdb9d2 	lwc0	$13,-17966(a2)
    4110:	cc8a3b5b 	lwc3	$10,15195(a0)
    4114:	611e000f 	0x611e000f
    4118:	563c150b 	0x563c150b
    411c:	20110717 	addi	s1,zero,1815
    4120:	10000004 	beqz	zero,4134 <hana_bmp+0x2bfc>
    4124:	0a030300 	j	80c0c00 <extend_mask+0x80bb4d4>
    4128:	2b2d0f77 	slti	t5,t9,3959
    412c:	c5afc2b6 	lwc1	$f15,-15690(t5)
    4130:	a9bf94d1 	swl	ra,-27439(t5)
    4134:	7a74c2be 	0x7a74c2be
    4138:	b8652abb 	swr	a1,10939(v1)
    413c:	c3d0b1ba 	lwc0	$16,-20038(s8)
    4140:	dab07f8f 	0xdab07f8f
    4144:	97b8c692 	lhu	t8,-14702(sp)
    4148:	90dea452 	lbu	s8,-23470(a2)
    414c:	41bba644 	0x41bba644
    4150:	1f6abacd 	0x1f6abacd
    4154:	d7cfb267 	0xd7cfb267
    4158:	50734f6d 	0x50734f6d
    415c:	7b573451 	0x7b573451
    4160:	5540594c 	0x5540594c
    4164:	541f64b9 	0x541f64b9
    4168:	cbdde8d3 	lwc2	$29,-5933(s8)
    416c:	9765572f 	lhu	a1,22319(k1)
    4170:	12236765 	beq	s1,v1,1df08 <extend_mask+0x187dc>
    4174:	3b152c39 	xori	s5,t8,0x2c39
    4178:	2e251612 	sltiu	a1,s1,5650
    417c:	1a19170f 	0x1a19170f
    4180:	0900302e 	j	400c0b8 <extend_mask+0x400698c>
    4184:	4358b8a2 	c0	0x158b8a2
    4188:	c2e8eacf 	lwc0	$8,-5425(s7)
    418c:	fbdc4c3e 	0xfbdc4c3e
    4190:	9ceefccc 	0x9ceefccc
    4194:	90c4d0e6 	lbu	a0,-12058(a2)
    4198:	80515363 	lb	s1,21347(v0)
    419c:	9bb0d7c1 	lwr	s0,-10303(sp)
    41a0:	a0b9a2b6 	sb	t9,-23882(a1)
    41a4:	c02a40bb 	lwc0	$10,16571(at)
    41a8:	94567824 	lhu	s6,30756(v0)
    41ac:	b1a4b4ec 	0xb1a4b4ec
    41b0:	d8c68509 	0xd8c68509
    41b4:	00224426 	0x224426
    41b8:	21283843 	addi	t0,t1,14403
    41bc:	0c110a00 	jal	442800 <extend_mask+0x43d0d4>
    41c0:	216d8cc0 	addi	t5,t3,-29504
    41c4:	dad2b78c 	0xdad2b78c
    41c8:	715d381d 	0x715d381d
    41cc:	53595c50 	0x53595c50
    41d0:	4649512a 	c1	0x49512a
    41d4:	2b242625 	slti	a0,t9,9765
    41d8:	25241917 	addiu	a0,t1,6423
    41dc:	07088416 	0x7088416
    41e0:	34507799 	ori	s0,v0,0x7799
    41e4:	c1d0c4dd 	lwc0	$16,-15139(t6)
    41e8:	4d8178cb 	0x4d8178cb
    41ec:	c0deccd9 	lwc0	$30,-13095(a2)
    41f0:	b6d489fb 	0xb6d489fb
    41f4:	916b8abd 	lbu	t3,-30019(t3)
    41f8:	c1b2bfc6 	lwc0	$18,-16442(t5)
    41fc:	b6b0aa27 	0xb6b0aa27
    4200:	2c8c5461 	sltiu	t4,a0,21601
    4204:	8a4371a4 	lwl	v1,29092(s2)
    4208:	bad2f1ec 	swr	s2,-3604(s6)
    420c:	cc330018 	lwc3	$19,24(at)
    4210:	4c54390f 	0x4c54390f
    4214:	473e1d24 	c1	0x13e1d24
    4218:	09000037 	j	40000dc <extend_mask+0x3ffa9b0>
    421c:	6a9ab7cb 	0x6a9ab7cb
    4220:	b88c584d 	swr	t4,22605(a0)
    4224:	271b314a 	addiu	k1,t8,12618
    4228:	5b514243 	0x5b514243
    422c:	513a2929 	0x513a2929
    4230:	23191e18 	addi	t9,t8,7704
    4234:	101d080a 	beq	zero,sp,6260 <extend_mask+0xb34>
    4238:	7b3a1442 	0x7b3a1442
    423c:	625b75c5 	0x625b75c5
    4240:	c7c028a2 	lwc1	$f0,10402(s8)
    4244:	f9cedebd 	0xf9cedebd
    4248:	d1d68897 	0xd1d68897
    424c:	7563db8f 	jalx	58f6e3c <extend_mask+0x58f1710>
    4250:	82825f5e 	lb	v0,24414(s4)
    4254:	5981dcc3 	0x5981dcc3
    4258:	901f3db8 	lbu	ra,15800(zero)
    425c:	867f4f59 	lh	ra,20313(s3)
    4260:	003eabc4 	0x3eabc4
    4264:	d5c1a472 	0xd5c1a472
    4268:	0f578ba3 	jal	d5e2e8c <extend_mask+0xd5dd760>
    426c:	a7423b67 	sh	v0,15207(k0)
    4270:	2e270000 	sltiu	a3,s1,0
    4274:	000d54a8 	0xd54a8
    4278:	cfb2692d 	lwc3	$18,26925(sp)
    427c:	0f000a07 	jal	c00281c <extend_mask+0xbffd0f0>
    4280:	2d2d343d 	sltiu	t5,t1,13373
    4284:	41414739 	0x41414739
    4288:	1f0b110c 	0x1f0b110c
    428c:	03061619 	0x3061619
    4290:	0c10604e 	jal	418138 <extend_mask+0x412a0c>
    4294:	1d366540 	0x1d366540
    4298:	80d3937a 	lb	s3,-27782(a2)
    429c:	35e0c8c1 	ori	zero,t7,0xc8c1
    42a0:	d7cb8cc4 	0xd7cb8cc4
    42a4:	b6a49a69 	0xb6a49a69
    42a8:	c9a77358 	lwc2	$7,29528(t5)
    42ac:	48492a63 	0x48492a63
    42b0:	e2e8af1d 	swc0	$8,-20707(s7)
    42b4:	6cc4bcc2 	0x6cc4bcc2
    42b8:	9e996973 	0x9e996973
    42bc:	b1bab6c6 	0xb1bab6c6
    42c0:	af97a26d 	sw	s7,-23955(gp)
    42c4:	48727a75 	0x48727a75
    42c8:	4e702015 	c3	0x702015
    42cc:	2900000d 	slti	zero,t0,13
    42d0:	384a7b69 	xori	t2,v0,0x7b69
    42d4:	361f1d25 	ori	ra,s0,0x1d25
    42d8:	0f002d2b 	jal	c00b4ac <extend_mask+0xc005d80>
    42dc:	24293b49 	addiu	t1,at,15177
    42e0:	401b0b01 	0x401b0b01
    42e4:	04020703 	0x4020703
    42e8:	0b0d100e 	j	c344038 <extend_mask+0xc33e90c>
    42ec:	695d3337 	0x695d3337
    42f0:	3a034a9e 	xori	v1,s0,0x4a9e
    42f4:	21505fd2 	addi	s0,t2,24530
    42f8:	830093be 	lb	zero,-27714(t8)
    42fc:	aeb9ddd1 	sw	t9,-8751(s5)
    4300:	e5ffdd9b 	swc1	$f31,-8805(t7)
    4304:	65782d59 	0x65782d59
    4308:	5094d7d5 	0x5094d7d5
    430c:	a32f86e9 	sb	t7,-30999(t9)
    4310:	c8e8f2f5 	lwc2	$8,-3339(a3)
    4314:	a082a3b4 	sb	v0,-23628(a0)
    4318:	aadedfbd 	swl	s8,-8259(s6)
    431c:	8ea37280 	lw	v1,29312(s5)
    4320:	928d614a 	lbu	t5,24906(s4)
    4324:	1c41381e 	0x1c41381e
    4328:	002d4025 	or	t0,at,t5
    432c:	3e542617 	0x3e542617
    4330:	18272100 	0x18272100
    4334:	17282516 	bne	t9,t0,d790 <extend_mask+0x8064>
    4338:	2147441b 	addi	a3,t2,17435
    433c:	05000101 	bltz	t0,4744 <hana_bmp+0x320c>
    4340:	04010a0c 	bgez	zero,6b74 <extend_mask+0x1448>
    4344:	0d0b5051 	jal	42d4144 <extend_mask+0x42cea18>
    4348:	17141a18 	bne	t8,s4,abac <extend_mask+0x5480>
    434c:	2d700f43 	sltiu	s0,t3,3907
    4350:	59351e19 	0x59351e19
    4354:	2edde6db 	sltiu	sp,s6,-6437
    4358:	dbe2dbfe 	0xdbe2dbfe
    435c:	d9805654 	0xd9805654
    4360:	33946d78 	andi	s4,gp,0x6d78
    4364:	80725e42 	lb	s2,24130(v1)
    4368:	7bd5d0d8 	0x7bd5d0d8
    436c:	f3ddad6e 	0xf3ddad6e
    4370:	83954e8b 	lb	s5,20107(gp)
    4374:	f5ccbdf7 	0xf5ccbdf7
    4378:	ad7c7758 	sw	gp,30552(t3)
    437c:	626a7288 	0x626a7288
    4380:	642c2031 	0x642c2031
    4384:	494b5831 	0x494b5831
    4388:	04000b14 	bltz	zero,6fdc <extend_mask+0x18b0>
    438c:	20212313 	addi	at,at,8979
    4390:	111f2e3e 	beq	t0,ra,fc8c <extend_mask+0xa560>
    4394:	3b2a110a 	xori	t2,t9,0x110a
    4398:	0e130505 	jal	84c1414 <extend_mask+0x84bbce8>
    439c:	0e060b0c 	jal	8182c30 <extend_mask+0x817d504>
    43a0:	323c1110 	andi	gp,s1,0x1110
    43a4:	21121745 	addi	s2,t0,5957
    43a8:	00175517 	0x175517
    43ac:	31141fb8 	andi	s4,t0,0x1fb8
    43b0:	f8f0e6cf 	0xf8f0e6cf
    43b4:	3fb1c6e5 	0x3fb1c6e5
    43b8:	ac5a5a8d 	sw	k0,23181(v0)
    43bc:	315746b4 	andi	s7,t2,0x46b4
    43c0:	a4326bab 	sh	s2,27563(at)
    43c4:	b4e1b0ae 	0xb4e1b0ae
    43c8:	bcad9a65 	0xbcad9a65
    43cc:	288ccbd2 	slti	t4,a0,-13358
    43d0:	b6e8a15d 	0xb6e8a15d
    43d4:	5daba977 	0x5daba977
    43d8:	57574585 	0x57574585
    43dc:	8b5d8aa8 	lwl	sp,-30040(k0)
    43e0:	84300000 	lh	s0,0(at)
    43e4:	0a0a1636 	j	82858d8 <extend_mask+0x82801ac>
    43e8:	5b220726 	0x5b220726
    43ec:	353c3b3f 	ori	gp,t1,0x3b3f
    43f0:	192b272d 	0x192b272d
    43f4:	2c220d05 	sltiu	v0,at,3333
    43f8:	0c0f0b55 	jal	3c2d54 <extend_mask+0x3bd628>
    43fc:	1a030200 	0x1a030200
    4400:	0025001b 	divu	zero,at,a1
    4404:	57090423 	0x57090423
    4408:	081795a0 	j	5e5680 <extend_mask+0x5dff54>
    440c:	afd8bea6 	sw	t8,-16730(s8)
    4410:	bad2a274 	swr	s2,-23948(s6)
    4414:	83469eb3 	lb	a2,-24909(k0)
    4418:	86d3ab2c 	lh	s3,-21716(s6)
    441c:	87d5eae4 	lh	s5,-5404(s8)
    4420:	c8d374be 	lwc2	$19,29886(a2)
    4424:	c3bb569c 	lwc0	$27,22172(sp)
    4428:	bbede5e1 	swr	t5,-6687(ra)
    442c:	cf5f3699 	lwc3	$31,13977(k0)
    4430:	bd5e5056 	0xbd5e5056
    4434:	3770806d 	ori	s0,k1,0x806d
    4438:	9ac5c057 	lwr	a1,-16297(s6)
    443c:	00000000 	sll	zero,zero,0x0
    4440:	0b2d6a55 	j	cb5a954 <extend_mask+0xcb55228>
    4444:	55646777 	0x55646777
    4448:	6f5b202a 	0x6f5b202a
    444c:	2638363a 	addiu	t8,s1,13882
    4450:	28140f0f 	slti	s4,zero,3855
    4454:	00372808 	0x372808
    4458:	0d0d2315 	jal	4348c54 <extend_mask+0x4343528>
    445c:	0b006604 	j	c019810 <extend_mask+0xc0140e4>
    4460:	00223f00 	0x223f00
    4464:	c8f8d0e7 	lwc2	$24,-12057(a3)
    4468:	b788ab54 	0xb788ab54
    446c:	4e565d9a 	c3	0x565d9a
    4470:	859f8367 	lh	ra,-31897(t4)
    4474:	5f373789 	0x5f373789
    4478:	4781ffa2 	c1	0x181ffa2
    447c:	50ccc8a6 	0x50ccc8a6
    4480:	7276d1f9 	0x7276d1f9
    4484:	eabed6c3 	swc2	$30,-10557(s5)
    4488:	8737925c 	lh	s7,-28068(t9)
    448c:	5f573d4d 	0x5f573d4d
    4490:	948590d5 	lhu	a1,-28459(a0)
    4494:	d89d5d50 	0xd89d5d50
    4498:	00181821 	addu	v1,zero,t8
    449c:	5a889fab 	0x5a889fab
    44a0:	c5dfcacf 	lwc1	$f31,-13617(t6)
    44a4:	44062211 	0x44062211
    44a8:	1918170e 	0x1918170e
    44ac:	21122509 	addi	s2,t0,9481
    44b0:	44354148 	0x44354148
    44b4:	5f291413 	0x5f291413
    44b8:	69855a34 	0x69855a34
    44bc:	56285bda 	0x56285bda
    44c0:	898d887c 	lwl	t5,-30596(t4)
    44c4:	737e2166 	0x737e2166
    44c8:	44729b98 	0x44729b98
    44cc:	58000f58 	0x58000f58
    44d0:	62c0aed7 	0x62c0aed7
    44d4:	ecdea2bb 	swc3	$30,-23877(a2)
    44d8:	c0896b47 	lwc0	$9,27463(a0)
    44dc:	6fedd9c1 	0x6fedd9c1
    44e0:	eed9d064 	swc3	$25,-12188(s6)
    44e4:	8c76723a 	lw	s6,29242(v1)
    44e8:	403c8894 	0x403c8894
    44ec:	c3d6beb6 	lwc0	$22,-16714(s8)
    44f0:	97651812 	lhu	a1,6162(k1)
    44f4:	0901214f 	j	404853c <extend_mask+0x4042e10>
    44f8:	7697b6d1 	jalx	a5edb44 <extend_mask+0xa5e8418>
    44fc:	a5c1b21d 	sh	at,-19939(t6)
    4500:	000b0d02 	srl	at,t3,0x14
    4504:	00100c0a 	0x100c0a
    4508:	13122e20 	beq	t8,s2,fd8c <extend_mask+0xa660>
    450c:	384a373c 	xori	t2,v0,0x373c
    4510:	0c305277 	jal	c149dc <extend_mask+0xc0f2b0>
    4514:	4a50631e 	c2	0x50631e
    4518:	2b4f7f7b 	slti	t7,k0,32635
    451c:	58bdbadc 	0x58bdbadc
    4520:	89061451 	lwl	a2,5201(t0)
    4524:	64929442 	0x64929442
    4528:	10512460 	beq	v0,s1,d6ac <extend_mask+0x7f80>
    452c:	f9bef372 	0xf9bef372
    4530:	c69ea4c5 	lwc1	$f30,-23355(s4)
    4534:	e3a00870 	swc0	$0,2160(sp)
    4538:	f0ddf6df 	0xf0ddf6df
    453c:	f5fcb96d 	0xf5fcb96d
    4540:	7f3c393b 	0x7f3c393b
    4544:	9ad4c1c8 	lwr	s4,-15928(s6)
    4548:	c5823f1c 	lwc1	$f2,16156(t4)
    454c:	13287e81 	beq	t9,t0,23f54 <extend_mask+0x1e828>
    4550:	72717d99 	0x72717d99
    4554:	82b9bfb8 	lb	t9,-16456(s5)
    4558:	f5bd482f 	0xf5bd482f
    455c:	1d060000 	0x1d060000
    4560:	0a0b001c 	j	82c0070 <extend_mask+0x82ba944>
    4564:	342c267d 	ori	t4,at,0x267d
    4568:	4497533b 	0x4497533b
    456c:	5373a666 	0x5373a666
    4570:	662c2d49 	0x662c2d49
    4574:	466e7b77 	c1	0x6e7b77
    4578:	ffc5b5e3 	0xffc5b5e3
    457c:	3e143a00 	0x3e143a00
    4580:	21491020 	addi	t1,t2,4128
    4584:	1b0022cb 	blez	t8,d0b4 <extend_mask+0x7988>
    4588:	b044da55 	0xb044da55
    458c:	8dbc6d1c 	lw	gp,27932(t5)
    4590:	a8ac6acc 	swl	t4,27340(a1)
    4594:	5b86c6ef 	0x5b86c6ef
    4598:	cccb5f37 	lwc3	$11,24375(a2)
    459c:	386759d8 	xori	a3,v1,0x59d8
    45a0:	bebcf897 	0xbebcf897
    45a4:	47121947 	c1	0x1121947
    45a8:	b6c5ddaa 	0xb6c5ddaa
    45ac:	bdbb83a9 	0xbdbb83a9
    45b0:	f2beb6aa 	0xf2beb6aa
    45b4:	743e3c23 	jalx	f8f08c <extend_mask+0xf89960>
    45b8:	0b0b0805 	j	c2c2014 <extend_mask+0xc2bc8e8>
    45bc:	362e3e40 	ori	t6,s1,0x3e40
    45c0:	376c5ea0 	ori	t4,k1,0x5ea0
    45c4:	8c9e6f5d 	lw	s8,28509(a0)
    45c8:	8b7d8b28 	lwl	sp,-29912(k1)
    45cc:	1c1f4a9e 	0x1c1f4a9e
    45d0:	901ec7ff 	lbu	s8,-14337(zero)
    45d4:	e1ce8ccc 	swc0	$14,-29492(t6)
    45d8:	b4caf15c 	0xb4caf15c
    45dc:	1a5d4526 	0x1a5d4526
    45e0:	0038ff51 	0x38ff51
    45e4:	b7dbc34b 	0xb7dbc34b
    45e8:	0094d0d1 	0x94d0d1
    45ec:	dad6e27c 	0xdad6e27c
    45f0:	badc9e4a 	swr	gp,-25014(s6)
    45f4:	7e84634e 	0x7e84634e
    45f8:	3e635276 	0x3e635276
    45fc:	918b6f3a 	lbu	t3,28474(t4)
    4600:	321b659b 	andi	k1,s0,0x659b
    4604:	b0a0beb4 	0xb0a0beb4
    4608:	7685ab9a 	jalx	a16ae68 <extend_mask+0xa16573c>
    460c:	b4a5816b 	0xb4a5816b
    4610:	410a0000 	0x410a0000
    4614:	3f35042b 	0x3f35042b
    4618:	1566c997 	bne	t3,a2,ffff6c78 <extend_mask+0xffff154c>
    461c:	45a35bb8 	0x45a35bb8
    4620:	9852333d 	lwr	s2,13117(v0)
    4624:	6537113a 	0x6537113a
    4628:	a0a67288 	sb	a2,29320(a1)
    462c:	d3b4aac6 	0xd3b4aac6
    4630:	65b4e4f9 	0x65b4e4f9
    4634:	af20455b 	sw	zero,17755(t9)
    4638:	340f0091 	ori	t7,zero,0x91
    463c:	cf3875db 	lwc3	$24,30171(t9)
    4640:	7e4e0823 	0x7e4e0823
    4644:	71a8d6c9 	0x71a8d6c9
    4648:	d5c6abc0 	0xd5c6abc0
    464c:	c14792b5 	lwc0	$7,-27979(t2)
    4650:	71422f55 	0x71422f55
    4654:	245c6856 	addiu	gp,v0,26710
    4658:	4d423c28 	0x4d423c28
    465c:	00318fa4 	0x318fa4
    4660:	a8616238 	swl	at,25144(v1)
    4664:	63615e8d 	0x63615e8d
    4668:	5e6f3106 	0x5e6f3106
    466c:	0706261d 	0x706261d
    4670:	0425052b 	0x425052b
    4674:	e9cb40ae 	swc2	$11,16558(t6)
    4678:	68c1d1e1 	0x68c1d1e1
    467c:	b8267b2c 	swr	a2,31532(at)
    4680:	0080888c 	syscall	0x20222
    4684:	a1a8e6e8 	sb	t0,-6424(t5)
    4688:	967e1c4f 	lhu	s8,7247(s3)
    468c:	d2b01826 	0xd2b01826
    4690:	39473b24 	xori	a3,t2,0x3b24
    4694:	003cb664 	0x3cb664
    4698:	29eaa37e 	slti	t2,t7,-23682
    469c:	034d260c 	syscall	0xd3498
    46a0:	0812aab2 	j	4aaac8 <extend_mask+0x4a539c>
    46a4:	9e9b8ec6 	0x9e9b8ec6
    46a8:	16778478 	bne	s3,s7,fffe588c <extend_mask+0xfffe0160>
    46ac:	4f170a95 	c3	0x1170a95
    46b0:	b8956637 	swr	s5,26167(a0)
    46b4:	404c2b17 	0x404c2b17
    46b8:	d2c08b89 	0xd2c08b89
    46bc:	9e301920 	0x9e301920
    46c0:	0e182520 	jal	8609480 <extend_mask+0x8603d54>
    46c4:	07000000 	bltz	t8,46c8 <hana_bmp+0x3190>
    46c8:	19170029 	0x19170029
    46cc:	36422e92 	ori	v0,s2,0x2e92
    46d0:	3b841bdc 	xori	a0,gp,0x1bdc
    46d4:	bfe4c859 	0xbfe4c859
    46d8:	4d3d0097 	0x4d3d0097
    46dc:	a5ae58a1 	sh	t6,22689(t5)
    46e0:	d0742c0b 	0xd0742c0b
    46e4:	1c39c5ff 	0x1c39c5ff
    46e8:	9b101f28 	lwr	s0,7976(t8)
    46ec:	3e0000dd 	0x3e0000dd
    46f0:	90840f93 	lbu	a0,3987(a0)
    46f4:	bdc93c36 	0xbdc93c36
    46f8:	39334328 	xori	s3,t1,0x4328
    46fc:	14505578 	bne	v0,s0,19ce0 <extend_mask+0x145b4>
    4700:	90ba3f77 	lbu	k0,16247(a1)
    4704:	c3ce6214 	lwc0	$14,25108(s8)
    4708:	7996a2b2 	0x7996a2b2
    470c:	585844b1 	0x585844b1
    4710:	7f39bbb4 	0x7f39bbb4
    4714:	6176aa8b 	0x6176aa8b
    4718:	2d051300 	sltiu	a1,t0,4864
    471c:	04000000 	bltz	zero,4720 <hana_bmp+0x31e8>
    4720:	00001512 	0x1512
    4724:	000d6f70 	0xd6f70
    4728:	3072e09f 	andi	s2,v1,0xe09f
    472c:	7d56eeb0 	0x7d56eeb0
    4730:	b5863918 	0xb5863918
    4734:	3481e5b5 	ori	at,a0,0xe5b5
    4738:	00aafb91 	0xaafb91
    473c:	1280877c 	beqz	s4,fffe6530 <extend_mask+0xfffe0e04>
    4740:	008da3a8 	0x8da3a8
    4744:	2042126c 	addi	v0,v0,4716
    4748:	dfdeb194 	0xdfdeb194
    474c:	0c93a5ff 	jal	24e97fc <extend_mask+0x24e40d0>
    4750:	ef90d1c7 	swc3	$16,-11833(gp)
    4754:	30ea414d 	andi	t2,a3,0x414d
    4758:	492cb5ad 	0x492cb5ad
    475c:	f3a8e0f4 	0xf3a8e0f4
    4760:	96989c6b 	lhu	t8,-25493(s4)
    4764:	aa916561 	swl	s1,25953(s4)
    4768:	53ac9351 	0x53ac9351
    476c:	74856662 	jalx	2159988 <extend_mask+0x215425c>
    4770:	78972a29 	0x78972a29
    4774:	12040001 	beq	s0,a0,477c <hana_bmp+0x3244>
    4778:	00000000 	sll	zero,zero,0x0
    477c:	00040800 	sll	at,a0,0x0
    4780:	2837819b 	slti	s7,at,-32357
    4784:	ccc3b6a7 	lwc3	$3,-18777(a2)
    4788:	5391ff6f 	0x5391ff6f
    478c:	fb441969 	0xfb441969
    4790:	d6934bbc 	0xd6934bbc
    4794:	b98a00b0 	swr	t2,176(t4)
    4798:	cda7c9a6 	lwc3	$7,-13914(t5)
    479c:	76775e44 	jalx	9dd7910 <extend_mask+0x9dd21e4>
    47a0:	cc6846be 	lwc3	$8,18110(v1)
    47a4:	ff711993 	0xff711993
    47a8:	65b2e1ba 	0x65b2e1ba
    47ac:	b0b48fbf 	0xb0b48fbf
    47b0:	cdbba445 	lwc3	$27,-23483(t5)
    47b4:	4c4ed692 	0x4c4ed692
    47b8:	f5d2ff46 	0xf5d2ff46
    47bc:	57989448 	0x57989448
    47c0:	70466f89 	0x70466f89
    47c4:	88443a32 	lwl	a0,14898(v0)
    47c8:	483f959b 	0x483f959b
    47cc:	431c271d 	c0	0x11c271d
    47d0:	02000000 	0x2000000
    47d4:	00000200 	sll	zero,zero,0x8
    47d8:	2700282f 	addiu	zero,t8,10287
    47dc:	2e7bb8ad 	sltiu	k1,s3,-18259
    47e0:	c3cfc576 	lwc0	$15,-14986(s8)
    47e4:	2b6dd133 	slti	t5,k1,-11981
    47e8:	271e7547 	addiu	s8,t8,30023
    47ec:	3564cf56 	ori	a0,t3,0xcf56
    47f0:	42beabf4 	c0	0xbeabf4
    47f4:	bd9eefe6 	0xbd9eefe6
    47f8:	267de2b2 	addiu	sp,s3,-7502
    47fc:	79ae327f 	0x79ae327f
    4800:	007df8b9 	0x7df8b9
    4804:	bfc05d3a 	0xbfc05d3a
    4808:	91678abb 	lbu	a3,-30021(t3)
    480c:	78491d1b 	0x78491d1b
    4810:	3841fcf8 	xori	at,v0,0xfcf8
    4814:	806966a9 	lb	t1,26281(v1)
    4818:	353f5b6d 	ori	ra,t1,0x5b6d
    481c:	5d4c4955 	0x5d4c4955
    4820:	45385559 	0x45385559
    4824:	617d453d 	0x617d453d
    4828:	3f2f1200 	0x3f2f1200
    482c:	0a000000 	j	8000000 <extend_mask+0x7ffa8d4>
    4830:	00007e2f 	0x7e2f
    4834:	10242119 	beq	at,a0,cc9c <extend_mask+0x7570>
    4838:	7eac95c6 	0x7eac95c6
    483c:	bf661ec3 	0xbf661ec3
    4840:	ff3e2c2c 	0xff3e2c2c
    4844:	1c790b00 	0x1c790b00
    4848:	5307504b 	0x5307504b
    484c:	ffa7da96 	0xffa7da96
    4850:	d2ecb39a 	0xd2ecb39a
    4854:	cfdb6a15 	lwc3	$27,27157(s8)
    4858:	41750f44 	0x41750f44
    485c:	e2be84bf 	swc0	$30,-31553(s5)
    4860:	3f282c85 	0x3f282c85
    4864:	bf8c3659 	0xbf8c3659
    4868:	261e3f40 	addiu	s8,s0,16192
    486c:	75a47576 	jalx	691d5d8 <extend_mask+0x6917eac>
    4870:	daaf8d55 	0xdaaf8d55
    4874:	61523529 	0x61523529
    4878:	2b144d46 	slti	s4,t8,19782
    487c:	71744d3f 	0x71744d3f
    4880:	442c250f 	0x442c250f
    4884:	0a062423 	j	818908c <extend_mask+0x8183960>
    4888:	0e150000 	jal	8540000 <extend_mask+0x853a8d4>
    488c:	b88a3036 	swr	t2,12342(a0)
    4890:	2126227b 	addi	a2,t1,8827
    4894:	ceaeff2b 	lwc3	$14,-213(s5)
    4898:	52ed793e 	0x52ed793e
    489c:	2438111d 	addiu	t8,at,4381
    48a0:	52108d51 	0x52108d51
    48a4:	252164dd 	addiu	at,t1,25821
    48a8:	c0b5e7ff 	lwc0	$21,-6145(a1)
    48ac:	d9d9dfe6 	0xd9d9dfe6
    48b0:	77524587 	jalx	d49161c <extend_mask+0xd48bef0>
    48b4:	2b5cf0c7 	slti	gp,k0,-3897
    48b8:	4b5b2f5d 	c2	0x15b2f5d
    48bc:	3fbebc9b 	0x3fbebc9b
    48c0:	18412130 	0x18412130
    48c4:	3e215783 	0x3e215783
    48c8:	59a1dad5 	0x59a1dad5
    48cc:	825b5b2f 	lb	k1,23343(s2)
    48d0:	583f310c 	0x583f310c
    48d4:	2535695c 	addiu	s5,t1,26972
    48d8:	69356511 	0x69356511
    48dc:	1c06050b 	0x1c06050b
    48e0:	2928111e 	slti	t0,t1,4382
    48e4:	1918764c 	0x1918764c
    48e8:	10291a28 	beq	at,t1,b18c <extend_mask+0x5a60>
    48ec:	149ba4d7 	bne	a0,k1,fffedc4c <extend_mask+0xfffe8520>
    48f0:	4624aeb8 	c1	0x24aeb8
    48f4:	a1381f0a 	sb	t8,7946(t1)
    48f8:	181f5e6e 	0x181f5e6e
    48fc:	4031347f 	0x4031347f
    4900:	6686c5bb 	0x6686c5bb
    4904:	d492f8df 	0xd492f8df
    4908:	b5c8bbae 	0xb5c8bbae
    490c:	63357466 	0x63357466
    4910:	78934512 	0x78934512
    4914:	79631a67 	0x79631a67
    4918:	91410017 	lbu	at,23(t2)
    491c:	1e4b4817 	0x1e4b4817
    4920:	426852a9 	c0	0x6852a9
    4924:	d3b86d76 	0xd3b86d76
    4928:	1d2a4222 	0x1d2a4222
    492c:	19031426 	0x19031426
    4930:	485d393b 	0x485d393b
    4934:	293b0000 	slti	k1,t1,0
    4938:	00072c2b 	0x72c2b
    493c:	132c0b00 	beq	t9,t4,7540 <extend_mask+0x1e14>
    4940:	422c001a 	c0	0x2c001a
    4944:	2b2336e0 	slti	v1,t9,14048
    4948:	a3ff002b 	sb	ra,43(ra)
    494c:	ffb08e72 	0xffb08e72
    4950:	080b0009 	j	2c0024 <extend_mask+0x2ba8f8>
    4954:	4e4b3f44 	c3	0x4b3f44
    4958:	516a7bbb 	0x516a7bbb
    495c:	a6f9ffff 	sh	t9,-1(s7)
    4960:	ebd4fffa 	swc2	$20,-6(s8)
    4964:	c1bb6c51 	lwc0	$27,27729(t5)
    4968:	6144abb5 	0x6144abb5
    496c:	00a35a84 	0xa35a84
    4970:	141d634e 	bne	zero,sp,1d6ac <extend_mask+0x17f80>
    4974:	00344c79 	0x344c79
    4978:	083e7858 	j	f9e160 <extend_mask+0xf98a34>
    497c:	451693d4 	0x451693d4
    4980:	dfb91c00 	0xdfb91c00
    4984:	06091b0e 	0x6091b0e
    4988:	2d698970 	sltiu	t1,t3,-30352
    498c:	4c282309 	0x4c282309
    4990:	07010007 	bgez	t8,49b0 <hana_bmp+0x3478>
    4994:	24240610 	addiu	a0,at,1552
    4998:	0000485e 	0x485e
    499c:	07141e1d 	0x7141e1d
    49a0:	3d070004 	0x3d070004
    49a4:	12619275 	beq	s3,at,fffe937c <extend_mask+0xfffe3c50>
    49a8:	88302518 	lwl	s0,9496(at)
    49ac:	002e7263 	0x2e7263
    49b0:	322a2879 	andi	t2,s1,0x2879
    49b4:	0c619370 	jal	1864dc0 <extend_mask+0x185f694>
    49b8:	4db1b23c 	0x4db1b23c
    49bc:	72cd72c6 	0x72cd72c6
    49c0:	94785b05 	lhu	t8,23301(v1)
    49c4:	bec4679f 	0xbec4679f
    49c8:	59a44100 	0x59a44100
    49cc:	2e6f5219 	sltiu	t7,s3,21017
    49d0:	36690d92 	ori	t1,s3,0xd92
    49d4:	52821b00 	0x52821b00
    49d8:	00bde0bf 	0xbde0bf
    49dc:	1b00064c 	blez	t8,6310 <extend_mask+0xbe4>
    49e0:	3a032b4d 	xori	v1,s0,0x2b4d
    49e4:	969fa180 	lhu	ra,-24192(s4)
    49e8:	45010c00 	bc1t	79ec <extend_mask+0x22c0>
    49ec:	00021626 	0x21626
    49f0:	12080000 	beq	s0,t0,49f4 <hana_bmp+0x34bc>
    49f4:	31093600 	andi	t1,t0,0x3600
    49f8:	0a22251d 	j	8889474 <extend_mask+0x8883d48>
    49fc:	0000007e 	0x7e
    4a00:	c65a5700 	lwc1	$f26,22272(s2)
    4a04:	32000f2d 	andi	zero,s0,0xf2d
    4a08:	3f3d234f 	0x3f3d234f
    4a0c:	0000000b 	0xb
    4a10:	43301eb2 	c0	0x1301eb2
    4a14:	b19092d9 	0xb19092d9
    4a18:	eed0b89b 	swc3	$16,-18277(s6)
    4a1c:	6946ceeb 	0x6946ceeb
    4a20:	e3e5c0ca 	swc0	$5,-16182(ra)
    4a24:	a5c00485 	sh	zero,1157(t6)
    4a28:	62093601 	0x62093601
    4a2c:	64b76338 	0x64b76338
    4a30:	0344662b 	0x344662b
    4a34:	a3e69947 	sb	a2,-26297(ra)
    4a38:	13293c04 	beq	t9,t1,13a4c <extend_mask+0xe320>
    4a3c:	244f768f 	addiu	t7,v0,30351
    4a40:	ccad5a0c 	lwc3	$13,23052(a1)
    4a44:	0400000b 	bltz	zero,4a74 <hana_bmp+0x353c>
    4a48:	1e2a0500 	0x1e2a0500
    4a4c:	00005028 	0x5028
    4a50:	000f0000 	sll	zero,t7,0x0
    4a54:	43121209 	c0	0x1121209
    4a58:	007c2a4d 	break	0x7c,0xa9
    4a5c:	44013a00 	0x44013a00
    4a60:	17140d52 	bne	t8,s4,7fac <extend_mask+0x2880>
    4a64:	00b46000 	0xb46000
    4a68:	0804361e 	j	10d878 <extend_mask+0x10814c>
    4a6c:	11ffc476 	beq	t7,ra,ffff5c48 <extend_mask+0xffff051c>
    4a70:	d2ddcce5 	0xd2ddcce5
    4a74:	99628ffa 	lwr	v0,-28678(t3)
    4a78:	be6ef2ef 	0xbe6ef2ef
    4a7c:	d7b8666b 	0xd7b8666b
    4a80:	86433e77 	lh	v1,15991(s2)
    4a84:	0005a480 	sll	s4,a1,0x12
    4a88:	42170019 	c0	0x170019
    4a8c:	867fa0ab 	lh	ra,-24405(s3)
    4a90:	9c945a19 	0x9c945a19
    4a94:	34328c8c 	ori	s2,at,0x8c8c
    4a98:	a983c2d4 	swl	v1,-15660(t4)
    4a9c:	b6480700 	0xb6480700
    4aa0:	00000c0f 	0xc0f
    4aa4:	00000000 	sll	zero,zero,0x0
    4aa8:	3550001d 	ori	s0,t2,0x1d
    4aac:	261e352c 	addiu	s8,s0,13612
    4ab0:	26000604 	addiu	zero,s0,1540
    4ab4:	1d360b50 	0x1d360b50
    4ab8:	50071711 	0x50071711
    4abc:	01212896 	0x1212896
    4ac0:	a2000400 	sb	zero,1024(s0)
    4ac4:	2054545a 	addi	s4,v0,21594
    4ac8:	92a9a8b1 	lbu	t1,-22351(s5)
    4acc:	80bdb368 	lb	sp,-19608(a1)
    4ad0:	00e1e3ea 	0xe1e3ea
    4ad4:	1d00c2ec 	bgtz	t0,ffff5688 <extend_mask+0xfffeff5c>
    4ad8:	6f53209a 	0x6f53209a
    4adc:	73c4003b 	0x73c4003b
    4ae0:	320e0a46 	andi	t6,s0,0xa46
    4ae4:	0b3128cf 	j	cc4a33c <extend_mask+0xcc44c10>
    4ae8:	e59a3433 	swc1	$f26,13363(t4)
    4aec:	2c001151 	sltiu	zero,zero,4433
    4af0:	44722f27 	0x44722f27
    4af4:	96b4afbb 	lhu	s4,-20549(s5)
    4af8:	3b000007 	xori	zero,t8,0x7
    4afc:	17262652 	bne	t9,a2,e448 <extend_mask+0x8d1c>
    4b00:	00044f63 	0x44f63
    4b04:	3c002c79 	lui	zero,0x2c79
    4b08:	99341e1f 	lwr	s4,7711(t1)
    4b0c:	00004a5f 	0x4a5f
    4b10:	05157633 	0x5157633
    4b14:	000c2537 	0xc2537
    4b18:	0f0a041f 	jal	c28107c <extend_mask+0xc27b950>
    4b1c:	1233420b 	beq	s1,s3,1534c <extend_mask+0xfc20>
    4b20:	77a0cc3a 	jalx	e8330e8 <extend_mask+0xe82d9bc>
    4b24:	fed26700 	0xfed26700
    4b28:	00015337 	0x15337
    4b2c:	623fe4a0 	0x623fe4a0
    4b30:	c33a7e46 	lwc0	$26,32326(t9)
    4b34:	d90f621a 	0xd90f621a
    4b38:	5c3b3319 	0x5c3b3319
    4b3c:	2f1f5e5e 	sltiu	ra,t8,24158
    4b40:	829473b5 	lb	s4,29621(s4)
    4b44:	d1554d44 	0xd1554d44
    4b48:	00052c88 	0x52c88
    4b4c:	98cf95a0 	lwr	t7,-27232(a2)
    4b50:	aa977800 	swl	s7,30720(s4)
    4b54:	0605063a 	0x605063a
    4b58:	4f5f0003 	c3	0x15f0003
    4b5c:	6f553e83 	0x6f553e83
    4b60:	042d3847 	0x42d3847
    4b64:	1c85622a 	0x1c85622a
    4b68:	2a280abb 	slti	t0,s1,2747
    4b6c:	f88d0205 	0xf88d0205
    4b70:	2a21768b 	slti	at,s1,30347
    4b74:	443f3300 	0x443f3300
    4b78:	3c1b4a8b 	lui	k1,0x4a8b
    4b7c:	a44c64f6 	sh	t4,25846(v0)
    4b80:	71000000 	0x71000000
    4b84:	336c443e 	andi	t4,k1,0x443e
    4b88:	d5c324aa 	0xd5c324aa
    4b8c:	f88a840d 	0xf88a840d
    4b90:	0278653e 	0x278653e
    4b94:	67352922 	0x67352922
    4b98:	4a38005a 	c2	0x38005a
    4b9c:	6e8ec65a 	0x6e8ec65a
    4ba0:	00152d14 	0x152d14
    4ba4:	00150014 	0x150014
    4ba8:	10689ea0 	beq	v1,t0,fffec62c <extend_mask+0xfffe6f00>
    4bac:	54000000 	0x54000000
    4bb0:	09305872 	j	4c161c8 <extend_mask+0x4c10a9c>
    4bb4:	453f665d 	0x453f665d
    4bb8:	0c7c821a 	jal	1f20868 <extend_mask+0x1f1b13c>
    4bbc:	13048586 	beq	t8,a0,fffe61d8 <extend_mask+0xfffe0aac>
    4bc0:	87703259 	lh	s0,12889(k1)
    4bc4:	7c81d442 	0x7c81d442
    4bc8:	07003461 	bltz	t8,11d50 <extend_mask+0xc624>
    4bcc:	67d99217 	0x67d99217
    4bd0:	7800025f 	0x7800025f
    4bd4:	2956207a 	slti	s6,t2,8314
    4bd8:	26307600 	addiu	s0,s1,30208
    4bdc:	00201044 	0x201044
    4be0:	568eef00 	0x568eef00
    4be4:	4bc2a3b5 	c2	0x1c2a3b5
    4be8:	560c4271 	0x560c4271
    4bec:	3ba5303a 	xori	a1,sp,0x303a
    4bf0:	18282917 	0x18282917
    4bf4:	1e975269 	0x1e975269
    4bf8:	c20ec271 	lwc0	$14,-15759(s0)
    4bfc:	2a1d1f0d 	slti	sp,s0,7949
    4c00:	08374253 	j	dd094c <extend_mask+0xdcb220>
    4c04:	82ae6c00 	lb	t6,27648(s5)
    4c08:	00000018 	mult	zero,zero
    4c0c:	444b3828 	0x444b3828
    4c10:	70052114 	0x70052114
    4c14:	899d302e 	lwl	sp,12334(t4)
    4c18:	a7caa2cd 	sh	t2,-23859(s8)
    4c1c:	b99d8768 	swr	sp,-30872(t4)
    4c20:	a92b1d10 	swl	t3,7440(t1)
    4c24:	4e744d5e 	c3	0x744d5e
    4c28:	410e1d2b 	0x410e1d2b
    4c2c:	1f8a0b27 	0x1f8a0b27
    4c30:	306f6234 	andi	t7,v1,0x6234
    4c34:	05221b48 	0x5221b48
    4c38:	252a460c 	addiu	t2,t1,17932
    4c3c:	2ead3b0f 	sltiu	t5,s5,15119
    4c40:	0e8a0b38 	jal	a282ce0 <extend_mask+0xa27d5b4>
    4c44:	727d787e 	0x727d787e
    4c48:	499f0f0e 	0x499f0f0e
    4c4c:	1645486c 	bne	s2,a1,16e00 <extend_mask+0x116d4>
    4c50:	10386f38 	beq	at,t8,20934 <extend_mask+0x1b208>
    4c54:	d2b76e39 	0xd2b76e39
    4c58:	2700001d 	addiu	zero,t8,29
    4c5c:	26224e9c 	addiu	v0,s1,20124
    4c60:	a93e1a00 	swl	s8,6656(t1)
    4c64:	00051925 	0x51925
    4c68:	282c6a00 	slti	t4,at,27136
    4c6c:	3f48359d 	0x3f48359d
    4c70:	563500cd 	0x563500cd
    4c74:	f0d9c7fa 	0xf0d9c7fa
    4c78:	89889733 	lwl	t0,-26829(t4)
    4c7c:	1e001830 	bgtz	s0,ad40 <extend_mask+0x5614>
    4c80:	882a1a00 	lwl	t2,6656(at)
    4c84:	00001a17 	0x1a17
    4c88:	43177f9b 	c0	0x1177f9b
    4c8c:	7314256e 	0x7314256e
    4c90:	41955619 	0x41955619
    4c94:	23474b4b 	addi	a3,k0,19275
    4c98:	2c629111 	sltiu	v0,v1,-28399
    4c9c:	2f408062 	sltiu	zero,k0,-32670
    4ca0:	54655b00 	0x54655b00
    4ca4:	1c02323b 	0x1c02323b
    4ca8:	3f3a2c0d 	0x3f3a2c0d
    4cac:	1b647d8c 	0x1b647d8c
    4cb0:	79521600 	0x79521600
    4cb4:	00101717 	0x101717
    4cb8:	093f4918 	j	4fd2460 <extend_mask+0x4fccd34>
    4cbc:	0d182c00 	jal	460b000 <extend_mask+0x46058d4>
    4cc0:	00102137 	0x102137
    4cc4:	84e13e00 	lh	at,15872(a3)
    4cc8:	1f0e1529 	0x1f0e1529
    4ccc:	4919c9a8 	0x4919c9a8
    4cd0:	928afd9d 	lbu	t2,-611(s4)
    4cd4:	b6626d7b 	0xb6626d7b
    4cd8:	43005d30 	c0	0x1005d30
    4cdc:	17ac904b 	bne	sp,t4,fffe8e0c <extend_mask+0xfffe36e0>
    4ce0:	07013cd2 	bgez	t8,1402c <extend_mask+0xe900>
    4ce4:	8c7c21a8 	lw	gp,8616(v1)
    4ce8:	dbd1c147 	0xdbd1c147
    4cec:	142e513c 	bne	at,t6,191e0 <extend_mask+0x13ab4>
    4cf0:	5d4f1e2d 	0x5d4f1e2d
    4cf4:	6bb52258 	0x6bb52258
    4cf8:	06006746 	bltz	s0,1ea14 <extend_mask+0x192e8>
    4cfc:	5315452b 	0x5315452b
    4d00:	212e4a36 	addi	t6,t1,18998
    4d04:	4e774700 	c3	0x774700
    4d08:	3471a725 	ori	s1,v1,0xa725
    4d0c:	5e75400f 	0x5e75400f
    4d10:	1c40680c 	bgtz	v0,1ed44 <extend_mask+0x19618>
    4d14:	0c000121 	jal	484 <hana_jpg+0x3a4>
    4d18:	25010a1e 	addiu	at,t0,2590
    4d1c:	00004d72 	0x4d72
    4d20:	a800575d 	swl	zero,22365(zero)
    4d24:	00078aaa 	0x78aaa
    4d28:	b1be353b 	0xb1be353b
    4d2c:	46d1a33d 	c1	0xd1a33d
    4d30:	254d5008 	addiu	t5,t2,20488
    4d34:	2d660043 	sltiu	a2,t3,67
    4d38:	c6b68700 	lwc1	$f22,-30976(s5)
    4d3c:	9393a399 	lbu	s3,-23655(gp)
    4d40:	0cc5d8c3 	jal	317630c <extend_mask+0x3170be0>
    4d44:	ba68302c 	swr	t0,12332(s3)
    4d48:	33405691 	andi	zero,k0,0x5691
    4d4c:	6939115d 	0x6939115d
    4d50:	1559003e 	bne	t2,t9,4e4c <hana_bmp+0x3914>
    4d54:	443e4414 	0x443e4414
    4d58:	512e0e31 	0x512e0e31
    4d5c:	0d2e241e 	jal	4b89078 <extend_mask+0x4b8394c>
    4d60:	31420a4a 	andi	v0,t2,0xa4a
    4d64:	6494c887 	0x6494c887
    4d68:	52365a99 	0x52365a99
    4d6c:	7d7b3200 	0x7d7b3200
    4d70:	05200e00 	bltz	t1,8574 <extend_mask+0x2e48>
    4d74:	00190000 	sll	zero,t9,0x0
    4d78:	56256c00 	0x56256c00
    4d7c:	a6c0bc9a 	sh	zero,-17254(s6)
    4d80:	9b8ea2d8 	lwr	t6,-23848(gp)
    4d84:	6966a6ce 	0x6966a6ce
    4d88:	e46f561c 	swc1	$f15,22044(v1)
    4d8c:	24291a5c 	addiu	t1,at,6748
    4d90:	290076cf 	slti	zero,t0,30415
    4d94:	afb0a256 	sw	s0,-23978(sp)
    4d98:	dc3a2d99 	0xdc3a2d99
    4d9c:	85cad7b5 	lh	t2,-10315(t6)
    4da0:	0f33282c 	jal	ccca0b0 <extend_mask+0xccc4984>
    4da4:	22456840 	addi	a1,s2,26688
    4da8:	5925152d 	0x5925152d
    4dac:	003391c0 	0x3391c0
    4db0:	e4202212 	swc1	$f0,8722(at)
    4db4:	00005759 	0x5759
    4db8:	45361800 	0x45361800
    4dbc:	00388bad 	0x388bad
    4dc0:	d4c07938 	0xd4c07938
    4dc4:	5a3a6158 	0x5a3a6158
    4dc8:	3d00234d 	0x3d00234d
    4dcc:	2a03001e 	slti	v1,s0,30
    4dd0:	00001b0f 	0x1b0f
    4dd4:	00002b9d 	0x2b9d
    4dd8:	c8f7e383 	lwc2	$23,-7293(a3)
    4ddc:	54b4faff 	0x54b4faff
    4de0:	a6ec8b37 	sh	t4,-29897(s7)
    4de4:	0718121d 	0x718121d
    4de8:	091f33ae 	j	47cceb8 <extend_mask+0x47c778c>
    4dec:	a4a4deb7 	sh	a0,-8521(a1)
    4df0:	d0f22d17 	0xd0f22d17
    4df4:	081a9aa0 	j	6a6a80 <extend_mask+0x6a1354>
    4df8:	8b004406 	lwl	zero,17414(t8)
    4dfc:	3d233162 	0x3d233162
    4e00:	0e231d18 	jal	88c7460 <extend_mask+0x88c1d34>
    4e04:	4e000052 	c3	0x52
    4e08:	ffc66570 	0xffc66570
    4e0c:	baa73a41 	swr	a3,14913(s5)
    4e10:	bf8f4d1a 	0xbf8f4d1a
    4e14:	28131c15 	slti	s3,zero,7189
    4e18:	48c5a4cc 	0x48c5a4cc
    4e1c:	e4634e5a 	swc1	$f3,20058(v1)
    4e20:	362b1100 	ori	t3,s1,0x1100
    4e24:	054d230c 	0x54d230c
    4e28:	000e0000 	sll	zero,t6,0x0
    4e2c:	30720d33 	andi	s2,v1,0xd33
    4e30:	000b84c2 	srl	s0,t3,0x13
    4e34:	f4d3bec5 	0xf4d3bec5
    4e38:	e2cd72c7 	swc0	$13,29383(s6)
    4e3c:	c221200c 	lwc0	$1,8204(s1)
    4e40:	114a2c24 	beq	t2,t2,fed4 <extend_mask+0xa7a8>
    4e44:	8fa9959f 	lw	t1,-27233(sp)
    4e48:	c478a5e7 	lwc1	$f24,-23065(v1)
    4e4c:	20211769 	addi	at,at,5993
    4e50:	65807500 	0x65807500
    4e54:	41ac7a4f 	0x41ac7a4f
    4e58:	6e00004c 	0x6e00004c
    4e5c:	20193f1f 	addi	t9,zero,16159
    4e60:	99e32400 	lwr	v1,9216(t7)
    4e64:	09439a61 	j	50e6984 <extend_mask+0x50e1258>
    4e68:	df46c094 	0xdf46c094
    4e6c:	59002250 	0x59002250
    4e70:	1c375128 	0x1c375128
    4e74:	c2bac054 	lwc0	$26,-16300(s5)
    4e78:	5e869779 	0x5e869779
    4e7c:	65404b1b 	0x65404b1b
    4e80:	3c0e3c21 	lui	t6,0x3c21
    4e84:	14006855 	bnez	zero,1efdc <extend_mask+0x198b0>
    4e88:	46694f8e 	c1	0x694f8e
    4e8c:	58d7c490 	0x58d7c490
    4e90:	bef6d96d 	0xbef6d96d
    4e94:	7d7cf300 	0x7d7cf300
    4e98:	2500082f 	addiu	zero,t0,2095
    4e9c:	36373a40 	ori	s7,s1,0x3a40
    4ea0:	75a5c8cb 	jalx	697232c <extend_mask+0x696cc00>
    4ea4:	a2fad433 	sb	k0,-11213(s7)
    4ea8:	1b895147 	0x1b895147
    4eac:	7b269d73 	0x7b269d73
    4eb0:	83a38500 	lb	v1,-31488(sp)
    4eb4:	60846c24 	0x60846c24
    4eb8:	a4ba7612 	sh	k0,30226(a1)
    4ebc:	0681b200 	bgez	s4,ffff16c0 <extend_mask+0xfffebf94>
    4ec0:	c2a097d8 	lwc0	$0,-26664(s5)
    4ec4:	94ffa500 	lhu	ra,-23296(a3)
    4ec8:	1a4366ae 	0x1a4366ae
    4ecc:	adb4b9cc 	sw	s4,-17972(t5)
    4ed0:	5859dbdb 	0x5859dbdb
    4ed4:	b04f240e 	0xb04f240e
    4ed8:	100c2502 	beq	zero,t4,e2e4 <extend_mask+0x8bb8>
    4edc:	36350000 	ori	s5,s1,0x0
    4ee0:	3814539b 	xori	s4,zero,0x539b
    4ee4:	dfe1cd9f 	0xdfe1cd9f
    4ee8:	e74e99a1 	swc1	$f14,-26207(k0)
    4eec:	ddd77a70 	0xddd77a70
    4ef0:	9b003315 	lwr	zero,13077(t8)
    4ef4:	1f3f1431 	0x1f3f1431
    4ef8:	28042553 	slti	a0,zero,9555
    4efc:	86c8ded0 	lh	t0,-8496(s6)
    4f00:	eece0c36 	swc3	$14,3126(s6)
    4f04:	cfc1b4ee 	lwc3	$1,-19218(s8)
    4f08:	6654933d 	0x6654933d
    4f0c:	b2ca95b8 	0xb2ca95b8
    4f10:	3d214d23 	0x3d214d23
    4f14:	235173ff 	addi	s1,k0,29695
    4f18:	559ab3dc 	0x559ab3dc
    4f1c:	e3f9ddff 	swc0	$25,-8705(ra)
    4f20:	5e000d42 	0x5e000d42
    4f24:	91c1c1d6 	lbu	at,-15914(t6)
    4f28:	efce440b 	swc3	$14,17419(s8)
    4f2c:	beccc4c4 	0xbeccc4c4
    4f30:	982f0026 	lwr	t7,38(at)
    4f34:	1f00001e 	bgtz	t8,4fb0 <hana_bmp+0x3a78>
    4f38:	00003800 	sll	a3,zero,0x0
    4f3c:	af7bcad9 	sw	k1,-13607(k1)
    4f40:	e9d5ce00 	swc2	$21,-12800(t6)
    4f44:	81fcbcdf 	lb	gp,-17185(t7)
    4f48:	de311600 	0xde311600
    4f4c:	00050029 	0x50029
    4f50:	652f3300 	0x652f3300
    4f54:	603f7b88 	0x603f7b88
    4f58:	efd6b8b8 	swc3	$22,-18248(s8)
    4f5c:	5214ffdf 	0x5214ffdf
    4f60:	edffbe9a 	swc3	$31,-16742(t7)
    4f64:	9c6135f1 	0x9c6135f1
    4f68:	e7ec0e3e 	swc1	$f12,3646(ra)
    4f6c:	2353805b 	addi	s3,k0,-32677
    4f70:	51ee7e2f 	0x51ee7e2f
    4f74:	7666caf6 	jalx	99b2bd8 <extend_mask+0x99ad4ac>
    4f78:	157f6c00 	bne	t3,ra,1ff7c <extend_mask+0x1a850>
    4f7c:	63965c5d 	0x63965c5d
    4f80:	769b5343 	jalx	a6d4d0c <extend_mask+0xa6cf5e0>
    4f84:	f190d4d6 	0xf190d4d6
    4f88:	a2191000 	sb	t9,4096(s0)
    4f8c:	00161e00 	sll	v1,s6,0x18
    4f90:	00080000 	sll	zero,t0,0x0
    4f94:	3224766f 	andi	a0,s1,0x766f
    4f98:	64efffa3 	0x64efffa3
    4f9c:	91afddc1 	lbu	t7,-8767(t5)
    4fa0:	fbd2b000 	0xfbd2b000
    4fa4:	00040500 	sll	zero,a0,0x14
    4fa8:	0e38562e 	jal	8e158b8 <extend_mask+0x8e1018c>
    4fac:	1626a547 	bne	s1,a2,fffee4cc <extend_mask+0xfffe8da0>
    4fb0:	9c75a7b7 	0x9c75a7b7
    4fb4:	a207978d 	sb	a3,-26739(s0)
    4fb8:	c9e958a6 	lwc2	$9,22694(t7)
    4fbc:	ffca9696 	0xffca9696
    4fc0:	f9bee9e7 	0xf9bee9e7
    4fc4:	004c756a 	0x4c756a
    4fc8:	379bf1be 	ori	k1,gp,0xf1be
    4fcc:	945855d2 	lhu	t8,21970(v0)
    4fd0:	47c414e7 	c1	0x1c414e7
    4fd4:	e13d2a5d 	swc0	$29,10845(t1)
    4fd8:	4a65577f 	c2	0x65577f
    4fdc:	2700b58d 	addiu	zero,t8,-19059
    4fe0:	c7c2ff3b 	lwc1	$f2,-197(s8)
    4fe4:	00000036 	0x36
    4fe8:	1f000000 	bgtz	t8,4fec <hana_bmp+0x3ab4>
    4fec:	305f1c61 	andi	ra,v0,0x1c61
    4ff0:	5c7282bc 	0x5c7282bc
    4ff4:	29adb69d 	slti	t5,t5,-18787
    4ff8:	95cbcbd4 	lhu	t3,-13356(t6)
    4ffc:	14290502 	bne	at,t1,6408 <extend_mask+0xcdc>
    5000:	17160d28 	bne	t8,s6,84a4 <extend_mask+0x2d78>
    5004:	002d0788 	0x2d0788
    5008:	a7b85f40 	sh	t8,24384(sp)
    500c:	7988a4c9 	0x7988a4c9
    5010:	cdb2edb1 	lwc3	$18,-4687(t5)
    5014:	541bb9d6 	0x541bb9d6
    5018:	846d93bc 	lh	t5,-27716(v1)
    501c:	b8f68b25 	swr	s6,-29915(a3)
    5020:	350ab17b 	ori	t2,t0,0xb17b
    5024:	c7e177ab 	lwc1	$f1,30635(ra)
    5028:	534549be 	0x534549be
    502c:	f4c0c45a 	0xf4c0c45a
    5030:	190f3a6c 	0x190f3a6c
    5034:	7f2c3750 	0x7f2c3750
    5038:	b5a49860 	0xb5a49860
    503c:	a0e92400 	sb	t1,9216(a3)
    5040:	00200000 	0x200000
    5044:	00005653 	0x5653
    5048:	6c66414a 	0x6c66414a
    504c:	202e39b8 	addi	t6,at,14776
    5050:	c2d9a8c9 	lwc0	$25,-22327(s6)
    5054:	91b02c1e 	lbu	s0,11294(t5)
    5058:	061a2825 	0x61a2825
    505c:	18131d11 	0x18131d11
    5060:	11203e00 	beqz	t1,14864 <extend_mask+0xf138>
    5064:	2548537b 	addiu	t0,t2,21371
    5068:	2d9db6bb 	sltiu	sp,t4,-18757
    506c:	b3ce6fe6 	0xb3ce6fe6
    5070:	c2da997d 	lwc0	$26,-26243(s6)
    5074:	a4663ae4 	sh	a2,15076(v1)
    5078:	f2350024 	0xf2350024
    507c:	536fffd0 	0x536fffd0
    5080:	3d000700 	0x3d000700
    5084:	4aa0b7e7 	c2	0xa0b7e7
    5088:	a34f4d50 	sb	t7,19792(k0)
    508c:	50704100 	0x50704100
    5090:	660069d0 	0x660069d0
    5094:	220635b3 	addi	a2,s0,13747
    5098:	5e482b16 	0x5e482b16
    509c:	030c1b09 	0x30c1b09
    50a0:	423b1b22 	c0	0x3b1b22
    50a4:	255d6032 	addiu	sp,t2,24626
    50a8:	1728bac2 	bne	t9,t0,ffff3bb4 <extend_mask+0xfffee488>
    50ac:	4356e29d 	c0	0x156e29d
    50b0:	742c210d 	jalx	b08434 <extend_mask+0xb02d08>
    50b4:	00120006 	srlv	zero,s2,zero
    50b8:	0b001b03 	j	c006c0c <extend_mask+0xc0014e0>
    50bc:	0020290e 	0x20290e
    50c0:	04004b65 	bltz	zero,17e58 <extend_mask+0x1272c>
    50c4:	b9a2a6a1 	swr	v0,-22879(t5)
    50c8:	ffd78a86 	0xffd78a86
    50cc:	76632236 	jalx	98c88d8 <extend_mask+0x98c31ac>
    50d0:	3a50ff96 	xori	s0,s2,0xff96
    50d4:	0a3e4400 	j	8f91000 <extend_mask+0x8f8b8d4>
    50d8:	e400392f 	swc1	$f0,14639(zero)
    50dc:	0d20276f 	jal	4809dbc <extend_mask+0x4804690>
    50e0:	85ce2640 	lh	t6,9792(t6)
    50e4:	456c892f 	0x456c892f
    50e8:	002b000e 	0x2b000e
    50ec:	1e530502 	0x1e530502
    50f0:	165dbe0f 	bne	s2,sp,ffff4930 <extend_mask+0xfffef204>
    50f4:	12090f00 	beq	s0,t1,8cf8 <extend_mask+0x35cc>
    50f8:	00003b37 	0x3b37
    50fc:	301b0c54 	andi	k1,zero,0xc54
    5100:	73120f00 	0x73120f00
    5104:	0fa62956 	jal	e98a558 <extend_mask+0xe984e2c>
    5108:	36d16e30 	ori	s1,s6,0x6e30
    510c:	00030911 	0x30911
    5110:	00001400 	sll	v0,zero,0x10
    5114:	1f090f29 	0x1f090f29
    5118:	19081930 	0x19081930
    511c:	0000fae3 	0xfae3
    5120:	c3eca0ff 	lwc0	$12,-24321(ra)
    5124:	987d4f02 	lwr	sp,20226(v1)
    5128:	0fffd629 	jal	fff58a4 <extend_mask+0xfff0178>
    512c:	e61e3358 	swc1	$f30,13144(s0)
    5130:	4503000f 	0x4503000f
    5134:	5b251c54 	0x5b251c54
    5138:	2d5c68ac 	sltiu	gp,t2,26796
    513c:	00384995 	0x384995
    5140:	75006727 	jalx	4019c9c <extend_mask+0x4014570>
    5144:	001d2a0c 	syscall	0x74a8
    5148:	05101d00 	bltzal	t0,c54c <extend_mask+0x6e20>
    514c:	4d001620 	bc3f	a9d0 <extend_mask+0x52a4>
    5150:	10000405 	beqz	zero,6168 <extend_mask+0xa3c>
    5154:	52694f00 	0x52694f00
    5158:	00005a63 	0x5a63
    515c:	1c0d566d 	0x1c0d566d
    5160:	4315c6b1 	c0	0x115c6b1
    5164:	a2660002 	sb	a2,2(s3)
    5168:	17050403 	bne	t8,a1,6178 <extend_mask+0xa4c>
    516c:	0f121e02 	jal	c487808 <extend_mask+0xc4820dc>
    5170:	00354700 	0x354700
    5174:	14461429 	bne	v0,a2,a21c <extend_mask+0x4af0>
    5178:	e5d5ffdf 	swc1	$f21,-33(t6)
    517c:	63ffd5b2 	0x63ffd5b2
    5180:	7405abc2 	jalx	16af08 <extend_mask+0x1657dc>
    5184:	aa287044 	swl	t0,28740(s1)
    5188:	317a362f 	andi	k0,t3,0x362f
    518c:	001b312e 	0x1b312e
    5190:	2332373b 	addi	s2,t9,14139
    5194:	3842002b 	xori	v0,v0,0x2b
    5198:	77740042 	jalx	dd00108 <extend_mask+0xdcfa9dc>
    519c:	52000518 	0x52000518
    51a0:	12180000 	beq	s0,t8,51a4 <hana_bmp+0x3c6c>
    51a4:	00520057 	0x520057
    51a8:	03080000 	0x3080000
    51ac:	000b6067 	0xb6067
    51b0:	170e0506 	bne	t8,t6,65cc <extend_mask+0xea0>
    51b4:	0148030a 	0x148030a
    51b8:	494e618c 	0x494e618c
    51bc:	dae0606b 	0xdae0606b
    51c0:	53000004 	0x53000004
    51c4:	0013130e 	0x13130e
    51c8:	0e050035 	jal	81400d4 <extend_mask+0x813a9a8>
    51cc:	000b270b 	0xb270b
    51d0:	200b40ac 	addi	t3,zero,16556
    51d4:	5d2c1073 	0x5d2c1073
    51d8:	cbb33e13 	lwc2	$19,15891(sp)
    51dc:	b9a2d1ff 	swr	v0,-11777(t5)
    51e0:	7eda8f86 	0x7eda8f86
    51e4:	8ce04e00 	lw	zero,19968(a3)
    51e8:	332e1a6a 	andi	t6,t9,0x1a6a
    51ec:	761a2780 	jalx	8689e00 <extend_mask+0x86846d4>
    51f0:	00454600 	0x454600
    51f4:	54280920 	0x54280920
    51f8:	0000001f 	0x1f
    51fc:	c4899111 	lwc1	$f9,-28399(a0)
    5200:	3b000000 	xori	zero,t8,0x0
    5204:	00000000 	sll	zero,zero,0x0
    5208:	5a52150a 	0x5a52150a
    520c:	130e082a 	beq	t8,t6,72b8 <extend_mask+0x1b8c>
    5210:	14274b4f 	bne	at,a3,17f50 <extend_mask+0x12824>
    5214:	511f5bbf 	0x511f5bbf
    5218:	7d76100e 	0x7d76100e
    521c:	0004180c 	syscall	0x1060
    5220:	00190070 	0x190070
    5224:	b162b01f 	0xb162b01f
    5228:	0b432c18 	j	d0cb060 <extend_mask+0xd0c5934>
    522c:	005529ef 	0x5529ef
    5230:	4222048c 	c0	0x22048c
    5234:	93a6b5c3 	lbu	a2,-19005(sp)
    5238:	b76f7860 	0xb76f7860
    523c:	dca85592 	0xdca85592
    5240:	c500311f 	lwc1	$f0,12575(t0)
    5244:	5ca84030 	0x5ca84030
    5248:	3f210523 	0x3f210523
    524c:	041d5531 	0x41d5531
    5250:	00000005 	0x5
    5254:	0c5d390a 	jal	174e428 <extend_mask+0x1748cfc>
    5258:	000f0000 	sll	zero,t7,0x0
    525c:	00000000 	sll	zero,zero,0x0
    5260:	00005055 	0x5055
    5264:	00000013 	mtlo	zero
    5268:	281d2c16 	slti	sp,zero,11286
    526c:	19115b4e 	0x19115b4e
    5270:	63174f6c 	0x63174f6c
    5274:	62000600 	0x62000600
    5278:	00401113 	0x401113
    527c:	14b51ec6 	bne	a1,s5,cd98 <extend_mask+0x766c>
    5280:	f4ff001b 	0xf4ff001b
    5284:	2b1b6a10 	slti	k1,t8,27152
    5288:	21d4ff3f 	addi	s4,t6,-193
    528c:	235de677 	addi	sp,k0,-6537
    5290:	bcf0b4b6 	0xbcf0b4b6
    5294:	85c3d65b 	lh	v1,-10661(t6)
    5298:	48c1b7d4 	0x48c1b7d4
    529c:	cea50b45 	lwc3	$5,2885(s5)
    52a0:	441d4934 	0x441d4934
    52a4:	4200161b 	c0	0x161b
    52a8:	28616f68 	slti	at,v1,28520
    52ac:	690f1500 	0x690f1500
    52b0:	11483b35 	beq	t2,t0,13f88 <extend_mask+0xe85c>
    52b4:	16000000 	bnez	s0,52b8 <hana_bmp+0x3d80>
    52b8:	00000000 	sll	zero,zero,0x0
    52bc:	33270000 	andi	a3,t9,0x0
    52c0:	00152e0b 	0x152e0b
    52c4:	191f1208 	0x191f1208
    52c8:	9f456f3d 	0x9f456f3d
    52cc:	a46c0000 	sh	t4,0(v1)
    52d0:	020c134f 	0x20c134f
    52d4:	00092ba9 	0x92ba9
    52d8:	c765d4ff 	lwc1	$f5,-11009(k1)
    52dc:	ed090f67 	swc3	$9,3943(t0)
    52e0:	540c163a 	0x540c163a
    52e4:	b4131398 	0xb4131398
    52e8:	84624ee4 	lh	v0,20196(v1)
    52ec:	cfe0bbc8 	lwc3	$0,-17464(ra)
    52f0:	d19310c2 	0xd19310c2
    52f4:	bbffdff1 	swr	ra,-8207(ra)
    52f8:	3b2d2b15 	xori	t5,t9,0x2b15
    52fc:	252a3830 	addiu	t2,t1,14384
    5300:	2b000120 	slti	zero,t8,288
    5304:	15216e56 	bne	t1,at,20c60 <extend_mask+0x1b534>
    5308:	3e39091a 	0x3e39091a
    530c:	0d100026 	jal	4400098 <extend_mask+0x43fa96c>
    5310:	25100000 	addiu	s0,t0,0
    5314:	00002223 	0x2223
    5318:	5a000000 	0x5a000000
    531c:	1c000028 	bgtz	zero,53c0 <out_v_samp_factor_get_sof>
    5320:	00006d59 	0x6d59
    5324:	2400001f 	addiu	zero,zero,31
    5328:	00000012 	mflo	zero
    532c:	4c38000a 	0x4c38000a
    5330:	1717f3ef 	bne	t8,s7,22f0 <hana_bmp+0xdb8>
    5334:	bd9ee6e3 	0xbd9ee6e3
    5338:	a5e0bf04 	sh	zero,-16636(t7)
    533c:	4bac1026 	c2	0x1ac1026
    5340:	8d12d2ec 	lw	s2,-11540(t0)
    5344:	3bdecfb6 	xori	s8,s8,0xcfb6
    5348:	d7d3a1bc 	0xd7d3a1bc
    534c:	56d9e8d7 	0x56d9e8d7
    5350:	e8c87400 	swc2	$8,29696(a2)
    5354:	32112059 	andi	s1,s0,0x2059
    5358:	402a1700 	0x402a1700
    535c:	00000101 	0x101
    5360:	36000c0a 	ori	zero,s0,0xc0a
    5364:	28391000 	slti	t9,at,4096
    5368:	37353d36 	ori	s5,t9,0x3d36
    536c:	38120e10 	xori	s2,zero,0xe10
    5370:	12090000 	beq	s0,t1,5374 <out_unread_marker>

00005374 <out_unread_marker>:
    5374:	000000d8 	0xd8
    5378:	000000e0 	0xe0
    537c:	000000db 	0xdb
    5380:	000000db 	0xdb
    5384:	000000c0 	sll	zero,zero,0x3
    5388:	000000c4 	0xc4
    538c:	000000c4 	0xc4
    5390:	000000c4 	0xc4
    5394:	000000c4 	0xc4
    5398:	000000da 	0xda

0000539c <out_index_get_sof>:
    539c:	00000000 	sll	zero,zero,0x0
    53a0:	00000001 	0x1
    53a4:	00000002 	srl	zero,zero,0x0

000053a8 <out_id_get_sof>:
    53a8:	00000001 	0x1
    53ac:	00000002 	srl	zero,zero,0x0
    53b0:	00000003 	sra	zero,zero,0x0

000053b4 <out_h_samp_factor_get_sof>:
    53b4:	00000002 	srl	zero,zero,0x0
    53b8:	00000001 	0x1
    53bc:	00000001 	0x1

000053c0 <out_v_samp_factor_get_sof>:
    53c0:	00000002 	srl	zero,zero,0x0
    53c4:	00000001 	0x1
    53c8:	00000001 	0x1

000053cc <out_quant_tbl_no_get_sof>:
    53cc:	00000000 	sll	zero,zero,0x0
    53d0:	00000001 	0x1
    53d4:	00000001 	0x1

000053d8 <out_comp_id_get_sos>:
    53d8:	00000001 	0x1
    53dc:	00000002 	srl	zero,zero,0x0
    53e0:	00000003 	sra	zero,zero,0x0

000053e4 <out_dc_tbl_no_get_sos>:
    53e4:	00000000 	sll	zero,zero,0x0
    53e8:	00000001 	0x1
    53ec:	00000001 	0x1

000053f0 <out_ac_tbl_no_get_sos>:
    53f0:	00000000 	sll	zero,zero,0x0
    53f4:	00000001 	0x1
    53f8:	00000001 	0x1

000053fc <out_length_get_dht>:
    53fc:	0000001d 	0x1d
    5400:	000000b3 	0xb3
    5404:	0000001d 	0x1d
    5408:	000000b3 	0xb3

0000540c <out_index_get_dht>:
    540c:	00000000 	sll	zero,zero,0x0
    5410:	00000010 	mfhi	zero
    5414:	00000001 	0x1
    5418:	00000011 	mthi	zero

0000541c <out_count_get_dht>:
    541c:	0000000c 	syscall
    5420:	000000a2 	0xa2
    5424:	0000000c 	syscall
    5428:	000000a2 	0xa2

0000542c <izigzag_index>:
    542c:	00000000 	sll	zero,zero,0x0
    5430:	00000001 	0x1
    5434:	00000008 	jr	zero
    5438:	00000010 	mfhi	zero
    543c:	00000009 	jalr	zero,zero
    5440:	00000002 	srl	zero,zero,0x0
    5444:	00000003 	sra	zero,zero,0x0
    5448:	0000000a 	0xa
    544c:	00000011 	mthi	zero
    5450:	00000018 	mult	zero,zero
    5454:	00000020 	add	zero,zero,zero
    5458:	00000019 	multu	zero,zero
    545c:	00000012 	mflo	zero
    5460:	0000000b 	0xb
    5464:	00000004 	sllv	zero,zero,zero
    5468:	00000005 	0x5
    546c:	0000000c 	syscall
    5470:	00000013 	mtlo	zero
    5474:	0000001a 	div	zero,zero,zero
    5478:	00000021 	addu	zero,zero,zero
    547c:	00000028 	0x28
    5480:	00000030 	0x30
    5484:	00000029 	0x29
    5488:	00000022 	neg	zero,zero
    548c:	0000001b 	divu	zero,zero,zero
    5490:	00000014 	0x14
    5494:	0000000d 	break
    5498:	00000006 	srlv	zero,zero,zero
    549c:	00000007 	srav	zero,zero,zero
    54a0:	0000000e 	0xe
    54a4:	00000015 	0x15
    54a8:	0000001c 	0x1c
    54ac:	00000023 	negu	zero,zero
    54b0:	0000002a 	slt	zero,zero,zero
    54b4:	00000031 	0x31
    54b8:	00000038 	0x38
    54bc:	00000039 	0x39
    54c0:	00000032 	0x32
    54c4:	0000002b 	sltu	zero,zero,zero
    54c8:	00000024 	and	zero,zero,zero
    54cc:	0000001d 	0x1d
    54d0:	00000016 	0x16
    54d4:	0000000f 	0xf
    54d8:	00000017 	0x17
    54dc:	0000001e 	0x1e
    54e0:	00000025 	or	zero,zero,zero
    54e4:	0000002c 	0x2c
    54e8:	00000033 	0x33
    54ec:	0000003a 	0x3a
    54f0:	0000003b 	0x3b
    54f4:	00000034 	0x34
    54f8:	0000002d 	0x2d
    54fc:	00000026 	xor	zero,zero,zero
    5500:	0000001f 	0x1f
    5504:	00000027 	nor	zero,zero,zero
    5508:	0000002e 	0x2e
    550c:	00000035 	0x35
    5510:	0000003c 	0x3c
    5514:	0000003d 	0x3d
    5518:	00000036 	0x36
    551c:	0000002f 	0x2f
    5520:	00000037 	0x37
    5524:	0000003e 	0x3e
    5528:	0000003f 	0x3f

0000552c <zigzag_index>:
    552c:	00000000 	sll	zero,zero,0x0
    5530:	00000001 	0x1
    5534:	00000005 	0x5
    5538:	00000006 	srlv	zero,zero,zero
    553c:	0000000e 	0xe
    5540:	0000000f 	0xf
    5544:	0000001b 	divu	zero,zero,zero
    5548:	0000001c 	0x1c
    554c:	00000002 	srl	zero,zero,0x0
    5550:	00000004 	sllv	zero,zero,zero
    5554:	00000007 	srav	zero,zero,zero
    5558:	0000000d 	break
    555c:	00000010 	mfhi	zero
    5560:	0000001a 	div	zero,zero,zero
    5564:	0000001d 	0x1d
    5568:	0000002a 	slt	zero,zero,zero
    556c:	00000003 	sra	zero,zero,0x0
    5570:	00000008 	jr	zero
    5574:	0000000c 	syscall
    5578:	00000011 	mthi	zero
    557c:	00000019 	multu	zero,zero
    5580:	0000001e 	0x1e
    5584:	00000029 	0x29
    5588:	0000002b 	sltu	zero,zero,zero
    558c:	00000009 	jalr	zero,zero
    5590:	0000000b 	0xb
    5594:	00000012 	mflo	zero
    5598:	00000018 	mult	zero,zero
    559c:	0000001f 	0x1f
    55a0:	00000028 	0x28
    55a4:	0000002c 	0x2c
    55a8:	00000035 	0x35
    55ac:	0000000a 	0xa
    55b0:	00000013 	mtlo	zero
    55b4:	00000017 	0x17
    55b8:	00000020 	add	zero,zero,zero
    55bc:	00000027 	nor	zero,zero,zero
    55c0:	0000002d 	0x2d
    55c4:	00000034 	0x34
    55c8:	00000036 	0x36
    55cc:	00000014 	0x14
    55d0:	00000016 	0x16
    55d4:	00000021 	addu	zero,zero,zero
    55d8:	00000026 	xor	zero,zero,zero
    55dc:	0000002e 	0x2e
    55e0:	00000033 	0x33
    55e4:	00000037 	0x37
    55e8:	0000003c 	0x3c
    55ec:	00000015 	0x15
    55f0:	00000022 	neg	zero,zero
    55f4:	00000025 	or	zero,zero,zero
    55f8:	0000002f 	0x2f
    55fc:	00000032 	0x32
    5600:	00000038 	0x38
    5604:	0000003b 	0x3b
    5608:	0000003d 	0x3d
    560c:	00000023 	negu	zero,zero
    5610:	00000024 	and	zero,zero,zero
    5614:	00000030 	0x30
    5618:	00000031 	0x31
    561c:	00000039 	0x39
    5620:	0000003a 	0x3a
    5624:	0000003e 	0x3e
    5628:	0000003f 	0x3f

0000562c <bit_set_mask>:
    562c:	00000001 	0x1
    5630:	00000002 	srl	zero,zero,0x0
    5634:	00000004 	sllv	zero,zero,zero
    5638:	00000008 	jr	zero
    563c:	00000010 	mfhi	zero
    5640:	00000020 	add	zero,zero,zero
    5644:	00000040 	sll	zero,zero,0x1
    5648:	00000080 	sll	zero,zero,0x2
    564c:	00000100 	sll	zero,zero,0x4
    5650:	00000200 	sll	zero,zero,0x8
    5654:	00000400 	sll	zero,zero,0x10
    5658:	00000800 	sll	at,zero,0x0
    565c:	00001000 	sll	v0,zero,0x0
    5660:	00002000 	sll	a0,zero,0x0
    5664:	00004000 	sll	t0,zero,0x0
    5668:	00008000 	sll	s0,zero,0x0
    566c:	00010000 	sll	zero,at,0x0
    5670:	00020000 	sll	zero,v0,0x0
    5674:	00040000 	sll	zero,a0,0x0
    5678:	00080000 	sll	zero,t0,0x0
    567c:	00100000 	sll	zero,s0,0x0
    5680:	00200000 	0x200000
    5684:	00400000 	0x400000
    5688:	00800000 	0x800000
    568c:	01000000 	0x1000000
    5690:	02000000 	0x2000000
    5694:	04000000 	bltz	zero,5698 <bit_set_mask+0x6c>
    5698:	08000000 	j	0 <hana_jpg-0xe0>
    569c:	10000000 	beqz	zero,56a0 <bit_set_mask+0x74>
    56a0:	20000000 	addi	zero,zero,0
    56a4:	40000000 	mfc0	zero,c0_index
    56a8:	80000000 	lb	zero,0(zero)

000056ac <lmask>:
    56ac:	00000001 	0x1
    56b0:	00000003 	sra	zero,zero,0x0
    56b4:	00000007 	srav	zero,zero,zero
    56b8:	0000000f 	0xf
    56bc:	0000001f 	0x1f
    56c0:	0000003f 	0x3f
    56c4:	0000007f 	0x7f
    56c8:	000000ff 	0xff
    56cc:	000001ff 	0x1ff
    56d0:	000003ff 	0x3ff
    56d4:	000007ff 	0x7ff
    56d8:	00000fff 	0xfff
    56dc:	00001fff 	0x1fff
    56e0:	00003fff 	0x3fff
    56e4:	00007fff 	0x7fff
    56e8:	0000ffff 	0xffff
    56ec:	0001ffff 	0x1ffff
    56f0:	0003ffff 	0x3ffff
    56f4:	0007ffff 	0x7ffff
    56f8:	000fffff 	0xfffff
    56fc:	001fffff 	0x1fffff
    5700:	003fffff 	0x3fffff
    5704:	007fffff 	0x7fffff
    5708:	00ffffff 	0xffffff
    570c:	01ffffff 	0x1ffffff
    5710:	03ffffff 	0x3ffffff
    5714:	07ffffff 	0x7ffffff
    5718:	0fffffff 	jal	ffffffc <extend_mask+0xfffa8d0>
    571c:	1fffffff 	0x1fffffff
    5720:	3fffffff 	0x3fffffff
    5724:	7fffffff 	0x7fffffff
    5728:	ffffffff 	0xffffffff

0000572c <extend_mask>:
    572c:	fffffffe 	0xfffffffe
    5730:	fffffffc 	0xfffffffc
    5734:	fffffff8 	0xfffffff8
    5738:	fffffff0 	0xfffffff0
    573c:	ffffffe0 	0xffffffe0
    5740:	ffffffc0 	0xffffffc0
    5744:	ffffff80 	0xffffff80
    5748:	ffffff00 	0xffffff00
    574c:	fffffe00 	0xfffffe00
    5750:	fffffc00 	0xfffffc00
    5754:	fffff800 	0xfffff800
    5758:	fffff000 	0xfffff000
    575c:	ffffe000 	0xffffe000
    5760:	ffffc000 	0xffffc000
    5764:	ffff8000 	0xffff8000
    5768:	ffff0000 	0xffff0000
    576c:	fffe0000 	0xfffe0000
    5770:	fffc0000 	0xfffc0000
    5774:	fff80000 	0xfff80000
    5778:	fff00000 	0xfff00000
