;How to onvert uper case to lower case 

.model small
.stack 100h

.data
a db "Upper Case to lower Case $"
b db 10,13, "The upper Case input is : $"
c db 10,13, "The Lower Case is : $"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
      
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1   ;input
    int 21h
    mov bl,al
     
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,2  ;output
    mov dl,bl
    add dl,32
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main





