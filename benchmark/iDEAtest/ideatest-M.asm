
// Test for 9 stage pipeline

00000000 <main>:

0:	27bdffe8 	addu	v0,zero,zero
0:	27bdffe8 	addiu	t0,v0,1
0:  00000000 	nop
0:  00000000 	nop
0:  00000000 	nop
0:  00000000 	nop
0:  00000000 	nop
0:	27bdffe8 	addiu	v1,v0,1
0:	27bdffe8 	addiu	a0,v0,2
0:	27bdffe8 	addiu	a1,v1,3
0:  00000000 	nop
0:  00000000 	nop
0:  00000000 	nop
0:  00000000 	nop
0:  00000000 	addiu	a2,v1,3
0:  00000000 	lw		a0,0(v1)
0:  00000000 	nop
0:  00000000 	nop
0:  00000000 	nop
0:  00000000 	nop
0:  00000000 	nop
0:  00000000 	nop
0:  00000000 	jr		ra
0:  00000000 	nop