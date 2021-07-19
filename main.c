#include <msp430.h> 
void feed(unsigned short Data);

/**
 * main.c
 */
//EN19373126
//Silva N.C.S.

int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	volatile unsigned short Data;
	P1DIR = 0x07; //setting output pins
	
    //0x01FF   intensity10
    //0x02FF   intensity32
    //0x0301   scan limit
    //0x0401   configuration
    //0x2053   S
    //0x214C   L
    //0x2249   I
    //0x2349   I

	Data = 0x01FF;
	feed(Data);
	Data = 0x02FF;
	feed(Data);
	Data = 0x0301;
	feed(Data);
	Data = 0x0401;
	feed(Data);
	Data = 0x2053;
	feed(Data);
	Data = 0x214C;
	feed(Data);
	Data = 0x2249;
	feed(Data);
	Data = 0x2349;
	feed(Data);

}

//bit0 = data line
//bit1 = chip select
//bit2 = clk

void feed(volatile unsigned short Data){
    volatile int i;
    volatile unsigned short temp;

    P1OUT &= ~(1<<2); //clk low
    P1OUT &= ~(1<<1); //cs low

    for(i = 0;i < 16;i++){
        P1OUT &= ~(1<<2); //clk low
        temp = ((long)Data >> (15-i)); //bit shifting from msb to lsb
        P1OUT |= (temp & 0x01); //set DIN
        P1OUT |= (1<<2); //clk high
        P1OUT &= ~(1<<0); //clear p1.0
    }
    P1OUT |= (1<<1); //cs high
    P1OUT &= ~(1<<2); //clk low
}


