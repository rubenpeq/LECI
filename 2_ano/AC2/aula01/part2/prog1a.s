# Aula 1 Parte II -> Ex 1a

	.equ getChar, 2
	.equ putChar, 3
	
	.data
	.text
	.globl main
	
main:	
do:	li $v0, getChar
	syscall
	move $t0 , $v0
	
	li $a0, putChar
	move $v0, $t0
	syscall
	
	bne $t0 , '\n', do
	
	li $v0, 0
	
	jr $ra
