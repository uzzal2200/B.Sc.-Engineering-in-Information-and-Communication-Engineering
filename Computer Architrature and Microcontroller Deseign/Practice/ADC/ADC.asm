
_main:

;ADC.c,5 :: 		void main()
;ADC.c,7 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;ADC.c,8 :: 		ADC_Init();
	CALL       _ADC_Init+0
;ADC.c,10 :: 		while(1)
L_main0:
;ADC.c,12 :: 		valADC = ADC_Read(0);       // read ADC from RA0
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       FLOC__main+0, 0
	MOVWF      _valADC+0
	MOVF       FLOC__main+1, 0
	MOVWF      _valADC+1
;ADC.c,13 :: 		voltage = (valADC * 5.0) / 1023.0;
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      192
	MOVWF      R4+1
	MOVLW      127
	MOVWF      R4+2
	MOVLW      136
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _voltage+0
	MOVF       R0+1, 0
	MOVWF      _voltage+1
	MOVF       R0+2, 0
	MOVWF      _voltage+2
	MOVF       R0+3, 0
	MOVWF      _voltage+3
;ADC.c,14 :: 		IntToStr(valADC, x);        // convert to string
	MOVF       FLOC__main+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FLOC__main+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _x+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;ADC.c,15 :: 		UART1_Write_Text("ADC = ");
	MOVLW      ?lstr1_ADC+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC.c,16 :: 		UART1_Write_Text(x);
	MOVLW      _x+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC.c,17 :: 		UART1_Write(13);            // new line
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ADC.c,18 :: 		Delay_ms(1000);             // 1 sec delay
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;ADC.c,19 :: 		FloatToStr(voltage, x);
	MOVF       _voltage+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       _voltage+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       _voltage+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       _voltage+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _x+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;ADC.c,20 :: 		UART1_Write_Text("Actual voltage = ");
	MOVLW      ?lstr2_ADC+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC.c,21 :: 		UART1_Write_Text(x);
	MOVLW      _x+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC.c,22 :: 		UART1_Write(13);            // new line
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ADC.c,23 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;ADC.c,24 :: 		}
	GOTO       L_main0
;ADC.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
