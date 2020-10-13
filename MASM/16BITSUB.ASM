code segment
	assume cs:code,ds:code
	mov cl, 00h
	mov bx, 2000h
	mov ax, [bx]
	sub ax, [bx]+02h
	jnc skip
	neg ax
	inc ch
skip:	mov [bx] + 04h, ax
	mov [bx] + 06h, cl
	mov ah, 4ch
	int 21h
code ends
end