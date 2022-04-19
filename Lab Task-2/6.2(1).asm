

.MODEL SMALL

.STACK 1000H 
 
.DATA 

E DW 0AH,0DH,"THE 49TH NUMBER: $" 



.CODE 



MOV CX,49

MOV BX,1



LOOPING:  

MOV AX,@DATA

MOV DS,AX


;MOV AH,2 
;
;INT 21H
;

ADD BX,4

DEC CX  


JNZ LOOPING   

JZ PRINT


PRINT:

MOV AH,9

INT 21H

MOV DX,E
 


MOV AH,2 

MOV DX,BX

INT 21H



MOV AH,4CH

INT 21H 
                      
                      



