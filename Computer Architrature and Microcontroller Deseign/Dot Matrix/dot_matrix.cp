#line 1 "G:/All Lab/Computer Architrature and Microcontroller Deseign/Dot Matrix/dot_matrix.c"
void main()
{
 TRISD = 0b00000000;
 PORTD = 0b11111111;

 do
 {
 PORTD = 0b00000011;
 Delay_ms(500);

 PORTD = 0b00000110;
 Delay_ms(500);

 PORTD = 0b00001100;
 Delay_ms(500);

 PORTD = 0b00001001;
 Delay_ms(500);

 } while(1);
}
