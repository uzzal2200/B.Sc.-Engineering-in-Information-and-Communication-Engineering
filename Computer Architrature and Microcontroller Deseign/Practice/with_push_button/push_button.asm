
_main:

;push_button.c,3 :: 		void main() {
;push_button.c,5 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;push_button.c,6 :: 		TRISB = 0x00;  // Set PORTB as output
	CLRF       TRISB+0
;push_button.c,7 :: 		TRISD = 0xFF;  // Set PORTD as input
	MOVLW      255
	MOVWF      TRISD+0
;push_button.c,10 :: 		while(1) {
L_main0:
;push_button.c,11 :: 		PORTB = array[i];  // Output the value from the array to PORTB
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;push_button.c,13 :: 		if (PORTD.F0 && i < 9) {  // Check if button is pressed and i < 9
	BTFSS      PORTD+0, 0
	GOTO       L_main4
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main13:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
L__main11:
;push_button.c,14 :: 		delay_ms(150);  // Wait for 1 second
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
;push_button.c,15 :: 		i++;  // Move to the next index
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;push_button.c,16 :: 		}
L_main4:
;push_button.c,18 :: 		if (PORTD.F1 && i > 0) {  // Check if the other button is pressed and i > 0
	BTFSS      PORTD+0, 1
	GOTO       L_main8
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main14:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
L__main10:
;push_button.c,19 :: 		delay_ms(150);  // Shorter delay
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
;push_button.c,20 :: 		i--;  // Move to the previous index
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;push_button.c,21 :: 		}
L_main8:
;push_button.c,22 :: 		}
	GOTO       L_main0
;push_button.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
