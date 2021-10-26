
;Write an assembly language code that will take a number from 
;the user and print the same number as output.

;input-output implementation  

ORG 0100H
.model small           ;It tell us that there is a small code model
.stack 100h            ;memory size
.DATA                  ;data segment

.CODE                  ;code segment
MAIN PROC              ;main procedure
    MOV AX, @data      ;by default data will be save in AX register
    MOV DS, AX         ;puting the data from AX to DS
            
    MOV AH, 01h	       ;calling the input funchtion
    Int 21h		       ;initialize the input
    MOV BL, AL         ;assign the input from AL to BL registers
       
   
	MOV AH, 02h 	   ;calling the output funchtion
    MOV DL, BL		   ;transfer the value from BL to DL
    INT 21h 		   ;initialize the output

	      
	MOV AH, 4ch        ;store the value 4C into register AH
	INT 21h            ;initialize the value
	
    MAIN ENDP          ;end procedure
END MAIN
RET
