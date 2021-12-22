
saii.elf:     file format elf32-avr

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         0000087e  00000000  00000000  00000074  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .data         00000108  00800060  0000087e  000008f2  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  2 .debug_aranges 00000100  00000000  00000000  000009fa  2**0
                  CONTENTS, READONLY, DEBUGGING
  3 .debug_pubnames 0000014a  00000000  00000000  00000afa  2**0
                  CONTENTS, READONLY, DEBUGGING
  4 .debug_info   000014fc  00000000  00000000  00000c44  2**0
                  CONTENTS, READONLY, DEBUGGING
  5 .debug_abbrev 00000bf9  00000000  00000000  00002140  2**0
                  CONTENTS, READONLY, DEBUGGING
  6 .debug_line   00000bd6  00000000  00000000  00002d39  2**0
                  CONTENTS, READONLY, DEBUGGING
  7 .debug_frame  00000110  00000000  00000000  00003910  2**2
                  CONTENTS, READONLY, DEBUGGING
  8 .debug_str    00000297  00000000  00000000  00003a20  2**0
                  CONTENTS, READONLY, DEBUGGING
  9 .debug_loc    000005d8  00000000  00000000  00003cb7  2**0
                  CONTENTS, READONLY, DEBUGGING
 10 .debug_ranges 00000050  00000000  00000000  0000428f  2**0
                  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

00000000 <__vectors>:
   0:	12 c0       	rjmp	.+36     	; 0x26 <__ctors_end>
   2:	24 c0       	rjmp	.+72     	; 0x4c <__bad_interrupt>
   4:	23 c0       	rjmp	.+70     	; 0x4c <__bad_interrupt>
   6:	22 c0       	rjmp	.+68     	; 0x4c <__bad_interrupt>
   8:	21 c0       	rjmp	.+66     	; 0x4c <__bad_interrupt>
   a:	20 c0       	rjmp	.+64     	; 0x4c <__bad_interrupt>
   c:	1f c0       	rjmp	.+62     	; 0x4c <__bad_interrupt>
   e:	1e c0       	rjmp	.+60     	; 0x4c <__bad_interrupt>
  10:	1d c0       	rjmp	.+58     	; 0x4c <__bad_interrupt>
  12:	1c c0       	rjmp	.+56     	; 0x4c <__bad_interrupt>
  14:	1b c0       	rjmp	.+54     	; 0x4c <__bad_interrupt>
  16:	1a c0       	rjmp	.+52     	; 0x4c <__bad_interrupt>
  18:	19 c0       	rjmp	.+50     	; 0x4c <__bad_interrupt>
  1a:	18 c0       	rjmp	.+48     	; 0x4c <__bad_interrupt>
  1c:	17 c0       	rjmp	.+46     	; 0x4c <__bad_interrupt>
  1e:	16 c0       	rjmp	.+44     	; 0x4c <__bad_interrupt>
  20:	15 c0       	rjmp	.+42     	; 0x4c <__bad_interrupt>
  22:	14 c0       	rjmp	.+40     	; 0x4c <__bad_interrupt>
  24:	13 c0       	rjmp	.+38     	; 0x4c <__bad_interrupt>

00000026 <__ctors_end>:
  26:	11 24       	eor	r1, r1
  28:	1f be       	out	0x3f, r1	; 63
  2a:	cf e5       	ldi	r28, 0x5F	; 95
  2c:	d4 e0       	ldi	r29, 0x04	; 4
  2e:	de bf       	out	0x3e, r29	; 62
  30:	cd bf       	out	0x3d, r28	; 61

00000032 <__do_copy_data>:
  32:	11 e0       	ldi	r17, 0x01	; 1
  34:	a0 e6       	ldi	r26, 0x60	; 96
  36:	b0 e0       	ldi	r27, 0x00	; 0
  38:	ee e7       	ldi	r30, 0x7E	; 126
  3a:	f8 e0       	ldi	r31, 0x08	; 8
  3c:	02 c0       	rjmp	.+4      	; 0x42 <.do_copy_data_start>

0000003e <.do_copy_data_loop>:
  3e:	05 90       	lpm	r0, Z+
  40:	0d 92       	st	X+, r0

00000042 <.do_copy_data_start>:
  42:	a8 36       	cpi	r26, 0x68	; 104
  44:	b1 07       	cpc	r27, r17
  46:	d9 f7       	brne	.-10     	; 0x3e <.do_copy_data_loop>
  48:	2e d0       	rcall	.+92     	; 0xa6 <main>
  4a:	17 c4       	rjmp	.+2094   	; 0x87a <_exit>

0000004c <__bad_interrupt>:
  4c:	d9 cf       	rjmp	.-78     	; 0x0 <__vectors>

0000004e <wait>:


void wait(float sec);
void wait(float sec)
{
  4e:	cf 92       	push	r12
  50:	df 92       	push	r13
  52:	ef 92       	push	r14
  54:	ff 92       	push	r15
  56:	0f 93       	push	r16
  58:	1f 93       	push	r17
  5a:	cf 93       	push	r28
  5c:	df 93       	push	r29
for(int i=0;i<(int)46*sec;i++)
  5e:	20 e0       	ldi	r18, 0x00	; 0
  60:	30 e0       	ldi	r19, 0x00	; 0
  62:	48 e3       	ldi	r20, 0x38	; 56
  64:	52 e4       	ldi	r21, 0x42	; 66
  66:	63 d0       	rcall	.+198    	; 0x12e <__mulsf3>
  68:	7b 01       	movw	r14, r22
  6a:	8c 01       	movw	r16, r24
  6c:	c0 e0       	ldi	r28, 0x00	; 0
  6e:	d0 e0       	ldi	r29, 0x00	; 0
    milliseconds can be achieved.
 */
void
_delay_loop_2(uint16_t __count)
{
	__asm__ volatile (
  70:	cc 24       	eor	r12, r12
  72:	dd 24       	eor	r13, r13
  74:	04 c0       	rjmp	.+8      	; 0x7e <wait+0x30>
  76:	c6 01       	movw	r24, r12
  78:	01 97       	sbiw	r24, 0x01	; 1
  7a:	f1 f7       	brne	.-4      	; 0x78 <wait+0x2a>
  7c:	21 96       	adiw	r28, 0x01	; 1
  7e:	be 01       	movw	r22, r28
  80:	88 27       	eor	r24, r24
  82:	77 fd       	sbrc	r23, 7
  84:	80 95       	com	r24
  86:	98 2f       	mov	r25, r24
  88:	72 d1       	rcall	.+740    	; 0x36e <__floatsisf>
  8a:	a8 01       	movw	r20, r16
  8c:	97 01       	movw	r18, r14
  8e:	44 d1       	rcall	.+648    	; 0x318 <__ltsf2>
  90:	87 fd       	sbrc	r24, 7
  92:	f1 cf       	rjmp	.-30     	; 0x76 <wait+0x28>
_delay_loop_2(0);
  94:	df 91       	pop	r29
  96:	cf 91       	pop	r28
  98:	1f 91       	pop	r17
  9a:	0f 91       	pop	r16
  9c:	ff 90       	pop	r15
  9e:	ef 90       	pop	r14
  a0:	df 90       	pop	r13
  a2:	cf 90       	pop	r12
  a4:	08 95       	ret

000000a6 <main>:
#define F_CPU 120000000UL
#include<avr/io.h>
#include<util/delay.h>
#include"robosapiens.c" // this has the "wait" function
int main (void)
{
  a6:	1f 93       	push	r17
DDRB = 0b00011110; // set DDRB
  a8:	8e e1       	ldi	r24, 0x1E	; 30
  aa:	87 bb       	out	0x17, r24	; 23
DDRC = 0b1110110;// SET DDRC
  ac:	86 e7       	ldi	r24, 0x76	; 118
  ae:	84 bb       	out	0x14, r24	; 20
{
PORTB = 0b00000010;//right turn
}
if ((ls==0b0000001) && (rs==0000000)) // ls = 1 and rs=0
{
PORTB = 0b00010000;//left turn
  b0:	b0 e1       	ldi	r27, 0x10	; 16
{
ls = (PINC & 0b0000001); // setting left sensor
rs = (PINC & 0b0001000);// setting right sensor
if (( ls==0b0000001)&&(rs==0b0001000)) // ls =1 and rs=1
{
PORTB = 0b00010010;//forward
  b2:	12 e1       	ldi	r17, 0x12	; 18
}
while((ls==0b0000000)&&(rs==0b0000000)&&(count==1)) // at NODE 1 = ls=0 and rs= 0. and count =0

{

PORTB = 0b00010000; // if count = 0, take right turn
  b4:	60 e0       	ldi	r22, 0x00	; 0
  b6:	70 e0       	ldi	r23, 0x00	; 0
}
while((ls==0b0000000)&&(rs==0b0000000)&&(count==0)) // at NODE 1 = ls=0 and rs= 0. and count =0

{

PORTB = 0b00000010; // if count = 0, take right turn
  b8:	a2 e0       	ldi	r26, 0x02	; 2
DDRB = 0b00011110; // set DDRB
DDRC = 0b1110110;// SET DDRC
int ls,rs,count; // initializing
while(1)
{
ls = (PINC & 0b0000001); // setting left sensor
  ba:	93 b3       	in	r25, 0x13	; 19
rs = (PINC & 0b0001000);// setting right sensor
  bc:	83 b3       	in	r24, 0x13	; 19
  be:	28 2f       	mov	r18, r24
  c0:	30 e0       	ldi	r19, 0x00	; 0
  c2:	28 70       	andi	r18, 0x08	; 8
  c4:	30 70       	andi	r19, 0x00	; 0
if (( ls==0b0000001)&&(rs==0b0001000)) // ls =1 and rs=1
  c6:	90 ff       	sbrs	r25, 0
  c8:	05 c0       	rjmp	.+10     	; 0xd4 <main+0x2e>
  ca:	28 30       	cpi	r18, 0x08	; 8
  cc:	31 05       	cpc	r19, r1
  ce:	39 f4       	brne	.+14     	; 0xde <main+0x38>
{
PORTB = 0b00010010;//forward
  d0:	18 bb       	out	0x18, r17	; 24
  d2:	f3 cf       	rjmp	.-26     	; 0xba <main+0x14>
}
if ((ls==0b0000000)&&(rs==0b0001000)) // ls=0 and rs =1
  d4:	28 30       	cpi	r18, 0x08	; 8
  d6:	31 05       	cpc	r19, r1
  d8:	a1 f4       	brne	.+40     	; 0x102 <main+0x5c>
{
PORTB = 0b00000010;//right turn
  da:	a8 bb       	out	0x18, r26	; 24
  dc:	ee cf       	rjmp	.-36     	; 0xba <main+0x14>
}
if ((ls==0b0000001) && (rs==0000000)) // ls = 1 and rs=0
  de:	23 2b       	or	r18, r19
  e0:	61 f7       	brne	.-40     	; 0xba <main+0x14>
{
PORTB = 0b00010000;//left turn
  e2:	b8 bb       	out	0x18, r27	; 24
  e4:	ea cf       	rjmp	.-44     	; 0xba <main+0x14>
}
while((ls==0b0000000)&&(rs==0b0000000)&&(count==0)) // at NODE 1 = ls=0 and rs= 0. and count =0

{

PORTB = 0b00000010; // if count = 0, take right turn
  e6:	a8 bb       	out	0x18, r26	; 24
  e8:	80 e0       	ldi	r24, 0x00	; 0
  ea:	90 e0       	ldi	r25, 0x00	; 0
  ec:	04 c0       	rjmp	.+8      	; 0xf6 <main+0x50>
  ee:	fb 01       	movw	r30, r22
  f0:	31 97       	sbiw	r30, 0x01	; 1
  f2:	f1 f7       	brne	.-4      	; 0xf0 <main+0x4a>


void wait(float sec);
void wait(float sec)
{
for(int i=0;i<(int)46*sec;i++)
  f4:	01 96       	adiw	r24, 0x01	; 1
  f6:	8e 32       	cpi	r24, 0x2E	; 46
  f8:	91 05       	cpc	r25, r1
  fa:	c9 f7       	brne	.-14     	; 0xee <main+0x48>
  fc:	41 e0       	ldi	r20, 0x01	; 1
  fe:	50 e0       	ldi	r21, 0x00	; 0
 100:	05 c0       	rjmp	.+10     	; 0x10c <main+0x66>
}
if ((ls==0b0000001) && (rs==0000000)) // ls = 1 and rs=0
{
PORTB = 0b00010000;//left turn
}
while((ls==0b0000000)&&(rs==0b0000000)&&(count==0)) // at NODE 1 = ls=0 and rs= 0. and count =0
 102:	23 2b       	or	r18, r19
 104:	d1 f6       	brne	.-76     	; 0xba <main+0x14>
 106:	41 15       	cp	r20, r1
 108:	51 05       	cpc	r21, r1
 10a:	69 f3       	breq	.-38     	; 0xe6 <main+0x40>
PORTB = 0b00000010; // if count = 0, take right turn
wait(1); // delay
count++; // increment count

}
while((ls==0b0000000)&&(rs==0b0000000)&&(count==1)) // at NODE 1 = ls=0 and rs= 0. and count =0
 10c:	41 30       	cpi	r20, 0x01	; 1
 10e:	51 05       	cpc	r21, r1
 110:	a1 f6       	brne	.-88     	; 0xba <main+0x14>

{

PORTB = 0b00010000; // if count = 0, take right turn
 112:	b8 bb       	out	0x18, r27	; 24
 114:	80 e0       	ldi	r24, 0x00	; 0
 116:	90 e0       	ldi	r25, 0x00	; 0
 118:	04 c0       	rjmp	.+8      	; 0x122 <main+0x7c>
 11a:	fb 01       	movw	r30, r22
 11c:	31 97       	sbiw	r30, 0x01	; 1
 11e:	f1 f7       	brne	.-4      	; 0x11c <main+0x76>
 120:	01 96       	adiw	r24, 0x01	; 1
 122:	8e 32       	cpi	r24, 0x2E	; 46
 124:	91 05       	cpc	r25, r1
 126:	c9 f7       	brne	.-14     	; 0x11a <main+0x74>
 128:	42 e0       	ldi	r20, 0x02	; 2
 12a:	50 e0       	ldi	r21, 0x00	; 0
 12c:	c6 cf       	rjmp	.-116    	; 0xba <main+0x14>

0000012e <__mulsf3>:
 12e:	a0 e2       	ldi	r26, 0x20	; 32
 130:	b0 e0       	ldi	r27, 0x00	; 0
 132:	ec e9       	ldi	r30, 0x9C	; 156
 134:	f0 e0       	ldi	r31, 0x00	; 0
 136:	6a c3       	rjmp	.+1748   	; 0x80c <__prologue_saves__>
 138:	69 83       	std	Y+1, r22	; 0x01
 13a:	7a 83       	std	Y+2, r23	; 0x02
 13c:	8b 83       	std	Y+3, r24	; 0x03
 13e:	9c 83       	std	Y+4, r25	; 0x04
 140:	2d 83       	std	Y+5, r18	; 0x05
 142:	3e 83       	std	Y+6, r19	; 0x06
 144:	4f 83       	std	Y+7, r20	; 0x07
 146:	58 87       	std	Y+8, r21	; 0x08
 148:	ce 01       	movw	r24, r28
 14a:	01 96       	adiw	r24, 0x01	; 1
 14c:	be 01       	movw	r22, r28
 14e:	67 5f       	subi	r22, 0xF7	; 247
 150:	7f 4f       	sbci	r23, 0xFF	; 255
 152:	8b d2       	rcall	.+1302   	; 0x66a <__unpack_f>
 154:	ce 01       	movw	r24, r28
 156:	05 96       	adiw	r24, 0x05	; 5
 158:	be 01       	movw	r22, r28
 15a:	6f 5e       	subi	r22, 0xEF	; 239
 15c:	7f 4f       	sbci	r23, 0xFF	; 255
 15e:	85 d2       	rcall	.+1290   	; 0x66a <__unpack_f>
 160:	99 85       	ldd	r25, Y+9	; 0x09
 162:	92 30       	cpi	r25, 0x02	; 2
 164:	88 f0       	brcs	.+34     	; 0x188 <__mulsf3+0x5a>
 166:	89 89       	ldd	r24, Y+17	; 0x11
 168:	82 30       	cpi	r24, 0x02	; 2
 16a:	c8 f0       	brcs	.+50     	; 0x19e <__mulsf3+0x70>
 16c:	94 30       	cpi	r25, 0x04	; 4
 16e:	19 f4       	brne	.+6      	; 0x176 <__mulsf3+0x48>
 170:	82 30       	cpi	r24, 0x02	; 2
 172:	51 f4       	brne	.+20     	; 0x188 <__mulsf3+0x5a>
 174:	04 c0       	rjmp	.+8      	; 0x17e <__mulsf3+0x50>
 176:	84 30       	cpi	r24, 0x04	; 4
 178:	29 f4       	brne	.+10     	; 0x184 <__mulsf3+0x56>
 17a:	92 30       	cpi	r25, 0x02	; 2
 17c:	81 f4       	brne	.+32     	; 0x19e <__mulsf3+0x70>
 17e:	80 e6       	ldi	r24, 0x60	; 96
 180:	90 e0       	ldi	r25, 0x00	; 0
 182:	c6 c0       	rjmp	.+396    	; 0x310 <__mulsf3+0x1e2>
 184:	92 30       	cpi	r25, 0x02	; 2
 186:	49 f4       	brne	.+18     	; 0x19a <__mulsf3+0x6c>
 188:	20 e0       	ldi	r18, 0x00	; 0
 18a:	9a 85       	ldd	r25, Y+10	; 0x0a
 18c:	8a 89       	ldd	r24, Y+18	; 0x12
 18e:	98 13       	cpse	r25, r24
 190:	21 e0       	ldi	r18, 0x01	; 1
 192:	2a 87       	std	Y+10, r18	; 0x0a
 194:	ce 01       	movw	r24, r28
 196:	09 96       	adiw	r24, 0x09	; 9
 198:	bb c0       	rjmp	.+374    	; 0x310 <__mulsf3+0x1e2>
 19a:	82 30       	cpi	r24, 0x02	; 2
 19c:	49 f4       	brne	.+18     	; 0x1b0 <__mulsf3+0x82>
 19e:	20 e0       	ldi	r18, 0x00	; 0
 1a0:	9a 85       	ldd	r25, Y+10	; 0x0a
 1a2:	8a 89       	ldd	r24, Y+18	; 0x12
 1a4:	98 13       	cpse	r25, r24
 1a6:	21 e0       	ldi	r18, 0x01	; 1
 1a8:	2a 8b       	std	Y+18, r18	; 0x12
 1aa:	ce 01       	movw	r24, r28
 1ac:	41 96       	adiw	r24, 0x11	; 17
 1ae:	b0 c0       	rjmp	.+352    	; 0x310 <__mulsf3+0x1e2>
 1b0:	2d 84       	ldd	r2, Y+13	; 0x0d
 1b2:	3e 84       	ldd	r3, Y+14	; 0x0e
 1b4:	4f 84       	ldd	r4, Y+15	; 0x0f
 1b6:	58 88       	ldd	r5, Y+16	; 0x10
 1b8:	6d 88       	ldd	r6, Y+21	; 0x15
 1ba:	7e 88       	ldd	r7, Y+22	; 0x16
 1bc:	8f 88       	ldd	r8, Y+23	; 0x17
 1be:	98 8c       	ldd	r9, Y+24	; 0x18
 1c0:	ee 24       	eor	r14, r14
 1c2:	ff 24       	eor	r15, r15
 1c4:	87 01       	movw	r16, r14
 1c6:	aa 24       	eor	r10, r10
 1c8:	bb 24       	eor	r11, r11
 1ca:	65 01       	movw	r12, r10
 1cc:	40 e0       	ldi	r20, 0x00	; 0
 1ce:	50 e0       	ldi	r21, 0x00	; 0
 1d0:	60 e0       	ldi	r22, 0x00	; 0
 1d2:	70 e0       	ldi	r23, 0x00	; 0
 1d4:	e0 e0       	ldi	r30, 0x00	; 0
 1d6:	f0 e0       	ldi	r31, 0x00	; 0
 1d8:	c1 01       	movw	r24, r2
 1da:	81 70       	andi	r24, 0x01	; 1
 1dc:	90 70       	andi	r25, 0x00	; 0
 1de:	89 2b       	or	r24, r25
 1e0:	e9 f0       	breq	.+58     	; 0x21c <__mulsf3+0xee>
 1e2:	e6 0c       	add	r14, r6
 1e4:	f7 1c       	adc	r15, r7
 1e6:	08 1d       	adc	r16, r8
 1e8:	19 1d       	adc	r17, r9
 1ea:	9a 01       	movw	r18, r20
 1ec:	ab 01       	movw	r20, r22
 1ee:	2a 0d       	add	r18, r10
 1f0:	3b 1d       	adc	r19, r11
 1f2:	4c 1d       	adc	r20, r12
 1f4:	5d 1d       	adc	r21, r13
 1f6:	80 e0       	ldi	r24, 0x00	; 0
 1f8:	90 e0       	ldi	r25, 0x00	; 0
 1fa:	a0 e0       	ldi	r26, 0x00	; 0
 1fc:	b0 e0       	ldi	r27, 0x00	; 0
 1fe:	e6 14       	cp	r14, r6
 200:	f7 04       	cpc	r15, r7
 202:	08 05       	cpc	r16, r8
 204:	19 05       	cpc	r17, r9
 206:	20 f4       	brcc	.+8      	; 0x210 <__mulsf3+0xe2>
 208:	81 e0       	ldi	r24, 0x01	; 1
 20a:	90 e0       	ldi	r25, 0x00	; 0
 20c:	a0 e0       	ldi	r26, 0x00	; 0
 20e:	b0 e0       	ldi	r27, 0x00	; 0
 210:	ba 01       	movw	r22, r20
 212:	a9 01       	movw	r20, r18
 214:	48 0f       	add	r20, r24
 216:	59 1f       	adc	r21, r25
 218:	6a 1f       	adc	r22, r26
 21a:	7b 1f       	adc	r23, r27
 21c:	aa 0c       	add	r10, r10
 21e:	bb 1c       	adc	r11, r11
 220:	cc 1c       	adc	r12, r12
 222:	dd 1c       	adc	r13, r13
 224:	97 fe       	sbrs	r9, 7
 226:	08 c0       	rjmp	.+16     	; 0x238 <__mulsf3+0x10a>
 228:	81 e0       	ldi	r24, 0x01	; 1
 22a:	90 e0       	ldi	r25, 0x00	; 0
 22c:	a0 e0       	ldi	r26, 0x00	; 0
 22e:	b0 e0       	ldi	r27, 0x00	; 0
 230:	a8 2a       	or	r10, r24
 232:	b9 2a       	or	r11, r25
 234:	ca 2a       	or	r12, r26
 236:	db 2a       	or	r13, r27
 238:	31 96       	adiw	r30, 0x01	; 1
 23a:	e0 32       	cpi	r30, 0x20	; 32
 23c:	f1 05       	cpc	r31, r1
 23e:	49 f0       	breq	.+18     	; 0x252 <__mulsf3+0x124>
 240:	66 0c       	add	r6, r6
 242:	77 1c       	adc	r7, r7
 244:	88 1c       	adc	r8, r8
 246:	99 1c       	adc	r9, r9
 248:	56 94       	lsr	r5
 24a:	47 94       	ror	r4
 24c:	37 94       	ror	r3
 24e:	27 94       	ror	r2
 250:	c3 cf       	rjmp	.-122    	; 0x1d8 <__mulsf3+0xaa>
 252:	fa 85       	ldd	r31, Y+10	; 0x0a
 254:	ea 89       	ldd	r30, Y+18	; 0x12
 256:	2b 89       	ldd	r18, Y+19	; 0x13
 258:	3c 89       	ldd	r19, Y+20	; 0x14
 25a:	8b 85       	ldd	r24, Y+11	; 0x0b
 25c:	9c 85       	ldd	r25, Y+12	; 0x0c
 25e:	28 0f       	add	r18, r24
 260:	39 1f       	adc	r19, r25
 262:	2e 5f       	subi	r18, 0xFE	; 254
 264:	3f 4f       	sbci	r19, 0xFF	; 255
 266:	17 c0       	rjmp	.+46     	; 0x296 <__mulsf3+0x168>
 268:	ca 01       	movw	r24, r20
 26a:	81 70       	andi	r24, 0x01	; 1
 26c:	90 70       	andi	r25, 0x00	; 0
 26e:	89 2b       	or	r24, r25
 270:	61 f0       	breq	.+24     	; 0x28a <__mulsf3+0x15c>
 272:	16 95       	lsr	r17
 274:	07 95       	ror	r16
 276:	f7 94       	ror	r15
 278:	e7 94       	ror	r14
 27a:	80 e0       	ldi	r24, 0x00	; 0
 27c:	90 e0       	ldi	r25, 0x00	; 0
 27e:	a0 e0       	ldi	r26, 0x00	; 0
 280:	b0 e8       	ldi	r27, 0x80	; 128
 282:	e8 2a       	or	r14, r24
 284:	f9 2a       	or	r15, r25
 286:	0a 2b       	or	r16, r26
 288:	1b 2b       	or	r17, r27
 28a:	76 95       	lsr	r23
 28c:	67 95       	ror	r22
 28e:	57 95       	ror	r21
 290:	47 95       	ror	r20
 292:	2f 5f       	subi	r18, 0xFF	; 255
 294:	3f 4f       	sbci	r19, 0xFF	; 255
 296:	77 fd       	sbrc	r23, 7
 298:	e7 cf       	rjmp	.-50     	; 0x268 <__mulsf3+0x13a>
 29a:	0c c0       	rjmp	.+24     	; 0x2b4 <__mulsf3+0x186>
 29c:	44 0f       	add	r20, r20
 29e:	55 1f       	adc	r21, r21
 2a0:	66 1f       	adc	r22, r22
 2a2:	77 1f       	adc	r23, r23
 2a4:	17 fd       	sbrc	r17, 7
 2a6:	41 60       	ori	r20, 0x01	; 1
 2a8:	ee 0c       	add	r14, r14
 2aa:	ff 1c       	adc	r15, r15
 2ac:	00 1f       	adc	r16, r16
 2ae:	11 1f       	adc	r17, r17
 2b0:	21 50       	subi	r18, 0x01	; 1
 2b2:	30 40       	sbci	r19, 0x00	; 0
 2b4:	40 30       	cpi	r20, 0x00	; 0
 2b6:	90 e0       	ldi	r25, 0x00	; 0
 2b8:	59 07       	cpc	r21, r25
 2ba:	90 e0       	ldi	r25, 0x00	; 0
 2bc:	69 07       	cpc	r22, r25
 2be:	90 e4       	ldi	r25, 0x40	; 64
 2c0:	79 07       	cpc	r23, r25
 2c2:	60 f3       	brcs	.-40     	; 0x29c <__mulsf3+0x16e>
 2c4:	2b 8f       	std	Y+27, r18	; 0x1b
 2c6:	3c 8f       	std	Y+28, r19	; 0x1c
 2c8:	db 01       	movw	r26, r22
 2ca:	ca 01       	movw	r24, r20
 2cc:	8f 77       	andi	r24, 0x7F	; 127
 2ce:	90 70       	andi	r25, 0x00	; 0
 2d0:	a0 70       	andi	r26, 0x00	; 0
 2d2:	b0 70       	andi	r27, 0x00	; 0
 2d4:	80 34       	cpi	r24, 0x40	; 64
 2d6:	91 05       	cpc	r25, r1
 2d8:	a1 05       	cpc	r26, r1
 2da:	b1 05       	cpc	r27, r1
 2dc:	61 f4       	brne	.+24     	; 0x2f6 <__mulsf3+0x1c8>
 2de:	47 fd       	sbrc	r20, 7
 2e0:	0a c0       	rjmp	.+20     	; 0x2f6 <__mulsf3+0x1c8>
 2e2:	e1 14       	cp	r14, r1
 2e4:	f1 04       	cpc	r15, r1
 2e6:	01 05       	cpc	r16, r1
 2e8:	11 05       	cpc	r17, r1
 2ea:	29 f0       	breq	.+10     	; 0x2f6 <__mulsf3+0x1c8>
 2ec:	40 5c       	subi	r20, 0xC0	; 192
 2ee:	5f 4f       	sbci	r21, 0xFF	; 255
 2f0:	6f 4f       	sbci	r22, 0xFF	; 255
 2f2:	7f 4f       	sbci	r23, 0xFF	; 255
 2f4:	40 78       	andi	r20, 0x80	; 128
 2f6:	1a 8e       	std	Y+26, r1	; 0x1a
 2f8:	fe 17       	cp	r31, r30
 2fa:	11 f0       	breq	.+4      	; 0x300 <__mulsf3+0x1d2>
 2fc:	81 e0       	ldi	r24, 0x01	; 1
 2fe:	8a 8f       	std	Y+26, r24	; 0x1a
 300:	4d 8f       	std	Y+29, r20	; 0x1d
 302:	5e 8f       	std	Y+30, r21	; 0x1e
 304:	6f 8f       	std	Y+31, r22	; 0x1f
 306:	78 a3       	std	Y+32, r23	; 0x20
 308:	83 e0       	ldi	r24, 0x03	; 3
 30a:	89 8f       	std	Y+25, r24	; 0x19
 30c:	ce 01       	movw	r24, r28
 30e:	49 96       	adiw	r24, 0x19	; 25
 310:	d7 d0       	rcall	.+430    	; 0x4c0 <__pack_f>
 312:	a0 96       	adiw	r28, 0x20	; 32
 314:	e2 e1       	ldi	r30, 0x12	; 18
 316:	96 c2       	rjmp	.+1324   	; 0x844 <__epilogue_restores__>

00000318 <__ltsf2>:
 318:	a8 e1       	ldi	r26, 0x18	; 24
 31a:	b0 e0       	ldi	r27, 0x00	; 0
 31c:	e1 e9       	ldi	r30, 0x91	; 145
 31e:	f1 e0       	ldi	r31, 0x01	; 1
 320:	81 c2       	rjmp	.+1282   	; 0x824 <__prologue_saves__+0x18>
 322:	69 83       	std	Y+1, r22	; 0x01
 324:	7a 83       	std	Y+2, r23	; 0x02
 326:	8b 83       	std	Y+3, r24	; 0x03
 328:	9c 83       	std	Y+4, r25	; 0x04
 32a:	2d 83       	std	Y+5, r18	; 0x05
 32c:	3e 83       	std	Y+6, r19	; 0x06
 32e:	4f 83       	std	Y+7, r20	; 0x07
 330:	58 87       	std	Y+8, r21	; 0x08
 332:	89 e0       	ldi	r24, 0x09	; 9
 334:	e8 2e       	mov	r14, r24
 336:	f1 2c       	mov	r15, r1
 338:	ec 0e       	add	r14, r28
 33a:	fd 1e       	adc	r15, r29
 33c:	ce 01       	movw	r24, r28
 33e:	01 96       	adiw	r24, 0x01	; 1
 340:	b7 01       	movw	r22, r14
 342:	93 d1       	rcall	.+806    	; 0x66a <__unpack_f>
 344:	8e 01       	movw	r16, r28
 346:	0f 5e       	subi	r16, 0xEF	; 239
 348:	1f 4f       	sbci	r17, 0xFF	; 255
 34a:	ce 01       	movw	r24, r28
 34c:	05 96       	adiw	r24, 0x05	; 5
 34e:	b8 01       	movw	r22, r16
 350:	8c d1       	rcall	.+792    	; 0x66a <__unpack_f>
 352:	89 85       	ldd	r24, Y+9	; 0x09
 354:	82 30       	cpi	r24, 0x02	; 2
 356:	38 f0       	brcs	.+14     	; 0x366 <__ltsf2+0x4e>
 358:	89 89       	ldd	r24, Y+17	; 0x11
 35a:	82 30       	cpi	r24, 0x02	; 2
 35c:	20 f0       	brcs	.+8      	; 0x366 <__ltsf2+0x4e>
 35e:	c7 01       	movw	r24, r14
 360:	b8 01       	movw	r22, r16
 362:	fb d1       	rcall	.+1014   	; 0x75a <__fpcmp_parts_f>
 364:	01 c0       	rjmp	.+2      	; 0x368 <__ltsf2+0x50>
 366:	81 e0       	ldi	r24, 0x01	; 1
 368:	68 96       	adiw	r28, 0x18	; 24
 36a:	e6 e0       	ldi	r30, 0x06	; 6
 36c:	77 c2       	rjmp	.+1262   	; 0x85c <__epilogue_restores__+0x18>

0000036e <__floatsisf>:
 36e:	a8 e0       	ldi	r26, 0x08	; 8
 370:	b0 e0       	ldi	r27, 0x00	; 0
 372:	ec eb       	ldi	r30, 0xBC	; 188
 374:	f1 e0       	ldi	r31, 0x01	; 1
 376:	53 c2       	rjmp	.+1190   	; 0x81e <__prologue_saves__+0x12>
 378:	9b 01       	movw	r18, r22
 37a:	ac 01       	movw	r20, r24
 37c:	83 e0       	ldi	r24, 0x03	; 3
 37e:	89 83       	std	Y+1, r24	; 0x01
 380:	da 01       	movw	r26, r20
 382:	c9 01       	movw	r24, r18
 384:	88 27       	eor	r24, r24
 386:	b7 fd       	sbrc	r27, 7
 388:	83 95       	inc	r24
 38a:	99 27       	eor	r25, r25
 38c:	aa 27       	eor	r26, r26
 38e:	bb 27       	eor	r27, r27
 390:	b8 2e       	mov	r11, r24
 392:	21 15       	cp	r18, r1
 394:	31 05       	cpc	r19, r1
 396:	41 05       	cpc	r20, r1
 398:	51 05       	cpc	r21, r1
 39a:	19 f4       	brne	.+6      	; 0x3a2 <__floatsisf+0x34>
 39c:	82 e0       	ldi	r24, 0x02	; 2
 39e:	89 83       	std	Y+1, r24	; 0x01
 3a0:	39 c0       	rjmp	.+114    	; 0x414 <__floatsisf+0xa6>
 3a2:	88 23       	and	r24, r24
 3a4:	a9 f0       	breq	.+42     	; 0x3d0 <__floatsisf+0x62>
 3a6:	20 30       	cpi	r18, 0x00	; 0
 3a8:	80 e0       	ldi	r24, 0x00	; 0
 3aa:	38 07       	cpc	r19, r24
 3ac:	80 e0       	ldi	r24, 0x00	; 0
 3ae:	48 07       	cpc	r20, r24
 3b0:	80 e8       	ldi	r24, 0x80	; 128
 3b2:	58 07       	cpc	r21, r24
 3b4:	29 f4       	brne	.+10     	; 0x3c0 <__floatsisf+0x52>
 3b6:	60 e0       	ldi	r22, 0x00	; 0
 3b8:	70 e0       	ldi	r23, 0x00	; 0
 3ba:	80 e0       	ldi	r24, 0x00	; 0
 3bc:	9f ec       	ldi	r25, 0xCF	; 207
 3be:	2e c0       	rjmp	.+92     	; 0x41c <__floatsisf+0xae>
 3c0:	ee 24       	eor	r14, r14
 3c2:	ff 24       	eor	r15, r15
 3c4:	87 01       	movw	r16, r14
 3c6:	e2 1a       	sub	r14, r18
 3c8:	f3 0a       	sbc	r15, r19
 3ca:	04 0b       	sbc	r16, r20
 3cc:	15 0b       	sbc	r17, r21
 3ce:	02 c0       	rjmp	.+4      	; 0x3d4 <__floatsisf+0x66>
 3d0:	79 01       	movw	r14, r18
 3d2:	8a 01       	movw	r16, r20
 3d4:	8e e1       	ldi	r24, 0x1E	; 30
 3d6:	c8 2e       	mov	r12, r24
 3d8:	d1 2c       	mov	r13, r1
 3da:	dc 82       	std	Y+4, r13	; 0x04
 3dc:	cb 82       	std	Y+3, r12	; 0x03
 3de:	ed 82       	std	Y+5, r14	; 0x05
 3e0:	fe 82       	std	Y+6, r15	; 0x06
 3e2:	0f 83       	std	Y+7, r16	; 0x07
 3e4:	18 87       	std	Y+8, r17	; 0x08
 3e6:	c8 01       	movw	r24, r16
 3e8:	b7 01       	movw	r22, r14
 3ea:	1b d0       	rcall	.+54     	; 0x422 <__clzsi2>
 3ec:	01 97       	sbiw	r24, 0x01	; 1
 3ee:	18 16       	cp	r1, r24
 3f0:	19 06       	cpc	r1, r25
 3f2:	84 f4       	brge	.+32     	; 0x414 <__floatsisf+0xa6>
 3f4:	08 2e       	mov	r0, r24
 3f6:	04 c0       	rjmp	.+8      	; 0x400 <__floatsisf+0x92>
 3f8:	ee 0c       	add	r14, r14
 3fa:	ff 1c       	adc	r15, r15
 3fc:	00 1f       	adc	r16, r16
 3fe:	11 1f       	adc	r17, r17
 400:	0a 94       	dec	r0
 402:	d2 f7       	brpl	.-12     	; 0x3f8 <__floatsisf+0x8a>
 404:	ed 82       	std	Y+5, r14	; 0x05
 406:	fe 82       	std	Y+6, r15	; 0x06
 408:	0f 83       	std	Y+7, r16	; 0x07
 40a:	18 87       	std	Y+8, r17	; 0x08
 40c:	c8 1a       	sub	r12, r24
 40e:	d9 0a       	sbc	r13, r25
 410:	dc 82       	std	Y+4, r13	; 0x04
 412:	cb 82       	std	Y+3, r12	; 0x03
 414:	ba 82       	std	Y+2, r11	; 0x02
 416:	ce 01       	movw	r24, r28
 418:	01 96       	adiw	r24, 0x01	; 1
 41a:	52 d0       	rcall	.+164    	; 0x4c0 <__pack_f>
 41c:	28 96       	adiw	r28, 0x08	; 8
 41e:	e9 e0       	ldi	r30, 0x09	; 9
 420:	1a c2       	rjmp	.+1076   	; 0x856 <__epilogue_restores__+0x12>

00000422 <__clzsi2>:
 422:	ef 92       	push	r14
 424:	ff 92       	push	r15
 426:	0f 93       	push	r16
 428:	1f 93       	push	r17
 42a:	7b 01       	movw	r14, r22
 42c:	8c 01       	movw	r16, r24
 42e:	80 e0       	ldi	r24, 0x00	; 0
 430:	e8 16       	cp	r14, r24
 432:	80 e0       	ldi	r24, 0x00	; 0
 434:	f8 06       	cpc	r15, r24
 436:	81 e0       	ldi	r24, 0x01	; 1
 438:	08 07       	cpc	r16, r24
 43a:	80 e0       	ldi	r24, 0x00	; 0
 43c:	18 07       	cpc	r17, r24
 43e:	88 f4       	brcc	.+34     	; 0x462 <__stack+0x3>
 440:	8f ef       	ldi	r24, 0xFF	; 255
 442:	e8 16       	cp	r14, r24
 444:	f1 04       	cpc	r15, r1
 446:	01 05       	cpc	r16, r1
 448:	11 05       	cpc	r17, r1
 44a:	31 f0       	breq	.+12     	; 0x458 <__clzsi2+0x36>
 44c:	28 f0       	brcs	.+10     	; 0x458 <__clzsi2+0x36>
 44e:	88 e0       	ldi	r24, 0x08	; 8
 450:	90 e0       	ldi	r25, 0x00	; 0
 452:	a0 e0       	ldi	r26, 0x00	; 0
 454:	b0 e0       	ldi	r27, 0x00	; 0
 456:	17 c0       	rjmp	.+46     	; 0x486 <__stack+0x27>
 458:	80 e0       	ldi	r24, 0x00	; 0
 45a:	90 e0       	ldi	r25, 0x00	; 0
 45c:	a0 e0       	ldi	r26, 0x00	; 0
 45e:	b0 e0       	ldi	r27, 0x00	; 0
 460:	12 c0       	rjmp	.+36     	; 0x486 <__stack+0x27>
 462:	80 e0       	ldi	r24, 0x00	; 0
 464:	e8 16       	cp	r14, r24
 466:	80 e0       	ldi	r24, 0x00	; 0
 468:	f8 06       	cpc	r15, r24
 46a:	80 e0       	ldi	r24, 0x00	; 0
 46c:	08 07       	cpc	r16, r24
 46e:	81 e0       	ldi	r24, 0x01	; 1
 470:	18 07       	cpc	r17, r24
 472:	28 f0       	brcs	.+10     	; 0x47e <__stack+0x1f>
 474:	88 e1       	ldi	r24, 0x18	; 24
 476:	90 e0       	ldi	r25, 0x00	; 0
 478:	a0 e0       	ldi	r26, 0x00	; 0
 47a:	b0 e0       	ldi	r27, 0x00	; 0
 47c:	04 c0       	rjmp	.+8      	; 0x486 <__stack+0x27>
 47e:	80 e1       	ldi	r24, 0x10	; 16
 480:	90 e0       	ldi	r25, 0x00	; 0
 482:	a0 e0       	ldi	r26, 0x00	; 0
 484:	b0 e0       	ldi	r27, 0x00	; 0
 486:	20 e2       	ldi	r18, 0x20	; 32
 488:	30 e0       	ldi	r19, 0x00	; 0
 48a:	40 e0       	ldi	r20, 0x00	; 0
 48c:	50 e0       	ldi	r21, 0x00	; 0
 48e:	28 1b       	sub	r18, r24
 490:	39 0b       	sbc	r19, r25
 492:	4a 0b       	sbc	r20, r26
 494:	5b 0b       	sbc	r21, r27
 496:	04 c0       	rjmp	.+8      	; 0x4a0 <__stack+0x41>
 498:	16 95       	lsr	r17
 49a:	07 95       	ror	r16
 49c:	f7 94       	ror	r15
 49e:	e7 94       	ror	r14
 4a0:	8a 95       	dec	r24
 4a2:	d2 f7       	brpl	.-12     	; 0x498 <__stack+0x39>
 4a4:	f7 01       	movw	r30, r14
 4a6:	e8 59       	subi	r30, 0x98	; 152
 4a8:	ff 4f       	sbci	r31, 0xFF	; 255
 4aa:	80 81       	ld	r24, Z
 4ac:	28 1b       	sub	r18, r24
 4ae:	31 09       	sbc	r19, r1
 4b0:	41 09       	sbc	r20, r1
 4b2:	51 09       	sbc	r21, r1
 4b4:	c9 01       	movw	r24, r18
 4b6:	1f 91       	pop	r17
 4b8:	0f 91       	pop	r16
 4ba:	ff 90       	pop	r15
 4bc:	ef 90       	pop	r14
 4be:	08 95       	ret

000004c0 <__pack_f>:
 4c0:	df 92       	push	r13
 4c2:	ef 92       	push	r14
 4c4:	ff 92       	push	r15
 4c6:	0f 93       	push	r16
 4c8:	1f 93       	push	r17
 4ca:	fc 01       	movw	r30, r24
 4cc:	e4 80       	ldd	r14, Z+4	; 0x04
 4ce:	f5 80       	ldd	r15, Z+5	; 0x05
 4d0:	06 81       	ldd	r16, Z+6	; 0x06
 4d2:	17 81       	ldd	r17, Z+7	; 0x07
 4d4:	d1 80       	ldd	r13, Z+1	; 0x01
 4d6:	80 81       	ld	r24, Z
 4d8:	82 30       	cpi	r24, 0x02	; 2
 4da:	48 f4       	brcc	.+18     	; 0x4ee <__pack_f+0x2e>
 4dc:	80 e0       	ldi	r24, 0x00	; 0
 4de:	90 e0       	ldi	r25, 0x00	; 0
 4e0:	a0 e1       	ldi	r26, 0x10	; 16
 4e2:	b0 e0       	ldi	r27, 0x00	; 0
 4e4:	e8 2a       	or	r14, r24
 4e6:	f9 2a       	or	r15, r25
 4e8:	0a 2b       	or	r16, r26
 4ea:	1b 2b       	or	r17, r27
 4ec:	a5 c0       	rjmp	.+330    	; 0x638 <__pack_f+0x178>
 4ee:	84 30       	cpi	r24, 0x04	; 4
 4f0:	09 f4       	brne	.+2      	; 0x4f4 <__pack_f+0x34>
 4f2:	9f c0       	rjmp	.+318    	; 0x632 <__pack_f+0x172>
 4f4:	82 30       	cpi	r24, 0x02	; 2
 4f6:	21 f4       	brne	.+8      	; 0x500 <__pack_f+0x40>
 4f8:	ee 24       	eor	r14, r14
 4fa:	ff 24       	eor	r15, r15
 4fc:	87 01       	movw	r16, r14
 4fe:	05 c0       	rjmp	.+10     	; 0x50a <__pack_f+0x4a>
 500:	e1 14       	cp	r14, r1
 502:	f1 04       	cpc	r15, r1
 504:	01 05       	cpc	r16, r1
 506:	11 05       	cpc	r17, r1
 508:	19 f4       	brne	.+6      	; 0x510 <__pack_f+0x50>
 50a:	e0 e0       	ldi	r30, 0x00	; 0
 50c:	f0 e0       	ldi	r31, 0x00	; 0
 50e:	96 c0       	rjmp	.+300    	; 0x63c <__pack_f+0x17c>
 510:	62 81       	ldd	r22, Z+2	; 0x02
 512:	73 81       	ldd	r23, Z+3	; 0x03
 514:	9f ef       	ldi	r25, 0xFF	; 255
 516:	62 38       	cpi	r22, 0x82	; 130
 518:	79 07       	cpc	r23, r25
 51a:	0c f0       	brlt	.+2      	; 0x51e <__pack_f+0x5e>
 51c:	5b c0       	rjmp	.+182    	; 0x5d4 <__pack_f+0x114>
 51e:	22 e8       	ldi	r18, 0x82	; 130
 520:	3f ef       	ldi	r19, 0xFF	; 255
 522:	26 1b       	sub	r18, r22
 524:	37 0b       	sbc	r19, r23
 526:	2a 31       	cpi	r18, 0x1A	; 26
 528:	31 05       	cpc	r19, r1
 52a:	2c f0       	brlt	.+10     	; 0x536 <__pack_f+0x76>
 52c:	20 e0       	ldi	r18, 0x00	; 0
 52e:	30 e0       	ldi	r19, 0x00	; 0
 530:	40 e0       	ldi	r20, 0x00	; 0
 532:	50 e0       	ldi	r21, 0x00	; 0
 534:	2a c0       	rjmp	.+84     	; 0x58a <__pack_f+0xca>
 536:	b8 01       	movw	r22, r16
 538:	a7 01       	movw	r20, r14
 53a:	02 2e       	mov	r0, r18
 53c:	04 c0       	rjmp	.+8      	; 0x546 <__pack_f+0x86>
 53e:	76 95       	lsr	r23
 540:	67 95       	ror	r22
 542:	57 95       	ror	r21
 544:	47 95       	ror	r20
 546:	0a 94       	dec	r0
 548:	d2 f7       	brpl	.-12     	; 0x53e <__pack_f+0x7e>
 54a:	81 e0       	ldi	r24, 0x01	; 1
 54c:	90 e0       	ldi	r25, 0x00	; 0
 54e:	a0 e0       	ldi	r26, 0x00	; 0
 550:	b0 e0       	ldi	r27, 0x00	; 0
 552:	04 c0       	rjmp	.+8      	; 0x55c <__pack_f+0x9c>
 554:	88 0f       	add	r24, r24
 556:	99 1f       	adc	r25, r25
 558:	aa 1f       	adc	r26, r26
 55a:	bb 1f       	adc	r27, r27
 55c:	2a 95       	dec	r18
 55e:	d2 f7       	brpl	.-12     	; 0x554 <__pack_f+0x94>
 560:	01 97       	sbiw	r24, 0x01	; 1
 562:	a1 09       	sbc	r26, r1
 564:	b1 09       	sbc	r27, r1
 566:	8e 21       	and	r24, r14
 568:	9f 21       	and	r25, r15
 56a:	a0 23       	and	r26, r16
 56c:	b1 23       	and	r27, r17
 56e:	00 97       	sbiw	r24, 0x00	; 0
 570:	a1 05       	cpc	r26, r1
 572:	b1 05       	cpc	r27, r1
 574:	21 f0       	breq	.+8      	; 0x57e <__pack_f+0xbe>
 576:	81 e0       	ldi	r24, 0x01	; 1
 578:	90 e0       	ldi	r25, 0x00	; 0
 57a:	a0 e0       	ldi	r26, 0x00	; 0
 57c:	b0 e0       	ldi	r27, 0x00	; 0
 57e:	9a 01       	movw	r18, r20
 580:	ab 01       	movw	r20, r22
 582:	28 2b       	or	r18, r24
 584:	39 2b       	or	r19, r25
 586:	4a 2b       	or	r20, r26
 588:	5b 2b       	or	r21, r27
 58a:	da 01       	movw	r26, r20
 58c:	c9 01       	movw	r24, r18
 58e:	8f 77       	andi	r24, 0x7F	; 127
 590:	90 70       	andi	r25, 0x00	; 0
 592:	a0 70       	andi	r26, 0x00	; 0
 594:	b0 70       	andi	r27, 0x00	; 0
 596:	80 34       	cpi	r24, 0x40	; 64
 598:	91 05       	cpc	r25, r1
 59a:	a1 05       	cpc	r26, r1
 59c:	b1 05       	cpc	r27, r1
 59e:	39 f4       	brne	.+14     	; 0x5ae <__pack_f+0xee>
 5a0:	27 ff       	sbrs	r18, 7
 5a2:	09 c0       	rjmp	.+18     	; 0x5b6 <__pack_f+0xf6>
 5a4:	20 5c       	subi	r18, 0xC0	; 192
 5a6:	3f 4f       	sbci	r19, 0xFF	; 255
 5a8:	4f 4f       	sbci	r20, 0xFF	; 255
 5aa:	5f 4f       	sbci	r21, 0xFF	; 255
 5ac:	04 c0       	rjmp	.+8      	; 0x5b6 <__pack_f+0xf6>
 5ae:	21 5c       	subi	r18, 0xC1	; 193
 5b0:	3f 4f       	sbci	r19, 0xFF	; 255
 5b2:	4f 4f       	sbci	r20, 0xFF	; 255
 5b4:	5f 4f       	sbci	r21, 0xFF	; 255
 5b6:	e0 e0       	ldi	r30, 0x00	; 0
 5b8:	f0 e0       	ldi	r31, 0x00	; 0
 5ba:	20 30       	cpi	r18, 0x00	; 0
 5bc:	a0 e0       	ldi	r26, 0x00	; 0
 5be:	3a 07       	cpc	r19, r26
 5c0:	a0 e0       	ldi	r26, 0x00	; 0
 5c2:	4a 07       	cpc	r20, r26
 5c4:	a0 e4       	ldi	r26, 0x40	; 64
 5c6:	5a 07       	cpc	r21, r26
 5c8:	10 f0       	brcs	.+4      	; 0x5ce <__pack_f+0x10e>
 5ca:	e1 e0       	ldi	r30, 0x01	; 1
 5cc:	f0 e0       	ldi	r31, 0x00	; 0
 5ce:	79 01       	movw	r14, r18
 5d0:	8a 01       	movw	r16, r20
 5d2:	27 c0       	rjmp	.+78     	; 0x622 <__pack_f+0x162>
 5d4:	60 38       	cpi	r22, 0x80	; 128
 5d6:	71 05       	cpc	r23, r1
 5d8:	64 f5       	brge	.+88     	; 0x632 <__pack_f+0x172>
 5da:	fb 01       	movw	r30, r22
 5dc:	e1 58       	subi	r30, 0x81	; 129
 5de:	ff 4f       	sbci	r31, 0xFF	; 255
 5e0:	d8 01       	movw	r26, r16
 5e2:	c7 01       	movw	r24, r14
 5e4:	8f 77       	andi	r24, 0x7F	; 127
 5e6:	90 70       	andi	r25, 0x00	; 0
 5e8:	a0 70       	andi	r26, 0x00	; 0
 5ea:	b0 70       	andi	r27, 0x00	; 0
 5ec:	80 34       	cpi	r24, 0x40	; 64
 5ee:	91 05       	cpc	r25, r1
 5f0:	a1 05       	cpc	r26, r1
 5f2:	b1 05       	cpc	r27, r1
 5f4:	39 f4       	brne	.+14     	; 0x604 <__pack_f+0x144>
 5f6:	e7 fe       	sbrs	r14, 7
 5f8:	0d c0       	rjmp	.+26     	; 0x614 <__pack_f+0x154>
 5fa:	80 e4       	ldi	r24, 0x40	; 64
 5fc:	90 e0       	ldi	r25, 0x00	; 0
 5fe:	a0 e0       	ldi	r26, 0x00	; 0
 600:	b0 e0       	ldi	r27, 0x00	; 0
 602:	04 c0       	rjmp	.+8      	; 0x60c <__pack_f+0x14c>
 604:	8f e3       	ldi	r24, 0x3F	; 63
 606:	90 e0       	ldi	r25, 0x00	; 0
 608:	a0 e0       	ldi	r26, 0x00	; 0
 60a:	b0 e0       	ldi	r27, 0x00	; 0
 60c:	e8 0e       	add	r14, r24
 60e:	f9 1e       	adc	r15, r25
 610:	0a 1f       	adc	r16, r26
 612:	1b 1f       	adc	r17, r27
 614:	17 ff       	sbrs	r17, 7
 616:	05 c0       	rjmp	.+10     	; 0x622 <__pack_f+0x162>
 618:	16 95       	lsr	r17
 61a:	07 95       	ror	r16
 61c:	f7 94       	ror	r15
 61e:	e7 94       	ror	r14
 620:	31 96       	adiw	r30, 0x01	; 1
 622:	87 e0       	ldi	r24, 0x07	; 7
 624:	16 95       	lsr	r17
 626:	07 95       	ror	r16
 628:	f7 94       	ror	r15
 62a:	e7 94       	ror	r14
 62c:	8a 95       	dec	r24
 62e:	d1 f7       	brne	.-12     	; 0x624 <__pack_f+0x164>
 630:	05 c0       	rjmp	.+10     	; 0x63c <__pack_f+0x17c>
 632:	ee 24       	eor	r14, r14
 634:	ff 24       	eor	r15, r15
 636:	87 01       	movw	r16, r14
 638:	ef ef       	ldi	r30, 0xFF	; 255
 63a:	f0 e0       	ldi	r31, 0x00	; 0
 63c:	6e 2f       	mov	r22, r30
 63e:	67 95       	ror	r22
 640:	66 27       	eor	r22, r22
 642:	67 95       	ror	r22
 644:	90 2f       	mov	r25, r16
 646:	9f 77       	andi	r25, 0x7F	; 127
 648:	d7 94       	ror	r13
 64a:	dd 24       	eor	r13, r13
 64c:	d7 94       	ror	r13
 64e:	8e 2f       	mov	r24, r30
 650:	86 95       	lsr	r24
 652:	49 2f       	mov	r20, r25
 654:	46 2b       	or	r20, r22
 656:	58 2f       	mov	r21, r24
 658:	5d 29       	or	r21, r13
 65a:	b7 01       	movw	r22, r14
 65c:	ca 01       	movw	r24, r20
 65e:	1f 91       	pop	r17
 660:	0f 91       	pop	r16
 662:	ff 90       	pop	r15
 664:	ef 90       	pop	r14
 666:	df 90       	pop	r13
 668:	08 95       	ret

0000066a <__unpack_f>:
 66a:	fc 01       	movw	r30, r24
 66c:	db 01       	movw	r26, r22
 66e:	40 81       	ld	r20, Z
 670:	51 81       	ldd	r21, Z+1	; 0x01
 672:	22 81       	ldd	r18, Z+2	; 0x02
 674:	62 2f       	mov	r22, r18
 676:	6f 77       	andi	r22, 0x7F	; 127
 678:	70 e0       	ldi	r23, 0x00	; 0
 67a:	22 1f       	adc	r18, r18
 67c:	22 27       	eor	r18, r18
 67e:	22 1f       	adc	r18, r18
 680:	93 81       	ldd	r25, Z+3	; 0x03
 682:	89 2f       	mov	r24, r25
 684:	88 0f       	add	r24, r24
 686:	82 2b       	or	r24, r18
 688:	28 2f       	mov	r18, r24
 68a:	30 e0       	ldi	r19, 0x00	; 0
 68c:	99 1f       	adc	r25, r25
 68e:	99 27       	eor	r25, r25
 690:	99 1f       	adc	r25, r25
 692:	11 96       	adiw	r26, 0x01	; 1
 694:	9c 93       	st	X, r25
 696:	11 97       	sbiw	r26, 0x01	; 1
 698:	21 15       	cp	r18, r1
 69a:	31 05       	cpc	r19, r1
 69c:	a9 f5       	brne	.+106    	; 0x708 <__unpack_f+0x9e>
 69e:	41 15       	cp	r20, r1
 6a0:	51 05       	cpc	r21, r1
 6a2:	61 05       	cpc	r22, r1
 6a4:	71 05       	cpc	r23, r1
 6a6:	11 f4       	brne	.+4      	; 0x6ac <__unpack_f+0x42>
 6a8:	82 e0       	ldi	r24, 0x02	; 2
 6aa:	37 c0       	rjmp	.+110    	; 0x71a <__unpack_f+0xb0>
 6ac:	82 e8       	ldi	r24, 0x82	; 130
 6ae:	9f ef       	ldi	r25, 0xFF	; 255
 6b0:	13 96       	adiw	r26, 0x03	; 3
 6b2:	9c 93       	st	X, r25
 6b4:	8e 93       	st	-X, r24
 6b6:	12 97       	sbiw	r26, 0x02	; 2
 6b8:	9a 01       	movw	r18, r20
 6ba:	ab 01       	movw	r20, r22
 6bc:	67 e0       	ldi	r22, 0x07	; 7
 6be:	22 0f       	add	r18, r18
 6c0:	33 1f       	adc	r19, r19
 6c2:	44 1f       	adc	r20, r20
 6c4:	55 1f       	adc	r21, r21
 6c6:	6a 95       	dec	r22
 6c8:	d1 f7       	brne	.-12     	; 0x6be <__unpack_f+0x54>
 6ca:	83 e0       	ldi	r24, 0x03	; 3
 6cc:	8c 93       	st	X, r24
 6ce:	0d c0       	rjmp	.+26     	; 0x6ea <__unpack_f+0x80>
 6d0:	22 0f       	add	r18, r18
 6d2:	33 1f       	adc	r19, r19
 6d4:	44 1f       	adc	r20, r20
 6d6:	55 1f       	adc	r21, r21
 6d8:	12 96       	adiw	r26, 0x02	; 2
 6da:	8d 91       	ld	r24, X+
 6dc:	9c 91       	ld	r25, X
 6de:	13 97       	sbiw	r26, 0x03	; 3
 6e0:	01 97       	sbiw	r24, 0x01	; 1
 6e2:	13 96       	adiw	r26, 0x03	; 3
 6e4:	9c 93       	st	X, r25
 6e6:	8e 93       	st	-X, r24
 6e8:	12 97       	sbiw	r26, 0x02	; 2
 6ea:	20 30       	cpi	r18, 0x00	; 0
 6ec:	80 e0       	ldi	r24, 0x00	; 0
 6ee:	38 07       	cpc	r19, r24
 6f0:	80 e0       	ldi	r24, 0x00	; 0
 6f2:	48 07       	cpc	r20, r24
 6f4:	80 e4       	ldi	r24, 0x40	; 64
 6f6:	58 07       	cpc	r21, r24
 6f8:	58 f3       	brcs	.-42     	; 0x6d0 <__unpack_f+0x66>
 6fa:	14 96       	adiw	r26, 0x04	; 4
 6fc:	2d 93       	st	X+, r18
 6fe:	3d 93       	st	X+, r19
 700:	4d 93       	st	X+, r20
 702:	5c 93       	st	X, r21
 704:	17 97       	sbiw	r26, 0x07	; 7
 706:	08 95       	ret
 708:	2f 3f       	cpi	r18, 0xFF	; 255
 70a:	31 05       	cpc	r19, r1
 70c:	79 f4       	brne	.+30     	; 0x72c <__unpack_f+0xc2>
 70e:	41 15       	cp	r20, r1
 710:	51 05       	cpc	r21, r1
 712:	61 05       	cpc	r22, r1
 714:	71 05       	cpc	r23, r1
 716:	19 f4       	brne	.+6      	; 0x71e <__unpack_f+0xb4>
 718:	84 e0       	ldi	r24, 0x04	; 4
 71a:	8c 93       	st	X, r24
 71c:	08 95       	ret
 71e:	64 ff       	sbrs	r22, 4
 720:	03 c0       	rjmp	.+6      	; 0x728 <__unpack_f+0xbe>
 722:	81 e0       	ldi	r24, 0x01	; 1
 724:	8c 93       	st	X, r24
 726:	12 c0       	rjmp	.+36     	; 0x74c <__unpack_f+0xe2>
 728:	1c 92       	st	X, r1
 72a:	10 c0       	rjmp	.+32     	; 0x74c <__unpack_f+0xe2>
 72c:	2f 57       	subi	r18, 0x7F	; 127
 72e:	30 40       	sbci	r19, 0x00	; 0
 730:	13 96       	adiw	r26, 0x03	; 3
 732:	3c 93       	st	X, r19
 734:	2e 93       	st	-X, r18
 736:	12 97       	sbiw	r26, 0x02	; 2
 738:	83 e0       	ldi	r24, 0x03	; 3
 73a:	8c 93       	st	X, r24
 73c:	87 e0       	ldi	r24, 0x07	; 7
 73e:	44 0f       	add	r20, r20
 740:	55 1f       	adc	r21, r21
 742:	66 1f       	adc	r22, r22
 744:	77 1f       	adc	r23, r23
 746:	8a 95       	dec	r24
 748:	d1 f7       	brne	.-12     	; 0x73e <__unpack_f+0xd4>
 74a:	70 64       	ori	r23, 0x40	; 64
 74c:	14 96       	adiw	r26, 0x04	; 4
 74e:	4d 93       	st	X+, r20
 750:	5d 93       	st	X+, r21
 752:	6d 93       	st	X+, r22
 754:	7c 93       	st	X, r23
 756:	17 97       	sbiw	r26, 0x07	; 7
 758:	08 95       	ret

0000075a <__fpcmp_parts_f>:
 75a:	1f 93       	push	r17
 75c:	dc 01       	movw	r26, r24
 75e:	fb 01       	movw	r30, r22
 760:	9c 91       	ld	r25, X
 762:	92 30       	cpi	r25, 0x02	; 2
 764:	08 f4       	brcc	.+2      	; 0x768 <__fpcmp_parts_f+0xe>
 766:	47 c0       	rjmp	.+142    	; 0x7f6 <__fpcmp_parts_f+0x9c>
 768:	80 81       	ld	r24, Z
 76a:	82 30       	cpi	r24, 0x02	; 2
 76c:	08 f4       	brcc	.+2      	; 0x770 <__fpcmp_parts_f+0x16>
 76e:	43 c0       	rjmp	.+134    	; 0x7f6 <__fpcmp_parts_f+0x9c>
 770:	94 30       	cpi	r25, 0x04	; 4
 772:	51 f4       	brne	.+20     	; 0x788 <__fpcmp_parts_f+0x2e>
 774:	11 96       	adiw	r26, 0x01	; 1
 776:	1c 91       	ld	r17, X
 778:	84 30       	cpi	r24, 0x04	; 4
 77a:	99 f5       	brne	.+102    	; 0x7e2 <__fpcmp_parts_f+0x88>
 77c:	81 81       	ldd	r24, Z+1	; 0x01
 77e:	68 2f       	mov	r22, r24
 780:	70 e0       	ldi	r23, 0x00	; 0
 782:	61 1b       	sub	r22, r17
 784:	71 09       	sbc	r23, r1
 786:	3f c0       	rjmp	.+126    	; 0x806 <__fpcmp_parts_f+0xac>
 788:	84 30       	cpi	r24, 0x04	; 4
 78a:	21 f0       	breq	.+8      	; 0x794 <__fpcmp_parts_f+0x3a>
 78c:	92 30       	cpi	r25, 0x02	; 2
 78e:	31 f4       	brne	.+12     	; 0x79c <__fpcmp_parts_f+0x42>
 790:	82 30       	cpi	r24, 0x02	; 2
 792:	b9 f1       	breq	.+110    	; 0x802 <__fpcmp_parts_f+0xa8>
 794:	81 81       	ldd	r24, Z+1	; 0x01
 796:	88 23       	and	r24, r24
 798:	89 f1       	breq	.+98     	; 0x7fc <__fpcmp_parts_f+0xa2>
 79a:	2d c0       	rjmp	.+90     	; 0x7f6 <__fpcmp_parts_f+0x9c>
 79c:	11 96       	adiw	r26, 0x01	; 1
 79e:	1c 91       	ld	r17, X
 7a0:	11 97       	sbiw	r26, 0x01	; 1
 7a2:	82 30       	cpi	r24, 0x02	; 2
 7a4:	f1 f0       	breq	.+60     	; 0x7e2 <__fpcmp_parts_f+0x88>
 7a6:	81 81       	ldd	r24, Z+1	; 0x01
 7a8:	18 17       	cp	r17, r24
 7aa:	d9 f4       	brne	.+54     	; 0x7e2 <__fpcmp_parts_f+0x88>
 7ac:	12 96       	adiw	r26, 0x02	; 2
 7ae:	2d 91       	ld	r18, X+
 7b0:	3c 91       	ld	r19, X
 7b2:	13 97       	sbiw	r26, 0x03	; 3
 7b4:	82 81       	ldd	r24, Z+2	; 0x02
 7b6:	93 81       	ldd	r25, Z+3	; 0x03
 7b8:	82 17       	cp	r24, r18
 7ba:	93 07       	cpc	r25, r19
 7bc:	94 f0       	brlt	.+36     	; 0x7e2 <__fpcmp_parts_f+0x88>
 7be:	28 17       	cp	r18, r24
 7c0:	39 07       	cpc	r19, r25
 7c2:	bc f0       	brlt	.+46     	; 0x7f2 <__fpcmp_parts_f+0x98>
 7c4:	14 96       	adiw	r26, 0x04	; 4
 7c6:	8d 91       	ld	r24, X+
 7c8:	9d 91       	ld	r25, X+
 7ca:	0d 90       	ld	r0, X+
 7cc:	bc 91       	ld	r27, X
 7ce:	a0 2d       	mov	r26, r0
 7d0:	24 81       	ldd	r18, Z+4	; 0x04
 7d2:	35 81       	ldd	r19, Z+5	; 0x05
 7d4:	46 81       	ldd	r20, Z+6	; 0x06
 7d6:	57 81       	ldd	r21, Z+7	; 0x07
 7d8:	28 17       	cp	r18, r24
 7da:	39 07       	cpc	r19, r25
 7dc:	4a 07       	cpc	r20, r26
 7de:	5b 07       	cpc	r21, r27
 7e0:	18 f4       	brcc	.+6      	; 0x7e8 <__fpcmp_parts_f+0x8e>
 7e2:	11 23       	and	r17, r17
 7e4:	41 f0       	breq	.+16     	; 0x7f6 <__fpcmp_parts_f+0x9c>
 7e6:	0a c0       	rjmp	.+20     	; 0x7fc <__fpcmp_parts_f+0xa2>
 7e8:	82 17       	cp	r24, r18
 7ea:	93 07       	cpc	r25, r19
 7ec:	a4 07       	cpc	r26, r20
 7ee:	b5 07       	cpc	r27, r21
 7f0:	40 f4       	brcc	.+16     	; 0x802 <__fpcmp_parts_f+0xa8>
 7f2:	11 23       	and	r17, r17
 7f4:	19 f0       	breq	.+6      	; 0x7fc <__fpcmp_parts_f+0xa2>
 7f6:	61 e0       	ldi	r22, 0x01	; 1
 7f8:	70 e0       	ldi	r23, 0x00	; 0
 7fa:	05 c0       	rjmp	.+10     	; 0x806 <__fpcmp_parts_f+0xac>
 7fc:	6f ef       	ldi	r22, 0xFF	; 255
 7fe:	7f ef       	ldi	r23, 0xFF	; 255
 800:	02 c0       	rjmp	.+4      	; 0x806 <__fpcmp_parts_f+0xac>
 802:	60 e0       	ldi	r22, 0x00	; 0
 804:	70 e0       	ldi	r23, 0x00	; 0
 806:	cb 01       	movw	r24, r22
 808:	1f 91       	pop	r17
 80a:	08 95       	ret

0000080c <__prologue_saves__>:
 80c:	2f 92       	push	r2
 80e:	3f 92       	push	r3
 810:	4f 92       	push	r4
 812:	5f 92       	push	r5
 814:	6f 92       	push	r6
 816:	7f 92       	push	r7
 818:	8f 92       	push	r8
 81a:	9f 92       	push	r9
 81c:	af 92       	push	r10
 81e:	bf 92       	push	r11
 820:	cf 92       	push	r12
 822:	df 92       	push	r13
 824:	ef 92       	push	r14
 826:	ff 92       	push	r15
 828:	0f 93       	push	r16
 82a:	1f 93       	push	r17
 82c:	cf 93       	push	r28
 82e:	df 93       	push	r29
 830:	cd b7       	in	r28, 0x3d	; 61
 832:	de b7       	in	r29, 0x3e	; 62
 834:	ca 1b       	sub	r28, r26
 836:	db 0b       	sbc	r29, r27
 838:	0f b6       	in	r0, 0x3f	; 63
 83a:	f8 94       	cli
 83c:	de bf       	out	0x3e, r29	; 62
 83e:	0f be       	out	0x3f, r0	; 63
 840:	cd bf       	out	0x3d, r28	; 61
 842:	09 94       	ijmp

00000844 <__epilogue_restores__>:
 844:	2a 88       	ldd	r2, Y+18	; 0x12
 846:	39 88       	ldd	r3, Y+17	; 0x11
 848:	48 88       	ldd	r4, Y+16	; 0x10
 84a:	5f 84       	ldd	r5, Y+15	; 0x0f
 84c:	6e 84       	ldd	r6, Y+14	; 0x0e
 84e:	7d 84       	ldd	r7, Y+13	; 0x0d
 850:	8c 84       	ldd	r8, Y+12	; 0x0c
 852:	9b 84       	ldd	r9, Y+11	; 0x0b
 854:	aa 84       	ldd	r10, Y+10	; 0x0a
 856:	b9 84       	ldd	r11, Y+9	; 0x09
 858:	c8 84       	ldd	r12, Y+8	; 0x08
 85a:	df 80       	ldd	r13, Y+7	; 0x07
 85c:	ee 80       	ldd	r14, Y+6	; 0x06
 85e:	fd 80       	ldd	r15, Y+5	; 0x05
 860:	0c 81       	ldd	r16, Y+4	; 0x04
 862:	1b 81       	ldd	r17, Y+3	; 0x03
 864:	aa 81       	ldd	r26, Y+2	; 0x02
 866:	b9 81       	ldd	r27, Y+1	; 0x01
 868:	ce 0f       	add	r28, r30
 86a:	d1 1d       	adc	r29, r1
 86c:	0f b6       	in	r0, 0x3f	; 63
 86e:	f8 94       	cli
 870:	de bf       	out	0x3e, r29	; 62
 872:	0f be       	out	0x3f, r0	; 63
 874:	cd bf       	out	0x3d, r28	; 61
 876:	ed 01       	movw	r28, r26
 878:	08 95       	ret

0000087a <_exit>:
 87a:	f8 94       	cli

0000087c <__stop_program>:
 87c:	ff cf       	rjmp	.-2      	; 0x87c <__stop_program>
