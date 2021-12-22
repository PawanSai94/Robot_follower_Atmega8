// Project name : START_and_STOP_on_CLAP_for_ATmega8_iBOT_mini_V3
// Compile Date : 28/03/2013 Time : (12:39)
// Designed By  : ROBOSAPIENS INDIA 
//                http://www.robosapiensindia.com

/* Program for "START_and_STOP_on_CLAP/toggeling the state of iBOT mini V3 on Clap Using Sound Sensor"
______________________________________________________________________________________________________

Connection Settings of the Kit
sound sensor--------->PC0
LEDs---@------------->PB1
LEDs---@------------->PB2
LEDs---@------------->PB3
LEDs---@------------->PB4
Left Sensor---------->PC0
Right Sensor--------->PC3
SOUND SENSOR--------->PB0
RIGHT MOTOR(+)------->PB1
RIGHT MOTOR(-)------->PB2
LEFT MOTOR(-)-------->PB3
LEFT MOTOR(+)-------->PB4

BOOTLoader Condition Check----->PC5(If 0 bootloader section else program execution
							    section of Flash memory)
RESET-------------------------->PC6
Crystal Ossilator-------------->PB6 and PB7(Hence PB6 and PB7 are not available for user)
VB=Battery Supply
VCC=regulated 5V+
Gnd=Ground(0V)
*/

#include<avr/io.h>
#include<util/delay.h>
#include "robosapiens.c"

int main(void)
{	
	DDRB=0b00011110;  		// PB1, PB2, PB3, PB4 as output port
    int ss=0, counter=1;    // define & initialize ss and counter integer as  0 to acquire the sound sensor status in ss and counter increment
	
	while(1)          		// create infinite loop
	{
	ss=(PINB&0b0000001);    // acquire only sound sensor status connected at PB0
		
		 if((ss==0b0000001) && (counter==1))	// check for sound sensor ON status at PB0
		 {
		        
	     PORTB=0b00010010;  // forward
		 wait(1);
		 
		 while((PINB&0b0000001)==0b0000001);	// monitoring PB0 pin for the change of state	
    	 counter=0;
	
		 } 
	
	ss=(PINB&0b0000001);    // acquire only sound sensor status connected at PB0 
	
		if((ss==0b0000001) && (counter==0))
		{

		PORTB=0b00000000;	//stop
		wait(1);
		counter=1;
	
		}
	
	}

}

