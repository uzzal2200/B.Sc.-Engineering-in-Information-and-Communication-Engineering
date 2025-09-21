#line 1 "G:/All Lab/Computer Architrature and Microcontroller Deseign/Practice/ADC/ADC.c"
int valADC;
char x[7];
float voltage;

void main()
{
 UART1_Init(9600);
 ADC_Init();

 while(1)
 {
 valADC = ADC_Read(0);
 voltage = (valADC * 5.0) / 1023.0;
 IntToStr(valADC, x);
 UART1_Write_Text("ADC = ");
 UART1_Write_Text(x);
 UART1_Write(13);
 Delay_ms(1000);
 FloatToStr(voltage, x);
 UART1_Write_Text("Actual voltage = ");
 UART1_Write_Text(x);
 UART1_Write(13);
 Delay_ms(1000);
 }
}
