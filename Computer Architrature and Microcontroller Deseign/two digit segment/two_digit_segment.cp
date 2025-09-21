#line 1 "G:/All Lab/Computer Architrature and Microcontroller Deseign/two digit segment/two_digit_segment.c"




unsigned char array[] = {
 0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90
};

void main() {

 int i = 10;
 int j, Left_digit = 0, Right_digit = 0;

 TRISB = 0x00;
 TRISC = 0x00;
 portb = 0x00;
 portc = 0x00;

 while (1) {
 Left_digit = i / 10;
 Right_digit = i % 10;

 for (j = 0; j < 30; j++) {

 portb = array[Left_digit];
  portc.f1  = 1;
  portc.f2  = 0;
 delay_ms(5);
  portc.f1  = 0;


 portb = array[Right_digit];
  portc.f2  = 1;
  portc.f1  = 0;
 delay_ms(5);
  portc.f2  = 0;
 }

 i++;

 if(i > 20) i = 10;
 }
}
