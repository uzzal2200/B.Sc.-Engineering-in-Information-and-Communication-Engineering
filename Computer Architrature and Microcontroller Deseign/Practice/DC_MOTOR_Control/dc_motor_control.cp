#line 1 "G:/All Lab/Computer Architrature and Microcontroller Deseign/Practice/DC_MOTOR_Control/dc_motor_control.c"
void main() {


 short duty = 0;
 trisd = 0xff;
 trisb = 0x00;

 portb.f0=0;
 portb.f1 = 1;
 PWM1_Init(1000);
 PWM1_Start();
 PWM1_Set_Duty(duty);

 while(1)
 {
 if(RD0_bit && duty <250)
 {
 duty = duty + 10;
 PWM1_Set_Duty(duty);
 delay_ms(100);


 }

 if(RD1_bit && duty > 0)
 {
 duty = duty - 10;
 PWM1_Set_Duty(duty);
 delay_ms(100);


 }


 }


}
