
.MODEL SMALL

.STACK 1000H 

.CODE  

MAIN PROC
    
    MOV AL,10100110B
    
    MOV BL,AL
    
    OR BL,00000001B
    
    MOV CX,8
    
    
   PRINT: 
   
       MOV AH,2
       
       MOV DL,'0'
       
       TEST BL,10000000B
       
       JZ ZERO
       
       MOV DL,'1'
   
   ZERO:
   
        INT 21H
        
   SHL BL,1
   
   LOOP PRINT 
   
   MOV DL,'B'
   
   INT 21H
   
   MAIN ENDP

   END MAIN
        
        
   
   
