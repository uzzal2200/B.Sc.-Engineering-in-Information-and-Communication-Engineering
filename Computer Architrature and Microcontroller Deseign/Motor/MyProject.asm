
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MyProject.c,3 :: 		portb = 0x00;
	CLRF       PORTB+0
;MyProject.c,5 :: 		while(1)
L_main0:
;MyProject.c,8 :: 		portb.f0 = 0;
	BCF        PORTB+0, 0
;MyProject.c,9 :: 		portb.f1 = 1;
	BSF        PORTB+0, 1
;MyProject.c,23 :: 		}
	GOTO       L_main0
;MyProject.c,26 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
