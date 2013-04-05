
median.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
                                                        {31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 44, 45,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55}}; // 24

int main () {
   0:	27bdfc40 	addiu	sp,sp,-960
   4:	afbe03bc 	sw	s8,956(sp)
   8:	03a0f021 	addu	s8,sp,zero
   
    int main_result = 0; 
   c:	afc00000 	sw	zero,0(s8)
    int min, temp;
    int temparray[FILTERSIZE];
    int image_o[IMAGE_XSIZE][IMAGE_YSIZE];
    

    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
  10:	afc00004 	sw	zero,4(s8)
  14:	080000be 	j	2f8 <main+0x2f8>
  18:	00000000 	sll	zero,zero,0x0
        for (j = 0; j < IMAGE_YSIZE-FILTERSIZE; j++) {
  1c:	afc00008 	sw	zero,8(s8)
  20:	080000b5 	j	2d4 <main+0x2d4>
  24:	00000000 	sll	zero,zero,0x0
            n = 0;
  28:	afc0001c 	sw	zero,28(s8)
            for (x = 0; x < FILTERSIZE; x++) {          // at each point of the pixel, store a row of x values into an array
  2c:	afc0000c 	sw	zero,12(s8)
  30:	08000038 	j	e0 <main+0xe0>
  34:	00000000 	sll	zero,zero,0x0
                for (y = 0; y < FILTERSIZE; y++) {
  38:	afc00010 	sw	zero,16(s8)
  3c:	0800002f 	j	bc <main+0xbc>
  40:	00000000 	sll	zero,zero,0x0
                    temparray[n] = image_i[i+x][j+y]; 
  44:	8fc30004 	lw	v1,4(s8)
  48:	8fc2000c 	lw	v0,12(s8)
  4c:	00000000 	sll	zero,zero,0x0
  50:	00621821 	addu	v1,v1,v0
  54:	8fc40008 	lw	a0,8(s8)
  58:	8fc20010 	lw	v0,16(s8)
  5c:	00000000 	sll	zero,zero,0x0
  60:	00822821 	addu	a1,a0,v0
  64:	3c040000 	lui	a0,0x0
  68:	00601021 	addu	v0,v1,zero
  6c:	00021100 	sll	v0,v0,0x4
  70:	00431023 	subu	v0,v0,v1
  74:	00451021 	addu	v0,v0,a1
  78:	00021880 	sll	v1,v0,0x2
  7c:	24820000 	addiu	v0,a0,0
  80:	00621021 	addu	v0,v1,v0
  84:	8c430000 	lw	v1,0(v0)
  88:	8fc2001c 	lw	v0,28(s8)
  8c:	00000000 	sll	zero,zero,0x0
  90:	00021080 	sll	v0,v0,0x2
  94:	03c21021 	addu	v0,s8,v0
  98:	ac430028 	sw	v1,40(v0)
                    n++;
  9c:	8fc2001c 	lw	v0,28(s8)
  a0:	00000000 	sll	zero,zero,0x0
  a4:	24420001 	addiu	v0,v0,1
  a8:	afc2001c 	sw	v0,28(s8)

    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
        for (j = 0; j < IMAGE_YSIZE-FILTERSIZE; j++) {
            n = 0;
            for (x = 0; x < FILTERSIZE; x++) {          // at each point of the pixel, store a row of x values into an array
                for (y = 0; y < FILTERSIZE; y++) {
  ac:	8fc20010 	lw	v0,16(s8)
  b0:	00000000 	sll	zero,zero,0x0
  b4:	24420001 	addiu	v0,v0,1
  b8:	afc20010 	sw	v0,16(s8)
  bc:	8fc20010 	lw	v0,16(s8)
  c0:	00000000 	sll	zero,zero,0x0
  c4:	28420003 	slti	v0,v0,3
  c8:	1440ffde 	bnez	v0,44 <main+0x44>
  cc:	00000000 	sll	zero,zero,0x0
    

    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
        for (j = 0; j < IMAGE_YSIZE-FILTERSIZE; j++) {
            n = 0;
            for (x = 0; x < FILTERSIZE; x++) {          // at each point of the pixel, store a row of x values into an array
  d0:	8fc2000c 	lw	v0,12(s8)
  d4:	00000000 	sll	zero,zero,0x0
  d8:	24420001 	addiu	v0,v0,1
  dc:	afc2000c 	sw	v0,12(s8)
  e0:	8fc2000c 	lw	v0,12(s8)
  e4:	00000000 	sll	zero,zero,0x0
  e8:	28420003 	slti	v0,v0,3
  ec:	1440ffd2 	bnez	v0,38 <main+0x38>
  f0:	00000000 	sll	zero,zero,0x0
                    n++;
                }
            }

            /*find median -- kernel to process the array*/
            for (i_med = 0; i_med < 4; i_med++) {
  f4:	afc00014 	sw	zero,20(s8)
  f8:	0800007c 	j	1f0 <main+0x1f0>
  fc:	00000000 	sll	zero,zero,0x0
                min = temparray[i_med];
 100:	8fc20014 	lw	v0,20(s8)
 104:	00000000 	sll	zero,zero,0x0
 108:	00021080 	sll	v0,v0,0x2
 10c:	03c21021 	addu	v0,s8,v0
 110:	8c420028 	lw	v0,40(v0)
 114:	00000000 	sll	zero,zero,0x0
 118:	afc20020 	sw	v0,32(s8)
                for (j_med = i_med + 1; j_med <= 8; j_med ++) {
 11c:	8fc20014 	lw	v0,20(s8)
 120:	00000000 	sll	zero,zero,0x0
 124:	24420001 	addiu	v0,v0,1
 128:	afc20018 	sw	v0,24(s8)
 12c:	0800006c 	j	1b0 <main+0x1b0>
 130:	00000000 	sll	zero,zero,0x0
                    if (temparray[j_med] < min)
 134:	8fc20018 	lw	v0,24(s8)
 138:	00000000 	sll	zero,zero,0x0
 13c:	00021080 	sll	v0,v0,0x2
 140:	03c21021 	addu	v0,s8,v0
 144:	8c430028 	lw	v1,40(v0)
 148:	8fc20020 	lw	v0,32(s8)
 14c:	00000000 	sll	zero,zero,0x0
 150:	0062102a 	slt	v0,v1,v0
 154:	10400012 	beqz	v0,1a0 <main+0x1a0>
 158:	00000000 	sll	zero,zero,0x0
                    {
                        temp = min;
 15c:	8fc20020 	lw	v0,32(s8)
 160:	00000000 	sll	zero,zero,0x0
 164:	afc20024 	sw	v0,36(s8)
                        min = temparray[j_med];
 168:	8fc20018 	lw	v0,24(s8)
 16c:	00000000 	sll	zero,zero,0x0
 170:	00021080 	sll	v0,v0,0x2
 174:	03c21021 	addu	v0,s8,v0
 178:	8c420028 	lw	v0,40(v0)
 17c:	00000000 	sll	zero,zero,0x0
 180:	afc20020 	sw	v0,32(s8)
                        temparray[j_med] = temp;
 184:	8fc20018 	lw	v0,24(s8)
 188:	00000000 	sll	zero,zero,0x0
 18c:	00021080 	sll	v0,v0,0x2
 190:	03c21021 	addu	v0,s8,v0
 194:	8fc30024 	lw	v1,36(s8)
 198:	00000000 	sll	zero,zero,0x0
 19c:	ac430028 	sw	v1,40(v0)
            }

            /*find median -- kernel to process the array*/
            for (i_med = 0; i_med < 4; i_med++) {
                min = temparray[i_med];
                for (j_med = i_med + 1; j_med <= 8; j_med ++) {
 1a0:	8fc20018 	lw	v0,24(s8)
 1a4:	00000000 	sll	zero,zero,0x0
 1a8:	24420001 	addiu	v0,v0,1
 1ac:	afc20018 	sw	v0,24(s8)
 1b0:	8fc20018 	lw	v0,24(s8)
 1b4:	00000000 	sll	zero,zero,0x0
 1b8:	28420009 	slti	v0,v0,9
 1bc:	1440ffdd 	bnez	v0,134 <main+0x134>
 1c0:	00000000 	sll	zero,zero,0x0
                        temp = min;
                        min = temparray[j_med];
                        temparray[j_med] = temp;
                    }
                }
                temparray[i_med] = min;
 1c4:	8fc20014 	lw	v0,20(s8)
 1c8:	00000000 	sll	zero,zero,0x0
 1cc:	00021080 	sll	v0,v0,0x2
 1d0:	03c21021 	addu	v0,s8,v0
 1d4:	8fc30020 	lw	v1,32(s8)
 1d8:	00000000 	sll	zero,zero,0x0
 1dc:	ac430028 	sw	v1,40(v0)
                    n++;
                }
            }

            /*find median -- kernel to process the array*/
            for (i_med = 0; i_med < 4; i_med++) {
 1e0:	8fc20014 	lw	v0,20(s8)
 1e4:	00000000 	sll	zero,zero,0x0
 1e8:	24420001 	addiu	v0,v0,1
 1ec:	afc20014 	sw	v0,20(s8)
 1f0:	8fc20014 	lw	v0,20(s8)
 1f4:	00000000 	sll	zero,zero,0x0
 1f8:	28420004 	slti	v0,v0,4
 1fc:	1440ffc0 	bnez	v0,100 <main+0x100>
 200:	00000000 	sll	zero,zero,0x0
                        temparray[j_med] = temp;
                    }
                }
                temparray[i_med] = min;
            };
            min = temparray[4];
 204:	8fc20038 	lw	v0,56(s8)
 208:	00000000 	sll	zero,zero,0x0
 20c:	afc20020 	sw	v0,32(s8)
            for (j_med = 5; j_med <= 8; j_med ++) {
 210:	24020005 	addiu	v0,zero,5
 214:	afc20018 	sw	v0,24(s8)
 218:	0800009d 	j	274 <main+0x274>
 21c:	00000000 	sll	zero,zero,0x0
                if (temparray[j_med] < min) {
 220:	8fc20018 	lw	v0,24(s8)
 224:	00000000 	sll	zero,zero,0x0
 228:	00021080 	sll	v0,v0,0x2
 22c:	03c21021 	addu	v0,s8,v0
 230:	8c430028 	lw	v1,40(v0)
 234:	8fc20020 	lw	v0,32(s8)
 238:	00000000 	sll	zero,zero,0x0
 23c:	0062102a 	slt	v0,v1,v0
 240:	10400008 	beqz	v0,264 <main+0x264>
 244:	00000000 	sll	zero,zero,0x0
                    min = temparray[j_med];
 248:	8fc20018 	lw	v0,24(s8)
 24c:	00000000 	sll	zero,zero,0x0
 250:	00021080 	sll	v0,v0,0x2
 254:	03c21021 	addu	v0,s8,v0
 258:	8c420028 	lw	v0,40(v0)
 25c:	00000000 	sll	zero,zero,0x0
 260:	afc20020 	sw	v0,32(s8)
                    }
                }
                temparray[i_med] = min;
            };
            min = temparray[4];
            for (j_med = 5; j_med <= 8; j_med ++) {
 264:	8fc20018 	lw	v0,24(s8)
 268:	00000000 	sll	zero,zero,0x0
 26c:	24420001 	addiu	v0,v0,1
 270:	afc20018 	sw	v0,24(s8)
 274:	8fc20018 	lw	v0,24(s8)
 278:	00000000 	sll	zero,zero,0x0
 27c:	28420009 	slti	v0,v0,9
 280:	1440ffe7 	bnez	v0,220 <main+0x220>
 284:	00000000 	sll	zero,zero,0x0
                    min = temparray[j_med];
                }
            }
            
            /*kernel to return the median filter to the output image*/
            image_o[i+1][j+1] = min;
 288:	8fc20004 	lw	v0,4(s8)
 28c:	00000000 	sll	zero,zero,0x0
 290:	24430001 	addiu	v1,v0,1
 294:	8fc20008 	lw	v0,8(s8)
 298:	00000000 	sll	zero,zero,0x0
 29c:	24440001 	addiu	a0,v0,1
 2a0:	00601021 	addu	v0,v1,zero
 2a4:	00021100 	sll	v0,v0,0x4
 2a8:	00431023 	subu	v0,v0,v1
 2ac:	00441021 	addu	v0,v0,a0
 2b0:	00021080 	sll	v0,v0,0x2
 2b4:	03c21021 	addu	v0,s8,v0
 2b8:	8fc30020 	lw	v1,32(s8)
 2bc:	00000000 	sll	zero,zero,0x0
 2c0:	ac430034 	sw	v1,52(v0)
    int temparray[FILTERSIZE];
    int image_o[IMAGE_XSIZE][IMAGE_YSIZE];
    

    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
        for (j = 0; j < IMAGE_YSIZE-FILTERSIZE; j++) {
 2c4:	8fc20008 	lw	v0,8(s8)
 2c8:	00000000 	sll	zero,zero,0x0
 2cc:	24420001 	addiu	v0,v0,1
 2d0:	afc20008 	sw	v0,8(s8)
 2d4:	8fc20008 	lw	v0,8(s8)
 2d8:	00000000 	sll	zero,zero,0x0
 2dc:	2842000c 	slti	v0,v0,12
 2e0:	1440ff51 	bnez	v0,28 <main+0x28>
 2e4:	00000000 	sll	zero,zero,0x0
    int min, temp;
    int temparray[FILTERSIZE];
    int image_o[IMAGE_XSIZE][IMAGE_YSIZE];
    

    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
 2e8:	8fc20004 	lw	v0,4(s8)
 2ec:	00000000 	sll	zero,zero,0x0
 2f0:	24420001 	addiu	v0,v0,1
 2f4:	afc20004 	sw	v0,4(s8)
 2f8:	8fc20004 	lw	v0,4(s8)
 2fc:	00000000 	sll	zero,zero,0x0
 300:	2842000c 	slti	v0,v0,12
 304:	1440ff45 	bnez	v0,1c <main+0x1c>
 308:	00000000 	sll	zero,zero,0x0
            /*kernel to return the median filter to the output image*/
            image_o[i+1][j+1] = min;
        }
    }

    for ( x = 0; x < IMAGE_YSIZE; x++ ) {
 30c:	afc0000c 	sw	zero,12(s8)
 310:	080000ff 	j	3fc <main+0x3fc>
 314:	00000000 	sll	zero,zero,0x0
        for ( y = 0; y < IMAGE_XSIZE; y++) {
 318:	afc00010 	sw	zero,16(s8)
 31c:	080000f6 	j	3d8 <main+0x3d8>
 320:	00000000 	sll	zero,zero,0x0
            main_result += (output[x][y] != image_o[x][y]);
 324:	3c040000 	lui	a0,0x0
 328:	8fc3000c 	lw	v1,12(s8)
 32c:	00000000 	sll	zero,zero,0x0
 330:	00601021 	addu	v0,v1,zero
 334:	00021100 	sll	v0,v0,0x4
 338:	00431023 	subu	v0,v0,v1
 33c:	8fc30010 	lw	v1,16(s8)
 340:	00000000 	sll	zero,zero,0x0
 344:	00431021 	addu	v0,v0,v1
 348:	00021880 	sll	v1,v0,0x2
 34c:	24820000 	addiu	v0,a0,0
 350:	00621021 	addu	v0,v1,v0
 354:	8c440000 	lw	a0,0(v0)
 358:	8fc3000c 	lw	v1,12(s8)
 35c:	00000000 	sll	zero,zero,0x0
 360:	00601021 	addu	v0,v1,zero
 364:	00021100 	sll	v0,v0,0x4
 368:	00431023 	subu	v0,v0,v1
 36c:	8fc30010 	lw	v1,16(s8)
 370:	00000000 	sll	zero,zero,0x0
 374:	00431021 	addu	v0,v0,v1
 378:	00021080 	sll	v0,v0,0x2
 37c:	03c21021 	addu	v0,s8,v0
 380:	8c420034 	lw	v0,52(v0)
 384:	00000000 	sll	zero,zero,0x0
 388:	00821026 	xor	v0,a0,v0
 38c:	0002102b 	sltu	v0,zero,v0
 390:	8fc30000 	lw	v1,0(s8)
 394:	00000000 	sll	zero,zero,0x0
 398:	00621021 	addu	v0,v1,v0
 39c:	afc20000 	sw	v0,0(s8)
            if (output[x][y] != image_o[x][y]) {
 3a0:	8fc3000c 	lw	v1,12(s8)
 3a4:	00000000 	sll	zero,zero,0x0
 3a8:	00601021 	addu	v0,v1,zero
 3ac:	00021100 	sll	v0,v0,0x4
 3b0:	00431023 	subu	v0,v0,v1
 3b4:	8fc3000c 	lw	v1,12(s8)
 3b8:	00000000 	sll	zero,zero,0x0
 3bc:	00601021 	addu	v0,v1,zero
 3c0:	00021100 	sll	v0,v0,0x4
 3c4:	00431023 	subu	v0,v0,v1
            image_o[i+1][j+1] = min;
        }
    }

    for ( x = 0; x < IMAGE_YSIZE; x++ ) {
        for ( y = 0; y < IMAGE_XSIZE; y++) {
 3c8:	8fc20010 	lw	v0,16(s8)
 3cc:	00000000 	sll	zero,zero,0x0
 3d0:	24420001 	addiu	v0,v0,1
 3d4:	afc20010 	sw	v0,16(s8)
 3d8:	8fc20010 	lw	v0,16(s8)
 3dc:	00000000 	sll	zero,zero,0x0
 3e0:	2842000f 	slti	v0,v0,15
 3e4:	1440ffcf 	bnez	v0,324 <main+0x324>
 3e8:	00000000 	sll	zero,zero,0x0
            /*kernel to return the median filter to the output image*/
            image_o[i+1][j+1] = min;
        }
    }

    for ( x = 0; x < IMAGE_YSIZE; x++ ) {
 3ec:	8fc2000c 	lw	v0,12(s8)
 3f0:	00000000 	sll	zero,zero,0x0
 3f4:	24420001 	addiu	v0,v0,1
 3f8:	afc2000c 	sw	v0,12(s8)
 3fc:	8fc2000c 	lw	v0,12(s8)
 400:	00000000 	sll	zero,zero,0x0
 404:	2842000f 	slti	v0,v0,15
 408:	1440ffc3 	bnez	v0,318 <main+0x318>
 40c:	00000000 	sll	zero,zero,0x0
        }
    }

    //printf ("%d\n", main_result);

    return main_result;
 410:	8fc20000 	lw	v0,0(s8)
}
 414:	03c0e821 	addu	sp,s8,zero
 418:	8fbe03bc 	lw	s8,956(sp)
 41c:	27bd03c0 	addiu	sp,sp,960
 420:	03e00008 	jr	ra
 424:	00000000 	sll	zero,zero,0x0

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
	34: 00000000  0x0
  38: 00000000  0x0
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
	ac: 00000000  0x0
  b0: 00000000  0x0
  b4: 00000000  0x0
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
	e8: 00000000  0x0
  ec: 00000000  0x0
  f0: 00000000  0x0
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
 250: 00000000  0x0
 254: 00000000  0x0
 258: 00000000  0x0
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
 324: 00000000  0x0
 328: 00000000  0x0
 32c: 00000000  0x0
 330:	00000001 	0x1
 334: 00000000  0x0
 338: 00000000  0x0
 33c: 00000000  0x0
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
 370: 00000000  0x0
 374: 00000000  0x0
 378: 00000000  0x0
 37c: 00000000  0x0
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
