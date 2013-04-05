
fib.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
 * program.
 */
const int output[10] = { 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 };

int main ()
{
   0:	27bdffc0 	addiu	sp,sp,-64
   4:	afbf003c 	sw	ra,60(sp)
   8:	afbe0038 	sw	s8,56(sp)
   c:	afb00034 	sw	s0,52(sp)
  10:	03a0f021 	move	s8,sp
  14:	03a05021 	move	t2,sp
  18:	01408021 	move	s0,t2
  /* Notice that we need to declare our variables, and their type */

  int n = 10; // 50
  1c:	240a000a 	li	t2,10
  20:	afca0020 	sw	t2,32(s8)
  int a = 0;
  24:	afc00010 	sw	zero,16(s8)
  int b = 1;
  28:	240a0001 	li	t2,1
  2c:	afca0014 	sw	t2,20(s8)
  int sum[n];
  30:	8fca0020 	lw	t2,32(s8)
  34:	00000000 	nop
  38:	254bffff 	addiu	t3,t2,-1
  3c:	afcb0024 	sw	t3,36(s8)
  40:	01405821 	move	t3,t2
  44:	01602821 	move	a1,t3
  48:	00002021 	move	a0,zero
  4c:	00055ec2 	srl	t3,a1,0x1b
  50:	00044140 	sll	t0,a0,0x5
  54:	01684025 	or	t0,t3,t0
  58:	00054940 	sll	t1,a1,0x5
  5c:	01402021 	move	a0,t2
  60:	00801821 	move	v1,a0
  64:	00001021 	move	v0,zero
  68:	000326c2 	srl	a0,v1,0x1b
  6c:	00023140 	sll	a2,v0,0x5
  70:	00863025 	or	a2,a0,a2
  74:	00033940 	sll	a3,v1,0x5
  78:	01401021 	move	v0,t2
  7c:	00021080 	sll	v0,v0,0x2
  80:	24420007 	addiu	v0,v0,7
  84:	24420007 	addiu	v0,v0,7
  88:	000210c2 	srl	v0,v0,0x3
  8c:	000210c0 	sll	v0,v0,0x3
  90:	03a2e823 	subu	sp,sp,v0
  94:	27a20010 	addiu	v0,sp,16
  98:	24420007 	addiu	v0,v0,7
  9c:	000210c2 	srl	v0,v0,0x3
  a0:	000210c0 	sll	v0,v0,0x3
  a4:	afc20028 	sw	v0,40(s8)
  int i;
  
  int main_result = 0;
  a8:	afc0001c 	sw	zero,28(s8)
    
    for ( i = 0; i < n; i++)			
  ac:	afc00018 	sw	zero,24(s8)
  b0:	08000047 	j	11c <main+0x11c>
  b4:	00000000 	nop
    {							 
        sum[i] = a + b;
  b8:	8fc30010 	lw	v1,16(s8)
  bc:	8fc20014 	lw	v0,20(s8)
  c0:	00000000 	nop
  c4:	00621821 	addu	v1,v1,v0
  c8:	8fc40028 	lw	a0,40(s8)
  cc:	8fc20018 	lw	v0,24(s8)
  d0:	00000000 	nop
  d4:	00021080 	sll	v0,v0,0x2
  d8:	00821021 	addu	v0,a0,v0
  dc:	ac430000 	sw	v1,0(v0)
        a = b;
  e0:	8fc20014 	lw	v0,20(s8)
  e4:	00000000 	nop
  e8:	afc20010 	sw	v0,16(s8)
        b = sum[i];
  ec:	8fc30028 	lw	v1,40(s8)
  f0:	8fc20018 	lw	v0,24(s8)
  f4:	00000000 	nop
  f8:	00021080 	sll	v0,v0,0x2
  fc:	00621021 	addu	v0,v1,v0
 100:	8c420000 	lw	v0,0(v0)
 104:	00000000 	nop
 108:	afc20014 	sw	v0,20(s8)
  int sum[n];
  int i;
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)			
 10c:	8fc20018 	lw	v0,24(s8)
 110:	00000000 	nop
 114:	24420001 	addiu	v0,v0,1
 118:	afc20018 	sw	v0,24(s8)
 11c:	8fc30018 	lw	v1,24(s8)
 120:	8fc20020 	lw	v0,32(s8)
 124:	00000000 	nop
 128:	0062102a 	slt	v0,v1,v0
 12c:	1440ffe2 	bnez	v0,b8 <main+0xb8>
 130:	00000000 	nop
        sum[i] = a + b;
        a = b;
        b = sum[i];
    }
    
    for (i = 0; i < 10; i++){
 134:	afc00018 	sw	zero,24(s8)
 138:	08000068 	j	1a0 <main+0x1a0>
 13c:	00000000 	nop
        main_result += (output[i] != sum[i]);
 140:	3c020000 	lui	v0,0x0
 144:	8fc30018 	lw	v1,24(s8)
 148:	00000000 	nop
 14c:	00031880 	sll	v1,v1,0x2
 150:	24420000 	addiu	v0,v0,0
 154:	00621021 	addu	v0,v1,v0
 158:	8c430000 	lw	v1,0(v0)
 15c:	8fc40028 	lw	a0,40(s8)
 160:	8fc20018 	lw	v0,24(s8)
 164:	00000000 	nop
 168:	00021080 	sll	v0,v0,0x2
 16c:	00821021 	addu	v0,a0,v0
 170:	8c420000 	lw	v0,0(v0)
 174:	00000000 	nop
 178:	00621026 	xor	v0,v1,v0
 17c:	0002102b 	sltu	v0,zero,v0
 180:	8fc3001c 	lw	v1,28(s8)
 184:	00000000 	nop
 188:	00621021 	addu	v0,v1,v0
 18c:	afc2001c 	sw	v0,28(s8)
        sum[i] = a + b;
        a = b;
        b = sum[i];
    }
    
    for (i = 0; i < 10; i++){
 190:	8fc20018 	lw	v0,24(s8)
 194:	00000000 	nop
 198:	24420001 	addiu	v0,v0,1
 19c:	afc20018 	sw	v0,24(s8)
 1a0:	8fc20018 	lw	v0,24(s8)
 1a4:	00000000 	nop
 1a8:	2842000a 	slti	v0,v0,10
 1ac:	1440ffe4 	bnez	v0,140 <main+0x140>
 1b0:	00000000 	nop
        main_result += (output[i] != sum[i]);
    }
        printf ("%d\n", main_result);
// 1b4:	3c020000 	lui	v0,0x0
// 1b8:	24440028 	addiu	a0,v0,40
// 1bc:	8fc5001c 	lw	a1,28(s8)
// 1c0:	0c000000 	jal	0 <main>
// 1c4:	00000000 	nop
    
  return main_result;
 1c8:	8fc2001c 	lw	v0,28(s8)
 1cc:	0200e821 	move	sp,s0
}
 1d0:	03c0e821 	move	sp,s8
 1d4:	8fbf003c 	lw	ra,60(sp)
 1d8:	8fbe0038 	lw	s8,56(sp)
 1dc:	8fb00034 	lw	s0,52(sp)
 1e0:	27bd0040 	addiu	sp,sp,64
 1e4:	03e00008 	jr	ra
 1e8:	00000000 	nop
