#line 1 "G:/All Lab/Computer Architrature and Microcontroller Deseign/LED blinking/MyProject.c"
void main() {
 TRISB = 0x00;
 portb = 0x00;

 while(1)
 {
 portb.f0 = 1;
 portb.f1 = 0;
 delay_ms(500);
 portb.f0 = 0;
 portb.f1 = 1;
 delay_ms(500);
 }

}
