    # AC1/aula04/ex3c.asm

    # Mapa de registos
    # p: $t0
    # i: $t1
    # soma: $t3

        .data
array:  .word   7692, 23, 5, 234
        .eqv    print_int10, 1
        .eqv    SIZE, 4
        .text
        .globl  main    # TODO - Altere o programa de modo a utilizar o acesso ao array com índices.
main:       li      $t3,    0                   # soma = 0;

while:                                          # while()
    b??    ...,    ...,            endw        # {

    j       while                               # }
endw:       or      $a0,    $0,             $t3
    li      $v0,    print_int10
    syscall                                     # print_int10(soma);
    jr      $ra                                 # end program