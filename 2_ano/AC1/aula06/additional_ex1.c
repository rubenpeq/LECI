#include <stdio.h>

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        printf("Usage: %s <string1> <string2> ... <stringN>\n", argv[0]);
        return 1;
    }
    
    int c, cMax, upperCase, lowerCase;
    char **p = argv+1, **pultimo = &argv[argc - 1];
    char *maxChar;
    for (; p <= pultimo; p++)
    {
        c = cMax = upperCase = lowerCase = 0;
        char *ch = *p;
        while (*ch != '\0')
        {
            if (*ch >= 'A' && *ch <= 'Z')
            {
                upperCase++;
            }
            else if (*ch >= 'a' && *ch <= 'z')
            {
                lowerCase++;
            }
            c++;
            ch++;
        }
        if (c > cMax)
        {
            cMax = c;
            maxChar = *p;
        }
        printf("\n%-10s: %d characters, %d uppercase, %d lowercase", *p, c, upperCase, lowerCase);
    }
    printf("\nThe longest string is: %s\n", maxChar);

    return 0;
}