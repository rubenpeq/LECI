## aula11 ex1a

	.eqv	print_float, 2
	.eqv	print_string, 4
	.eqv	print_char, 11
	.eqv	print_intu10, 36
	
	#offsets
	.eqv	offset_id, 0
	.eqv	offset_fn, 4
	.eqv	offset_ln, 22
	.eqv	offset_gr, 40
	
	.data
	.align	2
stg:	.word 	72343
	.asciiz	"Napoleao"
	.space	9
	.asciiz "Bonaparte"
	.space	5
	.align 	2
	.float	5.1
	
str1:	.asciiz	"\nN. Mec: "
str2:	.asciiz	"\nNome: "
str3:	.asciiz	"\nNota: "

	.text
	.globl main
	
main:	la 	$a0, str1
	li 	$v0, print_string
	syscall
	la 	$t0, stg
	lw 	$a0, offset_id($t0)
	li 	$v0, print_intu10
	syscall
	la 	$a0, str2
	li	$v0, print_string
	syscall
	la	$a0, stg
	addiu	$a0, $a0, offset_ln
	li	$v0, print_string
	syscall
	li	$a0, 44
	li	$v0, print_char
	syscall
	la	$a0, stg
	addiu	$a0, $a0, offset_fn
	li	$v0, print_string
	syscall
	la 	$a0, str3
	li	$v0, print_string
	syscall
	la	$a0, stg
	l.s	$f12, offset_gr($a0)
	li	$v0, print_float
	syscall
	
	jr $ra