; Boot1.asm
;   - A simple bootloader
; Operating systems development tutorial

org     0x7c00          ; we are loaded by BIOS at 0x7c00
bits    16              ; we are still in 16 bit Real Mode
Start:
    cli                 ; clear all interupts
    hlt                 ; halt the system

times 510 - ($-$$) db 0 ; we have to be 512 bytes,
                        ; clear the rest of the bytes with 0

dw 0xAA55               ; boot signature
