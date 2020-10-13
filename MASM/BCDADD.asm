assume cs:code, ds:data
data segment
	opr1 db 45h
	opr2 db 82h
	result db 00h
	carry db 00h
data ends

code segment
	org 0100h
start:	mov ax, data
	mov ds, ax
	mov al, opr1
	mov bl, opr2
	mov cl, 00h
	add al, bl
	daa
	jnc here
	inc cl
here:	mov result, al
	mov carry, cl
	mov ah, 4ch
	int 21h
	code ends
end start