
_main:

;stepper.c,1 :: 		void main() {
;stepper.c,3 :: 		trisd = 0b00000000;
	CLRF       TRISD+0
;stepper.c,4 :: 		portd = 0b1111111;
	MOVLW      127
	MOVWF      PORTD+0
;stepper.c,6 :: 		do
L_main0:
;stepper.c,9 :: 		portd = 0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;stepper.c,10 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;stepper.c,11 :: 		portd = 0b00000110;
	MOVLW      6
	MOVWF      PORTD+0
;stepper.c,12 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;stepper.c,13 :: 		portd = 0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;stepper.c,14 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;stepper.c,15 :: 		portd = 0b00001001;
	MOVLW      9
	MOVWF      PORTD+0
;stepper.c,16 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;stepper.c,19 :: 		while(1) ;
	GOTO       L_main0
;stepper.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
