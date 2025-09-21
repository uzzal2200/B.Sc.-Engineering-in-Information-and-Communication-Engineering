
_main:

;dot_matrix.c,1 :: 		void main()
;dot_matrix.c,3 :: 		TRISD = 0b00000000; // PORT D as output port
	CLRF       TRISD+0
;dot_matrix.c,4 :: 		PORTD = 0b11111111;
	MOVLW      255
	MOVWF      PORTD+0
;dot_matrix.c,6 :: 		do
L_main0:
;dot_matrix.c,8 :: 		PORTD = 0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;dot_matrix.c,9 :: 		Delay_ms(500); // delay of 0.5s
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
;dot_matrix.c,11 :: 		PORTD = 0b00000110;
	MOVLW      6
	MOVWF      PORTD+0
;dot_matrix.c,12 :: 		Delay_ms(500);
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
;dot_matrix.c,14 :: 		PORTD = 0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;dot_matrix.c,15 :: 		Delay_ms(500);
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
;dot_matrix.c,17 :: 		PORTD = 0b00001001;
	MOVLW      9
	MOVWF      PORTD+0
;dot_matrix.c,18 :: 		Delay_ms(500);
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
;dot_matrix.c,20 :: 		} while(1); // loop executed infinite times
	GOTO       L_main0
;dot_matrix.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
