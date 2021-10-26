
;Write an assembly language code that will take 3 numbers(0 to 9) 
;from the user and store the sum in a variable.
 

ORG 0100H
.model small           ;it tell us that there is a small model of code
.stack 100h            ;memory size

.DATA                  ;data segment
OUTPUT DW ?            ;output is ?

.CODE                  ;code segment
MAIN PROC              ;main procedure 
    MOV AX, @data      ;data segment initialization in AX register
    MOV DS, AX         ;transfer value from AX to DS
            
    MOV AH, 01h	       ;input key function
    Int 21h		       ;initialize the input    
    MOV BL, AL         ;Moving input to BL
    SUB BL, 48         ;convert ch to number
    XOR BH, BH         ;removing previous values from register 
    MOV OUTPUT, BX     ;putting the value from BX to OUTPUT
    
    
    MOV AH, 01h	       ;2ND
    Int 21h		       
    MOV BL, AL       
    SUB BL, 48
     XOR BH, BH
    ADD OUTPUT, BX
    
   
    
    MOV AH, 01h	       ;3RD
    Int 21h		       
    MOV BL, AL      
    SUB BL, 48
     XOR BH, BH
    ADD OUTPUT, BX

	
    MAIN ENDP          ;end procedure
END MAIN
RET