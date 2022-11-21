#Aula 9 Ex.4a

#### acabar ####


max:	move $t0,$a0
	move $t1,$a1
	addi $t1, $t1, -1
	sll $t1, $t1, 3
	addu $t2, $t0, $t1
	
	l.d $f0, 0($t0)
	addiu $t0, $t0, 8
maxFor:	bgt $t0, $t2, maxEndFor
	l.d $f2, 0($t0)
maxIf:	c.le.d $f2, $f0
	bc1t 
	