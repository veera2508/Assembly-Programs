assume cs:code,ds:data,es:extra

data segment
	src dd 11223344h;
	len db 04h;
data ends

extra segment
	dest dd 00000000h;
extra ends

code segment
        org 0100h
start:  mov ax,data
        mov ds,ax

        mov ax, extra
        mov es, ax

        mov si, OFFSET src
        mov di, OFFSET dest

        mov ch, 00h

        mov cl, len

        rep movsb
        
    mov ah,4ch
    int 21h

code ends
end start
