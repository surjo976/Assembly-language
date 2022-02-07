;How to multiply two 8 bit data in assembelly language.
                   
.model small
.stack 100h
.data
text1 db "Enter The First Number : $"
text2 db 10,13,"Enter The Second Number : $"
text3 db 10,13,"The Subtraction is : $"
num1 db ?
num2 db ?

.code
main proc
    mov ax,@data
    mov ds,ax    
      
      
    mov ah,9
    lea dx,text1
    int 21h
    
    ;Taking First Input
    mov ah,1
    int 21h         
    mov num1,al        ;If we enter two. thats mean the value of bl is 50. when we print bl then it's return the corosponding value or ascii value 50 and that is 2.
    sub num1,48        ;For multiplication we need the value in ascii. means we need 2 in ascii that's why we substrat 48 from that.
      
      
    mov ah,9
    lea dx,text2
    int 21h
    
    ;Taking Second Input
    mov ah,1
    int 21h
    mov num2,al
    sub num2,48
        
        
    mov ah,9
    lea dx,text3
    int 21h
    
    ;Calculation.
    mov al,num1
    mul num2          ;Means MUL al,num2    ;al = al*num2, and num1 store in al. that's mean al = num1*num2
    add al,48         ;because here we multiply only through ascii value. not with the real vlue. That's why for ral value output we must add 48 before print.
       
       
    ;Printing The Output     
    mov ah,2
    mov dl,al        ;Printing the value of bl register. where we have the answer. The answer is in the al register.
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main