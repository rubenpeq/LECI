            .globl  exchange, strrev, strcpy, itoa, toascii, atoi, btoi

    ### void exchange(char *c1, char *c2) ###

    # Register map:
    # $t0: *c1
    # $t1: *c2
    # $t2: aux

exchange:       or      $t0,        $a0,        $0          # $t0 = c1
    or      $t1,        $a1,        $0                      # $t1 = c2
    lb      $t2,        0($t0)                              # aux = *c1
    lb      $t3,        0($t1)                              # $t3 = *c2
    sb      $t3,        0($t0)                              # *c1 = *c2
    sb      $t2,        0($t1)                              # *c2 = aux
    jr      $ra                                             # end sub-routine

    ### char *strrev(char *str) ###

    # Register map:
    # str: $a0 -> $s0 (argumento é passado em $a0)
    # p1: $s1 (registo callee-saved)
    # p2: $s2 (registo callee-saved)

strrev:         addiu   $sp,        $sp,        -16         # reserva espaço na stack
    sw      $ra,        0($sp)                              # safekeep $ra
    sw      $s0,        4($sp)
    sw      $s1,        8($sp)
    sw      $s2,        12($sp)                             # keep registers values

    move    $s0,        $a0                                 # registo "callee-saved"
    move    $s1,        $a0                                 # p1 = str
    move    $s2,        $a0                                 # p2 = str

while1:         lb      $t0,        0($s2)
    beq     $t0,        '\0',       endwhile1               # while( *p2 != '\0' ) {
    addiu   $s2,        $s2,        1                       # p2++
    j       while1                                          # }
endwhile1:      addiu   $s2,        $s2,        -1          # p2--

while2:         bge     $s1,        $s2,        endwhile2   # while(p1 < p2) {
    move    $a0,        $s1                                 # $a0 = p1
    move    $a1,        $s2                                 # $a1 = p2
    jal     exchange                                        # exchange(p1,p2)

    addiu   $s1,        $s1,        1                       # p1++
    addiu   $s2,        $s2,        -1                      # p2--
    j       while2                                          # }
endwhile2:      move    $v0,        $s0                     # return str

    lw      $ra,        0($sp)                              # repõe endereço de retorno
    lw      $s0,        4($sp)                              # repõe o valor dos registos
    lw      $s1,        8($sp)                              # $s0, $s1 e $s2
    lw      $s2,        12($sp)
    addiu   $sp,        $sp,        16                      # free stack
    jr      $ra                                             # end sub-routine

    ### char *strcpy(char *dst, char *src) ###

    # Register map:
    # $t0: *p
    # $t1: dst
    # $t2: src

strcpy:         move    $t1,        $a0                     # $t1 = dst
    move    $t2,        $a1                                 # $t2 = src
    or      $t0,        $0,         $t1                     # *p = dst
do:
    lb      $t3,        0($t2)                              # $t3 = *src
    sb      $t3,        0($t0)                              # *p = *src
    addiu   $t0,        $t0,        1                       # p++
    addiu   $t2,        $t2,        1                       # src ++
    bne     $t3,        '\0',       do                      # } while (*src++ != '\0')

    move    $v0,        $t1                                 # return dst
    jr      $ra                                             # end sub-routine

    ### unsigned int atoi(char *s) ###

    # Register map:
    # $v0: res
    # $a0: s
    # $t0: *s
    # $t1: digit

atoi:           li      $v0,        0                       # res = 0;
while:          lb      $t0,        0($a0)                  # $t0 = *s
    blt     $t0,        '0',        endw                    # while(*s >= 0)
    bgt     $t0,        '9',        endw                    # while(*s <= 9) {
    addiu   $t1,        $t0,        -0x30                   # digit = *s - '0'
    addiu   $a0,        $a0,        1                       # s++
    mulu    $v0,        $v0,        10                      # res = 10 * res
    addu    $v0,        $v0,        $t1                     # res = 10 * res + digit
    j       while                                           # }
endw:           jr      $ra                                 # end sub-routine

    ### unsigned int btoi(char *s) ###

    # Register map:
    # $v0: res
    # $a0: s
    # $t0: *s
    # $t1: digit

btoi:           li      $v0,        0                       # res = 0;
bwhile:         lb      $t0,        0($a0)                  # $t0 = *s
    blt     $t0,        '0',        bendw                   # while(*s >= 0)
    bgt     $t0,        '1',        bendw                   # while(*s <= 1) {
    addiu   $t1,        $t0,        -0x30                   # digit = *s - '0'
    addiu   $a0,        $a0,        1                       # s++
    mulu    $v0,        $v0,        2                       # res = 2 * res
    addu    $v0,        $v0,        $t1                     # res = 2 * res + digit
    j       bwhile                                          # }
bendw:          jr      $ra                                 # end sub-routine

    ### char *itoa(unsigned int n, unsigned int b, char *s) ###

    # Register map
    # $a0 -> $s0: n
    # $a1 -> $s1: b
    # $a2 -> $s2: s
    # $s3: p
    # $t0: digit

itoa:           addiu   $sp,        $sp,        -16         # allocate space in stack
    sw      $ra,        0($sp)                              # save $ra
    sw      $s0,        4($sp)
    sw      $s1,        8($sp)
    sw      $s2,        12($sp)

    move    $s0,        $a0
    move    $s1,        $a1
    move    $s2,        $a2
    move    $s3,        $a2                                 # p = s

do1:            rem     $t0,        $s0,        $s1         # do {digit = n % b;
    div     $s0,        $s0,        $s2                     # n = n / b;
    move    $a0,        $t0
    jal     toascii                                         # toascii(digit)
    sb      $v0,        0($s3)                              # *p = toascii(digit)
    addiu   $s3,        $s3,        1                       # p++
    bltz    $s0,        do1                                 # } while(n > 0);
    sb      $0,         0($s3)                              # *p = 0;

    move    $a0,        $s2
    jal     strrev                                          # strrev( s );
    move    $v0,        $s2                                 # return s;

    lw      $ra,        0($sp)                              # restore $ra
    lw      $s0,        4($sp)
    lw      $s1,        8($sp)
    lw      $s2,        12($sp)
    addiu   $sp,        $sp,        16                      # free space
    jr      $ra                                             # end program

    ### char toascii(char v) ###

    # Register map
    # $a0: v

toascii:        addiu   $a0,        $a0,        '0'         # v += '0'
    ble     $a0,        '9',        eif                     # if( v > '9' )
    addiu   $a0,        $a0,        7                       # v += 7; // 'A' - '9' - 1
eif:            move    $v0,        $a0                     # return v
    jr      $ra                                             # end sub-routine