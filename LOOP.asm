
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV CX,10

TOP: 

MOV AH,2 

MOV DX,"*"

INT 21H  

LOOP TOP

ret




