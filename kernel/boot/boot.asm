%macro BiosPrint 1 ; macro thing
                mov si, word %1
ch_loop:lodsb
   or al, al
   jz done
   mov ah, 0x0E
   int 0x10
   jmp ch_loop
done:
%endmacro

[ORG 0x7c00]
   xor ax, ax
   mov ds, ax
   cld

   BiosPrint msg

hang:
   jmp hang

msg   db 'DFC OS booted!', 13, 10, 0 ; message

   times 510-($-$$) db 0 ; 510 bytes
   db 0x55
   db 0xAA
