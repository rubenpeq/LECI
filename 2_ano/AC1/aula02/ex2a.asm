#Aula 2 Ex.2a

# $t2 = sll
# $t3 = srl
# $t4 = sra

#.eqv val, 0x12345678
.eqv val, 0x862A5C1B
#.eqv shiftn, 1
#.eqv shiftn, 2
.eqv shiftn, 4
#.eqv shiftn, 16


	.data
	.text
	.globl main
main: 	li $t0,val 	# instrução virtual (decomposta
			# em duas instruções nativas)
	sll $t2,$t0,shiftn #
	srl $t3,$t0,shiftn #
	sra $t4,$t0,shiftn #
	jr $ra # fim do programa