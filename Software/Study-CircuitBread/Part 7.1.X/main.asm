#include "p10f200.inc"
    __CONFIG _WDT_OFF & _CP_OFF & _MCLRE_OFF
    
i	EQU 10	;define 0x10 register as the PWM loop variable
limit	EQU 11	;define 0x11 register as the PWM limit
j	EQU 12	;define 0x12 register as the delay variable
	
ORG 0x0000
	
INIT
	MOVLW	~(1 << GP1)   ;set GP1 as output
	TRIS	GPIO
	CLRF	limit	;Clear the PWM limit
	
LOOP
	MOVLW	0xFF	;set the inital value of i
	MOVWF	i	;as 0xFF
	BSF	GPIO, GP1   ;Set GP1 pin
	
INT_LOOP    ;Beginning of the internal PWM loop
	MOVF	limit, W	;Copy the PWM limit value of the W register
	SUBWF	i, W	;Subtract the W from i
	BTFSS	STATUS, Z   ;If the result is not 0
	GOTO	$ + 2	;Then go two lines down
	BCF GPIO, GP1	;Else reset the GP1 pin
	CALL	DELAY	;and call the delay subroutine
	DECFSZ	i, F	;Decrement the i and check if the result is 0
	GOTO	INT_LOOP    ;If not, return to the internal PWM loop start
	DECF	limit, F	;otherwise change the PWM limit
	GOTO	LOOP	;and return to the main loop
	
DELAY	;Start DELAY subroutine here
	MOVLW	10  ;Load initial value for the delay
	MOVWF	j   ;Copy the value to j
DELAY_LOOP  ;Start delay loop
	DECFSZ	j, F	;Decrement j and check if it is not zero
	GOTO	DELAY_LOOP  ;If not, then go to the DELAY_LOOP label
	RETLW	0   ;Else return from the subroutine
	
END

