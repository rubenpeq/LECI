## aula08 ex2

# Mapa de registos
# n: $a0 -> $s0
# b: $a1 -> $s1
# s: $a2 -> $s2
# p: $s3
# digit: $t0
# Sub-rotina intermédia

	.eqv read_int, 5
	.eqv print_string, 4
	.eqv MAX_STR_SIZE, 20

	.text

itoa: 	addiu 	$sp, $sp, -20 # reserva espaço na stack
	sw 	$s0, 0($sp) # guarda registos $sx e $ra
	sw 	$s1, 4($sp)
	sw 	$s2, 8($sp)
	sw 	$s3, 12($sp)
	sw 	$ra, 16($sp)
	
	move 	$s0, $a0 # copia n, b e s para registos
	move 	$s0, $a1 
	move 	$s0, $a2 
	move 	$s3, $a2 # p = s;
	
do: # do {
	(...) #
	ble 	$s0, $0, ewhile # } while(n > 0);
	sb 	$0, 0($s3) # *p = 0;
	(...) #
	jal 	strrev # strrev( s );
	(...) # return s;

	
	lw 	$s0, 0($sp) # repõe registos $sx e $ra
	lw 	$s1, 4($sp)
	lw 	$s2, 8($sp)
	lw 	$s3, 12($sp)
	lw	$ra, 16($sp)
	addiu 	$sp, $sp, 20 # liberta espaço na stack
ewhile:	jr $ra #

	.data
	.text
	.globl main
main:	
do2:	




while2:
endw: