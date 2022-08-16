;
;	A simple boot sector
;

mov 	bp, 0x8000		; Set stack above Boot

[org	0x7c00]

mov 	bx, OS_BOOT_MSG
call 	TH_PrintStr

mov 	bx, DEBUG_MSG
call 	TH_PrintStr



jmp $ 	; Jump to current address
	



%include "text_functions.asm" 	; Will replace this line with the file

%include "system_messages.asm"

times 510-($-$$) db 0		; Pad 512 bytes of the boot sector
dw 0xaa55 					; Magic number that tells BIOS to boot

