# Mapa de registos
# res: $v0
# s: $a0
# *s: $t0
# digit: $t1
# Sub-rotina terminal: não devem ser usados registos $sx

atoi: 	li $v0,0 # res = 0;

while: 	lb $t0,... # while(*s >= ...)
	b?? ... #
	b?? ... # {
	sub $t1,... # digit = *s – '0'
	addiu ... # s++;
	mul $v0,$v0,10 # res = 10 * res;
	add ... # res = 10 * res + digit;
	(...) # }
	jr $ra # termina sub-rotina