
crc32.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <gen_crc_table>:
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  {
    crc_accum = ( (word32) i << 24 );
   0:	3c050000 	lui	a1,0x0
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
   4:	3c0604c1 	lui	a2,0x4c1
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  {
    crc_accum = ( (word32) i << 24 );
   8:	24a50000 	addiu	a1,a1,0

//=============================================================================
//=  CRC32 table initialization                                               =
//=============================================================================
void gen_crc_table(void)
{
   c:	00002021 	addu	a0,zero,zero
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
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
  20:	0440000c 	bltz	v0,54 <gen_crc_table+0x54>
  24:	00000000 	sll	zero,zero,0x0
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
      else
        crc_accum = (crc_accum << 1);
  28:	00021040 	sll	v0,v0,0x1
  2c:	2463ffff 	addiu	v1,v1,-1
  30:	3063ffff 	andi	v1,v1,0xffff
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
  34:	1460fffa 	bnez	v1,20 <gen_crc_table+0x20>
  38:	00000000 	sll	zero,zero,0x0
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
      else
        crc_accum = (crc_accum << 1);
    }
    crc_table[i] = crc_accum;
  3c:	24840001 	addiu	a0,a0,1
  40:	aca20000 	sw	v0,0(a1)
void gen_crc_table(void)
{
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  44:	1487fff4 	bne	a0,a3,18 <gen_crc_table+0x18>
  48:	24a50004 	addiu	a1,a1,4
      else
        crc_accum = (crc_accum << 1);
    }
    crc_table[i] = crc_accum;
  }
}
  4c:	03e00008 	jr	ra
  50:	00000000 	sll	zero,zero,0x0
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
  54:	00021040 	sll	v0,v0,0x1
  58:	0800000b 	j	2c <gen_crc_table+0x2c>
  5c:	00461026 	xor	v0,v0,a2

00000060 <main>:
void gen_crc_table(void);
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size);

//===== Main program ==========================================================
void main(void)
{
  60:	27bdefe0 	addiu	sp,sp,-4128
  64:	afb21018 	sw	s2,4120(sp)
  word32      crc32;            // 32-bit CRC value
  word16      i;                // Loop counter (16 bit)
  word32      j;                // Loop counter (32 bit)

  // Initialize the CRC table
  gen_crc_table();
  68:	27b20010 	addiu	s2,sp,16
void gen_crc_table(void);
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size);

//===== Main program ==========================================================
void main(void)
{
  6c:	afb11014 	sw	s1,4116(sp)
  70:	afb01010 	sw	s0,4112(sp)
  74:	afbf101c 	sw	ra,4124(sp)
  word32      crc32;            // 32-bit CRC value
  word16      i;                // Loop counter (16 bit)
  word32      j;                // Loop counter (32 bit)

  // Initialize the CRC table
  gen_crc_table();
  78:	0c000000 	jal	0 <gen_crc_table>
  7c:	02408021 	addu	s0,s2,zero
//----- Prototypes ------------------------------------------------------------
void gen_crc_table(void);
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size);

//===== Main program ==========================================================
void main(void)
  80:	27b11010 	addiu	s1,sp,4112
  // Initialize the CRC table
  gen_crc_table();

  // Load buffer with BUFFER_LEN random bytes
  for (i=0; i<BUFFER_LEN; i++)
    buff[i] = (byte) rand();
  84:	0c000000 	jal	0 <gen_crc_table>
  88:	00000000 	sll	zero,zero,0x0
  8c:	a2020000 	sb	v0,0(s0)
  90:	26100001 	addiu	s0,s0,1

  // Initialize the CRC table
  gen_crc_table();

  // Load buffer with BUFFER_LEN random bytes
  for (i=0; i<BUFFER_LEN; i++)
  94:	1611fffb 	bne	s0,s1,84 <main+0x24>
  98:	3c040000 	lui	a0,0x0
//----- Prototypes ------------------------------------------------------------
void gen_crc_table(void);
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size);

//===== Main program ==========================================================
void main(void)
  9c:	2405ffff 	addiu	a1,zero,-1
  a0:	24840000 	addiu	a0,a0,0
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
  a4:	92420000 	lbu	v0,0(s2)
  a8:	00051e02 	srl	v1,a1,0x18
  ac:	00621026 	xor	v0,v1,v0
     crc_accum = (crc_accum << 8) ^ crc_table[i];
  b0:	00021080 	sll	v0,v0,0x2
  b4:	00821021 	addu	v0,a0,v0
  b8:	8c420000 	lw	v0,0(v0)
  bc:	00052a00 	sll	a1,a1,0x8
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
  c0:	26520001 	addiu	s2,s2,1
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
  c4:	1650fff7 	bne	s2,s0,a4 <main+0x44>
  c8:	00a22826 	xor	a1,a1,v0
  for (i=0; i<BUFFER_LEN; i++)
    buff[i] = (byte) rand();

  // Compute and output CRC
  crc32 = update_crc(-1, buff, BUFFER_LEN);
  printf("CRC = %08X \n", crc32);
  cc:	3c040000 	lui	a0,0x0
}
  d0:	8fbf101c 	lw	ra,4124(sp)
  d4:	8fb21018 	lw	s2,4120(sp)
  d8:	8fb11014 	lw	s1,4116(sp)
  dc:	8fb01010 	lw	s0,4112(sp)
  for (i=0; i<BUFFER_LEN; i++)
    buff[i] = (byte) rand();

  // Compute and output CRC
  crc32 = update_crc(-1, buff, BUFFER_LEN);
  printf("CRC = %08X \n", crc32);
  e0:	24840000 	addiu	a0,a0,0
  e4:	00052827 	nor	a1,zero,a1
  e8:	08000000 	j	0 <gen_crc_table>
  ec:	27bd1020 	addiu	sp,sp,4128

000000f0 <update_crc>:
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
  f0:	10c0000f 	beqz	a2,130 <update_crc+0x40>
  f4:	3c080000 	lui	t0,0x0
  f8:	00001021 	addu	v0,zero,zero
  fc:	25080000 	addiu	t0,t0,0
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
 100:	90a30000 	lbu	v1,0(a1)
 104:	00043e02 	srl	a3,a0,0x18
 108:	00e31826 	xor	v1,a3,v1
     crc_accum = (crc_accum << 8) ^ crc_table[i];
 10c:	00031880 	sll	v1,v1,0x2
 110:	01031821 	addu	v1,t0,v1
 114:	8c670000 	lw	a3,0(v1)
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
 118:	24420001 	addiu	v0,v0,1
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
     crc_accum = (crc_accum << 8) ^ crc_table[i];
 11c:	00042200 	sll	a0,a0,0x8
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
 120:	0046182b 	sltu	v1,v0,a2
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
 124:	24a50001 	addiu	a1,a1,1
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
 128:	1460fff5 	bnez	v1,100 <update_crc+0x10>
 12c:	00872026 	xor	a0,a0,a3
     crc_accum = (crc_accum << 8) ^ crc_table[i];
   }
   crc_accum = ~crc_accum;

   return crc_accum;
 130:	03e00008 	jr	ra
 134:	00041027 	nor	v0,zero,a0

Disassembly of section .bss:

00000000 <crc_table>:
	...
