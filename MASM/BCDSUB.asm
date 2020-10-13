assume cs:code, ds: data

data segment
	opr1 db ?
	opr2 db ?
	carry db ?
	res db ?
data ends

code segment
	org 0100h
start:
	mov ax, data
	mov ds, ax

	mov al, opr1
	mov bl, opr2
	mov cl, 00h

	sub al, bl
	das

	jnc here
	mov bl, al
	mov al, 99h
	sub al, bl
	add al, 01h
	daa

	inc cl

here:
	mov res, al
	mov carry, cl

	mov ah, 4ch
	int 21h

code ends
end start