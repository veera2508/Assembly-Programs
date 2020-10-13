assume cs:code,ds:data,es:extra

data segment
	src dd 11221111h;
	res dw 0000h;
	len db 04h;
data ends

extra segment
extra ends

code segment
        org 0100h
start:
	mov ax, data
	mov ds, ax
	mov es, ax
	mov si, OFFSET src
	mov al, 22h
	cld
	mov ch, 00h
	mov cl, len
	repne scasb
	mov res, cx
	mov ah, 4ch
	int 21h

code ends
end start
	