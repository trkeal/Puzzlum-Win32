	.intel_syntax noprefix

.section .text
.balign 16

.globl _CLV_BUFFER_INI@12
_CLV_BUFFER_INI@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_000A:
mov dword ptr [ebp-4], 0
push 1
push dword ptr [ebp+8]
call _fb_ArrayLBound@8
mov dword ptr [ebp-4], eax
push 1
push dword ptr [ebp+8]
call _fb_ArrayUBound@8
mov dword ptr [ebp-8], eax
jmp .Lt_000D
.Lt_0010:
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_GfxImageCreate@20
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [ebp-4]
sal ecx, 2
mov ebx, dword ptr [ebp+8]
add ecx, dword ptr [ebx]
mov dword ptr [ecx], eax
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_GfxImageCreate@20
mov ecx, dword ptr [ebp+8]
add ecx, 36
mov ebx, dword ptr [ecx]
imul ebx, dword ptr [ebp-4]
sal ebx, 2
mov ecx, dword ptr [ebp+8]
add ebx, dword ptr [ecx]
mov dword ptr [ebx+4], eax
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _CLV_BUFFER_CLS@8
.Lt_000E:
inc dword ptr [ebp-4]
.Lt_000D:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .Lt_0010
.Lt_000F:
.Lt_000B:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _CLV_FONT_LOAD@16
_CLV_FONT_LOAD@16:
push ebp
mov ebp, esp
push ebx
.Lt_0011:
mov eax, dword ptr [ebp+16]
and eax, 2
je .Lt_0014
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax]
call _fb_GfxImageDestroy@4
.Lt_0014:
.Lt_0013:
mov eax, dword ptr [ebp+16]
and eax, 1
je .Lt_0016
push 0
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax]
push dword ptr [ebp+20]
call _fb_GfxBload@12
.Lt_0016:
.Lt_0015:
.Lt_0012:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _CLV_DRAW_TEXT@28
_CLV_DRAW_TEXT@28:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_0017:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
push -2147483648
push 0
push 0
push 8
push 8
call _fb_GfxImageCreate@20
mov dword ptr [ebp-28], eax
push -2147483648
push 0
push 0
push 8
push 8
call _fb_GfxImageCreate@20
mov dword ptr [ebp-32], eax
push 0
push 65535
push 2
push 4278190080
push dword ptr [_Lt_0029]
push dword ptr [_Lt_0029]
push dword ptr [_Lt_002A]
push dword ptr [_Lt_002A]
push dword ptr [ebp-28]
call _fb_GfxLine@36
push 0
push 65535
push 2
push 4294967295
push dword ptr [_Lt_0029]
push dword ptr [_Lt_0029]
push dword ptr [_Lt_002A]
push dword ptr [_Lt_002A]
push dword ptr [ebp-32]
call _fb_GfxLine@36
mov dword ptr [ebp-16], 0
push -1
push dword ptr [ebp+32]
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-40], eax
jmp .Lt_001A
.Lt_001D:
push 1
push 1
mov eax, dword ptr [ebp-16]
inc eax
push eax
push dword ptr [ebp+32]
call _fb_StrMid@12
push eax
call _fb_ASC@8
mov ebx, dword ptr [ebp+20]
add ebx, 36
imul eax, dword ptr [ebx]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 15
sal ebx, 3
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-4]
sar ebx, 4
sal ebx, 3
mov dword ptr [ebp-24], ebx
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
mov ebx, dword ptr [ebp-24]
add ebx, 7
push ebx
mov ebx, dword ptr [ebp-20]
add ebx, 7
push ebx
push dword ptr [ebp-24]
push dword ptr [ebp-20]
mov ebx, dword ptr [ebp+20]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
push dword ptr [ebx]
push dword ptr [_Lt_002A]
push dword ptr [_Lt_002A]
push dword ptr [ebp-28]
call _fb_GfxPut@56
mov dword ptr [ebp-12], 0
.Lt_0022:
mov dword ptr [ebp-8], 0
.Lt_0026:
fild dword ptr [ebp-12]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp-8]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp-28]
call _fb_GfxPoint@12
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
and eax, 16777215
test eax, eax
jne .Lt_0028
push 0
push 4
push 4294967295
fild dword ptr [ebp-12]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp-8]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp-32]
call _fb_GfxPset@24
jmp .Lt_0027
.Lt_0028:
push 0
push 4
push 4278190080
fild dword ptr [ebp-12]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp-8]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp-32]
call _fb_GfxPset@24
.Lt_0027:
.Lt_0024:
inc dword ptr [ebp-8]
.Lt_0023:
cmp dword ptr [ebp-8], 7
jle .Lt_0026
.Lt_0025:
.Lt_0020:
inc dword ptr [ebp-12]
.Lt_001F:
cmp dword ptr [ebp-12], 7
jle .Lt_0022
.Lt_0021:
mov eax, dword ptr [ebp-16]
sal eax, 3
add eax, dword ptr [ebp+24]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+28]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _CLV_DRAW_IMAGE@24
.Lt_001B:
inc dword ptr [ebp-16]
.Lt_001A:
mov eax, dword ptr [ebp-40]
cmp dword ptr [ebp-16], eax
jle .Lt_001D
.Lt_001C:
push dword ptr [ebp-28]
call _fb_GfxImageDestroy@4
push dword ptr [ebp-32]
call _fb_GfxImageDestroy@4
.Lt_0018:
pop ebx
mov esp, ebp
pop ebp
ret 28
.balign 16

.globl _CLV_BUFFER_CLS@8
_CLV_BUFFER_CLS@8:
push ebp
mov ebp, esp
push ebx
.Lt_002B:
push 0
push 65535
push 2
push 4294967295
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+12]
add ebx, 4294967295
push 0
push ebx
fild qword ptr [esp]
add esp, 8
sub esp,4
fstp dword ptr [esp]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+8]
add eax, 4294967295
push 0
push eax
fild qword ptr [esp]
add esp, 8
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_002A]
push dword ptr [_Lt_002A]
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
push dword ptr [ebx]
call _fb_GfxLine@36
push 0
push 65535
push 2
push 4278190080
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx+12]
add eax, 4294967295
push 0
push eax
fild qword ptr [esp]
add esp, 8
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [eax+8]
add ebx, 4294967295
push 0
push ebx
fild qword ptr [esp]
add esp, 8
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_002A]
push dword ptr [_Lt_002A]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
call _fb_GfxLine@36
.Lt_002C:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _CLV_BUFFER_COPY@12
_CLV_BUFFER_COPY@12:
push ebp
mov ebp, esp
push ebx
.Lt_002D:
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
push -65536
push -65536
push -65536
push -65536
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
push dword ptr [ebx]
push dword ptr [_Lt_002A]
push dword ptr [_Lt_002A]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax]
call _fb_GfxPut@56
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
push -65536
push -65536
push -65536
push -65536
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
push dword ptr [ebx+4]
push dword ptr [_Lt_002A]
push dword ptr [_Lt_002A]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
call _fb_GfxPut@56
.Lt_002E:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _CLV_BUFFER_OVERLAY@12
_CLV_BUFFER_OVERLAY@12:
push ebp
mov ebp, esp
push ebx
.Lt_0030:
push offset _CLV_FLAG_AND
push offset _CLV_FILTER_MASK@12
push -1
push offset _fb_hPutCustom
push 8
push 0
push -65536
push -65536
push -65536
push -65536
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
push dword ptr [ebx]
push dword ptr [_Lt_002A]
push dword ptr [_Lt_002A]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax]
call _fb_GfxPut@56
push offset _CLV_FLAG_AND
push offset _CLV_FILTER_MASK@12
push -1
push offset _fb_hPutCustom
push 8
push 0
push -65536
push -65536
push -65536
push -65536
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
push dword ptr [ebx]
push dword ptr [_Lt_002A]
push dword ptr [_Lt_002A]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
call _fb_GfxPut@56
push offset _CLV_FLAG_OR
push offset _CLV_FILTER_MASK@12
push -1
push offset _fb_hPutCustom
push 8
push 0
push -65536
push -65536
push -65536
push -65536
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
push dword ptr [ebx+4]
push dword ptr [_Lt_002A]
push dword ptr [_Lt_002A]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
call _fb_GfxPut@56
.Lt_0031:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _CLV_BUFFER_FLIP@16
_CLV_BUFFER_FLIP@16:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_0034:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
push dword ptr [eax+12]
push dword ptr [ebp+16]
call _fb_GfxImageCreate@20
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
add ebx, 4294967295
mov eax, ebx
mov dword ptr [ebp-24], eax
jmp .Lt_0037
.Lt_003A:
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+8]
imul ebx, dword ptr [ebp-12]
push 0
push ebx
fild qword ptr [esp]
add esp, 8
mov ebx, dword ptr [ebp-20]
push 0
push dword ptr [ebx+8]
fild qword ptr [esp]
add esp, 8
fxch st(1)
fdivrp
sub esp, 4
fnstcw [esp]
mov eax, [esp]
or eax, 0b0000110000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fistp dword ptr [ebp-4]
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx+12]
add eax, 4294967295
mov ebx, eax
push ebx
push dword ptr [ebp-4]
push 0
push dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
push dword ptr [_Lt_002A]
fild dword ptr [ebp-12]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp-20]
call _fb_GfxPut@56
.Lt_0038:
inc dword ptr [ebp-12]
.Lt_0037:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-12], eax
jle .Lt_003A
.Lt_0039:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-24], eax
jmp .Lt_003D
.Lt_0040:
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+12]
imul ebx, dword ptr [ebp-16]
push 0
push ebx
fild qword ptr [esp]
add esp, 8
fild dword ptr [ebp+20]
fxch st(1)
fdivrp
sub esp, 4
fnstcw [esp]
mov eax, [esp]
or eax, 0b0000110000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fistp dword ptr [ebp-8]
push 0
push 0
push -1
push offset _fb_hPutPSet
push 1
push 0
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+8]
add eax, 4294967295
mov ebx, eax
push ebx
push dword ptr [ebp-8]
push 0
push dword ptr [ebp-20]
fild dword ptr [ebp-16]
sub esp,4
fstp dword ptr [esp]
push dword ptr [_Lt_002A]
push 0
call _fb_GfxPut@56
.Lt_003E:
inc dword ptr [ebp-16]
.Lt_003D:
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebp-16], ebx
jle .Lt_0040
.Lt_003F:
push dword ptr [ebp-20]
call _fb_GfxImageDestroy@4
.Lt_0035:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _CLV_DRAW_LINE@36
_CLV_DRAW_LINE@36:
push ebp
mov ebp, esp
push ebx
.Lt_0042:
cmp dword ptr [ebp+40], 0
jne .Lt_0045
.Lt_0046:
push 0
push 65535
push 0
push dword ptr [ebp+36]
fild dword ptr [ebp+28]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+24]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
push dword ptr [ebx]
call _fb_GfxLine@36
push 0
push 65535
push 0
push dword ptr [ebp+32]
fild dword ptr [ebp+28]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+24]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
call _fb_GfxLine@36
jmp .Lt_0044
.Lt_0045:
cmp dword ptr [ebp+40], 1
jne .Lt_0047
.Lt_0048:
push 0
push 65535
push 1
push dword ptr [ebp+36]
fild dword ptr [ebp+28]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+24]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
push dword ptr [ebx]
call _fb_GfxLine@36
push 0
push 65535
push 1
push dword ptr [ebp+32]
fild dword ptr [ebp+28]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+24]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
call _fb_GfxLine@36
jmp .Lt_0044
.Lt_0047:
cmp dword ptr [ebp+40], 2
jne .Lt_0049
.Lt_004A:
push 0
push 65535
push 2
push dword ptr [ebp+36]
fild dword ptr [ebp+28]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+24]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
push dword ptr [ebx]
call _fb_GfxLine@36
push 0
push 65535
push 2
push dword ptr [ebp+32]
fild dword ptr [ebp+28]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+24]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
call _fb_GfxLine@36
.Lt_0049:
.Lt_0044:
.Lt_0043:
pop ebx
mov esp, ebp
pop ebp
ret 36
.balign 16

.globl _CLV_DRAW_CIRCLE@92
_CLV_DRAW_CIRCLE@92:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_004B:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
push dword ptr [eax+8]
call _fb_GfxImageCreate@20
mov dword ptr [ebp-4], eax
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
push dword ptr [eax+8]
call _fb_GfxImageCreate@20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+92]
push dword ptr [ebp+88]
push dword ptr [ebp+84]
push dword ptr [ebp+80]
push dword ptr [ebp+76]
push dword ptr [ebp+72]
push dword ptr [ebp+68]
push dword ptr [ebp+64]
push dword ptr [ebp+60]
push dword ptr [ebp+56]
push dword ptr [ebp+52]
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-4]
call _CLV_DRAW_PRIMITIVE_CIRCLE@84
push dword ptr [ebp+96]
push dword ptr [ebp+96]
push dword ptr [ebp+96]
push dword ptr [ebp+96]
push dword ptr [ebp+76]
push dword ptr [ebp+72]
push dword ptr [ebp+68]
push dword ptr [ebp+64]
push dword ptr [ebp+60]
push dword ptr [ebp+56]
push dword ptr [ebp+52]
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _CLV_DRAW_PRIMITIVE_CIRCLE@84
push dword ptr [ebp-8]
push dword ptr [ebp-4]
fld qword ptr [ebp+24]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld qword ptr [ebp+16]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_IMAGE@24
push dword ptr [ebp-4]
call _fb_GfxImageDestroy@4
push dword ptr [ebp-8]
call _fb_GfxImageDestroy@4
.Lt_004C:
pop ebx
mov esp, ebp
pop ebp
ret 92
.balign 16

.globl _CLV_DRAW_PIXEL@24
_CLV_DRAW_PIXEL@24:
push ebp
mov ebp, esp
push ebx
.Lt_004D:
push 0
push 4
push dword ptr [ebp+28]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
push dword ptr [ebx]
call _fb_GfxPset@24
push 0
push 4
push dword ptr [ebp+24]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
call _fb_GfxPset@24
.Lt_004E:
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _CLV_DRAW_IMAGE@24
_CLV_DRAW_IMAGE@24:
push ebp
mov ebp, esp
push ebx
.Lt_004F:
push offset _CLV_FLAG_AND
push offset _CLV_FILTER_MASK@12
push -1
push offset _fb_hPutCustom
push 8
push 0
push -65536
push -65536
push -65536
push -65536
push dword ptr [ebp+28]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
push dword ptr [ebx]
call _fb_GfxPut@56
push offset _CLV_FLAG_AND
push offset _CLV_FILTER_MASK@12
push -1
push offset _fb_hPutCustom
push 8
push 0
push -65536
push -65536
push -65536
push -65536
push dword ptr [ebp+28]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
call _fb_GfxPut@56
push offset _CLV_FLAG_OR
push offset _CLV_FILTER_MASK@12
push -1
push offset _fb_hPutCustom
push 8
push 0
push -65536
push -65536
push -65536
push -65536
push dword ptr [ebp+24]
fild dword ptr [ebp+20]
sub esp,4
fstp dword ptr [esp]
fild dword ptr [ebp+16]
sub esp,4
fstp dword ptr [esp]
mov eax, dword ptr [ebp+8]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
push dword ptr [ebx+4]
call _fb_GfxPut@56
.Lt_0050:
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _CLV_FILTER_MASK@12
_CLV_FILTER_MASK@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0053:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_CLV_FLAG_AND]
cmp dword ptr [ebp-8], eax
jne .Lt_0056
.Lt_0057:
mov eax, dword ptr [ebp+12]
and eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0055
.Lt_0056:
mov eax, dword ptr [_CLV_FLAG_OR]
cmp dword ptr [ebp-8], eax
jne .Lt_0058
.Lt_0059:
mov eax, dword ptr [ebp+12]
or eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0058:
.Lt_0055:
.Lt_0054:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _CLV_DRAW_PRIMITIVE_CIRCLE@84
_CLV_DRAW_PRIMITIVE_CIRCLE@84:
push ebp
mov ebp, esp
sub esp, 360
push ebx
push esi
.Lt_005A:
lea eax, [ebp-32]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
lea eax, [ebp-32]
mov dword ptr [ebp-68], eax
lea eax, [ebp-32]
mov dword ptr [ebp-64], eax
mov dword ptr [ebp-60], 32
mov dword ptr [ebp-56], 4
mov dword ptr [ebp-52], 1
mov dword ptr [ebp-48], 49
mov dword ptr [ebp-44], 8
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 7
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-76]
mov dword ptr [ebp-112], eax
lea eax, [ebp-76]
mov dword ptr [ebp-108], eax
mov dword ptr [ebp-104], 8
mov dword ptr [ebp-100], 4
mov dword ptr [ebp-96], 1
mov dword ptr [ebp-92], 49
mov dword ptr [ebp-88], 2
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 1
lea eax, [ebp-176]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 16
rep stosd
pop edi
pop eax
lea eax, [ebp-176]
mov dword ptr [ebp-212], eax
lea eax, [ebp-176]
mov dword ptr [ebp-208], eax
mov dword ptr [ebp-204], 64
mov dword ptr [ebp-200], 8
mov dword ptr [ebp-196], 1
mov dword ptr [ebp-192], 49
mov dword ptr [ebp-188], 8
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 7
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-228]
mov dword ptr [ebp-264], eax
lea eax, [ebp-228]
mov dword ptr [ebp-260], eax
mov dword ptr [ebp-256], 16
mov dword ptr [ebp-252], 8
mov dword ptr [ebp-248], 1
mov dword ptr [ebp-244], 49
mov dword ptr [ebp-240], 2
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 1
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-328], 0
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
mov eax, dword ptr [ebp+76]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+80]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+84]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+88]
mov dword ptr [ebp-20], eax
fld qword ptr [ebp+12]
fcomp qword ptr [ebp+28]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0061
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+28]
push dword ptr [ebp+32]
pop dword ptr [ebp+16]
pop dword ptr [ebp+12]
pop dword ptr [ebp+28]
pop dword ptr [ebp+32]
.Lt_0061:
fld qword ptr [ebp+20]
fcomp qword ptr [ebp+36]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0063
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+36]
push dword ptr [ebp+40]
pop dword ptr [ebp+24]
pop dword ptr [ebp+20]
pop dword ptr [ebp+36]
pop dword ptr [ebp+40]
.Lt_0063:
fld qword ptr [ebp+12]
fadd qword ptr [ebp+28]
fdiv qword ptr [_Lt_008A]
fstp qword ptr [ebp-304]
fld qword ptr [ebp+20]
fadd qword ptr [ebp+36]
fdiv qword ptr [_Lt_008A]
fstp qword ptr [ebp-312]
fld qword ptr [ebp+28]
fsub qword ptr [ebp+12]
fdiv qword ptr [_Lt_008A]
fstp qword ptr [ebp-288]
fld qword ptr [ebp+36]
fsub qword ptr [ebp+20]
fdiv qword ptr [_Lt_008A]
fstp qword ptr [ebp-296]
fld qword ptr [ebp-304]
fsub qword ptr [ebp-288]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
or eax, 0b0000110000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_008B]
fstp qword ptr [ebp+12]
fld qword ptr [ebp-288]
fadd qword ptr [ebp-304]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
or eax, 0b0000110000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_008C]
fstp qword ptr [ebp+28]
fld qword ptr [ebp-304]
fsub qword ptr [ebp-296]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
or eax, 0b0000110000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_008B]
fstp qword ptr [ebp+20]
fld qword ptr [ebp-296]
fadd qword ptr [ebp-304]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
or eax, 0b0000110000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_008C]
fstp qword ptr [ebp+36]
fld qword ptr [ebp+12]
fcomp qword ptr [_Lt_008D]
fnstsw ax
sahf
jae .Lt_0065
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp+16]
pop dword ptr [ebp+12]
jmp .Lt_0064
.Lt_0065:
mov eax, dword ptr [ebp+8]
push 0
push dword ptr [eax+8]
fild qword ptr [esp]
add esp, 8
fld qword ptr [ebp+12]
fcompp
fnstsw ax
test ah, 0b01000001
jnz .Lt_0066
mov eax, dword ptr [ebp+8]
push 0
push dword ptr [eax+8]
fild qword ptr [esp]
add esp, 8
fstp qword ptr [ebp+12]
.Lt_0066:
.Lt_0064:
fld qword ptr [ebp+28]
fcomp qword ptr [_Lt_008D]
fnstsw ax
sahf
jae .Lt_0068
push dword ptr [_Lt_008B]
push dword ptr [_Lt_008B+4]
pop dword ptr [ebp+32]
pop dword ptr [ebp+28]
jmp .Lt_0067
.Lt_0068:
mov eax, dword ptr [ebp+8]
push 0
push dword ptr [eax+8]
fild qword ptr [esp]
add esp, 8
fld qword ptr [ebp+28]
fcompp
fnstsw ax
test ah, 0b01000001
jnz .Lt_0069
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
add ebx, 4294967295
push 0
push ebx
fild qword ptr [esp]
add esp, 8
fstp qword ptr [ebp+28]
.Lt_0069:
.Lt_0067:
fld qword ptr [ebp+20]
fcomp qword ptr [_Lt_008D]
fnstsw ax
sahf
jae .Lt_006B
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp+24]
pop dword ptr [ebp+20]
jmp .Lt_006A
.Lt_006B:
mov ebx, dword ptr [ebp+8]
push 0
push dword ptr [ebx+12]
fild qword ptr [esp]
add esp, 8
fld qword ptr [ebp+20]
fcompp
fnstsw ax
test ah, 0b01000001
jnz .Lt_006C
mov ebx, dword ptr [ebp+8]
push 0
push dword ptr [ebx+12]
fild qword ptr [esp]
add esp, 8
fstp qword ptr [ebp+20]
.Lt_006C:
.Lt_006A:
fld qword ptr [ebp+36]
fcomp qword ptr [_Lt_008D]
fnstsw ax
sahf
jae .Lt_006E
push dword ptr [_Lt_008B]
push dword ptr [_Lt_008B+4]
pop dword ptr [ebp+40]
pop dword ptr [ebp+36]
jmp .Lt_006D
.Lt_006E:
mov ebx, dword ptr [ebp+8]
push 0
push dword ptr [ebx+12]
fild qword ptr [esp]
add esp, 8
fld qword ptr [ebp+36]
fcompp
fnstsw ax
test ah, 0b01000001
jnz .Lt_006F
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
add eax, 4294967295
push 0
push eax
fild qword ptr [esp]
add esp, 8
fstp qword ptr [ebp+36]
.Lt_006F:
.Lt_006D:
push dword ptr [ebp+20]
push dword ptr [ebp+24]
pop dword ptr [ebp-276]
pop dword ptr [ebp-280]
push dword ptr [ebp+36]
push dword ptr [ebp+40]
pop dword ptr [ebp-348]
pop dword ptr [ebp-352]
jmp .Lt_0071
.Lt_0074:
push dword ptr [ebp+12]
push dword ptr [ebp+16]
pop dword ptr [ebp-268]
pop dword ptr [ebp-272]
push dword ptr [ebp+28]
push dword ptr [ebp+32]
pop dword ptr [ebp-356]
pop dword ptr [ebp-360]
jmp .Lt_0076
.Lt_0079:
fld qword ptr [ebp-272]
fsub qword ptr [ebp-304]
fdiv qword ptr [ebp-288]
fstp qword ptr [ebp-320]
fld qword ptr [ebp-280]
fsub qword ptr [ebp-312]
fdiv qword ptr [ebp-296]
fstp qword ptr [ebp-328]
push dword ptr [ebp-324]
push dword ptr [ebp-328]
push dword ptr [ebp-316]
push dword ptr [ebp-320]
push dword ptr [_Lt_008D+4]
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
push dword ptr [_Lt_008D]
call _CLV_MATH_VECTOR2DECIMAL@32
fstp qword ptr [ebp-344]
fld qword ptr [ebp+44]
fcomp qword ptr [ebp+52]
fnstsw ax
test ah, 0b00000001
setnz al
shr eax, 1
sbb eax, eax
fld qword ptr [ebp-344]
fcomp qword ptr [ebp+44]
push eax
fnstsw ax
sahf
pop eax
setae bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
fld qword ptr [ebp-344]
fcomp qword ptr [ebp+52]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
fld qword ptr [ebp+44]
fcomp qword ptr [ebp+52]
push eax
fnstsw ax
sahf
pop eax
setae bl
shr ebx, 1
sbb ebx, ebx
fld qword ptr [ebp-344]
fcomp qword ptr [ebp+44]
push eax
fnstsw ax
sahf
pop eax
setae cl
shr ecx, 1
sbb ecx, ecx
fld qword ptr [ebp-344]
fcomp qword ptr [ebp+52]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz	dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ecx, esi
and ebx, ecx
or eax, ebx
je .Lt_007B
fld qword ptr [ebp+52]
fsub qword ptr [ebp+44]
fabs
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_007D
fld qword ptr [ebp+44]
fcomp qword ptr [ebp+52]
push eax
fnstsw ax
test ah, 0b00000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
fld qword ptr [ebp-344]
fcomp qword ptr [ebp+44]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
and ebx, eax
fld qword ptr [ebp-344]
fcomp qword ptr [ebp+52]
fnstsw ax
test ah, 0b01000001
setnz al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_007F
fld qword ptr [ebp+52]
fsub qword ptr [ebp-344]
fabs
fld qword ptr [ebp+52]
fsub qword ptr [ebp+44]
fabs
fxch st(1)
fdivrp
fstp qword ptr [ebp-176]
fld qword ptr [ebp-344]
fsub qword ptr [ebp+44]
fabs
fld qword ptr [ebp+52]
fsub qword ptr [ebp+44]
fabs
fxch st(1)
fdivrp
fstp qword ptr [ebp-168]
jmp .Lt_007E
.Lt_007F:
fld qword ptr [ebp+44]
fcomp qword ptr [ebp+52]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
fld qword ptr [ebp-344]
fcomp qword ptr [ebp+44]
push eax
fnstsw ax
sahf
pop eax
setae bl
shr ebx, 1
sbb ebx, ebx
fld qword ptr [ebp-344]
fcomp qword ptr [ebp+52]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
and eax, ebx
je .Lt_0080
fld qword ptr [ebp+44]
fsub qword ptr [ebp-344]
fabs
fld qword ptr [ebp+44]
fsub qword ptr [ebp+52]
fabs
fxch st(1)
fdivrp
fstp qword ptr [ebp-176]
fld qword ptr [ebp-344]
fsub qword ptr [ebp+52]
fabs
fld qword ptr [ebp+44]
fsub qword ptr [ebp+52]
fabs
fxch st(1)
fdivrp
fstp qword ptr [ebp-168]
.Lt_0080:
.Lt_007E:
jmp .Lt_007C
.Lt_007D:
push dword ptr [_Lt_008C]
push dword ptr [_Lt_008C+4]
pop dword ptr [ebp-172]
pop dword ptr [ebp-176]
push dword ptr [_Lt_008C]
push dword ptr [_Lt_008C+4]
pop dword ptr [ebp-164]
pop dword ptr [ebp-168]
.Lt_007C:
fld qword ptr [ebp-320]
fmul qword ptr [ebp-320]
fld qword ptr [ebp-328]
fmul qword ptr [ebp-328]
fxch st(1)
faddp
fstp qword ptr [ebp-336]
fld qword ptr [ebp-336]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0082
fld qword ptr [ebp-336]
fsqrt
fstp qword ptr [ebp-336]
.Lt_0082:
fld qword ptr [ebp+60]
fcomp qword ptr [ebp+68]
push eax
fnstsw ax
test ah, 0b00000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
fld qword ptr [ebp-336]
fcomp qword ptr [ebp+60]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
and ebx, eax
fld qword ptr [ebp-336]
fcomp qword ptr [ebp+68]
fnstsw ax
test ah, 0b01000001
setnz al
shr eax, 1
sbb eax, eax
and ebx, eax
fld qword ptr [ebp+60]
fcomp qword ptr [ebp+68]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
fld qword ptr [ebp-336]
fcomp qword ptr [ebp+60]
push eax
fnstsw ax
sahf
pop eax
setae cl
shr ecx, 1
sbb ecx, ecx
fld qword ptr [ebp-336]
fcomp qword ptr [ebp+68]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz	dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ecx, esi
and eax, ecx
or ebx, eax
je .Lt_0084
fld qword ptr [ebp+68]
fsub qword ptr [ebp+60]
fabs
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0086
fld qword ptr [ebp+60]
fcomp qword ptr [ebp+68]
fnstsw ax
test ah, 0b00000001
setnz al
shr eax, 1
sbb eax, eax
fld qword ptr [ebp-336]
fcomp qword ptr [ebp+60]
push eax
fnstsw ax
sahf
pop eax
setae bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
fld qword ptr [ebp-336]
fcomp qword ptr [ebp+68]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0088
fld qword ptr [ebp+68]
fsub qword ptr [ebp-336]
fabs
fld qword ptr [ebp+68]
fsub qword ptr [ebp+60]
fabs
fxch st(1)
fdivrp
fstp qword ptr [ebp-160]
fld qword ptr [ebp-336]
fsub qword ptr [ebp+60]
fabs
fld qword ptr [ebp+68]
fsub qword ptr [ebp+60]
fabs
fxch st(1)
fdivrp
fstp qword ptr [ebp-152]
jmp .Lt_0087
.Lt_0088:
fld qword ptr [ebp+60]
fcomp qword ptr [ebp+68]
push eax
fnstsw ax
sahf
pop eax
setae bl
shr ebx, 1
sbb ebx, ebx
fld qword ptr [ebp-336]
fcomp qword ptr [ebp+60]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
fld qword ptr [ebp-336]
fcomp qword ptr [ebp+68]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
and ebx, eax
je .Lt_0089
fld qword ptr [ebp+60]
fsub qword ptr [ebp-336]
fabs
fld qword ptr [ebp+60]
fsub qword ptr [ebp+68]
fabs
fxch st(1)
fdivrp
fstp qword ptr [ebp-160]
fld qword ptr [ebp-336]
fsub qword ptr [ebp+68]
fabs
fld qword ptr [ebp+60]
fsub qword ptr [ebp+68]
fabs
fxch st(1)
fdivrp
fstp qword ptr [ebp-152]
.Lt_0089:
.Lt_0087:
jmp .Lt_0085
.Lt_0086:
push dword ptr [_Lt_008C]
push dword ptr [_Lt_008C+4]
pop dword ptr [ebp-156]
pop dword ptr [ebp-160]
push dword ptr [_Lt_008C]
push dword ptr [_Lt_008C+4]
pop dword ptr [ebp-148]
pop dword ptr [ebp-152]
.Lt_0085:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-76], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-72], eax
push dword ptr [ebp-176]
push dword ptr [ebp-172]
pop dword ptr [ebp-224]
pop dword ptr [ebp-228]
push dword ptr [ebp-168]
push dword ptr [ebp-164]
pop dword ptr [ebp-216]
pop dword ptr [ebp-220]
lea eax, [ebp-264]
push eax
lea eax, [ebp-112]
push eax
call _CLV_ARGB32_MIX@8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-76], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-72], eax
push dword ptr [ebp-160]
push dword ptr [ebp-156]
pop dword ptr [ebp-224]
pop dword ptr [ebp-228]
push dword ptr [ebp-152]
push dword ptr [ebp-148]
pop dword ptr [ebp-216]
pop dword ptr [ebp-220]
lea eax, [ebp-264]
push eax
lea eax, [ebp-112]
push eax
call _CLV_ARGB32_MIX@8
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-76], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-72], eax
push dword ptr [_Lt_008E]
push dword ptr [_Lt_008E+4]
pop dword ptr [ebp-224]
pop dword ptr [ebp-228]
push dword ptr [_Lt_008E]
push dword ptr [_Lt_008E+4]
pop dword ptr [ebp-216]
pop dword ptr [ebp-220]
lea eax, [ebp-264]
push eax
lea eax, [ebp-112]
push eax
call _CLV_ARGB32_MIX@8
mov dword ptr [ebp-8], eax
push 0
push 4
push dword ptr [ebp-8]
fld qword ptr [ebp-280]
sub esp,4
fstp dword ptr [esp]
fld qword ptr [ebp-272]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp+8]
call _fb_GfxPset@24
.Lt_0084:
.Lt_0083:
.Lt_007B:
.Lt_007A:
.Lt_0077:
fld qword ptr [_Lt_008C]
fadd qword ptr [ebp-272]
fstp qword ptr [ebp-272]
.Lt_0076:
fld qword ptr [ebp-272]
fcomp qword ptr [ebp-360]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0079
.Lt_0078:
.Lt_0072:
fld qword ptr [_Lt_008C]
fadd qword ptr [ebp-280]
fstp qword ptr [ebp-280]
.Lt_0071:
fld qword ptr [ebp-280]
fcomp qword ptr [ebp-352]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0074
.Lt_0073:
.Lt_005B:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 84
.balign 16

.globl _CLV_DRAW_PRIMITIVE_TRIANGLE@80
_CLV_DRAW_PRIMITIVE_TRIANGLE@80:
push ebp
mov ebp, esp
sub esp, 236
push ebx
.Lt_00A7:
lea eax, [ebp-64]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 16
rep stosd
pop edi
pop eax
lea eax, [ebp-64]
mov dword ptr [ebp-112], eax
lea eax, [ebp-64]
mov dword ptr [ebp-108], eax
mov dword ptr [ebp-104], 64
mov dword ptr [ebp-100], 8
mov dword ptr [ebp-96], 2
mov dword ptr [ebp-92], 50
mov dword ptr [ebp-88], 4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 3
mov dword ptr [ebp-76], 2
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 1
push dword ptr [ebp+16]
push dword ptr [ebp+20]
pop dword ptr [ebp-60]
pop dword ptr [ebp-64]
push dword ptr [ebp+24]
push dword ptr [ebp+28]
pop dword ptr [ebp-52]
pop dword ptr [ebp-56]
push dword ptr [ebp+32]
push dword ptr [ebp+36]
pop dword ptr [ebp-44]
pop dword ptr [ebp-48]
push dword ptr [ebp+40]
push dword ptr [ebp+44]
pop dword ptr [ebp-36]
pop dword ptr [ebp-40]
push dword ptr [ebp+48]
push dword ptr [ebp+52]
pop dword ptr [ebp-28]
pop dword ptr [ebp-32]
push dword ptr [ebp+56]
push dword ptr [ebp+60]
pop dword ptr [ebp-20]
pop dword ptr [ebp-24]
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-136]
pop dword ptr [ebp-140]
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-144]
pop dword ptr [ebp-148]
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-152]
pop dword ptr [ebp-156]
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-160]
pop dword ptr [ebp-164]
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-168]
pop dword ptr [ebp-172]
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-176]
pop dword ptr [ebp-180]
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-184]
pop dword ptr [ebp-188]
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-192]
pop dword ptr [ebp-196]
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-200]
pop dword ptr [ebp-204]
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-208]
pop dword ptr [ebp-212]
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-216]
pop dword ptr [ebp-220]
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-224]
pop dword ptr [ebp-228]
mov dword ptr [ebp-120], 0
.Lt_00AD:
mov eax, dword ptr [ebp-120]
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-124]
inc eax
mov ecx, 3
xor edx, edx
div ecx
mov eax, edx
mov dword ptr [ebp-128], eax
mov eax, dword ptr [ebp-128]
inc eax
mov ecx, 3
xor edx, edx
div ecx
mov eax, edx
mov dword ptr [ebp-132], eax
mov eax, dword ptr [ebp-124]
sal eax, 4
mov ebx, dword ptr [ebp-128]
sal ebx, 4
fld qword ptr [ebp+eax-56]
fcomp qword ptr [ebp+ebx-56]
fnstsw ax
test ah, 0b01000001
setnz al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-124]
sal ebx, 4
mov ecx, dword ptr [ebp-132]
sal ecx, 4
fld qword ptr [ebp+ebx-56]
fcomp qword ptr [ebp+ecx-56]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
setnz bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00AF
mov ebx, dword ptr [ebp-128]
sal ebx, 4
mov eax, dword ptr [ebp-132]
sal eax, 4
fld qword ptr [ebp+ebx-56]
fcomp qword ptr [ebp+eax-56]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
jnz .Lt_00B1
push dword ptr [ebp-128]
mov eax, dword ptr [ebp-132]
mov dword ptr [ebp-128], eax
pop dword ptr [ebp-132]
.Lt_00B1:
.Lt_00B0:
mov eax, dword ptr [ebp-128]
sal eax, 4
mov ebx, dword ptr [ebp-124]
sal ebx, 4
fld qword ptr [ebp+eax-56]
fcomp qword ptr [ebp+ebx-56]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00B3
mov ebx, dword ptr [ebp-128]
sal ebx, 4
mov eax, dword ptr [ebp-124]
sal eax, 4
fld qword ptr [ebp+ebx-56]
fsub qword ptr [ebp+eax-56]
fstp qword ptr [ebp-140]
mov eax, dword ptr [ebp-128]
sal eax, 4
mov ebx, dword ptr [ebp-124]
sal ebx, 4
fld qword ptr [ebp+eax-64]
fsub qword ptr [ebp+ebx-64]
fstp qword ptr [ebp-148]
mov ebx, dword ptr [ebp-132]
sal ebx, 4
mov eax, dword ptr [ebp-124]
sal eax, 4
fld qword ptr [ebp+ebx-56]
fsub qword ptr [ebp+eax-56]
fstp qword ptr [ebp-156]
mov eax, dword ptr [ebp-132]
sal eax, 4
mov ebx, dword ptr [ebp-124]
sal ebx, 4
fld qword ptr [ebp+eax-64]
fsub qword ptr [ebp+ebx-64]
fstp qword ptr [ebp-164]
mov ebx, dword ptr [ebp-124]
sal ebx, 4
push dword ptr [ebp+ebx-56]
push dword ptr [ebp+ebx-52]
pop dword ptr [ebp-176]
pop dword ptr [ebp-180]
mov ebx, dword ptr [ebp-128]
sal ebx, 4
push dword ptr [ebp+ebx-56]
push dword ptr [ebp+ebx-52]
pop dword ptr [ebp-232]
pop dword ptr [ebp-236]
jmp .Lt_00B5
.Lt_00B8:
fld qword ptr [ebp-148]
fdiv qword ptr [ebp-140]
mov ebx, dword ptr [ebp-124]
sal ebx, 4
fld qword ptr [ebp-180]
fsub qword ptr [ebp+ebx-56]
fxch st(1)
fmulp
mov ebx, dword ptr [ebp-124]
sal ebx, 4
fadd qword ptr [ebp+ebx-64]
fstp qword ptr [ebp-204]
fld qword ptr [ebp-164]
fdiv qword ptr [ebp-156]
mov ebx, dword ptr [ebp-124]
sal ebx, 4
fld qword ptr [ebp-180]
fsub qword ptr [ebp+ebx-56]
fxch st(1)
fmulp
mov ebx, dword ptr [ebp-124]
sal ebx, 4
fadd qword ptr [ebp+ebx-64]
fstp qword ptr [ebp-220]
push 2
push dword ptr [ebp+68]
push dword ptr [ebp+64]
fld qword ptr [ebp-180]
fadd qword ptr [ebp+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld qword ptr [ebp-220]
fadd qword ptr [ebp+72]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld qword ptr [ebp-180]
fadd qword ptr [ebp+80]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
fld qword ptr [ebp-204]
fadd qword ptr [ebp+72]
sub esp, 4
fistp dword ptr [esp]
pop ebx
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_LINE@36
.Lt_00B6:
fld qword ptr [_Lt_008C]
fadd qword ptr [ebp-180]
fstp qword ptr [ebp-180]
.Lt_00B5:
fld qword ptr [ebp-180]
fcomp qword ptr [ebp-236]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00B8
.Lt_00B7:
.Lt_00B3:
.Lt_00B2:
mov ebx, dword ptr [ebp-132]
sal ebx, 4
mov eax, dword ptr [ebp-128]
sal eax, 4
fld qword ptr [ebp+ebx-56]
fcomp qword ptr [ebp+eax-56]
push eax
fnstsw ax
test ah, 0b01000001
pop eax
jnz .Lt_00BA
mov eax, dword ptr [ebp-128]
sal eax, 4
mov ebx, dword ptr [ebp-132]
sal ebx, 4
fld qword ptr [ebp+eax-56]
fsub qword ptr [ebp+ebx-56]
fstp qword ptr [ebp-140]
mov ebx, dword ptr [ebp-128]
sal ebx, 4
mov eax, dword ptr [ebp-132]
sal eax, 4
fld qword ptr [ebp+ebx-64]
fsub qword ptr [ebp+eax-64]
fstp qword ptr [ebp-148]
mov eax, dword ptr [ebp-132]
sal eax, 4
mov ebx, dword ptr [ebp-124]
sal ebx, 4
fld qword ptr [ebp+eax-56]
fsub qword ptr [ebp+ebx-56]
fstp qword ptr [ebp-156]
mov ebx, dword ptr [ebp-132]
sal ebx, 4
mov eax, dword ptr [ebp-124]
sal eax, 4
fld qword ptr [ebp+ebx-64]
fsub qword ptr [ebp+eax-64]
fstp qword ptr [ebp-164]
mov eax, dword ptr [ebp-128]
sal eax, 4
push dword ptr [ebp+eax-56]
push dword ptr [ebp+eax-52]
pop dword ptr [ebp-176]
pop dword ptr [ebp-180]
mov eax, dword ptr [ebp-132]
sal eax, 4
push dword ptr [ebp+eax-56]
push dword ptr [ebp+eax-52]
pop dword ptr [ebp-232]
pop dword ptr [ebp-236]
jmp .Lt_00BC
.Lt_00BF:
fld qword ptr [ebp-148]
fdiv qword ptr [ebp-140]
mov eax, dword ptr [ebp-128]
sal eax, 4
fld qword ptr [ebp-180]
fsub qword ptr [ebp+eax-56]
fxch st(1)
fmulp
mov eax, dword ptr [ebp-128]
sal eax, 4
fadd qword ptr [ebp+eax-64]
fstp qword ptr [ebp-204]
fld qword ptr [ebp-164]
fdiv qword ptr [ebp-156]
mov eax, dword ptr [ebp-124]
sal eax, 4
fld qword ptr [ebp-180]
fsub qword ptr [ebp+eax-56]
fxch st(1)
fmulp
mov eax, dword ptr [ebp-124]
sal eax, 4
fadd qword ptr [ebp+eax-64]
fstp qword ptr [ebp-220]
push 2
push dword ptr [ebp+68]
push dword ptr [ebp+64]
fld qword ptr [ebp-180]
fadd qword ptr [ebp+80]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld qword ptr [ebp-220]
fadd qword ptr [ebp+72]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld qword ptr [ebp-180]
fadd qword ptr [ebp+80]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
fld qword ptr [ebp-204]
fadd qword ptr [ebp+72]
sub esp, 4
fistp dword ptr [esp]
pop eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CLV_DRAW_LINE@36
.Lt_00BD:
fld qword ptr [_Lt_008C]
fadd qword ptr [ebp-180]
fstp qword ptr [ebp-180]
.Lt_00BC:
fld qword ptr [ebp-180]
fcomp qword ptr [ebp-236]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00BF
.Lt_00BE:
.Lt_00BA:
.Lt_00B9:
.Lt_00AF:
.Lt_00AE:
.Lt_00AB:
inc dword ptr [ebp-120]
.Lt_00AA:
cmp dword ptr [ebp-120], 2
jbe .Lt_00AD
.Lt_00AC:
.Lt_00A8:
pop ebx
mov esp, ebp
pop ebp
ret 80
.balign 16

.globl _CLV_MATH_VECTOR2DECIMAL@32
_CLV_MATH_VECTOR2DECIMAL@32:
push ebp
mov ebp, esp
sub esp, 56
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00C2:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
fld qword ptr [ebp+24]
fsub qword ptr [ebp+8]
fstp qword ptr [ebp-16]
fld qword ptr [ebp+32]
fsub qword ptr [ebp+16]
fstp qword ptr [ebp-24]
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000000
jnz .Lt_00C5
fld qword ptr [ebp-16]
fdiv qword ptr [ebp-24]
fstp qword ptr [ebp-32]
fld qword ptr [ebp-32]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00C7
push dword ptr [_Lt_008B+4]
push dword ptr [_Lt_008B]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call _pow
add esp, 16
fstp qword ptr [ebp-32]
.Lt_00C7:
fld qword ptr [ebp-32]
fld1
fpatan
fdiv qword ptr [_Lt_00FF]
fmul qword ptr [_Lt_0100]
fstp qword ptr [ebp-40]
fld qword ptr [ebp-40]
fcomp qword ptr [_Lt_008D]
fnstsw ax
sahf
jae .Lt_00C9
fld qword ptr [ebp-40]
fabs
fadd qword ptr [_Lt_0100]
fstp qword ptr [ebp-40]
.Lt_00C9:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00CB
fld qword ptr [_Lt_008E]
fadd qword ptr [ebp-40]
fstp qword ptr [ebp-40]
.Lt_00CB:
.Lt_00C5:
.Lt_00C4:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_008D]
fnstsw ax
sahf
jae .Lt_00CD
.Lt_00CE:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000000
jz .Lt_00D0
push dword ptr [_Lt_008D]
push dword ptr [_Lt_008D+4]
pop dword ptr [ebp-36]
pop dword ptr [ebp-40]
.Lt_00D0:
jmp .Lt_00CC
.Lt_00CD:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000000
jz .Lt_00D1
.Lt_00D2:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_008D]
fnstsw ax
sahf
jae .Lt_00D4
.Lt_00D5:
push dword ptr [_Lt_0100]
push dword ptr [_Lt_0100+4]
pop dword ptr [ebp-36]
pop dword ptr [ebp-40]
jmp .Lt_00D3
.Lt_00D4:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00D6
.Lt_00D7:
push dword ptr [_Lt_0101]
push dword ptr [_Lt_0101+4]
pop dword ptr [ebp-36]
pop dword ptr [ebp-40]
.Lt_00D6:
.Lt_00D3:
jmp .Lt_00CC
.Lt_00D1:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00D8
.Lt_00D9:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000000
jz .Lt_00DB
push dword ptr [_Lt_008E]
push dword ptr [_Lt_008E+4]
pop dword ptr [ebp-36]
pop dword ptr [ebp-40]
.Lt_00DB:
.Lt_00D8:
.Lt_00CC:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000000
jnz .Lt_00DD
fld qword ptr [ebp-24]
fdiv qword ptr [ebp-16]
fstp qword ptr [ebp-48]
fld qword ptr [ebp-48]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00DF
push dword ptr [_Lt_008B+4]
push dword ptr [_Lt_008B]
push dword ptr [ebp-44]
push dword ptr [ebp-48]
call _pow
add esp, 16
fstp qword ptr [ebp-48]
.Lt_00DF:
fld qword ptr [ebp-48]
fld1
fpatan
fdiv qword ptr [_Lt_00FF]
fmul qword ptr [_Lt_0100]
fstp qword ptr [ebp-56]
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_008D]
fnstsw ax
sahf
jae .Lt_00E1
.Lt_00E2:
fld qword ptr [ebp-56]
fcomp qword ptr [_Lt_008D]
fnstsw ax
sahf
jae .Lt_00E4
.Lt_00E5:
fld qword ptr [ebp-56]
fabs
fstp qword ptr [ebp-56]
jmp .Lt_00E3
.Lt_00E4:
fld qword ptr [ebp-56]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00E6
.Lt_00E7:
fld qword ptr [_Lt_0101]
fadd qword ptr [ebp-56]
fstp qword ptr [ebp-56]
.Lt_00E6:
.Lt_00E3:
jmp .Lt_00E0
.Lt_00E1:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00E8
.Lt_00E9:
fld qword ptr [ebp-56]
fcomp qword ptr [_Lt_008D]
fnstsw ax
sahf
jae .Lt_00EB
.Lt_00EC:
fld qword ptr [ebp-56]
fabs
fadd qword ptr [_Lt_008E]
fstp qword ptr [ebp-56]
jmp .Lt_00EA
.Lt_00EB:
fld qword ptr [ebp-56]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00ED
.Lt_00EE:
fld qword ptr [ebp-56]
fabs
fadd qword ptr [_Lt_0100]
fstp qword ptr [ebp-56]
.Lt_00ED:
.Lt_00EA:
.Lt_00E8:
.Lt_00E0:
.Lt_00DD:
.Lt_00DC:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_008D]
fnstsw ax
sahf
jae .Lt_00F0
.Lt_00F1:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000000
jz .Lt_00F3
push dword ptr [_Lt_008C]
push dword ptr [_Lt_008C+4]
pop dword ptr [ebp-52]
pop dword ptr [ebp-56]
.Lt_00F3:
jmp .Lt_00EF
.Lt_00F0:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000000
jz .Lt_00F4
.Lt_00F5:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_008D]
fnstsw ax
sahf
jae .Lt_00F7
.Lt_00F8:
push dword ptr [_Lt_0101]
push dword ptr [_Lt_0101+4]
pop dword ptr [ebp-52]
pop dword ptr [ebp-56]
jmp .Lt_00F6
.Lt_00F7:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00F9
.Lt_00FA:
push dword ptr [_Lt_0100]
push dword ptr [_Lt_0100+4]
pop dword ptr [ebp-52]
pop dword ptr [ebp-56]
.Lt_00F9:
.Lt_00F6:
jmp .Lt_00EF
.Lt_00F4:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00FB
.Lt_00FC:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000000
jz .Lt_00FE
push dword ptr [_Lt_008E]
push dword ptr [_Lt_008E+4]
pop dword ptr [ebp-52]
pop dword ptr [ebp-56]
.Lt_00FE:
.Lt_00FB:
.Lt_00EF:
fld qword ptr [_Lt_008C]
fsub qword ptr [ebp-56]
fstp qword ptr [ebp-56]
fld qword ptr [ebp-56]
fadd qword ptr [ebp-40]
fdiv qword ptr [_Lt_008A]
fstp qword ptr [ebp-8]
.Lt_00C3:
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
ret 32
.balign 16

.globl _CLV_ARGB32_MIX@8
_CLV_ARGB32_MIX@8:
push ebp
mov ebp, esp
sub esp, 196
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0102:
mov dword ptr [ebp-8], 0
lea eax, [ebp-136]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
pop edi
pop eax
lea eax, [ebp-136]
mov dword ptr [ebp-184], eax
lea eax, [ebp-136]
mov dword ptr [ebp-180], eax
mov dword ptr [ebp-176], 128
mov dword ptr [ebp-172], 8
mov dword ptr [ebp-168], 2
mov dword ptr [ebp-164], 50
mov dword ptr [ebp-160], 2
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 1
mov dword ptr [ebp-148], 8
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 7
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-192], 0
push 1
push dword ptr [ebp+8]
call _fb_ArrayLBound@8
mov dword ptr [ebp-188], eax
push 1
push dword ptr [ebp+8]
call _fb_ArrayUBound@8
mov dword ptr [ebp-196], eax
jmp .Lt_0106
.Lt_0109:
push 1
push dword ptr [ebp+12]
call _fb_ArrayLBound@8
mov ebx, dword ptr [ebp-188]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
push 1
push dword ptr [ebp+12]
call _fb_ArrayUBound@8
mov ecx, dword ptr [ebp-188]
cmp ecx, eax
setle cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_010B
mov ecx, dword ptr [ebp-188]
sal ecx, 3
mov ebx, dword ptr [ebp+12]
add ecx, dword ptr [ebx]
fld qword ptr [ecx]
fabs
fstp qword ptr [ebp-104]
mov ecx, dword ptr [ebp-188]
sal ecx, 3
mov ebx, dword ptr [ebp+12]
add ecx, dword ptr [ebx]
fld qword ptr [ecx]
fabs
fadd qword ptr [ebp-40]
fstp qword ptr [ebp-40]
.Lt_010B:
.Lt_010A:
mov dword ptr [ebp-192], 1
.Lt_010F:
mov ecx, dword ptr [ebp-192]
mov ebx, dword ptr [ebp-188]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp-192]
sal eax, 3
mov esi, dword ptr [ebx]
push ecx
mov ecx, eax
shr esi, cl
pop ecx
push 0
push esi
fild qword ptr [esp]
add esp, 8
fadd qword ptr [ebp+ecx*8-136]
sub esp, 4
fistp dword ptr [esp]
pop ecx
and ecx, 255
push ecx
fild dword ptr [esp]
add esp, 4
fmul qword ptr [ebp-104]
mov ecx, dword ptr [ebp-192]
fstp qword ptr [ebp+ecx*8-136]
.Lt_010D:
inc dword ptr [ebp-192]
.Lt_010C:
cmp dword ptr [ebp-192], 3
jle .Lt_010F
.Lt_010E:
.Lt_0107:
inc dword ptr [ebp-188]
.Lt_0106:
mov ecx, dword ptr [ebp-196]
cmp dword ptr [ebp-188], ecx
jle .Lt_0109
.Lt_0108:
fld qword ptr [ebp-40]
fcomp qword ptr [_Lt_008D]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0111
mov dword ptr [ebp-192], 1
.Lt_0115:
mov ecx, dword ptr [ebp-192]
fld qword ptr [ebp+ecx*8-136]
fdiv qword ptr [ebp-40]
mov ecx, dword ptr [ebp-192]
fstp qword ptr [ebp+ecx*8-72]
.Lt_0113:
inc dword ptr [ebp-192]
.Lt_0112:
cmp dword ptr [ebp-192], 3
jle .Lt_0115
.Lt_0114:
.Lt_0111:
.Lt_0110:
mov dword ptr [ebp-192], 1
.Lt_0119:
mov ecx, dword ptr [ebp-192]
fld qword ptr [ebp+ecx*8-72]
sub esp, 4
fistp dword ptr [esp]
pop esi
and esi, 255
mov ecx, dword ptr [ebp-192]
sal ecx, 3
sal esi, cl
mov eax, esi
or dword ptr [ebp-8], eax
.Lt_0117:
inc dword ptr [ebp-192]
.Lt_0116:
cmp dword ptr [ebp-192], 3
jle .Lt_0119
.Lt_0118:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0103:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _CLV_BUFFER_INI_ALL@4
_CLV_BUFFER_INI_ALL@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.Lt_011C:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
push 0
call _fb_StrFill1@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrInit@20
lea eax, [ebp-36]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
call _fb_GfxScreenInfo32@28
mov dword ptr [ebp-40], 0
push 1
push dword ptr [ebp+8]
call _fb_ArrayLBound@8
mov dword ptr [ebp-40], eax
push 1
push dword ptr [ebp+8]
call _fb_ArrayUBound@8
mov dword ptr [ebp-44], eax
jmp .Lt_011F
.Lt_0122:
push 0
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _fb_GfxImageCreate@20
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [ebp-40]
sal ecx, 2
mov ebx, dword ptr [ebp+8]
add ecx, dword ptr [ebx]
mov dword ptr [ecx], eax
push 0
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _fb_GfxImageCreate@20
mov ecx, dword ptr [ebp+8]
add ecx, 36
mov ebx, dword ptr [ecx]
imul ebx, dword ptr [ebp-40]
sal ebx, 2
mov ecx, dword ptr [ebp+8]
add ebx, dword ptr [ecx]
mov dword ptr [ebx+4], eax
.Lt_0120:
inc dword ptr [ebp-40]
.Lt_011F:
mov eax, dword ptr [ebp-44]
cmp dword ptr [ebp-40], eax
jle .Lt_0122
.Lt_0121:
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_011D:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_fb_ctor__clv:
.Lt_0002:
push 1
push 0
push 16
push 0
push 2
push 0
push -1
push 4
push offset _CLV_BUFFER
call _fb_ArrayRedimEx
add esp, 36
push 1
push 0
push 255
push 0
push 2
push 0
push -1
push 4
push offset _CLV_GLYPH
call _fb_ArrayRedimEx
add esp, 36
push 255
push 0
push 1
push 0
push -1
push 4
push offset _CLV_FONT
call _fb_ArrayRedimEx
add esp, 28
push 1
push 0
push 15
push 0
push 2
push 0
push -1
push 4
push offset _CLV_BUFFER
call _fb_ArrayRedimEx
add esp, 36
push offset _CLV_BUFFER
call _CLV_BUFFER_INI_ALL@4
.Lt_0003:
ret

.section .data
.balign 4
_CLV_FLAG_AND:
.long 0
.balign 4
_CLV_FLAG_OR:
.long 1

.section .bss
.balign 4
	.lcomm	_CLV_BUFFER_FOCUS,4

.section .data
.balign 4
_CLV_BUFFER:
.long 0
.long 0
.int 0
.int 4
.int 2
.int 18
.skip 24,0
.balign 4
_CLV_GLYPH:
.long 0
.long 0
.int 0
.int 4
.int 2
.int 18
.skip 24,0
.balign 4
_CLV_FONT:
.long 0
.long 0
.int 0
.int 4
.int 1
.int 17
.skip 12,0
.balign 4
_Lt_0029:	.long	0x40E00000
.balign 4
_Lt_002A:	.long	0x00000000
.balign 8
_Lt_008A:	.quad	0x4000000000000000
.balign 8
_Lt_008B:	.quad	0xBFF0000000000000
.balign 8
_Lt_008C:	.quad	0x3FF0000000000000
.balign 8
_Lt_008D:	.quad	0x0000000000000000
.balign 8
_Lt_008E:	.quad	0x3FE0000000000000
.balign 8
_Lt_00FF:	.quad	0x3FF921FB54442D18
.balign 8
_Lt_0100:	.quad	0x3FD0000000000000
.balign 8
_Lt_0101:	.quad	0x3FE8000000000000

.section .ctors
.int _fb_ctor__clv
