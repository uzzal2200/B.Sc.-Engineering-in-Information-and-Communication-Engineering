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