
_main:

;main.c,1 :: 		void main() {
;main.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;main.c,3 :: 		portb = 0x00;
	CLRF       PORTB+0
;main.c,4 :: 		while(1)
L_main0:
;main.c,6 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;main.c,7 :: 		delay_ms(1000);
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
;main.c,8 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;main.c,9 :: 		delay_ms(1000);
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
;main.c,10 :: 		}
	GOTO       L_main0
;main.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
