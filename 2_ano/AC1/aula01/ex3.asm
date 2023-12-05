## aula01 ex3
	.data
str1:	.asciiz "\n"
	.eqv print_string,4

	.text
	.globl main
main: 	ori $v0,$0,5 # a system call read_int() é dentificada com o número 5 (ver tabela de instruções)
	syscall # a system call read_int() é chamada
	or $t0,$0, $v0 # $t0 = $v0 (read_int)
	
	ori $t2,$0,8 # $t2 = 8
	add $t1,$t0,$t0 # $t1 = $t0 + $t0 = x + x = 2 * x
	sub $t1,$t1,$t2 # $t1 = $t1 - $t2 = y = 2 * x - 8
	
	or $a0,$0,$t1 # $a0 = y
	ori $v0,$0,1 # 1 = print_int10
	syscall # chamada ao syscall "print_int10()"
	
	la $a0, str1
	ori $v0, $0, print_string
	syscall # print_string(str1);
	
	or $a0,$0,$t1 # $a0 = y
	ori $v0,$0,34 # 34 = print_int16
	syscall # chamada ao syscall "print_int16()"
	
	la $a0, str1
	ori $v0, $0, print_string
	syscall # print_string(str1);
	
	or $a0,$0,$t1 # $a0 = y
	or $a0,$0,$t1 # $a0 = y
	ori $v0,$0,36 # 36 = print_intu10
	syscall # chamada ao syscall "print_intu10()"

	la $a0, str1
	ori $v0, $0, print_string
	syscall # print_string(str1);
			
	jr $ra # fim do programa
