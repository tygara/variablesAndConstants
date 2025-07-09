    ; 1.) Assign 10 to the variable var1
    ; 2.) Assign 15 to the variable var2
    ; 3.) Add var1 and var2 and save them into the result variable
 
  section .bss
    result resd 1       ; reserver 1 doubleword (4bytes)

  section .data
    var1 dd 10          ; initalize var1 & 2 as doublewords with values 10,15
    var2 dd 15

section .text
        global _start

_start:

main_body:              ; section names used as breakpoints

  mov eax, [var1]       ; we move the VALUE stored at the address var1 into eax
  mov ebx, [var2]       ; same thing as above using the ebx register
  add eax, ebx          ; adds value in ebx to eax and stores in eax
  mov [result], eax

exit_program:           ; breakpoint

  mov eax,1             ; syscall: exit
  ; not included in your code this line is used to set ebx back to 0 (exit code)
  xor ebx, ebx            
  int 0x80



