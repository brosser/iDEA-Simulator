
crc32.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
void gen_crc_table(void);
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size);

//===== Main program ==========================================================
void main(void)
{
   0:	27bdefd8 	addiu	sp,sp,-4136
   4:	afb11018 	sw	s1,4120(sp)
//----- Prototypes ------------------------------------------------------------
void gen_crc_table(void);
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size);

//===== Main program ==========================================================
void main(void)
   8:	3c110000 	lui	s1,0x0
   c:	26310000 	addiu	s1,s1,0
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
  10:	3c0204c1 	lui	v0,0x4c1
void gen_crc_table(void);
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size);

//===== Main program ==========================================================
void main(void)
{
  14:	afbf1024 	sw	ra,4132(sp)
  18:	afb31020 	sw	s3,4128(sp)
  1c:	afb2101c 	sw	s2,4124(sp)
  20:	afb01014 	sw	s0,4116(sp)
//----- Prototypes ------------------------------------------------------------
void gen_crc_table(void);
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size);

//===== Main program ==========================================================
void main(void)
  24:	02202021 	addu	a0,s1,zero
{
  28:	00001821 	addu	v1,zero,zero
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
  2c:	24421db7 	addiu	v0,v0,7607
void gen_crc_table(void)
{
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  30:	08000027 	j	9c <main+0x9c>
  34:	24080100 	addiu	t0,zero,256
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
  38:	00053040 	sll	a2,a1,0x1
  3c:	04a0001f 	bltz	a1,bc <main+0xbc>
  40:	00c23826 	xor	a3,a2,v0
  44:	00062840 	sll	a1,a2,0x1
  48:	04c00020 	bltz	a2,cc <main+0xcc>
  4c:	00a23826 	xor	a3,a1,v0
  50:	00053040 	sll	a2,a1,0x1
  54:	04a00021 	bltz	a1,dc <main+0xdc>
  58:	00c23826 	xor	a3,a2,v0
  5c:	00062840 	sll	a1,a2,0x1
  60:	04c00022 	bltz	a2,ec <main+0xec>
  64:	00a23826 	xor	a3,a1,v0
  68:	00053040 	sll	a2,a1,0x1
  6c:	04a00023 	bltz	a1,fc <main+0xfc>
  70:	00c23826 	xor	a3,a2,v0
  74:	00062840 	sll	a1,a2,0x1
  78:	04c00024 	bltz	a2,10c <main+0x10c>
  7c:	00a23826 	xor	a3,a1,v0
  80:	00053040 	sll	a2,a1,0x1
      else
        crc_accum = (crc_accum << 1);
    }
    crc_table[i] = crc_accum;
  84:	04a00025 	bltz	a1,11c <main+0x11c>
  88:	00c23826 	xor	a3,a2,v0
  8c:	24630001 	addiu	v1,v1,1
  90:	ac860000 	sw	a2,0(a0)
void gen_crc_table(void)
{
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  94:	10680026 	beq	v1,t0,130 <main+0x130>
  98:	24840004 	addiu	a0,a0,4
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
  9c:	00032e40 	sll	a1,v1,0x19
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  {
    crc_accum = ( (word32) i << 24 );
  a0:	00033600 	sll	a2,v1,0x18
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
  a4:	04c1ffe4 	bgez	a2,38 <main+0x38>
  a8:	00a23826 	xor	a3,a1,v0
  ac:	00e02821 	addu	a1,a3,zero
  b0:	00053040 	sll	a2,a1,0x1
  b4:	04a1ffe3 	bgez	a1,44 <main+0x44>
  b8:	00c23826 	xor	a3,a2,v0
  bc:	00e03021 	addu	a2,a3,zero
  c0:	00062840 	sll	a1,a2,0x1
  c4:	04c1ffe2 	bgez	a2,50 <main+0x50>
  c8:	00a23826 	xor	a3,a1,v0
  cc:	00e02821 	addu	a1,a3,zero
  d0:	00053040 	sll	a2,a1,0x1
  d4:	04a1ffe1 	bgez	a1,5c <main+0x5c>
  d8:	00c23826 	xor	a3,a2,v0
  dc:	00e03021 	addu	a2,a3,zero
  e0:	00062840 	sll	a1,a2,0x1
  e4:	04c1ffe0 	bgez	a2,68 <main+0x68>
  e8:	00a23826 	xor	a3,a1,v0
  ec:	00e02821 	addu	a1,a3,zero
  f0:	00053040 	sll	a2,a1,0x1
  f4:	04a1ffdf 	bgez	a1,74 <main+0x74>
  f8:	00c23826 	xor	a3,a2,v0
  fc:	00e03021 	addu	a2,a3,zero
 100:	00062840 	sll	a1,a2,0x1
 104:	04c1ffde 	bgez	a2,80 <main+0x80>
 108:	00a23826 	xor	a3,a1,v0
 10c:	00e02821 	addu	a1,a3,zero
 110:	00053040 	sll	a2,a1,0x1
      else
        crc_accum = (crc_accum << 1);
    }
    crc_table[i] = crc_accum;
 114:	04a1ffdd 	bgez	a1,8c <main+0x8c>
 118:	00c23826 	xor	a3,a2,v0
 11c:	00e03021 	addu	a2,a3,zero
 120:	24630001 	addiu	v1,v1,1
 124:	ac860000 	sw	a2,0(a0)
void gen_crc_table(void)
{
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
 128:	1468ffdc 	bne	v1,t0,9c <main+0x9c>
 12c:	24840004 	addiu	a0,a0,4
 130:	27b30010 	addiu	s3,sp,16
 134:	02608021 	addu	s0,s3,zero
//----- Prototypes ------------------------------------------------------------
void gen_crc_table(void);
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size);

//===== Main program ==========================================================
void main(void)
 138:	27b21010 	addiu	s2,sp,4112
  // Initialize the CRC table
  gen_crc_table();

  // Load buffer with BUFFER_LEN random bytes
  for (i=0; i<BUFFER_LEN; i++)
    buff[i] = (byte) rand();
 13c:	0c000000 	jal	0 <main>
 140:	00000000 	sll	zero,zero,0x0
 144:	a2020000 	sb	v0,0(s0)
 148:	26100001 	addiu	s0,s0,1

  // Initialize the CRC table
  gen_crc_table();

  // Load buffer with BUFFER_LEN random bytes
  for (i=0; i<BUFFER_LEN; i++)
 14c:	1612fffb 	bne	s0,s2,13c <main+0x13c>
 150:	2405ffff 	addiu	a1,zero,-1
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
 154:	92620000 	lbu	v0,0(s3)
 158:	00051e02 	srl	v1,a1,0x18
 15c:	00621026 	xor	v0,v1,v0
     crc_accum = (crc_accum << 8) ^ crc_table[i];
 160:	00021080 	sll	v0,v0,0x2
 164:	02221021 	addu	v0,s1,v0
 168:	8c420000 	lw	v0,0(v0)
 16c:	00052a00 	sll	a1,a1,0x8
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
 170:	26730001 	addiu	s3,s3,1
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
 174:	1670fff7 	bne	s3,s0,154 <main+0x154>
 178:	00a22826 	xor	a1,a1,v0
  for (i=0; i<BUFFER_LEN; i++)
    buff[i] = (byte) rand();

  // Compute and output CRC
  crc32 = update_crc(-1, buff, BUFFER_LEN);
  printf("CRC = %08X \n", crc32);
 17c:	3c040000 	lui	a0,0x0
}
 180:	8fbf1024 	lw	ra,4132(sp)
 184:	8fb31020 	lw	s3,4128(sp)
 188:	8fb2101c 	lw	s2,4124(sp)
 18c:	8fb11018 	lw	s1,4120(sp)
 190:	8fb01014 	lw	s0,4116(sp)
  for (i=0; i<BUFFER_LEN; i++)
    buff[i] = (byte) rand();

  // Compute and output CRC
  crc32 = update_crc(-1, buff, BUFFER_LEN);
  printf("CRC = %08X \n", crc32);
 194:	24840000 	addiu	a0,a0,0
 198:	00052827 	nor	a1,zero,a1
 19c:	08000000 	j	0 <main>
 1a0:	27bd1028 	addiu	sp,sp,4136

000001a4 <gen_crc_table>:

//=============================================================================
//=  CRC32 table initialization                                               =
//=============================================================================
void gen_crc_table(void)
{
 1a4:	3c040000 	lui	a0,0x0
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
 1a8:	3c0204c1 	lui	v0,0x4c1

//=============================================================================
//=  CRC32 table initialization                                               =
//=============================================================================
void gen_crc_table(void)
{
 1ac:	24840000 	addiu	a0,a0,0
 1b0:	00001821 	addu	v1,zero,zero
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
 1b4:	24421db7 	addiu	v0,v0,7607
void gen_crc_table(void)
{
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
 1b8:	08000089 	j	224 <gen_crc_table+0x80>
 1bc:	24080100 	addiu	t0,zero,256
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
 1c0:	00053040 	sll	a2,a1,0x1
 1c4:	04a0001f 	bltz	a1,244 <gen_crc_table+0xa0>
 1c8:	00c23826 	xor	a3,a2,v0
 1cc:	00062840 	sll	a1,a2,0x1
 1d0:	04c00020 	bltz	a2,254 <gen_crc_table+0xb0>
 1d4:	00a23826 	xor	a3,a1,v0
 1d8:	00053040 	sll	a2,a1,0x1
 1dc:	04a00021 	bltz	a1,264 <gen_crc_table+0xc0>
 1e0:	00c23826 	xor	a3,a2,v0
 1e4:	00062840 	sll	a1,a2,0x1
 1e8:	04c00022 	bltz	a2,274 <gen_crc_table+0xd0>
 1ec:	00a23826 	xor	a3,a1,v0
 1f0:	00053040 	sll	a2,a1,0x1
 1f4:	04a00023 	bltz	a1,284 <gen_crc_table+0xe0>
 1f8:	00c23826 	xor	a3,a2,v0
 1fc:	00062840 	sll	a1,a2,0x1
 200:	04c00024 	bltz	a2,294 <gen_crc_table+0xf0>
 204:	00a23826 	xor	a3,a1,v0
 208:	00053040 	sll	a2,a1,0x1
      else
        crc_accum = (crc_accum << 1);
    }
    crc_table[i] = crc_accum;
 20c:	04a00025 	bltz	a1,2a4 <gen_crc_table+0x100>
 210:	00c23826 	xor	a3,a2,v0
 214:	24630001 	addiu	v1,v1,1
 218:	ac860000 	sw	a2,0(a0)
void gen_crc_table(void)
{
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
 21c:	10680026 	beq	v1,t0,2b8 <gen_crc_table+0x114>
 220:	24840004 	addiu	a0,a0,4
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
 224:	00032e40 	sll	a1,v1,0x19
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  {
    crc_accum = ( (word32) i << 24 );
 228:	00033600 	sll	a2,v1,0x18
    for ( j = 0;  j < 8;  j++ )
    {
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
 22c:	04c1ffe4 	bgez	a2,1c0 <gen_crc_table+0x1c>
 230:	00a23826 	xor	a3,a1,v0
 234:	00e02821 	addu	a1,a3,zero
 238:	00053040 	sll	a2,a1,0x1
 23c:	04a1ffe3 	bgez	a1,1cc <gen_crc_table+0x28>
 240:	00c23826 	xor	a3,a2,v0
 244:	00e03021 	addu	a2,a3,zero
 248:	00062840 	sll	a1,a2,0x1
 24c:	04c1ffe2 	bgez	a2,1d8 <gen_crc_table+0x34>
 250:	00a23826 	xor	a3,a1,v0
 254:	00e02821 	addu	a1,a3,zero
 258:	00053040 	sll	a2,a1,0x1
 25c:	04a1ffe1 	bgez	a1,1e4 <gen_crc_table+0x40>
 260:	00c23826 	xor	a3,a2,v0
 264:	00e03021 	addu	a2,a3,zero
 268:	00062840 	sll	a1,a2,0x1
 26c:	04c1ffe0 	bgez	a2,1f0 <gen_crc_table+0x4c>
 270:	00a23826 	xor	a3,a1,v0
 274:	00e02821 	addu	a1,a3,zero
 278:	00053040 	sll	a2,a1,0x1
 27c:	04a1ffdf 	bgez	a1,1fc <gen_crc_table+0x58>
 280:	00c23826 	xor	a3,a2,v0
 284:	00e03021 	addu	a2,a3,zero
 288:	00062840 	sll	a1,a2,0x1
 28c:	04c1ffde 	bgez	a2,208 <gen_crc_table+0x64>
 290:	00a23826 	xor	a3,a1,v0
 294:	00e02821 	addu	a1,a3,zero
 298:	00053040 	sll	a2,a1,0x1
      else
        crc_accum = (crc_accum << 1);
    }
    crc_table[i] = crc_accum;
 29c:	04a1ffdd 	bgez	a1,214 <gen_crc_table+0x70>
 2a0:	00c23826 	xor	a3,a2,v0
 2a4:	00e03021 	addu	a2,a3,zero
 2a8:	24630001 	addiu	v1,v1,1
 2ac:	ac860000 	sw	a2,0(a0)
void gen_crc_table(void)
{
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
 2b0:	1468ffdc 	bne	v1,t0,224 <gen_crc_table+0x80>
 2b4:	24840004 	addiu	a0,a0,4
      else
        crc_accum = (crc_accum << 1);
    }
    crc_table[i] = crc_accum;
  }
}
 2b8:	03e00008 	jr	ra
 2bc:	00000000 	sll	zero,zero,0x0

000002c0 <update_crc>:
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
 2c0:	10c0000f 	beqz	a2,300 <update_crc+0x40>
 2c4:	3c080000 	lui	t0,0x0
 2c8:	00001021 	addu	v0,zero,zero
 2cc:	25080000 	addiu	t0,t0,0
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
 2d0:	90a30000 	lbu	v1,0(a1)
 2d4:	00043e02 	srl	a3,a0,0x18
 2d8:	00e31826 	xor	v1,a3,v1
     crc_accum = (crc_accum << 8) ^ crc_table[i];
 2dc:	00031880 	sll	v1,v1,0x2
 2e0:	01031821 	addu	v1,t0,v1
 2e4:	8c670000 	lw	a3,0(v1)
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
 2e8:	24420001 	addiu	v0,v0,1
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
     crc_accum = (crc_accum << 8) ^ crc_table[i];
 2ec:	00042200 	sll	a0,a0,0x8
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
 2f0:	0046182b 	sltu	v1,v0,a2
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
 2f4:	24a50001 	addiu	a1,a1,1
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
 2f8:	1460fff5 	bnez	v1,2d0 <update_crc+0x10>
 2fc:	00872026 	xor	a0,a0,a3
     crc_accum = (crc_accum << 8) ^ crc_table[i];
   }
   crc_accum = ~crc_accum;

   return crc_accum;
 300:	03e00008 	jr	ra
 304:	00041027 	nor	v0,zero,a0

Disassembly of section .bss:

00000000 <crc_table>:
	...
