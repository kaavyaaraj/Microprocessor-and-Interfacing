ASSUME CS:CODE,DS:DATA
DATA SEGMENT
ORG 2000H
NUM DB 54H
RESULT DB ?
DATA ENDS
CODE SEGMENT
START:
MOV AX,DATA
MOV DS,AX
MOV BL,NUM
AND BL,0FH
MOV AL,NUM
AND AL,0F0H
MOV CL,04
ROR AL,CL
MOV DL,0AH
MUL DL
ADD AL,BL
MOV RESULT,AL
HLT
CODE ENDS
END START
