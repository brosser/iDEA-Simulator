
mmult.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
                            {51, 25, 51, 26, 52},
                            {71, 35, 71, 36, 72},
                            {91, 45, 91, 46, 92}};

int main()
{
   0:	3c0c0000 	lui	t4,0x0
   4:	3c0a0000 	lui	t2,0x0
   8:	27bdff98 	addiu	sp,sp,-104
    int x, y;
    int sum = 0;

    int main_result = 0;

    for (i = 0; i < 5; i++) {
   c:	00005821 	addu	t3,zero,zero
  10:	258c0000 	addiu	t4,t4,0
  14:	254a0000 	addiu	t2,t2,0
        for (j = 0; j < 5; j++) {
            sum = 0;
            for (k = 0; k < 5 ; k++) {
  18:	24060005 	addiu	a2,zero,5
                            {31, 15, 31, 16, 32},
                            {51, 25, 51, 26, 52},
                            {71, 35, 71, 36, 72},
                            {91, 45, 91, 46, 92}};

int main()
  1c:	000b4880 	sll	t1,t3,0x2
  20:	000b1100 	sll	v0,t3,0x4
  24:	01224821 	addu	t1,t1,v0
  28:	03a94021 	addu	t0,sp,t1
  2c:	00003821 	addu	a3,zero,zero
  30:	01894821 	addu	t1,t4,t1
  34:	00071880 	sll	v1,a3,0x2
  38:	01202021 	addu	a0,t1,zero
  3c:	01431821 	addu	v1,t2,v1
  40:	00002821 	addu	a1,zero,zero
  44:	00001021 	addu	v0,zero,zero

  // Manually inserted by Fred Apr 6
  46: 00000000  addiu v1,v1,0x64

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
            sum = 0;
            for (k = 0; k < 5 ; k++) {
                sum = sum + a[i][k] * b[k][j];
  48:	8c8d0000 	lw	t5,0(a0)
  4c:	8c6e0000 	lw	t6,0(v1)
    int main_result = 0;

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
            sum = 0;
            for (k = 0; k < 5 ; k++) {
  50:	24420001 	addiu	v0,v0,1
                sum = sum + a[i][k] * b[k][j];
  54:	01cd0018 	mult	t6,t5
    int main_result = 0;

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
            sum = 0;
            for (k = 0; k < 5 ; k++) {
  58:	24840004 	addiu	a0,a0,4
  5c:	24630014 	addiu	v1,v1,20
                sum = sum + a[i][k] * b[k][j];
  60:	00006812 	mflo	t5
    int main_result = 0;

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
            sum = 0;
            for (k = 0; k < 5 ; k++) {

  // Manually changed by Fred Apr 6
  64:	1446fff8 	bne	v0,a2,4c <main+0x48>
  68:	00ad2821 	addu	a1,a1,t5
    int sum = 0;

    int main_result = 0;

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
  6c:	24e70001 	addiu	a3,a3,1
            sum = 0;
            for (k = 0; k < 5 ; k++) {
  70:	ad050000 	sw	a1,0(t0)
    int sum = 0;

    int main_result = 0;

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 5; j++) {
  74:	14e2ffef 	bne	a3,v0,34 <main+0x34>
  78:	25080004 	addiu	t0,t0,4
    int x, y;
    int sum = 0;

    int main_result = 0;

    for (i = 0; i < 5; i++) {
  7c:	256b0001 	addiu	t3,t3,1
  80:	1567ffe7 	bne	t3,a3,20 <main+0x20>
  84:	000b4880 	sll	t1,t3,0x2
  88:	3c0a0000 	lui	t2,0x0
  8c:	00004821 	addu	t1,zero,zero
  90:	00001021 	addu	v0,zero,zero
  94:	254a0000 	addiu	t2,t2,0
            }
        }
    }
    
    for (x = 0; x < 5; x++){
        for (y = 0; y < 5; y++) {
  98:	24080005 	addiu	t0,zero,5
                            {31, 15, 31, 16, 32},
                            {51, 25, 51, 26, 52},
                            {71, 35, 71, 36, 72},
                            {91, 45, 91, 46, 92}};

int main()

  9c:	00091900 	sll	v1,t1,0x4
  a0:	00092080 	sll	a0,t1,0x2
  a4:	00832021 	addu	a0,a0,v1
  a8:	01442821 	addu	a1,t2,a0
  ac:	00001821 	addu	v1,zero,zero
  b0:	03a42021 	addu	a0,sp,a0

    // Manually inserted by Fred Apr 6
  910: 00000000  addiu a1,a1,0xc8

        }
    }
    
    for (x = 0; x < 5; x++){
        for (y = 0; y < 5; y++) {
            main_result += (output[x][y] != c[x][y]);
  b4:	8ca70000 	lw	a3,0(a1)
  b8:	8c860000 	lw	a2,0(a0)
            }
        }
    }
    
    for (x = 0; x < 5; x++){
        for (y = 0; y < 5; y++) {
  bc:	24630001 	addiu	v1,v1,1
            main_result += (output[x][y] != c[x][y]);
  c0:	00e63026 	xor	a2,a3,a2
  c4:	0006302b 	sltu	a2,zero,a2
  c8:	00461021 	addu	v0,v0,a2
            }
        }
    }
    
    for (x = 0; x < 5; x++){
        for (y = 0; y < 5; y++) {
  cc:	24a50004 	addiu	a1,a1,4

    // Manually changed by Fred Apr 6
  d0:	1468fff8 	bne	v1,t0,bc <main+0xb4>

  d4:	24840004 	addiu	a0,a0,4
                c[i][j]=sum;
            }
        }
    }
    
    for (x = 0; x < 5; x++){
  d8:	25290001 	addiu	t1,t1,1

  // Manually changed by Fred Apr 6
  dc:	1523ffef 	bne	t1,v1,a4 <main+0x9c>

  e0:	00000000 	sll	zero,zero,0x0
    }

    //printf("%d\n", main_result);

    return main_result;
}
  e4:	03e00008 	jr	ra
  e8:	27bd0068 	addiu	sp,sp,104

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
	98: 00000000  0x0
  a0: 00000000  0x0
  a4: 00000000  0x0
  a8: 00000000  0x0
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
