# aula03/part_1/prog1

.equ ADDR_BASE_HI,0xBF88 # Base address: 16 MSbits
.equ TRISE,0x6100 # TRISE address is 0xBF886100
.equ PORTE,0x6110 # PORTE address is 0xBF886110
.equ LATE,0x6120 # LATE address is 0xBF886120

    .data
    .text
    .globl main