## aula08 ex1

# Mapa de registos
# res: $v0
# s: $a0
# *s: $t0
# digit: $t1
# Sub-rotina terminal: não devem ser usados registos $sx


	.eqv print_int10, 1

	.text

atoi: 	li 	$v0, 0 # res = 0;
while:	lb 	$t0, 0($a0) # while(*s >= ...)
	blt	$t0, '0', ewhile #
	bgt	$t0, '9', ewhile # {
	li	$t2, '0'
	sub	$t1, $t0, $t2 # digit = *s - '0'
	addiu	$a0, $a0, 1 # s++
	mulu 	$v0,$v0,10 # res = 10 * res;
	addu 	$v0, $v0, $t1 # res = 10 * res + digit;
	j while # }
ewhile:	jr $ra # termina sub-rotina

	.data
str:	.asciiz "2020 e 2024 sao anos bissextos"
	.text
	.globl main
main:	addiu 	$sp, $sp, -4
	sw	$ra, 0($sp)
	
	la $a0, str
	jal atoi
	
	or $a0, $0, $v0
	li $v0, print_int10
	syscall
	
	
	lw $ra, 0($sp)
	addiu $sp, $sp, 4
	
	jr $ra
