#line 1 "G:/All Lab/Computer Architrature and Microcontroller Deseign/Excercise/rlay_excrcise.c"
void main() {

 trisb = 0x00;
 portb = 0x00;
 while(1)
 {
 portb.f0 = 1;
 delay_ms(500);
 portb.f0 = 0;
 delay_ms(500);




 }

}
