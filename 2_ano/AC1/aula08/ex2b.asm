    # AC1/aula08/ex2b.asm

    .text

    ### void exchange(char *c1, char *c2) ###

    # Register map:
    # $t0: *c1
    # $t1: *c2
    # $t2: aux

exchange:       or      $t0,        $a0,            $0          # $t0 = c1
    or      $t1,        $a1,            $0                      # $t1 = c2
    lb      $t2,        0($t0)                                  # aux = *c1
    lb      $t3,        0($t1)                                  # $t3 = *c2
    sb      $t3,        0($t0)                                  # *c1 = *c2
    sb      $t2,        0($t1)                                  # *c2 = aux
    jr      $ra                                                 # end sub-routine

    ### char *strrev(char *str) ###

    # Register map:
    # str: $a0 -> $s0 (argumento é passado em $a0)
    # p1: $s1 (registo callee-saved)
    # p2: $s2 (registo callee-saved)

strrev:         addiu   $sp,        $sp,            -16         # reserva espaço na stack
    sw      $ra,        0($sp)                                  # safekeep $ra
    sw      $s0,        4($sp)
    sw      $s1,        8($sp)
    sw      $s2,        12($sp)                                 # keep registers values

    move    $s0,        $a0                                     # registo "callee-saved"
    move    $s1,        $a0                                     # p1 = str
    move    $s2,        $a0                                     # p2 = str

while1:         lb      $t0,        0($s2)
    beq     $t0,        '\0',           endwhile1               # while( *p2 != '\0' ) {
    addiu   $s2,        $s2,            1                       # p2++
    j       while1                                              # }
endwhile1:      addiu   $s2,        $s2,            -1          # p2--

while2:         bge     $s1,        $s2,            endwhile2   # while(p1 < p2) {
    move    $a0,        $s1                                     # $a0 = p1
    move    $a1,        $s2                                     # $a1 = p2
    jal     exchange                                            # exchange(p1,p2)

    addiu   $s1,        $s1,            1                       # p1++
    addiu   $s2,        $s2,            -1                      # p2--
    j       while2                                              # }
endwhile2:      move    $v0,        $s0                         # return str

    lw      $ra,        0($sp)                                  # repõe endereço de retorno
    lw      $s0,        4($sp)                                  # repõe o valor dos registos
    lw      $s1,        8($sp)                                  # $s0, $s1 e $s2
    lw      $s2,        12($sp)
    addiu   $sp,        $sp,            16                      # free stack
    jr      $ra                                                 # end sub-routine

    ### char *itoa(unsigned int n, unsigned int b, char *s) ###

    # Register map
    # $a0 -> $s0: n
    # $a1 -> $s1: b
    # $a2 -> $s2: s
    # $s3: p
    # $t0: digit

itoa:           addiu   $sp,        $sp,            -16         # allocate space in stack
    sw      $ra,        0($sp)                                  # save $ra
    sw      $s0,        4($sp)
    sw      $s1,        8($sp)
    sw      $s2,        12($sp)

    move    $s0,        $a0
    move    $s1,        $a1
    move    $s2,        $a2
    move    $s3,        $a2                                     # p = s

do1:            rem     $t0,        $s0,            $s1         # do {digit = n % b;
    divu    $s0,        $s0,            $s1                     # n = n / b;
    move    $a0,        $t0
    jal     toascii                                             # toascii(digit)
    sb      $v0,        0($s3)                                  # *p = toascii(digit)
    addiu   $s3,        $s3,            1                       # p++
    bltz    $s0,        do1                                     # } while(n > 0);
    sb      $0,         0($s3)                                  # *p = 0;

    move    $a0,        $s2
    jal     strrev                                              # strrev( s );
    move    $v0,        $s2                                     # return s;

    lw      $ra,        0($sp)                                  # restore $ra
    lw      $s0,        4($sp)
    lw      $s1,        8($sp)
    lw      $s2,        12($sp)
    addiu   $sp,        $sp,            16                      # free space
    jr      $ra                                                 # end program

    ### char toascii(char v) ###

    # Register map
    # $a0: v

toascii:        addiu   $a0,        $a0,            '0'         # v += '0'
    ble     $a0,        '9',            eif                     # if( v > '9' )
    addiu   $a0,        $a0,            7                       # v += 7; // 'A' - '9' - 1
    
eif:            move    $v0,        $a0                         # return v
    jr      $ra                                                 # end sub-routine

            .data
str:        .space  34
            .eqv    MAX_STR_SIZE, 33
            .eqv    print_string, 4
            .eqv    read_int, 5

            .text
            .globl  main
main:           addiu   $sp,        $sp,            -8          # allocate space in stack
    sw      $ra,        0($sp)                                  # save $ra
    sw      $s0,        4($sp)

do:             li      $v0,        read_int                    # do{
    syscall
    move    $t0,        $v0                                     # val = read_int()

    move    $a0,        $t0
    li      $a1,        2
    la      $a2,        str
    jal     itoa

    move    $a0,        $v0
    li      $v0,        print_string
    syscall                                                     # print_string( itoa(val, 2, str) )

    move    $a0,        $t0
    li      $a1,        8
    la      $a2,        str
    jal     itoa

    move    $a0,        $v0
    li      $v0,        print_string
    syscall                                                     # print_string( itoa(val, 8, str) )

    move    $a0,        $t0
    li      $a1,        16
    la      $a2,        str
    jal     itoa

    move    $a0,        $v0
    li      $v0,        print_string
    syscall                                                     # print_string( itoa(val, 16, str) )

    bne     $t0,        $0,             do                      # } while(val != 0)

    li      $v0,        0                                       # return 0

    lw      $ra,        0($sp)                                  # restore $ra
    lw      $s0,        4($sp)
    addiu   $sp,        $sp,            4                       # free stack
    jr      $ra                                                 # end program