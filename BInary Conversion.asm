
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.MODEL SMALL

.STACK 1000H 

.CODE  

MAIN PROC
    
XOR BX,BX

MOV AH,1

INT 21H 

MOV CX,16

WHILE:  

    ;DEC CX

    CMP AL,0DH
    
    JE END_WHILE   
    
    AND AL,0FH 
    
    SHL BX,1 
    
    OR BL,AL 
    
    INT 21H  
    
    
    
    JMP WHILE
    
END_WHILE:
    
   
       MOV AH,2
       
       MOV DX,'0'
       
       TEST BX,1000000000000000B
       
       JZ ZERO
       
       MOV DX,'1'
   
   ZERO:
   
        INT 21H
        
   SHL BX,1
   
   LOOP END_WHILE 
   
   MOV DX,'B'

MAIN ENDP

   END MAIN




