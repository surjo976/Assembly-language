;Get three values or three strings and display them using jump condition in assembly language.

.model small
.stack 100h
.data 
a db 10,13,"I love My country. $"
b db 10,13,"My Name is Tonmay Sen, $"
c db 10,13,"Thak You. $"
.code
Jump proc    
    mov ax,@data
    mov ds,ax 
    
    jmp state3       
    
    state1:          
    mov ah,9         
    lea dx,a
    int 21h
    jmp exit         
    
    state2:
    mov ah,9
    lea dx,b
    int 21h
    jmp state1       
    
    state3:
    mov ah,9
    lea dx,c
    int 21h
    jmp state1         
    
    exit:
    mov ah,4ch
    int 21h
    Jump endp
end Jump