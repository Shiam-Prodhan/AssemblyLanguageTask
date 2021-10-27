;Check whether a number is Divisible by 2 or not
;Submitted By : Shiam Prodhan --- ID : 181014123


include 'emu8086.inc'
 
mov bx,0    ; initializing bx to 0
mov ax,0    ; initializing ax to 0  
printn 'DIVISBLE BY 2 OR NOT'
printn '--------------------'
printn
printn

print 'Enter Number : '

Checkpoint:
mov ah,1h ; getting input
int 21h

cmp al,13   ; ascii valur of enter is 13
je Check ; jump to check if al is equal 13

sub al,'0'
mov [bx],ax
inc bx
loop Checkpoint

Check:
dec bx
mov al,[bx]
  
cmp al,8             ; check if the last digit is 8
je function            ;jump to function if the last digit is 8
cmp al,6            ; check if the last digit is 6
je function            ;jump to function if the last digit is 6
cmp al,4            ; check if the last digit is 4
je function            ;jump to function if the last digit is 4
cmp al,2            ; check if the last digit is 2
je function            ;jump to function if the last digit is 2
cmp al,0            ; check if the last digit is 0
je function            ;jump to function if the last digit is 0
        
      
printn 
printn
printn 'The number is Not divisble by 2'
ret

function: 
printn
printn
printn 'The number is Divisble by 2'
ret
