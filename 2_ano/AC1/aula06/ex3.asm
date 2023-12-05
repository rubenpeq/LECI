## aula06 ex3a

# i : $t0
# j: $t1
# array[i][j]: $t3
	
	.eqv SIZE, 3
	.eqv print_string, 4
	.eqv print_int10, 1
	.eqv print_char, 11
	.data
array:	.word str1, str2, str3
str1: 	.asciiz "Array"
str2: 	.asciiz "de"
str3: 	.asciiz "ponteiros"

	.text
	.globl main

main:	li	$t0, 0	# i=0

for: 	bge	$t0, SIZE, efor	# salta se i >= SIZE
	la 	$a0, stra1	#imprime string adicional 1
	li	$v0, print_string
	syscall
	move 	$a0, $t0	# imprime i
	li 	$v0, print_int10
	syscall
	la 	$a0, stra2	# imprime string adicional 2
	li	$v0, print_string
	syscall
	li	$t1, 0
while:	la 	$t2, array
	move 	$t3, $t0
	sll 	$t3, $t3, 2
	addu	$t3, $t3, $t2
	lw	$t4, 0($t3)
	addu	$t4, $t4, $t1
	lb	$t5, 0($t4)
	beq	$t5, 0, ewhile
	move	$a0, $t5
	li	$v0, print_char
	syscall
	...
	
efor:
