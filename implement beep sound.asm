
;Write an assembly language code to implement beep sound.

ORG 0100H
.model small          ;it tell us that there is a small model of code
.stack 100h           ;memory size
.DATA                 ;data segment

.CODE                 ;code segment
MAIN PROC             ;main procedure
    
    MOV AH, 02H
    MOV DL, 07        ;call the beep sound function
    INT 21h           ;initialize the DL register
    
	
    MAIN ENDP         ;end procedure
END MAIN
RET

