;Decimal to Octal Conversion  
;Submitted By : Shiam Prodhan --- ID : 181014123  
include 'emu8086.inc'  

printn 'Decimal to Octal Conversion'
printn '---------------------------'
printn
printn
 
print 'Enter the decimal number : '
mov ah,01h       ; getting input from user
int 21h

sub al, '0' ; subraction
mov bx, 0 ; initializing bx to 0

printn
printn
print 'The number in Octal : '

Checkpoint:
mov ah,0
mov dl,8
div dl ;   al = ax/dl, ah = ax%al 

mov dl,al ; moving al (qoutient) to dl     
mov al,ah
mov ah,0
push ax ; pushing al/ah to the stack

mov al,dl
inc bx
cmp al,0
je check
loop Checkpoint

check:
mov cx,bx

function:
pop dx     ; popping the stack element
add dx,'0'
mov ah,02h
int 21h
loop function

mov ax, 4c00h
int 21h
ret



 
