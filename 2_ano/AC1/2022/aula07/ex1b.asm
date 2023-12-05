# Aula 7 Ex.1b

# O argumento da função é passado em $a0
# O resultado é devolvido em $v0
# Sub-rotina terminal: não devem ser usados registos $sx

	.text

strlen: li $t1,0 # len = 0;
while: 	lb $t0, 0($a0) # while(*s++ != '\0')
	addiu $a0,$a0,1 #
	bne $t0,'\0',endw # {
	addi $t1, $t1, 1 # len++;
	j while # }
endw: 	move $v0,$t1 # return len;
	jr $ra #
	
	.data
str:	.asciiz "Arquitetura de Computadores I"
	.text
	.globl main
main:	