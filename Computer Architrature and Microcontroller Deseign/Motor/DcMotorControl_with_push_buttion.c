void main() {

      short duty = 0;
      TRISD = 0x0f;
      TRISB = 0x00;
      portb.f0=1;
      portb.f1=0;
      
      PWM1_Init(1000);
      PWM1_Start();
      PWM1_Set_Duty(duty);
      while(1)
      {
      if(portd.f1==1){
      delay_ms(100);
      if(portd.f1==1)
      {
      duty = duty+20;
      PWM1_Set_Duty(duty);
      }
      }
      if(portd.f0==1)
      {
      delay_ms(100);
      if(portd.f0=1)
      {
      duty = duty-20;
      PWM1_Set_Duty(duty);
      
      
      }
      }
      
      }
}