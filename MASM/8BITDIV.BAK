
;Program for adding 2, 8 bit numbers

assume cs:code,ds:data
data segment
	opr1 db 11h
        opr2 db 99h
        result1 db 00h
        result2 db 00h
data ends
code segment
        org 0100h
start:  mov ax,data
        mov ds,ax

        mov al,opr1
        mov ah,00h
        mov bl,opr2
	mul bl
        mov result1,ah
        mov result2,al
        mov ah,4ch
        int 21h
	code ends
end start
