assume cs:code,ds:data,es:extra

data segment
	src dd 11001100h;
	dest dd 11110000h;
	res dw 0000h;
	len db 04h;
data ends

extra segment
extra ends

code segment
        org 0100h
start:
	mov ax, data
	mov bx, 2000h
	mov ds, ax
	mov es, ax
	mov si, OFFSET src
	mov di, OFFSET dest
	cld
	mov ch, 00h
	mov cl, len
	repe cmpsb
	mov res, cx
	mov ah, 4ch
	int 21h

code ends
end start
	
	
	