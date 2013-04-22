
crc32.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
void gen_crc_table(void);
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size);

//===== Main program ==========================================================
void main(void)
{
   0:	27bdefd8 	addiu	sp,sp,-4136
   4:	afbf1024 	sw	ra,4132(sp)
   8:	afbe1020 	sw	s8,4128(sp)
   c:	afb0101c 	sw	s0,4124(sp)
  10:	03a0f021 	addu	s8,sp,zero
  word32      crc32;            // 32-bit CRC value
  word16      i;                // Loop counter (16 bit)
  word32      j;                // Loop counter (32 bit)

  // Initialize the CRC table
  gen_crc_table();
  14:	0c000000 	jal	0 <main>
  18:	00000000 	sll	zero,zero,0x0

  // Load buffer with BUFFER_LEN random bytes
  for (i=0; i<BUFFER_LEN; i++)
  1c:	a7c00010 	sh	zero,16(s8)
  20:	08000015 	j	54 <main+0x54>
  24:	00000000 	sll	zero,zero,0x0
    buff[i] = (byte) rand();
  28:	97d00010 	lhu	s0,16(s8)
  2c:	0c000000 	jal	0 <main>
  30:	00000000 	sll	zero,zero,0x0
  34:	304300ff 	andi	v1,v0,0xff
  38:	27c20010 	addiu	v0,s8,16
  3c:	00501021 	addu	v0,v0,s0
  40:	a0430008 	sb	v1,8(v0)

  // Initialize the CRC table
  gen_crc_table();

  // Load buffer with BUFFER_LEN random bytes
  for (i=0; i<BUFFER_LEN; i++)
  44:	97c20010 	lhu	v0,16(s8)
  48:	00000000 	sll	zero,zero,0x0
  4c:	24420001 	addiu	v0,v0,1
  50:	a7c20010 	sh	v0,16(s8)
  54:	97c20010 	lhu	v0,16(s8)
  58:	00000000 	sll	zero,zero,0x0
  5c:	2c421000 	sltiu	v0,v0,4096
  60:	1440fff1 	bnez	v0,28 <main+0x28>
  64:	00000000 	sll	zero,zero,0x0
    buff[i] = (byte) rand();

  // Compute and output CRC
  crc32 = update_crc(-1, buff, BUFFER_LEN);
  68:	27c20018 	addiu	v0,s8,24
  6c:	2404ffff 	addiu	a0,zero,-1
  70:	00402821 	addu	a1,v0,zero
  74:	24061000 	addiu	a2,zero,4096
  78:	0c000000 	jal	0 <main>
  7c:	00000000 	sll	zero,zero,0x0
  80:	afc20014 	sw	v0,20(s8)
  printf("CRC = %08X \n", crc32);
  84:	3c020000 	lui	v0,0x0
  88:	24440000 	addiu	a0,v0,0
  8c:	8fc50014 	lw	a1,20(s8)
  90:	0c000000 	jal	0 <main>
  94:	00000000 	sll	zero,zero,0x0
}
  98:	03c0e821 	addu	sp,s8,zero
  9c:	8fbf1024 	lw	ra,4132(sp)
  a0:	8fbe1020 	lw	s8,4128(sp)
  a4:	8fb0101c 	lw	s0,4124(sp)
  a8:	27bd1028 	addiu	sp,sp,4136
  ac:	03e00008 	jr	ra
  b0:	00000000 	sll	zero,zero,0x0

000000b4 <gen_crc_table>:

//=============================================================================
//=  CRC32 table initialization                                               =
//=============================================================================
void gen_crc_table(void)
{
  b4:	27bdfff0 	addiu	sp,sp,-16
  b8:	afbe000c 	sw	s8,12(sp)
  bc:	afb20008 	sw	s2,8(sp)
  c0:	afb10004 	sw	s1,4(sp)
  c4:	afb00000 	sw	s0,0(sp)
  c8:	03a0f021 	addu	s8,sp,zero
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  cc:	00008821 	addu	s1,zero,zero
  d0:	08000052 	j	148 <gen_crc_table+0x94>
  d4:	00000000 	sll	zero,zero,0x0
  {
    crc_accum = ( (word32) i << 24 );
  d8:	02201021 	addu	v0,s1,zero
  dc:	00028600 	sll	s0,v0,0x18
    for ( j = 0;  j < 8;  j++ )
  e0:	00009021 	addu	s2,zero,zero
  e4:	08000047 	j	11c <gen_crc_table+0x68>
  e8:	00000000 	sll	zero,zero,0x0
    {
      if ( crc_accum & 0x80000000L )
  ec:	02001021 	addu	v0,s0,zero
  f0:	04410007 	bgez	v0,110 <gen_crc_table+0x5c>
  f4:	00000000 	sll	zero,zero,0x0
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
  f8:	00101840 	sll	v1,s0,0x1
  fc:	3c0204c1 	lui	v0,0x4c1
 100:	34421db7 	ori	v0,v0,0x1db7
 104:	00628026 	xor	s0,v1,v0
 108:	08000045 	j	114 <gen_crc_table+0x60>
 10c:	00000000 	sll	zero,zero,0x0
      else
        crc_accum = (crc_accum << 1);
 110:	00108040 	sll	s0,s0,0x1
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
  {
    crc_accum = ( (word32) i << 24 );
    for ( j = 0;  j < 8;  j++ )
 114:	26420001 	addiu	v0,s2,1
 118:	3052ffff 	andi	s2,v0,0xffff
 11c:	2e420008 	sltiu	v0,s2,8
 120:	1440fff2 	bnez	v0,ec <gen_crc_table+0x38>
 124:	00000000 	sll	zero,zero,0x0
      if ( crc_accum & 0x80000000L )
        crc_accum = (crc_accum << 1) ^ POLYNOMIAL;
      else
        crc_accum = (crc_accum << 1);
    }
    crc_table[i] = crc_accum;
 128:	02201821 	addu	v1,s1,zero
 12c:	3c020000 	lui	v0,0x0
 130:	00031880 	sll	v1,v1,0x2
 134:	24420000 	addiu	v0,v0,0
 138:	00621021 	addu	v0,v1,v0
 13c:	ac500000 	sw	s0,0(v0)
void gen_crc_table(void)
{
  register word16 i, j;
  register word32 crc_accum;

  for (i=0;  i<256;  i++)
 140:	26220001 	addiu	v0,s1,1
 144:	3051ffff 	andi	s1,v0,0xffff
 148:	2e220100 	sltiu	v0,s1,256
 14c:	1440ffe2 	bnez	v0,d8 <gen_crc_table+0x24>
 150:	00000000 	sll	zero,zero,0x0
      else
        crc_accum = (crc_accum << 1);
    }
    crc_table[i] = crc_accum;
  }
}
 154:	03c0e821 	addu	sp,s8,zero
 158:	8fbe000c 	lw	s8,12(sp)
 15c:	8fb20008 	lw	s2,8(sp)
 160:	8fb10004 	lw	s1,4(sp)
 164:	8fb00000 	lw	s0,0(sp)
 168:	27bd0010 	addiu	sp,sp,16
 16c:	03e00008 	jr	ra
 170:	00000000 	sll	zero,zero,0x0

00000174 <update_crc>:

//=============================================================================
//=  CRC32 generation                                                         =
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
 174:	27bdfff0 	addiu	sp,sp,-16
 178:	afbe000c 	sw	s8,12(sp)
 17c:	afb10008 	sw	s1,8(sp)
 180:	afb00004 	sw	s0,4(sp)
 184:	03a0f021 	addu	s8,sp,zero
 188:	afc40010 	sw	a0,16(s8)
 18c:	afc50014 	sw	a1,20(s8)
 190:	afc60018 	sw	a2,24(s8)
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
 194:	00008021 	addu	s0,zero,zero
 198:	08000082 	j	208 <update_crc+0x94>
 19c:	00000000 	sll	zero,zero,0x0
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
 1a0:	8fc20010 	lw	v0,16(s8)
 1a4:	00000000 	sll	zero,zero,0x0
 1a8:	00021602 	srl	v0,v0,0x18
 1ac:	00401821 	addu	v1,v0,zero
 1b0:	8fc20014 	lw	v0,20(s8)
 1b4:	00000000 	sll	zero,zero,0x0
 1b8:	90420000 	lbu	v0,0(v0)
 1bc:	00000000 	sll	zero,zero,0x0
 1c0:	00621026 	xor	v0,v1,v0
 1c4:	305100ff 	andi	s1,v0,0xff
 1c8:	8fc20014 	lw	v0,20(s8)
 1cc:	00000000 	sll	zero,zero,0x0
 1d0:	24420001 	addiu	v0,v0,1
 1d4:	afc20014 	sw	v0,20(s8)
     crc_accum = (crc_accum << 8) ^ crc_table[i];
 1d8:	8fc20010 	lw	v0,16(s8)
 1dc:	00000000 	sll	zero,zero,0x0
 1e0:	00021a00 	sll	v1,v0,0x8
 1e4:	3c020000 	lui	v0,0x0
 1e8:	00112080 	sll	a0,s1,0x2
 1ec:	24420000 	addiu	v0,v0,0
 1f0:	00821021 	addu	v0,a0,v0
 1f4:	8c420000 	lw	v0,0(v0)
 1f8:	00000000 	sll	zero,zero,0x0
 1fc:	00621026 	xor	v0,v1,v0
 200:	afc20010 	sw	v0,16(s8)
//=============================================================================
word32 update_crc(word32 crc_accum, byte *data_blk_ptr, word32 data_blk_size)
{
   register word32 i, j;

   for (j=0; j<data_blk_size; j++)
 204:	26100001 	addiu	s0,s0,1
 208:	8fc20018 	lw	v0,24(s8)
 20c:	00000000 	sll	zero,zero,0x0
 210:	0202102b 	sltu	v0,s0,v0
 214:	1440ffe2 	bnez	v0,1a0 <update_crc+0x2c>
 218:	00000000 	sll	zero,zero,0x0
   {
     i = ((int) (crc_accum >> 24) ^ *data_blk_ptr++) & 0xFF;
     crc_accum = (crc_accum << 8) ^ crc_table[i];
   }
   crc_accum = ~crc_accum;
 21c:	8fc20010 	lw	v0,16(s8)
 220:	00000000 	sll	zero,zero,0x0
 224:	00021027 	nor	v0,zero,v0
 228:	afc20010 	sw	v0,16(s8)

   return crc_accum;
 22c:	8fc20010 	lw	v0,16(s8)
 230:	03c0e821 	addu	sp,s8,zero
 234:	8fbe000c 	lw	s8,12(sp)
 238:	8fb10008 	lw	s1,8(sp)
 23c:	8fb00004 	lw	s0,4(sp)
 240:	27bd0010 	addiu	sp,sp,16
 244:	03e00008 	jr	ra
 248:	00000000 	sll	zero,zero,0x0

Disassembly of section .bss:

00000000 <crc_table>:
	...

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	43524320 	c0	0x1524320
   4:	3d202530 	0x3d202530
   8:	3858200a 	xori	t8,v0,0x200a
   c:	00000000 	sll	zero,zero,0x0
