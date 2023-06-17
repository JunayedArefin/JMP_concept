.model small
.stack 100h
.data
a db ‘Jmp concept $’
b db ‘Assembly language $’
c db ‘Programming $’
.code

Main proc
	mov ax,@data
	mov ds,ax

	mov ah,9
	lea dx,a
	int 21h

	mov ah,2
	mov dl,10
	int 21h
	mov dl,13
	int 21h

	level1:
	mov ah,9
	lea dx,b
	int 21h
	jmp level2

	level2:
	mov ah,9
	lea dx,c
	int 21h
	jmp exit

	exit:
	mov ah,4ch
	int 21h
	main endp
end main
