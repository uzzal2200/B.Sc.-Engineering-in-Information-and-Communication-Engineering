
_main:

;two_digit_with_realy.c,3 :: 		void main() {
;two_digit_with_realy.c,5 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;two_digit_with_realy.c,6 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;two_digit_with_realy.c,7 :: 		portb=0x00;
	CLRF       PORTB+0
;two_digit_with_realy.c,8 :: 		portc=0x00;
	CLRF       PORTC+0
;two_digit_with_realy.c,10 :: 		while(1)
L_main0:
;two_digit_with_realy.c,12 :: 		for(i = 0; i<100; i++)
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      100
	SUBWF      main_i_L0+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;two_digit_with_realy.c,14 :: 		left = i / 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_left_L0+0
	MOVF       R0+1, 0
	MOVWF      main_left_L0+1
;two_digit_with_realy.c,15 :: 		right = i % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_right_L0+0
	MOVF       R0+1, 0
	MOVWF      main_right_L0+1
;two_digit_with_realy.c,16 :: 		for(j = 0;j<50;j++)
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
L_main5:
	MOVLW      128
	XORWF      main_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      50
	SUBWF      main_j_L0+0, 0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;two_digit_with_realy.c,18 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;two_digit_with_realy.c,19 :: 		portb = array [left];
	MOVF       main_left_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;two_digit_with_realy.c,20 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;two_digit_with_realy.c,21 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;two_digit_with_realy.c,23 :: 		portc.f1 = 0;
	BCF        PORTC+0, 1
;two_digit_with_realy.c,24 :: 		portb = array[right];
	MOVF       main_right_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;two_digit_with_realy.c,25 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;two_digit_with_realy.c,26 :: 		portc.f1 = 1;
	BSF        PORTC+0, 1
;two_digit_with_realy.c,16 :: 		for(j = 0;j<50;j++)
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;two_digit_with_realy.c,28 :: 		}
	GOTO       L_main5
L_main6:
;two_digit_with_realy.c,12 :: 		for(i = 0; i<100; i++)
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;two_digit_with_realy.c,30 :: 		}
	GOTO       L_main2
L_main3:
;two_digit_with_realy.c,32 :: 		}
	GOTO       L_main0
;two_digit_with_realy.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
