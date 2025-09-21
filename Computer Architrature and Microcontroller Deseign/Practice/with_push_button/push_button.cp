#line 1 "G:/All Lab/Computer Architrature and Microcontroller Deseign/Practice/with_push_button/push_button.c"
char array[] = {0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10};

void main() {

 int i = 0;
 TRISB = 0x00;
 TRISD = 0xFF;


 while(1) {
 PORTB = array[i];

 if (PORTD.F0 && i < 9) {
 delay_ms(150);
 i++;
 }

 if (PORTD.F1 && i > 0) {
 delay_ms(150);
 i--;
 }
 }
}
