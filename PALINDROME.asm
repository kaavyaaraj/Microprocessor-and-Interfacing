DATA SEGMENT
PROMPT1 DB "ENTER THE STRING",10,13,'$'
PROMPT2 DB "STRING IS PALINDROME",10,13,'$'
PROMPT3 DB "STRING IS NOT PALINDROME",10,13,'$'
STR DB 10H DUP('$')
LENG DW ?
DATA ENDS
EXTRA SEGMENT
REVSTR DB 10H
EXTRA ENDS
CODE SEGMENT
ASSUME CS:CODE,DS:DATA,ES:EXTRA
START:
MOV AX,DATA
MOV DS,AX
MOV AX,EXTRA
MOV ES,AX
MOV AH,09
LEA DX,PROMPT1
INT 21H
MOV AH,0AH
LEA DX,STR
INT 21H
LEA SI,STR 
INC SI
MOV CL,[SI]
MOV BL,CL
MOV CH,0
INC SI
LEA DI,REVSTR
ADD DI,CX
DEC DI
BACK:CLD
LODSB
STD
STOSB
LOOP BACK
LEA SI,STR
INC SI
INC SI
LEA DI,REVSTR
MOV CL,BL
MOV CH,0
CLD
REPE CMPSB
JNZ NO
MOV AH,09
LEA DX,PROMPT2
INT 21H
JMP SKIP
NO:MOV AH,09
LEA DX,PROMPT3
INT 21H
SKIP:
MOV AH,4CH
INT 21H
HLT
CODE ENDS
END START
