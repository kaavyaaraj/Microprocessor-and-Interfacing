DATASEG SEGMENT
ARRAY DB 11,13,15,17,19,21,23,25,27,29
DATASEG ENDS
CODESEG SEGMENT
ASSUME CS:CODESEG,DS:DATASEG
START:
MOV CX ,0AH
MOV AX,DATASEG
MOV DS,AX
MOV AL,0H
MOV BL,0AH
RPT:
ADD AL,ARRAY[SI]
INC SI
LOOP RPT
MOV AH,0H
DIV BL
HLT
CODESEG ENDS
END START
END
