#include<avr/io.h>
#include<util/delay.h>
void main()
{
DDRB = 0b00011110;
DDRC = 0b1110110;
int ls,rs;
while(1)
{
ls = (PINC & 0b0000001);
rs = (PINC & 0b0001000);
if ((ls == 0b0000001)&&(rs==0b0001000))
{
PORTB = 0b00010010;
}
if ((ls==0b0000000)&&(rs==0b0000000))
{
PORTB = 0b00000000;
}
if ((ls==0b0000001)&&(rs==0b0000000))
{
PORTB = 0b00010000;
}
if ((ls==0b0000000)&&(rs==0b0001000))
{
PORTB = 0b00000010;
}
}
}
