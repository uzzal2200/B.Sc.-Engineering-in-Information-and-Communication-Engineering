
_main:

;rlay_excrcise.c,1 :: 		void main() {
;rlay_excrcise.c,3 :: 		trisb = 0x00;
	CLRF       TRISB+0
;rlay_excrcise.c,4 :: 		portb = 0x00;
	CLRF       PORTB+0
;rlay_excrcise.c,5 :: 		while(1)
L_main0:
;rlay_excrcise.c,7 :: 		portb.f0 = 1;
	BSF        PORTB+0, 0
;rlay_excrcise.c,8 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;rlay_excrcise.c,9 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;rlay_excrcise.c,10 :: 		delay_ms(500);
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
;rlay_excrcise.c,15 :: 		}
	GOTO       L_main0
;rlay_excrcise.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
