	.intel_syntax noprefix

.section .text
.balign 16

.globl _LOAD16BITRGB@4
_LOAD16BITRGB@4:
push ebp
mov ebp, esp
sub esp, 104
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_0021
call _fb_ErrorSetModName@4
mov dword ptr [ebp-64], eax
push offset _Lt_0026
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-68], eax
.Lt_000C:
push dword ptr [ebp+8]
call _LoadRGBAFile
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_000F
mov dword ptr [ebp-4], 0
jmp .Lt_000D
.Lt_000F:
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
mov dword ptr [ebp-72], 1
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-76], eax
jmp .Lt_0017
.Lt_001A:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-84], 0
mov eax, dword ptr [ebp-12]
dec eax
mov dword ptr [ebp-88], eax
jmp .Lt_001C
.Lt_001F:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-96], eax
push offset _Lt_0021
push 68
push dword ptr [ebp-96]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0028
jmp eax
.Lt_0028:
mov eax, dword ptr [ebp-96]
add eax, dword ptr [ebp-80]
movzx ebx, byte ptr [eax+2]
sar ebx, 3
sal ebx, 11
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-100], eax
push offset _Lt_0021
push 68
push dword ptr [ebp-100]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0029
jmp eax
.Lt_0029:
mov eax, dword ptr [ebp-100]
add eax, dword ptr [ebp-80]
movzx ecx, byte ptr [eax+1]
sar ecx, 2
sal ecx, 5
or ebx, ecx
mov ecx, dword ptr [ebp-28]
mov dword ptr [ebp-104], ecx
push offset _Lt_0021
push 68
push dword ptr [ebp-104]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_002A
jmp eax
.Lt_002A:
mov eax, dword ptr [ebp-104]
add eax, dword ptr [ebp-80]
movzx ecx, byte ptr [eax]
sar ecx, 3
or ebx, ecx
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-92], ecx
push offset _Lt_0021
push 68
push dword ptr [ebp-92]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_002B
jmp eax
.Lt_002B:
mov eax, dword ptr [ebp-84]
sal eax, 1
mov ecx, dword ptr [ebp-92]
add ecx, eax
mov word ptr [ecx], bx
add dword ptr [ebp-80], 4
.Lt_001D:
inc dword ptr [ebp-84]
.Lt_001C:
mov ebx, dword ptr [ebp-88]
cmp dword ptr [ebp-84], ebx
jle .Lt_001F
.Lt_001E:
mov ebx, dword ptr [ebp-20]
add dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-24]
sal ebx, 1
add dword ptr [ebp-44], ebx
.Lt_0018:
inc dword ptr [ebp-72]
.Lt_0017:
mov ebx, dword ptr [ebp-76]
cmp dword ptr [ebp-72], ebx
jle .Lt_001A
.Lt_0019:
push dword ptr [ebp-8]
call _fb_GfxImageDestroy@4
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-4], ebx
.Lt_000D:
push dword ptr [ebp-68]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-64]
call _fb_ErrorSetModName@4
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
sub esp, 112
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push offset _Lt_0021
call _fb_ErrorSetModName@4
mov dword ptr [ebp-48], eax
push offset _Lt_005B
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-52], eax
.Lt_0031:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0034
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_0032
.Lt_0034:
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
push offset _Lt_0035
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
mov dword ptr [ebp-56], eax
jmp .Lt_0037
.Lt_003A:
mov eax, offset __ZN6BASE643B64E
mov dword ptr [ebp-68], eax
push offset _Lt_0021
push 96
push dword ptr [ebp-68]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_005D
jmp eax
.Lt_005D:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-64], eax
push offset _Lt_0021
push 96
push dword ptr [ebp-64]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_005E
jmp eax
.Lt_005E:
mov eax, dword ptr [ebp-64]
add eax, dword ptr [ebp-24]
movzx ebx, byte ptr [eax]
sar ebx, 2
mov eax, dword ptr [ebp-68]
add eax, ebx
mov ebx, dword ptr [ebp-44]
mov dword ptr [ebp-60], ebx
push offset _Lt_0021
push 96
push dword ptr [ebp-60]
mov ebx, eax
call _fb_NullPtrChk@12
test eax, eax
je .Lt_005F
jmp eax
.Lt_005F:
mov eax, dword ptr [ebp-60]
add eax, dword ptr [ebp-28]
mov cl, byte ptr [ebx]
mov byte ptr [eax], cl
mov ecx, offset __ZN6BASE643B64E
mov dword ptr [ebp-84], ecx
push offset _Lt_0021
push 96
push dword ptr [ebp-84]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0060
jmp eax
.Lt_0060:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-76], eax
push offset _Lt_0021
push 96
push dword ptr [ebp-76]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0061
jmp eax
.Lt_0061:
mov eax, dword ptr [ebp-76]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax]
and ecx, 3
sal ecx, 4
mov eax, dword ptr [ebp-84]
add eax, ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-80], ecx
push offset _Lt_0021
push 96
push dword ptr [ebp-80]
mov ebx, eax
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0062
jmp eax
.Lt_0062:
mov eax, dword ptr [ebp-80]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax+1]
sar ecx, 4
add ebx, ecx
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-72], ecx
push offset _Lt_0021
push 96
push dword ptr [ebp-72]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0063
jmp eax
.Lt_0063:
mov eax, dword ptr [ebp-72]
add eax, dword ptr [ebp-28]
mov cl, byte ptr [ebx]
mov byte ptr [eax+1], cl
mov ecx, offset __ZN6BASE643B64E
mov dword ptr [ebp-100], ecx
push offset _Lt_0021
push 96
push dword ptr [ebp-100]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0064
jmp eax
.Lt_0064:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-92], eax
push offset _Lt_0021
push 96
push dword ptr [ebp-92]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0065
jmp eax
.Lt_0065:
mov eax, dword ptr [ebp-92]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax+1]
and ecx, 15
sal ecx, 2
mov eax, dword ptr [ebp-100]
add eax, ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-96], ecx
push offset _Lt_0021
push 96
push dword ptr [ebp-96]
mov ebx, eax
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0066
jmp eax
.Lt_0066:
mov eax, dword ptr [ebp-96]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax+2]
sar ecx, 6
add ebx, ecx
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-88], ecx
push offset _Lt_0021
push 96
push dword ptr [ebp-88]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0067
jmp eax
.Lt_0067:
mov eax, dword ptr [ebp-88]
add eax, dword ptr [ebp-28]
mov cl, byte ptr [ebx]
mov byte ptr [eax+2], cl
mov ecx, offset __ZN6BASE643B64E
mov dword ptr [ebp-112], ecx
push offset _Lt_0021
push 96
push dword ptr [ebp-112]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0068
jmp eax
.Lt_0068:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-108], eax
push offset _Lt_0021
push 96
push dword ptr [ebp-108]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0069
jmp eax
.Lt_0069:
mov eax, dword ptr [ebp-108]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax+2]
and ecx, 63
mov eax, dword ptr [ebp-112]
add eax, ecx
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-104], ecx
push offset _Lt_0021
push 96
push dword ptr [ebp-104]
mov ebx, eax
call _fb_NullPtrChk@12
test eax, eax
je .Lt_006A
jmp eax
.Lt_006A:
mov eax, dword ptr [ebp-104]
add eax, dword ptr [ebp-28]
mov cl, byte ptr [ebx]
mov byte ptr [eax+3], cl
add dword ptr [ebp-28], 4
.Lt_0038:
add dword ptr [ebp-24], 3
.Lt_0037:
mov ecx, dword ptr [ebp-56]
cmp dword ptr [ebp-24], ecx
jle .Lt_003A
.Lt_0039:
cmp dword ptr [ebp-32], 0
je .Lt_004A
mov ecx, offset __ZN6BASE643B64E
mov dword ptr [ebp-64], ecx
push offset _Lt_0021
push 99
push dword ptr [ebp-64]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_006B
jmp eax
.Lt_006B:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-60], eax
push offset _Lt_0021
push 99
push dword ptr [ebp-60]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_006C
jmp eax
.Lt_006C:
mov eax, dword ptr [ebp-60]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax]
sar ecx, 2
mov eax, dword ptr [ebp-64]
add eax, ecx
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-56], ecx
push offset _Lt_0021
push 99
push dword ptr [ebp-56]
mov ebx, eax
call _fb_NullPtrChk@12
test eax, eax
je .Lt_006D
jmp eax
.Lt_006D:
mov eax, dword ptr [ebp-56]
add eax, dword ptr [ebp-28]
mov cl, byte ptr [ebx]
mov byte ptr [eax], cl
mov ecx, offset __ZN6BASE643B64E
mov dword ptr [ebp-80], ecx
push offset _Lt_0021
push 99
push dword ptr [ebp-80]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_006E
jmp eax
.Lt_006E:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-72], eax
push offset _Lt_0021
push 99
push dword ptr [ebp-72]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_006F
jmp eax
.Lt_006F:
mov eax, dword ptr [ebp-72]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax]
and ecx, 3
sal ecx, 4
mov eax, dword ptr [ebp-80]
add eax, ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-76], ecx
push offset _Lt_0021
push 99
push dword ptr [ebp-76]
mov ebx, eax
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0070
jmp eax
.Lt_0070:
mov eax, dword ptr [ebp-76]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax+1]
sar ecx, 4
add ebx, ecx
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-68], ecx
push offset _Lt_0021
push 99
push dword ptr [ebp-68]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0071
jmp eax
.Lt_0071:
mov eax, dword ptr [ebp-68]
add eax, dword ptr [ebp-28]
mov cl, byte ptr [ebx]
mov byte ptr [eax+1], cl
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-84], ecx
push offset _Lt_0021
push 99
push dword ptr [ebp-84]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0072
jmp eax
.Lt_0072:
mov eax, dword ptr [ebp-84]
add eax, dword ptr [ebp-28]
mov byte ptr [eax+3], 61
cmp dword ptr [ebp-32], 2
jne .Lt_0054
mov eax, offset __ZN6BASE643B64E
mov dword ptr [ebp-100], eax
push offset _Lt_0021
push 100
push dword ptr [ebp-100]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0073
jmp eax
.Lt_0073:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-92], eax
push offset _Lt_0021
push 100
push dword ptr [ebp-92]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0074
jmp eax
.Lt_0074:
mov eax, dword ptr [ebp-92]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax+1]
and ecx, 15
sal ecx, 2
mov eax, dword ptr [ebp-100]
add eax, ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-96], ecx
push offset _Lt_0021
push 100
push dword ptr [ebp-96]
mov ebx, eax
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0075
jmp eax
.Lt_0075:
mov eax, dword ptr [ebp-96]
add eax, dword ptr [ebp-24]
movzx ecx, byte ptr [eax+2]
sar ecx, 6
add ebx, ecx
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-88], ecx
push offset _Lt_0021
push 100
push dword ptr [ebp-88]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0076
jmp eax
.Lt_0076:
mov eax, dword ptr [ebp-88]
add eax, dword ptr [ebp-28]
mov cl, byte ptr [ebx]
mov byte ptr [eax+2], cl
jmp .Lt_0053
.Lt_0054:
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-88], ecx
push offset _Lt_0021
push 100
push dword ptr [ebp-88]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0077
jmp eax
.Lt_0077:
mov eax, dword ptr [ebp-88]
add eax, dword ptr [ebp-28]
mov byte ptr [eax+2], 61
.Lt_0053:
.Lt_004A:
.Lt_0049:
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
jmp .Lt_0032
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
.Lt_0032:
push dword ptr [ebp-52]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-48]
call _fb_ErrorSetModName@4
lea eax, [ebp-12]
push eax
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
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
push offset _Lt_0021
call _fb_ErrorSetModName@4
mov dword ptr [ebp-20], eax
push offset _Lt_008F
call _fb_ErrorSetFuncName@4
mov dword ptr [ebp-24], eax
.Lt_0078:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jge .Lt_007B
mov dword ptr [ebp-4], 0
jmp .Lt_0079
.Lt_007B:
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
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-32], eax
jmp .Lt_007D
.Lt_0080:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
push offset _Lt_0021
push 117
push dword ptr [ebp-36]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0091
jmp eax
.Lt_0091:
mov eax, dword ptr [ebp-36]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax+1]
push ebx
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
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-44], ebx
push offset _Lt_0021
push 117
push dword ptr [ebp-44]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0092
jmp eax
.Lt_0092:
mov eax, dword ptr [ebp-44]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax+2]
push ebx
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
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-52], ebx
push offset _Lt_0021
push 117
push dword ptr [ebp-52]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0093
jmp eax
.Lt_0093:
mov eax, dword ptr [ebp-52]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax+3]
push ebx
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
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-40], -1
jle .Lt_0085
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-60], ebx
push offset _Lt_0021
push 119
push dword ptr [ebp-60]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0094
jmp eax
.Lt_0094:
mov eax, dword ptr [ebp-60]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
push ebx
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
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-64]
sal eax, 2
mov ebx, dword ptr [ebp-40]
sar ebx, 4
add eax, ebx
mov bl, al
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-68], eax
push offset _Lt_0021
push 119
push dword ptr [ebp-68]
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0095
jmp eax
.Lt_0095:
mov eax, dword ptr [ebp-68]
mov byte ptr [eax], bl
inc dword ptr [ebp-12]
.Lt_0085:
.Lt_0084:
cmp dword ptr [ebp-48], -1
jle .Lt_0089
mov ebx, dword ptr [ebp-40]
sal ebx, 4
mov eax, dword ptr [ebp-48]
sar eax, 2
add ebx, eax
mov al, bl
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-60], ebx
push offset _Lt_0021
push 121
push dword ptr [ebp-60]
mov ebx, eax
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0096
jmp eax
.Lt_0096:
mov eax, dword ptr [ebp-60]
mov byte ptr [eax], bl
inc dword ptr [ebp-12]
.Lt_0089:
cmp dword ptr [ebp-56], -1
jle .Lt_008C
mov ebx, dword ptr [ebp-48]
sal ebx, 6
add ebx, dword ptr [ebp-56]
mov al, bl
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-60], ebx
push offset _Lt_0021
push 122
push dword ptr [ebp-60]
mov ebx, eax
call _fb_NullPtrChk@12
test eax, eax
je .Lt_0097
jmp eax
.Lt_0097:
mov eax, dword ptr [ebp-60]
mov byte ptr [eax], bl
inc dword ptr [ebp-12]
.Lt_008C:
.Lt_007E:
add dword ptr [ebp-28], 4
.Lt_007D:
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
jle .Lt_0080
.Lt_007F:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_0079:
push dword ptr [ebp-24]
call _fb_ErrorSetFuncName@4
push dword ptr [ebp-20]
call _fb_ErrorSetModName@4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0005:	.ascii	"This program requires at least a 486 to run.\0"
.balign 4
_Lt_0021:	.ascii	"C:\\ag\\Roe 068\\inc\\fbimage.bi\0"
.balign 4
_Lt_0026:	.ascii	"LOAD16BITRGB\0"
.balign 4
__ZN6BASE643B64E:
.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\0"
.balign 4
_Lt_0035:	.ascii	"=\0"
.balign 4
_Lt_005B:	.ascii	"ENCODEMEMORY\0"
.balign 4
_Lt_008F:	.ascii	"DECODEMEMORY\0"
.balign 4
_Lt_009C:	.ascii	"\"\0"
.balign 4
_Lt_009E:	.ascii	",\0"
.balign 4
_Lt_00A2:	.ascii	"C:\\ag\\Roe 068\\inc\\Names.bi\0"

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
_Lt_00B3:	.ascii	"C:\\ag\\Roe 068\\inc\\CLV.bi\0"
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
_DB_NAMES:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_DB_INPUT:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_DB_QUEUE:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_NAMES_BUFFER:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_DATA_TABLE:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_QUEUE_TABLE:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0
.balign 4
_MAP_BUFFER:
.long 0
.long 0
.int 0
.int 24
.int 1
.int 17
.skip 12,0

.section .bss

.globl _WIN_SI
.balign 4
	.comm	_WIN_SI,2

.globl _MAPPATH_STR
.balign 4
	.comm	_MAPPATH_STR,12

.globl _MAP_STR
.balign 4
	.comm	_MAP_STR,12

.globl _LVUPPATH_STR
.balign 4
	.comm	_LVUPPATH_STR,12

.globl _LVUP_STR
.balign 4
	.comm	_LVUP_STR,12

.globl _THISPATH_STR
.balign 4
	.comm	_THISPATH_STR,12

.globl _FONTPATH_STR
.balign 4
	.comm	_FONTPATH_STR,12

.globl _LOGOPATH_STR
.balign 4
	.comm	_LOGOPATH_STR,12

.globl _SPRITEPATH_STR
.balign 4
	.comm	_SPRITEPATH_STR,12

.globl _PALPATH_STR
.balign 4
	.comm	_PALPATH_STR,12

.globl _HELPPATH_STR
.balign 4
	.comm	_HELPPATH_STR,12

.globl _HELPFILENAME_STR
.balign 4
	.comm	_HELPFILENAME_STR,12
.balign 4
	.lcomm	_E_STRA,7077996
.balign 8
	.lcomm	_G_DFA,8913032
.balign 4
	.lcomm	_D_SIA,30
.balign 4
	.lcomm	_T_SIA,8210
.balign 4
	.lcomm	_L_SIA,130

.section .data
.balign 4
_WIN_SIA:
.long 0
.long 0
.int 0
.int 2
.int 1
.int 17
.skip 12,0
.balign 4
_Lt_00C1:	.ascii	"puzzlum-fbc068.bas\0"
.balign 4
_FONTSHEETS:
.long 0
.long 0
.int 0
.int 4
.int 1
.int 17
.skip 12,0

.section .bss
.balign 4
	.lcomm	_PAL,1024

.section .data
.balign 4
_Lt_00C4:
.int _PAL
.int _PAL
.int 1024
.int 4
.int 1
.int 49
.int 256
.int 0
.int 255

.section .bss
.balign 4
	.lcomm	_PAGES,128
.balign 4
	.lcomm	_GTMP,4
.balign 4
	.lcomm	_GTMPT,4
.balign 4
	.lcomm	_MOUSE_STR,12
.balign 4
	.lcomm	_EX_SI,2
.balign 4
	.lcomm	_DY_SI,2
.balign 4
	.lcomm	_MDX_SI,2
.balign 4
	.lcomm	_MDY_SI,2
.balign 4
	.lcomm	_TEXTDELAY_SF,4
.balign 4
	.lcomm	_TEXTCOLOR_SI,2
.balign 4
	.lcomm	_C_STR,12
.balign 4
	.lcomm	_CLAST_STR,12
.balign 4
	.lcomm	_TEXTS_STR,12
.balign 4
	.lcomm	_TEMP1_STR,12
.balign 4
	.lcomm	_TEMP2_STR,12
.balign 4
	.lcomm	_RR_STR,12
.balign 4
	.lcomm	_I_SI,2
.balign 4
	.lcomm	_A_STR,12
.balign 4
	.lcomm	_H_STR,12
.balign 4
	.lcomm	_TTT_SI,2
.balign 4
	.lcomm	_MS_SI,2
.balign 4
	.lcomm	_T_SI,2
.balign 4
	.lcomm	_CTRL_STR,12
.balign 4
	.lcomm	_TY_SI,2
.balign 4
	.lcomm	_DD_SI,2
.balign 4
	.lcomm	_TX_SI,2
.balign 4
	.lcomm	_AA_SI,2
.balign 4
	.lcomm	_R_STR,12
.balign 4
	.lcomm	_BG_STR,12
.balign 4
	.lcomm	_FG_STR,12
.balign 4
	.lcomm	_RG_STR,12
.balign 4
	.lcomm	_RBG_STR,12
.balign 4
	.lcomm	_RFG_STR,12
.balign 4
	.lcomm	_RID_SF,4
.balign 4
	.lcomm	_PRFLIDTY_STR,12
.balign 4
	.lcomm	_PRFLACTN_STR,12
.balign 4
	.lcomm	_PRFLACTNCT_STR,12
.balign 4
	.lcomm	_PRFLGPIC_STR,12
.balign 4
	.lcomm	_PRFLCMND_STR,12
.balign 4
	.lcomm	_PRFLGPICACTN_STR,12
.balign 4
	.lcomm	_PRFLIDTY_SF,4
.balign 4
	.lcomm	_PRFLHP_SF,4
.balign 4
	.lcomm	_PRFLSTR_SF,4
.balign 4
	.lcomm	_PRFLESS_SF,4
.balign 4
	.lcomm	_PRFLSPD_SF,4
.balign 4
	.lcomm	_PRFLARMR_SF,4
.balign 4
	.lcomm	_PRFLEXP_SF,4
.balign 4
	.lcomm	_PRFLVALU_SF,4
.balign 4
	.lcomm	_PRFLPIRC_SF,4
.balign 4
	.lcomm	_PRFLCHCK_SF,4
.balign 4
	.lcomm	_PRFLLV_SF,4
.balign 4
	.lcomm	_PRFLHPMAX_SF,4
.balign 4
	.lcomm	_PRFLSTRMAX_SF,4
.balign 4
	.lcomm	_PRFLESSMAX_SF,4
.balign 4
	.lcomm	_PRFLESSSPD_SF,4
.balign 4
	.lcomm	_PRFLEVAD_SF,4
.balign 4
	.lcomm	_PRFLBLNK_SF,4
.balign 4
	.lcomm	_MAPNAME_STR,12
.balign 4
	.lcomm	_RR_SF,4
.balign 4
	.lcomm	_COLR_SI,2
.balign 4
	.lcomm	_TEXT_STR,12
.balign 4
	.lcomm	_A_SI,2
.balign 4
	.lcomm	_D_SI,2
.balign 4
	.lcomm	_DIS_SI,2
.balign 4
	.lcomm	_STATX_SI,2
.balign 4
	.lcomm	_VIEWX_SI,2
.balign 4
	.lcomm	_FRAMEC1_SI,2
.balign 4
	.lcomm	_FRAMEC2_SI,2
.balign 4
	.lcomm	_FRAMEX1_SF,4
.balign 4
	.lcomm	_FRAMEX2_SF,4
.balign 4
	.lcomm	_FRAMEY1_SF,4
.balign 4
	.lcomm	_FRAMEY2_SF,4
.balign 4
	.lcomm	_TITLED_SI,2
.balign 4
	.lcomm	_AM_STR,12
.balign 4
	.lcomm	_AM,2
.balign 4
	.lcomm	_XM_SI,2
.balign 4
	.lcomm	_YM_SI,2
.balign 4
	.lcomm	_MOUSE_WIDTH,2
.balign 4
	.lcomm	_MOUSE_HEIGHT,2
.balign 4
	.lcomm	_SCREEN_WIDTH,2
.balign 4
	.lcomm	_SCREEN_HEIGHT,2
.balign 4
	.lcomm	_DISPLAY_WIDTH,2
.balign 4
	.lcomm	_DISPLAY_HEIGHT,2
.balign 4
	.lcomm	_AX,2
.balign 4
	.lcomm	_BX,2
.balign 4
	.lcomm	_CX,2
.balign 4
	.lcomm	_DX,2
.balign 4
	.lcomm	_XXMOUSE_SI,2
.balign 4
	.lcomm	_YYMOUSE_SI,2
.balign 4
	.lcomm	_LB_SI,2
.balign 4
	.lcomm	_RB_SI,2
.balign 4
	.lcomm	_XMOUSE_SI,2
.balign 4
	.lcomm	_YMOUSE_SI,2
.balign 4
	.lcomm	_JSX_SI,2
.balign 4
	.lcomm	_JSY_SI,2
.balign 4
	.lcomm	_JSA_SI,2
.balign 4
	.lcomm	_JSB_SI,2
.balign 4
	.lcomm	_LLB_SI,2
.balign 4
	.lcomm	_RRB_SI,2
.balign 4
	.lcomm	_L1B_SI,2
.balign 4
	.lcomm	_R1B_SI,2
.balign 4
	.lcomm	_ACTION_STR,12
.balign 4
	.lcomm	_AA_STR,12
.balign 4
	.lcomm	_ST_SF,4
.balign 4
	.lcomm	_TEMPX_SI,2
.balign 4
	.lcomm	_TEMPY_SI,2
.balign 4
	.lcomm	_STRUSE,2
.balign 4
	.lcomm	_ESSUSE,2
.balign 4
	.lcomm	_EVADEATTACK,2
.balign 4
	.lcomm	_ATTACKBLOCKED,2
.balign 4
	.lcomm	_ATTACKDAMAGE,2
.balign 4
	.lcomm	_ATTACKPIC_STR,12
.balign 4
	.lcomm	_ATTACKNAME_STR,12
.balign 4
	.lcomm	_TEMPTX_SI,2
.balign 4
	.lcomm	_TEMPTY_SI,2
.balign 4
	.lcomm	_TEMPDIS_SI,2
.balign 4
	.lcomm	_SLEPADD_SI,2
.balign 4
	.lcomm	_LVGAIN_SI,2
.balign 4
	.lcomm	_VALUGAIN_SI,2
.balign 4
	.lcomm	_EXPGAIN_SI,2
.balign 4
	.lcomm	_STRGAIN_SI,2
.balign 4
	.lcomm	_ESSGAIN_SI,2
.balign 4
	.lcomm	_MENUITEM_SI,2
.balign 4
	.lcomm	_MENUSELECT_SI,2
.balign 4
	.lcomm	_MENU_STR,12
.balign 4
	.lcomm	_HAVEIT_STR,12
.balign 4
	.lcomm	_MENUSIZE_SI,2
.balign 4
	.lcomm	_INMENU_SI,2
.balign 4
	.lcomm	_MENUCOST_SI,2
.balign 4
	.lcomm	_MENUITEM_STR,12
.balign 4
	.lcomm	_MENUSELECT_STR,12
.balign 4
	.lcomm	_HASHADIT_STR,12
.balign 4
	.lcomm	_GETIT_STR,12
.balign 4
	.lcomm	_AM_SI,2
.balign 4
	.lcomm	_ARE_SI,2
.balign 4
	.lcomm	_ARE_STR,12
.balign 4
	.lcomm	_DX1_SI,2
.balign 4
	.lcomm	_DY1_SI,2
.balign 4
	.lcomm	_DX2_SI,2
.balign 4
	.lcomm	_DY2_SI,2
.balign 4
	.lcomm	_TTX,2
.balign 4
	.lcomm	_TTY,2
.balign 4
	.lcomm	_TT_SF,4
.balign 4
	.lcomm	_TEMPX_SF,4
.balign 4
	.lcomm	_TEMPY_SF,4
.balign 4
	.lcomm	_TEMPD_SI,2
.balign 4
	.lcomm	_THERE_STR,12
.balign 4
	.lcomm	_THERE_SI,2
.balign 4
	.lcomm	_MOVE_SI,2
.balign 4
	.lcomm	_TEMPACTION_STR,12
.balign 4
	.lcomm	_INBOUNDS_SI,2
.balign 4
	.lcomm	_HAVEIT_SI,2
.balign 4
	.lcomm	_T_STR,12
.balign 4
	.lcomm	_TT_STR,12
.balign 4
	.lcomm	_HAVEGOTIT_STR,12
.balign 4
	.lcomm	_GETIT_SI,2
.balign 4
	.lcomm	_WINIT_STR,12
.balign 4
	.lcomm	_HASIT_STR,12
.balign 4
	.lcomm	_HASIT_SI,2
.balign 4
	.lcomm	_HERE_SI,2
.balign 4
	.lcomm	_BLANKCHECK_STR,12
.balign 4
	.lcomm	_BLANKCHECK_SI,2
.balign 4
	.lcomm	_CRSRX_SI,2
.balign 4
	.lcomm	_CRSRY_SI,2
.balign 4
	.lcomm	_ATTACKTHEM_STR,12
.balign 4
	.lcomm	_HAVEHADIT_STR,12
.balign 4
	.lcomm	_STRUSE_SI,2
.balign 4
	.lcomm	_ESSSE_SI,2
.balign 4
	.lcomm	_STRDAMAGE_SI,2
.balign 4
	.lcomm	_R1_SI,2
.balign 4
	.lcomm	_R2_SI,2
.balign 4
	.lcomm	_R3_SI,2
.balign 4
	.lcomm	_R4_SI,2
.balign 4
	.lcomm	_R5_SI,2
.balign 4
	.lcomm	_EXITCOMMAND3,4
.balign 4
	.lcomm	_EXITCOMMAND2,4
.balign 4
	.lcomm	_EXITCOMMAND,4
.balign 4
	.lcomm	_RESTART_ROE,4
.balign 4
	.lcomm	_TEMPX1_SF,4
.balign 4
	.lcomm	_TEMPY1_SF,4
.balign 4
	.lcomm	_TEMPX2_SF,4
.balign 4
	.lcomm	_TEMPY2_SF,4
.balign 4
	.lcomm	_T_SF,2
.balign 4
	.lcomm	_R_SI,2
.balign 4
	.lcomm	_TT_SI,2
.balign 4
	.lcomm	_HERE_STR,12
.balign 4
	.lcomm	_HASGOTIT_STR,12

.section .data
.balign 4
_.Lt_00C7:
.short 1
.int _Lt_00C9
.short 1
.int _Lt_00C9
.short -1
.int _.Lt_00CB
.balign 4
_Lt_00C9:	.ascii	"1\0"
.balign 4
_.Lt_00CB:
.short 1
.int _Lt_00C9
.short 1
.int _Lt_00CD
.short -1
.int _.Lt_00CF
.balign 4
_Lt_00CD:	.ascii	"4\0"
.balign 4
_.Lt_00CF:
.short 1
.int _Lt_00C9
.short 1
.int _Lt_00D1
.short -1
.int _.Lt_00D3
.balign 4
_Lt_00D1:	.ascii	"8\0"
.balign 4
_.Lt_00D3:
.short 1
.int _Lt_00C9
.short 2
.int _Lt_00D5
.short -1
.int _.Lt_00D7
.balign 4
_Lt_00D5:	.ascii	"12\0"
.balign 4
_.Lt_00D7:
.short 1
.int _Lt_00C9
.short 2
.int _Lt_00D9
.short -1
.long 0
.balign 4
_Lt_00D9:	.ascii	"16\0"
.balign 4
_Lt_00E0:	.ascii	".\\\0"
.balign 4
_Lt_00E1:	.ascii	"fonts\\\0"
.balign 4
_Lt_00E2:	.ascii	"logos\\\0"
.balign 4
_Lt_00E3:	.ascii	"sprites\\\0"
.balign 4
_Lt_00E4:	.ascii	"pal\\\0"
.balign 4
_Lt_00E5:	.ascii	"maps\\\0"
.balign 4
_Lt_00E6:	.ascii	"help\\\0"
.balign 4
_Lt_00E7:	.ascii	"roe4help.hlp\0"
.balign 4
_Lt_00E8:	.ascii	"demo.vds\0"
.balign 4
_Lt_00E9:	.ascii	"lvup\\\0"
.balign 4
_Lt_00EA:	.ascii	"roe_lvup.dat\0"
.balign 4
_Lt_00EB:	.ascii	".\\dict\\input.txt\0"
.balign 4
_Lt_00ED:	.ascii	"QBPALVGA.DAT\0"
.balign 4
_Lt_00F1:	.ascii	".\\fonts\\mishap22.font.png\0"
.balign 4
_Lt_00F3:	.ascii	".\\fonts\\roe00.font.png\0"
.balign 4
_Lt_00F5:	.ascii	"roe.splash.png\0"
.balign 4
_Lt_00FB:	.ascii	"[F1 Save|F2 Load|F3 Shop]\0"
.balign 4
_Lt_0104:	.ascii	"t\0"
.balign 4
_Lt_0116:	.ascii	"L ||\0"
.balign 4
_Lt_0117:	.ascii	" \0"
.balign 4
_Lt_011B:	.ascii	"L||\0"
.balign 4
_Lt_0122:	.ascii	"LN_ROE\0"
.balign 4
_Lt_0126:	.ascii	".\\dict\\names.txt\0"
.balign 4
_Lt_013E:	.ascii	"pndximp_\0"
.balign 4
_Lt_0141:	.ascii	"dust\0"
.balign 4
_Lt_014D:	.ascii	"____\0"
.balign 4
_Lt_0150:	.ascii	"________\0"
.balign 4
_Lt_0155:	.ascii	"spdr\0"
.balign 4
_Lt_0157:	.ascii	"Spider\0"
.balign 4
_Lt_0158:	.ascii	"movebiteweb_\0"
.balign 4
_Lt_015B:	.ascii	"0001\0"
.balign 4
_Lt_015F:	.ascii	"vnom\0"
.balign 4
_Lt_0161:	.ascii	"wall\0"
.balign 4
_Lt_0164:	.ascii	"web_\0"
.balign 4
_Lt_0166:	.ascii	"Web\0"
.balign 4
_Lt_0168:	.ascii	"grml\0"
.balign 4
_Lt_016A:	.ascii	"Gremlin\0"
.balign 4
_Lt_016B:	.ascii	"movebitepnch\0"
.balign 4
_Lt_016E:	.ascii	"dggr\0"
.balign 4
_Lt_0170:	.ascii	"pndx\0"
.balign 4
_Lt_0172:	.ascii	"Poindexter\0"
.balign 4
_Lt_0173:	.ascii	"wstf\0"
.balign 4
_Lt_0175:	.ascii	"dtby\0"
.balign 4
_Lt_0177:	.ascii	"Dust Bunny\0"
.balign 4
_Lt_0178:	.ascii	"movebitekickdtbydust\0"
.balign 4
_Lt_017A:	.ascii	"shkt\0"
.balign 4
_Lt_017C:	.ascii	"Shiny Knight\0"
.balign 4
_Lt_017D:	.ascii	"movepnchdggr\0"
.balign 4
_Lt_017F:	.ascii	"emgd\0"
.balign 4
_Lt_0181:	.ascii	"Emerald Guard\0"
.balign 4
_Lt_0186:	.ascii	"pike\0"
.balign 4
_Lt_0188:	.ascii	"door\0"
.balign 4
_Lt_018A:	.ascii	"Door\0"
.balign 4
_Lt_018E:	.ascii	"loc1\0"
.balign 4
_Lt_0191:	.ascii	"loc2\0"
.balign 4
_Lt_0194:	.ascii	"loc3\0"
.balign 4
_Lt_0196:	.ascii	"imp_\0"
.balign 4
_Lt_0198:	.ascii	"Little Imp\0"
.balign 4
_Lt_0199:	.ascii	"movewingfire\0"
.balign 4
_Lt_019C:	.ascii	"Merchant\0"
.balign 4
_Lt_019D:	.ascii	"dggrgrplseed\0"
.balign 4
_Lt_01A2:	.ascii	"chst\0"
.balign 4
_Lt_01A4:	.ascii	"Treasure chest\0"
.balign 4
_Lt_01A7:	.ascii	"key1\0"
.balign 4
_Lt_01A8:	.ascii	"key2\0"
.balign 4
_Lt_01AA:	.ascii	"bldr\0"
.balign 4
_Lt_01AC:	.ascii	"Big boulder\0"
.balign 4
_Lt_01B0:	.ascii	"LN_STARTUP\0"
.balign 4
_Lt_01B7:	.ascii	"Puzzlum : Realm of Existence\0"
.balign 4
_Lt_01B8:	.ascii	"Build: puzzlum-fbc068.200908170813\0"
.balign 4
_Lt_01B9:	.ascii	"Created 1989-2009 Timothy Robert Keal\0"
.balign 4
_Lt_01BA:	.ascii	"Released under Gnu Public License 2.0\0"
.balign 4
_Lt_01BB:	.ascii	"http://www.gnu.org/copyleft/gpl.html\0"
.balign 4
_Lt_01BC:	.ascii	"http://puzzlum.retromachineshop.com/\0"
.balign 4
_Lt_01BD:	.ascii	"irc://chat.freenode.net/puzzlum\0"
.balign 4
_Lt_01BE:	.ascii	"mailto:jargon@juno.com\0"
.balign 4
_Lt_01BF:	.ascii	" (H)elp\0"
.balign 4
_Lt_01C0:	.ascii	" (C)ontinue\0"
.balign 4
_Lt_01C1:	.ascii	" (R)estart\0"
.balign 4
_Lt_01C2:	.ascii	" (Q)uit\0"
.balign 4
_Lt_01C3:	.ascii	"r\0"
.balign 4
_Lt_01C4:	.ascii	"R\0"
.balign 4
_Lt_01C7:	.ascii	"q\0"
.balign 4
_Lt_01C8:	.ascii	"Q\0"
.balign 4
_Lt_01CB:	.ascii	"h\0"
.balign 4
_Lt_01CC:	.ascii	"H\0"
.balign 4
_Lt_01CF:	.ascii	"c\0"
.balign 4
_Lt_01D0:	.ascii	"C\0"
.balign 4
_Lt_01D2:	.ascii	"LN_STARTTITLE\0"
.balign 4
_Lt_01DC:	.ascii	"\376 page start\0"
.balign 4
_Lt_01DF:	.ascii	"\376 page end\0"
.balign 4
_Lt_01E2:	.ascii	" (T)itle\0"
.balign 4
_Lt_01E6:	.ascii	"T\0"
.balign 4
_Lt_01EB:	.ascii	"\376 end\0"
.balign 4
_Lt_01F0:	.ascii	"\376 COLOR\0"
.balign 4
_Lt_01FA:	.ascii	"LN_STARTHELP\0"
.balign 4
_Lt_020D:	.ascii	"zzzz\0"
.balign 4
_Lt_0224:	.ascii	"fire\0"
.balign 4
_Lt_0229:	.ascii	"ccts\0"
.balign 4
_Lt_023B:	.ascii	"LN_MAIN\0"
.balign 4
_Lt_0240:	.ascii	"LN_COMMAND\0"
.balign 4
_Lt_0247:	.ascii	"LN_COMMAND2\0"
.balign 4
_Lt_024B:	.ascii	"0002\0"
.balign 4
_Lt_0258:	.ascii	"&HFF3B\0"
.balign 4
_Lt_025B:	.ascii	"&HFF3C\0"
.balign 4
_Lt_025F:	.ascii	"&HFF3D\0"
.balign 4
_Lt_0262:	.ascii	"L\0"
.balign 4
_Lt_0265:	.ascii	"&H20\0"
.balign 4
_Lt_0268:	.ascii	"&HFF48\0"
.balign 4
_Lt_026B:	.ascii	"&HFF4D\0"
.balign 4
_Lt_026E:	.ascii	"&HFF50\0"
.balign 4
_Lt_0271:	.ascii	"&HFF4B\0"
.balign 4
_Lt_0289:	.ascii	"||\0"
.balign 4
_Lt_0298:	.ascii	"&HFF47\0"
.balign 4
_Lt_029B:	.ascii	"&HFF4F\0"
.balign 4
_Lt_029E:	.ascii	"&HFF49\0"
.balign 4
_Lt_02A3:	.ascii	"&HFF51\0"
.balign 4
_Lt_02BA:	.ascii	"LN_COMMAND3\0"
.balign 4
_Lt_02BF:	.ascii	"LN_NAMES\0"
.balign 4
_Lt_02EA:	.ascii	"LN_SWAPDATA\0"
.balign 4
_Lt_02F2:	.ascii	"bite\0"
.balign 4
_Lt_02F5:	.ascii	"pnch\0"
.balign 4
_Lt_02F8:	.ascii	"kick\0"
.balign 4
_Lt_0301:	.ascii	"cure\0"
.balign 4
_Lt_0309:	.ascii	"LN_ATTACK\0"
.balign 4
_Lt_032F:	.ascii	"LN_BATTLE\0"
.balign 4
_Lt_0335:	.ascii	"LN_ATTKBITE\0"
.balign 4
_Lt_033C:	.ascii	"LN_ATTKPNCH\0"
.balign 4
_Lt_0343:	.ascii	"LN_ATTKWSTF\0"
.balign 4
_Lt_034A:	.ascii	"LN_ATTKKICK\0"
.balign 4
_Lt_0351:	.ascii	"LN_ATTKVNOM\0"
.balign 4
_Lt_0358:	.ascii	"LN_ATTKDGGR\0"
.balign 4
_Lt_035F:	.ascii	"LN_ATTKPIKE\0"
.balign 4
_Lt_0363:	.ascii	"burn\0"
.balign 4
_Lt_036A:	.ascii	"LN_ATTKBURN\0"
.balign 4
_Lt_0371:	.ascii	"LN_ATTKFIRE\0"
.balign 4
_Lt_0377:	.ascii	"LN_ATTKWEB\0"
.balign 4
_Lt_037B:	.ascii	"tngl\0"
.balign 4
_Lt_037E:	.ascii	"LN_ATTKTNGL\0"
.balign 4
_Lt_0382:	.ascii	"lash\0"
.balign 4
_Lt_0386:	.ascii	"LN_ATTKLASH\0"
.balign 4
_Lt_03B3:	.ascii	"LN_USECURE\0"
.balign 4
_Lt_03BE:	.ascii	"slep\0"
.balign 4
_Lt_03E4:	.ascii	"LN_USESLEP\0"
.balign 4
_Lt_03E8:	.ascii	"pouch\0"
.balign 4
_Lt_03EC:	.ascii	"pwch\0"
.balign 4
_Lt_03FD:	.ascii	"LN_VICTORY\0"
.balign 4
_Lt_040F:	.ascii	"LN_PILLAGE\0"
.balign 4
_Lt_0416:	.ascii	"lvup\0"
.balign 4
_Lt_0421:	.ascii	"ispt\0"
.balign 4
_Lt_0429:	.ascii	"move\0"
.balign 4
_Lt_0451:	.ascii	"cncl\0"
.balign 4
_Lt_045B:	.ascii	"\372\0"
.balign 4
_Lt_045C:	.ascii	"-\0"
.balign 4
_Lt_045D:	.ascii	"----\0"
.balign 4
_Lt_045E:	.ascii	"$\0"
.balign 4
_Lt_047E:	.ascii	"LN_PAYLEVELUP\0"
.balign 4
_Lt_048D:	.ascii	"grpl\0"
.balign 4
_Lt_0492:	.ascii	"seed\0"
.balign 4
_Lt_049E:	.ascii	"Wha'du like?\0"
.balign 4
_Lt_04A5:	.ascii	"____.24\0"
.balign 4
_Lt_04D4:	.ascii	"LN_MERCHANT\0"
.balign 4
_Lt_04DA:	.ascii	"bye_\0"
.balign 4
_Lt_04DD:	.ascii	"Poindexter:\0"
.balign 4
_Lt_04DF:	.ascii	"Hi. How are you. My\0"
.balign 4
_Lt_04E1:	.ascii	"name is Poindexter. I\0"
.balign 4
_Lt_04E3:	.ascii	"am the greatest thief\0"
.balign 4
_Lt_04E5:	.ascii	"in the entire world!!!\0"
.balign 4
_Lt_04F5:	.ascii	" =\0"
.balign 4
_Lt_050B:	.ascii	"LN_TALK0001\0"
.balign 4
_Lt_0517:	.ascii	"gained\0"
.balign 4
_Lt_051A:	.ascii	"LN_ABILITYGAIN\0"
.balign 4
_Lt_053D:	.ascii	"      level up!\0"
.balign 4
_Lt_053F:	.ascii	"HPmax +\0"
.balign 4
_Lt_0543:	.ascii	"STRmax +\0"
.balign 4
_Lt_0547:	.ascii	"ESSmax +\0"
.balign 4
_Lt_054B:	.ascii	"STRspd up!\0"
.balign 4
_Lt_054D:	.ascii	"ESSspd up!\0"
.balign 4
_Lt_0556:	.ascii	"reached LV!\0"
.balign 4
_Lt_0560:	.ascii	"next:\0"
.balign 4
_Lt_0574:	.ascii	"LN_LEVELUP\0"
.balign 4
_Lt_057D:	.ascii	"LN_GAIN\0"
.balign 4
_Lt_058A:	.ascii	"from\0"
.balign 4
_Lt_058F:	.ascii	"!\0"
.balign 4
_Lt_0593:	.ascii	"LN_GETIT\0"
.balign 4
_Lt_059A:	.ascii	"used\0"
.balign 4
_Lt_059C:	.ascii	"on\0"
.balign 4
_Lt_05A2:	.ascii	"LN_ATTACKUSING\0"
.balign 4
_Lt_05AE:	.ascii	"HP -\0"
.balign 4
_Lt_05B2:	.ascii	"STR-\0"
.balign 4
_Lt_05B7:	.ascii	"LN_BATTLEATTACK\0"
.balign 4
_Lt_05BE:	.ascii	"pillaged\0"
.balign 4
_Lt_05C3:	.ascii	"EXP+\0"
.balign 4
_Lt_05C8:	.ascii	"EXP:\0"
.balign 4
_Lt_05CE:	.ascii	"STR+\0"
.balign 4
_Lt_05D2:	.ascii	"STR:\0"
.balign 4
_Lt_05D8:	.ascii	"LN_DEFEATED\0"
.balign 4
_Lt_0601:	.ascii	".24\0"
.balign 4
_Lt_0626:	.ascii	"zzzz____.24\0"
.balign 4
_Lt_0632:	.ascii	"rapl\0"
.balign 4
_Lt_064A:	.ascii	"LN_PORTAL\0"
.balign 4
_Lt_064E:	.ascii	"A RetroMachineShop Featured Project!\0"
.balign 4
_Lt_0651:	.ascii	"LN_TITLE\0"
.balign 4
_Lt_0656:	.ascii	"LN_STATUS\0"
.balign 4
_Lt_065B:	.ascii	"LN_FRAMSTTS\0"
.balign 4
_Lt_0660:	.ascii	"LN_FRAMSTTSITMS\0"
.balign 4
_Lt_0665:	.ascii	"LV\0"
.balign 4
_Lt_0669:	.ascii	"     \0"
.balign 4
_Lt_066F:	.ascii	"HP\0"
.balign 4
_Lt_0673:	.ascii	"/\0"
.balign 4
_Lt_0677:	.ascii	"STR\0"
.balign 4
_Lt_067E:	.ascii	"ESS\0"
.balign 4
_Lt_0686:	.ascii	"LN_STTS\0"
.balign 4
_Lt_068B:	.ascii	"LN_STTSGPIC\0"
.balign 4
_Lt_0690:	.ascii	"LN_STTSITMS\0"
.balign 4
_Lt_0696:	.ascii	"____pwch\0"
.balign 4
_Lt_069A:	.ascii	"watr\0"
.balign 4
_Lt_069F:	.ascii	"hole\0"
.balign 4
_Lt_06A0:	.ascii	"holestpsstp2\0"
.balign 4
_Lt_06AE:	.ascii	"LN_MOVE\0"
.balign 4
_Lt_06C2:	.ascii	"LN_WINGMOVE\0"
.balign 4
_Lt_06D6:	.ascii	"LN_FIREMOVE\0"
.balign 4
_Lt_06E5:	.ascii	"LN_WEBMOVE\0"
.balign 4
_Lt_06F0:	.ascii	"Flame\0"
.balign 4
_Lt_06F1:	.ascii	"moveburn\0"
.balign 4
_Lt_06F3:	.ascii	"LN_CASTFIRE\0"
.balign 4
_Lt_06FE:	.ascii	"Sleepy dust\0"
.balign 4
_Lt_0700:	.ascii	"LN_CASTDUST\0"
.balign 4
_Lt_070A:	.ascii	"LN_CASTWEB\0"
.balign 4
_Lt_0714:	.ascii	"LN_CASTSPDR\0"
.balign 4
_Lt_0718:	.ascii	"Cactus\0"
.balign 4
_Lt_071A:	.ascii	"LN_CASTCCTS\0"
.balign 4
_Lt_0723:	.ascii	"bitekick\0"
.balign 4
_Lt_0725:	.ascii	"LN_CASTDTBY\0"
.balign 4
_Lt_072A:	.ascii	"LN_GONE\0"
.balign 4
_Lt_072F:	.ascii	"LN_DELETE2\0"
.balign 4
_Lt_0736:	.ascii	"LN_AUTOLEVELUP\0"
.balign 4
_Lt_0741:	.ascii	"LN_STATGAIN\0"
.balign 4
_Lt_0758:	.ascii	"LN_STATMAX\0"
.balign 4
_Lt_0761:	.ascii	"LN_NEXTACTION\0"
.balign 4
_Lt_0768:	.ascii	"LN_NEWACTION\0"
.balign 4
_Lt_0771:	.ascii	"LN_RANDOMACTION\0"
.balign 4
_Lt_0779:	.ascii	"LN_GETACTION\0"
.balign 4
_Lt_0781:	.ascii	"LN_PUTACTION\0"
.balign 4
_Lt_0789:	.ascii	"LN_TEMPGET\0"
.balign 4
_Lt_0791:	.ascii	"LN_TEMPPUT\0"
.balign 4
_Lt_079C:	.ascii	"LN_INBOUNDS\0"
.balign 4
_Lt_07A9:	.ascii	"LN_HAVEIT\0"
.balign 4
_Lt_07B8:	.ascii	"LN_HASIT\0"
.balign 4
_Lt_07C7:	.ascii	"LN_HAVEHADIT\0"
.balign 4
_Lt_07DA:	.ascii	"LN_HASHADIT\0"
.balign 4
_Lt_07E1:	.ascii	"LN_HAVEGOTIT\0"
.balign 4
_Lt_07EC:	.ascii	"LN_HASGOTIT\0"
.balign 4
_Lt_07F5:	.ascii	" EXP\0"
.balign 4
_Lt_07FC:	.ascii	"LN_WINEXP\0"
.balign 4
_Lt_0801:	.ascii	"LN_WINDGGR\0"
.balign 4
_Lt_0806:	.ascii	"LN_WINPIKE\0"
.balign 4
_Lt_080B:	.ascii	"LN_WINGRPL\0"
.balign 4
_Lt_0810:	.ascii	"LN_WINSEED\0"
.balign 4
_Lt_0815:	.ascii	"LN_WINKEY1\0"
.balign 4
_Lt_081A:	.ascii	"LN_WINKEY2\0"
.balign 4
_Lt_0823:	.ascii	"LN_WINIT\0"
.balign 4
_Lt_0830:	.ascii	"LN_AM\0"
.balign 4
_Lt_083F:	.ascii	"LN_ARE\0"
.balign 4
_Lt_084C:	.ascii	"LN_HERE\0"
.balign 4
_Lt_085B:	.ascii	"LN_THERE\0"
.balign 4
_Lt_0862:	.ascii	"LN_BLANKCHECK\0"
.balign 4
_Lt_0866:	.ascii	"\372Ok\0"
.balign 4
_Lt_0869:	.ascii	"LN_OKBUTTON\0"
.balign 4
_Lt_0870:	.ascii	"&H0D\0"
.balign 4
_Lt_0872:	.ascii	"LN_WWAIT\0"
.balign 4
_Lt_0877:	.ascii	"LN_BUTTONWAIT\0"
.balign 4
_Lt_087B:	.ascii	"%%\0"
.balign 4
_Lt_087F:	.ascii	"LN_COMMANDWAIT\0"
.balign 4
_Lt_0884:	.ascii	"LN_FRAMEPUT\0"
.balign 4
_Lt_0889:	.ascii	"LN_AVGFRAME\0"
.balign 4
_Lt_088E:	.ascii	"LN_SCREENSET\0"
.balign 4
_Lt_0893:	.ascii	"LN_FINDCRSR\0"
.balign 4
_Lt_0898:	.ascii	"LN_SHOWTEXT\0"
.balign 4
_Lt_089D:	.ascii	"LN_PRFLBLNK\0"
.balign 4
_Lt_08B9:	.ascii	"LN_PRFLSET\0"
.balign 4
_Lt_0903:	.ascii	"LN_PRFLMAKE\0"
.balign 4
_Lt_090B:	.ascii	"pndxspdrgrmldtbyemgdshktimp_\0"
.balign 4
_Lt_090F:	.ascii	"LN_ACTNCURE\0"
.balign 4
_Lt_091A:	.ascii	"LN_ACTNBITE\0"
.balign 4
_Lt_0925:	.ascii	"LN_ACTNPNCH\0"
.balign 4
_Lt_0930:	.ascii	"LN_ACTNKICK\0"
.balign 4
_Lt_093B:	.ascii	"LN_ACTNDGGR\0"
.balign 4
_Lt_0946:	.ascii	"LN_ACTNPIKE\0"
.balign 4
_Lt_0951:	.ascii	"LN_ACTNVNOM\0"
.balign 4
_Lt_095C:	.ascii	"LN_ACTNFIRE\0"
.balign 4
_Lt_0967:	.ascii	"LN_ACTNDUST\0"
.balign 4
_Lt_0972:	.ascii	"LN_ACTNWEB\0"
.balign 4
_Lt_097B:	.ascii	"LN_ACTNSPDR\0"
.balign 4
_Lt_0984:	.ascii	"LN_ACTNCCTS\0"
.balign 4
_Lt_098D:	.ascii	"LN_ACTNDTBY\0"
.balign 4
_Lt_0994:	.ascii	"LN_ACTNMOVE\0"
.balign 4
_Lt_099B:	.ascii	"LN_ACTNWING\0"
.balign 4
_Lt_09A8:	.ascii	"LN_ACTNWSTF\0"
.balign 4
_Lt_09B1:	.ascii	"LN_ACTNKEY1\0"
.balign 4
_Lt_09BA:	.ascii	"LN_ACTNKEY2\0"
.balign 4
_Lt_09CA:	.ascii	"pwchchst\0"
.balign 4
_Lt_09E7:	.ascii	"LN_ACTNISPT\0"
.balign 4
_Lt_09F2:	.ascii	"LN_ACTNFIREMOVE\0"
.balign 4
_Lt_09FD:	.ascii	"LN_ACTNDUSTMOVE\0"
.balign 4
_Lt_0A08:	.ascii	"LN_ACTNWEBMOVE\0"
.balign 4
_Lt_0A21:	.ascii	"bldrchst\0"
.balign 4
_Lt_0A27:	.ascii	"LN_ACTNGRPL\0"
.balign 4
_Lt_0A4A:	.ascii	"LN_ACTNRAPL\0"
.balign 4
_Lt_0A4E:	.ascii	"pndxgrmlspdrdtbyweb_emgdshkt\0"
.balign 4
_Lt_0A5B:	.ascii	"LN_CRTNIMP\0"
.balign 4
_Lt_0A5F:	.ascii	"pndxgrmlspdrdtbyweb_shktemgd\0"
.balign 4
_Lt_0A65:	.ascii	"LN_CRTNFIRE\0"
.balign 4
_Lt_0A69:	.ascii	"pndxgrmlspdrshktemgdimp_\0"
.balign 4
_Lt_0A6F:	.ascii	"LN_CRTNDUST\0"
.balign 4
_Lt_0A73:	.ascii	"pndxgrmlspdrdtbyweb_imp_\0"
.balign 4
_Lt_0A85:	.ascii	"LN_CRTNSHKT\0"
.balign 4
_Lt_0A9A:	.ascii	"LN_CRTNEMGD\0"
.balign 4
_Lt_0A9E:	.ascii	"pndxdtbyspdrimp_emgdshktgrml\0"
.balign 4
_Lt_0AAA:	.ascii	"LN_CRTNSPDR\0"
.balign 4
_Lt_0AB0:	.ascii	"pndxgrmldtbyweb_shktemgdimp_\0"
.balign 4
_Lt_0AB8:	.ascii	"LN_CRTNWEB\0"
.balign 4
_Lt_0ABC:	.ascii	"pndxgrmlspdrimp_emgdshkt\0"
.balign 4
_Lt_0ACC:	.ascii	"LN_CRTNDTBY\0"
.balign 4
_Lt_0AD0:	.ascii	"pndxdtbyspdrimp_emgdshktweb_\0"
.balign 4
_Lt_0AE2:	.ascii	"LN_CRTNGRML\0"
.balign 4
_Lt_0AE6:	.ascii	"pndxdtbyspdrimp_emgdshktweb_grmlccts\0"
.balign 4
_Lt_0B10:	.ascii	"LN_CRTNPNDX\0"
.balign 4
_Lt_0B17:	.ascii	"stpw\0"
.balign 4
_Lt_0B1B:	.ascii	"stps\0"
.balign 4
_Lt_0B21:	.ascii	"LN_CRTNCCTS\0"
.balign 4
_Lt_0B29:	.ascii	"dirt\0"
.balign 4
_Lt_0B2F:	.ascii	"LN_CRTNBLDR\0"
.balign 4
_Lt_0B35:	.ascii	"\377""\0"
.balign 4
_Lt_0B38:	.ascii	"&HFF\0"
.balign 4
_Lt_0B39:	.ascii	"0\0"
.balign 4
_Lt_0B3E:	.ascii	"&H\0"
.balign 4
_Lt_0B46:	.ascii	"CINPUT\0"
.balign 4
_Lt_0B4A:	.ascii	"%\0"
.balign 4
_Lt_0B53:	.ascii	"CURSORPUT\0"
.balign 4
_Lt_0B5C:	.ascii	".\0"
.balign 4
_Lt_0B64:	.ascii	"PROGRESS_PUT\0"
.balign 4
_Lt_0B68:	.ascii	"________.24\0"
.balign 4
_Lt_0B6B:	.ascii	"y\0"
.balign 4
_Lt_0B6D:	.ascii	".png\0"
.balign 4
_Lt_0B72:	.ascii	"x\0"
.balign 4
_Lt_0B7B:	.ascii	"GRAPHICPUT\0"
.balign 4
_Lt_0B83:	.ascii	"SUSPEND\0"
.balign 4
_Lt_0B88:	.ascii	"CLS2\0"
.balign 4
_Lt_0B93:	.ascii	"FILE_PUT_CONTENTS\0"
.balign 4
_Lt_0BA2:	.ascii	"FILE_GET_CONTENTS\0"
.balign 4
_Lt_0BAC:	.ascii	"PAL_LOAD\0"
.balign 4
_Lt_0BB3:	.ascii	"MOUSESTATUS\0"
.balign 4
_Lt_0BC9:	.ascii	"CLV_BUFFER_STACK\0"
.balign 4
_Lt_0BEC:	.ascii	"bttnself.24\0"
.balign 4
_Lt_0BF1:	.ascii	"bttnnrth.24\0"
.balign 4
_Lt_0BF6:	.ascii	"bttneast.24\0"
.balign 4
_Lt_0BFB:	.ascii	"bttnsuth.24\0"
.balign 4
_Lt_0C00:	.ascii	"bttnwest.24\0"
.balign 4
_Lt_0C13:	.ascii	"FRAME_STATUS\0"
.balign 4
_Lt_0C26:	.ascii	"FRAME_INVENTORY\0"
.balign 4
_Lt_0C2D:	.ascii	"Puzzlum\0"
.balign 4
_Lt_0C31:	.ascii	"(T)itle\0"
.balign 4
_Lt_0C34:	.ascii	"FRAME_TITLE\0"
.balign 4
_Lt_0C56:	.ascii	"FRAME_PUT\0"
.balign 4
_Lt_0C66:	.ascii	"CLV_GLYPH_INI\0"
.balign 4
_Lt_0C6F:	.ascii	"&HFF0D\0"
.balign 4
_Lt_0C72:	.ascii	"INPUT_TEXT\0"
.balign 4
_Lt_0C76:	.ascii	"Loading Map\0"
.balign 4
_Lt_0C77:	.ascii	"mapname_str\0"
.balign 4
_Lt_0C7D:	.ascii	"AA_si\0"
.balign 4
_Lt_0C7F:	.ascii	"DD_si\0"
.balign 4
_Lt_0C8B:	.ascii	"d_sia[\0"
.balign 4
_Lt_0C8C:	.ascii	"][\0"
.balign 4
_Lt_0C8D:	.ascii	"]\0"
.balign 4
_Lt_0C93:	.ascii	"ex_si\0"
.balign 4
_Lt_0C95:	.ascii	"dy_si\0"
.balign 4
_Lt_0C97:	.ascii	"mdx_si\0"
.balign 4
_Lt_0C99:	.ascii	"mdy_si\0"
.balign 4
_Lt_0C9B:	.ascii	"textcolor_si\0"
.balign 4
_Lt_0C9D:	.ascii	"textdelay_sf\0"
.balign 4
_Lt_0C9F:	.ascii	"win_si\0"
.balign 4
_Lt_0CBA:	.ascii	"win_sia[\0"
.balign 4
_Lt_0CC9:	.ascii	"l_sia[\0"
.balign 4
_Lt_0CCD:	.ascii	"ctrl_str\0"
.balign 4
_Lt_0CDA:	.ascii	"prflidty_str[\0"
.balign 4
_Lt_0CE1:	.ascii	"prflactn_str[\0"
.balign 4
_Lt_0CE8:	.ascii	"prflgpic_str[\0"
.balign 4
_Lt_0CEF:	.ascii	"prflcmnd_str[\0"
.balign 4
_Lt_0CF6:	.ascii	"prflgpicactn_str[\0"
.balign 4
_Lt_0CFD:	.ascii	"prflactnct_str[\0"
.balign 4
_Lt_0D04:	.ascii	"prflidty_sf[\0"
.balign 4
_Lt_0D0B:	.ascii	"prflhp_sf[\0"
.balign 4
_Lt_0D12:	.ascii	"prflstr_sf[\0"
.balign 4
_Lt_0D19:	.ascii	"prfless_sf[\0"
.balign 4
_Lt_0D20:	.ascii	"prflspd_sf[\0"
.balign 4
_Lt_0D27:	.ascii	"prflarmr_sf[\0"
.balign 4
_Lt_0D2E:	.ascii	"prflexp_sf[\0"
.balign 4
_Lt_0D35:	.ascii	"prflvalu_sf[\0"
.balign 4
_Lt_0D3C:	.ascii	"prflpirc_sf[\0"
.balign 4
_Lt_0D43:	.ascii	"prflchck_sf[\0"
.balign 4
_Lt_0D4A:	.ascii	"prfllv_sf[\0"
.balign 4
_Lt_0D51:	.ascii	"prflhpmax_sf[\0"
.balign 4
_Lt_0D58:	.ascii	"prflstrmax_sf[\0"
.balign 4
_Lt_0D5F:	.ascii	"prflessmax_sf[\0"
.balign 4
_Lt_0D66:	.ascii	"prflessspd_sf[\0"
.balign 4
_Lt_0D6D:	.ascii	"prflevad_sf[\0"
.balign 4
_Lt_0D74:	.ascii	"prflblnk_sf[\0"
.balign 4
_Lt_0D7B:	.ascii	"MAP_LOAD\0"
.balign 4
_Lt_0D80:	.ascii	"Saving Map \"\0"
.balign 4
_Lt_0E7E:	.ascii	"MAP_SAVE\0"
.balign 4
_Lt_0E82:	.ascii	".\\save\\\0"
.balign 4
_Lt_0E83:	.ascii	".dat\0"
.balign 4
_Lt_0E88:	.ascii	"SAVEGAME_SAVE\0"
.balign 4
_Lt_0E90:	.ascii	"SAVEGAME_LOAD\0"
