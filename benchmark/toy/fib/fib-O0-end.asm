
fib.o:     file format elf32-bigmips


Disassembly of section .text:

00000000 <main>:
 * program.
 */
const int output[10] = { 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 };

int main ()
{
   //0: 27bdffd8  addiu sp,sp,-48
   0: 27bdffd8  addiu sp,sp,48
   4: afbe0024  sw  s8,36(sp)
   8: 03a0f021  move  s8,sp
   c: 03a05021  move  t2,sp
  10: 01405821  move  t3,t2
  /* Notice that we need to declare our variables, and their type */

  int n = 10; // 50
  14: 240a000a  li  t2,10
  18: afca0010  sw  t2,16(s8)
  int a = 0;
  1c: afc00000  sw  zero,0(s8)
  int b = 1;
  20: 240a0001  li  t2,1
  24: afca0004  sw  t2,4(s8)
  int sum[n];
  28: 8fca0010  lw  t2,16(s8)
  2c: 00000000  nop
  30: 254cffff  addiu t4,t2,-1
  34: afcc0014  sw  t4,20(s8)
  38: 01406021  move  t4,t2
  3c: 01802821  move  a1,t4
  40: 00002021  move  a0,zero
  44: 000566c2  srl t4,a1,0x1b
  48: 00044140  sll t0,a0,0x5
  4c: 01884025  or  t0,t4,t0
  50: 00054940  sll t1,a1,0x5
  54: 01402021  move  a0,t2
  58: 00801821  move  v1,a0
  5c: 00001021  move  v0,zero
  60: 000326c2  srl a0,v1,0x1b
  64: 00023140  sll a2,v0,0x5
  68: 00863025  or  a2,a0,a2
  6c: 00033940  sll a3,v1,0x5
  70: 01401021  move  v0,t2
  74: 00021080  sll v0,v0,0x2
  78: 24420007  addiu v0,v0,7
  7c: 24420007  addiu v0,v0,7
  80: 000210c2  srl v0,v0,0x3
  84: 000210c0  sll v0,v0,0x3
  88: 03a2e823  subu  sp,sp,v0
  8c: 03a01021  move  v0,sp
  90: 24420007  addiu v0,v0,7
  94: 000210c2  srl v0,v0,0x3
  98: 000210c0  sll v0,v0,0x3
  9c: afc20018  sw  v0,24(s8)
  int i;
  
  int main_result = 0;
  a0: afc0000c  sw  zero,12(s8)
    
    for ( i = 0; i < n; i++)      
  a4: afc00008  sw  zero,8(s8)
  a8: 08000045  j 114 <main+0x114>
  ac: 00000000  nop
    {              
        sum[i] = a + b;
  b0: 8fc30000  lw  v1,0(s8)
  b4: 8fc20004  lw  v0,4(s8)
  b8: 00000000  nop
  bc: 00621821  addu  v1,v1,v0
  c0: 8fc40018  lw  a0,24(s8)
  c4: 8fc20008  lw  v0,8(s8)
  c8: 00000000  nop
  cc: 00021080  sll v0,v0,0x2
  d0: 00821021  addu  v0,a0,v0
  d4: ac430000  sw  v1,0(v0)
        a = b;
  d8: 8fc20004  lw  v0,4(s8)
  dc: 00000000  nop
  e0: afc20000  sw  v0,0(s8)
        b = sum[i];
  e4: 8fc30018  lw  v1,24(s8)
  e8: 8fc20008  lw  v0,8(s8)
  ec: 00000000  nop
  f0: 00021080  sll v0,v0,0x2
  f4: 00621021  addu  v0,v1,v0
  f8: 8c420000  lw  v0,0(v0)
  fc: 00000000  nop
 100: afc20004  sw  v0,4(s8)
  int sum[n];
  int i;
  
  int main_result = 0;
    
    for ( i = 0; i < n; i++)      
 104: 8fc20008  lw  v0,8(s8)
 108: 00000000  nop
 10c: 24420001  addiu v0,v0,1
 110: afc20008  sw  v0,8(s8)
 114: 8fc30008  lw  v1,8(s8)
 118: 8fc20010  lw  v0,16(s8)
 11c: 00000000  nop
 120: 0062102a  slt v0,v1,v0
 124: 1440ffe2  bnez  v0,b0 <main+0xb0>
 128: 00000000  nop
        sum[i] = a + b;
        a = b;
        b = sum[i];
    }
    
    for (i = 0; i < 10; i++){
 12c: afc00008  sw  zero,8(s8)
 130: 08000066  j 198 <main+0x198>
 134: 00000000  nop
        main_result += (output[i] != sum[i]);
 138: 3c020000  lui v0,0x0
 13c: 8fc30008  lw  v1,8(s8)
 140: 00000000  nop
 144: 00031880  sll v1,v1,0x2
 148: 24420000  addiu v0,v0,0
 14c: 00621021  addu  v0,v1,v0
 150: 8c430000  lw  v1,0(v0)
 154: 8fc40018  lw  a0,24(s8)
 158: 8fc20008  lw  v0,8(s8)
 15c: 00000000  nop
 160: 00021080  sll v0,v0,0x2
 164: 00821021  addu  v0,a0,v0
 168: 8c420000  lw  v0,0(v0)
 16c: 00000000  nop
 170: 00621026  xor v0,v1,v0
 174: 0002102b  sltu  v0,zero,v0
 178: 8fc3000c  lw  v1,12(s8)
 17c: 00000000  nop
 180: 00621021  addu  v0,v1,v0
 184: afc2000c  sw  v0,12(s8)
        sum[i] = a + b;
        a = b;
        b = sum[i];
    }
    
    for (i = 0; i < 10; i++){
 188: 8fc20008  lw  v0,8(s8)
 18c: 00000000  nop
 190: 24420001  addiu v0,v0,1
 194: afc20008  sw  v0,8(s8)
 198: 8fc20008  lw  v0,8(s8)
 19c: 00000000  nop
 1a0: 2842000a  slti  v0,v0,10
 1a4: 1440ffe4  bnez  v0,138 <main+0x138>
 1a8: 00000000  nop
        main_result += (output[i] != sum[i]);
    }
        //printf ("%d\n", main_result);
    
  return main_result;
 1ac: 8fc2000c  lw  v0,12(s8)
 1b0: 0160e821  move  sp,t3
}
 1b4: 03c0e821  move  sp,s8
 1b8: 8fbe0024  lw  s8,36(sp)
 1bc: 27bd0028  addiu sp,sp,40
 //1c0: 03e00008  jr  ra
 1c4: 00000000  nop
