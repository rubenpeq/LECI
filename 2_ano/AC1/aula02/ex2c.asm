#Aula 2 Ex.2c

# $t0 = bin
# $t1 = gray

	.data
	.text
	.globl main
main:	ori $t0, $0, 0x0005
	srl $t1, $t0, 1		#(bin >> 1);
	xor $t1, $t1, $t0	#bin ^ (bin >> 1);
	jr $ra