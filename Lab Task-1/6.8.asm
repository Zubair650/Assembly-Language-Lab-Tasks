
.MODEL SMALL

.STACK 1000H

.DATA

.CODE

MAIN PROC

    
    MOV CX,80
    
    LOOP_: 
    
    
    DEC CX
    
    MOV AH,2 
    
    MOV DX,'*'
         
    INT 21H
    
    JNZ LOOP_ 
    
     
    
    END_IF:
    
    MOV AH,4CH
    
    INT 21H

    
    MAIN ENDP

END MAIN
    
    
    
    
    