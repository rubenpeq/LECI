.eqv val_1, 0x12345678 
#.eqv val_1, 0x862A5C1B
	
	
	.data
	.text
	.globl main
main: 	li $t0, val_1	 	# instrução virtual (decomposta
				# em duas instruções nativas)
	sll $t2,$t0,16 		#
	srl $t3,$t0,16 		#
	sra $t4,$t0,16 		#
	jr $ra 			# fim do programa