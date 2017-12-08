global loader				; Symbol for elf

MAGIC_NUMBER 	equ 	0x1BADB002	; Number for grub multiboot specification
FLAGS 		equ	0x0		; multiboot flags
CHECKSUM	equ	-MAGIC_NUMBER	; magic_num+checksum+flags must be 0x0

section .text:
align 4					; Must be 4 byte aligned
	dd MAGIC_NUMBER			
	dd FLAGS			
	dd CHECKSUM

loader:
	mov eax, 0xCAFEBABE		
.loop:
	jmp .loop			; loop forever

