#line 1 "G:/All Lab/Computer Architrature and Microcontroller Deseign/Practice/stepper_motor/stepper.c"
void main() {

 trisd = 0b00000000;
 portd = 0b1111111;

 do
 {

 portd = 0b00000011;
 delay_ms(500);
 portd = 0b00000110;
 delay_ms(500);
 portd = 0b00001100;
 delay_ms(500);
 portd = 0b00001001;
 delay_ms(500);

 }
 while(1) ;

}
