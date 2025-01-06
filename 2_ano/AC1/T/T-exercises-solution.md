# Theory Exercises

## 1. Quais são os 3 blocos fundamentais de um sistema computacional?
    Os 3 blocos fundamentais de um sistema computacional são o CPU, memória e as unidades de I/O.

## 2. Quais são os 3 principais blocos funcionais na arquitetura de um CPU?
    Os 3 blocos principais na arquitetura de um CPU são a unidade de controlo, a secção de dados e o espaço de endereçamento.

## 3. Qual a função do registo Program Counter?
    O Program Counter serve para guardar o endereço da próxima instrução a ser executada.

## 4. Descreva de forma sucinta a função de um compilador.
    Um compilador é um programa que converte um código fonte de linguagem de mais alto nivel para código de linguagem assembly.

## 5. Descreva de forma sucinta a função de um assembler. 
    Um assembler é um programa que traduz código escrito em assembly para código de máquina (binário), que pode ser diretamente executado pelo processador.

## 6. Quantos registos internos de uso geral tem o MIPS?
    O MIPS tem 32 registos internos de uso geral.

## 7. No MIPS, qual a dimensão, em bits, que cada um dos registos internos pode armazenar? 
    Cada registo interno no MIPS pode armazenar 32 bits.

## 8. Qual a sintaxe, em Assembly do MIPS, de uma instrução aritmética de soma ou subtração?
    soma        -> add r, a, b  (r = a+b)
    subtração   -> sub r, a, b  (r = a-b)

## 9. O que distingue a instrução srl da instrução sra do MIPS?
    O srl não mantém o sinal (o bit inserido é sempre 0) enquanto sra mantém o sinal (O bit inserido é igual ao bit mais significativo).

## 10. Se $5=0x81354AB3, qual o resultado armazenado no registo destino, expresso em hexadecimal, das instruções:
### a. srl $3,$5,1
    $3 = 0100 0000 1001 1010 1010 0101 0101 1001 = 0x409AA55A

### b. sra $4,$5,1
    $4 = 1100 0000 1001 1010 1010 0101 0101 1001 = 0xC09AA55A

## 11. System calls:
### a. O que é um system call?
    Um system call é um pedido que um programa faz ao sistema operativo para executar uma tarefa.

### b. No MIPS, qual o registo usado para identificar o system call a executar?
    O registo $v0 é usado para identificar o número do system call a ser executado no MIPS.

### c. Qual o registo ou registos usados para passar argumentos para os systems calls?
    Os registos $a0, $a1, $a2 e $a3 são usados para passar argumentos para os system calls no MIPS.

### d. Qual o registo usado para obter o resultado devolvido por um system call (nos casos em que isso se aplica)?
    O registo $v0 é usado para armazenar o resultado devolvido por um system call no MIPS.

## 15. Qual é o conceito fundamental por detrás do modelo de arquitetura "stored-program"?
    O conceito "stored-program" implica que na memória possa residir, ao mesmo tempo, informação de natureza tão variada como: o código fonte de um programa em C, um editor de texto, um compilador, e o próprio programa resultante da compilação.