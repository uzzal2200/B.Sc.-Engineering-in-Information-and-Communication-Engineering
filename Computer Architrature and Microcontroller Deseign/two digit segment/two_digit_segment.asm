
_main:

;two_digit_segment.c,9 :: 		void main() {
;two_digit_segment.c,11 :: 		int i = 10;
	MOVLW      10
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
	CLRF       main_Left_digit_L0+0
	CLRF       main_Left_digit_L0+1
	CLRF       main_Right_digit_L0+0
	CLRF       main_Right_digit_L0+1
;two_digit_segment.c,14 :: 		TRISB = 0x00;   // PORTB as output (segments)
	CLRF       TRISB+0
;two_digit_segment.c,15 :: 		TRISC = 0x00;   // PORTC as output (digit control)
	CLRF       TRISC+0
;two_digit_segment.c,16 :: 		portb = 0x00;
	CLRF       PORTB+0
;two_digit_segment.c,17 :: 		portc = 0x00;
	CLRF       PORTC+0
;two_digit_segment.c,19 :: 		while (1) {
L_main0:
;two_digit_segment.c,20 :: 		Left_digit = i / 10;
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
	MOVWF      main_Left_digit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_Left_digit_L0+1
;two_digit_segment.c,21 :: 		Right_digit = i % 10;
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
	MOVWF      main_Right_digit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_Right_digit_L0+1
;two_digit_segment.c,23 :: 		for (j = 0; j < 30; j++) {
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
L_main2:
	MOVLW      128
	XORWF      main_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main9
	MOVLW      30
	SUBWF      main_j_L0+0, 0
L__main9:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;two_digit_segment.c,25 :: 		portb = array[Left_digit]; // Send pattern
	MOVF       main_Left_digit_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;two_digit_segment.c,26 :: 		digitL = 1;                // Enable left digit (common anode = HIGH)
	BSF        PORTC+0, 1
;two_digit_segment.c,27 :: 		digitR = 0;                // Disable right digit
	BCF        PORTC+0, 2
;two_digit_segment.c,28 :: 		delay_ms(5);              // Small delay
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;two_digit_segment.c,29 :: 		digitL = 0;               // Turn off left digit
	BCF        PORTC+0, 1
;two_digit_segment.c,32 :: 		portb = array[Right_digit];
	MOVF       main_Right_digit_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;two_digit_segment.c,33 :: 		digitR = 1;                // Enable right digit
	BSF        PORTC+0, 2
;two_digit_segment.c,34 :: 		digitL = 0;                // Disable left digit
	BCF        PORTC+0, 1
;two_digit_segment.c,35 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;two_digit_segment.c,36 :: 		digitR = 0;                // Turn off right digit
	BCF        PORTC+0, 2
;two_digit_segment.c,23 :: 		for (j = 0; j < 30; j++) {
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;two_digit_segment.c,37 :: 		}
	GOTO       L_main2
L_main3:
;two_digit_segment.c,39 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;two_digit_segment.c,41 :: 		if(i > 20) i = 10; // Reset after 99
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVF       main_i_L0+0, 0
	SUBLW      20
L__main10:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
	MOVLW      10
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
L_main7:
;two_digit_segment.c,42 :: 		}
	GOTO       L_main0
;two_digit_segment.c,43 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
