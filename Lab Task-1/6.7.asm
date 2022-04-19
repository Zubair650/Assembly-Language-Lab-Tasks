
.MODEL SMALL

.STACK 1000H


.CODE

MAIN PROC

    
    MOV AH,1
    
    INT 21H 
          
    
    CMP AL,'Y' 
    
    JE EQUAL
    
    
    CMP AL,'y'
    
    JNE END_IF
    
    JE EQUAL
    
    
    EQUAL:
    
    MOV DL,AL
    
    MOV AH,2
    
    INT 21H

    
    END_IF:
    
    MOV AH,4CH
    
    INT 21H

    
    MAIN ENDP

END MAIN
    
    
    
    
    