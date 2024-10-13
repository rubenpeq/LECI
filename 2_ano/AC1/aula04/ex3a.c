#include <stdio.h>

#define SIZE 4

int array[4] = {7692, 23, 5, 234}; // Declara um array global de 4 posições e inicializa-o
void main(void)
{
    int *p; // Declara um ponteiro para inteiro (não há qualquer inicialização)
    int *pultimo; // Declara um ponteiro para inteiro
    int soma = 0;
    p = array; // "p" é preenchido com o endereço inicial do array
    pultimo = array + SIZE - 1; // "pultimo" é inicializado com o endereço do último elemento do array, i.e., &array[SIZE-1]
    while (p <= pultimo)
    {
        soma = soma + (*p);
        p++; // Incrementa o ponteiro (não esquecer que incrementar um ponteiro para um inteiro de 32 bits significa somar a quantidade 4 ao valor do endereço)
    }
    printf("%d\n", soma);
}