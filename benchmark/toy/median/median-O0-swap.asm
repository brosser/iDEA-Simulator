
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
0 :  00000000
4 :  00000001
8 :  00000002
c :  00000003
10 :  00000004
14 :  00000005
18 :  00000006
1c :  00000007
20 :  00000008
24 :  00000009
28 :  0000000a
2c :  0000000b
30 :  0000000c
34 :  0000000d
38 :  0000000e
3c :  00000000
40 :  00000001
44 :  00000002
48 :  00000003
4c :  00000004
50 :  00000005
54 :  00000006
58 :  00000007
5c :  00000008
60 :  00000009
64 :  0000000a
68 :  0000000b
6c :  0000000c
70 :  0000000d
74 :  0000000e
78 :  00000000
7c :  00000001
80 :  00000002
84 :  00000003
88 :  00000004
8c :  00000005
90 :  00000006
94 :  00000007
98 :  00000008
9c :  00000009
a0 :  0000000a
a4 :  0000000b
a8 :  0000000c
ac :  0000000d
b0 :  0000000e
b4 :  00000000
b8 :  00000001
bc :  00000002
c0 :  00000003
c4 :  00000004
c8 :  00000005
cc :  00000006
d0 :  00000007
d4 :  00000008
d8 :  00000009
dc :  0000000a
e0 :  0000000b
e4 :  0000000c
e8 :  0000000d
ec :  0000000e
f0 :  00000015
f4 :  00000016
f8 :  00000017
fc :  00000018
100 :  00000019
104 :  0000001a
108 :  0000001b
10c :  0000001c
110 :  0000001d
114 :  0000001e
118 :  0000001f
11c :  00000020
120 :  00000021
124 :  00000022
128 :  00000023
12c :  00000015
130 :  00000016
134 :  00000017
138 :  00000018
13c :  00000019
140 :  0000001a
144 :  0000001b
148 :  0000001c
14c :  0000001d
150 :  0000001e
154 :  0000001f
158 :  00000020
15c :  00000021
160 :  00000022
164 :  00000023
168 :  00000015
16c :  00000016
170 :  00000017
174 :  00000018
178 :  00000019
17c :  0000001a
180 :  0000001b
184 :  0000001c
188 :  0000001d
18c :  0000001e
190 :  0000001f
194 :  00000020
198 :  00000021
19c :  00000022
1a0 :  00000023
1a4 :  00000015
1a8 :  00000016
1ac :  00000017
1b0 :  00000018
1b4 :  00000019
1b8 :  0000001a
1bc :  0000001b
1c0 :  0000001c
1c4 :  0000001d
1c8 :  0000001e
1cc :  0000001f
1d0 :  00000020
1d4 :  00000021
1d8 :  00000022
1dc :  00000023
1e0 :  0000001f
1e4 :  00000020
1e8 :  00000021
1ec :  00000022
1f0 :  00000023
1f4 :  00000024
1f8 :  00000025
1fc :  00000026
200 :  00000027
204 :  00000028
208 :  00000029
20c :  0000002b
210 :  0000002b
214 :  0000002c
218 :  0000002d
21c :  0000001f
220 :  00000020
224 :  00000021
228 :  00000022
22c :  00000023
230 :  00000024
234 :  00000025
238 :  00000026
23c :  00000027
240 :  00000028
244 :  00000029
248 :  0000002b
24c :  0000002b
250 :  0000002c
254 :  0000002d
258 :  0000001f
25c :  00000020
260 :  00000021
264 :  00000022
268 :  00000023
26c :  00000024
270 :  00000025
274 :  00000026
278 :  00000027
27c :  00000028
280 :  00000029
284 :  0000002b
288 :  0000002b
28c :  0000002c
290 :  0000002d
294 :  0000001f
298 :  00000020
29c :  00000021
2a0 :  00000022
2a4 :  00000023
2a8 :  00000024
2ac :  00000025
2b0 :  00000026
2b4 :  00000027
2b8 :  00000028
2bc :  00000029
2c0 :  0000002b
2c4 :  0000002b
2c8 :  0000002c
2cc :  0000002d
2d0 :  00000029
2d4 :  0000002a
2d8 :  0000002b
2dc :  0000002c
2e0 :  0000002d
2e4 :  0000002e
2e8 :  0000002f
2ec :  00000030
2f0 :  00000031
2f4 :  00000032
2f8 :  00000033
2fc :  00000034
300 :  00000035
304 :  00000036
308 :  00000037
30c :  00000029
310 :  0000002a
314 :  0000002b
318 :  0000002c
31c :  0000002d
320 :  0000002e
324 :  0000002f
328 :  00000030
32c :  00000031
330 :  00000032
334 :  00000033
338 :  00000034
33c :  00000035
340 :  00000036
344 :  00000037
348 :  00000029
34c :  0000002a
350 :  0000002b
354 :  0000002c
358 :  0000002d
35c :  0000002e
360 :  0000002f
364 :  00000030
368 :  00000031
36c :  00000032
370 :  00000033
374 :  00000034
378 :  00000035
37c :  00000036
380 :  00000037

00000384 <image_i>:
384 :  000000bd
388 :  000000d5
38c :  0000001d
390 :  00000061
394 :  00000010
398 :  00000002
39c :  00000001
3a0 :  00000020
3a4 :  00000010
3a8 :  00000002
3ac :  00000001
3b0 :  00000020
3b4 :  000000f8
3b8 :  00000000
3bc :  00000000
3c0 :  00000020
3c4 :  00000001
3c8 :  00000002
3cc :  00000003
3d0 :  00000004
3d4 :  00000005
3d8 :  00000006
3dc :  00000007
3e0 :  00000008
3e4 :  00000009
3e8 :  0000000a
3ec :  0000000b
3f0 :  0000000c
3f4 :  00000035
3f8 :  00000000
3fc :  00000036
400 :  00000001
404 :  00000002
408 :  00000003
40c :  00000004
410 :  00000005
414 :  00000006
418 :  00000007
41c :  00000008
420 :  00000009
424 :  0000000a
428 :  0000000b
42c :  0000000c
430 :  00000000
434 :  00000000
438 :  00000000
43c :  00000002
440 :  00000003
444 :  00000004
448 :  00000005
44c :  00000006
450 :  00000007
454 :  00000008
458 :  00000009
45c :  0000000a
460 :  0000000b
464 :  0000000c
468 :  0000000d
46c :  00000000
470 :  00000000
474 :  00000000
478 :  00000015
47c :  00000016
480 :  00000017
484 :  00000018
488 :  00000019
48c :  0000001a
490 :  0000001b
494 :  0000001c
498 :  0000001d
49c :  0000001e
4a0 :  0000001f
4a4 :  00000020
4a8 :  000000ab
4ac :  00000028
4b0 :  00000000
4b4 :  00000016
4b8 :  00000017
4bc :  00000018
4c0 :  00000019
4c4 :  0000001a
4c8 :  0000001b
4cc :  0000001c
4d0 :  0000001d
4d4 :  0000001e
4d8 :  0000001f
4dc :  00000020
4e0 :  00000021
4e4 :  000000e0
4e8 :  000000dd
4ec :  00000023
4f0 :  00000016
4f4 :  00000017
4f8 :  00000018
4fc :  00000019
500 :  0000001a
504 :  0000001b
508 :  0000001c
50c :  0000001d
510 :  0000001e
514 :  0000001f
518 :  00000020
51c :  00000021
520 :  00000000
524 :  000000c8
528 :  000000ab
52c :  00000017
530 :  00000018
534 :  00000019
538 :  0000001a
53c :  0000001b
540 :  0000001c
544 :  0000001d
548 :  0000001e
54c :  0000001f
550 :  00000020
554 :  00000021
558 :  00000022
55c :  0000001f
560 :  00000061
564 :  000000e0
568 :  0000001f
56c :  00000020
570 :  00000021
574 :  00000022
578 :  00000023
57c :  00000024
580 :  00000025
584 :  00000026
588 :  00000027
58c :  00000028
590 :  00000029
594 :  0000002b
598 :  000000ac
59c :  00000028
5a0 :  00000000
5a4 :  00000020
5a8 :  00000021
5ac :  00000022
5b0 :  00000023
5b4 :  00000024
5b8 :  00000025
5bc :  00000026
5c0 :  00000027
5c4 :  00000028
5c8 :  00000029
5cc :  0000002b
5d0 :  0000002b
5d4 :  00000000
5d8 :  00000000
5dc :  00000000
5e0 :  00000020
5e4 :  00000021
5e8 :  00000022
5ec :  00000023
5f0 :  00000024
5f4 :  00000025
5f8 :  00000026
5fc :  00000027
600 :  00000028
604 :  00000029
608 :  0000002b
60c :  0000002b
610 :  00000061
614 :  000000e0
618 :  000000d7
61c :  00000021
620 :  00000022
624 :  00000023
628 :  00000024
62c :  00000025
630 :  00000026
634 :  00000027
638 :  00000028
63c :  00000029
640 :  0000002b
644 :  0000002b
648 :  0000002c
64c :  00000028
650 :  00000000
654 :  00000055
658 :  00000029
65c :  0000002a
660 :  0000002b
664 :  0000002c
668 :  0000002d
66c :  0000002e
670 :  0000002f
674 :  00000030
678 :  00000031
67c :  00000032
680 :  00000033
684 :  00000034
688 :  00000066
68c :  00000013
690 :  00000061
694 :  000000e0
698 :  000000d7
69c :  00000023
6a0 :  00000061
6a4 :  00000002
6a8 :  00000000
6ac :  00000000
6b0 :  00000000
6b4 :  00000001
6b8 :  00000000
6bc :  00000000
6c0 :  00000000
6c4 :  000000e0
6c8 :  0000006e
6cc :  00000013
6d0 :  00000061
6d4 :  00000000
6d8 :  000000d0
6dc :  00000028
6e0 :  00000000
6e4 :  000000e0
6e8 :  00000072
6ec :  00000018
6f0 :  00000061
6f4 :  00000000
6f8 :  00000000
6fc :  00000000
700 :  00000000
704 :  000000f0