#define F_CPU 120000000UL
#include<avr/io.h>
#include<util/delay.h>
#include"robosapiens.c" // this has the "wait" function
int main (void)
{
DDRB = 0b00011110; // set DDRB
DDRC = 0b1110110;// SET DDRC
int ls,rs,count; // initializing
while(1)
{
ls = (PINC & 0b0000001); // setting left sensor
rs = (PINC & 0b0001000);// setting right sensor
if (( ls==0b0000001)&&(rs==0b0001000)) // ls =1 and rs=1
{
PORTB = 0b00010010;//forward
}
if ((ls==0b0000000)&&(rs==0b0001000)) // ls=0 and rs =1
{
PORTB = 0b00000010;//right turn
}
if ((ls==0b0000001) && (rs==0b0000000)) // ls = 1 and rs=0
{
PORTB = 0b00010000;//left turn
}

}//while
}//program
