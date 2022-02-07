.model small
.stack 100h
.data 
a db "This is first statement.$"
b db 10,13,"This is second statement,$"
c db 10,13,"This is third statement.$"
.code
usingJump proc    
    mov ax,@data
    mov ds,ax 
    
    jmp state2       ;For this first we are going to state2 lebel then it going to state 1 lebel then it will go to exit.
    
    state1:          ;This is a lebel.
    mov ah,9         ;Here we print the statement.
    lea dx,a
    int 21h
    jmp exit         ;This take us to exit lebel.
    
    state2:
    mov ah,9
    lea dx,b
    int 21h
    jmp state1       ;This take us to state1 lebel.
    
    state3:
    mov ah,9
    lea dx,c
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    usingJump endp
end usingJump