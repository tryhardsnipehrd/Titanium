; Function for printing all characters in a string
; Calling convention is first arg into bx, then onto the stack in reverse order

; args["one", "two", "three"]
; mov 	bx, "one"
; push	"three"
; push 	"two"

; Assume all registers will be destroyed

;--------------------------
; Print the string passed
;--------------------------

TH_PrintStr:
	mov 	ah, 0x0e
_TH_PrintStrChar:
	mov		al, [bx]
	int		0x10
	add		bx, 1
	cmp		byte [bx], 0x00
	jne		_TH_PrintStrChar
	ret


