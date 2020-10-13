code segment
	assume cs:code,ds:code
	mov bx, 2000h
	mov ax, [bx]
	mov cx, [bx]+02h
	mul cx
	mov [bx] + 04h, dh
	mov [bx] + 05h, dl
	mov [bx] + 06h, ah
	mov [bx] + 07h, al
	mov ah, 4ch
	int 21h
code ends
end