include 'emu8086.inc'  
org 100h 
MOV ah, 01H                     
INT 21H 
CMP al,'a'                        
JE Check                                                     
CMP al,'e'                        
JE Check                     
CMP al,'i'                        
JE Check                      
CMP al,'o'                        
JE Check                     
CMP al,'u'                        
JE Check                        
                     
JNE Check1                      

 

Check1:           
    MOV dl, al
    MOV ah,2h           
    INT 21H
    RET

Check:
    MOV dl, 'v'
    MOV ah,2h         
    INT 21H 
    RET








 
