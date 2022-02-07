.model small 
.stack 100h  
.data
var1 db 'Loop Content : $'
.code
loopingAndBeepSound proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,var1
    int 21h
    
    
    ;Loop          
    mov cx,26       ;cx register is used for loop/shift/rotet.
    mov ah,2
    mov dl,"A"      ;This A is an ASCI value.
    
    level:          ;This level is always repeat.
    int 21h
    inc dl          ;This is increment the value of dl register.
    loop level      ;That means this level are repeted 26 time.
    
    
    ;Beep Sound
    mov ah,2
    mov dl,7        ;This 07 mean's the beep sound in ASCI.
    int 21h
    int 21h
              
              
    exit:
    mov ah,4ch
    int 21h
    loopingAndBeepSound endp
end loopingAndBeepSound