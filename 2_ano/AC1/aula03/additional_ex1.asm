    # AC1/aula03/additional_ex1.asm

    # Register map:
    # gray: $t0
    # bin: $t1
    # mask: $t2

    .data
    .asciiz "Introduza um numero: "
    .asciiz "\nValor em código Gray: "
    .asciiz "\nValor em binario: "

    .text
    .globl  main
main:   # TODO - Finish the whole exercise