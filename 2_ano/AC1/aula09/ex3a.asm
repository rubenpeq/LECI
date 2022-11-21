#aula 9 Ex3a

#####  acabar  #####

.eqv print_string, 4
.eqv read_int, 5
.eqv print_double, 7

	.data
d1:	.double 0.0
str1:	.asciiz "Insert 10 numbers: "
str2:	.asciiz "The average of the inserted numbers is: "

	.text
	
avr:	
	cvt.d.w $f2, $f2
	
for_avr:	beqz $t0, endfor_av
		move $t1, $t0
		addi $t1, $t1, -1
		sll $t1,$t1, 3
		move $t2, $a0
		addu $t2,$t2, $t1
		l.d $f4, 0($t2)
		add.d $f2, $f2, $f4
		addi $t0, $t0, -1
		j for_avr

endfor_avr:	mtc1 $a1, $f4
		cvt.d.w $f4, $f4
		div.d $f0, $f2, $f4
		jr $ra 
		
	.globl main

main:	la $a0, str1
	li $v0, print_string
	syscall
	
	li $v0, read_int	#
	syscall			# 
	
	