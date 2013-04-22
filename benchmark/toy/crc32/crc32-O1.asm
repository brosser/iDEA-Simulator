
crc32.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <gen_crc_table>:
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  {
    crc_accum = ( (word32) i << 24 );
   0:	3c050000 	lui	a1,0x0
   4:	24a50000 	addiu	a1,a1,0

//=============================================================================
//=  CRC32 table initialization                                               =
//=============================================================================
void gen_crc_table(void)
{
   8:	00002021 	addu	a0,zero,zero
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
   c:	3c0604c1 	lui	a2,0x4c1
  10:	24c61db7 	addiu	a2,a2,7607
void gen_crc_table(void)
{
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  14:	24070100 	addiu	a3,zero,256
  {
    crc_accum = ( (word32) i << 24 );
  18:	00041600 	sll	v0,a0,0x18
  1c:	24030008 	addiu	v1,zero,8
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
  20:	04410004 	bgez	v0,34 <gen_crc_table+0x34>
  24:	00000000 	sll	zero,zero,0x0
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
  28:	00021040 	sll	v0,v0,0x1
  2c:	0800000e 	j	38 <gen_crc_table+0x38>
  30:	00461026 	xor	v0,v0,a2
      else
        crc_accum = (crc_accum << 1);
  34:	00021040 	sll	v0,v0,0x1
  38:	2463ffff 	addiu	v1,v1,-1
  3c:	3063ffff 	andi	v1,v1,0xffff
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
  40:	1460fff7 	bnez	v1,20 <gen_crc_table+0x20>
  44:	00000000 	sll	zero,zero,0x0
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
      else
        crc_accum = (crc_accum << 1);
    }
    crc_table[i] = crc_accum;
  48:	aca20000 	sw	v0,0(a1)
  4c:	24840001 	addiu	a0,a0,1
void gen_crc_table(void)
{
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  50:	1487fff1 	bne	a0,a3,18 <gen_crc_table+0x18>
  54:	24a50004 	addiu	a1,a1,4
      else
        crc_accum = (crc_accum << 1);
    }
    crc_table[i] = crc_accum;
  }
}
  58:	03e00008 	jr	ra
  5c:	00000000 	sll	zero,zero,0x0

00000060 <update_crc>:
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
  60:	10c00011 	beqz	a2,a8 <update_crc+0x48>
  64:	3c080000 	lui	t0,0x0
  68:	00001021 	addu	v0,zero,zero
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
     crc_accum = (crc_accum << 8) ^ crc_table[i];
  6c:	25080000 	addiu	t0,t0,0
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
  70:	00043e02 	srl	a3,a0,0x18
  74:	90a30000 	lbu	v1,0(a1)
  78:	00000000 	sll	zero,zero,0x0
  7c:	00e31826 	xor	v1,a3,v1
     crc_accum = (crc_accum << 8) ^ crc_table[i];
  80:	00042200 	sll	a0,a0,0x8
  84:	00031880 	sll	v1,v1,0x2
  88:	00681821 	addu	v1,v1,t0
  8c:	8c630000 	lw	v1,0(v1)
  90:	00000000 	sll	zero,zero,0x0
  94:	00832026 	xor	a0,a0,v1
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
  98:	24420001 	addiu	v0,v0,1
  9c:	0046182b 	sltu	v1,v0,a2
  a0:	1460fff3 	bnez	v1,70 <update_crc+0x10>
  a4:	24a50001 	addiu	a1,a1,1
     crc_accum = (crc_accum << 8) ^ crc_table[i];
   }
   crc_accum = ~crc_accum;

   return crc_accum;
  a8:	03e00008 	jr	ra
  ac:	00041027 	nor	v0,zero,a0

000000b0 <main>:
void gen_crc_table(void);
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size);

//===== Main program ==========================================================
void main(void)
{
  b0:	27bdefe0 	addiu	sp,sp,-4128
  b4:	afbf101c 	sw	ra,4124(sp)
  b8:	afb11018 	sw	s1,4120(sp)
  word32      crc32;            // 32-bit CRC value
  word16      i;                // Loop counter (16 bit)
  word32      j;                // Loop counter (32 bit)

  // Initialize the CRC table
  gen_crc_table();
  bc:	0c000000 	jal	0 <gen_crc_table>
  c0:	afb01014 	sw	s0,4116(sp)
  c4:	27b00010 	addiu	s0,sp,16
//----- Prototypes ------------------------------------------------------------
void gen_crc_table(void);
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size);

//===== Main program ==========================================================
void main(void)
  c8:	27b11010 	addiu	s1,sp,4112
  // Initialize the CRC table
  gen_crc_table();

  // Load buffer with BUFFER_LEN random bytes
  for (i=0; i<BUFFER_LEN; i++)
    buff[i] = (byte) rand();
  cc:	0c000000 	jal	0 <gen_crc_table>
  d0:	00000000 	sll	zero,zero,0x0
  d4:	a2020000 	sb	v0,0(s0)
  d8:	26100001 	addiu	s0,s0,1

  // Initialize the CRC table
  gen_crc_table();

  // Load buffer with BUFFER_LEN random bytes
  for (i=0; i<BUFFER_LEN; i++)
  dc:	1611fffb 	bne	s0,s1,cc <main+0x1c>
  e0:	2404ffff 	addiu	a0,zero,-1
    buff[i] = (byte) rand();

  // Compute and output CRC
  crc32 = update_crc(-1, buff, BUFFER_LEN);
  e4:	27a50010 	addiu	a1,sp,16
  e8:	0c000000 	jal	0 <gen_crc_table>
  ec:	24061000 	addiu	a2,zero,4096
  printf("CRC = %08X \n", crc32);
  f0:	3c040000 	lui	a0,0x0
  f4:	24840000 	addiu	a0,a0,0
  f8:	0c000000 	jal	0 <gen_crc_table>
  fc:	00402821 	addu	a1,v0,zero
}
 100:	8fbf101c 	lw	ra,4124(sp)
 104:	8fb11018 	lw	s1,4120(sp)
 108:	8fb01014 	lw	s0,4116(sp)
 10c:	03e00008 	jr	ra
 110:	27bd1020 	addiu	sp,sp,4128

Disassembly of section .bss:

00000000 <crc_table>:
	...
