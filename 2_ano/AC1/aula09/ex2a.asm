#Aula 9 Ex.2a

.eqv print_double, 3
.eqv print_string, 4
.eqv read_double, 7

	.data
d1:	.double 5.0
d2:	.double 9.0
d3:	.double 32.0
str1:	.asciiz "ft? "
str2:	.asciiz "c = "
	.text
	
f2c:	l.d $f0, d1
	l.d $f2, d2
	l.d $f4, d3
	sub.d $f12, $f12, $f4
	div.d $f0, $f0, $f2
	mul.d $f0, $f0, $f12
	jr $ra
	
	.globl main

main:	
	sw $ra, 0($sp)
	la $a0, str1
	li $v0, print_string
	syscall
	li $v0, read_double
	syscall
	mov.d $f12, $f0
	jal f2c
	la $a0, str2
	li $v0, print_string
	syscall
	mov.d $f12, $f0
	li $v0, print_double
	syscall
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	jr $ra
	
	