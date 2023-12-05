## aula11 ad_ex2

	.eqv	print_float, 2
	
	#offsets
	.eqv 	offset_a1, 0
	.eqv	offset_g, 16
	.eqv	offset_a2, 24
	.eqv	offset_v, 32
	.eqv	offset_k, 36
	
	.data
s1:	.asciiz	"St1"
	.space 	6
	.double	3.141592653589
	.word	291
	.word 	756
	.byte	"X"
	.float	1.983
	
	.text
	