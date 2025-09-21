
_button_response:

;digit_segment.c,4 :: 		int button_response( int bt )
;digit_segment.c,6 :: 		if(portd.f1==1)
	BTFSS      PORTD+0, 1
	GOTO       L_button_response0
;digit_segment.c,8 :: 		delay_ms(150);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_button_response1:
	DECFSZ     R13+0, 1
	GOTO       L_button_response1
	DECFSZ     R12+0, 1
	GOTO       L_button_response1
	DECFSZ     R11+0, 1
	GOTO       L_button_response1
;digit_segment.c,9 :: 		if(portd.f1==1)
	BTFSS      PORTD+0, 1
	GOTO       L_button_response2
;digit_segment.c,11 :: 		bt++;
	INCF       FARG_button_response_bt+0, 1
	BTFSC      STATUS+0, 2
	INCF       FARG_button_response_bt+1, 1
;digit_segment.c,12 :: 		if(bt==10)
	MOVLW      0
	XORWF      FARG_button_response_bt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__button_response21
	MOVLW      10
	XORWF      FARG_button_response_bt+0, 0
L__button_response21:
	BTFSS      STATUS+0, 2
	GOTO       L_button_response3
;digit_segment.c,14 :: 		bt=0;
	CLRF       FARG_button_response_bt+0
	CLRF       FARG_button_response_bt+1
;digit_segment.c,15 :: 		}
L_button_response3:
;digit_segment.c,16 :: 		}
L_button_response2:
;digit_segment.c,17 :: 		}
L_button_response0:
;digit_segment.c,19 :: 		return bt;
	MOVF       FARG_button_response_bt+0, 0
	MOVWF      R0+0
	MOVF       FARG_button_response_bt+1, 0
	MOVWF      R0+1
;digit_segment.c,20 :: 		}
L_end_button_response:
	RETURN
; end of _button_response

_button_click:

;digit_segment.c,22 :: 		void button_click()
;digit_segment.c,24 :: 		if(portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_button_click4
;digit_segment.c,26 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_button_click5:
	DECFSZ     R13+0, 1
	GOTO       L_button_click5
	DECFSZ     R12+0, 1
	GOTO       L_button_click5
	DECFSZ     R11+0, 1
	GOTO       L_button_click5
	NOP
;digit_segment.c,27 :: 		if(portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_button_click6
;digit_segment.c,29 :: 		clk++;
	INCF       _clk+0, 1
	BTFSC      STATUS+0, 2
	INCF       _clk+1, 1
;digit_segment.c,30 :: 		if(clk==4)
	MOVLW      0
	XORWF      _clk+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__button_click23
	MOVLW      4
	XORWF      _clk+0, 0
L__button_click23:
	BTFSS      STATUS+0, 2
	GOTO       L_button_click7
;digit_segment.c,32 :: 		clk=0;
	CLRF       _clk+0
	CLRF       _clk+1
;digit_segment.c,33 :: 		}
L_button_click7:
;digit_segment.c,34 :: 		}
L_button_click6:
;digit_segment.c,35 :: 		}
L_button_click4:
;digit_segment.c,36 :: 		switch(clk)
	GOTO       L_button_click8
;digit_segment.c,39 :: 		case 0:
L_button_click10:
;digit_segment.c,40 :: 		bt_zero= button_response( bt_zero);
	MOVF       _bt_zero+0, 0
	MOVWF      FARG_button_response_bt+0
	MOVF       _bt_zero+1, 0
	MOVWF      FARG_button_response_bt+1
	CALL       _button_response+0
	MOVF       R0+0, 0
	MOVWF      _bt_zero+0
	MOVF       R0+1, 0
	MOVWF      _bt_zero+1
;digit_segment.c,41 :: 		break;
	GOTO       L_button_click9
;digit_segment.c,42 :: 		case 1:
L_button_click11:
;digit_segment.c,43 :: 		bt_one= button_response( bt_one);
	MOVF       _bt_one+0, 0
	MOVWF      FARG_button_response_bt+0
	MOVF       _bt_one+1, 0
	MOVWF      FARG_button_response_bt+1
	CALL       _button_response+0
	MOVF       R0+0, 0
	MOVWF      _bt_one+0
	MOVF       R0+1, 0
	MOVWF      _bt_one+1
;digit_segment.c,44 :: 		break;
	GOTO       L_button_click9
;digit_segment.c,45 :: 		case 2:
L_button_click12:
;digit_segment.c,46 :: 		bt_two= button_response( bt_two);
	MOVF       _bt_two+0, 0
	MOVWF      FARG_button_response_bt+0
	MOVF       _bt_two+1, 0
	MOVWF      FARG_button_response_bt+1
	CALL       _button_response+0
	MOVF       R0+0, 0
	MOVWF      _bt_two+0
	MOVF       R0+1, 0
	MOVWF      _bt_two+1
;digit_segment.c,47 :: 		break;
	GOTO       L_button_click9
;digit_segment.c,48 :: 		case 3:
L_button_click13:
;digit_segment.c,49 :: 		bt_three= button_response( bt_three);
	MOVF       _bt_three+0, 0
	MOVWF      FARG_button_response_bt+0
	MOVF       _bt_three+1, 0
	MOVWF      FARG_button_response_bt+1
	CALL       _button_response+0
	MOVF       R0+0, 0
	MOVWF      _bt_three+0
	MOVF       R0+1, 0
	MOVWF      _bt_three+1
;digit_segment.c,50 :: 		break;
	GOTO       L_button_click9
;digit_segment.c,53 :: 		}
L_button_click8:
	MOVLW      0
	XORWF      _clk+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__button_click24
	MOVLW      0
	XORWF      _clk+0, 0
L__button_click24:
	BTFSC      STATUS+0, 2
	GOTO       L_button_click10
	MOVLW      0
	XORWF      _clk+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__button_click25
	MOVLW      1
	XORWF      _clk+0, 0
L__button_click25:
	BTFSC      STATUS+0, 2
	GOTO       L_button_click11
	MOVLW      0
	XORWF      _clk+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__button_click26
	MOVLW      2
	XORWF      _clk+0, 0
L__button_click26:
	BTFSC      STATUS+0, 2
	GOTO       L_button_click12
	MOVLW      0
	XORWF      _clk+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__button_click27
	MOVLW      3
	XORWF      _clk+0, 0
L__button_click27:
	BTFSC      STATUS+0, 2
	GOTO       L_button_click13
L_button_click9:
;digit_segment.c,55 :: 		}
L_end_button_click:
	RETURN
; end of _button_click

_main:

;digit_segment.c,60 :: 		void main() {
;digit_segment.c,61 :: 		TrisB=0x00;//initialize as output
	CLRF       TRISB+0
;digit_segment.c,62 :: 		TrisC=0x00;// initialize as output
	CLRF       TRISC+0
;digit_segment.c,63 :: 		TrisD=0xff; //initialize as input
	MOVLW      255
	MOVWF      TRISD+0
;digit_segment.c,64 :: 		portb=0x00;
	CLRF       PORTB+0
;digit_segment.c,65 :: 		portc=0x00;
	CLRF       PORTC+0
;digit_segment.c,68 :: 		while(1)
L_main14:
;digit_segment.c,70 :: 		button_click();
	CALL       _button_click+0
;digit_segment.c,73 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;digit_segment.c,74 :: 		portb=arraycc[bt_zero];
	MOVF       _bt_zero+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;digit_segment.c,75 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
;digit_segment.c,76 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;digit_segment.c,78 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;digit_segment.c,79 :: 		portb=arraycc[bt_one];
	MOVF       _bt_one+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;digit_segment.c,80 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	NOP
;digit_segment.c,81 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;digit_segment.c,83 :: 		portc.f2=0;
	BCF        PORTC+0, 2
;digit_segment.c,84 :: 		portb=arraycc[bt_two];
	MOVF       _bt_two+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;digit_segment.c,85 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
;digit_segment.c,86 :: 		portc.f2=1;
	BSF        PORTC+0, 2
;digit_segment.c,88 :: 		portc.f3=0;
	BCF        PORTC+0, 3
;digit_segment.c,89 :: 		portb=arraycc[bt_three];
	MOVF       _bt_three+0, 0
	ADDLW      _arraycc+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;digit_segment.c,90 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	NOP
;digit_segment.c,91 :: 		portc.f3=1;
	BSF        PORTC+0, 3
;digit_segment.c,93 :: 		}
	GOTO       L_main14
;digit_segment.c,97 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
