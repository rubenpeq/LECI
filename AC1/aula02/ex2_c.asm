.eqv bin, 0x1234
	########## acabar #############
	
	.data
	.text
	.globl main
main: 	li $t0, val_1	 	# instrução virtual (decomposta
				# em duas instruções nativas)
	sll $t2,$t0,1 		#
	srl $t3,$t0,1 		#
	sra $t4,$t0,1 		#
	jr $ra 			# fim do programa
