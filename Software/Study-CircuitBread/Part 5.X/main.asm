#include "p10f200.inc"

;CONFIG
    __CONFIG _WDT_OFF & _CP_OFF & _MCLRE_OFF
    ORG 0x0000
    
INIT	;Initializing the microcontroller
    MOVLW ~(1 << GP1)	;Set GP1 as OUTPUT
    TRIS GPIO	;Load into GPIO Register
    BSF GPIO, GP1;  Set the value of GP to be HIGH
    
LOOP
    GOTO LOOP
    
END ;End of program

