#line 1 "G:/All Lab/Computer Architrature and Microcontroller Deseign/seven segement/seven_segment.c"

char array [] = { 0x86,0xDB,0x8F, 0xE6,0xED, 0xFD,0x87, 0xFF, 0xEF};
void main() {
int i;
Trisb = 0x00;
portb = 0x00;
for (i=0;i<10;i++)
{
portb=array[i];
delay_ms(1000);
}

}
