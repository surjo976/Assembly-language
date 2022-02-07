.model small
.stack 100h
.data
num1 db 5            ;Declaring and intialized the variable.
num2 db ?            ;Declaring varible called num2. But we are not initialize this variable, we are thaking this variable value from user.
.code
displayOutput proc 
    
    mov ax,@data     ;Calling data segment.
    mov ds,ax
    
    ;Showing Single Charecter Output.
    mov ah,2
    mov dl,num1      ;Here We Use dl because num1 is single charecter not a string. When we are showing the variable value or calculated value which we intialized in to the code. Then it's come with the ascii value. That's why we add 48 to make normal value.
    add dl,48        ;For converting from Ascii Value or Ascii Code. We add with dl because in dl we has the value of num1.
    int 21h
    
    ;For New Line 
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;Taking Input Into The variable.
    mov ah,1         ;For Taking Input.
    int 21h
    mov num2,al      ;Input value store into num2 variable. Which value we are not assign or intialized.
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;Showing Output Of user given data.
    mov ah,2
    mov dl,num2
    int 21h
     
    Exit:
    mov ah,4ch
    int 21h
    displayOutput endp
end displayOutput