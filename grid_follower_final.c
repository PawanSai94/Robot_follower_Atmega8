#define F_CPU 120000000UL
#include<avr/io.h>
#include<util/delay.h>
#include"robosapiens.c"
int main (void)
{
DDRB =0b00011110;
DDRC = 0b1110110;
int ls,rs,count=0;
while (1)
{
 ls = (PINC & 0b0000001);
 rs = (PINC & 0b0001000);
if ((ls==0b0000001)&&(rs==0b0001000))
{
PORTB = 0b00010010; // forward
}
else if ((ls==0b0000000)&&(rs==0b0001000))
{
PORTB = 0b00000010; // right
}
else if ((ls==0b0000001)&& (rs==0b0000000))
{
PORTB = 0b00010000;//left
}
else if((ls==0b0000000) && (rs==0b0000000))
{

count =count+1;
switch(count)
{
case 1 :

PORTB = 0b00000010; // right
wait(0.4); //indicator to be given - could as well be a LED blinker
break;
case 2 :

PORTB = 0b00010000;//left
wait(0.5); //indicator to be given - could as well be a LED blinker
break;
case 3:

PORTB = 0b00000010; // right
wait(0.4); //indicator to be given - could as well be a LED blinker
default :
PORTB = 0b00000000; // stop
wait(5);
}
}
}
}
