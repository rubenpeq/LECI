#include <stdio.h>

#define SIZE 3

void main(void)
{
    static char *array[SIZE] = {"Array", "de", "ponteiros"};
    char **p, **pultimo, *ch;
    p = array;
    pultimo = array + SIZE;
    for (; p < pultimo; p++)
    {
        ch = *p;
        while (*ch != '\0')
        {
            printf("%c-", *ch);
            ch++;
        }
        printf("\n");
    }
}