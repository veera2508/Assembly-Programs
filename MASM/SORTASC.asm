data segment
	arr db 98h,12h,56h,37h,01h
data ends
code segment
	assume cs:code, ds:data
start:
	mov ax, data
	mov ds, ax
	mov cl, 04h ;outerloop counter
outer:
	mov ch, 04h ;innerloop counter
	lea si, arr ;assign si to address of arr
inner:
	mov al, [si] ;first element in al
	mov dl, [si + 1] ;second element in dl
	cmp al, dl ;compare al and dl
	jc noswap ;greater then dont swap and jump
	mov bl, [si + 1] ;si + 1 to bl
	xchg [si], bl ;bl and si exchanged
	mov [si + 1], bl ;bl to si + 1
noswap:
	inc si ;got to next element
	dec ch ;decrement inner loop counter
	jnz inner ;jump to inner loop if counter not zero
	dec cl ;decrement outer loop counter
	jnz outer jump to outer loop if counter not zero
	mov ah,4ch 
	int 21h
code ends
end start


	



