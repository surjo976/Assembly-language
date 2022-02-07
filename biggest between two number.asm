;How to find the biggest number  between two values ?

.model small
.stack 100h

.data

a db "Enter The Two Values : $"
b db 10,13, "The Largest Number Is : $"

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1      ;1st input
    int 21h          
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    mov ah,1       ;2nd input
    int 21h
    mov bh,al
    
    
    biggest:
    cmp bl,bh        ;compare two number
    jg l1            ;jg=jump greatest  , jl= jump lowest
    jmp l2
    
    
    l2:
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit           ;print bh as grater number and jump exit
    
    l1: 
     mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit       ;print bl as grater number and jump exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main