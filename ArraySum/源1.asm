.model flat,c
.code
CalcArraySum_ proc
	push ebp
	mov ebp,esp

	mov edx,[ebp+8]
	mov ecx,[ebp+12]
	xor eax,eax

	cmp ecx,0
	jle InvalidCount

@@:	add eax,[edx]
	add edx,4
	dec ecx
	jne @B

	InvalidCount:	pop ebp
					ret
CalcArraySum_ endp

CalcArraySquares_ proc
	push ebp
	mov ebp,esp
	push ebx
	push esi
	push edi

	mov edi,[ebp+8];result
	mov esi,[ebp+12]
	mov ecx,[ebp+16]

	xor eax,eax
	cmp ecx,0
	jle Empty
	shl ecx,2
	xor ebx,ebx

@@:	mov edx,[esi+ebx]
	imul edx,edx
	mov [edi+ebx],edx
	add eax,edx
	add ebx,4
	cmp ebx,ecx
	jl @B

	Empty:	pop edi
			pop esi
			pop ebx
			pop ebp
			ret
CalcArraySquares_ endp
end