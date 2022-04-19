.MODEL SMALL  

.STACK 100H

.CODE

MAIN PROC

    MOV BL,80H 
    
    MOV CL,0 
    
    FIRST:
    
        CMP CL,10 
        
        JE NEW_LINE
     
        INC CL
     
        MOV AH,2 
        
        MOV DL,BL 
        
        INT 21H
        
        INC BL
     
        CMP BL,0FFH 
        
        JE END_IF
     
        JMP FIRST 
        
    NEW_LINE: 
         
        ;NEWLINE 
    
        MOV AH,2
        
        MOV DL,0AH
        
        INT 21H
        
        MOV DL,0DH
        
        INT 21H 
        
        
        MOV CL,0 
        
        JMP FIRST 
        
        
    END_IF:
 
    MOV AH,4CH 
    
    INT 21H
         
    MAIN ENDP

END MAIN