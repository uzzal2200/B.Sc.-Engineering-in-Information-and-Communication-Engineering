
_main:

;MyProject.c,2 :: 		void main() {
;MyProject.c,3 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;MyProject.c,4 :: 		TRISB = 0x00;    //Set portb as output
	CLRF       TRISB+0
;MyProject.c,5 :: 		TRISD = 0xff;    //Set portd as input
	MOVLW      255
	MOVWF      TRISD+0
;MyProject.c,6 :: 		while(1)
L_main0:
;MyProject.c,7 :: 		{   portb = array_ca[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array_ca+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,8 :: 		if(portd.f0==0xff)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;MyProject.c,10 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;MyProject.c,11 :: 		if(portd.f0==0xff)
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;MyProject.c,14 :: 		if(i<9)
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;MyProject.c,16 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;MyProject.c,17 :: 		}
L_main5:
;MyProject.c,18 :: 		}
L_main4:
;MyProject.c,19 :: 		}
L_main2:
;MyProject.c,20 :: 		if(portd.f1==0xff)
	BTFSS      PORTD+0, 1
	GOTO       L_main6
;MyProject.c,22 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;MyProject.c,23 :: 		if(portd.f1==0xff)
	BTFSS      PORTD+0, 1
	GOTO       L_main8
;MyProject.c,26 :: 		if(i<=9)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVF       main_i_L0+0, 0
	SUBLW      9
L__main12:
	BTFSS      STATUS+0, 0
	GOTO       L_main9
;MyProject.c,28 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;MyProject.c,29 :: 		}
L_main9:
;MyProject.c,30 :: 		}
L_main8:
;MyProject.c,31 :: 		}
L_main6:
;MyProject.c,32 :: 		}
	GOTO       L_main0
;MyProject.c,34 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
