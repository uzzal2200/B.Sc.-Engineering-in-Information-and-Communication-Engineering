void main() {

      trisd = 0b00000000;
      portd = 0b1111111;

      do
      {

      portd = 0b00000000;
      delay_ms(500);
      portd = 0b00000110;
      delay_ms(500);
      portd = 0b00001100;
      delay_ms(500);
      portd = 0b00001001;
      delay_ms(500);
                               A
      }
      while(1) ;

}