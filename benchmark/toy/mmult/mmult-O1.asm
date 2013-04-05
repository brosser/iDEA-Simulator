
mmult.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
                            {51, 25, 51, 26, 52},
                            {71, 35, 71, 36, 72},
                            {91, 45, 91, 46, 92}};

int main()
{
   0:	27bdff98 	addiu	sp,sp,-104
    int x, y;
    int sum = 0;

    int main_result = 0;

    for (i = 0; i < 5; i++) {
   4:	00004821 	addu	t1,zero,zero
                            {31, 15, 31, 16, 32},
                            {51, 25, 51, 26, 52},
                            {71, 35, 71, 36, 72},
                            {91, 45, 91, 46, 92}};

int main()
   8:	3c0c0000 	lui	t4,0x0
   c:	258c0000 	addiu	t4,t4,0
  10:	3c0b0000 	lui	t3,0x0
  14:	08000021 	j	84 <main+0x84>
  18:	256b0000 	addiu	t3,t3,0

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
            sum = 0;
            for (k = 0; k < 5 ; k++) {
                sum = sum + a[i][k] * b[k][j];
  1c:	8c6e0000 	lw	t6,0(v1)
  20:	8c8d0000 	lw	t5,0(a0)
  24:	00000000 	sll	zero,zero,0x0
  28:	01cd0018 	mult	t6,t5
  2c:	00006812 	mflo	t5
  30:	00ad2821 	addu	a1,a1,t5
  34:	2442ffff 	addiu	v0,v0,-1
  38:	24840004 	addiu	a0,a0,4
    int main_result = 0;

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
            sum = 0;
            for (k = 0; k < 5 ; k++) {
  3c:	1440fff7 	bnez	v0,1c <main+0x1c>
  40:	24630014 	addiu	v1,v1,20
  44:	ad050000 	sw	a1,0(t0)
    int sum = 0;

    int main_result = 0;

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
  48:	24c60001 	addiu	a2,a2,1
  4c:	24020005 	addiu	v0,zero,5
  50:	10c20008 	beq	a2,v0,74 <main+0x74>
  54:	24e70004 	addiu	a3,a3,4
                            {31, 15, 31, 16, 32},
                            {51, 25, 51, 26, 52},
                            {71, 35, 71, 36, 72},
                            {91, 45, 91, 46, 92}};

int main()
  58:	00e04021 	addu	t0,a3,zero
  5c:	01402021 	addu	a0,t2,zero
  60:	00061880 	sll	v1,a2,0x2
  64:	01631821 	addu	v1,t3,v1
  68:	24020005 	addiu	v0,zero,5
  6c:	08000007 	j	1c <main+0x1c>
  70:	00002821 	addu	a1,zero,zero
    int x, y;
    int sum = 0;

    int main_result = 0;

    for (i = 0; i < 5; i++) {
  74:	25290001 	addiu	t1,t1,1
  78:	24020005 	addiu	v0,zero,5
  7c:	1122001a 	beq	t1,v0,e8 <main+0xe8>
  80:	00000000 	sll	zero,zero,0x0
                            {31, 15, 31, 16, 32},
                            {51, 25, 51, 26, 52},
                            {71, 35, 71, 36, 72},
                            {91, 45, 91, 46, 92}};

int main()
  84:	00093880 	sll	a3,t1,0x2
  88:	00091100 	sll	v0,t1,0x4
  8c:	00e23821 	addu	a3,a3,v0
  90:	03a73821 	addu	a3,sp,a3
  94:	00003021 	addu	a2,zero,zero
  98:	00095080 	sll	t2,t1,0x2
  9c:	01425021 	addu	t2,t2,v0
  a0:	08000016 	j	58 <main+0x58>
  a4:	018a5021 	addu	t2,t4,t2
        }
    }
    
    for (x = 0; x < 5; x++){
        for (y = 0; y < 5; y++) {
            main_result += (output[x][y] != c[x][y]);
  a8:	8ca70000 	lw	a3,0(a1)
  ac:	8c860000 	lw	a2,0(a0)
  b0:	00000000 	sll	zero,zero,0x0
  b4:	00e63026 	xor	a2,a3,a2
  b8:	0006302b 	sltu	a2,zero,a2
  bc:	00461021 	addu	v0,v0,a2
  c0:	2463ffff 	addiu	v1,v1,-1
  c4:	24a50004 	addiu	a1,a1,4
            }
        }
    }
    
    for (x = 0; x < 5; x++){
        for (y = 0; y < 5; y++) {
  c8:	1460fff7 	bnez	v1,a8 <main+0xa8>
  cc:	24840004 	addiu	a0,a0,4
                c[i][j]=sum;
            }
        }
    }
    
    for (x = 0; x < 5; x++){
  d0:	25080001 	addiu	t0,t0,1
  d4:	24030005 	addiu	v1,zero,5
  d8:	15030007 	bne	t0,v1,f8 <main+0xf8>
  dc:	00000000 	sll	zero,zero,0x0
    }

    //printf("%d\n", main_result);

    return main_result;
}
  e0:	08000045 	j	114 <main+0x114>
  e4:	27bd0068 	addiu	sp,sp,104
    int x, y;
    int sum = 0;

    int main_result = 0;

    for (i = 0; i < 5; i++) {
  e8:	00004021 	addu	t0,zero,zero
  ec:	00001021 	addu	v0,zero,zero
                            {31, 15, 31, 16, 32},
                            {51, 25, 51, 26, 52},
                            {71, 35, 71, 36, 72},
                            {91, 45, 91, 46, 92}};

int main()
  f0:	3c090000 	lui	t1,0x0
  f4:	25290000 	addiu	t1,t1,0
  f8:	00082080 	sll	a0,t0,0x2
  fc:	00081900 	sll	v1,t0,0x4
 100:	00832021 	addu	a0,a0,v1
 104:	01242821 	addu	a1,t1,a0
 108:	03a42021 	addu	a0,sp,a0
 10c:	0800002a 	j	a8 <main+0xa8>
 110:	24030005 	addiu	v1,zero,5
    }

    //printf("%d\n", main_result);

    return main_result;
}
 114:	03e00008 	jr	ra
 118:	00000000 	sll	zero,zero,0x0

Disassembly of section .rodata:

00000000 <a>:
   0:	00000001 	0x1
   4:	00000002 	srl	zero,zero,0x0
   8:	00000003 	sra	zero,zero,0x0
   c:	00000004 	sllv	zero,zero,zero
  10:	00000005 	0x5
  14:	00000006 	srlv	zero,zero,zero
  18:	00000007 	srav	zero,zero,zero
  1c:	00000008 	jr	zero
  20:	00000009 	jalr	zero,zero
  24:	0000000a 	0xa
  28:	0000000b 	0xb
  2c:	0000000c 	syscall
  30:	0000000d 	break
  34:	0000000e 	0xe
  38:	0000000f 	0xf
  3c:	00000010 	mfhi	zero
  40:	00000011 	mthi	zero
  44:	00000012 	mflo	zero
  48:	00000013 	mtlo	zero
  4c:	00000014 	0x14
  50:	00000015 	0x15
  54:	00000016 	0x16
  58:	00000017 	0x17
  5c:	00000018 	mult	zero,zero
  60:	00000019 	multu	zero,zero

00000064 <b>:
  64:	00000001 	0x1
  68:	00000000 	sll	zero,zero,0x0
  6c:	00000001 	0x1
  70:	00000000 	sll	zero,zero,0x0
  74:	00000001 	0x1
  78:	00000001 	0x1
  7c:	00000001 	0x1
  80:	00000001 	0x1
  84:	00000001 	0x1
  88:	00000001 	0x1
  8c:	00000001 	0x1
  90:	00000001 	0x1
  94:	00000001 	0x1
	...
  ac:	00000001 	0x1
  b0:	00000001 	0x1
  b4:	00000001 	0x1
  b8:	00000000 	sll	zero,zero,0x0
  bc:	00000001 	0x1
  c0:	00000000 	sll	zero,zero,0x0
  c4:	00000001 	0x1

000000c8 <output>:
  c8:	0000000b 	0xb
  cc:	00000005 	0x5
  d0:	0000000b 	0xb
  d4:	00000006 	srlv	zero,zero,zero
  d8:	0000000c 	syscall
  dc:	0000001f 	0x1f
  e0:	0000000f 	0xf
  e4:	0000001f 	0x1f
  e8:	00000010 	mfhi	zero
  ec:	00000020 	add	zero,zero,zero
  f0:	00000033 	0x33
  f4:	00000019 	multu	zero,zero
  f8:	00000033 	0x33
  fc:	0000001a 	div	zero,zero,zero
 100:	00000034 	0x34
 104:	00000047 	0x47
 108:	00000023 	negu	zero,zero
 10c:	00000047 	0x47
 110:	00000024 	and	zero,zero,zero
 114:	00000048 	0x48
 118:	0000005b 	0x5b
 11c:	0000002d 	0x2d
 120:	0000005b 	0x5b
 124:	0000002e 	0x2e
 128:	0000005c 	0x5c
