
;Calculate the square of any number.

ORG 0100h

.DATA                ;data section
OUTPUT DW ?          ;output is ?

.CODE                ;code section
MAIN PROC            ;main procedure
    XOR AX, AX       ;removing previous values from AX register
    MOV AL, 13       ;pitting 13 in AL register
    XOR BX, BX       ;removing previous values from BX register
    MOV BX, AX       ;transfer values from AX to BX
    
    MUL BX           ;multiplying BX with AX
    
    
    MOV OUTPUT, AX   ;moving result from AX to OUtput
    MAIN ENDP        ;end procedure
END MAIN
RET