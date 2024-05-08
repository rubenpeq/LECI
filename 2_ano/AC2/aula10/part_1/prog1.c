// aula10/part_1/prog1

#include <detpic32.h>

#define BAUDRATE 115200

void configurePorts()
{
    PORTE = (LATE & 0xFFFFFFF0);
    PORTB = (LATB & 0xFFFFFC00);
    TRISE = (TRISE & 0xFFFFFFF0) | 0x0F0; // RE[0:3] are outputs. RE[4:7] are inputs.
    TRISB = (TRISB & 0xFFFFFC00); // RB[0:9] are outputs.
}

void configureUART2()
{
    // Configure UART2:
    // 1 - Configure BaudRate Generator
    // 2 – Configure number of data bits, parity and number of stop bits
    // (see U2MODE register)
    // 3 – Enable the trasmitter and receiver modules (see register U2STA)
    // 4 – Enable UART2 (see register U2MODE)
    
    U2MODEbits.BRGH = 0;
    U2BRG = ((PBCLK + (8 * BAUDRATE))/(16 * BAUDRATE));
    
    U2MODEbits.PDSEL = 8;   // data bits
    U2MODEbits.STSEL = 1;   // stop bits
    U2STAbits.UTXEN = 1;    // Enable TX module
    U2MODEbits.ON = 1;  // Enable UART2
}

void putc(char byte)
{
    while (U2STAbits.UTXBF == 1); // wait while UART2 UTXBF == 1
    U2TXREG = byte; // Copy "byte" to the U2TXREG register
}

void delay(int ms)
{
    resetCoreTimer(); 
    while(readCoreTimer() < 2000000 * ms); 
}

int main(void)
{
    configurePorts();
    configureUART2();

    while (1)
    {
        putc('+');
        delay(1000);
    }
    
}