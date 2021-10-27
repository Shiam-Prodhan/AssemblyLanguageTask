;Converting string lowercase to uppercase and vice versa 

;Submitted By : Shiam Prodhan --- ID : 181014123    

include 'emu8086.inc'   
printn 'LOWERCASE TO UPPERCASE'  
printn '----------------------'
printn

print 'Enter the length of the lower string: '
mov ah,1h
int 21h       ; take length from user
printn     
printn

print "Enter the lower string : "
mov cl,al  ; moving the input to cl from al
sub cl,'0' ;subtracting
mov dl,cl  ;moving cl to dl
mov bx,0

input:
mov ah,1h
int 21h     ;getting another input
mov [bx],ax   ;loop
inc bx      ;increment of bx
dec cl      ;decrement of cl
cmp cl,0    ;comparing if CL is 0
jne input   ; jumping to input if CL is not equal 0
printn

mov cl,dl ; moving DL to CL
mov bx,0    ; Initializing BX as 0
        
printn
print 'OUTPUT : '
output:
mov dl,[bx]   ; moving BX to DL
cmp dl,'a'    ; comparing if DL is equal to a
jge check1    ; jumping to Checkpoint01 if DL is not equal a 
cmp dl,0
jge check2   ; jumping to Checkpoint02 if DL is greater or equal 0

check1:
cmp dl,'z'
jle task     ;     jumping to task if DL is less or equal z

task:
sub dl,32

check2:
mov ah,2h
int 21h
inc bx
dec cl
cmp cl,0
jne output
printn
printn    
printn
printn

printn 'UPPERCASE TO LOWERCASE'  
printn '----------------------'
printn

print 'Enter the length of the upper string: '
mov ah,1h
int 21h       ; take length from user
printn     
printn

print "Enter the upper string : "
mov cl,al  ; moving the input to cl from al
sub cl,'0' ;subtracting
mov dl,cl  ;moving cl to dl
mov bx,0

input1:
mov ah,1h
int 21h     ;getting another input
mov [bx],ax   ;loop
inc bx      ;increment of bx
dec cl      ;decrement of cl
cmp cl,0    ;comparing if CL is 0
jne input1   ; jumping to input if CL is not equal 0
printn

mov cl,dl ; moving DL to CL
mov bx,0    ; Initializing BX as 0
        
printn
print 'OUTPUT : '
output1:
mov dl,[bx]   ; moving BX to DL
cmp dl,'A'    ; comparing if DL is equal to a
jge check3    ; jumping to Checkpoint01 if DL is not equal A 
cmp dl,0
jge check4   ; jumping to Checkpoint02 if DL is greater or equal 0

check3:
cmp dl,'Z'
jle task1     ;     jumping to task1 if DL is less or equal Z

task1:
add dl,32

check4:
mov ah,2h
int 21h
inc bx
dec cl
cmp cl,0
jne output1
printn

mov ax, 4c00h
int 21h

ret