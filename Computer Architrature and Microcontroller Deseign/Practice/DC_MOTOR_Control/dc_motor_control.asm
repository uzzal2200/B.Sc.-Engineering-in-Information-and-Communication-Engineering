
_main:

;dc_motor_control.c,1 :: 		void main() {
;dc_motor_control.c,4 :: 		short duty = 0;
	CLRF       main_duty_L0+0
;dc_motor_control.c,5 :: 		trisd = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;dc_motor_control.c,6 :: 		trisb = 0x00;
	CLRF       TRISB+0
;dc_motor_control.c,8 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;dc_motor_control.c,9 :: 		portb.f1 = 1;
	BSF        PORTB+0, 1
;dc_motor_control.c,10 :: 		PWM1_Init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;dc_motor_control.c,11 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;dc_motor_control.c,12 :: 		PWM1_Set_Duty(duty);
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;dc_motor_control.c,14 :: 		while(1)
L_main0:
;dc_motor_control.c,16 :: 		if(RD0_bit && duty <250)
	BTFSS      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main4
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      250
	SUBWF      main_duty_L0+0, 0
L__main13:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
L__main11:
;dc_motor_control.c,18 :: 		duty = duty + 10;
	MOVLW      10
	ADDWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;dc_motor_control.c,19 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;dc_motor_control.c,20 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;dc_motor_control.c,23 :: 		}
L_main4:
;dc_motor_control.c,25 :: 		if(RD1_bit && duty > 0)
	BTFSS      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main8
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main8
L__main10:
;dc_motor_control.c,27 :: 		duty = duty - 10;
	MOVLW      10
	SUBWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;dc_motor_control.c,28 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;dc_motor_control.c,29 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;dc_motor_control.c,32 :: 		}
L_main8:
;dc_motor_control.c,35 :: 		}
	GOTO       L_main0
;dc_motor_control.c,38 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
