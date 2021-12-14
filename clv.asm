	.intel_syntax noprefix

.section .text
.balign 16

.globl _LOAD16BITRGB@4
_LOAD16BITRGB@4:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-4], 0
.Lt_001A:
push dword ptr [ebp+8]
call _LoadRGBAFile
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_001D
mov dword ptr [ebp-4], 0
jmp .Lt_001B
.Lt_001D:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
lea eax, [ebp-28]
push eax
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp-8]
call _fb_GfxImageInfo32@28
push 0
push 16
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _fb_GfxImageCreate@20
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-60]
push eax
lea eax, [ebp-44]
push eax
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-56], 0
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-52], 0
lea eax, [ebp-52]
push eax
mov dword ptr [ebp-48], 0
lea eax, [ebp-48]
push eax
push dword ptr [ebp-40]
call _fb_GfxImageInfo32@28
sar dword ptr [ebp-24], 1
mov dword ptr [ebp-64], 1
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-68], eax
jmp .Lt_0025
.Lt_0028:
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov eax, dword ptr [ebp-12]
dec eax
mov dword ptr [ebp-80], eax
jmp .Lt_002A
.Lt_002D:
mov eax, dword ptr [ebp-28]
add eax, dword ptr [ebp-72]
movzx ebx, byte ptr [eax+2]
sar ebx, 3
sal ebx, 11
mov eax, dword ptr [ebp-28]
add eax, dword ptr [ebp-72]
movzx ecx, byte ptr [eax+1]
sar ecx, 2
sal ecx, 5
or ebx, ecx
mov ecx, dword ptr [ebp-28]
add ecx, dword ptr [ebp-72]
movzx eax, byte ptr [ecx]
sar eax, 3
or ebx, eax
mov eax, dword ptr [ebp-76]
sal eax, 1
mov ecx, dword ptr [ebp-44]
add ecx, eax
mov word ptr [ecx], bx
add dword ptr [ebp-72], 4
.Lt_002B:
inc dword ptr [ebp-76]
.Lt_002A:
mov ebx, dword ptr [ebp-80]
cmp dword ptr [ebp-76], ebx
jle .Lt_002D
.Lt_002C:
mov ebx, dword ptr [ebp-20]
add dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-24]
sal ebx, 1
add dword ptr [ebp-44], ebx
.Lt_0026:
inc dword ptr [ebp-64]
.Lt_0025:
mov ebx, dword ptr [ebp-68]
cmp dword ptr [ebp-64], ebx
jle .Lt_0028
.Lt_0027:
push dword ptr [ebp-8]
call _fb_GfxImageDestroy@4
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-4], ebx
.Lt_001B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl __ZN6BASE6412ENCODEMEMORYEPvi@8
__ZN6BASE6412ENCODEMEMORYEPvi@8:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0033:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0036
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_0034
.Lt_0036:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp-16]
mov ecx, 3
cdq
idiv ecx
mov eax, edx
mov dword ptr [ebp-32], eax
push 0
push -1
push 1
push offset _Lt_0008
call _fb_StrAllocTempDescZEx@8
push eax
mov eax, dword ptr [ebp-16]
add eax, 2
mov ecx, 3
cdq
idiv ecx
sal eax, 2
push eax
call _fb_StrFill2@8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrInit@20
mov eax, dword ptr [ebp-16]
sub eax, dword ptr [ebp-32]
dec eax
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-48], eax
jmp .Lt_0038
.Lt_003B:
mov eax, dword ptr [ebp-20]
add eax, dword ptr [ebp-24]
movzx ebx, byte ptr [eax]
sar ebx, 2
mov eax, offset __ZN6BASE643B64E
add eax, ebx
mov ebx, dword ptr [ebp-44]
add ebx, dword ptr [ebp-28]
mov cl, byte ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp-20]
add ecx, dword ptr [ebp-24]
movzx ebx, byte ptr [ecx]
and ebx, 3
sal ebx, 4
mov ecx, offset __ZN6BASE643B64E
add ecx, ebx
mov ebx, dword ptr [ebp-20]
add ebx, dword ptr [ebp-24]
movzx eax, byte ptr [ebx+1]
sar eax, 4
add ecx, eax
mov eax, dword ptr [ebp-44]
add eax, dword ptr [ebp-28]
mov bl, byte ptr [ecx]
mov byte ptr [eax+1], bl
mov ebx, dword ptr [ebp-20]
add ebx, dword ptr [ebp-24]
movzx eax, byte ptr [ebx+1]
and eax, 15
sal eax, 2
mov ebx, offset __ZN6BASE643B64E
add ebx, eax
mov eax, dword ptr [ebp-20]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax+2]
sar ecx, 6
add ebx, ecx
mov ecx, dword ptr [ebp-44]
add ecx, dword ptr [ebp-28]
mov al, byte ptr [ebx]
mov byte ptr [ecx+2], al
mov eax, dword ptr [ebp-20]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax+2]
and ecx, 63
mov eax, offset __ZN6BASE643B64E
add eax, ecx
mov ecx, dword ptr [ebp-44]
add ecx, dword ptr [ebp-28]
mov bl, byte ptr [eax]
mov byte ptr [ecx+3], bl
add dword ptr [ebp-28], 4
.Lt_0039:
add dword ptr [ebp-24], 3
.Lt_0038:
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebp-24], ebx
jle .Lt_003B
.Lt_003A:
cmp dword ptr [ebp-32], 0
je .Lt_003D
mov ebx, dword ptr [ebp-20]
add ebx, dword ptr [ebp-24]
movzx ecx, byte ptr [ebx]
sar ecx, 2
mov ebx, offset __ZN6BASE643B64E
add ebx, ecx
mov ecx, dword ptr [ebp-44]
add ecx, dword ptr [ebp-28]
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp-20]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax]
and ecx, 3
sal ecx, 4
mov eax, offset __ZN6BASE643B64E
add eax, ecx
mov ecx, dword ptr [ebp-20]
add ecx, dword ptr [ebp-24]
movzx ebx, byte ptr [ecx+1]
sar ebx, 4
add eax, ebx
mov ebx, dword ptr [ebp-44]
add ebx, dword ptr [ebp-28]
mov cl, byte ptr [eax]
mov byte ptr [ebx+1], cl
mov ecx, dword ptr [ebp-44]
add ecx, dword ptr [ebp-28]
mov byte ptr [ecx+3], 61
cmp dword ptr [ebp-32], 2
jne .Lt_003F
mov ecx, dword ptr [ebp-20]
add ecx, dword ptr [ebp-24]
movzx ebx, byte ptr [ecx+1]
and ebx, 15
sal ebx, 2
mov ecx, offset __ZN6BASE643B64E
add ecx, ebx
mov ebx, dword ptr [ebp-20]
add ebx, dword ptr [ebp-24]
movzx eax, byte ptr [ebx+2]
sar eax, 6
add ecx, eax
mov eax, dword ptr [ebp-44]
add eax, dword ptr [ebp-28]
mov bl, byte ptr [ecx]
mov byte ptr [eax+2], bl
jmp .Lt_003E
.Lt_003F:
mov ebx, dword ptr [ebp-44]
add ebx, dword ptr [ebp-28]
mov byte ptr [ebx+2], 61
.Lt_003E:
.Lt_003D:
.Lt_003C:
push 0
push -1
lea ebx, [ebp-44]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrInit@20
lea ebx, [ebp-44]
push ebx
call _fb_StrDelete@4
jmp .Lt_0034
lea ebx, [ebp-44]
push ebx
call _fb_StrDelete@4
.Lt_0034:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl __ZN6BASE6412DECODEMEMORYER8FBSTRINGRl@8
__ZN6BASE6412DECODEMEMORYER8FBSTRINGRl@8:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_0040:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jge .Lt_0043
mov dword ptr [ebp-4], 0
jmp .Lt_0041
.Lt_0043:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax], ebx
dec dword ptr [ebp-8]
mov dword ptr [ebp-12], 0
push 1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call _calloc
add esp, 8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-24], eax
jmp .Lt_0045
.Lt_0048:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-20]
movzx eax, byte ptr [ebx+1]
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push 65
push offset __ZN6BASE643B64E
call _fb_StrAllocTempDescF@8
push eax
push 1
call _fb_StrInstr@12
dec eax
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-20]
movzx eax, byte ptr [ebx+2]
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push 65
push offset __ZN6BASE643B64E
call _fb_StrAllocTempDescF@8
push eax
push 1
call _fb_StrInstr@12
dec eax
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-20]
movzx eax, byte ptr [ebx+3]
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push 65
push offset __ZN6BASE643B64E
call _fb_StrAllocTempDescF@8
push eax
push 1
call _fb_StrInstr@12
dec eax
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-28], -1
jle .Lt_004A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-20]
movzx eax, byte ptr [ebx]
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push 65
push offset __ZN6BASE643B64E
call _fb_StrAllocTempDescF@8
push eax
push 1
call _fb_StrInstr@12
dec eax
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-40]
sal eax, 2
mov ebx, dword ptr [ebp-28]
sar ebx, 4
add eax, ebx
mov bl, al
mov eax, dword ptr [ebp-12]
mov byte ptr [eax], bl
inc dword ptr [ebp-12]
.Lt_004A:
.Lt_0049:
cmp dword ptr [ebp-32], -1
jle .Lt_004C
mov ebx, dword ptr [ebp-28]
sal ebx, 4
mov eax, dword ptr [ebp-32]
sar eax, 2
add ebx, eax
mov al, bl
mov ebx, dword ptr [ebp-12]
mov byte ptr [ebx], al
inc dword ptr [ebp-12]
.Lt_004C:
cmp dword ptr [ebp-36], -1
jle .Lt_004E
mov eax, dword ptr [ebp-32]
sal eax, 6
add eax, dword ptr [ebp-36]
mov bl, al
mov eax, dword ptr [ebp-12]
mov byte ptr [eax], bl
inc dword ptr [ebp-12]
.Lt_004E:
.Lt_0046:
add dword ptr [ebp-20], 4
.Lt_0045:
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebp-20], ebx
jle .Lt_0048
.Lt_0047:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_0041:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _CLV_BUFFER_INI@12
_CLV_BUFFER_INI@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_004F:
mov dword ptr [ebp-4], 0
push 1
push dword ptr [ebp+8]
call _fb_ArrayLBound@8
mov dword ptr [ebp-4], eax
push 1
push dword ptr [ebp+8]
call _fb_ArrayUBound@8
mov dword ptr [ebp-8], eax
jmp .Lt_0052
.Lt_0055:
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
.Lt_0053:
inc dword ptr [ebp-4]
.Lt_0052:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .Lt_0055
.Lt_0054:
.Lt_0050:
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
.Lt_0056:
mov eax, dword ptr [ebp+16]
and eax, 2
je .Lt_0059
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax]
call _fb_GfxImageDestroy@4
.Lt_0059:
.Lt_0058:
mov eax, dword ptr [ebp+16]
and eax, 1
je .Lt_005B
push 0
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax]
push dword ptr [ebp+20]
call _fb_GfxBload@12
.Lt_005B:
.Lt_005A:
.Lt_0057:
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
.Lt_005C:
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
push dword ptr [_Lt_006E]
push dword ptr [_Lt_006E]
push dword ptr [_Lt_006F]
push dword ptr [_Lt_006F]
push dword ptr [ebp-28]
call _fb_GfxLine@36
push 0
push 65535
push 2
push 4294967295
push dword ptr [_Lt_006E]
push dword ptr [_Lt_006E]
push dword ptr [_Lt_006F]
push dword ptr [_Lt_006F]
push dword ptr [ebp-32]
call _fb_GfxLine@36
mov dword ptr [ebp-16], 0
push -1
push dword ptr [ebp+32]
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-40], eax
jmp .Lt_005F
.Lt_0062:
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
push dword ptr [_Lt_006F]
push dword ptr [_Lt_006F]
push dword ptr [ebp-28]
call _fb_GfxPut@56
mov dword ptr [ebp-12], 0
.Lt_0067:
mov dword ptr [ebp-8], 0
.Lt_006B:
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
jne .Lt_006D
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
jmp .Lt_006C
.Lt_006D:
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
.Lt_006C:
.Lt_0069:
inc dword ptr [ebp-8]
.Lt_0068:
cmp dword ptr [ebp-8], 7
jle .Lt_006B
.Lt_006A:
.Lt_0065:
inc dword ptr [ebp-12]
.Lt_0064:
cmp dword ptr [ebp-12], 7
jle .Lt_0067
.Lt_0066:
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
.Lt_0060:
inc dword ptr [ebp-16]
.Lt_005F:
mov eax, dword ptr [ebp-40]
cmp dword ptr [ebp-16], eax
jle .Lt_0062
.Lt_0061:
push dword ptr [ebp-28]
call _fb_GfxImageDestroy@4
push dword ptr [ebp-32]
call _fb_GfxImageDestroy@4
.Lt_005D:
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
.Lt_0070:
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
push dword ptr [_Lt_006F]
push dword ptr [_Lt_006F]
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
push dword ptr [_Lt_006F]
push dword ptr [_Lt_006F]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
call _fb_GfxLine@36
.Lt_0071:
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
.Lt_0072:
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
push dword ptr [_Lt_006F]
push dword ptr [_Lt_006F]
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
push dword ptr [_Lt_006F]
push dword ptr [_Lt_006F]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
call _fb_GfxPut@56
.Lt_0073:
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
.Lt_0075:
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
push dword ptr [_Lt_006F]
push dword ptr [_Lt_006F]
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
push dword ptr [_Lt_006F]
push dword ptr [_Lt_006F]
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
push dword ptr [_Lt_006F]
push dword ptr [_Lt_006F]
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp+16]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx]
push dword ptr [eax+4]
call _fb_GfxPut@56
.Lt_0076:
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
.Lt_0079:
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
jmp .Lt_007C
.Lt_007F:
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
push dword ptr [_Lt_006F]
fild dword ptr [ebp-12]
sub esp,4
fstp dword ptr [esp]
push dword ptr [ebp-20]
call _fb_GfxPut@56
.Lt_007D:
inc dword ptr [ebp-12]
.Lt_007C:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-12], eax
jle .Lt_007F
.Lt_007E:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-24], eax
jmp .Lt_0082
.Lt_0085:
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
push dword ptr [_Lt_006F]
push 0
call _fb_GfxPut@56
.Lt_0083:
inc dword ptr [ebp-16]
.Lt_0082:
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebp-16], ebx
jle .Lt_0085
.Lt_0084:
push dword ptr [ebp-20]
call _fb_GfxImageDestroy@4
.Lt_007A:
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
.Lt_0087:
cmp dword ptr [ebp+40], 0
jne .Lt_008A
.Lt_008B:
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
jmp .Lt_0089
.Lt_008A:
cmp dword ptr [ebp+40], 1
jne .Lt_008C
.Lt_008D:
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
jmp .Lt_0089
.Lt_008C:
cmp dword ptr [ebp+40], 2
jne .Lt_008E
.Lt_008F:
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
.Lt_008E:
.Lt_0089:
.Lt_0088:
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
.Lt_0090:
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
.Lt_0091:
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
.Lt_0092:
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
.Lt_0093:
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
.Lt_0094:
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
.Lt_0095:
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
.Lt_0098:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_CLV_FLAG_AND]
cmp dword ptr [ebp-8], eax
jne .Lt_009B
.Lt_009C:
mov eax, dword ptr [ebp+12]
and eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_009A
.Lt_009B:
mov eax, dword ptr [_CLV_FLAG_OR]
cmp dword ptr [ebp-8], eax
jne .Lt_009D
.Lt_009E:
mov eax, dword ptr [ebp+12]
or eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_009D:
.Lt_009A:
.Lt_0099:
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
.Lt_009F:
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
jnz .Lt_00A6
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+28]
push dword ptr [ebp+32]
pop dword ptr [ebp+16]
pop dword ptr [ebp+12]
pop dword ptr [ebp+28]
pop dword ptr [ebp+32]
.Lt_00A6:
fld qword ptr [ebp+20]
fcomp qword ptr [ebp+36]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00A8
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+36]
push dword ptr [ebp+40]
pop dword ptr [ebp+24]
pop dword ptr [ebp+20]
pop dword ptr [ebp+36]
pop dword ptr [ebp+40]
.Lt_00A8:
fld qword ptr [ebp+12]
fadd qword ptr [ebp+28]
fdiv qword ptr [_Lt_00CF]
fstp qword ptr [ebp-304]
fld qword ptr [ebp+20]
fadd qword ptr [ebp+36]
fdiv qword ptr [_Lt_00CF]
fstp qword ptr [ebp-312]
fld qword ptr [ebp+28]
fsub qword ptr [ebp+12]
fdiv qword ptr [_Lt_00CF]
fstp qword ptr [ebp-288]
fld qword ptr [ebp+36]
fsub qword ptr [ebp+20]
fdiv qword ptr [_Lt_00CF]
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
fadd qword ptr [_Lt_00D0]
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
fadd qword ptr [_Lt_00D1]
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
fadd qword ptr [_Lt_00D0]
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
fadd qword ptr [_Lt_00D1]
fstp qword ptr [ebp+36]
fld qword ptr [ebp+12]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
sahf
jae .Lt_00AA
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp+16]
pop dword ptr [ebp+12]
jmp .Lt_00A9
.Lt_00AA:
mov eax, dword ptr [ebp+8]
push 0
push dword ptr [eax+8]
fild qword ptr [esp]
add esp, 8
fld qword ptr [ebp+12]
fcompp
fnstsw ax
test ah, 0b01000001
jnz .Lt_00AB
mov eax, dword ptr [ebp+8]
push 0
push dword ptr [eax+8]
fild qword ptr [esp]
add esp, 8
fstp qword ptr [ebp+12]
.Lt_00AB:
.Lt_00A9:
fld qword ptr [ebp+28]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
sahf
jae .Lt_00AD
push dword ptr [_Lt_00D0]
push dword ptr [_Lt_00D0+4]
pop dword ptr [ebp+32]
pop dword ptr [ebp+28]
jmp .Lt_00AC
.Lt_00AD:
mov eax, dword ptr [ebp+8]
push 0
push dword ptr [eax+8]
fild qword ptr [esp]
add esp, 8
fld qword ptr [ebp+28]
fcompp
fnstsw ax
test ah, 0b01000001
jnz .Lt_00AE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
add ebx, 4294967295
push 0
push ebx
fild qword ptr [esp]
add esp, 8
fstp qword ptr [ebp+28]
.Lt_00AE:
.Lt_00AC:
fld qword ptr [ebp+20]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
sahf
jae .Lt_00B0
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp+24]
pop dword ptr [ebp+20]
jmp .Lt_00AF
.Lt_00B0:
mov ebx, dword ptr [ebp+8]
push 0
push dword ptr [ebx+12]
fild qword ptr [esp]
add esp, 8
fld qword ptr [ebp+20]
fcompp
fnstsw ax
test ah, 0b01000001
jnz .Lt_00B1
mov ebx, dword ptr [ebp+8]
push 0
push dword ptr [ebx+12]
fild qword ptr [esp]
add esp, 8
fstp qword ptr [ebp+20]
.Lt_00B1:
.Lt_00AF:
fld qword ptr [ebp+36]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
sahf
jae .Lt_00B3
push dword ptr [_Lt_00D0]
push dword ptr [_Lt_00D0+4]
pop dword ptr [ebp+40]
pop dword ptr [ebp+36]
jmp .Lt_00B2
.Lt_00B3:
mov ebx, dword ptr [ebp+8]
push 0
push dword ptr [ebx+12]
fild qword ptr [esp]
add esp, 8
fld qword ptr [ebp+36]
fcompp
fnstsw ax
test ah, 0b01000001
jnz .Lt_00B4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
add eax, 4294967295
push 0
push eax
fild qword ptr [esp]
add esp, 8
fstp qword ptr [ebp+36]
.Lt_00B4:
.Lt_00B2:
push dword ptr [ebp+20]
push dword ptr [ebp+24]
pop dword ptr [ebp-276]
pop dword ptr [ebp-280]
push dword ptr [ebp+36]
push dword ptr [ebp+40]
pop dword ptr [ebp-348]
pop dword ptr [ebp-352]
jmp .Lt_00B6
.Lt_00B9:
push dword ptr [ebp+12]
push dword ptr [ebp+16]
pop dword ptr [ebp-268]
pop dword ptr [ebp-272]
push dword ptr [ebp+28]
push dword ptr [ebp+32]
pop dword ptr [ebp-356]
pop dword ptr [ebp-360]
jmp .Lt_00BB
.Lt_00BE:
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
push dword ptr [_Lt_00D2+4]
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
push dword ptr [_Lt_00D2]
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
je .Lt_00C0
fld qword ptr [ebp+52]
fsub qword ptr [ebp+44]
fabs
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00C2
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
je .Lt_00C4
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
jmp .Lt_00C3
.Lt_00C4:
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
je .Lt_00C5
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
.Lt_00C5:
.Lt_00C3:
jmp .Lt_00C1
.Lt_00C2:
push dword ptr [_Lt_00D1]
push dword ptr [_Lt_00D1+4]
pop dword ptr [ebp-172]
pop dword ptr [ebp-176]
push dword ptr [_Lt_00D1]
push dword ptr [_Lt_00D1+4]
pop dword ptr [ebp-164]
pop dword ptr [ebp-168]
.Lt_00C1:
fld qword ptr [ebp-320]
fmul qword ptr [ebp-320]
fld qword ptr [ebp-328]
fmul qword ptr [ebp-328]
fxch st(1)
faddp
fstp qword ptr [ebp-336]
fld qword ptr [ebp-336]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00C7
fld qword ptr [ebp-336]
fsqrt
fstp qword ptr [ebp-336]
.Lt_00C7:
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
je .Lt_00C9
fld qword ptr [ebp+68]
fsub qword ptr [ebp+60]
fabs
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00CB
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
je .Lt_00CD
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
jmp .Lt_00CC
.Lt_00CD:
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
je .Lt_00CE
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
.Lt_00CE:
.Lt_00CC:
jmp .Lt_00CA
.Lt_00CB:
push dword ptr [_Lt_00D1]
push dword ptr [_Lt_00D1+4]
pop dword ptr [ebp-156]
pop dword ptr [ebp-160]
push dword ptr [_Lt_00D1]
push dword ptr [_Lt_00D1+4]
pop dword ptr [ebp-148]
pop dword ptr [ebp-152]
.Lt_00CA:
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
push dword ptr [_Lt_00D3]
push dword ptr [_Lt_00D3+4]
pop dword ptr [ebp-224]
pop dword ptr [ebp-228]
push dword ptr [_Lt_00D3]
push dword ptr [_Lt_00D3+4]
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
.Lt_00C9:
.Lt_00C8:
.Lt_00C0:
.Lt_00BF:
.Lt_00BC:
fld qword ptr [_Lt_00D1]
fadd qword ptr [ebp-272]
fstp qword ptr [ebp-272]
.Lt_00BB:
fld qword ptr [ebp-272]
fcomp qword ptr [ebp-360]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00BE
.Lt_00BD:
.Lt_00B7:
fld qword ptr [_Lt_00D1]
fadd qword ptr [ebp-280]
fstp qword ptr [ebp-280]
.Lt_00B6:
fld qword ptr [ebp-280]
fcomp qword ptr [ebp-352]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00B9
.Lt_00B8:
.Lt_00A0:
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
.Lt_00EC:
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
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-136]
pop dword ptr [ebp-140]
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-144]
pop dword ptr [ebp-148]
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-152]
pop dword ptr [ebp-156]
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-160]
pop dword ptr [ebp-164]
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-168]
pop dword ptr [ebp-172]
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-176]
pop dword ptr [ebp-180]
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-184]
pop dword ptr [ebp-188]
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-192]
pop dword ptr [ebp-196]
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-200]
pop dword ptr [ebp-204]
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-208]
pop dword ptr [ebp-212]
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-216]
pop dword ptr [ebp-220]
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-224]
pop dword ptr [ebp-228]
mov dword ptr [ebp-120], 0
.Lt_00F2:
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
je .Lt_00F4
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
jnz .Lt_00F6
push dword ptr [ebp-128]
mov eax, dword ptr [ebp-132]
mov dword ptr [ebp-128], eax
pop dword ptr [ebp-132]
.Lt_00F6:
.Lt_00F5:
mov eax, dword ptr [ebp-128]
sal eax, 4
mov ebx, dword ptr [ebp-124]
sal ebx, 4
fld qword ptr [ebp+eax-56]
fcomp qword ptr [ebp+ebx-56]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00F8
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
jmp .Lt_00FA
.Lt_00FD:
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
.Lt_00FB:
fld qword ptr [_Lt_00D1]
fadd qword ptr [ebp-180]
fstp qword ptr [ebp-180]
.Lt_00FA:
fld qword ptr [ebp-180]
fcomp qword ptr [ebp-236]
fnstsw ax
test ah, 0b01000001
jnz .Lt_00FD
.Lt_00FC:
.Lt_00F8:
.Lt_00F7:
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
jnz .Lt_00FF
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
jmp .Lt_0101
.Lt_0104:
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
.Lt_0102:
fld qword ptr [_Lt_00D1]
fadd qword ptr [ebp-180]
fstp qword ptr [ebp-180]
.Lt_0101:
fld qword ptr [ebp-180]
fcomp qword ptr [ebp-236]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0104
.Lt_0103:
.Lt_00FF:
.Lt_00FE:
.Lt_00F4:
.Lt_00F3:
.Lt_00F0:
inc dword ptr [ebp-120]
.Lt_00EF:
cmp dword ptr [ebp-120], 2
jbe .Lt_00F2
.Lt_00F1:
.Lt_00ED:
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
.Lt_0107:
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
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000000
jnz .Lt_010A
fld qword ptr [ebp-16]
fdiv qword ptr [ebp-24]
fstp qword ptr [ebp-32]
fld qword ptr [ebp-32]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_010C
push dword ptr [_Lt_00D0+4]
push dword ptr [_Lt_00D0]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call _pow
add esp, 16
fstp qword ptr [ebp-32]
.Lt_010C:
fld qword ptr [ebp-32]
fld1
fpatan
fdiv qword ptr [_Lt_0144]
fmul qword ptr [_Lt_0145]
fstp qword ptr [ebp-40]
fld qword ptr [ebp-40]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
sahf
jae .Lt_010E
fld qword ptr [ebp-40]
fabs
fadd qword ptr [_Lt_0145]
fstp qword ptr [ebp-40]
.Lt_010E:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0110
fld qword ptr [_Lt_00D3]
fadd qword ptr [ebp-40]
fstp qword ptr [ebp-40]
.Lt_0110:
.Lt_010A:
.Lt_0109:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
sahf
jae .Lt_0112
.Lt_0113:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000000
jz .Lt_0115
push dword ptr [_Lt_00D2]
push dword ptr [_Lt_00D2+4]
pop dword ptr [ebp-36]
pop dword ptr [ebp-40]
.Lt_0115:
jmp .Lt_0111
.Lt_0112:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000000
jz .Lt_0116
.Lt_0117:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
sahf
jae .Lt_0119
.Lt_011A:
push dword ptr [_Lt_0145]
push dword ptr [_Lt_0145+4]
pop dword ptr [ebp-36]
pop dword ptr [ebp-40]
jmp .Lt_0118
.Lt_0119:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_011B
.Lt_011C:
push dword ptr [_Lt_0146]
push dword ptr [_Lt_0146+4]
pop dword ptr [ebp-36]
pop dword ptr [ebp-40]
.Lt_011B:
.Lt_0118:
jmp .Lt_0111
.Lt_0116:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_011D
.Lt_011E:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000000
jz .Lt_0120
push dword ptr [_Lt_00D3]
push dword ptr [_Lt_00D3+4]
pop dword ptr [ebp-36]
pop dword ptr [ebp-40]
.Lt_0120:
.Lt_011D:
.Lt_0111:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000000
jnz .Lt_0122
fld qword ptr [ebp-24]
fdiv qword ptr [ebp-16]
fstp qword ptr [ebp-48]
fld qword ptr [ebp-48]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0124
push dword ptr [_Lt_00D0+4]
push dword ptr [_Lt_00D0]
push dword ptr [ebp-44]
push dword ptr [ebp-48]
call _pow
add esp, 16
fstp qword ptr [ebp-48]
.Lt_0124:
fld qword ptr [ebp-48]
fld1
fpatan
fdiv qword ptr [_Lt_0144]
fmul qword ptr [_Lt_0145]
fstp qword ptr [ebp-56]
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
sahf
jae .Lt_0126
.Lt_0127:
fld qword ptr [ebp-56]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
sahf
jae .Lt_0129
.Lt_012A:
fld qword ptr [ebp-56]
fabs
fstp qword ptr [ebp-56]
jmp .Lt_0128
.Lt_0129:
fld qword ptr [ebp-56]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_012B
.Lt_012C:
fld qword ptr [_Lt_0146]
fadd qword ptr [ebp-56]
fstp qword ptr [ebp-56]
.Lt_012B:
.Lt_0128:
jmp .Lt_0125
.Lt_0126:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_012D
.Lt_012E:
fld qword ptr [ebp-56]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
sahf
jae .Lt_0130
.Lt_0131:
fld qword ptr [ebp-56]
fabs
fadd qword ptr [_Lt_00D3]
fstp qword ptr [ebp-56]
jmp .Lt_012F
.Lt_0130:
fld qword ptr [ebp-56]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0132
.Lt_0133:
fld qword ptr [ebp-56]
fabs
fadd qword ptr [_Lt_0145]
fstp qword ptr [ebp-56]
.Lt_0132:
.Lt_012F:
.Lt_012D:
.Lt_0125:
.Lt_0122:
.Lt_0121:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
sahf
jae .Lt_0135
.Lt_0136:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000000
jz .Lt_0138
push dword ptr [_Lt_00D1]
push dword ptr [_Lt_00D1+4]
pop dword ptr [ebp-52]
pop dword ptr [ebp-56]
.Lt_0138:
jmp .Lt_0134
.Lt_0135:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000000
jz .Lt_0139
.Lt_013A:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
sahf
jae .Lt_013C
.Lt_013D:
push dword ptr [_Lt_0146]
push dword ptr [_Lt_0146+4]
pop dword ptr [ebp-52]
pop dword ptr [ebp-56]
jmp .Lt_013B
.Lt_013C:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_013E
.Lt_013F:
push dword ptr [_Lt_0145]
push dword ptr [_Lt_0145+4]
pop dword ptr [ebp-52]
pop dword ptr [ebp-56]
.Lt_013E:
.Lt_013B:
jmp .Lt_0134
.Lt_0139:
fld qword ptr [ebp-16]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0140
.Lt_0141:
fld qword ptr [ebp-24]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000000
jz .Lt_0143
push dword ptr [_Lt_00D3]
push dword ptr [_Lt_00D3+4]
pop dword ptr [ebp-52]
pop dword ptr [ebp-56]
.Lt_0143:
.Lt_0140:
.Lt_0134:
fld qword ptr [_Lt_00D1]
fsub qword ptr [ebp-56]
fstp qword ptr [ebp-56]
fld qword ptr [ebp-56]
fadd qword ptr [ebp-40]
fdiv qword ptr [_Lt_00CF]
fstp qword ptr [ebp-8]
.Lt_0108:
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
.Lt_0147:
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
jmp .Lt_014B
.Lt_014E:
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
je .Lt_0150
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
.Lt_0150:
.Lt_014F:
mov dword ptr [ebp-192], 1
.Lt_0154:
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
.Lt_0152:
inc dword ptr [ebp-192]
.Lt_0151:
cmp dword ptr [ebp-192], 3
jle .Lt_0154
.Lt_0153:
.Lt_014C:
inc dword ptr [ebp-188]
.Lt_014B:
mov ecx, dword ptr [ebp-196]
cmp dword ptr [ebp-188], ecx
jle .Lt_014E
.Lt_014D:
fld qword ptr [ebp-40]
fcomp qword ptr [_Lt_00D2]
fnstsw ax
test ah, 0b01000001
jnz .Lt_0156
mov dword ptr [ebp-192], 1
.Lt_015A:
mov ecx, dword ptr [ebp-192]
fld qword ptr [ebp+ecx*8-136]
fdiv qword ptr [ebp-40]
mov ecx, dword ptr [ebp-192]
fstp qword ptr [ebp+ecx*8-72]
.Lt_0158:
inc dword ptr [ebp-192]
.Lt_0157:
cmp dword ptr [ebp-192], 3
jle .Lt_015A
.Lt_0159:
.Lt_0156:
.Lt_0155:
mov dword ptr [ebp-192], 1
.Lt_015E:
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
.Lt_015C:
inc dword ptr [ebp-192]
.Lt_015B:
cmp dword ptr [ebp-192], 3
jle .Lt_015E
.Lt_015D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0148:
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
.Lt_0161:
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
jmp .Lt_0164
.Lt_0167:
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
.Lt_0165:
inc dword ptr [ebp-40]
.Lt_0164:
mov eax, dword ptr [ebp-44]
cmp dword ptr [ebp-40], eax
jle .Lt_0167
.Lt_0166:
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_0162:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_fb_ctor__clv:
.Lt_0002:
mov dword ptr [_CLV_BUFFER_FOCUS], 0
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
.balign 16
__ZN10NAMES_TYPEaSERKS_:
push ebp
mov ebp, esp
push ebx
.Lt_000E:
push 0
push -1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call _fb_StrAssign@20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 12
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea eax, [ebx]
push eax
call _fb_StrAssign@20
.Lt_000F:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0008:	.ascii	"=\0"
.balign 4
__ZN6BASE643B64E:
.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\0"
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
_Lt_006E:	.long	0x40E00000
.balign 4
_Lt_006F:	.long	0x00000000
.balign 8
_Lt_00CF:	.quad	0x4000000000000000
.balign 8
_Lt_00D0:	.quad	0xBFF0000000000000
.balign 8
_Lt_00D1:	.quad	0x3FF0000000000000
.balign 8
_Lt_00D2:	.quad	0x0000000000000000
.balign 8
_Lt_00D3:	.quad	0x3FE0000000000000
.balign 8
_Lt_0144:	.quad	0x3FF921FB54442D18
.balign 8
_Lt_0145:	.quad	0x3FD0000000000000
.balign 8
_Lt_0146:	.quad	0x3FE8000000000000

.section .ctors
.int _fb_ctor__clv
