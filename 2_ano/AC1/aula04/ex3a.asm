    # AC1/aula04/ex3a.asm

    # Mapa de registos
    # p: $t0
    # pultimo:$t1
    # *p: $t2
    # soma: $t3

        .data
array:  .word   7692, 23, 5, 234
        .eqv    print_int10, 1
        .eqv    SIZE, 4
        .text
        .globl  main    # TODO - test to see if it's working correctly
main:       li      $t3,    0                   # soma = 0;
    li      $t4,    SIZE                        # $t4 = SIZE
    addi    $t4,    $t4,            -1          # $t4 = SIZE-1
    sll     $t4,    $t4,            2           # $t4 = (SIZE-1) * 4
    la      $t0,    array                       # p = array;
    # ? line bellow might be wrong
    addu    $t1,    $t0,            $t4         # pultimo = array + (SIZE – 1);
while:                                          # while(p <= pultimo)
    bgtu    $t0,    $t1,            endw        # {
    lb      $t2,    0($t0)                      # $t2 = *p;
    add     $t3,    $t3,            $t2         # soma = soma + (*p);
    addiu   $t0,    $t0,            1           # p++;
    j       while                               # }
endw:       or      $a0,    $0,             $t3
    li      $v0,    print_int10
    syscall                                     # print_int10(soma);
    jr      $ra                                 # end program