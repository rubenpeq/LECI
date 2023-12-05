## aula12 ex1



	.eqv	read_int, 5
	.eqv	print_string, 4
	.eqv	read_string, 8
	.eqv	sizest, 44
	.eqv	stgrof, ...

	.data
str1:	.asciiz "N. Mec: "
str2:	.asciiz "Primeiro Nome: "
str3:	.asciiz "Ultimo Nome: "
str4:	.asciiz "Nota: "
str5:	.asciiz "\nMedia: "
	
	.text
###################### read_data ######################

read_data:	
	move	$t0, $a0
	move	$t1, $a1
	li	$t2, 0		# i=0
f_rd:	bge	$t2, $t1, end_f_rd	#i<ns
	la 	$a0, str1
	li	$v0, print_string
	syscall
	li 	$t3, sizest	# $t3 = sizeof(student)
	mulu	$t4, $t3, $t2
	addu	$t5, $t0, $t4
	li 	$v0, read_int
	syscall
	sw	$v0, stgrof(...)
	
	la	$a0, str2
	li	$v0, print_string
	syscall
	li	$t3, sizest	# $t3 = sizeof(student)
	mulu	$t4, $t3, $t2
	addu	$t5, $t0, $t4
	addiu	$a0, $t5, 
	li	$a1, ...
	li	$v0, read_string
	syscall
	
	la	$a0, str3
	li	$v0, print_string
	syscall
	li	$t3, sizest	# $t3 = sizeof(student)
	mulu	$t4, $t3, $t2
	addu	$t5, $t0, $t4
	addiu	$a0, $t5, ...
	li	$a1, ...
	li	$v0, read_string
	syscall

	j f_rd
end_f_rd:
	
###################### max ######################
	
max:	la 	$t3, max_grade
	l.s	$f2, 0($t3)
	mtc1	$0, $f4
	cvt.s.w	$f4, $f4
	move 	$t0, $a0
	li	$t3, sizest
	mul	$t3, $t3, $a1
	addu	$t2, $t0, $t3
f_mx:	bge	$t0, $t2, end_fmx
	l.s	$f6, stgrof($t0)
	add.s	$f4, $f4, $f6
	c.le.s	$f6, $f2
	bc1t	end_if_mx
	mov.s	$f2, $f6
	move	$t1, $t0
end_if_mx:
	addiu	$t0, $t0, sizest
	j f_mx
end_fmx	mtc1	$a1, $f8
	cvt.s.w	$f8, $f8
	div.s	$f4, $f4, $f8
	
	
	


###################### print_student ######################	

	
			