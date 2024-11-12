    # AC1/aula08/ex1b.asm

        .data
str:    .asciiz "2020 e 2024 sao anos bissextos"
        .eqv    print_int10, 1

        .text
        .globl  main1b
main1b:       addiu   $sp,    $sp,            -4      # allocate space in stack
    sw      $ra,    0($sp)                          # save $ra

    la      $a0,    str
    jal     atoi                                    # atoi(str)

    move    $a0,    $v0
    li      $v0,    print_int10
    syscall                                         # print_int10( atoi(str) )

    lw      $ra,    0($sp)                          # restore $ra
    addiu   $sp,    $sp,            4               # free stack
    jr      $ra                                     # end program
