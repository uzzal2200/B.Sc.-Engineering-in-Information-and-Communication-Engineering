
_main:

;MyProject.c,3 :: 		void main()
;MyProject.c,6 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,7 :: 		TRISD = 0xFF;
	MOVLW      255
	MOVWF      TRISD+0
;MyProject.c,10 :: 		i = EEPROM_Read(0x00);
	CLRF       FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      main_i_L0+0
	CLRF       main_i_L0+1
;MyProject.c,11 :: 		if (i < 0 || i > 9) i = 0; // safety check in case of invalid EEPROM value
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVLW      0
	SUBWF      main_i_L0+0, 0
L__main17:
	BTFSS      STATUS+0, 0
	GOTO       L__main15
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVF       main_i_L0+0, 0
	SUBLW      9
L__main18:
	BTFSS      STATUS+0, 0
	GOTO       L__main15
	GOTO       L_main2
L__main15:
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
;MyProject.c,13 :: 		PORTB = array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,15 :: 		while (1)
L_main3:
;MyProject.c,17 :: 		if (PORTD.F0 == 0xFF)
	BTFSS      PORTD+0, 0
	GOTO       L_main5
;MyProject.c,19 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
;MyProject.c,20 :: 		if (PORTD.F0 == 0xFF)
	BTFSS      PORTD+0, 0
	GOTO       L_main7
;MyProject.c,22 :: 		if (i < 9)
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main19
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main19:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
;MyProject.c,24 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;MyProject.c,25 :: 		PORTB = array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,26 :: 		EEPROM_Write(0x00, i); // Save new state to EEPROM
	CLRF       FARG_EEPROM_Write_Address+0
	MOVF       main_i_L0+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;MyProject.c,27 :: 		delay_ms(10);          // Give EEPROM time to write
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
;MyProject.c,28 :: 		}
L_main8:
;MyProject.c,29 :: 		}
L_main7:
;MyProject.c,30 :: 		}
L_main5:
;MyProject.c,32 :: 		if (PORTD.F1 == 0xFF)
	BTFSS      PORTD+0, 1
	GOTO       L_main10
;MyProject.c,34 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
;MyProject.c,35 :: 		if (PORTD.F1 == 0xFF)
	BTFSS      PORTD+0, 1
	GOTO       L_main12
;MyProject.c,37 :: 		if (i > 0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main20:
	BTFSC      STATUS+0, 0
	GOTO       L_main13
;MyProject.c,39 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;MyProject.c,40 :: 		PORTB = array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,41 :: 		EEPROM_Write(0x00, i); // Save new state to EEPROM
	CLRF       FARG_EEPROM_Write_Address+0
	MOVF       main_i_L0+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;MyProject.c,42 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	NOP
;MyProject.c,43 :: 		}
L_main13:
;MyProject.c,44 :: 		}
L_main12:
;MyProject.c,45 :: 		}
L_main10:
;MyProject.c,46 :: 		}
	GOTO       L_main3
;MyProject.c,47 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
