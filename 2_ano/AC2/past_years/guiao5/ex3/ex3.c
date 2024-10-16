#include <detpic32.h>

void delay(int ms);

int main(void)
{
    TRISBbits.TRISB4 = 1;       // RB4 digital output disconnected
    AD1PCFGbits.PCFG4 = 0;      // RB4 configured as analog input (AN4)
    AD1CON1bits.SSRC = 7;       // Conversion trigger constant
    AD1CON1bits.CLRASAM = 1;    // Stop conversion when the 1st A/D converter intetupr is generated.
                                // At the same time, hardware clears ASAM bit
    AD1CON3bits.SAMC = 16;      // Sample time is 16 TAD (TAD = 100ns)
    AD1CON2bits.SMPI = 3;       // Interrupt is generated after 4 samples
    AD1CHSbits.CH0SA = 4;       // analog channel input 4
    AD1CON1bits.ON = 1;         // Enable the A/d configuration sequence
    int i;

    while (1)
    {
        AD1CON1bits.ASAM = 1;               // Start conversion
        while ( IFS1bits.AD1IF == 0 );      // Wait while conversion not done
        
        int *p = (int *)(&ADC1BUF0);

        for (i = 0; i < 16; i++)        // Get the values for the 16 samples
        {
            printInt(p[i*4], 10 | 4 << 16); // print value in decimal with 4 digits
            putChar(' ');                   // blank space between numbers
        }
        putChar('\n');                      // newline

        delay(200);                         // wait 100ms
        IFS1bits.AD1IF = 0;                 // Reset AD1IF
    }
    
    return 0;
}

void delay(int ms)
{
    for (;ms > 0; ms--)
    {
        resetCoreTimer();
        readCoreTimer();
        while(readCoreTimer() < 20000);
    }
}