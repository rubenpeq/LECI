    # AC1/aula03/ex2a.asm

    # Mapa de registos:
    # value: $t0
    # bit: $t1
    # i: $t2

        .data
str1:   .asciiz "Introduza um numero: "
str2:   .asciiz "\nO valor em binário é: "
        .eqv    print_string, 4
        .eqv    read_int, 5
        .eqv    print_char, 11

        .text
        .globl  main
main:       la      $a0,    str1                    # (virtual instaruction)
    li      $v0,    print_string                    # (virtual instruction)
    syscall                                         # print_string(str1);

    li      $v0,    read_int
    syscall
    or      $t0,    $0,             $v0             # value=read_int()

    la      $a0,    str2
    li      $v0,    print_string
    syscall                                         # print_string(str2)

    li      $t2,    0                               # i = 0

for:        bge     $t2,    32,             endfor  # while(i < 32) {
    li      $t3,    0x80000000
    and     $t1,    $t0,            $t3             # bit=value & 0x80000000

if:         beq     $t1,    0,              else    # if(bit != 0)
    li      $a0,    '1'
    li      $v0,    print_char
    syscall                                         # print_char('1')
    j       endif

else:                                               # else
    li      $a0,    '0'
    li      $v0,    print_char
    syscall                                         # print_char('0')

endif:      sll     $t0,    $t0,            1       # value = value << 1
    addi    $t2,    $t2,            1               # i++
    j       for                                     # }

endfor:     #
    jr      $ra                                     # end program
