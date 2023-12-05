#Aula 2 Ex.1b

#.eqv val_1, 0x1234
#.eqv val_2, 0x000F
#.eqv val_1, 0x1234
#.eqv val_2, 0xF0F0
.eqv val_1, 0x5C1B
.eqv val_2, 0xA3E4

	.data
	.text
	.globl main
main:	ori $t0, $0, val_1 	# $t0 = val_1;
	ori $t1, $0, val_2	# $t1 = val_2;
	and $t2, $t0, $t1
	or $t3, $t0, $t1
	nor $t4, $t0, $t1
	xor $t5, $t0, $t1
	jr $ra