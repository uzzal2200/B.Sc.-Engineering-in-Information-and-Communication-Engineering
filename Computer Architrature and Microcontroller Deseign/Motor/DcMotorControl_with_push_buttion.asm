
_main:

;DcMotorControl_with_push_buttion.c,1 :: 		void main() {
;DcMotorControl_with_push_buttion.c,3 :: 		short duty = 0;
	CLRF       main_duty_L0+0
;DcMotorControl_with_push_buttion.c,4 :: 		TRISD = 0x0f;
	MOVLW      15
	MOVWF      TRISD+0
;DcMotorControl_with_push_buttion.c,5 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;DcMotorControl_with_push_buttion.c,6 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;DcMotorControl_with_push_buttion.c,7 :: 		portb.f1=0;
	BCF        PORTB+0, 1
;DcMotorControl_with_push_buttion.c,9 :: 		PWM1_Init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;DcMotorControl_with_push_buttion.c,10 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;DcMotorControl_with_push_buttion.c,11 :: 		PWM1_Set_Duty(duty);
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;DcMotorControl_with_push_buttion.c,12 :: 		while(1)
L_main0:
;DcMotorControl_with_push_buttion.c,14 :: 		if(portd.f1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_main2
;DcMotorControl_with_push_buttion.c,15 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;DcMotorControl_with_push_buttion.c,16 :: 		if(portd.f1==1)
	BTFSS      PORTD+0, 1
	GOTO       L_main4
;DcMotorControl_with_push_buttion.c,18 :: 		duty = duty+20;
	MOVLW      20
	ADDWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;DcMotorControl_with_push_buttion.c,19 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;DcMotorControl_with_push_buttion.c,20 :: 		}
L_main4:
;DcMotorControl_with_push_buttion.c,21 :: 		}
L_main2:
;DcMotorControl_with_push_buttion.c,22 :: 		if(portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main5
;DcMotorControl_with_push_buttion.c,24 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;DcMotorControl_with_push_buttion.c,25 :: 		if(portd.f0=1)
	BSF        PORTD+0, 0
	BTFSS      PORTD+0, 0
	GOTO       L_main7
;DcMotorControl_with_push_buttion.c,27 :: 		duty = duty-20;
	MOVLW      20
	SUBWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;DcMotorControl_with_push_buttion.c,28 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;DcMotorControl_with_push_buttion.c,31 :: 		}
L_main7:
;DcMotorControl_with_push_buttion.c,32 :: 		}
L_main5:
;DcMotorControl_with_push_buttion.c,34 :: 		}
	GOTO       L_main0
;DcMotorControl_with_push_buttion.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
