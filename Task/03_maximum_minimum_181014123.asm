;Finding Minimum and Maximum Number  
;Submitted By : Shiam Prodhan --- ID : 181014123    
                                         
                                         
include 'emu8086.inc'            
printn 'FINDING MINIMUM'
printn '---------------'
printn
printn
print 'How many numbers you want to check : '
mov ah,1h
int 21h ; getting input from user

printn 
printn
print 'Enter Numbers : '
mov dx,ax ;moving the input elements to dx
mov cl,al ; moving al to cl
sub cl,'0' ; subtraction
mov bx,0 ; initializing bx to 0

Checkpoint1:
mov ah,1h ; getting more inputs from user
int 21h
mov [bx],ax ; loop
print ' '
inc bx ; increment of bx
dec cl ; decrement of cl
cmp cl,0 ;comparing if cl is 0
jne Checkpoint1 ; jump to Checkpoint1 if cl is not equal zero  



mov ax,dx ; moving dx to ax and keep no item in ax
sub ax,'0'    ;subtracting
mov cl,al ; moving al to cl
mov bx,0 ; initializing bx to 0
mov dl,[bx]

Checkpoint2:
mov al,[bx]
cmp al,dl ; comparing between al and dl
jl task1 ; jump to task1 if dl is less than al
jge function1 ; jump to function2 if dl is greater than or equal al

             
task1:
mov dl,al ; moving al to dl

function1:
inc bx ; increment bx
loop Checkpoint2 ; loop

printn
printn
print 'MINIMUM NUMBER : '    

mov ah,2h
int 21h
           

printn
printn 
printn
printn '---------------'
printn 'FINDING MAXIMUM'
printn '---------------'
printn
printn
print 'How many numbers you want to check : '
mov ah,1h
int 21h ; getting input from user

printn  
printn
print 'Enter Numbers : '
mov dx,ax ;moving the input elements to dx
mov cl,al ; moving al to cl
sub cl,'0' ; subtraction
mov bx,0 ; initializing bx to 0

Checkpoint3:
mov ah,1h ; getting more inputs from user
int 21h
mov [bx],ax ; loop
print ' '
inc bx ; increment of bx
dec cl ; decrement of cl
cmp cl,0 ;comparing if cl is 0
jne Checkpoint3 ; jump to Checkpoint1 if cl is not equal zero  



mov ax,dx ; moving dx to ax and keep no item in ax
sub ax,'0'    ;subtracting
mov cl,al ; moving al to cl
mov bx,0 ; initializing bx to 0
mov dl,[bx]

Checkpoint4:
mov al,[bx]
cmp al,dl ; comparing between al and dl
jg task2 ; jump to task2 if dl is greater than al
jle function2 ; jump to function2 if dl is less than or equal al

             
task2:
mov dl,al ; moving al to dl

function2:
inc bx ; increment bx
loop Checkpoint4 ; loop

printn
printn
print 'MAXIMUM NUMBER : '
mov ah,2h
int 21h           
           
mov ax, 4c00h
int 21h
 