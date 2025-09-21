
_main:

;seven_segment.c,3 :: 		void main() {
;seven_segment.c,5 :: 		Trisb = 0x00;
	CLRF       TRISB+0
;seven_segment.c,6 :: 		portb = 0x00;
	CLRF       PORTB+0
;seven_segment.c,7 :: 		for (i=0;i<10;i++)
	CLRF       R1+0
	CLRF       R1+1
L_main0:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVLW      10
	SUBWF      R1+0, 0
L__main5:
	BTFSC      STATUS+0, 0
	GOTO       L_main1
;seven_segment.c,9 :: 		portb=array[i];
	MOVF       R1+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;seven_segment.c,10 :: 		delay_ms(1000);
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
;seven_segment.c,7 :: 		for (i=0;i<10;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;seven_segment.c,11 :: 		}
	GOTO       L_main0
L_main1:
;seven_segment.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
