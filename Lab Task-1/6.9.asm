
.MODEL SMALL

.STACK 1000H

.DATA 

C DW " CHARACTERS$"

.CODE

MAIN PROC 
    
    MOV AX,@DATA
    
    MOV DS,AX

    
    MOV DX,0 
    
    
    WHILE: 
    
    MOV AH,1
    
    INT 21H
    
    CMP AL,0DH
    
    
    JE COUNT
    
    INC DX
    
    JMP WHILE 
    
    
    COUNT:
    
    ADD DX,48
    
    MOV AH,2 
         
    INT 21H 
    
    
    MOV AH,9
    
    LEA DX,C
    
    INT 21H
     
    
    END_IF:
    
    MOV AH,4CH
    
    INT 21H

    
    MAIN ENDP

END MAIN
    


