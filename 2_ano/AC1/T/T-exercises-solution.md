# Theory Exercises

## 1. Quais são os 3 blocos fundamentais de um sistema computacional?
Os 3 blocos fundamentais de um sistema computacional são o **CPU**, **memória** e as **unidades de I/O**.

## 2. Quais são os 3 principais blocos funcionais na arquitetura de um CPU?
Os 3 blocos principais na arquitetura de um CPU são a **unidade de controlo**, a **secção de dados** e o **espaço de endereçamento**.

## 3. Qual a função do registo Program Counter?
O Program Counter serve para guardar o endereço da próxima instrução a ser executada.

## 4. Descreva de forma sucinta a função de um compilador.
Um compilador é um programa que converte um código fonte de linguagem de mais alto nivel para código de linguagem assembly.

## 5. Descreva de forma sucinta a função de um assembler. 
Um assembler é um programa que traduz código escrito em assembly para código de máquina (binário), que pode ser diretamente executado pelo processador.

## 6. Quantos registos internos de uso geral tem o MIPS?
O MIPS tem **32 registos internos** de uso geral.

## 7. No MIPS, qual a dimensão, em bits, que cada um dos registos internos pode armazenar? 
Cada registo interno no MIPS pode armazenar **32 bits**.

## 8. Qual a sintaxe, em Assembly do MIPS, de uma instrução aritmética de soma ou subtração?
soma        -> **add r, a, b**  (r = a+b)<br>
subtração   -> **sub r, a, b**  (r = a-b)

## 9. O que distingue a instrução **srl** da instrução **sra** do MIPS?
O **srl** não mantém o sinal (o bit inserido é sempre 0) enquanto **sra** mantém o sinal (O bit inserido é igual ao bit mais significativo).

## 10. Se $5=0x81354AB3, qual o resultado armazenado no registo destino, expresso em hexadecimal, das instruções:
### a. srl $3,$5,1
$5 = 1000 0001 0011 0101 0100 1010 1011 0011 = **0x81354AB3**
$3 = 0100 0000 1001 1010 1010 0101 0101 1001 = **0x409AA55A**

### b. sra $4,$5,1
$5 = 1000 0001 0011 0101 0100 1010 1011 0011 = **0x81354AB3**
$4 = 1100 0000 1001 1010 1010 0101 0101 1001 = **0xC09AA55A**

## 11. System calls:
### a. O que é um system call?
Um system call é um pedido que um programa faz ao sistema operativo para executar uma tarefa.

### b. No MIPS, qual o registo usado para identificar o system call a executar?
O registo $v0 é usado para identificar o número do system call a ser executado no MIPS.

### c. Qual o registo ou registos usados para passar argumentos para os systems calls?
Os registos $a0, $a1, $a2 e $a3 são usados para passar argumentos para os system calls no MIPS.

### d. Qual o registo usado para obter o resultado devolvido por um system call (nos casos em que isso se aplica)?
O registo $v0 é usado para armazenar o resultado devolvido por um system call no MIPS.

## 12. Em Arquitetura de Computadores, como definiria o conceito de endereço?
Um endereço é uma identificação única que indica a localização de um dado ou de uma instrução na memória de um computador.

## 13. Defina o conceito de espaço de endereçamento de um processador?
O espaço de endereçamento de um processador é o conjunto total de endereços de memória que ele pode acessar.

## 14. Como se organiza internamente um processador? Quais são os blocos fundamentais da secção de dados? Para que serve a unidade de controlo? 
Um CPU é organizado em blocos funcionais: secção de dados e a unidade de controlo.
Os blocos fundamentais da secção de dados são os registos internos, ALU e multiplexers.
A unidade de controlo é responsável pela coordenação dos elementos do datapath, durante a execução de um programa:
- Gera os sinais de controlo que adequam a operação de cada um dos recursos da secção de dados às necessidades da instrução que estiver a ser executada
- Dependendo da arquitetura, pode ser uma máquina de estados ou um elemento meramente combinatório
- Independentemente da Unidade de Controlo ser combinatória ou sequencial, o CPU é sempre uma máquina de estados síncrona

## 15. Qual é o conceito fundamental por detrás do modelo de arquitetura "**stored-program**"?
O conceito "**stored-program**" implica que na memória possa residir, ao mesmo tempo, informação de natureza tão variada como: o código fonte de um programa em C, um editor de texto, um compilador, e o próprio programa resultante da compilação.

## 16. Como se codifica uma instrução? Que informação fundamental deverá ter o código máquina de uma instrução?
A codificação em MIPS é feita por uma sequência de 32 bits e varia dependendo do formato (R, I ou J).<br>
Independentemente do formato, tem sempre o OpCode presente nos 6 bits mais significativos.<br>
Pode também conter registos(operandos): Identifica os registos a serem utilizados na operação.<br>
Offset de um endereço de memória (se necessário): Indica a localização de dados ou instruções na memória.

## 17. Descreva pelas suas próprias palavras o conceito de ISA (Instruction Set Architecture).
O ISA é o conjunto de instruções e regras que define como o hardware e o software de um processador interagem.
Especifica as operações que o processador pode realizar, como somar, carregar dados da memória ou realizar saltos, além do formato das instruções, modos de endereçamento e tipos de dados suportados. É a interface que conecta o software ao hardware.

## 18. Independentemente do modelo da arquitetura, identifique quantas e quais as classes de instruções que compões o conjunto de instruções executáveis por um processador dessa arquitetura?
Existem 3 tipos de classes de instruções:
- **Processamento**
    - Aritméticas e lógicas
- **Transferência de informação**
    - Cópia entre registos internos e entre registos internos e memória
- **Controlo de fluxo de execução**
    - Alteração da sequência de execução (estruturas condicionais, ciclos, chamadas a funções,…)

## 19. O que carateriza e distingue as arquiteturas do tipo "**register-memory**" e "**load-store**"? De que tipo é a arquitetura MIPS?
A arquitetura do tipo "**register-memory**" permite que os operandos das instruções aritméticas e lógicas residam tanto nos registos internos do CPU como em memória.
No caso de "**load-store**", apenas permite que os operandos residam nos registos internos do CPU. MIPS usa uma arquitetura **load-store**.

## 20. O ciclo de execução de uma instrução é composto por uma sequência ordenada de operações. Quantas e quais são essas operações (passos de execução)?
O cicle do execução de uma instrução é composto por 5 operações:
- **Fase Fetch**
    - Instruction fetch: leitura do código máquina da instrução (instrução reside em memória)
    - Instruction decode: descodificação da instrução pela unidade de controlo
- **Fase Execute**
    - Operand fetch: leitura do(s) operando(s)
    - Execute: execução da operação especificada pela instrução
    - Store result: armazenamento do resultado da operação no destino especificado na instrução

## 21. Como se designa o barramento que permite identificar, na memória, a origem ou o destino da informação transferida?
Designa-se como **Address Bus**.

## 22. Qual a finalidade do barramento normalmente designado por Data Bus?
O barramento designado por **Data Bus** é o que permite a transferência de informação entre **CPU** <-> **memória** ou **I/O**.

## 23. Os processadores da arquitetura hipotética ZWYZ possuem 4 registos internos e todas as instruções são codificadas usando 24 bits. Num dos formatos de codificação existem 5 campos: um OpCode com 5 bits, três campos para identificar registos internos em operações aritméticas e lógicas e um campo para codificar valores constantes imediatos em complemento para dois. Qual a gama de representação destas constantes?
Seria necessário 2 bits para identificar cada registo interno, ou seja, 6 bits para identificar 3 registos internos + 5 bits do OpCode.<br>
Sobram 13 bits para o campo dos valores constantes imediatos, sendo que este está codificado em complemento para dois, a gama de representação seria entre **$2^{12}$** e **$2^{12}-1$**

## 24.  A arquitetura hipotética ZPTZ tem um barramento de endereços de 32 bits e um barramento de dados de 16 bits. Se a memória desta arquitetura for bit_addressable:
### a. Qual a dimensão do espaço de endereçamento desta arquitetura?
A dimensão de endereçamento seria de **$2^{32}$ endereços**.

### b. Qual a dimensão máxima da memória, expressa em bytes, suportada por esta arquitetura?
A dimensão máxima da memória seria de **$2^{32}$ bits**, ou seja, **$2^{29}$ bytes (512MB)**.

## 25. Considere agora uma arquitetura em que o respetivo ISA especifica uma organização de memória do tipo word-addressable, em que a dimensão da word é 32 bits. Tendo o espaço de endereçamento do processador 24 bits, qual a dimensão máxima de memória que este sistema pode acomodar se expresso em bytes?
Este sistema pode acomodar $2^{24} \times 32$ bits, ou seja, **64 MB** de memória.

## 26. Relativamente à arquitetura MIPS:
### a. Com quantos bits são codificadas as instruções no MIPS?
Em MIPS, cada instrução é codificada com **32 bits**.

### b. O que diferencia o registo $0 dos restantes registos de uso geral?
O **registo $0** contém sempre o valor **0x00000000** na arquitetura MIPS.

### c. Qual o endereço do registo interno do MIPS a que corresponde a designação lógica $ra?
O registo correspondente à designação lógica $ra é o **registo $31**.

## 27. No MIPS, um dos formatos de codificação de instruções é designado por R: 
### a. Quais os campos em que se divide este formato de codificação?
Este formato divide-se em 6 campos:
- **op**
- **rs**
- **rt**
- **rd**
- **shamt**
- **funct**

### b. Qual o significado de cada um desses campos?
- **op**
    - OpCode (é sempre zero nas instruções tipo R)
- **rs**
    - Endereço do registo que contém o 1º operando fonte
- **rt**
    - Endereço do registo que contém o 2º operando fonte
- **rd**
    - Endereço do registo onde o resultado vai ser armazenado
- **shamt**
    - shift amount (útil apenas em instruções de deslocamento)
- **funct**
    - código da operação a realizar


### c. Qual o valor do campo opCode nesse formato?
O valor do campo OpCode no formato R é sempre 0.

### d. O que faz a instrução cujo código máquina é: 0x00000000?
A instrução cujo código máquina é 0x00000000 no MIPS é um NOP (No Operation), que simplesmente não faz nada e avança o pipeline.

## 28. O símbolo ”>>“ da linguagem C significa deslocamento à direita e é traduzido em assembly por srl ou sra (no caso do MIPS). Dê exemplos de casos em linguagem C em que o compilador gera um srl e exemplos em que gera um sra.
O compilador utilizará **srl** para tipos **unsigned**(ex. **unsigned int**) e **sra** para tipos **signed**(ex. **int**).

## 29. Qual a instrução nativa do MIPS em que é traduzida a instrução virtual "move $4,$15"?
A instrução virtual **move $4, $15** será traduzida para **or $4, $15, $0**.

## 30. Determine o código máquina das seguintes instruções (verifique a tabela na última página):   
### a. xor $5,$13,$24
op = 000000<br>
rs = 01101<br>
rt = 11000<br>
rd = 00101<br>
shamt = 00000<br>
funct = 100110<br>
Código máquina -> **0000 0001 1011 1000 0010 1000 0010 0110**(**0x01B82826**)

### b. sub $25,$14,$8


### c. sll $3,$9,7


### d. sra $18,$9,8
