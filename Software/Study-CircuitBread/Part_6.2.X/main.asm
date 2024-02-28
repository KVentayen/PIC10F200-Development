#include "p10f200.inc"
    
;CONFIG
    __CONFIG _WDT_OFF & _CP_OFF & _MCLRE_OFF
    ORG 0x0000
    
INIT
    MOVLW   ~(1 << T0CS)	;Enable GPIO2
    OPTION
    MOVLW   ~(1 << GP2)	;Set GP2 as an outpt
    TRIS GPIO
    
LOOP	;This is the Main Subroutine
    BSF GPIO, GP2   ;Set GP2 to 1 (Logic Level HIGH)
    CALL DELAY	;Call DELAY Subroutine
    BCF GPIO, GP2   ;Reset GP2 to 0 (Logic Level LOW)
    CALL DELAY	;Call DELAY Subroutine
    GOTO LOOP
    
DELAY	;This is used to Delay the Program
    MOVLW D'162'    ;Load Value for the Delay (Decimal 162)
    MOVWF 10	;Copy the value to the register 0x10
    MOVWF 11	;Copy the value to the register 0x11
DELAY_LOOP  ;Start delay loop
    DECFSZ 10, F    ;Decrement the register 0x10 and check if not zero
    GOTO DELAY_LOOP ;If not then go to the DELAY_LOOP label
    DECFSZ 11, F    ;Else decrement the register 0x11, check if it is not 0
    GOTO DELAY_LOOP ;If not then go to the DELAY_LOOP label
    RETLW 0 ;Else return from the subroutine
    
END
    




