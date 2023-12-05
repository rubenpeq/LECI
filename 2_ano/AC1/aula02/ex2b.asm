# aula02 ex2b

# (0x12345678, 1)
# (0x12345678, 4)
# (0x12345678, 16)
# (0x862A5C1B, 2)
# (0x862A5C1B, 4)

#	.eqv val1, 0x12345678
	.eqv val1, 0x862A5C1B
	
#	.eqv val2, 1
#	.eqv val2, 2
	.eqv val2, 4
#	.eqv val2, 16
	
	.data
	.text
	.globl main
main: 	li $t0,val1 # instrução virtual (decomposta em duas instruções nativas)
	sll $t2,$t0,val2 #
	srl $t3,$t0,val2 #
	sra $t4,$t0,val2 #
	jr $ra # fim do programa