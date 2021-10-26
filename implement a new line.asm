
;Write an assembly language code to implement a new line.

ORG 0100H
.model small            ;it tell us that there is a small model of code
.stack 100h             ;memory size
.DATA                   ;data segment

.CODE
MAIN PROC               ;main procedure 
    MOV AX, @data       ;data segment initialization
    MOV DS, AX          ;transfer the value from AX to DS
            
    MOV AH, 01h	        ;calling the input value
    INT 21h		        ;initialization
    MOV BL, AL          ;put the input from AL to BL
    
    MOV AH, 02H         
    MOV DL, 10
    INT 21h             ;initialize the AH register and print new line
    MOV DL, 13
    INT 21h             ;initialize the DL value
   
	MOV AH, 02h 	    ;calling output
    MOV DL, BL		
    INT 21h 		    ;initialize AH register

	      
	MOV AH, 4ch         ;to exit DOS
	INT 21h
	
    MAIN ENDP           ;end procedure
END MAIN
RET

