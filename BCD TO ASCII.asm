Assume cs:code
code segment
start:
mov al,54h
mov ah,al
and al,0fh
mov cl,4h
ror ah,cl
and ah,0fh
add ax,3030h
hlt
code ends
end start
