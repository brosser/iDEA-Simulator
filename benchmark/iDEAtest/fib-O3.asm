
fib.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
 * program.
 */
const int output[10] = { 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 };

int main ()
{
   0:	27bdffe8 	addiu	sp,sp,-24
   4:	afbe0014 	sw	s8,20(sp)
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
    {							 
        sum[i] = a + b;
   8:	24030001 	addiu	v1,zero,1
 * program.
 */
const int output[10] = { 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 };

int main ()
{
   c:	03a0f021 	addu	s8,sp,zero
  int n = 10; // 50
  int a = 0;
  int b = 1;
  int i;
  
  volatile int sum[n];
  10:	27bdffd0 	addiu	sp,sp,-48
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
    {							 
        sum[i] = a + b;
  14:	afa30000 	sw	v1,0(sp)
  18:	24030002 	addiu	v1,zero,2
  1c:	afa30004 	sw	v1,4(sp)
  20:	24030003 	addiu	v1,zero,3
  24:	afa30008 	sw	v1,8(sp)
  28:	24030005 	addiu	v1,zero,5
  2c:	afa3000c 	sw	v1,12(sp)
  30:	24030008 	addiu	v1,zero,8
  34:	afa30010 	sw	v1,16(sp)
  38:	2403000d 	addiu	v1,zero,13
  3c:	afa30014 	sw	v1,20(sp)
  40:	24030015 	addiu	v1,zero,21
  44:	afa30018 	sw	v1,24(sp)
  48:	24030022 	addiu	v1,zero,34
  4c:	afa3001c 	sw	v1,28(sp)
  50:	24030037 	addiu	v1,zero,55
  54:	afa30020 	sw	v1,32(sp)
  58:	24030059 	addiu	v1,zero,89
  5c:	afa30024 	sw	v1,36(sp)
        a = b;
        b = sum[i];
    }
    
    for (i = 0; i < 10; i++){
        main_result += (output[i] != sum[i]);
  60:	8fa30000 	lw	v1,0(sp)
  64:	8fa60004 	lw	a2,4(sp)
  68:	8fa50008 	lw	a1,8(sp)
  6c:	38630001 	xori	v1,v1,0x1
  70:	8fa4000c 	lw	a0,12(sp)
  74:	38c60002 	xori	a2,a2,0x2
  78:	8fa80010 	lw	t0,16(sp)
  7c:	0006302b 	sltu	a2,zero,a2
  80:	0003182b 	sltu	v1,zero,v1
  84:	38a50003 	xori	a1,a1,0x3
  88:	8fa70014 	lw	a3,20(sp)
  8c:	00661821 	addu	v1,v1,a2
  90:	0005282b 	sltu	a1,zero,a1
  94:	38840005 	xori	a0,a0,0x5
  98:	8fa60018 	lw	a2,24(sp)
  9c:	00651821 	addu	v1,v1,a1
  a0:	0004202b 	sltu	a0,zero,a0
  a4:	39080008 	xori	t0,t0,0x8
  a8:	8fa5001c 	lw	a1,28(sp)
  ac:	00641821 	addu	v1,v1,a0
  b0:	0008402b 	sltu	t0,zero,t0
  b4:	38e7000d 	xori	a3,a3,0xd
  b8:	8fa40020 	lw	a0,32(sp)
  bc:	00681821 	addu	v1,v1,t0
  c0:	0007382b 	sltu	a3,zero,a3
  c4:	38c60015 	xori	a2,a2,0x15
  c8:	8fa20024 	lw	v0,36(sp)
  cc:	00671821 	addu	v1,v1,a3
  d0:	0006302b 	sltu	a2,zero,a2
  d4:	38a50022 	xori	a1,a1,0x22
  d8:	00661821 	addu	v1,v1,a2
  dc:	0005282b 	sltu	a1,zero,a1
  e0:	38840037 	xori	a0,a0,0x37
  e4:	00651821 	addu	v1,v1,a1
  e8:	0004202b 	sltu	a0,zero,a0
  ec:	38420059 	xori	v0,v0,0x59
    }
        //printf ("%d\n", main_result);
    
  return main_result;
}
  f0:	03c0e821 	addu	sp,s8,zero
        a = b;
        b = sum[i];
    }
    
    for (i = 0; i < 10; i++){
        main_result += (output[i] != sum[i]);
  f4:	00641821 	addu	v1,v1,a0
  f8:	0002102b 	sltu	v0,zero,v0
    }
        //printf ("%d\n", main_result);
    
  return main_result;
}
  fc:	00431021 	addu	v0,v0,v1
 100:	8fbe0014 	lw	s8,20(sp)
 104:	03e00008 	jr	ra
 108:	27bd0018 	addiu	sp,sp,24

Disassembly of section .rodata:

00000000 <output>:
   0:	00000001 	0x1
   4:	00000002 	srl	zero,zero,0x0
   8:	00000003 	sra	zero,zero,0x0
   c:	00000005 	0x5
  10:	00000008 	jr	zero
  14:	0000000d 	break
  18:	00000015 	0x15
  1c:	00000022 	neg	zero,zero
  20:	00000037 	0x37
  24:	00000059 	0x59
