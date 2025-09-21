
_main:

;stepper_motor.c,1 :: 		void main()
;stepper_motor.c,3 :: 		TRISD = 0b0000000; // PORT D as output port
	CLRF       TRISD+0
;stepper_motor.c,4 :: 		PORTD = 0b1111111;
	MOVLW      127
	MOVWF      PORTD+0
;stepper_motor.c,5 :: 		do
L_main0:
;stepper_motor.c,7 :: 		PORTD = 0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;stepper_motor.c,8 :: 		Delay_ms(500); // delay of 0.5s
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
;stepper_motor.c,9 :: 		PORTD = 0b00000110;
	MOVLW      6
	MOVWF      PORTD+0
;stepper_motor.c,10 :: 		Delay_ms(500);
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
;stepper_motor.c,11 :: 		PORTD = 0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;stepper_motor.c,12 :: 		Delay_ms(500);
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
;stepper_motor.c,13 :: 		PORTD = 0b00001001;
	MOVLW      9
	MOVWF      PORTD+0
;stepper_motor.c,14 :: 		Delay_ms(500);
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
;stepper_motor.c,16 :: 		}while(1); // loop executed infinite times
	GOTO       L_main0
;stepper_motor.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
