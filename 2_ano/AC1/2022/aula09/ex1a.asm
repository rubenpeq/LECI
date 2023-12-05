#Aula 9 Ex.1a

# res = $f2
# val =$f0
# $f4 = 0.0


	.data
x1:	.float 2.59375
x2:	.float 0.0
	.text
	.eqv print_float, 2
	.eqv read_int, 5
	.globl main
main:
do:	li $v0, read_int
	syscall
	l.s $f2, x1
	mtc1 $v0, $f0		#$f0 = val
	cvt.s.w $f0, $f0	# convert int read to float?
	mul.s $f2, $f2, $f0	# $f2 (res)= val * x1
	mov.s $f12, $f2		#
	li $v0, print_float	#
	syscall			# print(res)
	l.s $f4, x2
	c.eq.s $f4, $f2
	bc1t end
	j do

end:	jr $ra
	