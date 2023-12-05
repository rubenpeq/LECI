## aula06 ex2a

# p : $t1
# pultimo: $t2

	.eqv SIZE, 3
	.eqv print_char, 11
	.data
array:	.word str1, str2, str3
str1: 	.asciiz "Array"
str2: 	.asciiz "de"
str3: 	.asciiz "ponteiros"
	.text
	.globl main
	
main:	li $t0, 0
	
	la $t1,array # $t1 = p = &array[0] = array
	li $t0, SIZE #
	sll $t0,$t0,2 #
	addu $t2, $t1, SIZE # $t2 = pultimo = array + SIZE
for:	bge 


endfor:	
	jr $ra
	
##	acabar