
median.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
                                                        {31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 44, 45,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55}}; // 24

int main () {
   0:	27bdfc68 	addiu	sp,sp,-920
    int min, temp;
    int temparray[FILTERSIZE];
    int image_o[IMAGE_XSIZE][IMAGE_YSIZE];
    

    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
   4:	3c190000 	lui	t9,0x0
   8:	27390000 	addiu	t9,t9,0
   c:	8fae0010 	lw	t6,16(sp)
                                                        {31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 44, 45,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55}}; // 24

int main () {
  10:	afb00390 	sw	s0,912(sp)
  14:	afb10394 	sw	s1,916(sp)
    int min, temp;
    int temparray[FILTERSIZE];
    int image_o[IMAGE_XSIZE][IMAGE_YSIZE];
    

    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
  18:	272f0030 	addiu	t7,t9,48
  1c:	00001021 	addu	v0,zero,zero
  20:	27ad000c 	addiu	t5,sp,12
                    n++;
                }
            }

            /*find median -- kernel to process the array*/
            for (i_med = 0; i_med < 4; i_med++) {
  24:	240b0004 	addiu	t3,zero,4
    int min, temp;
    int temparray[FILTERSIZE];
    int image_o[IMAGE_XSIZE][IMAGE_YSIZE];
    

    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
  28:	2410000c 	addiu	s0,zero,12
                                                        {31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 44, 45,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55}}; // 24

int main () {
  2c:	24580001 	addiu	t8,v0,1
  30:	00182080 	sll	a0,t8,0x2
  34:	00186180 	sll	t4,t8,0x6
  38:	00021880 	sll	v1,v0,0x2
  3c:	00025180 	sll	t2,v0,0x6
  40:	01846023 	subu	t4,t4,a0
  44:	01435023 	subu	t2,t2,v1
  48:	258c0004 	addiu	t4,t4,4
  4c:	032a5021 	addu	t2,t9,t2
  50:	01ac6021 	addu	t4,t5,t4
    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
        for (j = 0; j < IMAGE_YSIZE-FILTERSIZE; j++) {
            n = 0;
            for (x = 0; x < FILTERSIZE; x++) {          // at each point of the pixel, store a row of x values into an array
                for (y = 0; y < FILTERSIZE; y++) {
                    temparray[n] = image_i[i+x][j+y]; 
  54:	8d490004 	lw	t1,4(t2)
  58:	8d480008 	lw	t0,8(t2)
  5c:	8d510000 	lw	s1,0(t2)
  60:	8d47003c 	lw	a3,60(t2)
  64:	8d460040 	lw	a2,64(t2)
  68:	8d450044 	lw	a1,68(t2)
  6c:	8d440078 	lw	a0,120(t2)
  70:	8d43007c 	lw	v1,124(t2)
  74:	8d420080 	lw	v0,128(t2)
  78:	afa90004 	sw	t1,4(sp)
  7c:	afa80008 	sw	t0,8(sp)
  80:	afb10000 	sw	s1,0(sp)
  84:	afa7000c 	sw	a3,12(sp)
  88:	afa60010 	sw	a2,16(sp)
  8c:	afa50014 	sw	a1,20(sp)
  90:	afa40018 	sw	a0,24(sp)
  94:	afa3001c 	sw	v1,28(sp)
  98:	afa20020 	sw	v0,32(sp)
  9c:	03a04821 	addu	t1,sp,zero
  a0:	00004021 	addu	t0,zero,zero
            }

            /*find median -- kernel to process the array*/
            for (i_med = 0; i_med < 4; i_med++) {
                min = temparray[i_med];
                for (j_med = i_med + 1; j_med <= 8; j_med ++) {
  a4:	25080001 	addiu	t0,t0,1
                                                        {31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 44, 45,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55}}; // 24

int main () {
  a8:	00081080 	sll	v0,t0,0x2
                }
            }

            /*find median -- kernel to process the array*/
            for (i_med = 0; i_med < 4; i_med++) {
                min = temparray[i_med];
  ac:	8d240000 	lw	a0,0(t1)
                                                        {31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 44, 45,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55}}; // 24

int main () {
  b0:	03a21021 	addu	v0,sp,v0
            }

            /*find median -- kernel to process the array*/
            for (i_med = 0; i_med < 4; i_med++) {
                min = temparray[i_med];
                for (j_med = i_med + 1; j_med <= 8; j_med ++) {
  b4:	01001821 	addu	v1,t0,zero
                    if (temparray[j_med] < min)
  b8:	8c450000 	lw	a1,0(v0)
            }

            /*find median -- kernel to process the array*/
            for (i_med = 0; i_med < 4; i_med++) {
                min = temparray[i_med];
                for (j_med = i_med + 1; j_med <= 8; j_med ++) {
  bc:	24630001 	addiu	v1,v1,1
                    if (temparray[j_med] < min)
  c0:	00a4382a 	slt	a3,a1,a0
  c4:	10e00003 	beqz	a3,d4 <main+0xd4>
  c8:	28660009 	slti	a2,v1,9
                    {
                        temp = min;
                        min = temparray[j_med];
                        temparray[j_med] = temp;
  cc:	ac440000 	sw	a0,0(v0)
  d0:	00a02021 	addu	a0,a1,zero
            }

            /*find median -- kernel to process the array*/
            for (i_med = 0; i_med < 4; i_med++) {
                min = temparray[i_med];
                for (j_med = i_med + 1; j_med <= 8; j_med ++) {
  d4:	14c0fff8 	bnez	a2,b8 <main+0xb8>
  d8:	24420004 	addiu	v0,v0,4
                        temp = min;
                        min = temparray[j_med];
                        temparray[j_med] = temp;
                    }
                }
                temparray[i_med] = min;
  dc:	ad240000 	sw	a0,0(t1)
                    n++;
                }
            }

            /*find median -- kernel to process the array*/
            for (i_med = 0; i_med < 4; i_med++) {
  e0:	150bfff0 	bne	t0,t3,a4 <main+0xa4>
  e4:	25290004 	addiu	t1,t1,4
  e8:	8fa30014 	lw	v1,20(sp)
  ec:	00000000 	sll	zero,zero,0x0
  f0:	006e202a 	slt	a0,v1,t6
  f4:	10800002 	beqz	a0,100 <main+0x100>
  f8:	01c01021 	addu	v0,t6,zero
  fc:	00601021 	addu	v0,v1,zero
 100:	8fa30018 	lw	v1,24(sp)
 104:	00000000 	sll	zero,zero,0x0
 108:	0062202a 	slt	a0,v1,v0
 10c:	10800002 	beqz	a0,118 <main+0x118>
 110:	00000000 	sll	zero,zero,0x0
 114:	00601021 	addu	v0,v1,zero
 118:	8fa3001c 	lw	v1,28(sp)
 11c:	00000000 	sll	zero,zero,0x0
 120:	0062202a 	slt	a0,v1,v0
 124:	10800002 	beqz	a0,130 <main+0x130>
 128:	00000000 	sll	zero,zero,0x0
 12c:	00601021 	addu	v0,v1,zero
                    min = temparray[j_med];
                }
            }
            
            /*kernel to return the median filter to the output image*/
            image_o[i+1][j+1] = min;
 130:	8fa30020 	lw	v1,32(sp)
 134:	00000000 	sll	zero,zero,0x0
 138:	0043202a 	slt	a0,v0,v1
 13c:	10800002 	beqz	a0,148 <main+0x148>
 140:	00000000 	sll	zero,zero,0x0
 144:	00401821 	addu	v1,v0,zero
 148:	254a0004 	addiu	t2,t2,4
 14c:	ad830000 	sw	v1,0(t4)
    int temparray[FILTERSIZE];
    int image_o[IMAGE_XSIZE][IMAGE_YSIZE];
    

    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
        for (j = 0; j < IMAGE_YSIZE-FILTERSIZE; j++) {
 150:	154fffc0 	bne	t2,t7,54 <main+0x54>
 154:	258c0004 	addiu	t4,t4,4
    int min, temp;
    int temparray[FILTERSIZE];
    int image_o[IMAGE_XSIZE][IMAGE_YSIZE];
    

    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
 158:	13100003 	beq	t8,s0,168 <main+0x168>
 15c:	25ef003c 	addiu	t7,t7,60
                    min = temparray[j_med];
                }
            }
            
            /*kernel to return the median filter to the output image*/
            image_o[i+1][j+1] = min;
 160:	0800000b 	j	2c <main+0x2c>
 164:	03001021 	addu	v0,t8,zero
 168:	3c090000 	lui	t1,0x0
    int min, temp;
    int temparray[FILTERSIZE];
    int image_o[IMAGE_XSIZE][IMAGE_YSIZE];
    

    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
 16c:	00004021 	addu	t0,zero,zero
 170:	00001021 	addu	v0,zero,zero
 174:	25290000 	addiu	t1,t1,0
                                                        {31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 44, 45,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55}}; // 24

int main () {
 178:	00081880 	sll	v1,t0,0x2
 17c:	00082180 	sll	a0,t0,0x6
 180:	00832023 	subu	a0,a0,v1
 184:	01242821 	addu	a1,t1,a0
 188:	2403000f 	addiu	v1,zero,15
 18c:	01a42021 	addu	a0,t5,a0
        }
    }

    for ( x = 0; x < IMAGE_YSIZE; x++ ) {
        for ( y = 0; y < IMAGE_XSIZE; y++) {
            main_result += (output[x][y] != image_o[x][y]);
 190:	8ca70000 	lw	a3,0(a1)
 194:	8c860000 	lw	a2,0(a0)
 198:	2463ffff 	addiu	v1,v1,-1
 19c:	00e63026 	xor	a2,a3,a2
 1a0:	0006302b 	sltu	a2,zero,a2
 1a4:	00461021 	addu	v0,v0,a2
 1a8:	24a50004 	addiu	a1,a1,4
            image_o[i+1][j+1] = min;
        }
    }

    for ( x = 0; x < IMAGE_YSIZE; x++ ) {
        for ( y = 0; y < IMAGE_XSIZE; y++) {
 1ac:	1460fff8 	bnez	v1,190 <main+0x190>
 1b0:	24840004 	addiu	a0,a0,4
            /*kernel to return the median filter to the output image*/
            image_o[i+1][j+1] = min;
        }
    }

    for ( x = 0; x < IMAGE_YSIZE; x++ ) {
 1b4:	25080001 	addiu	t0,t0,1
 1b8:	2403000f 	addiu	v1,zero,15
 1bc:	1503ffee 	bne	t0,v1,178 <main+0x178>
 1c0:	00000000 	sll	zero,zero,0x0
    }

    //printf ("%d\n", main_result);

    return main_result;
}
 1c4:	8fb10394 	lw	s1,916(sp)
 1c8:	8fb00390 	lw	s0,912(sp)
 1cc:	03e00008 	jr	ra
 1d0:	27bd0398 	addiu	sp,sp,920

Disassembly of section .rodata:

00000000 <output>:
   0:	000000bd 	0xbd
   4:	000000d5 	0xd5
   8:	0000001d 	0x1d
   c:	00000061 	0x61
  10:	00000010 	mfhi	zero
  14:	00000002 	srl	zero,zero,0x0
  18:	00000001 	0x1
  1c:	00000020 	add	zero,zero,zero
  20:	00000010 	mfhi	zero
  24:	00000002 	srl	zero,zero,0x0
  28:	00000001 	0x1
  2c:	00000020 	add	zero,zero,zero
  30:	000000f8 	0xf8
	...
  3c:	00000020 	add	zero,zero,zero
  40:	00000001 	0x1
  44:	00000002 	srl	zero,zero,0x0
  48:	00000003 	sra	zero,zero,0x0
  4c:	00000004 	sllv	zero,zero,zero
  50:	00000005 	0x5
  54:	00000006 	srlv	zero,zero,zero
  58:	00000007 	srav	zero,zero,zero
  5c:	00000008 	jr	zero
  60:	00000009 	jalr	zero,zero
  64:	0000000a 	0xa
  68:	0000000b 	0xb
  6c:	0000000c 	syscall
  70:	00000035 	0x35
  74:	00000000 	sll	zero,zero,0x0
  78:	00000036 	0x36
  7c:	00000001 	0x1
  80:	00000002 	srl	zero,zero,0x0
  84:	00000003 	sra	zero,zero,0x0
  88:	00000004 	sllv	zero,zero,zero
  8c:	00000005 	0x5
  90:	00000006 	srlv	zero,zero,zero
  94:	00000007 	srav	zero,zero,zero
  98:	00000008 	jr	zero
  9c:	00000009 	jalr	zero,zero
  a0:	0000000a 	0xa
  a4:	0000000b 	0xb
  a8:	0000000c 	syscall
	...
  b8:	00000002 	srl	zero,zero,0x0
  bc:	00000003 	sra	zero,zero,0x0
  c0:	00000004 	sllv	zero,zero,zero
  c4:	00000005 	0x5
  c8:	00000006 	srlv	zero,zero,zero
  cc:	00000007 	srav	zero,zero,zero
  d0:	00000008 	jr	zero
  d4:	00000009 	jalr	zero,zero
  d8:	0000000a 	0xa
  dc:	0000000b 	0xb
  e0:	0000000c 	syscall
  e4:	0000000d 	break
	...
  f4:	00000015 	0x15
  f8:	00000016 	0x16
  fc:	00000017 	0x17
 100:	00000018 	mult	zero,zero
 104:	00000019 	multu	zero,zero
 108:	0000001a 	div	zero,zero,zero
 10c:	0000001b 	divu	zero,zero,zero
 110:	0000001c 	0x1c
 114:	0000001d 	0x1d
 118:	0000001e 	0x1e
 11c:	0000001f 	0x1f
 120:	00000020 	add	zero,zero,zero
 124:	000000ab 	0xab
 128:	00000028 	0x28
 12c:	00000000 	sll	zero,zero,0x0
 130:	00000016 	0x16
 134:	00000017 	0x17
 138:	00000018 	mult	zero,zero
 13c:	00000019 	multu	zero,zero
 140:	0000001a 	div	zero,zero,zero
 144:	0000001b 	divu	zero,zero,zero
 148:	0000001c 	0x1c
 14c:	0000001d 	0x1d
 150:	0000001e 	0x1e
 154:	0000001f 	0x1f
 158:	00000020 	add	zero,zero,zero
 15c:	00000021 	addu	zero,zero,zero
 160:	000000e0 	0xe0
 164:	000000dd 	0xdd
 168:	00000023 	negu	zero,zero
 16c:	00000016 	0x16
 170:	00000017 	0x17
 174:	00000018 	mult	zero,zero
 178:	00000019 	multu	zero,zero
 17c:	0000001a 	div	zero,zero,zero
 180:	0000001b 	divu	zero,zero,zero
 184:	0000001c 	0x1c
 188:	0000001d 	0x1d
 18c:	0000001e 	0x1e
 190:	0000001f 	0x1f
 194:	00000020 	add	zero,zero,zero
 198:	00000021 	addu	zero,zero,zero
 19c:	00000000 	sll	zero,zero,0x0
 1a0:	000000c8 	0xc8
 1a4:	000000ab 	0xab
 1a8:	00000017 	0x17
 1ac:	00000018 	mult	zero,zero
 1b0:	00000019 	multu	zero,zero
 1b4:	0000001a 	div	zero,zero,zero
 1b8:	0000001b 	divu	zero,zero,zero
 1bc:	0000001c 	0x1c
 1c0:	0000001d 	0x1d
 1c4:	0000001e 	0x1e
 1c8:	0000001f 	0x1f
 1cc:	00000020 	add	zero,zero,zero
 1d0:	00000021 	addu	zero,zero,zero
 1d4:	00000022 	neg	zero,zero
 1d8:	0000001f 	0x1f
 1dc:	00000061 	0x61
 1e0:	000000e0 	0xe0
 1e4:	0000001f 	0x1f
 1e8:	00000020 	add	zero,zero,zero
 1ec:	00000021 	addu	zero,zero,zero
 1f0:	00000022 	neg	zero,zero
 1f4:	00000023 	negu	zero,zero
 1f8:	00000024 	and	zero,zero,zero
 1fc:	00000025 	or	zero,zero,zero
 200:	00000026 	xor	zero,zero,zero
 204:	00000027 	nor	zero,zero,zero
 208:	00000028 	0x28
 20c:	00000029 	0x29
 210:	0000002b 	sltu	zero,zero,zero
 214:	000000ac 	0xac
 218:	00000028 	0x28
 21c:	00000000 	sll	zero,zero,0x0
 220:	00000020 	add	zero,zero,zero
 224:	00000021 	addu	zero,zero,zero
 228:	00000022 	neg	zero,zero
 22c:	00000023 	negu	zero,zero
 230:	00000024 	and	zero,zero,zero
 234:	00000025 	or	zero,zero,zero
 238:	00000026 	xor	zero,zero,zero
 23c:	00000027 	nor	zero,zero,zero
 240:	00000028 	0x28
 244:	00000029 	0x29
 248:	0000002b 	sltu	zero,zero,zero
 24c:	0000002b 	sltu	zero,zero,zero
	...
 25c:	00000020 	add	zero,zero,zero
 260:	00000021 	addu	zero,zero,zero
 264:	00000022 	neg	zero,zero
 268:	00000023 	negu	zero,zero
 26c:	00000024 	and	zero,zero,zero
 270:	00000025 	or	zero,zero,zero
 274:	00000026 	xor	zero,zero,zero
 278:	00000027 	nor	zero,zero,zero
 27c:	00000028 	0x28
 280:	00000029 	0x29
 284:	0000002b 	sltu	zero,zero,zero
 288:	0000002b 	sltu	zero,zero,zero
 28c:	00000061 	0x61
 290:	000000e0 	0xe0
 294:	000000d7 	0xd7
 298:	00000021 	addu	zero,zero,zero
 29c:	00000022 	neg	zero,zero
 2a0:	00000023 	negu	zero,zero
 2a4:	00000024 	and	zero,zero,zero
 2a8:	00000025 	or	zero,zero,zero
 2ac:	00000026 	xor	zero,zero,zero
 2b0:	00000027 	nor	zero,zero,zero
 2b4:	00000028 	0x28
 2b8:	00000029 	0x29
 2bc:	0000002b 	sltu	zero,zero,zero
 2c0:	0000002b 	sltu	zero,zero,zero
 2c4:	0000002c 	0x2c
 2c8:	00000028 	0x28
 2cc:	00000000 	sll	zero,zero,0x0
 2d0:	00000055 	0x55
 2d4:	00000029 	0x29
 2d8:	0000002a 	slt	zero,zero,zero
 2dc:	0000002b 	sltu	zero,zero,zero
 2e0:	0000002c 	0x2c
 2e4:	0000002d 	0x2d
 2e8:	0000002e 	0x2e
 2ec:	0000002f 	0x2f
 2f0:	00000030 	0x30
 2f4:	00000031 	0x31
 2f8:	00000032 	0x32
 2fc:	00000033 	0x33
 300:	00000034 	0x34
 304:	00000066 	0x66
 308:	00000013 	mtlo	zero
 30c:	00000061 	0x61
 310:	000000e0 	0xe0
 314:	000000d7 	0xd7
 318:	00000023 	negu	zero,zero
 31c:	00000061 	0x61
 320:	00000002 	srl	zero,zero,0x0
	...
 330:	00000001 	0x1
	...
 340:	000000e0 	0xe0
 344:	0000006e 	0x6e
 348:	00000013 	mtlo	zero
 34c:	00000061 	0x61
 350:	00000000 	sll	zero,zero,0x0
 354:	000000d0 	0xd0
 358:	00000028 	0x28
 35c:	00000000 	sll	zero,zero,0x0
 360:	000000e0 	0xe0
 364:	00000072 	0x72
 368:	00000018 	mult	zero,zero
 36c:	00000061 	0x61
	...
 380:	000000f0 	0xf0

00000384 <image_i>:
 384:	00000000 	sll	zero,zero,0x0
 388:	00000001 	0x1
 38c:	00000002 	srl	zero,zero,0x0
 390:	00000003 	sra	zero,zero,0x0
 394:	00000004 	sllv	zero,zero,zero
 398:	00000005 	0x5
 39c:	00000006 	srlv	zero,zero,zero
 3a0:	00000007 	srav	zero,zero,zero
 3a4:	00000008 	jr	zero
 3a8:	00000009 	jalr	zero,zero
 3ac:	0000000a 	0xa
 3b0:	0000000b 	0xb
 3b4:	0000000c 	syscall
 3b8:	0000000d 	break
 3bc:	0000000e 	0xe
 3c0:	00000000 	sll	zero,zero,0x0
 3c4:	00000001 	0x1
 3c8:	00000002 	srl	zero,zero,0x0
 3cc:	00000003 	sra	zero,zero,0x0
 3d0:	00000004 	sllv	zero,zero,zero
 3d4:	00000005 	0x5
 3d8:	00000006 	srlv	zero,zero,zero
 3dc:	00000007 	srav	zero,zero,zero
 3e0:	00000008 	jr	zero
 3e4:	00000009 	jalr	zero,zero
 3e8:	0000000a 	0xa
 3ec:	0000000b 	0xb
 3f0:	0000000c 	syscall
 3f4:	0000000d 	break
 3f8:	0000000e 	0xe
 3fc:	00000000 	sll	zero,zero,0x0
 400:	00000001 	0x1
 404:	00000002 	srl	zero,zero,0x0
 408:	00000003 	sra	zero,zero,0x0
 40c:	00000004 	sllv	zero,zero,zero
 410:	00000005 	0x5
 414:	00000006 	srlv	zero,zero,zero
 418:	00000007 	srav	zero,zero,zero
 41c:	00000008 	jr	zero
 420:	00000009 	jalr	zero,zero
 424:	0000000a 	0xa
 428:	0000000b 	0xb
 42c:	0000000c 	syscall
 430:	0000000d 	break
 434:	0000000e 	0xe
 438:	00000000 	sll	zero,zero,0x0
 43c:	00000001 	0x1
 440:	00000002 	srl	zero,zero,0x0
 444:	00000003 	sra	zero,zero,0x0
 448:	00000004 	sllv	zero,zero,zero
 44c:	00000005 	0x5
 450:	00000006 	srlv	zero,zero,zero
 454:	00000007 	srav	zero,zero,zero
 458:	00000008 	jr	zero
 45c:	00000009 	jalr	zero,zero
 460:	0000000a 	0xa
 464:	0000000b 	0xb
 468:	0000000c 	syscall
 46c:	0000000d 	break
 470:	0000000e 	0xe
 474:	00000015 	0x15
 478:	00000016 	0x16
 47c:	00000017 	0x17
 480:	00000018 	mult	zero,zero
 484:	00000019 	multu	zero,zero
 488:	0000001a 	div	zero,zero,zero
 48c:	0000001b 	divu	zero,zero,zero
 490:	0000001c 	0x1c
 494:	0000001d 	0x1d
 498:	0000001e 	0x1e
 49c:	0000001f 	0x1f
 4a0:	00000020 	add	zero,zero,zero
 4a4:	00000021 	addu	zero,zero,zero
 4a8:	00000022 	neg	zero,zero
 4ac:	00000023 	negu	zero,zero
 4b0:	00000015 	0x15
 4b4:	00000016 	0x16
 4b8:	00000017 	0x17
 4bc:	00000018 	mult	zero,zero
 4c0:	00000019 	multu	zero,zero
 4c4:	0000001a 	div	zero,zero,zero
 4c8:	0000001b 	divu	zero,zero,zero
 4cc:	0000001c 	0x1c
 4d0:	0000001d 	0x1d
 4d4:	0000001e 	0x1e
 4d8:	0000001f 	0x1f
 4dc:	00000020 	add	zero,zero,zero
 4e0:	00000021 	addu	zero,zero,zero
 4e4:	00000022 	neg	zero,zero
 4e8:	00000023 	negu	zero,zero
 4ec:	00000015 	0x15
 4f0:	00000016 	0x16
 4f4:	00000017 	0x17
 4f8:	00000018 	mult	zero,zero
 4fc:	00000019 	multu	zero,zero
 500:	0000001a 	div	zero,zero,zero
 504:	0000001b 	divu	zero,zero,zero
 508:	0000001c 	0x1c
 50c:	0000001d 	0x1d
 510:	0000001e 	0x1e
 514:	0000001f 	0x1f
 518:	00000020 	add	zero,zero,zero
 51c:	00000021 	addu	zero,zero,zero
 520:	00000022 	neg	zero,zero
 524:	00000023 	negu	zero,zero
 528:	00000015 	0x15
 52c:	00000016 	0x16
 530:	00000017 	0x17
 534:	00000018 	mult	zero,zero
 538:	00000019 	multu	zero,zero
 53c:	0000001a 	div	zero,zero,zero
 540:	0000001b 	divu	zero,zero,zero
 544:	0000001c 	0x1c
 548:	0000001d 	0x1d
 54c:	0000001e 	0x1e
 550:	0000001f 	0x1f
 554:	00000020 	add	zero,zero,zero
 558:	00000021 	addu	zero,zero,zero
 55c:	00000022 	neg	zero,zero
 560:	00000023 	negu	zero,zero
 564:	0000001f 	0x1f
 568:	00000020 	add	zero,zero,zero
 56c:	00000021 	addu	zero,zero,zero
 570:	00000022 	neg	zero,zero
 574:	00000023 	negu	zero,zero
 578:	00000024 	and	zero,zero,zero
 57c:	00000025 	or	zero,zero,zero
 580:	00000026 	xor	zero,zero,zero
 584:	00000027 	nor	zero,zero,zero
 588:	00000028 	0x28
 58c:	00000029 	0x29
 590:	0000002b 	sltu	zero,zero,zero
 594:	0000002b 	sltu	zero,zero,zero
 598:	0000002c 	0x2c
 59c:	0000002d 	0x2d
 5a0:	0000001f 	0x1f
 5a4:	00000020 	add	zero,zero,zero
 5a8:	00000021 	addu	zero,zero,zero
 5ac:	00000022 	neg	zero,zero
 5b0:	00000023 	negu	zero,zero
 5b4:	00000024 	and	zero,zero,zero
 5b8:	00000025 	or	zero,zero,zero
 5bc:	00000026 	xor	zero,zero,zero
 5c0:	00000027 	nor	zero,zero,zero
 5c4:	00000028 	0x28
 5c8:	00000029 	0x29
 5cc:	0000002b 	sltu	zero,zero,zero
 5d0:	0000002b 	sltu	zero,zero,zero
 5d4:	0000002c 	0x2c
 5d8:	0000002d 	0x2d
 5dc:	0000001f 	0x1f
 5e0:	00000020 	add	zero,zero,zero
 5e4:	00000021 	addu	zero,zero,zero
 5e8:	00000022 	neg	zero,zero
 5ec:	00000023 	negu	zero,zero
 5f0:	00000024 	and	zero,zero,zero
 5f4:	00000025 	or	zero,zero,zero
 5f8:	00000026 	xor	zero,zero,zero
 5fc:	00000027 	nor	zero,zero,zero
 600:	00000028 	0x28
 604:	00000029 	0x29
 608:	0000002b 	sltu	zero,zero,zero
 60c:	0000002b 	sltu	zero,zero,zero
 610:	0000002c 	0x2c
 614:	0000002d 	0x2d
 618:	0000001f 	0x1f
 61c:	00000020 	add	zero,zero,zero
 620:	00000021 	addu	zero,zero,zero
 624:	00000022 	neg	zero,zero
 628:	00000023 	negu	zero,zero
 62c:	00000024 	and	zero,zero,zero
 630:	00000025 	or	zero,zero,zero
 634:	00000026 	xor	zero,zero,zero
 638:	00000027 	nor	zero,zero,zero
 63c:	00000028 	0x28
 640:	00000029 	0x29
 644:	0000002b 	sltu	zero,zero,zero
 648:	0000002b 	sltu	zero,zero,zero
 64c:	0000002c 	0x2c
 650:	0000002d 	0x2d
 654:	00000029 	0x29
 658:	0000002a 	slt	zero,zero,zero
 65c:	0000002b 	sltu	zero,zero,zero
 660:	0000002c 	0x2c
 664:	0000002d 	0x2d
 668:	0000002e 	0x2e
 66c:	0000002f 	0x2f
 670:	00000030 	0x30
 674:	00000031 	0x31
 678:	00000032 	0x32
 67c:	00000033 	0x33
 680:	00000034 	0x34
 684:	00000035 	0x35
 688:	00000036 	0x36
 68c:	00000037 	0x37
 690:	00000029 	0x29
 694:	0000002a 	slt	zero,zero,zero
 698:	0000002b 	sltu	zero,zero,zero
 69c:	0000002c 	0x2c
 6a0:	0000002d 	0x2d
 6a4:	0000002e 	0x2e
 6a8:	0000002f 	0x2f
 6ac:	00000030 	0x30
 6b0:	00000031 	0x31
 6b4:	00000032 	0x32
 6b8:	00000033 	0x33
 6bc:	00000034 	0x34
 6c0:	00000035 	0x35
 6c4:	00000036 	0x36
 6c8:	00000037 	0x37
 6cc:	00000029 	0x29
 6d0:	0000002a 	slt	zero,zero,zero
 6d4:	0000002b 	sltu	zero,zero,zero
 6d8:	0000002c 	0x2c
 6dc:	0000002d 	0x2d
 6e0:	0000002e 	0x2e
 6e4:	0000002f 	0x2f
 6e8:	00000030 	0x30
 6ec:	00000031 	0x31
 6f0:	00000032 	0x32
 6f4:	00000033 	0x33
 6f8:	00000034 	0x34
 6fc:	00000035 	0x35
 700:	00000036 	0x36
 704:	00000037 	0x37
