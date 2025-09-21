#line 1 "G:/All Lab/Computer Architrature and Microcontroller Deseign/Relay/MyProject.c"
void main() {
 TRISB = 0x00;
 portb = 0x00;
 while(1)
 {
 portb.f0 = 1;
 delay_ms(1000);
 portb.f0 = 0;
 delay_ms(1000);
 }

}
