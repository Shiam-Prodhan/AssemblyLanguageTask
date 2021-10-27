;add SUBTRACT 
;submitted By : Shiam Prodhan --- ID : 181014123  
include 'emu8086.inc'  

org 100h 
printn '------------'
printn 'ADD SUBTRACT'
printn '------------'
printn
printn
 

print 'Enter number   : '
mov ah, 01h         ; take input in al
int 21h    
printn
printn
 
mov dl,al           ; keep al value in dl 
print 'Enter number   : ' 
mov ah, 01h         ; take another input in al
int 21h                 
printn
printn

sub dl,al            ; add TWO NUMBER

add dl,'0'            ; convert value to digit.

print 'Subtraction is : '
mov ah, 02h          ; show output
int 21h                 

printn
printn
print 'Enter number   : '
mov ah,01h
int 21h

add dl,al
sub dl,'0'    ; Subtract TWO NUMBER

printn
printn
print 'Addition is    : '
mov ah,02h
int 21h    

printn
printn
print 'Enter number   : '
mov ah,01h
int 21h

sub dl,al
add dl,'0'

printn
printn
print 'Subtraction is : '
mov ah,02h
int 21h  

printn
printn
print 'Enter number   : '
mov ah,01h
int 21h

add dl,al
sub dl,'0'

printn
printn
print 'Addition is    : '
mov ah,02h
int 21h                    
                
mov ah, 4ch             
int 21h

 
ret





 
