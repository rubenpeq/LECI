#include <detpic32.h>

void configureAll();
void send2displays(char value);
int voltageConversion(int value);
unsigned char toBcd(unsigned char value);
void setPWM(unsigned int dutyCycle);

volatile int voltage;

int main(void)
{
    int portVal;
    int dutyCycle;
    configureAll();

    IFS0bits.T3IF = 0;          // Reset timer T3 interrupt flag
    IFS0bits.T1IF = 0;          // Reset timer T1 interrupt flag
    IFS1bits.AD1IF = 0;         // Reset A/D interrupt flag

    EnableInterrupts(); // Global Interrupt Enable
    while(1)
    {
        // Read RB1, RB0 to the variable "portVal"
        portVal = PORTB & 0x03;

        switch(portVal)
        {
            case 0: 
                // Measure input voltage
                IEC0bits.T1IE = 1;          // Enable timer T1 interrupts
                setPWM(0); // LED OFF
                break;
            case 1: // Freeze
                IEC0bits.T1IE = 0;          // Disable timer T1 interrupts
                setPWM(100); // LED ON (maximum bright)
                break;
            default: // LED brigthness control
                IEC0bits.T1IE = 1;          // Enable timer T1 interrupts
                dutyCycle = voltage * 3;
                setPWM(dutyCycle);
                break;
        }
    }

    return 0;
}

void configureAll()
{
    // Timer3
    T3CONbits.TCKPS = 2;        // 1:4 prescaler Fout_presc = 5Mhz;
    PR3 = 49999;                // Fout = 20Mhz / 4(49999+1) = 100Hz
    TMR3 = 0;                   // Reset timer T3 count register
    T3CONbits.TON = 1;          // Enable timer T3
    // Setup PWM
    OC1CONbits.OCM = 6;         // PWM mode on OCx; fault pin disabled
    OC1CONbits.OCTSEL =1;       // Use timer T3 as the time base for PWM generation
    OC1RS = 0;                  // Ton constant
    OC1CONbits.ON = 1;          // Enable OC1 module

    // Timer1
    T1CONbits.TCKPS = 3;        // 1:256 prescaler Fout_presc = 78125;
    PR1 = 39062;                // Fout = 20Mhz / 256(19530 + 1) = 4,00005Hz
    TMR1 = 0;                   // Reset timer T1 count register
    T1CONbits.TON = 1;          // Enable timer T1 
    
    // Displays
    TRISB = TRISB & 0x80FF;     // RB14 to RB8 as output
    TRISD = TRISD & 0xFF9F;     // Displays high/low as output

    // ADC
    TRISBbits.TRISB4 = 1;       // RB4 digital output disconnected
    AD1PCFGbits.PCFG4 = 0;      // RB4 configured as analog input (AN4)
    AD1CON1bits.SSRC = 7;       // Conversion trigger constant
    AD1CON1bits.CLRASAM = 1;    // Stop conversion when the 1st A/D converter intetupr is generated. At the same time, hardware clears ASAM bit
    AD1CON3bits.SAMC = 16;      // Sample time is 16 TAD (TAD = 100ns)
    AD1CON2bits.SMPI = 7;       // Interrupt is generated after 8 samples
    AD1CHSbits.CH0SA = 4;       // analog channel input 4
    AD1CON1bits.ON = 1;         // Enable the A/d configuration sequence

    // Enable interrupts ADC, T1, T3
    IPC6bits.AD1IP = 2;         // configure priority of A/D interrupts
    IEC1bits.AD1IE = 1;         // Enable A/D interrupts
    IPC1bits.T1IP = 1;          // Interrupt priority 1
    IEC0bits.T1IE = 1;          // Enable timer T1 interrupts
    IPC3bits.T3IP = 3;          // Interrupt priority 2
    IEC0bits.T3IE = 3;          // Enable timer T3 interrupts

    // Deepswitch control
    TRISB = TRISB | 0x0003;     // RB1 and RB0 as input
}

void _int_(4) isr_T1(void)
{
    AD1CON1bits.ASAM = 1;           // Start conversion
    IFS0bits.T1IF = 0;
}

void _int_(12) isr_T3(void)
{
    send2displays(toBcd(voltage));  // Send "voltage" global variable to displays
    IFS0bits.T3IF = 0;
}

void _int_(27) isr_adc(void)
{
    int sum = 0, i = 0;
    int *p = (int *)&ADC1BUF0;
    for (i = 0; i < 8; i++)
        sum += p[i * 4];

    voltage = sum / 8;
    voltage = voltageConversion(voltage);
    IFS1bits.AD1IF = 0;             // Reset AD1IF flag
}

void send2displays(char value)
{
    static const char display7Scodes[] = {
                                        0x3F, //0
                                        0x06, //1
                                        0x5B, //2
                                        0x4F, //3
                                        0x66, //4
                                        0x6D, //5
                                        0x7D, //6
                                        0x07, //7
                                        0x7F, //8
                                        0x6F, //9
                                        0x77, //A
                                        0x7C, //b
                                        0x39, //C
                                        0x5E, //d
                                        0x79, //E
                                        0x71  //F
                                        };

    static int displayFlag = 0;

    unsigned char dh = value >> 4;      // Get the index of the decimal part
    unsigned char dl = value & 0x0F;    // Get the index of the unitary part

    dh = display7Scodes[dh];
    dl = display7Scodes[dl];

    if (displayFlagf (dutyCycle >= 0 && dutyCycle <= 100)
        OC1RS = (dutyCycle * (PR3 + 1)) /100;D | 0x0040) & 0xFFDF;    // Dipslay High active and Display Low OFF
        LATB = (LATB & 0x80FF) | ((unsigned int)(dh)) << 8; // Clean the display and set the right value
    } else {
        LATD = (LATD | 0x0020) & 0xFFBF;    // Display High OFF and Display High active
        LATB = (LATB & 0x80FF) | ((unsigned int)(dl)) << 8; // Clean the display and set the right value
    }

    displayFlag = !displayFlag;
}

unsigned char toBcd(unsigned char value)
{
    return ((value / 10) << 4) + (value % 10);
}

int voltageConversion(int value)
{
    return (value * 33 + 511) / 1024;
}

void setPWM(unsigned int dutyCycle)
{
    if (dutyCycle >= 0 && dutyCycle <= 100)
        OC1RS = (dutyCycle * (PR3 + 1)) /100;
}