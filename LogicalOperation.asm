.model small
.stack 100h        

.data
andText db 'Value Of And Operation : $' 
orText db 10,13,'Value Of OR Operation : $'
xorText db 10,13,'Value Of X-OR Operation : $'
                 
.code
logicalOperation proc 
    
    ;Initializ The Data Section
    mov ax,@data
    mov ds,ax
        
        
    and1: 
    ;Showing The Variable
    mov ah,9
    lea dx,andText
    int 21h
             
    ;Internal Operation
    mov bl,100b
    and bl,110b
    add bl,48
    
    ;Display Answer
    mov ah,2
    mov dl,bl
    int 21h 
    
     
    or1:
    mov ah,9
    lea dx,orText
    int 21h
    
    mov bl,111b
    or bl,101b
    add bl,48     
    
    mov ah,2
    mov dl,bl
    int 21h
            
    
    xor1:
    mov ah,9
    lea dx,xorText
    int 21h
    
    mov bl,100b
    xor bl,010b
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
         
         
    ;exit from the function
    exit:
    mov ah,4ch
    int 21h
    logicalOperation endp

end logicalOperation