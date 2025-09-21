#line 1 "G:/All Lab/Computer Architrature and Microcontroller Deseign/4_digit_segment/digit_segment.c"
char arraycc[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
int clk=0, bt_zero=0, bt_one=0, bt_two=0, bt_three=0;

int button_response(int bt, sbit pin);
{
 if(pin == 1)
 {
 delay_ms(50);
 if(pin == 1)
 {
 bt++;
 if(bt==10) bt=0;
 while(pin==1);
 }
 }
 return bt;
}

void button_click()
{
 if(PORTD.F0==1)
 {
 delay_ms(50);
 if(PORTD.F0==1)
 {
 clk++;
 if(clk==4) clk=0;
 while(PORTD.F0==1);
 }
 }

 switch(clk)
 {
 case 0: bt_zero = button_response(bt_zero, PORTD.F1); break;
 case 1: bt_one = button_response(bt_one, PORTD.F2); break;
 case 2: bt_two = button_response(bt_two, PORTD.F3); break;
 case 3: bt_three = button_response(bt_three, PORTD.F4); break;
 }
}

void main()
{
 TRISB=0x00;
 TRISC=0x00;
 TRISD=0xFF;
 PORTB=0x00;
 PORTC=0x00;

 while(1)
 {
 button_click();


 PORTC.F0=0; PORTB=arraycc[bt_zero]; delay_ms(5); PORTC.F0=1;
 PORTC.F1=0; PORTB=arraycc[bt_one]; delay_ms(5); PORTC.F1=1;
 PORTC.F2=0; PORTB=arraycc[bt_two]; delay_ms(5); PORTC.F2=1;
 PORTC.F3=0; PORTB=arraycc[bt_three]; delay_ms(5); PORTC.F3=1;
 }
}
