; Display (F to X) alphabet in assembly language.

.model small 
.stack 100h  
.data
var1 db 'Loop Content : $'
.code
looping proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,var1
    int 21h
    
    
              
    mov cx,19           ;looping   
    mov ah,2
    mov dl,"F"      
    
    state1:          
    int 21h
    inc dl         
    loop state1      
    
          
    exit:
    mov ah,4ch
    int 21h
    looping endp
end looping




