assume cs:code, ds:data
data segment
	bcdn db 00h
	resh db 00h
data ends
code segment
	org 0100h
start:	mov ax, data
	mov ds, ax
	mov al, bcdn
	mov ah, 00h
	mov bl, 10h
	div bl
	mov cl, ah
	mov ah, 00h
	mov bl, 0Ah
	mul bl
	add al, cl
	mov resh, al
	mov ah, 4ch
	int 21h
	code ends
end start
	