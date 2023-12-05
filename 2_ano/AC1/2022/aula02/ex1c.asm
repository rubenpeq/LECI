#Aula 2 Ex.1c

#.eqv val, 0x0F1E
#.eqv val, 0x0614
.eqv val, 0xE543

	.data
	.text
	.globl main
main:	ori $t0, $0, val
	nor $t1, $t0, $t0 	# not $t0 (bit a bit)	
	jr $ra