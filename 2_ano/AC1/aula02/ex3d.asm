    # AC1/aula02/ex3d.asm

		.data
str1:   .asciiz "Introduza 2 numeros\n"
str2:   .asciiz "A soma dos dois numeros é: "
        .eqv    print_string, 4
        .eqv    read_int, 5
        .eqv    print_int10, 1
		.text
        .globl  main
main:       la      $a0,    str1
    ori     $v0,    $0,     print_string
    syscall                                     # print_string(str1)
    ori     $v0,    $0,     read_int
    syscall                                     # $v0 = read_int()
    or      $t0,    $v0,    $0                  # $t0 = read_int()
    (...)
    jr      $ra                                 # end program