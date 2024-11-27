%include 'in_out.asm'

SECTION .data
enterStroke DB 'Введите строку: ',0h

SECTION .bss
buf1: RESB 80

SECTION .text
 GLOBAL _start
  _start:

 mov eax, enterStroke
 call sprint

 mov ecx, buf1
 mov edx, 80

 call sread

 call quit

