include Irvine32.inc
.data
star byte"*",0 lav1 dword 0,0
num dword 0,0
lav2 dword 0,0
lav3  dword "1"
.code 
main proc
sub ecx,ecx 
mov ecx,1
mov edx,offset lav3 
call writestring
.while ecx<=9
mov lav1,2
.while lav1<=ecx 
mov eax,ecx
call writedec 
call writedec 
inc lav1
.endw 
call crlf 
mov lav2,1
mov ebx,ecx 
add ebx,1
.while lav2<=ebx
mov edx, offset star 
call writestring
inc lav2
.endw

call crlf 
inc ecx 
inc ecx
.endw
call waitmsg 
exit
main endp
end main
