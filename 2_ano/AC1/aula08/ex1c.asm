    # AC1/aula08/ex1c.asm

        .data
str:    .asciiz "101101 AC1"
        .eqv    print_int10, 1

        .text
        .globl  main1c
main1c:       addiu   $sp,    $sp,            -4      # allocate space in stack
    sw      $ra,    0($sp)                          # save $ra

    la      $a0,    str
    jal     btoi                                    # btoi(str)

    move    $a0,    $v0
    li      $v0,    print_int10
    syscall                                         # print_int10( btoi(str) )

    lw      $ra,    0($sp)                          # restore $ra
    addiu   $sp,    $sp,            4               # free stack
    jr      $ra                                     # end program
