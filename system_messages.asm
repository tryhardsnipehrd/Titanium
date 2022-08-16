; File to hold any system messages we have

OS_BOOT_MSG:
	db 	"Booting into TryhardOS! Please wait!", 0x0A, 0x0D, 0x00
	
DEBUG_MSG:
	db "Testing that this all works!", 0x0A, 0x0D, 0x00