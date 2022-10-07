#.eqv val_1, 0x0F1E
#.eqv val_1, 0x0614
.eqv val_1, 0xE543
	
	.data
	.text
	.globl main
main:	ori $t0, $0, val_1	# $t1 = val_1
	li $t2, 0xffffffff
	xor $t1, $t2, $t0	# not (bit a bit)
	#not $t1, $t0		# $t2 = ~ $t1
	jr $ra 			# end program